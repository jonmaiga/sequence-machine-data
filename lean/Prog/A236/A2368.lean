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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A236800: Number T(n,k) of equivalence classes of ways of placing k 5 X 5 tiles in an n X n square under all symmetry operations of the square; irregular triangle T(n,k), n>=5, 0<=k<=floor(n/5)^2, read by rows.

The programs for A236800, there is no canonical definition to state claims against.
-/

/-! ## A236800.P10403388799880062080

`A003945(A219146(n+1)%A137735(n))`
-/

namespace A236800.P10403388799880062080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (Int.tmod (A219146 (n + 1)) (A137735 n)).toNat

end

end A236800.P10403388799880062080

/-! ## A236800.P15911721911567658829

`A296120(A349382(n+1)+A073254(3*n+4))`
-/

namespace A236800.P15911721911567658829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (A349382 (n + 1) + A073254 (3 * n + 4)).toNat

end

end A236800.P15911721911567658829

/-!
# A236801: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2 X 2 subblock equal.

The programs for A236801, there is no canonical definition to state claims against.
-/

/-! ## A236801.P16507618257844438453

`A236809((n+1)²+n²)`
-/

namespace A236801.P16507618257844438453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 ((n + 1) ^ 2 + n ^ 2)

end

end A236801.P16507618257844438453

/-!
# A236802: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2 X 2 subblock equal.

The programs for A236802, there is no canonical definition to state claims against.
-/

/-! ## A236802.P14107509334407272581

`A236809(∑[n]+1)`
-/

namespace A236802.P14107509334407272581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236802.P14107509334407272581

/-! ## A236802.P11334136541635982494

`or(1, A236809(A000124(n)))`
-/

namespace A236802.P11334136541635982494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236809 (A000124 n).toNat)

end

end A236802.P11334136541635982494

/-! ## A236802.P3855943805597220965

`record[A010054(n)*A236809(n+1)]`
-/

namespace A236802.P3855943805597220965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236802.P3855943805597220965

/-! ## A236802.P4151747706141473807

`record[gcd(A002262(n), A236809(n+1))]`
-/

namespace A236802.P4151747706141473807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236809 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236802.P4151747706141473807

/-! ## A236802.P455448747426792013

`record[A236809(n+1)/A305954(n+1)]`
-/

namespace A236802.P455448747426792013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236809 (n + 1) : ℚ) / (A305954 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236802.P455448747426792013

/-!
# A236803: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236803, there is no canonical definition to state claims against.
-/

/-! ## A236803.P3465935760502905536

`A236809(∑[n+1]+2)`
-/

namespace A236803.P3465935760502905536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236803.P3465935760502905536

/-! ## A236803.P4501513530926230619

`record[A236809(A286235(n+1)+1)]`
-/

namespace A236803.P4501513530926230619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236803.P4501513530926230619

/-! ## A236803.P15164040458230706679

`record[A010054(n)*A236809(n+2)]`
-/

namespace A236803.P15164040458230706679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236809 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236803.P15164040458230706679

/-! ## A236803.P2315297115414942090

`record[gcd(A002262(n), A236809(n+2))]`
-/

namespace A236803.P2315297115414942090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236809 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236803.P2315297115414942090

/-! ## A236803.P12116360845645102467

`record[root(A236809(n+3), A008275(n+1))]`
-/

namespace A236803.P12116360845645102467
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236809 (n + 3) : ℝ) ^ (1 / (A008275 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236803.P12116360845645102467

/-!
# A236804: Number of (n+1) X (3+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2 X 2 subblock equal.

The programs for A236804, there is no canonical definition to state claims against.
-/

/-! ## A236804.P12854797003720725273

`A236809(∑[n+2]+4)`
-/

namespace A236804.P12854797003720725273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236804.P12854797003720725273

/-! ## A236804.P5927981563370794665

`or(1, A236809(A167614(n+1)))`
-/

namespace A236804.P5927981563370794665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236809 (A167614 (n + 1)).toNat)

end

end A236804.P5927981563370794665

/-! ## A236804.P14287394357170085067

`A236809(A167614(n+1))+A025469(n)`
-/

namespace A236804.P14287394357170085067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A167614 (n + 1)).toNat + A025469 n

end

end A236804.P14287394357170085067

/-! ## A236804.P14755054127223879346

`lcm(A033999(n), A236809(A167614(n+1)))`
-/

namespace A236804.P14755054127223879346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A236809 (A167614 (n + 1)).toNat)

end

end A236804.P14755054127223879346

/-! ## A236804.P16536629332833081764

`A062513(n+1)*A236809(A167614(n+1))`
-/

namespace A236804.P16536629332833081764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A236809 (A167614 (n + 1)).toNat

end

end A236804.P16536629332833081764

/-!
# A236805: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236805, there is no canonical definition to state claims against.
-/

/-! ## A236805.P18213512694890290127

`A236809(A374004(n+1))`
-/

namespace A236805.P18213512694890290127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A374004 (n + 1)).toNat

end

end A236805.P18213512694890290127

/-! ## A236805.P6635122191939165506

`A236809(A141214(n)+7)`
-/

namespace A236805.P6635122191939165506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A141214 n + 7).toNat

end

end A236805.P6635122191939165506

/-! ## A236805.P2329334959441353590

`A236809(A052905(n)+9)`
-/

namespace A236805.P2329334959441353590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A052905 n + 9).toNat

end

end A236805.P2329334959441353590

/-! ## A236805.P17612625537908584408

`A236809(A055999(n)+10)`
-/

namespace A236805.P17612625537908584408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A055999 n + 10).toNat

end

end A236805.P17612625537908584408

/-! ## A236805.P5190222384705816706

`A236809(A167614(n+2)+1)`
-/

namespace A236805.P5190222384705816706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A167614 (n + 2) + 1).toNat

end

end A236805.P5190222384705816706

/-!
# A236806: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236806, there is no canonical definition to state claims against.
-/

/-! ## A236806.P8677521056307055765

`A236809(A374005(n+1))`
-/

namespace A236806.P8677521056307055765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A374005 (n + 1)).toNat

end

end A236806.P8677521056307055765

/-! ## A236806.P954841768255424922

`A236809(A056000(n)+15)`
-/

namespace A236806.P954841768255424922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A056000 n + 15).toNat

end

end A236806.P954841768255424922

/-! ## A236806.P12920807084250956936

`A236809(eq[6, A131818(n+1)])`
-/

namespace A236806.P12920807084250956936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236806.P12920807084250956936

/-! ## A236806.P17053244349829398159

`A236809(Δ[A264443(n)])`
-/

namespace A236806.P17053244349829398159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (f1 (n + 1) - f1 n).toNat

end

end A236806.P17053244349829398159

/-! ## A236806.P14254209878945614269

`A236809(A046691(n+3))`
-/

namespace A236806.P14254209878945614269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A046691 (n + 3)).toNat

end

end A236806.P14254209878945614269

/-!
# A236807: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236807, there is no canonical definition to state claims against.
-/

/-! ## A236807.P12411847789743952414

`A236809(A374007(n+1))`
-/

namespace A236807.P12411847789743952414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A374007 (n + 1)).toNat

end

end A236807.P12411847789743952414

/-! ## A236807.P193720468439626192

`A236809(eq[7, A131818(n+1)])`
-/

namespace A236807.P193720468439626192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236807.P193720468439626192

/-! ## A236807.P4500556552776919747

`A236809(A000124(n+6)-(n+1))`
-/

namespace A236807.P4500556552776919747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A236807.P4500556552776919747

/-! ## A236807.P17336403573757564604

`A236809(A000096(n+5)-n-cos(-π))`
-/

namespace A236807.P17336403573757564604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (SequenceMachineLib.roundAway ((A000096 (n + 5) - (n : ℤ) : ℝ) - Real.cos (-Real.pi))).toNat

end

end A236807.P17336403573757564604

/-! ## A236807.P261140330322761433

`A236809(A052905(n+3))`
-/

namespace A236807.P261140330322761433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A052905 (n + 3)).toNat

end

end A236807.P261140330322761433

/-!
# A236808: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236808, there is no canonical definition to state claims against.
-/

/-! ## A236808.P6417816534160261285

`A236809(A374008(n+1))`
-/

namespace A236808.P6417816534160261285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A374008 (n + 1)).toNat

end

end A236808.P6417816534160261285

/-! ## A236808.P9346113543475947497

`A236809(eq[8, A131818(n+1)])`
-/

namespace A236808.P9346113543475947497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236808.P9346113543475947497

/-! ## A236808.P16458795679334819051

`A236809(A055999(n+4))`
-/

namespace A236808.P16458795679334819051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A055999 (n + 4)).toNat

end

end A236808.P16458795679334819051

/-! ## A236808.P783794021716494772

`A236809(A000124(n+6)+n)`
-/

namespace A236808.P783794021716494772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A236808.P783794021716494772

/-!
# A236810: Number of solutions to Sum_{k=1..n} k*c(k) = n! , c(k) >= 0.

The programs for A236810, there is no canonical definition to state claims against.
-/

/-! ## A236810.P10540471522346592729

`record[gcd(n², A080068(n))]`
-/

namespace A236810.P10540471522346592729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A080068 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236810.P10540471522346592729

/-!
# A236811: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236811, there is no canonical definition to state claims against.
-/

/-! ## A236811.P4113387537188523838

`A236819((n+1)²+n²)`
-/

namespace A236811.P4113387537188523838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 ((n + 1) ^ 2 + n ^ 2)

end

end A236811.P4113387537188523838

/-!
# A236812: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236812, there is no canonical definition to state claims against.
-/

/-! ## A236812.P4388408766024728907

`A236819(∑[n]+1)`
-/

namespace A236812.P4388408766024728907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236812.P4388408766024728907

/-! ## A236812.P4238653706492941680

`record[root(A236819(n+1), A176286(n))]`
-/

namespace A236812.P4238653706492941680
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236819 (n + 1) : ℝ) ^ (1 / (A176286 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236812.P4238653706492941680

/-! ## A236812.P2280990658559916056

`record[gcd(A002262(n), A236819(n+1))]`
-/

namespace A236812.P2280990658559916056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236819 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236812.P2280990658559916056

/-! ## A236812.P16042589379009687382

`record[A236819(n+1)/A305954(n+1)]`
-/

namespace A236812.P16042589379009687382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236819 (n + 1) : ℚ) / (A305954 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236812.P16042589379009687382

/-! ## A236812.P4131334935611263040

`record[A167374(n)*A236819(n+1)]`
-/

namespace A236812.P4131334935611263040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A236819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236812.P4131334935611263040

/-!
# A236813: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236813, there is no canonical definition to state claims against.
-/

/-! ## A236813.P9774650419827165340

`A236819(∑[n+1]+2)`
-/

namespace A236813.P9774650419827165340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236813.P9774650419827165340

/-! ## A236813.P7406999093861288544

`record[gcd(A002262(n), A236819(n+2))]`
-/

namespace A236813.P7406999093861288544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236819 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236813.P7406999093861288544

/-! ## A236813.P4619966513451771350

`A236819(A133263(n+1))*A236861(n)`
-/

namespace A236813.P4619966513451771350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A133263 (n + 1)).toNat * A236861 n

end

end A236813.P4619966513451771350

/-! ## A236813.P6011115834939111464

`A236819(A133263(n+1))*A269301(n)`
-/

namespace A236813.P6011115834939111464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A133263 (n + 1)).toNat * A269301 n

end

end A236813.P6011115834939111464

/-! ## A236813.P15499033384769743953

`or(A151878(n), A236819(A133263(n+1)))`
-/

namespace A236813.P15499033384769743953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 n) (A236819 (A133263 (n + 1)).toNat)

end

end A236813.P15499033384769743953

/-!
# A236814: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236814, there is no canonical definition to state claims against.
-/

/-! ## A236814.P11830364283216888587

`A236819(∑[n+2]+4)`
-/

namespace A236814.P11830364283216888587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236814.P11830364283216888587

/-! ## A236814.P12421392238016898374

`lcm(A165326(n), A236819(A167614(n+1)))`
-/

namespace A236814.P12421392238016898374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A236819 (A167614 (n + 1)).toNat)

end

end A236814.P12421392238016898374

/-! ## A236814.P6385819435496159797

`A236819(A167614(n+1))%A236815(n+1)`
-/

namespace A236814.P6385819435496159797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236819 (A167614 (n + 1)).toNat) (A236815 (n + 1))

end

end A236814.P6385819435496159797

/-! ## A236814.P8857061168357878807

`A014963(A038255(n))*A236819(A167614(n+1))`
-/

namespace A236814.P8857061168357878807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A038255 n).toNat * A236819 (A167614 (n + 1)).toNat

end

end A236814.P8857061168357878807

/-! ## A236814.P3391910253447517958

`A000041(A151878(n))*A236819(A167614(n+1))`
-/

namespace A236814.P3391910253447517958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A151878 n).toNat * A236819 (A167614 (n + 1)).toNat

end

end A236814.P3391910253447517958

/-!
# A236815: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236815, there is no canonical definition to state claims against.
-/

/-! ## A236815.P16628814505393282732

`A236819(A374004(n+1))`
-/

namespace A236815.P16628814505393282732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A374004 (n + 1)).toNat

end

end A236815.P16628814505393282732

/-! ## A236815.P1816627692706267248

`A236819(A141214(n)+7)`
-/

namespace A236815.P1816627692706267248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A141214 n + 7).toNat

end

end A236815.P1816627692706267248

/-! ## A236815.P18227491379159584854

`A236819(A052905(n)+9)`
-/

namespace A236815.P18227491379159584854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A052905 n + 9).toNat

end

end A236815.P18227491379159584854

/-! ## A236815.P9651635981782489692

`A236819(A055999(n)+10)`
-/

namespace A236815.P9651635981782489692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A055999 n + 10).toNat

end

end A236815.P9651635981782489692

/-! ## A236815.P510457665828816119

`A236819(A167614(n+2)+1)`
-/

namespace A236815.P510457665828816119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A167614 (n + 2) + 1).toNat

end

end A236815.P510457665828816119

/-!
# A236816: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236816, there is no canonical definition to state claims against.
-/

/-! ## A236816.P5321340372775333653

`A236819(A374005(n+1))`
-/

namespace A236816.P5321340372775333653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A374005 (n + 1)).toNat

end

end A236816.P5321340372775333653

/-! ## A236816.P16441554430707608846

`A236819(A155212(n)+13)`
-/

namespace A236816.P16441554430707608846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A155212 n + 13).toNat

end

end A236816.P16441554430707608846

/-! ## A236816.P2023930169028635565

`A236819(A056000(n)+15)`
-/

namespace A236816.P2023930169028635565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A056000 n + 15).toNat

end

end A236816.P2023930169028635565

/-! ## A236816.P447913456891946617

`A236819(eq[6, A131818(n+1)])`
-/

namespace A236816.P447913456891946617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236816.P447913456891946617

/-! ## A236816.P18195728095461379610

`A236819(eq[2, A092921(n)])`
-/

namespace A236816.P18195728095461379610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236816.P18195728095461379610

/-!
# A236817: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236817, there is no canonical definition to state claims against.
-/

/-! ## A236817.P13499048018167615272

`A236819(A374007(n+1))`
-/

namespace A236817.P13499048018167615272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A374007 (n + 1)).toNat

end

end A236817.P13499048018167615272

/-! ## A236817.P8606558093310369870

`A236819(eq[7, A131818(n+1)])`
-/

namespace A236817.P8606558093310369870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236817.P8606558093310369870

/-! ## A236817.P17511814966766721758

`A236819(A000124(n+6)-(n+1))`
-/

namespace A236817.P17511814966766721758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A236817.P17511814966766721758

/-! ## A236817.P16656595675344370029

`A236819(eq[3, A219347(n)])`
-/

namespace A236817.P16656595675344370029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236817.P16656595675344370029

/-! ## A236817.P5298588588107037350

`A236819(eq[5, A193592(n)])`
-/

namespace A236817.P5298588588107037350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236817.P5298588588107037350

/-!
# A236818: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236818, there is no canonical definition to state claims against.
-/

/-! ## A236818.P17283256408094602509

`A236819(A374008(n+1))`
-/

namespace A236818.P17283256408094602509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A374008 (n + 1)).toNat

end

end A236818.P17283256408094602509

/-! ## A236818.P18016747744189808578

`A236819(eq[8, A131818(n+1)])`
-/

namespace A236818.P18016747744189808578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236818.P18016747744189808578

/-! ## A236818.P191539333596191192

`A236819(eq[4, A219347(n)])`
-/

namespace A236818.P191539333596191192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236818.P191539333596191192

/-! ## A236818.P14134566002946823300

`A236819(eq[10, A185782(n+1)])`
-/

namespace A236818.P14134566002946823300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236818.P14134566002946823300

/-! ## A236818.P7328333814800757011

`A236819(A000124(n+6)+n)`
-/

namespace A236818.P7328333814800757011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A236818.P7328333814800757011

/-!
# A236820: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A236820, there is no canonical definition to state claims against.
-/

/-! ## A236820.P8000661128488438406

`A236828((n+1)²+n²)`
-/

namespace A236820.P8000661128488438406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 ((n + 1) ^ 2 + n ^ 2)

end

end A236820.P8000661128488438406

/-!
# A236821: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A236821, there is no canonical definition to state claims against.
-/

/-! ## A236821.P5328000409577949372

`A236828(∑[n]+1)`
-/

namespace A236821.P5328000409577949372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236821.P5328000409577949372

/-! ## A236821.P11978889673479129039

`record[A236828(n+1)/A156653(n)]`
-/

namespace A236821.P11978889673479129039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236828 (n + 1) : ℚ) / (A156653 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236821.P11978889673479129039

/-! ## A236821.P2256928203908859112

`record[gcd(A236828(n+1), A322699(n))]`
-/

namespace A236821.P2256928203908859112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236828 (n + 1)) (A322699 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236821.P2256928203908859112

/-! ## A236821.P585819961736314494

`record[A236828(n+1)/A305954(n+1)]`
-/

namespace A236821.P585819961736314494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236828 (n + 1) : ℚ) / (A305954 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236821.P585819961736314494

/-! ## A236821.P15411193550686277850

`record[A167374(n)*A236828(n+1)]`
-/

namespace A236821.P15411193550686277850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A236828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236821.P15411193550686277850

/-!
# A236822: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A236822, there is no canonical definition to state claims against.
-/

/-! ## A236822.P10874976411615769272

`A236828(∑[n+1]+2)`
-/

namespace A236822.P10874976411615769272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236822.P10874976411615769272

/-! ## A236822.P13801034129900194364

`record[root(A236828(n+2), A156653(n))]`
-/

namespace A236822.P13801034129900194364
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236828 (n + 2) : ℝ) ^ (1 / (A156653 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236822.P13801034129900194364

/-! ## A236822.P14559412962118216395

`A236828(A133263(n+1))*A236861(n)`
-/

namespace A236822.P14559412962118216395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A133263 (n + 1)).toNat * A236861 n

end

end A236822.P14559412962118216395

/-! ## A236822.P3108692367657254151

`A236828(A133263(n+1))*A269301(n)`
-/

namespace A236822.P3108692367657254151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A133263 (n + 1)).toNat * A269301 n

end

end A236822.P3108692367657254151

/-! ## A236822.P8872283564030539149

`A236828(A133263(n+1))+A151878(n+1)`
-/

namespace A236822.P8872283564030539149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A133263 (n + 1)).toNat + A151878 (n + 1)

end

end A236822.P8872283564030539149

/-!
# A236823: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A236823, there is no canonical definition to state claims against.
-/

/-! ## A236823.P1829160777301613709

`A236828(∑[n+2]+4)`
-/

namespace A236823.P1829160777301613709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236823.P1829160777301613709

/-! ## A236823.P4739301374790898717

`A236828(A167614(n+1))+A014083(n)`
-/

namespace A236823.P4739301374790898717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A167614 (n + 1)).toNat + A014083 n

end

end A236823.P4739301374790898717

/-! ## A236823.P5239968635305452605

`A236828(A167614(n+1))+A025438(n)`
-/

namespace A236823.P5239968635305452605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A167614 (n + 1)).toNat + A025438 n

end

end A236823.P5239968635305452605

/-! ## A236823.P558774393981399207

`A236828(A167614(n+1))+A025439(n)`
-/

namespace A236823.P558774393981399207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A167614 (n + 1)).toNat + A025439 n

end

end A236823.P558774393981399207

/-! ## A236823.P5192841836551321353

`A236828(A167614(n+1))+A185284(n)`
-/

namespace A236823.P5192841836551321353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A167614 (n + 1)).toNat + A185284 n

end

end A236823.P5192841836551321353

/-!
# A236824: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A236824, there is no canonical definition to state claims against.
-/

/-! ## A236824.P7192804267755397165

`A236828(A374004(n+1))`
-/

namespace A236824.P7192804267755397165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A374004 (n + 1)).toNat

end

end A236824.P7192804267755397165

/-! ## A236824.P11032906530675302142

`A236828(A141214(n)+7)`
-/

namespace A236824.P11032906530675302142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A141214 n + 7).toNat

end

end A236824.P11032906530675302142

/-! ## A236824.P17788936809040669694

`A236828(A167614(n+2)+1)`
-/

namespace A236824.P17788936809040669694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A167614 (n + 2) + 1).toNat

end

end A236824.P17788936809040669694

/-! ## A236824.P11997836291194345337

`A236828(Δ[A023545(n+1)-n²])`
-/

namespace A236824.P11997836291194345337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (f1 (n + 1) - f1 n).toNat

end

end A236824.P11997836291194345337

/-! ## A236824.P11986575550730558741

`A236828(A155212(n)+5)`
-/

namespace A236824.P11986575550730558741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A155212 n + 5).toNat

end

end A236824.P11986575550730558741

/-!
# A236825: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A236825, there is no canonical definition to state claims against.
-/

/-! ## A236825.P1057860761344013766

`A236828(A374005(n+1))`
-/

namespace A236825.P1057860761344013766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A374005 (n + 1)).toNat

end

end A236825.P1057860761344013766

/-! ## A236825.P4559464680508038523

`A236828(eq[6, A131818(n+1)])`
-/

namespace A236825.P4559464680508038523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236825.P4559464680508038523

/-! ## A236825.P17472596873895830755

`A236828(eq[4, A193592(n)])`
-/

namespace A236825.P17472596873895830755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236825.P17472596873895830755

/-! ## A236825.P14406471624075192314

`A236828(Δ[A023545(n+1)])`
-/

namespace A236825.P14406471624075192314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (f1 (n + 1) - f1 n).toNat

end

end A236825.P14406471624075192314

/-! ## A236825.P16629600529227902015

`A236828(eq[6, A185782(n+1)])`
-/

namespace A236825.P16629600529227902015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236825.P16629600529227902015

/-!
# A236826: Number of (n+1) X (6+1) 0..2 arrays with the maximum plus the minimum minus the lower median of every 2 X 2 subblock equal.

The programs for A236826, there is no canonical definition to state claims against.
-/

/-! ## A236826.P9681947822458051802

`A236828(A374007(n+1))`
-/

namespace A236826.P9681947822458051802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A374007 (n + 1)).toNat

end

end A236826.P9681947822458051802

/-! ## A236826.P18245424964212162501

`A236828(eq[7, A131818(n+1)])`
-/

namespace A236826.P18245424964212162501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236826.P18245424964212162501

/-! ## A236826.P18393540348864688100

`A236828(A000124(n+6)-(n+1))`
-/

namespace A236826.P18393540348864688100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A236826.P18393540348864688100

/-! ## A236826.P13495938879842130765

`A236828(A052905(n+3))`
-/

namespace A236826.P13495938879842130765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A052905 (n + 3)).toNat

end

end A236826.P13495938879842130765

/-! ## A236826.P713586349799028689

`A236828(eq[3, A219347(n)])`
-/

namespace A236826.P713586349799028689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236826.P713586349799028689

/-!
# A236827: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A236827, there is no canonical definition to state claims against.
-/

/-! ## A236827.P8313497681609692406

`A236828(A374008(n+1))`
-/

namespace A236827.P8313497681609692406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A374008 (n + 1)).toNat

end

end A236827.P8313497681609692406

/-! ## A236827.P14751665027547711350

`A236828(eq[8, A131818(n+1)])`
-/

namespace A236827.P14751665027547711350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236827.P14751665027547711350

/-! ## A236827.P14631227796391296720

`A236828(eq[4, A219347(n)])`
-/

namespace A236827.P14631227796391296720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236827.P14631227796391296720

/-! ## A236827.P12989136275586498041

`A236828(eq[6, A193592(n)])`
-/

namespace A236827.P12989136275586498041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236827.P12989136275586498041

/-! ## A236827.P5876161266419205622

`A236828(eq[7, A200370(n+1)])`
-/

namespace A236827.P5876161266419205622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236827.P5876161266419205622

/-!
# A236829: Number T(n,k) of equivalence classes of ways of placing k 6 X 6 tiles in an n X n square under all symmetry operations of the square; irregular triangle T(n,k), n>=6, 0<=k<=floor(n/6)^2, read by rows.

The programs for A236829, there is no canonical definition to state claims against.
-/

/-! ## A236829.P12428275661038504006

`A236939(lcm(n, a(n-1)))` with `a(0)=1`
-/

namespace A236829.P12428275661038504006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236939 (Int.lcm (n : ℤ) (a (n - 1)) + 10)

end

end A236829.P12428275661038504006

/-! ## A236829.P5392604490517859747

`A236939(n)%p?[∏[gcd(2, n)]-1]`
-/

namespace A236829.P5392604490517859747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236939 (n + 10)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A236829.P5392604490517859747

/-! ## A236829.P15315214267367426682

`A236939(A055647(n))`
-/

namespace A236829.P15315214267367426682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 ((A055647 n).toNat + 10)

end

end A236829.P15315214267367426682

/-! ## A236829.P14555771003615924668

`A236939(A122202(∑[n]))`
-/

namespace A236829.P14555771003615924668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 ((A122202 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 10)

end

end A236829.P14555771003615924668

/-! ## A236829.P2651720546652953681

`A236939(A122203(∑[n]))`
-/

namespace A236829.P2651720546652953681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 ((A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 10)

end

end A236829.P2651720546652953681

/-!
# A236831: Number of ordered ways to write n = p + q with q > 0 such that p, p + 2 and p + prime(q) + 1 are all prime.

The programs for A236831, there is no canonical definition to state claims against.
-/

/-! ## A236831.P8936860398170375584

`A031286(A219063(record[gcd(n, 5^n-(2^n+3^n))]))`
-/

namespace A236831.P8936860398170375584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((5 ^ n : ℤ) - (2 ^ n + 3 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A219063 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A236831.P8936860398170375584

/-! ## A236831.P8406685639724970728

`A037830(A220272(2*(n+2))+A060945(n))`
-/

namespace A236831.P8406685639724970728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A220272 (2 * (n + 2)) + A060945 n).toNat

end

end A236831.P8406685639724970728

/-! ## A236831.P11288529979183938220

`A385149(n)%A276864(A177355(n+1))`
-/

namespace A236831.P11288529979183938220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385149 n) (A276864 (A177355 (n + 1)).toNat)

end

end A236831.P11288529979183938220

/-! ## A236831.P6052580032870897024

`A031286(A264397(n+4)%A349209(n))`
-/

namespace A236831.P6052580032870897024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (Int.tmod (A264397 (n + 4)) (A349209 (n + 21))).toNat

end

end A236831.P6052580032870897024

/-! ## A236831.P11489835588192405486

`A362983(and(A061712(n+3), A336142(n)))`
-/

namespace A236831.P11489835588192405486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362983 (Int.land (A061712 (n + 3)) (A336142 n)).toNat

end

end A236831.P11489835588192405486

/-!
# A236832: Number of ways to write 2*n - 1 = p + q + r (p <= q <= r) with p, q and r terms of A234695.

The programs for A236832, there is no canonical definition to state claims against.
-/

/-! ## A236832.P17852435782706481008

`A212178(∑[A102315(n)-A004396(n)])`
-/

namespace A236832.P17852435782706481008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102315 n - A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212178 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236832.P17852435782706481008

/-! ## A236832.P14475954016872667258

`A275806(A017655(n)%A293926(n))`
-/

namespace A236832.P14475954016872667258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (Int.tmod (A017655 n) (A293926 n)).toNat

end

end A236832.P14475954016872667258

/-! ## A236832.P10988995872783635454

`∑{p}[A114994(n)*A337419(3*n+1), A001222(#)]`
-/

namespace A236832.P10988995872783635454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n * A337419 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A236832.P10988995872783635454

/-!
# A236833: a(n) = number of times n occurs in A234741.

The programs for A236833, there is no canonical definition to state claims against.
-/

/-! ## A236833.P4494269776867066494

`A140218(A089852(A126760(n))²)`
-/

namespace A236833.P4494269776867066494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140218 (A089852 (A126760 n).toNat ^ 2).toNat

end

end A236833.P4494269776867066494

/-! ## A236833.P6542725392186978456

`A088432(A167800(A126759(n))²)`
-/

namespace A236833.P6542725392186978456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088432 (A167800 (A126759 n).toNat ^ 2).toNat

end

end A236833.P6542725392186978456

/-! ## A236833.P1370479333953612607

`gcd(A002033(A107853(n)), A005187(n))`
-/

namespace A236833.P1370479333953612607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002033 (A107853 n).toNat) (A005187 n)

end

end A236833.P1370479333953612607

/-! ## A236833.P15230961917289839017

`A010766(gcd(A250120(n), A262049(3*n+2)))`
-/

namespace A236833.P15230961917289839017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (Int.gcd (A250120 n) (A262049 (3 * n + 2)))

end

end A236833.P15230961917289839017

/-! ## A236833.P5246043340392180458

`A308662(gcd(A008472(2*n+5), A171188(n)))`
-/

namespace A236833.P5246043340392180458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308662 (Int.gcd (A008472 (2 * n + 5)) (A171188 n))

end

end A236833.P5246043340392180458

/-!
# A236834: Numbers that do not occur as results of "downward" remultiplication (N -> GF(2)[X]) of any number; numbers not present in A234741.

The programs for A236834, there is no canonical definition to state claims against.
-/

/-! ## A236834.P4616532605969505452

`comp[A236841(n+1)]`
-/

namespace A236834.P4616532605969505452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236834.P4616532605969505452

/-! ## A236834.P6609680369182961611

`eq[0, A236833(n)]`
-/

namespace A236834.P6609680369182961611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236834.P6609680369182961611

/-! ## A236834.P4003754827262597511

`eq[0, A236861(n)]`
-/

namespace A236834.P4003754827262597511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236834.P4003754827262597511

/-! ## A236834.P8732517695188067010

`lt[A236836(n), n]`
-/

namespace A236834.P8732517695188067010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A236834.P8732517695188067010

/-! ## A236834.P17655375688474088846

`lt[A236837(n), n]`
-/

namespace A236834.P17655375688474088846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A236834.P17655375688474088846

/-! ## A236834.P12897390154490886465

`eq[1, A236837(n+1)+1]+1`
-/

namespace A236834.P12897390154490886465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236834.P12897390154490886465

/-! ## A236834.P14001601260665264889

`eq[A000007(n), A236836(n)]`
-/

namespace A236834.P14001601260665264889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236834.P14001601260665264889

/-! ## A236834.P17678660602153344804

`eq[A000007(n), A236837(n)]`
-/

namespace A236834.P17678660602153344804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236834.P17678660602153344804

/-! ## A236834.P12071305561325901568

`eq[A000038(n), A236836(n)]`
-/

namespace A236834.P12071305561325901568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236834.P12071305561325901568

/-! ## A236834.P1100252223490632784

`eq[A000038(n), A236837(n)]`
-/

namespace A236834.P1100252223490632784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236834.P1100252223490632784

/-! ## A236834.P17143003730935749732

`eq[A003131(n), A236836(n)]`
-/

namespace A236834.P17143003730935749732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003131 (n + 54)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236834.P17143003730935749732

/-! ## A236834.P12969422793064400968

`eq[A003131(n), A236837(n)]`
-/

namespace A236834.P12969422793064400968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003131 (n + 54)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236834.P12969422793064400968

/-! ## A236834.P5207611489169992424

`eq[A130713(n), A236837(n)]`
-/

namespace A236834.P5207611489169992424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236834.P5207611489169992424

/-! ## A236834.P13708665612423537142

`eq[1, A003586(A236836(n+1)+1)]+1`
-/

namespace A236834.P13708665612423537142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A236836 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236834.P13708665612423537142

/-!
# A236835: Numbers that occur in more than one way as results of "downward" remultiplication (N -> GF(2)[X]) of some number.

The programs for A236835, there is no canonical definition to state claims against.
-/

/-! ## A236835.P8222396086311143684

`lt[1, A236833(n)]`
-/

namespace A236835.P8222396086311143684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236835.P8222396086311143684

/-! ## A236835.P4907142464668643225

`lt[A236836(n), A236837(n)]`
-/

namespace A236835.P4907142464668643225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236835.P4907142464668643225

/-! ## A236835.P4594703497478405374

`eq[1, A141044(A236833(n)²)]`
-/

namespace A236835.P4594703497478405374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A236833 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236835.P4594703497478405374

/-! ## A236835.P2665088661819559652

`eq[1, A236833(a(A236833(n)))]` with `a(0)=5, a(1)=5`
-/

namespace A236835.P2665088661819559652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A236833 (f2 (A236833 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236835.P2665088661819559652

/-! ## A236835.P14076319484899225760

`eq[A141044(A236833(n)), A235046(n)]`
-/

namespace A236835.P14076319484899225760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A236833 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236835.P14076319484899225760

/-! ## A236835.P16136457442329689774

`eq[A141044(A236833(n)), A236861(n)]`
-/

namespace A236835.P16136457442329689774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A236833 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236835.P16136457442329689774

/-! ## A236835.P550869511976015590

`eq[1, A141044(A236833(n))+A000007(n)]`
-/

namespace A236835.P550869511976015590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A236833 n).toNat + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236835.P550869511976015590

/-! ## A236835.P11165479196192347252

`eq[1, A141044(A236833(n)-A000007(n))]`
-/

namespace A236835.P11165479196192347252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A236833 n - A000007 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236835.P11165479196192347252

/-! ## A236835.P1750704793864977270

`eq[2, A141044(n)+A141044(A236833(n))]`
-/

namespace A236835.P1750704793864977270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n + A141044 (A236833 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236835.P1750704793864977270

/-! ## A236835.P18161801459174230483

`eq[A000034(2*n), A141044(A236833(n))]`
-/

namespace A236835.P18161801459174230483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A236833 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236835.P18161801459174230483

/-!
# A236837: The greatest inverse of A234741: a(n) = the largest k such that A234741(k) = n, and 0 if no such k exists.

The programs for A236837, there is no canonical definition to state claims against.
-/

/-! ## A236837.P15881408135935309606

`A234742(n*C(A236851(n), n))`
-/

namespace A236837.P15881408135935309606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (n * Nat.choose (A236851 n).toNat n)

end

end A236837.P15881408135935309606

/-! ## A236837.P16956739422660673692

`A235042(n*C(A236851(n), n))`
-/

namespace A236837.P16956739422660673692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (n * Nat.choose (A236851 n).toNat n)

end

end A236837.P16956739422660673692

/-! ## A236837.P77315922188591832

`A234742(C(A236851(n), abs(1-n)))`
-/

namespace A236837.P77315922188591832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (Nat.choose (A236851 n).toNat |1 - (n : ℤ)|.toNat)

end

end A236837.P77315922188591832

/-! ## A236837.P6157540607006161510

`A235042(C(A236851(n), abs(1-n)))`
-/

namespace A236837.P6157540607006161510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (Nat.choose (A236851 n).toNat |1 - (n : ℤ)|.toNat)

end

end A236837.P6157540607006161510

/-! ## A236837.P9898103594838039948

`A091703(A234742(n)%A235039(n))`
-/

namespace A236837.P9898103594838039948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (Int.tmod (A234742 n) (A235039 n)).toNat

end

end A236837.P9898103594838039948

/-!
# A236838: Numbers whose binary representation encodes a polynomial over GF(2) with the property that at least one of its irreducible factors is encoded by a composite number.

The programs for A236838, there is no canonical definition to state claims against.
-/

/-! ## A236838.P756389565791129358

`comp[A236850(n+1)]`
-/

namespace A236838.P756389565791129358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236838.P756389565791129358

/-! ## A236838.P13383186939140028024

`∪[A236834(n+1), A236839(n+1)]`
-/

namespace A236838.P13383186939140028024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236838.P13383186939140028024

/-! ## A236838.P122575474739527464

`lt[A235042(n), A234742(n)]`
-/

namespace A236838.P122575474739527464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236838.P122575474739527464

/-! ## A236838.P6602217536192740826

`lt[A236837(n), A234742(n)]`
-/

namespace A236838.P6602217536192740826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236838.P6602217536192740826

/-! ## A236838.P14040049822722482088

`lt[A235042(n), A236379(n)+n]`
-/

namespace A236838.P14040049822722482088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236838.P14040049822722482088

/-! ## A236838.P5068728595641398575

`lt[A236837(n), A236379(n)+n]`
-/

namespace A236838.P5068728595641398575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236838.P5068728595641398575

/-! ## A236838.P10892201954768318952

`lt[1, (A235042(n)-A236837(n))²]`
-/

namespace A236838.P10892201954768318952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A235042 n - A236837 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236838.P10892201954768318952

/-! ## A236838.P17950237487382571170

`lt[A235042(n), A005843(n)-(n-A236379(n))]`
-/

namespace A236838.P17950237487382571170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A236379 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236838.P17950237487382571170

/-!
# A236839: Numbers that occur as results of downward remultiplication (N -> GF(2)[X]) of some number and have at least one irreducible polynomial factor encoded by a composite number.

The programs for A236839, there is no canonical definition to state claims against.
-/

/-! ## A236839.P3882908101013154662

`∩[A236838(n+1), A236841(n+1)]`
-/

namespace A236839.P3882908101013154662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236839.P3882908101013154662

/-! ## A236839.P13008130845721725949

`filter[A236838(n+1), A236861(#)]`
-/

namespace A236839.P13008130845721725949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A236839.P13008130845721725949

/-! ## A236839.P8068856233295365433

`lt[A236837(n)², A234742(n)*A236837(n)]`
-/

namespace A236839.P8068856233295365433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n * A236837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236839.P8068856233295365433

/-! ## A236839.P2927714982994936341

`lt[A235042(n), A236852(A236836(n))]`
-/

namespace A236839.P2927714982994936341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 (A236836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236839.P2927714982994936341

/-! ## A236839.P9744685991987994983

`lt[A236837(n), A236852(A236836(n))]`
-/

namespace A236839.P9744685991987994983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 (A236836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236839.P9744685991987994983

/-!
# A236840: n minus number of runs in the binary expansion of n: a(n) = n - A005811(n).

The programs for A236840, the canonical program `A236840.P5330150570220508668` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236840 has offset 0).

The definition of A236840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236840.P11020656699811097521

`2*A255070(n)`
-/

namespace A236840.P11020656699811097521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255070 n

end

end A236840.P11020656699811097521

namespace A236840

/-- `2*A255070(n)` -/
def P11020656699811097521.Spec : Prop :=
  ∀ n, P11020656699811097521.a n = A236840 n

end A236840

/-! ## A236840.P5330150570220508668

`n-A005811(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A236840

/-- `n-A005811(n)` -/
def P5330150570220508668.Spec : Prop :=
  ∀ n, P5330150570220508668.a n = A236840 n

theorem P5330150570220508668.correct : P5330150570220508668.Spec := by
  intro n
  simp only [A236840]

end A236840

/-! ## A236840.P10640605945191519815

`n-A000120(A003188(n))`
-/

namespace A236840.P10640605945191519815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 (A003188 n).toNat

end

end A236840.P10640605945191519815

namespace A236840

/-- `n-A000120(A003188(n))` -/
def P10640605945191519815.Spec : Prop :=
  ∀ n, P10640605945191519815.a n = A236840 n

end A236840

/-! ## A236840.P3827449223421425656

`∑[2*char[comp[and(n, n-1)+n]]]`
-/

namespace A236840.P3827449223421425656
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P3827449223421425656

namespace A236840

/-- `∑[2*char[comp[and(n, n-1)+n]]]` -/
def P3827449223421425656.Spec : Prop :=
  ∀ n, (P3827449223421425656.a n : ℤ) = A236840 n

end A236840

/-! ## A236840.P13768062250709745863

`∑[1-Δ[xor(n, 2*n-1)]%2]`
-/

namespace A236840.P13768062250709745863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P13768062250709745863

namespace A236840

/-- `∑[1-Δ[xor(n, 2*n-1)]%2]` -/
def P13768062250709745863.Spec : Prop :=
  ∀ n, P13768062250709745863.a n = A236840 n

end A236840

/-! ## A236840.P1615326120849629667

`2*∑[char[or(n, n+1)+2+n]]`
-/

namespace A236840.P1615326120849629667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236840.P1615326120849629667

namespace A236840

/-- `2*∑[char[or(n, n+1)+2+n]]` -/
def P1615326120849629667.Spec : Prop :=
  ∀ n, (P1615326120849629667.a n : ℤ) = A236840 n

end A236840

/-! ## A236840.P751160914516123319

`∑[2*char[3*(n+1)-and(n, n+1)]]`
-/

namespace A236840.P751160914516123319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.land n (n + 1) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P751160914516123319

namespace A236840

/-- `∑[2*char[3*(n+1)-and(n, n+1)]]` -/
def P751160914516123319.Spec : Prop :=
  ∀ n, (P751160914516123319.a n : ℤ) = A236840 n

end A236840

/-! ## A236840.P14905072795150140048

`∑[1-A121238(n)]`
-/

namespace A236840.P14905072795150140048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A121238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P14905072795150140048

namespace A236840

/-- `∑[1-A121238(n)]` -/
def P14905072795150140048.Spec : Prop :=
  ∀ n, P14905072795150140048.a n = A236840 n

end A236840

/-! ## A236840.P15707323135421160710

`∑[2*A038189(n)]`
-/

namespace A236840.P15707323135421160710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P15707323135421160710

namespace A236840

/-- `∑[2*A038189(n)]` -/
def P15707323135421160710.Spec : Prop :=
  ∀ n, P15707323135421160710.a n = A236840 n

end A236840

/-! ## A236840.P13841000864389071754

`∑[and(2, A300867(n))]`
-/

namespace A236840.P13841000864389071754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A300867 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P13841000864389071754

namespace A236840

/-- `∑[and(2, A300867(n))]` -/
def P13841000864389071754.Spec : Prop :=
  ∀ n, P13841000864389071754.a n = A236840 n

end A236840

/-! ## A236840.P3392031307283603053

`n-∑[A112347(n)]`
-/

namespace A236840.P3392031307283603053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P3392031307283603053

namespace A236840

/-- `n-∑[A112347(n)]` -/
def P3392031307283603053.Spec : Prop :=
  ∀ n, P3392031307283603053.a n = A236840 n

end A236840

/-! ## A236840.P17315427841021233004

`1-A088748(n)+n`
-/

namespace A236840.P17315427841021233004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088748 n + (n : ℤ)

end

end A236840.P17315427841021233004

namespace A236840

/-- `1-A088748(n)+n` -/
def P17315427841021233004.Spec : Prop :=
  ∀ n, P17315427841021233004.a n = A236840 n

theorem P17315427841021233004.correct : P17315427841021233004.Spec := by
  intro n
  simp only [A236840, Nat.add_sub_cancel, A236840.P17315427841021233004.a, A236840.P5330150570220508668.a, A005811, A005811.P8696411420205566785.a, A088748, A088748.P405959534239069085.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236840

/-! ## A236840.P1859563665770078800

`4-A136004(n)+n`
-/

namespace A236840.P1859563665770078800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A136004 n + (n : ℤ)

end

end A236840.P1859563665770078800

namespace A236840

/-- `4-A136004(n)+n` -/
def P1859563665770078800.Spec : Prop :=
  ∀ n, P1859563665770078800.a n = A236840 n

theorem P1859563665770078800.correct : P1859563665770078800.Spec := by
  intro n
  simp only [A236840, Nat.add_sub_cancel, A236840.P1859563665770078800.a, A236840.P5330150570220508668.a, A005811, A005811.P8696411420205566785.a, A136004, A136004.P9778736345928845388.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236840

/-! ## A236840.P123360052690657895

`∑[1-∏[A121241(n)]]`
-/

namespace A236840.P123360052690657895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P123360052690657895

namespace A236840

/-- `∑[1-∏[A121241(n)]]` -/
def P123360052690657895.Spec : Prop :=
  ∀ n, P123360052690657895.a n = A236840 n

end A236840

/-! ## A236840.P544198349997841824

`n-∑{e}[A382255(n), #]`
-/

namespace A236840.P544198349997841824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A236840.P544198349997841824

namespace A236840

/-- `n-∑{e}[A382255(n), #]` -/
def P544198349997841824.Spec : Prop :=
  ∀ n, P544198349997841824.a n = A236840 n

end A236840

/-! ## A236840.P1283755423238435582

`∑[2%A125047(n+1)]`
-/

namespace A236840.P1283755423238435582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A125047 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P1283755423238435582

namespace A236840

/-- `∑[2%A125047(n+1)]` -/
def P1283755423238435582.Spec : Prop :=
  ∀ n, P1283755423238435582.a n = A236840 n

end A236840

/-! ## A236840.P8951281659663749015

`or(1, n)-A072219(n+1)`
-/

namespace A236840.P8951281659663749015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A072219 (n + 1)

end

end A236840.P8951281659663749015

namespace A236840

/-- `or(1, n)-A072219(n+1)` -/
def P8951281659663749015.Spec : Prop :=
  ∀ n, P8951281659663749015.a n = A236840 n

end A236840

/-! ## A236840.P4330224567129776955

`∑[2*char[A091067(n+1)]]`
-/

namespace A236840.P4330224567129776955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P4330224567129776955

namespace A236840

/-- `∑[2*char[A091067(n+1)]]` -/
def P4330224567129776955.Spec : Prop :=
  ∀ n, (P4330224567129776955.a n : ℤ) = A236840 n

end A236840

/-! ## A236840.P12846624234728315334

`∑[2*char[A269363(n+1)]]`
-/

namespace A236840.P12846624234728315334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269363 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P12846624234728315334

namespace A236840

/-- `∑[2*char[A269363(n+1)]]` -/
def P12846624234728315334.Spec : Prop :=
  ∀ n, (P12846624234728315334.a n : ℤ) = A236840 n

end A236840

/-! ## A236840.P3590701176851514994

`Δ[n²]-A088743(n+1)`
-/

namespace A236840.P3590701176851514994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A088743 (n + 1)

end

end A236840.P3590701176851514994

namespace A236840

/-- `Δ[n²]-A088743(n+1)` -/
def P3590701176851514994.Spec : Prop :=
  ∀ n, P3590701176851514994.a n = A236840 n

end A236840

/-!
# A236841: Numbers that occur as results of downward remultiplication (N -> GF(2)[X]) of some number; A234741 sorted and duplicates removed.

The programs for A236841, there is no canonical definition to state claims against.
-/

/-! ## A236841.P13687002657416960348

`lt[0, A236833(n)]`
-/

namespace A236841.P13687002657416960348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236841.P13687002657416960348

/-! ## A236841.P7665520801235907449

`lt[0, A236861(n)]`
-/

namespace A236841.P7665520801235907449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236841.P7665520801235907449

/-! ## A236841.P12299663000169957119

`lt[n, A236836(n)+1]`
-/

namespace A236841.P12299663000169957119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236841.P12299663000169957119

/-! ## A236841.P7504956253000407639

`lt[n, A236837(n)+1]`
-/

namespace A236841.P7504956253000407639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236841.P7504956253000407639

/-! ## A236841.P15389375016079996486

`lt[n, A016754(A236836(n))]`
-/

namespace A236841.P15389375016079996486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A236836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236841.P15389375016079996486

/-! ## A236841.P13832012017665872704

`eq[A130713(n), A130713(A236837(n))]`
-/

namespace A236841.P13832012017665872704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A236837 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236841.P13832012017665872704

/-! ## A236841.P6852722468254468974

`lt[A056239(A294316(n)), A144460(n+4)]`
-/

namespace A236841.P6852722468254468974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A294316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144460 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236841.P6852722468254468974

/-!
# A236842: Numbers that occur as results of remultiplication (GF(2)[X] -> N) of some number; A234742 sorted and duplicates removed.

The programs for A236842, there is no canonical definition to state claims against.
-/

/-! ## A236842.P3242460756403921860

`comp[A236844(n+1)]`
-/

namespace A236842.P3242460756403921860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236842.P3242460756403921860

/-! ## A236842.P11207506940220523467

`∪[A236849(n+1), A236860(n+1)]`
-/

namespace A236842.P11207506940220523467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236842.P11207506940220523467

/-! ## A236842.P1249805920757519102

`lt[0, A236853(n)]`
-/

namespace A236842.P1249805920757519102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236842.P1249805920757519102

/-! ## A236842.P12790951995033892483

`lt[0, A236862(n)]`
-/

namespace A236842.P12790951995033892483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236842.P12790951995033892483

/-! ## A236842.P17829026862908031836

`lt[n, (A236846(n)+1)²]`
-/

namespace A236842.P17829026862908031836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236846 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236842.P17829026862908031836

/-! ## A236842.P8144448758733889775

`lt[n, (A236847(n)+1)²]`
-/

namespace A236842.P8144448758733889775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236847 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236842.P8144448758733889775

/-! ## A236842.P5210021064715071262

`record[A234742(A236846(n))]`
-/

namespace A236842.P5210021064715071262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (A236846 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236842.P5210021064715071262

/-! ## A236842.P9532435890500380792

`eq[A000007(n), A000007(A236846(n))]`
-/

namespace A236842.P9532435890500380792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A236846 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236842.P9532435890500380792

/-! ## A236842.P8798606911418143616

`eq[A000007(n), A000007(A236847(n))]`
-/

namespace A236842.P8798606911418143616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A236847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236842.P8798606911418143616

/-! ## A236842.P17017265910558289164

`eq[A000038(n), A000038(A236846(n))]`
-/

namespace A236842.P17017265910558289164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A236846 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236842.P17017265910558289164

/-! ## A236842.P10293521827524322669

`eq[A000038(n), A000038(A236847(n))]`
-/

namespace A236842.P10293521827524322669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A236847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236842.P10293521827524322669

/-! ## A236842.P2483963910205762154

`eq[1, A236862(2*n)]`
-/

namespace A236842.P2483963910205762154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236842.P2483963910205762154

/-!
# A236844: Numbers that do not occur as results of "upward" remultiplication (GF(2)[X] -> N) of any number; numbers not present in A234742.

The programs for A236844, there is no canonical definition to state claims against.
-/

/-! ## A236844.P16539960788342021313

`comp[A236842(n+1)]`
-/

namespace A236844.P16539960788342021313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236844.P16539960788342021313

/-! ## A236844.P17341086748197533145

`eq[0, A236853(n)]`
-/

namespace A236844.P17341086748197533145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236844.P17341086748197533145

/-! ## A236844.P491854337739913011

`eq[0, A236862(n)]`
-/

namespace A236844.P491854337739913011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236844.P491854337739913011

/-! ## A236844.P18205911704077001436

`lt[A236846(n)², n]`
-/

namespace A236844.P18205911704077001436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A236844.P18205911704077001436

/-! ## A236844.P6754164743154014687

`lt[A236847(n)², n]`
-/

namespace A236844.P6754164743154014687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A236844.P6754164743154014687

/-! ## A236844.P13591263144008865696

`lt[A236846(n+1), 1]+1`
-/

namespace A236844.P13591263144008865696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A236844.P13591263144008865696

/-! ## A236844.P5953099451975929132

`lt[A236847(n+1), 1]+1`
-/

namespace A236844.P5953099451975929132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A236844.P5953099451975929132

/-! ## A236844.P10878629468864616649

`eq[A000007(n), A236846(n)]`
-/

namespace A236844.P10878629468864616649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236844.P10878629468864616649

/-! ## A236844.P5563088315583532635

`eq[A000007(n), A236847(n)]`
-/

namespace A236844.P5563088315583532635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236844.P5563088315583532635

/-! ## A236844.P9913016300468316600

`eq[A000038(n), A236846(n)]`
-/

namespace A236844.P9913016300468316600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236844.P9913016300468316600

/-! ## A236844.P15390838620867086762

`eq[A000038(n), A236847(n)]`
-/

namespace A236844.P15390838620867086762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236844.P15390838620867086762

/-! ## A236844.P1514275163019322531

`eq[1, A053698(A236847(n))%A053698(n)]`
-/

namespace A236844.P1514275163019322531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053698 (A236847 n).toNat) (A053698 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236844.P1514275163019322531

/-! ## A236844.P16760855138385809421

`eq[1, A212362(A236847(n))%A212362(n)]`
-/

namespace A236844.P16760855138385809421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212362 (A236847 n).toNat) (A212362 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236844.P16760855138385809421

/-! ## A236844.P6761350136360797184

`comp[A234742(n)]`
-/

namespace A236844.P6761350136360797184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236844.P6761350136360797184

/-! ## A236844.P4269691071807544245

`lt[n*A236846(2*n), n]`
-/

namespace A236844.P4269691071807544245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A236846 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A236844.P4269691071807544245

/-! ## A236844.P4875146307357398673

`lt[n*A236847(2*n), n]`
-/

namespace A236844.P4875146307357398673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A236847 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A236844.P4875146307357398673

/-! ## A236844.P2208387484191941855

`eq[A063667(n²), A236846(n)]`
-/

namespace A236844.P2208387484191941855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236844.P2208387484191941855

/-! ## A236844.P5841868885184398908

`eq[A063667(n²), A236847(n)]`
-/

namespace A236844.P5841868885184398908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236844.P5841868885184398908

/-!
# A236845: Numbers that occur in more than one way as results of "upward" remultiplication (GF(2)[X] -> N) of some number.

The programs for A236845, there is no canonical definition to state claims against.
-/

/-! ## A236845.P14713859321086091703

`lt[1, A236853(n)]`
-/

namespace A236845.P14713859321086091703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236845.P14713859321086091703

/-! ## A236845.P17402564794270871367

`lt[A236846(n), A236847(n)]`
-/

namespace A236845.P17402564794270871367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236845.P17402564794270871367

/-! ## A236845.P9541938828868330326

`eq[0, A318451(a(A236853(n)))]` with `a(0)=15, a(1)=3`
-/

namespace A236845.P9541938828868330326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [15, 3] fun n f2 =>
  A318451 (f2 (A236853 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236845.P9541938828868330326

/-! ## A236845.P15138500158405553406

`eq[2, A000005(a(A236853(n))+1)]` with `a(0)=0, a(1)=0`
-/

namespace A236845.P15138500158405553406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A000005 (f2 (A236853 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236845.P15138500158405553406

/-! ## A236845.P15224957986259767181

`eq[1, A287341(a(A236853(n))+1)]` with `a(0)=3, a(1)=3`
-/

namespace A236845.P15224957986259767181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A287341 (f2 (A236853 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236845.P15224957986259767181

/-!
# A236846: Least inverse of A234742: a(n) = minimal k such that when it is remultiplied "upwards", from GF(2)[X] to N, the result is n, and 0 if no such k exists.

The programs for A236846, there is no canonical definition to state claims against.
-/

/-! ## A236846.P14300023343673241454

`A236847(n)%A008574(A128333(2*n))`
-/

namespace A236846.P14300023343673241454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236847 n) (A008574 (A128333 (2 * n)).toNat)

end

end A236846.P14300023343673241454

/-! ## A236846.P17004948747721920238

`A236847(n)*A236862(n²)`
-/

namespace A236846.P17004948747721920238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n * A236862 (n ^ 2)

end

end A236846.P17004948747721920238

/-! ## A236846.P14930657926128287601

`A236847(n*exp(A151878(n)))`
-/

namespace A236846.P14930657926128287601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 (SequenceMachineLib.roundAway ((n : ℝ) * Real.exp (A151878 n : ℝ))).toNat

end

end A236846.P14930657926128287601

/-! ## A236846.P6968539116256875958

`A236847(n/exp(A151878(n)))`
-/

namespace A236846.P6968539116256875958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 (SequenceMachineLib.roundAway ((n : ℝ) / Real.exp (A151878 n : ℝ))).toNat

end

end A236846.P6968539116256875958

/-! ## A236846.P12312285850147878578

`A236847(n)^exp(A151878(n))`
-/

namespace A236846.P12312285850147878578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236847 n : ℝ) ^ (Real.exp (A151878 n : ℝ))

end

end A236846.P12312285850147878578

/-! ## A236846.P3574558043304632951

`A236847(n*A151878(n)!)`
-/

namespace A236846.P3574558043304632951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 (n * Nat.factorial (A151878 n).toNat)

end

end A236846.P3574558043304632951

/-! ## A236846.P13180141143937098337

`A236847(n/A151878(n)!)`
-/

namespace A236846.P13180141143937098337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.factorial (A151878 n).toNat : ℚ))).toNat

end

end A236846.P13180141143937098337

/-! ## A236846.P18214223633245899515

`A236847(n^A236853(n)!)`
-/

namespace A236846.P18214223633245899515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 (n ^ Nat.factorial (A236853 n).toNat)

end

end A236846.P18214223633245899515

/-! ## A236846.P10103702907902594986

`A151878(A151878(n)²)*A236847(n)`
-/

namespace A236846.P10103702907902594986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A151878 n ^ 2).toNat * A236847 n

end

end A236846.P10103702907902594986

/-! ## A236846.P9181646884882575715

`A151878(A151878(n)*A236847(n))*A236847(n)`
-/

namespace A236846.P9181646884882575715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A151878 n * A236847 n).toNat * A236847 n

end

end A236846.P9181646884882575715

/-!
# A236848: Numbers that have at least one prime divisor encoding a reducible polynomial in ring GF(2)[X]; multiples of terms of A091209.

The programs for A236848, there is no canonical definition to state claims against.
-/

/-! ## A236848.P9537182874611724440

`comp[A236860(n+1)]`
-/

namespace A236848.P9537182874611724440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236848.P9537182874611724440

/-! ## A236848.P3733949018125712313

`∪[A236844(n+1), A236849(n+1)]`
-/

namespace A236848.P3733949018125712313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236848.P3733949018125712313

/-! ## A236848.P18218104344866097180

`eq[char[A236860(n+1)], A000038(n)]`
-/

namespace A236848.P18218104344866097180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A236848.P18218104344866097180

/-! ## A236848.P1554154131090170631

`lt[n, A236852(n)]`
-/

namespace A236848.P1554154131090170631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236848.P1554154131090170631

/-! ## A236848.P10826707526009032525

`eq[n+1, (n+1)%A236852(n+1)]+1`
-/

namespace A236848.P10826707526009032525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A236852 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236848.P10826707526009032525

/-! ## A236848.P5523147653760547537

`eq[char[A236849(n+1)], A236862(n)]`
-/

namespace A236848.P5523147653760547537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A236848.P5523147653760547537

/-! ## A236848.P16853311489227406130

`lt[n, A091203(A235041(n))]`
-/

namespace A236848.P16853311489227406130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A235041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236848.P16853311489227406130

/-!
# A236849: Numbers that occur as results of remultiplication (GF(2)[X] -> N) of some number and have at least one prime divisor encoding a reducible polynomial in ring GF(2)[X].

The programs for A236849, there is no canonical definition to state claims against.
-/

/-! ## A236849.P5895820059242182378

`∩[A236842(n+1), A236848(n+1)]`
-/

namespace A236849.P5895820059242182378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236849.P5895820059242182378

/-! ## A236849.P8628674501668579171

`filter[A236848(n+1), A236862(#)]`
-/

namespace A236849.P8628674501668579171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236862 (f1 j).toNat = 1) n)

end

end A236849.P8628674501668579171

/-!
# A236850: After 0 and 1, numbers n whose binary representation encodes such a polynomial over GF(2) that all its irreducible factors (their binary codes) are primes in N (terms of A091206).

The programs for A236850, there is no canonical definition to state claims against.
-/

/-! ## A236850.P1989816829092588917

`comp[A236838(n+1)]`
-/

namespace A236850.P1989816829092588917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236850.P1989816829092588917

/-! ## A236850.P72922865720969147

`eq[n, A236851(n)]`
-/

namespace A236850.P72922865720969147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236850.P72922865720969147

/-! ## A236850.P1235947053513124420

`eq[A234742(n), A235042(n)]`
-/

namespace A236850.P1235947053513124420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236850.P1235947053513124420

/-! ## A236850.P3484414587800846655

`eq[A234742(n), A236837(n)]`
-/

namespace A236850.P3484414587800846655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236850.P3484414587800846655

/-! ## A236850.P377763317634148517

`eq[A235042(n), A236837(n)]`
-/

namespace A236850.P377763317634148517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236850.P377763317634148517

/-! ## A236850.P4977405254161112422

`record[A236851(n)%A000027(n+1)]`
-/

namespace A236850.P4977405254161112422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236851 n) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236850.P4977405254161112422

/-! ## A236850.P10296237966343567874

`eq[n, A235041(A005843(n)-(n-A236379(n)))]`
-/

namespace A236850.P10296237966343567874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235041 (A005843 n - ((n : ℤ) - A236379 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236850.P10296237966343567874

/-! ## A236850.P6566377839917921508

`lt[A191853(n+1), A299634(A235042(n))]`
-/

namespace A236850.P6566377839917921508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299634 (A235042 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236850.P6566377839917921508

/-! ## A236850.P6574646309547839382

`lt[A243833(2*(n+1)), A321229(A126988(n+1))]`
-/

namespace A236850.P6574646309547839382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243833 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321229 (A126988 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236850.P6574646309547839382

/-!
# A236851: Remultiply n first "upward", from GF(2)[X] to N, and then remultiply that result back "downward", from N to GF(2)[X]: a(n) = A234741(A234742(n)).

The programs for A236851, there is no canonical definition to state claims against.
-/

/-! ## A236851.P4884139489965269095

`A234742(n)-A236378(A234742(n))`
-/

namespace A236851.P4884139489965269095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n - A236378 (A234742 n).toNat

end

end A236851.P4884139489965269095

/-! ## A236851.P15466313492045840667

`n-A290995(A355536(2*n+3))`
-/

namespace A236851.P15466313492045840667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A290995 (A355536 (2 * n + 3)).toNat

end

end A236851.P15466313492045840667

/-! ## A236851.P9075683642765129240

`and(n, A359081(A006881(n+1)))`
-/

namespace A236851.P9075683642765129240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A359081 (A006881 (n + 1)).toNat)

end

end A236851.P9075683642765129240

/-! ## A236851.P16165428490300498559

`n-A234517(n+1)%A105154(3*(n+1))`
-/

namespace A236851.P16165428490300498559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A234517 (n + 1)) (A105154 (3 * (n + 1)))

end

end A236851.P16165428490300498559

/-! ## A236851.P1346997220208628211

`n+1-A052503(A261431(A261430(n)))`
-/

namespace A236851.P1346997220208628211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A052503 (A261431 (A261430 n).toNat).toNat

end

end A236851.P1346997220208628211

/-!
# A236852: Remultiply n first "downward", from N to GF(2)[X], and then remultiply that result back "upward", from GF(2)[X] to N: a(n) = A234742(A234741(n)).

The programs for A236852, there is no canonical definition to state claims against.
-/

/-! ## A236852.P5308538240657048044

`A234742(n-A236378(n))`
-/

namespace A236852.P5308538240657048044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 ((n : ℤ) - A236378 n).toNat

end

end A236852.P5308538240657048044

/-! ## A236852.P5308601673292634700

`A234742(A234742(n)-A236380(n))`
-/

namespace A236852.P5308601673292634700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (A234742 n - A236380 n).toNat

end

end A236852.P5308601673292634700

/-! ## A236852.P12109017512055863277

`A234742(-(A236378(n)+A001489(n)))`
-/

namespace A236852.P12109017512055863277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (-(A236378 n + A001489 n)).toNat

end

end A236852.P12109017512055863277

/-! ## A236852.P11595467804710086430

`A235042(A235042(n)%A046956(n)-A236380(n))`
-/

namespace A236852.P11595467804710086430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (Int.tmod (A235042 n) (A046956 n) - A236380 n).toNat

end

end A236852.P11595467804710086430

/-! ## A236852.P6970482033985359734

`A234742(n)%A077280(A008619(n))`
-/

namespace A236852.P6970482033985359734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234742 n) (A077280 (A008619 n).toNat)

end

end A236852.P6970482033985359734

/-!
# A236853: a(n) = Number of times n occurs in A234742.

The programs for A236853, there is no canonical definition to state claims against.
-/

/-! ## A236853.P14548342876490322225

`A121657(A130321(n))*A236862(n)`
-/

namespace A236853.P14548342876490322225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121657 (A130321 n).toNat * A236862 n

end

end A236853.P14548342876490322225

/-! ## A236853.P3626075049481746129

`A121657(A130321(n))+A236862(n)-A057427(n+2)`
-/

namespace A236853.P3626075049481746129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121657 (A130321 n).toNat + (A236862 n - A057427 (n + 2))

end

end A236853.P3626075049481746129

/-! ## A236853.P16778930132409754057

`A236862(A151878(n)+n)`
-/

namespace A236853.P16778930132409754057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 (A151878 n + (n : ℤ)).toNat

end

end A236853.P16778930132409754057

/-! ## A236853.P4541953581830871778

`A236862(n*A375001(n))`
-/

namespace A236853.P4541953581830871778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 ((n : ℤ) * A375001 n).toNat

end

end A236853.P4541953581830871778

/-! ## A236853.P7440660857693114543

`and(A236862(n), A269301(n))`
-/

namespace A236853.P7440660857693114543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A236862 n) (A269301 n)

end

end A236853.P7440660857693114543

/-! ## A236853.P12669035563813019774

`A236862(or(n, A151878(n)))`
-/

namespace A236853.P12669035563813019774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 (Int.lor (n : ℤ) (A151878 n)).toNat

end

end A236853.P12669035563813019774

/-! ## A236853.P17263634442339509264

`A236862(xor(n, A151878(n)))`
-/

namespace A236853.P17263634442339509264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 (Int.xor (n : ℤ) (A151878 n)).toNat

end

end A236853.P17263634442339509264

/-! ## A236853.P3128815804967217710

`and(Δ[A016268(n)], A236862(n))`
-/

namespace A236853.P3128815804967217710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A236862 n)

end

end A236853.P3128815804967217710

/-! ## A236853.P15043983962926506480

`A000108(A151878(n))*A236862(n)`
-/

namespace A236853.P15043983962926506480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A151878 n).toNat * A236862 n

end

end A236853.P15043983962926506480

/-! ## A236853.P16511557262088916519

`A236862(n)/A000108(A151878(n)²)`
-/

namespace A236853.P16511557262088916519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236862 n : ℚ) / (A000108 (A151878 n ^ 2).toNat : ℚ)

end

end A236853.P16511557262088916519

/-!
# A236854: Self-inverse permutation of natural numbers: a(1)=1, then a(p_n)=c_{a(n)}, a(c_n)=p_{a(n)}, where p_n = n-th prime, c_n = n-th composite.

The programs for A236854, there is no canonical definition to state claims against.
-/

/-! ## A236854.P13629584313722885886

`A246378(A135141(n+1))`
-/

namespace A236854.P13629584313722885886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A135141 (n + 1)).toNat

end

end A236854.P13629584313722885886

/-! ## A236854.P5433134412522586198

`A227413(A246377(n+1))`
-/

namespace A236854.P5433134412522586198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A246377 (n + 1)).toNat

end

end A236854.P5433134412522586198

/-! ## A236854.P4368176787642924282

`A245704(A246202(A245701(A245703(n+1))))`
-/

namespace A236854.P4368176787642924282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (A246202 (A245701 (A245703 (n + 1)).toNat).toNat).toNat

end

end A236854.P4368176787642924282

/-! ## A236854.P509012475275609440

`A255422(A236863(A235491(A003309(n+2))))`
-/

namespace A236854.P509012475275609440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255422 (A236863 (A235491 (A003309 (n + 2)).toNat).toNat).toNat

end

end A236854.P509012475275609440

/-! ## A236854.P2623940938591102518

`A237126(A237427(A227413(A237427(n+1))))`
-/

namespace A236854.P2623940938591102518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (A237427 (A227413 (A237427 (n + 1)).toNat).toNat).toNat

end

end A236854.P2623940938591102518

/-!
# A236855: a(n) is the sum of digits in A239903(n).

The programs for A236855, there is no canonical definition to state claims against.
-/

/-! ## A236855.P15508000026007401286

`A007953(A239903(n))`
-/

namespace A236855.P15508000026007401286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A239903 n).toNat

end

end A236855.P15508000026007401286

/-! ## A236855.P275447406466906462

`n-A237449(n)`
-/

namespace A236855.P275447406466906462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A237449 n

end

end A236855.P275447406466906462

/-! ## A236855.P7419225738885242367

`A171960(A237449(n)+A171960(n))`
-/

namespace A236855.P7419225738885242367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A237449 n + A171960 n).toNat

end

end A236855.P7419225738885242367

/-! ## A236855.P11059328892346455732

`A370292(A244216(n+1))`
-/

namespace A236855.P11059328892346455732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370292 (A244216 (n + 1)).toNat

end

end A236855.P11059328892346455732

/-! ## A236855.P7038439476734335699

`A001222(A000079(n)/A000079(A237449(n)))`
-/

namespace A236855.P7038439476734335699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000079 n : ℚ) / (A000079 (A237449 n).toNat : ℚ))).toNat

end

end A236855.P7038439476734335699

/-! ## A236855.P8541073795523968881

`A034968(2*A085188(n))`
-/

namespace A236855.P8541073795523968881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (2 * A085188 n).toNat

end

end A236855.P8541073795523968881

/-! ## A236855.P6598769490495153249

`A034968(A085188(n)+A085188(n))`
-/

namespace A236855.P6598769490495153249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A085188 n + A085188 n).toNat

end

end A236855.P6598769490495153249

/-!
# A236856: Partial sums of A003418 starting summing from A003418(1), with a(0) = 0.

The programs for A236856, the canonical program `A236856.P12242245037929288109` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236856 has offset 0).

The definition of A236856 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173185, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A236856.P12242245037929288109

`A173185(n)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A236856

/-- `A173185(n)-1` -/
def P12242245037929288109.Spec : Prop :=
  ∀ n, P12242245037929288109.a n = A236856 n

theorem P12242245037929288109.correct : P12242245037929288109.Spec := by
  intro n
  simp only [A236856]

end A236856

/-! ## A236856.P4472854318477991695

`∑[lcm(n, a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A236856.P4472854318477991695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lcm n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236856.P4472854318477991695

namespace A236856

/-- `∑[lcm(n, a(n-1))]` -/
def P4472854318477991695.Spec : Prop :=
  ∀ n, (P4472854318477991695.a n : ℤ) = A236856 n

end A236856

/-! ## A236856.P9611323844189054356

`∑[n*a(n-1)/gcd(n, a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A236856.P9611323844189054356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℚ) * (f1 (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236856.P9611323844189054356

namespace A236856

/-- `∑[n*a(n-1)/gcd(n, a(n-1))]` -/
def P9611323844189054356.Spec : Prop :=
  ∀ n, P9611323844189054356.a n = (A236856 n : ℚ)

end A236856

/-! ## A236856.P9958036760435433869

`∑[A003418(n)]-1`
-/

namespace A236856.P9958036760435433869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236856.P9958036760435433869

namespace A236856

/-- `∑[A003418(n)]-1` -/
def P9958036760435433869.Spec : Prop :=
  ∀ n, P9958036760435433869.a n = A236856 n

theorem P9958036760435433869.correct : P9958036760435433869.Spec := by
  intro n
  simp only [A236856, Nat.add_sub_cancel, A236856.P9958036760435433869.f1, A236856.P9958036760435433869.a, A236856.P12242245037929288109.a, A003418, A003418.P6976248655893080794.a, A173185, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236856

/-! ## A236856.P11893168644841542409

`∑[A075059(n)-1]-1`
-/

namespace A236856.P11893168644841542409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236856.P11893168644841542409

namespace A236856

/-- `∑[A075059(n)-1]-1` -/
def P11893168644841542409.Spec : Prop :=
  ∀ n, P11893168644841542409.a n = A236856 n

theorem P11893168644841542409.correct : P11893168644841542409.Spec := by
  intro n
  simp only [A236856, Nat.add_sub_cancel, A236856.P11893168644841542409.f1, A236856.P11893168644841542409.a, A236856.P12242245037929288109.a, A075059, A075059.P13005941669399506084.a, A173185, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, A003418, A003418.P6976248655893080794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236856

/-! ## A236856.P11966307346111897547

`∑[A139550(2*n)]-1`
-/

namespace A236856.P11966307346111897547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236856.P11966307346111897547

namespace A236856

/-- `∑[A139550(2*n)]-1` -/
def P11966307346111897547.Spec : Prop :=
  ∀ n, P11966307346111897547.a n = A236856 n

end A236856

/-! ## A236856.P15586039483576653933

`∑[∏[A014963(∏{p}[n, #])]]-1`
-/

namespace A236856.P15586039483576653933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236856.P15586039483576653933

namespace A236856

/-- `∑[∏[A014963(∏{p}[n, #])]]-1` -/
def P15586039483576653933.Spec : Prop :=
  ∀ n, P15586039483576653933.a n = A236856 n

end A236856

/-! ## A236856.P14967875575292215558

`∑[a(n-1)*A014963(n)]` with `a(0)=0, a(1)=1`
-/

namespace A236856.P14967875575292215558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) * A014963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236856.P14967875575292215558

namespace A236856

/-- `∑[a(n-1)*A014963(n)]` -/
def P14967875575292215558.Spec : Prop :=
  ∀ n, P14967875575292215558.a n = A236856 n

end A236856

/-! ## A236856.P10249777573633280281

`∑[A003418(n)%A173185(n)]`
-/

namespace A236856.P10249777573633280281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003418 n) (A173185 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236856.P10249777573633280281

namespace A236856

/-- `∑[A003418(n)%A173185(n)]` -/
def P10249777573633280281.Spec : Prop :=
  ∀ n, P10249777573633280281.a n = A236856 n

end A236856

/-! ## A236856.P7298969376967503917

`∑[∏[A014963(A028310(n))]]-1`
-/

namespace A236856.P7298969376967503917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236856.P7298969376967503917

namespace A236856

/-- `∑[∏[A014963(A028310(n))]]-1` -/
def P7298969376967503917.Spec : Prop :=
  ∀ n, P7298969376967503917.a n = A236856 n

end A236856

/-! ## A236856.P4643092546082446469

`∑[A056040(n)*A180000(n)]-1`
-/

namespace A236856.P4643092546082446469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A180000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236856.P4643092546082446469

namespace A236856

/-- `∑[A056040(n)*A180000(n)]-1` -/
def P4643092546082446469.Spec : Prop :=
  ∀ n, P4643092546082446469.a n = A236856 n

end A236856

/-! ## A236856.P15396600394604491427

`∑[lcm(A003418(n), A025474(n+1))]`
-/

namespace A236856.P15396600394604491427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003418 n) (A025474 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236856.P15396600394604491427

namespace A236856

/-- `∑[lcm(A003418(n), A025474(n+1))]` -/
def P15396600394604491427.Spec : Prop :=
  ∀ n, (P15396600394604491427.a n : ℤ) = A236856 n

end A236856

/-! ## A236856.P13312417950196832000

`∑[A070198(n)]+n-A070198(n)`
-/

namespace A236856.P13312417950196832000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A070198 n)

end

end A236856.P13312417950196832000

namespace A236856

/-- `∑[A070198(n)]+n-A070198(n)` -/
def P13312417950196832000.Spec : Prop :=
  ∀ n, P13312417950196832000.a n = A236856 n

end A236856

/-! ## A236856.P16076922473561118356

`(∑[A051426(n+1)]-A051426(n+1))/2`
-/

namespace A236856.P16076922473561118356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051426 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A051426 (n + 1) : ℤ) : ℚ) / 2

end

end A236856.P16076922473561118356

namespace A236856

/-- `(∑[A051426(n+1)]-A051426(n+1))/2` -/
def P16076922473561118356.Spec : Prop :=
  ∀ n, P16076922473561118356.a n = (A236856 n : ℚ)

end A236856

/-! ## A236856.P9439972610595021558

`∑[A060401(n+1)-n]-A060401(n+1)`
-/

namespace A236856.P9439972610595021558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060401 (n + 1)

end

end A236856.P9439972610595021558

namespace A236856

/-- `∑[A060401(n+1)-n]-A060401(n+1)` -/
def P9439972610595021558.Spec : Prop :=
  ∀ n, P9439972610595021558.a n = A236856 n

end A236856

/-! ## A236856.P7335384710569820235

`∑[∏[A014963(n+1)]]-∏[A014963(n+1)]`
-/

namespace A236856.P7335384710569820235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∏ j ∈ Finset.range (n + 1), f3 j

end

end A236856.P7335384710569820235

namespace A236856

/-- `∑[∏[A014963(n+1)]]-∏[A014963(n+1)]` -/
def P7335384710569820235.Spec : Prop :=
  ∀ n, P7335384710569820235.a n = A236856 n

end A236856

/-! ## A236856.P15954011083872830029

`∑[A093919(A099392(n+1))]-1`
-/

namespace A236856.P15954011083872830029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A099392 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236856.P15954011083872830029

namespace A236856

/-- `∑[A093919(A099392(n+1))]-1` -/
def P15954011083872830029.Spec : Prop :=
  ∀ n, P15954011083872830029.a n = A236856 n

end A236856

/-! ## A236856.P166286619402554460

`∑[A093919(A179865(n+1))]-1`
-/

namespace A236856.P166286619402554460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236856.P166286619402554460

namespace A236856

/-- `∑[A093919(A179865(n+1))]-1` -/
def P166286619402554460.Spec : Prop :=
  ∀ n, P166286619402554460.a n = A236856 n

end A236856

/-!
# A236857: Each n occurs the least common multiple (LCM) of {1, 2, ..., n} (= A003418(n)) times.

The programs for A236857, the canonical program `A236857.P7964098918235860549` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236857 has offset 0).

The definition of A236857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236857.P7964098918235860549

`∑[char[∑[lcm(n, a(n-1))]]]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A236857

/-- `∑[char[∑[lcm(n, a(n-1))]]]` -/
def P7964098918235860549.Spec : Prop :=
  ∀ n, (P7964098918235860549.a n : ℤ) = A236857 n

theorem P7964098918235860549.correct : P7964098918235860549.Spec := by
  intro n
  simp only [A236857]

end A236857

/-! ## A236857.P1817763057042207003

`∑[char[A173185(n)]]`
-/

namespace A236857.P1817763057042207003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236857.P1817763057042207003

namespace A236857

/-- `∑[char[A173185(n)]]` -/
def P1817763057042207003.Spec : Prop :=
  ∀ n, (P1817763057042207003.a n : ℤ) = A236857 n

end A236857

/-! ## A236857.P18024074458183792073

`∑[char[∑[A003418(n)]]]`
-/

namespace A236857.P18024074458183792073
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236857.P18024074458183792073

namespace A236857

/-- `∑[char[∑[A003418(n)]]]` -/
def P18024074458183792073.Spec : Prop :=
  ∀ n, (P18024074458183792073.a n : ℤ) = A236857 n

end A236857

/-! ## A236857.P12545423382090020721

`∑[char[∑[A211418(n)]]]`
-/

namespace A236857.P12545423382090020721
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236857.P12545423382090020721

namespace A236857

/-- `∑[char[∑[A211418(n)]]]` -/
def P12545423382090020721.Spec : Prop :=
  ∀ n, (P12545423382090020721.a n : ℤ) = A236857 n

end A236857

/-! ## A236857.P5283005080860004425

`∑[char[∑[A075059(n)-1]]]`
-/

namespace A236857.P5283005080860004425
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236857.P5283005080860004425

namespace A236857

/-- `∑[char[∑[A075059(n)-1]]]` -/
def P5283005080860004425.Spec : Prop :=
  ∀ n, (P5283005080860004425.a n : ℤ) = A236857 n

end A236857

/-! ## A236857.P14935340010589504175

`∑[char[∑[A139550(2*n)]]]`
-/

namespace A236857.P14935340010589504175
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236857.P14935340010589504175

namespace A236857

/-- `∑[char[∑[A139550(2*n)]]]` -/
def P14935340010589504175.Spec : Prop :=
  ∀ n, (P14935340010589504175.a n : ℤ) = A236857 n

end A236857

/-! ## A236857.P14099862243139747502

`∑[char[∑[∏[A014963(∏{p}[n, #])]]]]`
-/

namespace A236857.P14099862243139747502
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f5 n), p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236857.P14099862243139747502

namespace A236857

/-- `∑[char[∑[∏[A014963(∏{p}[n, #])]]]]` -/
def P14099862243139747502.Spec : Prop :=
  ∀ n, (P14099862243139747502.a n : ℤ) = A236857 n

end A236857

/-!
# A236859: The length of the initial ascent 123... in the n-th Catalan numeral, A239903(n).

The programs for A236859, there is no canonical definition to state claims against.
-/

/-! ## A236859.P7319451181875802275

`A057515(A057505(A153242(n)))`
-/

namespace A236859.P7319451181875802275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A057505 (A153242 n).toNat).toNat

end

end A236859.P7319451181875802275

/-! ## A236859.P10206088469033105188

`A090996(A081292(n+1)+1)-1`
-/

namespace A236859.P10206088469033105188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A081292 (n + 1) + 1).toNat - 1

end

end A236859.P10206088469033105188

/-! ## A236859.P11290343591933429168

`A090996(A081292(n+1))+A057428(n)`
-/

namespace A236859.P11290343591933429168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A081292 (n + 1)).toNat + A057428 n

end

end A236859.P11290343591933429168

/-! ## A236859.P17534587324452797829

`A153036(A081292(n+1)/2)`
-/

namespace A236859.P17534587324452797829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 (SequenceMachineLib.roundAway ((A081292 (n + 1) : ℚ) / 2)).toNat

end

end A236859.P17534587324452797829

/-! ## A236859.P4438986511712488598

`A099563(2*A085188(n))`
-/

namespace A236859.P4438986511712488598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (2 * A085188 n).toNat

end

end A236859.P4438986511712488598

/-! ## A236859.P3518247302732883528

`A099563(A085188(n)+A085188(n))`
-/

namespace A236859.P3518247302732883528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A085188 n + A085188 n).toNat

end

end A236859.P3518247302732883528

/-! ## A236859.P13229810676296091190

`A099563(∑[A085190(n)]-A085190(n))`
-/

namespace A236859.P13229810676296091190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (∑ j ∈ Finset.range (n + 1), f1 j - A085190 n).toNat

end

end A236859.P13229810676296091190

/-! ## A236859.P16868602302123931377

`A153036(A081292(n+1))`
-/

namespace A236859.P16868602302123931377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 (A081292 (n + 1)).toNat

end

end A236859.P16868602302123931377

/-! ## A236859.P13447990028164246640

`A126307(A153242(n))`
-/

namespace A236859.P13447990028164246640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (A153242 n).toNat

end

end A236859.P13447990028164246640

/-! ## A236859.P5159453328654298751

`A126307(comp[A057548(n)])`
-/

namespace A236859.P5159453328654298751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A236859.P5159453328654298751

/-!
# A236860: After 0 and 1, numbers k all of whose prime divisors encode an irreducible polynomial over GF(2) (are terms of A091206).

The programs for A236860, there is no canonical definition to state claims against.
-/

/-! ## A236860.P8034561640694044387

`comp[A236848(n+1)]`
-/

namespace A236860.P8034561640694044387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236860.P8034561640694044387

/-! ## A236860.P5808362061328730658

`eq[n, A236852(n)]`
-/

namespace A236860.P5808362061328730658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236860.P5808362061328730658

/-! ## A236860.P1171437372044356008

`A236852(lt[A236852(n), n+1])`
-/

namespace A236860.P1171437372044356008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A236860.P1171437372044356008

/-! ## A236860.P4276511500032470382

`A236852(lt[A236852(n)-1, n])`
-/

namespace A236860.P4276511500032470382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A236860.P4276511500032470382

/-! ## A236860.P14069893428417628652

`eq[1, A236862(n)+char[A236849(n+1)]]`
-/

namespace A236860.P14069893428417628652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236849 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236860.P14069893428417628652

/-! ## A236860.P18215372517794987030

`eq[n, A234742(n-A236378(n))]`
-/

namespace A236860.P18215372517794987030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 ((n : ℤ) - A236378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236860.P18215372517794987030

/-! ## A236860.P15212571850498816527

`eq[n, A234742(A234742(n)-A236380(n))]`
-/

namespace A236860.P15212571850498816527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (A234742 n - A236380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236860.P15212571850498816527

/-! ## A236860.P7556404971301127559

`eq[A236378(n), A236379(n-A236378(n))]`
-/

namespace A236860.P7556404971301127559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 ((n : ℤ) - A236378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236860.P7556404971301127559

/-! ## A236860.P14594782352776708816

`lt[A270628(A235041(n))-1, A270628(n)]`
-/

namespace A236860.P14594782352776708816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270628 (A235041 n).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270628 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236860.P14594782352776708816

/-!
# A236861: Characteristic function of A236841 (A234741): a(n) = 1 if n is a result of downward remultiplication (N -> GF(2)[X]) of some number, 0 otherwise.

The programs for A236861, there is no canonical definition to state claims against.
-/

/-! ## A236861.P1505954162552348122

`char[A236841(n+1)]`
-/

namespace A236861.P1505954162552348122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A236861.P1505954162552348122

/-! ## A236861.P17104148275983519772

`char[lt[0, A236833(n)]]`
-/

namespace A236861.P17104148275983519772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236833 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A236861.P17104148275983519772

/-! ## A236861.P7690930575753211099

`char[comp[A236834(n+1)]]`
-/

namespace A236861.P7690930575753211099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236834 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A236861.P7690930575753211099

/-! ## A236861.P13107462844887189832

`C(7, C(n, A236836(n)+1))`
-/

namespace A236861.P13107462844887189832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (Nat.choose n (A236836 n + 1).toNat)

end

end A236861.P13107462844887189832

/-! ## A236861.P12450315167121817276

`A185114(A236833(n)+3)`
-/

namespace A236861.P12450315167121817276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (A236833 n + 3).toNat

end

end A236861.P12450315167121817276

/-! ## A236861.P13802060730188889193

`A023532(16*A236833(n))`
-/

namespace A236861.P13802060730188889193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (16 * A236833 n).toNat

end

end A236861.P13802060730188889193

/-! ## A236861.P12153641738840259585

`ceil(A236833(n)/A215366(n))`
-/

namespace A236861.P12153641738840259585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236833 n : ℚ) / (A215366 n : ℚ)⌉

end

end A236861.P12153641738840259585

/-! ## A236861.P2290106438808506729

`ceil(A236833(n)/A241848(n))`
-/

namespace A236861.P2290106438808506729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236833 n : ℚ) / (A241848 n : ℚ)⌉

end

end A236861.P2290106438808506729

/-! ## A236861.P4791233878314621414

`ceil(A236833(n)/A296910(n))`
-/

namespace A236861.P4791233878314621414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236833 n : ℚ) / (A296910 n : ℚ)⌉

end

end A236861.P4791233878314621414

/-! ## A236861.P13712121892672068506

`ceil(A236833(n)/A299280(n))`
-/

namespace A236861.P13712121892672068506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236833 n : ℚ) / (A299280 n : ℚ)⌉

end

end A236861.P13712121892672068506

/-! ## A236861.P9410402974128462845

`ceil(A236833(n)/A093696(n+1))`
-/

namespace A236861.P9410402974128462845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236833 n : ℚ) / (A093696 (n + 1) : ℚ)⌉

end

end A236861.P9410402974128462845

/-! ## A236861.P12040148318323144941

`A236836(C(n, C(a(n-1), A236836(n))))` with `a(0)=1`
-/

namespace A236861.P12040148318323144941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236836 (Nat.choose n (Nat.choose (a (n - 1)).toNat (A236836 n).toNat))

end

end A236861.P12040148318323144941

/-! ## A236861.P16308332690543362021

`A007920(gcd(A008578(n+1), A236836(n)))`
-/

namespace A236861.P16308332690543362021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (Int.gcd (A008578 (n + 1)) (A236836 n))

end

end A236861.P16308332690543362021

/-!
# A236862: Characteristic function for A236842 (A234742): a(n) = 1, if n is a result of "upward" remultiplication (GF(2)[X] -> N) of some number, 0 otherwise.

The programs for A236862, there is no canonical definition to state claims against.
-/

/-! ## A236862.P15232459108691319910

`ceil(A236853(n)/6)`
-/

namespace A236862.P15232459108691319910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236853 n : ℚ) / 6⌉

end

end A236862.P15232459108691319910

/-! ## A236862.P18342446533842614564

`char[A236842(n+1)]`
-/

namespace A236862.P18342446533842614564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A236862.P18342446533842614564

/-! ## A236862.P9811248735853290249

`char[comp[A236844(n+1)]]`
-/

namespace A236862.P9811248735853290249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236844 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A236862.P9811248735853290249

/-! ## A236862.P17085515340416929119

`A236853(C(n, C(n, A236853(n))))`
-/

namespace A236862.P17085515340416929119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 (Nat.choose n (Nat.choose n (A236853 n).toNat))

end

end A236862.P17085515340416929119

/-! ## A236862.P17365607371277378405

`1-A000007(A236846(A000007(n)+n))`
-/

namespace A236862.P17365607371277378405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A236846 (A000007 n + (n : ℤ)).toNat).toNat

end

end A236862.P17365607371277378405

/-! ## A236862.P8577513918517401739

`1-A000007(A236847(A000007(n)+n))`
-/

namespace A236862.P8577513918517401739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A236847 (A000007 n + (n : ℤ)).toNat).toNat

end

end A236862.P8577513918517401739

/-! ## A236862.P5000420168431378600

`A057427(A236847(n)+1-A057427(n))`
-/

namespace A236862.P5000420168431378600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A236847 n + (1 - A057427 n)).toNat

end

end A236862.P5000420168431378600

/-! ## A236862.P17347161514412207958

`A057427(1-(A057427(n)-A236847(n)))`
-/

namespace A236862.P17347161514412207958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (1 - (A057427 n - A236847 n)).toNat

end

end A236862.P17347161514412207958

/-! ## A236862.P10335079106241955264

`round(A072649(A236846(n)+1)/A072649(n+1))`
-/

namespace A236862.P10335079106241955264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072649 (A236846 n + 1).toNat : ℚ) / (A072649 (n + 1) : ℚ))

end

end A236862.P10335079106241955264

/-! ## A236862.P987745672483513907

`char[A234742(n)]`
-/

namespace A236862.P987745672483513907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A236862.P987745672483513907

/-! ## A236862.P665959854473675542

`A236847(A008574(n))/A008574(A236847(n))`
-/

namespace A236862.P665959854473675542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236847 (A008574 n).toNat : ℚ) / (A008574 (A236847 n).toNat : ℚ)

end

end A236862.P665959854473675542

/-!
# A236863: Number of nonludic numbers (A192607) not greater than n.

The programs for A236863, there is no canonical definition to state claims against.
-/

/-! ## A236863.P11169963179003841688

`∑[char[A192607(n+1)]]`
-/

namespace A236863.P11169963179003841688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236863.P11169963179003841688

/-! ## A236863.P8377474603141068101

`n-∑[A237427(n)%2]`
-/

namespace A236863.P8377474603141068101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237427 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236863.P8377474603141068101

/-! ## A236863.P11710783991362906560

`n-∑[char[A003309(n+1)]]`
-/

namespace A236863.P11710783991362906560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A236863.P11710783991362906560

/-! ## A236863.P10559701474307095219

`n-∑[char[record[A269380(n+1)]]]`
-/

namespace A236863.P10559701474307095219
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A236863.P10559701474307095219

/-! ## A236863.P15062903786776472423

`a(n-1)+1-A192490(n)` with `a(0)=0`
-/

namespace A236863.P15062903786776472423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A192490 n)

end

end A236863.P15062903786776472423

/-! ## A236863.P9172943977639803242

`∑[char[lt[1, A302037(n+1)]+1]]`
-/

namespace A236863.P9172943977639803242
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236863.P9172943977639803242

/-! ## A236863.P1691921831408061830

`∑[(A237427(n)+A000040(n+1))%2]`
-/

namespace A236863.P1691921831408061830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237427 n + A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236863.P1691921831408061830

/-! ## A236863.P937020209338486245

`A192490(n+1)-A192512(n+1)+n`
-/

namespace A236863.P937020209338486245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (n + 1) - A192512 (n + 1) + (n : ℤ)

end

end A236863.P937020209338486245

/-! ## A236863.P12441293815268274412

`n-∑[char[A272565(n+1)]]`
-/

namespace A236863.P12441293815268274412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A236863.P12441293815268274412

/-! ## A236863.P15168613522270836053

`n-∑[A000035(A237427(n))]`
-/

namespace A236863.P15168613522270836053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A237427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236863.P15168613522270836053

/-!
# A236864: Numbers n such that the sum of the n-th powers of all symmetric 2 X 2 matrices over Z/nZ gives a nonzero matrix.

The programs for A236864, there is no canonical definition to state claims against.
-/

/-! ## A236864.P12868205836904469570

`record[6*A116966(A291811(n+1))]`
-/

namespace A236864.P12868205836904469570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A116966 (A291811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236864.P12868205836904469570

/-! ## A236864.P16231624345667113902

`A008588(record[A116966(A291811(n+1))])`
-/

namespace A236864.P16231624345667113902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A291811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236864.P16231624345667113902

/-! ## A236864.P6560539550782190059

`A057688(A190482(3*n+4))*A078175(n+1)`
-/

namespace A236864.P6560539550782190059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057688 (A190482 (3 * n + 4)).toNat * A078175 (n + 1)

end

end A236864.P6560539550782190059

/-! ## A236864.P7447292019270941177

`A040006(A040014(n))*A316476(n+2)`
-/

namespace A236864.P7447292019270941177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A040014 n).toNat * A316476 (n + 2)

end

end A236864.P7447292019270941177

/-! ## A236864.P849792222007590639

`A139711(n+1)*A378739(A023194(n+5))`
-/

namespace A236864.P849792222007590639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (n + 1) * A378739 (A023194 (n + 5)).toNat

end

end A236864.P849792222007590639

/-!
# A236865: Number T(n,k) of equivalence classes of ways of placing k 7 X 7 tiles in an n X n square under all symmetry operations of the square; irregular triangle T(n,k), n>=7, 0<=k<=floor(n/7)^2, read by rows.

The programs for A236865, there is no canonical definition to state claims against.
-/

/-! ## A236865.P1026747227850968391

`A236939(n)+A058348(A000009(n))`
-/

namespace A236865.P1026747227850968391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 (n + 10) + A058348 (A000009 n).toNat

end

end A236865.P1026747227850968391

/-! ## A236865.P1510156385751030550

`A236939(n)+A058348(A051129(n+1))`
-/

namespace A236865.P1510156385751030550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 (n + 10) + A058348 (A051129 (n + 1)).toNat

end

end A236865.P1510156385751030550

/-! ## A236865.P4360533920182565160

`A236915(n+8)+A058348(A000009(n))`
-/

namespace A236865.P4360533920182565160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236915 (n + 8) + A058348 (A000009 n).toNat

end

end A236865.P4360533920182565160

/-! ## A236865.P16777198141514552004

`A236936(n+9)+A058348(A000009(n))`
-/

namespace A236865.P16777198141514552004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236936 (n + 9) + A058348 (A000009 n).toNat

end

end A236865.P16777198141514552004

/-! ## A236865.P17149820676973433542

`A236939(A055645(n))`
-/

namespace A236865.P17149820676973433542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 ((A055645 n).toNat + 10)

end

end A236865.P17149820676973433542

/-!
# A236866: Positions of primes in A007775 (numbers not divisible by 2, 3 or 5).

The programs for A236866, the canonical program `A236866.P17788189984368847866` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236866 has offset 1).

The definition of A236866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236866.P17788189984368847866

`eq[1, ∑{e}[A007775(n+2), #]]+2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A236866

/-- `eq[1, ∑{e}[A007775(n+2), #]]+2` -/
def P17788189984368847866.Spec : Prop :=
  ∀ n, (P17788189984368847866.a n : ℤ) = A236866 (n + 1)

theorem P17788189984368847866.correct : P17788189984368847866.Spec := by
  intro n
  simp only [A236866, Nat.add_sub_cancel]

end A236866

/-! ## A236866.P16669896516292400342

`eq[2, A000005(A007775(n+1))]+1`
-/

namespace A236866.P16669896516292400342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007775 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236866.P16669896516292400342

namespace A236866

/-- `eq[2, A000005(A007775(n+1))]+1` -/
def P16669896516292400342.Spec : Prop :=
  ∀ n, (P16669896516292400342.a n : ℤ) = A236866 (n + 1)

end A236866

/-! ## A236866.P13503420395508947005

`A250476(A181709(n+1))`
-/

namespace A236866.P13503420395508947005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250476 (A181709 (n + 1)).toNat

end

end A236866.P13503420395508947005

namespace A236866

/-- `A250476(A181709(n+1))` -/
def P13503420395508947005.Spec : Prop :=
  ∀ n, P13503420395508947005.a n = A236866 (n + 1)

end A236866

/-! ## A236866.P9558248521302488172

`A379006(A004139(n+2))`
-/

namespace A236866.P9558248521302488172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379006 (A004139 (n + 2)).toNat

end

end A236866.P9558248521302488172

namespace A236866

/-- `A379006(A004139(n+2))` -/
def P9558248521302488172.Spec : Prop :=
  ∀ n, P9558248521302488172.a n = A236866 (n + 1)

end A236866

/-! ## A236866.P12093922937697160953

`A379006(A215848(n+2))`
-/

namespace A236866.P12093922937697160953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379006 (A215848 (n + 2)).toNat

end

end A236866.P12093922937697160953

namespace A236866

/-- `A379006(A215848(n+2))` -/
def P12093922937697160953.Spec : Prop :=
  ∀ n, P12093922937697160953.a n = A236866 (n + 1)

end A236866

/-! ## A236866.P4564637684917051793

`A379006(A197638(n+2)/2)`
-/

namespace A236866.P4564637684917051793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379006 (SequenceMachineLib.roundAway ((A197638 (n + 2) : ℚ) / 2)).toNat

end

end A236866.P4564637684917051793

namespace A236866

/-- `A379006(A197638(n+2)/2)` -/
def P4564637684917051793.Spec : Prop :=
  ∀ n, P4564637684917051793.a n = A236866 (n + 1)

end A236866

/-! ## A236866.P15267755592360192130

`eq[1, A003415(A249825(n+1))]+1`
-/

namespace A236866.P15267755592360192130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A249825 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236866.P15267755592360192130

namespace A236866

/-- `eq[1, A003415(A249825(n+1))]+1` -/
def P15267755592360192130.Spec : Prop :=
  ∀ n, (P15267755592360192130.a n : ℤ) = A236866 (n + 1)

end A236866

/-! ## A236866.P12691426868997696699

`A379006(A197638(n+2))`
-/

namespace A236866.P12691426868997696699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379006 (A197638 (n + 2)).toNat

end

end A236866.P12691426868997696699

namespace A236866

/-- `A379006(A197638(n+2))` -/
def P12691426868997696699.Spec : Prop :=
  ∀ n, P12691426868997696699.a n = A236866 (n + 1)

end A236866

/-! ## A236866.P13894580538282295196

`lt[A054353(n+2), A014963(A054403(n+2))]`
-/

namespace A236866.P13894580538282295196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054403 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236866.P13894580538282295196

namespace A236866

/-- `lt[A054353(n+2), A014963(A054403(n+2))]` -/
def P13894580538282295196.Spec : Prop :=
  ∀ n, (P13894580538282295196.a n : ℤ) = A236866 (n + 1)

end A236866

/-! ## A236866.P14810695070013582787

`A141256(A001747(n+5))-1`
-/

namespace A236866.P14810695070013582787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A001747 (n + 5)).toNat - 1

end

end A236866.P14810695070013582787

namespace A236866

/-- `A141256(A001747(n+5))-1` -/
def P14810695070013582787.Spec : Prop :=
  ∀ n, P14810695070013582787.a n = A236866 (n + 1)

end A236866

/-! ## A236866.P7117338348086123880

`A078898(7*A000040(n+4))`
-/

namespace A236866.P7117338348086123880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (7 * A000040 (n + 4)).toNat

end

end A236866.P7117338348086123880

namespace A236866

/-- `A078898(7*A000040(n+4))` -/
def P7117338348086123880.Spec : Prop :=
  ∀ n, P7117338348086123880.a n = A236866 (n + 1)

end A236866

/-! ## A236866.P515297627065298365

`A078898(7*A008578(n+5))`
-/

namespace A236866.P515297627065298365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (7 * A008578 (n + 5)).toNat

end

end A236866.P515297627065298365

namespace A236866

/-- `A078898(7*A008578(n+5))` -/
def P515297627065298365.Spec : Prop :=
  ∀ n, P515297627065298365.a n = A236866 (n + 1)

end A236866

/-! ## A236866.P1976984287729819005

`A078898(A003961(A249827(A000040(n+1))))`
-/

namespace A236866.P1976984287729819005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A249827 (A000040 (n + 1)).toNat).toNat).toNat

end

end A236866.P1976984287729819005

namespace A236866

/-- `A078898(A003961(A249827(A000040(n+1))))` -/
def P1976984287729819005.Spec : Prop :=
  ∀ n, P1976984287729819005.a n = A236866 (n + 1)

end A236866

/-! ## A236866.P13289072571128317987

`A249810(5*A000040(n+3))`
-/

namespace A236866.P13289072571128317987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (5 * A000040 (n + 3)).toNat

end

end A236866.P13289072571128317987

namespace A236866

/-- `A249810(5*A000040(n+3))` -/
def P13289072571128317987.Spec : Prop :=
  ∀ n, P13289072571128317987.a n = A236866 (n + 1)

end A236866

/-!
# A236867: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236867, there is no canonical definition to state claims against.
-/

/-! ## A236867.P12574150782523781599

`A236875(∑[4*n]+1)`
-/

namespace A236867.P12574150782523781599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236867.P12574150782523781599

/-! ## A236867.P650355138583734746

`record[A236875(Δ[A235355(n)])]`
-/

namespace A236867.P650355138583734746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236867.P650355138583734746

/-! ## A236867.P15380651192854752903

`lcm((-1)^n, A236875(A001844(n)))`
-/

namespace A236867.P15380651192854752903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236875 (A001844 n).toNat)

end

end A236867.P15380651192854752903

/-! ## A236867.P6596303274389867300

`record[A003982(n)*A236875(n+1)]`
-/

namespace A236867.P6596303274389867300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236867.P6596303274389867300

/-!
# A236868: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236868, there is no canonical definition to state claims against.
-/

/-! ## A236868.P9636546511222651612

`A236875(∑[n]+1)`
-/

namespace A236868.P9636546511222651612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236868.P9636546511222651612

/-! ## A236868.P307309879853734008

`record[A010054(n)*A236875(n+1)]`
-/

namespace A236868.P307309879853734008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236868.P307309879853734008

/-! ## A236868.P9668761921923343835

`record[A236875(n+1)/A326659(n)]`
-/

namespace A236868.P9668761921923343835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236875 (n + 1) : ℚ) / (A326659 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236868.P9668761921923343835

/-! ## A236868.P463278746941612677

`record[root(A236875(n+1), A048854(n))]`
-/

namespace A236868.P463278746941612677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236875 (n + 1) : ℝ) ^ (1 / (A048854 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236868.P463278746941612677

/-! ## A236868.P5205503534937497329

`record[root(A236875(n+1), A093563(n))]`
-/

namespace A236868.P5205503534937497329
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236875 (n + 1) : ℝ) ^ (1 / (A093563 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236868.P5205503534937497329

/-!
# A236869: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236869, there is no canonical definition to state claims against.
-/

/-! ## A236869.P14766375856459903117

`A236875(∑[n+1]+2)`
-/

namespace A236869.P14766375856459903117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236869.P14766375856459903117

/-! ## A236869.P4681324374606002204

`record[A010054(n)*A236875(n+2)]`
-/

namespace A236869.P4681324374606002204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236875 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236869.P4681324374606002204

/-! ## A236869.P16340414284925531004

`record[root(A236875(n+2), A156365(n+1))]`
-/

namespace A236869.P16340414284925531004
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236875 (n + 2) : ℝ) ^ (1 / (A156365 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236869.P16340414284925531004

/-! ## A236869.P14253215159828392061

`record[A236875(Δ[A003453(n+5)])]`
-/

namespace A236869.P14253215159828392061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236869.P14253215159828392061

/-! ## A236869.P6615461032838613277

`record[A236875(A000096(val(n+1, 2)+1))]`
-/

namespace A236869.P6615461032838613277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236869.P6615461032838613277

/-!
# A236870: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236870, there is no canonical definition to state claims against.
-/

/-! ## A236870.P15963349677262581310

`A236875(∑[n+2]+4)`
-/

namespace A236870.P15963349677262581310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236870.P15963349677262581310

/-! ## A236870.P8474380940080734563

`A236875(A167614(n+1))+A185255(n)`
-/

namespace A236870.P8474380940080734563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A167614 (n + 1)).toNat + A185255 n

end

end A236870.P8474380940080734563

/-! ## A236870.P15157540278302275853

`lcm(A033999(n), A236875(A167614(n+1)))`
-/

namespace A236870.P15157540278302275853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A236875 (A167614 (n + 1)).toNat)

end

end A236870.P15157540278302275853

/-! ## A236870.P2222860855728336106

`or(A000007(n), A236875(A167614(n+1)))`
-/

namespace A236870.P2222860855728336106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A236875 (A167614 (n + 1)).toNat)

end

end A236870.P2222860855728336106

/-! ## A236870.P14195415921470191705

`A236875(A167614(n+1))%A205762(n+1)`
-/

namespace A236870.P14195415921470191705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236875 (A167614 (n + 1)).toNat) (A205762 (n + 1))

end

end A236870.P14195415921470191705

/-!
# A236871: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236871, there is no canonical definition to state claims against.
-/

/-! ## A236871.P9197277176495686954

`A236875(∑[n+3]+7)`
-/

namespace A236871.P9197277176495686954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236871.P9197277176495686954

/-! ## A236871.P17658324111077426506

`or(char[1], A236875(A155212(n)+5))`
-/

namespace A236871.P17658324111077426506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A236875 (A155212 n + 5).toNat)

end

end A236871.P17658324111077426506

/-!
# A236872: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236872, there is no canonical definition to state claims against.
-/

/-! ## A236872.P2024445112737824016

`A236875(A374005(n+1))`
-/

namespace A236872.P2024445112737824016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A374005 (n + 1)).toNat

end

end A236872.P2024445112737824016

/-! ## A236872.P1222074431100650472

`A236875(A155212(n)+13)`
-/

namespace A236872.P1222074431100650472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A155212 n + 13).toNat

end

end A236872.P1222074431100650472

/-! ## A236872.P14926008051413588425

`A236875(A056000(n)+15)`
-/

namespace A236872.P14926008051413588425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A056000 n + 15).toNat

end

end A236872.P14926008051413588425

/-! ## A236872.P14086927569724654660

`A236875(A052905(n+1)+10)`
-/

namespace A236872.P14086927569724654660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A052905 (n + 1) + 10).toNat

end

end A236872.P14086927569724654660

/-! ## A236872.P17790750997901065545

`A236875(eq[6, A131818(n+1)])`
-/

namespace A236872.P17790750997901065545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236872.P17790750997901065545

/-!
# A236873: Number of (n+1) X (6+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2 X 2 subblock equal.

The programs for A236873, there is no canonical definition to state claims against.
-/

/-! ## A236873.P16523450131799248118

`A236875(A374007(n+1))`
-/

namespace A236873.P16523450131799248118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A374007 (n + 1)).toNat

end

end A236873.P16523450131799248118

/-! ## A236873.P11429726470673940256

`A236875(eq[7, A131818(n+1)])`
-/

namespace A236873.P11429726470673940256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236873.P11429726470673940256

/-! ## A236873.P13130627966804237874

`A236875(A000124(n+6)-(n+1))`
-/

namespace A236873.P13130627966804237874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A236873.P13130627966804237874

/-! ## A236873.P18075930991412187666

`A236875(eq[3, A219347(n)])`
-/

namespace A236873.P18075930991412187666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236873.P18075930991412187666

/-! ## A236873.P17871301429919442348

`A236875(eq[5, A193592(n)])`
-/

namespace A236873.P17871301429919442348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236873.P17871301429919442348

/-!
# A236874: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A236874, there is no canonical definition to state claims against.
-/

/-! ## A236874.P6362320076274772892

`A236875(A374008(n+1))`
-/

namespace A236874.P6362320076274772892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A374008 (n + 1)).toNat

end

end A236874.P6362320076274772892

/-! ## A236874.P15669823367582480164

`A236875(A000124(n+6)+6)`
-/

namespace A236874.P15669823367582480164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A000124 (n + 6) + 6).toNat

end

end A236874.P15669823367582480164

/-! ## A236874.P6082981186816936528

`A236875(A052905(n+3)+12)`
-/

namespace A236874.P6082981186816936528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (A052905 (n + 3) + 12).toNat

end

end A236874.P6082981186816936528

/-! ## A236874.P3464455483586951003

`A236875(eq[8, A131818(n+1)])`
-/

namespace A236874.P3464455483586951003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236874.P3464455483586951003

/-! ## A236874.P18290571738760385349

`A236875(eq[4, A219347(n)])`
-/

namespace A236874.P18290571738760385349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236874.P18290571738760385349

/-!
# A236876: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236876, there is no canonical definition to state claims against.
-/

/-! ## A236876.P15124399241078811094

`A236884(∑[4*n]+1)`
-/

namespace A236876.P15124399241078811094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236876.P15124399241078811094

/-! ## A236876.P12817704791741634848

`A236884(A001844(n))+A064459(n)`
-/

namespace A236876.P12817704791741634848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A001844 n).toNat + A064459 n

end

end A236876.P12817704791741634848

/-! ## A236876.P445944194125449154

`A236884(A001844(n))+A098728(n)`
-/

namespace A236876.P445944194125449154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A001844 n).toNat + A098728 n

end

end A236876.P445944194125449154

/-! ## A236876.P307158139909654890

`A055642(n)*A236884(A001844(n))`
-/

namespace A236876.P307158139909654890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A236884 (A001844 n).toNat

end

end A236876.P307158139909654890

/-! ## A236876.P7424379786419535243

`or(A000007(n), A236884(A001844(n)))`
-/

namespace A236876.P7424379786419535243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A236884 (A001844 n).toNat)

end

end A236876.P7424379786419535243

/-!
# A236877: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236877, there is no canonical definition to state claims against.
-/

/-! ## A236877.P11912813521106722349

`A236884(∑[n]+1)`
-/

namespace A236877.P11912813521106722349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236877.P11912813521106722349

/-! ## A236877.P10497221259777307613

`or(1, A236884(A000217(n)+1))`
-/

namespace A236877.P10497221259777307613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236884 (A000217 n + 1).toNat)

end

end A236877.P10497221259777307613

/-! ## A236877.P16587407514364741663

`record[A010054(n)*A236884(n+1)]`
-/

namespace A236877.P16587407514364741663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236877.P16587407514364741663

/-! ## A236877.P8860335948867776811

`record[A236884(n+1)/A022166(n)]`
-/

namespace A236877.P8860335948867776811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236884 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236877.P8860335948867776811

/-! ## A236877.P9488725157989977757

`record[gcd(A002262(n), A236884(n+1))]`
-/

namespace A236877.P9488725157989977757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236877.P9488725157989977757

/-!
# A236878: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236878, there is no canonical definition to state claims against.
-/

/-! ## A236878.P4639394696735617198

`A236884(∑[n+1]+2)`
-/

namespace A236878.P4639394696735617198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236878.P4639394696735617198

/-! ## A236878.P16882255702123222686

`or(1, A236884(A133263(n+1)))`
-/

namespace A236878.P16882255702123222686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236884 (A133263 (n + 1)).toNat)

end

end A236878.P16882255702123222686

/-! ## A236878.P11815512440267840582

`record[A010054(n)*A236884(n+2)]`
-/

namespace A236878.P11815512440267840582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236884 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236878.P11815512440267840582

/-! ## A236878.P669441561644693540

`record[gcd(A002262(n), A236884(n+2))]`
-/

namespace A236878.P669441561644693540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236884 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236878.P669441561644693540

/-! ## A236878.P15175103122826258953

`record[A236884(n+3)/A060281(n+1)]`
-/

namespace A236878.P15175103122826258953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236884 (n + 3) : ℚ) / (A060281 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236878.P15175103122826258953

/-!
# A236879: Number of (n+1) X (3+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2 X 2 subblock equal.

The programs for A236879, there is no canonical definition to state claims against.
-/

/-! ## A236879.P4660173798007532309

`A236884(∑[n+2]+4)`
-/

namespace A236879.P4660173798007532309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236879.P4660173798007532309

/-! ## A236879.P9895329626817025953

`A236884(A167614(n+1))+A184946(n)`
-/

namespace A236879.P9895329626817025953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A167614 (n + 1)).toNat + A184946 n

end

end A236879.P9895329626817025953

/-! ## A236879.P16357177541524654879

`lcm(A087960(n), A236884(A167614(n+1)))`
-/

namespace A236879.P16357177541524654879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A236884 (A167614 (n + 1)).toNat)

end

end A236879.P16357177541524654879

/-! ## A236879.P8852054882318302659

`or(A025428(n), A236884(A167614(n+1)))`
-/

namespace A236879.P8852054882318302659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025428 n) (A236884 (A167614 (n + 1)).toNat)

end

end A236879.P8852054882318302659

/-! ## A236879.P13892677963786670120

`or(A236884(A167614(n+1)), A316867(n))`
-/

namespace A236879.P13892677963786670120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A236884 (A167614 (n + 1)).toNat) (A316867 n)

end

end A236879.P13892677963786670120

/-!
# A236880: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236880, there is no canonical definition to state claims against.
-/

/-! ## A236880.P1419976574854958468

`A236884(A374004(n+1))`
-/

namespace A236880.P1419976574854958468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A374004 (n + 1)).toNat

end

end A236880.P1419976574854958468

/-! ## A236880.P13018972288126918086

`A236884(A145018(n+4))`
-/

namespace A236880.P13018972288126918086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A145018 (n + 4)).toNat

end

end A236880.P13018972288126918086

/-! ## A236880.P2267172934732697841

`A236884(A141214(n)+7)`
-/

namespace A236880.P2267172934732697841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A141214 n + 7).toNat

end

end A236880.P2267172934732697841

/-! ## A236880.P10579771003704105399

`A236884(A052905(n)+9)`
-/

namespace A236880.P10579771003704105399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A052905 n + 9).toNat

end

end A236880.P10579771003704105399

/-! ## A236880.P4672413135931608693

`A236884(A055999(n)+10)`
-/

namespace A236880.P4672413135931608693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A055999 n + 10).toNat

end

end A236880.P4672413135931608693

/-!
# A236881: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236881, there is no canonical definition to state claims against.
-/

/-! ## A236881.P2429056820798852280

`A236884(A374005(n+1))`
-/

namespace A236881.P2429056820798852280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A374005 (n + 1)).toNat

end

end A236881.P2429056820798852280

/-! ## A236881.P6678528021916973425

`A236884(A167499(n+3))`
-/

namespace A236881.P6678528021916973425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A167499 (n + 3)).toNat

end

end A236881.P6678528021916973425

/-! ## A236881.P784635759944138391

`A236884(A155212(n)+13)`
-/

namespace A236881.P784635759944138391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A155212 n + 13).toNat

end

end A236881.P784635759944138391

/-! ## A236881.P9174510366811642568

`A236884(A052905(n+1)+10)`
-/

namespace A236881.P9174510366811642568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A052905 (n + 1) + 10).toNat

end

end A236881.P9174510366811642568

/-! ## A236881.P13467003603206987661

`A236884(Δ[A264443(n)])`
-/

namespace A236881.P13467003603206987661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (f1 (n + 1) - f1 n).toNat

end

end A236881.P13467003603206987661

/-!
# A236882: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236882, there is no canonical definition to state claims against.
-/

/-! ## A236882.P6301502494264043517

`A236884(A374007(n+1))`
-/

namespace A236882.P6301502494264043517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A374007 (n + 1)).toNat

end

end A236882.P6301502494264043517

/-! ## A236882.P15851485264358990587

`A236884(eq[7, A131818(n+1)])`
-/

namespace A236882.P15851485264358990587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236882.P15851485264358990587

/-! ## A236882.P9064995609699564039

`A236884(A000124(n+6)-(n+1))`
-/

namespace A236882.P9064995609699564039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A236882.P9064995609699564039

/-! ## A236882.P6935307735611033053

`A236884(A052905(n+3))`
-/

namespace A236882.P6935307735611033053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A052905 (n + 3)).toNat

end

end A236882.P6935307735611033053

/-! ## A236882.P1409374091734277134

`A236884(A056119(n)+16)`
-/

namespace A236882.P1409374091734277134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A056119 n + 16).toNat

end

end A236882.P1409374091734277134

/-!
# A236883: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236883, there is no canonical definition to state claims against.
-/

/-! ## A236883.P12260106333142391950

`A236884(A374008(n+1))`
-/

namespace A236883.P12260106333142391950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A374008 (n + 1)).toNat

end

end A236883.P12260106333142391950

/-! ## A236883.P7210081663129792378

`A236884(A167499(n+5)+2)`
-/

namespace A236883.P7210081663129792378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A167499 (n + 5) + 2).toNat

end

end A236883.P7210081663129792378

/-! ## A236883.P18230161035640530354

`A236884(A000124(n+6)+6)`
-/

namespace A236883.P18230161035640530354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A000124 (n + 6) + 6).toNat

end

end A236883.P18230161035640530354

/-! ## A236883.P3290090679292112348

`A236884(eq[8, A131818(n+1)])`
-/

namespace A236883.P3290090679292112348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236883.P3290090679292112348

/-! ## A236883.P9674067732261464163

`A236884(eq[6, A144328(n+1)]+1)`
-/

namespace A236883.P9674067732261464163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A236883.P9674067732261464163

/-!
# A236885: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2 X 2 subblock equal.

The programs for A236885, there is no canonical definition to state claims against.
-/

/-! ## A236885.P11726931776770195546

`A236893(∑[4*n]+1)`
-/

namespace A236885.P11726931776770195546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236885.P11726931776770195546

/-! ## A236885.P1277169266619786459

`or(1, A236893(A001844(n)))`
-/

namespace A236885.P1277169266619786459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236893 (A001844 n).toNat)

end

end A236885.P1277169266619786459

/-! ## A236885.P17993144730060540503

`record[gcd(A114327(n), A236893(n+1))]`
-/

namespace A236885.P17993144730060540503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A236893 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236885.P17993144730060540503

/-! ## A236885.P8184923152991447375

`A063435(n)*A236893(A001844(n))`
-/

namespace A236885.P8184923152991447375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A236893 (A001844 n).toNat

end

end A236885.P8184923152991447375

/-! ## A236885.P1816139797775932805

`A236893(A001844(n))*A333737(n)`
-/

namespace A236885.P1816139797775932805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A001844 n).toNat * A333737 n

end

end A236885.P1816139797775932805

/-!
# A236886: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2 X 2 subblock equal.

The programs for A236886, there is no canonical definition to state claims against.
-/

/-! ## A236886.P2018153289728507451

`A236893(∑[n]+1)`
-/

namespace A236886.P2018153289728507451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236886.P2018153289728507451

/-! ## A236886.P1948309789561339670

`record[A010054(n)*A236893(n+1)]`
-/

namespace A236886.P1948309789561339670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236886.P1948309789561339670

/-! ## A236886.P739735751247704956

`record[A236893(n+1)/A022166(n)]`
-/

namespace A236886.P739735751247704956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236893 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236886.P739735751247704956

/-! ## A236886.P5759230372156340202

`record[A236893(n+1)/A022171(n)]`
-/

namespace A236886.P5759230372156340202
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236893 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236886.P5759230372156340202

/-! ## A236886.P3096392071431861848

`record[A236893(n+1)/A022173(n)]`
-/

namespace A236886.P3096392071431861848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236893 (n + 1) : ℚ) / (A022173 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236886.P3096392071431861848

/-!
# A236887: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236887, there is no canonical definition to state claims against.
-/

/-! ## A236887.P5395275930647571

`A236893(∑[n+1]+2)`
-/

namespace A236887.P5395275930647571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236887.P5395275930647571

/-! ## A236887.P14134768486221583691

`record[A010054(n)*A236893(n+2)]`
-/

namespace A236887.P14134768486221583691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236893 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236887.P14134768486221583691

/-! ## A236887.P11802532984442758015

`xor(1, xor(1, A236893(A133263(n+1))))`
-/

namespace A236887.P11802532984442758015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A236893 (A133263 (n + 1)).toNat))

end

end A236887.P11802532984442758015

/-! ## A236887.P5514900270181000002

`lcm(A033999(n), A236893(A133263(n+1)))`
-/

namespace A236887.P5514900270181000002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A236893 (A133263 (n + 1)).toNat)

end

end A236887.P5514900270181000002

/-! ## A236887.P15202728527750104794

`record[A236893(abs(A201163(n)))]`
-/

namespace A236887.P15202728527750104794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236887.P15202728527750104794

/-!
# A236888: Number of (n+1) X (3+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2 X 2 subblock equal.

The programs for A236888, there is no canonical definition to state claims against.
-/

/-! ## A236888.P601248396240665569

`A236893(∑[n+2]+4)`
-/

namespace A236888.P601248396240665569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236888.P601248396240665569

/-! ## A236888.P9615653063173125135

`or(1, A236893(A167614(n+1)))`
-/

namespace A236888.P9615653063173125135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236893 (A167614 (n + 1)).toNat)

end

end A236888.P9615653063173125135

/-! ## A236888.P8363828760039287150

`A236893(A167614(n+1))+A185284(n)`
-/

namespace A236888.P8363828760039287150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A167614 (n + 1)).toNat + A185284 n

end

end A236888.P8363828760039287150

/-! ## A236888.P8354291528450194373

`lcm(A033999(n), A236893(A167614(n+1)))`
-/

namespace A236888.P8354291528450194373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A236893 (A167614 (n + 1)).toNat)

end

end A236888.P8354291528450194373

/-! ## A236888.P10854930096166315398

`A236893(A167614(n+1))%A236892(n+1)`
-/

namespace A236888.P10854930096166315398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236893 (A167614 (n + 1)).toNat) (A236892 (n + 1))

end

end A236888.P10854930096166315398

/-!
# A236889: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236889, there is no canonical definition to state claims against.
-/

/-! ## A236889.P10203957934778505503

`A236893(A374004(n+1))`
-/

namespace A236889.P10203957934778505503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A374004 (n + 1)).toNat

end

end A236889.P10203957934778505503

/-! ## A236889.P8002691048336559231

`A236893(A141214(n)+7)`
-/

namespace A236889.P8002691048336559231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A141214 n + 7).toNat

end

end A236889.P8002691048336559231

/-! ## A236889.P16220057740381147773

`A236893(A052905(n)+9)`
-/

namespace A236889.P16220057740381147773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A052905 n + 9).toNat

end

end A236889.P16220057740381147773

/-! ## A236889.P6821115805445307853

`A236893(A055999(n)+10)`
-/

namespace A236889.P6821115805445307853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A055999 n + 10).toNat

end

end A236889.P6821115805445307853

/-! ## A236889.P18304508665754399192

`A236893(A167614(n+2)+1)`
-/

namespace A236889.P18304508665754399192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A167614 (n + 2) + 1).toNat

end

end A236889.P18304508665754399192

/-!
# A236890: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236890, there is no canonical definition to state claims against.
-/

/-! ## A236890.P17634083353239367987

`A236893(A374005(n+1))`
-/

namespace A236890.P17634083353239367987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A374005 (n + 1)).toNat

end

end A236890.P17634083353239367987

/-! ## A236890.P9830878306205694527

`A236893(A167499(n+3))`
-/

namespace A236890.P9830878306205694527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A167499 (n + 3)).toNat

end

end A236890.P9830878306205694527

/-! ## A236890.P17795474083406041080

`A236893(A056000(n)+15)`
-/

namespace A236890.P17795474083406041080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A056000 n + 15).toNat

end

end A236890.P17795474083406041080

/-! ## A236890.P15225508081153177130

`A236893(A052905(n+1)+10)`
-/

namespace A236890.P15225508081153177130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A052905 (n + 1) + 10).toNat

end

end A236890.P15225508081153177130

/-! ## A236890.P5809526346089137974

`A236893(eq[6, A131818(n+1)])`
-/

namespace A236890.P5809526346089137974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236890.P5809526346089137974

/-!
# A236891: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236891, there is no canonical definition to state claims against.
-/

/-! ## A236891.P12827720139582982027

`A236893(A374007(n+1))`
-/

namespace A236891.P12827720139582982027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A374007 (n + 1)).toNat

end

end A236891.P12827720139582982027

/-! ## A236891.P360721533063314512

`A236893(A246172(n+1)+20)`
-/

namespace A236891.P360721533063314512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A246172 (n + 1) + 20).toNat

end

end A236891.P360721533063314512

/-! ## A236891.P1217936338142475552

`A236893(eq[7, A131818(n+1)])`
-/

namespace A236891.P1217936338142475552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236891.P1217936338142475552

/-! ## A236891.P6080223224846197019

`A236893(A000124(n+6)-(n+1))`
-/

namespace A236891.P6080223224846197019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A236891.P6080223224846197019

/-! ## A236891.P1672750566984440072

`A236893(A055999(n)+A005408(n+10))`
-/

namespace A236891.P1672750566984440072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A055999 n + A005408 (n + 10)).toNat

end

end A236891.P1672750566984440072

/-!
# A236892: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236892, there is no canonical definition to state claims against.
-/

/-! ## A236892.P13384464406196365810

`A236893(A374008(n+1))`
-/

namespace A236892.P13384464406196365810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A374008 (n + 1)).toNat

end

end A236892.P13384464406196365810

/-! ## A236892.P8330829722850290811

`A236893(A000124(n+6)+6)`
-/

namespace A236892.P8330829722850290811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A000124 (n + 6) + 6).toNat

end

end A236892.P8330829722850290811

/-! ## A236892.P6392088662669076399

`A236893(eq[8, A131818(n+1)])`
-/

namespace A236892.P6392088662669076399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236892.P6392088662669076399

/-! ## A236892.P12838102592108358667

`A236893(A000096(n+6)+1-n)`
-/

namespace A236892.P12838102592108358667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A000096 (n + 6) + 1 - (n : ℤ)).toNat

end

end A236892.P12838102592108358667

/-! ## A236892.P6929778765739718782

`A236893(A055999(n+4))`
-/

namespace A236892.P6929778765739718782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A055999 (n + 4)).toNat

end

end A236892.P6929778765739718782

/-!
# A236893: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock equal.

The programs for A236893, there is no canonical definition to state claims against.
-/

/-! ## A236893.P4036563979866121560

`xor(A237167(n+1), A295556(A288268(n)))`
-/

namespace A236893.P4036563979866121560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A237167 (n + 1)) (A295556 (A288268 n).toNat)

end

end A236893.P4036563979866121560

/-!
# A236894: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the upper median of every 2 X 2 subblock equal.

The programs for A236894, there is no canonical definition to state claims against.
-/

/-! ## A236894.P4409301850887310201

`A236902((n+1)²+n²)`
-/

namespace A236894.P4409301850887310201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 ((n + 1) ^ 2 + n ^ 2)

end

end A236894.P4409301850887310201

/-!
# A236895: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A236895, there is no canonical definition to state claims against.
-/

/-! ## A236895.P8364634829256268132

`A236902(∑[n]+1)`
-/

namespace A236895.P8364634829256268132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236895.P8364634829256268132

/-! ## A236895.P378792891123825112

`record[root(A236902(n+1), A013610(n))]`
-/

namespace A236895.P378792891123825112
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236902 (n + 1) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236895.P378792891123825112

/-! ## A236895.P417170028132085184

`record[gcd(A002262(n), A236902(n+1))]`
-/

namespace A236895.P417170028132085184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236902 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236895.P417170028132085184

/-! ## A236895.P13474431974223106238

`A236902(A000124(n))%A236896(n+1)`
-/

namespace A236895.P13474431974223106238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236902 (A000124 n).toNat) (A236896 (n + 1))

end

end A236895.P13474431974223106238

/-! ## A236895.P4278222704787018256

`or(A070536(n+1), A236902(A000124(n)))`
-/

namespace A236895.P4278222704787018256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070536 (n + 1)) (A236902 (A000124 n).toNat)

end

end A236895.P4278222704787018256

/-!
# A236896: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A236896, there is no canonical definition to state claims against.
-/

/-! ## A236896.P18327891308311944517

`A236902(∑[n+1]+2)`
-/

namespace A236896.P18327891308311944517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236896.P18327891308311944517

/-! ## A236896.P16333214389594557654

`record[root(A236902(n+2), A013610(n))]`
-/

namespace A236896.P16333214389594557654
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236902 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236896.P16333214389594557654

/-! ## A236896.P2782009614431687824

`record[gcd(A002262(n), A236902(n+2))]`
-/

namespace A236896.P2782009614431687824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236902 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236896.P2782009614431687824

/-! ## A236896.P10072297733641784124

`A236902(A000096(n+1))%A187422(n+1)`
-/

namespace A236896.P10072297733641784124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236902 (A000096 (n + 1)).toNat) (A187422 (n + 1))

end

end A236896.P10072297733641784124

/-! ## A236896.P13209171895774383360

`record[A236902(A000096(val(n+1, 2)+1))]`
-/

namespace A236896.P13209171895774383360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236896.P13209171895774383360

/-!
# A236897: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A236897, there is no canonical definition to state claims against.
-/

/-! ## A236897.P4721313279971165255

`A236902(∑[n+2]+4)`
-/

namespace A236897.P4721313279971165255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236897.P4721313279971165255

/-! ## A236897.P6046301259210482533

`lcm(A035214(n), A236902(A167614(n+1)))`
-/

namespace A236897.P6046301259210482533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035214 n) (A236902 (A167614 (n + 1)).toNat)

end

end A236897.P6046301259210482533

/-! ## A236897.P8733516664549616401

`or(A000038(n), A236902(A167614(n+1)))`
-/

namespace A236897.P8733516664549616401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A236902 (A167614 (n + 1)).toNat)

end

end A236897.P8733516664549616401

/-! ## A236897.P5467802507039619244

`A236902(A167614(n+1))%A236892(n+1)`
-/

namespace A236897.P5467802507039619244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236902 (A167614 (n + 1)).toNat) (A236892 (n + 1))

end

end A236897.P5467802507039619244

/-! ## A236897.P275632621702525629

`A236902(A167614(n+1))+A106404(2*n+3)`
-/

namespace A236897.P275632621702525629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A167614 (n + 1)).toNat + A106404 (2 * n + 3)

end

end A236897.P275632621702525629

/-!
# A236898: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A236898, there is no canonical definition to state claims against.
-/

/-! ## A236898.P9338141936156728530

`A236902(A374004(n+1))`
-/

namespace A236898.P9338141936156728530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A374004 (n + 1)).toNat

end

end A236898.P9338141936156728530

/-! ## A236898.P4875177633308228378

`A236902(A141214(n)+7)`
-/

namespace A236898.P4875177633308228378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A141214 n + 7).toNat

end

end A236898.P4875177633308228378

/-! ## A236898.P13633694395311394592

`A236902(A052905(n)+9)`
-/

namespace A236898.P13633694395311394592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A052905 n + 9).toNat

end

end A236898.P13633694395311394592

/-! ## A236898.P11113324991149770440

`A236902(A167614(n+2)+1)`
-/

namespace A236898.P11113324991149770440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A167614 (n + 2) + 1).toNat

end

end A236898.P11113324991149770440

/-! ## A236898.P7585654901198561398

`A236902(A155212(n)+5)`
-/

namespace A236898.P7585654901198561398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A155212 n + 5).toNat

end

end A236898.P7585654901198561398

/-!
# A236899: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A236899, there is no canonical definition to state claims against.
-/

/-! ## A236899.P4768692331484566136

`A236902(A374005(n+1))`
-/

namespace A236899.P4768692331484566136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A374005 (n + 1)).toNat

end

end A236899.P4768692331484566136

/-! ## A236899.P4737454338186091102

`A236902(A167499(n+3))`
-/

namespace A236899.P4737454338186091102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A167499 (n + 3)).toNat

end

end A236899.P4737454338186091102

/-! ## A236899.P17889293350297069857

`A236902(A155212(n)+13)`
-/

namespace A236899.P17889293350297069857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A155212 n + 13).toNat

end

end A236899.P17889293350297069857

/-! ## A236899.P7884544126109966564

`A236902(A167614(n+3)+2)`
-/

namespace A236899.P7884544126109966564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A167614 (n + 3) + 2).toNat

end

end A236899.P7884544126109966564

/-! ## A236899.P1689835639602212204

`A236902(A052905(n+1)+10)`
-/

namespace A236899.P1689835639602212204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A052905 (n + 1) + 10).toNat

end

end A236899.P1689835639602212204

