import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B008.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

/-!
# A223800: Number of nX7 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223800, there is no canonical definition to state claims against.
-/

/-! ## A223800.P16839092328245001439

`A223801(A055999(n+4))`
-/

namespace A223800.P16839092328245001439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A055999 (n + 4)).toNat

end

end A223800.P16839092328245001439

/-!
# A223802: Number of 3Xn 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223802, there is no canonical definition to state claims against.
-/

/-! ## A223802.P9975110130979720118

`A223801(∑[n+2]+4)`
-/

namespace A223802.P9975110130979720118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223802.P9975110130979720118

/-!
# A223803: Number of 4Xn 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223803, there is no canonical definition to state claims against.
-/

/-! ## A223803.P5163645459820997195

`A223801(A141214(n)+7)`
-/

namespace A223803.P5163645459820997195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A141214 n + 7).toNat

end

end A223803.P5163645459820997195

/-!
# A223804: Number of 5Xn 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223804, there is no canonical definition to state claims against.
-/

/-! ## A223804.P10368372549012029067

`A223801(A155212(n)+13)`
-/

namespace A223804.P10368372549012029067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A155212 n + 13).toNat

end

end A223804.P10368372549012029067

/-!
# A223805: Number of 6Xn 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223805, there is no canonical definition to state claims against.
-/

/-! ## A223805.P1960367035999916578

`A223801(A166136(n+4))`
-/

namespace A223805.P1960367035999916578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A166136 (n + 4)).toNat

end

end A223805.P1960367035999916578

/-!
# A223807: Number of nX3 0..3 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223807, there is no canonical definition to state claims against.
-/

/-! ## A223807.P2843695489161663981

`A223811(∑[n+2]+4)`
-/

namespace A223807.P2843695489161663981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223807.P2843695489161663981

/-! ## A223807.P13385506164921046484

`record[A103452(n)*A223811(n+4)]`
-/

namespace A223807.P13385506164921046484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A223811 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223807.P13385506164921046484

/-!
# A223808: Number of nX4 0..3 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223808, there is no canonical definition to state claims against.
-/

/-! ## A223808.P1521637026975236086

`A223811(A141214(n)+7)`
-/

namespace A223808.P1521637026975236086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A141214 n + 7).toNat

end

end A223808.P1521637026975236086

/-! ## A223808.P12876153786847733355

`A223811(A141214(n+1))`
-/

namespace A223808.P12876153786847733355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A141214 (n + 1)).toNat

end

end A223808.P12876153786847733355

/-!
# A223809: Number of nX5 0..3 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223809, there is no canonical definition to state claims against.
-/

/-! ## A223809.P1441959775763612715

`A223811(A167499(n+3))`
-/

namespace A223809.P1441959775763612715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A167499 (n + 3)).toNat

end

end A223809.P1441959775763612715

/-! ## A223809.P16517167423786823204

`A223811(A374005(n+1))`
-/

namespace A223809.P16517167423786823204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A374005 (n + 1)).toNat

end

end A223809.P16517167423786823204

/-!
# A223810: Number of nX6 0..3 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223810, there is no canonical definition to state claims against.
-/

/-! ## A223810.P10193031723769328729

`A223811(A056115(n)+21)`
-/

namespace A223810.P10193031723769328729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A056115 n + 21).toNat

end

end A223810.P10193031723769328729

/-! ## A223810.P6188369914067977674

`A223811(A374007(n+1))`
-/

namespace A223810.P6188369914067977674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A374007 (n + 1)).toNat

end

end A223810.P6188369914067977674

/-!
# A223812: Number of nX3 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223812, there is no canonical definition to state claims against.
-/

/-! ## A223812.P17525721739506598939

`A223815(∑[n+3]+1)`
-/

namespace A223812.P17525721739506598939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223812.P17525721739506598939

/-! ## A223812.P8081391412447880433

`record[A223815(A198464(n+1))]`
-/

namespace A223812.P8081391412447880433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223812.P8081391412447880433

/-!
# A223813: Number of nX4 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223813, there is no canonical definition to state claims against.
-/

/-! ## A223813.P14138565754688214535

`A223815(∑[n+4]+3)`
-/

namespace A223813.P14138565754688214535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223813.P14138565754688214535

/-!
# A223814: Number of nX5 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223814, there is no canonical definition to state claims against.
-/

/-! ## A223814.P11908809534251597664

`A223815(Δ[A264443(n)])`
-/

namespace A223814.P11908809534251597664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (f1 (n + 1) - f1 n).toNat

end

end A223814.P11908809534251597664

/-!
# A223816: Number of 2Xn 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223816, there is no canonical definition to state claims against.
-/

/-! ## A223816.P10644467222513998788

`A223815(∑[n+1]+2)`
-/

namespace A223816.P10644467222513998788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223816.P10644467222513998788

/-! ## A223816.P12402576310299422493

`record[A223815(A129502(n+1)+2)]`
-/

namespace A223816.P12402576310299422493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A129502 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223816.P12402576310299422493

/-!
# A223817: Number of 3Xn 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223817, there is no canonical definition to state claims against.
-/

/-! ## A223817.P15568793446177445985

`A223815(∑[n+2]+4)`
-/

namespace A223817.P15568793446177445985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223817.P15568793446177445985

/-!
# A223818: Number of 4 X n 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223818, there is no canonical definition to state claims against.
-/

/-! ## A223818.P8920132862295343207

`A223815(A141214(n)+7)`
-/

namespace A223818.P8920132862295343207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A141214 n + 7).toNat

end

end A223818.P8920132862295343207

/-!
# A223819: Number of nX1 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223819, there is no canonical definition to state claims against.
-/

/-! ## A223819.P2982591576787325375

`A223160(n+1)%A223752(A000007(n)+n)`
-/

namespace A223819.P2982591576787325375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223160 (n + 1)) (A223752 (A000007 n + (n : ℤ)).toNat)

end

end A223819.P2982591576787325375

/-! ## A223819.P4303116588887097835

`A245134(∑[n+3]+1)`
-/

namespace A223819.P4303116588887097835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223819.P4303116588887097835

/-! ## A223819.P10603336616698984347

`sqrt(A223820(n+1))`
-/

namespace A223819.P10603336616698984347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223820 (n + 1) : ℝ)

end

end A223819.P10603336616698984347

/-! ## A223819.P3587464738789773062

`A223824(∑[n]+1)`
-/

namespace A223819.P3587464738789773062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223819.P3587464738789773062

/-!
# A223820: Number of nX3 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223820, there is no canonical definition to state claims against.
-/

/-! ## A223820.P2708830382241876170

`A223819(n+1)²`
-/

namespace A223820.P2708830382241876170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223819 (n + 1) ^ 2

end

end A223820.P2708830382241876170

/-! ## A223820.P15977561955818028430

`A245134(∑[n+3]+1)²`
-/

namespace A223820.P15977561955818028430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A223820.P15977561955818028430

/-! ## A223820.P9318664530731931874

`A245134(A034856(n+2))^2`
-/

namespace A223820.P9318664530731931874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A034856 (n + 2)).toNat ^ 2

end

end A223820.P9318664530731931874

/-! ## A223820.P15110843178798553865

`A223819(n+1)*A245134(∑[n+3]+1)`
-/

namespace A223820.P15110843178798553865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223819 (n + 1) * A245134 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223820.P15110843178798553865

/-! ## A223820.P17173284757520996005

`A223824(∑[n]+1)²`
-/

namespace A223820.P17173284757520996005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A223820.P17173284757520996005

/-!
# A223821: Number of nX4 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223821, there is no canonical definition to state claims against.
-/

/-! ## A223821.P10134088068523598095

`A223824(∑[n+3]+7)`
-/

namespace A223821.P10134088068523598095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223821.P10134088068523598095

/-!
# A223822: Number of nX5 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223822, there is no canonical definition to state claims against.
-/

/-! ## A223822.P5620835609734564967

`A223824(A167499(n+3))`
-/

namespace A223822.P5620835609734564967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A167499 (n + 3)).toNat

end

end A223822.P5620835609734564967

/-! ## A223822.P8478969191919714517

`A223824(A374005(n+1))`
-/

namespace A223822.P8478969191919714517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A374005 (n + 1)).toNat

end

end A223822.P8478969191919714517

/-!
# A223823: Number of nX6 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223823, there is no canonical definition to state claims against.
-/

/-! ## A223823.P10413873574357759083

`A223824(A166136(n+4))`
-/

namespace A223823.P10413873574357759083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A166136 (n + 4)).toNat

end

end A223823.P10413873574357759083

/-! ## A223823.P1537891590738035712

`A223824(A374007(n+1))`
-/

namespace A223823.P1537891590738035712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A374007 (n + 1)).toNat

end

end A223823.P1537891590738035712

/-!
# A223825: Number of n X n 0..2 arrays with rows and columns unimodal.

The programs for A223825, there is no canonical definition to state claims against.
-/

/-! ## A223825.P6621075303706942326

`A223831(∑[4*n]+1)`
-/

namespace A223825.P6621075303706942326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223825.P6621075303706942326

/-! ## A223825.P12898176332199690489

`record[A223831(A330613(n+1))]`
-/

namespace A223825.P12898176332199690489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223825.P12898176332199690489

/-! ## A223825.P6796881141155741467

`record[A223831(A286457(n+2))]`
-/

namespace A223825.P6796881141155741467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A286457 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223825.P6796881141155741467

/-!
# A223826: Number of nX3 0..2 arrays with rows and columns unimodal.

The programs for A223826, there is no canonical definition to state claims against.
-/

/-! ## A223826.P10743021411531129707

`A223831(∑[n+2]+4)`
-/

namespace A223826.P10743021411531129707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223826.P10743021411531129707

/-! ## A223826.P14533204974335842268

`record[root(A223831(n+4), A131112(n))]`
-/

namespace A223826.P14533204974335842268
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223831 (n + 4) : ℝ) ^ (1 / (A131112 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223826.P14533204974335842268

/-!
# A223827: Number of n X 4 0..2 arrays with rows and columns unimodal.

The programs for A223827, there is no canonical definition to state claims against.
-/

/-! ## A223827.P6792984404819682787

`A223831(∑[n+3]+7)`
-/

namespace A223827.P6792984404819682787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223827.P6792984404819682787

/-!
# A223828: Number of nX5 0..2 arrays with rows and columns unimodal.

The programs for A223828, there is no canonical definition to state claims against.
-/

/-! ## A223828.P16206183994980189705

`A223831(A374005(n+1))`
-/

namespace A223828.P16206183994980189705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A374005 (n + 1)).toNat

end

end A223828.P16206183994980189705

/-!
# A223829: Number of nX6 0..2 arrays with rows and columns unimodal.

The programs for A223829, there is no canonical definition to state claims against.
-/

/-! ## A223829.P1789572148012674554

`A223831(∑[n+5]+16)`
-/

namespace A223829.P1789572148012674554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223829.P1789572148012674554

/-!
# A223830: Number of nX7 0..2 arrays with rows and columns unimodal.

The programs for A223830, there is no canonical definition to state claims against.
-/

/-! ## A223830.P12158060551596829683

`A223831(A374008(n+1))`
-/

namespace A223830.P12158060551596829683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A374008 (n + 1)).toNat

end

end A223830.P12158060551596829683

/-!
# A223831: T(n,k)=Number of nXk 0..2 arrays with rows and columns unimodal.

The programs for A223831, there is no canonical definition to state claims against.
-/

/-! ## A223831.P13068671598300090708

`A004277(A223725(n+1))-A223742(n+1)`
-/

namespace A223831.P13068671598300090708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A223725 (n + 1)).toNat - A223742 (n + 1)

end

end A223831.P13068671598300090708

/-!
# A223832: Number of n X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223832, there is no canonical definition to state claims against.
-/

/-! ## A223832.P5900015430777848375

`A020699(n)-A073200(A036289(n))`
-/

namespace A223832.P5900015430777848375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n - A073200 (A036289 n).toNat

end

end A223832.P5900015430777848375

/-! ## A223832.P15995064531455624015

`A194959(3*n+1)+A002265(A010049(3*n+1))`
-/

namespace A223832.P15995064531455624015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (3 * n + 1) + A002265 (A010049 (3 * n + 1)).toNat

end

end A223832.P15995064531455624015

/-!
# A223833: Number of n X 3 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223833, the canonical program `A223833.P15028342129609267398` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223833 has offset 1).

The definition of A223833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223833.P15028342129609267398

`∑[∑[4*n+3]+4]+n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223833

/-- `∑[∑[4*n+3]+4]+n` -/
def P15028342129609267398.Spec : Prop :=
  ∀ n, (P15028342129609267398.a n : ℤ) = A223833 (n + 1)

theorem P15028342129609267398.correct : P15028342129609267398.Spec := by
  intro n
  simp only [A223833, Nat.add_sub_cancel]

end A223833

/-! ## A223833.P8078680680047206842

`ogf((7-6x+2x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A223833.P8078680680047206842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -6, 2, 1] [1, -4, 6, -4, 1] n

end

end A223833.P8078680680047206842

namespace A223833

/-- `ogf((7-6x+2x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P8078680680047206842.Spec : Prop :=
  ∀ n, P8078680680047206842.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P8498489763269037213

`∑[∑[a(n-1)+4]]-1` with `a(0)=8, a(1)=7`
-/

namespace A223833.P8498489763269037213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 7] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A223833.P8498489763269037213

namespace A223833

/-- `∑[∑[a(n-1)+4]]-1` -/
def P8498489763269037213.Spec : Prop :=
  ∀ n, P8498489763269037213.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P16636518207675149327

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=7, a(1)=22, a(2)=48, a(3)=89`
-/

namespace A223833.P16636518207675149327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 22, 48, 89] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A223833.P16636518207675149327

namespace A223833

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16636518207675149327.Spec : Prop :=
  ∀ n, P16636518207675149327.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P7512257753374288637

`∑[∑[A190035(n+1)+1]+1]`
-/

namespace A223833.P7512257753374288637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190035 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P7512257753374288637

namespace A223833

/-- `∑[∑[A190035(n+1)+1]+1]` -/
def P7512257753374288637.Spec : Prop :=
  ∀ n, P7512257753374288637.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P15097640257483627521

`Δ[A225894(n+1)+(1-n)²]`
-/

namespace A223833.P15097640257483627521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225894 (n + 1) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223833.P15097640257483627521

namespace A223833

/-- `Δ[A225894(n+1)+(1-n)²]` -/
def P15097640257483627521.Spec : Prop :=
  ∀ n, P15097640257483627521.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P5324567844071282217

`∑[A010000(n)+A002378(n+2)]`
-/

namespace A223833.P5324567844071282217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n + A002378 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P5324567844071282217

namespace A223833

/-- `∑[A010000(n)+A002378(n+2)]` -/
def P5324567844071282217.Spec : Prop :=
  ∀ n, P5324567844071282217.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P15637793614265212547

`∑[∑[record[A022998(n)+7]]]`
-/

namespace A223833.P15637793614265212547
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P15637793614265212547

namespace A223833

/-- `∑[∑[record[A022998(n)+7]]]` -/
def P15637793614265212547.Spec : Prop :=
  ∀ n, P15637793614265212547.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P12051170347376918398

`∑[A033816(n+1)-A028310(2*n)]`
-/

namespace A223833.P12051170347376918398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (n + 1) - A028310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P12051170347376918398

namespace A223833

/-- `∑[A033816(n+1)-A028310(2*n)]` -/
def P12051170347376918398.Spec : Prop :=
  ∀ n, P12051170347376918398.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P11737832249360735966

`∑[A167499(2*n)+A103517(n)]`
-/

namespace A223833.P11737832249360735966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (2 * n) + A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P11737832249360735966

namespace A223833

/-- `∑[A167499(2*n)+A103517(n)]` -/
def P11737832249360735966.Spec : Prop :=
  ∀ n, P11737832249360735966.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P2056897602248211895

`∑[A077169(2*n+3)]`
-/

namespace A223833.P2056897602248211895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P2056897602248211895

namespace A223833

/-- `∑[A077169(2*n+3)]` -/
def P2056897602248211895.Spec : Prop :=
  ∀ n, P2056897602248211895.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P14510044799671562998

`∑[∑[record[7-A009531(n)]]]`
-/

namespace A223833.P14510044799671562998
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A009531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P14510044799671562998

namespace A223833

/-- `∑[∑[record[7-A009531(n)]]]` -/
def P14510044799671562998.Spec : Prop :=
  ∀ n, P14510044799671562998.a n = A223833 (n + 1)

end A223833

/-!
# A223834: Number of n X 4 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223834, the canonical program `A223834.P10244681347192573641` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223834 has offset 1).

The definition of A223834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223834.P10345043563474710397

`ogf((11-9x-2x^2+9x^3+x^4-2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A223834.P10345043563474710397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -9, -2, 9, 1, -2] [1, -5, 10, -10, 5, -1] n

end

end A223834.P10345043563474710397

namespace A223834

/-- `ogf((11-9x-2x^2+9x^3+x^4-2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10345043563474710397.Spec : Prop :=
  ∀ n, P10345043563474710397.a n = A223834 (n + 1)

end A223834

/-! ## A223834.P10244681347192573641

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=11, a(1)=46, a(2)=118, a(3)=249, a(4)=471, a(5)=824`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223834

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10244681347192573641.Spec : Prop :=
  ∀ n, P10244681347192573641.a n = A223834 (n + 1)

theorem P10244681347192573641.correct : P10244681347192573641.Spec := by
  intro n
  simp only [A223834, Nat.add_sub_cancel]

end A223834

/-! ## A223834.P6397547356261656284

`A223838(∑[n+4]+3)`
-/

namespace A223834.P6397547356261656284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223834.P6397547356261656284

namespace A223834

/-- `A223838(∑[n+4]+3)` -/
def P6397547356261656284.Spec : Prop :=
  ∀ n, P6397547356261656284.a n = A223834 (n + 1)

end A223834

/-!
# A223835: Number of n X 5 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223835, the canonical program `A223835.P3380088239128864475` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223835 has offset 1).

The definition of A223835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223835.P3380088239128864475

`ogf((16-10x-21x^2+36x^3+9x^4-18x^5+2x^6+2x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223835

/-- `ogf((16-10x-21x^2+36x^3+9x^4-18x^5+2x^6+2x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P3380088239128864475.Spec : Prop :=
  ∀ n, P3380088239128864475.a n = A223835 (n + 1)

theorem P3380088239128864475.correct : P3380088239128864475.Spec := by
  intro n
  simp only [A223835, Nat.add_sub_cancel]

end A223835

/-! ## A223835.P1403607562366592721

`A223838(∑[n+5]+6)`
-/

namespace A223835.P1403607562366592721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223835.P1403607562366592721

namespace A223835

/-- `A223838(∑[n+5]+6)` -/
def P1403607562366592721.Spec : Prop :=
  ∀ n, P1403607562366592721.a n = A223835 (n + 1)

end A223835

/-!
# A223836: Number of n X 6 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223836, the canonical program `A223836.P13656025321720104169` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223836 has offset 1).

The definition of A223836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223836.P13656025321720104169

`ogf((22-6x-71x^2+103x^3+35x^4-77x^5+10x^6+22x^7-4x^8-2x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223836

/-- `ogf((22-6x-71x^2+103x^3+35x^4-77x^5+10x^6+22x^7-4x^8-2x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P13656025321720104169.Spec : Prop :=
  ∀ n, P13656025321720104169.a n = A223836 (n + 1)

theorem P13656025321720104169.correct : P13656025321720104169.Spec := by
  intro n
  simp only [A223836, Nat.add_sub_cancel]

end A223836

/-! ## A223836.P1076993887391536059

`A223838(A052905(3+n))`
-/

namespace A223836.P1076993887391536059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A052905 (3 + n)).toNat

end

end A223836.P1076993887391536059

namespace A223836

/-- `A223838(A052905(3+n))` -/
def P1076993887391536059.Spec : Prop :=
  ∀ n, P1076993887391536059.a n = A223836 (n + 1)

end A223836

/-!
# A223837: Number of n X 7 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223837, the canonical program `A223837.P10893312191614479683` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223837 has offset 1).

The definition of A223837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223837.P10893312191614479683

`ogf((29+7x-174x^2+238x^3+109x^4-256x^5+45x^6+111x^7-27x^8-26x^9+6x^10+2x^11)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223837

/-- `ogf((29+7x-174x^2+238x^3+109x^4-256x^5+45x^6+111x^7-27x^8-26x^9+6x^10+2x^11)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P10893312191614479683.Spec : Prop :=
  ∀ n, P10893312191614479683.a n = A223837 (n + 1)

theorem P10893312191614479683.correct : P10893312191614479683.Spec := by
  intro n
  simp only [A223837, Nat.add_sub_cancel]

end A223837

/-! ## A223837.P1049704078498761882

`A223838(C(n+7, 2)+n+1)`
-/

namespace A223837.P1049704078498761882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (Nat.choose (n + 7) 2 + n + 1)

end

end A223837.P1049704078498761882

namespace A223837

/-- `A223838(C(n+7, 2)+n+1)` -/
def P1049704078498761882.Spec : Prop :=
  ∀ n, P1049704078498761882.a n = A223837 (n + 1)

end A223837

/-!
# A223838: T(n,k) = number of n X k 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223838, there is no canonical definition to state claims against.
-/

/-! ## A223838.P10775249391949021579

`A224146(n+1)+A016389(A022166(n))`
-/

namespace A223838.P10775249391949021579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) + A016389 (A022166 n).toNat

end

end A223838.P10775249391949021579

/-! ## A223838.P1176497139429451315

`A224146(n+1)+A016389(A027336(n))`
-/

namespace A223838.P1176497139429451315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) + A016389 (A027336 n).toNat

end

end A223838.P1176497139429451315

/-! ## A223838.P15553693849170738955

`A224146(n+1)+A016389(A176561(n))`
-/

namespace A223838.P15553693849170738955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) + A016389 (A176561 n).toNat

end

end A223838.P15553693849170738955

/-! ## A223838.P14711384269312247276

`A224146(n+1)-A014707(A022171(n))`
-/

namespace A223838.P14711384269312247276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) - A014707 (A022171 n).toNat

end

end A223838.P14711384269312247276

/-! ## A223838.P7639510391211840319

`A224146(n+1)-A025465(A023105(n))`
-/

namespace A223838.P7639510391211840319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) - A025465 (A023105 n).toNat

end

end A223838.P7639510391211840319

/-!
# A223839: Number of 3 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223839, the canonical program `A223839.P356118454161723090` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223839 has offset 1).

The definition of A223839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223839.P356118454161723090

`ogf((4-12x+20x^2-22x^3+17x^4-8x^5+2x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223839

/-- `ogf((4-12x+20x^2-22x^3+17x^4-8x^5+2x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P356118454161723090.Spec : Prop :=
  ∀ n, P356118454161723090.a n = A223839 (n + 1)

theorem P356118454161723090.correct : P356118454161723090.Spec := by
  intro n
  simp only [A223839, Nat.add_sub_cancel]

end A223839

/-! ## A223839.P6334145725277075794

`A223838(∑[n+2]+4)`
-/

namespace A223839.P6334145725277075794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223839.P6334145725277075794

namespace A223839

/-- `A223838(∑[n+2]+4)` -/
def P6334145725277075794.Spec : Prop :=
  ∀ n, P6334145725277075794.a n = A223839 (n + 1)

end A223839

/-!
# A223840: Number of 4 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223840, the canonical program `A223840.P186399232761592509` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223840 has offset 1).

The definition of A223840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223840.P186399232761592509

`ogf((5-20x+44x^2-72x^3+89x^4-70x^5+28x^6-4x^7+4x^8-4x^9+x^10)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223840

/-- `ogf((5-20x+44x^2-72x^3+89x^4-70x^5+28x^6-4x^7+4x^8-4x^9+x^10)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))` -/
def P186399232761592509.Spec : Prop :=
  ∀ n, P186399232761592509.a n = A223840 (n + 1)

theorem P186399232761592509.correct : P186399232761592509.Spec := by
  intro n
  simp only [A223840, Nat.add_sub_cancel]

end A223840

/-! ## A223840.P17614591785301822680

`A223838(∑[n+3]+7)`
-/

namespace A223840.P17614591785301822680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223840.P17614591785301822680

namespace A223840

/-- `A223838(∑[n+3]+7)` -/
def P17614591785301822680.Spec : Prop :=
  ∀ n, P17614591785301822680.a n = A223840 (n + 1)

end A223840

/-!
# A223841: Number of 5 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223841, there is no canonical definition to state claims against.
-/

/-! ## A223841.P7361090076997377912

`A223838(C(n+5, 2)+5)`
-/

namespace A223841.P7361090076997377912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (Nat.choose (n + 5) 2 + 5)

end

end A223841.P7361090076997377912

/-!
# A223842: Number of 6 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223842, there is no canonical definition to state claims against.
-/

/-! ## A223842.P6625365878991391382

`A223838(∑[n+5]+16)`
-/

namespace A223842.P6625365878991391382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223842.P6625365878991391382

/-!
# A223843: Number of 7 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223843, there is no canonical definition to state claims against.
-/

/-! ## A223843.P6066620620989466254

`A223838(A302537(n)+27)`
-/

namespace A223843.P6066620620989466254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A302537 n + 27).toNat

end

end A223843.P6066620620989466254

/-!
# A223844: Number of n X n 0..3 arrays with rows and columns unimodal.

The programs for A223844, there is no canonical definition to state claims against.
-/

/-! ## A223844.P18276811593449128988

`A223850(∑[4*n]+1)`
-/

namespace A223844.P18276811593449128988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223844.P18276811593449128988

/-!
# A223845: Number of nX3 0..3 arrays with rows and columns unimodal.

The programs for A223845, there is no canonical definition to state claims against.
-/

/-! ## A223845.P8300109551582435126

`A223850(∑[n+2]+4)`
-/

namespace A223845.P8300109551582435126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223845.P8300109551582435126

/-!
# A223846: Number of nX4 0..3 arrays with rows and columns unimodal.

The programs for A223846, there is no canonical definition to state claims against.
-/

/-! ## A223846.P17145870839261089494

`A223850(A374004(n+1))`
-/

namespace A223846.P17145870839261089494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A374004 (n + 1)).toNat

end

end A223846.P17145870839261089494

/-! ## A223846.P11209956266804351105

`A223850(A141214(n+1))`
-/

namespace A223846.P11209956266804351105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A141214 (n + 1)).toNat

end

end A223846.P11209956266804351105

/-!
# A223847: Number of nX5 0..3 arrays with rows and columns unimodal.

The programs for A223847, there is no canonical definition to state claims against.
-/

/-! ## A223847.P10214148865176557254

`A223850(A374005(n+1))`
-/

namespace A223847.P10214148865176557254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A374005 (n + 1)).toNat

end

end A223847.P10214148865176557254

/-!
# A223848: Number of nX6 0..3 arrays with rows and columns unimodal.

The programs for A223848, there is no canonical definition to state claims against.
-/

/-! ## A223848.P14614680809245482278

`A223850(A374007(n+1))`
-/

namespace A223848.P14614680809245482278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A374007 (n + 1)).toNat

end

end A223848.P14614680809245482278

/-!
# A223849: Number of nX7 0..3 arrays with rows and columns unimodal.

The programs for A223849, there is no canonical definition to state claims against.
-/

/-! ## A223849.P15885143120749000878

`A223850(A374008(n+1))`
-/

namespace A223849.P15885143120749000878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A374008 (n + 1)).toNat

end

end A223849.P15885143120749000878

/-!
# A223851: Poly-Cauchy numbers c_4^(-n).

The programs for A223851, the canonical program `A223851.P6292542752755418290` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223851 has offset 1).

The definition of A223851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223851.P6292542752755418290

`5^(n+1)+11*3^(n+1)-3*2^(2*(n+1)+1)-3*2^(n+2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223851

/-- `5^(n+1)+11*3^(n+1)-3*2^(2*(n+1)+1)-3*2^(n+2)` -/
def P6292542752755418290.Spec : Prop :=
  ∀ n, P6292542752755418290.a n = A223851 (n + 1)

theorem P6292542752755418290.correct : P6292542752755418290.Spec := by
  intro n
  simp only [A223851, Nat.add_sub_cancel]

end A223851

/-! ## A223851.P10112661994639781484

`ogf((2-24x+76x^2)/(1-14x+71x^2-154x^3+120x^4))`
-/

namespace A223851.P10112661994639781484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -24, 76] [1, -14, 71, -154, 120] n

end

end A223851.P10112661994639781484

namespace A223851

/-- `ogf((2-24x+76x^2)/(1-14x+71x^2-154x^3+120x^4))` -/
def P10112661994639781484.Spec : Prop :=
  ∀ n, P10112661994639781484.a n = A223851 (n + 1)

end A223851

/-!
# A223852: Poly-Cauchy numbers c_5^(-n).

The programs for A223852, there is no canonical definition to state claims against.
-/

/-! ## A223852.P3531313913609605772

`A383049(A167499(n+5))`
-/

namespace A223852.P3531313913609605772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (A167499 (n + 5)).toNat

end

end A223852.P3531313913609605772

/-!
# A223853: a(n) = ceiling(li(2*2^n) - li(2^n)) - (pi(2*2^n) - pi(2^n)) with li(x) the logarithmic integral and pi(x) the prime counting function.

The programs for A223853, there is no canonical definition to state claims against.
-/

/-! ## A223853.P7803904626429236023

`A223900(n+1)-A036378(n+1)`
-/

namespace A223853.P7803904626429236023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223900 (n + 1) - A036378 (n + 1)

end

end A223853.P7803904626429236023

/-! ## A223853.P15373710455176098049

`A223900(n+1)-Δ[A007053(n+1)]`
-/

namespace A223853.P15373710455176098049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223900 (n + 1) - (f1 (n + 1) - f1 n)

end

end A223853.P15373710455176098049

/-! ## A223853.P7450796216861660437

`A223900(n+1)-A162145(A065475(n+1))`
-/

namespace A223853.P7450796216861660437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223900 (n + 1) - A162145 (A065475 (n + 1)).toNat

end

end A223853.P7450796216861660437

/-! ## A223853.P10862539657842263758

`A223900(A254667(n+1))-A162145(n+2)`
-/

namespace A223853.P10862539657842263758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223900 (A254667 (n + 1)).toNat - A162145 (n + 2)

end

end A223853.P10862539657842263758

/-! ## A223853.P14452529887074419242

`A108955(2^(n+1))+1-A036378(n+1)`
-/

namespace A223853.P14452529887074419242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108955 (2 ^ (n + 1)) + 1 - A036378 (n + 1)

end

end A223853.P14452529887074419242

/-!
# A223858: Number of n X n 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223858, there is no canonical definition to state claims against.
-/

/-! ## A223858.P1398932859055176240

`A223864(∑[4*n]+1)`
-/

namespace A223858.P1398932859055176240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223858.P1398932859055176240

/-! ## A223858.P6016973379027542045

`record[A003982(n)*A223864(n+1)]`
-/

namespace A223858.P6016973379027542045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223858.P6016973379027542045

/-! ## A223858.P13057759087865775070

`record[gcd(A049581(n), A223864(n+1))]`
-/

namespace A223858.P13057759087865775070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A223864 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223858.P13057759087865775070

/-! ## A223858.P5843260274060500378

`record[A223864(A001844(n-3*floor((n+1)/4)))]`
-/

namespace A223858.P5843260274060500378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A001844 ((n : ℤ) - 3 * ⌊(n + 1 : ℚ) / 4⌋).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223858.P5843260274060500378

/-!
# A223859: Number of n X 3 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223859, the canonical program `A223859.P15689238116092090095` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223859 has offset 1).

The definition of A223859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223859.P15689238116092090095

`ogf((50+184x+294x^2+139x^3-59x^4+165x^5-117x^6+66x^7-18x^8+2x^9)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A223859

/-- `ogf((50+184x+294x^2+139x^3-59x^4+165x^5-117x^6+66x^7-18x^8+2x^9)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))` -/
def P15689238116092090095.Spec : Prop :=
  ∀ n, P15689238116092090095.a n = A223859 (n + 1)

theorem P15689238116092090095.correct : P15689238116092090095.Spec := by
  intro n
  simp only [A223859, Nat.add_sub_cancel]

end A223859

/-! ## A223859.P14354589878883041514

`A223864(∑[n+3]+1)`
-/

namespace A223859.P14354589878883041514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223859.P14354589878883041514

namespace A223859

/-- `A223864(∑[n+3]+1)` -/
def P14354589878883041514.Spec : Prop :=
  ∀ n, P14354589878883041514.a n = A223859 (n + 1)

end A223859

/-!
# A223860: Number of n X 4 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223860, there is no canonical definition to state claims against.
-/

/-! ## A223860.P11000921327353412048

`A223864(A141214(n+1))`
-/

namespace A223860.P11000921327353412048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A141214 (n + 1)).toNat

end

end A223860.P11000921327353412048

/-!
# A223861: Number of nX5 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223861, there is no canonical definition to state claims against.
-/

/-! ## A223861.P13603197732834860767

`A223864(Δ[A264443(n)])`
-/

namespace A223861.P13603197732834860767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (f1 (n + 1) - f1 n).toNat

end

end A223861.P13603197732834860767

/-!
# A223862: Number of nX6 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223862, there is no canonical definition to state claims against.
-/

/-! ## A223862.P14960977189677449746

`A223864(eq[3, A219347(n)])`
-/

namespace A223862.P14960977189677449746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223862.P14960977189677449746

/-!
# A223863: Number of nX7 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223863, there is no canonical definition to state claims against.
-/

/-! ## A223863.P11050946573772010320

`A223864(A055999(n+4))`
-/

namespace A223863.P11050946573772010320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A055999 (n + 4)).toNat

end

end A223863.P11050946573772010320

/-!
# A223864: T(n,k)=Number of nXk 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223864, there is no canonical definition to state claims against.
-/

/-! ## A223864.P1912605510210922221

`A273943(A224173(n+1)+A223987(n+1))`
-/

namespace A223864.P1912605510210922221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A224173 (n + 1) + A223987 (n + 1)).toNat

end

end A223864.P1912605510210922221

/-! ## A223864.P10407087383331935389

`A224173(n+1)+A001281(A223987(n+1)-A224173(n+1))`
-/

namespace A223864.P10407087383331935389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (n + 1) + A001281 (A223987 (n + 1) - A224173 (n + 1)).toNat

end

end A223864.P10407087383331935389

/-! ## A223864.P9585522778754811863

`A224173(n+1)+A004525(A223987(n+1)-A224173(n+1))`
-/

namespace A223864.P9585522778754811863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (n + 1) + A004525 (A223987 (n + 1) - A224173 (n + 1)).toNat

end

end A223864.P9585522778754811863

/-! ## A223864.P2391296190090922628

`A224173(n+1)+A004526(A223987(n+1)-A224173(n+1))`
-/

namespace A223864.P2391296190090922628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (n + 1) + A004526 (A223987 (n + 1) - A224173 (n + 1)).toNat

end

end A223864.P2391296190090922628

/-! ## A223864.P18148849321025070506

`A014682(A224173(n+1)+A223987(n+1))`
-/

namespace A223864.P18148849321025070506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A224173 (n + 1) + A223987 (n + 1)).toNat

end

end A223864.P18148849321025070506

/-!
# A223865: Number of 2Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223865, there is no canonical definition to state claims against.
-/

/-! ## A223865.P15882371739440309423

`A224190(∑[n+2]+4)`
-/

namespace A223865.P15882371739440309423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223865.P15882371739440309423

/-! ## A223865.P7426318641816240551

`A223987(∑[n+1]+2)`
-/

namespace A223865.P7426318641816240551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223865.P7426318641816240551

/-! ## A223865.P12363672270442545575

`A223864(∑[n+1]+2)`
-/

namespace A223865.P12363672270442545575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223865.P12363672270442545575

/-! ## A223865.P590666229770724088

`A224173(∑[n+1]+2)`
-/

namespace A223865.P590666229770724088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223865.P590666229770724088

/-!
# A223866: Number of 3Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223866, there is no canonical definition to state claims against.
-/

/-! ## A223866.P13896133535697780515

`A223864(∑[n+2]+4)`
-/

namespace A223866.P13896133535697780515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223866.P13896133535697780515

/-!
# A223867: Number of 4Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223867, there is no canonical definition to state claims against.
-/

/-! ## A223867.P6095031017088720679

`A223864(A141214(n)+7)`
-/

namespace A223867.P6095031017088720679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A141214 n + 7).toNat

end

end A223867.P6095031017088720679

/-!
# A223868: Number of 5Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223868, there is no canonical definition to state claims against.
-/

/-! ## A223868.P17046435726314627937

`A223864(A167499(n+3))`
-/

namespace A223868.P17046435726314627937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A167499 (n + 3)).toNat

end

end A223868.P17046435726314627937

/-!
# A223869: Number of 6Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223869, there is no canonical definition to state claims against.
-/

/-! ## A223869.P5343300422256066089

`A223864(A056115(n)+21)`
-/

namespace A223869.P5343300422256066089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A056115 n + 21).toNat

end

end A223869.P5343300422256066089

/-!
# A223870: Number of 7Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223870, there is no canonical definition to state claims against.
-/

/-! ## A223870.P13594394551777500113

`A223864(A056119(n)+28)`
-/

namespace A223870.P13594394551777500113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A056119 n + 28).toNat

end

end A223870.P13594394551777500113

/-!
# A223871: Number of n X 3 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223871, there is no canonical definition to state claims against.
-/

/-! ## A223871.P14032126815870819005

`A223876(∑[n+3]+1)`
-/

namespace A223871.P14032126815870819005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223871.P14032126815870819005

/-!
# A223872: Number of nX4 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223872, there is no canonical definition to state claims against.
-/

/-! ## A223872.P18144633234395747552

`A223876(A141214(n+1))`
-/

namespace A223872.P18144633234395747552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A141214 (n + 1)).toNat

end

end A223872.P18144633234395747552

/-!
# A223873: Number of nX5 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223873, there is no canonical definition to state claims against.
-/

/-! ## A223873.P7385407136161132644

`A223876(Δ[A264443(n)])`
-/

namespace A223873.P7385407136161132644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (f1 (n + 1) - f1 n).toNat

end

end A223873.P7385407136161132644

/-!
# A223874: Number of nX6 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223874, there is no canonical definition to state claims against.
-/

/-! ## A223874.P17795226320541158645

`A223876(A052905(n+3))`
-/

namespace A223874.P17795226320541158645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A052905 (n + 3)).toNat

end

end A223874.P17795226320541158645

/-!
# A223875: Number of nX7 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223875, there is no canonical definition to state claims against.
-/

/-! ## A223875.P742330917388313220

`A223876(A168106(n)-6)`
-/

namespace A223875.P742330917388313220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A168106 n - 6).toNat

end

end A223875.P742330917388313220

/-!
# A223877: Number of 3Xn 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223877, there is no canonical definition to state claims against.
-/

/-! ## A223877.P12777586720543492310

`A223876(∑[n+2]+4)`
-/

namespace A223877.P12777586720543492310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223877.P12777586720543492310

/-!
# A223878: Number of 4Xn 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223878, there is no canonical definition to state claims against.
-/

/-! ## A223878.P1424831272922287948

`A223876(A141214(n)+7)`
-/

namespace A223878.P1424831272922287948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A141214 n + 7).toNat

end

end A223878.P1424831272922287948

/-!
# A223879: Number of 5Xn 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223879, there is no canonical definition to state claims against.
-/

/-! ## A223879.P12272697857397587780

`A223876(A167499(n+3))`
-/

namespace A223879.P12272697857397587780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A167499 (n + 3)).toNat

end

end A223879.P12272697857397587780

/-!
# A223880: Number of 6Xn 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223880, there is no canonical definition to state claims against.
-/

/-! ## A223880.P6954663800445863437

`A223876(A166136(n+4))`
-/

namespace A223880.P6954663800445863437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A166136 (n + 4)).toNat

end

end A223880.P6954663800445863437

/-!
# A223881: Denominators in the expression m!/(prime(m-1)+1) for m > 1 such that this expression is not an integer.

The programs for A223881, there is no canonical definition to state claims against.
-/

/-! ## A223881.P16088596163110770070

`A023509(A225517(1+n)-1)`
-/

namespace A223881.P16088596163110770070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023509 (A225517 (1 + n) - 1).toNat

end

end A223881.P16088596163110770070

/-!
# A223882: Number of n X 2 0..2 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223882, there is no canonical definition to state claims against.
-/

/-! ## A223882.P2180089285441630357

`A223885(∑[n+1]+2)`
-/

namespace A223882.P2180089285441630357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223882.P2180089285441630357

/-! ## A223882.P14030036106765138619

`A223892(∑[n+1]+2)`
-/

namespace A223882.P14030036106765138619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223882.P14030036106765138619

/-! ## A223882.P16689390897533155388

`record[A010054(n)*A223885(n+2)]`
-/

namespace A223882.P16689390897533155388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223882.P16689390897533155388

/-! ## A223882.P14562125931592943072

`record[A223885(A133263(val(n+1, 2)+1))]`
-/

namespace A223882.P14562125931592943072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223882.P14562125931592943072

/-! ## A223882.P14444946890141503779

`record[A223885(n+3)/A265981(n+1)]`
-/

namespace A223882.P14444946890141503779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223885 (n + 3) : ℚ) / (A265981 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223882.P14444946890141503779

/-!
# A223883: Number of nX3 0..2 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223883, there is no canonical definition to state claims against.
-/

/-! ## A223883.P10290019112425897340

`A223885(∑[n+2]+4)`
-/

namespace A223883.P10290019112425897340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223883.P10290019112425897340

/-! ## A223883.P7353757014814428860

`record[A100218(n)*A223885(n+4)]`
-/

namespace A223883.P7353757014814428860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n * A223885 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223883.P7353757014814428860

/-! ## A223883.P12738350471827488939

`record[gcd(A072024(n), A223885(n+4))]`
-/

namespace A223883.P12738350471827488939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072024 n) (A223885 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223883.P12738350471827488939

/-!
# A223884: Number of nX4 0..2 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223884, there is no canonical definition to state claims against.
-/

/-! ## A223884.P9389123190028897004

`A223885(∑[n+3]+7)`
-/

namespace A223884.P9389123190028897004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223884.P9389123190028897004

/-! ## A223884.P8686568037991034888

`record[A223885(A186350(2*(n+2)))]`
-/

namespace A223884.P8686568037991034888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (A186350 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223884.P8686568037991034888

/-! ## A223884.P11805653828202606059

`record[A223885(A141214(∑[(-1)^(n%3)]))]`
-/

namespace A223884.P11805653828202606059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (A141214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223884.P11805653828202606059

/-!
# A223885: T(n,k)=Number of nXk 0..2 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223885, there is no canonical definition to state claims against.
-/

/-! ## A223885.P16738955612815784024

`A223892(n+1)-A185284(A000010(3*n+1))`
-/

namespace A223885.P16738955612815784024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (n + 1) - A185284 (A000010 (3 * n + 1)).toNat

end

end A223885.P16738955612815784024

/-! ## A223885.P11325902168497981556

`A223892(n+1)-A054896(A014378(n))`
-/

namespace A223885.P11325902168497981556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (n + 1) - A054896 (A014378 n).toNat

end

end A223885.P11325902168497981556

/-! ## A223885.P9966315316096066381

`A223892(n+1)-A185284(A008486(n))`
-/

namespace A223885.P9966315316096066381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (n + 1) - A185284 (A008486 n).toNat

end

end A223885.P9966315316096066381

/-! ## A223885.P17965766850151447641

`A223892(n+1)-A185284(A008585(n))`
-/

namespace A223885.P17965766850151447641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (n + 1) - A185284 (A008585 n).toNat

end

end A223885.P17965766850151447641

/-!
# A223887: Number of 4-colored labeled graphs on n vertices.

The programs for A223887, there is no canonical definition to state claims against.
-/

/-! ## A223887.P15487053977988173623

`A322280(eq[4, row(n)-col(n)])`
-/

namespace A223887.P15487053977988173623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223887.P15487053977988173623

/-! ## A223887.P14297907727299289825

`record[A322280(A052905(n))]`
-/

namespace A223887.P14297907727299289825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223887.P14297907727299289825

/-!
# A223888: Composite odious numbers (A000069) having no proper odious divisors greater than 1.

The programs for A223888, there is no canonical definition to state claims against.
-/

/-! ## A223888.P3945907811796218948

`∩[A230213(n+1), A390760(n+1)]`
-/

namespace A223888.P3945907811796218948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223888.P3945907811796218948

/-! ## A223888.P1803881092660151993

`∩[A151991(n+1), A230213(n+1)]`
-/

namespace A223888.P1803881092660151993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223888.P1803881092660151993

/-!
# A223889: The number of connected components of size > 1 over all simple labeled graphs on n nodes.

The programs for A223889, there is no canonical definition to state claims against.
-/

/-! ## A223889.P10608031922104354047

`A010078(A327078(n))-1`
-/

namespace A223889.P10608031922104354047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A327078 n).toNat - 1

end

end A223889.P10608031922104354047

/-! ## A223889.P17096418861207522840

`∑[∑[A072750(A113375(n))]]`
-/

namespace A223889.P17096418861207522840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072750 (A113375 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223889.P17096418861207522840

/-!
# A223890: Number of n X 3 0..2 arrays with row sums and column sums unimodal.

The programs for A223890, there is no canonical definition to state claims against.
-/

/-! ## A223890.P1064115407719299027

`A223892(∑[n+2]+4)`
-/

namespace A223890.P1064115407719299027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223890.P1064115407719299027

/-!
# A223891: Number of nX4 0..2 arrays with row sums and column sums unimodal.

The programs for A223891, there is no canonical definition to state claims against.
-/

/-! ## A223891.P8764062765232018613

`A223892(∑[n+3]+7)`
-/

namespace A223891.P8764062765232018613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223891.P8764062765232018613

/-! ## A223891.P5652266348035160898

`record[A223892(A186350(2*(n+2)))]`
-/

namespace A223891.P5652266348035160898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (A186350 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223891.P5652266348035160898

/-!
# A223892: T(n,k)=Number of nXk 0..2 arrays with row sums and column sums unimodal.

The programs for A223892, there is no canonical definition to state claims against.
-/

/-! ## A223892.P17999571206931450586

`A223885(n+1)+A185284(A000010(3*n+1))`
-/

namespace A223892.P17999571206931450586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (n + 1) + A185284 (A000010 (3 * n + 1)).toNat

end

end A223892.P17999571206931450586

/-! ## A223892.P18426442007048946914

`A223885(n+1)+A054896(A014378(n))`
-/

namespace A223892.P18426442007048946914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (n + 1) + A054896 (A014378 n).toNat

end

end A223892.P18426442007048946914

/-! ## A223892.P15380990795873368861

`A223885(n+1)+A185284(A008486(n))`
-/

namespace A223892.P15380990795873368861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (n + 1) + A185284 (A008486 n).toNat

end

end A223892.P15380990795873368861

/-! ## A223892.P6826152746186858595

`A223885(n+1)+A185284(A008585(n))`
-/

namespace A223892.P6826152746186858595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (n + 1) + A185284 (A008585 n).toNat

end

end A223892.P6826152746186858595

/-!
# A223893: Number of partitions of n into at most three distinct primes.

The programs for A223893, there is no canonical definition to state claims against.
-/

/-! ## A223893.P10703688886462368200

`A218469(1+n)-A347550(n)`
-/

namespace A223893.P10703688886462368200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (1 + n) - A347550 n

end

end A223893.P10703688886462368200

/-! ## A223893.P14507568727797807161

`A347550(1+n)+A125688(n+1)`
-/

namespace A223893.P14507568727797807161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (1 + n) + A125688 (n + 1)

end

end A223893.P14507568727797807161

/-! ## A223893.P12211568672819228028

`A218469(n+1)-ceil((A002126(n)-atan(n))/2)`
-/

namespace A223893.P12211568672819228028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (n + 1) - ⌈((A002126 n : ℝ) - Real.arctan (n : ℝ)) / 2⌉

end

end A223893.P12211568672819228028

/-! ## A223893.P3542638180164064549

`A218469(n+1)-floor(A002126(abs(1-n)+1)/2)`
-/

namespace A223893.P3542638180164064549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (n + 1) - ⌊(A002126 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌋

end

end A223893.P3542638180164064549

/-! ## A223893.P12071877198061464554

`A218469(n+1)-floor((A002126(n)+A000038(n))/2)`
-/

namespace A223893.P12071877198061464554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (n + 1) - ⌊(A002126 n + A000038 n : ℚ) / 2⌋

end

end A223893.P12071877198061464554

/-! ## A223893.P7210313309732477971

`A010051(n+1)+A125688(n+1)+A117929(n+1)`
-/

namespace A223893.P7210313309732477971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A125688 (n + 1) + A117929 (n + 1))

end

end A223893.P7210313309732477971

/-! ## A223893.P2417699399176095280

`A347550(n+1)+A068307(n+1)-A046926(n+1)`
-/

namespace A223893.P2417699399176095280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (n + 1) + (A068307 (n + 1) - A046926 (n + 1))

end

end A223893.P2417699399176095280

/-! ## A223893.P10878127283260045270

`A347550(n+1)+A068307(n+1)+A046926(n+1)*A057428(n)`
-/

namespace A223893.P10878127283260045270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (n + 1) + (A068307 (n + 1) + A046926 (n + 1) * A057428 n)

end

end A223893.P10878127283260045270

/-!
# A223894: Triangular array read by rows: T(n,k) is the number of connected components with size k summed over all simple labeled graphs on n nodes; n>=1, 1<=k<=n.

The programs for A223894, there is no canonical definition to state claims against.
-/

/-! ## A223894.P14435925014252998692

`A228315(n+1)/(col(n)+1)`
-/

namespace A223894.P14435925014252998692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A223894.P14435925014252998692

/-! ## A223894.P12987672465917729145

`A228315(n+1)/A002260(n+1)`
-/

namespace A223894.P12987672465917729145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A223894.P12987672465917729145

/-! ## A223894.P12157256103065393875

`A228315(n+1)/sqrt(A133819(n+1))`
-/

namespace A223894.P12157256103065393875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A223894.P12157256103065393875

/-! ## A223894.P4510152074284465421

`A228315(n+1)/A097285(2*n+1)`
-/

namespace A223894.P4510152074284465421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℚ) / (A097285 (2 * n + 1) : ℚ)

end

end A223894.P4510152074284465421

/-! ## A223894.P15073267382492701589

`A228315(n+1)/A070939(A059268(n))`
-/

namespace A223894.P15073267382492701589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℚ) / (A070939 (A059268 n).toNat : ℚ)

end

end A223894.P15073267382492701589

/-! ## A223894.P17465561132343154163

`A228315(n+1)/A001511(A018900(n+1))`
-/

namespace A223894.P17465561132343154163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℚ) / (A001511 (A018900 (n + 1)).toNat : ℚ)

end

end A223894.P17465561132343154163

/-!
# A223895: E.g.f.: A(x) = Sum_{n>=0} 1/n! * Product_{k=1..n} -log(1 - sinh(k*x)).

The programs for A223895, there is no canonical definition to state claims against.
-/

/-! ## A223895.P9443821502744300890

`A008611(A199576(n)+ceil(xor(1, n)/2))`
-/

namespace A223895.P9443821502744300890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A199576 n + ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

end

end A223895.P9443821502744300890

/-!
# A223896: E.g.f.: A(x) = Sum_{n>=0} (-log(1 - sinh(n*x)))^n/n!.

The programs for A223896, there is no canonical definition to state claims against.
-/

/-! ## A223896.P16903747253268083267

`A283467((2*n)^n+2)`
-/

namespace A223896.P16903747253268083267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 ((2 * n) ^ n + 2)

end

end A223896.P16903747253268083267

/-!
# A223897: E.g.f.: A(x) = Sum_{n>=0} 1/n! * Product_{k=1..n} -log(1 - sin(k*x)).

The programs for A223897, there is no canonical definition to state claims against.
-/

/-! ## A223897.P2540150621583568180

`A191251(A014500(n))`
-/

namespace A223897.P2540150621583568180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191251 (A014500 n).toNat

end

end A223897.P2540150621583568180

/-!
# A223898: E.g.f.: A(x) = Sum_{n>=0} (-log(1 - sin(n*x)))^n/n!.

The programs for A223898, there is no canonical definition to state claims against.
-/

/-! ## A223898.P2882131045570365242

`A125311(n*(2*n+5))`
-/

namespace A223898.P2882131045570365242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 (n * (2 * n + 5))

end

end A223898.P2882131045570365242

/-!
# A223899: Poly-Cauchy numbers of the second kind hat c_n^(-2).

The programs for A223899, there is no canonical definition to state claims against.
-/

/-! ## A223899.P5349296550285904145

`A081046(n)-2*A081052(n)`
-/

namespace A223899.P5349296550285904145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081046 n - 2 * A081052 n

end

end A223899.P5349296550285904145

