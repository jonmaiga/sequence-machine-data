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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A233600: 

The programs for A233600, there is no canonical definition to state claims against.
-/

/-! ## A233600.P16304005320947127024

`A233602(eq[5, A025581(n)]+1)`
-/

namespace A233600.P16304005320947127024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233600.P16304005320947127024

/-!
# A233601: 

The programs for A233601, there is no canonical definition to state claims against.
-/

/-! ## A233601.P12483090224321866759

`A233602(A056121(n)+22)`
-/

namespace A233601.P12483090224321866759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (A056121 n + 22).toNat

end

end A233601.P12483090224321866759

/-! ## A233601.P4570065404111836678

`A233602(eq[4, A219347(n)])`
-/

namespace A233601.P4570065404111836678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233601.P4570065404111836678

/-! ## A233601.P13026832950771854033

`A233602(eq[6, A193592(n)])`
-/

namespace A233601.P13026832950771854033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233601.P13026832950771854033

/-!
# A233603: Number of (1+2)X(n+2) 0..2 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233603, there is no canonical definition to state claims against.
-/

/-! ## A233603.P5240732808742495155

`A233602(∑[n]+1)`
-/

namespace A233603.P5240732808742495155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233603.P5240732808742495155

/-! ## A233603.P5583137977083670246

`record[root(A233602(n+1), A059268(n))]`
-/

namespace A233603.P5583137977083670246
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233602 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233603.P5583137977083670246

/-! ## A233603.P2865415215101895812

`record[gcd(A002262(n), A233602(n+1))]`
-/

namespace A233603.P2865415215101895812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233602 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233603.P2865415215101895812

/-! ## A233603.P18291882838138702219

`A233602(A000124(n))+A034541(n+1)`
-/

namespace A233603.P18291882838138702219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (A000124 n).toNat + A034541 (n + 1)

end

end A233603.P18291882838138702219

/-! ## A233603.P18345092581562359024

`A335453(n+1)+A233602(A000124(n))`
-/

namespace A233603.P18345092581562359024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (n + 1) + A233602 (A000124 n).toNat

end

end A233603.P18345092581562359024

/-!
# A233604: Number of (2+2)X(n+2) 0..2 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233604, there is no canonical definition to state claims against.
-/

/-! ## A233604.P7828254405601255777

`A233602(∑[n+1]+2)`
-/

namespace A233604.P7828254405601255777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233604.P7828254405601255777

/-!
# A233605: Number of (3+2)X(n+2) 0..2 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233605, there is no canonical definition to state claims against.
-/

/-! ## A233605.P11061284620118699287

`A233602(A167499(n)+n)`
-/

namespace A233605.P11061284620118699287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (A167499 n + (n : ℤ)).toNat

end

end A233605.P11061284620118699287

/-! ## A233605.P2307842589827603329

`A233602(eq[2, A002262(n)]+1)`
-/

namespace A233605.P2307842589827603329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233605.P2307842589827603329

/-!
# A233606: 

The programs for A233606, there is no canonical definition to state claims against.
-/

/-! ## A233606.P521832545194029101

`A233602(eq[3, A002262(n)]+1)`
-/

namespace A233606.P521832545194029101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233606.P521832545194029101

/-!
# A233608: 

The programs for A233608, there is no canonical definition to state claims against.
-/

/-! ## A233608.P3028197923910942468

`A233602(eq[5, A002262(n)]+1)`
-/

namespace A233608.P3028197923910942468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233608.P3028197923910942468

/-!
# A233609: 

The programs for A233609, there is no canonical definition to state claims against.
-/

/-! ## A233609.P17070452965730557144

`A233602(A000217(n+7)-n)`
-/

namespace A233609.P17070452965730557144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (A000217 (n + 7) - (n : ℤ)).toNat

end

end A233609.P17070452965730557144

/-!
# A233610: 

The programs for A233610, there is no canonical definition to state claims against.
-/

/-! ## A233610.P6642901280579768565

`A233618((n+1)²+n²)`
-/

namespace A233610.P6642901280579768565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 ((n + 1) ^ 2 + n ^ 2)

end

end A233610.P6642901280579768565

/-!
# A233611: Number of (n+2) X (1+2) 0..2 arrays with no increasing sequence of length 3 horizontally or diagonally downwards.

The programs for A233611, there is no canonical definition to state claims against.
-/

/-! ## A233611.P5520581978479863433

`A233618(∑[n+1])`
-/

namespace A233611.P5520581978479863433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233611.P5520581978479863433

/-! ## A233611.P8594322870177667484

`record[root(A233618(n+1), A027465(n))]`
-/

namespace A233611.P8594322870177667484
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233618 (n + 1) : ℝ) ^ (1 / (A027465 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233611.P8594322870177667484

/-! ## A233611.P11994235634323052956

`record[root(A233618(n+1), A055249(n))]`
-/

namespace A233611.P11994235634323052956
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233618 (n + 1) : ℝ) ^ (1 / (A055249 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233611.P11994235634323052956

/-! ## A233611.P1265217920373489497

`record[root(A233618(n+1), A130321(n))]`
-/

namespace A233611.P1265217920373489497
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233618 (n + 1) : ℝ) ^ (1 / (A130321 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233611.P1265217920373489497

/-! ## A233611.P4737833713215485829

`record[root(A233618(n+1), A226167(n+1))]`
-/

namespace A233611.P4737833713215485829
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233618 (n + 1) : ℝ) ^ (1 / (A226167 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233611.P4737833713215485829

/-!
# A233612: Number of (n+2)X(2+2) 0..2 arrays with no increasing sequence of length 3 horizontally or diagonally downwards.

The programs for A233612, there is no canonical definition to state claims against.
-/

/-! ## A233612.P10774176007114808625

`A233618(∑[n+2])`
-/

namespace A233612.P10774176007114808625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233612.P10774176007114808625

/-!
# A233613: 

The programs for A233613, there is no canonical definition to state claims against.
-/

/-! ## A233613.P12473067175340187413

`A233618(∑[n+3]+1)`
-/

namespace A233613.P12473067175340187413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233613.P12473067175340187413

/-!
# A233614: 

The programs for A233614, there is no canonical definition to state claims against.
-/

/-! ## A233614.P9232854692745560394

`A233618(∑[n+4]+3)`
-/

namespace A233614.P9232854692745560394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A233614.P9232854692745560394

/-!
# A233615: 

The programs for A233615, there is no canonical definition to state claims against.
-/

/-! ## A233615.P14169813524188117037

`A233618(A155212(n+1)+4)`
-/

namespace A233615.P14169813524188117037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (A155212 (n + 1) + 4).toNat

end

end A233615.P14169813524188117037

/-!
# A233619: Number of (1+2)X(n+2) 0..2 arrays with no increasing sequence of length 3 horizontally or diagonally downwards.

The programs for A233619, there is no canonical definition to state claims against.
-/

/-! ## A233619.P7650556116440833275

`A233618(∑[n]+1)`
-/

namespace A233619.P7650556116440833275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233619.P7650556116440833275

/-! ## A233619.P5413527681570453070

`lcm(3, A233618(A000124(n)))`
-/

namespace A233619.P5413527681570453070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A233618 (A000124 n).toNat)

end

end A233619.P5413527681570453070

/-! ## A233619.P6179457962970515110

`A233618(A000124(n))+A025443(n)`
-/

namespace A233619.P6179457962970515110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (A000124 n).toNat + A025443 n

end

end A233619.P6179457962970515110

/-! ## A233619.P13936562413486311612

`abs(A033999(n)*A233618(A000124(n)))`
-/

namespace A233619.P13936562413486311612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A233618 (A000124 n).toNat|

end

end A233619.P13936562413486311612

/-! ## A233619.P3446443029180849270

`A236677(2*n+1)+A233618(A000124(n))`
-/

namespace A233619.P3446443029180849270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 (2 * n + 1) + A233618 (A000124 n).toNat

end

end A233619.P3446443029180849270

/-!
# A233620: Number of (2+2)X(n+2) 0..2 arrays with no increasing sequence of length 3 horizontally or diagonally downwards.

The programs for A233620, there is no canonical definition to state claims against.
-/

/-! ## A233620.P9807137637315125428

`A233618(∑[n+1]+2)`
-/

namespace A233620.P9807137637315125428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233620.P9807137637315125428

/-!
# A233621: 

The programs for A233621, there is no canonical definition to state claims against.
-/

/-! ## A233621.P1682933824051098571

`A233618(A167614(n+1))`
-/

namespace A233621.P1682933824051098571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (A167614 (n + 1)).toNat

end

end A233621.P1682933824051098571

/-!
# A233622: 

The programs for A233622, there is no canonical definition to state claims against.
-/

/-! ## A233622.P2600779239451683367

`A233618(∑[n+3]+7)`
-/

namespace A233622.P2600779239451683367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233622.P2600779239451683367

/-!
# A233623: 

The programs for A233623, there is no canonical definition to state claims against.
-/

/-! ## A233623.P16192106137593644713

`A233618(A155212(n)+13)`
-/

namespace A233623.P16192106137593644713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (A155212 n + 13).toNat

end

end A233623.P16192106137593644713

/-! ## A233623.P18191545754862819089

`A233618(A056000(n)+15)`
-/

namespace A233623.P18191545754862819089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233618 (A056000 n + 15).toNat

end

end A233623.P18191545754862819089

/-!
# A233626: Least member of an amicable n-tuple: (x[1],...,x[n]) such that sigma(x[1])=...=sigma(x[n])=x[1]+...+x[n], x[i]

The programs for A233626, there is no canonical definition to state claims against.
-/

/-! ## A233626.P13227603416935233701

`A233538(∑[n]+1)`
-/

namespace A233626.P13227603416935233701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233538 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233626.P13227603416935233701

/-!
# A233627: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6.

The programs for A233627, there is no canonical definition to state claims against.
-/

/-! ## A233627.P13134837333935011046

`A233635((n+1)²+n²)`
-/

namespace A233627.P13134837333935011046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 ((n + 1) ^ 2 + n ^ 2)

end

end A233627.P13134837333935011046

/-!
# A233628: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 6.

The programs for A233628, there is no canonical definition to state claims against.
-/

/-! ## A233628.P3979577717442155108

`A233635(∑[n]+1)`
-/

namespace A233628.P3979577717442155108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233628.P3979577717442155108

/-! ## A233628.P7805159666091934954

`lcm(2, A233635(A000124(n)))`
-/

namespace A233628.P7805159666091934954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233635 (A000124 n).toNat)

end

end A233628.P7805159666091934954

/-! ## A233628.P15105975284824875137

`record[root(A233635(n+1), A059268(n))]`
-/

namespace A233628.P15105975284824875137
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233635 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233628.P15105975284824875137

/-! ## A233628.P12958527706498883311

`record[root(A233635(n+1), A278493(n))]`
-/

namespace A233628.P12958527706498883311
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233635 (n + 1) : ℝ) ^ (1 / (A278493 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233628.P12958527706498883311

/-! ## A233628.P4939300281466328205

`record[root(A233635(n+1), A002260(n+1))]`
-/

namespace A233628.P4939300281466328205
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233635 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233628.P4939300281466328205

/-!
# A233629: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6.

The programs for A233629, there is no canonical definition to state claims against.
-/

/-! ## A233629.P15441139152051237386

`A233635(∑[n+1]+2)`
-/

namespace A233629.P15441139152051237386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233629.P15441139152051237386

/-! ## A233629.P11016523243036663232

`record[root(A233635(n+2), A059268(n))]`
-/

namespace A233629.P11016523243036663232
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233635 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233629.P11016523243036663232

/-! ## A233629.P13853789195984822297

`record[root(A233635(n+2), A278493(n))]`
-/

namespace A233629.P13853789195984822297
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233635 (n + 2) : ℝ) ^ (1 / (A278493 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233629.P13853789195984822297

/-! ## A233629.P7295014094858544038

`lcm(2, A233635(A000096(n+1)))`
-/

namespace A233629.P7295014094858544038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233635 (A000096 (n + 1)).toNat)

end

end A233629.P7295014094858544038

/-! ## A233629.P11301430232288590550

`record[A233635(Δ[A003453(n+5)])]`
-/

namespace A233629.P11301430232288590550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233629.P11301430232288590550

/-!
# A233630: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6.

The programs for A233630, there is no canonical definition to state claims against.
-/

/-! ## A233630.P8622245904932794807

`A233635(∑[n+2]+4)`
-/

namespace A233630.P8622245904932794807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233630.P8622245904932794807

/-! ## A233630.P6555701670147287824

`lcm(2, A233635(A167614(n+1)))`
-/

namespace A233630.P6555701670147287824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233635 (A167614 (n + 1)).toNat)

end

end A233630.P6555701670147287824

/-! ## A233630.P2767532630811807896

`A233635(A167614(n+1))+A185284(n)`
-/

namespace A233630.P2767532630811807896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (A167614 (n + 1)).toNat + A185284 n

end

end A233630.P2767532630811807896

/-! ## A233630.P11359402450574286133

`A014952(n)*A233635(A167614(n+1))`
-/

namespace A233630.P11359402450574286133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014952 n * A233635 (A167614 (n + 1)).toNat

end

end A233630.P11359402450574286133

/-! ## A233630.P4116454357297866462

`A297244(n+1)+A233635(A167614(n+1))`
-/

namespace A233630.P4116454357297866462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (n + 1) + A233635 (A167614 (n + 1)).toNat

end

end A233630.P4116454357297866462

/-!
# A233631: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6.

The programs for A233631, there is no canonical definition to state claims against.
-/

/-! ## A233631.P2800578775573741921

`A233635(∑[n+3]+7)`
-/

namespace A233631.P2800578775573741921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A233631.P2800578775573741921

/-! ## A233631.P22466628061063963

`A233635(A374004(n+1))+A129947(n+1)`
-/

namespace A233631.P22466628061063963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (A374004 (n + 1)).toNat + A129947 (n + 1)

end

end A233631.P22466628061063963

/-!
# A233632: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6.

The programs for A233632, there is no canonical definition to state claims against.
-/

/-! ## A233632.P162760311679794049

`A233635(A374005(n+1))`
-/

namespace A233632.P162760311679794049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (A374005 (n + 1)).toNat

end

end A233632.P162760311679794049

/-! ## A233632.P4368594132080102690

`A233635(eq[6, A131818(n+1)])`
-/

namespace A233632.P4368594132080102690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233632.P4368594132080102690

/-! ## A233632.P17970388923898359073

`A233635(A000217(n+5)-n)`
-/

namespace A233632.P17970388923898359073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (A000217 (n + 5) - (n : ℤ)).toNat

end

end A233632.P17970388923898359073

/-! ## A233632.P11503583805938606140

`A233635(Δ[A264443(n)])`
-/

namespace A233632.P11503583805938606140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (f1 (n + 1) - f1 n).toNat

end

end A233632.P11503583805938606140

/-!
# A233633: 

The programs for A233633, there is no canonical definition to state claims against.
-/

/-! ## A233633.P15526359884670055816

`A233635(A167499(n+4)+1)`
-/

namespace A233633.P15526359884670055816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (A167499 (n + 4) + 1).toNat

end

end A233633.P15526359884670055816

/-! ## A233633.P14395614946610125271

`A233635(A000217(n+5)+6)`
-/

namespace A233633.P14395614946610125271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (A000217 (n + 5) + 6).toNat

end

end A233633.P14395614946610125271

/-! ## A233633.P4237003348253057683

`A233635(eq[7, A131818(n+1)])`
-/

namespace A233633.P4237003348253057683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233633.P4237003348253057683

/-! ## A233633.P1414960853010455550

`A233635(Δ[A023551(n+1)]+1)`
-/

namespace A233633.P1414960853010455550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (f1 (n + 1) - f1 n + 1).toNat

end

end A233633.P1414960853010455550

/-!
# A233634: 

The programs for A233634, there is no canonical definition to state claims against.
-/

/-! ## A233634.P15341017828608672716

`A233635(eq[8, A131818(n+1)])`
-/

namespace A233634.P15341017828608672716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233634.P15341017828608672716

/-!
# A233636: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 2.

The programs for A233636, there is no canonical definition to state claims against.
-/

/-! ## A233636.P12355607563790557484

`A233644(∑[4*n]+1)`
-/

namespace A233636.P12355607563790557484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233636.P12355607563790557484

/-! ## A233636.P10615158776279615402

`lcm(2, A233644(A001844(n)))`
-/

namespace A233636.P10615158776279615402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233644 (A001844 n).toNat)

end

end A233636.P10615158776279615402

/-! ## A233636.P6098616783326479758

`record[gcd(A003987(n), A233644(n+1))]`
-/

namespace A233636.P6098616783326479758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A233644 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233636.P6098616783326479758

/-! ## A233636.P8444862182862367513

`A014963(9*n+6)*A233644(A001844(n))`
-/

namespace A233636.P8444862182862367513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A233644 (A001844 n).toNat

end

end A233636.P8444862182862367513

/-! ## A233636.P7164129886133082225

`A233644(A001844(n))+A092106(A034511(n+1))`
-/

namespace A233636.P7164129886133082225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A001844 n).toNat + A092106 (A034511 (n + 1)).toNat

end

end A233636.P7164129886133082225

/-!
# A233637: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 2.

The programs for A233637, the canonical program `A233637.P12995167814934946207` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233637 has offset 1).

The definition of A233637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233637.P14090415409942329945

`Δ[ogf((7+10x)/(1-3x-4x^2+6x^3))]`
-/

namespace A233637.P14090415409942329945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 10] [1, -3, -4, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233637.P14090415409942329945

namespace A233637

/-- `Δ[ogf((7+10x)/(1-3x-4x^2+6x^3))]` -/
def P14090415409942329945.Spec : Prop :=
  ∀ n, P14090415409942329945.a n = A233637 (n + 1)

end A233637

/-! ## A233637.P12995167814934946207

`2*a(n-1)+6*a(n-2)` with `a(0)=24, a(1)=90`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233637

/-- `2*a(n-1)+6*a(n-2)` -/
def P12995167814934946207.Spec : Prop :=
  ∀ n, (P12995167814934946207.a n : ℤ) = A233637 (n + 1)

theorem P12995167814934946207.correct : P12995167814934946207.Spec := by
  intro n
  simp only [A233637, Nat.add_sub_cancel]

end A233637

/-! ## A233637.P16297181258837865977

`A233644(∑[n]+1)`
-/

namespace A233637.P16297181258837865977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233637.P16297181258837865977

namespace A233637

/-- `A233644(∑[n]+1)` -/
def P16297181258837865977.Spec : Prop :=
  ∀ n, P16297181258837865977.a n = A233637 (n + 1)

end A233637

/-! ## A233637.P16406714639330441718

`lcm(2, A233644(A000124(n)))`
-/

namespace A233637.P16406714639330441718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233644 (A000124 n).toNat)

end

end A233637.P16406714639330441718

namespace A233637

/-- `lcm(2, A233644(A000124(n)))` -/
def P16406714639330441718.Spec : Prop :=
  ∀ n, (P16406714639330441718.a n : ℤ) = A233637 (n + 1)

end A233637

/-! ## A233637.P3667465840615383645

`record[A010054(n)*A233644(n+1)]`
-/

namespace A233637.P3667465840615383645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233637.P3667465840615383645

namespace A233637

/-- `record[A010054(n)*A233644(n+1)]` -/
def P3667465840615383645.Spec : Prop :=
  ∀ n, P3667465840615383645.a n = A233637 (n + 1)

end A233637

/-!
# A233638: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 2.

The programs for A233638, there is no canonical definition to state claims against.
-/

/-! ## A233638.P8458627911689589948

`A233644(∑[n+1]+2)`
-/

namespace A233638.P8458627911689589948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233638.P8458627911689589948

/-! ## A233638.P8631446364619901824

`record[A010054(n)*A233644(n+2)]`
-/

namespace A233638.P8631446364619901824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233644 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233638.P8631446364619901824

/-! ## A233638.P1319730049953170026

`record[root(A233644(n+2), A013610(n))]`
-/

namespace A233638.P1319730049953170026
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233644 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233638.P1319730049953170026

/-! ## A233638.P6741451978020223118

`A033999(2*n)*A233644(A133263(n+1))`
-/

namespace A233638.P6741451978020223118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A233644 (A133263 (n + 1)).toNat

end

end A233638.P6741451978020223118

/-! ## A233638.P5070040384735881475

`A233644(A133263(n+1))+A035363(2*n+1)`
-/

namespace A233638.P5070040384735881475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A133263 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A233638.P5070040384735881475

/-!
# A233639: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 2.

The programs for A233639, there is no canonical definition to state claims against.
-/

/-! ## A233639.P10084682927527178385

`A233644(∑[n+2]+4)`
-/

namespace A233639.P10084682927527178385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233639.P10084682927527178385

/-! ## A233639.P12442552688600716571

`lcm(2, A233644(A167614(n+1)))`
-/

namespace A233639.P12442552688600716571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233644 (A167614 (n + 1)).toNat)

end

end A233639.P12442552688600716571

/-! ## A233639.P5349617383408982

`A233644(A167614(n+1))+A000007(n+1)`
-/

namespace A233639.P5349617383408982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A233639.P5349617383408982

/-! ## A233639.P8500190420275938777

`A057427(n+1)*A233644(A167614(n+1))`
-/

namespace A233639.P8500190420275938777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A233644 (A167614 (n + 1)).toNat

end

end A233639.P8500190420275938777

/-! ## A233639.P9196187713110976163

`A233644(A167614(n+1))%A233640(n+1)`
-/

namespace A233639.P9196187713110976163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233644 (A167614 (n + 1)).toNat) (A233640 (n + 1))

end

end A233639.P9196187713110976163

/-!
# A233640: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 2.

The programs for A233640, there is no canonical definition to state claims against.
-/

/-! ## A233640.P17100368733733829233

`A233644(A374004(n+1))`
-/

namespace A233640.P17100368733733829233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A374004 (n + 1)).toNat

end

end A233640.P17100368733733829233

/-! ## A233640.P6238114876123118002

`A233644(A052905(n)+9)`
-/

namespace A233640.P6238114876123118002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A052905 n + 9).toNat

end

end A233640.P6238114876123118002

/-! ## A233640.P2461480942118946188

`A233644(A055999(n)+10)`
-/

namespace A233640.P2461480942118946188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A055999 n + 10).toNat

end

end A233640.P2461480942118946188

/-! ## A233640.P8242697219065613365

`A233644(A167614(n+2)+1)`
-/

namespace A233640.P8242697219065613365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A167614 (n + 2) + 1).toNat

end

end A233640.P8242697219065613365

/-! ## A233640.P9944757650905903892

`A233644(A141214(n+1))`
-/

namespace A233640.P9944757650905903892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A141214 (n + 1)).toNat

end

end A233640.P9944757650905903892

/-!
# A233641: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 2.

The programs for A233641, there is no canonical definition to state claims against.
-/

/-! ## A233641.P15866234674797065275

`A233644(A374005(n+1))`
-/

namespace A233641.P15866234674797065275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A374005 (n + 1)).toNat

end

end A233641.P15866234674797065275

/-! ## A233641.P13287830710646529740

`A233644(A155212(n)+13)`
-/

namespace A233641.P13287830710646529740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A155212 n + 13).toNat

end

end A233641.P13287830710646529740

/-! ## A233641.P6715771609872985648

`A233644(eq[6, A131818(n+1)])`
-/

namespace A233641.P6715771609872985648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233641.P6715771609872985648

/-! ## A233641.P11765808835730246441

`A233644(A046691(n+3))`
-/

namespace A233641.P11765808835730246441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A046691 (n + 3)).toNat

end

end A233641.P11765808835730246441

/-! ## A233641.P15734091735655457453

`A233644(A056115(n)+11)`
-/

namespace A233641.P15734091735655457453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A056115 n + 11).toNat

end

end A233641.P15734091735655457453

/-!
# A233642: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 2.

The programs for A233642, there is no canonical definition to state claims against.
-/

/-! ## A233642.P16615683101272620571

`A233644(A374007(n+1))`
-/

namespace A233642.P16615683101272620571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A374007 (n + 1)).toNat

end

end A233642.P16615683101272620571

/-! ## A233642.P1829789412428928292

`A233644(A056115(n)+21)`
-/

namespace A233642.P1829789412428928292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A056115 n + 21).toNat

end

end A233642.P1829789412428928292

/-! ## A233642.P5312921927772526022

`A233644(eq[7, A131818(n+1)])`
-/

namespace A233642.P5312921927772526022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233642.P5312921927772526022

/-! ## A233642.P8662893344786032549

`A233644(eq[3, A219347(n)])`
-/

namespace A233642.P8662893344786032549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233642.P8662893344786032549

/-! ## A233642.P14114560587882688816

`A233644(Δ[Δ[A006504(n+1)]])`
-/

namespace A233642.P14114560587882688816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (f1 (n + 1) - f1 n).toNat

end

end A233642.P14114560587882688816

/-!
# A233643: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 2.

The programs for A233643, there is no canonical definition to state claims against.
-/

/-! ## A233643.P16583667690585513910

`A233644(A374008(n+1))`
-/

namespace A233643.P16583667690585513910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (A374008 (n + 1)).toNat

end

end A233643.P16583667690585513910

/-! ## A233643.P12338111632896371534

`A233644(eq[11, A066657(n)])`
-/

namespace A233643.P12338111632896371534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233643.P12338111632896371534

/-! ## A233643.P12925679404973425312

`A233644(eq[8, A131818(n+1)])`
-/

namespace A233643.P12925679404973425312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233643.P12925679404973425312

/-! ## A233643.P4136263194195038724

`A233644(eq[4, A219347(n)])`
-/

namespace A233643.P4136263194195038724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233643.P4136263194195038724

/-! ## A233643.P13594869662297219330

`A233644(eq[6, A193592(n)])`
-/

namespace A233643.P13594869662297219330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233643.P13594869662297219330

/-!
# A233645: Number of (n+1) X (n+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233645, there is no canonical definition to state claims against.
-/

/-! ## A233645.P14672295280620091173

`A233653((n+1)²+n²)`
-/

namespace A233645.P14672295280620091173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 ((n + 1) ^ 2 + n ^ 2)

end

end A233645.P14672295280620091173

/-!
# A233646: Number of (n+1)X(1+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233646, there is no canonical definition to state claims against.
-/

/-! ## A233646.P18364546304205427850

`A233653(∑[n]+1)`
-/

namespace A233646.P18364546304205427850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233646.P18364546304205427850

/-! ## A233646.P466198446320074098

`lcm(2, A233653(A000124(n)))`
-/

namespace A233646.P466198446320074098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233653 (A000124 n).toNat)

end

end A233646.P466198446320074098

/-! ## A233646.P5467887046748457607

`record[A103451(n)*A233653(n+1)]`
-/

namespace A233646.P5467887046748457607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A233653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233646.P5467887046748457607

/-! ## A233646.P16397755578344600828

`record[gcd(A002262(n), A233653(n+1))]`
-/

namespace A233646.P16397755578344600828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233653 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233646.P16397755578344600828

/-! ## A233646.P18302146555637692695

`A233653(A000124(n))+A034429(n+1)`
-/

namespace A233646.P18302146555637692695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A000124 n).toNat + A034429 (n + 1)

end

end A233646.P18302146555637692695

/-!
# A233647: Number of (n+1)X(2+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233647, there is no canonical definition to state claims against.
-/

/-! ## A233647.P13493687730783032750

`A233653(∑[n+1]+2)`
-/

namespace A233647.P13493687730783032750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233647.P13493687730783032750

/-! ## A233647.P16640551019669189523

`record[gcd(A002262(n), A233653(n+2))]`
-/

namespace A233647.P16640551019669189523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233653 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233647.P16640551019669189523

/-! ## A233647.P14100711535048311288

`record[A233653(A101881(n)+1)]`
-/

namespace A233647.P14100711535048311288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233647.P14100711535048311288

/-! ## A233647.P1916861032637290143

`record[A233653(Δ[A003453(n+5)])]`
-/

namespace A233647.P1916861032637290143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233647.P1916861032637290143

/-!
# A233648: Number of (n+1)X(3+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233648, there is no canonical definition to state claims against.
-/

/-! ## A233648.P15670918475245310741

`A233653(∑[n+2]+4)`
-/

namespace A233648.P15670918475245310741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233648.P15670918475245310741

/-! ## A233648.P6540814983140732435

`lcm(2, A233653(A167614(n+1)))`
-/

namespace A233648.P6540814983140732435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233653 (A167614 (n + 1)).toNat)

end

end A233648.P6540814983140732435

/-! ## A233648.P11541948982241430713

`A233653(A167614(n+1))+A185245(n)`
-/

namespace A233648.P11541948982241430713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A167614 (n + 1)).toNat + A185245 n

end

end A233648.P11541948982241430713

/-! ## A233648.P12487081293369957350

`A326686(n)+A233653(A167614(n+1))`
-/

namespace A233648.P12487081293369957350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A233653 (A167614 (n + 1)).toNat

end

end A233648.P12487081293369957350

/-! ## A233648.P14742786363982072842

`A097031(n+1)*A233653(A167614(n+1))`
-/

namespace A233648.P14742786363982072842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1) * A233653 (A167614 (n + 1)).toNat

end

end A233648.P14742786363982072842

/-!
# A233649: Number of (n+1)X(4+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233649, there is no canonical definition to state claims against.
-/

/-! ## A233649.P10374513058032256840

`A233653(A374004(n+1))`
-/

namespace A233649.P10374513058032256840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A374004 (n + 1)).toNat

end

end A233649.P10374513058032256840

/-! ## A233649.P15156441591502844233

`A233653(A052905(n)+9)`
-/

namespace A233649.P15156441591502844233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A052905 n + 9).toNat

end

end A233649.P15156441591502844233

/-! ## A233649.P9407743179359944239

`A233653(A055999(n)+10)`
-/

namespace A233649.P9407743179359944239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A055999 n + 10).toNat

end

end A233649.P9407743179359944239

/-! ## A233649.P4836634654136381842

`A233653(A167614(n+2)+1)`
-/

namespace A233649.P4836634654136381842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A167614 (n + 2) + 1).toNat

end

end A233649.P4836634654136381842

/-! ## A233649.P599961642384076348

`A233653(A141214(n+1))`
-/

namespace A233649.P599961642384076348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A141214 (n + 1)).toNat

end

end A233649.P599961642384076348

/-!
# A233650: Number of (n+1)X(5+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233650, there is no canonical definition to state claims against.
-/

/-! ## A233650.P6770231916741380755

`A233653(A374005(n+1))`
-/

namespace A233650.P6770231916741380755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A374005 (n + 1)).toNat

end

end A233650.P6770231916741380755

/-! ## A233650.P7736584483641079337

`A233653(A155212(n)+13)`
-/

namespace A233650.P7736584483641079337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A155212 n + 13).toNat

end

end A233650.P7736584483641079337

/-! ## A233650.P10160174889956623953

`A233653(A056000(n)+15)`
-/

namespace A233650.P10160174889956623953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A056000 n + 15).toNat

end

end A233650.P10160174889956623953

/-! ## A233650.P5968038694850296583

`A233653(eq[6, A131818(n+1)])`
-/

namespace A233650.P5968038694850296583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233650.P5968038694850296583

/-! ## A233650.P13319329082680631837

`A233653(eq[4, A193592(n)])`
-/

namespace A233650.P13319329082680631837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233650.P13319329082680631837

/-!
# A233651: Number of (n+1)X(6+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233651, there is no canonical definition to state claims against.
-/

/-! ## A233651.P11418337162424506714

`A233653(A374007(n+1))`
-/

namespace A233651.P11418337162424506714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A374007 (n + 1)).toNat

end

end A233651.P11418337162424506714

/-! ## A233651.P13702991024300678604

`A233653(A167499(n+4)+1)`
-/

namespace A233651.P13702991024300678604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A167499 (n + 4) + 1).toNat

end

end A233651.P13702991024300678604

/-! ## A233651.P2857643292599191287

`A233653(eq[7, A131818(n+1)])`
-/

namespace A233651.P2857643292599191287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233651.P2857643292599191287

/-! ## A233651.P17879315952250179837

`A233653(A052905(n+3))`
-/

namespace A233651.P17879315952250179837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A052905 (n + 3)).toNat

end

end A233651.P17879315952250179837

/-! ## A233651.P9794157438517144569

`A233653(eq[5, A193592(n)])`
-/

namespace A233651.P9794157438517144569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233651.P9794157438517144569

/-!
# A233652: Number of (n+1)X(7+1) 0..5 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233652, there is no canonical definition to state claims against.
-/

/-! ## A233652.P6731857796113053117

`A233653(A374008(n+1))`
-/

namespace A233652.P6731857796113053117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A374008 (n + 1)).toNat

end

end A233652.P6731857796113053117

/-! ## A233652.P12751372832427690162

`A233653(eq[8, A131818(n+1)])`
-/

namespace A233652.P12751372832427690162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233652.P12751372832427690162

/-! ## A233652.P8934005398245703003

`A233653(A055999(n+4))`
-/

namespace A233652.P8934005398245703003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (A055999 (n + 4)).toNat

end

end A233652.P8934005398245703003

/-! ## A233652.P18150273177506963301

`A233653(eq[6, A193592(n)])`
-/

namespace A233652.P18150273177506963301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233652.P18150273177506963301

/-!
# A233655: Sum of parts power divisors of canonical representation of n (A233569).

The programs for A233655, there is no canonical definition to state claims against.
-/

/-! ## A233655.P9047247082953960135

`∑{d}[A333219(n+2), A333220(#)]`
-/

namespace A233655.P9047247082953960135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A333220 d

end

end A233655.P9047247082953960135

/-! ## A233655.P9277350313318060230

`A233394(A163380(n+1))+A000035(A090782(n+1))`
-/

namespace A233655.P9277350313318060230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233394 (A163380 (n + 1)).toNat + A000035 (A090782 (n + 1)).toNat

end

end A233655.P9277350313318060230

/-! ## A233655.P10384504775467191057

`A098876(A138918(n+1))*A233394(A163380(n+1))`
-/

namespace A233655.P10384504775467191057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098876 (A138918 (n + 1)).toNat * A233394 (A163380 (n + 1)).toNat

end

end A233655.P10384504775467191057

/-!
# A233656: a(n) = 3*a(n-1) - 2*(n-1), with a(0) = 1.

The programs for A233656, the canonical program `A233656.P9766195256551268886` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233656 has offset 0).

The definition of A233656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*(n-1)` (program `A233656.P9766195256551268886`, by `A233656.P9766195256551268886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233656.P9766195256551268886

`3*a(n-1)-2*(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233656

/-- `3*a(n-1)-2*(n-1)` -/
def P9766195256551268886.Spec : Prop :=
  ∀ n, P9766195256551268886.a n = A233656 n

theorem P9766195256551268886.correct : P9766195256551268886.Spec := by
  intro n
  simp only [A233656]

end A233656

/-! ## A233656.P11438099378835586002

`(1+3^n+2*n)/2`
-/

namespace A233656.P11438099378835586002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + 3 ^ n + 2 * n : ℚ) / 2

end

end A233656.P11438099378835586002

namespace A233656

/-- `(1+3^n+2*n)/2` -/
def P11438099378835586002.Spec : Prop :=
  ∀ n, P11438099378835586002.a n = (A233656 n : ℚ)

theorem P11438099378835586002.correct : P11438099378835586002.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A233656, Nat.add_sub_cancel, A233656.P11438099378835586002.a, A233656.P9766195256551268886.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A233656, Nat.add_sub_cancel, A233656.P11438099378835586002.a, A233656.P9766195256551268886.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A233656

/-! ## A233656.P11911958372935627344

`ogf((-1+2x+x^2)/(-1+5x-7x^2+3x^3))`
-/

namespace A233656.P11911958372935627344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -5, 7, -3] n

end

end A233656.P11911958372935627344

namespace A233656

/-- `ogf((-1+2x+x^2)/(-1+5x-7x^2+3x^3))` -/
def P11911958372935627344.Spec : Prop :=
  ∀ n, P11911958372935627344.a n = A233656 n

end A233656

/-! ## A233656.P6160277334493133309

`∑[ceil(cos(1)+3^(n-1))]`
-/

namespace A233656.P6160277334493133309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P6160277334493133309

namespace A233656

/-- `∑[ceil(cos(1)+3^(n-1))]` -/
def P6160277334493133309.Spec : Prop :=
  ∀ n, P6160277334493133309.a n = A233656 n

end A233656

/-! ## A233656.P17801142103954316039

`∑[round(acot(1)+3^(n-1))]`
-/

namespace A233656.P17801142103954316039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (1 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P17801142103954316039

namespace A233656

/-- `∑[round(acot(1)+3^(n-1))]` -/
def P17801142103954316039.Spec : Prop :=
  ∀ n, P17801142103954316039.a n = A233656 n

end A233656

/-! ## A233656.P5866696539393637620

`∑[ceil(tan(10)+3^(n-1))]`
-/

namespace A233656.P5866696539393637620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (10 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P5866696539393637620

namespace A233656

/-- `∑[ceil(tan(10)+3^(n-1))]` -/
def P5866696539393637620.Spec : Prop :=
  ∀ n, P5866696539393637620.a n = A233656 n

end A233656

/-! ## A233656.P1541965995204574728

`∑[3*a(n-1)-2]` with `a(0)=1, a(1)=2`
-/

namespace A233656.P1541965995204574728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P1541965995204574728

namespace A233656

/-- `∑[3*a(n-1)-2]` -/
def P1541965995204574728.Spec : Prop :=
  ∀ n, P1541965995204574728.a n = A233656 n

end A233656

/-! ## A233656.P1686622136274259160

`∑[lcm(3, a(n-1))-2]` with `a(0)=1, a(1)=2`
-/

namespace A233656.P1686622136274259160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (Int.lcm 3 (f1 (n - 1)) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P1686622136274259160

namespace A233656

/-- `∑[lcm(3, a(n-1))-2]` -/
def P1686622136274259160.Spec : Prop :=
  ∀ n, P1686622136274259160.a n = A233656 n

end A233656

/-! ## A233656.P13081019900506783352

`∑[3^((n-1)%(n+1))]+n`
-/

namespace A233656.P13081019900506783352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A233656.P13081019900506783352

namespace A233656

/-- `∑[3^((n-1)%(n+1))]+n` -/
def P13081019900506783352.Spec : Prop :=
  ∀ n, P13081019900506783352.a n = (A233656 n : ℚ)

end A233656

/-! ## A233656.P3851657297392159982

`∑[ceil(3^(n-1))+ceil(sin(n)²)]`
-/

namespace A233656.P3851657297392159982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P3851657297392159982

namespace A233656

/-- `∑[ceil(3^(n-1))+ceil(sin(n)²)]` -/
def P3851657297392159982.Spec : Prop :=
  ∀ n, P3851657297392159982.a n = A233656 n

end A233656

/-! ## A233656.P1131962790269503348

`3^(n-1)+a(n-1)+1` with `a(0)=1`
-/

namespace A233656.P1131962790269503348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (a (n - 1) + 1)

end

end A233656.P1131962790269503348

namespace A233656

/-- `3^(n-1)+a(n-1)+1` -/
def P1131962790269503348.Spec : Prop :=
  ∀ n, P1131962790269503348.a n = (A233656 n : ℚ)

end A233656

/-! ## A233656.P3979575264487865358

`∑[a(n-1)+a(n-1)+a(n-1)-2]` with `a(0)=1, a(1)=2`
-/

namespace A233656.P3979575264487865358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P3979575264487865358

namespace A233656

/-- `∑[a(n-1)+a(n-1)+a(n-1)-2]` -/
def P3979575264487865358.Spec : Prop :=
  ∀ n, P3979575264487865358.a n = A233656 n

end A233656

/-! ## A233656.P8844456366984548661

`∑[a(n-1)-(2-a(n-1)-a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A233656.P8844456366984548661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P8844456366984548661

namespace A233656

/-- `∑[a(n-1)-(2-a(n-1)-a(n-1))]` -/
def P8844456366984548661.Spec : Prop :=
  ∀ n, P8844456366984548661.a n = A233656 n

end A233656

/-! ## A233656.P3660548505607905867

`a(n-1)+2-n+a(n-1)+a(n-1)-n` with `a(0)=1`
-/

namespace A233656.P3660548505607905867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 - (n : ℤ) + (a (n - 1) + (a (n - 1) - (n : ℤ))))

end

end A233656.P3660548505607905867

namespace A233656

/-- `a(n-1)+2-n+a(n-1)+a(n-1)-n` -/
def P3660548505607905867.Spec : Prop :=
  ∀ n, P3660548505607905867.a n = A233656 n

theorem P3660548505607905867.correct : P3660548505607905867.Spec := by
  intro n
  simp only [A233656, Nat.add_sub_cancel, A233656.P3660548505607905867.a, A233656.P9766195256551268886.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A233656

/-! ## A233656.P11638639393871270783

`2-(n-(a(n-1)-(n-a(n-1)-a(n-1))))` with `a(0)=1`
-/

namespace A233656.P11638639393871270783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((n : ℤ) - (a (n - 1) - ((n : ℤ) - a (n - 1) - a (n - 1))))

end

end A233656.P11638639393871270783

namespace A233656

/-- `2-(n-(a(n-1)-(n-a(n-1)-a(n-1))))` -/
def P11638639393871270783.Spec : Prop :=
  ∀ n, P11638639393871270783.a n = A233656 n

end A233656

/-! ## A233656.P11691174577815634889

`∑[A094388(n)]`
-/

namespace A233656.P11691174577815634889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P11691174577815634889

namespace A233656

/-- `∑[A094388(n)]` -/
def P11691174577815634889.Spec : Prop :=
  ∀ n, P11691174577815634889.a n = A233656 n

end A233656

/-! ## A233656.P982075081869091991

`n+A007051(n)`
-/

namespace A233656.P982075081869091991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A007051 n

end

end A233656.P982075081869091991

namespace A233656

/-- `n+A007051(n)` -/
def P982075081869091991.Spec : Prop :=
  ∀ n, P982075081869091991.a n = A233656 n

end A233656

/-! ## A233656.P10004769120315819355

`∑[A140429(n)+1]`
-/

namespace A233656.P10004769120315819355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233656.P10004769120315819355

namespace A233656

/-- `∑[A140429(n)+1]` -/
def P10004769120315819355.Spec : Prop :=
  ∀ n, P10004769120315819355.a n = A233656 n

end A233656

/-! ## A233656.P5814026222694858247

`∑[A133494(n)]+n`
-/

namespace A233656.P5814026222694858247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A233656.P5814026222694858247

namespace A233656

/-- `∑[A133494(n)]+n` -/
def P5814026222694858247.Spec : Prop :=
  ∀ n, P5814026222694858247.a n = A233656 n

end A233656

/-!
# A233657: a(n) = 10 * binomial(3*n+10,n)/(3*n+10).

The programs for A233657, the canonical program `A233657.P5092340438807226560` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233657 has offset 0).

The definition of A233657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233657.P5092340438807226560

`10*C(3*n+10, n)/(3*n+10)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233657

/-- `10*C(3*n+10, n)/(3*n+10)` -/
def P5092340438807226560.Spec : Prop :=
  ∀ n, P5092340438807226560.a n = (A233657 n : ℚ)

end A233657

/-! ## A233657.P11281645912502203119

`A071948(A052905(n+2))`
-/

namespace A233657.P11281645912502203119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A052905 (n + 2)).toNat

end

end A233657.P11281645912502203119

namespace A233657

/-- `A071948(A052905(n+2))` -/
def P11281645912502203119.Spec : Prop :=
  ∀ n, P11281645912502203119.a n = A233657 n

end A233657

/-! ## A233657.P3429583111925452540

`A071948(A055998(n+2)+n+3)`
-/

namespace A233657.P3429583111925452540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A055998 (n + 2) + (n + 3 : ℤ)).toNat

end

end A233657.P3429583111925452540

namespace A233657

/-- `A071948(A055998(n+2)+n+3)` -/
def P3429583111925452540.Spec : Prop :=
  ∀ n, P3429583111925452540.a n = A233657 n

end A233657

/-! ## A233657.P9708374970212443217

`A071948(A167487(n)+A016825(n))`
-/

namespace A233657.P9708374970212443217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A167487 n + A016825 n).toNat

end

end A233657.P9708374970212443217

namespace A233657

/-- `A071948(A167487(n)+A016825(n))` -/
def P9708374970212443217.Spec : Prop :=
  ∀ n, P9708374970212443217.a n = A233657 n

end A233657

/-! ## A233657.P14444091728374281580

`A071948(A016825(n+2)+A000096(n))`
-/

namespace A233657.P14444091728374281580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A016825 (n + 2) + A000096 n).toNat

end

end A233657.P14444091728374281580

namespace A233657

/-- `A071948(A016825(n+2)+A000096(n))` -/
def P14444091728374281580.Spec : Prop :=
  ∀ n, P14444091728374281580.a n = A233657 n

end A233657

/-! ## A233657.P2466884189711298960

`A071948(A005408(n+2)+A000096(n+2))`
-/

namespace A233657.P2466884189711298960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A005408 (n + 2) + A000096 (n + 2)).toNat

end

end A233657.P2466884189711298960

namespace A233657

/-- `A071948(A005408(n+2)+A000096(n+2))` -/
def P2466884189711298960.Spec : Prop :=
  ∀ n, P2466884189711298960.a n = A233657 n

end A233657

/-! ## A233657.P8828505400267143915

`A006631(n+1)-(A230547(n)+A006630(n+1))`
-/

namespace A233657.P8828505400267143915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006631 (n + 1) - (A230547 n + A006630 (n + 1))

end

end A233657.P8828505400267143915

namespace A233657

/-- `A006631(n+1)-(A230547(n)+A006630(n+1))` -/
def P8828505400267143915.Spec : Prop :=
  ∀ n, P8828505400267143915.a n = A233657 n

end A233657

/-!
# A233658: a(n) = 7*binomial(4*n + 7, n)/(4*n + 7).

The programs for A233658, the canonical program `A233658.P1715427381718170931` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233658 has offset 0).

The definition of A233658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233658.P1715427381718170931

`7*C(4*n+7, n)/(4*n+7)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233658

/-- `7*C(4*n+7, n)/(4*n+7)` -/
def P1715427381718170931.Spec : Prop :=
  ∀ n, P1715427381718170931.a n = (A233658 n : ℚ)

end A233658

/-! ## A233658.P10215787861184337224

`A002293(n+2)-A006632(n+2)`
-/

namespace A233658.P10215787861184337224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 2) - A006632 (n + 2)

end

end A233658.P10215787861184337224

namespace A233658

/-- `A002293(n+2)-A006632(n+2)` -/
def P10215787861184337224.Spec : Prop :=
  ∀ n, P10215787861184337224.a n = A233658 n

end A233658

/-! ## A233658.P18204298043093498363

`A069270(eq[64, A130321(n)])`
-/

namespace A233658.P18204298043093498363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233658.P18204298043093498363

namespace A233658

/-- `A069270(eq[64, A130321(n)])` -/
def P18204298043093498363.Spec : Prop :=
  ∀ n, P18204298043093498363.a n = A233658 n

end A233658

/-! ## A233658.P5816531935595777526

`A069270(A155212(n+3)+1)`
-/

namespace A233658.P5816531935595777526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A155212 (n + 3) + 1).toNat

end

end A233658.P5816531935595777526

namespace A233658

/-- `A069270(A155212(n+3)+1)` -/
def P5816531935595777526.Spec : Prop :=
  ∀ n, P5816531935595777526.a n = A233658 n

end A233658

/-! ## A233658.P5960713828812636218

`A069270(A055999(n+4)-1)`
-/

namespace A233658.P5960713828812636218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A055999 (n + 4) - 1).toNat

end

end A233658.P5960713828812636218

namespace A233658

/-- `A069270(A055999(n+4)-1)` -/
def P5960713828812636218.Spec : Prop :=
  ∀ n, P5960713828812636218.a n = A233658 n

end A233658

/-! ## A233658.P15053524639291942099

`A069270(A055998(n+5)-4)`
-/

namespace A233658.P15053524639291942099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A055998 (n + 5) - 4).toNat

end

end A233658.P15053524639291942099

namespace A233658

/-- `A069270(A055998(n+5)-4)` -/
def P15053524639291942099.Spec : Prop :=
  ∀ n, P15053524639291942099.a n = A233658 n

end A233658

/-! ## A233658.P6445099313725218550

`A069270(A056115(n+2)+8)`
-/

namespace A233658.P6445099313725218550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A056115 (n + 2) + 8).toNat

end

end A233658.P6445099313725218550

namespace A233658

/-- `A069270(A056115(n+2)+8)` -/
def P6445099313725218550.Spec : Prop :=
  ∀ n, P6445099313725218550.a n = A233658 n

end A233658

/-! ## A233658.P9437396201781003186

`A069270(eq[7, A004736(n+1)])`
-/

namespace A233658.P9437396201781003186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233658.P9437396201781003186

namespace A233658

/-- `A069270(eq[7, A004736(n+1)])` -/
def P9437396201781003186.Spec : Prop :=
  ∀ n, P9437396201781003186.a n = A233658 n

end A233658

/-!
# A233659: Number of (n+1)X(1+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233659, there is no canonical definition to state claims against.
-/

/-! ## A233659.P431570550531291166

`A233665(∑[n]+1)`
-/

namespace A233659.P431570550531291166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233659.P431570550531291166

/-! ## A233659.P1439819086853989275

`lcm(2, A233665(A000124(n)))`
-/

namespace A233659.P1439819086853989275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233665 (A000124 n).toNat)

end

end A233659.P1439819086853989275

/-! ## A233659.P3418366425843384343

`record[A233665(A249742(n+1))]`
-/

namespace A233659.P3418366425843384343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233659.P3418366425843384343

/-! ## A233659.P1386379629549712957

`record[A010054(n)*A233665(n+1)]`
-/

namespace A233659.P1386379629549712957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233659.P1386379629549712957

/-! ## A233659.P1348091429229962961

`record[gcd(A145153(n), A233665(n+1))]`
-/

namespace A233659.P1348091429229962961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145153 n) (A233665 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233659.P1348091429229962961

/-!
# A233660: Number of (n+1)X(2+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233660, there is no canonical definition to state claims against.
-/

/-! ## A233660.P15657935341592653438

`A233665(∑[n+1]+2)`
-/

namespace A233660.P15657935341592653438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233660.P15657935341592653438

/-! ## A233660.P10507759859628771422

`record[A010054(n)*A233665(n+2)]`
-/

namespace A233660.P10507759859628771422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233665 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233660.P10507759859628771422

/-! ## A233660.P13401497430396450554

`A007318(A000003(n+1))*A233665(A133263(n+1))`
-/

namespace A233660.P13401497430396450554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000003 (n + 1)).toNat * A233665 (A133263 (n + 1)).toNat

end

end A233660.P13401497430396450554

/-! ## A233660.P14583748452091982770

`A007318(A233654(n+1))*A233665(A133263(n+1))`
-/

namespace A233660.P14583748452091982770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A233654 (n + 1)).toNat * A233665 (A133263 (n + 1)).toNat

end

end A233660.P14583748452091982770

/-!
# A233661: Number of (n+1)X(3+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233661, there is no canonical definition to state claims against.
-/

/-! ## A233661.P11924359916022136966

`A233665(∑[n+2]+4)`
-/

namespace A233661.P11924359916022136966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233661.P11924359916022136966

/-! ## A233661.P17644279772783670413

`lcm(2, A233665(A167614(n+1)))`
-/

namespace A233661.P17644279772783670413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233665 (A167614 (n + 1)).toNat)

end

end A233661.P17644279772783670413

/-! ## A233661.P11215996347968133365

`A233665(A167614(n+1))+A185238(n)`
-/

namespace A233661.P11215996347968133365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A167614 (n + 1)).toNat + A185238 n

end

end A233661.P11215996347968133365

/-! ## A233661.P2638479909377708157

`A233665(A167614(n+1))+A185284(n)`
-/

namespace A233661.P2638479909377708157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A167614 (n + 1)).toNat + A185284 n

end

end A233661.P2638479909377708157

/-! ## A233661.P8751554210785239654

`A008327(n)*A233665(A167614(n+1))`
-/

namespace A233661.P8751554210785239654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 n * A233665 (A167614 (n + 1)).toNat

end

end A233661.P8751554210785239654

/-!
# A233662: Number of (n+1)X(4+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233662, there is no canonical definition to state claims against.
-/

/-! ## A233662.P16536679641237154019

`A233665(A374004(n+1))`
-/

namespace A233662.P16536679641237154019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A374004 (n + 1)).toNat

end

end A233662.P16536679641237154019

/-! ## A233662.P7606503827892156673

`A233665(A141214(n)+7)`
-/

namespace A233662.P7606503827892156673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A141214 n + 7).toNat

end

end A233662.P7606503827892156673

/-! ## A233662.P9976945480054875286

`A233665(A052905(n)+9)`
-/

namespace A233662.P9976945480054875286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A052905 n + 9).toNat

end

end A233662.P9976945480054875286

/-! ## A233662.P2473211246013786369

`A233665(A055999(n)+10)`
-/

namespace A233662.P2473211246013786369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A055999 n + 10).toNat

end

end A233662.P2473211246013786369

/-! ## A233662.P7711961126656961550

`A233665(eq[5, A066657(n)])`
-/

namespace A233662.P7711961126656961550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233662.P7711961126656961550

/-!
# A233663: Number of (n+1)X(5+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233663, there is no canonical definition to state claims against.
-/

/-! ## A233663.P10111673148391851363

`A233665(A374005(n+1))`
-/

namespace A233663.P10111673148391851363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A374005 (n + 1)).toNat

end

end A233663.P10111673148391851363

/-! ## A233663.P9474053901306164863

`A233665(A155212(n)+13)`
-/

namespace A233663.P9474053901306164863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A155212 n + 13).toNat

end

end A233663.P9474053901306164863

/-! ## A233663.P13542859070807145635

`A233665(A056000(n)+15)`
-/

namespace A233663.P13542859070807145635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A056000 n + 15).toNat

end

end A233663.P13542859070807145635

/-! ## A233663.P9309497534328719864

`A233665(eq[7, A066657(n)])`
-/

namespace A233663.P9309497534328719864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233663.P9309497534328719864

/-! ## A233663.P2717184233411487662

`A233665(A167614(n+3)+2)`
-/

namespace A233663.P2717184233411487662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A167614 (n + 3) + 2).toNat

end

end A233663.P2717184233411487662

/-!
# A233664: Number of (n+1)X(6+1) 0..6 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233664, there is no canonical definition to state claims against.
-/

/-! ## A233664.P15179972160843265831

`A233665(A374007(n+1))`
-/

namespace A233664.P15179972160843265831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A374007 (n + 1)).toNat

end

end A233664.P15179972160843265831

/-! ## A233664.P5522099630780131931

`A233665(A167499(n+4)+1)`
-/

namespace A233664.P5522099630780131931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A167499 (n + 4) + 1).toNat

end

end A233664.P5522099630780131931

/-! ## A233664.P9422953418849740088

`A233665(A167487(n+4)-1)`
-/

namespace A233664.P9422953418849740088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A167487 (n + 4) - 1).toNat

end

end A233664.P9422953418849740088

/-! ## A233664.P2723944945172503745

`A233665(A167614(n+4)+3)`
-/

namespace A233664.P2723944945172503745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233665 (A167614 (n + 4) + 3).toNat

end

end A233664.P2723944945172503745

/-!
# A233666: a(n) = 2*binomial(4*n + 8, n)/(n + 2).

The programs for A233666, the canonical program `A233666.P15715580136252328662` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233666 has offset 0).

The definition of A233666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233666.P15715580136252328662

`2*C(4*n+8, n)/(n+2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233666

/-- `2*C(4*n+8, n)/(n+2)` -/
def P15715580136252328662.Spec : Prop :=
  ∀ n, P15715580136252328662.a n = (A233666 n : ℚ)

end A233666

/-! ## A233666.P13838856336884360722

`A196678(n+1)-A002293(n+2)`
-/

namespace A233666.P13838856336884360722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196678 (n + 1) - A002293 (n + 2)

end

end A233666.P13838856336884360722

namespace A233666

/-- `A196678(n+1)-A002293(n+2)` -/
def P13838856336884360722.Spec : Prop :=
  ∀ n, P13838856336884360722.a n = A233666 n

end A233666

/-! ## A233666.P1055758121525862258

`A196678(n+1)-(A233658(n)+A006632(n+2))`
-/

namespace A233666.P1055758121525862258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196678 (n + 1) - (A233658 n + A006632 (n + 2))

end

end A233666.P1055758121525862258

namespace A233666

/-- `A196678(n+1)-(A233658(n)+A006632(n+2))` -/
def P1055758121525862258.Spec : Prop :=
  ∀ n, P1055758121525862258.a n = A233666 n

end A233666

/-! ## A233666.P2080970659151256422

`2/(n+2)*A004332(n+2)`
-/

namespace A233666.P2080970659151256422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A004332 (n + 2) : ℚ)

end

end A233666.P2080970659151256422

namespace A233666

/-- `2/(n+2)*A004332(n+2)` -/
def P2080970659151256422.Spec : Prop :=
  ∀ n, P2080970659151256422.a n = (A233666 n : ℚ)

end A233666

/-! ## A233666.P11041662109210190785

`A188108(A167614(n+2)+1)`
-/

namespace A233666.P11041662109210190785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (A167614 (n + 2) + 1).toNat

end

end A233666.P11041662109210190785

namespace A233666

/-- `A188108(A167614(n+2)+1)` -/
def P11041662109210190785.Spec : Prop :=
  ∀ n, P11041662109210190785.a n = A233666 n

end A233666

/-! ## A233666.P7417138620505405093

`A069270(eq[8, A004736(n+1)])`
-/

namespace A233666.P7417138620505405093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233666.P7417138620505405093

namespace A233666

/-- `A069270(eq[8, A004736(n+1)])` -/
def P7417138620505405093.Spec : Prop :=
  ∀ n, P7417138620505405093.a n = A233666 n

end A233666

/-!
# A233667: a(n) = 5*binomial(4*n+10,n)/(2*n+5).

The programs for A233667, the canonical program `A233667.P7970664311015235967` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233667 has offset 0).

The definition of A233667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233667.P7970664311015235967

`5*C(4*n+10, n)/(2*n+5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233667

/-- `5*C(4*n+10, n)/(2*n+5)` -/
def P7970664311015235967.Spec : Prop :=
  ∀ n, P7970664311015235967.a n = (A233667 n : ℚ)

end A233667

/-! ## A233667.P10919499485514884474

`A233658(n+1)-A006633(n+1)`
-/

namespace A233667.P10919499485514884474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233658 (n + 1) - A006633 (n + 1)

end

end A233667.P10919499485514884474

namespace A233667

/-- `A233658(n+1)-A006633(n+1)` -/
def P10919499485514884474.Spec : Prop :=
  ∀ n, P10919499485514884474.a n = A233667 n

end A233667

/-! ## A233667.P14551819915803887139

`A233658(n+1)-(A196678(n+1)+A006634(n))`
-/

namespace A233667.P14551819915803887139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233658 (n + 1) - (A196678 (n + 1) + A006634 n)

end

end A233667.P14551819915803887139

namespace A233667

/-- `A233658(n+1)-(A196678(n+1)+A006634(n))` -/
def P14551819915803887139.Spec : Prop :=
  ∀ n, P14551819915803887139.a n = A233667 n

end A233667

/-! ## A233667.P1101458326472049990

`A069270(eq[9, A025581(n)])`
-/

namespace A233667.P1101458326472049990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233667.P1101458326472049990

namespace A233667

/-- `A069270(eq[9, A025581(n)])` -/
def P1101458326472049990.Spec : Prop :=
  ∀ n, P1101458326472049990.a n = A233667 n

end A233667

/-! ## A233667.P2095960174247493492

`A069270(eq[19, A099375(n)])`
-/

namespace A233667.P2095960174247493492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233667.P2095960174247493492

namespace A233667

/-- `A069270(eq[19, A099375(n)])` -/
def P2095960174247493492.Spec : Prop :=
  ∀ n, P2095960174247493492.a n = A233667 n

end A233667

/-! ## A233667.P4579033594475225329

`A069270(eq[10, A004736(n+1)])`
-/

namespace A233667.P4579033594475225329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233667.P4579033594475225329

namespace A233667

/-- `A069270(eq[10, A004736(n+1)])` -/
def P4579033594475225329.Spec : Prop :=
  ∀ n, P4579033594475225329.a n = A233667 n

end A233667

/-!
# A233668: a(n) = 6*binomial(5*n + 6,n)/(5*n + 6).

The programs for A233668, the canonical program `A233668.P14567864662841941759` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233668 has offset 0).

The definition of A233668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233668.P14567864662841941759

`6*C(5*n+6, n)/(5*n+6)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233668

/-- `6*C(5*n+6, n)/(5*n+6)` -/
def P14567864662841941759.Spec : Prop :=
  ∀ n, P14567864662841941759.a n = (A233668 n : ℚ)

end A233668

/-! ## A233668.P15069083901580249488

`A370061(2*(n+1))`
-/

namespace A233668.P15069083901580249488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370061 (2 * (n + 1))

end

end A233668.P15069083901580249488

namespace A233668

/-- `A370061(2*(n+1))` -/
def P15069083901580249488.Spec : Prop :=
  ∀ n, P15069083901580249488.a n = A233668 n

end A233668

/-! ## A233668.P14532077010501090411

`(n+1)*A197272(n+1)`
-/

namespace A233668.P14532077010501090411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A197272 (n + 1)

end

end A233668.P14532077010501090411

namespace A233668

/-- `(n+1)*A197272(n+1)` -/
def P14532077010501090411.Spec : Prop :=
  ∀ n, P14532077010501090411.a n = A233668 n

end A233668

/-! ## A233668.P13718890626961601551

`∑[3*Δ[n/3*A197272(n)]]`
-/

namespace A233668.P13718890626961601551
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A197272 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233668.P13718890626961601551

namespace A233668

/-- `∑[3*Δ[n/3*A197272(n)]]` -/
def P13718890626961601551.Spec : Prop :=
  ∀ n, P13718890626961601551.a n = (A233668 n : ℚ)

end A233668

/-! ## A233668.P3352624517915310436

`∑[Δ[A118969(n)]-A334719(n)]`
-/

namespace A233668.P3352624517915310436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A334719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233668.P3352624517915310436

namespace A233668

/-- `∑[Δ[A118969(n)]-A334719(n)]` -/
def P3352624517915310436.Spec : Prop :=
  ∀ n, P3352624517915310436.a n = A233668 n

end A233668

/-! ## A233668.P7104152471487319327

`A118969(n+1)-A002294(n+1)`
-/

namespace A233668.P7104152471487319327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118969 (n + 1) - A002294 (n + 1)

end

end A233668.P7104152471487319327

namespace A233668

/-- `A118969(n+1)-A002294(n+1)` -/
def P7104152471487319327.Spec : Prop :=
  ∀ n, P7104152471487319327.a n = A233668 n

end A233668

/-! ## A233668.P15360789795030482630

`∑[3*Δ[n/A016861(n)*A118969(n)]]`
-/

namespace A233668.P15360789795030482630
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A016861 n : ℚ) * (A118969 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233668.P15360789795030482630

namespace A233668

/-- `∑[3*Δ[n/A016861(n)*A118969(n)]]` -/
def P15360789795030482630.Spec : Prop :=
  ∀ n, P15360789795030482630.a n = (A233668 n : ℚ)

end A233668

/-!
# A233669: a(n) = 7*binomial(5*n+7, n)/(5*n+7).

The programs for A233669, the canonical program `A233669.P936900632548085653` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233669 has offset 0).

The definition of A233669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233669.P936900632548085653

`7*C(5*n+7, n)/(5*n+7)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233669

/-- `7*C(5*n+7, n)/(5*n+7)` -/
def P936900632548085653.Spec : Prop :=
  ∀ n, P936900632548085653.a n = (A233669 n : ℚ)

end A233669

/-! ## A233669.P15401075568102612954

`A118970(n+1)-A118969(n+1)`
-/

namespace A233669.P15401075568102612954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118970 (n + 1) - A118969 (n + 1)

end

end A233669.P15401075568102612954

namespace A233669

/-- `A118970(n+1)-A118969(n+1)` -/
def P15401075568102612954.Spec : Prop :=
  ∀ n, P15401075568102612954.a n = A233669 n

end A233669

/-! ## A233669.P8787220272371007647

`A118970(n+1)-(A233668(n)+A002294(n+1))`
-/

namespace A233669.P8787220272371007647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118970 (n + 1) - (A233668 n + A002294 (n + 1))

end

end A233669.P8787220272371007647

namespace A233669

/-- `A118970(n+1)-(A233668(n)+A002294(n+1))` -/
def P8787220272371007647.Spec : Prop :=
  ∀ n, P8787220272371007647.a n = A233669 n

end A233669

/-! ## A233669.P16151224021751309126

`A118970(char[A010766(n+1)]+n)%A118969(n+1)`
-/

namespace A233669.P16151224021751309126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118970 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)) (A118969 (n + 1))

end

end A233669.P16151224021751309126

namespace A233669

/-- `A118970(char[A010766(n+1)]+n)%A118969(n+1)` -/
def P16151224021751309126.Spec : Prop :=
  ∀ n, P16151224021751309126.a n = A233669 n

end A233669

/-! ## A233669.P2526584847080126749

`A118971(n+1)-(A233736(n)+A118969(n+1))`
-/

namespace A233669.P2526584847080126749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118971 (n + 1) - (A233736 n + A118969 (n + 1))

end

end A233669.P2526584847080126749

namespace A233669

/-- `A118971(n+1)-(A233736(n)+A118969(n+1))` -/
def P2526584847080126749.Spec : Prop :=
  ∀ n, P2526584847080126749.a n = A233669 n

end A233669

/-!
# A233670: Expansion of q * phi(-q^2) * psi(q^9) / (f(q^3) * phi(q^3)) in powers of q where f(), phi(), psi() are Ramanujan theta functions.

The programs for A233670, there is no canonical definition to state claims against.
-/

/-! ## A233670.P3035496341953539140

`A132419(n)*A139214(n+1)`
-/

namespace A233670.P3035496341953539140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 n * A139214 (n + 1)

end

end A233670.P3035496341953539140

/-! ## A233670.P5287999383603379882

`A233672(n+1)`
-/

namespace A233670.P5287999383603379882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233672 (n + 1)

end

end A233670.P5287999383603379882

/-! ## A233670.P10599126034837955101

`A233673(n+1)/2`
-/

namespace A233670.P10599126034837955101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233673 (n + 1) : ℚ) / 2

end

end A233670.P10599126034837955101

/-! ## A233670.P2928240967055247673

`1-∑[-Δ[A233672(n)]]`
-/

namespace A233670.P2928240967055247673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233670.P2928240967055247673

/-! ## A233670.P15825814324683536565

`(2-(n+1)%3)*A213265(n+1)`
-/

namespace A233670.P15825814324683536565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (((n + 1) % 3 : ℕ) : ℤ)) * A213265 (n + 1)

end

end A233670.P15825814324683536565

/-! ## A233670.P10639201650537869529

`A010892(n+1)*A261154(n+1)`
-/

namespace A233670.P10639201650537869529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) * A261154 (n + 1)

end

end A233670.P10639201650537869529

/-! ## A233670.P8368324066580567964

`A139213(n+1)/A057079(n+1)`
-/

namespace A233670.P8368324066580567964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139213 (n + 1) : ℚ) / (A057079 (n + 1) : ℚ)

end

end A233670.P8368324066580567964

/-! ## A233670.P16132866306910360588

`A139213(n+1)/A132954(n+1)`
-/

namespace A233670.P16132866306910360588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139213 (n + 1) : ℚ) / (A132954 (n + 1) : ℚ)

end

end A233670.P16132866306910360588

/-! ## A233670.P308735898226928240

`A100051(n+1)/2*A139213(n+1)`
-/

namespace A233670.P308735898226928240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100051 (n + 1) : ℚ) / 2 * (A139213 (n + 1) : ℚ)

end

end A233670.P308735898226928240

/-! ## A233670.P10010124687298441067

`A010892(n+1)/2*A261156(n+1)`
-/

namespace A233670.P10010124687298441067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010892 (n + 1) : ℚ) / 2 * (A261156 (n + 1) : ℚ)

end

end A233670.P10010124687298441067

/-! ## A233670.P11770017242710421707

`A010892(n+1)/2*A293387(n+1)`
-/

namespace A233670.P11770017242710421707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010892 (n + 1) : ℚ) / 2 * (A293387 (n + 1) : ℚ)

end

end A233670.P11770017242710421707

/-! ## A233670.P1279913520644343444

`A049347(n+1)/2*A260215(n+1)`
-/

namespace A233670.P1279913520644343444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 (n + 1) : ℚ) / 2 * (A260215 (n + 1) : ℚ)

end

end A233670.P1279913520644343444

/-! ## A233670.P1265036514959554931

`A049347(n+1)/2*A262930(n+1)`
-/

namespace A233670.P1265036514959554931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 (n + 1) : ℚ) / 2 * (A262930 (n + 1) : ℚ)

end

end A233670.P1265036514959554931

/-!
# A233671: Numbers k such that prime(k)^2 < prime(k-1)*prime(k+1).

The programs for A233671, the canonical program `A233671.P2639350309273888819` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233671 has offset 1).

The definition of A233671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233671.P3675962426094477606

`A358529(n+1)-1`
-/

namespace A233671.P3675962426094477606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358529 (n + 1) - 1

end

end A233671.P3675962426094477606

namespace A233671

/-- `A358529(n+1)-1` -/
def P3675962426094477606.Spec : Prop :=
  ∀ n, P3675962426094477606.a n = A233671 (n + 1)

end A233671

/-! ## A233671.P2639350309273888819

`lt[(1/3)², A036263(n+1)]+2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A233671

/-- `lt[(1/3)², A036263(n+1)]+2` -/
def P2639350309273888819.Spec : Prop :=
  ∀ n, (P2639350309273888819.a n : ℤ) = A233671 (n + 1)

theorem P2639350309273888819.correct : P2639350309273888819.Spec := by
  intro n
  simp only [A233671, Nat.add_sub_cancel]

end A233671

/-! ## A233671.P5401483422686922718

`A391658(n+1)+A046868(n+1)`
-/

namespace A233671.P5401483422686922718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391658 (n + 1) + A046868 (n + 1)

end

end A233671.P5401483422686922718

namespace A233671

/-- `A391658(n+1)+A046868(n+1)` -/
def P5401483422686922718.Spec : Prop :=
  ∀ n, P5401483422686922718.a n = A233671 (n + 1)

end A233671

/-! ## A233671.P12988573215903191828

`lt[A001223(n+1), A001223(n+2)]+2`
-/

namespace A233671.P12988573215903191828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A233671.P12988573215903191828

namespace A233671

/-- `lt[A001223(n+1), A001223(n+2)]+2` -/
def P12988573215903191828.Spec : Prop :=
  ∀ n, (P12988573215903191828.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P3918341007125286185

`record[2-n*A079054(n+2)]`
-/

namespace A233671.P3918341007125286185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ) * A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233671.P3918341007125286185

namespace A233671

/-- `record[2-n*A079054(n+2)]` -/
def P3918341007125286185.Spec : Prop :=
  ∀ n, P3918341007125286185.a n = A233671 (n + 1)

end A233671

/-! ## A233671.P7905769136331787991

`lt[A056221(n+1), 0]+2`
-/

namespace A233671.P7905769136331787991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A233671.P7905769136331787991

namespace A233671

/-- `lt[A056221(n+1), 0]+2` -/
def P7905769136331787991.Spec : Prop :=
  ∀ n, (P7905769136331787991.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P17235307382569890514

`eq[1, A228098(n+1)]+2`
-/

namespace A233671.P17235307382569890514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A233671.P17235307382569890514

namespace A233671

/-- `eq[1, A228098(n+1)]+2` -/
def P17235307382569890514.Spec : Prop :=
  ∀ n, (P17235307382569890514.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P16111945273770599226

`lt[A073272(n+1), 1]+2`
-/

namespace A233671.P16111945273770599226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A233671.P16111945273770599226

namespace A233671

/-- `lt[A073272(n+1), 1]+2` -/
def P16111945273770599226.Spec : Prop :=
  ∀ n, (P16111945273770599226.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P13669063876482530475

`lt[A073274(n+1), 1]+2`
-/

namespace A233671.P13669063876482530475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A233671.P13669063876482530475

namespace A233671

/-- `lt[A073274(n+1), 1]+2` -/
def P13669063876482530475.Spec : Prop :=
  ∀ n, (P13669063876482530475.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P10412792524405996472

`lt[n, A320146(n+2)]+2`
-/

namespace A233671.P10412792524405996472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A233671.P10412792524405996472

namespace A233671

/-- `lt[n, A320146(n+2)]+2` -/
def P10412792524405996472.Spec : Prop :=
  ∀ n, (P10412792524405996472.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P5154830453793835092

`eq[1, Δ[A092243(n+1)]]+2`
-/

namespace A233671.P5154830453793835092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A233671.P5154830453793835092

namespace A233671

/-- `eq[1, Δ[A092243(n+1)]]+2` -/
def P5154830453793835092.Spec : Prop :=
  ∀ n, (P5154830453793835092.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P12932170012250080064

`lt[A046933(n+1), A176246(n+1)]+2`
-/

namespace A233671.P12932170012250080064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A233671.P12932170012250080064

namespace A233671

/-- `lt[A046933(n+1), A176246(n+1)]+2` -/
def P12932170012250080064.Spec : Prop :=
  ∀ n, (P12932170012250080064.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P13857106931697214261

`lt[n, Δ[A050216(n)]]+1`
-/

namespace A233671.P13857106931697214261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A233671.P13857106931697214261

namespace A233671

/-- `lt[n, Δ[A050216(n)]]+1` -/
def P13857106931697214261.Spec : Prop :=
  ∀ n, (P13857106931697214261.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P182781669908077413

`eq[1, A108415(n+2)]+2`
-/

namespace A233671.P182781669908077413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A233671.P182781669908077413

namespace A233671

/-- `eq[1, A108415(n+2)]+2` -/
def P182781669908077413.Spec : Prop :=
  ∀ n, (P182781669908077413.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P532967486277489824

`lt[1, Δ[A218075(n+1)]]+2`
-/

namespace A233671.P532967486277489824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A233671.P532967486277489824

namespace A233671

/-- `lt[1, Δ[A218075(n+1)]]+2` -/
def P532967486277489824.Spec : Prop :=
  ∀ n, (P532967486277489824.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P15145521648332339091

`eq[A075526(n), A339270(n+1)]+1`
-/

namespace A233671.P15145521648332339091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A233671.P15145521648332339091

namespace A233671

/-- `eq[A075526(n), A339270(n+1)]+1` -/
def P15145521648332339091.Spec : Prop :=
  ∀ n, (P15145521648332339091.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P2614395286819421579

`eq[A051702(n+1), A339270(n+1)]+1`
-/

namespace A233671.P2614395286819421579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A233671.P2614395286819421579

namespace A233671

/-- `eq[A051702(n+1), A339270(n+1)]+1` -/
def P2614395286819421579.Spec : Prop :=
  ∀ n, (P2614395286819421579.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P14415713215792680637

`eq[A054541(n+1), A339270(n+1)]+1`
-/

namespace A233671.P14415713215792680637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A233671.P14415713215792680637

namespace A233671

/-- `eq[A054541(n+1), A339270(n+1)]+1` -/
def P14415713215792680637.Spec : Prop :=
  ∀ n, (P14415713215792680637.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P12241904969877341271

`eq[A125266(n+1), A339270(n+1)]+1`
-/

namespace A233671.P12241904969877341271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A233671.P12241904969877341271

namespace A233671

/-- `eq[A125266(n+1), A339270(n+1)]+1` -/
def P12241904969877341271.Spec : Prop :=
  ∀ n, (P12241904969877341271.a n : ℤ) = A233671 (n + 1)

end A233671

/-! ## A233671.P16730267136559173996

`lt[A065091(n+1), A137174(n+1)]+1`
-/

namespace A233671.P16730267136559173996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A233671.P16730267136559173996

namespace A233671

/-- `lt[A065091(n+1), A137174(n+1)]+1` -/
def P16730267136559173996.Spec : Prop :=
  ∀ n, (P16730267136559173996.a n : ℤ) = A233671 (n + 1)

end A233671

/-!
# A233672: Expansion of psi(q) * phi(-q^18) * f(-q^6) / f(q^3)^3 in powers of q where phi(), psi(), f() are Ramanujan theta functions.

The programs for A233672, there is no canonical definition to state claims against.
-/

/-! ## A233672.P3156673001250939527

`ceil(A233673(n)/2)`
-/

namespace A233672.P3156673001250939527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233673 n : ℚ) / 2⌉

end

end A233672.P3156673001250939527

/-! ## A233672.P10456846340732336789

`A233670((2*n)%(n+1)+1)`
-/

namespace A233672.P10456846340732336789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233670 (2 * n % (n + 1) + 1)

end

end A233672.P10456846340732336789

/-! ## A233672.P3187683571184644328

`A233670(n-(n+2)%(n+1)+1)`
-/

namespace A233672.P3187683571184644328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233670 ((n : ℤ) - (((n + 2) % (n + 1) : ℕ) : ℤ) + 1).toNat

end

end A233672.P3187683571184644328

/-! ## A233672.P14702965456881739625

`A233670(A028310(n))`
-/

namespace A233672.P14702965456881739625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233670 (A028310 n).toNat

end

end A233672.P14702965456881739625

/-! ## A233672.P2746997429327573718

`A233670(A000007(n)+n)`
-/

namespace A233672.P2746997429327573718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233670 (A000007 n + (n : ℤ)).toNat

end

end A233672.P2746997429327573718

/-! ## A233672.P1264196917886552552

`A010892(n)*A261154(n)`
-/

namespace A233672.P1264196917886552552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A261154 n

end

end A233672.P1264196917886552552

/-! ## A233672.P14448151367404521899

`A139213(n)/A057079(n)`
-/

namespace A233672.P14448151367404521899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139213 n : ℚ) / (A057079 n : ℚ)

end

end A233672.P14448151367404521899

/-! ## A233672.P16428568156798763156

`A139213(n)/A132954(n)`
-/

namespace A233672.P16428568156798763156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139213 n : ℚ) / (A132954 n : ℚ)

end

end A233672.P16428568156798763156

/-! ## A233672.P5089393162009934008

`A233673(n)/A036453(n+1)`
-/

namespace A233672.P5089393162009934008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233673 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A233672.P5089393162009934008

/-! ## A233672.P11335298772577272387

`A233673(n)/A130335(n+1)`
-/

namespace A233672.P11335298772577272387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233673 n : ℚ) / (A130335 (n + 1) : ℚ)

end

end A233672.P11335298772577272387

/-! ## A233672.P17381162954846071830

`A233673(n)/A143098(n+1)`
-/

namespace A233672.P17381162954846071830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233673 n : ℚ) / (A143098 (n + 1) : ℚ)

end

end A233672.P17381162954846071830

/-! ## A233672.P8792339856434546621

`A233673(n)/A216345(n²%(n+1)+1)`
-/

namespace A233672.P8792339856434546621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233673 n : ℚ) / (A216345 (n ^ 2 % (n + 1) + 1) : ℚ)

end

end A233672.P8792339856434546621

/-! ## A233672.P9524068923344005702

`A233673(n)/A216022(n+1)`
-/

namespace A233672.P9524068923344005702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233673 n : ℚ) / (A216022 (n + 1) : ℚ)

end

end A233672.P9524068923344005702

/-!
# A233673: Expansion of phi(q) * phi(q^9) / phi(q^3)^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A233673, there is no canonical definition to state claims against.
-/

/-! ## A233673.P12111082947684505001

`A100051(n)*A139213(n)`
-/

namespace A233673.P12111082947684505001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n * A139213 n

end

end A233673.P12111082947684505001

/-! ## A233673.P10870166103795409295

`A010892(n)*A261156(n)`
-/

namespace A233673.P10870166103795409295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A261156 n

end

end A233673.P10870166103795409295

/-! ## A233673.P17361504668311289426

`A010892(n)*A293387(n)`
-/

namespace A233673.P17361504668311289426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A293387 n

end

end A233673.P17361504668311289426

/-! ## A233673.P1859640686200758003

`A049347(n)*A260215(n)`
-/

namespace A233673.P1859640686200758003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A260215 n

end

end A233673.P1859640686200758003

/-! ## A233673.P2228275332085312480

`A049347(n)*A262930(n)`
-/

namespace A233673.P2228275332085312480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A262930 n

end

end A233673.P2228275332085312480

/-! ## A233673.P8953624465733200501

`A036453(n+1)*A233672(n)`
-/

namespace A233673.P8953624465733200501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A233672 n

end

end A233673.P8953624465733200501

/-! ## A233673.P3915626896738425122

`A130335(n+1)*A233672(n)`
-/

namespace A233673.P3915626896738425122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130335 (n + 1) * A233672 n

end

end A233673.P3915626896738425122

/-! ## A233673.P4988498257936797105

`A143098(n+1)*A233672(n)`
-/

namespace A233673.P4988498257936797105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143098 (n + 1) * A233672 n

end

end A233673.P4988498257936797105

/-! ## A233673.P11423460920475497840

`(2-A000007(n))*A233672(n)`
-/

namespace A233673.P11423460920475497840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A233672 n

end

end A233673.P11423460920475497840

/-! ## A233673.P7191637606770304891

`∏{e}[A006530(n+1), A000040(#)*A233672(n)]`
-/

namespace A233673.P7191637606770304891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p) * A233672 n

end

end A233673.P7191637606770304891

/-! ## A233673.P8350046800088069814

`A233672(n)+A233672(n)%A261325(n)`
-/

namespace A233673.P8350046800088069814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233672 n + Int.tmod (A233672 n) (A261325 n)

end

end A233673.P8350046800088069814

/-! ## A233673.P11618118738573830465

`A002377(A001222(n+1)²²+1)*A233672(n)`
-/

namespace A233673.P11618118738573830465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 ((A001222 (n + 1) ^ 2) ^ 2 + 1).toNat * A233672 n

end

end A233673.P11618118738573830465

/-! ## A233673.P5992142521197492393

`A216022(n+1)*A233672(n)`
-/

namespace A233673.P5992142521197492393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216022 (n + 1) * A233672 n

end

end A233673.P5992142521197492393

/-! ## A233673.P9686266220454739347

`A000122(n²)*A233672(n)`
-/

namespace A233673.P9686266220454739347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A233672 n

end

end A233673.P9686266220454739347

/-!
# A233674: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 6.

The programs for A233674, there is no canonical definition to state claims against.
-/

/-! ## A233674.P3792721002270319486

`A233682(∑[4*n]+1)`
-/

namespace A233674.P3792721002270319486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233674.P3792721002270319486

/-! ## A233674.P12367894206184609671

`lcm(2, A233682(A001844(n)))`
-/

namespace A233674.P12367894206184609671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233682 (A001844 n).toNat)

end

end A233674.P12367894206184609671

/-! ## A233674.P11281627722737497012

`record[gcd(A114327(n), A233682(n+1))]`
-/

namespace A233674.P11281627722737497012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A233682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233674.P11281627722737497012

/-! ## A233674.P17205823633789290960

`A326545(n)+A233682(A001844(n))`
-/

namespace A233674.P17205823633789290960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A233682 (A001844 n).toNat

end

end A233674.P17205823633789290960

/-! ## A233674.P16110731117368561022

`A208615(n)*A233682(A001844(n))`
-/

namespace A233674.P16110731117368561022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 n * A233682 (A001844 n).toNat

end

end A233674.P16110731117368561022

/-!
# A233675: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 6.

The programs for A233675, there is no canonical definition to state claims against.
-/

/-! ## A233675.P5199638500092695284

`A233682(∑[n]+1)`
-/

namespace A233675.P5199638500092695284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233675.P5199638500092695284

/-! ## A233675.P12033314567451167730

`lcm(2, A233682(A000124(n)))`
-/

namespace A233675.P12033314567451167730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233682 (A000124 n).toNat)

end

end A233675.P12033314567451167730

/-! ## A233675.P6171249539177401387

`record[A010054(n)*A233682(n+1)]`
-/

namespace A233675.P6171249539177401387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233675.P6171249539177401387

/-! ## A233675.P15788249550858953917

`record[A233682(n+1)/A056941(n)]`
-/

namespace A233675.P15788249550858953917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233682 (n + 1) : ℚ) / (A056941 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233675.P15788249550858953917

/-! ## A233675.P16832731507008924382

`record[root(A233682(n+1), A048004(n))]`
-/

namespace A233675.P16832731507008924382
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233682 (n + 1) : ℝ) ^ (1 / (A048004 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233675.P16832731507008924382

/-!
# A233676: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 6.

The programs for A233676, there is no canonical definition to state claims against.
-/

/-! ## A233676.P3458855305700055885

`A233682(∑[n+1]+2)`
-/

namespace A233676.P3458855305700055885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233676.P3458855305700055885

/-! ## A233676.P5633211916594986470

`record[A233682(A008795(n)+2)]`
-/

namespace A233676.P5633211916594986470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233676.P5633211916594986470

/-! ## A233676.P2222215847476776229

`lcm(2, A233682(A000096(n)+3))`
-/

namespace A233676.P2222215847476776229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233682 (A000096 n + 3).toNat)

end

end A233676.P2222215847476776229

/-! ## A233676.P532689344435612989

`record[A010054(n)*A233682(n+2)]`
-/

namespace A233676.P532689344435612989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233676.P532689344435612989

/-! ## A233676.P12423876358045456199

`record[gcd(A221683(n+1), A233682(n+2))]`
-/

namespace A233676.P12423876358045456199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221683 (n + 1)) (A233682 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233676.P12423876358045456199

/-!
# A233677: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 6.

The programs for A233677, there is no canonical definition to state claims against.
-/

/-! ## A233677.P9050623666552218340

`A233682(∑[n+2]+4)`
-/

namespace A233677.P9050623666552218340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233677.P9050623666552218340

/-! ## A233677.P8685021783716217996

`lcm(2, A233682(A167614(n+1)))`
-/

namespace A233677.P8685021783716217996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233682 (A167614 (n + 1)).toNat)

end

end A233677.P8685021783716217996

/-! ## A233677.P11697537947539970326

`A233682(A167614(n+1))+A006983(n+1)`
-/

namespace A233677.P11697537947539970326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A167614 (n + 1)).toNat + A006983 (n + 1)

end

end A233677.P11697537947539970326

/-! ## A233677.P14009224162964038436

`A233682(A167614(n+1))%A233678(n+1)`
-/

namespace A233677.P14009224162964038436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233682 (A167614 (n + 1)).toNat) (A233678 (n + 1))

end

end A233677.P14009224162964038436

/-! ## A233677.P5487494133821856176

`lcm(4, A233682(A034856(n+2)))`
-/

namespace A233677.P5487494133821856176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A233682 (A034856 (n + 2)).toNat)

end

end A233677.P5487494133821856176

/-!
# A233678: Number of (n+1) X (4+1) 0..3 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 6.

The programs for A233678, there is no canonical definition to state claims against.
-/

/-! ## A233678.P11065756988879312218

`A233682(A374004(n+1))`
-/

namespace A233678.P11065756988879312218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A374004 (n + 1)).toNat

end

end A233678.P11065756988879312218

/-! ## A233678.P18418855665621147936

`A233682(A141214(n)+7)`
-/

namespace A233678.P18418855665621147936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A141214 n + 7).toNat

end

end A233678.P18418855665621147936

/-! ## A233678.P13490251903255473941

`A233682(A055999(n)+10)`
-/

namespace A233678.P13490251903255473941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A055999 n + 10).toNat

end

end A233678.P13490251903255473941

/-! ## A233678.P9698007124663094321

`A233682(A167614(n+2)+1)`
-/

namespace A233678.P9698007124663094321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A167614 (n + 2) + 1).toNat

end

end A233678.P9698007124663094321

/-! ## A233678.P11271529282133402462

`A233682(A112355(n+1)+4)`
-/

namespace A233678.P11271529282133402462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A112355 (n + 1) + 4).toNat

end

end A233678.P11271529282133402462

/-!
# A233679: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 6.

The programs for A233679, there is no canonical definition to state claims against.
-/

/-! ## A233679.P16045415065206732229

`A233682(A374005(n+1))`
-/

namespace A233679.P16045415065206732229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A374005 (n + 1)).toNat

end

end A233679.P16045415065206732229

/-! ## A233679.P11221703606517604220

`A233682(A155212(n)+13)`
-/

namespace A233679.P11221703606517604220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A155212 n + 13).toNat

end

end A233679.P11221703606517604220

/-! ## A233679.P2131223048156862049

`A233682(A056000(n)+15)`
-/

namespace A233679.P2131223048156862049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A056000 n + 15).toNat

end

end A233679.P2131223048156862049

/-! ## A233679.P7854673013789448334

`A233682(eq[7, A066657(n)])`
-/

namespace A233679.P7854673013789448334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233679.P7854673013789448334

/-! ## A233679.P16067861412746067242

`A233682(A000217(n+4)+5)`
-/

namespace A233679.P16067861412746067242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A000217 (n + 4) + 5).toNat

end

end A233679.P16067861412746067242

/-!
# A233680: Number of (n+1) X (6+1) 0..3 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 6.

The programs for A233680, there is no canonical definition to state claims against.
-/

/-! ## A233680.P4165697502381711645

`A233682(A374007(n+1))`
-/

namespace A233680.P4165697502381711645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A374007 (n + 1)).toNat

end

end A233680.P4165697502381711645

/-! ## A233680.P12508033617467138982

`A233682(A167499(n+4)+1)`
-/

namespace A233680.P12508033617467138982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A167499 (n + 4) + 1).toNat

end

end A233680.P12508033617467138982

/-! ## A233680.P9094307073031672692

`A233682(eq[7, A131818(n+1)])`
-/

namespace A233680.P9094307073031672692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233680.P9094307073031672692

/-! ## A233680.P7477343278589602326

`A233682(A052905(n+3))`
-/

namespace A233680.P7477343278589602326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A052905 (n + 3)).toNat

end

end A233680.P7477343278589602326

/-! ## A233680.P4776523610217740798

`A233682(eq[3, A219347(n)])`
-/

namespace A233680.P4776523610217740798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233680.P4776523610217740798

/-!
# A233681: Number of (n+1)X(7+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 6.

The programs for A233681, there is no canonical definition to state claims against.
-/

/-! ## A233681.P3258723626219574428

`A233682(A374008(n+1))`
-/

namespace A233681.P3258723626219574428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A374008 (n + 1)).toNat

end

end A233681.P3258723626219574428

/-! ## A233681.P9690287622920087995

`A233682(eq[11, A066657(n)])`
-/

namespace A233681.P9690287622920087995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233681.P9690287622920087995

/-! ## A233681.P3629954155723848485

`A233682(A167499(n+5)+2)`
-/

namespace A233681.P3629954155723848485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (A167499 (n + 5) + 2).toNat

end

end A233681.P3629954155723848485

/-! ## A233681.P13553713492511017602

`A233682(eq[8, A131818(n+1)])`
-/

namespace A233681.P13553713492511017602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233681.P13553713492511017602

/-! ## A233681.P6710629738123206499

`A233682(eq[4, A219347(n)])`
-/

namespace A233681.P6710629738123206499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233681.P6710629738123206499

/-!
# A233683: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233683, there is no canonical definition to state claims against.
-/

/-! ## A233683.P10257313183728415767

`A233691(∑[4*n]+1)`
-/

namespace A233683.P10257313183728415767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233683.P10257313183728415767

/-! ## A233683.P14311868609597310373

`lcm(2, A233691(A001844(n)))`
-/

namespace A233683.P14311868609597310373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233691 (A001844 n).toNat)

end

end A233683.P14311868609597310373

/-! ## A233683.P17548760753570609797

`record[gcd(A114327(n), A233691(n+1))]`
-/

namespace A233683.P17548760753570609797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A233691 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233683.P17548760753570609797

/-! ## A233683.P1808188790127102037

`A007318(C(2, n))*A233691(A001844(n))`
-/

namespace A233683.P1808188790127102037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A233691 (A001844 n).toNat

end

end A233683.P1808188790127102037

/-! ## A233683.P11704664658058196121

`A000041(n²%(n+1))*A233691(A001844(n))`
-/

namespace A233683.P11704664658058196121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ 2 % (n + 1)) * A233691 (A001844 n).toNat

end

end A233683.P11704664658058196121

/-!
# A233684: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233684, the canonical program `A233684.P16555990374988774687` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233684 has offset 1).

The definition of A233684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233684.P16555990374988774687

`2*a(n-1)+5*a(n-2)-2*a(n-3)` with `a(0)=32, a(1)=108, a(2)=356`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233684

/-- `2*a(n-1)+5*a(n-2)-2*a(n-3)` -/
def P16555990374988774687.Spec : Prop :=
  ∀ n, P16555990374988774687.a n = A233684 (n + 1)

theorem P16555990374988774687.correct : P16555990374988774687.Spec := by
  intro n
  simp only [A233684, Nat.add_sub_cancel]

end A233684

/-! ## A233684.P13408830680749856947

`A384673(n+3)-A384673(n+1)`
-/

namespace A233684.P13408830680749856947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384673 (n + 3) - A384673 (n + 1)

end

end A233684.P13408830680749856947

namespace A233684

/-- `A384673(n+3)-A384673(n+1)` -/
def P13408830680749856947.Spec : Prop :=
  ∀ n, P13408830680749856947.a n = A233684 (n + 1)

end A233684

/-! ## A233684.P5129919629098588019

`A233691(∑[n]+1)`
-/

namespace A233684.P5129919629098588019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233684.P5129919629098588019

namespace A233684

/-- `A233691(∑[n]+1)` -/
def P5129919629098588019.Spec : Prop :=
  ∀ n, P5129919629098588019.a n = A233684 (n + 1)

end A233684

/-! ## A233684.P7155952381244809855

`lcm(2, A233691(A000124(n)))`
-/

namespace A233684.P7155952381244809855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233691 (A000124 n).toNat)

end

end A233684.P7155952381244809855

namespace A233684

/-- `lcm(2, A233691(A000124(n)))` -/
def P7155952381244809855.Spec : Prop :=
  ∀ n, (P7155952381244809855.a n : ℤ) = A233684 (n + 1)

end A233684

/-! ## A233684.P2395705415210367838

`record[root(A233691(n+1), A160449(n))]`
-/

namespace A233684.P2395705415210367838
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233691 (n + 1) : ℝ) ^ (1 / (A160449 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233684.P2395705415210367838

namespace A233684

/-- `record[root(A233691(n+1), A160449(n))]` -/
def P2395705415210367838.Spec : Prop :=
  ∀ n, P2395705415210367838.a n = (A233684 (n + 1) : ℝ)

end A233684

/-!
# A233685: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233685, there is no canonical definition to state claims against.
-/

/-! ## A233685.P2490589537032401830

`A233691(∑[n+1]+2)`
-/

namespace A233685.P2490589537032401830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233685.P2490589537032401830

/-! ## A233685.P16208783840012840821

`lcm(2, A233691(A000096(n+1)))`
-/

namespace A233685.P16208783840012840821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233691 (A000096 (n + 1)).toNat)

end

end A233685.P16208783840012840821

/-! ## A233685.P249012794341549536

`record[A233691(Δ[A003453(n+5)])]`
-/

namespace A233685.P249012794341549536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233685.P249012794341549536

/-! ## A233685.P4995715137685225377

`record[A233691(A000096(A028920(n)))]`
-/

namespace A233685.P4995715137685225377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233685.P4995715137685225377

/-! ## A233685.P1603051735738333658

`A028920(2*n)*A233691(A000096(n+1))`
-/

namespace A233685.P1603051735738333658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * n) * A233691 (A000096 (n + 1)).toNat

end

end A233685.P1603051735738333658

/-!
# A233686: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233686, there is no canonical definition to state claims against.
-/

/-! ## A233686.P12820718737454315175

`A233691(∑[n+2]+4)`
-/

namespace A233686.P12820718737454315175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233686.P12820718737454315175

/-! ## A233686.P17434736162546139009

`lcm(2, A233691(A167614(n+1)))`
-/

namespace A233686.P17434736162546139009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233691 (A167614 (n + 1)).toNat)

end

end A233686.P17434736162546139009

/-! ## A233686.P11074297476026655745

`A057077(n)²*A233691(A167614(n+1))`
-/

namespace A233686.P11074297476026655745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A233691 (A167614 (n + 1)).toNat

end

end A233686.P11074297476026655745

/-! ## A233686.P14849974973021238535

`A007318(C(2, n+2))*A233691(A167614(n+1))`
-/

namespace A233686.P14849974973021238535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A233691 (A167614 (n + 1)).toNat

end

end A233686.P14849974973021238535

/-! ## A233686.P12841876714435853489

`A007318(A152714(n))*A233691(A167614(n+1))`
-/

namespace A233686.P12841876714435853489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A152714 n).toNat * A233691 (A167614 (n + 1)).toNat

end

end A233686.P12841876714435853489

/-!
# A233687: Number of (n+1) X (4+1) 0..3 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233687, there is no canonical definition to state claims against.
-/

/-! ## A233687.P1459867398983998066

`A233691(A141214(n)+7)`
-/

namespace A233687.P1459867398983998066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A141214 n + 7).toNat

end

end A233687.P1459867398983998066

/-! ## A233687.P2523980863015784779

`A233691(A052905(n)+9)`
-/

namespace A233687.P2523980863015784779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A052905 n + 9).toNat

end

end A233687.P2523980863015784779

/-! ## A233687.P7173442393633405436

`A233691(A167614(n+2)+1)`
-/

namespace A233687.P7173442393633405436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A167614 (n + 2) + 1).toNat

end

end A233687.P7173442393633405436

/-! ## A233687.P216301923968684066

`A233691(A112355(n+1)+4)`
-/

namespace A233687.P216301923968684066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A112355 (n + 1) + 4).toNat

end

end A233687.P216301923968684066

/-! ## A233687.P7514544109855323254

`A233691(Δ[A264443(n)-n²])`
-/

namespace A233687.P7514544109855323254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (f1 (n + 1) - f1 n).toNat

end

end A233687.P7514544109855323254

/-!
# A233688: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233688, there is no canonical definition to state claims against.
-/

/-! ## A233688.P9473326145924600621

`A233691(A155212(n)+13)`
-/

namespace A233688.P9473326145924600621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A155212 n + 13).toNat

end

end A233688.P9473326145924600621

/-! ## A233688.P15079625113413173369

`A233691(A056000(n)+15)`
-/

namespace A233688.P15079625113413173369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A056000 n + 15).toNat

end

end A233688.P15079625113413173369

/-! ## A233688.P14318678500517003658

`A233691(eq[6, A131818(n+1)])`
-/

namespace A233688.P14318678500517003658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233688.P14318678500517003658

/-! ## A233688.P9501995489353229578

`A233691(Δ[A264443(n)])`
-/

namespace A233688.P9501995489353229578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (f1 (n + 1) - f1 n).toNat

end

end A233688.P9501995489353229578

/-! ## A233688.P9385831535631833233

`A233691(A374005(n+1))`
-/

namespace A233688.P9385831535631833233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A374005 (n + 1)).toNat

end

end A233688.P9385831535631833233

/-!
# A233689: Number of (n+1)X(6+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233689, there is no canonical definition to state claims against.
-/

/-! ## A233689.P279106280436482282

`A233691(eq[7, A131818(n+1)])`
-/

namespace A233689.P279106280436482282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233689.P279106280436482282

/-! ## A233689.P580840359084666909

`A233691(A374007(n+1))`
-/

namespace A233689.P580840359084666909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A374007 (n + 1)).toNat

end

end A233689.P580840359084666909

/-! ## A233689.P16349751941823957662

`A233691(eq[3, A219347(n)])`
-/

namespace A233689.P16349751941823957662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233689.P16349751941823957662

/-! ## A233689.P6220698091946957929

`A233691(eq[5, A193592(n)])`
-/

namespace A233689.P6220698091946957929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233689.P6220698091946957929

/-! ## A233689.P8975145269318389937

`A233691(eq[6, A200370(n+1)])`
-/

namespace A233689.P8975145269318389937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233689.P8975145269318389937

/-!
# A233690: Number of (n+1)X(7+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 10, and no two adjacent values equal.

The programs for A233690, there is no canonical definition to state claims against.
-/

/-! ## A233690.P1817010051851145620

`A233691(eq[8, A131818(n+1)])`
-/

namespace A233690.P1817010051851145620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233690.P1817010051851145620

/-! ## A233690.P11230773417203163287

`A233691(A374008(n+1))`
-/

namespace A233690.P11230773417203163287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (A374008 (n + 1)).toNat

end

end A233690.P11230773417203163287

/-! ## A233690.P12102359113678984315

`A233691(eq[4, A219347(n)])`
-/

namespace A233690.P12102359113678984315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233690.P12102359113678984315

/-! ## A233690.P15919778821637285978

`A233691(eq[6, A193592(n)])`
-/

namespace A233690.P15919778821637285978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233690.P15919778821637285978

/-! ## A233690.P7482438293827788484

`A233691(eq[7, A200370(n+1)])`
-/

namespace A233690.P7482438293827788484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233690.P7482438293827788484

/-!
# A233692: The smallest prime that produces a set of n primes such that every prime after the first one is equal to the previous plus the product of its nonzero digits.

The programs for A233692, there is no canonical definition to state claims against.
-/

/-! ## A233692.P9909116410683793408

`A156615(∑[char[∑[n]]]^3)`
-/

namespace A233692.P9909116410683793408
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156615 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3)

end

end A233692.P9909116410683793408

/-! ## A233692.P11570787664816509926

`A344161(∑[char[∑[n]]]!²)`
-/

namespace A233692.P11570787664816509926
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344161 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A233692.P11570787664816509926

/-!
# A233693: Expansion of q * psi(-q) * chi(-q^6) * psi(-q^9) / (phi(-q) * phi(-q^18)) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A233693, there is no canonical definition to state claims against.
-/

/-! ## A233693.P15538471325342139536

`A261154(n+1)`
-/

namespace A233693.P15538471325342139536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 (n + 1)

end

end A233693.P15538471325342139536

/-! ## A233693.P7385980575070763455

`A261156(n+1)/2`
-/

namespace A233693.P7385980575070763455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261156 (n + 1) : ℚ) / 2

end

end A233693.P7385980575070763455

/-! ## A233693.P5437457121870269536

`abs(A260215(n+1)/2)`
-/

namespace A233693.P5437457121870269536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A260215 (n + 1) : ℚ) / 2|

end

end A233693.P5437457121870269536

/-! ## A233693.P1617746504618733156

`A261154(n)-Δ[-A261154(n)]`
-/

namespace A233693.P1617746504618733156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A261154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 n - (f1 (n + 1) - f1 n)

end

end A233693.P1617746504618733156

/-! ## A233693.P10150493812286112895

`A260215(n+1)/A280560(n+1)`
-/

namespace A233693.P10150493812286112895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A233693.P10150493812286112895

/-! ## A233693.P13315817603580310590

`A033999(n+1)/2*A260215(n+1)`
-/

namespace A233693.P13315817603580310590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A260215 (n + 1) : ℚ)

end

end A233693.P13315817603580310590

/-! ## A233693.P1094721889630241288

`gcd(A000038(n+1), A260215(n+1))/2`
-/

namespace A233693.P1094721889630241288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A260215 (n + 1)) : ℚ) / 2

end

end A233693.P1094721889630241288

/-! ## A233693.P13775538682277235222

`lcm(A000034(n+1), A260215(n+1))/2`
-/

namespace A233693.P13775538682277235222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A260215 (n + 1)) : ℚ) / 2

end

end A233693.P13775538682277235222

/-! ## A233693.P1336184312115855067

`A273943(A261156(n+1))`
-/

namespace A233693.P1336184312115855067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A261156 (n + 1)).toNat

end

end A233693.P1336184312115855067

/-!
# A233694: Position of n in the sequence (or tree) S generated in order by these rules: 0 is in S; if x is in S then x + 1 is in S; if nonzero x is in S then 1/x is in S; if x is in S, then i*x is in S; where duplicates are deleted as they occur.

The programs for A233694, there is no canonical definition to state claims against.
-/

/-! ## A233694.P1004611834183166327

`A233696(comp[2*(n+2)]+1)`
-/

namespace A233694.P1004611834183166327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233696 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A233694.P1004611834183166327

/-! ## A233694.P16274509876809888651

`A131577(n)+A067086(A120588(n))`
-/

namespace A233694.P16274509876809888651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A067086 (A120588 n).toNat

end

end A233694.P16274509876809888651

/-! ## A233694.P1211022862704313978

`A168255(A134064(n))`
-/

namespace A233694.P1211022862704313978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A134064 n).toNat

end

end A233694.P1211022862704313978

/-! ## A233694.P6542512821215386577

`A168255(A150501(n))`
-/

namespace A233694.P6542512821215386577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A150501 n).toNat

end

end A233694.P6542512821215386577

/-!
# A233695: a(n) gives the position of -n in the sequence (or tree) S generated in order by these rules: 0 is in S; if x is in S then x + 1 is in S; if nonzero x is in S then 1/x is in S; if x is in S, then i*x is in S; where duplicates are deleted as they occur.

The programs for A233695, there is no canonical definition to state claims against.
-/

/-! ## A233695.P17606663131604666163

`A233696(2*n+5)`
-/

namespace A233695.P17606663131604666163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233696 (2 * n + 5)

end

end A233695.P17606663131604666163

/-! ## A233695.P14705095142097066165

`record[A233696(A300330(n+5))]`
-/

namespace A233695.P14705095142097066165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233696 (A300330 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233695.P14705095142097066165

/-! ## A233695.P9172146132560868619

`record[A233696(A005408(abs(2-n)))]`
-/

namespace A233695.P9172146132560868619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233696 (A005408 |2 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233695.P9172146132560868619

/-! ## A233695.P5671578516431094525

`A233696(A020735(n+1))+char[16]`
-/

namespace A233695.P5671578516431094525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233696 (A020735 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A233695.P5671578516431094525

/-! ## A233695.P1467923572866715485

`∩[A233696(n+1)+7, A233696(n+1)]`
-/

namespace A233695.P1467923572866715485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233696 (n + 1) + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233695.P1467923572866715485

/-!
# A233696: Positions of integers in the sequence (or tree) S generated in order by these rules: 0 is in S; if x is in S then x + 1 is in S; if nonzero x is in S then 1/x is in S; if x is in S, then i*x is in S; where duplicates are deleted as they occur.

The programs for A233696, there is no canonical definition to state claims against.
-/

/-! ## A233696.P9516391251473846825

`∪[A233695(n+1), A233694(n)]`
-/

namespace A233696.P9516391251473846825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233694 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233696.P9516391251473846825

/-!
# A233697: Duration in months between successive instances of a given Julian calendar day of the month falling on a specified day of the week.

The programs for A233697, there is no canonical definition to state claims against.
-/

/-! ## A233697.P1539962050141285146

`Δ[lt[5, A178054(n+1)]]`
-/

namespace A233697.P1539962050141285146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A233697.P1539962050141285146

/-!
# A233698: Expansion of b(q^2) * c(q^2) / (3 * b(q)^2) in powers of q where b(), c() are cubic AGM functions.

The programs for A233698, there is no canonical definition to state claims against.
-/

/-! ## A233698.P11344478050093515567

`(-1)^n*A164271(n)`
-/

namespace A233698.P11344478050093515567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A164271 n

end

end A233698.P11344478050093515567

/-! ## A233698.P14272641510631967087

`record[A261992(n)]`
-/

namespace A233698.P14272641510631967087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233698.P14272641510631967087

/-! ## A233698.P16785232809400032405

`A261992(3*n)`
-/

namespace A233698.P16785232809400032405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261992 (3 * n)

end

end A233698.P16785232809400032405

/-! ## A233698.P6591588039470705900

`A132977(Δ[n²])/2`
-/

namespace A233698.P6591588039470705900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132977 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A233698.P6591588039470705900

/-! ## A233698.P12825476166825339938

`4*A132977(2*n+1)/8`
-/

namespace A233698.P12825476166825339938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A132977 (2 * n + 1) : ℚ) / 8)

end

end A233698.P12825476166825339938

/-! ## A233698.P9250724189077419273

`A128129(A016777(n)+1)/2`
-/

namespace A233698.P9250724189077419273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128129 (A016777 n + 1).toNat : ℚ) / 2

end

end A233698.P9250724189077419273

/-! ## A233698.P3483570270924373705

`A261446(Δ[n²])/3`
-/

namespace A233698.P3483570270924373705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A233698.P3483570270924373705

/-! ## A233698.P6446796792653531621

`2*A261446(2*n+1)/6`
-/

namespace A233698.P6446796792653531621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A261446 (2 * n + 1) : ℚ) / 6)

end

end A233698.P6446796792653531621

/-! ## A233698.P9890395315022652957

`A261446(2*n+1)-A132977(2*n+1)`
-/

namespace A233698.P9890395315022652957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261446 (2 * n + 1) - A132977 (2 * n + 1)

end

end A233698.P9890395315022652957

/-! ## A233698.P12526640513014861748

`abs(A164271(n))`
-/

namespace A233698.P12526640513014861748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164271 n|

end

end A233698.P12526640513014861748

/-! ## A233698.P7473300104459718626

`gcd(A000038(n), A164271(n))`
-/

namespace A233698.P7473300104459718626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A164271 n)

end

end A233698.P7473300104459718626

/-! ## A233698.P7687482244653491406

`lcm(A000034(n), A164271(n))`
-/

namespace A233698.P7687482244653491406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A164271 n)

end

end A233698.P7687482244653491406

/-! ## A233698.P1426465976085680735

`abs(A258099(2*n+1)/2)`
-/

namespace A233698.P1426465976085680735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A258099 (2 * n + 1) : ℚ) / 2|

end

end A233698.P1426465976085680735

/-! ## A233698.P10139728028116855170

`A258099(2*n+1)/(A000038(n+1)-2)`
-/

namespace A233698.P10139728028116855170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258099 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A233698.P10139728028116855170

/-! ## A233698.P15856343058089499249

`lcm(A000034(n+1), A258099(2*n+1))/2`
-/

namespace A233698.P15856343058089499249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A258099 (2 * n + 1)) : ℚ) / 2

end

end A233698.P15856343058089499249

/-! ## A233698.P11784126704497825493

`gcd(A258099(2*n+1)/2, A000038(2*n))`
-/

namespace A233698.P11784126704497825493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A258099 (2 * n + 1) : ℚ) / 2)) (A000038 (2 * n))

end

end A233698.P11784126704497825493

/-! ## A233698.P3435995124545258866

`A258099(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A233698.P3435995124545258866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258099 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A233698.P3435995124545258866

/-! ## A233698.P4224917526348316919

`A258099(2*n+1)/A000034(2*n+1)-A258099(2*n+1)`
-/

namespace A233698.P4224917526348316919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258099 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A258099 (2 * n + 1) : ℚ)

end

end A233698.P4224917526348316919

/-! ## A233698.P8568243542742282914

`A261325(2*n+1)/(A033999(2*n+1)-2)`
-/

namespace A233698.P8568243542742282914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261325 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 2 : ℚ)

end

end A233698.P8568243542742282914

/-! ## A233698.P15740914900195845

`A261325(2*n+1)/A261325(A329900(2*n+1))`
-/

namespace A233698.P15740914900195845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261325 (2 * n + 1) : ℚ) / (A261325 (A329900 (2 * n + 1)).toNat : ℚ)

end

end A233698.P15740914900195845

/-!
# A233699: Ideal rectangle side length for packing squares with side 1/n.

The programs for A233699, there is no canonical definition to state claims against.
-/

/-! ## A233699.P8083939607384496075

`A164102(A028310(n)+1)`
-/

namespace A233699.P8083939607384496075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((A028310 n + 1).toNat + 2)

end

end A233699.P8083939607384496075

/-! ## A233699.P11884892091613205395

`A164102(A054977(n)+n)`
-/

namespace A233699.P11884892091613205395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((A054977 n + (n : ℤ)).toNat + 2)

end

end A233699.P11884892091613205395

/-! ## A233699.P3016703815221885778

`A164102(n+1)-A000038(n)`
-/

namespace A233699.P3016703815221885778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 (n + 1 + 2) - A000038 n

end

end A233699.P3016703815221885778

/-! ## A233699.P3147705008270934609

`A164102(A057428(n)+2+n)`
-/

namespace A233699.P3147705008270934609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((A057428 n + 2 + (n : ℤ)).toNat + 2)

end

end A233699.P3147705008270934609

/-! ## A233699.P8341178978571708900

`A164102(2-A057427(n)+n)`
-/

namespace A233699.P8341178978571708900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((2 - A057427 n + (n : ℤ)).toNat + 2)

end

end A233699.P8341178978571708900

/-! ## A233699.P14199704165470674977

`A164102(2-(A057427(n)-n))`
-/

namespace A233699.P14199704165470674977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((2 - (A057427 n - (n : ℤ))).toNat + 2)

end

end A233699.P14199704165470674977

/-! ## A233699.P10079848415707434765

`A164102(A051755(n+2)-(n+1))`
-/

namespace A233699.P10079848415707434765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((A051755 (n + 2) - (n + 1 : ℤ)).toNat + 2)

end

end A233699.P10079848415707434765

/-! ## A233699.P5662477666419679297

`A164102(A065033(n)+A008619(n))`
-/

namespace A233699.P5662477666419679297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((A065033 n + A008619 n).toNat + 2)

end

end A233699.P5662477666419679297

/-! ## A233699.P4357476725731094299

`A164102(A065033(n+1)+A065033(n))`
-/

namespace A233699.P4357476725731094299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((A065033 (n + 1) + A065033 n).toNat + 2)

end

end A233699.P4357476725731094299

/-! ## A233699.P12499930383748370687

`A164102(A008619(2*n)*A054977(n))`
-/

namespace A233699.P12499930383748370687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((A008619 (2 * n) * A054977 n).toNat + 2)

end

end A233699.P12499930383748370687

/-! ## A233699.P6005167142051195382

`A164102(A065033(2*n)+1)`
-/

namespace A233699.P6005167142051195382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164102 ((A065033 (2 * n) + 1).toNat + 2)

end

end A233699.P6005167142051195382

