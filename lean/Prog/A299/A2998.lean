import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A299800: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299800, there is no canonical definition to state claims against.
-/

/-! ## A299800.P13628126562731496239

`A299806(∑[4*n]+1)`
-/

namespace A299800.P13628126562731496239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299800.P13628126562731496239

/-! ## A299800.P15230338380715004222

`record[A299806(A330613(n+1))]`
-/

namespace A299800.P15230338380715004222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299806 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299800.P15230338380715004222

/-! ## A299800.P12724941588061777089

`record[A003982(n)*A299806(n+1)]`
-/

namespace A299800.P12724941588061777089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299800.P12724941588061777089

/-!
# A299801: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299801, there is no canonical definition to state claims against.
-/

/-! ## A299801.P13829383231282834719

`A299806(∑[n+2]+4)`
-/

namespace A299801.P13829383231282834719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299806 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299801.P13829383231282834719

/-!
# A299802: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299802, there is no canonical definition to state claims against.
-/

/-! ## A299802.P7067825600690612189

`A299806(∑[n+3]+7)`
-/

namespace A299802.P7067825600690612189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299806 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299802.P7067825600690612189

/-!
# A299803: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299803, there is no canonical definition to state claims against.
-/

/-! ## A299803.P6692008827474002802

`A299806(A374005(n+1))`
-/

namespace A299803.P6692008827474002802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299806 (A374005 (n + 1)).toNat

end

end A299803.P6692008827474002802

/-!
# A299804: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299804, there is no canonical definition to state claims against.
-/

/-! ## A299804.P10149359810587914851

`A299806(A374007(n+1))`
-/

namespace A299804.P10149359810587914851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299806 (A374007 (n + 1)).toNat

end

end A299804.P10149359810587914851

/-!
# A299805: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299805, there is no canonical definition to state claims against.
-/

/-! ## A299805.P14982725854325149456

`A299806(A374008(n+1))`
-/

namespace A299805.P14982725854325149456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299806 (A374008 (n + 1)).toNat

end

end A299805.P14982725854325149456

/-!
# A299807: Rectangular array read by antidiagonals: T(n,k) is the number of distinct sums of k complex n-th roots of 1, n >= 1, k >= 0.

The programs for A299807, there is no canonical definition to state claims against.
-/

/-! ## A299807.P5729490045786357820

`A121373(A038867(n))+A007318(n)`
-/

namespace A299807.P5729490045786357820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A038867 n).toNat + A007318 n

end

end A299807.P5729490045786357820

/-! ## A299807.P6346700683457679331

`A016389(A208879(n))+A007318(n)`
-/

namespace A299807.P6346700683457679331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A208879 n).toNat + A007318 n

end

end A299807.P6346700683457679331

/-! ## A299807.P3953186624532374051

`A209349(A242095(n))+A014473(n)`
-/

namespace A299807.P3953186624532374051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (A242095 n).toNat + A014473 n

end

end A299807.P3953186624532374051

/-! ## A299807.P4548860839541112569

`A007318(n)-A025468(A018795(n))`
-/

namespace A299807.P4548860839541112569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A025468 (A018795 n).toNat

end

end A299807.P4548860839541112569

/-! ## A299807.P9810258403469993801

`A007318(n)-A025456(A038210(n))`
-/

namespace A299807.P9810258403469993801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A025456 (A038210 n).toNat

end

end A299807.P9810258403469993801

/-!
# A299808: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299808, there is no canonical definition to state claims against.
-/

/-! ## A299808.P5432634205581137277

`A299814(∑[4*n]+1)`
-/

namespace A299808.P5432634205581137277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299808.P5432634205581137277

/-! ## A299808.P18345563407579638813

`record[A299814(Δ[A235355(n)])]`
-/

namespace A299808.P18345563407579638813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299808.P18345563407579638813

/-! ## A299808.P1173246394396685458

`record[A299814(A330613(n+1))]`
-/

namespace A299808.P1173246394396685458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299808.P1173246394396685458

/-! ## A299808.P12895787452838635910

`record[A003982(n)*A299814(n+1)]`
-/

namespace A299808.P12895787452838635910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299808.P12895787452838635910

/-!
# A299809: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299809, there is no canonical definition to state claims against.
-/

/-! ## A299809.P6389728798262884423

`A299814(∑[n+2]+4)`
-/

namespace A299809.P6389728798262884423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299809.P6389728798262884423

/-!
# A299810: Number of n X 4 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299810, there is no canonical definition to state claims against.
-/

/-! ## A299810.P8500375311771876129

`A299814(A374004(n+1))`
-/

namespace A299810.P8500375311771876129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (A374004 (n + 1)).toNat

end

end A299810.P8500375311771876129

/-! ## A299810.P7679329064918383926

`A299814(A141214(n+1))`
-/

namespace A299810.P7679329064918383926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (A141214 (n + 1)).toNat

end

end A299810.P7679329064918383926

/-!
# A299811: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299811, there is no canonical definition to state claims against.
-/

/-! ## A299811.P13865393382541446882

`A299814(∑[n+4]+11)`
-/

namespace A299811.P13865393382541446882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299811.P13865393382541446882

/-!
# A299812: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299812, there is no canonical definition to state claims against.
-/

/-! ## A299812.P15201651928472258831

`A299814(A374007(n+1))`
-/

namespace A299812.P15201651928472258831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (A374007 (n + 1)).toNat

end

end A299812.P15201651928472258831

/-!
# A299813: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299813, there is no canonical definition to state claims against.
-/

/-! ## A299813.P15745959556733548014

`A299814(A374008(n+1))`
-/

namespace A299813.P15745959556733548014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (A374008 (n + 1)).toNat

end

end A299813.P15745959556733548014

/-!
# A299814: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299814, there is no canonical definition to state claims against.
-/

/-! ## A299814.P13159692008936694672

`A299052(n+1)+A081603(A022167(n))`
-/

namespace A299814.P13159692008936694672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (n + 1) + A081603 (A022167 n).toNat

end

end A299814.P13159692008936694672

/-! ## A299814.P14303966260938765315

`A299052(n+1)+A151795(A099594(n))`
-/

namespace A299814.P14303966260938765315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (n + 1) + A151795 (A099594 n).toNat

end

end A299814.P14303966260938765315

/-! ## A299814.P4401472546567794887

`A299052(n+1)+A054911(A299905(n))`
-/

namespace A299814.P4401472546567794887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (n + 1) + A054911 (A299905 n).toNat

end

end A299814.P4401472546567794887

/-! ## A299814.P6285373388009923653

`A299052(n+1)+A069283(A301443(n+1))`
-/

namespace A299814.P6285373388009923653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (n + 1) + A069283 (A301443 (n + 1)).toNat

end

end A299814.P6285373388009923653

/-! ## A299814.P13932385290295321561

`A299052(n+1)+A082858(A334709(n+1))`
-/

namespace A299814.P13932385290295321561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (n + 1) + A082858 (A334709 (n + 1)).toNat

end

end A299814.P13932385290295321561

/-!
# A299815: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299815, there is no canonical definition to state claims against.
-/

/-! ## A299815.P17339452193173052507

`A299821(∑[4*n]+1)`
-/

namespace A299815.P17339452193173052507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299815.P17339452193173052507

/-! ## A299815.P1815717756047865967

`record[A299821(A152271(n²))]`
-/

namespace A299815.P1815717756047865967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299815.P1815717756047865967

/-! ## A299815.P8129713206631729552

`record[gcd(A114327(n), A299821(n+1))]`
-/

namespace A299815.P8129713206631729552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A299821 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299815.P8129713206631729552

/-!
# A299816: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299816, there is no canonical definition to state claims against.
-/

/-! ## A299816.P8412723892140780179

`A299821(∑[n+2]+4)`
-/

namespace A299816.P8412723892140780179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299816.P8412723892140780179

/-!
# A299817: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299817, there is no canonical definition to state claims against.
-/

/-! ## A299817.P5331905186412341067

`A299821(A374004(n+1))`
-/

namespace A299817.P5331905186412341067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (A374004 (n + 1)).toNat

end

end A299817.P5331905186412341067

/-! ## A299817.P17377058444323253997

`A299821(A141214(n+1))`
-/

namespace A299817.P17377058444323253997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (A141214 (n + 1)).toNat

end

end A299817.P17377058444323253997

/-!
# A299818: Number of n X 5 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299818, there is no canonical definition to state claims against.
-/

/-! ## A299818.P538904031557820805

`A299821(A374005(n+1))`
-/

namespace A299818.P538904031557820805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (A374005 (n + 1)).toNat

end

end A299818.P538904031557820805

/-!
# A299819: Number of n X 6 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299819, there is no canonical definition to state claims against.
-/

/-! ## A299819.P15116641713988386926

`A299821(A374007(n+1))`
-/

namespace A299819.P15116641713988386926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (A374007 (n + 1)).toNat

end

end A299819.P15116641713988386926

/-!
# A299820: Number of n X 7 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299820, there is no canonical definition to state claims against.
-/

/-! ## A299820.P3366024221182081975

`A299821(A374008(n+1))`
-/

namespace A299820.P3366024221182081975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (A374008 (n + 1)).toNat

end

end A299820.P3366024221182081975

/-!
# A299821: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299821, there is no canonical definition to state claims against.
-/

/-! ## A299821.P6895067483769712198

`A299060(n+1)+A081603(A022167(n))`
-/

namespace A299821.P6895067483769712198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (n + 1) + A081603 (A022167 n).toNat

end

end A299821.P6895067483769712198

/-! ## A299821.P7757936762717064132

`or(A087049(2^n-1), A299060(n+1))`
-/

namespace A299821.P7757936762717064132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087049 (2 ^ n - 1)) (A299060 (n + 1))

end

end A299821.P7757936762717064132

/-! ## A299821.P6981619562385181211

`A299060(n+1)+A014707(A022171(n))`
-/

namespace A299821.P6981619562385181211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (n + 1) + A014707 (A022171 n).toNat

end

end A299821.P6981619562385181211

/-! ## A299821.P934412927272837930

`A299060(n+1)+A025465(A022345(n))`
-/

namespace A299821.P934412927272837930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (n + 1) + A025465 (A022345 n).toNat

end

end A299821.P934412927272837930

/-! ## A299821.P3631030413104686533

`A299060(n+1)+A209229(A006927(n))`
-/

namespace A299821.P3631030413104686533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (n + 1) + A209229 (A006927 n).toNat

end

end A299821.P3631030413104686533

/-!
# A299822: Product of Euler's totient and the squarefree kernel, a(n) = phi(n)*rad(n).

The programs for A299822, the canonical program `A299822.P17822751971997811856` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299822 has offset 1).

The definition of A299822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A007947(n+1)` (program `A299822.P17822751971997811856`, by `A299822.P17822751971997811856.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299822.P5516141074735190287

`(n+1)*A173557(n+1)`
-/

namespace A299822.P5516141074735190287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A173557 (n + 1)

end

end A299822.P5516141074735190287

namespace A299822

/-- `(n+1)*A173557(n+1)` -/
def P5516141074735190287.Spec : Prop :=
  ∀ n, P5516141074735190287.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P15577481778882938709

`(n+1)*abs(A023900(n+1))`
-/

namespace A299822.P15577481778882938709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A023900 (n + 1)|

end

end A299822.P15577481778882938709

namespace A299822

/-- `(n+1)*abs(A023900(n+1))` -/
def P15577481778882938709.Spec : Prop :=
  ∀ n, P15577481778882938709.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P17822751971997811856

`A000010(n+1)*A007947(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A299822

/-- `A000010(n+1)*A007947(n+1)` -/
def P17822751971997811856.Spec : Prop :=
  ∀ n, P17822751971997811856.a n = A299822 (n + 1)

theorem P17822751971997811856.correct : P17822751971997811856.Spec := by
  intro n
  simp only [A299822, Nat.add_sub_cancel]

end A299822

/-! ## A299822.P9785454777913243029

`(1+n)*∏{p}[1+n, #-1]`
-/

namespace A299822.P9785454777913243029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1))

end

end A299822.P9785454777913243029

namespace A299822

/-- `(1+n)*∏{p}[1+n, #-1]` -/
def P9785454777913243029.Spec : Prop :=
  ∀ n, P9785454777913243029.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P6365602747331744543

`∏{p}[n+1, n%#]*(n+1)`
-/

namespace A299822.P6365602747331744543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), n % p) * (n + 1)

end

end A299822.P6365602747331744543

namespace A299822

/-- `∏{p}[n+1, n%#]*(n+1)` -/
def P6365602747331744543.Spec : Prop :=
  ∀ n, (P6365602747331744543.a n : ℤ) = A299822 (n + 1)

end A299822

/-! ## A299822.P7451290606644579159

`(n+1)*(n+1-A318841(n+1))`
-/

namespace A299822.P7451290606644579159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A318841 (n + 1))

end

end A299822.P7451290606644579159

namespace A299822

/-- `(n+1)*(n+1-A318841(n+1))` -/
def P7451290606644579159.Spec : Prop :=
  ∀ n, P7451290606644579159.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P670439224038953688

`Δ[A002088(n)]*A007947(n+1)`
-/

namespace A299822.P670439224038953688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007947 (n + 1)

end

end A299822.P670439224038953688

namespace A299822

/-- `Δ[A002088(n)]*A007947(n+1)` -/
def P670439224038953688.Spec : Prop :=
  ∀ n, P670439224038953688.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P15578858948952806708

`(n+1)*A000010(A099985(n+1))`
-/

namespace A299822.P15578858948952806708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A099985 (n + 1)).toNat

end

end A299822.P15578858948952806708

namespace A299822

/-- `(n+1)*A000010(A099985(n+1))` -/
def P15578858948952806708.Spec : Prop :=
  ∀ n, P15578858948952806708.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P9791576638632639653

`A034444(n+1)*A090780(n+1)`
-/

namespace A299822.P9791576638632639653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A090780 (n + 1)

end

end A299822.P9791576638632639653

namespace A299822

/-- `A034444(n+1)*A090780(n+1)` -/
def P9791576638632639653.Spec : Prop :=
  ∀ n, P9791576638632639653.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P14876206104708849008

`(n+1)*A000010(A204455(n+1))`
-/

namespace A299822.P14876206104708849008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A204455 (n + 1)).toNat

end

end A299822.P14876206104708849008

namespace A299822

/-- `(n+1)*A000010(A204455(n+1))` -/
def P14876206104708849008.Spec : Prop :=
  ∀ n, P14876206104708849008.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P11433762445645944012

`A062570(n+1)*A204455(n+1)`
-/

namespace A299822.P11433762445645944012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) * A204455 (n + 1)

end

end A299822.P11433762445645944012

namespace A299822

/-- `A062570(n+1)*A204455(n+1)` -/
def P11433762445645944012.Spec : Prop :=
  ∀ n, P11433762445645944012.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P5563984559218666895

`(n+1)*A003958(A302138(n+1))`
-/

namespace A299822.P5563984559218666895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003958 (A302138 (n + 1)).toNat

end

end A299822.P5563984559218666895

namespace A299822

/-- `(n+1)*A003958(A302138(n+1))` -/
def P5563984559218666895.Spec : Prop :=
  ∀ n, P5563984559218666895.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P1474178714012706015

`(n+1)*A390753(A015052(n+1))`
-/

namespace A299822.P1474178714012706015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A390753 (A015052 (n + 1)).toNat

end

end A299822.P1474178714012706015

namespace A299822

/-- `(n+1)*A390753(A015052(n+1))` -/
def P1474178714012706015.Spec : Prop :=
  ∀ n, P1474178714012706015.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P10024190953986865102

`(n+1)*A390753(A015053(n+1))`
-/

namespace A299822.P10024190953986865102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A390753 (A015053 (n + 1)).toNat

end

end A299822.P10024190953986865102

namespace A299822

/-- `(n+1)*A390753(A015053(n+1))` -/
def P10024190953986865102.Spec : Prop :=
  ∀ n, P10024190953986865102.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P11428221819605122686

`A002618(n+1)/A003557(n+1)`
-/

namespace A299822.P11428221819605122686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A299822.P11428221819605122686

namespace A299822

/-- `A002618(n+1)/A003557(n+1)` -/
def P11428221819605122686.Spec : Prop :=
  ∀ n, P11428221819605122686.a n = (A299822 (n + 1) : ℚ)

end A299822

/-! ## A299822.P324316745013610849

`lcm(A062570(n+1), A090780(n+1))`
-/

namespace A299822.P324316745013610849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062570 (n + 1)) (A090780 (n + 1))

end

end A299822.P324316745013610849

namespace A299822

/-- `lcm(A062570(n+1), A090780(n+1))` -/
def P324316745013610849.Spec : Prop :=
  ∀ n, (P324316745013610849.a n : ℤ) = A299822 (n + 1)

end A299822

/-! ## A299822.P17087102866702672189

`abs(A000010(n+1)*A062953(n+1))`
-/

namespace A299822.P17087102866702672189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (n + 1) * A062953 (n + 1)|

end

end A299822.P17087102866702672189

namespace A299822

/-- `abs(A000010(n+1)*A062953(n+1))` -/
def P17087102866702672189.Spec : Prop :=
  ∀ n, P17087102866702672189.a n = A299822 (n + 1)

end A299822

/-! ## A299822.P5876262573050089419

`sqrt(A078615(n+1))*A000010(n+1)`
-/

namespace A299822.P5876262573050089419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ) * (A000010 (n + 1) : ℝ)

end

end A299822.P5876262573050089419

namespace A299822

/-- `sqrt(A078615(n+1))*A000010(n+1)` -/
def P5876262573050089419.Spec : Prop :=
  ∀ n, P5876262573050089419.a n = (A299822 (n + 1) : ℝ)

end A299822

/-! ## A299822.P7308994604630900482

`(A109606(n+1)+1)*A007947(n+1)`
-/

namespace A299822.P7308994604630900482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A007947 (n + 1)

end

end A299822.P7308994604630900482

namespace A299822

/-- `(A109606(n+1)+1)*A007947(n+1)` -/
def P7308994604630900482.Spec : Prop :=
  ∀ n, P7308994604630900482.a n = A299822 (n + 1)

theorem P7308994604630900482.correct : P7308994604630900482.Spec := by
  intro n
  simp only [A299822, Nat.add_sub_cancel, A299822.P7308994604630900482.a, A299822.P17822751971997811856.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A299822

/-! ## A299822.P5795493010501623155

`A062570(n+1)/2*A099985(n+1)`
-/

namespace A299822.P5795493010501623155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (n + 1) : ℚ) / 2 * (A099985 (n + 1) : ℚ)

end

end A299822.P5795493010501623155

namespace A299822

/-- `A062570(n+1)/2*A099985(n+1)` -/
def P5795493010501623155.Spec : Prop :=
  ∀ n, P5795493010501623155.a n = (A299822 (n + 1) : ℚ)

end A299822

/-!
# A299824: a(n) = (1/e^n)*Sum_{j >= 1} j^n * n^j / (j-1)!.

The programs for A299824, there is no canonical definition to state claims against.
-/

/-! ## A299824.P6021941699601625797

`(1+n)*A334240(1+n)`
-/

namespace A299824.P6021941699601625797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A334240 (1 + n)

end

end A299824.P6021941699601625797

/-! ## A299824.P1862351820529111604

`lcm(n+1, A334240(n+1))`
-/

namespace A299824.P1862351820529111604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A334240 (n + 1))

end

end A299824.P1862351820529111604

/-! ## A299824.P3863985177014278574

`A292860(2*(n+2)²)`
-/

namespace A299824.P3863985177014278574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (2 * (n + 2) ^ 2)

end

end A299824.P3863985177014278574

/-! ## A299824.P4085670142590261172

`A189233(A056220(n+2))`
-/

namespace A299824.P4085670142590261172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A056220 (n + 2)).toNat

end

end A299824.P4085670142590261172

/-!
# A299833: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299833, there is no canonical definition to state claims against.
-/

/-! ## A299833.P8070057988554160078

`A299839(∑[4*n]+1)`
-/

namespace A299833.P8070057988554160078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299833.P8070057988554160078

/-!
# A299834: Number of n X 3 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299834, there is no canonical definition to state claims against.
-/

/-! ## A299834.P13560954761782604980

`A299839(∑[n+2]+4)`
-/

namespace A299834.P13560954761782604980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299834.P13560954761782604980

/-!
# A299835: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299835, there is no canonical definition to state claims against.
-/

/-! ## A299835.P13172284954218965876

`A299839(A052905(n)+9)`
-/

namespace A299835.P13172284954218965876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (A052905 n + 9).toNat

end

end A299835.P13172284954218965876

/-! ## A299835.P9333773007576372694

`A299839(A141214(n+1))`
-/

namespace A299835.P9333773007576372694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (A141214 (n + 1)).toNat

end

end A299835.P9333773007576372694

/-!
# A299836: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299836, there is no canonical definition to state claims against.
-/

/-! ## A299836.P5221455606531223381

`A299839(A167499(n+3))`
-/

namespace A299836.P5221455606531223381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (A167499 (n + 3)).toNat

end

end A299836.P5221455606531223381

/-! ## A299836.P9829262127065400595

`A299839(A374005(n+1))`
-/

namespace A299836.P9829262127065400595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (A374005 (n + 1)).toNat

end

end A299836.P9829262127065400595

/-!
# A299837: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299837, there is no canonical definition to state claims against.
-/

/-! ## A299837.P10692879821351255542

`A299839(A166136(n+4))`
-/

namespace A299837.P10692879821351255542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (A166136 (n + 4)).toNat

end

end A299837.P10692879821351255542

/-! ## A299837.P7453838670130266936

`A299839(A374007(n+1))`
-/

namespace A299837.P7453838670130266936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (A374007 (n + 1)).toNat

end

end A299837.P7453838670130266936

/-!
# A299838: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299838, there is no canonical definition to state claims against.
-/

/-! ## A299838.P11160360424987630344

`A299839(A167487(n+5))`
-/

namespace A299838.P11160360424987630344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (A167487 (n + 5)).toNat

end

end A299838.P11160360424987630344

/-! ## A299838.P748249617177385900

`A299839(A374008(n+1))`
-/

namespace A299838.P748249617177385900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299839 (A374008 (n + 1)).toNat

end

end A299838.P748249617177385900

/-!
# A299839: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299839, there is no canonical definition to state claims against.
-/

/-! ## A299839.P1740243101269469607

`A299728(∑[A155797(n)!])+char[12]`
-/

namespace A299839.P1740243101269469607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A155797 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299839.P1740243101269469607

/-! ## A299839.P16937345213075924825

`A299728(∑[A278657(n)!])+char[12]`
-/

namespace A299839.P16937345213075924825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299839.P16937345213075924825

/-! ## A299839.P16710548159130680543

`A056926(A299728(n+1)²)+char[12]`
-/

namespace A299839.P16710548159130680543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A299728 (n + 1) ^ 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299839.P16710548159130680543

/-! ## A299839.P14509039149368072458

`char[12]+A299728(n+1)%A000010(4^ceil(n/2))`
-/

namespace A299839.P14509039149368072458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A299728 (n + 1)) (A000010 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat)

end

end A299839.P14509039149368072458

/-! ## A299839.P2184917049884793169

`A299728(n+1)+A011737(A022171(n))`
-/

namespace A299839.P2184917049884793169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299728 (n + 1) + A011737 (A022171 n).toNat

end

end A299839.P2184917049884793169

/-!
# A299840: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299840, there is no canonical definition to state claims against.
-/

/-! ## A299840.P16078117332487370738

`A299844(∑[4*n]+1)`
-/

namespace A299840.P16078117332487370738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299840.P16078117332487370738

/-! ## A299840.P1984438148057132794

`record[A003982(n)*A299844(n+1)]`
-/

namespace A299840.P1984438148057132794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299840.P1984438148057132794

/-! ## A299840.P2119956100216153650

`record[A214505(n)*A299844(n+1)]`
-/

namespace A299840.P2119956100216153650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A299844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299840.P2119956100216153650

/-! ## A299840.P16138032721534882473

`record[gcd(A037012(n), A299844(n+1))]`
-/

namespace A299840.P16138032721534882473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A299844 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299840.P16138032721534882473

/-!
# A299841: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299841, there is no canonical definition to state claims against.
-/

/-! ## A299841.P11888650763100148064

`A299844(A374005(n+1))`
-/

namespace A299841.P11888650763100148064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (A374005 (n + 1)).toNat

end

end A299841.P11888650763100148064

/-!
# A299842: Number of n X 6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299842, there is no canonical definition to state claims against.
-/

/-! ## A299842.P439119529663035438

`A299844(A374007(n+1))`
-/

namespace A299842.P439119529663035438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (A374007 (n + 1)).toNat

end

end A299842.P439119529663035438

/-!
# A299843: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299843, there is no canonical definition to state claims against.
-/

/-! ## A299843.P17284515874316699888

`A299844(A374008(n+1))`
-/

namespace A299843.P17284515874316699888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (A374008 (n + 1)).toNat

end

end A299843.P17284515874316699888

/-!
# A299844: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299844, there is no canonical definition to state claims against.
-/

/-! ## A299844.P13803622307062595672

`A299081(n+1)+A046660(A119307(n))`
-/

namespace A299844.P13803622307062595672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (n + 1) + A046660 (A119307 n).toNat

end

end A299844.P13803622307062595672

/-! ## A299844.P17910011984899700545

`A299081(n+1)+A002265(A010894(n))`
-/

namespace A299844.P17910011984899700545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (n + 1) + A002265 (A010894 (n + 21)).toNat

end

end A299844.P17910011984899700545

/-! ## A299844.P7298167361007281441

`A299081(n+1)+A086134(A186748(n))`
-/

namespace A299844.P7298167361007281441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (n + 1) + A086134 (A186748 n).toNat

end

end A299844.P7298167361007281441

/-!
# A299845: a(n) = hypergeom([-n, n - 1], [1], -4).

The programs for A299845, there is no canonical definition to state claims against.
-/

/-! ## A299845.P14153205400707635522

`A300945(∑[n]+n)`
-/

namespace A299845.P14153205400707635522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300945 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A299845.P14153205400707635522

/-! ## A299845.P13111000013017485507

`floor(record[A300945(n)/A007318(n)])`
-/

namespace A299845.P13111000013017485507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300945 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A299845.P13111000013017485507

/-!
# A299846: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299846, there is no canonical definition to state claims against.
-/

/-! ## A299846.P2225966549956331765

`A299852(∑[4*n]+1)`
-/

namespace A299846.P2225966549956331765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299846.P2225966549956331765

/-! ## A299846.P17946128377388698755

`record[A299852(A272267(n+1))]`
-/

namespace A299846.P17946128377388698755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299846.P17946128377388698755

/-! ## A299846.P18422625544716898138

`record[A299852(A330613(n+1))]`
-/

namespace A299846.P18422625544716898138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299846.P18422625544716898138

/-! ## A299846.P9628333275747003554

`record[A299852(Δ[A079824(n+1)])]`
-/

namespace A299846.P9628333275747003554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299846.P9628333275747003554

/-!
# A299847: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299847, there is no canonical definition to state claims against.
-/

/-! ## A299847.P1913802629554227682

`A299852(∑[n+2]+4)`
-/

namespace A299847.P1913802629554227682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299847.P1913802629554227682

/-! ## A299847.P6296655992357322116

`record[A299852(n+4)/A126791(n)]`
-/

namespace A299847.P6296655992357322116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299852 (n + 4) : ℚ) / (A126791 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299847.P6296655992357322116

/-! ## A299847.P6357998775968587477

`record[A299852(n+4)/A035529(n+1)]`
-/

namespace A299847.P6357998775968587477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299852 (n + 4) : ℚ) / (A035529 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299847.P6357998775968587477

/-! ## A299847.P6746279625765440027

`record[A299852(n+4)/A372968(n+2)]`
-/

namespace A299847.P6746279625765440027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299852 (n + 4) : ℚ) / (A372968 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299847.P6746279625765440027

/-!
# A299848: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299848, there is no canonical definition to state claims against.
-/

/-! ## A299848.P14624622531432929755

`A299852(∑[n+3]+7)`
-/

namespace A299848.P14624622531432929755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299848.P14624622531432929755

/-! ## A299848.P6516823948107242669

`record[A023531(n)*A299852(n+5)]`
-/

namespace A299848.P6516823948107242669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A299852 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299848.P6516823948107242669

/-! ## A299848.P13508419468446793861

`record[gcd(A025581(n), A299852(n+5))]`
-/

namespace A299848.P13508419468446793861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A299852 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299848.P13508419468446793861

/-! ## A299848.P9210499342035707219

`record[A299852(n+5)/A199530(n+2)]`
-/

namespace A299848.P9210499342035707219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299852 (n + 5) : ℚ) / (A199530 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299848.P9210499342035707219

/-!
# A299849: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299849, there is no canonical definition to state claims against.
-/

/-! ## A299849.P15308570044812957291

`A299852(A374005(n+1))`
-/

namespace A299849.P15308570044812957291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (A374005 (n + 1)).toNat

end

end A299849.P15308570044812957291

/-!
# A299850: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299850, there is no canonical definition to state claims against.
-/

/-! ## A299850.P2558523603250276962

`A299852(A374007(n+1))`
-/

namespace A299850.P2558523603250276962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (A374007 (n + 1)).toNat

end

end A299850.P2558523603250276962

/-!
# A299851: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299851, there is no canonical definition to state claims against.
-/

/-! ## A299851.P12261466656969150209

`A299852(A374008(n+1))`
-/

namespace A299851.P12261466656969150209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (A374008 (n + 1)).toNat

end

end A299851.P12261466656969150209

/-!
# A299852: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299852, there is no canonical definition to state claims against.
-/

/-! ## A299852.P8234433794866075579

`A299345(n+1)+A285007(A035607(n))`
-/

namespace A299852.P8234433794866075579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (n + 1) + A285007 (A035607 n).toNat

end

end A299852.P8234433794866075579

/-! ## A299852.P6729954817912859800

`A309785(A331562(n))+A299345(n+1)`
-/

namespace A299852.P6729954817912859800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A299345 (n + 1)

end

end A299852.P6729954817912859800

/-! ## A299852.P15096485862735503029

`A309785(A347621(n))+A299345(n+1)`
-/

namespace A299852.P15096485862735503029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A347621 n).toNat + A299345 (n + 1)

end

end A299852.P15096485862735503029

/-! ## A299852.P6103501111216753768

`xor(A185284(A130348(n)), A299345(n+1))`
-/

namespace A299852.P6103501111216753768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A130348 n).toNat) (A299345 (n + 1))

end

end A299852.P6103501111216753768

/-! ## A299852.P6696815034675145686

`xor(A185284(A206225(n+1)), A299345(n+1))`
-/

namespace A299852.P6696815034675145686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A206225 (n + 1)).toNat) (A299345 (n + 1))

end

end A299852.P6696815034675145686

/-!
# A299854: G.f. S(x) satisfies C(x)^(1/2) - S(x)^(1/2) = 1 such that C'(x)*S(x)^(1/2) = S'(x)*C(x)^(1/2) = 72*x.

The programs for A299854, the canonical program `A299854.P12127471380967895282` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299854 has offset 2).

The definition of A299854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299854.P13833147539973901422

`3*(n+1)*A299853(n+2)`
-/

namespace A299854.P13833147539973901422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * A299853 (n + 2))

end

end A299854.P13833147539973901422

namespace A299854

/-- `3*(n+1)*A299853(n+2)` -/
def P13833147539973901422.Spec : Prop :=
  ∀ n, P13833147539973901422.a n = A299854 (n + 2)

end A299854

/-! ## A299854.P12127471380967895282

`36*A033999(n)*A214377(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A299854

/-- `36*A033999(n)*A214377(n)` -/
def P12127471380967895282.Spec : Prop :=
  ∀ n, P12127471380967895282.a n = A299854 (n + 2)

theorem P12127471380967895282.correct : P12127471380967895282.Spec := by
  intro n
  simp only [A299854, Nat.add_sub_cancel]

end A299854

/-! ## A299854.P4194321537786317301

`36*A128834(3*n+1)*A214377(n)`
-/

namespace A299854.P4194321537786317301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A128834 (3 * n + 1) * A214377 n

end

end A299854.P4194321537786317301

namespace A299854

/-- `36*A128834(3*n+1)*A214377(n)` -/
def P4194321537786317301.Spec : Prop :=
  ∀ n, P4194321537786317301.a n = A299854 (n + 2)

end A299854

/-! ## A299854.P3016533020505959030

`2/(n+2)*A244038(n)*36*A033999(n)`
-/

namespace A299854.P3016533020505959030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A244038 n : ℚ) * (36 * A033999 n : ℚ)

end

end A299854.P3016533020505959030

namespace A299854

/-- `2/(n+2)*A244038(n)*36*A033999(n)` -/
def P3016533020505959030.Spec : Prop :=
  ∀ n, P3016533020505959030.a n = (A299854 (n + 2) : ℚ)

end A299854

/-! ## A299854.P15180448563433448097

`36*2/(n+2)*A244038(n)*A128834(3*n+1)`
-/

namespace A299854.P15180448563433448097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  36 * (2 / (n + 2 : ℚ) * (A244038 n : ℚ)) * (A128834 (3 * n + 1) : ℚ)

end

end A299854.P15180448563433448097

namespace A299854

/-- `36*2/(n+2)*A244038(n)*A128834(3*n+1)` -/
def P15180448563433448097.Spec : Prop :=
  ∀ n, P15180448563433448097.a n = (A299854 (n + 2) : ℚ)

end A299854

/-! ## A299854.P4986406863651964937

`36*A358367(n)/Δ[A001787(n)]*A128834(3*n+1)`
-/

namespace A299854.P4986406863651964937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  36 * ((A358367 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)) * (A128834 (3 * n + 1) : ℚ)

end

end A299854.P4986406863651964937

namespace A299854

/-- `36*A358367(n)/Δ[A001787(n)]*A128834(3*n+1)` -/
def P4986406863651964937.Spec : Prop :=
  ∀ n, P4986406863651964937.a n = (A299854 (n + 2) : ℚ)

end A299854

/-!
# A299855: G.f. C(x)^(1/2) satisfies C(x)^(1/2) - S(x)^(1/2) = 1 such that C'(x)*S(x)^(1/2) = S'(x)*C(x)^(1/2) = 72*x.

The programs for A299855, there is no canonical definition to state claims against.
-/

/-! ## A299855.P16334512748053590974

`A000005(A155049(n))*A157159(n+1)`
-/

namespace A299855.P16334512748053590974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A155049 n).toNat * A157159 (n + 1)

end

end A299855.P16334512748053590974

/-!
# A299864: a(n) = (-1)^n*hypergeom([-n, n - 1/2], [1], 4).

The programs for A299864, there is no canonical definition to state claims against.
-/

/-! ## A299864.P16188814648323051245

`A300946(∑[n]+n)`
-/

namespace A299864.P16188814648323051245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300946 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A299864.P16188814648323051245

/-!
# A299865: The sum of the first n terms of the sequence is the concatenation of the first n digits of the sequence, and a(1) = 2.

The programs for A299865, there is no canonical definition to state claims against.
-/

/-! ## A299865.P4471044190164005056

`2*A299866(n+1)-A299867(n+1)`
-/

namespace A299865.P4471044190164005056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299866 (n + 1) - A299867 (n + 1)

end

end A299865.P4471044190164005056

/-! ## A299865.P12290341361697118923

`A299866(n+1)+A299867(n+1)-A299868(n+1)`
-/

namespace A299865.P12290341361697118923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299867 (n + 1) - A299868 (n + 1))

end

end A299865.P12290341361697118923

/-! ## A299865.P4256048064711272580

`A299866(n+1)+A299869(n+1)-A299870(n+1)`
-/

namespace A299865.P4256048064711272580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299869 (n + 1) - A299870 (n + 1))

end

end A299865.P4256048064711272580

/-! ## A299865.P14363418826335170046

`A299866(n+1)+A299870(n+1)-A299871(n+1)`
-/

namespace A299865.P14363418826335170046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299870 (n + 1) - A299871 (n + 1))

end

end A299865.P14363418826335170046

/-! ## A299865.P5401808035691879986

`A299867(n+1)+A299869(n+1)-A299871(n+1)`
-/

namespace A299865.P5401808035691879986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299869 (n + 1) - A299871 (n + 1))

end

end A299865.P5401808035691879986

/-! ## A299865.P14134354171726213107

`A299866(n+1)+A299871(n+1)-A299872(n+1)`
-/

namespace A299865.P14134354171726213107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299871 (n + 1) - A299872 (n + 1))

end

end A299865.P14134354171726213107

/-!
# A299866: The sum of the first n terms of the sequence is the concatenation of the first n digits of the sequence, a(1) = 3.

The programs for A299866, there is no canonical definition to state claims against.
-/

/-! ## A299866.P4395027736250674005

`(A299867(n+1)+A299865(n+1))/2`
-/

namespace A299866.P4395027736250674005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299867 (n + 1) + A299865 (n + 1) : ℚ) / 2

end

end A299866.P4395027736250674005

/-! ## A299866.P7206572812434221664

`2*A299867(n+1)-A299868(n+1)`
-/

namespace A299866.P7206572812434221664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299867 (n + 1) - A299868 (n + 1)

end

end A299866.P7206572812434221664

/-! ## A299866.P1622068860738462005

`A299865(n+1)+A299868(n+1)-A299867(n+1)`
-/

namespace A299866.P1622068860738462005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299868 (n + 1) - A299867 (n + 1))

end

end A299866.P1622068860738462005

/-! ## A299866.P9080264576745272898

`A299865(n+1)+A299870(n+1)-A299869(n+1)`
-/

namespace A299866.P9080264576745272898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299870 (n + 1) - A299869 (n + 1))

end

end A299866.P9080264576745272898

/-! ## A299866.P18271003372821884002

`A299865(n+1)+A299871(n+1)-A299870(n+1)`
-/

namespace A299866.P18271003372821884002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299871 (n + 1) - A299870 (n + 1))

end

end A299866.P18271003372821884002

/-! ## A299866.P4513851390809643965

`A299867(n+1)+A299869(n+1)-A299870(n+1)`
-/

namespace A299866.P4513851390809643965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299869 (n + 1) - A299870 (n + 1))

end

end A299866.P4513851390809643965

/-! ## A299866.P5303742600833791685

`A299865(n+1)+A299872(n+1)-A299871(n+1)`
-/

namespace A299866.P5303742600833791685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299872 (n + 1) - A299871 (n + 1))

end

end A299866.P5303742600833791685

/-! ## A299866.P8906545464328666669

`A299867(n+1)+A299871(n+1)-A299872(n+1)`
-/

namespace A299866.P8906545464328666669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299871 (n + 1) - A299872 (n + 1))

end

end A299866.P8906545464328666669

/-!
# A299867: The sum of the first n terms of the sequence is the concatenation of the first n digits of the sequence, and a(1) = 4.

The programs for A299867, there is no canonical definition to state claims against.
-/

/-! ## A299867.P17065585227594991744

`2*A299866(n+1)-A299865(n+1)`
-/

namespace A299867.P17065585227594991744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299866 (n + 1) - A299865 (n + 1)

end

end A299867.P17065585227594991744

/-! ## A299867.P6578305673740250325

`(A299868(n+1)+A299866(n+1))/2`
-/

namespace A299867.P6578305673740250325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299868 (n + 1) + A299866 (n + 1) : ℚ) / 2

end

end A299867.P6578305673740250325

/-! ## A299867.P8071731020164085438

`A299865(n+1)+A299868(n+1)-A299866(n+1)`
-/

namespace A299867.P8071731020164085438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299868 (n + 1) - A299866 (n + 1))

end

end A299867.P8071731020164085438

/-! ## A299867.P12668915583667288997

`A299865(n+1)+A299871(n+1)-A299869(n+1)`
-/

namespace A299867.P12668915583667288997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299871 (n + 1) - A299869 (n + 1))

end

end A299867.P12668915583667288997

/-! ## A299867.P1613842048897548984

`A299866(n+1)+A299870(n+1)-A299869(n+1)`
-/

namespace A299867.P1613842048897548984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299870 (n + 1) - A299869 (n + 1))

end

end A299867.P1613842048897548984

/-! ## A299867.P9035489179654147080

`A299865(n+1)+A299872(n+1)-A299870(n+1)`
-/

namespace A299867.P9035489179654147080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299872 (n + 1) - A299870 (n + 1))

end

end A299867.P9035489179654147080

/-! ## A299867.P1404976237853048979

`A299866(n+1)+A299871(n+1)-A299870(n+1)`
-/

namespace A299867.P1404976237853048979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299871 (n + 1) - A299870 (n + 1))

end

end A299867.P1404976237853048979

/-! ## A299867.P8286272126552186480

`A299866(n+1)+A299872(n+1)-A299871(n+1)`
-/

namespace A299867.P8286272126552186480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299872 (n + 1) - A299871 (n + 1))

end

end A299867.P8286272126552186480

/-! ## A299867.P2721134133788974124

`A299868(n+1)+A299871(n+1)-A299872(n+1)`
-/

namespace A299867.P2721134133788974124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299868 (n + 1) + (A299871 (n + 1) - A299872 (n + 1))

end

end A299867.P2721134133788974124

/-!
# A299868: The sum of the first n terms of the sequence is the concatenation of the first n digits of the sequence, and a(1) = 5.

The programs for A299868, there is no canonical definition to state claims against.
-/

/-! ## A299868.P9246574214385261588

`2*A299867(n+1)-A299866(n+1)`
-/

namespace A299868.P9246574214385261588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299867 (n + 1) - A299866 (n + 1)

end

end A299868.P9246574214385261588

/-! ## A299868.P6494826589609257126

`A299866(n+1)+A299867(n+1)-A299865(n+1)`
-/

namespace A299868.P6494826589609257126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299867 (n + 1) - A299865 (n + 1))

end

end A299868.P6494826589609257126

/-! ## A299868.P15625716668961130832

`A299865(n+1)+A299872(n+1)-A299869(n+1)`
-/

namespace A299868.P15625716668961130832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299872 (n + 1) - A299869 (n + 1))

end

end A299868.P15625716668961130832

/-! ## A299868.P13877289014070584222

`A299866(n+1)+A299871(n+1)-A299869(n+1)`
-/

namespace A299868.P13877289014070584222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299871 (n + 1) - A299869 (n + 1))

end

end A299868.P13877289014070584222

/-! ## A299868.P1109698026901444988

`A299867(n+1)+A299870(n+1)-A299869(n+1)`
-/

namespace A299868.P1109698026901444988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299870 (n + 1) - A299869 (n + 1))

end

end A299868.P1109698026901444988

/-! ## A299868.P3800110889078109807

`A299866(n+1)+A299872(n+1)-A299870(n+1)`
-/

namespace A299868.P3800110889078109807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299872 (n + 1) - A299870 (n + 1))

end

end A299868.P3800110889078109807

/-! ## A299868.P7128737836736104031

`A299867(n+1)+A299872(n+1)-A299871(n+1)`
-/

namespace A299868.P7128737836736104031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299872 (n + 1) - A299871 (n + 1))

end

end A299868.P7128737836736104031

/-!
# A299869: The sum of the first n terms of the sequence is the concatenation of the first n digits of the sequence, and a(1) = 6.

The programs for A299869, there is no canonical definition to state claims against.
-/

/-! ## A299869.P16319000163834549396

`A299865(n+1)+A299870(n+1)-A299866(n+1)`
-/

namespace A299869.P16319000163834549396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299870 (n + 1) - A299866 (n + 1))

end

end A299869.P16319000163834549396

/-! ## A299869.P13097606541095333615

`A299865(n+1)+A299871(n+1)-A299867(n+1)`
-/

namespace A299869.P13097606541095333615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299871 (n + 1) - A299867 (n + 1))

end

end A299869.P13097606541095333615

/-! ## A299869.P15547793165774880732

`A299866(n+1)+A299870(n+1)-A299867(n+1)`
-/

namespace A299869.P15547793165774880732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299870 (n + 1) - A299867 (n + 1))

end

end A299869.P15547793165774880732

/-! ## A299869.P5575443261114834443

`A299865(n+1)+A299872(n+1)-A299868(n+1)`
-/

namespace A299869.P5575443261114834443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299872 (n + 1) - A299868 (n + 1))

end

end A299869.P5575443261114834443

/-! ## A299869.P11002427861250493129

`A299866(n+1)+A299871(n+1)-A299868(n+1)`
-/

namespace A299869.P11002427861250493129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299871 (n + 1) - A299868 (n + 1))

end

end A299869.P11002427861250493129

/-! ## A299869.P14727889879547370305

`A299870(n+1)+A299870(n+1)-A299871(n+1)`
-/

namespace A299869.P14727889879547370305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299870 (n + 1) + (A299870 (n + 1) - A299871 (n + 1))

end

end A299869.P14727889879547370305

/-! ## A299869.P9585099628532788806

`2*A299870(n+1)-A299871(n+1)`
-/

namespace A299869.P9585099628532788806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299870 (n + 1) - A299871 (n + 1)

end

end A299869.P9585099628532788806

/-!
# A299870: The sum of the first n terms of the sequence is the concatenation of the first n digits of the sequence, and a(1) = 7.

The programs for A299870, there is no canonical definition to state claims against.
-/

/-! ## A299870.P2017504095461636905

`A299866(n+1)+A299869(n+1)-A299865(n+1)`
-/

namespace A299870.P2017504095461636905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299869 (n + 1) - A299865 (n + 1))

end

end A299870.P2017504095461636905

/-! ## A299870.P8721551744074178294

`A299865(n+1)+A299871(n+1)-A299866(n+1)`
-/

namespace A299870.P8721551744074178294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299871 (n + 1) - A299866 (n + 1))

end

end A299870.P8721551744074178294

/-! ## A299870.P7281791497170931186

`A299867(n+1)+A299869(n+1)-A299866(n+1)`
-/

namespace A299870.P7281791497170931186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299869 (n + 1) - A299866 (n + 1))

end

end A299870.P7281791497170931186

/-! ## A299870.P6519372339877110933

`A299865(n+1)+A299872(n+1)-A299867(n+1)`
-/

namespace A299870.P6519372339877110933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299872 (n + 1) - A299867 (n + 1))

end

end A299870.P6519372339877110933

/-! ## A299870.P8893358227940919573

`A299866(n+1)+A299871(n+1)-A299867(n+1)`
-/

namespace A299870.P8893358227940919573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299871 (n + 1) - A299867 (n + 1))

end

end A299870.P8893358227940919573

/-! ## A299870.P15137048095167814186

`A299868(n+1)+A299869(n+1)-A299867(n+1)`
-/

namespace A299870.P15137048095167814186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299868 (n + 1) + (A299869 (n + 1) - A299867 (n + 1))

end

end A299870.P15137048095167814186

/-! ## A299870.P6245840233104064712

`A299866(n+1)+A299872(n+1)-A299868(n+1)`
-/

namespace A299870.P6245840233104064712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299872 (n + 1) - A299868 (n + 1))

end

end A299870.P6245840233104064712

/-! ## A299870.P9130720429749802718

`A299869(n+1)+A299872(n+1)-A299871(n+1)`
-/

namespace A299870.P9130720429749802718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299869 (n + 1) + (A299872 (n + 1) - A299871 (n + 1))

end

end A299870.P9130720429749802718

/-! ## A299870.P5499926416298249864

`(A299871(n+1)+A299869(n+1))/2`
-/

namespace A299870.P5499926416298249864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299871 (n + 1) + A299869 (n + 1) : ℚ) / 2

end

end A299870.P5499926416298249864

/-! ## A299870.P11162306767162814379

`2*A299871(n+1)-A299872(n+1)`
-/

namespace A299870.P11162306767162814379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299871 (n + 1) - A299872 (n + 1)

end

end A299870.P11162306767162814379

/-!
# A299871: The sum of the first n terms of the sequence is the concatenation of the first n digits of the sequence, and a(1) = 8.

The programs for A299871, there is no canonical definition to state claims against.
-/

/-! ## A299871.P10107866669177329926

`A299866(n+1)+A299870(n+1)-A299865(n+1)`
-/

namespace A299871.P10107866669177329926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299870 (n + 1) - A299865 (n + 1))

end

end A299871.P10107866669177329926

/-! ## A299871.P10752078116096052510

`A299867(n+1)+A299869(n+1)-A299865(n+1)`
-/

namespace A299871.P10752078116096052510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299869 (n + 1) - A299865 (n + 1))

end

end A299871.P10752078116096052510

/-! ## A299871.P12061103294277577077

`A299865(n+1)+A299872(n+1)-A299866(n+1)`
-/

namespace A299871.P12061103294277577077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299865 (n + 1) + (A299872 (n + 1) - A299866 (n + 1))

end

end A299871.P12061103294277577077

/-! ## A299871.P2208529606337871989

`A299867(n+1)+A299870(n+1)-A299866(n+1)`
-/

namespace A299871.P2208529606337871989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299870 (n + 1) - A299866 (n + 1))

end

end A299871.P2208529606337871989

/-! ## A299871.P15285445915221405765

`A299868(n+1)+A299869(n+1)-A299866(n+1)`
-/

namespace A299871.P15285445915221405765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299868 (n + 1) + (A299869 (n + 1) - A299866 (n + 1))

end

end A299871.P15285445915221405765

/-! ## A299871.P12918696930436524902

`A299866(n+1)+A299872(n+1)-A299867(n+1)`
-/

namespace A299871.P12918696930436524902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299872 (n + 1) - A299867 (n + 1))

end

end A299871.P12918696930436524902

/-! ## A299871.P10918853915842679894

`A299870(n+1)+A299870(n+1)-A299869(n+1)`
-/

namespace A299871.P10918853915842679894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299870 (n + 1) + (A299870 (n + 1) - A299869 (n + 1))

end

end A299871.P10918853915842679894

/-! ## A299871.P9877926611479752081

`2*A299870(n+1)-A299869(n+1)`
-/

namespace A299871.P9877926611479752081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299870 (n + 1) - A299869 (n + 1)

end

end A299871.P9877926611479752081

/-! ## A299871.P3044998866791332294

`(A299872(n+1)+A299870(n+1))/2`
-/

namespace A299871.P3044998866791332294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299872 (n + 1) + A299870 (n + 1) : ℚ) / 2

end

end A299871.P3044998866791332294

/-!
# A299872: The sum of the first n terms of the sequence is the concatenation of the first n digits of the sequence, and a(1) = 9.

The programs for A299872, there is no canonical definition to state claims against.
-/

/-! ## A299872.P15188654213390203604

`A299866(n+1)+A299871(n+1)-A299865(n+1)`
-/

namespace A299872.P15188654213390203604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299866 (n + 1) + (A299871 (n + 1) - A299865 (n + 1))

end

end A299872.P15188654213390203604

/-! ## A299872.P14348935069595475910

`A299867(n+1)+A299870(n+1)-A299865(n+1)`
-/

namespace A299872.P14348935069595475910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299870 (n + 1) - A299865 (n + 1))

end

end A299872.P14348935069595475910

/-! ## A299872.P7184019756625601187

`A299868(n+1)+A299869(n+1)-A299865(n+1)`
-/

namespace A299872.P7184019756625601187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299868 (n + 1) + (A299869 (n + 1) - A299865 (n + 1))

end

end A299872.P7184019756625601187

/-! ## A299872.P16755397998850796302

`A299867(n+1)+A299871(n+1)-A299866(n+1)`
-/

namespace A299872.P16755397998850796302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299867 (n + 1) + (A299871 (n + 1) - A299866 (n + 1))

end

end A299872.P16755397998850796302

/-! ## A299872.P18157374193192127133

`A299868(n+1)+A299870(n+1)-A299866(n+1)`
-/

namespace A299872.P18157374193192127133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299868 (n + 1) + (A299870 (n + 1) - A299866 (n + 1))

end

end A299872.P18157374193192127133

/-! ## A299872.P13129023362625514055

`A299871(n+1)+A299871(n+1)-A299870(n+1)`
-/

namespace A299872.P13129023362625514055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299871 (n + 1) + (A299871 (n + 1) - A299870 (n + 1))

end

end A299872.P13129023362625514055

/-! ## A299872.P15528473248302649172

`2*A299871(n+1)-A299870(n+1)`
-/

namespace A299872.P15528473248302649172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299871 (n + 1) - A299870 (n + 1)

end

end A299872.P15528473248302649172

/-!
# A299873: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299873, there is no canonical definition to state claims against.
-/

/-! ## A299873.P9565873952153690721

`A299879(∑[4*n]+1)`
-/

namespace A299873.P9565873952153690721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299873.P9565873952153690721

/-! ## A299873.P7893344971010187715

`record[A299879(A330613(n+1))]`
-/

namespace A299873.P7893344971010187715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299873.P7893344971010187715

/-! ## A299873.P17087512432774983129

`record[A003982(n)*A299879(n+1)]`
-/

namespace A299873.P17087512432774983129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299873.P17087512432774983129

/-! ## A299873.P11969937776559994164

`record[gcd(A112467(n), A299879(n+1))]`
-/

namespace A299873.P11969937776559994164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A299879 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299873.P11969937776559994164

/-!
# A299874: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299874, there is no canonical definition to state claims against.
-/

/-! ## A299874.P10495437024133646963

`A299879(∑[n+2]+4)`
-/

namespace A299874.P10495437024133646963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299874.P10495437024133646963

/-!
# A299875: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299875, there is no canonical definition to state claims against.
-/

/-! ## A299875.P4673986375011544186

`A299879(∑[n+3]+7)`
-/

namespace A299875.P4673986375011544186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299875.P4673986375011544186

/-!
# A299876: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299876, there is no canonical definition to state claims against.
-/

/-! ## A299876.P689212438896339881

`A299879(∑[n+4]+11)`
-/

namespace A299876.P689212438896339881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299876.P689212438896339881

/-!
# A299877: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299877, there is no canonical definition to state claims against.
-/

/-! ## A299877.P2973530021755690957

`A299879(A374007(n+1))`
-/

namespace A299877.P2973530021755690957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (A374007 (n + 1)).toNat

end

end A299877.P2973530021755690957

/-!
# A299878: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299878, there is no canonical definition to state claims against.
-/

/-! ## A299878.P11536616544677161712

`A299879(A374008(n+1))`
-/

namespace A299878.P11536616544677161712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (A374008 (n + 1)).toNat

end

end A299878.P11536616544677161712

/-!
# A299879: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299879, there is no canonical definition to state claims against.
-/

/-! ## A299879.P3683375214982443024

`A316864(A240321(n+1))+A299097(n+1)`
-/

namespace A299879.P3683375214982443024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A240321 (n + 1)).toNat + A299097 (n + 1)

end

end A299879.P3683375214982443024

/-! ## A299879.P2573352988426110653

`A299097(n+1)+A295659(A136170(n))`
-/

namespace A299879.P2573352988426110653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (n + 1) + A295659 (A136170 n).toNat

end

end A299879.P2573352988426110653

/-! ## A299879.P16877095306918944578

`A299097(n+1)+A003982(A256748(n+1))`
-/

namespace A299879.P16877095306918944578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (n + 1) + A003982 (A256748 (n + 1)).toNat

end

end A299879.P16877095306918944578

/-! ## A299879.P7956072870643876020

`A299097(n+1)+A102683(A072345(n))`
-/

namespace A299879.P7956072870643876020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (n + 1) + A102683 (A072345 n).toNat

end

end A299879.P7956072870643876020

/-!
# A299880: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299880, there is no canonical definition to state claims against.
-/

/-! ## A299880.P17323430613935134477

`A299886(∑[4*n]+1)`
-/

namespace A299880.P17323430613935134477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299880.P17323430613935134477

/-! ## A299880.P9835159044847449639

`record[A299886(Δ[A235355(n)])]`
-/

namespace A299880.P9835159044847449639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299880.P9835159044847449639

/-! ## A299880.P16618056976422932557

`record[A299886(A330613(n+1))]`
-/

namespace A299880.P16618056976422932557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299880.P16618056976422932557

/-! ## A299880.P1873187966027402166

`record[A003982(n)*A299886(n+1)]`
-/

namespace A299880.P1873187966027402166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299880.P1873187966027402166

/-!
# A299881: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299881, there is no canonical definition to state claims against.
-/

/-! ## A299881.P441337718044722129

`A299886(∑[n+2]+4)`
-/

namespace A299881.P441337718044722129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299881.P441337718044722129

/-!
# A299882: Number of n X 4 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299882, there is no canonical definition to state claims against.
-/

/-! ## A299882.P7212247264479082017

`A299886(∑[n+3]+7)`
-/

namespace A299882.P7212247264479082017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299882.P7212247264479082017

/-!
# A299883: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299883, there is no canonical definition to state claims against.
-/

/-! ## A299883.P8604808556739017992

`A299886(A374005(n+1))`
-/

namespace A299883.P8604808556739017992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (A374005 (n + 1)).toNat

end

end A299883.P8604808556739017992

/-!
# A299884: Number of n X 6 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299884, there is no canonical definition to state claims against.
-/

/-! ## A299884.P17994584554284213396

`A299886(C(n+7, 2)-n)`
-/

namespace A299884.P17994584554284213396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (Nat.choose (n + 7) 2 - n)

end

end A299884.P17994584554284213396

/-!
# A299885: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299885, there is no canonical definition to state claims against.
-/

/-! ## A299885.P5800318167000541401

`A299886(A374008(n+1))`
-/

namespace A299885.P5800318167000541401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (A374008 (n + 1)).toNat

end

end A299885.P5800318167000541401

/-!
# A299886: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299886, there is no canonical definition to state claims against.
-/

/-! ## A299886.P11607063037373152280

`A273712(n)!!*A298230(n+1)`
-/

namespace A299886.P11607063037373152280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial (A273712 n).toNat) : ℤ) * A298230 (n + 1)

end

end A299886.P11607063037373152280

/-! ## A299886.P2979333733114070140

`A299905(n)!!*A298230(n+1)`
-/

namespace A299886.P2979333733114070140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial (A299905 n).toNat) : ℤ) * A298230 (n + 1)

end

end A299886.P2979333733114070140

/-! ## A299886.P12513175139525458480

`A299052(n+1)+A016389(A022166(n))`
-/

namespace A299886.P12513175139525458480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (n + 1) + A016389 (A022166 n).toNat

end

end A299886.P12513175139525458480

/-! ## A299886.P3279694992661206948

`A299128(n+1)+A016389(A086645(n))`
-/

namespace A299886.P3279694992661206948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (n + 1) + A016389 (A086645 n).toNat

end

end A299886.P3279694992661206948

/-! ## A299886.P1384397110802665605

`A299128(n+1)+A007814(A157156(n))`
-/

namespace A299886.P1384397110802665605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (n + 1) + A007814 (A157156 n).toNat

end

end A299886.P1384397110802665605

/-!
# A299887: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299887, there is no canonical definition to state claims against.
-/

/-! ## A299887.P9372798754716472578

`A299893(∑[4*n]+1)`
-/

namespace A299887.P9372798754716472578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299887.P9372798754716472578

/-! ## A299887.P13921769768996399598

`record[gcd(A114327(n), A299893(n+1))]`
-/

namespace A299887.P13921769768996399598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A299893 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299887.P13921769768996399598

/-!
# A299888: Number of n X 3 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299888, there is no canonical definition to state claims against.
-/

/-! ## A299888.P2763984736941219069

`A299893(∑[n+2]+4)`
-/

namespace A299888.P2763984736941219069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299888.P2763984736941219069

/-! ## A299888.P11420708530748278367

`record[gcd(A259776(n), A299893(n+2))]`
-/

namespace A299888.P11420708530748278367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259776 n) (A299893 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299888.P11420708530748278367

/-!
# A299889: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299889, there is no canonical definition to state claims against.
-/

/-! ## A299889.P18370320790158727246

`A299893(A374004(n+1))`
-/

namespace A299889.P18370320790158727246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (A374004 (n + 1)).toNat

end

end A299889.P18370320790158727246

/-! ## A299889.P16068272583029599401

`A299893(A141214(n+1))`
-/

namespace A299889.P16068272583029599401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (A141214 (n + 1)).toNat

end

end A299889.P16068272583029599401

/-!
# A299890: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299890, there is no canonical definition to state claims against.
-/

/-! ## A299890.P7969972182294461715

`A299893(A374005(n+1))`
-/

namespace A299890.P7969972182294461715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (A374005 (n + 1)).toNat

end

end A299890.P7969972182294461715

/-!
# A299891: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299891, there is no canonical definition to state claims against.
-/

/-! ## A299891.P3830042417064092178

`A299893(A374007(n+1))`
-/

namespace A299891.P3830042417064092178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (A374007 (n + 1)).toNat

end

end A299891.P3830042417064092178

/-!
# A299892: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299892, there is no canonical definition to state claims against.
-/

/-! ## A299892.P4554457926281395911

`A299893(A374008(n+1))`
-/

namespace A299892.P4554457926281395911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (A374008 (n + 1)).toNat

end

end A299892.P4554457926281395911

/-!
# A299893: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299893, there is no canonical definition to state claims against.
-/

/-! ## A299893.P7299241721881827578

`A299135(n+1)+A014707(A022171(n))`
-/

namespace A299893.P7299241721881827578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (n + 1) + A014707 (A022171 n).toNat

end

end A299893.P7299241721881827578

/-! ## A299893.P10681970766254402185

`A299135(n+1)+A025465(A022345(n))`
-/

namespace A299893.P10681970766254402185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (n + 1) + A025465 (A022345 n).toNat

end

end A299893.P10681970766254402185

/-! ## A299893.P2199011436426007188

`A299366(n+1)+A127886(A022168(n))`
-/

namespace A299893.P2199011436426007188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (n + 1) + A127886 (A022168 n).toNat

end

end A299893.P2199011436426007188

/-! ## A299893.P14058183135260012033

`A299135(n+1)+A007814(A157151(n))`
-/

namespace A299893.P14058183135260012033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (n + 1) + A007814 (A157151 n).toNat

end

end A299893.P14058183135260012033

/-! ## A299893.P9282483199556703010

`A299135(n+1)+A112316(A174410(n))`
-/

namespace A299893.P9282483199556703010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (n + 1) + A112316 (A174410 n).toNat

end

end A299893.P9282483199556703010

/-!
# A299895: Partial sums of A299894.

The programs for A299895, there is no canonical definition to state claims against.
-/

/-! ## A299895.P7991767470503708956

`∑[A299894(n)]`
-/

namespace A299895.P7991767470503708956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299895.P7991767470503708956

/-! ## A299895.P14781092389520199879

`A299894(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A299895.P14781092389520199879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299894 (2 * n - n) + a (n - 1)

end

end A299895.P14781092389520199879

/-! ## A299895.P14191526126625263052

`A000038(n)+A299894(n)+a(n-1)` with `a(0)=1`
-/

namespace A299895.P14191526126625263052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000038 n + (A299894 n + a (n - 1))

end

end A299895.P14191526126625263052

/-! ## A299895.P8030148187179541387

`a(n-1)+A299894(n)%A050533(n)` with `a(0)=1`
-/

namespace A299895.P8030148187179541387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A299894 n) (A050533 n)

end

end A299895.P8030148187179541387

/-!
# A299897: Partial sums of A299896.

The programs for A299897, there is no canonical definition to state claims against.
-/

/-! ## A299897.P3994825840740537828

`∑[A299896(n)]`
-/

namespace A299897.P3994825840740537828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299897.P3994825840740537828

/-! ## A299897.P4699978498719243414

`A299896(floor(acot(n)+n))+a(n-1)` with `a(0)=1`
-/

namespace A299897.P4699978498719243414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299896 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + a (n - 1)

end

end A299897.P4699978498719243414

/-! ## A299897.P11930862455189247772

`A299896(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A299897.P11930862455189247772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299896 n + a (A023443 n).toNat

end

end A299897.P11930862455189247772

/-! ## A299897.P11694041911643325652

`A000027(A299896(n)+a(n-1))` with `a(0)=1`
-/

namespace A299897.P11694041911643325652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A299896 n + a (n - 1)).toNat

end

end A299897.P11694041911643325652

/-! ## A299897.P1764360241509621875

`A299896(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A299897.P1764360241509621875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299896 (A028310 n).toNat + a (n - 1)

end

end A299897.P1764360241509621875

/-! ## A299897.P2045851322443018096

`a(n-1)+A299896(n)+A000007(n)` with `a(0)=1`
-/

namespace A299897.P2045851322443018096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A299896 n + A000007 n)

end

end A299897.P2045851322443018096

/-! ## A299897.P16309872286052448314

`A299896(n)+a(n-1)*A057427(n)` with `a(0)=1`
-/

namespace A299897.P16309872286052448314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299896 n + a (n - 1) * A057427 n

end

end A299897.P16309872286052448314

/-! ## A299897.P16763428838722322689

`a(n-1)+A299896(n)%A050533(n)` with `a(0)=1`
-/

namespace A299897.P16763428838722322689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A299896 n) (A050533 n)

end

end A299897.P16763428838722322689

/-! ## A299897.P18048656359765681094

`A299896(n%A299894(n))+a(n-1)` with `a(0)=1`
-/

namespace A299897.P18048656359765681094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299896 (Int.tmod (n : ℤ) (A299894 n)).toNat + a (n - 1)

end

end A299897.P18048656359765681094

/-! ## A299897.P16532492135842037786

`A299896(n)+a(n-1)%A299895(n)` with `a(0)=1`
-/

namespace A299897.P16532492135842037786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299896 n + Int.tmod (a (n - 1)) (A299895 n)

end

end A299897.P16532492135842037786

/-!
# A299898: Coordination sequence for "ftu" 3D tiling with respect to first type of node.

The programs for A299898, there is no canonical definition to state claims against.
-/

/-! ## A299898.P8356638345459966260

`∑[∑[A043537(A131205(3*(n+1)))]]`
-/

namespace A299898.P8356638345459966260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A131205 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299898.P8356638345459966260

/-! ## A299898.P764719684884335319

`A114571(A264847(n+1))`
-/

namespace A299898.P764719684884335319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114571 (A264847 (n + 1)).toNat

end

end A299898.P764719684884335319

/-! ## A299898.P1616802634749999522

`∑[∑[A060501(A047086(n))]]`
-/

namespace A299898.P1616802634749999522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 (A047086 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299898.P1616802634749999522

/-! ## A299898.P14683975183973284715

`∑[∑[A190321(A002714(n))]]`
-/

namespace A299898.P14683975183973284715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190321 (A002714 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299898.P14683975183973284715

/-! ## A299898.P16092852570503377352

`∑[∑[A083040(A181137(n))]]`
-/

namespace A299898.P16092852570503377352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083040 (A181137 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299898.P16092852570503377352

/-!
# A299899: Partial sums of A299898.

The programs for A299899, there is no canonical definition to state claims against.
-/

/-! ## A299899.P5629739317599883597

`∑[A299898(n)]`
-/

namespace A299899.P5629739317599883597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299899.P5629739317599883597

/-! ## A299899.P6075910493650613664

`∑[A114571(A264847(n+1))]`
-/

namespace A299899.P6075910493650613664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114571 (A264847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299899.P6075910493650613664

/-! ## A299899.P14738244962902749384

`∑[∑[A036042(A320563(n+1))]]`
-/

namespace A299899.P14738244962902749384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A320563 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299899.P14738244962902749384

/-! ## A299899.P5639148875861221113

`∑[∑[A036042(A094309(n+3))]]`
-/

namespace A299899.P5639148875861221113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A094309 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299899.P5639148875861221113

/-! ## A299899.P12884610404069573091

`∑[∑[A036042(A000300(n+4))]]`
-/

namespace A299899.P12884610404069573091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A000300 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299899.P12884610404069573091

