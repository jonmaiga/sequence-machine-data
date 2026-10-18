import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C021
import Seq.B001.C000
import Seq.B001.C001
import Seq.B002.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A172603: a(n) = (7n)!/(7!^n).

The programs for A172603, there is no canonical definition to state claims against.
-/

/-! ## A172603.P8976859447194520895

`A187783(eq[7, A025581(n)])`
-/

namespace A172603.P8976859447194520895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172603.P8976859447194520895

/-! ## A172603.P13229851393636167365

`A187783(eq[8, A195663(n)])`
-/

namespace A172603.P13229851393636167365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172603.P13229851393636167365

/-! ## A172603.P13550572243865438851

`∏[A000580(7*A028310(n))]`
-/

namespace A172603.P13550572243865438851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (7 * A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A172603.P13550572243865438851

/-! ## A172603.P1558566522339477195

`A187783(eq[8, A004736(n+1)])`
-/

namespace A172603.P1558566522339477195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172603.P1558566522339477195

/-! ## A172603.P10458095530326091136

`A187783(eq[32, A128307(n+1)])`
-/

namespace A172603.P10458095530326091136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172603.P10458095530326091136

/-!
# A172609: 

The programs for A172609, there is no canonical definition to state claims against.
-/

/-! ## A172609.P12031531118925368338

`n!*A025040(n)`
-/

namespace A172609.P12031531118925368338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025040 n

end

end A172609.P12031531118925368338

/-! ## A172609.P1700783063742606818

`A000142(n)*A025040(n)`
-/

namespace A172609.P1700783063742606818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A025040 n

end

end A172609.P1700783063742606818

/-!
# A172613: 

The programs for A172613, there is no canonical definition to state claims against.
-/

/-! ## A172613.P14365191104636484587

`A089759(eq[9, A002262(n)])`
-/

namespace A172613.P14365191104636484587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172613.P14365191104636484587

/-!
# A172620: Number of n X n 0..2 arrays with row sums 12 and column sums 12.

The programs for A172620, there is no canonical definition to state claims against.
-/

/-! ## A172620.P11015793045947551580

`lcm(A257493(A169696(n+1)), A350839(n))`
-/

namespace A172620.P11015793045947551580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A257493 (A169696 (n + 1)).toNat) (A350839 n)

end

end A172620.P11015793045947551580

/-! ## A172620.P16367372181435653584

`A000681(A341806(3*n+8))*A104320(n)`
-/

namespace A172620.P16367372181435653584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000681 (A341806 (3 * n + 8)).toNat * A104320 n

end

end A172620.P16367372181435653584

/-! ## A172620.P13747028775102738299

`A008552(A038698(2*n+3))%A046854(A329789(n+1))`
-/

namespace A172620.P13747028775102738299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008552 (A038698 (2 * n + 3)).toNat) (A046854 (A329789 (n + 1)).toNat)

end

end A172620.P13747028775102738299

/-!
# A172623: Number of n X n 0..2 arrays with row sums 10 and column sums 10.

The programs for A172623, there is no canonical definition to state claims against.
-/

/-! ## A172623.P9762845915390132378

`A172728(n+1)^A338116(n+2)`
-/

namespace A172623.P9762845915390132378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172728 (n + 1) : ℚ) ^ (A338116 (n + 2) : ℤ)

end

end A172623.P9762845915390132378

/-! ## A172623.P16884069370344365641

`A000681(A300700(3*a(n-1)+1-a(n-2)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A172623.P16884069370344365641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  A000681 (A300700 (3 * a (n - 1) + (1 - a (n - 2))).toNat).toNat

end

end A172623.P16884069370344365641

/-!
# A172624: Numbers k such that 2*A000005(k) = 3*A000005(k+1).

The programs for A172624, the canonical program `A172624.P1675348428344907413` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172624 has offset 1).

The definition of A172624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172624.P1675348428344907413

`eq[3, A145154(n)/A062011(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A172624

/-- `eq[3, A145154(n)/A062011(n+1)]` -/
def P1675348428344907413.Spec : Prop :=
  ∀ n, (P1675348428344907413.a n : ℤ) = A172624 (n + 1)

theorem P1675348428344907413.correct : P1675348428344907413.Spec := by
  intro n
  simp only [A172624, Nat.add_sub_cancel]

end A172624

/-! ## A172624.P7308463696132315652

`eq[6, A145154(n)/A000005(n+1)]`
-/

namespace A172624.P7308463696132315652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145154 n : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A172624.P7308463696132315652

namespace A172624

/-- `eq[6, A145154(n)/A000005(n+1)]` -/
def P7308463696132315652.Spec : Prop :=
  ∀ n, (P7308463696132315652.a n : ℤ) = A172624 (n + 1)

end A172624

/-! ## A172624.P10739557967722795831

`eq[A032741(n), A061034(A061034(n+1))]`
-/

namespace A172624.P10739557967722795831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061034 (A061034 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172624.P10739557967722795831

namespace A172624

/-- `eq[A032741(n), A061034(A061034(n+1))]` -/
def P10739557967722795831.Spec : Prop :=
  ∀ n, (P10739557967722795831.a n : ℤ) = A172624 (n + 1)

end A172624

/-! ## A172624.P667401717108935860

`eq[A032741(n), A276625(A061142(n+1))]`
-/

namespace A172624.P667401717108935860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A061142 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172624.P667401717108935860

namespace A172624

/-- `eq[A032741(n), A276625(A061142(n+1))]` -/
def P667401717108935860.Spec : Prop :=
  ∀ n, (P667401717108935860.a n : ℤ) = A172624 (n + 1)

end A172624

/-!
# A172628: Number of n X n 0..2 arrays with row sums 7 and column sums 7.

The programs for A172628, there is no canonical definition to state claims against.
-/

/-! ## A172628.P16489153639964549885

`n*A222275(A027994(n))`
-/

namespace A172628.P16489153639964549885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A222275 (A027994 n).toNat

end

end A172628.P16489153639964549885

/-!
# A172629: Number of n X n 0..2 arrays with row sums 8 and column sums 8.

The programs for A172629, there is no canonical definition to state claims against.
-/

/-! ## A172629.P1561711381954960289

`A145880(4*ceil(2^(n-1)))`
-/

namespace A172629.P1561711381954960289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145880 (4 * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A172629.P1561711381954960289

/-!
# A172631: Number of n X n 0..2 arrays with row sums 16 and column sums 16.

The programs for A172631, there is no canonical definition to state claims against.
-/

/-! ## A172631.P14661258562380563375

`A282377(n+1)*A321725(A285250(3*n+5))`
-/

namespace A172631.P14661258562380563375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (n + 1) * A321725 (A285250 (3 * n + 5)).toNat

end

end A172631.P14661258562380563375

/-!
# A172634: Number of n X 3 0..2 arrays with row sums 3 and column sums n.

The programs for A172634, there is no canonical definition to state claims against.
-/

/-! ## A172634.P7301987077146038950

`A328747(∑[n+3]+n+3)`
-/

namespace A172634.P7301987077146038950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A172634.P7301987077146038950

/-! ## A172634.P465997798114747283

`A334549(∑[n+3]+6)`
-/

namespace A172634.P465997798114747283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A172634.P465997798114747283

/-! ## A172634.P13827262061327713854

`or(1, A334549(A046691(n+2)))`
-/

namespace A172634.P13827262061327713854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A334549 (A046691 (n + 2)).toNat)

end

end A172634.P13827262061327713854

/-! ## A172634.P16810687112918553633

`A275122(A081435(n))`
-/

namespace A172634.P16810687112918553633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275122 (A081435 n).toNat

end

end A172634.P16810687112918553633

/-!
# A172636: Number of n X 7 0..2 arrays with row sums 7 and column sums n.

The programs for A172636, there is no canonical definition to state claims against.
-/

/-! ## A172636.P10284747230865524692

`A334549(A051936(n+9)+1)`
-/

namespace A172636.P10284747230865524692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A051936 (n + 9) + 1).toNat

end

end A172636.P10284747230865524692

/-! ## A172636.P16976216598871423681

`A203563(n+1)-2`
-/

namespace A172636.P16976216598871423681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203563 (n + 1) - 2

end

end A172636.P16976216598871423681

/-!
# A172638: Number of n X 8 0..2 arrays with row sums 8 and column sums n.

The programs for A172638, there is no canonical definition to state claims against.
-/

/-! ## A172638.P13738882441026863137

`A334549(A056000(n+6)+1)`
-/

namespace A172638.P13738882441026863137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A056000 (n + 6) + 1).toNat

end

end A172638.P13738882441026863137

/-!
# A172639: Number of n X 5 0..2 arrays with row sums 5 and column sums n.

The programs for A172639, there is no canonical definition to state claims against.
-/

/-! ## A172639.P9085441667515790213

`A334549(A155212(n+3)+2)`
-/

namespace A172639.P9085441667515790213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A155212 (n + 3) + 2).toNat

end

end A172639.P9085441667515790213

/-!
# A172641: Number of n X 9 0..2 arrays with row sums 9 and column sums n.

The programs for A172641, there is no canonical definition to state claims against.
-/

/-! ## A172641.P9685781189163482264

`A334549(eq[10, A144328(n+1)]-1)`
-/

namespace A172641.P9685781189163482264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A172641.P9685781189163482264

/-!
# A172642: Number of n X 4 0..2 arrays with row sums 4 and column sums n.

The programs for A172642, there is no canonical definition to state claims against.
-/

/-! ## A172642.P14062722142100890353

`A334549(A052905(n+3))`
-/

namespace A172642.P14062722142100890353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A052905 (n + 3)).toNat

end

end A172642.P14062722142100890353

/-! ## A172642.P2543898638566493732

`A334549(A056119(n)+16)`
-/

namespace A172642.P2543898638566493732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A056119 n + 16).toNat

end

end A172642.P2543898638566493732

/-! ## A172642.P11199845062072156994

`A334549(A055999(n+3)+1)`
-/

namespace A172642.P11199845062072156994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A055999 (n + 3) + 1).toNat

end

end A172642.P11199845062072156994

/-! ## A172642.P7687002215076082668

`A334549(A155212(n+1)+12)`
-/

namespace A172642.P7687002215076082668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A155212 (n + 1) + 12).toNat

end

end A172642.P7687002215076082668

/-! ## A172642.P16397515792755522553

`A334549(eq[A134309(n)+4, A002262(n)])`
-/

namespace A172642.P16397515792755522553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A172642.P16397515792755522553

/-!
# A172645: Number of n X n 0..2 arrays with row sums n and column sums n.

The programs for A172645, there is no canonical definition to state claims against.
-/

/-! ## A172645.P1874729383805481715

`A334549(∑[4*(n+1)])`
-/

namespace A172645.P1874729383805481715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172645.P1874729383805481715

/-!
# A172662: Number of 2*n X n 0..2 arrays with row sums n and column sums 2*n.

The programs for A172662, there is no canonical definition to state claims against.
-/

/-! ## A172662.P14079672859286085870

`A334549(A062725(n+1))`
-/

namespace A172662.P14079672859286085870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A062725 (n + 1)).toNat

end

end A172662.P14079672859286085870

/-!
# A172675: Number of 3*n X 3 0..2 arrays with row sums 2 and column sums 2*n.

The programs for A172675, there is no canonical definition to state claims against.
-/

/-! ## A172675.P4185299738647933051

`A328345(3*(n+1))`
-/

namespace A172675.P4185299738647933051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328345 (3 * (n + 1))

end

end A172675.P4185299738647933051

/-! ## A172675.P16832674245989529702

`record[A328345(A134199(n+1))]`
-/

namespace A172675.P16832674245989529702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328345 (A134199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172675.P16832674245989529702

