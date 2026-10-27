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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A214600: Number of 7X7X7 triangular 0..n arrays with every horizontal row having the same average value.

The programs for A214600, there is no canonical definition to state claims against.
-/

/-! ## A214600.P15927414432221463540

`A214595(A000217(n+6)+7)`
-/

namespace A214600.P15927414432221463540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A000217 (n + 6) + 7).toNat

end

end A214600.P15927414432221463540

/-!
# A214602: Integer areas of trapezoids such that all sides also have integer lengths.

The programs for A214602, there is no canonical definition to state claims against.
-/

/-! ## A214602.P9386132377836999428

`lt[1/4, A378148(n+1)]+1`
-/

namespace A214602.P9386132377836999428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378148 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A214602.P9386132377836999428

/-! ## A214602.P17339286951156527648

`lt[A325358((n+1)/2^val(n+1, 2)), A018783(n)]`
-/

namespace A214602.P17339286951156527648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214602.P17339286951156527648

/-! ## A214602.P10867938717847168166

`lt[A001222(A189297(n+1)), A078898(n)]`
-/

namespace A214602.P10867938717847168166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A189297 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214602.P10867938717847168166

/-! ## A214602.P12893533982466661857

`lt[A243060(A054541(n+1)), A078898(n)]`
-/

namespace A214602.P12893533982466661857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (A054541 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214602.P12893533982466661857

/-! ## A214602.P1653438876473104991

`lt[A117668(A182817(n+1)), A210442(n)]`
-/

namespace A214602.P1653438876473104991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117668 (A182817 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214602.P1653438876473104991

/-! ## A214602.P14048803141002034431

`lt[A340407(A000720(n+4)), A078898(n)]`
-/

namespace A214602.P14048803141002034431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340407 (A000720 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214602.P14048803141002034431

/-! ## A214602.P14046835691774154192

`lt[A000120(A007953(n)), A085341(n+1)]+1`
-/

namespace A214602.P14046835691774154192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A214602.P14046835691774154192

/-! ## A214602.P13645871257180243458

`lt[A184721(A184746(n+4)), A184727(n+1)]`
-/

namespace A214602.P13645871257180243458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184721 (A184746 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214602.P13645871257180243458

/-! ## A214602.P14457097057000211187

`lt[A092196(A004736(3*n+1)), A078898(n)]`
-/

namespace A214602.P14457097057000211187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A004736 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214602.P14457097057000211187

/-! ## A214602.P16968171907558776329

`lt[A020639(A090370(n+4))², A184727(n+1)]`
-/

namespace A214602.P16968171907558776329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A090370 (n + 4)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214602.P16968171907558776329

/-!
# A214604: Odd numbers by transposing the right half of A176271, triangle read by rows: T(n,k) = A176271(n - 1 + k, n), 1 <= k <= n.

The programs for A214604, the canonical program `A214604.P6900025003978506193` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214604 has offset 1).

The definition of A214604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214604.P14061933832651322928

`(row(n)+col(n)+1)²+row(n)-col(n)`
-/

namespace A214604.P14061933832651322928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + (SequenceMachineLib.triCol n + 1)) ^ 2 + SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A214604.P14061933832651322928

namespace A214604

/-- `(row(n)+col(n)+1)²+row(n)-col(n)` -/
def P14061933832651322928.Spec : Prop :=
  ∀ n, P14061933832651322928.a n = A214604 (n + 1)

theorem P14061933832651322928.correct : P14061933832651322928.Spec := by
  intro n
  simp only [A214604, Nat.add_sub_cancel, A214604.P14061933832651322928.a, A214604.P6900025003978506193.a, A159797, A159797.P12777153155351090962.a, A182491, A182491.P13289934478675392419.a, A025581, A025581.P16112744757063613497.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214604

/-! ## A214604.P11844944735068565092

`2*A245300(n)+2*(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A214604.P11844944735068565092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245300 n + (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1)

end

end A214604.P11844944735068565092

namespace A214604

/-- `2*A245300(n)+2*(C(comp[∑[n]]-n, 2)-n)-1` -/
def P11844944735068565092.Spec : Prop :=
  ∀ n, P11844944735068565092.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P6900025003978506193

`A182491(n+1)+A159797(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A214604

/-- `A182491(n+1)+A159797(n)` -/
def P6900025003978506193.Spec : Prop :=
  ∀ n, P6900025003978506193.a n = A214604 (n + 1)

theorem P6900025003978506193.correct : P6900025003978506193.Spec := by
  intro n
  simp only [A214604, Nat.add_sub_cancel]

end A214604

/-! ## A214604.P11214144071808628389

`A099375(n)+2*A245300(n)`
-/

namespace A214604.P11214144071808628389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + 2 * A245300 n

end

end A214604.P11214144071808628389

namespace A214604

/-- `A099375(n)+2*A245300(n)` -/
def P11214144071808628389.Spec : Prop :=
  ∀ n, P11214144071808628389.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P12375060152609802586

`A025581(n)+(A051162(n)+1)²`
-/

namespace A214604.P12375060152609802586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A051162 n + 1) ^ 2

end

end A214604.P12375060152609802586

namespace A214604

/-- `A025581(n)+(A051162(n)+1)²` -/
def P12375060152609802586.Spec : Prop :=
  ∀ n, P12375060152609802586.a n = A214604 (n + 1)

theorem P12375060152609802586.correct : P12375060152609802586.Spec := by
  intro n
  simp only [A214604, Nat.add_sub_cancel, A214604.P12375060152609802586.a, A214604.P6900025003978506193.a, A025581, A025581.P16112744757063613497.a, A051162, A051162.P4484969187050632534.a, A159797, A159797.P12777153155351090962.a, A182491, A182491.P13289934478675392419.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214604

/-! ## A214604.P15011371899489677030

`A025581(n)+A094727(n+1)²`
-/

namespace A214604.P15011371899489677030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A094727 (n + 1) ^ 2

end

end A214604.P15011371899489677030

namespace A214604

/-- `A025581(n)+A094727(n+1)²` -/
def P15011371899489677030.Spec : Prop :=
  ∀ n, P15011371899489677030.a n = A214604 (n + 1)

theorem P15011371899489677030.correct : P15011371899489677030.Spec := by
  intro n
  simp only [A214604, Nat.add_sub_cancel, A214604.P15011371899489677030.a, A214604.P6900025003978506193.a, A025581, A025581.P16112744757063613497.a, A094727, A094727.P1041695477673985807.a, A159797, A159797.P12777153155351090962.a, A182491, A182491.P13289934478675392419.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214604

/-! ## A214604.P2002940989324179336

`A143218(n+1)+A095832(n+1)`
-/

namespace A214604.P2002940989324179336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143218 (n + 1) + A095832 (n + 1)

end

end A214604.P2002940989324179336

namespace A214604

/-- `A143218(n+1)+A095832(n+1)` -/
def P2002940989324179336.Spec : Prop :=
  ∀ n, P2002940989324179336.a n = A214604 (n + 1)

theorem P2002940989324179336.correct : P2002940989324179336.Spec := by
  intro n
  simp only [A214604, Nat.add_sub_cancel, A214604.P2002940989324179336.a, A214604.P6900025003978506193.a, A095832, A095832.P7706533872419013118.a, A143218, A143218.P4477130466891666479.a, A159797, A159797.P12777153155351090962.a, A182491, A182491.P13289934478675392419.a, A025581, A025581.P16112744757063613497.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214604

/-! ## A214604.P11430983373034939573

`A214661(n+1)+2*A025581(n)`
-/

namespace A214604.P11430983373034939573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214661 (n + 1) + 2 * A025581 n

end

end A214604.P11430983373034939573

namespace A214604

/-- `A214661(n+1)+2*A025581(n)` -/
def P11430983373034939573.Spec : Prop :=
  ∀ n, P11430983373034939573.a n = A214604 (n + 1)

theorem P11430983373034939573.correct : P11430983373034939573.Spec := by
  intro n
  simp only [A214604, Nat.add_sub_cancel, A214604.P11430983373034939573.a, A214604.P6900025003978506193.a, A025581, A025581.P16112744757063613497.a, A159797, A159797.P12777153155351090962.a, A182491, A182491.P13289934478675392419.a, A214661, A214661.P2084257495514736411.a, A051162, A051162.P4484969187050632534.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214604

/-! ## A214604.P5044263295318912862

`A025581(n)+(1-A108872(n+1))²`
-/

namespace A214604.P5044263295318912862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (1 - A108872 (n + 1)) ^ 2

end

end A214604.P5044263295318912862

namespace A214604

/-- `A025581(n)+(1-A108872(n+1))²` -/
def P5044263295318912862.Spec : Prop :=
  ∀ n, P5044263295318912862.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P13941369610613682463

`A004736(n+1)+A094727(n+1)²-1`
-/

namespace A214604.P13941369610613682463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A094727 (n + 1) ^ 2 - 1)

end

end A214604.P13941369610613682463

namespace A214604

/-- `A004736(n+1)+A094727(n+1)²-1` -/
def P13941369610613682463.Spec : Prop :=
  ∀ n, P13941369610613682463.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P16036750076456730319

`A051162(n)+A131507(n)+A051162(n)²`
-/

namespace A214604.P16036750076456730319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (A131507 n + A051162 n ^ 2)

end

end A214604.P16036750076456730319

namespace A214604

/-- `A051162(n)+A131507(n)+A051162(n)²` -/
def P16036750076456730319.Spec : Prop :=
  ∀ n, P16036750076456730319.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P16502348417736574996

`A025581(n)+(A025581(n)-A131507(n))²`
-/

namespace A214604.P16502348417736574996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A025581 n - A131507 n) ^ 2

end

end A214604.P16502348417736574996

namespace A214604

/-- `A025581(n)+(A025581(n)-A131507(n))²` -/
def P16502348417736574996.Spec : Prop :=
  ∀ n, P16502348417736574996.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P1258815222914165843

`A025581(n)+(A002262(n)+A002024(n+1))²`
-/

namespace A214604.P1258815222914165843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A002262 n + A002024 (n + 1)) ^ 2

end

end A214604.P1258815222914165843

namespace A214604

/-- `A025581(n)+(A002262(n)+A002024(n+1))²` -/
def P1258815222914165843.Spec : Prop :=
  ∀ n, P1258815222914165843.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P13733845435719433977

`A025581(n)+(A003056(n)+A002260(n+1))²`
-/

namespace A214604.P13733845435719433977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A003056 n + A002260 (n + 1)) ^ 2

end

end A214604.P13733845435719433977

namespace A214604

/-- `A025581(n)+(A003056(n)+A002260(n+1))²` -/
def P13733845435719433977.Spec : Prop :=
  ∀ n, P13733845435719433977.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P4539970481992075399

`A025581(n)+(A158405(n+1)+A025581(n))²`
-/

namespace A214604.P4539970481992075399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A158405 (n + 1) + A025581 n) ^ 2

end

end A214604.P4539970481992075399

namespace A214604

/-- `A025581(n)+(A158405(n+1)+A025581(n))²` -/
def P4539970481992075399.Spec : Prop :=
  ∀ n, P4539970481992075399.a n = A214604 (n + 1)

theorem P4539970481992075399.correct : P4539970481992075399.Spec := by
  intro n
  simp only [A214604, Nat.add_sub_cancel, A214604.P4539970481992075399.a, A214604.P6900025003978506193.a, A025581, A025581.P16112744757063613497.a, A158405, A158405.P5173674940907569791.a, A159797, A159797.P12777153155351090962.a, A182491, A182491.P13289934478675392419.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214604

/-! ## A214604.P8745910265902468429

`A094727(n+1)²+A003056(n)-A002262(n)`
-/

namespace A214604.P8745910265902468429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 + (A003056 n - A002262 n)

end

end A214604.P8745910265902468429

namespace A214604

/-- `A094727(n+1)²+A003056(n)-A002262(n)` -/
def P8745910265902468429.Spec : Prop :=
  ∀ n, P8745910265902468429.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P1562911541763206228

`A025581(n)+(A141419(n+1)-A087401(n))²`
-/

namespace A214604.P1562911541763206228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A141419 (n + 1) - A087401 n) ^ 2

end

end A214604.P1562911541763206228

namespace A214604

/-- `A025581(n)+(A141419(n+1)-A087401(n))²` -/
def P1562911541763206228.Spec : Prop :=
  ∀ n, P1562911541763206228.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P5175412931792079876

`A004736(n+1)+A051162(n)*A108872(n+1)`
-/

namespace A214604.P5175412931792079876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A051162 n * A108872 (n + 1)

end

end A214604.P5175412931792079876

namespace A214604

/-- `A004736(n+1)+A051162(n)*A108872(n+1)` -/
def P5175412931792079876.Spec : Prop :=
  ∀ n, P5175412931792079876.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P15004752258118232644

`A094727(n+1)²+A131507(n)-A094727(n+1)`
-/

namespace A214604.P15004752258118232644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 + (A131507 n - A094727 (n + 1))

end

end A214604.P15004752258118232644

namespace A214604

/-- `A094727(n+1)²+A131507(n)-A094727(n+1)` -/
def P15004752258118232644.Spec : Prop :=
  ∀ n, P15004752258118232644.a n = A214604 (n + 1)

end A214604

/-! ## A214604.P7343730863752159575

`A002024(n+1)+A094727(n+1)²-A002260(n+1)`
-/

namespace A214604.P7343730863752159575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A094727 (n + 1) ^ 2 - A002260 (n + 1))

end

end A214604.P7343730863752159575

namespace A214604

/-- `A002024(n+1)+A094727(n+1)²-A002260(n+1)` -/
def P7343730863752159575.Spec : Prop :=
  ∀ n, P7343730863752159575.a n = A214604 (n + 1)

end A214604

/-!
# A214606: a(n) = gcd(n, 2^n - 2).

The programs for A214606, the canonical program `A214606.P1025460480242176135` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214606 has offset 1).

The definition of A214606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, 2^(n+1)-2)` (program `A214606.P1025460480242176135`, by `A214606.P1025460480242176135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214606.P1025460480242176135

`gcd(n+1, 2^(n+1)-2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214606

/-- `gcd(n+1, 2^(n+1)-2)` -/
def P1025460480242176135.Spec : Prop :=
  ∀ n, (P1025460480242176135.a n : ℤ) = A214606 (n + 1)

theorem P1025460480242176135.correct : P1025460480242176135.Spec := by
  intro n
  simp only [A214606, Nat.add_sub_cancel]

end A214606

/-! ## A214606.P11919181979178094792

`(n+1)/A159353(n+1)`
-/

namespace A214606.P11919181979178094792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A159353 (n + 1) : ℚ)

end

end A214606.P11919181979178094792

namespace A214606

/-- `(n+1)/A159353(n+1)` -/
def P11919181979178094792.Spec : Prop :=
  ∀ n, P11919181979178094792.a n = (A214606 (n + 1) : ℚ)

end A214606

/-! ## A214606.P15787921198573343014

`∏{p}[n+1, gcd(#, A000918(n+1))]`
-/

namespace A214606.P15787921198573343014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) (A000918 (n + 1))

end

end A214606.P15787921198573343014

namespace A214606

/-- `∏{p}[n+1, gcd(#, A000918(n+1))]` -/
def P15787921198573343014.Spec : Prop :=
  ∀ n, (P15787921198573343014.a n : ℤ) = A214606 (n + 1)

end A214606

/-! ## A214606.P5321876447537984304

`A015053(gcd(A015053(n+1), A175166(n)))`
-/

namespace A214606.P5321876447537984304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (Int.gcd (A015053 (n + 1)) (A175166 n))

end

end A214606.P5321876447537984304

namespace A214606

/-- `A015053(gcd(A015053(n+1), A175166(n)))` -/
def P5321876447537984304.Spec : Prop :=
  ∀ n, P5321876447537984304.a n = A214606 (n + 1)

end A214606

/-! ## A214606.P9928004216747474104

`A007947(gcd(A007947(n+1), A048495(n)))`
-/

namespace A214606.P9928004216747474104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.gcd (A007947 (n + 1)) (A048495 n))

end

end A214606.P9928004216747474104

namespace A214606

/-- `A007947(gcd(A007947(n+1), A048495(n)))` -/
def P9928004216747474104.Spec : Prop :=
  ∀ n, P9928004216747474104.a n = A214606 (n + 1)

end A214606

/-!
# A214607: Fermat pseudoprimes to base 2 of the form (6*k + 1)*(6*k*n + 1), where k, n are integers different from 0.

The programs for A214607, there is no canonical definition to state claims against.
-/

/-! ## A214607.P14651242432621843445

`A001567(lt[A129780(3*n+4), A129741(n+5)])`
-/

namespace A214607.P14651242432621843445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129780 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129741 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214607.P14651242432621843445

/-! ## A214607.P16936499181424031071

`A001567(lt[A056995(2*n+3), A270575(3*(n+1))])`
-/

namespace A214607.P16936499181424031071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056995 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270575 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214607.P16936499181424031071

/-!
# A214611: Number of permutations of length n sortable by a pop stack followed by a queue and then by a stack.

The programs for A214611, there is no canonical definition to state claims against.
-/

/-! ## A214611.P11879209330174416644

`(∑[∑{p}[n+1, gcd(n, #)]]+1)!%A103657(2*(n+2))`
-/

namespace A214611.P11879209330174416644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) (A103657 (2 * (n + 2)))

end

end A214611.P11879209330174416644

/-! ## A214611.P8170593209577750399

`record[A242603(A177528(n))]`
-/

namespace A214611.P8170593209577750399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (A177528 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214611.P8170593209577750399

/-!
# A214612: prime(n^3) - prime(n).

The programs for A214612, the canonical program `A214612.P12711467387097801946` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214612 has offset 1).

The definition of A214612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)^3)-A000040(n+1)` (program `A214612.P12711467387097801946`, by `A214612.P12711467387097801946.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214612.P12711467387097801946

`A000040((n+1)^3)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214612

/-- `A000040((n+1)^3)-A000040(n+1)` -/
def P12711467387097801946.Spec : Prop :=
  ∀ n, P12711467387097801946.a n = A214612 (n + 1)

theorem P12711467387097801946.correct : P12711467387097801946.Spec := by
  intro n
  simp only [A214612, Nat.add_sub_cancel]

end A214612

/-! ## A214612.P14632977134358205680

`A055875(n+1)-Δ[A007504(n)]`
-/

namespace A214612.P14632977134358205680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (n + 1) - (f1 (n + 1) - f1 n)

end

end A214612.P14632977134358205680

namespace A214612

/-- `A055875(n+1)-Δ[A007504(n)]` -/
def P14632977134358205680.Spec : Prop :=
  ∀ n, P14632977134358205680.a n = A214612 (n + 1)

end A214612

/-! ## A214612.P8822092031128871904

`A055875(n+1)-record[A051698(n)]`
-/

namespace A214612.P8822092031128871904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214612.P8822092031128871904

namespace A214612

/-- `A055875(n+1)-record[A051698(n)]` -/
def P8822092031128871904.Spec : Prop :=
  ∀ n, P8822092031128871904.a n = A214612 (n + 1)

end A214612

/-! ## A214612.P17025063491650636290

`A055875(n+1)-A000040(n+1)`
-/

namespace A214612.P17025063491650636290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (n + 1) - A000040 (n + 1)

end

end A214612.P17025063491650636290

namespace A214612

/-- `A055875(n+1)-A000040(n+1)` -/
def P17025063491650636290.Spec : Prop :=
  ∀ n, P17025063491650636290.a n = A214612 (n + 1)

end A214612

/-! ## A214612.P731553222587022547

`A055875(n+1)-A008578(n+2)`
-/

namespace A214612.P731553222587022547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (n + 1) - A008578 (n + 2)

end

end A214612.P731553222587022547

namespace A214612

/-- `A055875(n+1)-A008578(n+2)` -/
def P731553222587022547.Spec : Prop :=
  ∀ n, P731553222587022547.a n = A214612 (n + 1)

end A214612

/-! ## A214612.P16839285045742209924

`A055875(n+1)-A182986(n+2)`
-/

namespace A214612.P16839285045742209924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (n + 1) - A182986 (n + 2)

end

end A214612.P16839285045742209924

namespace A214612

/-- `A055875(n+1)-A182986(n+2)` -/
def P16839285045742209924.Spec : Prop :=
  ∀ n, P16839285045742209924.a n = A214612 (n + 1)

end A214612

/-! ## A214612.P12296982404180072306

`A055875(n+1)-record[A006530(n+2)]`
-/

namespace A214612.P12296982404180072306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214612.P12296982404180072306

namespace A214612

/-- `A055875(n+1)-record[A006530(n+2)]` -/
def P12296982404180072306.Spec : Prop :=
  ∀ n, P12296982404180072306.a n = A214612 (n + 1)

end A214612

/-! ## A214612.P9324292610151140173

`A055875(n+1)-record[A014963(n+2)]`
-/

namespace A214612.P9324292610151140173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214612.P9324292610151140173

namespace A214612

/-- `A055875(n+1)-record[A014963(n+2)]` -/
def P9324292610151140173.Spec : Prop :=
  ∀ n, P9324292610151140173.a n = A214612 (n + 1)

end A214612

/-! ## A214612.P1522766463029825868

`A055875(n+1)-record[A020639(n+2)]`
-/

namespace A214612.P1522766463029825868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214612.P1522766463029825868

namespace A214612

/-- `A055875(n+1)-record[A020639(n+2)]` -/
def P1522766463029825868.Spec : Prop :=
  ∀ n, P1522766463029825868.a n = A214612 (n + 1)

end A214612

/-! ## A214612.P5238531162682097482

`A127917(n+1)-A262199(n+1)`
-/

namespace A214612.P5238531162682097482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) - A262199 (n + 1)

end

end A214612.P5238531162682097482

namespace A214612

/-- `A127917(n+1)-A262199(n+1)` -/
def P5238531162682097482.Spec : Prop :=
  ∀ n, P5238531162682097482.a n = A214612 (n + 1)

theorem P5238531162682097482.correct : P5238531162682097482.Spec := by
  intro n
  simp only [A214612, Nat.add_sub_cancel, A214612.P5238531162682097482.a, A214612.P12711467387097801946.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127917, A127917.P3075272387178552324.a, A262199, A262199.P2231432668587281711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214612

/-! ## A214612.P2145116175343617410

`A030078(n+1)-(A262199(n+1)+A000040(n+1))`
-/

namespace A214612.P2145116175343617410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - (A262199 (n + 1) + A000040 (n + 1))

end

end A214612.P2145116175343617410

namespace A214612

/-- `A030078(n+1)-(A262199(n+1)+A000040(n+1))` -/
def P2145116175343617410.Spec : Prop :=
  ∀ n, P2145116175343617410.a n = A214612 (n + 1)

theorem P2145116175343617410.correct : P2145116175343617410.Spec := by
  intro n
  simp only [A214612, Nat.add_sub_cancel, A214612.P2145116175343617410.a, A214612.P12711467387097801946.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A262199, A262199.P2231432668587281711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214612

/-!
# A214613: Abelian complexity function of ordinary paperfolding word (A014707).

The programs for A214613, there is no canonical definition to state claims against.
-/

/-! ## A214613.P11174182785598961990

`A010694(A186902(n+1))+A005811(n)`
-/

namespace A214613.P11174182785598961990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 (A186902 (n + 1)).toNat + A005811 n

end

end A214613.P11174182785598961990

/-! ## A214613.P7697589015692593969

`A053230(A253231(n+1))+A005811(n)`
-/

namespace A214613.P7697589015692593969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A253231 (n + 1)).toNat + A005811 n

end

end A214613.P7697589015692593969

/-! ## A214613.P4837336043007373743

`A053230(A253231(n+1))+n-A236840(n)`
-/

namespace A214613.P4837336043007373743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A253231 (n + 1)).toNat + ((n : ℤ) - A236840 n)

end

end A214613.P4837336043007373743

/-! ## A214613.P15075865010643487002

`A005811(n)+A002622(A010893(n)!)`
-/

namespace A214613.P15075865010643487002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + A002622 (Nat.factorial (A010893 (n + 13)).toNat)

end

end A214613.P15075865010643487002

/-!
# A214614: Irregular triangle read by rows: row n gives numbers <= n whose Collatz trajectory contains the trajectory of n.

The programs for A214614, there is no canonical definition to state claims against.
-/

/-! ## A214614.P15177917547684123272

`A002260(∑[A138904(A314809(n))])`
-/

namespace A214614.P15177917547684123272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A314809 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214614.P15177917547684123272

/-! ## A214614.P8131718139042813817

`A002260(record[A003056(A142352(n+1))])`
-/

namespace A214614.P8131718139042813817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A142352 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214614.P8131718139042813817

/-! ## A214614.P4029386477576495919

`A002260(lt[A002244(n+2), A017665(3*n+1)])`
-/

namespace A214614.P4029386477576495919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002244 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214614.P4029386477576495919

/-! ## A214614.P12200502892702678330

`A002260(∑[A198254(A112447(n))])`
-/

namespace A214614.P12200502892702678330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198254 (A112447 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214614.P12200502892702678330

/-! ## A214614.P14676947626640332577

`A002260(eq[1, A300239(A134672(n+1))])`
-/

namespace A214614.P14676947626640332577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (A134672 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214614.P14676947626640332577

/-!
# A214615: Row sums of A060338.

The programs for A214615, there is no canonical definition to state claims against.
-/

/-! ## A214615.P10952332043554023085

`a(n-1)-(1-n)²*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A214615.P10952332043554023085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (1 - (n : ℤ)) ^ 2 * a (n - 2)

end

end A214615.P10952332043554023085

/-! ## A214615.P14793021289130937285

`a(n-1)-(n-1)*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A214615.P14793021289130937285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 1) * a (n - 2))

end

end A214615.P14793021289130937285

/-!
# A214616: a(n) = n*(n+1)*(n+2)*(n+3)*(20*n^2+72*n+43)/360.

The programs for A214616, the canonical program `A214616.P13895584102839837014` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214616 has offset 0).

The definition of A214616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214616.P13895584102839837014

`n*(n+1)*(n+2)*(n+3)*(20*n²+72*n+43)/360`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214616

/-- `n*(n+1)*(n+2)*(n+3)*(20*n²+72*n+43)/360` -/
def P13895584102839837014.Spec : Prop :=
  ∀ n, P13895584102839837014.a n = (A214616 n : ℚ)

end A214616

/-! ## A214616.P2793137842004642117

`∑[(n+2)²*A000330(n)]`
-/

namespace A214616.P2793137842004642117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214616.P2793137842004642117

namespace A214616

/-- `∑[(n+2)²*A000330(n)]` -/
def P2793137842004642117.Spec : Prop :=
  ∀ n, P2793137842004642117.a n = A214616 n

end A214616

/-! ## A214616.P7897133103710898094

`∑[∑[A000290(n)]*A000290(n+2)]`
-/

namespace A214616.P7897133103710898094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000290 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214616.P7897133103710898094

namespace A214616

/-- `∑[∑[A000290(n)]*A000290(n+2)]` -/
def P7897133103710898094.Spec : Prop :=
  ∀ n, P7897133103710898094.a n = A214616 n

end A214616

/-! ## A214616.P14238731586284612050

`∑[∑[n²]*A002620(2*(n+2))]`
-/

namespace A214616.P14238731586284612050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A002620 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214616.P14238731586284612050

namespace A214616

/-- `∑[∑[n²]*A002620(2*(n+2))]` -/
def P14238731586284612050.Spec : Prop :=
  ∀ n, P14238731586284612050.a n = A214616 n

end A214616

/-! ## A214616.P3918479225128250827

`∑[A000330(n)*A000463(2*(n+2))]`
-/

namespace A214616.P3918479225128250827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n * A000463 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214616.P3918479225128250827

namespace A214616

/-- `∑[A000330(n)*A000463(2*(n+2))]` -/
def P3918479225128250827.Spec : Prop :=
  ∀ n, P3918479225128250827.a n = A214616 n

end A214616

/-! ## A214616.P13504545693985819277

`A060524(A167614(n+1)+A004273(n))`
-/

namespace A214616.P13504545693985819277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A167614 (n + 1) + A004273 n).toNat

end

end A214616.P13504545693985819277

namespace A214616

/-- `A060524(A167614(n+1)+A004273(n))` -/
def P13504545693985819277.Spec : Prop :=
  ∀ n, P13504545693985819277.a n = A214616 n

end A214616

/-! ## A214616.P3918883893276921971

`A060524(A004273(n)+A055998(n)+6)`
-/

namespace A214616.P3918883893276921971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A004273 n + (A055998 n + 6)).toNat

end

end A214616.P3918883893276921971

namespace A214616

/-- `A060524(A004273(n)+A055998(n)+6)` -/
def P3918883893276921971.Spec : Prop :=
  ∀ n, P3918883893276921971.a n = A214616 n

end A214616

/-! ## A214616.P10213788159845333393

`A060524(A004273(n)+A046691(n)+7)`
-/

namespace A214616.P10213788159845333393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A004273 n + (A046691 n + 7)).toNat

end

end A214616.P10213788159845333393

namespace A214616

/-- `A060524(A004273(n)+A046691(n)+7)` -/
def P10213788159845333393.Spec : Prop :=
  ∀ n, P10213788159845333393.a n = A214616 n

end A214616

/-! ## A214616.P16814432224686940798

`A060524(A004273(n)+A027379(n)+6-A151933(n))`
-/

namespace A214616.P16814432224686940798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A004273 n + (A027379 n + 6 - A151933 n)).toNat

end

end A214616.P16814432224686940798

namespace A214616

/-- `A060524(A004273(n)+A027379(n)+6-A151933(n))` -/
def P16814432224686940798.Spec : Prop :=
  ∀ n, P16814432224686940798.a n = A214616 n

end A214616

/-!
# A214617: Primes written in the factorial base.

The programs for A214617, there is no canonical definition to state claims against.
-/

/-! ## A214617.P8952898990243631805

`A007623(A000040(n+1))`
-/

namespace A214617.P8952898990243631805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A000040 (n + 1)).toNat

end

end A214617.P8952898990243631805

/-! ## A214617.P8213786656961606259

`A007623(Δ[A007504(n)])`
-/

namespace A214617.P8213786656961606259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (n + 1) - f1 n).toNat

end

end A214617.P8213786656961606259

/-! ## A214617.P6120058982402557230

`A007623(A008578(n+2))`
-/

namespace A214617.P6120058982402557230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A008578 (n + 2)).toNat

end

end A214617.P6120058982402557230

/-! ## A214617.P6119406749006322360

`A007623(A182986(n+2))`
-/

namespace A214617.P6119406749006322360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A182986 (n + 2)).toNat

end

end A214617.P6119406749006322360

/-! ## A214617.P15518176268901664271

`A007623(∑[A054541(n+1)])`
-/

namespace A214617.P15518176268901664271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214617.P15518176268901664271

/-! ## A214617.P15106344738745321557

`A007623(record[A006530(n+2)])`
-/

namespace A214617.P15106344738745321557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214617.P15106344738745321557

/-! ## A214617.P10507453183304590289

`A007623(record[A020639(n+2)])`
-/

namespace A214617.P10507453183304590289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214617.P10507453183304590289

/-! ## A214617.P13936530220340502980

`A007623(A006093(n+1)+1)`
-/

namespace A214617.P13936530220340502980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A006093 (n + 1) + 1).toNat

end

end A214617.P13936530220340502980

/-! ## A214617.P3894686011931745615

`A007623(record[A000010(n+1)+1])`
-/

namespace A214617.P3894686011931745615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214617.P3894686011931745615

/-! ## A214617.P9144516889089550173

`A007623(eq[n, A000010(n+1)]+1)`
-/

namespace A214617.P9144516889089550173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A214617.P9144516889089550173

/-! ## A214617.P17523340624635945983

`A007623(eq[1, A328772(n)])`
-/

namespace A214617.P17523340624635945983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214617.P17523340624635945983

/-! ## A214617.P7691026509435098702

`A007623(record[A014963(n+2)])`
-/

namespace A214617.P7691026509435098702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214617.P7691026509435098702

/-! ## A214617.P16476426724151758075

`A007623(record[A075860(n+2)])`
-/

namespace A214617.P16476426724151758075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214617.P16476426724151758075

/-! ## A214617.P5750471597754457120

`A007623(p?[record[A002034(n+1)]])`
-/

namespace A214617.P5750471597754457120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214617.P5750471597754457120

/-!
# A214622: Triangle read by rows, matrix inverse of [x^(n-k)](skp(n,x)-skp(n,x-1)+x^n) where skp denotes the Swiss-Knife polynomials A153641.

The programs for A214622, there is no canonical definition to state claims against.
-/

/-! ## A214622.P17984558981490367257

`A003704(A004736(n+1))*A007318(n)`
-/

namespace A214622.P17984558981490367257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003704 (A004736 (n + 1)).toNat * A007318 n

end

end A214622.P17984558981490367257

/-!
# A214623: Braid numbers B((n,n)->(n,n)).

The programs for A214623, there is no canonical definition to state claims against.
-/

/-! ## A214623.P9482842876816388597

`A006139(n)/A000079(n)*A006139(n)`
-/

namespace A214623.P9482842876816388597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n : ℚ) / (A000079 n : ℚ) * (A006139 n : ℚ)

end

end A214623.P9482842876816388597

/-! ## A214623.P8248372996488648696

`A006139(n)/record[A059268(n)]*A006139(n)`
-/

namespace A214623.P8248372996488648696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) * (A006139 n : ℚ)

end

end A214623.P8248372996488648696

/-! ## A214623.P7133075538562403378

`A006139(n)/A036561(A000217(n))*A006139(n)`
-/

namespace A214623.P7133075538562403378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n : ℚ) / (A036561 (A000217 n).toNat : ℚ) * (A006139 n : ℚ)

end

end A214623.P7133075538562403378

/-! ## A214623.P775435517527387712

`A006139(n)²/A000079(n)`
-/

namespace A214623.P775435517527387712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n ^ 2 : ℚ) / (A000079 n : ℚ)

end

end A214623.P775435517527387712

/-! ## A214623.P8308162738769155180

`A006139(n)²/record[A059268(n)]`
-/

namespace A214623.P8308162738769155180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n ^ 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A214623.P8308162738769155180

/-! ## A214623.P14493376807172933011

`A006139(n)²/A011782(n+1)`
-/

namespace A214623.P14493376807172933011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n ^ 2 : ℚ) / (A011782 (n + 1) : ℚ)

end

end A214623.P14493376807172933011

/-! ## A214623.P3172338825011691852

`A006139(n)²/A016116(2*n)`
-/

namespace A214623.P3172338825011691852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n ^ 2 : ℚ) / (A016116 (2 * n) : ℚ)

end

end A214623.P3172338825011691852

/-! ## A214623.P14807693835214380494

`A006139(n)²/A036561(A000217(n))`
-/

namespace A214623.P14807693835214380494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n ^ 2 : ℚ) / (A036561 (A000217 n).toNat : ℚ)

end

end A214623.P14807693835214380494

/-! ## A214623.P13393539416826469662

`A006139(n)/A000142(n)*A012244(n)`
-/

namespace A214623.P13393539416826469662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 n : ℚ) / (A000142 n : ℚ) * (A012244 n : ℚ)

end

end A214623.P13393539416826469662

/-!
# A214624: Braid numbers B((2)^n->(2)^n).

The programs for A214624, the canonical program `A214624.P13278410402516128907` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214624 has offset 0).

The definition of A214624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214624.P13278410402516128907

`(2*n)!*(3*n-2)/(4*n-2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214624

/-- `(2*n)!*(3*n-2)/(4*n-2)` -/
def P13278410402516128907.Spec : Prop :=
  ∀ n, P13278410402516128907.a n = (A214624 n : ℚ)

end A214624

/-! ## A214624.P8709425231716226694

`a(n-1)*2*n*(2*n-3)*(3*n-2)/(3*n-5)` with `a(0)=1`
-/

namespace A214624.P8709425231716226694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * 2 * (n : ℚ) * ((2 * n : ℤ) - 3 : ℚ) * ((3 * n : ℤ) - 2 : ℚ) / ((3 * n : ℤ) - 5 : ℚ)

end

end A214624.P8709425231716226694

namespace A214624

/-- `a(n-1)*2*n*(2*n-3)*(3*n-2)/(3*n-5)` -/
def P8709425231716226694.Spec : Prop :=
  ∀ n, P8709425231716226694.a n = (A214624 n : ℚ)

end A214624

/-! ## A214624.P8210333717369699308

`n!*Δ[n*A120588(n)]*n!`
-/

namespace A214624.P8210333717369699308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n) * (Nat.factorial n : ℤ)

end

end A214624.P8210333717369699308

namespace A214624

/-- `n!*Δ[n*A120588(n)]*n!` -/
def P8210333717369699308.Spec : Prop :=
  ∀ n, P8210333717369699308.a n = A214624 n

end A214624

/-! ## A214624.P15645088627546337894

`A001044(n)*A051924(A028310(n))`
-/

namespace A214624.P15645088627546337894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 n * A051924 (A028310 n).toNat

end

end A214624.P15645088627546337894

namespace A214624

/-- `A001044(n)*A051924(A028310(n))` -/
def P15645088627546337894.Spec : Prop :=
  ∀ n, P15645088627546337894.a n = A214624 n

end A214624

/-! ## A214624.P16646292118229547863

`A000142(n)²*A051924(A028310(n))`
-/

namespace A214624.P16646292118229547863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 2 * A051924 (A028310 n).toNat

end

end A214624.P16646292118229547863

namespace A214624

/-- `A000142(n)²*A051924(A028310(n))` -/
def P16646292118229547863.Spec : Prop :=
  ∀ n, P16646292118229547863.a n = A214624 n

end A214624

/-!
# A214625: Let n=r_1*r_2*...*r_k is Fermi-Dirac factorization of n (see comment). Set g(n) = n + k - 1 and g_i, i>=0 (g_0(n) = n, g_1=g), is i-th iteration of g. a(n) is the minimal i such that g_i(n) is in A050376.

The programs for A214625, there is no canonical definition to state claims against.
-/

/-! ## A214625.P16314506248764823026

`ceil(A242165(n+2)/A014963(A152523(n+1)))`
-/

namespace A214625.P16314506248764823026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A242165 (n + 2) : ℚ) / (A014963 (A152523 (n + 1)).toNat : ℚ)⌉

end

end A214625.P16314506248764823026

/-! ## A214625.P10271953871873886010

`A170951(A110429(n))%A008621(n)`
-/

namespace A214625.P10271953871873886010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170951 (A110429 (n + 100)).toNat) (A008621 n)

end

end A214625.P10271953871873886010

/-! ## A214625.P8703590998408903940

`A146540(A001972(n))%A292375(n+1)`
-/

namespace A214625.P8703590998408903940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146540 (A001972 n).toNat) (A292375 (n + 1))

end

end A214625.P8703590998408903940

/-! ## A214625.P12508326921299658931

`A192517(n+1)%A379216(A231565(n+1))`
-/

namespace A214625.P12508326921299658931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192517 (n + 1)) (A379216 (A231565 (n + 1)).toNat)

end

end A214625.P12508326921299658931

/-! ## A214625.P591356470878540054

`A271518(A328024(3*n+1))%A060682(n+2)`
-/

namespace A214625.P591356470878540054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271518 (A328024 (3 * n + 1)).toNat) (A060682 (n + 2))

end

end A214625.P591356470878540054

/-!
# A214626: a(n) = (a(n-1) + a(n-3)) / gcd(a(n-1), a(n-3)) with a(0) = a(1) = 1 and a(2) = 3.

The programs for A214626, the canonical program `A214626.P5898249192653810151` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214626 has offset 0).

The definition of A214626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214626.P5898249192653810151

`(a(n-1)+a(n-3))/gcd(a(n-1), a(n-3))` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214626

/-- `(a(n-1)+a(n-3))/gcd(a(n-1), a(n-3))` -/
def P5898249192653810151.Spec : Prop :=
  ∀ n, P5898249192653810151.a n = (A214626 n : ℚ)

end A214626

/-!
# A214627: Primes in A161671.

The programs for A214627, the canonical program `A214627.P2673755501888377610` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214627 has offset 1).

The definition of A214627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214627.P2673755501888377610

`record[A141559(A133310(n))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A214627

/-- `record[A141559(A133310(n))]` -/
def P2673755501888377610.Spec : Prop :=
  ∀ n, P2673755501888377610.a n = A214627 (n + 1)

theorem P2673755501888377610.correct : P2673755501888377610.Spec := by
  intro n
  simp only [A214627, Nat.add_sub_cancel]

end A214627

/-! ## A214627.P13321353951149863376

`record[A141559(A052938(n))]`
-/

namespace A214627.P13321353951149863376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P13321353951149863376

namespace A214627

/-- `record[A141559(A052938(n))]` -/
def P13321353951149863376.Spec : Prop :=
  ∀ n, P13321353951149863376.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P16574915313975255977

`record[A141559(A126759(n))]`
-/

namespace A214627.P16574915313975255977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P16574915313975255977

namespace A214627

/-- `record[A141559(A126759(n))]` -/
def P16574915313975255977.Spec : Prop :=
  ∀ n, P16574915313975255977.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P9051033620741123964

`record[A141559(A154958(n))]`
-/

namespace A214627.P9051033620741123964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P9051033620741123964

namespace A214627

/-- `record[A141559(A154958(n))]` -/
def P9051033620741123964.Spec : Prop :=
  ∀ n, P9051033620741123964.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P7347706200874337480

`record[A141559(A141256(n))]`
-/

namespace A214627.P7347706200874337480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P7347706200874337480

namespace A214627

/-- `record[A141559(A141256(n))]` -/
def P7347706200874337480.Spec : Prop :=
  ∀ n, P7347706200874337480.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P11016311153087849718

`record[A141559(A003963(n+1))]`
-/

namespace A214627.P11016311153087849718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P11016311153087849718

namespace A214627

/-- `record[A141559(A003963(n+1))]` -/
def P11016311153087849718.Spec : Prop :=
  ∀ n, P11016311153087849718.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P7198012554388090352

`p?[record[A161671(n+1)]]`
-/

namespace A214627.P7198012554388090352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214627.P7198012554388090352

namespace A214627

/-- `p?[record[A161671(n+1)]]` -/
def P7198012554388090352.Spec : Prop :=
  ∀ n, P7198012554388090352.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P3662191855550164459

`record[A006530(A161671(n+2))]`
-/

namespace A214627.P3662191855550164459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161671 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P3662191855550164459

namespace A214627

/-- `record[A006530(A161671(n+2))]` -/
def P3662191855550164459.Spec : Prop :=
  ∀ n, P3662191855550164459.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P1313025994955520975

`record[A020639(record[A161671(n+1)])]`
-/

namespace A214627.P1313025994955520975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P1313025994955520975

namespace A214627

/-- `record[A020639(record[A161671(n+1)])]` -/
def P1313025994955520975.Spec : Prop :=
  ∀ n, P1313025994955520975.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P9818992054452935053

`p?[record[A000040(n+1)-A141468(n+1)]]`
-/

namespace A214627.P9818992054452935053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A141468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214627.P9818992054452935053

namespace A214627

/-- `p?[record[A000040(n+1)-A141468(n+1)]]` -/
def P9818992054452935053.Spec : Prop :=
  ∀ n, P9818992054452935053.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P13740938129502020651

`record[A006530(A000040(n+2)-A018252(n+1))]`
-/

namespace A214627.P13740938129502020651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) - A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P13740938129502020651

namespace A214627

/-- `record[A006530(A000040(n+2)-A018252(n+1))]` -/
def P13740938129502020651.Spec : Prop :=
  ∀ n, P13740938129502020651.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P687561997322440312

`record[A020639(A000040(n+2)-A018252(n+1))]`
-/

namespace A214627.P687561997322440312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 2) - A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P687561997322440312

namespace A214627

/-- `record[A020639(A000040(n+2)-A018252(n+1))]` -/
def P687561997322440312.Spec : Prop :=
  ∀ n, P687561997322440312.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P13807807523320588138

`record[A141559(A134478(n))]`
-/

namespace A214627.P13807807523320588138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P13807807523320588138

namespace A214627

/-- `record[A141559(A134478(n))]` -/
def P13807807523320588138.Spec : Prop :=
  ∀ n, P13807807523320588138.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P11539204536438583801

`record[A141559(A020986(n)+1)]`
-/

namespace A214627.P11539204536438583801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (A020986 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P11539204536438583801

namespace A214627

/-- `record[A141559(A020986(n)+1)]` -/
def P11539204536438583801.Spec : Prop :=
  ∀ n, P11539204536438583801.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P12916557201271447126

`record[A141559(A020986(n))]`
-/

namespace A214627.P12916557201271447126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P12916557201271447126

namespace A214627

/-- `record[A141559(A020986(n))]` -/
def P12916557201271447126.Spec : Prop :=
  ∀ n, P12916557201271447126.a n = A214627 (n + 1)

end A214627

/-! ## A214627.P17096651258649246992

`record[A014963(A000040(n+2)-A018252(n+1))]`
-/

namespace A214627.P17096651258649246992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000040 (n + 2) - A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P17096651258649246992

namespace A214627

/-- `record[A014963(A000040(n+2)-A018252(n+1))]` -/
def P17096651258649246992.Spec : Prop :=
  ∀ n, P17096651258649246992.a n = A214627 (n + 1)

end A214627

/-!
# A214628: Intersections of radii with the cycloid.

The programs for A214628, there is no canonical definition to state claims against.
-/

/-! ## A214628.P12095777166828972041

`2*round((abs(1-n)+2)/π)`
-/

namespace A214628.P12095777166828972041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((|1 - (n : ℤ)| + 2 : ℝ) / Real.pi)

end

end A214628.P12095777166828972041

/-! ## A214628.P8290000777058514621

`and(A253671(n+1)+1, -2)`
-/

namespace A214628.P8290000777058514621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253671 (n + 1) + 1) (-2)

end

end A214628.P8290000777058514621

/-! ## A214628.P8594991211598329816

`lcm(2, A004277(∑[A163584(n)]))`
-/

namespace A214628.P8594991211598329816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A214628.P8594991211598329816

/-! ## A214628.P4565567959959562164

`A005843(ceil(A253671(n+1)/2))`
-/

namespace A214628.P4565567959959562164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ⌈(A253671 (n + 1) : ℚ) / 2⌉.toNat

end

end A214628.P4565567959959562164

/-! ## A214628.P1895444858577006072

`A004277(∑[A163584(abs(2-n)+2)])`
-/

namespace A214628.P1895444858577006072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163584 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214628.P1895444858577006072

/-! ## A214628.P15260189087288057771

`A004277(A000007(n)+∑[A163584(n)])`
-/

namespace A214628.P15260189087288057771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214628.P15260189087288057771

/-! ## A214628.P520475006583101178

`A178832(comp[2*(n+1)])+1`
-/

namespace A214628.P520475006583101178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A214628.P520475006583101178

/-!
# A214629: Primes p such that the sum of the digits plus the product of the digits is a prime.

The programs for A214629, the canonical program `A214629.P6159312016029750256` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214629 has offset 1).

The definition of A214629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214629.P6159312016029750256

`p?[A185300(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A214629

/-- `p?[A185300(n+1)]` -/
def P6159312016029750256.Spec : Prop :=
  ∀ n, P6159312016029750256.a n = A214629 (n + 1)

theorem P6159312016029750256.correct : P6159312016029750256.Spec := by
  intro n
  simp only [A214629, Nat.add_sub_cancel]

end A214629

/-! ## A214629.P16536805749736644362

`p?[record[A185300(A291769(n))]]`
-/

namespace A214629.P16536805749736644362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214629.P16536805749736644362

namespace A214629

/-- `p?[record[A185300(A291769(n))]]` -/
def P16536805749736644362.Spec : Prop :=
  ∀ n, P16536805749736644362.a n = A214629 (n + 1)

end A214629

/-! ## A214629.P15506838827307471424

`record[A006530(A185300(n+2))]`
-/

namespace A214629.P15506838827307471424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A185300 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214629.P15506838827307471424

namespace A214629

/-- `record[A006530(A185300(n+2))]` -/
def P15506838827307471424.Spec : Prop :=
  ∀ n, P15506838827307471424.a n = A214629 (n + 1)

end A214629

/-! ## A214629.P17302554007591853287

`filter[A185300(n+1), A010051(#)]`
-/

namespace A214629.P17302554007591853287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A214629.P17302554007591853287

namespace A214629

/-- `filter[A185300(n+1), A010051(#)]` -/
def P17302554007591853287.Spec : Prop :=
  ∀ n, P17302554007591853287.a n = A214629 (n + 1)

end A214629

/-! ## A214629.P16034757060354819844

`filter[A185300(n+1), A323153(#)]`
-/

namespace A214629.P16034757060354819844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A214629.P16034757060354819844

namespace A214629

/-- `filter[A185300(n+1), A323153(#)]` -/
def P16034757060354819844.Spec : Prop :=
  ∀ n, P16034757060354819844.a n = A214629 (n + 1)

end A214629

/-! ## A214629.P4854377856618484493

`∩[A000040(n+1), A185300(n+1)]`
-/

namespace A214629.P4854377856618484493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P4854377856618484493

namespace A214629

/-- `∩[A000040(n+1), A185300(n+1)]` -/
def P4854377856618484493.Spec : Prop :=
  ∀ n, (P4854377856618484493.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P4901713315316846183

`∩[A004139(n+1), A185300(n+1)]`
-/

namespace A214629.P4901713315316846183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P4901713315316846183

namespace A214629

/-- `∩[A004139(n+1), A185300(n+1)]` -/
def P4901713315316846183.Spec : Prop :=
  ∀ n, (P4901713315316846183.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P10615916056423112118

`∩[A045319(n+1), A185300(n+1)]`
-/

namespace A214629.P10615916056423112118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P10615916056423112118

namespace A214629

/-- `∩[A045319(n+1), A185300(n+1)]` -/
def P10615916056423112118.Spec : Prop :=
  ∀ n, (P10615916056423112118.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P3533677021394695887

`∩[A045344(n+1), A185300(n+1)]`
-/

namespace A214629.P3533677021394695887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P3533677021394695887

namespace A214629

/-- `∩[A045344(n+1), A185300(n+1)]` -/
def P3533677021394695887.Spec : Prop :=
  ∀ n, (P3533677021394695887.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P3160337572771384239

`∩[A051948(n+1), A185300(n+1)]`
-/

namespace A214629.P3160337572771384239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P3160337572771384239

namespace A214629

/-- `∩[A051948(n+1), A185300(n+1)]` -/
def P3160337572771384239.Spec : Prop :=
  ∀ n, (P3160337572771384239.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P5855951123096809428

`∩[A053813(n+1), A185300(n+1)]`
-/

namespace A214629.P5855951123096809428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P5855951123096809428

namespace A214629

/-- `∩[A053813(n+1), A185300(n+1)]` -/
def P5855951123096809428.Spec : Prop :=
  ∀ n, (P5855951123096809428.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P10984416426516122369

`∩[A065091(n+1), A185300(n+1)]`
-/

namespace A214629.P10984416426516122369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P10984416426516122369

namespace A214629

/-- `∩[A065091(n+1), A185300(n+1)]` -/
def P10984416426516122369.Spec : Prop :=
  ∀ n, (P10984416426516122369.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P17688392763243679030

`∩[A116974(n+1), A185300(n+1)]`
-/

namespace A214629.P17688392763243679030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P17688392763243679030

namespace A214629

/-- `∩[A116974(n+1), A185300(n+1)]` -/
def P17688392763243679030.Spec : Prop :=
  ∀ n, (P17688392763243679030.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P17957781789722580745

`∩[A161346(n+1), A185300(n+1)]`
-/

namespace A214629.P17957781789722580745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P17957781789722580745

namespace A214629

/-- `∩[A161346(n+1), A185300(n+1)]` -/
def P17957781789722580745.Spec : Prop :=
  ∀ n, (P17957781789722580745.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P16928243844510960429

`∩[A161428(n+1), A185300(n+1)]`
-/

namespace A214629.P16928243844510960429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P16928243844510960429

namespace A214629

/-- `∩[A161428(n+1), A185300(n+1)]` -/
def P16928243844510960429.Spec : Prop :=
  ∀ n, (P16928243844510960429.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P7980322939884739949

`∩[A162786(n+1), A185300(n+1)]`
-/

namespace A214629.P7980322939884739949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P7980322939884739949

namespace A214629

/-- `∩[A162786(n+1), A185300(n+1)]` -/
def P7980322939884739949.Spec : Prop :=
  ∀ n, (P7980322939884739949.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P12699167699845834627

`∩[A175787(n+1), A185300(n+1)]`
-/

namespace A214629.P12699167699845834627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P12699167699845834627

namespace A214629

/-- `∩[A175787(n+1), A185300(n+1)]` -/
def P12699167699845834627.Spec : Prop :=
  ∀ n, (P12699167699845834627.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P5138538577947687967

`∩[A182986(n+1), A185300(n+1)]`
-/

namespace A214629.P5138538577947687967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P5138538577947687967

namespace A214629

/-- `∩[A182986(n+1), A185300(n+1)]` -/
def P5138538577947687967.Spec : Prop :=
  ∀ n, (P5138538577947687967.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P12640172685529768807

`∩[A185300(n+1), A215848(n+1)]`
-/

namespace A214629.P12640172685529768807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214629.P12640172685529768807

namespace A214629

/-- `∩[A185300(n+1), A215848(n+1)]` -/
def P12640172685529768807.Spec : Prop :=
  ∀ n, (P12640172685529768807.a n : ℤ) = A214629 (n + 1)

end A214629

/-! ## A214629.P9639511066895397143

`filter[A185300(n+1), A171387(#)]`
-/

namespace A214629.P9639511066895397143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A214629.P9639511066895397143

namespace A214629

/-- `filter[A185300(n+1), A171387(#)]` -/
def P9639511066895397143.Spec : Prop :=
  ∀ n, P9639511066895397143.a n = A214629 (n + 1)

end A214629

/-!
# A214630: a(n) is the reduced numerator of 1/4 - 1/A109043(n)^2 = (1 - 1/A026741(n)^2)/4.

The programs for A214630, the canonical program `A214630.P3894340943052306860` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214630 has offset 0).

The definition of A214630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214630.P3894340943052306860

`A214297(gcd(n, ∑[n]²))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214630

/-- `A214297(gcd(n, ∑[n]²))` -/
def P3894340943052306860.Spec : Prop :=
  ∀ n, P3894340943052306860.a n = A214630 n

theorem P3894340943052306860.correct : P3894340943052306860.Spec := by
  intro n
  simp only [A214630]

end A214630

/-! ## A214630.P210120061290933851

`A214297(A283971(n))`
-/

namespace A214630.P210120061290933851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (A283971 n).toNat

end

end A214630.P210120061290933851

namespace A214630

/-- `A214297(A283971(n))` -/
def P210120061290933851.Spec : Prop :=
  ∀ n, P210120061290933851.a n = A214630 n

end A214630

/-! ## A214630.P2876376261313952840

`A247829(A249693(n*A000034(n)))`
-/

namespace A214630.P2876376261313952840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247829 (A249693 ((n : ℤ) * A000034 n).toNat).toNat

end

end A214630.P2876376261313952840

namespace A214630

/-- `A247829(A249693(n*A000034(n)))` -/
def P2876376261313952840.Spec : Prop :=
  ∀ n, P2876376261313952840.a n = A214630 n

end A214630

/-! ## A214630.P6217330133532815005

`A225948(2*lcm(2, n))`
-/

namespace A214630.P6217330133532815005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (2 * Nat.lcm 2 n)

end

end A214630.P6217330133532815005

namespace A214630

/-- `A225948(2*lcm(2, n))` -/
def P6217330133532815005.Spec : Prop :=
  ∀ n, P6217330133532815005.a n = A214630 n

end A214630

/-! ## A214630.P1206257223410882757

`A225948(2*n*gcd(2, n+1))`
-/

namespace A214630.P1206257223410882757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (2 * (n * Nat.gcd 2 (n + 1)))

end

end A214630.P1206257223410882757

namespace A214630

/-- `A225948(2*n*gcd(2, n+1))` -/
def P1206257223410882757.Spec : Prop :=
  ∀ n, P1206257223410882757.a n = A214630 n

end A214630

/-! ## A214630.P8377680031997197182

`A225948(2*n*A176895(2*n))`
-/

namespace A214630.P8377680031997197182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (2 * ((n : ℤ) * A176895 (2 * n))).toNat

end

end A214630.P8377680031997197182

namespace A214630

/-- `A225948(2*n*A176895(2*n))` -/
def P8377680031997197182.Spec : Prop :=
  ∀ n, P8377680031997197182.a n = A214630 n

end A214630

/-! ## A214630.P18282694643009282194

`(A168077(n)-1)/A010685(A168077(n))`
-/

namespace A214630.P18282694643009282194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168077 n - 1 : ℚ) / (A010685 (A168077 n).toNat : ℚ)

end

end A214630.P18282694643009282194

namespace A214630

/-- `(A168077(n)-1)/A010685(A168077(n))` -/
def P18282694643009282194.Spec : Prop :=
  ∀ n, P18282694643009282194.a n = (A214630 n : ℚ)

end A214630

/-!
# A214632: a(1) = 17, a(n) is smallest prime of the form k*a(n - 1) + 1.

The programs for A214632, there is no canonical definition to state claims against.
-/

/-! ## A214632.P1873086153895818423

`A070846(a(n-1))` with `a(0)=17`
-/

namespace A214632.P1873086153895818423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A070846 (a (n - 1)).toNat

end

end A214632.P1873086153895818423

/-! ## A214632.P5225977682109966254

`A070846(abs(a(A023443(n))))` with `a(0)=17`
-/

namespace A214632.P5225977682109966254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A070846 |a (A023443 n).toNat|.toNat

end

end A214632.P5225977682109966254

/-!
# A214633: a(1)=2; a(n) is smallest prime of the form k*a(n-1) + 3, k>0.

The programs for A214633, there is no canonical definition to state claims against.
-/

/-! ## A214633.P6531902909923208247

`p?[A074405(n+1)+(1-n)²+n]`
-/

namespace A214633.P6531902909923208247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074405 (n + 1) + ((1 - (n : ℤ)) ^ 2 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214633.P6531902909923208247

/-!
# A214634: a(1) = 7; a(n) is smallest prime of the form k*a(n-1) + 3, k>0.

The programs for A214634, there is no canonical definition to state claims against.
-/

/-! ## A214634.P1721409526861548551

`p?[a(n-1)*A000010(2*n)+3]` with `a(0)=4`
-/

namespace A214634.P1721409526861548551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) * A000010 (2 * n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214634.P1721409526861548551

/-!
# A214635: Period of A213437 mod n.

The programs for A214635, there is no canonical definition to state claims against.
-/

/-! ## A214635.P8655144973836665786

`A169941(A140210(n+1)+1)`
-/

namespace A214635.P8655144973836665786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169941 (A140210 (n + 1) + 1).toNat

end

end A214635.P8655144973836665786

/-! ## A214635.P13547725911734961174

`A248891(A229296((n+1)/2^val(n+1, 2)))`
-/

namespace A214635.P13547725911734961174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (A229296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A214635.P13547725911734961174

/-! ## A214635.P5417376427339903751

`A335616(A050449(n+1)%A374698(3*(n+1)))`
-/

namespace A214635.P5417376427339903751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335616 (Int.tmod (A050449 (n + 1)) (A374698 (3 * (n + 1)))).toNat

end

end A214635.P5417376427339903751

/-! ## A214635.P11290498621198019883

`A248218(A000265(n+1)%A223453(n+1))`
-/

namespace A214635.P11290498621198019883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (Int.tmod (A000265 (n + 1)) (A223453 (n + 1))).toNat

end

end A214635.P11290498621198019883

/-! ## A214635.P10318810287587694172

`A102187(A363903(n+1)%A230452(3*n+2))`
-/

namespace A214635.P10318810287587694172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102187 (Int.tmod (A363903 (n + 1)) (A230452 (3 * n + 2))).toNat

end

end A214635.P10318810287587694172

/-!
# A214636: A213437 becomes periodic mod n starting at this position.

The programs for A214636, there is no canonical definition to state claims against.
-/

/-! ## A214636.P6002679238413491636

`A328699(n+1)+1`
-/

namespace A214636.P6002679238413491636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328699 (n + 1) + 1

end

end A214636.P6002679238413491636

/-! ## A214636.P11372265956850462721

`A005496(A328699(n+1))`
-/

namespace A214636.P11372265956850462721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A328699 (n + 1)).toNat

end

end A214636.P11372265956850462721

/-! ## A214636.P11233023496703074932

`A332965(n+1)+1-A248218(n+1)`
-/

namespace A214636.P11233023496703074932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332965 (n + 1) + (1 - A248218 (n + 1))

end

end A214636.P11233023496703074932

/-! ## A214636.P10128652739687347657

`A332965(n+1)+A024000(A248218(n+1))`
-/

namespace A214636.P10128652739687347657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332965 (n + 1) + A024000 (A248218 (n + 1)).toNat

end

end A214636.P10128652739687347657

/-! ## A214636.P4426194544359189085

`A005496(A332965(n+1)-A248218(n+1))`
-/

namespace A214636.P4426194544359189085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A332965 (n + 1) - A248218 (n + 1)).toNat

end

end A214636.P4426194544359189085

/-! ## A214636.P119715219339575644

`A348553(A332965(n+1)-A248218(n+1))`
-/

namespace A214636.P119715219339575644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A332965 (n + 1) - A248218 (n + 1)).toNat

end

end A214636.P119715219339575644

/-!
# A214638: Number of solid standard Young tableaux of shape [[n,n,n],[n],[n]].

The programs for A214638, there is no canonical definition to state claims against.
-/

/-! ## A214638.P17979849363758768679

`A214631(∑[n+3])`
-/

namespace A214638.P17979849363758768679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214631 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214638.P17979849363758768679

/-! ## A214638.P6007775831867646353

`A007318(C(2, n))*A214631(A141214(n))`
-/

namespace A214638.P6007775831867646353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A214631 (A141214 n).toNat

end

end A214638.P6007775831867646353

/-! ## A214638.P17874033721705073428

`A001221(A007918(n))*A214631(A141214(n))`
-/

namespace A214638.P17874033721705073428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007918 n).toNat * A214631 (A141214 n).toNat

end

end A214638.P17874033721705073428

/-! ## A214638.P1596877774093325939

`A007318(A140207(n))*A214631(A141214(n))`
-/

namespace A214638.P1596877774093325939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A140207 n).toNat * A214631 (A141214 n).toNat

end

end A214638.P1596877774093325939

/-!
# A214640: A ternary sequence : closed under 1 -> 123, 2 -> 12, 3 -> 2 . Start with 1 .

The programs for A214640, there is no canonical definition to state claims against.
-/

/-! ## A214640.P16001381790070510032

`A065882(record[A068509(A000463(n+1))])`
-/

namespace A214640.P16001381790070510032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214640.P16001381790070510032

/-! ## A214640.P3937913543020250729

`A325494(∑[A039766(A301331(n))])`
-/

namespace A214640.P3937913543020250729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039766 (A301331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325494 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214640.P3937913543020250729

/-! ## A214640.P16450669002034611927

`gcd(A128629(3*n+2), A213427(A339948(2*n+1)))`
-/

namespace A214640.P16450669002034611927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128629 (3 * n + 2)) (A213427 (A339948 (2 * n + 1)).toNat)

end

end A214640.P16450669002034611927

/-! ## A214640.P14480092018499444236

`A270788(∑[A008480(n+1)^A005041(n)])`
-/

namespace A214640.P14480092018499444236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008480 (n + 1) : ℚ) ^ (A005041 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A214640.P14480092018499444236

/-! ## A214640.P1486389085674194201

`A322423(lt[A242707(n+1), A189507(3*n)])`
-/

namespace A214640.P1486389085674194201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189507 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322423 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214640.P1486389085674194201

/-!
# A214641: Indices of a in the sequence closed under a -> abc, b -> ab, c -> b . Start with a.

The programs for A214641, there is no canonical definition to state claims against.
-/

/-! ## A214641.P2216794735500015581

`eq[1, A214640(n+1)]+1`
-/

namespace A214641.P2216794735500015581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214641.P2216794735500015581

/-! ## A214641.P14212366881761609170

`eq[1, A362927(2*n+1)]`
-/

namespace A214641.P14212366881761609170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362927 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214641.P14212366881761609170

/-! ## A214641.P3680588197171247335

`lt[1, A064353(2*n+1)]`
-/

namespace A214641.P3680588197171247335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A214641.P3680588197171247335

/-! ## A214641.P3601914350402703705

`eq[3, A064353(A109613(2*n))]`
-/

namespace A214641.P3601914350402703705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (A109613 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214641.P3601914350402703705

/-! ## A214641.P11277683236400353587

`record[A078898(A146562(n+1)-1)]`
-/

namespace A214641.P11277683236400353587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A146562 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214641.P11277683236400353587

/-! ## A214641.P17806351823267864233

`A000027(eq[3, A064353(2*n+1)])`
-/

namespace A214641.P17806351823267864233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214641.P17806351823267864233

/-! ## A214641.P9009481484155650865

`A028310(eq[3, A064353(2*n+1)])`
-/

namespace A214641.P9009481484155650865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214641.P9009481484155650865

/-! ## A214641.P7846514429367282935

`eq[A064353(n+1), A176059(n)]/2`
-/

namespace A214641.P7846514429367282935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A214641.P7846514429367282935

/-! ## A214641.P11915218526661265207

`eq[A064353(2*n+1), A176059(2*n)]`
-/

namespace A214641.P11915218526661265207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214641.P11915218526661265207

/-! ## A214641.P11706124907565130047

`record[(A064353(n+2)-2)*A032742(n+1)]`
-/

namespace A214641.P11706124907565130047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064353 (n + 2) - 2) * A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214641.P11706124907565130047

/-! ## A214641.P8505800323323313770

`eq[A054977(n+1)+2, A064353(2*n+1)]`
-/

namespace A214641.P8505800323323313770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214641.P8505800323323313770

/-! ## A214641.P1353368153217737891

`eq[A057428(n)², A214640(A123108(2*n))]`
-/

namespace A214641.P1353368153217737891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214641.P1353368153217737891

/-! ## A214641.P13805258088591798077

`eq[n, A028310(n*A214640(A028310(n)))]`
-/

namespace A214641.P13805258088591798077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A214640 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214641.P13805258088591798077

/-!
# A214642: Indices of b in the sequence a -> abc, b -> ab, c -> b . Start with a.

The programs for A214642, there is no canonical definition to state claims against.
-/

/-! ## A214642.P17594859078104928250

`eq[2, A214640(n+1)]+1`
-/

namespace A214642.P17594859078104928250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214642.P17594859078104928250

/-! ## A214642.P91826856362341269

`eq[2, A214640(A028310(n))]`
-/

namespace A214642.P91826856362341269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214642.P91826856362341269

/-! ## A214642.P1981076537111513884

`A020725(eq[2, A214640(n+1)])`
-/

namespace A214642.P1981076537111513884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214642.P1981076537111513884

/-! ## A214642.P2103377150167613949

`eq[2, A214640(n*a(A000045(((-1)^n)²)-1))]` with `a(0)=1`
-/

namespace A214642.P2103377150167613949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A214640 ((n : ℤ) * f2 (A000045 (((-1) ^ n) ^ 2).toNat - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214642.P2103377150167613949

/-! ## A214642.P7718202882067702144

`eq[2, A214640(A000007(n)+n)]`
-/

namespace A214642.P7718202882067702144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214642.P7718202882067702144

/-! ## A214642.P12055120063214665421

`eq[2, A214640(or(n, A000007(n)))]`
-/

namespace A214642.P12055120063214665421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214642.P12055120063214665421

/-! ## A214642.P18390151383624254496

`eq[2, A214640(A123108(2*n))]`
-/

namespace A214642.P18390151383624254496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214642.P18390151383624254496

/-! ## A214642.P1544771129312493233

`eq[2, A214640(A007318(A000124(n)))]`
-/

namespace A214642.P1544771129312493233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214642.P1544771129312493233

/-! ## A214642.P11338722106443245144

`eq[2, A214640(n^A178334(n))]`
-/

namespace A214642.P11338722106443245144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214642.P11338722106443245144

/-!
# A214643: Primes p such that p XOR 22 = p + 22.

The programs for A214643, the canonical program `A214643.P8564077701185183105` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214643 has offset 1).

The definition of A214643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9796 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214643.P12516775339655171107

`∪[A133870(n+1), A142038(n+1)]`
-/

namespace A214643.P12516775339655171107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214643.P12516775339655171107

namespace A214643

/-- `∪[A133870(n+1), A142038(n+1)]` -/
def P12516775339655171107.Spec : Prop :=
  ∀ n, (P12516775339655171107.a n : ℤ) = A214643 (n + 1)

end A214643

/-! ## A214643.P8564077701185183105

`p?[a(n-2)+32]` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214643

/-- `p?[a(n-2)+32]` -/
def P8564077701185183105.Spec : Prop :=
  ∀ n, (P8564077701185183105.a n : ℤ) = A214643 (n + 1)

theorem P8564077701185183105.correct : P8564077701185183105.Spec := by
  intro n
  simp only [A214643, Nat.add_sub_cancel]

end A214643

/-! ## A214643.P7855274688720195600

`p?[and(24*n+21, -21)]`
-/

namespace A214643.P7855274688720195600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (24 * n + 21 : ℤ) (-21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214643.P7855274688720195600

namespace A214643

/-- `p?[and(24*n+21, -21)]` -/
def P7855274688720195600.Spec : Prop :=
  ∀ n, P7855274688720195600.a n = A214643 (n + 1)

end A214643

/-! ## A214643.P5954137086182659379

`p?[(n%4)²+8*n]`
-/

namespace A214643.P5954137086182659379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 4) ^ 2 + 8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214643.P5954137086182659379

namespace A214643

/-- `p?[(n%4)²+8*n]` -/
def P5954137086182659379.Spec : Prop :=
  ∀ n, (P5954137086182659379.a n : ℤ) = A214643 (n + 1)

end A214643

/-! ## A214643.P9924175134851566221

`p?[and(3, n)²+8*n]`
-/

namespace A214643.P9924175134851566221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n ^ 2 + 8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214643.P9924175134851566221

namespace A214643

/-- `p?[and(3, n)²+8*n]` -/
def P9924175134851566221.Spec : Prop :=
  ∀ n, (P9924175134851566221.a n : ℤ) = A214643 (n + 1)

end A214643

/-! ## A214643.P2270080295742655121

`p?[8*comp[or(2, n)]+1]`
-/

namespace A214643.P2270080295742655121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214643.P2270080295742655121

namespace A214643

/-- `p?[8*comp[or(2, n)]+1]` -/
def P2270080295742655121.Spec : Prop :=
  ∀ n, (P2270080295742655121.a n : ℤ) = A214643 (n + 1)

end A214643

/-! ## A214643.P14071976425673844925

`p?[∑[A070478(n)]]`
-/

namespace A214643.P14071976425673844925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070478 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214643.P14071976425673844925

namespace A214643

/-- `p?[∑[A070478(n)]]` -/
def P14071976425673844925.Spec : Prop :=
  ∀ n, P14071976425673844925.a n = A214643 (n + 1)

end A214643

/-! ## A214643.P13811531914543994459

`p?[A047471(A047471(n+1))]`
-/

namespace A214643.P13811531914543994459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (A047471 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214643.P13811531914543994459

namespace A214643

/-- `p?[A047471(A047471(n+1))]` -/
def P13811531914543994459.Spec : Prop :=
  ∀ n, P13811531914543994459.a n = A214643 (n + 1)

end A214643

/-!
# A214644: Indices of c in the sequence closed under a -> abc, b -> ab, c -> b . Start with a.

The programs for A214644, there is no canonical definition to state claims against.
-/

/-! ## A214644.P805519899250682246

`A214642(A214641(n+1))+1`
-/

namespace A214644.P805519899250682246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214642 (A214641 (n + 1)).toNat + 1

end

end A214644.P805519899250682246

/-! ## A214644.P1726571647644437689

`eq[3, A214640(n+1)]+1`
-/

namespace A214644.P1726571647644437689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214644.P1726571647644437689

/-! ## A214644.P949825744269513736

`eq[3, A214640(A028310(n))]`
-/

namespace A214644.P949825744269513736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214644.P949825744269513736

/-! ## A214644.P1512673858056431296

`eq[1, A064353(2*(n+1))]+1`
-/

namespace A214644.P1512673858056431296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214644.P1512673858056431296

/-! ## A214644.P5285309144881859980

`record[A078898(A146562(n+2))]`
-/

namespace A214644.P5285309144881859980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A146562 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214644.P5285309144881859980

/-! ## A214644.P8664496629269041913

`eq[1, A064353(2*A028310(n))]`
-/

namespace A214644.P8664496629269041913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (2 * A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214644.P8664496629269041913

/-! ## A214644.P6437929895125155933

`eq[A054977(n), A064353(A004277(n))]`
-/

namespace A214644.P6437929895125155933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214644.P6437929895125155933

/-! ## A214644.P3737458938941123588

`eq[3, A214640(A123108(2*n))]`
-/

namespace A214644.P3737458938941123588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214644.P3737458938941123588

/-! ## A214644.P9919439596931299887

`eq[3, A214640(A233583(n+1))]`
-/

namespace A214644.P9919439596931299887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214644.P9919439596931299887

/-!
# A214645: E.g.f. A(x) satisfies A'(x) = exp(A(A(x))), with A(0) = 0.

The programs for A214645, there is no canonical definition to state claims against.
-/

/-! ## A214645.P16227151020865712905

`A259267(n+1)/A000079(n)`
-/

namespace A214645.P16227151020865712905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259267 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A214645.P16227151020865712905

/-! ## A214645.P11147576286938840858

`A259267(n+1)/record[A059268(n)]`
-/

namespace A214645.P11147576286938840858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259267 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A214645.P11147576286938840858

/-! ## A214645.P13178629643480340070

`A259267(n+1)/record[A130321(n)]`
-/

namespace A214645.P13178629643480340070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259267 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A214645.P13178629643480340070

/-! ## A214645.P6091049907253280436

`A259267(n+1)/record[A134309(n)]`
-/

namespace A214645.P6091049907253280436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259267 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A214645.P6091049907253280436

/-! ## A214645.P8749870028955354226

`A259267(n+1)/record[2^A025675(n+1)]`
-/

namespace A214645.P8749870028955354226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025675 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259267 (n + 1) : ℚ) / f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214645.P8749870028955354226

/-!
# A214646: a(n) = (a(n-2) + a(n-3))/gcd(a(n-2), a(n-3)) with a(1) = a(2) = a(3) = 1.

The programs for A214646, the canonical program `A214646.P2444674943049894771` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214646 has offset 1).

The definition of A214646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214646.P2444674943049894771

`(a(n-2)+a(n-3))/gcd(a(n-2), a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214646

/-- `(a(n-2)+a(n-3))/gcd(a(n-2), a(n-3))` -/
def P2444674943049894771.Spec : Prop :=
  ∀ n, P2444674943049894771.a n = (A214646 (n + 1) : ℚ)

end A214646

/-! ## A214646.P14760984590538136922

`A333940(or(A111248(n+1), A195820(n+1)))`
-/

namespace A214646.P14760984590538136922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333940 (Int.lor (A111248 (n + 1)) (A195820 (n + 1))).toNat

end

end A214646.P14760984590538136922

namespace A214646

/-- `A333940(or(A111248(n+1), A195820(n+1)))` -/
def P14760984590538136922.Spec : Prop :=
  ∀ n, P14760984590538136922.a n = A214646 (n + 1)

end A214646

/-!
# A214647: a(n) = (n^n + n^2)/2.

The programs for A214647, the canonical program `A214647.P10419060980452268569` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214647 has offset 1).

The definition of A214647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214647.P10419060980452268569

`((n+1)^(n+1)+(n+1)²)/2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214647

/-- `((n+1)^(n+1)+(n+1)²)/2` -/
def P10419060980452268569.Spec : Prop :=
  ∀ n, P10419060980452268569.a n = (A214647 (n + 1) : ℚ)

end A214647

/-! ## A214647.P11287306939221897238

`A214698(n+1)+(n+1)²`
-/

namespace A214647.P11287306939221897238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214698 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A214647.P11287306939221897238

namespace A214647

/-- `A214698(n+1)+(n+1)²` -/
def P11287306939221897238.Spec : Prop :=
  ∀ n, P11287306939221897238.a n = A214647 (n + 1)

end A214647

/-! ## A214647.P16388549096499887631

`(n+1)/2*A172165(n+1)`
-/

namespace A214647.P16388549096499887631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A172165 (n + 1) : ℚ)

end

end A214647.P16388549096499887631

namespace A214647

/-- `(n+1)/2*A172165(n+1)` -/
def P16388549096499887631.Spec : Prop :=
  ∀ n, P16388549096499887631.a n = (A214647 (n + 1) : ℚ)

end A214647

/-! ## A214647.P1251200489345355692

`A108396(A034856(n+1))+∑[n]`
-/

namespace A214647.P1251200489345355692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108396 (A034856 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A214647.P1251200489345355692

namespace A214647

/-- `A108396(A034856(n+1))+∑[n]` -/
def P1251200489345355692.Spec : Prop :=
  ∀ n, P1251200489345355692.a n = A214647 (n + 1)

end A214647

/-! ## A214647.P1720517802736376994

`A000217(n)+A214698(n+1)+∑[n+1]`
-/

namespace A214647.P1720517802736376994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A214698 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A214647.P1720517802736376994

namespace A214647

/-- `A000217(n)+A214698(n+1)+∑[n+1]` -/
def P1720517802736376994.Spec : Prop :=
  ∀ n, P1720517802736376994.a n = A214647 (n + 1)

end A214647

/-! ## A214647.P14691502497178370173

`∑[n]+A066068(n+1)/2`
-/

namespace A214647.P14691502497178370173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A066068 (n + 1) : ℚ) / 2

end

end A214647.P14691502497178370173

namespace A214647

/-- `∑[n]+A066068(n+1)/2` -/
def P14691502497178370173.Spec : Prop :=
  ∀ n, P14691502497178370173.a n = (A214647 (n + 1) : ℚ)

end A214647

/-! ## A214647.P3490042204996037036

`∑[n]+(A014566(n+1)+n)/2`
-/

namespace A214647.P3490042204996037036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A014566 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A214647.P3490042204996037036

namespace A214647

/-- `∑[n]+(A014566(n+1)+n)/2` -/
def P3490042204996037036.Spec : Prop :=
  ∀ n, P3490042204996037036.a n = (A214647 (n + 1) : ℚ)

end A214647

/-! ## A214647.P14510090635034016276

`A000312(n+1)-A214698(n+1)`
-/

namespace A214647.P14510090635034016276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - A214698 (n + 1)

end

end A214647.P14510090635034016276

namespace A214647

/-- `A000312(n+1)-A214698(n+1)` -/
def P14510090635034016276.Spec : Prop :=
  ∀ n, P14510090635034016276.a n = A214647 (n + 1)

end A214647

/-!
# A214648: Sum of next a(n) > 1 triangular numbers is a triangular number.

The programs for A214648, there is no canonical definition to state claims against.
-/

/-! ## A214648.P8318187537384812525

`Δ[(5-a(n-1))²]/3` with `a(0)=4, a(1)=10`
-/

namespace A214648.P8318187537384812525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n f1 =>
  (5 - f1 (n - 1)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A214648.P8318187537384812525

/-!
# A214649: a(-1) = 1 and g.f. A(x) satisfies A(x) - 1/A(x) = 1/x - 1.

The programs for A214649, there is no canonical definition to state claims against.
-/

/-! ## A214649.P10059745003847890253

`A100223(n)-char[1]`
-/

namespace A214649.P10059745003847890253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A214649.P10059745003847890253

/-! ## A214649.P6996408278104155787

`A343773((2*n)%(n+2))-char[1]`
-/

namespace A214649.P6996408278104155787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343773 (2 * n % (n + 2)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A214649.P6996408278104155787

/-! ## A214649.P4476431860336378346

`A159075(n)+A100223(n)`
-/

namespace A214649.P4476431860336378346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A100223 n

end

end A214649.P4476431860336378346

/-! ## A214649.P15209811353826426108

`or(A008683(A166632(n+1)), A100223(n))`
-/

namespace A214649.P15209811353826426108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A166632 (n + 1)).toNat) (A100223 n)

end

end A214649.P15209811353826426108

/-! ## A214649.P5537706681216259188

`A100240(n)/A280193(A305117(n))`
-/

namespace A214649.P5537706681216259188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100240 n : ℚ) / (A280193 (A305117 n).toNat : ℚ)

end

end A214649.P5537706681216259188

/-! ## A214649.P17343359511700673166

`xor(A010815(A029708(n+1)), A100223(n))`
-/

namespace A214649.P17343359511700673166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010815 (A029708 (n + 1)).toNat) (A100223 n)

end

end A214649.P17343359511700673166

/-!
# A214650: Number of distinct connected unicyclic bipartite graphs with n vertices.

The programs for A214650, there is no canonical definition to state claims against.
-/

/-! ## A214650.P10590952280271102024

`A349462(A120035(n))`
-/

namespace A214650.P10590952280271102024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349462 (A120035 n).toNat

end

end A214650.P10590952280271102024

/-! ## A214650.P1165879442611306329

`A265562(A358728(n+1))`
-/

namespace A214650.P1165879442611306329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265562 (A358728 (n + 1)).toNat

end

end A214650.P1165879442611306329

/-! ## A214650.P5963288130282983222

`A033111(A072856(n)+3)`
-/

namespace A214650.P5963288130282983222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033111 (A072856 n + 3).toNat

end

end A214650.P5963288130282983222

/-!
# A214651: Count down from n to 1, n times.

The programs for A214651, the canonical program `A214651.P2445496297912900043` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214651 has offset 1).

The definition of A214651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214651.P10996115397825880376

`A118235(record[A141419(n+1)])`
-/

namespace A214651.P10996115397825880376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214651.P10996115397825880376

namespace A214651

/-- `A118235(record[A141419(n+1)])` -/
def P10996115397825880376.Spec : Prop :=
  ∀ n, P10996115397825880376.a n = A214651 (n + 1)

end A214651

/-! ## A214651.P2445496297912900043

`A220465(record[A141419(n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A214651

/-- `A220465(record[A141419(n+1)])` -/
def P2445496297912900043.Spec : Prop :=
  ∀ n, P2445496297912900043.a n = A214651 (n + 1)

theorem P2445496297912900043.correct : P2445496297912900043.Spec := by
  intro n
  simp only [A214651, Nat.add_sub_cancel]

end A214651

/-! ## A214651.P6152757026908776563

`A074279(n+1)-A237451(n+1)`
-/

namespace A214651.P6152757026908776563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) - A237451 (n + 1)

end

end A214651.P6152757026908776563

namespace A214651

/-- `A074279(n+1)-A237451(n+1)` -/
def P6152757026908776563.Spec : Prop :=
  ∀ n, P6152757026908776563.a n = A214651 (n + 1)

end A214651

/-! ## A214651.P16904954104046425474

`∑[char[A000330(n)]]-A237451(n+1)`
-/

namespace A214651.P16904954104046425474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A237451 (n + 1)

end

end A214651.P16904954104046425474

namespace A214651

/-- `∑[char[A000330(n)]]-A237451(n+1)` -/
def P16904954104046425474.Spec : Prop :=
  ∀ n, P16904954104046425474.a n = A214651 (n + 1)

end A214651

/-! ## A214651.P4985484740511765727

`A074279(n+1)-(A002024(A361172(n+1))-1)`
-/

namespace A214651.P4985484740511765727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) - (A002024 (A361172 (n + 1)).toNat - 1)

end

end A214651.P4985484740511765727

namespace A214651

/-- `A074279(n+1)-(A002024(A361172(n+1))-1)` -/
def P4985484740511765727.Spec : Prop :=
  ∀ n, P4985484740511765727.a n = A214651 (n + 1)

end A214651

/-! ## A214651.P1453529672805848744

`A118235(record[A209260(n+1)])`
-/

namespace A214651.P1453529672805848744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214651.P1453529672805848744

namespace A214651

/-- `A118235(record[A209260(n+1)])` -/
def P1453529672805848744.Spec : Prop :=
  ∀ n, P1453529672805848744.a n = A214651 (n + 1)

end A214651

/-! ## A214651.P1113276648742138702

`A074279(n+1)+1-A121997(n+1)`
-/

namespace A214651.P1113276648742138702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) + (1 - A121997 (n + 1))

end

end A214651.P1113276648742138702

namespace A214651

/-- `A074279(n+1)+1-A121997(n+1)` -/
def P1113276648742138702.Spec : Prop :=
  ∀ n, P1113276648742138702.a n = A214651 (n + 1)

end A214651

/-! ## A214651.P15830154025581950377

`A121997(A253902(n+1)+n-A064866(n+1)+1)`
-/

namespace A214651.P15830154025581950377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (A253902 (n + 1) + ((n : ℤ) - A064866 (n + 1)) + 1).toNat

end

end A214651.P15830154025581950377

namespace A214651

/-- `A121997(A253902(n+1)+n-A064866(n+1)+1)` -/
def P15830154025581950377.Spec : Prop :=
  ∀ n, P15830154025581950377.a n = A214651 (n + 1)

end A214651

/-!
# A214652: a(n) = (a(n-1) + a(n-4))/gcd(a(n-1), a(n-4)) with a(1) = a(2) = a(3) = a(4) = 1.

The programs for A214652, the canonical program `A214652.P6888570160342231901` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214652 has offset 1).

The definition of A214652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214652.P6888570160342231901

`(a(n-1)+a(n-4))/gcd(a(n-1), a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214652

/-- `(a(n-1)+a(n-4))/gcd(a(n-1), a(n-4))` -/
def P6888570160342231901.Spec : Prop :=
  ∀ n, P6888570160342231901.a n = (A214652 (n + 1) : ℚ)

end A214652

/-! ## A214652.P6901099164358622606

`lcm(a(n-4)+a(n-1), a(n-1))/a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A214652.P6901099164358622606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway (a (n - 4) + a (n - 1))) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / a (n - 1)

end

end A214652.P6901099164358622606

namespace A214652

/-- `lcm(a(n-4)+a(n-1), a(n-1))/a(n-1)` -/
def P6901099164358622606.Spec : Prop :=
  ∀ n, P6901099164358622606.a n = (A214652 (n + 1) : ℚ)

end A214652

/-!
# A214653: Where A214551(n) and A214551(n+2) are coprime.

The programs for A214653, there is no canonical definition to state claims against.
-/

/-! ## A214653.P15230553665345844043

`eq[1, A214323(n)]`
-/

namespace A214653.P15230553665345844043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214653.P15230553665345844043

/-! ## A214653.P6344495004505603860

`lt[A214323(A028310(n)), 2]`
-/

namespace A214653.P6344495004505603860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214653.P6344495004505603860

/-! ## A214653.P16746914673558726911

`lt[A214323(n), atan(A214345(n))]`
-/

namespace A214653.P16746914673558726911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A214345 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214653.P16746914673558726911

/-! ## A214653.P9513535181042874214

`lt[A214323(n), atan(A214329(n+1))]`
-/

namespace A214653.P9513535181042874214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A214329 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214653.P9513535181042874214

/-! ## A214653.P13394795183975395903

`lt[A214323(n), atan(A214353(n+1))]`
-/

namespace A214653.P13394795183975395903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A214353 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214653.P13394795183975395903

/-! ## A214653.P14269952997109497791

`lt[A214323(n), atan(A214361(n+3))]`
-/

namespace A214653.P14269952997109497791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A214361 (n + 3) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214653.P14269952997109497791

/-! ## A214653.P15508499202232066484

`record[A004526(2*n)/A214323(n)]`
-/

namespace A214653.P15508499202232066484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * n) : ℚ) / (A214323 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214653.P15508499202232066484

/-! ## A214653.P8550539830741260411

`lt[A214323(n), atan(A214328(2*(n+1)))]`
-/

namespace A214653.P8550539830741260411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A214328 (2 * (n + 1)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214653.P8550539830741260411

/-! ## A214653.P11466997558134991410

`record[A004526(n)/A214323(A004526(n))²]`
-/

namespace A214653.P11466997558134991410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) / (A214323 (A004526 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214653.P11466997558134991410

/-! ## A214653.P16248148631714463075

`lt[A027379(A214323(n)+1), 9]`
-/

namespace A214653.P16248148631714463075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A214323 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214653.P16248148631714463075

/-! ## A214653.P9818572330311094116

`record[n/A001844(A214323(n)-1)]`
-/

namespace A214653.P9818572330311094116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A001844 (A214323 n - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214653.P9818572330311094116

/-! ## A214653.P11868764356611025983

`lt[A214323(n), atan(A214331(n))]`
-/

namespace A214653.P11868764356611025983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A214331 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214653.P11868764356611025983

/-! ## A214653.P1927434431230218396

`eq[A214322(n), A214551(n)]`
-/

namespace A214653.P1927434431230218396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214322 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214653.P1927434431230218396

/-!
# A214654: E.g.f. A(x) satisfies A'(x) = exp( A(x)*A'(x) ), with A(0)=0.

The programs for A214654, there is no canonical definition to state claims against.
-/

/-! ## A214654.P17137337586728941416

`A060683(A099692(n))`
-/

namespace A214654.P17137337586728941416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (A099692 n).toNat

end

end A214654.P17137337586728941416

/-! ## A214654.P15435734308884027306

`A065033(Δ[A196193(n)])`
-/

namespace A214654.P15435734308884027306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A214654.P15435734308884027306

/-!
# A214656: Floor of the imaginary part of the zeros of the complex Fibonacci function on the left half-plane.

The programs for A214656, the canonical program `A214656.P4692968520676611106` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214656 has offset 0).

The definition of A214656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214656.P4692968520676611106

`floor(4*n*π*log(ϕ)/(π²+4*log(ϕ)²))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214656

/-- `floor(4*n*π*log(ϕ)/(π²+4*log(ϕ)²))` -/
def P4692968520676611106.Spec : Prop :=
  ∀ n, P4692968520676611106.a n = A214656 n

theorem P4692968520676611106.correct : P4692968520676611106.Spec := by
  intro n
  simp only [A214656]

end A214656

/-! ## A214656.P8073584785467783910

`A110656(A301291(n))-A373821(2*n+1)`
-/

namespace A214656.P8073584785467783910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A301291 n).toNat - A373821 (2 * n + 1)

end

end A214656.P8073584785467783910

namespace A214656

/-- `A110656(A301291(n))-A373821(2*n+1)` -/
def P8073584785467783910.Spec : Prop :=
  ∀ n, P8073584785467783910.a n = A214656 n

end A214656

/-! ## A214656.P11093123633938468499

`A344420(A353852(n+2)+A184967(3*n+1))`
-/

namespace A214656.P11093123633938468499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A353852 (n + 2) + A184967 (3 * n + 1)).toNat

end

end A214656.P11093123633938468499

namespace A214656

/-- `A344420(A353852(n+2)+A184967(3*n+1))` -/
def P11093123633938468499.Spec : Prop :=
  ∀ n, P11093123633938468499.a n = A214656 n

end A214656

/-! ## A214656.P12407597049669271604

`A132270(A105356(2*n+1)-A132270(n+2))`
-/

namespace A214656.P12407597049669271604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A105356 (2 * n + 1) - A132270 (n + 2)).toNat

end

end A214656.P12407597049669271604

namespace A214656

/-- `A132270(A105356(2*n+1)-A132270(n+2))` -/
def P12407597049669271604.Spec : Prop :=
  ∀ n, P12407597049669271604.a n = A214656 n

end A214656

/-! ## A214656.P18423600263041480047

`n+1-A070939(A013950(n+1))`
-/

namespace A214656.P18423600263041480047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A070939 (A013950 (n + 1)).toNat

end

end A214656.P18423600263041480047

namespace A214656

/-- `n+1-A070939(A013950(n+1))` -/
def P18423600263041480047.Spec : Prop :=
  ∀ n, P18423600263041480047.a n = A214656 n

end A214656

/-!
# A214657: Floor of the moduli of the zeros of the complex Fibonacci function.

The programs for A214657, the canonical program `A214657.P9150660535858231786` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214657 has offset 0).

The definition of A214657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214657.P9150660535858231786

`floor(2*n*π/sqrt(π²+(2*log(ϕ))²))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214657

/-- `floor(2*n*π/sqrt(π²+(2*log(ϕ))²))` -/
def P9150660535858231786.Spec : Prop :=
  ∀ n, P9150660535858231786.a n = A214657 n

theorem P9150660535858231786.correct : P9150660535858231786.Spec := by
  intro n
  simp only [A214657]

end A214657

/-! ## A214657.P6157801850447519176

`A000194(A214315((2*n+1)*(n-1)+1))`
-/

namespace A214657.P6157801850447519176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A214315 ((2 * n + 1 : ℤ) * ((n : ℤ) - 1) + 1).toNat).toNat

end

end A214657.P6157801850447519176

namespace A214657

/-- `A000194(A214315((2*n+1)*(n-1)+1))` -/
def P6157801850447519176.Spec : Prop :=
  ∀ n, P6157801850447519176.a n = A214657 n

end A214657

/-! ## A214657.P7735985044015338595

`comp[A054965(n+1)]^A062513(2*n+5)`
-/

namespace A214657.P7735985044015338595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054965 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A062513 (2 * n + 5) : ℤ)

end

end A214657.P7735985044015338595

namespace A214657

/-- `comp[A054965(n+1)]^A062513(2*n+5)` -/
def P7735985044015338595.Spec : Prop :=
  ∀ n, P7735985044015338595.a n = (A214657 n : ℚ)

end A214657

/-! ## A214657.P11065164059864189096

`comp[A054965(n+1)]%A215799(n+1)`
-/

namespace A214657.P11065164059864189096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054965 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A215799 (n + 1))

end

end A214657.P11065164059864189096

namespace A214657

/-- `comp[A054965(n+1)]%A215799(n+1)` -/
def P11065164059864189096.Spec : Prop :=
  ∀ n, P11065164059864189096.a n = A214657 n

end A214657

/-! ## A214657.P4508873644517934023

`comp[A054965(n+1)]%A006450(A000041(n))`
-/

namespace A214657.P4508873644517934023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054965 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A006450 (A000041 n).toNat)

end

end A214657.P4508873644517934023

namespace A214657

/-- `comp[A054965(n+1)]%A006450(A000041(n))` -/
def P4508873644517934023.Spec : Prop :=
  ∀ n, P4508873644517934023.a n = A214657 n

end A214657

/-!
# A214659: a(n) = n*(7*n^2 - 3*n - 1)/3.

The programs for A214659, the canonical program `A214659.P5674872781060373473` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214659 has offset 0).

The definition of A214659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n²-3*n-1)/3` (program `A214659.P17148097376568982468`, by `A214659.P17148097376568982468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214659.P17148097376568982468

`n*(7*n²-3*n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A214659.P17148097376568982468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((7 * n ^ 2 : ℤ) - (3 * n : ℤ) - 1) : ℚ) / 3

end

end A214659.P17148097376568982468

namespace A214659

/-- `n*(7*n²-3*n-1)/3` -/
def P17148097376568982468.Spec : Prop :=
  ∀ n, P17148097376568982468.a n = (A214659 n : ℚ)

theorem P17148097376568982468.correct : P17148097376568982468.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A214659, Nat.add_sub_cancel, A214659.P17148097376568982468.a, A214659.P5674872781060373473.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A214659, Nat.add_sub_cancel, A214659.P17148097376568982468.a, A214659.P5674872781060373473.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A214659

/-! ## A214659.P5674872781060373473

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=53`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214659

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5674872781060373473.Spec : Prop :=
  ∀ n, P5674872781060373473.a n = A214659 n

theorem P5674872781060373473.correct : P5674872781060373473.Spec := by
  intro n
  simp only [A214659]

end A214659

/-! ## A214659.P2943850477443715555

`∑[∑[a(n-1)+14]]` with `a(0)=0, a(1)=1, a(2)=12`
-/

namespace A214659.P2943850477443715555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 12] fun n f2 =>
  f2 (n - 1) + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214659.P2943850477443715555

namespace A214659

/-- `∑[∑[a(n-1)+14]]` -/
def P2943850477443715555.Spec : Prop :=
  ∀ n, (P2943850477443715555.a n : ℤ) = A214659 n

end A214659

/-! ## A214659.P17856027641191140330

`∑[∑[ogf((x+10x^2+3x^3)/(1-2x+x^2))]]`
-/

namespace A214659.P17856027641191140330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 10, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214659.P17856027641191140330

namespace A214659

/-- `∑[∑[ogf((x+10x^2+3x^3)/(1-2x+x^2))]]` -/
def P17856027641191140330.Spec : Prop :=
  ∀ n, P17856027641191140330.a n = A214659 n

end A214659

/-! ## A214659.P15260234798723302514

`C(2*n+1, 3)+(n-1)*n²`
-/

namespace A214659.P15260234798723302514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 3 : ℤ) + ((n : ℤ) - 1) * (n ^ 2 : ℤ)

end

end A214659.P15260234798723302514

namespace A214659

/-- `C(2*n+1, 3)+(n-1)*n²` -/
def P15260234798723302514.Spec : Prop :=
  ∀ n, P15260234798723302514.a n = A214659 n

end A214659

/-! ## A214659.P6050332583822372143

`abs(C(n, 3)-A006597(n))`
-/

namespace A214659.P6050332583822372143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 3 : ℤ) - A006597 n|

end

end A214659.P6050332583822372143

namespace A214659

/-- `abs(C(n, 3)-A006597(n))` -/
def P6050332583822372143.Spec : Prop :=
  ∀ n, P6050332583822372143.a n = A214659 n

end A214659

/-! ## A214659.P2962897989928281311

`2*n*(A056105(n)+∑[n])/3-n`
-/

namespace A214659.P2962897989928281311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((A056105 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 3) - (n : ℚ)

end

end A214659.P2962897989928281311

namespace A214659

/-- `2*n*(A056105(n)+∑[n])/3-n` -/
def P2962897989928281311.Spec : Prop :=
  ∀ n, P2962897989928281311.a n = (A214659 n : ℚ)

end A214659

/-! ## A214659.P15209221233066017441

`A007588(n)+A007290(n)`
-/

namespace A214659.P15209221233066017441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n + A007290 n

end

end A214659.P15209221233066017441

namespace A214659

/-- `A007588(n)+A007290(n)` -/
def P15209221233066017441.Spec : Prop :=
  ∀ n, P15209221233066017441.a n = A214659 n

end A214659

/-! ## A214659.P878162663747370659

`A045991(n)+A000447(n)`
-/

namespace A214659.P878162663747370659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n + A000447 n

end

end A214659.P878162663747370659

namespace A214659

/-- `A045991(n)+A000447(n)` -/
def P878162663747370659.Spec : Prop :=
  ∀ n, P878162663747370659.a n = A214659 n

end A214659

/-! ## A214659.P12489576031028080934

`A109620(n)+A033562(n)`
-/

namespace A214659.P12489576031028080934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109620 n + A033562 n

end

end A214659.P12489576031028080934

namespace A214659

/-- `A109620(n)+A033562(n)` -/
def P12489576031028080934.Spec : Prop :=
  ∀ n, P12489576031028080934.a n = A214659 n

end A214659

/-! ## A214659.P15545546542030010333

`A152015(n)+A035597(n)`
-/

namespace A214659.P15545546542030010333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 n + A035597 n

end

end A214659.P15545546542030010333

namespace A214659

/-- `A152015(n)+A035597(n)` -/
def P15545546542030010333.Spec : Prop :=
  ∀ n, P15545546542030010333.a n = A214659 n

end A214659

/-! ## A214659.P10003474985447206338

`A161680(n)+A050410(n)`
-/

namespace A214659.P10003474985447206338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A050410 n

end

end A214659.P10003474985447206338

namespace A214659

/-- `A161680(n)+A050410(n)` -/
def P10003474985447206338.Spec : Prop :=
  ∀ n, P10003474985447206338.a n = A214659 n

end A214659

/-! ## A214659.P13036613254199597832

`A153257(n)+A100503(n)`
-/

namespace A214659.P13036613254199597832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153257 n + A100503 n

end

end A214659.P13036613254199597832

namespace A214659

/-- `A153257(n)+A100503(n)` -/
def P13036613254199597832.Spec : Prop :=
  ∀ n, P13036613254199597832.a n = A214659 n

end A214659

/-! ## A214659.P5789613131812424071

`A050409(n)-A022265(n)`
-/

namespace A214659.P5789613131812424071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n - A022265 n

end

end A214659.P5789613131812424071

namespace A214659

/-- `A050409(n)-A022265(n)` -/
def P5789613131812424071.Spec : Prop :=
  ∀ n, P5789613131812424071.a n = A214659 n

end A214659

/-! ## A214659.P13048637413285147549

`A117642(n)-A006331(n)`
-/

namespace A214659.P13048637413285147549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - A006331 n

end

end A214659.P13048637413285147549

namespace A214659

/-- `A117642(n)-A006331(n)` -/
def P13048637413285147549.Spec : Prop :=
  ∀ n, P13048637413285147549.a n = A214659 n

end A214659

/-! ## A214659.P15234058425445666669

`A169607(n)-A081266(n)`
-/

namespace A214659.P15234058425445666669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n - A081266 n

end

end A214659.P15234058425445666669

namespace A214659

/-- `A169607(n)-A081266(n)` -/
def P15234058425445666669.Spec : Prop :=
  ∀ n, P15234058425445666669.a n = A214659 n

end A214659

/-! ## A214659.P9280885944015554997

`A171272(n)-A167875(n)`
-/

namespace A214659.P9280885944015554997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n - A167875 n

end

end A214659.P9280885944015554997

namespace A214659

/-- `A171272(n)-A167875(n)` -/
def P9280885944015554997.Spec : Prop :=
  ∀ n, P9280885944015554997.a n = A214659 n

end A214659

/-! ## A214659.P15971211806805997502

`A259110(n)-A084990(n)`
-/

namespace A214659.P15971211806805997502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n - A084990 n

end

end A214659.P15971211806805997502

namespace A214659

/-- `A259110(n)-A084990(n)` -/
def P15971211806805997502.Spec : Prop :=
  ∀ n, P15971211806805997502.a n = A214659 n

end A214659

/-! ## A214659.P2581218161139475371

`A299646(n)-A220083(n)`
-/

namespace A214659.P2581218161139475371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299646 n - A220083 n

end

end A214659.P2581218161139475371

namespace A214659

/-- `A299646(n)-A220083(n)` -/
def P2581218161139475371.Spec : Prop :=
  ∀ n, P2581218161139475371.a n = A214659 n

end A214659

/-! ## A214659.P11524594379743690436

`A063490(n+1)-A081267(n)`
-/

namespace A214659.P11524594379743690436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063490 (n + 1) - A081267 n

end

end A214659.P11524594379743690436

namespace A214659

/-- `A063490(n+1)-A081267(n)` -/
def P11524594379743690436.Spec : Prop :=
  ∀ n, P11524594379743690436.a n = A214659 n

end A214659

/-!
# A214660: a(n) = 9*n^2 - 11*n + 3.

The programs for A214660, the canonical program `A214660.P6245481159014190823` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214660 has offset 1).

The definition of A214660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)²-11*(n+1)+3` (program `A214660.P6245481159014190823`, by `A214660.P6245481159014190823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214660.P953251377349460771

`(9*(n+1)-11)*(n+1)+3`
-/

namespace A214660.P953251377349460771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((9 * (n + 1) : ℤ) - 11) * (n + 1 : ℤ) + 3

end

end A214660.P953251377349460771

namespace A214660

/-- `(9*(n+1)-11)*(n+1)+3` -/
def P953251377349460771.Spec : Prop :=
  ∀ n, P953251377349460771.a n = A214660 (n + 1)

theorem P953251377349460771.correct : P953251377349460771.Spec := by
  intro n
  simp only [A214660, Nat.add_sub_cancel, A214660.P953251377349460771.a, A214660.P6245481159014190823.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A214660

/-! ## A214660.P6245481159014190823

`9*(n+1)²-11*(n+1)+3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214660

/-- `9*(n+1)²-11*(n+1)+3` -/
def P6245481159014190823.Spec : Prop :=
  ∀ n, P6245481159014190823.a n = A214660 (n + 1)

theorem P6245481159014190823.correct : P6245481159014190823.Spec := by
  intro n
  simp only [A214660, Nat.add_sub_cancel]

end A214660

/-! ## A214660.P16432161793304301822

`∑[a(n-1)+18]` with `a(0)=1, a(1)=16`
-/

namespace A214660.P16432161793304301822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214660.P16432161793304301822

namespace A214660

/-- `∑[a(n-1)+18]` -/
def P16432161793304301822.Spec : Prop :=
  ∀ n, (P16432161793304301822.a n : ℤ) = A214660 (n + 1)

end A214660

/-! ## A214660.P15435807844890068390

`or(1, n*(9*n+7))`
-/

namespace A214660.P15435807844890068390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (9 * n + 7))

end

end A214660.P15435807844890068390

namespace A214660

/-- `or(1, n*(9*n+7))` -/
def P15435807844890068390.Spec : Prop :=
  ∀ n, (P15435807844890068390.a n : ℤ) = A214660 (n + 1)

end A214660

/-! ## A214660.P7918325888959179323

`xor(1, n*(9*n+7))`
-/

namespace A214660.P7918325888959179323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (9 * n + 7))

end

end A214660.P7918325888959179323

namespace A214660

/-- `xor(1, n*(9*n+7))` -/
def P7918325888959179323.Spec : Prop :=
  ∀ n, (P7918325888959179323.a n : ℤ) = A214660 (n + 1)

end A214660

/-! ## A214660.P6833082958744685833

`abs(2*n+1-A001504(n))`
-/

namespace A214660.P6833082958744685833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - A001504 n|

end

end A214660.P6833082958744685833

namespace A214660

/-- `abs(2*n+1-A001504(n))` -/
def P6833082958744685833.Spec : Prop :=
  ∀ n, P6833082958744685833.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P8906000774114930124

`A385897(n)%A273366(n)`
-/

namespace A214660.P8906000774114930124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385897 n) (A273366 n)

end

end A214660.P8906000774114930124

namespace A214660

/-- `A385897(n)%A273366(n)` -/
def P8906000774114930124.Spec : Prop :=
  ∀ n, P8906000774114930124.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P15223360763366653659

`A080341(3*n+1)`
-/

namespace A214660.P15223360763366653659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080341 (3 * n + 1)

end

end A214660.P15223360763366653659

namespace A214660

/-- `A080341(3*n+1)` -/
def P15223360763366653659.Spec : Prop :=
  ∀ n, P15223360763366653659.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P14487353484693044890

`ceil(A028387(3*n)-(sin(1)+2*n))`
-/

namespace A214660.P14487353484693044890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028387 (3 * n) : ℝ) - (Real.sin (1 : ℝ) + (2 * n : ℝ))⌉

end

end A214660.P14487353484693044890

namespace A214660

/-- `ceil(A028387(3*n)-(sin(1)+2*n))` -/
def P14487353484693044890.Spec : Prop :=
  ∀ n, P14487353484693044890.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P1429589864414799949

`A248121(A016777(n))/2`
-/

namespace A214660.P1429589864414799949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248121 (A016777 n).toNat : ℚ) / 2

end

end A214660.P1429589864414799949

namespace A214660

/-- `A248121(A016777(n))/2` -/
def P1429589864414799949.Spec : Prop :=
  ∀ n, P1429589864414799949.a n = (A214660 (n + 1) : ℚ)

end A214660

/-! ## A214660.P8568049769019392371

`A389316(3*n+1)`
-/

namespace A214660.P8568049769019392371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389316 (3 * n + 1)

end

end A214660.P8568049769019392371

namespace A214660

/-- `A389316(3*n+1)` -/
def P8568049769019392371.Spec : Prop :=
  ∀ n, P8568049769019392371.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P8396034469335660380

`∑[record[A076536(2*n+1)]]`
-/

namespace A214660.P8396034469335660380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214660.P8396034469335660380

namespace A214660

/-- `∑[record[A076536(2*n+1)]]` -/
def P8396034469335660380.Spec : Prop :=
  ∀ n, P8396034469335660380.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P3884408880018673126

`∑[record[A006370(3*n+2)]]`
-/

namespace A214660.P3884408880018673126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214660.P3884408880018673126

namespace A214660

/-- `∑[record[A006370(3*n+2)]]` -/
def P3884408880018673126.Spec : Prop :=
  ∀ n, P3884408880018673126.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P12916562746569548763

`A212986(A016921(n))`
-/

namespace A214660.P12916562746569548763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212986 (A016921 n).toNat

end

end A214660.P12916562746569548763

namespace A214660

/-- `A212986(A016921(n))` -/
def P12916562746569548763.Spec : Prop :=
  ∀ n, P12916562746569548763.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P9738408253430615847

`∑[A016777(record[A160413(n+1)]-2)]`
-/

namespace A214660.P9738408253430615847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214660.P9738408253430615847

namespace A214660

/-- `∑[A016777(record[A160413(n+1)]-2)]` -/
def P9738408253430615847.Spec : Prop :=
  ∀ n, P9738408253430615847.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P11776714267939545668

`A108579(A016969(n))`
-/

namespace A214660.P11776714267939545668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (A016969 n).toNat

end

end A214660.P11776714267939545668

namespace A214660

/-- `A108579(A016969(n))` -/
def P11776714267939545668.Spec : Prop :=
  ∀ n, P11776714267939545668.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P12237442691121818801

`A108579(A101328(n+3))`
-/

namespace A214660.P12237442691121818801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (A101328 (n + 3)).toNat

end

end A214660.P12237442691121818801

namespace A214660

/-- `A108579(A101328(n+3))` -/
def P12237442691121818801.Spec : Prop :=
  ∀ n, P12237442691121818801.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P10728109317150409455

`A108579(A008587(n+1)+n)`
-/

namespace A214660.P10728109317150409455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (A008587 (n + 1) + (n : ℤ)).toNat

end

end A214660.P10728109317150409455

namespace A214660

/-- `A108579(A008587(n+1)+n)` -/
def P10728109317150409455.Spec : Prop :=
  ∀ n, P10728109317150409455.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P9656772179950151111

`∑[A092535(9*n)]`
-/

namespace A214660.P9656772179950151111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214660.P9656772179950151111

namespace A214660

/-- `∑[A092535(9*n)]` -/
def P9656772179950151111.Spec : Prop :=
  ∀ n, P9656772179950151111.a n = A214660 (n + 1)

end A214660

/-! ## A214660.P232702623839608777

`A011862(A017209(n))`
-/

namespace A214660.P232702623839608777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 (A017209 n).toNat

end

end A214660.P232702623839608777

namespace A214660

/-- `A011862(A017209(n))` -/
def P232702623839608777.Spec : Prop :=
  ∀ n, P232702623839608777.a n = A214660 (n + 1)

end A214660

/-!
# A214661: Odd numbers obtained by transposing the left half of A176271 into rows of a triangle: T(n,k) = A176271(n - 1 + k, k), 1 <= k <= n.

The programs for A214661, the canonical program `A214661.P2084257495514736411` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214661 has offset 1).

The definition of A214661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214661.P14480754590362750214

`2*A245300(n)+1`
-/

namespace A214661.P14480754590362750214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245300 n + 1

end

end A214661.P14480754590362750214

namespace A214661

/-- `2*A245300(n)+1` -/
def P14480754590362750214.Spec : Prop :=
  ∀ n, P14480754590362750214.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P2084257495514736411

`(A051162(n)+1)²-A025581(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214661

/-- `(A051162(n)+1)²-A025581(n)` -/
def P2084257495514736411.Spec : Prop :=
  ∀ n, P2084257495514736411.a n = A214661 (n + 1)

theorem P2084257495514736411.correct : P2084257495514736411.Spec := by
  intro n
  simp only [A214661, Nat.add_sub_cancel]

end A214661

/-! ## A214661.P9678638796210221192

`A094727(n+1)²-A025581(n)`
-/

namespace A214661.P9678638796210221192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 - A025581 n

end

end A214661.P9678638796210221192

namespace A214661

/-- `A094727(n+1)²-A025581(n)` -/
def P9678638796210221192.Spec : Prop :=
  ∀ n, P9678638796210221192.a n = A214661 (n + 1)

theorem P9678638796210221192.correct : P9678638796210221192.Spec := by
  intro n
  simp only [A214661, Nat.add_sub_cancel, A214661.P9678638796210221192.a, A214661.P2084257495514736411.a, A025581, A025581.P16112744757063613497.a, A051162, A051162.P4484969187050632534.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214661

/-! ## A214661.P4663028323495298963

`A214604(n+1)-2*A025581(n)`
-/

namespace A214661.P4663028323495298963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214604 (n + 1) - 2 * A025581 n

end

end A214661.P4663028323495298963

namespace A214661

/-- `A214604(n+1)-2*A025581(n)` -/
def P4663028323495298963.Spec : Prop :=
  ∀ n, P4663028323495298963.a n = A214661 (n + 1)

theorem P4663028323495298963.correct : P4663028323495298963.Spec := by
  intro n
  simp only [A214661, Nat.add_sub_cancel, A214661.P4663028323495298963.a, A214661.P2084257495514736411.a, A025581, A025581.P16112744757063613497.a, A051162, A051162.P4484969187050632534.a, A214604, A214604.P6900025003978506193.a, A159797, A159797.P12777153155351090962.a, A182491, A182491.P13289934478675392419.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214661

/-! ## A214661.P13753622962622224365

`(1-A108872(n+1))²-A025581(n)`
-/

namespace A214661.P13753622962622224365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A108872 (n + 1)) ^ 2 - A025581 n

end

end A214661.P13753622962622224365

namespace A214661

/-- `(1-A108872(n+1))²-A025581(n)` -/
def P13753622962622224365.Spec : Prop :=
  ∀ n, P13753622962622224365.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P16374524576738166496

`A094727(n+1)²+1-A004736(n+1)`
-/

namespace A214661.P16374524576738166496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 + (1 - A004736 (n + 1))

end

end A214661.P16374524576738166496

namespace A214661

/-- `A094727(n+1)²+1-A004736(n+1)` -/
def P16374524576738166496.Spec : Prop :=
  ∀ n, P16374524576738166496.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P14480742978981458813

`A000265(A245300(n)+A245300(n)+1)`
-/

namespace A214661.P14480742978981458813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A245300 n + (A245300 n + 1)).toNat

end

end A214661.P14480742978981458813

namespace A214661

/-- `A000265(A245300(n)+A245300(n)+1)` -/
def P14480742978981458813.Spec : Prop :=
  ∀ n, P14480742978981458813.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P13673075007995105119

`(A025581(n)-A131507(n))²-A025581(n)`
-/

namespace A214661.P13673075007995105119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n - A131507 n) ^ 2 - A025581 n

end

end A214661.P13673075007995105119

namespace A214661

/-- `(A025581(n)-A131507(n))²-A025581(n)` -/
def P13673075007995105119.Spec : Prop :=
  ∀ n, P13673075007995105119.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P17703149111868891893

`2*(A002262(n)+A000217(A051162(n)))+1`
-/

namespace A214661.P17703149111868891893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002262 n + A000217 (A051162 n).toNat) + 1

end

end A214661.P17703149111868891893

namespace A214661

/-- `2*(A002262(n)+A000217(A051162(n)))+1` -/
def P17703149111868891893.Spec : Prop :=
  ∀ n, P17703149111868891893.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P3751684675529107959

`(A002262(n)+A002024(n+1))²-A025581(n)`
-/

namespace A214661.P3751684675529107959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + A002024 (n + 1)) ^ 2 - A025581 n

end

end A214661.P3751684675529107959

namespace A214661

/-- `(A002262(n)+A002024(n+1))²-A025581(n)` -/
def P3751684675529107959.Spec : Prop :=
  ∀ n, P3751684675529107959.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P17945275412345925151

`A094727(n+1)²+A002262(n)-A003056(n)`
-/

namespace A214661.P17945275412345925151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 + (A002262 n - A003056 n)

end

end A214661.P17945275412345925151

namespace A214661

/-- `A094727(n+1)²+A002262(n)-A003056(n)` -/
def P17945275412345925151.Spec : Prop :=
  ∀ n, P17945275412345925151.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P13748076017228347457

`(A158405(n+1)+A025581(n))²-A025581(n)`
-/

namespace A214661.P13748076017228347457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158405 (n + 1) + A025581 n) ^ 2 - A025581 n

end

end A214661.P13748076017228347457

namespace A214661

/-- `(A158405(n+1)+A025581(n))²-A025581(n)` -/
def P13748076017228347457.Spec : Prop :=
  ∀ n, P13748076017228347457.a n = A214661 (n + 1)

theorem P13748076017228347457.correct : P13748076017228347457.Spec := by
  intro n
  simp only [A214661, Nat.add_sub_cancel, A214661.P13748076017228347457.a, A214661.P2084257495514736411.a, A025581, A025581.P16112744757063613497.a, A051162, A051162.P4484969187050632534.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214661

/-! ## A214661.P16563691978917107739

`(A141419(n+1)-A087401(n))²-A025581(n)`
-/

namespace A214661.P16563691978917107739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141419 (n + 1) - A087401 n) ^ 2 - A025581 n

end

end A214661.P16563691978917107739

namespace A214661

/-- `(A141419(n+1)-A087401(n))²-A025581(n)` -/
def P16563691978917107739.Spec : Prop :=
  ∀ n, P16563691978917107739.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P342567285136628060

`A094727(n+1)+A094727(n+1)²-A131507(n)`
-/

namespace A214661.P342567285136628060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + (A094727 (n + 1) ^ 2 - A131507 n)

end

end A214661.P342567285136628060

namespace A214661

/-- `A094727(n+1)+A094727(n+1)²-A131507(n)` -/
def P342567285136628060.Spec : Prop :=
  ∀ n, P342567285136628060.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P2525004052087635985

`(A002262(n)+A002024(n+1))²+1-A004736(n+1)`
-/

namespace A214661.P2525004052087635985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + A002024 (n + 1)) ^ 2 + 1 - A004736 (n + 1)

end

end A214661.P2525004052087635985

namespace A214661

/-- `(A002262(n)+A002024(n+1))²+1-A004736(n+1)` -/
def P2525004052087635985.Spec : Prop :=
  ∀ n, P2525004052087635985.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P14649931102720647292

`A002260(n+1)+A094727(n+1)²-A002024(n+1)`
-/

namespace A214661.P14649931102720647292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A094727 (n + 1) ^ 2 - A002024 (n + 1))

end

end A214661.P14649931102720647292

namespace A214661

/-- `A002260(n+1)+A094727(n+1)²-A002024(n+1)` -/
def P14649931102720647292.Spec : Prop :=
  ∀ n, P14649931102720647292.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P14646574647992562718

`A094727(n+1)²+A158405(n+1)-A094727(n+1)`
-/

namespace A214661.P14646574647992562718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ 2 + (A158405 (n + 1) - A094727 (n + 1))

end

end A214661.P14646574647992562718

namespace A214661

/-- `A094727(n+1)²+A158405(n+1)-A094727(n+1)` -/
def P14646574647992562718.Spec : Prop :=
  ∀ n, P14646574647992562718.a n = A214661 (n + 1)

theorem P14646574647992562718.correct : P14646574647992562718.Spec := by
  intro n
  simp only [A214661, Nat.add_sub_cancel, A214661.P14646574647992562718.a, A214661.P2084257495514736411.a, A025581, A025581.P16112744757063613497.a, A051162, A051162.P4484969187050632534.a, A094727, A094727.P1041695477673985807.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214661

/-! ## A214661.P15564477682796036772

`A005408(A245300(n))`
-/

namespace A214661.P15564477682796036772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A245300 n).toNat

end

end A214661.P15564477682796036772

namespace A214661

/-- `A005408(A245300(n))` -/
def P15564477682796036772.Spec : Prop :=
  ∀ n, P15564477682796036772.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P17974429614618747128

`A004277(A245300(n)+1)-1`
-/

namespace A214661.P17974429614618747128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A245300 n + 1).toNat - 1

end

end A214661.P17974429614618747128

namespace A214661

/-- `A004277(A245300(n)+1)-1` -/
def P17974429614618747128.Spec : Prop :=
  ∀ n, P17974429614618747128.a n = A214661 (n + 1)

end A214661

/-! ## A214661.P4492814417358027469

`A004275(A245300(n)+2)-1`
-/

namespace A214661.P4492814417358027469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A245300 n + 2).toNat - 1

end

end A214661.P4492814417358027469

namespace A214661

/-- `A004275(A245300(n)+2)-1` -/
def P4492814417358027469.Spec : Prop :=
  ∀ n, P4492814417358027469.a n = A214661 (n + 1)

end A214661

/-!
# A214662: Greatest prime divisor of 1 + 2^2 + 3^3 + ... + n^n.

The programs for A214662, the canonical program `A214662.P6787687657922781023` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214662 has offset 2).

The definition of A214662 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214662.P6787687657922781023

`A006530(A001923(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A214662

/-- `A006530(A001923(n+2))` -/
def P6787687657922781023.Spec : Prop :=
  ∀ n, P6787687657922781023.a n = A214662 (n + 2)

theorem P6787687657922781023.correct : P6787687657922781023.Spec := by
  intro n
  simp only [A214662, Nat.add_sub_cancel]

end A214662

/-! ## A214662.P17592841256684300931

`A034699(∏{p}[A001923(n+2), #])`
-/

namespace A214662.P17592841256684300931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A214662.P17592841256684300931

namespace A214662

/-- `A034699(∏{p}[A001923(n+2), #])` -/
def P17592841256684300931.Spec : Prop :=
  ∀ n, P17592841256684300931.a n = A214662 (n + 2)

end A214662

/-!
# A214663: Number of permutations of 1..n for which the partial sums of signed displacements do not exceed 2.

The programs for A214663, the canonical program `A214663.P15655296005708916293` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214663 has offset 0).

The definition of A214663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214663.P9787902479533284713

`ogf(-1/(-1+x+x^2+3x^3+x^4))`
-/

namespace A214663.P9787902479533284713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -1, -3, -1] n

end

end A214663.P9787902479533284713

namespace A214663

/-- `ogf(-1/(-1+x+x^2+3x^3+x^4))` -/
def P9787902479533284713.Spec : Prop :=
  ∀ n, P9787902479533284713.a n = A214663 n

end A214663

/-! ## A214663.P15655296005708916293

`A232164(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214663

/-- `A232164(n+1)` -/
def P15655296005708916293.Spec : Prop :=
  ∀ n, P15655296005708916293.a n = A214663 n

theorem P15655296005708916293.correct : P15655296005708916293.Spec := by
  intro n
  simp only [A214663]

end A214663

/-! ## A214663.P7205390984966286071

`∑[abs(Δ[A232164(n)])]`
-/

namespace A214663.P7205390984966286071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214663.P7205390984966286071

namespace A214663

/-- `∑[abs(Δ[A232164(n)])]` -/
def P7205390984966286071.Spec : Prop :=
  ∀ n, P7205390984966286071.a n = A214663 n

end A214663

/-! ## A214663.P983240282235728016

`or(char[1], A232164(Δ[n²]-n))`
-/

namespace A214663.P983240282235728016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A232164 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

end

end A214663.P983240282235728016

namespace A214663

/-- `or(char[1], A232164(Δ[n²]-n))` -/
def P983240282235728016.Spec : Prop :=
  ∀ n, P983240282235728016.a n = A214663 n

end A214663

/-! ## A214663.P2774370705875716120

`A232165(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214663.P2774370705875716120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A232165 (n + 1) - a (n - 1)

end

end A214663.P2774370705875716120

namespace A214663

/-- `A232165(n+1)-a(n-1)` -/
def P2774370705875716120.Spec : Prop :=
  ∀ n, P2774370705875716120.a n = A214663 n

end A214663

/-! ## A214663.P17223171665631815320

`A232165(n)-(A232164(n)-Δ[A232165(n)])`
-/

namespace A214663.P17223171665631815320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 n - (A232164 n - (f1 (n + 1) - f1 n))

end

end A214663.P17223171665631815320

namespace A214663

/-- `A232165(n)-(A232164(n)-Δ[A232165(n)])` -/
def P17223171665631815320.Spec : Prop :=
  ∀ n, P17223171665631815320.a n = A214663 n

end A214663

/-! ## A214663.P12903824650784992681

`A232165(n+1)+A232165(n)-A232162(n+1)`
-/

namespace A214663.P12903824650784992681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 (n + 1) + (A232165 n - A232162 (n + 1))

end

end A214663.P12903824650784992681

namespace A214663

/-- `A232165(n+1)+A232165(n)-A232162(n+1)` -/
def P12903824650784992681.Spec : Prop :=
  ∀ n, P12903824650784992681.a n = A214663 n

end A214663

/-! ## A214663.P9896529161695587486

`Δ[∑[A232164(n)]*A057427(n)]`
-/

namespace A214663.P9896529161695587486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214663.P9896529161695587486

namespace A214663

/-- `Δ[∑[A232164(n)]*A057427(n)]` -/
def P9896529161695587486.Spec : Prop :=
  ∀ n, P9896529161695587486.a n = A214663 n

end A214663

/-! ## A214663.P5801490129567345508

`A232162(n+2)-A232165(n+1)`
-/

namespace A214663.P5801490129567345508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232162 (n + 2) - A232165 (n + 1)

end

end A214663.P5801490129567345508

namespace A214663

/-- `A232162(n+2)-A232165(n+1)` -/
def P5801490129567345508.Spec : Prop :=
  ∀ n, P5801490129567345508.a n = A214663 n

end A214663

/-! ## A214663.P1777972977788153674

`∑[Δ[A232164(n)]%A099754(n)]`
-/

namespace A214663.P1777972977788153674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A099754 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214663.P1777972977788153674

namespace A214663

/-- `∑[Δ[A232164(n)]%A099754(n)]` -/
def P1777972977788153674.Spec : Prop :=
  ∀ n, P1777972977788153674.a n = A214663 n

end A214663

/-!
# A214664: The x-coordinates of prime numbers in an Ulam spiral oriented counterclockwise with first step east.

The programs for A214664, there is no canonical definition to state claims against.
-/

/-! ## A214664.P2593110203300444403

`-A214666(n+1)`
-/

namespace A214664.P2593110203300444403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A214666 (n + 1)

end

end A214664.P2593110203300444403

/-! ## A214664.P5471697434599729623

`A214665(n+1)+A214667(n+1)-A214666(n+1)`
-/

namespace A214664.P5471697434599729623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214665 (n + 1) + (A214667 (n + 1) - A214666 (n + 1))

end

end A214664.P5471697434599729623

/-! ## A214664.P5451540036453032448

`A296030(A076274(n+2))`
-/

namespace A214664.P5451540036453032448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A076274 (n + 2)).toNat

end

end A214664.P5451540036453032448

/-! ## A214664.P12737583245028608208

`A296030(A100484(n+1)-1)`
-/

namespace A214664.P12737583245028608208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A100484 (n + 1) - 1).toNat

end

end A214664.P12737583245028608208

/-! ## A214664.P13074645066396650534

`A296030(A001747(n+2)-1)`
-/

namespace A214664.P13074645066396650534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A001747 (n + 2) - 1).toNat

end

end A214664.P13074645066396650534

/-! ## A214664.P13712891400202570095

`A296030(2*A000040(n+1)-1)`
-/

namespace A214664.P13712891400202570095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A000040 (n + 1) - 1).toNat

end

end A214664.P13712891400202570095

/-! ## A214664.P5974084711276876

`A296030(A000040(n+1)+A000040(n+1)-1)`
-/

namespace A214664.P5974084711276876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat

end

end A214664.P5974084711276876

/-! ## A214664.P16226343196673943302

`A174344(A000040(n+1))`
-/

namespace A214664.P16226343196673943302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A000040 (n + 1)).toNat

end

end A214664.P16226343196673943302

/-! ## A214664.P14286679657132846419

`A174344(A008578(n+2))`
-/

namespace A214664.P14286679657132846419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A008578 (n + 2)).toNat

end

end A214664.P14286679657132846419

/-! ## A214664.P11920882810248977751

`A174344(A182986(n+2))`
-/

namespace A214664.P11920882810248977751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A182986 (n + 2)).toNat

end

end A214664.P11920882810248977751

/-! ## A214664.P14815565003515677810

`A174344(record[A006530(n+2)])`
-/

namespace A214664.P14815565003515677810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214664.P14815565003515677810

/-! ## A214664.P6509378336826993301

`A174344(record[A014963(n+2)])`
-/

namespace A214664.P6509378336826993301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214664.P6509378336826993301

/-! ## A214664.P17337408247289634069

`A174344(record[A020639(n+2)])`
-/

namespace A214664.P17337408247289634069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214664.P17337408247289634069

/-! ## A214664.P16328080346772432659

`A174344(A006093(n+1)+1)`
-/

namespace A214664.P16328080346772432659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A006093 (n + 1) + 1).toNat

end

end A214664.P16328080346772432659

/-! ## A214664.P10865789099929102854

`A174344(A040976(n+1)+2)`
-/

namespace A214664.P10865789099929102854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A040976 (n + 1) + 2).toNat

end

end A214664.P10865789099929102854

/-! ## A214664.P1274668786482549941

`A174344(eq[0, A107393(n)+1])`
-/

namespace A214664.P1274668786482549941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214664.P1274668786482549941

/-! ## A214664.P5942881108952738546

`A174344(eq[2, 1-A107393(n)])`
-/

namespace A214664.P5942881108952738546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214664.P5942881108952738546

/-! ## A214664.P11292173125727445314

`A174344(p?[record[A007947(n+1)]])`
-/

namespace A214664.P11292173125727445314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214664.P11292173125727445314

/-!
# A214665: The y-coordinates of prime numbers in an Ulam spiral oriented counterclockwise with first step east.

The programs for A214665, there is no canonical definition to state claims against.
-/

/-! ## A214665.P17940229943991646794

`-A214667(n+1)`
-/

namespace A214665.P17940229943991646794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A214667 (n + 1)

end

end A214665.P17940229943991646794

/-! ## A214665.P5591810785855608606

`A057428(n)*A214667(n+1)`
-/

namespace A214665.P5591810785855608606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A214667 (n + 1)

end

end A214665.P5591810785855608606

/-! ## A214665.P10570586992876481945

`A153881(n+1)*A214667(n+1)`
-/

namespace A214665.P10570586992876481945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A214667 (n + 1)

end

end A214665.P10570586992876481945

/-! ## A214665.P1265844485358116891

`C(A107015(n+1), 7)-A214667(n+1)`
-/

namespace A214665.P1265844485358116891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A107015 (n + 1)).toNat 7 : ℤ) - A214667 (n + 1)

end

end A214665.P1265844485358116891

/-! ## A214665.P15229037745403559514

`A010051(A018252(n+1))-A214667(n+1)`
-/

namespace A214665.P15229037745403559514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A018252 (n + 1)).toNat - A214667 (n + 1)

end

end A214665.P15229037745403559514

/-! ## A214665.P3686361197506800040

`A214664(n+1)+A214666(n+1)-A214667(n+1)`
-/

namespace A214665.P3686361197506800040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214664 (n + 1) + (A214666 (n + 1) - A214667 (n + 1))

end

end A214665.P3686361197506800040

/-! ## A214665.P17431208447401878469

`A214667(n+1)/A057428(n+1)`
-/

namespace A214665.P17431208447401878469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214667 (n + 1) : ℚ) / (A057428 (n + 1) : ℚ)

end

end A214665.P17431208447401878469

/-! ## A214665.P11042560963655053977

`A296030(A100484(n+1))`
-/

namespace A214665.P11042560963655053977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A100484 (n + 1)).toNat

end

end A214665.P11042560963655053977

/-! ## A214665.P17357958470001189404

`A296030(A001747(n+2))`
-/

namespace A214665.P17357958470001189404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A001747 (n + 2)).toNat

end

end A214665.P17357958470001189404

/-! ## A214665.P13661936940365837697

`A296030(A077017(n+2))`
-/

namespace A214665.P13661936940365837697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A077017 (n + 2)).toNat

end

end A214665.P13661936940365837697

/-! ## A214665.P14687229054547117769

`A296030(A076274(n+2)+1)`
-/

namespace A214665.P14687229054547117769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A076274 (n + 2) + 1).toNat

end

end A214665.P14687229054547117769

/-! ## A214665.P5766822351740936554

`A296030(2*A000040(n+1))`
-/

namespace A214665.P5766822351740936554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A000040 (n + 1)).toNat

end

end A214665.P5766822351740936554

/-! ## A214665.P15928603004614143098

`A296030(2*A158611(n+3))`
-/

namespace A214665.P15928603004614143098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A158611 (n + 3)).toNat

end

end A214665.P15928603004614143098

/-! ## A214665.P9612861244606992428

`A296030(2*(record[A000010(n+1)]+1))`
-/

namespace A214665.P9612861244606992428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A214665.P9612861244606992428

/-! ## A214665.P8802103349003486326

`A174344(A112045(n+1))`
-/

namespace A214665.P8802103349003486326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A112045 (n + 1)).toNat

end

end A214665.P8802103349003486326

/-! ## A214665.P4785829723141500495

`A174344(A165994(n+1)+1)`
-/

namespace A214665.P4785829723141500495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A165994 (n + 1) + 1).toNat

end

end A214665.P4785829723141500495

/-! ## A214665.P3389099336052107282

`A274923(A000040(n+1))`
-/

namespace A214665.P3389099336052107282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A000040 (n + 1)).toNat

end

end A214665.P3389099336052107282

/-! ## A214665.P2184041523122427293

`A274923(A006005(n+1))`
-/

namespace A214665.P2184041523122427293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A006005 (n + 1)).toNat

end

end A214665.P2184041523122427293

/-! ## A214665.P6165322497281710243

`A274923(A008578(n+2))`
-/

namespace A214665.P6165322497281710243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A008578 (n + 2)).toNat

end

end A214665.P6165322497281710243

/-! ## A214665.P6524343741168147198

`A274923(A075643(n+2))`
-/

namespace A214665.P6524343741168147198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A075643 (n + 2)).toNat

end

end A214665.P6524343741168147198

/-!
# A214666: The x-coordinates of prime numbers in an Ulam spiral oriented counterclockwise with first step west.

The programs for A214666, there is no canonical definition to state claims against.
-/

/-! ## A214666.P124653834926313991

`-A214664(n+1)`
-/

namespace A214666.P124653834926313991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A214664 (n + 1)

end

end A214666.P124653834926313991

/-! ## A214666.P12314394058504258234

`A033999(n)²-(A214664(n+1)+1)`
-/

namespace A214666.P12314394058504258234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 - (A214664 (n + 1) + 1)

end

end A214666.P12314394058504258234

/-! ## A214666.P197399598933150492

`Δ[A214664(n+1)]-A214664(n+2)`
-/

namespace A214666.P197399598933150492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A214664 (n + 2)

end

end A214666.P197399598933150492

/-! ## A214666.P6341728800674012152

`A326075(A001227(n+1))-A214664(n+1)`
-/

namespace A214666.P6341728800674012152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (A001227 (n + 1)).toNat - A214664 (n + 1)

end

end A214666.P6341728800674012152

/-! ## A214666.P10099632577128270674

`A325318(A020639(n+1))-A214664(n+1)`
-/

namespace A214666.P10099632577128270674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325318 (A020639 (n + 1)).toNat - A214664 (n + 1)

end

end A214666.P10099632577128270674

/-! ## A214666.P4175690459443753016

`A325318(A030229(n+1))-A214664(n+1)`
-/

namespace A214666.P4175690459443753016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325318 (A030229 (n + 1)).toNat - A214664 (n + 1)

end

end A214666.P4175690459443753016

/-! ## A214666.P9602303459549943897

`A326072(A030059(n+1))-A214664(n+1)`
-/

namespace A214666.P9602303459549943897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326072 (A030059 (n + 1)).toNat - A214664 (n + 1)

end

end A214666.P9602303459549943897

/-! ## A214666.P6170705808218241454

`A209229(A340631(n+3))-A214664(n+1)`
-/

namespace A214666.P6170705808218241454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A340631 (n + 3)).toNat - A214664 (n + 1)

end

end A214666.P6170705808218241454

/-! ## A214666.P8774461236854988526

`A325318(A124010(n+5))-A214664(n+1)`
-/

namespace A214666.P8774461236854988526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325318 (A124010 (n + 5)).toNat - A214664 (n + 1)

end

end A214666.P8774461236854988526

/-! ## A214666.P1752811144540448714

`A057637(A020639(2*(n+1)))-A214664(n+1)`
-/

namespace A214666.P1752811144540448714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A020639 (2 * (n + 1))).toNat - A214664 (n + 1)

end

end A214666.P1752811144540448714

/-! ## A214666.P16235551780054834821

`A083751(A020639(3*(n+1)))-A214664(n+1)`
-/

namespace A214666.P16235551780054834821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (A020639 (3 * (n + 1))).toNat - A214664 (n + 1)

end

end A214666.P16235551780054834821

/-! ## A214666.P9362894518047838335

`A214665(n+1)+A214667(n+1)-A214664(n+1)`
-/

namespace A214666.P9362894518047838335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214665 (n + 1) + (A214667 (n + 1) - A214664 (n + 1))

end

end A214666.P9362894518047838335

/-! ## A214666.P6469785348804866015

`-A174344(A000040(n+1))`
-/

namespace A214666.P6469785348804866015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174344 (A000040 (n + 1)).toNat

end

end A214666.P6469785348804866015

/-! ## A214666.P5469363562612421254

`-A174344(A008578(n+2))`
-/

namespace A214666.P5469363562612421254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174344 (A008578 (n + 2)).toNat

end

end A214666.P5469363562612421254

/-! ## A214666.P7912832795355855204

`-A174344(A006093(n+1)+1)`
-/

namespace A214666.P7912832795355855204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174344 (A006093 (n + 1) + 1).toNat

end

end A214666.P7912832795355855204

/-!
# A214667: The y-coordinates of prime numbers in an Ulam spiral oriented counterclockwise with first step west.

The programs for A214667, there is no canonical definition to state claims against.
-/

/-! ## A214667.P506083629792049444

`-A214665(n+1)`
-/

namespace A214667.P506083629792049444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A214665 (n + 1)

end

end A214667.P506083629792049444

/-! ## A214667.P11050429541591381573

`A057428(n)*A214665(n+1)`
-/

namespace A214667.P11050429541591381573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A214665 (n + 1)

end

end A214667.P11050429541591381573

/-! ## A214667.P16571885669977295720

`A153881(n+1)*A214665(n+1)`
-/

namespace A214667.P16571885669977295720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A214665 (n + 1)

end

end A214667.P16571885669977295720

/-! ## A214667.P2200483359832419844

`Δ[A214665(n+1)]-A214665(n+2)`
-/

namespace A214667.P2200483359832419844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A214665 (n + 2)

end

end A214667.P2200483359832419844

/-! ## A214667.P762827729101162305

`A032741(∑[(-1)^n])-A214665(n+1)`
-/

namespace A214667.P762827729101162305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A214665 (n + 1)

end

end A214667.P762827729101162305

/-! ## A214667.P12860079841636857626

`A105517(∑[(-1)^n])-A214665(n+1)`
-/

namespace A214667.P12860079841636857626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A214665 (n + 1)

end

end A214667.P12860079841636857626

/-! ## A214667.P17758699146675488021

`A020639(2*(n+1))-2-A214665(n+1)`
-/

namespace A214667.P17758699146675488021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) - 2 - A214665 (n + 1)

end

end A214667.P17758699146675488021

/-! ## A214667.P1831303528906904688

`A007814(A001650(n+1))-A214665(n+1)`
-/

namespace A214667.P1831303528906904688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001650 (n + 1)).toNat - A214665 (n + 1)

end

end A214667.P1831303528906904688

/-! ## A214667.P7459737842013183355

`A007814(A088515(n+1))-A214665(n+1)`
-/

namespace A214667.P7459737842013183355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A088515 (n + 1)).toNat - A214665 (n + 1)

end

end A214667.P7459737842013183355

/-! ## A214667.P14863536382652449912

`A014405(A096635(n+1))-A214665(n+1)`
-/

namespace A214667.P14863536382652449912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (A096635 (n + 1)).toNat - A214665 (n + 1)

end

end A214667.P14863536382652449912

/-! ## A214667.P2348932435435089258

`A010051(A125639(n+1))-A214665(n+1)`
-/

namespace A214667.P2348932435435089258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A125639 (n + 1)).toNat - A214665 (n + 1)

end

end A214667.P2348932435435089258

/-! ## A214667.P4449309086357169040

`A008836(A020639(n+1))*A214665(n+1)`
-/

namespace A214667.P4449309086357169040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A020639 (n + 1)).toNat * A214665 (n + 1)

end

end A214667.P4449309086357169040

/-! ## A214667.P12139494776402952924

`A214664(n+1)+A214666(n+1)-A214665(n+1)`
-/

namespace A214667.P12139494776402952924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214664 (n + 1) + (A214666 (n + 1) - A214665 (n + 1))

end

end A214667.P12139494776402952924

/-! ## A214667.P8725303832318805065

`(A032741(n+1)-A000005(n+1))*A214665(n+1)`
-/

namespace A214667.P8725303832318805065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) - A000005 (n + 1)) * A214665 (n + 1)

end

end A214667.P8725303832318805065

/-! ## A214667.P5707820542495706900

`A214665(n+1)/A057428(n+1)`
-/

namespace A214667.P5707820542495706900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214665 (n + 1) : ℚ) / (A057428 (n + 1) : ℚ)

end

end A214667.P5707820542495706900

/-! ## A214667.P11312469156538981990

`-A296030(A100484(n+1))`
-/

namespace A214667.P11312469156538981990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A296030 (A100484 (n + 1)).toNat

end

end A214667.P11312469156538981990

/-!
# A214668: G.f. A(x) satisfies A(x) = 1 + 9*x*A(x)^(4/3).

The programs for A214668, there is no canonical definition to state claims against.
-/

/-! ## A214668.P17265689570617243734

`A158826(n+1)*A225655(A000244(n))`
-/

namespace A214668.P17265689570617243734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158826 (n + 1) * A225655 (A000244 n).toNat

end

end A214668.P17265689570617243734

/-!
# A214671: Floor of the real parts of the zeros of the complex Lucas function on the right half-plane.

The programs for A214671, the canonical program `A214671.P15119821468886152792` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214671 has offset 0).

The definition of A214671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214671.P15119821468886152792

`floor((2*n+1)*π²/(π²+(2*log(ϕ))²))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214671

/-- `floor((2*n+1)*π²/(π²+(2*log(ϕ))²))` -/
def P15119821468886152792.Spec : Prop :=
  ∀ n, P15119821468886152792.a n = A214671 n

theorem P15119821468886152792.correct : P15119821468886152792.Spec := by
  intro n
  simp only [A214671]

end A214671

/-! ## A214671.P2913683377417994568

`A004526(A214315(2*n+1))`
-/

namespace A214671.P2913683377417994568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A214315 (2 * n + 1)).toNat

end

end A214671.P2913683377417994568

namespace A214671

/-- `A004526(A214315(2*n+1))` -/
def P2913683377417994568.Spec : Prop :=
  ∀ n, P2913683377417994568.a n = A214671 n

end A214671

/-! ## A214671.P2558147205611750320

`A110654(A214315(2*n+1)-1)`
-/

namespace A214671.P2558147205611750320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A214315 (2 * n + 1) - 1).toNat

end

end A214671.P2558147205611750320

namespace A214671

/-- `A110654(A214315(2*n+1)-1)` -/
def P2558147205611750320.Spec : Prop :=
  ∀ n, P2558147205611750320.a n = A214671 n

end A214671

/-! ## A214671.P10289695003790970473

`A002265(2*A214315(2*n+1))`
-/

namespace A214671.P10289695003790970473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A214315 (2 * n + 1)).toNat

end

end A214671.P10289695003790970473

namespace A214671

/-- `A002265(2*A214315(2*n+1))` -/
def P10289695003790970473.Spec : Prop :=
  ∀ n, P10289695003790970473.a n = A214671 n

end A214671

/-! ## A214671.P17701920884253728630

`A022846(2*n+1)-A000196(A279019(n+6))`
-/

namespace A214671.P17701920884253728630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (2 * n + 1) - A000196 (A279019 (n + 6)).toNat

end

end A214671.P17701920884253728630

namespace A214671

/-- `A022846(2*n+1)-A000196(A279019(n+6))` -/
def P17701920884253728630.Spec : Prop :=
  ∀ n, P17701920884253728630.a n = A214671 n

end A214671

/-! ## A214671.P12028219026318598158

`A022846(A002260(A000384(n+1)))-(n+1)`
-/

namespace A214671.P12028219026318598158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A002260 (A000384 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A214671.P12028219026318598158

namespace A214671

/-- `A022846(A002260(A000384(n+1)))-(n+1)` -/
def P12028219026318598158.Spec : Prop :=
  ∀ n, P12028219026318598158.a n = A214671 n

end A214671

/-! ## A214671.P17445919629871957592

`A080604(A000217(2*n+1))-(n+1)`
-/

namespace A214671.P17445919629871957592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080604 (A000217 (2 * n + 1)).toNat - (n + 1 : ℤ)

end

end A214671.P17445919629871957592

namespace A214671

/-- `A080604(A000217(2*n+1))-(n+1)` -/
def P17445919629871957592.Spec : Prop :=
  ∀ n, P17445919629871957592.a n = A214671 n

end A214671

/-! ## A214671.P3869029604553980825

`A003056(A033996(n))-n`
-/

namespace A214671.P3869029604553980825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A033996 n).toNat - (n : ℤ)

end

end A214671.P3869029604553980825

namespace A214671

/-- `A003056(A033996(n))-n` -/
def P3869029604553980825.Spec : Prop :=
  ∀ n, P3869029604553980825.a n = A214671 n

end A214671

/-! ## A214671.P14504081382574785080

`A002024(A016754(n))-(n+1)`
-/

namespace A214671.P14504081382574785080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A016754 n).toNat - (n + 1 : ℤ)

end

end A214671.P14504081382574785080

namespace A214671

/-- `A002024(A016754(n))-(n+1)` -/
def P14504081382574785080.Spec : Prop :=
  ∀ n, P14504081382574785080.a n = A214671 n

end A214671

/-! ## A214671.P15112113596199524502

`A003056(A005563(2*n))-n`
-/

namespace A214671.P15112113596199524502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005563 (2 * n)).toNat - (n : ℤ)

end

end A214671.P15112113596199524502

namespace A214671

/-- `A003056(A005563(2*n))-n` -/
def P15112113596199524502.Spec : Prop :=
  ∀ n, P15112113596199524502.a n = A214671 n

end A214671

/-!
# A214672: Floor of the imaginary parts of the zeros of the complex Lucas function on the left half-plane.

The programs for A214672, the canonical program `A214672.P12402141479467744296` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214672 has offset 0).

The definition of A214672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214672.P12402141479467744296

`floor((2*n+1)*2*π*log(ϕ)/(π²+(2*log(ϕ))²))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214672

/-- `floor((2*n+1)*2*π*log(ϕ)/(π²+(2*log(ϕ))²))` -/
def P12402141479467744296.Spec : Prop :=
  ∀ n, P12402141479467744296.a n = A214672 n

theorem P12402141479467744296.correct : P12402141479467744296.Spec := by
  intro n
  simp only [A214672]

end A214672

/-! ## A214672.P17323204185969689394

`A097508(A260113(n+1))`
-/

namespace A214672.P17323204185969689394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A260113 (n + 1)).toNat

end

end A214672.P17323204185969689394

namespace A214672

/-- `A097508(A260113(n+1))` -/
def P17323204185969689394.Spec : Prop :=
  ∀ n, P17323204185969689394.a n = A214672 n

end A214672

/-! ## A214672.P11853445144410220823

`A002264(A260113(n+1)+A002264(n))`
-/

namespace A214672.P11853445144410220823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A260113 (n + 1) + A002264 n).toNat

end

end A214672.P11853445144410220823

namespace A214672

/-- `A002264(A260113(n+1)+A002264(n))` -/
def P11853445144410220823.Spec : Prop :=
  ∀ n, P11853445144410220823.a n = A214672 n

end A214672

/-! ## A214672.P12647320323920729481

`A092278(A008585(n))%A353083(2*(n+2))`
-/

namespace A214672.P12647320323920729481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092278 (A008585 n).toNat) (A353083 (2 * (n + 2)))

end

end A214672.P12647320323920729481

namespace A214672

/-- `A092278(A008585(n))%A353083(2*(n+2))` -/
def P12647320323920729481.Spec : Prop :=
  ∀ n, P12647320323920729481.a n = A214672 n

end A214672

/-! ## A214672.P4885042864437269563

`round(log(A097600(2*n+1)))`
-/

namespace A214672.P4885042864437269563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A097600 (2 * n + 1) : ℝ))

end

end A214672.P4885042864437269563

namespace A214672

/-- `round(log(A097600(2*n+1)))` -/
def P4885042864437269563.Spec : Prop :=
  ∀ n, P4885042864437269563.a n = A214672 n

end A214672

/-!
# A214673: Floor of the moduli of the zeros of the complex Lucas function.

The programs for A214673, the canonical program `A214673.P4232090179772504905` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214673 has offset 0).

The definition of A214673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214673.P4232090179772504905

`floor((2*n+1)*π/sqrt(π²+(2*log(ϕ))²))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214673

/-- `floor((2*n+1)*π/sqrt(π²+(2*log(ϕ))²))` -/
def P4232090179772504905.Spec : Prop :=
  ∀ n, P4232090179772504905.a n = A214673 n

theorem P4232090179772504905.correct : P4232090179772504905.Spec := by
  intro n
  simp only [A214673]

end A214673

/-! ## A214673.P18238720122082721360

`A004526(A214657(2*n+1))`
-/

namespace A214673.P18238720122082721360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A214657 (2 * n + 1)).toNat

end

end A214673.P18238720122082721360

namespace A214673

/-- `A004526(A214657(2*n+1))` -/
def P18238720122082721360.Spec : Prop :=
  ∀ n, P18238720122082721360.a n = A214673 n

end A214673

/-! ## A214673.P2280022051168884913

`A002265(2*A214657(2*n+1))`
-/

namespace A214673.P2280022051168884913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A214657 (2 * n + 1)).toNat

end

end A214673.P2280022051168884913

namespace A214673

/-- `A002265(2*A214657(2*n+1))` -/
def P2280022051168884913.Spec : Prop :=
  ∀ n, P2280022051168884913.a n = A214673 n

end A214673

/-! ## A214673.P18106767739332798799

`(A137803(n+1)-1)%A077468(n+1)`
-/

namespace A214673.P18106767739332798799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137803 (n + 1) - 1) (A077468 (n + 1))

end

end A214673.P18106767739332798799

namespace A214673

/-- `(A137803(n+1)-1)%A077468(n+1)` -/
def P18106767739332798799.Spec : Prop :=
  ∀ n, P18106767739332798799.a n = A214673 n

end A214673

/-! ## A214673.P505311190630362786

`A137803(n+1)-A001222(A105792(n+1))`
-/

namespace A214673.P505311190630362786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1) - A001222 (A105792 (n + 1)).toNat

end

end A214673.P505311190630362786

namespace A214673

/-- `A137803(n+1)-A001222(A105792(n+1))` -/
def P505311190630362786.Spec : Prop :=
  ∀ n, P505311190630362786.a n = A214673 n

end A214673

/-! ## A214673.P1970091481209641635

`A137803(n+1)-A062157(A062676(n+1))`
-/

namespace A214673.P1970091481209641635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1) - A062157 (A062676 (n + 1)).toNat

end

end A214673.P1970091481209641635

namespace A214673

/-- `A137803(n+1)-A062157(A062676(n+1))` -/
def P1970091481209641635.Spec : Prop :=
  ∀ n, P1970091481209641635.a n = A214673 n

end A214673

/-! ## A214673.P4028147382867056027

`A137803(n+1)+A057428(A205479(n+3))`
-/

namespace A214673.P4028147382867056027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1) + A057428 (A205479 (n + 3)).toNat

end

end A214673.P4028147382867056027

namespace A214673

/-- `A137803(n+1)+A057428(A205479(n+3))` -/
def P4028147382867056027.Spec : Prop :=
  ∀ n, P4028147382867056027.a n = A214673 n

end A214673

/-! ## A214673.P6230288610479153827

`A137803(n+1)-A035263(A244819(n+2))`
-/

namespace A214673.P6230288610479153827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1) - A035263 (A244819 (n + 2)).toNat

end

end A214673.P6230288610479153827

namespace A214673

/-- `A137803(n+1)-A035263(A244819(n+2))` -/
def P6230288610479153827.Spec : Prop :=
  ∀ n, P6230288610479153827.a n = A214673 n

end A214673

/-! ## A214673.P1052316222710724598

`A137803(n+1)-A001222(A107808(n+3))`
-/

namespace A214673.P1052316222710724598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1) - A001222 (A107808 (n + 3)).toNat

end

end A214673.P1052316222710724598

namespace A214673

/-- `A137803(n+1)-A001222(A107808(n+3))` -/
def P1052316222710724598.Spec : Prop :=
  ∀ n, P1052316222710724598.a n = A214673 n

end A214673

/-! ## A214673.P5333173306318690976

`A137803(n+1)+A057428(A305313(n+4))`
-/

namespace A214673.P5333173306318690976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1) + A057428 (A305313 (n + 4)).toNat

end

end A214673.P5333173306318690976

namespace A214673

/-- `A137803(n+1)+A057428(A305313(n+4))` -/
def P5333173306318690976.Spec : Prop :=
  ∀ n, P5333173306318690976.a n = A214673 n

end A214673

/-!
# A214674: Conway's subprime Fibonacci sequence.

The programs for A214674, there is no canonical definition to state claims against.
-/

/-! ## A214674.P10113243327007939250

`A371061(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214674.P10113243327007939250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A371061 (n + 1) - a (n - 1)

end

end A214674.P10113243327007939250

/-!
# A214675: a(n) = 9*n^2 - 13*n + 5.

The programs for A214675, the canonical program `A214675.P4937493855272832754` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214675 has offset 1).

The definition of A214675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)²-13*(n+1)+5` (program `A214675.P4937493855272832754`, by `A214675.P4937493855272832754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214675.P15908762743046997042

`(3*(n+1)-2)²-n`
-/

namespace A214675.P15908762743046997042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) - 2) ^ 2 - (n : ℤ)

end

end A214675.P15908762743046997042

namespace A214675

/-- `(3*(n+1)-2)²-n` -/
def P15908762743046997042.Spec : Prop :=
  ∀ n, P15908762743046997042.a n = A214675 (n + 1)

theorem P15908762743046997042.correct : P15908762743046997042.Spec := by
  intro n
  simp only [A214675, Nat.add_sub_cancel, A214675.P15908762743046997042.a, A214675.P4937493855272832754.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A214675

/-! ## A214675.P4937493855272832754

`9*(n+1)²-13*(n+1)+5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214675

/-- `9*(n+1)²-13*(n+1)+5` -/
def P4937493855272832754.Spec : Prop :=
  ∀ n, P4937493855272832754.a n = A214675 (n + 1)

theorem P4937493855272832754.correct : P4937493855272832754.Spec := by
  intro n
  simp only [A214675, Nat.add_sub_cancel]

end A214675

/-! ## A214675.P17995064379094804244

`∑[a(n-1)+18]` with `a(0)=1, a(1)=14`
-/

namespace A214675.P17995064379094804244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214675.P17995064379094804244

namespace A214675

/-- `∑[a(n-1)+18]` -/
def P17995064379094804244.Spec : Prop :=
  ∀ n, (P17995064379094804244.a n : ℤ) = A214675 (n + 1)

end A214675

/-! ## A214675.P9917880383054030369

`or(1, n*(9*n+5))`
-/

namespace A214675.P9917880383054030369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (9 * n + 5))

end

end A214675.P9917880383054030369

namespace A214675

/-- `or(1, n*(9*n+5))` -/
def P9917880383054030369.Spec : Prop :=
  ∀ n, (P9917880383054030369.a n : ℤ) = A214675 (n + 1)

end A214675

/-! ## A214675.P14712263429468944639

`xor(1, n*(9*n+5))`
-/

namespace A214675.P14712263429468944639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (9 * n + 5))

end

end A214675.P14712263429468944639

namespace A214675

/-- `xor(1, n*(9*n+5))` -/
def P14712263429468944639.Spec : Prop :=
  ∀ n, (P14712263429468944639.a n : ℤ) = A214675 (n + 1)

end A214675

/-! ## A214675.P2157126645553108388

`∑[ogf((1+12x+5x^2)/(1-2x+x^2))]`
-/

namespace A214675.P2157126645553108388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214675.P2157126645553108388

namespace A214675

/-- `∑[ogf((1+12x+5x^2)/(1-2x+x^2))]` -/
def P2157126645553108388.Spec : Prop :=
  ∀ n, P2157126645553108388.a n = A214675 (n + 1)

end A214675

/-! ## A214675.P4856621202538903418

`abs(xor(3*n, -1)²-n)`
-/

namespace A214675.P4856621202538903418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 * n : ℤ) (-1) ^ 2 - (n : ℤ)|

end

end A214675.P4856621202538903418

namespace A214675

/-- `abs(xor(3*n, -1)²-n)` -/
def P4856621202538903418.Spec : Prop :=
  ∀ n, P4856621202538903418.a n = A214675 (n + 1)

end A214675

/-! ## A214675.P1906040336677936219

`abs(n-A016778(n))`
-/

namespace A214675.P1906040336677936219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A016778 n|

end

end A214675.P1906040336677936219

namespace A214675

/-- `abs(n-A016778(n))` -/
def P1906040336677936219.Spec : Prop :=
  ∀ n, P1906040336677936219.a n = A214675 (n + 1)

end A214675

/-! ## A214675.P3433579662085595836

`Δ[n*(A056106(n)-(n+1))]`
-/

namespace A214675.P3433579662085595836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A056106 n - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214675.P3433579662085595836

namespace A214675

/-- `Δ[n*(A056106(n)-(n+1))]` -/
def P3433579662085595836.Spec : Prop :=
  ∀ n, P3433579662085595836.a n = A214675 (n + 1)

theorem P3433579662085595836.correct : P3433579662085595836.Spec := by
  intro n
  simp only [A214675, Nat.add_sub_cancel, A214675.P3433579662085595836.f1, A214675.P3433579662085595836.a, A214675.P4937493855272832754.a, A056106, A056106.P14646240334205012070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214675

/-! ## A214675.P5143752138372598976

`(A272399(n+1)+n+1)/2`
-/

namespace A214675.P5143752138372598976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272399 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A214675.P5143752138372598976

namespace A214675

/-- `(A272399(n+1)+n+1)/2` -/
def P5143752138372598976.Spec : Prop :=
  ∀ n, P5143752138372598976.a n = (A214675 (n + 1) : ℚ)

theorem P5143752138372598976.correct : P5143752138372598976.Spec := by
  intro n
  simp only [A214675, Nat.add_sub_cancel, A214675.P5143752138372598976.a, A214675.P4937493855272832754.a, A272399, A272399.P2318681285467334701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214675

/-! ## A214675.P11213565373167132940

`Δ[(∑[2*n+1]+C(2*n, 2))*(n-1)]`
-/

namespace A214675.P11213565373167132940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose (2 * n) 2 : ℕ) : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214675.P11213565373167132940

namespace A214675

/-- `Δ[(∑[2*n+1]+C(2*n, 2))*(n-1)]` -/
def P11213565373167132940.Spec : Prop :=
  ∀ n, P11213565373167132940.a n = A214675 (n + 1)

end A214675

/-! ## A214675.P3523051064945070064

`Δ[n*A000567(n)]`
-/

namespace A214675.P3523051064945070064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214675.P3523051064945070064

namespace A214675

/-- `Δ[n*A000567(n)]` -/
def P3523051064945070064.Spec : Prop :=
  ∀ n, P3523051064945070064.a n = A214675 (n + 1)

theorem P3523051064945070064.correct : P3523051064945070064.Spec := by
  intro n
  simp only [A214675, Nat.add_sub_cancel, A214675.P3523051064945070064.f1, A214675.P3523051064945070064.a, A214675.P4937493855272832754.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214675

/-! ## A214675.P11683858724702195799

`Δ[n*((2*n)²-A005563(n))]`
-/

namespace A214675.P11683858724702195799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((2 * n) ^ 2 : ℤ) - A005563 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214675.P11683858724702195799

namespace A214675

/-- `Δ[n*((2*n)²-A005563(n))]` -/
def P11683858724702195799.Spec : Prop :=
  ∀ n, P11683858724702195799.a n = A214675 (n + 1)

theorem P11683858724702195799.correct : P11683858724702195799.Spec := by
  intro n
  simp only [A214675, Nat.add_sub_cancel, A214675.P11683858724702195799.f1, A214675.P11683858724702195799.a, A214675.P4937493855272832754.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A214675

/-! ## A214675.P120756459176635516

`∑[A086570(2*n)+2*n]`
-/

namespace A214675.P120756459176635516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214675.P120756459176635516

namespace A214675

/-- `∑[A086570(2*n)+2*n]` -/
def P120756459176635516.Spec : Prop :=
  ∀ n, P120756459176635516.a n = A214675 (n + 1)

end A214675

/-! ## A214675.P12706584837906998587

`A331943(3*n+1)`
-/

namespace A214675.P12706584837906998587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331943 (3 * n + 1)

end

end A214675.P12706584837906998587

namespace A214675

/-- `A331943(3*n+1)` -/
def P12706584837906998587.Spec : Prop :=
  ∀ n, P12706584837906998587.a n = A214675 (n + 1)

end A214675

/-! ## A214675.P6992431510640207313

`abs(A000290(3*n+1)-n)`
-/

namespace A214675.P6992431510640207313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (3 * n + 1) - (n : ℤ)|

end

end A214675.P6992431510640207313

namespace A214675

/-- `abs(A000290(3*n+1)-n)` -/
def P6992431510640207313.Spec : Prop :=
  ∀ n, P6992431510640207313.a n = A214675 (n + 1)

end A214675

/-! ## A214675.P803575250406975374

`A056106(A016777(n))/3`
-/

namespace A214675.P803575250406975374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056106 (A016777 n).toNat : ℚ) / 3

end

end A214675.P803575250406975374

namespace A214675

/-- `A056106(A016777(n))/3` -/
def P803575250406975374.Spec : Prop :=
  ∀ n, P803575250406975374.a n = (A214675 (n + 1) : ℚ)

end A214675

/-! ## A214675.P5051574877596277361

`Δ[A212566(3*n)]`
-/

namespace A214675.P5051574877596277361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212566 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214675.P5051574877596277361

namespace A214675

/-- `Δ[A212566(3*n)]` -/
def P5051574877596277361.Spec : Prop :=
  ∀ n, P5051574877596277361.a n = A214675 (n + 1)

end A214675

/-! ## A214675.P3499343378368677263

`A117573(6*n)`
-/

namespace A214675.P3499343378368677263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117573 (6 * n)

end

end A214675.P3499343378368677263

namespace A214675

/-- `A117573(6*n)` -/
def P3499343378368677263.Spec : Prop :=
  ∀ n, P3499343378368677263.a n = A214675 (n + 1)

end A214675

/-! ## A214675.P6167893536394163148

`A211519(6*n+2)`
-/

namespace A214675.P6167893536394163148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211519 (6 * n + 2)

end

end A214675.P6167893536394163148

namespace A214675

/-- `A211519(6*n+2)` -/
def P6167893536394163148.Spec : Prop :=
  ∀ n, P6167893536394163148.a n = A214675 (n + 1)

end A214675

/-!
# A214676: A(n,k) is n represented in bijective base-k numeration; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A214676, there is no canonical definition to state claims against.
-/

/-! ## A214676.P10981566104597723496

`gcd(A063431(n+1), A112608(A022174(n)))`
-/

namespace A214676.P10981566104597723496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063431 (n + 1)) (A112608 (A022174 n).toNat)

end

end A214676.P10981566104597723496

/-! ## A214676.P13635997077005487345

`A063431(n+1)%A000081(A222594(2*n+3))`
-/

namespace A214676.P13635997077005487345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063431 (n + 1)) (A000081 (A222594 (2 * n + 3)).toNat)

end

end A214676.P13635997077005487345

/-! ## A214676.P8580002939246233354

`A063431(n+1)/gcd(A001735(n), A347647(n))`
-/

namespace A214676.P8580002939246233354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063431 (n + 1) : ℚ) / (Int.gcd (A001735 n) (A347647 n) : ℚ)

end

end A214676.P8580002939246233354

/-! ## A214676.P15403925982857885511

`A001222(A154592(3*n+1))*A060791(A063431(n+1))`
-/

namespace A214676.P15403925982857885511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154592 (3 * n + 1)).toNat * A060791 (A063431 (n + 1)).toNat

end

end A214676.P15403925982857885511

/-!
# A214677: a(n) = n represented in bijective base-7 numeration.

The programs for A214677, the canonical program `A214677.P15757122612619513849` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214677 has offset 1).

The definition of A214677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214677.P15757122612619513849

`A007094(A255805(n+1)-1)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A214677

/-- `A007094(A255805(n+1)-1)+1` -/
def P15757122612619513849.Spec : Prop :=
  ∀ n, P15757122612619513849.a n = A214677 (n + 1)

theorem P15757122612619513849.correct : P15757122612619513849.Spec := by
  intro n
  simp only [A214677, Nat.add_sub_cancel]

end A214677

/-! ## A214677.P9973986417643937636

`A007094(A255805(n+1))`
-/

namespace A214677.P9973986417643937636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A255805 (n + 1)).toNat

end

end A214677.P9973986417643937636

namespace A214677

/-- `A007094(A255805(n+1))` -/
def P9973986417643937636.Spec : Prop :=
  ∀ n, P9973986417643937636.a n = A214677 (n + 1)

end A214677

/-! ## A214677.P3296877648832406810

`∩[A214678(n+1), A007094(n)]`
-/

namespace A214677.P3296877648832406810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214677.P3296877648832406810

namespace A214677

/-- `∩[A214678(n+1), A007094(n)]` -/
def P3296877648832406810.Spec : Prop :=
  ∀ n, (P3296877648832406810.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P11546553948547607862

`∩[A039119(n+1), A007094(n)]`
-/

namespace A214677.P11546553948547607862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214677.P11546553948547607862

namespace A214677

/-- `∩[A039119(n+1), A007094(n)]` -/
def P11546553948547607862.Spec : Prop :=
  ∀ n, (P11546553948547607862.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P6638726695099661102

`∩[A039119(n+1), A214678(n+1)]`
-/

namespace A214677.P6638726695099661102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214677.P6638726695099661102

namespace A214677

/-- `∩[A039119(n+1), A214678(n+1)]` -/
def P6638726695099661102.Spec : Prop :=
  ∀ n, (P6638726695099661102.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P326326854894409321

`∩[A039155(n+1), A214678(n+1)]`
-/

namespace A214677.P326326854894409321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214677.P326326854894409321

namespace A214677

/-- `∩[A039155(n+1), A214678(n+1)]` -/
def P326326854894409321.Spec : Prop :=
  ∀ n, (P326326854894409321.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P17043255084155501590

`∩[A052382(n+1), A007094(n)]`
-/

namespace A214677.P17043255084155501590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214677.P17043255084155501590

namespace A214677

/-- `∩[A052382(n+1), A007094(n)]` -/
def P17043255084155501590.Spec : Prop :=
  ∀ n, (P17043255084155501590.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P2124855686655112029

`∩[A052421(n+1), A214678(n+1)]`
-/

namespace A214677.P2124855686655112029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214677.P2124855686655112029

namespace A214677

/-- `∩[A052421(n+1), A214678(n+1)]` -/
def P2124855686655112029.Spec : Prop :=
  ∀ n, (P2124855686655112029.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P8263267889763191473

`filter[A007094(n), A168046(#)]`
-/

namespace A214677.P8263267889763191473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A214677.P8263267889763191473

namespace A214677

/-- `filter[A007094(n), A168046(#)]` -/
def P8263267889763191473.Spec : Prop :=
  ∀ n, P8263267889763191473.a n = A214677 (n + 1)

end A214677

/-! ## A214677.P15626822265315973065

`eq[n, A222218(A004183(n))]`
-/

namespace A214677.P15626822265315973065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214677.P15626822265315973065

namespace A214677

/-- `eq[n, A222218(A004183(n))]` -/
def P15626822265315973065.Spec : Prop :=
  ∀ n, (P15626822265315973065.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P9760472005561287182

`eq[n, A222217(A004184(n))]`
-/

namespace A214677.P9760472005561287182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214677.P9760472005561287182

namespace A214677

/-- `eq[n, A222217(A004184(n))]` -/
def P9760472005561287182.Spec : Prop :=
  ∀ n, (P9760472005561287182.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P3468557004320277928

`eq[n, A222218(A222217(n))]`
-/

namespace A214677.P3468557004320277928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214677.P3468557004320277928

namespace A214677

/-- `eq[n, A222218(A222217(n))]` -/
def P3468557004320277928.Spec : Prop :=
  ∀ n, (P3468557004320277928.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P3136024421951603311

`eq[n, A222254(A222218(n))]`
-/

namespace A214677.P3136024421951603311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222218 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214677.P3136024421951603311

namespace A214677

/-- `eq[n, A222254(A222218(n))]` -/
def P3136024421951603311.Spec : Prop :=
  ∀ n, (P3136024421951603311.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P8756358499854599438

`eq[n, A222217(A222254(n))]`
-/

namespace A214677.P8756358499854599438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214677.P8756358499854599438

namespace A214677

/-- `eq[n, A222217(A222254(n))]` -/
def P8756358499854599438.Spec : Prop :=
  ∀ n, (P8756358499854599438.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P16674201329782274066

`lt[A067898(n), char[A007094(n)]]`
-/

namespace A214677.P16674201329782274066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214677.P16674201329782274066

namespace A214677

/-- `lt[A067898(n), char[A007094(n)]]` -/
def P16674201329782274066.Spec : Prop :=
  ∀ n, (P16674201329782274066.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P5537946860134464310

`eq[n*A102681(n), A055641(n)]`
-/

namespace A214677.P5537946860134464310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214677.P5537946860134464310

namespace A214677

/-- `eq[n*A102681(n), A055641(n)]` -/
def P5537946860134464310.Spec : Prop :=
  ∀ n, (P5537946860134464310.a n : ℤ) = A214677 (n + 1)

end A214677

/-! ## A214677.P5013788481007741021

`A007094(lt[A067898(A007094(n)), 1])`
-/

namespace A214677.P5013788481007741021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A007094 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A214677.P5013788481007741021

namespace A214677

/-- `A007094(lt[A067898(A007094(n)), 1])` -/
def P5013788481007741021.Spec : Prop :=
  ∀ n, P5013788481007741021.a n = A214677 (n + 1)

end A214677

/-! ## A214677.P5230738274543488813

`A222252(eq[n, A222216(A004184(n))])`
-/

namespace A214677.P5230738274543488813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A004184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214677.P5230738274543488813

namespace A214677

/-- `A222252(eq[n, A222216(A004184(n))])` -/
def P5230738274543488813.Spec : Prop :=
  ∀ n, P5230738274543488813.a n = A214677 (n + 1)

end A214677

/-!
# A214678: a(n) = n represented in bijective base-8 numeration.

The programs for A214678, the canonical program `A214678.P6950269482527157551` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214678 has offset 1).

The definition of A214678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214678.P14455795492901387078

`A007095(A255808(n+1))`
-/

namespace A214678.P14455795492901387078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A255808 (n + 1)).toNat

end

end A214678.P14455795492901387078

namespace A214678

/-- `A007095(A255808(n+1))` -/
def P14455795492901387078.Spec : Prop :=
  ∀ n, P14455795492901387078.a n = A214678 (n + 1)

end A214678

/-! ## A214678.P17704286732426314656

`∩[A052382(n+1), A007095(n)]`
-/

namespace A214678.P17704286732426314656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214678.P17704286732426314656

namespace A214678

/-- `∩[A052382(n+1), A007095(n)]` -/
def P17704286732426314656.Spec : Prop :=
  ∀ n, (P17704286732426314656.a n : ℤ) = A214678 (n + 1)

end A214678

/-! ## A214678.P299143996715465350

`A052382(A255808(2*n+1-n))`
-/

namespace A214678.P299143996715465350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A255808 (2 * n + 1 - n)).toNat

end

end A214678.P299143996715465350

namespace A214678

/-- `A052382(A255808(2*n+1-n))` -/
def P299143996715465350.Spec : Prop :=
  ∀ n, P299143996715465350.a n = A214678 (n + 1)

end A214678

/-! ## A214678.P7807868164528650125

`∩[A037479(n+1), A052382(n+1)]`
-/

namespace A214678.P7807868164528650125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214678.P7807868164528650125

namespace A214678

/-- `∩[A037479(n+1), A052382(n+1)]` -/
def P7807868164528650125.Spec : Prop :=
  ∀ n, (P7807868164528650125.a n : ℤ) = A214678 (n + 1)

end A214678

/-! ## A214678.P6950269482527157551

`A052382(eq[1, A007095(n+1)/A052382(n+1)]+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A214678

/-- `A052382(eq[1, A007095(n+1)/A052382(n+1)]+1)` -/
def P6950269482527157551.Spec : Prop :=
  ∀ n, P6950269482527157551.a n = A214678 (n + 1)

theorem P6950269482527157551.correct : P6950269482527157551.Spec := by
  intro n
  simp only [A214678, Nat.add_sub_cancel]

end A214678

/-! ## A214678.P5237686712624053966

`A052382(A255808(n+1)+1)-1`
-/

namespace A214678.P5237686712624053966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A255808 (n + 1) + 1).toNat - 1

end

end A214678.P5237686712624053966

namespace A214678

/-- `A052382(A255808(n+1)+1)-1` -/
def P5237686712624053966.Spec : Prop :=
  ∀ n, P5237686712624053966.a n = A214678 (n + 1)

end A214678

/-! ## A214678.P15995899549123309230

`eq[n, A222218(n)]`
-/

namespace A214678.P15995899549123309230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214678.P15995899549123309230

namespace A214678

/-- `eq[n, A222218(n)]` -/
def P15995899549123309230.Spec : Prop :=
  ∀ n, (P15995899549123309230.a n : ℤ) = A214678 (n + 1)

end A214678

/-! ## A214678.P5193196924227052267

`lt[A054055(A222217(n)), 8]`
-/

namespace A214678.P5193196924227052267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222217 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214678.P5193196924227052267

namespace A214678

/-- `lt[A054055(A222217(n)), 8]` -/
def P5193196924227052267.Spec : Prop :=
  ∀ n, (P5193196924227052267.a n : ℤ) = A214678 (n + 1)

end A214678

/-! ## A214678.P13694778938772226642

`filter[A007095(n), A168046(#)]`
-/

namespace A214678.P13694778938772226642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A214678.P13694778938772226642

namespace A214678

/-- `filter[A007095(n), A168046(#)]` -/
def P13694778938772226642.Spec : Prop :=
  ∀ n, P13694778938772226642.a n = A214678 (n + 1)

end A214678

/-! ## A214678.P1665379447010430914

`A222254(eq[n, A222217(n)])`
-/

namespace A214678.P1665379447010430914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214678.P1665379447010430914

namespace A214678

/-- `A222254(eq[n, A222217(n)])` -/
def P1665379447010430914.Spec : Prop :=
  ∀ n, P1665379447010430914.a n = A214678 (n + 1)

end A214678

/-! ## A214678.P7770159577218132131

`record[A004719(A007095(n+1))]`
-/

namespace A214678.P7770159577218132131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A007095 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214678.P7770159577218132131

namespace A214678

/-- `record[A004719(A007095(n+1))]` -/
def P7770159577218132131.Spec : Prop :=
  ∀ n, P7770159577218132131.a n = A214678 (n + 1)

end A214678

/-! ## A214678.P2695254677661958727

`record[A004184(A052382(n+1))]`
-/

namespace A214678.P2695254677661958727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A052382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214678.P2695254677661958727

namespace A214678

/-- `record[A004184(A052382(n+1))]` -/
def P2695254677661958727.Spec : Prop :=
  ∀ n, P2695254677661958727.a n = A214678 (n + 1)

end A214678

/-! ## A214678.P8957911553296725560

`filter[A037479(n+1), A168046(#)]`
-/

namespace A214678.P8957911553296725560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A214678.P8957911553296725560

namespace A214678

/-- `filter[A037479(n+1), A168046(#)]` -/
def P8957911553296725560.Spec : Prop :=
  ∀ n, P8957911553296725560.a n = A214678 (n + 1)

end A214678

/-! ## A214678.P10967609949858619680

`A222254(record[Δ[A222254(n)]+n])`
-/

namespace A214678.P10967609949858619680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214678.P10967609949858619680

namespace A214678

/-- `A222254(record[Δ[A222254(n)]+n])` -/
def P10967609949858619680.Spec : Prop :=
  ∀ n, P10967609949858619680.a n = A214678 (n + 1)

end A214678

/-! ## A214678.P8991332551732562690

`record[(n+1)%A004086(A004185(n+1)+1)]`
-/

namespace A214678.P8991332551732562690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A004086 (A004185 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214678.P8991332551732562690

namespace A214678

/-- `record[(n+1)%A004086(A004185(n+1)+1)]` -/
def P8991332551732562690.Spec : Prop :=
  ∀ n, P8991332551732562690.a n = A214678 (n + 1)

end A214678

/-!
# A214679: A(n,k) = Fibonacci(n) represented in bijective base-k numeration; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A214679, there is no canonical definition to state claims against.
-/

/-! ## A214679.P9847416406592534988

`gcd(A000122(A000031(n)), A214326(n+1))`
-/

namespace A214679.P9847416406592534988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A000031 n).toNat) (A214326 (n + 1))

end

end A214679.P9847416406592534988

/-! ## A214679.P17133707576609233136

`A214326(n+1)-A004694(A173453(n+1))`
-/

namespace A214679.P17133707576609233136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214326 (n + 1) - A004694 (A173453 (n + 1)).toNat

end

end A214679.P17133707576609233136

/-! ## A214679.P3031159937455489789

`A214326(A256690(n+1)+n)`
-/

namespace A214679.P3031159937455489789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214326 (A256690 (n + 1) + (n : ℤ)).toNat

end

end A214679.P3031159937455489789

/-! ## A214679.P9933284932898470247

`gcd(A024574(A036503(n+1)), A290066(n))`
-/

namespace A214679.P9933284932898470247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024574 (A036503 (n + 1)).toNat) (A290066 n)

end

end A214679.P9933284932898470247

/-! ## A214679.P3986442143310270413

`A214326(n+1)%A000070(A214326(n+5))`
-/

namespace A214679.P3986442143310270413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214326 (n + 1)) (A000070 (A214326 (n + 5)).toNat)

end

end A214679.P3986442143310270413

/-!
# A214680: a(1)=3; a(n) is the smallest prime of the form k*a(n-1) + 2.

The programs for A214680, there is no canonical definition to state claims against.
-/

/-! ## A214680.P11023802748843969729

`A279756(A316524(a(n-1)))` with `a(0)=3`
-/

namespace A214680.P11023802748843969729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A279756 (A316524 (a (n - 1)).toNat).toNat

end

end A214680.P11023802748843969729

/-! ## A214680.P17608715245937180604

`A094747(A261203(n))`
-/

namespace A214680.P17608715245937180604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (A261203 n).toNat

end

end A214680.P17608715245937180604

/-! ## A214680.P9624824166748214509

`A094747(A262968(n))`
-/

namespace A214680.P9624824166748214509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (A262968 n).toNat

end

end A214680.P9624824166748214509

/-!
# A214681: a(n) is obtained from n by removing factors of 2 and 3 that do not contribute to a factor of 6.

The programs for A214681, the canonical program `A214681.P13397189043489326683` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214681 has offset 1).

The definition of A214681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214681.P15945539156126908520

`floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3)*6^val(n+1, 6)`
-/

namespace A214681.P15945539156126908520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) * (6 ^ SequenceMachineLib.valuation (n + 1) 6 : ℚ)

end

end A214681.P15945539156126908520

namespace A214681

/-- `floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3)*6^val(n+1, 6)` -/
def P15945539156126908520.Spec : Prop :=
  ∀ n, P15945539156126908520.a n = (A214681 (n + 1) : ℚ)

end A214681

/-! ## A214681.P4193324240140231590

`gcd(n+1, A064614(n+1))`
-/

namespace A214681.P4193324240140231590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A064614 (n + 1))

end

end A214681.P4193324240140231590

namespace A214681

/-- `gcd(n+1, A064614(n+1))` -/
def P4193324240140231590.Spec : Prop :=
  ∀ n, (P4193324240140231590.a n : ℤ) = A214681 (n + 1)

end A214681

/-! ## A214681.P13397189043489326683

`A065330(n+1)*A234959(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A214681

/-- `A065330(n+1)*A234959(n+1)` -/
def P13397189043489326683.Spec : Prop :=
  ∀ n, P13397189043489326683.a n = A214681 (n + 1)

theorem P13397189043489326683.correct : P13397189043489326683.Spec := by
  intro n
  simp only [A214681, Nat.add_sub_cancel]

end A214681

/-! ## A214681.P16034940107012229174

`lcm(A065330(A000265(n+1)), A234959(n+1))`
-/

namespace A214681.P16034940107012229174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065330 (A000265 (n + 1)).toNat) (A234959 (n + 1))

end

end A214681.P16034940107012229174

namespace A214681

/-- `lcm(A065330(A000265(n+1)), A234959(n+1))` -/
def P16034940107012229174.Spec : Prop :=
  ∀ n, (P16034940107012229174.a n : ℤ) = A214681 (n + 1)

end A214681

/-! ## A214681.P4952482663609391033

`A000265(n+1)*A038502(n+1)/A244414(n+1)`
-/

namespace A214681.P4952482663609391033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) * A038502 (n + 1) : ℚ) / (A244414 (n + 1) : ℚ)

end

end A214681.P4952482663609391033

namespace A214681

/-- `A000265(n+1)*A038502(n+1)/A244414(n+1)` -/
def P4952482663609391033.Spec : Prop :=
  ∀ n, P4952482663609391033.a n = (A214681 (n + 1) : ℚ)

end A214681

/-! ## A214681.P1680738354785939585

`lcm(A065330(A103517(n)), A234959(n+1))`
-/

namespace A214681.P1680738354785939585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065330 (A103517 n).toNat) (A234959 (n + 1))

end

end A214681.P1680738354785939585

namespace A214681

/-- `lcm(A065330(A103517(n)), A234959(n+1))` -/
def P1680738354785939585.Spec : Prop :=
  ∀ n, (P1680738354785939585.a n : ℤ) = A214681 (n + 1)

end A214681

/-! ## A214681.P8554907643095336777

`A072026(gcd(A072026(n+1), A072027(n+1)))`
-/

namespace A214681.P8554907643095336777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072026 (Int.gcd (A072026 (n + 1)) (A072027 (n + 1)))

end

end A214681.P8554907643095336777

namespace A214681

/-- `A072026(gcd(A072026(n+1), A072027(n+1)))` -/
def P8554907643095336777.Spec : Prop :=
  ∀ n, P8554907643095336777.a n = A214681 (n + 1)

end A214681

/-! ## A214681.P17614409533110572111

`lcm(A065330(n+1), A234959(A061898(n+1)))`
-/

namespace A214681.P17614409533110572111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065330 (n + 1)) (A234959 (A061898 (n + 1)).toNat)

end

end A214681.P17614409533110572111

namespace A214681

/-- `lcm(A065330(n+1), A234959(A061898(n+1)))` -/
def P17614409533110572111.Spec : Prop :=
  ∀ n, (P17614409533110572111.a n : ℤ) = A214681 (n + 1)

end A214681

/-!
# A214682: Remove 2's that do not contribute to a factor of 4 from the prime factorization of n.

The programs for A214682, the canonical program `A214682.P13810190927759854394` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214682 has offset 1).

The definition of A214682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214682.P13810190927759854394

`(n+1)/A056832(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A214682

/-- `(n+1)/A056832(n+1)` -/
def P13810190927759854394.Spec : Prop :=
  ∀ n, P13810190927759854394.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P8167480233438224632

`gcd(n+1, val(n+1, 2)*∑[n])`
-/

namespace A214682.P8167480233438224632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 1) 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A214682.P8167480233438224632

namespace A214682

/-- `gcd(n+1, val(n+1, 2)*∑[n])` -/
def P8167480233438224632.Spec : Prop :=
  ∀ n, (P8167480233438224632.a n : ℤ) = A214682 (n + 1)

end A214682

/-! ## A214682.P12109024849479819775

`(n+1)/(val(n+1, 2)%2+1)`
-/

namespace A214682.P12109024849479819775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1 : ℕ) : ℚ)

end

end A214682.P12109024849479819775

namespace A214682

/-- `(n+1)/(val(n+1, 2)%2+1)` -/
def P12109024849479819775.Spec : Prop :=
  ∀ n, P12109024849479819775.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P4733403296709477931

`(n+1)/and(n+1, -(n+1))%3`
-/

namespace A214682.P4733403296709477931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.tmod (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 3 : ℚ)

end

end A214682.P4733403296709477931

namespace A214682

/-- `(n+1)/and(n+1, -(n+1))%3` -/
def P4733403296709477931.Spec : Prop :=
  ∀ n, P4733403296709477931.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P16213970931769429555

`(n+1)/Δ[A197911(n)]`
-/

namespace A214682.P16213970931769429555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A214682.P16213970931769429555

namespace A214682

/-- `(n+1)/Δ[A197911(n)]` -/
def P16213970931769429555.Spec : Prop :=
  ∀ n, P16213970931769429555.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P13961041545501764828

`(n+1)/(A096268(n)+1)`
-/

namespace A214682.P13961041545501764828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A096268 n + 1 : ℚ)

end

end A214682.P13961041545501764828

namespace A214682

/-- `(n+1)/(A096268(n)+1)` -/
def P13961041545501764828.Spec : Prop :=
  ∀ n, P13961041545501764828.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P7349418288002410452

`gcd(n+1, A073675(n+1))`
-/

namespace A214682.P7349418288002410452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A073675 (n + 1))

end

end A214682.P7349418288002410452

namespace A214682

/-- `gcd(n+1, A073675(n+1))` -/
def P7349418288002410452.Spec : Prop :=
  ∀ n, (P7349418288002410452.a n : ℤ) = A214682 (n + 1)

end A214682

/-! ## A214682.P8301236900153898070

`(n+1)/(2-A035263(n+1))`
-/

namespace A214682.P8301236900153898070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 - A035263 (n + 1) : ℚ)

end

end A214682.P8301236900153898070

namespace A214682

/-- `(n+1)/(2-A035263(n+1))` -/
def P8301236900153898070.Spec : Prop :=
  ∀ n, P8301236900153898070.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P16423951912959142088

`(n+1)/A191254(2*(n+1))`
-/

namespace A214682.P16423951912959142088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A191254 (2 * (n + 1)) : ℚ)

end

end A214682.P16423951912959142088

namespace A214682

/-- `(n+1)/A191254(2*(n+1))` -/
def P16423951912959142088.Spec : Prop :=
  ∀ n, P16423951912959142088.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P17296161859677092575

`floor(n/A059159(n+1)%3)+1`
-/

namespace A214682.P17296161859677092575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.tmod (A059159 (n + 1)) 3 : ℚ)⌋ + 1

end

end A214682.P17296161859677092575

namespace A214682

/-- `floor(n/A059159(n+1)%3)+1` -/
def P17296161859677092575.Spec : Prop :=
  ∀ n, P17296161859677092575.a n = A214682 (n + 1)

end A214682

/-! ## A214682.P8551773818155590925

`(n+1)*gcd(2, A007814(n+1))/2`
-/

namespace A214682.P8551773818155590925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Int.gcd 2 (A007814 (n + 1)) : ℚ) / 2)

end

end A214682.P8551773818155590925

namespace A214682

/-- `(n+1)*gcd(2, A007814(n+1))/2` -/
def P8551773818155590925.Spec : Prop :=
  ∀ n, P8551773818155590925.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P4720161901939840032

`(n+1)/gcd(2*n, A007913(n+1))`
-/

namespace A214682.P4720161901939840032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (2 * n : ℤ) (A007913 (n + 1)) : ℚ)

end

end A214682.P4720161901939840032

namespace A214682

/-- `(n+1)/gcd(2*n, A007913(n+1))` -/
def P4720161901939840032.Spec : Prop :=
  ∀ n, P4720161901939840032.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P8522957867843625848

`A300841(A300840(n+1))`
-/

namespace A214682.P8522957867843625848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300841 (A300840 (n + 1)).toNat

end

end A214682.P8522957867843625848

namespace A214682

/-- `A300841(A300840(n+1))` -/
def P8522957867843625848.Spec : Prop :=
  ∀ n, P8522957867843625848.a n = A214682 (n + 1)

end A214682

/-! ## A214682.P2173899035121356553

`(n+1)/A003842(A022290(n))`
-/

namespace A214682.P2173899035121356553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003842 (A022290 n).toNat : ℚ)

end

end A214682.P2173899035121356553

namespace A214682

/-- `(n+1)/A003842(A022290(n))` -/
def P2173899035121356553.Spec : Prop :=
  ∀ n, P2173899035121356553.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P15129337484586136713

`(n+1)/A000034(A085058(n))`
-/

namespace A214682.P15129337484586136713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000034 (A085058 n).toNat : ℚ)

end

end A214682.P15129337484586136713

namespace A214682

/-- `(n+1)/A000034(A085058(n))` -/
def P15129337484586136713.Spec : Prop :=
  ∀ n, P15129337484586136713.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P856727421413622879

`(n+1)/A000034(A087808(n))`
-/

namespace A214682.P856727421413622879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000034 (A087808 n).toNat : ℚ)

end

end A214682.P856727421413622879

namespace A214682

/-- `(n+1)/A000034(A087808(n))` -/
def P856727421413622879.Spec : Prop :=
  ∀ n, P856727421413622879.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P3917183516546703305

`(n+1)/A001285(A135481(n))`
-/

namespace A214682.P3917183516546703305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001285 (A135481 n).toNat : ℚ)

end

end A214682.P3917183516546703305

namespace A214682

/-- `(n+1)/A001285(A135481(n))` -/
def P3917183516546703305.Spec : Prop :=
  ∀ n, P3917183516546703305.a n = (A214682 (n + 1) : ℚ)

end A214682

/-! ## A214682.P10541841195013762248

`gcd(A027620(n), A085037(n+1))`
-/

namespace A214682.P10541841195013762248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027620 n) (A085037 (n + 1))

end

end A214682.P10541841195013762248

namespace A214682

/-- `gcd(A027620(n), A085037(n+1))` -/
def P10541841195013762248.Spec : Prop :=
  ∀ n, (P10541841195013762248.a n : ℤ) = A214682 (n + 1)

end A214682

/-! ## A214682.P3878176300910237227

`gcd(A076115(n+1), A131738(n))`
-/

namespace A214682.P3878176300910237227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076115 (n + 1)) (A131738 n)

end

end A214682.P3878176300910237227

namespace A214682

/-- `gcd(A076115(n+1), A131738(n))` -/
def P3878176300910237227.Spec : Prop :=
  ∀ n, (P3878176300910237227.a n : ℤ) = A214682 (n + 1)

end A214682

/-! ## A214682.P9921865038811108783

`lcm(A008833(n+1), A030640(n))`
-/

namespace A214682.P9921865038811108783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008833 (n + 1)) (A030640 n)

end

end A214682.P9921865038811108783

namespace A214682

/-- `lcm(A008833(n+1), A030640(n))` -/
def P9921865038811108783.Spec : Prop :=
  ∀ n, (P9921865038811108783.a n : ℤ) = A214682 (n + 1)

end A214682

/-!
# A214683: a(n+3) = -a(n+2) + 2a(n+1) + a(n) with a(0)=-1, a(1)=0, a(2)=-3.

The programs for A214683, the canonical program `A214683.P3746953086202527489` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214683 has offset 0).

The definition of A214683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214683.P11403763970216205855

`ogf((1+x+x^2)/(-1-x+2x^2+x^3))`
-/

namespace A214683.P11403763970216205855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -1, -1] [1, 1, -2, -1] n

end

end A214683.P11403763970216205855

namespace A214683

/-- `ogf((1+x+x^2)/(-1-x+2x^2+x^3))` -/
def P11403763970216205855.Spec : Prop :=
  ∀ n, P11403763970216205855.a n = A214683 n

end A214683

/-! ## A214683.P3746953086202527489

`(A028495(n)-A052547(n+2))*A033999(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214683

/-- `(A028495(n)-A052547(n+2))*A033999(n)` -/
def P3746953086202527489.Spec : Prop :=
  ∀ n, P3746953086202527489.a n = A214683 n

theorem P3746953086202527489.correct : P3746953086202527489.Spec := by
  intro n
  simp only [A214683]

end A214683

/-! ## A214683.P12511766442283627741

`(A052547(n+2)-A028495(n))/A033999(n+1)`
-/

namespace A214683.P12511766442283627741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052547 (n + 2) - A028495 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A214683.P12511766442283627741

namespace A214683

/-- `(A052547(n+2)-A028495(n))/A033999(n+1)` -/
def P12511766442283627741.Spec : Prop :=
  ∀ n, P12511766442283627741.a n = (A214683 n : ℚ)

end A214683

/-!
# A214684: a(1)=1, a(2)=1, and, for n>2, a(n)=(a(n-1)+a(n-2))/5^k, where 5^k is the highest power of 5 dividing a(n-1)+a(n-2).

The programs for A214684, the canonical program `A214684.P17730648645661379335` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214684 has offset 1).

The definition of A214684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214684.P17730648645661379335

`A132739(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214684

/-- `A132739(a(n-1)+a(n-2))` -/
def P17730648645661379335.Spec : Prop :=
  ∀ n, P17730648645661379335.a n = A214684 (n + 1)

theorem P17730648645661379335.correct : P17730648645661379335.Spec := by
  intro n
  simp only [A214684, Nat.add_sub_cancel]

end A214684

/-!
# A214686: Numerators of a series with denominators n! and sum 1.

The programs for A214686, there is no canonical definition to state claims against.
-/

/-! ## A214686.P1957025243353418638

`A064989(A007491(n+1)^A331216(n))`
-/

namespace A214686.P1957025243353418638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A007491 (n + 1) : ℚ) ^ (A331216 n : ℤ))).toNat

end

end A214686.P1957025243353418638

/-! ## A214686.P226853922081698674

`A252461(A007491(n+1)^A331216(n))`
-/

namespace A214686.P226853922081698674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 (SequenceMachineLib.roundAway ((A007491 (n + 1) : ℚ) ^ (A331216 n : ℤ))).toNat

end

end A214686.P226853922081698674

/-! ## A214686.P17672536309304783913

`A252462(A007491(n+1)^A331216(n))`
-/

namespace A214686.P17672536309304783913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252462 (SequenceMachineLib.roundAway ((A007491 (n + 1) : ℚ) ^ (A331216 n : ℤ))).toNat

end

end A214686.P17672536309304783913

/-! ## A214686.P18148927603617682987

`A252463(A007491(n+1)^A331216(n))`
-/

namespace A214686.P18148927603617682987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (SequenceMachineLib.roundAway ((A007491 (n + 1) : ℚ) ^ (A331216 n : ℤ))).toNat

end

end A214686.P18148927603617682987

/-! ## A214686.P12741136422947155314

`gcd(A022998(A009006(n)), A178954(n+1))`
-/

namespace A214686.P12741136422947155314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022998 (A009006 n).toNat) (A178954 (n + 1))

end

end A214686.P12741136422947155314

/-!
# A214687: E.g.f.: Sum_{n>=0} exp(2*n*x) * Product_{k=1..n} (exp((2*k-1)*x) - 1).

The programs for A214687, there is no canonical definition to state claims against.
-/

/-! ## A214687.P15598170123476189002

`A240200(A294871(n)+2)`
-/

namespace A214687.P15598170123476189002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240200 (A294871 n + 2).toNat

end

end A214687.P15598170123476189002

/-!
# A214688: E.g.f. equals the series reversion of x - x^2*exp(2*x).

The programs for A214688, there is no canonical definition to state claims against.
-/

/-! ## A214688.P4317996900335312669

`(n+1)*A379690(n)`
-/

namespace A214688.P4317996900335312669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A379690 n

end

end A214688.P4317996900335312669

/-! ## A214688.P6462296003303936307

`2^n*A215003(n+1)`
-/

namespace A214688.P6462296003303936307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A215003 (n + 1)

end

end A214688.P6462296003303936307

/-! ## A214688.P14871959708087739612

`A215003(n+1)*A000079(n)`
-/

namespace A214688.P14871959708087739612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215003 (n + 1) * A000079 n

end

end A214688.P14871959708087739612

/-! ## A214688.P14310671374839370009

`A215003(n+1)*A256217(2*n+1)`
-/

namespace A214688.P14310671374839370009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215003 (n + 1) * A256217 (2 * n + 1)

end

end A214688.P14310671374839370009

/-! ## A214688.P2039956005673309618

`A215003(n+1)*A297112(A000040(n+1))`
-/

namespace A214688.P2039956005673309618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215003 (n + 1) * A297112 (A000040 (n + 1)).toNat

end

end A214688.P2039956005673309618

/-!
# A214689: E.g.f. satisfies: A(x) = exp( 2*x*Catalan(x*A(x)) ), where Catalan(x) = (1-sqrt(1-4*x))/(2*x) is the g.f. of A000108.

The programs for A214689, there is no canonical definition to state claims against.
-/

/-! ## A214689.P13895165892331324422

`A049073(∏[∑[n!]])`
-/

namespace A214689.P13895165892331324422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049073 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A214689.P13895165892331324422

/-!
# A214691: G.f.: A(x) = Sum_{n>=0} x^n * Product_{k=1..n} (2^(2*k-1) - 1) / (1 + 2^(2*k-1)*x).

The programs for A214691, the canonical program `A214691.P12661534723073645429` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214691 has offset 0).

The definition of A214691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214691.P12661534723073645429

`2*(4^(n-1)-1)*a(n-1)-(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214691

/-- `2*(4^(n-1)-1)*a(n-1)-(-1)^n` -/
def P12661534723073645429.Spec : Prop :=
  ∀ n, P12661534723073645429.a n = (A214691 n : ℚ)

end A214691

/-!
# A214692: G.f. A(x) satisfies: x = Sum_{n>=1} 1/A(x)^(4*n) * Product_{k=1..n} (1 - 1/A(x)^(2*k-1)).

The programs for A214692, there is no canonical definition to state claims against.
-/

/-! ## A214692.P7878319840948938685

`A008620(A038885(n!))`
-/

namespace A214692.P7878319840948938685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A038885 (Nat.factorial n)).toNat

end

end A214692.P7878319840948938685

/-! ## A214692.P7233000845742393025

`A289494(A098307(n)+1)`
-/

namespace A214692.P7233000845742393025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A098307 n + 1).toNat

end

end A214692.P7233000845742393025

/-!
# A214693: G.f. A(x) satisfies: x = Sum_{n>=1} 1/A(x)^(6*n) * Product_{k=1..n} (1 - 1/A(x)^(2*k-1)).

The programs for A214693, there is no canonical definition to state claims against.
-/

/-! ## A214693.P4851488170799856731

`A054896(8*n^n)`
-/

namespace A214693.P4851488170799856731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (8 * n ^ n)

end

end A214693.P4851488170799856731

/-!
# A214694: G.f. A(x) satisfies: x = Sum_{n>=1} 1/A(x)^(8*n) * Product_{k=1..n} (1 - 1/A(x)^(2*k-1)).

The programs for A214694, there is no canonical definition to state claims against.
-/

/-! ## A214694.P6948165238635981180

`A047449(A201923(n))`
-/

namespace A214694.P6948165238635981180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (A201923 n).toNat

end

end A214694.P6948165238635981180

/-!
# A214695: G.f. A(x) satisfies: x = Sum_{n>=1} 1/A(x)^(10*n) * Product_{k=1..n} (1 - 1/A(x)^(2*k-1)).

The programs for A214695, there is no canonical definition to state claims against.
-/

/-! ## A214695.P5725600679577862386

`A325439(A003235(n))-2`
-/

namespace A214695.P5725600679577862386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325439 (A003235 n).toNat - 2

end

end A214695.P5725600679577862386

/-!
# A214696: Sum of next a(n) > 1 positive triangular numbers is a triangular number.

The programs for A214696, there is no canonical definition to state claims against.
-/

/-! ## A214696.P14232077854886764247

`Δ[A214697(a(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A214696.P14232077854886764247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A214697 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214696.P14232077854886764247

/-!
# A214698: a(n) = (n^n - n^2)/2.

The programs for A214698, the canonical program `A214698.P7979207982605143046` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214698 has offset 1).

The definition of A214698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214698.P7979207982605143046

`A214647(n+1)-(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A214698

/-- `A214647(n+1)-(n+1)²` -/
def P7979207982605143046.Spec : Prop :=
  ∀ n, P7979207982605143046.a n = A214698 (n + 1)

theorem P7979207982605143046.correct : P7979207982605143046.Spec := by
  intro n
  simp only [A214698, Nat.add_sub_cancel]

end A214698

/-! ## A214698.P5229515343654137311

`A117694(n+1)-A000217(n+1)`
-/

namespace A214698.P5229515343654137311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117694 (n + 1) - A000217 (n + 1)

end

end A214698.P5229515343654137311

namespace A214698

/-- `A117694(n+1)-A000217(n+1)` -/
def P5229515343654137311.Spec : Prop :=
  ∀ n, P5229515343654137311.a n = A214698 (n + 1)

end A214698

/-! ## A214698.P1134722202235572977

`((n+1)^(n+1)-(n+1)²)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A214698.P1134722202235572977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ (n + 1) : ℤ) - ((n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A214698.P1134722202235572977

namespace A214698

/-- `((n+1)^(n+1)-(n+1)²)/2` -/
def P1134722202235572977.Spec : Prop :=
  ∀ n, P1134722202235572977.a n = (A214698 (n + 1) : ℚ)

end A214698

/-! ## A214698.P15506531462351357222

`A037205(n)/(n+2)*∑[n+1]-A000217(n)`
-/

namespace A214698.P15506531462351357222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037205 n : ℚ) / (n + 2 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A000217 n : ℚ)

end

end A214698.P15506531462351357222

namespace A214698

/-- `A037205(n)/(n+2)*∑[n+1]-A000217(n)` -/
def P15506531462351357222.Spec : Prop :=
  ∀ n, P15506531462351357222.a n = (A214698 (n + 1) : ℚ)

end A214698

/-! ## A214698.P6268850551887237932

`A108396(A034856(n+1))-A034856(n+1)+n`
-/

namespace A214698.P6268850551887237932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108396 (A034856 (n + 1)).toNat - A034856 (n + 1) + (n : ℤ)

end

end A214698.P6268850551887237932

namespace A214698

/-- `A108396(A034856(n+1))-A034856(n+1)+n` -/
def P6268850551887237932.Spec : Prop :=
  ∀ n, P6268850551887237932.a n = A214698 (n + 1)

end A214698

/-!
# A214699: a(n) = 3*a(n-2) - a(n-3) with a(0)=0, a(1)=3, a(2)=0.

The programs for A214699, the canonical program `A214699.P478417982296533683` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214699 has offset 0).

The definition of A214699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-3)` (program `A214699.P478417982296533683`, by `A214699.P478417982296533683.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214699.P478417982296533683

`3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214699

/-- `3*a(n-2)-a(n-3)` -/
def P478417982296533683.Spec : Prop :=
  ∀ n, P478417982296533683.a n = A214699 n

theorem P478417982296533683.correct : P478417982296533683.Spec := by
  intro n
  simp only [A214699]

end A214699

/-! ## A214699.P5394881107604223690

`ogf(3x/(1-3x^2+x^3))`
-/

namespace A214699.P5394881107604223690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, 0, -3, 1] n

end

end A214699.P5394881107604223690

namespace A214699

/-- `ogf(3x/(1-3x^2+x^3))` -/
def P5394881107604223690.Spec : Prop :=
  ∀ n, P5394881107604223690.a n = A214699 n

end A214699

/-! ## A214699.P1604725854772150915

`a(n-2)+a(n-2)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A214699.P1604725854772150915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 0] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A214699.P1604725854772150915

namespace A214699

/-- `a(n-2)+a(n-2)+a(n-2)-a(n-3)` -/
def P1604725854772150915.Spec : Prop :=
  ∀ n, P1604725854772150915.a n = A214699 n

theorem P1604725854772150915.correct : P1604725854772150915.Spec := by
  intro n
  simp only [A214699, Nat.add_sub_cancel, A214699.P1604725854772150915.a, A214699.P478417982296533683.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A214699

/-! ## A214699.P11866595293260628310

`a(n-2)-(a(n-3)-a(n-2)-a(n-2))` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A214699.P11866595293260628310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 0] fun n a =>
  a (n - 2) - (a (n - 3) - a (n - 2) - a (n - 2))

end

end A214699.P11866595293260628310

namespace A214699

/-- `a(n-2)-(a(n-3)-a(n-2)-a(n-2))` -/
def P11866595293260628310.Spec : Prop :=
  ∀ n, P11866595293260628310.a n = A214699 n

theorem P11866595293260628310.correct : P11866595293260628310.Spec := by
  intro n
  simp only [A214699, Nat.add_sub_cancel, A214699.P11866595293260628310.a, A214699.P478417982296533683.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A214699

/-! ## A214699.P17163036834701283244

`-(A174971(n)*A187497(A008585(n)))`
-/

namespace A214699.P17163036834701283244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A174971 n * A187497 (A008585 n).toNat)

end

end A214699.P17163036834701283244

namespace A214699

/-- `-(A174971(n)*A187497(A008585(n)))` -/
def P17163036834701283244.Spec : Prop :=
  ∀ n, P17163036834701283244.a n = A214699 n

end A214699

/-! ## A214699.P10187588307998973177

`A174971(n+1)*A187497(A008585(n))`
-/

namespace A214699.P10187588307998973177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (n + 1) * A187497 (A008585 n).toNat

end

end A214699.P10187588307998973177

namespace A214699

/-- `A174971(n+1)*A187497(A008585(n))` -/
def P10187588307998973177.Spec : Prop :=
  ∀ n, P10187588307998973177.a n = A214699 n

end A214699

/-! ## A214699.P16444731569785859272

`A174971(n+1)*A187495(A016777(n+1))`
-/

namespace A214699.P16444731569785859272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (n + 1) * A187495 (A016777 (n + 1)).toNat

end

end A214699.P16444731569785859272

namespace A214699

/-- `A174971(n+1)*A187495(A016777(n+1))` -/
def P16444731569785859272.Spec : Prop :=
  ∀ n, P16444731569785859272.a n = A214699 n

end A214699

/-! ## A214699.P245171063843409251

`∑[-(A174971(n)*A188022(n))]`
-/

namespace A214699.P245171063843409251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A174971 n * A188022 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214699.P245171063843409251

namespace A214699

/-- `∑[-(A174971(n)*A188022(n))]` -/
def P245171063843409251.Spec : Prop :=
  ∀ n, P245171063843409251.a n = A214699 n

end A214699

/-! ## A214699.P7974029062524060859

`∑[A174971(n+1)*A188022(n)]`
-/

namespace A214699.P7974029062524060859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (n + 1) * A188022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214699.P7974029062524060859

namespace A214699

/-- `∑[A174971(n+1)*A188022(n)]` -/
def P7974029062524060859.Spec : Prop :=
  ∀ n, P7974029062524060859.a n = A214699 n

end A214699

/-! ## A214699.P4153667433106938400

`a(n-1)+a(n-1)-A215666(n)` with `a(0)=0`
-/

namespace A214699.P4153667433106938400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) - A215666 n)

end

end A214699.P4153667433106938400

namespace A214699

/-- `a(n-1)+a(n-1)-A215666(n)` -/
def P4153667433106938400.Spec : Prop :=
  ∀ n, P4153667433106938400.a n = A214699 n

end A214699

