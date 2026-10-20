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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C002
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
# A083502: Smallest k such that n*(n+k) + 1 is an n-th power.

The programs for A083502, there is no canonical definition to state claims against.
-/

/-! ## A083502.P17527070391308304443

`A076943(n+1)-A087156(n+1)`
-/

namespace A083502.P17527070391308304443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076943 (n + 1) - A087156 (n + 1)

end

end A083502.P17527070391308304443

/-! ## A083502.P9476265150145335650

`A076943(n+1)+A057428(n)-n`
-/

namespace A083502.P9476265150145335650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076943 (n + 1) + (A057428 n - (n : ℤ))

end

end A083502.P9476265150145335650

/-! ## A083502.P5821459207936645758

`A076943(n+1)-(A178334(n)+n)`
-/

namespace A083502.P5821459207936645758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076943 (n + 1) - (A178334 n + (n : ℤ))

end

end A083502.P5821459207936645758

/-! ## A083502.P6344667278101549210

`A076943(n+1)+1-A103517(n)+n`
-/

namespace A083502.P6344667278101549210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076943 (n + 1) + (1 - A103517 n + (n : ℤ))

end

end A083502.P6344667278101549210

/-! ## A083502.P6642471421086139549

`A076943(n+1)-A000194(A005563(n))`
-/

namespace A083502.P6642471421086139549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076943 (n + 1) - A000194 (A005563 n).toNat

end

end A083502.P6642471421086139549

/-!
# A083503: Basis of the n-th power arising in A083502.

The programs for A083503, there is no canonical definition to state claims against.
-/

/-! ## A083503.P9928175686980071459

`A074792(ceil(acot(n)+n))`
-/

namespace A083503.P9928175686980071459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A083503.P9928175686980071459

/-! ## A083503.P5616517523898680432

`floor(A074792(n+1)+acot(n))`
-/

namespace A083503.P5616517523898680432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074792 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A083503.P5616517523898680432

/-! ## A083503.P17874861584484442220

`A074792(C(2, n²)+n+1)`
-/

namespace A083503.P17874861584484442220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (Nat.choose 2 (n ^ 2) + n + 1)

end

end A083503.P17874861584484442220

/-! ## A083503.P3476649705167328060

`A074792(floor(sqrt(n²+1))+1)`
-/

namespace A083503.P3476649705167328060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (Nat.sqrt (n ^ 2 + 1) + 1)

end

end A083503.P3476649705167328060

/-! ## A083503.P9872310306773105426

`A074792(n+1)+A000007(n)`
-/

namespace A083503.P9872310306773105426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) + A000007 n

end

end A083503.P9872310306773105426

/-! ## A083503.P2969840810369149035

`A074792(n+1)+val(A000040(n+1), 2)`
-/

namespace A083503.P2969840810369149035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A083503.P2969840810369149035

/-! ## A083503.P4585579012265279678

`A110738(n+1)+A000038(n)`
-/

namespace A083503.P4585579012265279678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110738 (n + 1) + A000038 n

end

end A083503.P4585579012265279678

/-! ## A083503.P8887378512460887760

`lcm(A110738(n+1), A261143(n))`
-/

namespace A083503.P8887378512460887760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110738 (n + 1)) (A261143 n)

end

end A083503.P8887378512460887760

/-! ## A083503.P2395149062062661065

`A074792(n+1)+A074792(n+1)-A110738(n+1)`
-/

namespace A083503.P2395149062062661065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) + (A074792 (n + 1) - A110738 (n + 1))

end

end A083503.P2395149062062661065

/-!
# A083504: Triangle read by rows: for 1 <= k <= n, T(n, k) is the total perimeter of all squares contained in a square grid with n rows and k columns.

The programs for A083504, there is no canonical definition to state claims against.
-/

/-! ## A083504.P5647899349308118270

`4*A130684(n+1)`
-/

namespace A083504.P5647899349308118270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A130684 (n + 1)

end

end A083504.P5647899349308118270

/-! ## A083504.P1304535371612785355

`A130684(n+1)/(A033999(n)/2)²`
-/

namespace A083504.P1304535371612785355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130684 (n + 1) : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A083504.P1304535371612785355

/-! ## A083504.P9995976476298147143

`A008574(A130684(n+1))`
-/

namespace A083504.P9995976476298147143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A130684 (n + 1)).toNat

end

end A083504.P9995976476298147143

/-! ## A083504.P7314134404218091108

`A008586(A130684(comp[2*n]-n))`
-/

namespace A083504.P7314134404218091108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A130684 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat

end

end A083504.P7314134404218091108

/-! ## A083504.P150390802157120288

`∑{d}[A008586(A130684(n+1)), A000010(#)]`
-/

namespace A083504.P150390802157120288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A130684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A083504.P150390802157120288

/-! ## A083504.P8580112305814690828

`A008586(A130684(n+1))%A000041(n+8)`
-/

namespace A083504.P8580112305814690828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A130684 (n + 1)).toNat) (A000041 (n + 8))

end

end A083504.P8580112305814690828

/-! ## A083504.P15806843827733419975

`A008586(A130684(n+1))/A007318(∑[n])`
-/

namespace A083504.P15806843827733419975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 (A130684 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A083504.P15806843827733419975

/-! ## A083504.P7606449546606457344

`A005843(A130684(n+1)/(1-1/2))`
-/

namespace A083504.P7606449546606457344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A130684 (n + 1) : ℚ) / (1 - (1 : ℚ) / 2))).toNat

end

end A083504.P7606449546606457344

/-!
# A083506: Triangle read by rows where the n-th row contains all distinct numbers that can be obtained as the product of two distinct numbers chosen from [1..n].

The programs for A083506, there is no canonical definition to state claims against.
-/

/-! ## A083506.P8808109254402885559

`A079210(A363690(n+1)%A197160(n+1))`
-/

namespace A083506.P8808109254402885559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (Int.tmod (A363690 (n + 1)) (A197160 (n + 1))).toNat

end

end A083506.P8808109254402885559

/-!
# A083510: Members of A000124 which are the arithmetic mean of two other members.

The programs for A083510, the canonical program `A083510.P3512523966846881467` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083510 has offset 1).

The definition of A083510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083510.P7823378800160349067

`C(A094551(n+1), 2)+1`
-/

namespace A083510.P7823378800160349067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094551 (n + 1)).toNat 2 + 1

end

end A083510.P7823378800160349067

namespace A083510

/-- `C(A094551(n+1), 2)+1` -/
def P7823378800160349067.Spec : Prop :=
  ∀ n, (P7823378800160349067.a n : ℤ) = A083510 (n + 1)

end A083510

/-! ## A083510.P3308945649889528666

`ceil(A309812(n+1)²/8)`
-/

namespace A083510.P3308945649889528666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A309812 (n + 1) ^ 2 : ℚ) / 8⌉

end

end A083510.P3308945649889528666

namespace A083510

/-- `ceil(A309812(n+1)²/8)` -/
def P3308945649889528666.Spec : Prop :=
  ∀ n, P3308945649889528666.a n = A083510 (n + 1)

end A083510

/-! ## A083510.P5071380305575861497

`floor(A309812(C(n+1, n))²/8)+1`
-/

namespace A083510.P5071380305575861497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309812 (Nat.choose (n + 1) n) ^ 2 : ℚ) / 8⌋ + 1

end

end A083510.P5071380305575861497

namespace A083510

/-- `floor(A309812(C(n+1, n))²/8)+1` -/
def P5071380305575861497.Spec : Prop :=
  ∀ n, P5071380305575861497.a n = A083510 (n + 1)

end A083510

/-! ## A083510.P3512523966846881467

`C(lt[2, A046110(n)]+1, 2)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A083510

/-- `C(lt[2, A046110(n)]+1, 2)+1` -/
def P3512523966846881467.Spec : Prop :=
  ∀ n, (P3512523966846881467.a n : ℤ) = A083510 (n + 1)

theorem P3512523966846881467.correct : P3512523966846881467.Spec := by
  intro n
  simp only [A083510, Nat.add_sub_cancel]

end A083510

/-! ## A083510.P1546610082480974890

`A036406(A309812(n+1))`
-/

namespace A083510.P1546610082480974890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 (A309812 (n + 1)).toNat

end

end A083510.P1546610082480974890

namespace A083510

/-- `A036406(A309812(n+1))` -/
def P1546610082480974890.Spec : Prop :=
  ∀ n, P1546610082480974890.a n = A083510 (n + 1)

end A083510

/-! ## A083510.P18379907683492686414

`A292310(n+1)+1`
-/

namespace A083510.P18379907683492686414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292310 (n + 1) + 1

end

end A083510.P18379907683492686414

namespace A083510

/-- `A292310(n+1)+1` -/
def P18379907683492686414.Spec : Prop :=
  ∀ n, P18379907683492686414.a n = A083510 (n + 1)

end A083510

/-! ## A083510.P264165778038924027

`A004482(A292310(n+1))`
-/

namespace A083510.P264165778038924027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A292310 (n + 1)).toNat

end

end A083510.P264165778038924027

namespace A083510

/-- `A004482(A292310(n+1))` -/
def P264165778038924027.Spec : Prop :=
  ∀ n, P264165778038924027.a n = A083510 (n + 1)

end A083510

/-!
# A083511: Members of A000124 which are multiples of 11.

The programs for A083511, the canonical program `A083511.P12398400288618322435` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083511 has offset 0).

The definition of A083511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083511.P10068590808132851399

`11*((22*(n²+n)+7*(2*n+1)*(-1)^n-7)/16+1)`
-/

namespace A083511.P10068590808132851399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 * (((22 * (n ^ 2 + n) : ℤ) + 7 * ((2 * n + 1 : ℤ) * (-1) ^ n) - 7 : ℚ) / 16 + 1)

end

end A083511.P10068590808132851399

namespace A083511

/-- `11*((22*(n²+n)+7*(2*n+1)*(-1)^n-7)/16+1)` -/
def P10068590808132851399.Spec : Prop :=
  ∀ n, P10068590808132851399.a n = (A083511 n : ℚ)

end A083511

/-! ## A083511.P12398400288618322435

`11*A195313(n)+11`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083511

/-- `11*A195313(n)+11` -/
def P12398400288618322435.Spec : Prop :=
  ∀ n, P12398400288618322435.a n = A083511 n

theorem P12398400288618322435.correct : P12398400288618322435.Spec := by
  intro n
  simp only [A083511]

end A083511

/-! ## A083511.P7357427720493213667

`C(∑[A040019(n)+1], 2)+1`
-/

namespace A083511.P7357427720493213667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A083511.P7357427720493213667

namespace A083511

/-- `C(∑[A040019(n)+1], 2)+1` -/
def P7357427720493213667.Spec : Prop :=
  ∀ n, (P7357427720493213667.a n : ℤ) = A083511 n

end A083511

/-! ## A083511.P17152111545209953459

`C(A106387(n+1)+1, 2)+1`
-/

namespace A083511.P17152111545209953459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106387 (n + 1) + 1).toNat 2 + 1

end

end A083511.P17152111545209953459

namespace A083511

/-- `C(A106387(n+1)+1, 2)+1` -/
def P17152111545209953459.Spec : Prop :=
  ∀ n, (P17152111545209953459.a n : ℤ) = A083511 n

end A083511

/-! ## A083511.P13485081874976884065

`C(A155086(n+1)-n, 2)+1`
-/

namespace A083511.P13485081874976884065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155086 (n + 1) - (n : ℤ)).toNat 2 + 1

end

end A083511.P13485081874976884065

namespace A083511

/-- `C(A155086(n+1)-n, 2)+1` -/
def P13485081874976884065.Spec : Prop :=
  ∀ n, (P13485081874976884065.a n : ℤ) = A083511 n

end A083511

/-! ## A083511.P3856667257634815026

`A106388(n+1)-A195313(n)`
-/

namespace A083511.P3856667257634815026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106388 (n + 1) - A195313 n

end

end A083511.P3856667257634815026

namespace A083511

/-- `A106388(n+1)-A195313(n)` -/
def P3856667257634815026.Spec : Prop :=
  ∀ n, P3856667257634815026.a n = A083511 n

end A083511

/-! ## A083511.P17424531010270765892

`A000124(A106387(n+1))`
-/

namespace A083511.P17424531010270765892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A106387 (n + 1)).toNat

end

end A083511.P17424531010270765892

namespace A083511

/-- `A000124(A106387(n+1))` -/
def P17424531010270765892.Spec : Prop :=
  ∀ n, P17424531010270765892.a n = A083511 n

end A083511

/-! ## A083511.P12138344581511826638

`A017509(A195313(n))+1`
-/

namespace A083511.P12138344581511826638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A195313 n).toNat + 1

end

end A083511.P12138344581511826638

namespace A083511

/-- `A017509(A195313(n))+1` -/
def P12138344581511826638.Spec : Prop :=
  ∀ n, P12138344581511826638.a n = A083511 n

end A083511

/-! ## A083511.P3746975828798939390

`∩[A000124(n), A008593(n)]`
-/

namespace A083511.P3746975828798939390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083511.P3746975828798939390

namespace A083511

/-- `∩[A000124(n), A008593(n)]` -/
def P3746975828798939390.Spec : Prop :=
  ∀ n, (P3746975828798939390.a n : ℤ) = A083511 n

end A083511

/-! ## A083511.P11938150376375630464

`∩[A134869(n+1), A008593(n)]`
-/

namespace A083511.P11938150376375630464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083511.P11938150376375630464

namespace A083511

/-- `∩[A134869(n+1), A008593(n)]` -/
def P11938150376375630464.Spec : Prop :=
  ∀ n, (P11938150376375630464.a n : ℤ) = A083511 n

end A083511

/-!
# A083512: Multiples of 11 with digit sum 11, with no zero digits in odd places.

The programs for A083512, there is no canonical definition to state claims against.
-/

/-! ## A083512.P14143035338430154191

`A216995(A276142(n+1)^A293551(n))`
-/

namespace A083512.P14143035338430154191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (SequenceMachineLib.roundAway ((A276142 (n + 1) : ℚ) ^ (A293551 n : ℤ))).toNat

end

end A083512.P14143035338430154191

/-!
# A083513: Palindromes in A083512.

The programs for A083513, there is no canonical definition to state claims against.
-/

/-! ## A083513.P17980301917765752741

`∩[A083512(n+1), A229805(n+1)]`
-/

namespace A083513.P17980301917765752741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083513.P17980301917765752741

/-!
# A083514: Number of steps for iteration of map x -> (4/3)*ceiling(x) to reach an integer > 3n+1 when started at 3n+1, or -1 if no such integer is ever reached.

The programs for A083514, there is no canonical definition to state claims against.
-/

/-! ## A083514.P6923867888817061626

`A085068(3*n+1)`
-/

namespace A083514.P6923867888817061626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085068 (3 * n + 1)

end

end A083514.P6923867888817061626

/-! ## A083514.P16975601194549166739

`or(A000122(n), A085068(A016777(n)))`
-/

namespace A083514.P16975601194549166739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A085068 (A016777 n).toNat)

end

end A083514.P16975601194549166739

/-! ## A083514.P1674043331883617187

`A085068(A016825(n))+1`
-/

namespace A083514.P1674043331883617187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085068 (A016825 n).toNat + 1

end

end A083514.P1674043331883617187

/-! ## A083514.P16802298186099453828

`A085068(A016813(n)+1)+1`
-/

namespace A083514.P16802298186099453828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085068 (A016813 n + 1).toNat + 1

end

end A083514.P16802298186099453828

/-!
# A083515: Smallest number k such that R(n) + k is a square, where R(n) = A002275.

The programs for A083515, the canonical program `A083515.P15738582638108618042` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083515 has offset 1).

The definition of A083515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083515.P15738582638108618042

`ceil(sqrt(A000042(n+1)))²-A000042(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083515

/-- `ceil(sqrt(A000042(n+1)))²-A000042(n+1)` -/
def P15738582638108618042.Spec : Prop :=
  ∀ n, P15738582638108618042.a n = A083515 (n + 1)

theorem P15738582638108618042.correct : P15738582638108618042.Spec := by
  intro n
  simp only [A083515, Nat.add_sub_cancel]

end A083515

/-! ## A083515.P3292661549124269076

`ceil(sqrt(A002275(n+1)))²-A002275(n+1)`
-/

namespace A083515.P3292661549124269076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002275 (n + 1) : ℝ)⌉ ^ 2 - A002275 (n + 1)

end

end A083515.P3292661549124269076

namespace A083515

/-- `ceil(sqrt(A002275(n+1)))²-A002275(n+1)` -/
def P3292661549124269076.Spec : Prop :=
  ∀ n, P3292661549124269076.a n = A083515 (n + 1)

end A083515

/-!
# A083516: Smallest palindromic multiple of 11, sum of whose digits at some stage is equal to n.

The programs for A083516, there is no canonical definition to state claims against.
-/

/-! ## A083516.P6078616382601878696

`11*dr(A017041(A102484(n+1)))`
-/

namespace A083516.P6078616382601878696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.digitalRoot (A017041 (A102484 (n + 1)).toNat)

end

end A083516.P6078616382601878696

/-! ## A083516.P15719149661364066353

`11*A077491(A032555(n+1))`
-/

namespace A083516.P15719149661364066353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A077491 (A032555 (n + 1)).toNat

end

end A083516.P15719149661364066353

/-! ## A083516.P34879229321658731

`11*A077491(A078213(n+1))`
-/

namespace A083516.P34879229321658731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A077491 (A078213 (n + 1)).toNat

end

end A083516.P34879229321658731

/-! ## A083516.P16904558257671631605

`A345113(round(sqrt(55*A000124(n))))`
-/

namespace A083516.P16904558257671631605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345113 (SequenceMachineLib.roundAway (Real.sqrt (55 * A000124 n : ℝ))).toNat

end

end A083516.P16904558257671631605

/-!
# A083517: Triangular numbers which are one more than a product of distinct triangular numbers.

The programs for A083517, there is no canonical definition to state claims against.
-/

/-! ## A083517.P9130789039956712478

`∩[floor((2*n+1)²/8), A334130(n+5)+1]`
-/

namespace A083517.P9130789039956712478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334130 (n + 5) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083517.P9130789039956712478

/-! ## A083517.P14342112734198700997

`∩[A334130(n+1)+1, A000217(n+3)]`
-/

namespace A083517.P14342112734198700997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334130 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083517.P14342112734198700997

/-! ## A083517.P2749497240070647843

`∩[A334130(n+1)+1, A334129(n+3)]`
-/

namespace A083517.P2749497240070647843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334130 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083517.P2749497240070647843

/-! ## A083517.P16247998089253082841

`∩[A334130(n+1)+1, A179865(n+5)]`
-/

namespace A083517.P16247998089253082841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334130 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083517.P16247998089253082841

/-!
# A083518: Beginning with 3, a(i)*a(j) + 2 is prime for all i, j, i != j.

The programs for A083518, there is no canonical definition to state claims against.
-/

/-! ## A083518.P6667030226288964903

`∩[A136014(n+1), A165785(n+1)]`
-/

namespace A083518.P6667030226288964903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083518.P6667030226288964903

/-! ## A083518.P14362306282519515263

`record[or(A230870(n+3), A230918(n+2))]`
-/

namespace A083518.P14362306282519515263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230870 (n + 3)) (A230918 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083518.P14362306282519515263

/-!
# A083519: Beginning with 1, a(i)*a(j) + 2 is prime for all i, j, i != j.

The programs for A083519, there is no canonical definition to state claims against.
-/

/-! ## A083519.P9433858320313048449

`or(1, A130693(n+1))`
-/

namespace A083519.P9433858320313048449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A130693 (n + 1))

end

end A083519.P9433858320313048449

/-!
# A083520: Primes p such that p-1 is a product of two or more consecutive integers. Or (p-1) is a permutation of m items chosen from n, for some m and n. p-1 = k*(k+1)(k+2)...(k+r) for some k and r, r>0.

The programs for A083520, there is no canonical definition to state claims against.
-/

/-! ## A083520.P884627348951163596

`p?[A045619(n+1)+1]`
-/

namespace A083520.P884627348951163596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083520.P884627348951163596

/-! ## A083520.P11274168942968745524

`p?[xor(1, A045619(A028310(n)))]`
-/

namespace A083520.P11274168942968745524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A045619 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083520.P11274168942968745524

/-! ## A083520.P10721242718562261184

`record[A006530(A045619(n+2)+1)]`
-/

namespace A083520.P10721242718562261184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A045619 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083520.P10721242718562261184

/-! ## A083520.P6901987838723768840

`record[A020639(A045619(n+2)+1)]`
-/

namespace A083520.P6901987838723768840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045619 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083520.P6901987838723768840

/-! ## A083520.P8195517277819770789

`p?[A141310(A045619(n+1))]`
-/

namespace A083520.P8195517277819770789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A045619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083520.P8195517277819770789

/-! ## A083520.P6185083327173900657

`record[A166333(A045619(n+2))]`
-/

namespace A083520.P6185083327173900657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A045619 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083520.P6185083327173900657

/-!
# A083521: Smallest prime that is the product of n consecutive integers + 1, or 0 if no such number exists.

The programs for A083521, there is no canonical definition to state claims against.
-/

/-! ## A083521.P18290094753299103952

`A249051(∑[(lcm(16, n)/16)!])`
-/

namespace A083521.P18290094753299103952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083521.P18290094753299103952

/-!
# A083523: Smallest Fibonacci number divisible by 2^n.

The programs for A083523, there is no canonical definition to state claims against.
-/

/-! ## A083523.P10058157977073864107

`A000045(A001177(2^n))`
-/

namespace A083523.P10058157977073864107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001177 (2 ^ n)).toNat

end

end A083523.P10058157977073864107

/-! ## A083523.P9203006397868975327

`A000045(A322907(2^n))`
-/

namespace A083523.P9203006397868975327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A322907 (2 ^ n)).toNat

end

end A083523.P9203006397868975327

/-! ## A083523.P14951546680650657580

`A000045(A003945(n)/A238418(n+2))`
-/

namespace A083523.P14951546680650657580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A003945 n : ℚ) / (A238418 (n + 2) : ℚ))).toNat

end

end A083523.P14951546680650657580

/-! ## A083523.P14244079284483873999

`A000045(or(A011782(n), A087009(n+1)))`
-/

namespace A083523.P14244079284483873999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor (A011782 n) (A087009 (n + 1))).toNat

end

end A083523.P14244079284483873999

/-! ## A083523.P15866866492987086098

`A047930(2^n)`
-/

namespace A083523.P15866866492987086098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047930 (2 ^ n)

end

end A083523.P15866866492987086098

/-!
# A083524: a(1) = 1, a(n) = a(n-1)*n if n is a prime, a(n) = a(n-1)+ n if n is composite.

The programs for A083524, there is no canonical definition to state claims against.
-/

/-! ## A083524.P6272547301234167865

`A222559(n+1)+A036987(A001288(n))`
-/

namespace A083524.P6272547301234167865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222559 (n + 1) + A036987 (A001288 (n + 11)).toNat

end

end A083524.P6272547301234167865

/-! ## A083524.P14447501789367801915

`A222559(n+1)+A000007(A333591(n))`
-/

namespace A083524.P14447501789367801915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222559 (n + 1) + A000007 (A333591 n).toNat

end

end A083524.P14447501789367801915

/-! ## A083524.P331382881146322966

`C(A222559(n+1), A055396(A007070(n)))`
-/

namespace A083524.P331382881146322966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A222559 (n + 1)).toNat (A055396 (A007070 n).toNat).toNat

end

end A083524.P331382881146322966

/-! ## A083524.P3459647522982804627

`A222559(n+1)+A008683(A060867(n+1))`
-/

namespace A083524.P3459647522982804627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222559 (n + 1) + A008683 (A060867 (n + 1)).toNat

end

end A083524.P3459647522982804627

/-!
# A083525: a(1) = 1, a(n) = a(n-1)*n if n is composite, a(n) = a(n-1) + n if n is a prime.

The programs for A083525, there is no canonical definition to state claims against.
-/

/-! ## A083525.P7941587995570892485

`record[A018597(n+1)^A349903(n)]`
-/

namespace A083525.P7941587995570892485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018597 (n + 1) : ℚ) ^ (A349903 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083525.P7941587995570892485

/-! ## A083525.P6371201765048905838

`A205558(A062954(n+1)+floor(3/acot(n)))`
-/

namespace A083525.P6371201765048905838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (A062954 (n + 1) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A083525.P6371201765048905838

/-!
# A083527: a(n) is the number of times that sums 1+-4+-9+-16+-...+-n^2 of the first n squares is zero. There are 2^(n-1) choices for the sign patterns.

The programs for A083527, there is no canonical definition to state claims against.
-/

/-! ## A083527.P1813000487721257734

`A158092(n+1)/2`
-/

namespace A083527.P1813000487721257734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158092 (n + 1) : ℚ) / 2

end

end A083527.P1813000487721257734

/-! ## A083527.P17084753287686252323

`1/2*A158092(A008619(2*n))`
-/

namespace A083527.P17084753287686252323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A158092 (A008619 (2 * n)).toNat : ℚ)

end

end A083527.P17084753287686252323

/-! ## A083527.P14872485189154268506

`2^A008683(A020483(n))*A158092(n+1)`
-/

namespace A083527.P14872485189154268506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A158092 (n + 1) : ℚ)

end

end A083527.P14872485189154268506

/-! ## A083527.P7313814240903970243

`A021913(n)*A307877(A021913(n)+n)`
-/

namespace A083527.P7313814240903970243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A307877 (A021913 n + (n : ℤ)).toNat

end

end A083527.P7313814240903970243

/-! ## A083527.P107845886166553011

`A021913(n)*A307877(n+1)`
-/

namespace A083527.P107845886166553011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A307877 (n + 1)

end

end A083527.P107845886166553011

/-! ## A083527.P12806588298091162315

`(2-A014695(n+1))*A307877(n+1)`
-/

namespace A083527.P12806588298091162315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A014695 (n + 1)) * A307877 (n + 1)

end

end A083527.P12806588298091162315

/-! ## A083527.P7052719142962416834

`A058377(n+1)/A069918(n+1)*A307877(n+1)`
-/

namespace A083527.P7052719142962416834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058377 (n + 1) : ℚ) / (A069918 (n + 1) : ℚ) * (A307877 (n + 1) : ℚ)

end

end A083527.P7052719142962416834

/-! ## A083527.P6867037131898013938

`A307877(n+1)-A369730(n+1)`
-/

namespace A083527.P6867037131898013938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307877 (n + 1) - A369730 (n + 1)

end

end A083527.P6867037131898013938

/-!
# A083528: a(n) = 5^n mod 2*n.

The programs for A083528, the canonical program `A083528.P17588683822829383858` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083528 has offset 1).

The definition of A083528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083528.P17588683822829383858

`A016813(A094920(n+1))%Δ[A027691(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083528

/-- `A016813(A094920(n+1))%Δ[A027691(n)]` -/
def P17588683822829383858.Spec : Prop :=
  ∀ n, P17588683822829383858.a n = A083528 (n + 1)

theorem P17588683822829383858.correct : P17588683822829383858.Spec := by
  intro n
  simp only [A083528, Nat.add_sub_cancel]

end A083528

/-! ## A083528.P17665139608752414161

`(5^(n+1))%(2*(n+1))`
-/

namespace A083528.P17665139608752414161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1) % (2 * (n + 1))

end

end A083528.P17665139608752414161

namespace A083528

/-- `(5^(n+1))%(2*(n+1))` -/
def P17665139608752414161.Spec : Prop :=
  ∀ n, (P17665139608752414161.a n : ℤ) = A083528 (n + 1)

end A083528

/-! ## A083528.P5916652251693144269

`A093178((5^(n+1))%A103517(n))`
-/

namespace A083528.P5916652251693144269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Int.tmod (5 ^ (n + 1) : ℤ) (A103517 n)).toNat

end

end A083528.P5916652251693144269

namespace A083528

/-- `A093178((5^(n+1))%A103517(n))` -/
def P5916652251693144269.Spec : Prop :=
  ∀ n, P5916652251693144269.a n = A083528 (n + 1)

end A083528

/-! ## A083528.P234109068218426527

`A005408(∑[A199212(n)-1]%(n+1))`
-/

namespace A083528.P234109068218426527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199212 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)).toNat

end

end A083528.P234109068218426527

namespace A083528

/-- `A005408(∑[A199212(n)-1]%(n+1))` -/
def P234109068218426527.Spec : Prop :=
  ∀ n, P234109068218426527.a n = A083528 (n + 1)

end A083528

/-! ## A083528.P3506583259633608649

`A000027(A000351(n+1)%(2*(n+1)))`
-/

namespace A083528.P3506583259633608649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A000351 (n + 1)) (2 * (n + 1) : ℤ)).toNat

end

end A083528.P3506583259633608649

namespace A083528

/-- `A000027(A000351(n+1)%(2*(n+1)))` -/
def P3506583259633608649.Spec : Prop :=
  ∀ n, P3506583259633608649.a n = A083528 (n + 1)

end A083528

/-! ## A083528.P832612397986484813

`A005408(A048330(4*n+2)%(n+1))`
-/

namespace A083528.P832612397986484813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A048330 (4 * n + 2)) (n + 1 : ℤ)).toNat

end

end A083528.P832612397986484813

namespace A083528

/-- `A005408(A048330(4*n+2)%(n+1))` -/
def P832612397986484813.Spec : Prop :=
  ∀ n, P832612397986484813.a n = A083528 (n + 1)

end A083528

/-! ## A083528.P8316148346283738998

`A000027(A017921(2*(n+1))%(2*(n+1)))`
-/

namespace A083528.P8316148346283738998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A017921 (2 * (n + 1))) (2 * (n + 1) : ℤ)).toNat

end

end A083528.P8316148346283738998

namespace A083528

/-- `A000027(A017921(2*(n+1))%(2*(n+1)))` -/
def P8316148346283738998.Spec : Prop :=
  ∀ n, P8316148346283738998.a n = A083528 (n + 1)

end A083528

/-! ## A083528.P13762934300785475385

`A029579(A249222(2*(n+1))%(2*(n+1)))`
-/

namespace A083528.P13762934300785475385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.tmod (A249222 (2 * (n + 1))) (2 * (n + 1) : ℤ)).toNat

end

end A083528.P13762934300785475385

namespace A083528

/-- `A029579(A249222(2*(n+1))%(2*(n+1)))` -/
def P13762934300785475385.Spec : Prop :=
  ∀ n, P13762934300785475385.a n = A083528 (n + 1)

end A083528

/-! ## A083528.P6341922504852103717

`A000265(A000351(n+1)%Δ[A027689(n)])`
-/

namespace A083528.P6341922504852103717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (A000351 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A083528.P6341922504852103717

namespace A083528

/-- `A000265(A000351(n+1)%Δ[A027689(n)])` -/
def P6341922504852103717.Spec : Prop :=
  ∀ n, P6341922504852103717.a n = A083528 (n + 1)

end A083528

/-! ## A083528.P16077929588970355460

`A110654((10*A000351(n))%Δ[A001844(n)])`
-/

namespace A083528.P16077929588970355460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (10 * A000351 n) (f1 (n + 1) - f1 n)).toNat

end

end A083528.P16077929588970355460

namespace A083528

/-- `A110654((10*A000351(n))%Δ[A001844(n)])` -/
def P16077929588970355460.Spec : Prop :=
  ∀ n, P16077929588970355460.a n = A083528 (n + 1)

end A083528

/-!
# A083529: a(n) = 5^n mod 3*n.

The programs for A083529, the canonical program `A083529.P5594435250438675161` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083529 has offset 1).

The definition of A083529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083529.P5594435250438675161

`(5^(n+1))%(3*(n+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083529

/-- `(5^(n+1))%(3*(n+1))` -/
def P5594435250438675161.Spec : Prop :=
  ∀ n, (P5594435250438675161.a n : ℤ) = A083529 (n + 1)

theorem P5594435250438675161.correct : P5594435250438675161.Spec := by
  intro n
  simp only [A083529, Nat.add_sub_cancel]

end A083529

/-! ## A083529.P15895213730693376279

`A000027(A000351(n+1)%(3*(n+1)))`
-/

namespace A083529.P15895213730693376279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A000351 (n + 1)) (3 * (n + 1) : ℤ)).toNat

end

end A083529.P15895213730693376279

namespace A083529

/-- `A000027(A000351(n+1)%(3*(n+1)))` -/
def P15895213730693376279.Spec : Prop :=
  ∀ n, P15895213730693376279.a n = A083529 (n + 1)

end A083529

/-! ## A083529.P7579491758422852461

`A000027(A017920(2*(n+1))%(3*(n+1)))`
-/

namespace A083529.P7579491758422852461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A017920 (2 * (n + 1))) (3 * (n + 1) : ℤ)).toNat

end

end A083529.P7579491758422852461

namespace A083529

/-- `A000027(A017920(2*(n+1))%(3*(n+1)))` -/
def P7579491758422852461.Spec : Prop :=
  ∀ n, P7579491758422852461.a n = A083529 (n + 1)

end A083529

/-! ## A083529.P1862177755391543330

`A000027(A074872(2*(n+2))%(3*(n+1)))`
-/

namespace A083529.P1862177755391543330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A074872 (2 * (n + 2))) (3 * (n + 1) : ℤ)).toNat

end

end A083529.P1862177755391543330

namespace A083529

/-- `A000027(A074872(2*(n+2))%(3*(n+1)))` -/
def P1862177755391543330.Spec : Prop :=
  ∀ n, P1862177755391543330.a n = A083529 (n + 1)

end A083529

/-! ## A083529.P10327711859729375689

`A028310(A000351(n+1)%A008486(n+1))`
-/

namespace A083529.P10327711859729375689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A000351 (n + 1)) (A008486 (n + 1))).toNat

end

end A083529.P10327711859729375689

namespace A083529

/-- `A028310(A000351(n+1)%A008486(n+1))` -/
def P10327711859729375689.Spec : Prop :=
  ∀ n, P10327711859729375689.a n = A083529 (n + 1)

end A083529

/-!
# A083530: a(n) = 7^n mod (2*n).

The programs for A083530, the canonical program `A083530.P15585446427285367200` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083530 has offset 1).

The definition of A083530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083530.P15585446427285367200

`(7^(n+1))%(2*(n+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083530

/-- `(7^(n+1))%(2*(n+1))` -/
def P15585446427285367200.Spec : Prop :=
  ∀ n, (P15585446427285367200.a n : ℤ) = A083530 (n + 1)

theorem P15585446427285367200.correct : P15585446427285367200.Spec := by
  intro n
  simp only [A083530, Nat.add_sub_cancel]

end A083530

/-! ## A083530.P12788985898949335935

`A093178((7^(n+1))%A103517(n))`
-/

namespace A083530.P12788985898949335935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Int.tmod (7 ^ (n + 1) : ℤ) (A103517 n)).toNat

end

end A083530.P12788985898949335935

namespace A083530

/-- `A093178((7^(n+1))%A103517(n))` -/
def P12788985898949335935.Spec : Prop :=
  ∀ n, P12788985898949335935.a n = A083530 (n + 1)

end A083530

/-! ## A083530.P3411235733767288998

`A028310(A000420(n+1)%(2*(n+1)))`
-/

namespace A083530.P3411235733767288998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A000420 (n + 1)) (2 * (n + 1) : ℤ)).toNat

end

end A083530.P3411235733767288998

namespace A083530

/-- `A028310(A000420(n+1)%(2*(n+1)))` -/
def P3411235733767288998.Spec : Prop :=
  ∀ n, P3411235733767288998.a n = A083530 (n + 1)

end A083530

/-! ## A083530.P6650995169450226690

`A000265(A000420(n+1)%A005843(n+1))`
-/

namespace A083530.P6650995169450226690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (A000420 (n + 1)) (A005843 (n + 1))).toNat

end

end A083530.P6650995169450226690

namespace A083530

/-- `A000265(A000420(n+1)%A005843(n+1))` -/
def P6650995169450226690.Spec : Prop :=
  ∀ n, P6650995169450226690.a n = A083530 (n + 1)

end A083530

/-! ## A083530.P1285571107147407809

`A143433(∑[n+2])+(A198691(n)-A198647(n))%(2*(n+1))`
-/

namespace A083530.P1285571107147407809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 (∑ j ∈ Finset.range (n + 1), f1 j) + Int.tmod (A198691 n - A198647 n) (2 * (n + 1) : ℤ)

end

end A083530.P1285571107147407809

namespace A083530

/-- `A143433(∑[n+2])+(A198691(n)-A198647(n))%(2*(n+1))` -/
def P1285571107147407809.Spec : Prop :=
  ∀ n, P1285571107147407809.a n = A083530 (n + 1)

end A083530

/-!
# A083531: First difference sequence of A002191. Differences between possible values for sum of divisors of n.

The programs for A083531, the canonical program `A083531.P1022850084911545269` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083531 has offset 1).

The definition of A083531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083531.P1022850084911545269

`Δ[A002191(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083531

/-- `Δ[A002191(n+1)]` -/
def P1022850084911545269.Spec : Prop :=
  ∀ n, P1022850084911545269.a n = A083531 (n + 1)

theorem P1022850084911545269.correct : P1022850084911545269.Spec := by
  intro n
  simp only [A083531, Nat.add_sub_cancel]

end A083531

/-! ## A083531.P7800175231915980011

`Δ[A000203(A002192(n+1))]`
-/

namespace A083531.P7800175231915980011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083531.P7800175231915980011

namespace A083531

/-- `Δ[A000203(A002192(n+1))]` -/
def P7800175231915980011.Spec : Prop :=
  ∀ n, P7800175231915980011.a n = A083531 (n + 1)

end A083531

/-! ## A083531.P7104802350386576730

`A002191(n+2)-A002191(n+1)`
-/

namespace A083531.P7104802350386576730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 2) - A002191 (n + 1)

end

end A083531.P7104802350386576730

namespace A083531

/-- `A002191(n+2)-A002191(n+1)` -/
def P7104802350386576730.Spec : Prop :=
  ∀ n, P7104802350386576730.a n = A083531 (n + 1)

theorem P7104802350386576730.correct : P7104802350386576730.Spec := by
  intro n
  simp only [A083531, Nat.add_sub_cancel, A083531.P7104802350386576730.a, A083531.P1022850084911545269.f1, A083531.P1022850084911545269.a, SequenceMachineLib.memo_apply]

end A083531

/-! ## A083531.P14414761106178559225

`A000203(A002192(n+2))-A000203(A002192(n+1))`
-/

namespace A083531.P14414761106178559225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002192 (n + 2)).toNat - A000203 (A002192 (n + 1)).toNat

end

end A083531.P14414761106178559225

namespace A083531

/-- `A000203(A002192(n+2))-A000203(A002192(n+1))` -/
def P14414761106178559225.Spec : Prop :=
  ∀ n, P14414761106178559225.a n = A083531 (n + 1)

end A083531

/-! ## A083531.P16310644552796670553

`Δ[record[A039653(A051444(n+2))]]`
-/

namespace A083531.P16310644552796670553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A051444 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083531.P16310644552796670553

namespace A083531

/-- `Δ[record[A039653(A051444(n+2))]]` -/
def P16310644552796670553.Spec : Prop :=
  ∀ n, P16310644552796670553.a n = A083531 (n + 1)

end A083531

/-! ## A083531.P9293704401292369249

`Δ[lt[0, char[A000203(n+1)]]]`
-/

namespace A083531.P9293704401292369249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083531.P9293704401292369249

namespace A083531

/-- `Δ[lt[0, char[A000203(n+1)]]]` -/
def P9293704401292369249.Spec : Prop :=
  ∀ n, P9293704401292369249.a n = A083531 (n + 1)

end A083531

/-!
# A083532: First difference sequence of A007369. Differences between impossible values for sum of divisors of n.

The programs for A083532, the canonical program `A083532.P14524837623737021936` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083532 has offset 1).

The definition of A083532 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007369, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083532.P14524837623737021936

`A007369(n+2)-A007369(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083532

/-- `A007369(n+2)-A007369(n+1)` -/
def P14524837623737021936.Spec : Prop :=
  ∀ n, P14524837623737021936.a n = A083532 (n + 1)

theorem P14524837623737021936.correct : P14524837623737021936.Spec := by
  intro n
  simp only [A083532, Nat.add_sub_cancel]

end A083532

/-! ## A083532.P11843722218338588053

`Δ[A007369(n+1)]`
-/

namespace A083532.P11843722218338588053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083532.P11843722218338588053

namespace A083532

/-- `Δ[A007369(n+1)]` -/
def P11843722218338588053.Spec : Prop :=
  ∀ n, P11843722218338588053.a n = A083532 (n + 1)

theorem P11843722218338588053.correct : P11843722218338588053.Spec := by
  intro n
  simp only [A083532, Nat.add_sub_cancel, A083532.P11843722218338588053.f1, A083532.P11843722218338588053.a, A083532.P14524837623737021936.a, SequenceMachineLib.memo_apply]

end A083532

/-! ## A083532.P17074524911129000985

`Δ[record[A257670(n+2)]]`
-/

namespace A083532.P17074524911129000985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083532.P17074524911129000985

namespace A083532

/-- `Δ[record[A257670(n+2)]]` -/
def P17074524911129000985.Spec : Prop :=
  ∀ n, P17074524911129000985.a n = A083532 (n + 1)

end A083532

/-! ## A083532.P11947998827613086958

`Δ[comp[A000203(n+1)-1]]`
-/

namespace A083532.P11947998827613086958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083532.P11947998827613086958

namespace A083532

/-- `Δ[comp[A000203(n+1)-1]]` -/
def P11947998827613086958.Spec : Prop :=
  ∀ n, P11947998827613086958.a n = A083532 (n + 1)

end A083532

/-! ## A083532.P17747702937521850088

`Δ[eq[0, A054973(n+1)]]`
-/

namespace A083532.P17747702937521850088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083532.P17747702937521850088

namespace A083532

/-- `Δ[eq[0, A054973(n+1)]]` -/
def P17747702937521850088.Spec : Prop :=
  ∀ n, P17747702937521850088.a n = A083532 (n + 1)

end A083532

/-! ## A083532.P8765362597135044547

`Δ[eq[0, A240667(n+1)]]`
-/

namespace A083532.P8765362597135044547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083532.P8765362597135044547

namespace A083532

/-- `Δ[eq[0, A240667(n+1)]]` -/
def P8765362597135044547.Spec : Prop :=
  ∀ n, P8765362597135044547.a n = A083532 (n + 1)

end A083532

/-! ## A083532.P14002682802864865001

`Δ[eq[0, A241954(n+1)]]`
-/

namespace A083532.P14002682802864865001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083532.P14002682802864865001

namespace A083532

/-- `Δ[eq[0, A241954(n+1)]]` -/
def P14002682802864865001.Spec : Prop :=
  ∀ n, P14002682802864865001.a n = A083532 (n + 1)

end A083532

/-! ## A083532.P971742874891879268

`Δ[eq[0, A258913(n+1)]]`
-/

namespace A083532.P971742874891879268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083532.P971742874891879268

namespace A083532

/-- `Δ[eq[0, A258913(n+1)]]` -/
def P971742874891879268.Spec : Prop :=
  ∀ n, P971742874891879268.a n = A083532 (n + 1)

end A083532

/-! ## A083532.P12972162887045712770

`Δ[eq[0, A286011(n+1)]]`
-/

namespace A083532.P12972162887045712770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083532.P12972162887045712770

namespace A083532

/-- `Δ[eq[0, A286011(n+1)]]` -/
def P12972162887045712770.Spec : Prop :=
  ∀ n, P12972162887045712770.a n = A083532 (n + 1)

end A083532

/-! ## A083532.P17123666471627266581

`Δ[record[n-A051444(n+2)]]`
-/

namespace A083532.P17123666471627266581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051444 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083532.P17123666471627266581

namespace A083532

/-- `Δ[record[n-A051444(n+2)]]` -/
def P17123666471627266581.Spec : Prop :=
  ∀ n, P17123666471627266581.a n = A083532 (n + 1)

end A083532

/-! ## A083532.P13539172434046975954

`Δ[record[n-A057637(n+2)]]`
-/

namespace A083532.P13539172434046975954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057637 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083532.P13539172434046975954

namespace A083532

/-- `Δ[record[n-A057637(n+2)]]` -/
def P13539172434046975954.Spec : Prop :=
  ∀ n, P13539172434046975954.a n = A083532 (n + 1)

end A083532

/-!
# A083533: First difference sequence of A002202. Difference between consecutive possible values of phi(n), the Euler totient function A000010.

The programs for A083533, there is no canonical definition to state claims against.
-/

/-! ## A083533.P6105629328825337382

`A002202(n+2)-A002202(n+1)`
-/

namespace A083533.P6105629328825337382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 2) - A002202 (n + 1)

end

end A083533.P6105629328825337382

/-! ## A083533.P3661543812375169785

`2*A002180(n+2)-A000010(A002181(n+1))`
-/

namespace A083533.P3661543812375169785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002180 (n + 2) - A000010 (A002181 (n + 1)).toNat

end

end A083533.P3661543812375169785

/-! ## A083533.P16448556498364745827

`Δ[A002202(n+1)]`
-/

namespace A083533.P16448556498364745827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083533.P16448556498364745827

/-! ## A083533.P13341890904673999139

`Δ[A000010(A002181(n+1))]`
-/

namespace A083533.P13341890904673999139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002181 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083533.P13341890904673999139

/-! ## A083533.P8121033836449266804

`Δ[A000010(A006511(n+1)-A196079(n+1))]`
-/

namespace A083533.P8121033836449266804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006511 (n + 1) - A196079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083533.P8121033836449266804

/-! ## A083533.P2484509728965645207

`Δ[A000010(A143423(n+1))]`
-/

namespace A083533.P2484509728965645207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A143423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083533.P2484509728965645207

/-! ## A083533.P5194997821780352646

`Δ[A000010(A006511(n+1))]`
-/

namespace A083533.P5194997821780352646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083533.P5194997821780352646

/-! ## A083533.P4681042485323721791

`Δ[lt[0, A014197(n+1)]]`
-/

namespace A083533.P4681042485323721791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083533.P4681042485323721791

/-! ## A083533.P7567183763554290928

`Δ[lt[0, A049283(n+1)]]`
-/

namespace A083533.P7567183763554290928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083533.P7567183763554290928

/-! ## A083533.P4911599498015582688

`Δ[lt[0, A057635(n+1)]]`
-/

namespace A083533.P4911599498015582688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083533.P4911599498015582688

/-! ## A083533.P5762657321184468738

`Δ[lt[1, A316665(n+1)]]`
-/

namespace A083533.P5762657321184468738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083533.P5762657321184468738

/-!
# A083534: First difference sequence of A007617. Difference between consecutive values not being in the range of phi (A000010).

The programs for A083534, the canonical program `A083534.P14032247145257894732` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083534 has offset 1).

The definition of A083534 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007617, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083534.P14032247145257894732

`A007617(n+2)-A007617(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A083534

/-- `A007617(n+2)-A007617(n+1)` -/
def P14032247145257894732.Spec : Prop :=
  ∀ n, P14032247145257894732.a n = A083534 (n + 1)

theorem P14032247145257894732.correct : P14032247145257894732.Spec := by
  intro n
  simp only [A083534, Nat.add_sub_cancel]

end A083534

/-! ## A083534.P16720325162513398618

`Δ[A007617(n+1)]`
-/

namespace A083534.P16720325162513398618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083534.P16720325162513398618

namespace A083534

/-- `Δ[A007617(n+1)]` -/
def P16720325162513398618.Spec : Prop :=
  ∀ n, P16720325162513398618.a n = A083534 (n + 1)

theorem P16720325162513398618.correct : P16720325162513398618.Spec := by
  intro n
  simp only [A083534, Nat.add_sub_cancel, A083534.P16720325162513398618.f1, A083534.P16720325162513398618.a, A083534.P14032247145257894732.a, SequenceMachineLib.memo_apply]

end A083534

/-! ## A083534.P6659402701075923938

`Δ[eq[0, A323169(n+1)]]`
-/

namespace A083534.P6659402701075923938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083534.P6659402701075923938

namespace A083534

/-- `Δ[eq[0, A323169(n+1)]]` -/
def P6659402701075923938.Spec : Prop :=
  ∀ n, P6659402701075923938.a n = A083534 (n + 1)

end A083534

/-! ## A083534.P1398181088397718506

`Δ[comp[A000010(n+1)-1]]`
-/

namespace A083534.P1398181088397718506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083534.P1398181088397718506

namespace A083534

/-- `Δ[comp[A000010(n+1)-1]]` -/
def P1398181088397718506.Spec : Prop :=
  ∀ n, P1398181088397718506.a n = A083534 (n + 1)

end A083534

/-! ## A083534.P10195907085446504515

`Δ[comp[A000010(n+3)%(n+1)]]`
-/

namespace A083534.P10195907085446504515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 3)) (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083534.P10195907085446504515

namespace A083534

/-- `Δ[comp[A000010(n+3)%(n+1)]]` -/
def P10195907085446504515.Spec : Prop :=
  ∀ n, P10195907085446504515.a n = A083534 (n + 1)

end A083534

/-! ## A083534.P900252829589013611

`A000010(A007617(n+2)%A007617(n+1)+1)`
-/

namespace A083534.P900252829589013611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A007617 (n + 2)) (A007617 (n + 1)) + 1).toNat

end

end A083534.P900252829589013611

namespace A083534

/-- `A000010(A007617(n+2)%A007617(n+1)+1)` -/
def P900252829589013611.Spec : Prop :=
  ∀ n, P900252829589013611.a n = A083534 (n + 1)

end A083534

/-! ## A083534.P10320728369986879334

`Δ[A264810(a(n-1)+1)+n+1]` with `a(0)=3`
-/

namespace A083534.P10320728369986879334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A264810 (f1 (n - 1) + 1).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083534.P10320728369986879334

namespace A083534

/-- `Δ[A264810(a(n-1)+1)+n+1]` -/
def P10320728369986879334.Spec : Prop :=
  ∀ n, P10320728369986879334.a n = A083534 (n + 1)

end A083534

/-! ## A083534.P3667949292389038996

`A264739(A007617(n+1)+1)+1`
-/

namespace A083534.P3667949292389038996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (A007617 (n + 1) + 1).toNat + 1

end

end A083534.P3667949292389038996

namespace A083534

/-- `A264739(A007617(n+1)+1)+1` -/
def P3667949292389038996.Spec : Prop :=
  ∀ n, P3667949292389038996.a n = A083534 (n + 1)

end A083534

/-! ## A083534.P11054386057393009281

`Δ[eq[0, A014197(n+1)]]`
-/

namespace A083534.P11054386057393009281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083534.P11054386057393009281

namespace A083534

/-- `Δ[eq[0, A014197(n+1)]]` -/
def P11054386057393009281.Spec : Prop :=
  ∀ n, P11054386057393009281.a n = A083534 (n + 1)

end A083534

/-! ## A083534.P14573310221295497979

`Δ[eq[1, A316665(n+1)]]`
-/

namespace A083534.P14573310221295497979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083534.P14573310221295497979

namespace A083534

/-- `Δ[eq[1, A316665(n+1)]]` -/
def P14573310221295497979.Spec : Prop :=
  ∀ n, P14573310221295497979.a n = A083534 (n + 1)

end A083534

/-! ## A083534.P13009326057964408183

`Δ[lt[A049283(n+1), 1]]`
-/

namespace A083534.P13009326057964408183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083534.P13009326057964408183

namespace A083534

/-- `Δ[lt[A049283(n+1), 1]]` -/
def P13009326057964408183.Spec : Prop :=
  ∀ n, P13009326057964408183.a n = A083534 (n + 1)

end A083534

/-! ## A083534.P3701340535761264042

`Δ[lt[A057635(n+1), 1]]`
-/

namespace A083534.P3701340535761264042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083534.P3701340535761264042

namespace A083534

/-- `Δ[lt[A057635(n+1), 1]]` -/
def P3701340535761264042.Spec : Prop :=
  ∀ n, P3701340535761264042.a n = A083534 (n + 1)

end A083534

/-!
# A083535: A version of the Chebyshev function theta(n): a(n) = ceiling(Sum_{primes p <= n } log(p)).

The programs for A083535, the canonical program `A083535.P10862675203601203932` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083535 has offset 1).

The definition of A083535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083535.P3281953925882410113

`ceil(∑[log(∏{d}[∑{p}[n+1, C(#, n)], #])])`
-/

namespace A083535.P3281953925882410113
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A083535.P3281953925882410113

namespace A083535

/-- `ceil(∑[log(∏{d}[∑{p}[n+1, C(#, n)], #])])` -/
def P3281953925882410113.Spec : Prop :=
  ∀ n, P3281953925882410113.a n = A083535 (n + 1)

end A083535

/-! ## A083535.P8941015594942360669

`ceil(∑[log(A089026(n+1))])`
-/

namespace A083535.P8941015594942360669
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A089026 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A083535.P8941015594942360669

namespace A083535

/-- `ceil(∑[log(A089026(n+1))])` -/
def P8941015594942360669.Spec : Prop :=
  ∀ n, P8941015594942360669.a n = A083535 (n + 1)

end A083535

/-! ## A083535.P1057951118290041412

`ceil(sqrt(A035158(n+1)²+n))`
-/

namespace A083535.P1057951118290041412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A035158 (n + 1) ^ 2 + (n : ℤ) : ℝ)⌉

end

end A083535.P1057951118290041412

namespace A083535

/-- `ceil(sqrt(A035158(n+1)²+n))` -/
def P1057951118290041412.Spec : Prop :=
  ∀ n, P1057951118290041412.a n = A083535 (n + 1)

end A083535

/-! ## A083535.P5841511696674513314

`ceil(∑[log(n*A010051(n+1)+1)])`
-/

namespace A083535.P5841511696674513314
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((n : ℤ) * A010051 (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A083535.P5841511696674513314

namespace A083535

/-- `ceil(∑[log(n*A010051(n+1)+1)])` -/
def P5841511696674513314.Spec : Prop :=
  ∀ n, P5841511696674513314.a n = A083535 (n + 1)

end A083535

/-! ## A083535.P12347232405745368612

`ceil(∑[log(n+1-n%(2-A000203(n+1)))])`
-/

namespace A083535.P12347232405745368612
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((n + 1 : ℤ) - Int.tmod (n : ℤ) (2 - A000203 (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A083535.P12347232405745368612

namespace A083535

/-- `ceil(∑[log(n+1-n%(2-A000203(n+1)))])` -/
def P12347232405745368612.Spec : Prop :=
  ∀ n, P12347232405745368612.a n = A083535 (n + 1)

end A083535

/-! ## A083535.P10862675203601203932

`A057427(n)+A035158(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083535

/-- `A057427(n)+A035158(n+1)` -/
def P10862675203601203932.Spec : Prop :=
  ∀ n, P10862675203601203932.a n = A083535 (n + 1)

theorem P10862675203601203932.correct : P10862675203601203932.Spec := by
  intro n
  simp only [A083535, Nat.add_sub_cancel]

end A083535

/-! ## A083535.P14495696762253812353

`A035158(n+1)-A057428(n)`
-/

namespace A083535.P14495696762253812353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035158 (n + 1) - A057428 n

end

end A083535.P14495696762253812353

namespace A083535

/-- `A035158(n+1)-A057428(n)` -/
def P14495696762253812353.Spec : Prop :=
  ∀ n, P14495696762253812353.a n = A083535 (n + 1)

end A083535

/-! ## A083535.P4662206574241974409

`ceil(log(A034386(n+1)))`
-/

namespace A083535.P4662206574241974409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A034386 (n + 1) : ℝ)⌉

end

end A083535.P4662206574241974409

namespace A083535

/-- `ceil(log(A034386(n+1)))` -/
def P4662206574241974409.Spec : Prop :=
  ∀ n, P4662206574241974409.a n = A083535 (n + 1)

end A083535

/-!
# A083536: First differences of noncototients A005278.

The programs for A083536, there is no canonical definition to state claims against.
-/

/-! ## A083536.P199636942454164702

`A005278(n+2)-A005278(n+1)`
-/

namespace A083536.P199636942454164702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 2) - A005278 (n + 1)

end

end A083536.P199636942454164702

/-! ## A083536.P2857612509157839239

`Δ[A005278(n+1)]`
-/

namespace A083536.P2857612509157839239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083536.P2857612509157839239

/-! ## A083536.P8760675555055283570

`Δ[2*A126887(n+1)]`
-/

namespace A083536.P8760675555055283570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083536.P8760675555055283570

/-! ## A083536.P7892450742460719475

`A005843(Δ[A126887(n+1)])`
-/

namespace A083536.P7892450742460719475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat

end

end A083536.P7892450742460719475

/-! ## A083536.P15729859909257839357

`Δ[eq[0, A063507(n+1)]]`
-/

namespace A083536.P15729859909257839357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083536.P15729859909257839357

/-! ## A083536.P17259819339471185235

`Δ[eq[0, A063740(n+2)]]`
-/

namespace A083536.P17259819339471185235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083536.P17259819339471185235

/-! ## A083536.P5064835305614326064

`Δ[eq[0, A063748(n+2)]]`
-/

namespace A083536.P5064835305614326064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063748 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083536.P5064835305614326064

/-!
# A083537: a(0) = a(1) = 0, a(2n) = a(n)+1, a(2n+1) = a(n-1).

The programs for A083537, the canonical program `A083537.P9698171235928535448` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083537 has offset 0).

The definition of A083537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083537.P9698171235928535448

`char[A109043(n)]+a(A028242(n)-1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083537

/-- `char[A109043(n)]+a(A028242(n)-1)` -/
def P9698171235928535448.Spec : Prop :=
  ∀ n, (P9698171235928535448.a n : ℤ) = A083537 n

theorem P9698171235928535448.correct : P9698171235928535448.Spec := by
  intro n
  simp only [A083537]

end A083537

/-! ## A083537.P12164391980004084355

`char[2*n]+a(val(A029744(n), 2))` with `a(0)=0`
-/

namespace A083537.P12164391980004084355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (SequenceMachineLib.valuation (A029744 n).toNat 2)

end

end A083537.P12164391980004084355

namespace A083537

/-- `char[2*n]+a(val(A029744(n), 2))` -/
def P12164391980004084355.Spec : Prop :=
  ∀ n, (P12164391980004084355.a n : ℤ) = A083537 n

end A083537

/-! ## A083537.P17441680791516932494

`A333806(∑[∏[A001055(n+1)]+1])`
-/

namespace A083537.P17441680791516932494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083537.P17441680791516932494

namespace A083537

/-- `A333806(∑[∏[A001055(n+1)]+1])` -/
def P17441680791516932494.Spec : Prop :=
  ∀ n, P17441680791516932494.a n = A083537 n

end A083537

/-! ## A083537.P505955842896411359

`A086967(A278114(n+1)+1)`
-/

namespace A083537.P505955842896411359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086967 (A278114 (n + 1) + 1).toNat

end

end A083537.P505955842896411359

namespace A083537

/-- `A086967(A278114(n+1)+1)` -/
def P505955842896411359.Spec : Prop :=
  ∀ n, P505955842896411359.a n = A083537 n

end A083537

/-! ## A083537.P12643022645162433227

`A124763(A366408(3*n+2))`
-/

namespace A083537.P12643022645162433227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A366408 (3 * n + 2)).toNat

end

end A083537.P12643022645162433227

namespace A083537

/-- `A124763(A366408(3*n+2))` -/
def P12643022645162433227.Spec : Prop :=
  ∀ n, P12643022645162433227.a n = A083537 n

end A083537

/-!
# A083538: a(n) = sigma(n)*sigma(n+1)/gcd(sigma(n+1), sigma(n))^2.

The programs for A083538, the canonical program `A083538.P2307610045054602990` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083538 has offset 1).

The definition of A083538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083538.P2307610045054602990

`A060781(n+1)/A060780(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083538

/-- `A060781(n+1)/A060780(n+1)` -/
def P2307610045054602990.Spec : Prop :=
  ∀ n, P2307610045054602990.a n = (A083538 (n + 1) : ℚ)

end A083538

/-! ## A083538.P7067872868231501487

`A060781(n+1)²/A083539(n+1)`
-/

namespace A083538.P7067872868231501487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060781 (n + 1) ^ 2 : ℚ) / (A083539 (n + 1) : ℚ)

end

end A083538.P7067872868231501487

namespace A083538

/-- `A060781(n+1)²/A083539(n+1)` -/
def P7067872868231501487.Spec : Prop :=
  ∀ n, P7067872868231501487.a n = (A083538 (n + 1) : ℚ)

end A083538

/-! ## A083538.P12720638823781888062

`A083539(n+1)/A060780(n+1)²`
-/

namespace A083538.P12720638823781888062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083539 (n + 1) : ℚ) / (A060780 (n + 1) ^ 2 : ℚ)

end

end A083538.P12720638823781888062

namespace A083538

/-- `A083539(n+1)/A060780(n+1)²` -/
def P12720638823781888062.Spec : Prop :=
  ∀ n, P12720638823781888062.a n = (A083538 (n + 1) : ℚ)

end A083538

/-! ## A083538.P6898934410550465802

`A060781(n+1)/gcd(A053222(n+1), A060781(n+1))`
-/

namespace A083538.P6898934410550465802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060781 (n + 1) : ℚ) / (Int.gcd (A053222 (n + 1)) (A060781 (n + 1)) : ℚ)

end

end A083538.P6898934410550465802

namespace A083538

/-- `A060781(n+1)/gcd(A053222(n+1), A060781(n+1))` -/
def P6898934410550465802.Spec : Prop :=
  ∀ n, P6898934410550465802.a n = (A083538 (n + 1) : ℚ)

end A083538

/-! ## A083538.P17982606012922099202

`lcm(A060781(n+1), A092403(n+1))/A092403(n+1)`
-/

namespace A083538.P17982606012922099202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A060781 (n + 1)) (A092403 (n + 1)) : ℚ) / (A092403 (n + 1) : ℚ)

end

end A083538.P17982606012922099202

namespace A083538

/-- `lcm(A060781(n+1), A092403(n+1))/A092403(n+1)` -/
def P17982606012922099202.Spec : Prop :=
  ∀ n, P17982606012922099202.a n = (A083538 (n + 1) : ℚ)

end A083538

/-! ## A083538.P428582413825327171

`A060781(A000027(n+1))*A060781(n+1)/A083539(n+1)`
-/

namespace A083538.P428582413825327171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060781 (A000027 (n + 1)).toNat * A060781 (n + 1) : ℚ) / (A083539 (n + 1) : ℚ)

end

end A083538.P428582413825327171

namespace A083538

/-- `A060781(A000027(n+1))*A060781(n+1)/A083539(n+1)` -/
def P428582413825327171.Spec : Prop :=
  ∀ n, P428582413825327171.a n = (A083538 (n + 1) : ℚ)

end A083538

/-! ## A083538.P3967333724369856834

`A060781(n+1)/A000027(A083539(n+1)/A060781(n+1))`
-/

namespace A083538.P3967333724369856834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060781 (n + 1) : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A083539 (n + 1) : ℚ) / (A060781 (n + 1) : ℚ))).toNat : ℚ)

end

end A083538.P3967333724369856834

namespace A083538

/-- `A060781(n+1)/A000027(A083539(n+1)/A060781(n+1))` -/
def P3967333724369856834.Spec : Prop :=
  ∀ n, P3967333724369856834.a n = (A083538 (n + 1) : ℚ)

end A083538

/-! ## A083538.P17796978519505750301

`A060781(n+1)²/(A064987(n+1)/(n+1)²*A334136(n+2))`
-/

namespace A083538.P17796978519505750301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060781 (n + 1) ^ 2 : ℚ) / ((A064987 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A334136 (n + 2) : ℚ))

end

end A083538.P17796978519505750301

namespace A083538

/-- `A060781(n+1)²/(A064987(n+1)/(n+1)²*A334136(n+2))` -/
def P17796978519505750301.Spec : Prop :=
  ∀ n, P17796978519505750301.a n = (A083538 (n + 1) : ℚ)

end A083538

/-! ## A083538.P1017165738106664067

`A064987(n+1)/(n+1)²*A334136(n+2)/A060780(n+1)²`
-/

namespace A083538.P1017165738106664067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A334136 (n + 2) : ℚ) / (A060780 (n + 1) ^ 2 : ℚ)

end

end A083538.P1017165738106664067

namespace A083538

/-- `A064987(n+1)/(n+1)²*A334136(n+2)/A060780(n+1)²` -/
def P1017165738106664067.Spec : Prop :=
  ∀ n, P1017165738106664067.a n = (A083538 (n + 1) : ℚ)

end A083538

/-! ## A083538.P10770807986316441176

`A000290(A060781(n+1))/A083539(A000027(n+1))`
-/

namespace A083538.P10770807986316441176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A060781 (n + 1)).toNat : ℚ) / (A083539 (A000027 (n + 1)).toNat : ℚ)

end

end A083538.P10770807986316441176

namespace A083538

/-- `A000290(A060781(n+1))/A083539(A000027(n+1))` -/
def P10770807986316441176.Spec : Prop :=
  ∀ n, P10770807986316441176.a n = (A083538 (n + 1) : ℚ)

end A083538

/-!
# A083539: a(n) = sigma(n) * sigma(n+1): product of sigma-values for consecutive integers.

The programs for A083539, the canonical program `A083539.P18082787048213749416` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083539 has offset 1).

The definition of A083539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083539.P18082787048213749416

`A000203(A002378(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083539

/-- `A000203(A002378(n+1))` -/
def P18082787048213749416.Spec : Prop :=
  ∀ n, P18082787048213749416.a n = A083539 (n + 1)

theorem P18082787048213749416.correct : P18082787048213749416.Spec := by
  intro n
  simp only [A083539, Nat.add_sub_cancel]

end A083539

/-! ## A083539.P4024563344913344819

`∑{d}[n+1, #]*∑{d}[n+2, #]`
-/

namespace A083539.P4024563344913344819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) * (∑ d ∈ Nat.divisors (f2 n), d)

end

end A083539.P4024563344913344819

namespace A083539

/-- `∑{d}[n+1, #]*∑{d}[n+2, #]` -/
def P4024563344913344819.Spec : Prop :=
  ∀ n, (P4024563344913344819.a n : ℤ) = A083539 (n + 1)

end A083539

/-! ## A083539.P15981127596575889971

`∏{d}[-a(n-1), A000203(#+n)]` with `a(0)=2`
-/

namespace A083539.P15981127596575889971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000203 (d + n)

end

end A083539.P15981127596575889971

namespace A083539

/-- `∏{d}[-a(n-1), A000203(#+n)]` -/
def P15981127596575889971.Spec : Prop :=
  ∀ n, P15981127596575889971.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P8597822084504883161

`A000203(n+2)*Δ[A160664(n)]`
-/

namespace A083539.P8597822084504883161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) * (f1 (n + 1) - f1 n)

end

end A083539.P8597822084504883161

namespace A083539

/-- `A000203(n+2)*Δ[A160664(n)]` -/
def P8597822084504883161.Spec : Prop :=
  ∀ n, P8597822084504883161.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P3289762556998184604

`A060780(n+1)*A060781(n+1)`
-/

namespace A083539.P3289762556998184604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (n + 1) * A060781 (n + 1)

end

end A083539.P3289762556998184604

namespace A083539

/-- `A060780(n+1)*A060781(n+1)` -/
def P3289762556998184604.Spec : Prop :=
  ∀ n, P3289762556998184604.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P6283989627587873481

`A000203(n+1)*A000203(n+2)`
-/

namespace A083539.P6283989627587873481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A000203 (n + 2)

end

end A083539.P6283989627587873481

namespace A083539

/-- `A000203(n+1)*A000203(n+2)` -/
def P6283989627587873481.Spec : Prop :=
  ∀ n, P6283989627587873481.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P4418676479326443460

`A060780(n+1)*A060780(n+1)*A083538(n+1)`
-/

namespace A083539.P4418676479326443460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (n + 1) * A060780 (n + 1) * A083538 (n + 1)

end

end A083539.P4418676479326443460

namespace A083539

/-- `A060780(n+1)*A060780(n+1)*A083538(n+1)` -/
def P4418676479326443460.Spec : Prop :=
  ∀ n, P4418676479326443460.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P18260742651974078300

`A060781(n+1)*A060781(n+1)/A083538(n+1)`
-/

namespace A083539.P18260742651974078300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060781 (n + 1) * A060781 (n + 1) : ℚ) / (A083538 (n + 1) : ℚ)

end

end A083539.P18260742651974078300

namespace A083539

/-- `A060781(n+1)*A060781(n+1)/A083538(n+1)` -/
def P18260742651974078300.Spec : Prop :=
  ∀ n, P18260742651974078300.a n = (A083539 (n + 1) : ℚ)

end A083539

/-! ## A083539.P7003671502111916939

`∑[A340793(n+1)]*Δ[A024916(n+1)]`
-/

namespace A083539.P7003671502111916939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A083539.P7003671502111916939

namespace A083539

/-- `∑[A340793(n+1)]*Δ[A024916(n+1)]` -/
def P7003671502111916939.Spec : Prop :=
  ∀ n, P7003671502111916939.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P16964592905800218362

`(A088580(n+1)-1)*Δ[A024916(n+1)]`
-/

namespace A083539.P16964592905800218362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * (f1 (n + 1) - f1 n)

end

end A083539.P16964592905800218362

namespace A083539

/-- `(A088580(n+1)-1)*Δ[A024916(n+1)]` -/
def P16964592905800218362.Spec : Prop :=
  ∀ n, P16964592905800218362.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P384741261098773935

`A274536(n+1)/6*Δ[A024916(n+1)]`
-/

namespace A083539.P384741261098773935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) : ℚ) / 6 * (f1 (n + 1) - f1 n : ℚ)

end

end A083539.P384741261098773935

namespace A083539

/-- `A274536(n+1)/6*Δ[A024916(n+1)]` -/
def P384741261098773935.Spec : Prop :=
  ∀ n, P384741261098773935.a n = (A083539 (n + 1) : ℚ)

end A083539

/-! ## A083539.P15729557629823697464

`A245092(2*n+1)*A245092(2*n+3)`
-/

namespace A083539.P15729557629823697464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) * A245092 (2 * n + 3)

end

end A083539.P15729557629823697464

namespace A083539

/-- `A245092(2*n+1)*A245092(2*n+3)` -/
def P15729557629823697464.Spec : Prop :=
  ∀ n, P15729557629823697464.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P7328401044205661646

`A064987(n+1)/(n+1)²*A334136(n+2)`
-/

namespace A083539.P7328401044205661646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A334136 (n + 2) : ℚ)

end

end A083539.P7328401044205661646

namespace A083539

/-- `A064987(n+1)/(n+1)²*A334136(n+2)` -/
def P7328401044205661646.Spec : Prop :=
  ∀ n, P7328401044205661646.a n = (A083539 (n + 1) : ℚ)

end A083539

/-! ## A083539.P4497791043909624091

`A064987(n+1)/A002378(n+1)*A064987(n+2)`
-/

namespace A083539.P4497791043909624091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A002378 (n + 1) : ℚ) * (A064987 (n + 2) : ℚ)

end

end A083539.P4497791043909624091

namespace A083539

/-- `A064987(n+1)/A002378(n+1)*A064987(n+2)` -/
def P4497791043909624091.Spec : Prop :=
  ∀ n, P4497791043909624091.a n = (A083539 (n + 1) : ℚ)

end A083539

/-! ## A083539.P8669894511384938846

`A272211(n+1)/A112773(n+2)*A272027(n+2)`
-/

namespace A083539.P8669894511384938846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272211 (n + 1) : ℚ) / (A112773 (n + 2) : ℚ) * (A272027 (n + 2) : ℚ)

end

end A083539.P8669894511384938846

namespace A083539

/-- `A272211(n+1)/A112773(n+2)*A272027(n+2)` -/
def P8669894511384938846.Spec : Prop :=
  ∀ n, P8669894511384938846.a n = (A083539 (n + 1) : ℚ)

end A083539

/-! ## A083539.P10672627933502865918

`A326065(2*(n+1))*A326065(2*(n+2))`
-/

namespace A083539.P10672627933502865918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * (n + 1)) * A326065 (2 * (n + 2))

end

end A083539.P10672627933502865918

namespace A083539

/-- `A326065(2*(n+1))*A326065(2*(n+2))` -/
def P10672627933502865918.Spec : Prop :=
  ∀ n, P10672627933502865918.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P1816654124713385464

`A262610(2*n+1)*A262610(2*n+3)`
-/

namespace A083539.P1816654124713385464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (2 * n + 1) * A262610 (2 * n + 3)

end

end A083539.P1816654124713385464

namespace A083539

/-- `A262610(2*n+1)*A262610(2*n+3)` -/
def P1816654124713385464.Spec : Prop :=
  ∀ n, P1816654124713385464.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P11032456284505588113

`∑{d}[∑[2*(n+1)], #]`
-/

namespace A083539.P11032456284505588113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A083539.P11032456284505588113

namespace A083539

/-- `∑{d}[∑[2*(n+1)], #]` -/
def P11032456284505588113.Spec : Prop :=
  ∀ n, (P11032456284505588113.a n : ℤ) = A083539 (n + 1)

end A083539

/-! ## A083539.P13634463242993405360

`A000203(∑[2*(n+1)])`
-/

namespace A083539.P13634463242993405360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083539.P13634463242993405360

namespace A083539

/-- `A000203(∑[2*(n+1)])` -/
def P13634463242993405360.Spec : Prop :=
  ∀ n, P13634463242993405360.a n = A083539 (n + 1)

end A083539

/-! ## A083539.P2148205244355225958

`root(A000203((n+1)²+n+1), 2)²`
-/

namespace A083539.P2148205244355225958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000203 ((n + 1) ^ 2 + (n + 1)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A083539.P2148205244355225958

namespace A083539

/-- `root(A000203((n+1)²+n+1), 2)²` -/
def P2148205244355225958.Spec : Prop :=
  ∀ n, P2148205244355225958.a n = (A083539 (n + 1) : ℝ)

end A083539

/-!
# A083540: Numbers k such that A083539(k) is a square; solutions x to sigma(x+1)*sigma(x)=y^2 for some y.

The programs for A083540, there is no canonical definition to state claims against.
-/

/-! ## A083540.P11399237019851556445

`eq[A355928(n+1), A355928(n+2)]+1`
-/

namespace A083540.P11399237019851556445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355928 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A083540.P11399237019851556445

/-!
# A083541: Values of y from solutions to sigma(x+1)*sigma(x)=y^2, where A083539(x) = y^2 is a square number.

The programs for A083541, there is no canonical definition to state claims against.
-/

/-! ## A083541.P10102977100045444927

`sqrt(A000203(A083540(n+1))*A000203(1+A083540(n+1)))`
-/

namespace A083541.P10102977100045444927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000203 (A083540 (n + 1)).toNat * A000203 (1 + A083540 (n + 1)).toNat : ℝ)

end

end A083541.P10102977100045444927

/-!
# A083542: a(n) = phi(n+1)*phi(n), product of totients of two consecutive integers.

The programs for A083542, the canonical program `A083542.P13241374269369926002` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083542 has offset 1).

The definition of A083542 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058515, A066813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083542.P13241374269369926002

`A058515(n+1)*A066813(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A083542

/-- `A058515(n+1)*A066813(n+1)` -/
def P13241374269369926002.Spec : Prop :=
  ∀ n, P13241374269369926002.a n = A083542 (n + 1)

theorem P13241374269369926002.correct : P13241374269369926002.Spec := by
  intro n
  simp only [A083542, Nat.add_sub_cancel]

end A083542

/-! ## A083542.P17896837636589262514

`A000010(A002378(n+1))`
-/

namespace A083542.P17896837636589262514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002378 (n + 1)).toNat

end

end A083542.P17896837636589262514

namespace A083542

/-- `A000010(A002378(n+1))` -/
def P17896837636589262514.Spec : Prop :=
  ∀ n, P17896837636589262514.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P4488347222886222171

`∏{d}[-a(n-1), A000010(#+n)]` with `a(0)=2`
-/

namespace A083542.P4488347222886222171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000010 (d + n)

end

end A083542.P4488347222886222171

namespace A083542

/-- `∏{d}[-a(n-1), A000010(#+n)]` -/
def P4488347222886222171.Spec : Prop :=
  ∀ n, P4488347222886222171.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P16043588312390074002

`A086700(n+1)*A130658(n)`
-/

namespace A083542.P16043588312390074002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086700 (n + 1) * A130658 n

end

end A083542.P16043588312390074002

namespace A083542

/-- `A086700(n+1)*A130658(n)` -/
def P16043588312390074002.Spec : Prop :=
  ∀ n, P16043588312390074002.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P3355174487480812862

`A000010(n+2)*Δ[A002088(n)]`
-/

namespace A083542.P3355174487480812862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) * (f1 (n + 1) - f1 n)

end

end A083542.P3355174487480812862

namespace A083542

/-- `A000010(n+2)*Δ[A002088(n)]` -/
def P3355174487480812862.Spec : Prop :=
  ∀ n, P3355174487480812862.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P7064288302594975058

`A000010(n+2)*Δ[A005728(n)]`
-/

namespace A083542.P7064288302594975058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) * (f1 (n + 1) - f1 n)

end

end A083542.P7064288302594975058

namespace A083542

/-- `A000010(n+2)*Δ[A005728(n)]` -/
def P7064288302594975058.Spec : Prop :=
  ∀ n, P7064288302594975058.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P10182748708010398752

`A000010(n+1)*A000010(n+2)`
-/

namespace A083542.P10182748708010398752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000010 (n + 2)

end

end A083542.P10182748708010398752

namespace A083542

/-- `A000010(n+1)*A000010(n+2)` -/
def P10182748708010398752.Spec : Prop :=
  ∀ n, P10182748708010398752.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P8527739554208046012

`A023022(n+2)*A140434(n+1)`
-/

namespace A083542.P8527739554208046012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2) * A140434 (n + 1)

end

end A083542.P8527739554208046012

namespace A083542

/-- `A023022(n+2)*A140434(n+1)` -/
def P8527739554208046012.Spec : Prop :=
  ∀ n, P8527739554208046012.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P6709775422752777790

`A055034(n+2)*A062570(n+1)`
-/

namespace A083542.P6709775422752777790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 2) * A062570 (n + 1)

end

end A083542.P6709775422752777790

namespace A083542

/-- `A055034(n+2)*A062570(n+1)` -/
def P6709775422752777790.Spec : Prop :=
  ∀ n, P6709775422752777790.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P12802698096775366763

`Δ[A015614(n+1)]*Δ[A002088(n)]`
-/

namespace A083542.P12802698096775366763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A083542.P12802698096775366763

namespace A083542

/-- `Δ[A015614(n+1)]*Δ[A002088(n)]` -/
def P12802698096775366763.Spec : Prop :=
  ∀ n, P12802698096775366763.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P1893560408687414866

`(A109606(n+1)+1)*Δ[A015614(n+1)]`
-/

namespace A083542.P1893560408687414866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * (f1 (n + 1) - f1 n)

end

end A083542.P1893560408687414866

namespace A083542

/-- `(A109606(n+1)+1)*Δ[A015614(n+1)]` -/
def P1893560408687414866.Spec : Prop :=
  ∀ n, P1893560408687414866.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P2254005776583381486

`(A039649(n+1)-1)*Δ[A015614(n+1)]`
-/

namespace A083542.P2254005776583381486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * (f1 (n + 1) - f1 n)

end

end A083542.P2254005776583381486

namespace A083542

/-- `(A039649(n+1)-1)*Δ[A015614(n+1)]` -/
def P2254005776583381486.Spec : Prop :=
  ∀ n, P2254005776583381486.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P14301671145465437769

`(A109606(n+1)+1)*(A039649(n+2)-1)`
-/

namespace A083542.P14301671145465437769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * (A039649 (n + 2) - 1)

end

end A083542.P14301671145465437769

namespace A083542

/-- `(A109606(n+1)+1)*(A039649(n+2)-1)` -/
def P14301671145465437769.Spec : Prop :=
  ∀ n, P14301671145465437769.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P10235499861924965442

`A002618(n+1)/A002378(n+1)*A002618(n+2)`
-/

namespace A083542.P10235499861924965442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A002378 (n + 1) : ℚ) * (A002618 (n + 2) : ℚ)

end

end A083542.P10235499861924965442

namespace A083542

/-- `A002618(n+1)/A002378(n+1)*A002618(n+2)` -/
def P10235499861924965442.Spec : Prop :=
  ∀ n, P10235499861924965442.a n = (A083542 (n + 1) : ℚ)

end A083542

/-! ## A083542.P3879625833090304178

`A002618(n+1)/A000217(n+1)*A023896(n+2)`
-/

namespace A083542.P3879625833090304178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ) * (A023896 (n + 2) : ℚ)

end

end A083542.P3879625833090304178

namespace A083542

/-- `A002618(n+1)/A000217(n+1)*A023896(n+2)` -/
def P3879625833090304178.Spec : Prop :=
  ∀ n, P3879625833090304178.a n = (A083542 (n + 1) : ℚ)

end A083542

/-! ## A083542.P1041608807545385351

`A127473(n+1)/A002618(n+1)*A062955(n+2)`
-/

namespace A083542.P1041608807545385351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127473 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ) * (A062955 (n + 2) : ℚ)

end

end A083542.P1041608807545385351

namespace A083542

/-- `A127473(n+1)/A002618(n+1)*A062955(n+2)` -/
def P1041608807545385351.Spec : Prop :=
  ∀ n, P1041608807545385351.a n = (A083542 (n + 1) : ℚ)

end A083542

/-! ## A083542.P4274370209141181795

`A075445(n+1)*A075447(n+1)*Δ[A015614(n+1)]`
-/

namespace A083542.P4274370209141181795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075445 (n + 1) * A075447 (n + 1) * (f1 (n + 1) - f1 n)

end

end A083542.P4274370209141181795

namespace A083542

/-- `A075445(n+1)*A075447(n+1)*Δ[A015614(n+1)]` -/
def P4274370209141181795.Spec : Prop :=
  ∀ n, P4274370209141181795.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P7898018785320132523

`A319210(2*n+3)/2`
-/

namespace A083542.P7898018785320132523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319210 (2 * n + 3) : ℚ) / 2

end

end A083542.P7898018785320132523

namespace A083542

/-- `A319210(2*n+3)/2` -/
def P7898018785320132523.Spec : Prop :=
  ∀ n, P7898018785320132523.a n = (A083542 (n + 1) : ℚ)

end A083542

/-! ## A083542.P9978352936546005056

`A055034(2*(n+1))*A055034(n+2)`
-/

namespace A083542.P9978352936546005056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * (n + 1)) * A055034 (n + 2)

end

end A083542.P9978352936546005056

namespace A083542

/-- `A055034(2*(n+1))*A055034(n+2)` -/
def P9978352936546005056.Spec : Prop :=
  ∀ n, P9978352936546005056.a n = A083542 (n + 1)

end A083542

/-! ## A083542.P8377522075825167543

`A023022(2*(n+2))*A062570(n+1)`
-/

namespace A083542.P8377522075825167543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (2 * (n + 2)) * A062570 (n + 1)

end

end A083542.P8377522075825167543

namespace A083542

/-- `A023022(2*(n+2))*A062570(n+1)` -/
def P8377522075825167543.Spec : Prop :=
  ∀ n, P8377522075825167543.a n = A083542 (n + 1)

end A083542

/-!
# A083544: a(n) = maximal value of the sum of Mobius function values over a block of n consecutive natural numbers.

The programs for A083544, there is no canonical definition to state claims against.
-/

/-! ## A083544.P1924751037859279183

`∑[C(A334361(2*n+1), A364103(n+1))]`
-/

namespace A083544.P1924751037859279183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334361 (2 * n + 1)).toNat (A364103 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083544.P1924751037859279183

/-! ## A083544.P17225304136233957672

`∑[C(A054991(3*(n+1)), A363900(5*n+1))]`
-/

namespace A083544.P17225304136233957672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054991 (3 * (n + 1))).toNat (A363900 (5 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083544.P17225304136233957672

/-! ## A083544.P1356465185916191931

`∑[A008966(A294897(A016861(n)))]`
-/

namespace A083544.P1356465185916191931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A294897 (A016861 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083544.P1356465185916191931

/-! ## A083544.P10967752234065416128

`∑[A036987(A076467(n+2)*A359241(n+1))]`
-/

namespace A083544.P10967752234065416128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A076467 (n + 2) * A359241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083544.P10967752234065416128

/-! ## A083544.P1472670517130761618

`∑[A198954(A121387(3*n+4)*A359241(n+1))]`
-/

namespace A083544.P1472670517130761618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A121387 (3 * n + 4) * A359241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083544.P1472670517130761618

/-!
# A083545: Numbers k such that the geometric mean of the Euler totient function of k and k+1 is an integer.

The programs for A083545, there is no canonical definition to state claims against.
-/

/-! ## A083545.P743046137109761328

`eq[1, A053610(A000010((n+2)*(n+1)))]+1`
-/

namespace A083545.P743046137109761328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (A000010 ((n + 2) * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083545.P743046137109761328

/-! ## A083545.P125101100745459045

`eq[2, A000122(A000010((n+1)*(n+2)))]+1`
-/

namespace A083545.P125101100745459045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000010 ((n + 1) * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083545.P125101100745459045

/-!
# A083546: The geometric mean of the Euler totient function of 2 consecutive integers {k, k+1} when it is an integer.

The programs for A083546, there is no canonical definition to state claims against.
-/

/-! ## A083546.P17151032237012993946

`A083542(A083545(n+1))^(1/2)`
-/

namespace A083546.P17151032237012993946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083542 (A083545 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A083546.P17151032237012993946

/-!
# A083548: Least common multiple of cototient values of consecutive integers.

The programs for A083548, the canonical program `A083548.P10089117968042998981` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083548 has offset 1).

The definition of A083548 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083548.P10089117968042998981

`lcm(A051953(n+1), A051953(n+2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A083548

/-- `lcm(A051953(n+1), A051953(n+2))` -/
def P10089117968042998981.Spec : Prop :=
  ∀ n, (P10089117968042998981.a n : ℤ) = A083548 (n + 1)

theorem P10089117968042998981.correct : P10089117968042998981.Spec := by
  intro n
  simp only [A083548, Nat.add_sub_cancel]

end A083548

/-! ## A083548.P14993574675964238962

`A049586(n)*A083549(n+1)`
-/

namespace A083548.P14993574675964238962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049586 n * A083549 (n + 1)

end

end A083548.P14993574675964238962

namespace A083548

/-- `A049586(n)*A083549(n+1)` -/
def P14993574675964238962.Spec : Prop :=
  ∀ n, P14993574675964238962.a n = A083548 (n + 1)

end A083548

/-! ## A083548.P18077363063870280368

`A082849(n+1)/A049586(n)`
-/

namespace A083548.P18077363063870280368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082849 (n + 1) : ℚ) / (A049586 n : ℚ)

end

end A083548.P18077363063870280368

namespace A083548

/-- `A082849(n+1)/A049586(n)` -/
def P18077363063870280368.Spec : Prop :=
  ∀ n, P18077363063870280368.a n = (A083548 (n + 1) : ℚ)

end A083548

/-! ## A083548.P15553026466042676037

`lcm(n+1-A000010(n+1), n+2-A000010(n+2))`
-/

namespace A083548.P15553026466042676037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - A000010 (n + 1)) ((n + 2 : ℤ) - A000010 (n + 2))

end

end A083548.P15553026466042676037

namespace A083548

/-- `lcm(n+1-A000010(n+1), n+2-A000010(n+2))` -/
def P15553026466042676037.Spec : Prop :=
  ∀ n, (P15553026466042676037.a n : ℤ) = A083548 (n + 1)

end A083548

/-! ## A083548.P14091501820466289302

`A051953(n+1)*A051953(n+2)/A049586(n)`
-/

namespace A083548.P14091501820466289302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) * A051953 (n + 2) : ℚ) / (A049586 n : ℚ)

end

end A083548.P14091501820466289302

namespace A083548

/-- `A051953(n+1)*A051953(n+2)/A049586(n)` -/
def P14091501820466289302.Spec : Prop :=
  ∀ n, P14091501820466289302.a n = (A083548 (n + 1) : ℚ)

end A083548

/-!
# A083549: Quotient if least common multiple (lcm) of cototient values of consecutive integers is divided by the greatest common divisor (gcd) of the same pair of consecutive numbers.

The programs for A083549, the canonical program `A083549.P10383271468232548209` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083549 has offset 1).

The definition of A083549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083549.P10383271468232548209

`lcm(A051953(n+1), A051953(n+2))/gcd(A051953(n+1), A051953(n+2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A083549

/-- `lcm(A051953(n+1), A051953(n+2))/gcd(A051953(n+1), A051953(n+2))` -/
def P10383271468232548209.Spec : Prop :=
  ∀ n, P10383271468232548209.a n = (A083549 (n + 1) : ℚ)

end A083549

/-! ## A083549.P7977387925089060211

`A083548(n+1)/A049586(n)`
-/

namespace A083549.P7977387925089060211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083548 (n + 1) : ℚ) / (A049586 n : ℚ)

end

end A083549.P7977387925089060211

namespace A083549

/-- `A083548(n+1)/A049586(n)` -/
def P7977387925089060211.Spec : Prop :=
  ∀ n, P7977387925089060211.a n = (A083549 (n + 1) : ℚ)

end A083549

/-! ## A083549.P10932402950820000386

`A082849(n+1)/A049586(n)²`
-/

namespace A083549.P10932402950820000386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082849 (n + 1) : ℚ) / (A049586 n ^ 2 : ℚ)

end

end A083549.P10932402950820000386

namespace A083549

/-- `A082849(n+1)/A049586(n)²` -/
def P10932402950820000386.Spec : Prop :=
  ∀ n, P10932402950820000386.a n = (A083549 (n + 1) : ℚ)

end A083549

/-! ## A083549.P8833184826597963878

`lcm(n+1-A000010(n+1), n+2-A000010(n+2))/A049586(n)`
-/

namespace A083549.P8833184826597963878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1 : ℤ) - A000010 (n + 1)) ((n + 2 : ℤ) - A000010 (n + 2)) : ℚ) / (A049586 n : ℚ)

end

end A083549.P8833184826597963878

namespace A083549

/-- `lcm(n+1-A000010(n+1), n+2-A000010(n+2))/A049586(n)` -/
def P8833184826597963878.Spec : Prop :=
  ∀ n, P8833184826597963878.a n = (A083549 (n + 1) : ℚ)

end A083549

/-! ## A083549.P4204808817276691345

`A083548(n+1)/gcd(n+1-A000010(n+1), n+2-A000010(n+2))`
-/

namespace A083549.P4204808817276691345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083548 (n + 1) : ℚ) / (Int.gcd ((n + 1 : ℤ) - A000010 (n + 1)) ((n + 2 : ℤ) - A000010 (n + 2)) : ℚ)

end

end A083549.P4204808817276691345

namespace A083549

/-- `A083548(n+1)/gcd(n+1-A000010(n+1), n+2-A000010(n+2))` -/
def P4204808817276691345.Spec : Prop :=
  ∀ n, P4204808817276691345.a n = (A083549 (n + 1) : ℚ)

end A083549

/-! ## A083549.P11269875175217321337

`lcm(A051953(n+1), A051953(n+2))/A049586(n)`
-/

namespace A083549.P11269875175217321337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A051953 (n + 1)) (A051953 (n + 2)) : ℚ) / (A049586 n : ℚ)

end

end A083549.P11269875175217321337

namespace A083549

/-- `lcm(A051953(n+1), A051953(n+2))/A049586(n)` -/
def P11269875175217321337.Spec : Prop :=
  ∀ n, P11269875175217321337.a n = (A083549 (n + 1) : ℚ)

end A083549

/-! ## A083549.P1073629873135963430

`A083548(n+1)/gcd(A051953(n+1), A051953(n+2))`
-/

namespace A083549.P1073629873135963430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083548 (n + 1) : ℚ) / (Int.gcd (A051953 (n + 1)) (A051953 (n + 2)) : ℚ)

end

end A083549.P1073629873135963430

namespace A083549

/-- `A083548(n+1)/gcd(A051953(n+1), A051953(n+2))` -/
def P1073629873135963430.Spec : Prop :=
  ∀ n, P1073629873135963430.a n = (A083549 (n + 1) : ℚ)

end A083549

/-! ## A083549.P4675791489666764955

`A319700(2*(n+1))*A319700(A103517(n+1))/A049586(n)²`
-/

namespace A083549.P4675791489666764955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319700 (2 * (n + 1)) * A319700 (A103517 (n + 1)).toNat : ℚ) / (A049586 n ^ 2 : ℚ)

end

end A083549.P4675791489666764955

namespace A083549

/-- `A319700(2*(n+1))*A319700(A103517(n+1))/A049586(n)²` -/
def P4675791489666764955.Spec : Prop :=
  ∀ n, P4675791489666764955.a n = (A083549 (n + 1) : ℚ)

end A083549

/-! ## A083549.P6348898533502254008

`A319700(2*(n+1))*A319700(A299232(n+2))/A049586(n)²`
-/

namespace A083549.P6348898533502254008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319700 (2 * (n + 1)) * A319700 (A299232 (n + 2)).toNat : ℚ) / (A049586 n ^ 2 : ℚ)

end

end A083549.P6348898533502254008

namespace A083549

/-- `A319700(2*(n+1))*A319700(A299232(n+2))/A049586(n)²` -/
def P6348898533502254008.Spec : Prop :=
  ∀ n, P6348898533502254008.a n = (A083549 (n + 1) : ℚ)

end A083549

/-!
# A083550: Product of 2 consecutive prime differences of two successive terms of A001223.

The programs for A083550, the canonical program `A083550.P10022725985667639331` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083550 has offset 1).

The definition of A083550 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083550.P10022725985667639331

`A001223(n+1)*A001223(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083550

/-- `A001223(n+1)*A001223(n+2)` -/
def P10022725985667639331.Spec : Prop :=
  ∀ n, P10022725985667639331.a n = A083550 (n + 1)

theorem P10022725985667639331.correct : P10022725985667639331.Spec := by
  intro n
  simp only [A083550, Nat.add_sub_cancel]

end A083550

/-! ## A083550.P7294881359693057840

`A057467(n+1)*A083551(n+1)`
-/

namespace A083550.P7294881359693057840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057467 (n + 1) * A083551 (n + 1)

end

end A083550.P7294881359693057840

namespace A083550

/-- `A057467(n+1)*A083551(n+1)` -/
def P7294881359693057840.Spec : Prop :=
  ∀ n, P7294881359693057840.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P3135995085162270110

`A057467(n+1)²*A083552(n+1)`
-/

namespace A083550.P3135995085162270110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057467 (n + 1) ^ 2 * A083552 (n + 1)

end

end A083550.P3135995085162270110

namespace A083550

/-- `A057467(n+1)²*A083552(n+1)` -/
def P3135995085162270110.Spec : Prop :=
  ∀ n, P3135995085162270110.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P3181334127951576415

`A083551(n+1)²/A083552(n+1)`
-/

namespace A083550.P3181334127951576415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) ^ 2 : ℚ) / (A083552 (n + 1) : ℚ)

end

end A083550.P3181334127951576415

namespace A083550

/-- `A083551(n+1)²/A083552(n+1)` -/
def P3181334127951576415.Spec : Prop :=
  ∀ n, P3181334127951576415.a n = (A083550 (n + 1) : ℚ)

end A083550

/-! ## A083550.P8709786669170553729

`gcd(A036263(n+1), A083551(n+1))*A083551(n+1)`
-/

namespace A083550.P8709786669170553729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A036263 (n + 1)) (A083551 (n + 1)) : ℤ) * A083551 (n + 1)

end

end A083550.P8709786669170553729

namespace A083550

/-- `gcd(A036263(n+1), A083551(n+1))*A083551(n+1)` -/
def P8709786669170553729.Spec : Prop :=
  ∀ n, P8709786669170553729.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P2301141284484237668

`Δ[A065091(n+1)]*A054541(n+2)`
-/

namespace A083550.P2301141284484237668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054541 (n + 2)

end

end A083550.P2301141284484237668

namespace A083550

/-- `Δ[A065091(n+1)]*A054541(n+2)` -/
def P2301141284484237668.Spec : Prop :=
  ∀ n, P2301141284484237668.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P10611901077764059074

`(A046933(n+2)+1)*A054541(n+2)`
-/

namespace A083550.P10611901077764059074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046933 (n + 2) + 1) * A054541 (n + 2)

end

end A083550.P10611901077764059074

namespace A083550

/-- `(A046933(n+2)+1)*A054541(n+2)` -/
def P10611901077764059074.Spec : Prop :=
  ∀ n, P10611901077764059074.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P16962843179842111273

`log2(A218075(n+1))*Δ[A065091(n+1)]`
-/

namespace A083550.P16962843179842111273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ) * (f1 (n + 1) - f1 n : ℝ)

end

end A083550.P16962843179842111273

namespace A083550

/-- `log2(A218075(n+1))*Δ[A065091(n+1)]` -/
def P16962843179842111273.Spec : Prop :=
  ∀ n, P16962843179842111273.a n = (A083550 (n + 1) : ℝ)

end A083550

/-! ## A083550.P9630905818732780104

`Δ[A000040(n+1)]*Δ[A065091(n+1)]`
-/

namespace A083550.P9630905818732780104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A083550.P9630905818732780104

namespace A083550

/-- `Δ[A000040(n+1)]*Δ[A065091(n+1)]` -/
def P9630905818732780104.Spec : Prop :=
  ∀ n, P9630905818732780104.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P8350043774245428967

`Δ[A006093(n+1)]*Δ[A065091(n+1)]`
-/

namespace A083550.P8350043774245428967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A083550.P8350043774245428967

namespace A083550

/-- `Δ[A006093(n+1)]*Δ[A065091(n+1)]` -/
def P8350043774245428967.Spec : Prop :=
  ∀ n, P8350043774245428967.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P1667476801846469761

`Δ[A040976(n+1)]*Δ[A065091(n+1)]`
-/

namespace A083550.P1667476801846469761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A083550.P1667476801846469761

namespace A083550

/-- `Δ[A040976(n+1)]*Δ[A065091(n+1)]` -/
def P1667476801846469761.Spec : Prop :=
  ∀ n, P1667476801846469761.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P18063864542685597657

`(Δ[A014689(n+1)]+1)*Δ[A065091(n+1)]`
-/

namespace A083550.P18063864542685597657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (f2 (n + 1) - f2 n)

end

end A083550.P18063864542685597657

namespace A083550

/-- `(Δ[A014689(n+1)]+1)*Δ[A065091(n+1)]` -/
def P18063864542685597657.Spec : Prop :=
  ∀ n, P18063864542685597657.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P7702143465006646115

`(Δ[A131733(n+1)]+2)*Δ[A065091(n+1)]`
-/

namespace A083550.P7702143465006646115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2) * (f2 (n + 1) - f2 n)

end

end A083550.P7702143465006646115

namespace A083550

/-- `(Δ[A131733(n+1)]+2)*Δ[A065091(n+1)]` -/
def P7702143465006646115.Spec : Prop :=
  ∀ n, P7702143465006646115.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P7366373531113230087

`(A031131(n+1)-A051702(n+2))*A051702(n+2)`
-/

namespace A083550.P7366373531113230087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031131 (n + 1) - A051702 (n + 2)) * A051702 (n + 2)

end

end A083550.P7366373531113230087

namespace A083550

/-- `(A031131(n+1)-A051702(n+2))*A051702(n+2)` -/
def P7366373531113230087.Spec : Prop :=
  ∀ n, P7366373531113230087.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P1302162958531516253

`(A135731(n+2)-A008864(n+2))*A054541(n+2)`
-/

namespace A083550.P1302162958531516253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135731 (n + 2) - A008864 (n + 2)) * A054541 (n + 2)

end

end A083550.P1302162958531516253

namespace A083550

/-- `(A135731(n+2)-A008864(n+2))*A054541(n+2)` -/
def P1302162958531516253.Spec : Prop :=
  ∀ n, P1302162958531516253.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P5214010512239899811

`(A135731(n+2)-A055670(n+2))*A054541(n+2)`
-/

namespace A083550.P5214010512239899811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135731 (n + 2) - A055670 (n + 2)) * A054541 (n + 2)

end

end A083550.P5214010512239899811

namespace A083550

/-- `(A135731(n+2)-A055670(n+2))*A054541(n+2)` -/
def P5214010512239899811.Spec : Prop :=
  ∀ n, P5214010512239899811.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P9577405848296435672

`A291463(n+1)/A006094(n+1)*A291463(n+2)`
-/

namespace A083550.P9577405848296435672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) : ℚ) / (A006094 (n + 1) : ℚ) * (A291463 (n + 2) : ℚ)

end

end A083550.P9577405848296435672

namespace A083550

/-- `A291463(n+1)/A006094(n+1)*A291463(n+2)` -/
def P9577405848296435672.Spec : Prop :=
  ∀ n, P9577405848296435672.a n = (A083550 (n + 1) : ℚ)

end A083550

/-! ## A083550.P7787959529449640215

`A075526(n+1)*A075526(n+2)`
-/

namespace A083550.P7787959529449640215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1) * A075526 (n + 2)

end

end A083550.P7787959529449640215

namespace A083550

/-- `A075526(n+1)*A075526(n+2)` -/
def P7787959529449640215.Spec : Prop :=
  ∀ n, P7787959529449640215.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P12395140158829172973

`A054541(n+2)*A054541(n+3)`
-/

namespace A083550.P12395140158829172973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) * A054541 (n + 3)

end

end A083550.P12395140158829172973

namespace A083550

/-- `A054541(n+2)*A054541(n+3)` -/
def P12395140158829172973.Spec : Prop :=
  ∀ n, P12395140158829172973.a n = A083550 (n + 1)

end A083550

/-! ## A083550.P11149370605400115083

`A125266(n+2)*A125266(n+3)`
-/

namespace A083550.P11149370605400115083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2) * A125266 (n + 3)

end

end A083550.P11149370605400115083

namespace A083550

/-- `A125266(n+2)*A125266(n+3)` -/
def P11149370605400115083.Spec : Prop :=
  ∀ n, P11149370605400115083.a n = A083550 (n + 1)

end A083550

/-!
# A083551: Least common multiple of 2 consecutive prime differences, of two successive terms of A001223.

The programs for A083551, the canonical program `A083551.P5233934583423530355` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083551 has offset 1).

The definition of A083551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083551.P5233934583423530355

`lcm(A001223(n+1), A001223(n+2))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083551

/-- `lcm(A001223(n+1), A001223(n+2))` -/
def P5233934583423530355.Spec : Prop :=
  ∀ n, (P5233934583423530355.a n : ℤ) = A083551 (n + 1)

theorem P5233934583423530355.correct : P5233934583423530355.Spec := by
  intro n
  simp only [A083551, Nat.add_sub_cancel]

end A083551

/-! ## A083551.P9808418812729040169

`A057467(n+1)*A083552(n+1)`
-/

namespace A083551.P9808418812729040169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057467 (n + 1) * A083552 (n + 1)

end

end A083551.P9808418812729040169

namespace A083551

/-- `A057467(n+1)*A083552(n+1)` -/
def P9808418812729040169.Spec : Prop :=
  ∀ n, P9808418812729040169.a n = A083551 (n + 1)

end A083551

/-! ## A083551.P10097644792827079338

`A083550(n+1)/A057467(n+1)`
-/

namespace A083551.P10097644792827079338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083550 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A083551.P10097644792827079338

namespace A083551

/-- `A083550(n+1)/A057467(n+1)` -/
def P10097644792827079338.Spec : Prop :=
  ∀ n, P10097644792827079338.a n = (A083551 (n + 1) : ℚ)

end A083551

/-! ## A083551.P11420727399960552633

`A001223(n+1)/A057467(n+1)*A001223(n+2)`
-/

namespace A083551.P11420727399960552633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ) * (A001223 (n + 2) : ℚ)

end

end A083551.P11420727399960552633

namespace A083551

/-- `A001223(n+1)/A057467(n+1)*A001223(n+2)` -/
def P11420727399960552633.Spec : Prop :=
  ∀ n, P11420727399960552633.a n = (A083551 (n + 1) : ℚ)

end A083551

/-! ## A083551.P13353105818182657778

`lcm(A046933(n+2)+1, Δ[A175222(n+1)])`
-/

namespace A083551.P13353105818182657778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046933 (n + 2) + 1) (f1 (n + 1) - f1 n)

end

end A083551.P13353105818182657778

namespace A083551

/-- `lcm(A046933(n+2)+1, Δ[A175222(n+1)])` -/
def P13353105818182657778.Spec : Prop :=
  ∀ n, (P13353105818182657778.a n : ℤ) = A083551 (n + 1)

end A083551

/-! ## A083551.P13687183885277928716

`lcm(Δ[A006093(n+1)], A054541(n+3))`
-/

namespace A083551.P13687183885277928716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A054541 (n + 3))

end

end A083551.P13687183885277928716

namespace A083551

/-- `lcm(Δ[A006093(n+1)], A054541(n+3))` -/
def P13687183885277928716.Spec : Prop :=
  ∀ n, (P13687183885277928716.a n : ℤ) = A083551 (n + 1)

end A083551

/-! ## A083551.P12201700186602784259

`lcm(A262138(2*n+1)+A262138(2*(n+1)), A262138(2*n+1))`
-/

namespace A083551.P12201700186602784259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A262138 (2 * n + 1) + A262138 (2 * (n + 1))) (A262138 (2 * n + 1))

end

end A083551.P12201700186602784259

namespace A083551

/-- `lcm(A262138(2*n+1)+A262138(2*(n+1)), A262138(2*n+1))` -/
def P12201700186602784259.Spec : Prop :=
  ∀ n, (P12201700186602784259.a n : ℤ) = A083551 (n + 1)

end A083551

/-! ## A083551.P16718368428249588605

`lcm(A134735(2*(n+1)), A134735(A103517(n+1)))`
-/

namespace A083551.P16718368428249588605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134735 (2 * (n + 1))) (A134735 (A103517 (n + 1)).toNat)

end

end A083551.P16718368428249588605

namespace A083551

/-- `lcm(A134735(2*(n+1)), A134735(A103517(n+1)))` -/
def P16718368428249588605.Spec : Prop :=
  ∀ n, (P16718368428249588605.a n : ℤ) = A083551 (n + 1)

end A083551

/-! ## A083551.P7783850175564888217

`lcm(A219606(2*n+1), A219606(A005408(n+1)))`
-/

namespace A083551.P7783850175564888217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219606 (2 * n + 1)) (A219606 (A005408 (n + 1)).toNat)

end

end A083551.P7783850175564888217

namespace A083551

/-- `lcm(A219606(2*n+1), A219606(A005408(n+1)))` -/
def P7783850175564888217.Spec : Prop :=
  ∀ n, (P7783850175564888217.a n : ℤ) = A083551 (n + 1)

end A083551

/-! ## A083551.P10600167300637756295

`A001223(n+1)*A272863(n+1)`
-/

namespace A083551.P10600167300637756295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A272863 (n + 1)

end

end A083551.P10600167300637756295

namespace A083551

/-- `A001223(n+1)*A272863(n+1)` -/
def P10600167300637756295.Spec : Prop :=
  ∀ n, P10600167300637756295.a n = A083551 (n + 1)

end A083551

/-! ## A083551.P8111249207565435125

`A001223(n+2)*A274225(n+1)`
-/

namespace A083551.P8111249207565435125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) * A274225 (n + 1)

end

end A083551.P8111249207565435125

namespace A083551

/-- `A001223(n+2)*A274225(n+1)` -/
def P8111249207565435125.Spec : Prop :=
  ∀ n, P8111249207565435125.a n = A083551 (n + 1)

end A083551

/-! ## A083551.P11443667100278424300

`A054541(n+3)*A274225(n+1)`
-/

namespace A083551.P11443667100278424300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 3) * A274225 (n + 1)

end

end A083551.P11443667100278424300

namespace A083551

/-- `A054541(n+3)*A274225(n+1)` -/
def P11443667100278424300.Spec : Prop :=
  ∀ n, P11443667100278424300.a n = A083551 (n + 1)

end A083551

/-! ## A083551.P6098279685397099612

`Δ[A000040(n+1)]*A272863(n+1)`
-/

namespace A083551.P6098279685397099612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A272863 (n + 1)

end

end A083551.P6098279685397099612

namespace A083551

/-- `Δ[A000040(n+1)]*A272863(n+1)` -/
def P6098279685397099612.Spec : Prop :=
  ∀ n, P6098279685397099612.a n = A083551 (n + 1)

end A083551

/-! ## A083551.P15337680074312523803

`Δ[A065091(n+1)]*A274225(n+1)`
-/

namespace A083551.P15337680074312523803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A274225 (n + 1)

end

end A083551.P15337680074312523803

namespace A083551

/-- `Δ[A065091(n+1)]*A274225(n+1)` -/
def P15337680074312523803.Spec : Prop :=
  ∀ n, P15337680074312523803.a n = A083551 (n + 1)

end A083551

/-! ## A083551.P12603182027304765453

`(A176246(n+1)+1)*A274225(n+1)`
-/

namespace A083551.P12603182027304765453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176246 (n + 1) + 1) * A274225 (n + 1)

end

end A083551.P12603182027304765453

namespace A083551

/-- `(A176246(n+1)+1)*A274225(n+1)` -/
def P12603182027304765453.Spec : Prop :=
  ∀ n, P12603182027304765453.a n = A083551 (n + 1)

end A083551

/-! ## A083551.P7709206136553641299

`A274225(n+1)+A046933(n+2)*A274225(n+1)`
-/

namespace A083551.P7709206136553641299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (n + 1) + A046933 (n + 2) * A274225 (n + 1)

end

end A083551.P7709206136553641299

namespace A083551

/-- `A274225(n+1)+A046933(n+2)*A274225(n+1)` -/
def P7709206136553641299.Spec : Prop :=
  ∀ n, P7709206136553641299.a n = A083551 (n + 1)

end A083551

/-! ## A083551.P9912788763689136365

`(A000040(n+2)-A000040(n+1))*A272863(n+1)`
-/

namespace A083551.P9912788763689136365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A000040 (n + 1)) * A272863 (n + 1)

end

end A083551.P9912788763689136365

namespace A083551

/-- `(A000040(n+2)-A000040(n+1))*A272863(n+1)` -/
def P9912788763689136365.Spec : Prop :=
  ∀ n, P9912788763689136365.a n = A083551 (n + 1)

end A083551

/-!
# A083552: Quotient when LCM of 2 consecutive prime differences is divided by GCD of the same two differences.

The programs for A083552, the canonical program `A083552.P3447721149402971387` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083552 has offset 1).

The definition of A083552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057467, A083551, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083552.P3447721149402971387

`A083551(n+1)/A057467(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A083552

/-- `A083551(n+1)/A057467(n+1)` -/
def P3447721149402971387.Spec : Prop :=
  ∀ n, P3447721149402971387.a n = (A083552 (n + 1) : ℚ)

end A083552

/-! ## A083552.P12863080250505866928

`lcm(A001223(n+1), A001223(n+2))/gcd(A001223(n+1), A001223(n+2))`
-/

namespace A083552.P12863080250505866928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001223 (n + 1)) (A001223 (n + 2)) : ℚ) / (Int.gcd (A001223 (n + 1)) (A001223 (n + 2)) : ℚ)

end

end A083552.P12863080250505866928

namespace A083552

/-- `lcm(A001223(n+1), A001223(n+2))/gcd(A001223(n+1), A001223(n+2))` -/
def P12863080250505866928.Spec : Prop :=
  ∀ n, P12863080250505866928.a n = (A083552 (n + 1) : ℚ)

end A083552

/-! ## A083552.P7788678309694736825

`A083550(n+1)/A057467(n+1)²`
-/

namespace A083552.P7788678309694736825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083550 (n + 1) : ℚ) / (A057467 (n + 1) ^ 2 : ℚ)

end

end A083552.P7788678309694736825

namespace A083552

/-- `A083550(n+1)/A057467(n+1)²` -/
def P7788678309694736825.Spec : Prop :=
  ∀ n, P7788678309694736825.a n = (A083552 (n + 1) : ℚ)

end A083552

/-! ## A083552.P12742433431195618653

`A083551(n+1)²/A083550(n+1)`
-/

namespace A083552.P12742433431195618653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) ^ 2 : ℚ) / (A083550 (n + 1) : ℚ)

end

end A083552.P12742433431195618653

namespace A083552

/-- `A083551(n+1)²/A083550(n+1)` -/
def P12742433431195618653.Spec : Prop :=
  ∀ n, P12742433431195618653.a n = (A083552 (n + 1) : ℚ)

end A083552

/-! ## A083552.P10191998749008668145

`A083551(n+1)/gcd(A036263(n+1), A083551(n+1))`
-/

namespace A083552.P10191998749008668145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (Int.gcd (A036263 (n + 1)) (A083551 (n + 1)) : ℚ)

end

end A083552.P10191998749008668145

namespace A083552

/-- `A083551(n+1)/gcd(A036263(n+1), A083551(n+1))` -/
def P10191998749008668145.Spec : Prop :=
  ∀ n, P10191998749008668145.a n = (A083552 (n + 1) : ℚ)

end A083552

/-! ## A083552.P3269178347517551474

`lcm(A001223(n+2), A001223(n+1))/A057467(n+1)`
-/

namespace A083552.P3269178347517551474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001223 (n + 2)) (A001223 (n + 1)) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A083552.P3269178347517551474

namespace A083552

/-- `lcm(A001223(n+2), A001223(n+1))/A057467(n+1)` -/
def P3269178347517551474.Spec : Prop :=
  ∀ n, P3269178347517551474.a n = (A083552 (n + 1) : ℚ)

end A083552

/-! ## A083552.P14409225203600671717

`A272863(n+1)*A274225(n+1)`
-/

namespace A083552.P14409225203600671717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272863 (n + 1) * A274225 (n + 1)

end

end A083552.P14409225203600671717

namespace A083552

/-- `A272863(n+1)*A274225(n+1)` -/
def P14409225203600671717.Spec : Prop :=
  ∀ n, P14409225203600671717.a n = A083552 (n + 1)

end A083552

/-! ## A083552.P7341008711883962379

`A274225(n+1)²*ratio[A001223(n+1)]`
-/

namespace A083552.P7341008711883962379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274225 (n + 1) ^ 2 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A083552.P7341008711883962379

namespace A083552

/-- `A274225(n+1)²*ratio[A001223(n+1)]` -/
def P7341008711883962379.Spec : Prop :=
  ∀ n, P7341008711883962379.a n = (A083552 (n + 1) : ℚ)

end A083552

/-! ## A083552.P5068354306385350966

`A272863(n+1)²/ratio[A001223(n+1)]`
-/

namespace A083552.P5068354306385350966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272863 (n + 1) ^ 2 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A083552.P5068354306385350966

namespace A083552

/-- `A272863(n+1)²/ratio[A001223(n+1)]` -/
def P5068354306385350966.Spec : Prop :=
  ∀ n, P5068354306385350966.a n = (A083552 (n + 1) : ℚ)

end A083552

/-! ## A083552.P11535696184883633944

`lcm(A272863(n+1), A274225(n+1))%A116570(n)`
-/

namespace A083552.P11535696184883633944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A272863 (n + 1)) (A274225 (n + 1)) : ℤ) (A116570 n)

end

end A083552.P11535696184883633944

namespace A083552

/-- `lcm(A272863(n+1), A274225(n+1))%A116570(n)` -/
def P11535696184883633944.Spec : Prop :=
  ∀ n, P11535696184883633944.a n = A083552 (n + 1)

end A083552

/-!
# A083553: Product of prime(n+1)-1 and prime(n)-1.

The programs for A083553, the canonical program `A083553.P14618886648007354780` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083553 has offset 1).

The definition of A083553 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037165, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083553.P14618886648007354780

`A037165(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083553

/-- `A037165(n+1)+1` -/
def P14618886648007354780.Spec : Prop :=
  ∀ n, P14618886648007354780.a n = A083553 (n + 1)

theorem P14618886648007354780.correct : P14618886648007354780.Spec := by
  intro n
  simp only [A083553, Nat.add_sub_cancel]

end A083553

/-! ## A083553.P16289267644314861896

`2*A099407(n+1)`
-/

namespace A083553.P16289267644314861896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099407 (n + 1)

end

end A083553.P16289267644314861896

namespace A083553

/-- `2*A099407(n+1)` -/
def P16289267644314861896.Spec : Prop :=
  ∀ n, P16289267644314861896.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P7681483436143776092

`A006093(n+2)*A006093(n+1)`
-/

namespace A083553.P7681483436143776092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) * A006093 (n + 1)

end

end A083553.P7681483436143776092

namespace A083553

/-- `A006093(n+2)*A006093(n+1)` -/
def P7681483436143776092.Spec : Prop :=
  ∀ n, P7681483436143776092.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P8617605475366738698

`2*(A201498(n+1)-3)`
-/

namespace A083553.P8617605475366738698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A201498 (n + 1) - 3)

end

end A083553.P8617605475366738698

namespace A083553

/-- `2*(A201498(n+1)-3)` -/
def P8617605475366738698.Spec : Prop :=
  ∀ n, P8617605475366738698.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P8102461882907679329

`floor((1-sqrt(A006094(n+1)))²)`
-/

namespace A083553.P8102461882907679329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - Real.sqrt (A006094 (n + 1) : ℝ)) ^ 2⌋

end

end A083553.P8102461882907679329

namespace A083553

/-- `floor((1-sqrt(A006094(n+1)))²)` -/
def P8102461882907679329.Spec : Prop :=
  ∀ n, P8102461882907679329.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P9308555746755682320

`A037167(n+1)-A006093(n+1)`
-/

namespace A083553.P9308555746755682320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - A006093 (n + 1)

end

end A083553.P9308555746755682320

namespace A083553

/-- `A037167(n+1)-A006093(n+1)` -/
def P9308555746755682320.Spec : Prop :=
  ∀ n, P9308555746755682320.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P4695673611281570551

`A005097(n+1)*A037168(n+1)`
-/

namespace A083553.P4695673611281570551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A037168 (n + 1)

end

end A083553.P4695673611281570551

namespace A083553

/-- `A005097(n+1)*A037168(n+1)` -/
def P4695673611281570551.Spec : Prop :=
  ∀ n, P4695673611281570551.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P18044322130910588378

`A058263(n+1)*A083554(n+1)`
-/

namespace A083553.P18044322130910588378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) * A083554 (n + 1)

end

end A083553.P18044322130910588378

namespace A083553

/-- `A058263(n+1)*A083554(n+1)` -/
def P18044322130910588378.Spec : Prop :=
  ∀ n, P18044322130910588378.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P11175929770128175241

`A058263(n+1)²*A083555(n+1)`
-/

namespace A083553.P11175929770128175241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) ^ 2 * A083555 (n + 1)

end

end A083553.P11175929770128175241

namespace A083553

/-- `A058263(n+1)²*A083555(n+1)` -/
def P11175929770128175241.Spec : Prop :=
  ∀ n, P11175929770128175241.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P10785989551435591787

`A083554(n+1)²/A083555(n+1)`
-/

namespace A083553.P10785989551435591787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083554 (n + 1) ^ 2 : ℚ) / (A083555 (n + 1) : ℚ)

end

end A083553.P10785989551435591787

namespace A083553

/-- `A083554(n+1)²/A083555(n+1)` -/
def P10785989551435591787.Spec : Prop :=
  ∀ n, P10785989551435591787.a n = (A083553 (n + 1) : ℚ)

end A083553

/-! ## A083553.P10225651733402262268

`A006094(n+1)+1-A001043(n+1)`
-/

namespace A083553.P10225651733402262268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (1 - A001043 (n + 1))

end

end A083553.P10225651733402262268

namespace A083553

/-- `A006094(n+1)+1-A001043(n+1)` -/
def P10225651733402262268.Spec : Prop :=
  ∀ n, P10225651733402262268.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P10459252332357711504

`A037167(n+1)+1-A000040(n+1)`
-/

namespace A083553.P10459252332357711504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) + (1 - A000040 (n + 1))

end

end A083553.P10459252332357711504

namespace A083553

/-- `A037167(n+1)+1-A000040(n+1)` -/
def P10459252332357711504.Spec : Prop :=
  ∀ n, P10459252332357711504.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P3537276549616721396

`A037166(n+1)+1-A065091(n+1)`
-/

namespace A083553.P3537276549616721396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + (1 - A065091 (n + 1))

end

end A083553.P3537276549616721396

namespace A083553

/-- `A037166(n+1)+1-A065091(n+1)` -/
def P3537276549616721396.Spec : Prop :=
  ∀ n, P3537276549616721396.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P564429399545733441

`A111071(n+1)+1-A096379(n+1)`
-/

namespace A083553.P564429399545733441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) + (1 - A096379 (n + 1))

end

end A083553.P564429399545733441

namespace A083553

/-- `A111071(n+1)+1-A096379(n+1)` -/
def P564429399545733441.Spec : Prop :=
  ∀ n, P564429399545733441.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P14748960056691302883

`A292926(n+1)+1-A034961(n+1)`
-/

namespace A083553.P14748960056691302883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) + (1 - A034961 (n + 1))

end

end A083553.P14748960056691302883

namespace A083553

/-- `A292926(n+1)+1-A034961(n+1)` -/
def P14748960056691302883.Spec : Prop :=
  ∀ n, P14748960056691302883.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P16539019834360897165

`A006094(n+1)+2-A092949(n+1)`
-/

namespace A083553.P16539019834360897165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (2 - A092949 (n + 1))

end

end A083553.P16539019834360897165

namespace A083553

/-- `A006094(n+1)+2-A092949(n+1)` -/
def P16539019834360897165.Spec : Prop :=
  ∀ n, P16539019834360897165.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P628971402623491747

`2*(A014303(n+1)-A005097(n+1))`
-/

namespace A083553.P628971402623491747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014303 (n + 1) - A005097 (n + 1))

end

end A083553.P628971402623491747

namespace A083553

/-- `2*(A014303(n+1)-A005097(n+1))` -/
def P628971402623491747.Spec : Prop :=
  ∀ n, P628971402623491747.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P18230049708340832280

`A037166(n+1)-2*A005097(n+1)`
-/

namespace A083553.P18230049708340832280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) - 2 * A005097 (n + 1)

end

end A083553.P18230049708340832280

namespace A083553

/-- `A037166(n+1)-2*A005097(n+1)` -/
def P18230049708340832280.Spec : Prop :=
  ∀ n, P18230049708340832280.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P14479008310778275882

`(A100484(n+1)-2)*A005097(n+1)`
-/

namespace A083553.P14479008310778275882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) - 2) * A005097 (n + 1)

end

end A083553.P14479008310778275882

namespace A083553

/-- `(A100484(n+1)-2)*A005097(n+1)` -/
def P14479008310778275882.Spec : Prop :=
  ∀ n, P14479008310778275882.a n = A083553 (n + 1)

end A083553

/-! ## A083553.P9769081912912119676

`(A175216(n+1)-2)*A165972(n+1)`
-/

namespace A083553.P9769081912912119676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175216 (n + 1) - 2) * A165972 (n + 1)

end

end A083553.P9769081912912119676

namespace A083553

/-- `(A175216(n+1)-2)*A165972(n+1)` -/
def P9769081912912119676.Spec : Prop :=
  ∀ n, P9769081912912119676.a n = A083553 (n + 1)

end A083553

/-!
# A083554: Least common multiple of prime(n+1)-1 and prime(n)-1.

The programs for A083554, the canonical program `A083554.P17846494229853685562` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083554 has offset 1).

The definition of A083554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083554.P17846494229853685562

`lcm(A006093(n+2), A006093(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083554

/-- `lcm(A006093(n+2), A006093(n+1))` -/
def P17846494229853685562.Spec : Prop :=
  ∀ n, (P17846494229853685562.a n : ℤ) = A083554 (n + 1)

theorem P17846494229853685562.correct : P17846494229853685562.Spec := by
  intro n
  simp only [A083554, Nat.add_sub_cancel]

end A083554

/-! ## A083554.P8733847072486336741

`A058263(n+1)*A083555(n+1)`
-/

namespace A083554.P8733847072486336741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) * A083555 (n + 1)

end

end A083554.P8733847072486336741

namespace A083554

/-- `A058263(n+1)*A083555(n+1)` -/
def P8733847072486336741.Spec : Prop :=
  ∀ n, P8733847072486336741.a n = A083554 (n + 1)

end A083554

/-! ## A083554.P2447973062259263486

`A083553(n+1)/A058263(n+1)`
-/

namespace A083554.P2447973062259263486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083553 (n + 1) : ℚ) / (A058263 (n + 1) : ℚ)

end

end A083554.P2447973062259263486

namespace A083554

/-- `A083553(n+1)/A058263(n+1)` -/
def P2447973062259263486.Spec : Prop :=
  ∀ n, P2447973062259263486.a n = (A083554 (n + 1) : ℚ)

end A083554

/-! ## A083554.P414338904454227021

`2/A058263(n+1)*A099407(n+1)`
-/

namespace A083554.P414338904454227021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A058263 (n + 1) : ℚ) * (A099407 (n + 1) : ℚ)

end

end A083554.P414338904454227021

namespace A083554

/-- `2/A058263(n+1)*A099407(n+1)` -/
def P414338904454227021.Spec : Prop :=
  ∀ n, P414338904454227021.a n = (A083554 (n + 1) : ℚ)

end A083554

/-! ## A083554.P9238564312390827166

`lcm(1-A000040(n+1), 1-A000040(n+2))`
-/

namespace A083554.P9238564312390827166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A000040 (n + 1)) (1 - A000040 (n + 2))

end

end A083554.P9238564312390827166

namespace A083554

/-- `lcm(1-A000040(n+1), 1-A000040(n+2))` -/
def P9238564312390827166.Spec : Prop :=
  ∀ n, (P9238564312390827166.a n : ℤ) = A083554 (n + 1)

end A083554

/-! ## A083554.P4135167257332947526

`A006093(n+1)/A058263(n+1)*A006093(n+2)`
-/

namespace A083554.P4135167257332947526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A058263 (n + 1) : ℚ) * (A006093 (n + 2) : ℚ)

end

end A083554.P4135167257332947526

namespace A083554

/-- `A006093(n+1)/A058263(n+1)*A006093(n+2)` -/
def P4135167257332947526.Spec : Prop :=
  ∀ n, P4135167257332947526.a n = (A083554 (n + 1) : ℚ)

end A083554

/-!
# A083555: Quotient of LCM of prime(n+1)-1 and prime(n)-1 and GCD of the same two numbers.

The programs for A083555, the canonical program `A083555.P12251096965399093067` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083555 has offset 1).

The definition of A083555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058263, A083554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083555.P12251096965399093067

`A083554(n+1)/A058263(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083555

/-- `A083554(n+1)/A058263(n+1)` -/
def P12251096965399093067.Spec : Prop :=
  ∀ n, P12251096965399093067.a n = (A083555 (n + 1) : ℚ)

end A083555

/-! ## A083555.P7365829747795450354

`lcm(A006093(n+2), A006093(n+1))/gcd(A006093(n+2), A006093(n+1))`
-/

namespace A083555.P7365829747795450354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006093 (n + 2)) (A006093 (n + 1)) : ℚ) / (Int.gcd (A006093 (n + 2)) (A006093 (n + 1)) : ℚ)

end

end A083555.P7365829747795450354

namespace A083555

/-- `lcm(A006093(n+2), A006093(n+1))/gcd(A006093(n+2), A006093(n+1))` -/
def P7365829747795450354.Spec : Prop :=
  ∀ n, P7365829747795450354.a n = (A083555 (n + 1) : ℚ)

end A083555

/-! ## A083555.P6076924184024732429

`A083553(n+1)/A058263(n+1)²`
-/

namespace A083555.P6076924184024732429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083553 (n + 1) : ℚ) / (A058263 (n + 1) ^ 2 : ℚ)

end

end A083555.P6076924184024732429

namespace A083555

/-- `A083553(n+1)/A058263(n+1)²` -/
def P6076924184024732429.Spec : Prop :=
  ∀ n, P6076924184024732429.a n = (A083555 (n + 1) : ℚ)

end A083555

/-! ## A083555.P12990625734309728265

`A083554(n+1)²/A083553(n+1)`
-/

namespace A083555.P12990625734309728265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083554 (n + 1) ^ 2 : ℚ) / (A083553 (n + 1) : ℚ)

end

end A083555.P12990625734309728265

namespace A083555

/-- `A083554(n+1)²/A083553(n+1)` -/
def P12990625734309728265.Spec : Prop :=
  ∀ n, P12990625734309728265.a n = (A083555 (n + 1) : ℚ)

end A083555

/-! ## A083555.P18312750562036656484

`2/A058263(n+1)²*A099407(n+1)`
-/

namespace A083555.P18312750562036656484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A058263 (n + 1) ^ 2 : ℚ) * (A099407 (n + 1) : ℚ)

end

end A083555.P18312750562036656484

namespace A083555

/-- `2/A058263(n+1)²*A099407(n+1)` -/
def P18312750562036656484.Spec : Prop :=
  ∀ n, P18312750562036656484.a n = (A083555 (n + 1) : ℚ)

end A083555

/-! ## A083555.P12732136426341173851

`A083554(n+1)/gcd(A001223(n+1), A006093(n+1))`
-/

namespace A083555.P12732136426341173851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083554 (n + 1) : ℚ) / (Int.gcd (A001223 (n + 1)) (A006093 (n + 1)) : ℚ)

end

end A083555.P12732136426341173851

namespace A083555

/-- `A083554(n+1)/gcd(A001223(n+1), A006093(n+1))` -/
def P12732136426341173851.Spec : Prop :=
  ∀ n, P12732136426341173851.a n = (A083555 (n + 1) : ℚ)

end A083555

/-! ## A083555.P4620472469027064114

`A083554(n+1)/A173751(A291463(n+1))`
-/

namespace A083555.P4620472469027064114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083554 (n + 1) : ℚ) / (A173751 (A291463 (n + 1)).toNat : ℚ)

end

end A083555.P4620472469027064114

namespace A083555

/-- `A083554(n+1)/A173751(A291463(n+1))` -/
def P4620472469027064114.Spec : Prop :=
  ∀ n, P4620472469027064114.a n = (A083555 (n + 1) : ℚ)

end A083555

/-!
# A083556: n-th Payam number E_{+}(n), defined as the smallest positive odd integer k such that for every positive integer n, the number k*2^n+1 is not divisible by any primes p such that the multiplicative order of 2 mod p is less than or equal to e.

The programs for A083556, there is no canonical definition to state claims against.
-/

/-! ## A083556.P6253590596167542695

`3*35%A000613(n+1)`
-/

namespace A083556.P6253590596167542695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod 35 (A000613 (n + 1))

end

end A083556.P6253590596167542695

/-! ## A083556.P17539811307015043557

`∑[A235706(record[A054589(2*n+1)])]`
-/

namespace A083556.P17539811307015043557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054589 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235706 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083556.P17539811307015043557

/-! ## A083556.P6204047083903571122

`105%A256882(A056295(2*(n+2)))`
-/

namespace A083556.P6204047083903571122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 105 (A256882 (A056295 (2 * (n + 2))).toNat)

end

end A083556.P6204047083903571122

/-! ## A083556.P11229584242430688014

`gcd(A335055(A335073(2*(n+1))), A335068(2*n+5))`
-/

namespace A083556.P11229584242430688014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335055 (A335073 (2 * (n + 1))).toNat) (A335068 (2 * n + 5))

end

end A083556.P11229584242430688014

/-!
# A083557: a(n) is the greatest prime factor of 3*a(n-1)+2.

The programs for A083557, the canonical program `A083557.P10939105980250947085` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083557 has offset 1).

The definition of A083557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083557.P10939105980250947085

`A076568(3*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A083557

/-- `A076568(3*a(n-1))` -/
def P10939105980250947085.Spec : Prop :=
  ∀ n, P10939105980250947085.a n = A083557 (n + 1)

theorem P10939105980250947085.correct : P10939105980250947085.Spec := by
  intro n
  simp only [A083557, Nat.add_sub_cancel]

end A083557

/-!
# A083558: p(p^2-p+1) as p runs through the primes.

The programs for A083558, the canonical program `A083558.P13428316401202771703` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083558 has offset 1).

The definition of A083558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A119959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083558.P13428316401202771703

`A000040(n+1)*A119959(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A083558

/-- `A000040(n+1)*A119959(n+1)` -/
def P13428316401202771703.Spec : Prop :=
  ∀ n, P13428316401202771703.a n = A083558 (n + 1)

theorem P13428316401202771703.correct : P13428316401202771703.Spec := by
  intro n
  simp only [A083558, Nat.add_sub_cancel]

end A083558

/-! ## A083558.P4183158756214860332

`A135177(n+1)+A000040(n+1)`
-/

namespace A083558.P4183158756214860332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) + A000040 (n + 1)

end

end A083558.P4183158756214860332

namespace A083558

/-- `A135177(n+1)+A000040(n+1)` -/
def P4183158756214860332.Spec : Prop :=
  ∀ n, P4183158756214860332.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P5324714123002636273

`A030078(n+1)-A036689(n+1)`
-/

namespace A083558.P5324714123002636273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A036689 (n + 1)

end

end A083558.P5324714123002636273

namespace A083558

/-- `A030078(n+1)-A036689(n+1)` -/
def P5324714123002636273.Spec : Prop :=
  ∀ n, P5324714123002636273.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P16228323437874185076

`A181150(n+1)-A066872(n+1)`
-/

namespace A083558.P16228323437874185076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) - A066872 (n + 1)

end

end A083558.P16228323437874185076

namespace A083558

/-- `A181150(n+1)-A066872(n+1)` -/
def P16228323437874185076.Spec : Prop :=
  ∀ n, P16228323437874185076.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P12306820302508831642

`A135178(n+1)-A117961(n+1)`
-/

namespace A083558.P12306820302508831642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - A117961 (n + 1)

end

end A083558.P12306820302508831642

namespace A083558

/-- `A135178(n+1)-A117961(n+1)` -/
def P12306820302508831642.Spec : Prop :=
  ∀ n, P12306820302508831642.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P17882370874978014008

`A178398(n+1)-A079705(n+1)`
-/

namespace A083558.P17882370874978014008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) - A079705 (n + 1)

end

end A083558.P17882370874978014008

namespace A083558

/-- `A178398(n+1)-A079705(n+1)` -/
def P17882370874978014008.Spec : Prop :=
  ∀ n, P17882370874978014008.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P16321860420060367502

`A181149(n+1)-A079704(n+1)`
-/

namespace A083558.P16321860420060367502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) - A079704 (n + 1)

end

end A083558.P16321860420060367502

namespace A083558

/-- `A181149(n+1)-A079704(n+1)` -/
def P16321860420060367502.Spec : Prop :=
  ∀ n, P16321860420060367502.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P7487794358479900307

`A135181(n+1)-A138404(n+1)`
-/

namespace A083558.P7487794358479900307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135181 (n + 1) - A138404 (n + 1)

end

end A083558.P7487794358479900307

namespace A083558

/-- `A135181(n+1)-A138404(n+1)` -/
def P7487794358479900307.Spec : Prop :=
  ∀ n, P7487794358479900307.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P7681581695373384254

`A050997(n+1)%A181151(n+1)`
-/

namespace A083558.P7681581695373384254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050997 (n + 1)) (A181151 (n + 1))

end

end A083558.P7681581695373384254

namespace A083558

/-- `A050997(n+1)%A181151(n+1)` -/
def P7681581695373384254.Spec : Prop :=
  ∀ n, P7681581695373384254.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P441037254680024349

`A135181(n+1)%A131991(n+1)`
-/

namespace A083558.P441037254680024349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135181 (n + 1)) (A131991 (n + 1))

end

end A083558.P441037254680024349

namespace A083558

/-- `A135181(n+1)%A131991(n+1)` -/
def P441037254680024349.Spec : Prop :=
  ∀ n, P441037254680024349.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P399537282592322041

`A244509(n+1)%A030078(n+1)`
-/

namespace A083558.P399537282592322041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244509 (n + 1)) (A030078 (n + 1))

end

end A083558.P399537282592322041

namespace A083558

/-- `A244509(n+1)%A030078(n+1)` -/
def P399537282592322041.Spec : Prop :=
  ∀ n, P399537282592322041.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P14173048636793033455

`A098935(n+1)%A181151(n+1)`
-/

namespace A083558.P14173048636793033455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098935 (n + 1)) (A181151 (n + 1))

end

end A083558.P14173048636793033455

namespace A083558

/-- `A098935(n+1)%A181151(n+1)` -/
def P14173048636793033455.Spec : Prop :=
  ∀ n, P14173048636793033455.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P777554104316265367

`A008864(n+1)+A135177(n+1)-1`
-/

namespace A083558.P777554104316265367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A135177 (n + 1) - 1)

end

end A083558.P777554104316265367

namespace A083558

/-- `A008864(n+1)+A135177(n+1)-1` -/
def P777554104316265367.Spec : Prop :=
  ∀ n, P777554104316265367.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P14130143378629552564

`A181150(n+1)-(A001248(n+1)+1)`
-/

namespace A083558.P14130143378629552564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) - (A001248 (n + 1) + 1)

end

end A083558.P14130143378629552564

namespace A083558

/-- `A181150(n+1)-(A001248(n+1)+1)` -/
def P14130143378629552564.Spec : Prop :=
  ∀ n, P14130143378629552564.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P14547690983786327359

`(A036689(n+1)+1)*A000040(n+1)`
-/

namespace A083558.P14547690983786327359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036689 (n + 1) + 1) * A000040 (n + 1)

end

end A083558.P14547690983786327359

namespace A083558

/-- `(A036689(n+1)+1)*A000040(n+1)` -/
def P14547690983786327359.Spec : Prop :=
  ∀ n, P14547690983786327359.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P14879056542588728224

`A006093(n+1)*A066872(n+1)+1`
-/

namespace A083558.P14879056542588728224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A066872 (n + 1) + 1

end

end A083558.P14879056542588728224

namespace A083558

/-- `A006093(n+1)*A066872(n+1)+1` -/
def P14879056542588728224.Spec : Prop :=
  ∀ n, P14879056542588728224.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P664253495390685422

`(A006093(n+1)+1)*A119959(n+1)`
-/

namespace A083558.P664253495390685422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A119959 (n + 1)

end

end A083558.P664253495390685422

namespace A083558

/-- `(A006093(n+1)+1)*A119959(n+1)` -/
def P664253495390685422.Spec : Prop :=
  ∀ n, P664253495390685422.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P17527911845259929477

`A181150(n+1)-(A084920(n+1)+2)`
-/

namespace A083558.P17527911845259929477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) - (A084920 (n + 1) + 2)

end

end A083558.P17527911845259929477

namespace A083558

/-- `A181150(n+1)-(A084920(n+1)+2)` -/
def P17527911845259929477.Spec : Prop :=
  ∀ n, P17527911845259929477.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P5813407681070032311

`(A008864(n+1)-1)*A119959(n+1)`
-/

namespace A083558.P5813407681070032311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A119959 (n + 1)

end

end A083558.P5813407681070032311

namespace A083558

/-- `(A008864(n+1)-1)*A119959(n+1)` -/
def P5813407681070032311.Spec : Prop :=
  ∀ n, P5813407681070032311.a n = A083558 (n + 1)

end A083558

/-! ## A083558.P8734082512833446702

`A000040(n+1)+2*A138416(n+1)`
-/

namespace A083558.P8734082512833446702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A138416 (n + 1)

end

end A083558.P8734082512833446702

namespace A083558

/-- `A000040(n+1)+2*A138416(n+1)` -/
def P8734082512833446702.Spec : Prop :=
  ∀ n, P8734082512833446702.a n = A083558 (n + 1)

end A083558

/-!
# A083559: Nearest integer to 1/(Sum_{k>=n} 1/k^4).

The programs for A083559, there is no canonical definition to state claims against.
-/

/-! ## A083559.P15092714234592946219

`A322811(A152225(n))+A063491(n+1)`
-/

namespace A083559.P15092714234592946219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A152225 n).toNat + A063491 (n + 1)

end

end A083559.P15092714234592946219

/-! ## A083559.P5632204700833400245

`A008620(A250120(n)+A000330(3*n+1))`
-/

namespace A083559.P5632204700833400245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A250120 n + A000330 (3 * n + 1)).toNat

end

end A083559.P5632204700833400245

/-! ## A083559.P17383201174222561838

`A063491(n+1)+A001221(A199005(n+1))`
-/

namespace A083559.P17383201174222561838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 1) + A001221 (A199005 (n + 1)).toNat

end

end A083559.P17383201174222561838

/-! ## A083559.P14899664743908571992

`A063491(n+1)+A007949(A000142(n))`
-/

namespace A083559.P14899664743908571992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 1) + A007949 (A000142 n).toNat

end

end A083559.P14899664743908571992

/-!
# A083560: Nearest integer to 1/sum(k>n,1/k^5).

The programs for A083560, there is no canonical definition to state claims against.
-/

/-! ## A083560.P10660878234597114197

`A313890(A045944(∑[n]))`
-/

namespace A083560.P10660878234597114197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313890 (A045944 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A083560.P10660878234597114197

/-!
# A083563: Number of binary rooted trees (every node has out-degree 0 or 2) with n labeled leaves (2n-1 nodes in all) and at most 2 distinct labels. Also the number of expressions in at most two variables constructible with n-1 instances of a single commutative and nonassociative binary operator.

The programs for A083563, there is no canonical definition to state claims against.
-/

/-! ## A083563.P7296240522731552930

`record[(A131127(n)-A134058(n))*A319539(n+1)]`
-/

namespace A083563.P7296240522731552930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131127 n - A134058 n) * A319539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083563.P7296240522731552930

/-! ## A083563.P2538387016582452181

`record[A319539(n+1)-A261275(n+2)]`
-/

namespace A083563.P2538387016582452181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (n + 1) - A261275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083563.P2538387016582452181

/-! ## A083563.P8308103703818897906

`record[A319539(n+1)-A319498(n+2)]`
-/

namespace A083563.P8308103703818897906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (n + 1) - A319498 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083563.P8308103703818897906

/-! ## A083563.P14575362716183797047

`record[A319539(n+1)-A131689(n+2)]`
-/

namespace A083563.P14575362716183797047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (n + 1) - A131689 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083563.P14575362716183797047

/-!
# A083564: a(n) = L(n)*L(2n), where L(n) are the Lucas numbers (A000204).

The programs for A083564, the canonical program `A083564.P10531687959549808781` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083564 has offset 1).

The definition of A083564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083564.P10531687959549808781

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=3, a(1)=21, a(2)=72, a(3)=329`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083564

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P10531687959549808781.Spec : Prop :=
  ∀ n, P10531687959549808781.a n = A083564 (n + 1)

theorem P10531687959549808781.correct : P10531687959549808781.Spec := by
  intro n
  simp only [A083564, Nat.add_sub_cancel]

end A083564

/-! ## A083564.P7643292691252388343

`A061084(n+2)+2*A001077(n+1)`
-/

namespace A083564.P7643292691252388343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 2) + 2 * A001077 (n + 1)

end

end A083564.P7643292691252388343

namespace A083564

/-- `A061084(n+2)+2*A001077(n+1)` -/
def P7643292691252388343.Spec : Prop :=
  ∀ n, P7643292691252388343.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P17747086957452123206

`A000045(4*(n+1))/A000045(n+1)`
-/

namespace A083564.P17747086957452123206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (4 * (n + 1)) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A083564.P17747086957452123206

namespace A083564

/-- `A000045(4*(n+1))/A000045(n+1)` -/
def P17747086957452123206.Spec : Prop :=
  ∀ n, P17747086957452123206.a n = (A083564 (n + 1) : ℚ)

end A083564

/-! ## A083564.P11011578512841148735

`A014448(n+1)-A075193(n)`
-/

namespace A083564.P11011578512841148735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 (n + 1) - A075193 n

end

end A083564.P11011578512841148735

namespace A083564

/-- `A014448(n+1)-A075193(n)` -/
def P11011578512841148735.Spec : Prop :=
  ∀ n, P11011578512841148735.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P17560020114702785033

`abs(A005248(n+1)*A075193(n))`
-/

namespace A083564.P17560020114702785033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005248 (n + 1) * A075193 n|

end

end A083564.P17560020114702785033

namespace A083564

/-- `abs(A005248(n+1)*A075193(n))` -/
def P17560020114702785033.Spec : Prop :=
  ∀ n, P17560020114702785033.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P7518822806949945234

`A000032(n+1)*Δ[A002878(n)]`
-/

namespace A083564.P7518822806949945234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (f1 (n + 1) - f1 n)

end

end A083564.P7518822806949945234

namespace A083564

/-- `A000032(n+1)*Δ[A002878(n)]` -/
def P7518822806949945234.Spec : Prop :=
  ∀ n, P7518822806949945234.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P4254166326206680402

`Δ[A002878(n)]*A000204(n+1)`
-/

namespace A083564.P4254166326206680402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000204 (n + 1)

end

end A083564.P4254166326206680402

namespace A083564

/-- `Δ[A002878(n)]*A000204(n+1)` -/
def P4254166326206680402.Spec : Prop :=
  ∀ n, P4254166326206680402.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P14530847221480472109

`Δ[A188378(n)]*A000204(n+1)`
-/

namespace A083564.P14530847221480472109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000204 (n + 1)

end

end A083564.P14530847221480472109

namespace A083564

/-- `Δ[A188378(n)]*A000204(n+1)` -/
def P14530847221480472109.Spec : Prop :=
  ∀ n, P14530847221480472109.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P8842660747121048469

`A061084(n+2)+A014448(n+1)`
-/

namespace A083564.P8842660747121048469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 2) + A014448 (n + 1)

end

end A083564.P8842660747121048469

namespace A083564

/-- `A061084(n+2)+A014448(n+1)` -/
def P8842660747121048469.Spec : Prop :=
  ∀ n, P8842660747121048469.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P5582458291306297023

`A000032(n+1)*A005248(n+1)`
-/

namespace A083564.P5582458291306297023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A005248 (n + 1)

end

end A083564.P5582458291306297023

namespace A083564

/-- `A000032(n+1)*A005248(n+1)` -/
def P5582458291306297023.Spec : Prop :=
  ∀ n, P5582458291306297023.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P10065320164773309443

`A000204(n+1)*A005248(n+1)`
-/

namespace A083564.P10065320164773309443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A005248 (n + 1)

end

end A083564.P10065320164773309443

namespace A083564

/-- `A000204(n+1)*A005248(n+1)` -/
def P10065320164773309443.Spec : Prop :=
  ∀ n, P10065320164773309443.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P17122458419834318866

`A061084(n+2)*A219233(n+1)`
-/

namespace A083564.P17122458419834318866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 2) * A219233 (n + 1)

end

end A083564.P17122458419834318866

namespace A083564

/-- `A061084(n+2)*A219233(n+1)` -/
def P17122458419834318866.Spec : Prop :=
  ∀ n, P17122458419834318866.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P9785974108008557847

`A000032(n+1)*A075270(2*n)`
-/

namespace A083564.P9785974108008557847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A075270 (2 * n)

end

end A083564.P9785974108008557847

namespace A083564

/-- `A000032(n+1)*A075270(2*n)` -/
def P9785974108008557847.Spec : Prop :=
  ∀ n, P9785974108008557847.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P4755117290593291226

`A000204(n+1)*A075270(2*n)`
-/

namespace A083564.P4755117290593291226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A075270 (2 * n)

end

end A083564.P4755117290593291226

namespace A083564

/-- `A000204(n+1)*A075270(2*n)` -/
def P4755117290593291226.Spec : Prop :=
  ∀ n, P4755117290593291226.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P10545407112040869738

`A082587(Δ[n²])*A082587(4*n)`
-/

namespace A083564.P10545407112040869738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A082587 (4 * n)

end

end A083564.P10545407112040869738

namespace A083564

/-- `A082587(Δ[n²])*A082587(4*n)` -/
def P10545407112040869738.Spec : Prop :=
  ∀ n, P10545407112040869738.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P1129899795993592460

`abs(A075193(2*n+1)*A075193(n))`
-/

namespace A083564.P1129899795993592460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 (2 * n + 1) * A075193 n|

end

end A083564.P1129899795993592460

namespace A083564

/-- `abs(A075193(2*n+1)*A075193(n))` -/
def P1129899795993592460.Spec : Prop :=
  ∀ n, P1129899795993592460.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P8323481349612583233

`Δ[A001610(2*n)]*(A001610(n)+1)`
-/

namespace A083564.P8323481349612583233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A001610 n + 1)

end

end A083564.P8323481349612583233

namespace A083564

/-- `Δ[A001610(2*n)]*(A001610(n)+1)` -/
def P8323481349612583233.Spec : Prop :=
  ∀ n, P8323481349612583233.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P8183536635200592345

`Δ[A075193(2*n)]*A000032(n+1)`
-/

namespace A083564.P8183536635200592345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000032 (n + 1)

end

end A083564.P8183536635200592345

namespace A083564

/-- `Δ[A075193(2*n)]*A000032(n+1)` -/
def P8183536635200592345.Spec : Prop :=
  ∀ n, P8183536635200592345.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P15417087902937709768

`record[A061084(n+3)]*A000204(n+1)`
-/

namespace A083564.P15417087902937709768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000204 (n + 1)

end

end A083564.P15417087902937709768

namespace A083564

/-- `record[A061084(n+3)]*A000204(n+1)` -/
def P15417087902937709768.Spec : Prop :=
  ∀ n, P15417087902937709768.a n = A083564 (n + 1)

end A083564

/-! ## A083564.P6179627248143191243

`Δ[A082587(2*n)]*A082587(4*n)`
-/

namespace A083564.P6179627248143191243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A082587 (4 * n)

end

end A083564.P6179627248143191243

namespace A083564

/-- `Δ[A082587(2*n)]*A082587(4*n)` -/
def P6179627248143191243.Spec : Prop :=
  ∀ n, P6179627248143191243.a n = A083564 (n + 1)

end A083564

/-!
# A083566: a(1) = 1; for n>1, a(n) = smallest odd number > a(n-1) such that a(1)*...*a(n) + 2 is a prime.

The programs for A083566, there is no canonical definition to state claims against.
-/

/-! ## A083566.P15514488380788402612

`A185284(A213600(3*(n+1)))+A073674(n+1)`
-/

namespace A083566.P15514488380788402612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A213600 (3 * (n + 1))).toNat + A073674 (n + 1)

end

end A083566.P15514488380788402612

/-! ## A083566.P6734269374002511501

`record[A073674(A077168(n))]`
-/

namespace A083566.P6734269374002511501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073674 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083566.P6734269374002511501

/-! ## A083566.P3281411511173780568

`A073674(A062399(n+1))`
-/

namespace A083566.P3281411511173780568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073674 (A062399 (n + 1)).toNat

end

end A083566.P3281411511173780568

/-! ## A083566.P1006058803582699652

`A073674(A120126(n+1))`
-/

namespace A083566.P1006058803582699652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073674 (A120126 (n + 1)).toNat

end

end A083566.P1006058803582699652

/-! ## A083566.P11543417470139646082

`A073674(A351870(n+1))`
-/

namespace A083566.P11543417470139646082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073674 (A351870 (n + 1)).toNat

end

end A083566.P11543417470139646082

/-!
# A083567: Let B(k) be the number of binary digits in k equal to 1. This is the sequence of positive integers k such that 2B(k)=B(k^2).

The programs for A083567, the canonical program `A083567.P14460311508063659607` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083567 has offset 1).

The definition of A083567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083567.P14460311508063659607

`eq[A000120(n+1), A232243(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A083567

/-- `eq[A000120(n+1), A232243(n+1)]+1` -/
def P14460311508063659607.Spec : Prop :=
  ∀ n, (P14460311508063659607.a n : ℤ) = A083567 (n + 1)

theorem P14460311508063659607.correct : P14460311508063659607.Spec := by
  intro n
  simp only [A083567, Nat.add_sub_cancel]

end A083567

/-! ## A083567.P13153747125069608410

`eq[A004277(A000120(n)), A159918(n)]`
-/

namespace A083567.P13153747125069608410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083567.P13153747125069608410

namespace A083567

/-- `eq[A004277(A000120(n)), A159918(n)]` -/
def P13153747125069608410.Spec : Prop :=
  ∀ n, (P13153747125069608410.a n : ℤ) = A083567 (n + 1)

end A083567

/-! ## A083567.P12383800356188789469

`eq[A028310(A000120(n)), A232243(n)]`
-/

namespace A083567.P12383800356188789469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083567.P12383800356188789469

namespace A083567

/-- `eq[A028310(A000120(n)), A232243(n)]` -/
def P12383800356188789469.Spec : Prop :=
  ∀ n, (P12383800356188789469.a n : ℤ) = A083567 (n + 1)

end A083567

/-! ## A083567.P617031701221209443

`eq[A000005(A151787(n+1)), A159918(n)]`
-/

namespace A083567.P617031701221209443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A151787 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083567.P617031701221209443

namespace A083567

/-- `eq[A000005(A151787(n+1)), A159918(n)]` -/
def P617031701221209443.Spec : Prop :=
  ∀ n, (P617031701221209443.a n : ℤ) = A083567 (n + 1)

end A083567

/-! ## A083567.P1725565613245974111

`eq[2*A000120(n), A159918(A028310(n))]`
-/

namespace A083567.P1725565613245974111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083567.P1725565613245974111

namespace A083567

/-- `eq[2*A000120(n), A159918(A028310(n))]` -/
def P1725565613245974111.Spec : Prop :=
  ∀ n, (P1725565613245974111.a n : ℤ) = A083567 (n + 1)

end A083567

/-! ## A083567.P5577202167287159047

`eq[2, A159918(n)/A000120(A028310(n))]`
-/

namespace A083567.P5577202167287159047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159918 n : ℚ) / (A000120 (A028310 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A083567.P5577202167287159047

namespace A083567

/-- `eq[2, A159918(n)/A000120(A028310(n))]` -/
def P5577202167287159047.Spec : Prop :=
  ∀ n, (P5577202167287159047.a n : ℤ) = A083567 (n + 1)

end A083567

/-! ## A083567.P11654338261614550562

`eq[A000120(A008574(n)), A232243(n)]`
-/

namespace A083567.P11654338261614550562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083567.P11654338261614550562

namespace A083567

/-- `eq[A000120(A008574(n)), A232243(n)]` -/
def P11654338261614550562.Spec : Prop :=
  ∀ n, (P11654338261614550562.a n : ℤ) = A083567 (n + 1)

end A083567

/-!
# A083569: Smallest m not occurring earlier such that m+n is prime.

The programs for A083569, there is no canonical definition to state claims against.
-/

/-! ## A083569.P3665735357725808546

`A084721(n+1)-(n+1)`
-/

namespace A083569.P3665735357725808546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084721 (n + 1) - (n + 1 : ℤ)

end

end A083569.P3665735357725808546

/-! ## A083569.P13449728316909673978

`A000010(A084721(n+1))-n`
-/

namespace A083569.P13449728316909673978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A084721 (n + 1)).toNat - (n : ℤ)

end

end A083569.P13449728316909673978

/-! ## A083569.P6694127174541221524

`A084721(n+1)+A001489(n+2)+1`
-/

namespace A083569.P6694127174541221524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084721 (n + 1) + A001489 (n + 2) + 1

end

end A083569.P6694127174541221524

/-! ## A083569.P10406069296225435086

`A023443(A084721(n+1)-n)`
-/

namespace A083569.P10406069296225435086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A084721 (n + 1) - (n : ℤ)).toNat

end

end A083569.P10406069296225435086

/-!
# A083570: A de Bruijn sequence of length 9 over {0, 1, 2}, repeated.

The programs for A083570, the canonical program `A083570.P10664603365140531933` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083570 has offset 0).

The definition of A083570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083570.P10664603365140531933

`((∑[∑[n]]+n)²-n)%3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083570

/-- `((∑[∑[n]]+n)²-n)%3` -/
def P10664603365140531933.Spec : Prop :=
  ∀ n, P10664603365140531933.a n = A083570 n

theorem P10664603365140531933.correct : P10664603365140531933.Spec := by
  intro n
  simp only [A083570]

end A083570

/-!
# A083572: Smaller of two consecutive star numbers (A000567) whose sum is a square.

The programs for A083572, there is no canonical definition to state claims against.
-/

/-! ## A083572.P7665836926391671538

`A000567(A220755(n+1))`
-/

namespace A083572.P7665836926391671538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A220755 (n + 1)).toNat

end

end A083572.P7665836926391671538

/-!
# A083573: Maximal number of subgroups in a non-Abelian group with n elements, or zero if there are no non-Abelian groups of order n.

The programs for A083573, there is no canonical definition to state claims against.
-/

/-! ## A083573.P5023763180076838133

`and(A066503(2*(n+1)), A128375(A001037(n)))`
-/

namespace A083573.P5023763180076838133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066503 (2 * (n + 1))) (A128375 (A001037 n).toNat)

end

end A083573.P5023763180076838133

/-!
# A083575: a(0) = 6; for n>0, a(n) = 2*a(n-1) - 1.

The programs for A083575, the canonical program `A083575.P14884547013397812456` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083575 has offset 0).

The definition of A083575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-1` (program `A083575.P14884547013397812456`, by `A083575.P14884547013397812456.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083575.P13566923010708472234

`5*2^n+1`
-/

namespace A083575.P13566923010708472234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 2 ^ n + 1

end

end A083575.P13566923010708472234

namespace A083575

/-- `5*2^n+1` -/
def P13566923010708472234.Spec : Prop :=
  ∀ n, (P13566923010708472234.a n : ℤ) = A083575 n

theorem P13566923010708472234.correct : P13566923010708472234.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083575, Nat.add_sub_cancel, A083575.P13566923010708472234.a, A083575.P14884547013397812456.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083575, Nat.add_sub_cancel, A083575.P13566923010708472234.a, A083575.P14884547013397812456.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083575

/-! ## A083575.P14884547013397812456

`2*a(n-1)-1` with `a(0)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083575

/-- `2*a(n-1)-1` -/
def P14884547013397812456.Spec : Prop :=
  ∀ n, P14884547013397812456.a n = A083575 n

theorem P14884547013397812456.correct : P14884547013397812456.Spec := by
  intro n
  simp only [A083575]

end A083575

/-! ## A083575.P15387344080206357625

`ogf((6-7x)/(1-3x+2x^2))`
-/

namespace A083575.P15387344080206357625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -7] [1, -3, 2] n

end

end A083575.P15387344080206357625

namespace A083575

/-- `ogf((6-7x)/(1-3x+2x^2))` -/
def P15387344080206357625.Spec : Prop :=
  ∀ n, P15387344080206357625.a n = A083575 n

end A083575

/-! ## A083575.P8629794645897537330

`∑[a(n-1)+a(n-1)]` with `a(0)=6, a(1)=5`
-/

namespace A083575.P8629794645897537330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 5] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083575.P8629794645897537330

namespace A083575

/-- `∑[a(n-1)+a(n-1)]` -/
def P8629794645897537330.Spec : Prop :=
  ∀ n, (P8629794645897537330.a n : ℤ) = A083575 n

end A083575

/-! ## A083575.P3293032567640300109

`floor(a(n-1)+a(n-1)-1)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A083575.P3293032567640300109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A083575.P3293032567640300109

namespace A083575

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P3293032567640300109.Spec : Prop :=
  ∀ n, P3293032567640300109.a n = A083575 n

theorem P3293032567640300109.correct : P3293032567640300109.Spec := by
  intro n
  simp only [A083575, Nat.add_sub_cancel, A083575.P3293032567640300109.a, A083575.P14884547013397812456.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083575

/-! ## A083575.P7568208045699656776

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A083575.P7568208045699656776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A083575.P7568208045699656776

namespace A083575

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P7568208045699656776.Spec : Prop :=
  ∀ n, P7568208045699656776.a n = A083575 n

theorem P7568208045699656776.correct : P7568208045699656776.Spec := by
  intro n
  simp only [A083575, Nat.add_sub_cancel, A083575.P7568208045699656776.a, A083575.P14884547013397812456.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083575

/-! ## A083575.P1630356604185594191

`∑[A287798(n+4)]`
-/

namespace A083575.P1630356604185594191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287798 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083575.P1630356604185594191

namespace A083575

/-- `∑[A287798(n+4)]` -/
def P1630356604185594191.Spec : Prop :=
  ∀ n, P1630356604185594191.a n = A083575 n

end A083575

/-! ## A083575.P408745931550603441

`record[A162396(n+1)+1]`
-/

namespace A083575.P408745931550603441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162396 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083575.P408745931550603441

namespace A083575

/-- `record[A162396(n+1)+1]` -/
def P408745931550603441.Spec : Prop :=
  ∀ n, P408745931550603441.a n = A083575 n

end A083575

/-! ## A083575.P14667912750928062000

`record[A163888(n+1)+1]`
-/

namespace A083575.P14667912750928062000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163888 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083575.P14667912750928062000

namespace A083575

/-- `record[A163888(n+1)+1]` -/
def P14667912750928062000.Spec : Prop :=
  ∀ n, P14667912750928062000.a n = A083575 n

end A083575

/-! ## A083575.P11436159382248466497

`record[1-Δ[Δ[A143095(n)]]]`
-/

namespace A083575.P11436159382248466497
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083575.P11436159382248466497

namespace A083575

/-- `record[1-Δ[Δ[A143095(n)]]]` -/
def P11436159382248466497.Spec : Prop :=
  ∀ n, P11436159382248466497.a n = A083575 n

end A083575

/-! ## A083575.P818499777351911539

`xor(A000051(n), A020707(n))`
-/

namespace A083575.P818499777351911539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 n) (A020707 n)

end

end A083575.P818499777351911539

namespace A083575

/-- `xor(A000051(n), A020707(n))` -/
def P818499777351911539.Spec : Prop :=
  ∀ n, P818499777351911539.a n = A083575 n

end A083575

/-! ## A083575.P15622051731616454737

`xor(A020737(n), A171559(n))`
-/

namespace A083575.P15622051731616454737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020737 n) (A171559 n)

end

end A083575.P15622051731616454737

namespace A083575

/-- `xor(A020737(n), A171559(n))` -/
def P15622051731616454737.Spec : Prop :=
  ∀ n, P15622051731616454737.a n = A083575 n

end A083575

/-! ## A083575.P6989917160795681510

`xor(A000051(n), A000079(n+2))`
-/

namespace A083575.P6989917160795681510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 n) (A000079 (n + 2))

end

end A083575.P6989917160795681510

namespace A083575

/-- `xor(A000051(n), A000079(n+2))` -/
def P6989917160795681510.Spec : Prop :=
  ∀ n, P6989917160795681510.a n = A083575 n

end A083575

/-! ## A083575.P16431717027090516335

`Δ[lcm(5, 2^n)+n]`
-/

namespace A083575.P16431717027090516335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (2 ^ n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083575.P16431717027090516335

namespace A083575

/-- `Δ[lcm(5, 2^n)+n]` -/
def P16431717027090516335.Spec : Prop :=
  ∀ n, P16431717027090516335.a n = A083575 n

end A083575

/-! ## A083575.P8250153814016236310

`Δ[or(n, 5*2^n)]`
-/

namespace A083575.P8250153814016236310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (5 * 2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083575.P8250153814016236310

namespace A083575

/-- `Δ[or(n, 5*2^n)]` -/
def P8250153814016236310.Spec : Prop :=
  ∀ n, P8250153814016236310.a n = A083575 n

end A083575

/-! ## A083575.P13269879576892064295

`Δ[xor(n, 5*2^n)]`
-/

namespace A083575.P13269879576892064295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (5 * 2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A083575.P13269879576892064295

namespace A083575

/-- `Δ[xor(n, 5*2^n)]` -/
def P13269879576892064295.Spec : Prop :=
  ∀ n, P13269879576892064295.a n = A083575 n

end A083575

/-! ## A083575.P3027038270932170702

`(A196305(n)+4)/3`
-/

namespace A083575.P3027038270932170702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196305 n + 4 : ℚ) / 3

end

end A083575.P3027038270932170702

namespace A083575

/-- `(A196305(n)+4)/3` -/
def P3027038270932170702.Spec : Prop :=
  ∀ n, P3027038270932170702.a n = (A083575 n : ℚ)

end A083575

/-! ## A083575.P16731103115477336537

`∪[A199115(n), A199209(n)]`
-/

namespace A083575.P16731103115477336537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083575.P16731103115477336537

namespace A083575

/-- `∪[A199115(n), A199209(n)]` -/
def P16731103115477336537.Spec : Prop :=
  ∀ n, (P16731103115477336537.a n : ℤ) = A083575 n

end A083575

/-! ## A083575.P711515102801451713

`A091307(n+1)%A164285(n)`
-/

namespace A083575.P711515102801451713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091307 (n + 1)) (A164285 n)

end

end A083575.P711515102801451713

namespace A083575

/-- `A091307(n+1)%A164285(n)` -/
def P711515102801451713.Spec : Prop :=
  ∀ n, P711515102801451713.a n = A083575 n

end A083575

/-! ## A083575.P4954686736220966912

`xor(A081808(n+1), A083705(n))`
-/

namespace A083575.P4954686736220966912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081808 (n + 1)) (A083705 n)

end

end A083575.P4954686736220966912

namespace A083575

/-- `xor(A081808(n+1), A083705(n))` -/
def P4954686736220966912.Spec : Prop :=
  ∀ n, P4954686736220966912.a n = A083575 n

end A083575

/-!
# A083577: Primes in A003154.

The programs for A083577, there is no canonical definition to state claims against.
-/

/-! ## A083577.P9168902549325291063

`A003154(A184899(n+1))`
-/

namespace A083577.P9168902549325291063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (A184899 (n + 1)).toNat

end

end A083577.P9168902549325291063

/-! ## A083577.P12672194832351037975

`A003154(A111292(n+1)+1)`
-/

namespace A083577.P12672194832351037975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (A111292 (n + 1) + 1).toNat

end

end A083577.P12672194832351037975

/-! ## A083577.P17645944082331366552

`A032528(A184899(n+1)+A111292(n+1))`
-/

namespace A083577.P17645944082331366552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (A184899 (n + 1) + A111292 (n + 1)).toNat

end

end A083577.P17645944082331366552

/-! ## A083577.P5968290630777144921

`A322462(A184899(n+1)+A111292(n+1))`
-/

namespace A083577.P5968290630777144921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 (A184899 (n + 1) + A111292 (n + 1)).toNat

end

end A083577.P5968290630777144921

/-! ## A083577.P2521442031392787566

`A032528(A111292(n+1)+A111292(n+1)+1)`
-/

namespace A083577.P2521442031392787566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (A111292 (n + 1) + (A111292 (n + 1) + 1)).toNat

end

end A083577.P2521442031392787566

/-! ## A083577.P9494477747564991004

`p?[12*C(n, 2)+1]`
-/

namespace A083577.P9494477747564991004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A083577.P9494477747564991004

/-! ## A083577.P13042801233678688772

`p?[or(1, 12*C(n, 2))]`
-/

namespace A083577.P13042801233678688772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (12 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A083577.P13042801233678688772

/-! ## A083577.P10362143513852402675

`p?[xor(1, 12*C(n, 2))]`
-/

namespace A083577.P10362143513852402675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (12 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A083577.P10362143513852402675

/-! ## A083577.P3111621661964167514

`p?[floor(3/2*n²)]`
-/

namespace A083577.P3111621661964167514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083577.P3111621661964167514

/-! ## A083577.P16703269545899523783

`or(1, p?[6*(n²+n)+1])`
-/

namespace A083577.P16703269545899523783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n ^ 2 + n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A083577.P16703269545899523783

/-! ## A083577.P14435720688957066361

`∏{p}[p?[6*(n²+n)+1], #]`
-/

namespace A083577.P14435720688957066361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n ^ 2 + n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A083577.P14435720688957066361

/-! ## A083577.P641441609419466943

`∑{p}[p?[(n+1)*6*n+1], #]`
-/

namespace A083577.P641441609419466943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (6 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A083577.P641441609419466943

/-! ## A083577.P13333498891385546266

`abs(p?[3*(n+1)*2*n+1]-2)+2`
-/

namespace A083577.P13333498891385546266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) * (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2| + 2

end

end A083577.P13333498891385546266

/-! ## A083577.P9157952133411892931

`record[p?[∑[A069480(n+1)]]]`
-/

namespace A083577.P9157952133411892931
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083577.P9157952133411892931

/-! ## A083577.P15525662415460008628

`xor(3, p?[3*A046092(n)+1]+1)`
-/

namespace A083577.P15525662415460008628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046092 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)

end

end A083577.P15525662415460008628

/-! ## A083577.P11105101232775149065

`or(p?[A032528(n)], A000007(n))`
-/

namespace A083577.P11105101232775149065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A083577.P11105101232775149065

/-! ## A083577.P3291436125943462782

`A322462(eq[1, ∑{e}[A322462(n), #]])`
-/

namespace A083577.P3291436125943462782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A083577.P3291436125943462782

/-! ## A083577.P12941871327616109777

`or(p?[A003154(n+1)], A118175(n))`
-/

namespace A083577.P12941871327616109777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A118175 n)

end

end A083577.P12941871327616109777

/-! ## A083577.P4180615704053265344

`p?[A143978(n+1)]%A212669(n+1)`
-/

namespace A083577.P4180615704053265344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A212669 (n + 1))

end

end A083577.P4180615704053265344

/-! ## A083577.P12643759247873947581

`p?[A003154(n+1)]%A003154(3*n+5)`
-/

namespace A083577.P12643759247873947581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A003154 (3 * n + 5))

end

end A083577.P12643759247873947581

/-!
# A083578: a(n) = (6^n + (-4)^n)/2.

The programs for A083578, the canonical program `A083578.P12510387591795755715` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083578 has offset 0).

The definition of A083578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083578.P12510387591795755715

`(6^n+(-4)^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083578

/-- `(6^n+(-4)^n)/2` -/
def P12510387591795755715.Spec : Prop :=
  ∀ n, P12510387591795755715.a n = (A083578 n : ℚ)

end A083578

/-! ## A083578.P10320511036955617524

`ogf((-1+x)/(-1+2x+24x^2))`
-/

namespace A083578.P10320511036955617524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -24] n

end

end A083578.P10320511036955617524

namespace A083578

/-- `ogf((-1+x)/(-1+2x+24x^2))` -/
def P10320511036955617524.Spec : Prop :=
  ∀ n, P10320511036955617524.a n = A083578 n

end A083578

/-! ## A083578.P236530226927005907

`2*(a(n-1)+12*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A083578.P236530226927005907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) + 12 * a (n - 2))

end

end A083578.P236530226927005907

namespace A083578

/-- `2*(a(n-1)+12*a(n-2))` -/
def P236530226927005907.Spec : Prop :=
  ∀ n, (P236530226927005907.a n : ℤ) = A083578 n

end A083578

/-! ## A083578.P3541951720871603683

`Δ[A051958(n)]`
-/

namespace A083578.P3541951720871603683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083578.P3541951720871603683

namespace A083578

/-- `Δ[A051958(n)]` -/
def P3541951720871603683.Spec : Prop :=
  ∀ n, P3541951720871603683.a n = A083578 n

end A083578

/-! ## A083578.P12358336474677687089

`2^(n-1)*A087451(n)`
-/

namespace A083578.P12358336474677687089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A087451 n : ℚ)

end

end A083578.P12358336474677687089

namespace A083578

/-- `2^(n-1)*A087451(n)` -/
def P12358336474677687089.Spec : Prop :=
  ∀ n, P12358336474677687089.a n = (A083578 n : ℚ)

end A083578

/-! ## A083578.P4327865494791803836

`Δ[2^(n-1)*A015441(n)]`
-/

namespace A083578.P4327865494791803836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A015441 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083578.P4327865494791803836

namespace A083578

/-- `Δ[2^(n-1)*A015441(n)]` -/
def P4327865494791803836.Spec : Prop :=
  ∀ n, P4327865494791803836.a n = (A083578 n : ℚ)

end A083578

/-! ## A083578.P18188978565588749928

`A051958(n+1)-A051958(n)`
-/

namespace A083578.P18188978565588749928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051958 (n + 1) - A051958 n

end

end A083578.P18188978565588749928

namespace A083578

/-- `A051958(n+1)-A051958(n)` -/
def P18188978565588749928.Spec : Prop :=
  ∀ n, P18188978565588749928.a n = A083578 n

end A083578

/-! ## A083578.P14040971852536379768

`Δ[Δ[A091002(n)]*A011782(n)]`
-/

namespace A083578.P14040971852536379768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083578.P14040971852536379768

namespace A083578

/-- `Δ[Δ[A091002(n)]*A011782(n)]` -/
def P14040971852536379768.Spec : Prop :=
  ∀ n, P14040971852536379768.a n = A083578 n

end A083578

/-! ## A083578.P2944182435765679482

`Δ[A000079(n)*A015441(n)/2]`
-/

namespace A083578.P2944182435765679482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A015441 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083578.P2944182435765679482

namespace A083578

/-- `Δ[A000079(n)*A015441(n)/2]` -/
def P2944182435765679482.Spec : Prop :=
  ∀ n, P2944182435765679482.a n = (A083578 n : ℚ)

end A083578

/-! ## A083578.P692366663460207116

`Δ[abs(A091005(n+1))*A011782(n)]`
-/

namespace A083578.P692366663460207116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091005 (n + 1)| * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083578.P692366663460207116

namespace A083578

/-- `Δ[abs(A091005(n+1))*A011782(n)]` -/
def P692366663460207116.Spec : Prop :=
  ∀ n, P692366663460207116.a n = A083578 n

end A083578

/-!
# A083579: Generalized Jacobsthal numbers.

The programs for A083579, the canonical program `A083579.P6049563469072497662` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083579 has offset 0).

The definition of A083579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083579.P6049563469072497662

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083579

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P6049563469072497662.Spec : Prop :=
  ∀ n, P6049563469072497662.a n = A083579 n

theorem P6049563469072497662.correct : P6049563469072497662.Spec := by
  intro n
  simp only [A083579]

end A083579

/-! ## A083579.P12882968786706074532

`(2^(n+3)-5*(-1)^n-3*(2*n+1))/12`
-/

namespace A083579.P12882968786706074532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 3) : ℤ) - 5 * (-1) ^ n - (3 * (2 * n + 1) : ℤ) : ℚ) / 12

end

end A083579.P12882968786706074532

namespace A083579

/-- `(2^(n+3)-5*(-1)^n-3*(2*n+1))/12` -/
def P12882968786706074532.Spec : Prop :=
  ∀ n, P12882968786706074532.a n = (A083579 n : ℚ)

theorem P12882968786706074532.correct : P12882968786706074532.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A083579, Nat.add_sub_cancel, A083579.P12882968786706074532.a, A083579.P6049563469072497662.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A083579, Nat.add_sub_cancel, A083579.P12882968786706074532.a, A083579.P6049563469072497662.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083579

/-! ## A083579.P10293130008188590397

`2^n-(a(n-1)+n)` with `a(0)=0`
-/

namespace A083579.P10293130008188590397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ n : ℤ) - (a (n - 1) + (n : ℤ))

end

end A083579.P10293130008188590397

namespace A083579

/-- `2^n-(a(n-1)+n)` -/
def P10293130008188590397.Spec : Prop :=
  ∀ n, P10293130008188590397.a n = A083579 n

end A083579

/-! ## A083579.P15331082542395578759

`2^n-a(n-1)-n` with `a(0)=0`
-/

namespace A083579.P15331082542395578759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ n : ℤ) - a (n - 1) - (n : ℤ)

end

end A083579.P15331082542395578759

namespace A083579

/-- `2^n-a(n-1)-n` -/
def P15331082542395578759.Spec : Prop :=
  ∀ n, P15331082542395578759.a n = A083579 n

end A083579

/-! ## A083579.P13194954903657869925

`ogf((x-2x^2+2x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A083579.P13194954903657869925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2] [1, -3, 1, 3, -2] n

end

end A083579.P13194954903657869925

namespace A083579

/-- `ogf((x-2x^2+2x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P13194954903657869925.Spec : Prop :=
  ∀ n, P13194954903657869925.a n = A083579 n

end A083579

/-! ## A083579.P17996688194808453617

`exp(n*log(2))-n-a(n-1)` with `a(0)=0`
-/

namespace A083579.P17996688194808453617
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.exp ((n : ℝ) * Real.log (2 : ℝ)) - (n : ℝ) - a (n - 1)

end

end A083579.P17996688194808453617

namespace A083579

/-- `exp(n*log(2))-n-a(n-1)` -/
def P17996688194808453617.Spec : Prop :=
  ∀ n, P17996688194808453617.a n = (A083579 n : ℝ)

end A083579

/-! ## A083579.P6256176664679816509

`a(n-1)+2*(a(n-2)-1)+n` with `a(0)=0, a(1)=1`
-/

namespace A083579.P6256176664679816509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (2 * (a (n - 2) - 1) + (n : ℤ))

end

end A083579.P6256176664679816509

namespace A083579

/-- `a(n-1)+2*(a(n-2)-1)+n` -/
def P6256176664679816509.Spec : Prop :=
  ∀ n, P6256176664679816509.a n = A083579 n

end A083579

/-! ## A083579.P3281412499992531312

`a(n-1)-(2*(1-a(n-2))-n)` with `a(0)=0, a(1)=1`
-/

namespace A083579.P3281412499992531312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (2 * (1 - a (n - 2)) - (n : ℤ))

end

end A083579.P3281412499992531312

namespace A083579

/-- `a(n-1)-(2*(1-a(n-2))-n)` -/
def P3281412499992531312.Spec : Prop :=
  ∀ n, P3281412499992531312.a n = A083579 n

end A083579

/-! ## A083579.P12559398924749851789

`a(n-1)+a(n-2)-2+a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A083579.P12559398924749851789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) - 2 + (a (n - 2) + (n : ℤ)))

end

end A083579.P12559398924749851789

namespace A083579

/-- `a(n-1)+a(n-2)-2+a(n-2)+n` -/
def P12559398924749851789.Spec : Prop :=
  ∀ n, P12559398924749851789.a n = A083579 n

end A083579

/-! ## A083579.P16699538137078000825

`a(n-1)-(2-a(n-2)-a(n-2)-n)` with `a(0)=0, a(1)=1`
-/

namespace A083579.P16699538137078000825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (2 - a (n - 2) - a (n - 2) - (n : ℤ))

end

end A083579.P16699538137078000825

namespace A083579

/-- `a(n-1)-(2-a(n-2)-a(n-2)-n)` -/
def P16699538137078000825.Spec : Prop :=
  ∀ n, P16699538137078000825.a n = A083579 n

end A083579

/-! ## A083579.P1925032611909477395

`∑[A155944(n)]-n`
-/

namespace A083579.P1925032611909477395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A083579.P1925032611909477395

namespace A083579

/-- `∑[A155944(n)]-n` -/
def P1925032611909477395.Spec : Prop :=
  ∀ n, P1925032611909477395.a n = A083579 n

end A083579

/-! ## A083579.P16042083965327158629

`∑[A097072(abs(1-n))]`
-/

namespace A083579.P16042083965327158629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097072 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083579.P16042083965327158629

namespace A083579

/-- `∑[A097072(abs(1-n))]` -/
def P16042083965327158629.Spec : Prop :=
  ∀ n, P16042083965327158629.a n = A083579 n

end A083579

/-! ## A083579.P10828816735468671901

`A000975(n)-floor(n/2)`
-/

namespace A083579.P10828816735468671901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - ⌊(n : ℚ) / 2⌋

end

end A083579.P10828816735468671901

namespace A083579

/-- `A000975(n)-floor(n/2)` -/
def P10828816735468671901.Spec : Prop :=
  ∀ n, P10828816735468671901.a n = A083579 n

end A083579

/-! ## A083579.P1657710352677549674

`floor(A014113(n)-n/2)`
-/

namespace A083579.P1657710352677549674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014113 n : ℚ) - (n : ℚ) / 2⌋

end

end A083579.P1657710352677549674

namespace A083579

/-- `floor(A014113(n)-n/2)` -/
def P1657710352677549674.Spec : Prop :=
  ∀ n, P1657710352677549674.a n = A083579 n

end A083579

/-! ## A083579.P3441785557214095680

`∑[A005578(n)]-or(1, n)`
-/

namespace A083579.P3441785557214095680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.lor 1 n : ℤ)

end

end A083579.P3441785557214095680

namespace A083579

/-- `∑[A005578(n)]-or(1, n)` -/
def P3441785557214095680.Spec : Prop :=
  ∀ n, P3441785557214095680.a n = A083579 n

end A083579

/-! ## A083579.P6938219719611706353

`A000295(n)+1-a(n-1)` with `a(0)=0`
-/

namespace A083579.P6938219719611706353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000295 n + (1 - a (n - 1))

end

end A083579.P6938219719611706353

namespace A083579

/-- `A000295(n)+1-a(n-1)` -/
def P6938219719611706353.Spec : Prop :=
  ∀ n, P6938219719611706353.a n = A083579 n

end A083579

/-! ## A083579.P11292416598342281028

`A112884(n)-A005578(n)`
-/

namespace A083579.P11292416598342281028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112884 n - A005578 n

end

end A083579.P11292416598342281028

namespace A083579

/-- `A112884(n)-A005578(n)` -/
def P11292416598342281028.Spec : Prop :=
  ∀ n, P11292416598342281028.a n = A083579 n

end A083579

/-! ## A083579.P251934043668179186

`A014113(n)-A110654(n)`
-/

namespace A083579.P251934043668179186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n - A110654 n

end

end A083579.P251934043668179186

namespace A083579

/-- `A014113(n)-A110654(n)` -/
def P251934043668179186.Spec : Prop :=
  ∀ n, P251934043668179186.a n = A083579 n

end A083579

/-! ## A083579.P17759202147249209265

`A084174(n)-A078008(n)`
-/

namespace A083579.P17759202147249209265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084174 n - A078008 n

end

end A083579.P17759202147249209265

namespace A083579

/-- `A084174(n)-A078008(n)` -/
def P17759202147249209265.Spec : Prop :=
  ∀ n, P17759202147249209265.a n = A083579 n

end A083579

/-! ## A083579.P1458170305022548589

`A097072(n)-A097065(n)`
-/

namespace A083579.P1458170305022548589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097072 n - A097065 n

end

end A083579.P1458170305022548589

namespace A083579

/-- `A097072(n)-A097065(n)` -/
def P1458170305022548589.Spec : Prop :=
  ∀ n, P1458170305022548589.a n = A083579 n

end A083579

/-!
# A083580: Binomial transform of A083579.

The programs for A083580, the canonical program `A083580.P88109042510966968` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083580 has offset 0).

The definition of A083580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083580.P88109042510966968

`Δ[ceil(2^(n-1)+3^(n-1))]-ceil((n+3)*2^(n-2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083580

/-- `Δ[ceil(2^(n-1)+3^(n-1))]-ceil((n+3)*2^(n-2))` -/
def P88109042510966968.Spec : Prop :=
  ∀ n, P88109042510966968.a n = A083580 n

theorem P88109042510966968.correct : P88109042510966968.Spec := by
  intro n
  simp only [A083580]

end A083580

/-! ## A083580.P8901542732840454032

`(A083587(n)-2^n)/2`
-/

namespace A083580.P8901542732840454032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083587 n - (2 ^ n : ℤ) : ℚ) / 2

end

end A083580.P8901542732840454032

namespace A083580

/-- `(A083587(n)-2^n)/2` -/
def P8901542732840454032.Spec : Prop :=
  ∀ n, P8901542732840454032.a n = (A083580 n : ℚ)

end A083580

/-! ## A083580.P12004972318240280569

`Δ[A133494(n)-A139756(n)]`
-/

namespace A083580.P12004972318240280569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n - A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083580.P12004972318240280569

namespace A083580

/-- `Δ[A133494(n)-A139756(n)]` -/
def P12004972318240280569.Spec : Prop :=
  ∀ n, P12004972318240280569.a n = A083580 n

end A083580

/-! ## A083580.P4104514583194677742

`(A083587(n)-A000079(n))*1/2`
-/

namespace A083580.P4104514583194677742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083587 n - A000079 n : ℚ) * ((1 : ℚ) / 2)

end

end A083580.P4104514583194677742

namespace A083580

/-- `(A083587(n)-A000079(n))*1/2` -/
def P4104514583194677742.Spec : Prop :=
  ∀ n, P4104514583194677742.a n = (A083580 n : ℚ)

end A083580

/-! ## A083580.P5096061579021978742

`Δ[A348937(A011782(n))]`
-/

namespace A083580.P5096061579021978742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083580.P5096061579021978742

namespace A083580

/-- `Δ[A348937(A011782(n))]` -/
def P5096061579021978742.Spec : Prop :=
  ∀ n, P5096061579021978742.a n = A083580 n

end A083580

/-!
# A083581: a(n) = 8/3 - 5*(-2)^n/3.

The programs for A083581, the canonical program `A083581.P12819166215264797593` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083581 has offset 0).

The definition of A083581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083581.P12819166215264797593

`(8-5*(-2)^n)/3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083581

/-- `(8-5*(-2)^n)/3` -/
def P12819166215264797593.Spec : Prop :=
  ∀ n, P12819166215264797593.a n = (A083581 n : ℚ)

end A083581

/-! ## A083581.P5729764270312681845

`8/3-5*(-2)^n/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083581.P5729764270312681845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) / 3 - (5 * (-2) ^ n : ℚ) / 3

end

end A083581.P5729764270312681845

namespace A083581

/-- `8/3-5*(-2)^n/3` -/
def P5729764270312681845.Spec : Prop :=
  ∀ n, P5729764270312681845.a n = (A083581 n : ℚ)

end A083581

/-! ## A083581.P14776938552653805762

`ogf((1+7x)/(1+x-2x^2))`
-/

namespace A083581.P14776938552653805762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 1, -2] n

end

end A083581.P14776938552653805762

namespace A083581

/-- `ogf((1+7x)/(1+x-2x^2))` -/
def P14776938552653805762.Spec : Prop :=
  ∀ n, P14776938552653805762.a n = A083581 n

end A083581

/-! ## A083581.P1820547450338403517

`2*(4-a(n-1))` with `a(0)=1`
-/

namespace A083581.P1820547450338403517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (4 - a (n - 1))

end

end A083581.P1820547450338403517

namespace A083581

/-- `2*(4-a(n-1))` -/
def P1820547450338403517.Spec : Prop :=
  ∀ n, P1820547450338403517.a n = A083581 n

end A083581

/-! ## A083581.P357213270755002639

`∑[-(2*a((2*n)%(n+1)))]` with `a(0)=1, a(1)=5`
-/

namespace A083581.P357213270755002639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  -(2 * f1 (2 * n % (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083581.P357213270755002639

namespace A083581

/-- `∑[-(2*a((2*n)%(n+1)))]` -/
def P357213270755002639.Spec : Prop :=
  ∀ n, P357213270755002639.a n = A083581 n

end A083581

/-! ## A083581.P10556547161934185952

`∑[Δ[A140360(n)]*A158388(n)]`
-/

namespace A083581.P10556547161934185952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A158388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083581.P10556547161934185952

namespace A083581

/-- `∑[Δ[A140360(n)]*A158388(n)]` -/
def P10556547161934185952.Spec : Prop :=
  ∀ n, P10556547161934185952.a n = A083581 n

end A083581

/-!
# A083582: a(n) = (8*2^n-5*(-1)^n)/3.

The programs for A083582, the canonical program `A083582.P12335341712514284667` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083582 has offset 0).

The definition of A083582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*2^n-5*(-1)^n)/3` (program `A083582.P12388877477477328907`, by `A083582.P12388877477477328907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083582.P12335341712514284667

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083582

/-- `a(n-1)+2*a(n-2)` -/
def P12335341712514284667.Spec : Prop :=
  ∀ n, (P12335341712514284667.a n : ℤ) = A083582 n

theorem P12335341712514284667.correct : P12335341712514284667.Spec := by
  intro n
  simp only [A083582]

end A083582

/-! ## A083582.P1679359155519821982

`6*A001045(n)+A001045(n+1)`
-/

namespace A083582.P1679359155519821982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001045 n + A001045 (n + 1)

end

end A083582.P1679359155519821982

namespace A083582

/-- `6*A001045(n)+A001045(n+1)` -/
def P1679359155519821982.Spec : Prop :=
  ∀ n, P1679359155519821982.a n = A083582 n

end A083582

/-! ## A083582.P12388877477477328907

`(8*2^n-5*(-1)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083582.P12388877477477328907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 2 ^ n : ℤ) - 5 * (-1) ^ n : ℚ) / 3

end

end A083582.P12388877477477328907

namespace A083582

/-- `(8*2^n-5*(-1)^n)/3` -/
def P12388877477477328907.Spec : Prop :=
  ∀ n, P12388877477477328907.a n = (A083582 n : ℚ)

theorem P12388877477477328907.correct : P12388877477477328907.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083582, Nat.add_sub_cancel, A083582.P12388877477477328907.a, A083582.P12335341712514284667.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A083582, Nat.add_sub_cancel, A083582.P12388877477477328907.a, A083582.P12335341712514284667.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083582

/-! ## A083582.P1859731400132251334

`ogf((1+6x)/(1-x-2x^2))`
-/

namespace A083582.P1859731400132251334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -1, -2] n

end

end A083582.P1859731400132251334

namespace A083582

/-- `ogf((1+6x)/(1-x-2x^2))` -/
def P1859731400132251334.Spec : Prop :=
  ∀ n, P1859731400132251334.a n = A083582 n

end A083582

/-! ## A083582.P2937667779793973975

`2^(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A083582.P2937667779793973975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (n + 2) : ℤ) - a (n - 1)

end

end A083582.P2937667779793973975

namespace A083582

/-- `2^(n+2)-a(n-1)` -/
def P2937667779793973975.Spec : Prop :=
  ∀ n, P2937667779793973975.a n = A083582 n

end A083582

/-! ## A083582.P962073928212931025

`record[2^n-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A083582.P962073928212931025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083582.P962073928212931025

namespace A083582

/-- `record[2^n-a(n-1)]` -/
def P962073928212931025.Spec : Prop :=
  ∀ n, P962073928212931025.a n = A083582 n

end A083582

/-! ## A083582.P1143162610571671320

`floor(4*2^n-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083582.P1143162610571671320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * 2 ^ n : ℤ) - a (n - 1)

end

end A083582.P1143162610571671320

namespace A083582

/-- `floor(4*2^n-a(n-1))` -/
def P1143162610571671320.Spec : Prop :=
  ∀ n, P1143162610571671320.a n = A083582 n

end A083582

/-! ## A083582.P8938715087138554807

`4*(2^n-a(n-1)/4)` with `a(0)=1`
-/

namespace A083582.P8938715087138554807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((2 ^ n : ℚ) - a (n - 1) / 4)

end

end A083582.P8938715087138554807

namespace A083582

/-- `4*(2^n-a(n-1)/4)` -/
def P8938715087138554807.Spec : Prop :=
  ∀ n, P8938715087138554807.a n = (A083582 n : ℚ)

end A083582

/-! ## A083582.P2247740729252764938

`a(n-1)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A083582.P2247740729252764938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2))

end

end A083582.P2247740729252764938

namespace A083582

/-- `a(n-1)+a(n-2)+a(n-2)` -/
def P2247740729252764938.Spec : Prop :=
  ∀ n, (P2247740729252764938.a n : ℤ) = A083582 n

theorem P2247740729252764938.correct : P2247740729252764938.Spec := by
  intro n
  simp only [A083582, Nat.add_sub_cancel, A083582.P2247740729252764938.a, A083582.P12335341712514284667.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083582

/-! ## A083582.P12304938481404624242

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A083582.P12304938481404624242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A083582.P12304938481404624242

namespace A083582

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P12304938481404624242.Spec : Prop :=
  ∀ n, P12304938481404624242.a n = A083582 n

end A083582

/-! ## A083582.P12282250615029649199

`abs(A140966(n+3))`
-/

namespace A083582.P12282250615029649199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140966 (n + 3)|

end

end A083582.P12282250615029649199

namespace A083582

/-- `abs(A140966(n+3))` -/
def P12282250615029649199.Spec : Prop :=
  ∀ n, P12282250615029649199.a n = A083582 n

end A083582

/-! ## A083582.P7824313876198097351

`abs(A171501(n+3))`
-/

namespace A083582.P7824313876198097351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171501 (n + 3)|

end

end A083582.P7824313876198097351

namespace A083582

/-- `abs(A171501(n+3))` -/
def P7824313876198097351.Spec : Prop :=
  ∀ n, P7824313876198097351.a n = A083582 n

end A083582

/-! ## A083582.P9262094382465346856

`xor(2, A283642(n+1))`
-/

namespace A083582.P9262094382465346856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A283642 (n + 1))

end

end A083582.P9262094382465346856

namespace A083582

/-- `xor(2, A283642(n+1))` -/
def P9262094382465346856.Spec : Prop :=
  ∀ n, P9262094382465346856.a n = A083582 n

end A083582

/-! ## A083582.P17760363626367388951

`xor(3, A026644(n+1))`
-/

namespace A083582.P17760363626367388951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A026644 (n + 1))

end

end A083582.P17760363626367388951

namespace A083582

/-- `xor(3, A026644(n+1))` -/
def P17760363626367388951.Spec : Prop :=
  ∀ n, P17760363626367388951.a n = A083582 n

end A083582

/-! ## A083582.P17578095013966487828

`xor(2, A001045(n+3))`
-/

namespace A083582.P17578095013966487828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A001045 (n + 3))

end

end A083582.P17578095013966487828

namespace A083582

/-- `xor(2, A001045(n+3))` -/
def P17578095013966487828.Spec : Prop :=
  ∀ n, P17578095013966487828.a n = A083582 n

end A083582

/-! ## A083582.P3976604915686752004

`xor(2, A152046(n+3))`
-/

namespace A083582.P3976604915686752004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A152046 (n + 3))

end

end A083582.P3976604915686752004

namespace A083582

/-- `xor(2, A152046(n+3))` -/
def P3976604915686752004.Spec : Prop :=
  ∀ n, P3976604915686752004.a n = A083582 n

end A083582

/-! ## A083582.P12458796871303893917

`xor(2, A167167(n+3))`
-/

namespace A083582.P12458796871303893917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A167167 (n + 3))

end

end A083582.P12458796871303893917

namespace A083582

/-- `xor(2, A167167(n+3))` -/
def P12458796871303893917.Spec : Prop :=
  ∀ n, P12458796871303893917.a n = A083582 n

end A083582

/-! ## A083582.P4205049767461198213

`xor(2, A112031(2*n))`
-/

namespace A083582.P4205049767461198213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A112031 (2 * n))

end

end A083582.P4205049767461198213

namespace A083582

/-- `xor(2, A112031(2*n))` -/
def P4205049767461198213.Spec : Prop :=
  ∀ n, P4205049767461198213.a n = A083582 n

end A083582

/-! ## A083582.P558589868012326650

`xor(3, A167030(n+3))`
-/

namespace A083582.P558589868012326650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A167030 (n + 3))

end

end A083582.P558589868012326650

namespace A083582

/-- `xor(3, A167030(n+3))` -/
def P558589868012326650.Spec : Prop :=
  ∀ n, P558589868012326650.a n = A083582 n

end A083582

/-! ## A083582.P3856011469036378926

`xor(4, A171382(n+2))`
-/

namespace A083582.P3856011469036378926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A171382 (n + 2))

end

end A083582.P3856011469036378926

namespace A083582

/-- `xor(4, A171382(n+2))` -/
def P3856011469036378926.Spec : Prop :=
  ∀ n, P3856011469036378926.a n = A083582 n

end A083582

/-!
# A083583: a(n) = (8*3^n - 5*0^n)/3.

The programs for A083583, the canonical program `A083583.P11148789208856141051` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083583 has offset 0).

The definition of A083583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083583.P11148789208856141051

`(8*3^n-5*0^n)/3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083583

/-- `(8*3^n-5*0^n)/3` -/
def P11148789208856141051.Spec : Prop :=
  ∀ n, P11148789208856141051.a n = (A083583 n : ℚ)

end A083583

/-! ## A083583.P2967062067877584409

`ogf((1+5x)/(1-3x))`
-/

namespace A083583.P2967062067877584409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -3] n

end

end A083583.P2967062067877584409

namespace A083583

/-- `ogf((1+5x)/(1-3x))` -/
def P2967062067877584409.Spec : Prop :=
  ∀ n, P2967062067877584409.a n = A083583 n

end A083583

/-! ## A083583.P2821277430019609983

`3*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A083583.P2821277430019609983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  3 * a (n - 1)

end

end A083583.P2821277430019609983

namespace A083583

/-- `3*a(n-1)` -/
def P2821277430019609983.Spec : Prop :=
  ∀ n, (P2821277430019609983.a n : ℤ) = A083583 n

end A083583

/-! ## A083583.P6619673245050619574

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=8, a(2)=3`
-/

namespace A083583.P6619673245050619574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A083583.P6619673245050619574

namespace A083583

/-- `abs(∏[-a(n-1)])` -/
def P6619673245050619574.Spec : Prop :=
  ∀ n, P6619673245050619574.a n = A083583 n

end A083583

/-! ## A083583.P12463380040319551004

`lcm(3^(n-1), a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A083583.P12463380040319551004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A083583.P12463380040319551004

namespace A083583

/-- `lcm(3^(n-1), a(n-1))` -/
def P12463380040319551004.Spec : Prop :=
  ∀ n, (P12463380040319551004.a n : ℤ) = A083583 n

end A083583

/-! ## A083583.P1584605573141125981

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A083583.P1584605573141125981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A083583.P1584605573141125981

namespace A083583

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P1584605573141125981.Spec : Prop :=
  ∀ n, (P1584605573141125981.a n : ℤ) = A083583 n

end A083583

/-! ## A083583.P10952068569491176208

`1-floor(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A083583.P10952068569491176208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  1 - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A083583.P10952068569491176208

namespace A083583

/-- `1-floor(1-a(n-1)-a(n-1)-a(n-1))` -/
def P10952068569491176208.Spec : Prop :=
  ∀ n, P10952068569491176208.a n = A083583 n

end A083583

/-! ## A083583.P5383029483961279233

`A080923(ceil(sin(n)²)+n)`
-/

namespace A083583.P5383029483961279233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (⌈Real.sin (n : ℝ) ^ 2⌉ + (n : ℤ)).toNat

end

end A083583.P5383029483961279233

namespace A083583

/-- `A080923(ceil(sin(n)²)+n)` -/
def P5383029483961279233.Spec : Prop :=
  ∀ n, P5383029483961279233.a n = A083583 n

end A083583

/-! ## A083583.P4225030661826878042

`or(2, A153339(2*n+1))-2`
-/

namespace A083583.P4225030661826878042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A153339 (2 * n + 1)) - 2

end

end A083583.P4225030661826878042

namespace A083583

/-- `or(2, A153339(2*n+1))-2` -/
def P4225030661826878042.Spec : Prop :=
  ∀ n, P4225030661826878042.a n = A083583 n

end A083583

/-! ## A083583.P16966591192360004659

`A080923((n+1)%(2*n+1))`
-/

namespace A083583.P16966591192360004659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 ((n + 1) % (2 * n + 1))

end

end A083583.P16966591192360004659

namespace A083583

/-- `A080923((n+1)%(2*n+1))` -/
def P16966591192360004659.Spec : Prop :=
  ∀ n, P16966591192360004659.a n = A083583 n

end A083583

/-! ## A083583.P8286271728521785701

`A246084(A016993(n))`
-/

namespace A083583.P8286271728521785701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246084 (A016993 n).toNat

end

end A083583.P8286271728521785701

namespace A083583

/-- `A246084(A016993(n))` -/
def P8286271728521785701.Spec : Prop :=
  ∀ n, P8286271728521785701.a n = A083583 n

end A083583

/-! ## A083583.P8203909331616191952

`A026097(A114637(n+1))`
-/

namespace A083583.P8203909331616191952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026097 (A114637 (n + 1)).toNat

end

end A083583.P8203909331616191952

namespace A083583

/-- `A026097(A114637(n+1))` -/
def P8203909331616191952.Spec : Prop :=
  ∀ n, P8203909331616191952.a n = A083583 n

end A083583

/-! ## A083583.P16311453238246916043

`A080923(A087156(n+1))`
-/

namespace A083583.P16311453238246916043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (A087156 (n + 1)).toNat

end

end A083583.P16311453238246916043

namespace A083583

/-- `A080923(A087156(n+1))` -/
def P16311453238246916043.Spec : Prop :=
  ∀ n, P16311453238246916043.a n = A083583 n

end A083583

/-! ## A083583.P17100364760784503039

`A246084(A008589(n)+1)`
-/

namespace A083583.P17100364760784503039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246084 (A008589 n + 1).toNat

end

end A083583.P17100364760784503039

namespace A083583

/-- `A246084(A008589(n)+1)` -/
def P17100364760784503039.Spec : Prop :=
  ∀ n, P17100364760784503039.a n = A083583 n

end A083583

/-! ## A083583.P18375204672185726786

`A080923(A199969(n+2))`
-/

namespace A083583.P18375204672185726786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (A199969 (n + 2)).toNat

end

end A083583.P18375204672185726786

namespace A083583

/-- `A080923(A199969(n+2))` -/
def P18375204672185726786.Spec : Prop :=
  ∀ n, P18375204672185726786.a n = A083583 n

end A083583

/-! ## A083583.P8894956881894671757

`A140429(n)+A082541(n)`
-/

namespace A083583.P8894956881894671757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A082541 n

end

end A083583.P8894956881894671757

namespace A083583

/-- `A140429(n)+A082541(n)` -/
def P8894956881894671757.Spec : Prop :=
  ∀ n, P8894956881894671757.a n = A083583 n

end A083583

/-! ## A083583.P10659727811500387946

`A025192(n)*A123932(n)`
-/

namespace A083583.P10659727811500387946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n * A123932 n

end

end A083583.P10659727811500387946

namespace A083583

/-- `A025192(n)*A123932(n)` -/
def P10659727811500387946.Spec : Prop :=
  ∀ n, P10659727811500387946.a n = A083583 n

end A083583

/-!
# A083584: a(n) = (8*4^n - 5)/3.

The programs for A083584, the canonical program `A083584.P1275882063600437236` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083584 has offset 0).

The definition of A083584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*4^n-5)/3` (program `A083584.P157132701888562655`, by `A083584.P157132701888562655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083584.P1275882063600437236

`4*a(n-1)+5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083584

/-- `4*a(n-1)+5` -/
def P1275882063600437236.Spec : Prop :=
  ∀ n, (P1275882063600437236.a n : ℤ) = A083584 n

theorem P1275882063600437236.correct : P1275882063600437236.Spec := by
  intro n
  simp only [A083584]

end A083584

/-! ## A083584.P157132701888562655

`(8*4^n-5)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083584.P157132701888562655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 4 ^ n : ℤ) - 5 : ℚ) / 3

end

end A083584.P157132701888562655

namespace A083584

/-- `(8*4^n-5)/3` -/
def P157132701888562655.Spec : Prop :=
  ∀ n, P157132701888562655.a n = (A083584 n : ℚ)

theorem P157132701888562655.correct : P157132701888562655.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083584, Nat.add_sub_cancel, A083584.P157132701888562655.a, A083584.P1275882063600437236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083584, Nat.add_sub_cancel, A083584.P157132701888562655.a, A083584.P1275882063600437236.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083584

/-! ## A083584.P8683323669274155552

`ogf((1+4x)/(1-5x+4x^2))`
-/

namespace A083584.P8683323669274155552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -5, 4] n

end

end A083584.P8683323669274155552

namespace A083584

/-- `ogf((1+4x)/(1-5x+4x^2))` -/
def P8683323669274155552.Spec : Prop :=
  ∀ n, P8683323669274155552.a n = A083584 n

end A083584

/-! ## A083584.P1999534091530963927

`xor(3, ∑[2*4^n])`
-/

namespace A083584.P1999534091530963927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083584.P1999534091530963927

namespace A083584

/-- `xor(3, ∑[2*4^n])` -/
def P1999534091530963927.Spec : Prop :=
  ∀ n, (P1999534091530963927.a n : ℤ) = A083584 n

end A083584

/-! ## A083584.P2008356453087800147

`∑[4*a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A083584.P2008356453087800147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083584.P2008356453087800147

namespace A083584

/-- `∑[4*a(n-1)]` -/
def P2008356453087800147.Spec : Prop :=
  ∀ n, (P2008356453087800147.a n : ℤ) = A083584 n

end A083584

/-! ## A083584.P6453234365687293082

`∑[record[2^xor(1, n+1)]]`
-/

namespace A083584.P6453234365687293082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083584.P6453234365687293082

namespace A083584

/-- `∑[record[2^xor(1, n+1)]]` -/
def P6453234365687293082.Spec : Prop :=
  ∀ n, (P6453234365687293082.a n : ℤ) = A083584 n

end A083584

/-! ## A083584.P5821958175679330697

`∑[4^n*gcd(2, 4^n)]`
-/

namespace A083584.P5821958175679330697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.gcd 2 (4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083584.P5821958175679330697

namespace A083584

/-- `∑[4^n*gcd(2, 4^n)]` -/
def P5821958175679330697.Spec : Prop :=
  ∀ n, (P5821958175679330697.a n : ℤ) = A083584 n

end A083584

/-! ## A083584.P8183585373991991785

`-or(1, ∑[-(2*4^n)])`
-/

namespace A083584.P8183585373991991785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * 4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083584.P8183585373991991785

namespace A083584

/-- `-or(1, ∑[-(2*4^n)])` -/
def P8183585373991991785.Spec : Prop :=
  ∀ n, P8183585373991991785.a n = A083584 n

end A083584

/-! ## A083584.P15842096949807613257

`record[∑[(-2)^(n+2)]-3]`
-/

namespace A083584.P15842096949807613257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083584.P15842096949807613257

namespace A083584

/-- `record[∑[(-2)^(n+2)]-3]` -/
def P15842096949807613257.Spec : Prop :=
  ∀ n, P15842096949807613257.a n = A083584 n

end A083584

/-! ## A083584.P17513266508742205495

`or(2*4^n, a(n-1))` with `a(0)=1`
-/

namespace A083584.P17513266508742205495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * 4 ^ n) (a (n - 1))

end

end A083584.P17513266508742205495

namespace A083584

/-- `or(2*4^n, a(n-1))` -/
def P17513266508742205495.Spec : Prop :=
  ∀ n, (P17513266508742205495.a n : ℤ) = A083584 n

end A083584

/-! ## A083584.P8161891168786628878

`∑[a(n-1)/(1/2)²]` with `a(0)=1, a(1)=8`
-/

namespace A083584.P8161891168786628878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083584.P8161891168786628878

namespace A083584

/-- `∑[a(n-1)/(1/2)²]` -/
def P8161891168786628878.Spec : Prop :=
  ∀ n, P8161891168786628878.a n = (A083584 n : ℚ)

end A083584

/-! ## A083584.P7663542599275867141

`∑[2^((n+1)%(3^n)+n)]`
-/

namespace A083584.P7663542599275867141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((n + 1) % 3 ^ n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083584.P7663542599275867141

namespace A083584

/-- `∑[2^((n+1)%(3^n)+n)]` -/
def P7663542599275867141.Spec : Prop :=
  ∀ n, (P7663542599275867141.a n : ℤ) = A083584 n

end A083584

/-! ## A083584.P12364419229979399944

`∑[ceil(atan(n+1))^(2*n+1)]`
-/

namespace A083584.P12364419229979399944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ ^ (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083584.P12364419229979399944

namespace A083584

/-- `∑[ceil(atan(n+1))^(2*n+1)]` -/
def P12364419229979399944.Spec : Prop :=
  ∀ n, P12364419229979399944.a n = A083584 n

end A083584

/-! ## A083584.P5630490237905567177

`4*(2-(3/4-a(n-1)))` with `a(0)=1`
-/

namespace A083584.P5630490237905567177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (2 - ((3 : ℚ) / 4 - a (n - 1)))

end

end A083584.P5630490237905567177

namespace A083584

/-- `4*(2-(3/4-a(n-1)))` -/
def P5630490237905567177.Spec : Prop :=
  ∀ n, P5630490237905567177.a n = (A083584 n : ℚ)

end A083584

/-! ## A083584.P6592971188344002826

`floor(floor(a(n-1))+4^(n+1)/2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083584.P6592971188344002826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (4 ^ (n + 1) : ℚ) / 2⌋

end

end A083584.P6592971188344002826

namespace A083584

/-- `floor(floor(a(n-1))+4^(n+1)/2)` -/
def P6592971188344002826.Spec : Prop :=
  ∀ n, P6592971188344002826.a n = A083584 n

end A083584

/-! ## A083584.P15146752156101962969

`floor(5*a(n-1)-(a(n-1)-5))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083584.P15146752156101962969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (a (n - 1) - 5)

end

end A083584.P15146752156101962969

namespace A083584

/-- `floor(5*a(n-1)-(a(n-1)-5))` -/
def P15146752156101962969.Spec : Prop :=
  ∀ n, P15146752156101962969.a n = A083584 n

end A083584

/-! ## A083584.P15788631374948979520

`∑[ceil((2*n+1)/(n+1))!^(2*n+1)]`
-/

namespace A083584.P15788631374948979520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈(2 * n + 1 : ℚ) / (n + 1 : ℚ)⌉.toNat ^ (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083584.P15788631374948979520

namespace A083584

/-- `∑[ceil((2*n+1)/(n+1))!^(2*n+1)]` -/
def P15788631374948979520.Spec : Prop :=
  ∀ n, (P15788631374948979520.a n : ℤ) = A083584 n

end A083584

/-! ## A083584.P10012359330765934972

`∑[A081654(n)]`
-/

namespace A083584.P10012359330765934972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083584.P10012359330765934972

namespace A083584

/-- `∑[A081654(n)]` -/
def P10012359330765934972.Spec : Prop :=
  ∀ n, P10012359330765934972.a n = A083584 n

end A083584

/-! ## A083584.P5457771034144550345

`A083582(2*n)`
-/

namespace A083584.P5457771034144550345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083582 (2 * n)

end

end A083584.P5457771034144550345

namespace A083584

/-- `A083582(2*n)` -/
def P5457771034144550345.Spec : Prop :=
  ∀ n, P5457771034144550345.a n = A083584 n

end A083584

/-! ## A083584.P17083865251499793679

`A084639(Δ[n²])`
-/

namespace A083584.P17083865251499793679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083584.P17083865251499793679

namespace A083584

/-- `A084639(Δ[n²])` -/
def P17083865251499793679.Spec : Prop :=
  ∀ n, P17083865251499793679.a n = A083584 n

end A083584

/-!
# A083585: a(n) = (8*5^n - 5*2^n)/3.

The programs for A083585, the canonical program `A083585.P5775501413113381370` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083585 has offset 0).

The definition of A083585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083585.P5775501413113381370

`(8*5^n-5*2^n)/3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083585

/-- `(8*5^n-5*2^n)/3` -/
def P5775501413113381370.Spec : Prop :=
  ∀ n, P5775501413113381370.a n = (A083585 n : ℚ)

end A083585

/-! ## A083585.P15399425644542783144

`ogf((1+3x)/(1-7x+10x^2))`
-/

namespace A083585.P15399425644542783144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -7, 10] n

end

end A083585.P15399425644542783144

namespace A083585

/-- `ogf((1+3x)/(1-7x+10x^2))` -/
def P15399425644542783144.Spec : Prop :=
  ∀ n, P15399425644542783144.a n = A083585 n

end A083585

/-! ## A083585.P9091839879480173493

`5*(a(n-1)+2^(n-1))` with `a(0)=1`
-/

namespace A083585.P9091839879480173493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * (a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A083585.P9091839879480173493

namespace A083585

/-- `5*(a(n-1)+2^(n-1))` -/
def P9091839879480173493.Spec : Prop :=
  ∀ n, P9091839879480173493.a n = (A083585 n : ℚ)

end A083585

/-! ## A083585.P5413383617424801000

`lcm(5, a(n-1)+2^(n-1))` with `a(0)=1`
-/

namespace A083585.P5413383617424801000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 5 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A083585.P5413383617424801000

namespace A083585

/-- `lcm(5, a(n-1)+2^(n-1))` -/
def P5413383617424801000.Spec : Prop :=
  ∀ n, (P5413383617424801000.a n : ℤ) = A083585 n

end A083585

/-! ## A083585.P955322464743688830

`Δ[A082685(n)-2^(n+1)]`
-/

namespace A083585.P955322464743688830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082685 n - (2 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083585.P955322464743688830

namespace A083585

/-- `Δ[A082685(n)-2^(n+1)]` -/
def P955322464743688830.Spec : Prop :=
  ∀ n, P955322464743688830.a n = A083585 n

end A083585

/-! ## A083585.P3031451331245925321

`5*(A011782(n)+a(n-1))` with `a(0)=1`
-/

namespace A083585.P3031451331245925321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * (A011782 n + a (n - 1))

end

end A083585.P3031451331245925321

namespace A083585

/-- `5*(A011782(n)+a(n-1))` -/
def P3031451331245925321.Spec : Prop :=
  ∀ n, P3031451331245925321.a n = A083585 n

end A083585

/-! ## A083585.P15773810436082539552

`5*(A131577(n)+a(n-1))` with `a(0)=1`
-/

namespace A083585.P15773810436082539552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * (A131577 n + a (n - 1))

end

end A083585.P15773810436082539552

namespace A083585

/-- `5*(A131577(n)+a(n-1))` -/
def P15773810436082539552.Spec : Prop :=
  ∀ n, P15773810436082539552.a n = A083585 n

end A083585

/-! ## A083585.P2636285507151168229

`A146523(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A083585.P2636285507151168229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146523 n + 5 * a (n - 1)

end

end A083585.P2636285507151168229

namespace A083585

/-- `A146523(n)+5*a(n-1)` -/
def P2636285507151168229.Spec : Prop :=
  ∀ n, P2636285507151168229.a n = A083585 n

end A083585

/-! ## A083585.P15606275567051446854

`a(n-1)+A128625(n)+a(n-1)` with `a(0)=1`
-/

namespace A083585.P15606275567051446854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A128625 n + a (n - 1))

end

end A083585.P15606275567051446854

namespace A083585

/-- `a(n-1)+A128625(n)+a(n-1)` -/
def P15606275567051446854.Spec : Prop :=
  ∀ n, P15606275567051446854.a n = A083585 n

end A083585

/-! ## A083585.P10594972510631420075

`A016127(n)+A005057(n)`
-/

namespace A083585.P10594972510631420075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 n + A005057 n

end

end A083585.P10594972510631420075

namespace A083585

/-- `A016127(n)+A005057(n)` -/
def P10594972510631420075.Spec : Prop :=
  ∀ n, P10594972510631420075.a n = A083585 n

end A083585

/-! ## A083585.P12388197601361675212

`A082685(n+1)-(A082685(n)+A000079(n+1))`
-/

namespace A083585.P12388197601361675212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082685 (n + 1) - (A082685 n + A000079 (n + 1))

end

end A083585.P12388197601361675212

namespace A083585

/-- `A082685(n+1)-(A082685(n)+A000079(n+1))` -/
def P12388197601361675212.Spec : Prop :=
  ∀ n, P12388197601361675212.a n = A083585 n

end A083585

/-!
# A083586: Binomial transform of A083580.

The programs for A083586, the canonical program `A083586.P12660310866354381391` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083586 has offset 0).

The definition of A083586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083586.P12660310866354381391

`2*4^n/3-5/12-n*3^(n-1)/2-3^n/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083586

/-- `2*4^n/3-5/12-n*3^(n-1)/2-3^n/4` -/
def P12660310866354381391.Spec : Prop :=
  ∀ n, P12660310866354381391.a n = (A083586 n : ℚ)

end A083586

/-! ## A083586.P14797336897987210011

`∑[A125586(A028310(n))%A125586(n+1)]`
-/

namespace A083586.P14797336897987210011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125586 (A028310 n).toNat) (A125586 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083586.P14797336897987210011

namespace A083586

/-- `∑[A125586(A028310(n))%A125586(n+1)]` -/
def P14797336897987210011.Spec : Prop :=
  ∀ n, P14797336897987210011.a n = A083586 n

end A083586

/-! ## A083586.P9826368857383167541

`∑[A125586(A000027(n+1))]%A125586(n+1)`
-/

namespace A083586.P9826368857383167541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125586 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A125586 (n + 1))

end

end A083586.P9826368857383167541

namespace A083586

/-- `∑[A125586(A000027(n+1))]%A125586(n+1)` -/
def P9826368857383167541.Spec : Prop :=
  ∀ n, P9826368857383167541.a n = A083586 n

end A083586

/-! ## A083586.P4931748531252711591

`∑[A125586(A028310(n))%A034999(n)]`
-/

namespace A083586.P4931748531252711591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125586 (A028310 n).toNat) (A034999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083586.P4931748531252711591

namespace A083586

/-- `∑[A125586(A028310(n))%A034999(n)]` -/
def P4931748531252711591.Spec : Prop :=
  ∀ n, P4931748531252711591.a n = A083586 n

end A083586

/-!
# A083587: a(n) = 4*3^n/3 - 5*0^n/6 - (n-1)2^(n-1).

The programs for A083587, the canonical program `A083587.P2075317166642432849` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083587 has offset 0).

The definition of A083587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083587.P2075317166642432849

`4*3^n/3-5*0^n/6-(n-1)*2^(n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083587

/-- `4*3^n/3-5*0^n/6-(n-1)*2^(n-1)` -/
def P2075317166642432849.Spec : Prop :=
  ∀ n, P2075317166642432849.a n = (A083587 n : ℚ)

end A083587

/-! ## A083587.P10766244914312999738

`∑[A026097(n+1)-A129952(n)]`
-/

namespace A083587.P10766244914312999738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026097 (n + 1) - A129952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083587.P10766244914312999738

namespace A083587

/-- `∑[A026097(n+1)-A129952(n)]` -/
def P10766244914312999738.Spec : Prop :=
  ∀ n, P10766244914312999738.a n = A083587 n

end A083587

/-!
# A083588: Binomial transform of A083587.

The programs for A083588, the canonical program `A083588.P4476619655211568737` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083588 has offset 0).

The definition of A083588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083588.P4476619655211568737

`11*a(n-1)-43*a(n-2)+69*a(n-3)-36*a(n-4)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=71`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083588

/-- `11*a(n-1)-43*a(n-2)+69*a(n-3)-36*a(n-4)` -/
def P4476619655211568737.Spec : Prop :=
  ∀ n, P4476619655211568737.a n = A083588 n

theorem P4476619655211568737.correct : P4476619655211568737.Spec := by
  intro n
  simp only [A083588]

end A083588

/-! ## A083588.P12234481549453784021

`A000244(n)+2*A083586(n)`
-/

namespace A083588.P12234481549453784021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + 2 * A083586 n

end

end A083588.P12234481549453784021

namespace A083588

/-- `A000244(n)+2*A083586(n)` -/
def P12234481549453784021.Spec : Prop :=
  ∀ n, P12234481549453784021.a n = A083588 n

end A083588

/-! ## A083588.P5956136134565598595

`∑[A074605(n)]-A006234(n+3)`
-/

namespace A083588.P5956136134565598595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006234 (n + 3)

end

end A083588.P5956136134565598595

namespace A083588

/-- `∑[A074605(n)]-A006234(n+3)` -/
def P5956136134565598595.Spec : Prop :=
  ∀ n, P5956136134565598595.a n = A083588 n

end A083588

/-! ## A083588.P6576732644476143948

`Δ[A003462(n)]+2*A083586(n)`
-/

namespace A083588.P6576732644476143948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A083586 n

end

end A083588.P6576732644476143948

namespace A083588

/-- `Δ[A003462(n)]+2*A083586(n)` -/
def P6576732644476143948.Spec : Prop :=
  ∀ n, P6576732644476143948.a n = A083588 n

end A083588

/-! ## A083588.P6906737009310297735

`A002450(n+1)+A003462(n)-A027471(n+1)`
-/

namespace A083588.P6906737009310297735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1) + (A003462 n - A027471 (n + 1))

end

end A083588.P6906737009310297735

namespace A083588

/-- `A002450(n+1)+A003462(n)-A027471(n+1)` -/
def P6906737009310297735.Spec : Prop :=
  ∀ n, P6906737009310297735.a n = A083588 n

end A083588

/-! ## A083588.P16611399487428343477

`∑[A000079(n)²]+A003462(n)-A027471(n+1)`
-/

namespace A083588.P16611399487428343477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A003462 n - A027471 (n + 1))

end

end A083588.P16611399487428343477

namespace A083588

/-- `∑[A000079(n)²]+A003462(n)-A027471(n+1)` -/
def P16611399487428343477.Spec : Prop :=
  ∀ n, P16611399487428343477.a n = A083588 n

end A083588

/-!
# A083589: Expansion of 1/((1-4*x)*(1-x^4)).

The programs for A083589, the canonical program `A083589.P12130248726174487218` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083589 has offset 0).

The definition of A083589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x-x^4+4x^5))` (program `A083589.P12130248726174487218`, by `A083589.P12130248726174487218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083589.P12130248726174487218

`ogf(1/(1-4x-x^4+4x^5))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083589

/-- `ogf(1/(1-4x-x^4+4x^5))` -/
def P12130248726174487218.Spec : Prop :=
  ∀ n, P12130248726174487218.a n = A083589 n

theorem P12130248726174487218.correct : P12130248726174487218.Spec := by
  intro n
  simp only [A083589]

end A083589

/-! ## A083589.P4136462317723552154

`4*a(n-1)+a(n-4)-4*a(n-5)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=64, a(4)=257`
-/

namespace A083589.P4136462317723552154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16, 64, 257] fun n a =>
  4 * a (n - 1) + a (n - 4) - 4 * a (n - 5)

end

end A083589.P4136462317723552154

namespace A083589

/-- `4*a(n-1)+a(n-4)-4*a(n-5)` -/
def P4136462317723552154.Spec : Prop :=
  ∀ n, P4136462317723552154.a n = A083589 n

end A083589

/-! ## A083589.P2623341822916240727

`floor(64*(2^(2*(n+1))+1)/255)`
-/

namespace A083589.P2623341822916240727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(64 * (2 ^ (2 * (n + 1)) + 1) : ℚ) / 255⌋

end

end A083589.P2623341822916240727

namespace A083589

/-- `floor(64*(2^(2*(n+1))+1)/255)` -/
def P2623341822916240727.Spec : Prop :=
  ∀ n, P2623341822916240727.a n = A083589 n

end A083589

/-! ## A083589.P2274073779258206396

`xor(4*a(n-1), char[4*n])` with `a(0)=1`
-/

namespace A083589.P2274073779258206396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A083589.P2274073779258206396

namespace A083589

/-- `xor(4*a(n-1), char[4*n])` -/
def P2274073779258206396.Spec : Prop :=
  ∀ n, (P2274073779258206396.a n : ℤ) = A083589 n

end A083589

/-! ## A083589.P14176297678295463477

`floor(gcd(4, n)/3)+4*a(n-1)` with `a(0)=1`
-/

namespace A083589.P14176297678295463477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Nat.gcd 4 n : ℚ) / 3⌋ + 4 * a (n - 1)

end

end A083589.P14176297678295463477

namespace A083589

/-- `floor(gcd(4, n)/3)+4*a(n-1)` -/
def P14176297678295463477.Spec : Prop :=
  ∀ n, P14176297678295463477.a n = A083589 n

end A083589

/-! ## A083589.P1208105206622799299

`or(4*a(n-1), val(a(n-1), 32))` with `a(0)=1`
-/

namespace A083589.P1208105206622799299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (4 * a (n - 1)) (SequenceMachineLib.valuation (a (n - 1)) 32)

end

end A083589.P1208105206622799299

namespace A083589

/-- `or(4*a(n-1), val(a(n-1), 32))` -/
def P1208105206622799299.Spec : Prop :=
  ∀ n, (P1208105206622799299.a n : ℤ) = A083589 n

end A083589

/-! ## A083589.P10831893231198620823

`∑[∑[n+1]]%2+4*a(n-1)` with `a(0)=1`
-/

namespace A083589.P10831893231198620823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 4 * a (n - 1)

end

end A083589.P10831893231198620823

namespace A083589

/-- `∑[∑[n+1]]%2+4*a(n-1)` -/
def P10831893231198620823.Spec : Prop :=
  ∀ n, (P10831893231198620823.a n : ℤ) = A083589 n

end A083589

/-! ## A083589.P6457252775084389488

`A281216(2*n)-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A083589.P6457252775084389488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A281216 (2 * n) - a (n - 2)

end

end A083589.P6457252775084389488

namespace A083589

/-- `A281216(2*n)-a(n-2)` -/
def P6457252775084389488.Spec : Prop :=
  ∀ n, P6457252775084389488.a n = A083589 n

end A083589

/-! ## A083589.P261132278443021504

`∑[4^n-a(n-2)]-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A083589.P261132278443021504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (4 ^ n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A083589.P261132278443021504

namespace A083589

/-- `∑[4^n-a(n-2)]-a(n-1)` -/
def P261132278443021504.Spec : Prop :=
  ∀ n, P261132278443021504.a n = A083589 n

end A083589

/-! ## A083589.P16785063596910284996

`and(A033114(n+1), A037674(n+1))`
-/

namespace A083589.P16785063596910284996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033114 (n + 1)) (A037674 (n + 1))

end

end A083589.P16785063596910284996

namespace A083589

/-- `and(A033114(n+1), A037674(n+1))` -/
def P16785063596910284996.Spec : Prop :=
  ∀ n, P16785063596910284996.a n = A083589 n

end A083589

/-! ## A083589.P11041369612280744315

`and(A033114(n+1), A037688(n+1))`
-/

namespace A083589.P11041369612280744315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033114 (n + 1)) (A037688 (n + 1))

end

end A083589.P11041369612280744315

namespace A083589

/-- `and(A033114(n+1), A037688(n+1))` -/
def P11041369612280744315.Spec : Prop :=
  ∀ n, P11041369612280744315.a n = A083589 n

end A083589

/-! ## A083589.P14347141644453669325

`and(A033114(n+1), A037702(n+1))`
-/

namespace A083589.P14347141644453669325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033114 (n + 1)) (A037702 (n + 1))

end

end A083589.P14347141644453669325

namespace A083589

/-- `and(A033114(n+1), A037702(n+1))` -/
def P14347141644453669325.Spec : Prop :=
  ∀ n, P14347141644453669325.a n = A083589 n

end A083589

/-! ## A083589.P9556931889611450336

`and(A033114(n+1), A037709(n+1))`
-/

namespace A083589.P9556931889611450336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033114 (n + 1)) (A037709 (n + 1))

end

end A083589.P9556931889611450336

namespace A083589

/-- `and(A033114(n+1), A037709(n+1))` -/
def P9556931889611450336.Spec : Prop :=
  ∀ n, P9556931889611450336.a n = A083589 n

end A083589

/-! ## A083589.P17672272246129225543

`and(A033114(n+1), A037765(n+1))`
-/

namespace A083589.P17672272246129225543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033114 (n + 1)) (A037765 (n + 1))

end

end A083589.P17672272246129225543

namespace A083589

/-- `and(A033114(n+1), A037765(n+1))` -/
def P17672272246129225543.Spec : Prop :=
  ∀ n, P17672272246129225543.a n = A083589 n

end A083589

/-! ## A083589.P15772912668011940346

`and(A033114(n+1), A037772(n+1))`
-/

namespace A083589.P15772912668011940346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033114 (n + 1)) (A037772 (n + 1))

end

end A083589.P15772912668011940346

namespace A083589

/-- `and(A033114(n+1), A037772(n+1))` -/
def P15772912668011940346.Spec : Prop :=
  ∀ n, P15772912668011940346.a n = A083589 n

end A083589

/-! ## A083589.P15260439900333148988

`and(A033114(n+1), A037779(n+1))`
-/

namespace A083589.P15260439900333148988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033114 (n + 1)) (A037779 (n + 1))

end

end A083589.P15260439900333148988

namespace A083589

/-- `and(A033114(n+1), A037779(n+1))` -/
def P15260439900333148988.Spec : Prop :=
  ∀ n, P15260439900333148988.a n = A083589 n

end A083589

/-! ## A083589.P9730204952805465263

`and(A033114(n+1), A037786(n+1))`
-/

namespace A083589.P9730204952805465263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033114 (n + 1)) (A037786 (n + 1))

end

end A083589.P9730204952805465263

namespace A083589

/-- `and(A033114(n+1), A037786(n+1))` -/
def P9730204952805465263.Spec : Prop :=
  ∀ n, P9730204952805465263.a n = A083589 n

end A083589

/-! ## A083589.P5673255409715607778

`and(A037674(n+1), A037793(n+1))`
-/

namespace A083589.P5673255409715607778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037674 (n + 1)) (A037793 (n + 1))

end

end A083589.P5673255409715607778

namespace A083589

/-- `and(A037674(n+1), A037793(n+1))` -/
def P5673255409715607778.Spec : Prop :=
  ∀ n, P5673255409715607778.a n = A083589 n

end A083589

/-! ## A083589.P5347392351680548945

`and(A037681(n+1), A037786(n+1))`
-/

namespace A083589.P5347392351680548945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037681 (n + 1)) (A037786 (n + 1))

end

end A083589.P5347392351680548945

namespace A083589

/-- `and(A037681(n+1), A037786(n+1))` -/
def P5347392351680548945.Spec : Prop :=
  ∀ n, P5347392351680548945.a n = A083589 n

end A083589

/-! ## A083589.P7390681526129399891

`and(A037688(n+1), A037779(n+1))`
-/

namespace A083589.P7390681526129399891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037688 (n + 1)) (A037779 (n + 1))

end

end A083589.P7390681526129399891

namespace A083589

/-- `and(A037688(n+1), A037779(n+1))` -/
def P7390681526129399891.Spec : Prop :=
  ∀ n, P7390681526129399891.a n = A083589 n

end A083589

/-!
# A083590: Expansion of 1/((1-5*x)*(1-x^5)).

The programs for A083590, the canonical program `A083590.P12637720368521987898` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083590 has offset 0).

The definition of A083590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x-x^5+5x^6))` (program `A083590.P12637720368521987898`, by `A083590.P12637720368521987898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083590.P12637720368521987898

`ogf(1/(1-5x-x^5+5x^6))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083590

/-- `ogf(1/(1-5x-x^5+5x^6))` -/
def P12637720368521987898.Spec : Prop :=
  ∀ n, P12637720368521987898.a n = A083590 n

theorem P12637720368521987898.correct : P12637720368521987898.Spec := by
  intro n
  simp only [A083590]

end A083590

/-! ## A083590.P2242569211039435847

`char[5*n]+5*a(n-1)` with `a(0)=1`
-/

namespace A083590.P2242569211039435847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 5 * a (n - 1)

end

end A083590.P2242569211039435847

namespace A083590

/-- `char[5*n]+5*a(n-1)` -/
def P2242569211039435847.Spec : Prop :=
  ∀ n, (P2242569211039435847.a n : ℤ) = A083590 n

end A083590

/-! ## A083590.P2381133215379256419

`5*a(n-1)-(A011558(n)-1)` with `a(0)=1`
-/

namespace A083590.P2381133215379256419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (A011558 n - 1)

end

end A083590.P2381133215379256419

namespace A083590

/-- `5*a(n-1)-(A011558(n)-1)` -/
def P2381133215379256419.Spec : Prop :=
  ∀ n, P2381133215379256419.a n = A083590 n

end A083590

/-! ## A083590.P8822091076882049433

`∑[xor(5*a(n-1), A010891(n)²)]` with `a(0)=1`
-/

namespace A083590.P8822091076882049433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A010891 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083590.P8822091076882049433

namespace A083590

/-- `∑[xor(5*a(n-1), A010891(n)²)]` -/
def P8822091076882049433.Spec : Prop :=
  ∀ n, P8822091076882049433.a n = A083590 n

end A083590

/-! ## A083590.P5626177799601826086

`5*a(n-1)-(A293640(n)-A293639(n)-1)` with `a(0)=1`
-/

namespace A083590.P5626177799601826086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (A293640 n - A293639 n - 1)

end

end A083590.P5626177799601826086

namespace A083590

/-- `5*a(n-1)-(A293640(n)-A293639(n)-1)` -/
def P5626177799601826086.Spec : Prop :=
  ∀ n, P5626177799601826086.a n = A083590 n

end A083590

/-! ## A083590.P12303600832047521140

`5*a(n-1)-A023443(A293640(n)-A293639(n))` with `a(0)=1`
-/

namespace A083590.P12303600832047521140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A023443 (A293640 n - A293639 n).toNat

end

end A083590.P12303600832047521140

namespace A083590

/-- `5*a(n-1)-A023443(A293640(n)-A293639(n))` -/
def P12303600832047521140.Spec : Prop :=
  ∀ n, P12303600832047521140.a n = A083590 n

end A083590

/-!
# A083591: Inverse binomial transform of A083589.

The programs for A083591, there is no canonical definition to state claims against.
-/

/-! ## A083591.P15000061153449405807

`3^n-A063933(A001576(n))`
-/

namespace A083591.P15000061153449405807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A063933 (A001576 n).toNat

end

end A083591.P15000061153449405807

/-! ## A083591.P7117035271249681590

`A137173(A228050(n+1))+A093833(n)`
-/

namespace A083591.P7117035271249681590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 (A228050 (n + 1)).toNat + A093833 n

end

end A083591.P7117035271249681590

/-!
# A083592: Inverse binomial transform of A083590.

The programs for A083592, there is no canonical definition to state claims against.
-/

/-! ## A083592.P7279055842907610098

`ceil(A070752(4^n)/2)`
-/

namespace A083592.P7279055842907610098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070752 (4 ^ n) : ℚ) / 2⌉

end

end A083592.P7279055842907610098

/-! ## A083592.P10369158462065874093

`A158924(A112565(n))+4^n`
-/

namespace A083592.P10369158462065874093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158924 (A112565 n).toNat + (4 ^ n : ℤ)

end

end A083592.P10369158462065874093

/-! ## A083592.P6351331453537520196

`A070321(A000302(n))+∑{e}[n+1, #]`
-/

namespace A083592.P6351331453537520196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A000302 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A083592.P6351331453537520196

/-!
# A083593: Expansion of 1/((1-2*x)*(1-x^4)).

The programs for A083593, the canonical program `A083593.P14267600732339344489` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083593 has offset 0).

The definition of A083593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^4+2x^5))` (program `A083593.P14267600732339344489`, by `A083593.P14267600732339344489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083593.P14267600732339344489

`ogf(1/(1-2x-x^4+2x^5))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083593

/-- `ogf(1/(1-2x-x^4+2x^5))` -/
def P14267600732339344489.Spec : Prop :=
  ∀ n, P14267600732339344489.a n = A083593 n

theorem P14267600732339344489.correct : P14267600732339344489.Spec := by
  intro n
  simp only [A083593]

end A083593

/-! ## A083593.P2216624506146974426

`2*a(n-1)+1-ceil(n%4/4)` with `a(0)=1`
-/

namespace A083593.P2216624506146974426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 1 - ⌈((n % 4 : ℕ) : ℚ) / 4⌉

end

end A083593.P2216624506146974426

namespace A083593

/-- `2*a(n-1)+1-ceil(n%4/4)` -/
def P2216624506146974426.Spec : Prop :=
  ∀ n, P2216624506146974426.a n = A083593 n

end A083593

/-! ## A083593.P15622898230749483769

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=17`
-/

namespace A083593.P15622898230749483769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 17] fun n a =>
  2 * a (n - 1) + a (n - 4) - 2 * a (n - 5)

end

end A083593.P15622898230749483769

namespace A083593

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P15622898230749483769.Spec : Prop :=
  ∀ n, P15622898230749483769.a n = A083593 n

end A083593

/-! ## A083593.P5552996677145286166

`floor((2^(n+5)+1)/30)`
-/

namespace A083593.P5552996677145286166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 5) + 1 : ℚ) / 30⌋

end

end A083593.P5552996677145286166

namespace A083593

/-- `floor((2^(n+5)+1)/30)` -/
def P5552996677145286166.Spec : Prop :=
  ∀ n, P5552996677145286166.a n = A083593 n

end A083593

/-! ## A083593.P14033712771586821686

`a(n-4)+2^n` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A083593.P14033712771586821686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 4) + 2 ^ n

end

end A083593.P14033712771586821686

namespace A083593

/-- `a(n-4)+2^n` -/
def P14033712771586821686.Spec : Prop :=
  ∀ n, (P14033712771586821686.a n : ℤ) = A083593 n

end A083593

/-! ## A083593.P14194249098375389269

`∑[A115451(n)]`
-/

namespace A083593.P14194249098375389269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083593.P14194249098375389269

namespace A083593

/-- `∑[A115451(n)]` -/
def P14194249098375389269.Spec : Prop :=
  ∀ n, P14194249098375389269.a n = A083593 n

end A083593

/-! ## A083593.P1661281625658260422

`A262450(n+1)-1`
-/

namespace A083593.P1661281625658260422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262450 (n + 1) - 1

end

end A083593.P1661281625658260422

namespace A083593

/-- `A262450(n+1)-1` -/
def P1661281625658260422.Spec : Prop :=
  ∀ n, P1661281625658260422.a n = A083593 n

end A083593

/-! ## A083593.P9108015075213012665

`∑[∑[A181586(n+2)]]`
-/

namespace A083593.P9108015075213012665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083593.P9108015075213012665

namespace A083593

/-- `∑[∑[A181586(n+2)]]` -/
def P9108015075213012665.Spec : Prop :=
  ∀ n, P9108015075213012665.a n = A083593 n

end A083593

/-! ## A083593.P17721822754881226102

`A256494(n+2)+A000975(n)`
-/

namespace A083593.P17721822754881226102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (n + 2) + A000975 n

end

end A083593.P17721822754881226102

namespace A083593

/-- `A256494(n+2)+A000975(n)` -/
def P17721822754881226102.Spec : Prop :=
  ∀ n, P17721822754881226102.a n = A083593 n

end A083593

/-! ## A083593.P1584370423058269514

`∑[2^n-a(n-2)]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A083593.P1584370423058269514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A083593.P1584370423058269514

namespace A083593

/-- `∑[2^n-a(n-2)]-a(n-1)` -/
def P1584370423058269514.Spec : Prop :=
  ∀ n, P1584370423058269514.a n = A083593 n

end A083593

/-! ## A083593.P6159286083352841140

`∑[abs(A077931(n))]`
-/

namespace A083593.P6159286083352841140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077931 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083593.P6159286083352841140

namespace A083593

/-- `∑[abs(A077931(n))]` -/
def P6159286083352841140.Spec : Prop :=
  ∀ n, P6159286083352841140.a n = A083593 n

end A083593

/-! ## A083593.P4684601621694590349

`Δ[A368346(n+3)]`
-/

namespace A083593.P4684601621694590349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368346 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083593.P4684601621694590349

namespace A083593

/-- `Δ[A368346(n+3)]` -/
def P4684601621694590349.Spec : Prop :=
  ∀ n, P4684601621694590349.a n = A083593 n

end A083593

/-! ## A083593.P12098453701779730510

`A077854(n)-a(n-1)` with `a(0)=1`
-/

namespace A083593.P12098453701779730510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077854 n - a (n - 1)

end

end A083593.P12098453701779730510

namespace A083593

/-- `A077854(n)-a(n-1)` -/
def P12098453701779730510.Spec : Prop :=
  ∀ n, P12098453701779730510.a n = A083593 n

end A083593

/-! ## A083593.P7937947497465925536

`and(A052997(n), A262864(n))`
-/

namespace A083593.P7937947497465925536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052997 n) (A262864 n)

end

end A083593.P7937947497465925536

namespace A083593

/-- `and(A052997(n), A262864(n))` -/
def P7937947497465925536.Spec : Prop :=
  ∀ n, P7937947497465925536.a n = A083593 n

end A083593

/-! ## A083593.P8948193697908860970

`and(A077854(n), A262864(n))`
-/

namespace A083593.P8948193697908860970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077854 n) (A262864 n)

end

end A083593.P8948193697908860970

namespace A083593

/-- `and(A077854(n), A262864(n))` -/
def P8948193697908860970.Spec : Prop :=
  ∀ n, P8948193697908860970.a n = A083593 n

end A083593

/-! ## A083593.P7237177823047680392

`and(A077854(n), A267045(n))`
-/

namespace A083593.P7237177823047680392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077854 n) (A267045 n)

end

end A083593.P7237177823047680392

namespace A083593

/-- `and(A077854(n), A267045(n))` -/
def P7237177823047680392.Spec : Prop :=
  ∀ n, P7237177823047680392.a n = A083593 n

end A083593

/-! ## A083593.P1532535304924684595

`and(A077854(n), A283216(n))`
-/

namespace A083593.P1532535304924684595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077854 n) (A283216 n)

end

end A083593.P1532535304924684595

namespace A083593

/-- `and(A077854(n), A283216(n))` -/
def P1532535304924684595.Spec : Prop :=
  ∀ n, P1532535304924684595.a n = A083593 n

end A083593

/-! ## A083593.P6412506434877656411

`and(A262864(n), A265381(n))`
-/

namespace A083593.P6412506434877656411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262864 n) (A265381 n)

end

end A083593.P6412506434877656411

namespace A083593

/-- `and(A262864(n), A265381(n))` -/
def P6412506434877656411.Spec : Prop :=
  ∀ n, P6412506434877656411.a n = A083593 n

end A083593

/-! ## A083593.P14367581981966237822

`and(A262864(n), A267045(n))`
-/

namespace A083593.P14367581981966237822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262864 n) (A267045 n)

end

end A083593.P14367581981966237822

namespace A083593

/-- `and(A262864(n), A267045(n))` -/
def P14367581981966237822.Spec : Prop :=
  ∀ n, P14367581981966237822.a n = A083593 n

end A083593

/-! ## A083593.P9480398246373643675

`and(A262864(n), A281216(n))`
-/

namespace A083593.P9480398246373643675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262864 n) (A281216 n)

end

end A083593.P9480398246373643675

namespace A083593

/-- `and(A262864(n), A281216(n))` -/
def P9480398246373643675.Spec : Prop :=
  ∀ n, P9480398246373643675.a n = A083593 n

end A083593

/-!
# A083594: a(n) = (7 - 4*(-2)^n)/3.

The programs for A083594, the canonical program `A083594.P5195434087893950998` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083594 has offset 0).

The definition of A083594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083594.P5195434087893950998

`(7-4*(-2)^n)/3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083594

/-- `(7-4*(-2)^n)/3` -/
def P5195434087893950998.Spec : Prop :=
  ∀ n, P5195434087893950998.a n = (A083594 n : ℚ)

end A083594

/-! ## A083594.P11708796390681886790

`∑[ogf((1+6x)/(1+2x))]`
-/

namespace A083594.P11708796390681886790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083594.P11708796390681886790

namespace A083594

/-- `∑[ogf((1+6x)/(1+2x))]` -/
def P11708796390681886790.Spec : Prop :=
  ∀ n, P11708796390681886790.a n = A083594 n

end A083594

/-! ## A083594.P357791813832053257

`ogf((1+6x)/(1+x-2x^2))`
-/

namespace A083594.P357791813832053257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 1, -2] n

end

end A083594.P357791813832053257

namespace A083594

/-- `ogf((1+6x)/(1+x-2x^2))` -/
def P357791813832053257.Spec : Prop :=
  ∀ n, P357791813832053257.a n = A083594 n

end A083594

/-! ## A083594.P11303455540938159679

`7-2*a(n-1)` with `a(0)=1`
-/

namespace A083594.P11303455540938159679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 - 2 * a (n - 1)

end

end A083594.P11303455540938159679

namespace A083594

/-- `7-2*a(n-1)` -/
def P11303455540938159679.Spec : Prop :=
  ∀ n, P11303455540938159679.a n = A083594 n

end A083594

/-! ## A083594.P3205100883487087401

`a(n-2)-(-2)^n` with `a(0)=1, a(1)=5`
-/

namespace A083594.P3205100883487087401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) - (-2) ^ n

end

end A083594.P3205100883487087401

namespace A083594

/-- `a(n-2)-(-2)^n` -/
def P3205100883487087401.Spec : Prop :=
  ∀ n, P3205100883487087401.a n = A083594 n

end A083594

/-! ## A083594.P16165204910021684797

`∑[(1-3%(n+3))^(n+1)]`
-/

namespace A083594.P16165204910021684797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((3 % (n + 3) : ℕ) : ℤ)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083594.P16165204910021684797

namespace A083594

/-- `∑[(1-3%(n+3))^(n+1)]` -/
def P16165204910021684797.Spec : Prop :=
  ∀ n, P16165204910021684797.a n = A083594 n

end A083594

/-! ## A083594.P9110761588552239651

`7-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A083594.P9110761588552239651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 - a (n - 1) - a (n - 1)

end

end A083594.P9110761588552239651

namespace A083594

/-- `7-a(n-1)-a(n-1)` -/
def P9110761588552239651.Spec : Prop :=
  ∀ n, P9110761588552239651.a n = A083594 n

end A083594

/-! ## A083594.P14712747169496856144

`Δ[A077898(n)]+2`
-/

namespace A083594.P14712747169496856144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A083594.P14712747169496856144

namespace A083594

/-- `Δ[A077898(n)]+2` -/
def P14712747169496856144.Spec : Prop :=
  ∀ n, P14712747169496856144.a n = A083594 n

end A083594

/-! ## A083594.P4824334617104667062

`A077925(n+1)+2`
-/

namespace A083594.P4824334617104667062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (n + 1) + 2

end

end A083594.P4824334617104667062

namespace A083594

/-- `A077925(n+1)+2` -/
def P4824334617104667062.Spec : Prop :=
  ∀ n, P4824334617104667062.a n = A083594 n

end A083594

/-! ## A083594.P5647962757752833701

`A084247(n+2)+1`
-/

namespace A083594.P5647962757752833701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (n + 2) + 1

end

end A083594.P5647962757752833701

namespace A083594

/-- `A084247(n+2)+1` -/
def P5647962757752833701.Spec : Prop :=
  ∀ n, P5647962757752833701.a n = A083594 n

end A083594

/-! ## A083594.P13291171674208640465

`A268741(n+2)-2`
-/

namespace A083594.P13291171674208640465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268741 (n + 2) - 2

end

end A083594.P13291171674208640465

namespace A083594

/-- `A268741(n+2)-2` -/
def P13291171674208640465.Spec : Prop :=
  ∀ n, P13291171674208640465.a n = A083594 n

end A083594

/-! ## A083594.P7162713496548110328

`4-A140966(n+2)`
-/

namespace A083594.P7162713496548110328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A140966 (n + 2)

end

end A083594.P7162713496548110328

namespace A083594

/-- `4-A140966(n+2)` -/
def P7162713496548110328.Spec : Prop :=
  ∀ n, P7162713496548110328.a n = A083594 n

end A083594

/-! ## A083594.P8366190440985401656

`4-A171501(n+2)`
-/

namespace A083594.P8366190440985401656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A171501 (n + 2)

end

end A083594.P8366190440985401656

namespace A083594

/-- `4-A171501(n+2)` -/
def P8366190440985401656.Spec : Prop :=
  ∀ n, P8366190440985401656.a n = A083594 n

end A083594

/-! ## A083594.P5210611281253217162

`3-2*A077925(n)`
-/

namespace A083594.P5210611281253217162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A077925 n

end

end A083594.P5210611281253217162

namespace A083594

/-- `3-2*A077925(n)` -/
def P5210611281253217162.Spec : Prop :=
  ∀ n, P5210611281253217162.a n = A083594 n

end A083594

/-! ## A083594.P14532438434750382681

`4*A084247(n)-3`
-/

namespace A083594.P14532438434750382681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084247 n - 3

end

end A083594.P14532438434750382681

namespace A083594

/-- `4*A084247(n)-3` -/
def P14532438434750382681.Spec : Prop :=
  ∀ n, P14532438434750382681.a n = A083594 n

end A083594

/-! ## A083594.P4401406803217092619

`5-4*A151575(n)`
-/

namespace A083594.P4401406803217092619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * A151575 n

end

end A083594.P4401406803217092619

namespace A083594

/-- `5-4*A151575(n)` -/
def P4401406803217092619.Spec : Prop :=
  ∀ n, P4401406803217092619.a n = A083594 n

end A083594

/-! ## A083594.P12739965554717720358

`A078052(Δ[n²])+3`
-/

namespace A083594.P12739965554717720358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A083594.P12739965554717720358

namespace A083594

/-- `A078052(Δ[n²])+3` -/
def P12739965554717720358.Spec : Prop :=
  ∀ n, P12739965554717720358.a n = A083594 n

end A083594

/-! ## A083594.P2418639509768686964

`∑[A122803(n+1)]+3`
-/

namespace A083594.P2418639509768686964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A083594.P2418639509768686964

namespace A083594

/-- `∑[A122803(n+1)]+3` -/
def P2418639509768686964.Spec : Prop :=
  ∀ n, P2418639509768686964.a n = A083594 n

end A083594

/-! ## A083594.P7159835490398686942

`2*A151575(n+1)+1`
-/

namespace A083594.P7159835490398686942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151575 (n + 1) + 1

end

end A083594.P7159835490398686942

namespace A083594

/-- `2*A151575(n+1)+1` -/
def P7159835490398686942.Spec : Prop :=
  ∀ n, P7159835490398686942.a n = A083594 n

end A083594

/-! ## A083594.P14830854493881197794

`A077953(2*(n+1))+2`
-/

namespace A083594.P14830854493881197794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (2 * (n + 1)) + 2

end

end A083594.P14830854493881197794

namespace A083594

/-- `A077953(2*(n+1))+2` -/
def P14830854493881197794.Spec : Prop :=
  ∀ n, P14830854493881197794.a n = A083594 n

end A083594

/-!
# A083595: a(n) = (7*2^n - 4(-1)^n)/3.

The programs for A083595, the canonical program `A083595.P4404988072772700895` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083595 has offset 0).

The definition of A083595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083595.P4404988072772700895

`(7*2^n-4*(-1)^n)/3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083595

/-- `(7*2^n-4*(-1)^n)/3` -/
def P4404988072772700895.Spec : Prop :=
  ∀ n, P4404988072772700895.a n = (A083595 n : ℚ)

end A083595

/-! ## A083595.P4057391413416546736

`ogf((1+5x)/(1-x-2x^2))`
-/

namespace A083595.P4057391413416546736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -1, -2] n

end

end A083595.P4057391413416546736

namespace A083595

/-- `ogf((1+5x)/(1-x-2x^2))` -/
def P4057391413416546736.Spec : Prop :=
  ∀ n, P4057391413416546736.a n = A083595 n

end A083595

/-! ## A083595.P10411695100623067750

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A083595.P10411695100623067750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A083595.P10411695100623067750

namespace A083595

/-- `a(n-1)+2*a(n-2)` -/
def P10411695100623067750.Spec : Prop :=
  ∀ n, (P10411695100623067750.a n : ℤ) = A083595 n

end A083595

/-! ## A083595.P2003856194741965431

`2*(a(n-1)-2*(-1)^n)` with `a(0)=1`
-/

namespace A083595.P2003856194741965431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - 2 * (-1) ^ n)

end

end A083595.P2003856194741965431

namespace A083595

/-- `2*(a(n-1)-2*(-1)^n)` -/
def P2003856194741965431.Spec : Prop :=
  ∀ n, P2003856194741965431.a n = A083595 n

end A083595

/-! ## A083595.P16231559393591632995

`a(n-1)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A083595.P16231559393591632995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2))

end

end A083595.P16231559393591632995

namespace A083595

/-- `a(n-1)+a(n-2)+a(n-2)` -/
def P16231559393591632995.Spec : Prop :=
  ∀ n, (P16231559393591632995.a n : ℤ) = A083595 n

end A083595

/-! ## A083595.P14668273057690988208

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A083595.P14668273057690988208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A083595.P14668273057690988208

namespace A083595

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P14668273057690988208.Spec : Prop :=
  ∀ n, P14668273057690988208.a n = A083595 n

end A083595

/-! ## A083595.P1352876831711202111

`A115102(n)-2^n`
-/

namespace A083595.P1352876831711202111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115102 n - (2 ^ n : ℤ)

end

end A083595.P1352876831711202111

namespace A083595

/-- `A115102(n)-2^n` -/
def P1352876831711202111.Spec : Prop :=
  ∀ n, P1352876831711202111.a n = A083595 n

end A083595

/-! ## A083595.P7522915814747379212

`A097073(n+1)+2^n`
-/

namespace A083595.P7522915814747379212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097073 (n + 1) + (2 ^ n : ℤ)

end

end A083595.P7522915814747379212

namespace A083595

/-- `A097073(n+1)+2^n` -/
def P7522915814747379212.Spec : Prop :=
  ∀ n, P7522915814747379212.a n = A083595 n

end A083595

/-! ## A083595.P9022299973941381486

`A135092(n)-a(n-1)` with `a(0)=1`
-/

namespace A083595.P9022299973941381486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135092 n - a (n - 1)

end

end A083595.P9022299973941381486

namespace A083595

/-- `A135092(n)-a(n-1)` -/
def P9022299973941381486.Spec : Prop :=
  ∀ n, P9022299973941381486.a n = A083595 n

end A083595

/-! ## A083595.P8040137498217164077

`A005009(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A083595.P8040137498217164077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005009 (n - 1) - a (n - 1)

end

end A083595.P8040137498217164077

namespace A083595

/-- `A005009(n-1)-a(n-1)` -/
def P8040137498217164077.Spec : Prop :=
  ∀ n, P8040137498217164077.a n = A083595 n

end A083595

/-! ## A083595.P11297657368404087092

`A125176(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A083595.P11297657368404087092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A125176 (n + 2) - a (n - 1)

end

end A083595.P11297657368404087092

namespace A083595

/-- `A125176(n+2)-a(n-1)` -/
def P11297657368404087092.Spec : Prop :=
  ∀ n, P11297657368404087092.a n = A083595 n

end A083595

/-! ## A083595.P14049087817334486184

`Δ[A101622(n)]+round(2^n/3)`
-/

namespace A083595.P14049087817334486184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

end

end A083595.P14049087817334486184

namespace A083595

/-- `Δ[A101622(n)]+round(2^n/3)` -/
def P14049087817334486184.Spec : Prop :=
  ∀ n, P14049087817334486184.a n = A083595 n

end A083595

/-! ## A083595.P7580911611487130441

`∑[2^n]+Δ[Δ[A001045(n)]]+1`
-/

namespace A083595.P7580911611487130441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (f2 (n + 1) - f2 n + 1)

end

end A083595.P7580911611487130441

namespace A083595

/-- `∑[2^n]+Δ[Δ[A001045(n)]]+1` -/
def P7580911611487130441.Spec : Prop :=
  ∀ n, P7580911611487130441.a n = A083595 n

end A083595

/-! ## A083595.P12057796485985277813

`A007283(n)+2^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A083595.P12057796485985277813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A007283 n : ℚ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A083595.P12057796485985277813

namespace A083595

/-- `A007283(n)+2^(n-1)-a(n-1)` -/
def P12057796485985277813.Spec : Prop :=
  ∀ n, P12057796485985277813.a n = (A083595 n : ℚ)

end A083595

/-! ## A083595.P3167989493870718803

`A283642(n)+Δ[2^n-(char[2*n+1]+1)]`
-/

namespace A083595.P3167989493870718803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n + (f1 (n + 1) - f1 n)

end

end A083595.P3167989493870718803

namespace A083595

/-- `A283642(n)+Δ[2^n-(char[2*n+1]+1)]` -/
def P3167989493870718803.Spec : Prop :=
  ∀ n, P3167989493870718803.a n = A083595 n

end A083595

/-! ## A083595.P9119656917063890624

`A083582(n)-A001045(n)`
-/

namespace A083595.P9119656917063890624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083582 n - A001045 n

end

end A083595.P9119656917063890624

namespace A083595

/-- `A083582(n)-A001045(n)` -/
def P9119656917063890624.Spec : Prop :=
  ∀ n, P9119656917063890624.a n = A083595 n

end A083595

/-! ## A083595.P6119790986060240300

`A062092(n)-A033999(n)`
-/

namespace A083595.P6119790986060240300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - A033999 n

end

end A083595.P6119790986060240300

namespace A083595

/-- `A062092(n)-A033999(n)` -/
def P6119790986060240300.Spec : Prop :=
  ∀ n, P6119790986060240300.a n = A083595 n

end A083595

/-! ## A083595.P900242432356366443

`A259713(n)-A014113(n)`
-/

namespace A083595.P900242432356366443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259713 n - A014113 n

end

end A083595.P900242432356366443

namespace A083595

/-- `A259713(n)-A014113(n)` -/
def P900242432356366443.Spec : Prop :=
  ∀ n, P900242432356366443.a n = A083595 n

end A083595

/-! ## A083595.P11153062370426222510

`A280173(n)-A000975(n)`
-/

namespace A083595.P11153062370426222510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280173 n - A000975 n

end

end A083595.P11153062370426222510

namespace A083595

/-- `A280173(n)-A000975(n)` -/
def P11153062370426222510.Spec : Prop :=
  ∀ n, P11153062370426222510.a n = A083595 n

end A083595

/-! ## A083595.P6286783469060224984

`A159290(n)-A269019(n)`
-/

namespace A083595.P6286783469060224984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159290 n - A269019 n

end

end A083595.P6286783469060224984

namespace A083595

/-- `A159290(n)-A269019(n)` -/
def P6286783469060224984.Spec : Prop :=
  ∀ n, P6286783469060224984.a n = A083595 n

end A083595

/-!
# A083597: a(n) = (7*4^n - 4)/3.

The programs for A083597, the canonical program `A083597.P7919937701824659899` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083597 has offset 0).

The definition of A083597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*4^n-4)/3` (program `A083597.P13225712023988100495`, by `A083597.P13225712023988100495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083597.P7919937701824659899

`4*a(n-1)+4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083597

/-- `4*a(n-1)+4` -/
def P7919937701824659899.Spec : Prop :=
  ∀ n, (P7919937701824659899.a n : ℤ) = A083597 n

theorem P7919937701824659899.correct : P7919937701824659899.Spec := by
  intro n
  simp only [A083597]

end A083597

/-! ## A083597.P9575254304328695878

`A020988(n)+A020989(n)`
-/

namespace A083597.P9575254304328695878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n + A020989 n

end

end A083597.P9575254304328695878

namespace A083597

/-- `A020988(n)+A020989(n)` -/
def P9575254304328695878.Spec : Prop :=
  ∀ n, P9575254304328695878.a n = A083597 n

end A083597

/-! ## A083597.P13225712023988100495

`(7*4^n-4)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083597.P13225712023988100495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 4 ^ n : ℤ) - 4 : ℚ) / 3

end

end A083597.P13225712023988100495

namespace A083597

/-- `(7*4^n-4)/3` -/
def P13225712023988100495.Spec : Prop :=
  ∀ n, P13225712023988100495.a n = (A083597 n : ℚ)

theorem P13225712023988100495.correct : P13225712023988100495.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083597, Nat.add_sub_cancel, A083597.P13225712023988100495.a, A083597.P7919937701824659899.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083597, Nat.add_sub_cancel, A083597.P13225712023988100495.a, A083597.P7919937701824659899.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083597

/-! ## A083597.P13693524328048928362

`ogf((1+3x)/(1-5x+4x^2))`
-/

namespace A083597.P13693524328048928362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -5, 4] n

end

end A083597.P13693524328048928362

namespace A083597

/-- `ogf((1+3x)/(1-5x+4x^2))` -/
def P13693524328048928362.Spec : Prop :=
  ∀ n, P13693524328048928362.a n = A083597 n

end A083597

/-! ## A083597.P8249518634533147744

`∑[4*a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A083597.P8249518634533147744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083597.P8249518634533147744

namespace A083597

/-- `∑[4*a(n-1)]` -/
def P8249518634533147744.Spec : Prop :=
  ∀ n, (P8249518634533147744.a n : ℤ) = A083597 n

end A083597

/-! ## A083597.P16487237064520184443

`lcm(4, a(n-1)+1)` with `a(0)=1, a(1)=8`
-/

namespace A083597.P16487237064520184443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.lcm 4 (a (n - 1) + 1)

end

end A083597.P16487237064520184443

namespace A083597

/-- `lcm(4, a(n-1)+1)` -/
def P16487237064520184443.Spec : Prop :=
  ∀ n, (P16487237064520184443.a n : ℤ) = A083597 n

end A083597

/-! ## A083597.P7171363063867546681

`4*or(1, a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A083597.P7171363063867546681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 * Nat.lor 1 (a (n - 1))

end

end A083597.P7171363063867546681

namespace A083597

/-- `4*or(1, a(n-1))` -/
def P7171363063867546681.Spec : Prop :=
  ∀ n, (P7171363063867546681.a n : ℤ) = A083597 n

end A083597

/-! ## A083597.P6256440591148815190

`4*xor(1, a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A083597.P6256440591148815190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 * Nat.xor 1 (a (n - 1))

end

end A083597.P6256440591148815190

namespace A083597

/-- `4*xor(1, a(n-1))` -/
def P6256440591148815190.Spec : Prop :=
  ∀ n, (P6256440591148815190.a n : ℤ) = A083597 n

end A083597

/-! ## A083597.P5936769627623975626

`8-4*(1-a(n-1))` with `a(0)=1`
-/

namespace A083597.P5936769627623975626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 - 4 * (1 - a (n - 1))

end

end A083597.P5936769627623975626

namespace A083597

/-- `8-4*(1-a(n-1))` -/
def P5936769627623975626.Spec : Prop :=
  ∀ n, P5936769627623975626.a n = A083597 n

end A083597

/-! ## A083597.P12659777540684739406

`a(n-1)/(1/2)²+4` with `a(0)=1`
-/

namespace A083597.P12659777540684739406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + 4

end

end A083597.P12659777540684739406

namespace A083597

/-- `a(n-1)/(1/2)²+4` -/
def P12659777540684739406.Spec : Prop :=
  ∀ n, P12659777540684739406.a n = (A083597 n : ℚ)

end A083597

/-! ## A083597.P16622916315380263090

`4-a(n-1)/(3/4-1)` with `a(0)=1`
-/

namespace A083597.P16622916315380263090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 - a (n - 1) / ((3 : ℚ) / 4 - 1)

end

end A083597.P16622916315380263090

namespace A083597

/-- `4-a(n-1)/(3/4-1)` -/
def P16622916315380263090.Spec : Prop :=
  ∀ n, P16622916315380263090.a n = (A083597 n : ℚ)

end A083597

/-! ## A083597.P16352157583507613959

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+4` with `a(0)=1`
-/

namespace A083597.P16352157583507613959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 4)))

end

end A083597.P16352157583507613959

namespace A083597

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+4` -/
def P16352157583507613959.Spec : Prop :=
  ∀ n, (P16352157583507613959.a n : ℤ) = A083597 n

theorem P16352157583507613959.correct : P16352157583507613959.Spec := by
  intro n
  simp only [A083597, Nat.add_sub_cancel, A083597.P16352157583507613959.a, A083597.P7919937701824659899.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083597

/-! ## A083597.P36538255674798006

`A206374(n)-1`
-/

namespace A083597.P36538255674798006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206374 n - 1

end

end A083597.P36538255674798006

namespace A083597

/-- `A206374(n)-1` -/
def P36538255674798006.Spec : Prop :=
  ∀ n, P36538255674798006.a n = A083597 n

end A083597

/-! ## A083597.P11778690213637843945

`A308124(n)-2`
-/

namespace A083597.P11778690213637843945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308124 n - 2

end

end A083597.P11778690213637843945

namespace A083597

/-- `A308124(n)-2` -/
def P11778690213637843945.Spec : Prop :=
  ∀ n, P11778690213637843945.a n = A083597 n

end A083597

/-! ## A083597.P15893992906680828986

`A083595(2*n)`
-/

namespace A083597.P15893992906680828986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083595 (2 * n)

end

end A083597.P15893992906680828986

namespace A083597

/-- `A083595(2*n)` -/
def P15893992906680828986.Spec : Prop :=
  ∀ n, P15893992906680828986.a n = A083597 n

end A083597

/-! ## A083597.P16259079070476109557

`A097164(2*n)`
-/

namespace A083597.P16259079070476109557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097164 (2 * n)

end

end A083597.P16259079070476109557

namespace A083597

/-- `A097164(2*n)` -/
def P16259079070476109557.Spec : Prop :=
  ∀ n, P16259079070476109557.a n = A083597 n

end A083597

/-! ## A083597.P15539567604190159070

`A221049(2*n)`
-/

namespace A083597.P15539567604190159070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221049 (2 * n)

end

end A083597.P15539567604190159070

namespace A083597

/-- `A221049(2*n)` -/
def P15539567604190159070.Spec : Prop :=
  ∀ n, P15539567604190159070.a n = A083597 n

end A083597

/-! ## A083597.P13151499902086711978

`A176961(Δ[n²])`
-/

namespace A083597.P13151499902086711978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176961 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083597.P13151499902086711978

namespace A083597

/-- `A176961(Δ[n²])` -/
def P13151499902086711978.Spec : Prop :=
  ∀ n, P13151499902086711978.a n = A083597 n

end A083597

/-! ## A083597.P10512457998128758885

`record[Δ[A094359(n)]]`
-/

namespace A083597.P10512457998128758885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083597.P10512457998128758885

namespace A083597

/-- `record[Δ[A094359(n)]]` -/
def P10512457998128758885.Spec : Prop :=
  ∀ n, P10512457998128758885.a n = A083597 n

end A083597

/-!
# A083598: Starting positions of strings of four 0's in the decimal expansion of Pi.

The programs for A083598, there is no canonical definition to state claims against.
-/

/-! ## A083598.P2908641047286684872

`∩[A050202(n+1)-1, A050202(n+1)]`
-/

namespace A083598.P2908641047286684872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050202 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083598.P2908641047286684872

