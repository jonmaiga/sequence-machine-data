import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B000.C053
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-! ## A236805.P3558263279382280357

`A236809(A141214(n+1))`
-/

namespace A236805.P3558263279382280357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236809 (A141214 (n + 1)).toNat

end

end A236805.P3558263279382280357

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

/-! ## A236815.P3277164813998792829

`A236819(A141214(n+1))`
-/

namespace A236815.P3277164813998792829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236819 (A141214 (n + 1)).toNat

end

end A236815.P3277164813998792829

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

/-!
# A236820: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A236820, there is no canonical definition to state claims against.
-/

/-! ## A236820.P11929162921667118352

`A236828(4*∑[n]+1)`
-/

namespace A236820.P11929162921667118352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A236820.P11929162921667118352

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

/-! ## A236824.P3714076266001525883

`A236828(A141214(n+1))`
-/

namespace A236824.P3714076266001525883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236828 (A141214 (n + 1)).toNat

end

end A236824.P3714076266001525883

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

/-! ## A236831.P14435786050094280149

`A319659(A383870(n)+2)`
-/

namespace A236831.P14435786050094280149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319659 (A383870 n + 2).toNat

end

end A236831.P14435786050094280149

/-! ## A236831.P14874571564508756515

`A083913(A023894(n)+A000322(n))`
-/

namespace A236831.P14874571564508756515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083913 (A023894 n + A000322 n).toNat

end

end A236831.P14874571564508756515

/-! ## A236831.P11288529979183938220

`A385149(n)%A276864(A177355(n+1))`
-/

namespace A236831.P11288529979183938220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385149 n) (A276864 (A177355 (n + 1)).toNat)

end

end A236831.P11288529979183938220

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

/-! ## A236833.P5246043340392180458

`A308662(gcd(A008472(2*n+5), A171188(n)))`
-/

namespace A236833.P5246043340392180458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308662 (Int.gcd (A008472 (2 * n + 5)) (A171188 n))

end

end A236833.P5246043340392180458

/-! ## A236833.P9988677827470112761

`A374683(A006530(n+5)%A228720(3*n+4))`
-/

namespace A236833.P9988677827470112761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 (Int.tmod (A006530 (n + 5)) (A228720 (3 * n + 4))).toNat

end

end A236833.P9988677827470112761

/-!
# A236834: Numbers that do not occur as results of "downward" remultiplication (N -> GF(2)[X]) of any number; numbers not present in A234741.

The programs for A236834, there is no canonical definition to state claims against.
-/

/-! ## A236834.P9809577886053307626

`comp[A236841(1+n)]`
-/

namespace A236834.P9809577886053307626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236841 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236834.P9809577886053307626

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

/-! ## A236837.P9898103594838039948

`A091703(A234742(n)%A235039(n))`
-/

namespace A236837.P9898103594838039948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (Int.tmod (A234742 n) (A235039 n)).toNat

end

end A236837.P9898103594838039948

/-! ## A236837.P8813571062606295401

`A234742(n%A010941(n))`
-/

namespace A236837.P8813571062606295401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (Int.tmod (n : ℤ) (A010941 n)).toNat

end

end A236837.P8813571062606295401

/-! ## A236837.P5935168362550594885

`A235042(n)%A010941(n)`
-/

namespace A236837.P5935168362550594885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235042 n) (A010941 n)

end

end A236837.P5935168362550594885

/-!
# A236838: Numbers whose binary representation encodes a polynomial over GF(2) with the property that at least one of its irreducible factors is encoded by a composite number.

The programs for A236838, there is no canonical definition to state claims against.
-/

/-! ## A236838.P18224929343773289441

`comp[A236850(1+n)]`
-/

namespace A236838.P18224929343773289441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236850 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236838.P18224929343773289441

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

The programs for A236840, the canonical program `A236840.P5330150570220508668` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236840 has offset 0).

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

The canonical program, it is in `Seq.B003.C003`.
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

/-! ## A236840.P1168561905545284994

`2*∑[char[comp[and(n-1, n)+n]]]`
-/

namespace A236840.P1168561905545284994
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (n : ℤ) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236840.P1168561905545284994

namespace A236840

/-- `2*∑[char[comp[and(n-1, n)+n]]]` -/
def P1168561905545284994.Spec : Prop :=
  ∀ n, (P1168561905545284994.a n : ℤ) = A236840 n

end A236840

/-! ## A236840.P14742765455899886444

`∑[1-Δ[xor(2*n-1, n)]%2]`
-/

namespace A236840.P14742765455899886444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * n : ℤ) - 1) (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236840.P14742765455899886444

namespace A236840

/-- `∑[1-Δ[xor(2*n-1, n)]%2]` -/
def P14742765455899886444.Spec : Prop :=
  ∀ n, P14742765455899886444.a n = A236840 n

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

/-! ## A236841.P342830301753452584

`comp[A236834(1+n)]`
-/

namespace A236841.P342830301753452584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236834 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236841.P342830301753452584

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

/-! ## A236841.P2785130036990313746

`comp[lt[A236836(n), n]]`
-/

namespace A236841.P2785130036990313746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A236841.P2785130036990313746

/-! ## A236841.P5791208073867935326

`comp[lt[A236837(n), n]]`
-/

namespace A236841.P5791208073867935326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A236841.P5791208073867935326

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

/-! ## A236842.P9467272624853976268

`comp[A236844(1+n)]`
-/

namespace A236842.P9467272624853976268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236844 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236842.P9467272624853976268

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

/-! ## A236844.P10396483281542285404

`comp[A236379(n)+n]`
-/

namespace A236844.P10396483281542285404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236844.P10396483281542285404

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

/-!
# A236848: Numbers that have at least one prime divisor encoding a reducible polynomial in ring GF(2)[X]; multiples of terms of A091209.

The programs for A236848, there is no canonical definition to state claims against.
-/

/-! ## A236848.P5949702124800568774

`comp[A236860(1+n)]`
-/

namespace A236848.P5949702124800568774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236848.P5949702124800568774

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

/-! ## A236850.P17388732853232886040

`comp[A236838(1+n)]`
-/

namespace A236850.P17388732853232886040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236838 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236850.P17388732853232886040

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

/-! ## A236851.P3872543581645464507

`A000027(n+1)-A309861(A355536(2*n+3))`
-/

namespace A236851.P3872543581645464507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A309861 (A355536 (2 * n + 3)).toNat

end

end A236851.P3872543581645464507

/-! ## A236851.P295854046114811787

`n+1-A385005(A369605(n))`
-/

namespace A236851.P295854046114811787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A385005 (A369605 n).toNat

end

end A236851.P295854046114811787

/-! ## A236851.P9075683642765129240

`and(n, A359081(A006881(n+1)))`
-/

namespace A236851.P9075683642765129240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A359081 (A006881 (n + 1)).toNat)

end

end A236851.P9075683642765129240

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

/-! ## A236853.P18094777627708365122

`char[fo[A236846(n)]]`
-/

namespace A236853.P18094777627708365122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (n : ℤ)) 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A236853.P18094777627708365122

/-! ## A236853.P13798958548181264876

`A165728(A310658(n+1))`
-/

namespace A236853.P13798958548181264876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165728 (A310658 (n + 1)).toNat

end

end A236853.P13798958548181264876

/-! ## A236853.P2458853378121263198

`A071028(A159020(A159020(n)))`
-/

namespace A236853.P2458853378121263198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A159020 (A159020 n).toNat).toNat

end

end A236853.P2458853378121263198

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

/-! ## A236854.P15392301424982835131

`A227413(A246377(1+n))`
-/

namespace A236854.P15392301424982835131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A246377 (1 + n)).toNat

end

end A236854.P15392301424982835131

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

/-! ## A236855.P14421960122302003089

`∑{digits}[A239903(n), #]`
-/

namespace A236855.P14421960122302003089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A236855.P14421960122302003089

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

/-!
# A236856: Partial sums of A003418 starting summing from A003418(1), with a(0) = 0.

The programs for A236856, the canonical program `A236856.P12242245037929288109` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236856 has offset 0).

The definition of A236856 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173185, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A236856.P12242245037929288109

`A173185(n)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A236856

/-- `A173185(n)-1` -/
def P12242245037929288109.Spec : Prop :=
  ∀ n, P12242245037929288109.a n = A236856 n

theorem P12242245037929288109.correct : P12242245037929288109.Spec := by
  intro n
  simp only [A236856]

end A236856

/-! ## A236856.P10234097469624727868

`∑[lcm(a(n-1), n)]` with `a(0)=0, a(1)=1`
-/

namespace A236856.P10234097469624727868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lcm (f1 (n - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236856.P10234097469624727868

namespace A236856

/-- `∑[lcm(a(n-1), n)]` -/
def P10234097469624727868.Spec : Prop :=
  ∀ n, (P10234097469624727868.a n : ℤ) = A236856 n

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

The programs for A236857, the canonical program `A236857.P7964098918235860549` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236857 has offset 0).

The definition of A236857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236857.P7964098918235860549

`∑[char[∑[lcm(n, a(n-1))]]]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A236857

/-- `∑[char[∑[lcm(n, a(n-1))]]]` -/
def P7964098918235860549.Spec : Prop :=
  ∀ n, (P7964098918235860549.a n : ℤ) = A236857 n

theorem P7964098918235860549.correct : P7964098918235860549.Spec := by
  intro n
  simp only [A236857]

end A236857

/-! ## A236857.P13735406120555881258

`fp[A173185(n)]`
-/

namespace A236857.P13735406120555881258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A236857.P13735406120555881258

namespace A236857

/-- `fp[A173185(n)]` -/
def P13735406120555881258.Spec : Prop :=
  ∀ n, (P13735406120555881258.a n : ℤ) = A236857 n

end A236857

/-! ## A236857.P2953181141517881826

`fp[A236856(n)+1]`
-/

namespace A236857.P2953181141517881826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A236857.P2953181141517881826

namespace A236857

/-- `fp[A236856(n)+1]` -/
def P2953181141517881826.Spec : Prop :=
  ∀ n, (P2953181141517881826.a n : ℤ) = A236857 n

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

/-! ## A236857.P11635536210245656746

`fp[A337108((n+2)!)]`
-/

namespace A236857.P11635536210245656746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (Nat.factorial (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A236857.P11635536210245656746

namespace A236857

/-- `fp[A337108((n+2)!)]` -/
def P11635536210245656746.Spec : Prop :=
  ∀ n, (P11635536210245656746.a n : ℤ) = A236857 n

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

/-! ## A236860.P3660155249243195318

`lt[A236852(n/2+n/2), n+1]`
-/

namespace A236860.P3660155249243195318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 (SequenceMachineLib.roundAway ((n : ℚ) / 2 + (n : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A236860.P3660155249243195318

/-! ## A236860.P7180645335223606647

`lt[A236852(n)², A400700(n)]`
-/

namespace A236860.P7180645335223606647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236860.P7180645335223606647

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

/-!
# A236861: Characteristic function of A236841 (A234741): a(n) = 1 if n is a result of downward remultiplication (N -> GF(2)[X]) of some number, 0 otherwise.

The programs for A236861, there is no canonical definition to state claims against.
-/

/-! ## A236861.P11425662055899295276

`char[A236841(1+n)]`
-/

namespace A236861.P11425662055899295276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236841 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A236861.P11425662055899295276

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

/-! ## A236861.P341633559419863767

`char[n-A236378(n)]`
-/

namespace A236861.P341633559419863767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A236378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A236861.P341633559419863767

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

/-! ## A236862.P1248255269025884279

`char[A236842(1+n)]`
-/

namespace A236862.P1248255269025884279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A236862.P1248255269025884279

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

/-! ## A236862.P7060865010620681363

`A236853(gcd(n, A236853(n)))`
-/

namespace A236862.P7060865010620681363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236853 (Int.gcd (n : ℤ) (A236853 n))

end

end A236862.P7060865010620681363

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

/-! ## A236862.P9474090047188101837

`char[n+A236379(n)]`
-/

namespace A236862.P9474090047188101837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A236379 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A236862.P9474090047188101837

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

/-! ## A236863.P8208862501724027774

`fp[A192607(n+1)]`
-/

namespace A236863.P8208862501724027774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A236863.P8208862501724027774

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

/-! ## A236863.P5167172600456111213

`n-∑[char[A272565(1+n)]]`
-/

namespace A236863.P5167172600456111213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A236863.P5167172600456111213

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

/-! ## A236864.P2134717789939143476

`∩[A008486(n), A301730(A380573(n+1))]`
-/

namespace A236864.P2134717789939143476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 (A380573 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236864.P2134717789939143476

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

/-! ## A236865.P7248261933367139332

`A236936(n+9)+A058348(A163511(n))`
-/

namespace A236865.P7248261933367139332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236936 (n + 9) + A058348 (A163511 n).toNat

end

end A236865.P7248261933367139332

/-!
# A236866: Positions of primes in A007775 (numbers not divisible by 2, 3 or 5).

The programs for A236866, the canonical program `A236866.P17788189984368847866` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236866 has offset 1).

The definition of A236866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236866.P17788189984368847866

`eq[1, ∑{e}[A007775(n+2), #]]+2`

The canonical program, it is in `Seq.B001.C010`.
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

/-! ## A236866.P3503847624753953124

`A250476(A181709(1+n))`
-/

namespace A236866.P3503847624753953124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250476 (A181709 (1 + n)).toNat

end

end A236866.P3503847624753953124

namespace A236866

/-- `A250476(A181709(1+n))` -/
def P3503847624753953124.Spec : Prop :=
  ∀ n, P3503847624753953124.a n = A236866 (n + 1)

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

/-! ## A236866.P3997238256478272726

`A379006(A090417(n+1))`
-/

namespace A236866.P3997238256478272726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379006 (A090417 (n + 1)).toNat

end

end A236866.P3997238256478272726

namespace A236866

/-- `A379006(A090417(n+1))` -/
def P3997238256478272726.Spec : Prop :=
  ∀ n, P3997238256478272726.a n = A236866 (n + 1)

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

/-! ## A236880.P17525294599569392857

`A236884(A141214(n+1))`
-/

namespace A236880.P17525294599569392857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236884 (A141214 (n + 1)).toNat

end

end A236880.P17525294599569392857

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

/-! ## A236889.P12939241010305793117

`A236893(A141214(n+1))`
-/

namespace A236889.P12939241010305793117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236893 (A141214 (n + 1)).toNat

end

end A236889.P12939241010305793117

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

/-! ## A236898.P17269239139531771362

`A236902(A141214(n+1))`
-/

namespace A236898.P17269239139531771362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A141214 (n + 1)).toNat

end

end A236898.P17269239139531771362

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

