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
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B004.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A189900: Number of nX4 binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189900, there is no canonical definition to state claims against.
-/

/-! ## A189900.P9635988442313559492

`A189905(A141214(n+1))`
-/

namespace A189900.P9635988442313559492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A141214 (n + 1)).toNat

end

end A189900.P9635988442313559492

/-! ## A189900.P4967552062265286191

`A189905(A155212(n)+5)`
-/

namespace A189900.P4967552062265286191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A155212 n + 5).toNat

end

end A189900.P4967552062265286191

/-! ## A189900.P3684787937749895319

`A189905(A056000(n)+7)`
-/

namespace A189900.P3684787937749895319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A056000 n + 7).toNat

end

end A189900.P3684787937749895319

/-! ## A189900.P13274846884122518170

`A189905(eq[3, A193592(n)])`
-/

namespace A189900.P13274846884122518170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189900.P13274846884122518170

/-! ## A189900.P15724194971392202363

`A189905(eq[4, A140996(n)])`
-/

namespace A189900.P15724194971392202363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189900.P15724194971392202363

/-!
# A189901: Number of nX5 binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189901, there is no canonical definition to state claims against.
-/

/-! ## A189901.P10343633258668667371

`A189905(Δ[A264443(n)])`
-/

namespace A189901.P10343633258668667371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (f1 (n + 1) - f1 n).toNat

end

end A189901.P10343633258668667371

/-! ## A189901.P3514769563761006978

`A189905(eq[4, A193592(n)])`
-/

namespace A189901.P3514769563761006978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189901.P3514769563761006978

/-! ## A189901.P17846428686960905437

`A189905(eq[8, A140996(n)])`
-/

namespace A189901.P17846428686960905437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189901.P17846428686960905437

/-! ## A189901.P10830909866567274067

`A189905(Δ[A023545(n+1)])`
-/

namespace A189901.P10830909866567274067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (f1 (n + 1) - f1 n).toNat

end

end A189901.P10830909866567274067

/-! ## A189901.P10687746316417268206

`A189905(eq[5, A200370(n+1)])`
-/

namespace A189901.P10687746316417268206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189901.P10687746316417268206

/-!
# A189902: Number of n X 6 binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189902, there is no canonical definition to state claims against.
-/

/-! ## A189902.P9049661501095555339

`A189905(eq[3, A219347(n)])`
-/

namespace A189902.P9049661501095555339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189902.P9049661501095555339

/-! ## A189902.P10225288216055083219

`A189905(eq[5, A193592(n)])`
-/

namespace A189902.P10225288216055083219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189902.P10225288216055083219

/-! ## A189902.P14545052488686299059

`A189905(eq[6, A200370(n+1)])`
-/

namespace A189902.P14545052488686299059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189902.P14545052488686299059

/-! ## A189902.P14848319605240254705

`A189905(eq[8, A185782(n+1)])`
-/

namespace A189902.P14848319605240254705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189902.P14848319605240254705

/-! ## A189902.P3748986507579258821

`A189905(eq[16, A057728(n+1)])`
-/

namespace A189902.P3748986507579258821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189902.P3748986507579258821

/-!
# A189903: Number of nX7 binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189903, there is no canonical definition to state claims against.
-/

/-! ## A189903.P3214758601064712420

`A189905(eq[4, A219347(n)])`
-/

namespace A189903.P3214758601064712420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189903.P3214758601064712420

/-! ## A189903.P5792198275459251225

`A189905(eq[6, A193592(n)])`
-/

namespace A189903.P5792198275459251225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189903.P5792198275459251225

/-! ## A189903.P3099939127230059116

`A189905(eq[7, A200370(n+1)])`
-/

namespace A189903.P3099939127230059116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189903.P3099939127230059116

/-! ## A189903.P10545355609609144108

`A189905(eq[10, A185782(n+1)])`
-/

namespace A189903.P10545355609609144108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189903.P10545355609609144108

/-! ## A189903.P9656031036948935090

`A189905(eq[32, A057728(n+1)])`
-/

namespace A189903.P9656031036948935090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189903.P9656031036948935090

/-!
# A189904: Number of nX8 binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189904, there is no canonical definition to state claims against.
-/

/-! ## A189904.P4771517023645501013

`A189905(A168107(n)-7)`
-/

namespace A189904.P4771517023645501013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A168107 n - 7).toNat

end

end A189904.P4771517023645501013

/-! ## A189904.P10065594443263999

`A189905(eq[5, A219347(n)])`
-/

namespace A189904.P10065594443263999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189904.P10065594443263999

/-! ## A189904.P11606804724767252458

`A189905(eq[7, A193592(n)])`
-/

namespace A189904.P11606804724767252458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189904.P11606804724767252458

/-! ## A189904.P12973723899523654721

`A189905(eq[12, A185782(n+1)])`
-/

namespace A189904.P12973723899523654721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189904.P12973723899523654721

/-! ## A189904.P12416716034718536080

`A189905(eq[64, A057728(n+1)])`
-/

namespace A189904.P12416716034718536080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189904.P12416716034718536080

/-!
# A189905: T(n,k)=Number of nXk binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189905, there is no canonical definition to state claims against.
-/

/-! ## A189905.P11557418075854421115

`A305425(2*A189161(n+1))`
-/

namespace A189905.P11557418075854421115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (2 * A189161 (n + 1)).toNat

end

end A189905.P11557418075854421115

/-! ## A189905.P14551916314298025897

`A189161(n+1)%Δ[A205493(n)]`
-/

namespace A189905.P14551916314298025897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189161 (n + 1)) (f1 (n + 1) - f1 n)

end

end A189905.P14551916314298025897

/-! ## A189905.P7454094434636217998

`A189161(n+1)+A000007(A032006(n))`
-/

namespace A189905.P7454094434636217998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (n + 1) + A000007 (A032006 n).toNat

end

end A189905.P7454094434636217998

/-! ## A189905.P10821536405433233505

`A355451(A001595(n))+A189161(n+1)`
-/

namespace A189905.P10821536405433233505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (A001595 n).toNat + A189161 (n + 1)

end

end A189905.P10821536405433233505

/-! ## A189905.P18186372629281087535

`A218171(A221943(n))+A189161(n+1)`
-/

namespace A189905.P18186372629281087535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218171 (A221943 n).toNat + A189161 (n + 1)

end

end A189905.P18186372629281087535

/-!
# A189906: Number of 4Xn binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189906, there is no canonical definition to state claims against.
-/

/-! ## A189906.P8511197024255140895

`A189905(A141214(n)+7)`
-/

namespace A189906.P8511197024255140895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A141214 n + 7).toNat

end

end A189906.P8511197024255140895

/-! ## A189906.P5655282007020386150

`A189905(A052905(n)+9)`
-/

namespace A189906.P5655282007020386150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A052905 n + 9).toNat

end

end A189906.P5655282007020386150

/-! ## A189906.P12037636103448468078

`A189905(A055999(n)+10)`
-/

namespace A189906.P12037636103448468078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A055999 n + 10).toNat

end

end A189906.P12037636103448468078

/-! ## A189906.P16981932647077989510

`A189905(eq[5, A066657(n)])`
-/

namespace A189906.P16981932647077989510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189906.P16981932647077989510

/-! ## A189906.P3636514642247471157

`A189905(A167614(n+2)+1)`
-/

namespace A189906.P3636514642247471157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A167614 (n + 2) + 1).toNat

end

end A189906.P3636514642247471157

/-!
# A189907: Number of 5Xn binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189907, there is no canonical definition to state claims against.
-/

/-! ## A189907.P14631061898838544122

`A189905(A155212(n)+13)`
-/

namespace A189907.P14631061898838544122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A155212 n + 13).toNat

end

end A189907.P14631061898838544122

/-! ## A189907.P14869277027257084648

`A189905(A056000(n)+15)`
-/

namespace A189907.P14869277027257084648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A056000 n + 15).toNat

end

end A189907.P14869277027257084648

/-! ## A189907.P14325115086481953868

`A189905(eq[7, A066657(n)])`
-/

namespace A189907.P14325115086481953868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189907.P14325115086481953868

/-! ## A189907.P17197852545709550350

`A189905(A141214(n+1)+8)`
-/

namespace A189907.P17197852545709550350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A141214 (n + 1) + 8).toNat

end

end A189907.P17197852545709550350

/-! ## A189907.P11997102032503435903

`A189905(eq[6, A131818(n+1)])`
-/

namespace A189907.P11997102032503435903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189907.P11997102032503435903

/-!
# A189908: Number of 6Xn binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189908, there is no canonical definition to state claims against.
-/

/-! ## A189908.P8970272337464529783

`A189905(A166136(n+4))`
-/

namespace A189908.P8970272337464529783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A166136 (n + 4)).toNat

end

end A189908.P8970272337464529783

/-! ## A189908.P14011250275153966142

`A189905(Δ[A264443(n)]+10)`
-/

namespace A189908.P14011250275153966142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (f1 (n + 1) - f1 n + 10).toNat

end

end A189908.P14011250275153966142

/-! ## A189908.P3239430871382258421

`A189905(A000217(n+5)+6)`
-/

namespace A189908.P3239430871382258421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A000217 (n + 5) + 6).toNat

end

end A189908.P3239430871382258421

/-! ## A189908.P17427294416045333273

`A189905(A141214(n+2)+9)`
-/

namespace A189908.P17427294416045333273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A141214 (n + 2) + 9).toNat

end

end A189908.P17427294416045333273

/-! ## A189908.P16034444945332215712

`A189905(eq[7, A131818(n+1)])`
-/

namespace A189908.P16034444945332215712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189908.P16034444945332215712

/-!
# A189909: Number of 7Xn binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189909, there is no canonical definition to state claims against.
-/

/-! ## A189909.P12059300703990093092

`A189905(A056119(n)+28)`
-/

namespace A189909.P12059300703990093092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A056119 n + 28).toNat

end

end A189909.P12059300703990093092

/-! ## A189909.P6086421281390919393

`A189905(eq[11, A066657(n)])`
-/

namespace A189909.P6086421281390919393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189909.P6086421281390919393

/-! ## A189909.P6292560297951568247

`A189905(A166136(n+5)+1)`
-/

namespace A189909.P6292560297951568247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A166136 (n + 5) + 1).toNat

end

end A189909.P6292560297951568247

/-! ## A189909.P5991752160501735998

`A189905(A034856(n+5)+9)`
-/

namespace A189909.P5991752160501735998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A034856 (n + 5) + 9).toNat

end

end A189909.P5991752160501735998

/-! ## A189909.P6664233543281651258

`A189905(eq[8, A131818(n+1)])`
-/

namespace A189909.P6664233543281651258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189909.P6664233543281651258

/-!
# A189910: Number of 8Xn binary arrays without the pattern 0 0 1 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189910, there is no canonical definition to state claims against.
-/

/-! ## A189910.P18363375905697946100

`A189905(eq[13, A066657(n)])`
-/

namespace A189910.P18363375905697946100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189910.P18363375905697946100

/-! ## A189910.P13351767543046438531

`A189905(A168107(n)-n)`
-/

namespace A189910.P13351767543046438531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A168107 n - (n : ℤ)).toNat

end

end A189910.P13351767543046438531

/-! ## A189910.P16680277160506045680

`A189905(A167487(n+6)+1)`
-/

namespace A189910.P16680277160506045680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (A167487 (n + 6) + 1).toNat

end

end A189910.P16680277160506045680

/-! ## A189910.P1670417430193493839

`A189905(eq[9, A131818(n+1)])`
-/

namespace A189910.P1670417430193493839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189910.P1670417430193493839

/-! ## A189910.P10877824638084284213

`A189905(eq[9, A237448(n+1)])`
-/

namespace A189910.P10877824638084284213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189910.P10877824638084284213

/-!
# A189911: Row sums of the extended Catalan triangle A189231.

The programs for A189911, the canonical program `A189911.P12915414119225182304` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189911 has offset 0).

The definition of A189911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212303, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189911.P12915414119225182304

`A056040(n)+A212303(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A189911

/-- `A056040(n)+A212303(n)` -/
def P12915414119225182304.Spec : Prop :=
  ∀ n, P12915414119225182304.a n = A189911 n

theorem P12915414119225182304.correct : P12915414119225182304.Spec := by
  intro n
  simp only [A189911]

end A189911

/-! ## A189911.P204173343743349249

`A191309(n+1)+2^n`
-/

namespace A189911.P204173343743349249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 (n + 1) + (2 ^ n : ℤ)

end

end A189911.P204173343743349249

namespace A189911

/-- `A191309(n+1)+2^n` -/
def P204173343743349249.Spec : Prop :=
  ∀ n, P204173343743349249.a n = A189911 n

end A189911

/-! ## A189911.P13465979754521131328

`A100071(n)+A001405(n)`
-/

namespace A189911.P13465979754521131328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n + A001405 n

end

end A189911.P13465979754521131328

namespace A189911

/-- `A100071(n)+A001405(n)` -/
def P13465979754521131328.Spec : Prop :=
  ∀ n, P13465979754521131328.a n = A189911 n

end A189911

/-! ## A189911.P5609896787922634198

`A323988(n)-A294175(n)`
-/

namespace A189911.P5609896787922634198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n - A294175 n

end

end A189911.P5609896787922634198

namespace A189911

/-- `A323988(n)-A294175(n)` -/
def P5609896787922634198.Spec : Prop :=
  ∀ n, P5609896787922634198.a n = A189911 n

end A189911

/-! ## A189911.P3220827649166289191

`A001405(n)*A080513(n)`
-/

namespace A189911.P3220827649166289191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A080513 n

end

end A189911.P3220827649166289191

namespace A189911

/-- `A001405(n)*A080513(n)` -/
def P3220827649166289191.Spec : Prop :=
  ∀ n, P3220827649166289191.a n = A189911 n

end A189911

/-! ## A189911.P8217217549808842694

`A210736(n+1)+A100071(n)`
-/

namespace A189911.P8217217549808842694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + A100071 n

end

end A189911.P8217217549808842694

namespace A189911

/-- `A210736(n+1)+A100071(n)` -/
def P8217217549808842694.Spec : Prop :=
  ∀ n, P8217217549808842694.a n = A189911 n

end A189911

/-! ## A189911.P14878300937877959076

`A001405(n)*A008619(n+1)`
-/

namespace A189911.P14878300937877959076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A008619 (n + 1)

end

end A189911.P14878300937877959076

namespace A189911

/-- `A001405(n)*A008619(n+1)` -/
def P14878300937877959076.Spec : Prop :=
  ∀ n, P14878300937877959076.a n = A189911 n

end A189911

/-! ## A189911.P3098286922555171569

`(A110654(n)+1)*A001405(n)`
-/

namespace A189911.P3098286922555171569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110654 n + 1) * A001405 n

end

end A189911.P3098286922555171569

namespace A189911

/-- `(A110654(n)+1)*A001405(n)` -/
def P3098286922555171569.Spec : Prop :=
  ∀ n, P3098286922555171569.a n = A189911 n

end A189911

/-! ## A189911.P14064765291322221718

`A000463(n+2)*A057977(n)`
-/

namespace A189911.P14064765291322221718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 2) * A057977 n

end

end A189911.P14064765291322221718

namespace A189911

/-- `A000463(n+2)*A057977(n)` -/
def P14064765291322221718.Spec : Prop :=
  ∀ n, P14064765291322221718.a n = A189911 n

end A189911

/-! ## A189911.P12883997965371127697

`A001405(n)*A065033(n+2)`
-/

namespace A189911.P12883997965371127697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A065033 (n + 2)

end

end A189911.P12883997965371127697

namespace A189911

/-- `A001405(n)*A065033(n+2)` -/
def P12883997965371127697.Spec : Prop :=
  ∀ n, P12883997965371127697.a n = A189911 n

end A189911

/-! ## A189911.P7635840647069205232

`A126930(n)*A130472(n+2)`
-/

namespace A189911.P7635840647069205232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n * A130472 (n + 2)

end

end A189911.P7635840647069205232

namespace A189911

/-- `A126930(n)*A130472(n+2)` -/
def P7635840647069205232.Spec : Prop :=
  ∀ n, P7635840647069205232.a n = A189911 n

end A189911

/-! ## A189911.P11544761533526083273

`A001405(n)*A004526(n+3)`
-/

namespace A189911.P11544761533526083273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A004526 (n + 3)

end

end A189911.P11544761533526083273

namespace A189911

/-- `A001405(n)*A004526(n+3)` -/
def P11544761533526083273.Spec : Prop :=
  ∀ n, P11544761533526083273.a n = A189911 n

end A189911

/-! ## A189911.P11515975247309416932

`A001405(n)+n*A210736(n)`
-/

namespace A189911.P11515975247309416932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (n : ℤ) * A210736 n

end

end A189911.P11515975247309416932

namespace A189911

/-- `A001405(n)+n*A210736(n)` -/
def P11515975247309416932.Spec : Prop :=
  ∀ n, P11515975247309416932.a n = A189911 n

end A189911

/-! ## A189911.P14844054236395136575

`∑[char[A004273(n)]]*A001405(n)`
-/

namespace A189911.P14844054236395136575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001405 n

end

end A189911.P14844054236395136575

namespace A189911

/-- `∑[char[A004273(n)]]*A001405(n)` -/
def P14844054236395136575.Spec : Prop :=
  ∀ n, P14844054236395136575.a n = A189911 n

end A189911

/-! ## A189911.P17553591402238684123

`(∑[A000035(n)]+1)*A001405(n)`
-/

namespace A189911.P17553591402238684123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A001405 n

end

end A189911.P17553591402238684123

namespace A189911

/-- `(∑[A000035(n)]+1)*A001405(n)` -/
def P17553591402238684123.Spec : Prop :=
  ∀ n, P17553591402238684123.a n = A189911 n

end A189911

/-! ## A189911.P15793994854777052469

`A191522(n+1)+A001405(n+1)`
-/

namespace A189911.P15793994854777052469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 (n + 1) + A001405 (n + 1)

end

end A189911.P15793994854777052469

namespace A189911

/-- `A191522(n+1)+A001405(n+1)` -/
def P15793994854777052469.Spec : Prop :=
  ∀ n, P15793994854777052469.a n = A189911 n

end A189911

/-! ## A189911.P10689836360138385772

`A210736(n+2)+A191522(n+1)`
-/

namespace A189911.P10689836360138385772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 2) + A191522 (n + 1)

end

end A189911.P10689836360138385772

namespace A189911

/-- `A210736(n+2)+A191522(n+1)` -/
def P10689836360138385772.Spec : Prop :=
  ∀ n, P10689836360138385772.a n = A189911 n

end A189911

/-! ## A189911.P17565274615082178930

`(A014495(n)+1)*A008619(n+1)`
-/

namespace A189911.P17565274615082178930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * A008619 (n + 1)

end

end A189911.P17565274615082178930

namespace A189911

/-- `(A014495(n)+1)*A008619(n+1)` -/
def P17565274615082178930.Spec : Prop :=
  ∀ n, P17565274615082178930.a n = A189911 n

end A189911

/-! ## A189911.P11154153143516601838

`A008619(n+1)*A210736(n+1)`
-/

namespace A189911.P11154153143516601838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A210736 (n + 1)

end

end A189911.P11154153143516601838

namespace A189911

/-- `A008619(n+1)*A210736(n+1)` -/
def P11154153143516601838.Spec : Prop :=
  ∀ n, P11154153143516601838.a n = A189911 n

end A189911

/-! ## A189911.P6562226286597571833

`A004526(n+3)*A210736(n+1)`
-/

namespace A189911.P6562226286597571833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 3) * A210736 (n + 1)

end

end A189911.P6562226286597571833

namespace A189911

/-- `A004526(n+3)*A210736(n+1)` -/
def P6562226286597571833.Spec : Prop :=
  ∀ n, P6562226286597571833.a n = A189911 n

end A189911

/-!
# A189912: Extended Motzkin numbers, Sum_{k>=0} C(n,k)*C(k), where C(k) is the extended Catalan number A057977(k).

The programs for A189912, the canonical program `A189912.P14835049554752383830` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189912 has offset 0).

The definition of A189912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189912.P14835049554752383830

`A001006(n)+Δ[A097861(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189912

/-- `A001006(n)+Δ[A097861(n)]` -/
def P14835049554752383830.Spec : Prop :=
  ∀ n, P14835049554752383830.a n = A189912 n

theorem P14835049554752383830.correct : P14835049554752383830.Spec := by
  intro n
  simp only [A189912]

end A189912

/-! ## A189912.P14195063268575874884

`Δ[A097861(n)+A097332(n)]`
-/

namespace A189912.P14195063268575874884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189912.P14195063268575874884

namespace A189912

/-- `Δ[A097861(n)+A097332(n)]` -/
def P14195063268575874884.Spec : Prop :=
  ∀ n, P14195063268575874884.a n = A189912 n

end A189912

/-! ## A189912.P5401119457709666839

`A001006(n)+Δ[A257520(n)]`
-/

namespace A189912.P5401119457709666839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (f1 (n + 1) - f1 n)

end

end A189912.P5401119457709666839

namespace A189912

/-- `A001006(n)+Δ[A257520(n)]` -/
def P5401119457709666839.Spec : Prop :=
  ∀ n, P5401119457709666839.a n = A189912 n

end A189912

/-! ## A189912.P9456091651206107147

`Δ[A257520(n)+A097332(n)]`
-/

namespace A189912.P9456091651206107147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n + A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189912.P9456091651206107147

namespace A189912

/-- `Δ[A257520(n)+A097332(n)]` -/
def P9456091651206107147.Spec : Prop :=
  ∀ n, P9456091651206107147.a n = A189912 n

end A189912

/-! ## A189912.P9555388616027008617

`A005043(n+1)+A002426(n)`
-/

namespace A189912.P9555388616027008617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + A002426 n

end

end A189912.P9555388616027008617

namespace A189912

/-- `A005043(n+1)+A002426(n)` -/
def P9555388616027008617.Spec : Prop :=
  ∀ n, P9555388616027008617.a n = A189912 n

end A189912

/-! ## A189912.P12229168931521257310

`A002426(n)+A103872(n)/2`
-/

namespace A189912.P12229168931521257310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 n : ℚ) + (A103872 n : ℚ) / 2

end

end A189912.P12229168931521257310

namespace A189912

/-- `A002426(n)+A103872(n)/2` -/
def P12229168931521257310.Spec : Prop :=
  ∀ n, P12229168931521257310.a n = (A189912 n : ℚ)

end A189912

/-! ## A189912.P12283582738707766937

`A002426(n)+Δ[A082395(n+1)]`
-/

namespace A189912.P12283582738707766937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + (f1 (n + 1) - f1 n)

end

end A189912.P12283582738707766937

namespace A189912

/-- `A002426(n)+Δ[A082395(n+1)]` -/
def P12283582738707766937.Spec : Prop :=
  ∀ n, P12283582738707766937.a n = A189912 n

end A189912

/-! ## A189912.P15963857422821912167

`A005213(2*n+1)+A001006(n)`
-/

namespace A189912.P15963857422821912167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n + 1) + A001006 n

end

end A189912.P15963857422821912167

namespace A189912

/-- `A005213(2*n+1)+A001006(n)` -/
def P15963857422821912167.Spec : Prop :=
  ∀ n, P15963857422821912167.a n = A189912 n

end A189912

/-! ## A189912.P13709870534655433028

`A005213(2*n)+A005043(n+1)`
-/

namespace A189912.P13709870534655433028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n) + A005043 (n + 1)

end

end A189912.P13709870534655433028

namespace A189912

/-- `A005213(2*n)+A005043(n+1)` -/
def P13709870534655433028.Spec : Prop :=
  ∀ n, P13709870534655433028.a n = A189912 n

end A189912

/-! ## A189912.P9469421788468128556

`A001006(n)+A025178(n+1)/2`
-/

namespace A189912.P9469421788468128556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 n : ℚ) + (A025178 (n + 1) : ℚ) / 2

end

end A189912.P9469421788468128556

namespace A189912

/-- `A001006(n)+A025178(n+1)/2` -/
def P9469421788468128556.Spec : Prop :=
  ∀ n, P9469421788468128556.a n = (A189912 n : ℚ)

end A189912

/-! ## A189912.P10001254657595449619

`A001006(n)-(A005043(n)-A002426(n))`
-/

namespace A189912.P10001254657595449619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (A005043 n - A002426 n)

end

end A189912.P10001254657595449619

namespace A189912

/-- `A001006(n)-(A005043(n)-A002426(n))` -/
def P10001254657595449619.Spec : Prop :=
  ∀ n, P10001254657595449619.a n = A189912 n

end A189912

/-! ## A189912.P14771328435487194196

`A005043(n+1)+A257520(n)+A097861(n)`
-/

namespace A189912.P14771328435487194196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A257520 n + A097861 n)

end

end A189912.P14771328435487194196

namespace A189912

/-- `A005043(n+1)+A257520(n)+A097861(n)` -/
def P14771328435487194196.Spec : Prop :=
  ∀ n, P14771328435487194196.a n = A189912 n

end A189912

/-! ## A189912.P1284104434230457687

`A005773(n+1)+A001006(n)-A002426(n)`
-/

namespace A189912.P1284104434230457687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (A001006 n - A002426 n)

end

end A189912.P1284104434230457687

namespace A189912

/-- `A005773(n+1)+A001006(n)-A002426(n)` -/
def P1284104434230457687.Spec : Prop :=
  ∀ n, P1284104434230457687.a n = A189912 n

end A189912

/-! ## A189912.P11126321859216484639

`A097861(n+1)+A001006(n)-A097861(n)`
-/

namespace A189912.P11126321859216484639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1) + (A001006 n - A097861 n)

end

end A189912.P11126321859216484639

namespace A189912

/-- `A097861(n+1)+A001006(n)-A097861(n)` -/
def P11126321859216484639.Spec : Prop :=
  ∀ n, P11126321859216484639.a n = A189912 n

theorem P11126321859216484639.correct : P11126321859216484639.Spec := by
  intro n
  simp only [A189912, Nat.add_sub_cancel, A189912.P11126321859216484639.a, A189912.P14835049554752383830.f1, A189912.P14835049554752383830.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A189912

/-! ## A189912.P3405251481137889140

`A257520(n+1)+A001006(n)-A257520(n)`
-/

namespace A189912.P3405251481137889140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1) + (A001006 n - A257520 n)

end

end A189912.P3405251481137889140

namespace A189912

/-- `A257520(n+1)+A001006(n)-A257520(n)` -/
def P3405251481137889140.Spec : Prop :=
  ∀ n, P3405251481137889140.a n = A189912 n

end A189912

/-! ## A189912.P13192059222681734968

`A005043(n+1)+A372342(n+1)+A372342(n)`
-/

namespace A189912.P13192059222681734968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A372342 (n + 1) + A372342 n)

end

end A189912.P13192059222681734968

namespace A189912

/-- `A005043(n+1)+A372342(n+1)+A372342(n)` -/
def P13192059222681734968.Spec : Prop :=
  ∀ n, P13192059222681734968.a n = A189912 n

end A189912

/-! ## A189912.P1548133005171975576

`Δ[A097893(n)]-A005774(n)`
-/

namespace A189912.P1548133005171975576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005774 n

end

end A189912.P1548133005171975576

namespace A189912

/-- `Δ[A097893(n)]-A005774(n)` -/
def P1548133005171975576.Spec : Prop :=
  ∀ n, P1548133005171975576.a n = A189912 n

end A189912

/-! ## A189912.P7913129519521797016

`A002426(n+1)-A005774(n)`
-/

namespace A189912.P7913129519521797016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) - A005774 n

end

end A189912.P7913129519521797016

namespace A189912

/-- `A002426(n+1)-A005774(n)` -/
def P7913129519521797016.Spec : Prop :=
  ∀ n, P7913129519521797016.a n = A189912 n

end A189912

/-! ## A189912.P183593552614815435

`A298300(n+2)-A382988(n)`
-/

namespace A189912.P183593552614815435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298300 (n + 2) - A382988 n

end

end A189912.P183593552614815435

namespace A189912

/-- `A298300(n+2)-A382988(n)` -/
def P183593552614815435.Spec : Prop :=
  ∀ n, P183593552614815435.a n = A189912 n

end A189912

/-! ## A189912.P1582439313932234340

`∑[A026135(n)]-n*A001006(n)`
-/

namespace A189912.P1582439313932234340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * A001006 n

end

end A189912.P1582439313932234340

namespace A189912

/-- `∑[A026135(n)]-n*A001006(n)` -/
def P1582439313932234340.Spec : Prop :=
  ∀ n, P1582439313932234340.a n = A189912 n

end A189912

/-!
# A189913: Triangle read by rows: T(n,k) = binomial(n, k) * k! / (floor(k/2)! * floor((k+2)/2)!).

The programs for A189913, the canonical program `A189913.P8568618300615823938` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189913 has offset 0).

The definition of A189913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189913.P8568618300615823938

`A007318(n)*A057977(A002262(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A189913

/-- `A007318(n)*A057977(A002262(n))` -/
def P8568618300615823938.Spec : Prop :=
  ∀ n, P8568618300615823938.a n = A189913 n

theorem P8568618300615823938.correct : P8568618300615823938.Spec := by
  intro n
  simp only [A189913]

end A189913

/-! ## A189913.P4544917000401481361

`Δ[A102363(n)]*A057977(A002262(n))`
-/

namespace A189913.P4544917000401481361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057977 (A002262 n).toNat

end

end A189913.P4544917000401481361

namespace A189913

/-- `Δ[A102363(n)]*A057977(A002262(n))` -/
def P4544917000401481361.Spec : Prop :=
  ∀ n, P4544917000401481361.a n = A189913 n

end A189913

/-! ## A189913.P7800635636105951358

`A007318(n)*A057977(A144328(n+1))`
-/

namespace A189913.P7800635636105951358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057977 (A144328 (n + 1)).toNat

end

end A189913.P7800635636105951358

namespace A189913

/-- `A007318(n)*A057977(A144328(n+1))` -/
def P7800635636105951358.Spec : Prop :=
  ∀ n, P7800635636105951358.a n = A189913 n

end A189913

/-! ## A189913.P3422187920141622230

`A007318(n)/A085478(n)*A190907(n)`
-/

namespace A189913.P3422187920141622230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A085478 n : ℚ) * (A190907 n : ℚ)

end

end A189913.P3422187920141622230

namespace A189913

/-- `A007318(n)/A085478(n)*A190907(n)` -/
def P3422187920141622230.Spec : Prop :=
  ∀ n, P3422187920141622230.a n = (A189913 n : ℚ)

end A189913

/-! ## A189913.P3144019583476729563

`abs(A057977(A144328(n+1))*A130595(n))`
-/

namespace A189913.P3144019583476729563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057977 (A144328 (n + 1)).toNat * A130595 n|

end

end A189913.P3144019583476729563

namespace A189913

/-- `abs(A057977(A144328(n+1))*A130595(n))` -/
def P3144019583476729563.Spec : Prop :=
  ∀ n, P3144019583476729563.a n = A189913 n

end A189913

/-! ## A189913.P4266196973895949769

`A057977(A002262(n))*A097805(A014132(n+1))`
-/

namespace A189913.P4266196973895949769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (A002262 n).toNat * A097805 (A014132 (n + 1)).toNat

end

end A189913.P4266196973895949769

namespace A189913

/-- `A057977(A002262(n))*A097805(A014132(n+1))` -/
def P4266196973895949769.Spec : Prop :=
  ∀ n, P4266196973895949769.a n = A189913 n

end A189913

/-! ## A189913.P2547718353136729588

`A007318(n)*A189231(A112367(n))`
-/

namespace A189913.P2547718353136729588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A189231 (A112367 n).toNat

end

end A189913.P2547718353136729588

namespace A189913

/-- `A007318(n)*A189231(A112367(n))` -/
def P2547718353136729588.Spec : Prop :=
  ∀ n, P2547718353136729588.a n = A189913 n

end A189913

/-!
# A189914: a(n) is 2^phi(n) times the least common multiple of the proper divisors of n.

The programs for A189914, there is no canonical definition to state claims against.
-/

/-! ## A189914.P3539102439876267795

`A000010(A000009(n+2)*A018261(n+1))`
-/

namespace A189914.P3539102439876267795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000009 (n + 2) * A018261 (n + 1)).toNat

end

end A189914.P3539102439876267795

/-! ## A189914.P16763027389093644941

`A131883(∪[A005169(3*(n+1)), A056198(n+1)])`
-/

namespace A189914.P16763027389093644941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056198 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A189914.P16763027389093644941

/-! ## A189914.P14066522636182138971

`A279170(A166966(n))`
-/

namespace A189914.P14066522636182138971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279170 (A166966 n).toNat

end

end A189914.P14066522636182138971

/-! ## A189914.P8464696824349019818

`A348581(∏[A083954(n)])`
-/

namespace A189914.P8464696824349019818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348581 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189914.P8464696824349019818

/-! ## A189914.P17090634313924803413

`A279667(A316210(n+2))`
-/

namespace A189914.P17090634313924803413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279667 (A316210 (n + 2)).toNat

end

end A189914.P17090634313924803413

/-!
# A189915: Sequence for finding the day of the week for the first day of the month in a common (non-leap) year.

The programs for A189915, there is no canonical definition to state claims against.
-/

/-! ## A189915.P17058826208390512273

`A178054(72+n+1)`
-/

namespace A189915.P17058826208390512273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (72 + n + 1)

end

end A189915.P17058826208390512273

/-! ## A189915.P15413721805315742524

`A061251(n)%7`
-/

namespace A189915.P15413721805315742524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061251 n) 7

end

end A189915.P15413721805315742524

/-! ## A189915.P12054166144313766847

`7-A153840(n+1)`
-/

namespace A189915.P12054166144313766847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A153840 (n + 1)

end

end A189915.P12054166144313766847

/-! ## A189915.P4398175893319552886

`(A130447(n+1)-1)%7`
-/

namespace A189915.P4398175893319552886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130447 (n + 1) - 1) 7

end

end A189915.P4398175893319552886

/-! ## A189915.P10358019970548999061

`(8-A153839(n+1))%7`
-/

namespace A189915.P10358019970548999061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (8 - A153839 (n + 1)) 7

end

end A189915.P10358019970548999061

/-!
# A189916: Sequence for finding the day of the week for the first day of the month in leap years.

The programs for A189916, there is no canonical definition to state claims against.
-/

/-! ## A189916.P15765251033260465568

`A178054(144+n+1)`
-/

namespace A189916.P15765251033260465568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (144 + n + 1)

end

end A189916.P15765251033260465568

/-! ## A189916.P12724904668597394949

`(A134158(A073305(n))%7+1)%7`
-/

namespace A189916.P12724904668597394949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A134158 (A073305 n).toNat) 7 + 1) 7

end

end A189916.P12724904668597394949

/-! ## A189916.P14238396819418771296

`and(A134778(A134754(2*n)), A134779(n+3))`
-/

namespace A189916.P14238396819418771296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134778 (A134754 (2 * n)).toNat) (A134779 (n + 3))

end

end A189916.P14238396819418771296

/-!
# A189917: Pattern of the 97 consecutive leap years in a 400 year cycle of the Gregorian calendar.

The programs for A189917, there is no canonical definition to state claims against.
-/

/-! ## A189917.P5216421940372990944

`4*floor(n/cos(6))`
-/

namespace A189917.P5216421940372990944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n : ℝ) / Real.cos (6 : ℝ)⌋

end

end A189917.P5216421940372990944

/-! ## A189917.P8592354564811834525

`4*floor(n*root(2, 17))`
-/

namespace A189917.P8592354564811834525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n : ℝ) * (2 : ℝ) ^ (1 / (17 : ℝ))⌋

end

end A189917.P8592354564811834525

/-! ## A189917.P9344885562215693578

`4*A348553(n)-4`
-/

namespace A189917.P9344885562215693578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A348553 n - 4

end

end A189917.P9344885562215693578

/-! ## A189917.P622380204803459951

`record[4*n%A028887(n)]`
-/

namespace A189917.P622380204803459951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.tmod (n : ℤ) (A028887 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189917.P622380204803459951

/-! ## A189917.P1587140792499564489

`record[n*4%A271379(n)]`
-/

namespace A189917.P1587140792499564489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod 4 (A271379 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189917.P1587140792499564489

/-! ## A189917.P7016094888540788193

`eq[val(n+2, 2), A055641(n)!]`
-/

namespace A189917.P7016094888540788193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A055641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189917.P7016094888540788193

/-! ## A189917.P5013652780057485668

`record[A283442(A283442(4*n))]`
-/

namespace A189917.P5013652780057485668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A283442 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189917.P5013652780057485668

/-!
# A189919: O.g.f.: Sum_{n>=0} n! * x^n / Product_{k=1..n} (1 - (2*k-1)*x).

The programs for A189919, there is no canonical definition to state claims against.
-/

/-! ## A189919.P10751966187237103301

`A368454(abs(1-n))+A368454(n)`
-/

namespace A189919.P10751966187237103301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368454 |1 - (n : ℤ)|.toNat + A368454 n

end

end A189919.P10751966187237103301

/-! ## A189919.P240904346930083646

`A258498(n)+A185234(A165653(n))`
-/

namespace A189919.P240904346930083646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258498 n + A185234 (A165653 n).toNat

end

end A189919.P240904346930083646

/-!
# A189920: Zeckendorf representation of natural numbers.

The programs for A189920, there is no canonical definition to state claims against.
-/

/-! ## A189920.P18262929635409062704

`A065043(A351006(2*(n+2))-A193304(n+2))`
-/

namespace A189920.P18262929635409062704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A351006 (2 * (n + 2)) - A193304 (n + 2)).toNat

end

end A189920.P18262929635409062704

/-! ## A189920.P6369865557999553121

`val(A246127(n), A037088(A216955(2*(n+1))))`
-/

namespace A189920.P6369865557999553121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246127 n).toNat (A037088 (A216955 (2 * (n + 1))).toNat).toNat

end

end A189920.P6369865557999553121

/-! ## A189920.P12356042656262197915

`A217206(A072946(n))`
-/

namespace A189920.P12356042656262197915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217206 (A072946 n).toNat

end

end A189920.P12356042656262197915

/-! ## A189920.P14861181980738788615

`A386456(A362335(n+1))`
-/

namespace A189920.P14861181980738788615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386456 (A362335 (n + 1)).toNat

end

end A189920.P14861181980738788615

/-! ## A189920.P4734875524325087990

`abs(A015527(A154929(2*(n+1))))`
-/

namespace A189920.P4734875524325087990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015527 (A154929 (2 * (n + 1))).toNat|

end

end A189920.P4734875524325087990

/-!
# A189921: Wythoff representation of natural numbers.

The programs for A189921, there is no canonical definition to state claims against.
-/

/-! ## A189921.P7997427734762076142

`A136442(xor(A245547(n+1), A268174(n+1)))`
-/

namespace A189921.P7997427734762076142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136442 (Int.xor (A245547 (n + 1)) (A268174 (n + 1))).toNat

end

end A189921.P7997427734762076142

/-! ## A189921.P8962234748204436610

`A065043(∑[∑[A220406(n+1)]])`
-/

namespace A189921.P8962234748204436610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189921.P8962234748204436610

/-! ## A189921.P8516015723687302198

`A179081(∑[A126116(A334923(n+1))])`
-/

namespace A189921.P8516015723687302198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (A334923 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189921.P8516015723687302198

/-! ## A189921.P14846448898847840612

`A292438(A087308(n+1)%A185676(n))`
-/

namespace A189921.P14846448898847840612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (Int.tmod (A087308 (n + 1)) (A185676 n)).toNat

end

end A189921.P14846448898847840612

/-! ## A189921.P13681596428952636179

`A010060(A334028(3*n)+A208895(n+1))`
-/

namespace A189921.P13681596428952636179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A334028 (3 * n) + A208895 (n + 1)).toNat

end

end A189921.P13681596428952636179

/-!
# A189922: Jordan function J_{-4} multiplied by n^4.

The programs for A189922, the canonical program `A189922.P1082803906578277628` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189922 has offset 1).

The definition of A189922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189922.P1082803906578277628

`∏{p}[n+1, 1-#^4]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189922

/-- `∏{p}[n+1, 1-#^4]` -/
def P1082803906578277628.Spec : Prop :=
  ∀ n, P1082803906578277628.a n = A189922 (n + 1)

theorem P1082803906578277628.correct : P1082803906578277628.Spec := by
  intro n
  simp only [A189922, Nat.add_sub_cancel]

end A189922

/-! ## A189922.P18440873458807047451

`∑{d}[n+1, A334660(#)]`
-/

namespace A189922.P18440873458807047451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334660 d

end

end A189922.P18440873458807047451

namespace A189922

/-- `∑{d}[n+1, A334660(#)]` -/
def P18440873458807047451.Spec : Prop :=
  ∀ n, P18440873458807047451.a n = A189922 (n + 1)

end A189922

/-! ## A189922.P6336307031275245065

`∑{d}[n+1, #*A334659(#)]`
-/

namespace A189922.P6336307031275245065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A334659 d

end

end A189922.P6336307031275245065

namespace A189922

/-- `∑{d}[n+1, #*A334659(#)]` -/
def P6336307031275245065.Spec : Prop :=
  ∀ n, P6336307031275245065.a n = A189922 (n + 1)

end A189922

/-! ## A189922.P14669444203554495574

`∑{d}[n+1, #^4*A008683(#)]`
-/

namespace A189922.P14669444203554495574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 4 : ℤ) * A008683 d

end

end A189922.P14669444203554495574

namespace A189922

/-- `∑{d}[n+1, #^4*A008683(#)]` -/
def P14669444203554495574.Spec : Prop :=
  ∀ n, P14669444203554495574.a n = A189922 (n + 1)

end A189922

/-! ## A189922.P11117769107402825902

`A046970(n+1)*A351265(n+1)`
-/

namespace A189922.P11117769107402825902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1) * A351265 (n + 1)

end

end A189922.P11117769107402825902

namespace A189922

/-- `A046970(n+1)*A351265(n+1)` -/
def P11117769107402825902.Spec : Prop :=
  ∀ n, P11117769107402825902.a n = A189922 (n + 1)

end A189922

/-! ## A189922.P8198504381891159743

`∑{d}[n+1, A000005(#)*A053826((n+1)/#)]`
-/

namespace A189922.P8198504381891159743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A053826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A189922.P8198504381891159743

namespace A189922

/-- `∑{d}[n+1, A000005(#)*A053826((n+1)/#)]` -/
def P8198504381891159743.Spec : Prop :=
  ∀ n, P8198504381891159743.a n = A189922 (n + 1)

end A189922

/-! ## A189922.P12509031507265449271

`∑{d}[n+1, A189923(#)*A238533((n+1)/#)]`
-/

namespace A189922.P12509031507265449271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189923 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A189922.P12509031507265449271

namespace A189922

/-- `∑{d}[n+1, A189923(#)*A238533((n+1)/#)]` -/
def P12509031507265449271.Spec : Prop :=
  ∀ n, P12509031507265449271.a n = A189922 (n + 1)

end A189922

/-! ## A189922.P8039431289385313288

`A008836(n+1)*A046970(n+1)*A328639(n+1)`
-/

namespace A189922.P8039431289385313288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A046970 (n + 1) * A328639 (n + 1)

end

end A189922.P8039431289385313288

namespace A189922

/-- `A008836(n+1)*A046970(n+1)*A328639(n+1)` -/
def P8039431289385313288.Spec : Prop :=
  ∀ n, P8039431289385313288.a n = A189922 (n + 1)

end A189922

/-!
# A189923: Jordan function J_{-5}(n) multiplied by n^5.

The programs for A189923, the canonical program `A189923.P17989420672493736624` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189923 has offset 1).

The definition of A189923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189923.P17989420672493736624

`∏{p}[n+1, 1-#^5]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189923

/-- `∏{p}[n+1, 1-#^5]` -/
def P17989420672493736624.Spec : Prop :=
  ∀ n, P17989420672493736624.a n = A189923 (n + 1)

theorem P17989420672493736624.correct : P17989420672493736624.Spec := by
  intro n
  simp only [A189923, Nat.add_sub_cancel]

end A189923

/-! ## A189923.P16531314771115429355

`∑{d}[n+1, #*A334660(#)]`
-/

namespace A189923.P16531314771115429355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A334660 d

end

end A189923.P16531314771115429355

namespace A189923

/-- `∑{d}[n+1, #*A334660(#)]` -/
def P16531314771115429355.Spec : Prop :=
  ∀ n, P16531314771115429355.a n = A189923 (n + 1)

end A189923

/-! ## A189923.P7777079166004478846

`∑{d}[n+1, #^5*A008683(#)]`
-/

namespace A189923.P7777079166004478846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 5 : ℤ) * A008683 d

end

end A189923.P7777079166004478846

namespace A189923

/-- `∑{d}[n+1, #^5*A008683(#)]` -/
def P7777079166004478846.Spec : Prop :=
  ∀ n, P7777079166004478846.a n = A189923 (n + 1)

end A189923

/-! ## A189923.P3046596420069704162

`∑{d}[n+1, A055615((n+1)/#)^5]`
-/

namespace A189923.P3046596420069704162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 5

end

end A189923.P3046596420069704162

namespace A189923

/-- `∑{d}[n+1, A055615((n+1)/#)^5]` -/
def P3046596420069704162.Spec : Prop :=
  ∀ n, P3046596420069704162.a n = A189923 (n + 1)

end A189923

/-! ## A189923.P8799650193986384200

`∑{d}[n+1, A000005(#)*A178448((n+1)/#)]`
-/

namespace A189923.P8799650193986384200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A178448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A189923.P8799650193986384200

namespace A189923

/-- `∑{d}[n+1, A000005(#)*A178448((n+1)/#)]` -/
def P8799650193986384200.Spec : Prop :=
  ∀ n, P8799650193986384200.a n = A189923 (n + 1)

end A189923

/-! ## A189923.P12238872409197712930

`A322324(A052905(n+3))`
-/

namespace A189923.P12238872409197712930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322324 (A052905 (n + 3)).toNat

end

end A189923.P12238872409197712930

namespace A189923

/-- `A322324(A052905(n+3))` -/
def P12238872409197712930.Spec : Prop :=
  ∀ n, P12238872409197712930.a n = A189923 (n + 1)

end A189923

/-!
# A189924: a(n) = abs(Stirling1(n+2,2)) - abs(Stirling1(n+2,3)).

The programs for A189924, there is no canonical definition to state claims against.
-/

/-! ## A189924.P8070653510720094233

`n!+(n+1)*a(n-1)-A000254(n)` with `a(0)=1`
-/

namespace A189924.P8070653510720094233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℤ) + (n + 1 : ℤ) * a (n - 1) - A000254 n

end

end A189924.P8070653510720094233

/-! ## A189924.P1985216648240903310

`A094645(A167614(n+2))`
-/

namespace A189924.P1985216648240903310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094645 (A167614 (n + 2)).toNat

end

end A189924.P1985216648240903310

/-! ## A189924.P14490988746616506284

`A094645(A055999(n)+9)`
-/

namespace A189924.P14490988746616506284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094645 (A055999 n + 9).toNat

end

end A189924.P14490988746616506284

/-! ## A189924.P5806376209103476749

`A094645(eq[3, A002262(n)])`
-/

namespace A189924.P5806376209103476749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189924.P5806376209103476749

/-! ## A189924.P9468016492760068612

`A094645(eq[8, A059268(n)])`
-/

namespace A189924.P9468016492760068612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189924.P9468016492760068612

/-! ## A189924.P7960988851665791294

`A094645(eq[4, A002260(n+1)])`
-/

namespace A189924.P7960988851665791294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189924.P7960988851665791294

/-! ## A189924.P9120840685329920661

`A000254(n+1)+A062157(n+1)*A081051(n+1)`
-/

namespace A189924.P9120840685329920661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) + A062157 (n + 1) * A081051 (n + 1)

end

end A189924.P9120840685329920661

/-! ## A189924.P3988624986771918648

`A132393(A340266(n+1))-A132393(A167614(n+1))`
-/

namespace A189924.P3988624986771918648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A340266 (n + 1)).toNat - A132393 (A167614 (n + 1)).toNat

end

end A189924.P3988624986771918648

/-!
# A189925: Expansion of theta_4/theta_3 in powers of q.

The programs for A189925, there is no canonical definition to state claims against.
-/

/-! ## A189925.P405137371907253748

`(-1)^n*A007096(n)`
-/

namespace A189925.P405137371907253748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007096 n

end

end A189925.P405137371907253748

/-! ## A189925.P14703253587831181871

`A232358(n)-A127391(n)`
-/

namespace A189925.P14703253587831181871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232358 n - A127391 n

end

end A189925.P14703253587831181871

/-! ## A189925.P7069169231925934741

`A007096(n)*A033999(n)`
-/

namespace A189925.P7069169231925934741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 n * A033999 n

end

end A189925.P7069169231925934741

/-! ## A189925.P13033824195550010902

`A208933(n)*A280560(n)`
-/

namespace A189925.P13033824195550010902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 n * A280560 n

end

end A189925.P13033824195550010902

/-! ## A189925.P15420802534770924440

`gcd(2, A007096(n))*A112128(n)`
-/

namespace A189925.P15420802534770924440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A007096 n) : ℤ) * A112128 n

end

end A189925.P15420802534770924440

/-! ## A189925.P17537675445138263162

`(2-A084099(n)²)*A208933(n)`
-/

namespace A189925.P17537675445138263162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A084099 n ^ 2) * A208933 n

end

end A189925.P17537675445138263162

/-! ## A189925.P15132731414486481076

`A007096(n)*A054354(A054353(n+1))`
-/

namespace A189925.P15132731414486481076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 n * A054354 (A054353 (n + 1)).toNat

end

end A189925.P15132731414486481076

/-! ## A189925.P6856982275705271649

`A020639(A046930(n+2))*A112128(n)`
-/

namespace A189925.P6856982275705271649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046930 (n + 2)).toNat * A112128 n

end

end A189925.P6856982275705271649

/-! ## A189925.P9512855053092757494

`A007096(n)/A029839(n)*A082304(n)`
-/

namespace A189925.P9512855053092757494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A029839 n : ℚ) * (A082304 n : ℚ)

end

end A189925.P9512855053092757494

/-! ## A189925.P2809591520571780474

`A007096(n)/A112128(n)*A208933(n)`
-/

namespace A189925.P2809591520571780474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A112128 n : ℚ) * (A208933 n : ℚ)

end

end A189925.P2809591520571780474

/-! ## A189925.P12951517932035952580

`A007096(n)/(A000035(n+1)-A000035(n))`
-/

namespace A189925.P12951517932035952580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A000035 (n + 1) - A000035 n : ℚ)

end

end A189925.P12951517932035952580

/-! ## A189925.P3768298501119308136

`A112128(n)*A280560(2*n)`
-/

namespace A189925.P3768298501119308136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112128 n * A280560 (2 * n)

end

end A189925.P3768298501119308136

/-! ## A189925.P1325762303314121445

`A007096(n)*A117569(2*n+1)`
-/

namespace A189925.P1325762303314121445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 n * A117569 (2 * n + 1)

end

end A189925.P1325762303314121445

/-! ## A189925.P9201631833279145338

`A036453(2*n+1)*A112128(n)`
-/

namespace A189925.P9201631833279145338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A112128 n

end

end A189925.P9201631833279145338

/-! ## A189925.P5905970244863780655

`A014969(n)/A131126(n)*A112128(n)`
-/

namespace A189925.P5905970244863780655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A131126 n : ℚ) * (A112128 n : ℚ)

end

end A189925.P5905970244863780655

/-! ## A189925.P189090767678269914

`A014969(n)/A210066(n)*A208933(n)`
-/

namespace A189925.P189090767678269914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A210066 n : ℚ) * (A208933 n : ℚ)

end

end A189925.P189090767678269914

/-! ## A189925.P393318909050187316

`A007096(n)/A014969(n)*A139820(n)`
-/

namespace A189925.P393318909050187316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A014969 n : ℚ) * (A139820 n : ℚ)

end

end A189925.P393318909050187316

/-! ## A189925.P2975185556607190901

`A112128(n)*A246063(A210067(2*n))`
-/

namespace A189925.P2975185556607190901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112128 n * A246063 (A210067 (2 * n)).toNat

end

end A189925.P2975185556607190901

/-! ## A189925.P15189367388328538026

`A007096(n)/A022577(n)*A124863(n)`
-/

namespace A189925.P15189367388328538026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A022577 n : ℚ) * (A124863 n : ℚ)

end

end A189925.P15189367388328538026

/-!
# A189926: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sin(Pi/5), t=cos(Pi/5), where [] denotes the floor function.

The programs for A189926, the canonical program `A189926.P16140492852500832957` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189926 has offset 1).

The definition of A189926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189926.P16140492852500832957

`n+1+floor((n+1)*sin(π/5))+floor((n+1)*cos(π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189926

/-- `n+1+floor((n+1)*sin(π/5))+floor((n+1)*cos(π/5))` -/
def P16140492852500832957.Spec : Prop :=
  ∀ n, P16140492852500832957.a n = A189926 (n + 1)

theorem P16140492852500832957.correct : P16140492852500832957.Spec := by
  intro n
  simp only [A189926, Nat.add_sub_cancel]

end A189926

/-! ## A189926.P7732746814393736390

`A060106(n+1)+A010815(A005935(n+3))`
-/

namespace A189926.P7732746814393736390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060106 (n + 1) + A010815 (A005935 (n + 3)).toNat

end

end A189926.P7732746814393736390

namespace A189926

/-- `A060106(n+1)+A010815(A005935(n+3))` -/
def P7732746814393736390.Spec : Prop :=
  ∀ n, P7732746814393736390.a n = A189926 (n + 1)

end A189926

/-! ## A189926.P17734895853642466287

`A060106(n+1)-A151795(A363066(n))`
-/

namespace A189926.P17734895853642466287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060106 (n + 1) - A151795 (A363066 n).toNat

end

end A189926.P17734895853642466287

namespace A189926

/-- `A060106(n+1)-A151795(A363066(n))` -/
def P17734895853642466287.Spec : Prop :=
  ∀ n, P17734895853642466287.a n = A189926 (n + 1)

end A189926

/-! ## A189926.P6849098935954941421

`A182773(n+1)-A055642(A068928(n+2))`
-/

namespace A189926.P6849098935954941421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182773 (n + 1) - A055642 (A068928 (n + 2)).toNat

end

end A189926.P6849098935954941421

namespace A189926

/-- `A182773(n+1)-A055642(A068928(n+2))` -/
def P6849098935954941421.Spec : Prop :=
  ∀ n, P6849098935954941421.a n = A189926 (n + 1)

end A189926

/-! ## A189926.P13430817677831101119

`A182773(n+1)-A055642(2*A000045(n))`
-/

namespace A189926.P13430817677831101119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182773 (n + 1) - A055642 (2 * A000045 n).toNat

end

end A189926.P13430817677831101119

namespace A189926

/-- `A182773(n+1)-A055642(2*A000045(n))` -/
def P13430817677831101119.Spec : Prop :=
  ∀ n, P13430817677831101119.a n = A189926 (n + 1)

end A189926

/-!
# A189927: b(n) = n + [n*r/s] + [n*t/s]; r=1, s=sin(Pi/5), t=cos(Pi/5), where [] denotes the floor function.

The programs for A189927, the canonical program `A189927.P3710601359886013168` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189927 has offset 1).

The definition of A189927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189927.P3710601359886013168

`n+1+floor((n+1)/sin(π/5))+floor((n+1)/tan(π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189927

/-- `n+1+floor((n+1)/sin(π/5))+floor((n+1)/tan(π/5))` -/
def P3710601359886013168.Spec : Prop :=
  ∀ n, P3710601359886013168.a n = A189927 (n + 1)

theorem P3710601359886013168.correct : P3710601359886013168.Spec := by
  intro n
  simp only [A189927, Nat.add_sub_cancel]

end A189927

/-! ## A189927.P10085981114479271129

`A059995(A304501(3*n)+5)+A037477(3*(n+1))`
-/

namespace A189927.P10085981114479271129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A304501 (3 * n) + 5).toNat + A037477 (3 * (n + 1))

end

end A189927.P10085981114479271129

namespace A189927

/-- `A059995(A304501(3*n)+5)+A037477(3*(n+1))` -/
def P10085981114479271129.Spec : Prop :=
  ∀ n, P10085981114479271129.a n = A189927 (n + 1)

end A189927

/-! ## A189927.P2641032853246697782

`4*(n+1)-A073424(A026742(n))`
-/

namespace A189927.P2641032853246697782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A073424 (A026742 n).toNat

end

end A189927.P2641032853246697782

namespace A189927

/-- `4*(n+1)-A073424(A026742(n))` -/
def P2641032853246697782.Spec : Prop :=
  ∀ n, P2641032853246697782.a n = A189927 (n + 1)

end A189927

/-! ## A189927.P12980423815841514461

`A025851(A187829(n+1))+3*(n+1)+n`
-/

namespace A189927.P12980423815841514461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 (A187829 (n + 1)).toNat + (3 * (n + 1) + n : ℤ)

end

end A189927.P12980423815841514461

namespace A189927

/-- `A025851(A187829(n+1))+3*(n+1)+n` -/
def P12980423815841514461.Spec : Prop :=
  ∀ n, P12980423815841514461.a n = A189927 (n + 1)

end A189927

/-! ## A189927.P244660782681459216

`A289057(A027306(n))+A004767(n)`
-/

namespace A189927.P244660782681459216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289057 (A027306 n).toNat + A004767 n

end

end A189927.P244660782681459216

namespace A189927

/-- `A289057(A027306(n))+A004767(n)` -/
def P244660782681459216.Spec : Prop :=
  ∀ n, P244660782681459216.a n = A189927 (n + 1)

end A189927

/-!
# A189928: c(n) = n + [n*r/t] + [n*s/t]; r=1, s=sin(Pi/5), t=cos(Pi/5), where [] denotes the floor function.

The programs for A189928, the canonical program `A189928.P16660306946177260710` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189928 has offset 1).

The definition of A189928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189928.P16660306946177260710

`n+1+floor((n+1)/cos(π/5))+floor((n+1)*tan(π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189928

/-- `n+1+floor((n+1)/cos(π/5))+floor((n+1)*tan(π/5))` -/
def P16660306946177260710.Spec : Prop :=
  ∀ n, P16660306946177260710.a n = A189928 (n + 1)

theorem P16660306946177260710.correct : P16660306946177260710.Spec := by
  intro n
  simp only [A189928, Nat.add_sub_cancel]

end A189928

/-! ## A189928.P3032685437947023725

`A182760(n+1)+A001961(n+1)%A329961(2*n+5)`
-/

namespace A189928.P3032685437947023725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182760 (n + 1) + Int.tmod (A001961 (n + 1)) (A329961 (2 * n + 5))

end

end A189928.P3032685437947023725

namespace A189928

/-- `A182760(n+1)+A001961(n+1)%A329961(2*n+5)` -/
def P3032685437947023725.Spec : Prop :=
  ∀ n, P3032685437947023725.a n = A189928 (n + 1)

end A189928

/-! ## A189928.P3934336176496326604

`comp[5*n]+A329829(n+1)+A185284(A009996(n+1))`
-/

namespace A189928.P3934336176496326604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A329829 (n + 1) + A185284 (A009996 (n + 1)).toNat)

end

end A189928.P3934336176496326604

namespace A189928

/-- `comp[5*n]+A329829(n+1)+A185284(A009996(n+1))` -/
def P3934336176496326604.Spec : Prop :=
  ∀ n, P3934336176496326604.a n = A189928 (n + 1)

end A189928

/-! ## A189928.P15759016403730623159

`A000027(3*n+2)-A188034(A291789(n))`
-/

namespace A189928.P15759016403730623159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * n + 2) - A188034 (A291789 n).toNat

end

end A189928.P15759016403730623159

namespace A189928

/-- `A000027(3*n+2)-A188034(A291789(n))` -/
def P15759016403730623159.Spec : Prop :=
  ∀ n, P15759016403730623159.a n = A189928 (n + 1)

end A189928

/-! ## A189928.P17111969027681340793

`A156242(n+1)-A270642(A067323(3*n+2))`
-/

namespace A189928.P17111969027681340793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - A270642 (A067323 (3 * n + 2)).toNat

end

end A189928.P17111969027681340793

namespace A189928

/-- `A156242(n+1)-A270642(A067323(3*n+2))` -/
def P17111969027681340793.Spec : Prop :=
  ∀ n, P17111969027681340793.a n = A189928 (n + 1)

end A189928

/-!
# A189929: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sin(2pi/5), t=cos(2pi/5).

The programs for A189929, the canonical program `A189929.P902383031264219066` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189929 has offset 1).

The definition of A189929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189929.P902383031264219066

`n+1+floor((n+1)*sin(2*π/5))+floor((n+1)*cos(2*π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189929

/-- `n+1+floor((n+1)*sin(2*π/5))+floor((n+1)*cos(2*π/5))` -/
def P902383031264219066.Spec : Prop :=
  ∀ n, P902383031264219066.a n = A189929 (n + 1)

theorem P902383031264219066.correct : P902383031264219066.Spec := by
  intro n
  simp only [A189929, Nat.add_sub_cancel]

end A189929

/-! ## A189929.P8109183934402858545

`A152467(A141107(3*(n+1)))+n`
-/

namespace A189929.P8109183934402858545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A141107 (3 * (n + 1))).toNat + (n : ℤ)

end

end A189929.P8109183934402858545

namespace A189929

/-- `A152467(A141107(3*(n+1)))+n` -/
def P8109183934402858545.Spec : Prop :=
  ∀ n, P8109183934402858545.a n = A189929 (n + 1)

end A189929

/-! ## A189929.P13847106967782951915

`A189377(n+1)+A004216(A000211(n))`
-/

namespace A189929.P13847106967782951915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189377 (n + 1) + A004216 (A000211 n).toNat

end

end A189929.P13847106967782951915

namespace A189929

/-- `A189377(n+1)+A004216(A000211(n))` -/
def P13847106967782951915.Spec : Prop :=
  ∀ n, P13847106967782951915.a n = A189929 (n + 1)

end A189929

/-! ## A189929.P1838278555960685853

`A187339(n+1)+A049347(A193842(2*(n+1)))`
-/

namespace A189929.P1838278555960685853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1) + A049347 (A193842 (2 * (n + 1))).toNat

end

end A189929.P1838278555960685853

namespace A189929

/-- `A187339(n+1)+A049347(A193842(2*(n+1)))` -/
def P1838278555960685853.Spec : Prop :=
  ∀ n, P1838278555960685853.a n = A189929 (n + 1)

end A189929

/-! ## A189929.P9631744707660861731

`eq[A103344(2*n+1), A341619(A344193(3*n+5))]`
-/

namespace A189929.P9631744707660861731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (A344193 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189929.P9631744707660861731

namespace A189929

/-- `eq[A103344(2*n+1), A341619(A344193(3*n+5))]` -/
def P9631744707660861731.Spec : Prop :=
  ∀ n, (P9631744707660861731.a n : ℤ) = A189929 (n + 1)

end A189929

/-!
# A189930: b(n) = n + [n*r/s] + [n*t/s]; r=1, s=sin(2*Pi/5), t=cos(2*Pi/5).

The programs for A189930, the canonical program `A189930.P13706267019787945446` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189930 has offset 1).

The definition of A189930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189930.P13706267019787945446

`n+1+floor((n+1)/sin(2*π/5))+floor((n+1)/tan(2*π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189930

/-- `n+1+floor((n+1)/sin(2*π/5))+floor((n+1)/tan(2*π/5))` -/
def P13706267019787945446.Spec : Prop :=
  ∀ n, P13706267019787945446.a n = A189930 (n + 1)

theorem P13706267019787945446.correct : P13706267019787945446.Spec := by
  intro n
  simp only [A189930, Nat.add_sub_cancel]

end A189930

/-! ## A189930.P16181904892099083038

`A054868(A054842(2*(n+1)))+A047304(2*n+1)`
-/

namespace A189930.P16181904892099083038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A054842 (2 * (n + 1))).toNat + A047304 (2 * n + 1)

end

end A189930.P16181904892099083038

namespace A189930

/-- `A054868(A054842(2*(n+1)))+A047304(2*n+1)` -/
def P16181904892099083038.Spec : Prop :=
  ∀ n, P16181904892099083038.a n = A189930 (n + 1)

end A189930

/-! ## A189930.P5470989763793504178

`A089806(A053191(n+3))+A020660(2*(n+1))`
-/

namespace A189930.P5470989763793504178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 (A053191 (n + 3)).toNat + A020660 (2 * (n + 1))

end

end A189930.P5470989763793504178

namespace A189930

/-- `A089806(A053191(n+3))+A020660(2*(n+1))` -/
def P5470989763793504178.Spec : Prop :=
  ∀ n, P5470989763793504178.a n = A189930 (n + 1)

end A189930

/-!
# A189931: c(n) = n + [n*r/t] + [n*s/t]; r=1, s=sin(2pi/5), t=cos(2pi/5).

The programs for A189931, the canonical program `A189931.P6420907577482812636` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189931 has offset 1).

The definition of A189931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189931.P6420907577482812636

`n+1+floor((n+1)/cos(2*π/5))+floor((n+1)*tan(2*π/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189931

/-- `n+1+floor((n+1)/cos(2*π/5))+floor((n+1)*tan(2*π/5))` -/
def P6420907577482812636.Spec : Prop :=
  ∀ n, P6420907577482812636.a n = A189931 (n + 1)

theorem P6420907577482812636.correct : P6420907577482812636.Spec := by
  intro n
  simp only [A189931, Nat.add_sub_cancel]

end A189931

/-! ## A189931.P5810194100457993971

`A118759(A064676(n+1))+A001962(n+1)`
-/

namespace A189931.P5810194100457993971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A064676 (n + 1)).toNat + A001962 (n + 1)

end

end A189931.P5810194100457993971

namespace A189931

/-- `A118759(A064676(n+1))+A001962(n+1)` -/
def P5810194100457993971.Spec : Prop :=
  ∀ n, P5810194100457993971.a n = A189931 (n + 1)

end A189931

/-! ## A189931.P18365928149417849436

`A118759(A064676(n+1))+∑[A276866(n+1)+1]`
-/

namespace A189931.P18365928149417849436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276866 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A064676 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189931.P18365928149417849436

namespace A189931

/-- `A118759(A064676(n+1))+∑[A276866(n+1)+1]` -/
def P18365928149417849436.Spec : Prop :=
  ∀ n, P18365928149417849436.a n = A189931 (n + 1)

end A189931

/-! ## A189931.P10889207331589265047

`A094500(3*n+4)+A276854(n+1)+2*(n+1)-2`
-/

namespace A189931.P10889207331589265047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (3 * n + 4) + (A276854 (n + 1) + (2 * (n + 1) : ℤ)) - 2

end

end A189931.P10889207331589265047

namespace A189931

/-- `A094500(3*n+4)+A276854(n+1)+2*(n+1)-2` -/
def P10889207331589265047.Spec : Prop :=
  ∀ n, P10889207331589265047.a n = A189931 (n + 1)

end A189931

/-! ## A189931.P8064950118996705959

`A011658(A006926(n))+A003151(3*(n+1))`
-/

namespace A189931.P8064950118996705959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 (A006926 n).toNat + A003151 (3 * (n + 1))

end

end A189931.P8064950118996705959

namespace A189931

/-- `A011658(A006926(n))+A003151(3*(n+1))` -/
def P8064950118996705959.Spec : Prop :=
  ∀ n, P8064950118996705959.a n = A189931 (n + 1)

end A189931

/-!
# A189932: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=(sin(Pi/5))^2, t=(cos(Pi/5))^2, where [] denotes the floor function.

The programs for A189932, the canonical program `A189932.P7687578731284556266` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189932 has offset 1).

The definition of A189932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189932.P7687578731284556266

`n+1+floor((n+1)/sin(π/5)²)+floor((n+1)/tan(π/5)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189932

/-- `n+1+floor((n+1)/sin(π/5)²)+floor((n+1)/tan(π/5)²)` -/
def P7687578731284556266.Spec : Prop :=
  ∀ n, P7687578731284556266.a n = A189932 (n + 1)

theorem P7687578731284556266.correct : P7687578731284556266.Spec := by
  intro n
  simp only [A189932, Nat.add_sub_cancel]

end A189932

/-! ## A189932.P4207754851368378253

`2*floor(4*(n+1)/(3-ϕ))`
-/

namespace A189932.P4207754851368378253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊4 * ((n + 1 : ℝ) / (3 - Real.goldenRatio))⌋

end

end A189932.P4207754851368378253

namespace A189932

/-- `2*floor(4*(n+1)/(3-ϕ))` -/
def P4207754851368378253.Spec : Prop :=
  ∀ n, P4207754851368378253.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P9778668579926883631

`A000027(2*A189934(n+1))`
-/

namespace A189932.P9778668579926883631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * A189934 (n + 1)).toNat

end

end A189932.P9778668579926883631

namespace A189932

/-- `A000027(2*A189934(n+1))` -/
def P9778668579926883631.Spec : Prop :=
  ∀ n, P9778668579926883631.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P18226448130521877489

`A330185(n+1)+A184746(n+1)`
-/

namespace A189932.P18226448130521877489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330185 (n + 1) + A184746 (n + 1)

end

end A189932.P18226448130521877489

namespace A189932

/-- `A330185(n+1)+A184746(n+1)` -/
def P18226448130521877489.Spec : Prop :=
  ∀ n, P18226448130521877489.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P6517174568717759594

`∑{d}[n+1, A000038(#-1)*A189934((n+1)/#)]`
-/

namespace A189932.P6517174568717759594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000038 (d - 1) * A189934 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A189932.P6517174568717759594

namespace A189932

/-- `∑{d}[n+1, A000038(#-1)*A189934((n+1)/#)]` -/
def P6517174568717759594.Spec : Prop :=
  ∀ n, P6517174568717759594.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P2409239930167007984

`A189934(A000027(n+1))+A189934(n+1)`
-/

namespace A189932.P2409239930167007984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189934 (A000027 (n + 1)).toNat + A189934 (n + 1)

end

end A189932.P2409239930167007984

namespace A189932

/-- `A189934(A000027(n+1))+A189934(n+1)` -/
def P2409239930167007984.Spec : Prop :=
  ∀ n, P2409239930167007984.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P1568131008056234327

`A189933(n+1)*A189934(n+1)/A189935(n+1)`
-/

namespace A189932.P1568131008056234327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189933 (n + 1) * A189934 (n + 1) : ℚ) / (A189935 (n + 1) : ℚ)

end

end A189932.P1568131008056234327

namespace A189932

/-- `A189933(n+1)*A189934(n+1)/A189935(n+1)` -/
def P1568131008056234327.Spec : Prop :=
  ∀ n, P1568131008056234327.a n = (A189932 (n + 1) : ℚ)

end A189932

/-! ## A189932.P11670308552736728637

`A014682(4*A189934(n+1))`
-/

namespace A189932.P11670308552736728637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (4 * A189934 (n + 1)).toNat

end

end A189932.P11670308552736728637

namespace A189932

/-- `A014682(4*A189934(n+1))` -/
def P11670308552736728637.Spec : Prop :=
  ∀ n, P11670308552736728637.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P17978183518871264984

`A189933(A189934(n+1)-n)-2`
-/

namespace A189932.P17978183518871264984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189933 (A189934 (n + 1) - (n : ℤ)).toNat - 2

end

end A189932.P17978183518871264984

namespace A189932

/-- `A189933(A189934(n+1)-n)-2` -/
def P17978183518871264984.Spec : Prop :=
  ∀ n, P17978183518871264984.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P6525293646306772050

`4*n+2+2*A194964(2*(n+1))`
-/

namespace A189932.P6525293646306772050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) + 2 * A194964 (2 * (n + 1))

end

end A189932.P6525293646306772050

namespace A189932

/-- `4*n+2+2*A194964(2*(n+1))` -/
def P6525293646306772050.Spec : Prop :=
  ∀ n, P6525293646306772050.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P10855566906432406847

`A186515(2*(n+1))+A186515(2*(n+1))`
-/

namespace A189932.P10855566906432406847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186515 (2 * (n + 1)) + A186515 (2 * (n + 1))

end

end A189932.P10855566906432406847

namespace A189932

/-- `A186515(2*(n+1))+A186515(2*(n+1))` -/
def P10855566906432406847.Spec : Prop :=
  ∀ n, P10855566906432406847.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P7380053050527475023

`4*n+2+A004277(A194964(2*(n+1)))`
-/

namespace A189932.P7380053050527475023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) + A004277 (A194964 (2 * (n + 1))).toNat

end

end A189932.P7380053050527475023

namespace A189932

/-- `4*n+2+A004277(A194964(2*(n+1)))` -/
def P7380053050527475023.Spec : Prop :=
  ∀ n, P7380053050527475023.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P10974032144782790266

`∑[Δ[A188190(2*n+1)]+2]`
-/

namespace A189932.P10974032144782790266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189932.P10974032144782790266

namespace A189932

/-- `∑[Δ[A188190(2*n+1)]+2]` -/
def P10974032144782790266.Spec : Prop :=
  ∀ n, P10974032144782790266.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P14621604269902810941

`A004277(A189934(n+1))`
-/

namespace A189932.P14621604269902810941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189934 (n + 1)).toNat

end

end A189932.P14621604269902810941

namespace A189932

/-- `A004277(A189934(n+1))` -/
def P14621604269902810941.Spec : Prop :=
  ∀ n, P14621604269902810941.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P16338321908481769257

`A131452(A330185(n+1))`
-/

namespace A189932.P16338321908481769257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (A330185 (n + 1)).toNat

end

end A189932.P16338321908481769257

namespace A189932

/-- `A131452(A330185(n+1))` -/
def P16338321908481769257.Spec : Prop :=
  ∀ n, P16338321908481769257.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P17089489898356134510

`A032766(2*A189934(n+1))-A189934(n+1)`
-/

namespace A189932.P17089489898356134510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (2 * A189934 (n + 1)).toNat - A189934 (n + 1)

end

end A189932.P17089489898356134510

namespace A189932

/-- `A032766(2*A189934(n+1))-A189934(n+1)` -/
def P17089489898356134510.Spec : Prop :=
  ∀ n, P17089489898356134510.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P5656964843217178729

`A004525(4*A189934(n+1))`
-/

namespace A189932.P5656964843217178729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (4 * A189934 (n + 1)).toNat

end

end A189932.P5656964843217178729

namespace A189932

/-- `A004525(4*A189934(n+1))` -/
def P5656964843217178729.Spec : Prop :=
  ∀ n, P5656964843217178729.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P1283990482253315571

`A123920(2*2*A330185(n+1))`
-/

namespace A189932.P1283990482253315571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123920 (2 * (2 * A330185 (n + 1))).toNat

end

end A189932.P1283990482253315571

namespace A189932

/-- `A123920(2*2*A330185(n+1))` -/
def P1283990482253315571.Spec : Prop :=
  ∀ n, P1283990482253315571.a n = A189932 (n + 1)

end A189932

/-! ## A189932.P14344420405537619170

`A047878(2*2*A330185(n+1))`
-/

namespace A189932.P14344420405537619170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (2 * (2 * A330185 (n + 1))).toNat

end

end A189932.P14344420405537619170

namespace A189932

/-- `A047878(2*2*A330185(n+1))` -/
def P14344420405537619170.Spec : Prop :=
  ∀ n, P14344420405537619170.a n = A189932 (n + 1)

end A189932

/-!
# A189933: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=(sin(Pi/5))^2, t=(cos(Pi/5))^2.

The programs for A189933, the canonical program `A189933.P3109089262291664818` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189933 has offset 1).

The definition of A189933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189933.P3109089262291664818

`n+1+floor((n+1)/cos(π/5)²)+floor((n+1)*tan(π/5)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189933

/-- `n+1+floor((n+1)/cos(π/5)²)+floor((n+1)*tan(π/5)²)` -/
def P3109089262291664818.Spec : Prop :=
  ∀ n, P3109089262291664818.a n = A189933 (n + 1)

theorem P3109089262291664818.correct : P3109089262291664818.Spec := by
  intro n
  simp only [A189933, Nat.add_sub_cancel]

end A189933

/-! ## A189933.P9390063492131722853

`2*floor((n+1)*(2/ϕ)²)`
-/

namespace A189933.P9390063492131722853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 1 : ℝ) * (2 / Real.goldenRatio) ^ 2⌋

end

end A189933.P9390063492131722853

namespace A189933

/-- `2*floor((n+1)*(2/ϕ)²)` -/
def P9390063492131722853.Spec : Prop :=
  ∀ n, P9390063492131722853.a n = A189933 (n + 1)

end A189933

/-! ## A189933.P12500958787409233010

`A189935(n+1)+A189935(n+1)`
-/

namespace A189933.P12500958787409233010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189935 (n + 1) + A189935 (n + 1)

end

end A189933.P12500958787409233010

namespace A189933

/-- `A189935(n+1)+A189935(n+1)` -/
def P12500958787409233010.Spec : Prop :=
  ∀ n, P12500958787409233010.a n = A189933 (n + 1)

end A189933

/-! ## A189933.P14647152118345437605

`A004277(A189935(n+1))`
-/

namespace A189933.P14647152118345437605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189935 (n + 1)).toNat

end

end A189933.P14647152118345437605

namespace A189933

/-- `A004277(A189935(n+1))` -/
def P14647152118345437605.Spec : Prop :=
  ∀ n, P14647152118345437605.a n = A189933 (n + 1)

end A189933

/-! ## A189933.P14068477021712455932

`A004275(A195175(n+1))`
-/

namespace A189933.P14068477021712455932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A195175 (n + 1)).toNat

end

end A189933.P14068477021712455932

namespace A189933

/-- `A004275(A195175(n+1))` -/
def P14068477021712455932.Spec : Prop :=
  ∀ n, P14068477021712455932.a n = A189933 (n + 1)

end A189933

/-! ## A189933.P13153607273853003689

`2*A195172(2*(n+1))-2`
-/

namespace A189933.P13153607273853003689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195172 (2 * (n + 1)) - 2

end

end A189933.P13153607273853003689

namespace A189933

/-- `2*A195172(2*(n+1))-2` -/
def P13153607273853003689.Spec : Prop :=
  ∀ n, P13153607273853003689.a n = A189933 (n + 1)

end A189933

/-! ## A189933.P273167414889144006

`A005843(A005206(A005206(4*n+2)))`
-/

namespace A189933.P273167414889144006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005206 (A005206 (4 * n + 2)).toNat).toNat

end

end A189933.P273167414889144006

namespace A189933

/-- `A005843(A005206(A005206(4*n+2)))` -/
def P273167414889144006.Spec : Prop :=
  ∀ n, P273167414889144006.a n = A189933 (n + 1)

end A189933

/-! ## A189933.P1456218716166030837

`A187329(2*(n+1))+A187329(2*(n+1))`
-/

namespace A189933.P1456218716166030837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (2 * (n + 1)) + A187329 (2 * (n + 1))

end

end A189933.P1456218716166030837

namespace A189933

/-- `A187329(2*(n+1))+A187329(2*(n+1))` -/
def P1456218716166030837.Spec : Prop :=
  ∀ n, P1456218716166030837.a n = A189933 (n + 1)

end A189933

/-! ## A189933.P8410562712713977967

`A131452(A330186(n+1))`
-/

namespace A189933.P8410562712713977967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (A330186 (n + 1)).toNat

end

end A189933.P8410562712713977967

namespace A189933

/-- `A131452(A330186(n+1))` -/
def P8410562712713977967.Spec : Prop :=
  ∀ n, P8410562712713977967.a n = A189933 (n + 1)

end A189933

/-!
# A189934: a(n) = A189932(n)/2.

The programs for A189934, the canonical program `A189934.P11056086717028341864` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189934 has offset 1).

The definition of A189934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189934.P12428775619318886634

`floor((n+1)/sin(π/5)²)`
-/

namespace A189934.P12428775619318886634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sin (Real.pi / 5) ^ 2⌋

end

end A189934.P12428775619318886634

namespace A189934

/-- `floor((n+1)/sin(π/5)²)` -/
def P12428775619318886634.Spec : Prop :=
  ∀ n, P12428775619318886634.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P11056086717028341864

`A189932(n+1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189934

/-- `A189932(n+1)/2` -/
def P11056086717028341864.Spec : Prop :=
  ∀ n, P11056086717028341864.a n = (A189934 (n + 1) : ℚ)

end A189934

/-! ## A189934.P13355199532221131885

`floor(4*(n+1)/(3-ϕ))`
-/

namespace A189934.P13355199532221131885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n + 1 : ℝ) / (3 - Real.goldenRatio))⌋

end

end A189934.P13355199532221131885

namespace A189934

/-- `floor(4*(n+1)/(3-ϕ))` -/
def P13355199532221131885.Spec : Prop :=
  ∀ n, P13355199532221131885.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P2020458040563455823

`comp[2*n-floor(2*n/ϕ)-(n-1)^(n%2)]`
-/

namespace A189934.P2020458040563455823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋ - ((n : ℤ) - 1) ^ (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189934.P2020458040563455823

namespace A189934

/-- `comp[2*n-floor(2*n/ϕ)-(n-1)^(n%2)]` -/
def P2020458040563455823.Spec : Prop :=
  ∀ n, (P2020458040563455823.a n : ℤ) = A189934 (n + 1)

end A189934

/-! ## A189934.P11700718511285641215

`∑[2-char[A194152(n+1)]]+n`
-/

namespace A189934.P11700718511285641215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194152 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A189934.P11700718511285641215

namespace A189934

/-- `∑[2-char[A194152(n+1)]]+n` -/
def P11700718511285641215.Spec : Prop :=
  ∀ n, P11700718511285641215.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P7490361050284476645

`(A330185(n+1)+A184746(n+1))/2`
-/

namespace A189934.P7490361050284476645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330185 (n + 1) + A184746 (n + 1) : ℚ) / 2

end

end A189934.P7490361050284476645

namespace A189934

/-- `(A330185(n+1)+A184746(n+1))/2` -/
def P7490361050284476645.Spec : Prop :=
  ∀ n, P7490361050284476645.a n = (A189934 (n + 1) : ℚ)

end A189934

/-! ## A189934.P2550747003732623770

`∩[A195175(n+1)-2, A195175(n+1)]`
-/

namespace A189934.P2550747003732623770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195175 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189934.P2550747003732623770

namespace A189934

/-- `∩[A195175(n+1)-2, A195175(n+1)]` -/
def P2550747003732623770.Spec : Prop :=
  ∀ n, (P2550747003732623770.a n : ℤ) = A189934 (n + 1)

end A189934

/-! ## A189934.P14407317386121304088

`A186515(2*(n+1))`
-/

namespace A189934.P14407317386121304088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186515 (2 * (n + 1))

end

end A189934.P14407317386121304088

namespace A189934

/-- `A186515(2*(n+1))` -/
def P14407317386121304088.Spec : Prop :=
  ∀ n, P14407317386121304088.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P5517955254041040780

`A194964(2*(n+1))+Δ[n²]`
-/

namespace A189934.P5517955254041040780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A189934.P5517955254041040780

namespace A189934

/-- `A194964(2*(n+1))+Δ[n²]` -/
def P5517955254041040780.Spec : Prop :=
  ∀ n, P5517955254041040780.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P2539722230245101196

`A194964(2*(n+1))+A004277(n+1)-1`
-/

namespace A189934.P2539722230245101196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (2 * (n + 1)) + A004277 (n + 1) - 1

end

end A189934.P2539722230245101196

namespace A189934

/-- `A194964(2*(n+1))+A004277(n+1)-1` -/
def P2539722230245101196.Spec : Prop :=
  ∀ n, P2539722230245101196.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P4672978106631372280

`A194964(2*n+2)+A008619(2*n)+n`
-/

namespace A189934.P4672978106631372280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (2 * n + 2) + A008619 (2 * n) + (n : ℤ)

end

end A189934.P4672978106631372280

namespace A189934

/-- `A194964(2*n+2)+A008619(2*n)+n` -/
def P4672978106631372280.Spec : Prop :=
  ∀ n, P4672978106631372280.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P13558950928160910580

`A000217(2*n+1)+A194964(2*(n+1))-A000217(2*n)`
-/

namespace A189934.P13558950928160910580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) + (A194964 (2 * (n + 1)) - A000217 (2 * n))

end

end A189934.P13558950928160910580

namespace A189934

/-- `A000217(2*n+1)+A194964(2*(n+1))-A000217(2*n)` -/
def P13558950928160910580.Spec : Prop :=
  ∀ n, P13558950928160910580.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P9807625776273183252

`A182760(4*(n+1))-4*(n+1)`
-/

namespace A189934.P9807625776273183252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182760 (4 * (n + 1)) - (4 * (n + 1) : ℤ)

end

end A189934.P9807625776273183252

namespace A189934

/-- `A182760(4*(n+1))-4*(n+1)` -/
def P9807625776273183252.Spec : Prop :=
  ∀ n, P9807625776273183252.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P878568091521137688

`A004396(A330185(n+1))`
-/

namespace A189934.P878568091521137688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A330185 (n + 1)).toNat

end

end A189934.P878568091521137688

namespace A189934

/-- `A004396(A330185(n+1))` -/
def P878568091521137688.Spec : Prop :=
  ∀ n, P878568091521137688.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P14500652101338489564

`A032742(A189932(n+1)-2)+1`
-/

namespace A189934.P14500652101338489564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A189932 (n + 1) - 2).toNat + 1

end

end A189934.P14500652101338489564

namespace A189934

/-- `A032742(A189932(n+1)-2)+1` -/
def P14500652101338489564.Spec : Prop :=
  ∀ n, P14500652101338489564.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P11313522169916245399

`A249738(A189932(n+1)-2)+2`
-/

namespace A189934.P11313522169916245399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A189932 (n + 1) - 2).toNat + 2

end

end A189934.P11313522169916245399

namespace A189934

/-- `A249738(A189932(n+1)-2)+2` -/
def P11313522169916245399.Spec : Prop :=
  ∀ n, P11313522169916245399.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P5794567691221961847

`A001281(A189932(n+1))`
-/

namespace A189934.P5794567691221961847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A189932 (n + 1)).toNat

end

end A189934.P5794567691221961847

namespace A189934

/-- `A001281(A189932(n+1))` -/
def P5794567691221961847.Spec : Prop :=
  ∀ n, P5794567691221961847.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P6827837454390572358

`A173989(A189932(n+1)+1)`
-/

namespace A189934.P6827837454390572358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (A189932 (n + 1) + 1).toNat

end

end A189934.P6827837454390572358

namespace A189934

/-- `A173989(A189932(n+1)+1)` -/
def P6827837454390572358.Spec : Prop :=
  ∀ n, P6827837454390572358.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P14680110042782066640

`A249738(A189932(n+1)+2)`
-/

namespace A189934.P14680110042782066640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A189932 (n + 1) + 2).toNat

end

end A189934.P14680110042782066640

namespace A189934

/-- `A249738(A189932(n+1)+2)` -/
def P14680110042782066640.Spec : Prop :=
  ∀ n, P14680110042782066640.a n = A189934 (n + 1)

end A189934

/-! ## A189934.P782092417211751688

`lt[Δ[A329130(4*n)], A130724(n)]+1+n`
-/

namespace A189934.P782092417211751688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1 + n

end

end A189934.P782092417211751688

namespace A189934

/-- `lt[Δ[A329130(4*n)], A130724(n)]+1+n` -/
def P782092417211751688.Spec : Prop :=
  ∀ n, (P782092417211751688.a n : ℤ) = A189934 (n + 1)

end A189934

/-!
# A189935: a(n) = A189933(n)/2.

The programs for A189935, the canonical program `A189935.P15750498102443247818` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189935 has offset 1).

The definition of A189935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189935.P3331648733808953103

`floor((n+1)/cos(π/5)²)`
-/

namespace A189935.P3331648733808953103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos (Real.pi / 5) ^ 2⌋

end

end A189935.P3331648733808953103

namespace A189935

/-- `floor((n+1)/cos(π/5)²)` -/
def P3331648733808953103.Spec : Prop :=
  ∀ n, P3331648733808953103.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P15750498102443247818

`A189933(n+1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189935

/-- `A189933(n+1)/2` -/
def P15750498102443247818.Spec : Prop :=
  ∀ n, P15750498102443247818.a n = (A189935 (n + 1) : ℚ)

end A189935

/-! ## A189935.P3433293876962007920

`floor((n+1)*(2/ϕ)²)`
-/

namespace A189935.P3433293876962007920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (2 / Real.goldenRatio) ^ 2⌋

end

end A189935.P3433293876962007920

namespace A189935

/-- `floor((n+1)*(2/ϕ)²)` -/
def P3433293876962007920.Spec : Prop :=
  ∀ n, P3433293876962007920.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P14637811496058974034

`A195175(n+1)-1`
-/

namespace A189935.P14637811496058974034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195175 (n + 1) - 1

end

end A189935.P14637811496058974034

namespace A189935

/-- `A195175(n+1)-1` -/
def P14637811496058974034.Spec : Prop :=
  ∀ n, P14637811496058974034.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P5867548935879465914

`A017509(n)-A194152(n+1)`
-/

namespace A189935.P5867548935879465914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n - A194152 (n + 1)

end

end A189935.P5867548935879465914

namespace A189935

/-- `A017509(n)-A194152(n+1)` -/
def P5867548935879465914.Spec : Prop :=
  ∀ n, P5867548935879465914.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P1449956023214479829

`A190080(n+1)-A022839(n+1)`
-/

namespace A189935.P1449956023214479829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190080 (n + 1) - A022839 (n + 1)

end

end A189935.P1449956023214479829

namespace A189935

/-- `A190080(n+1)-A022839(n+1)` -/
def P1449956023214479829.Spec : Prop :=
  ∀ n, P1449956023214479829.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P18272440940099108990

`A187341(n+1)-A184738(n+1)`
-/

namespace A189935.P18272440940099108990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187341 (n + 1) - A184738 (n + 1)

end

end A189935.P18272440940099108990

namespace A189935

/-- `A187341(n+1)-A184738(n+1)` -/
def P18272440940099108990.Spec : Prop :=
  ∀ n, P18272440940099108990.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P8591297434998425088

`A023443(A195175(n+1))`
-/

namespace A189935.P8591297434998425088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A195175 (n + 1)).toNat

end

end A189935.P8591297434998425088

namespace A189935

/-- `A023443(A195175(n+1))` -/
def P8591297434998425088.Spec : Prop :=
  ∀ n, P8591297434998425088.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P11128609046376430900

`A195172(2*(n+1))-1`
-/

namespace A189935.P11128609046376430900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (2 * (n + 1)) - 1

end

end A189935.P11128609046376430900

namespace A189935

/-- `A195172(2*(n+1))-1` -/
def P11128609046376430900.Spec : Prop :=
  ∀ n, P11128609046376430900.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P5136961418286062093

`∑[Δ[A187330(2*n)]-2]`
-/

namespace A189935.P5136961418286062093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187330 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189935.P5136961418286062093

namespace A189935

/-- `∑[Δ[A187330(2*n)]-2]` -/
def P5136961418286062093.Spec : Prop :=
  ∀ n, P5136961418286062093.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P1048890820715364211

`Δ[∑[A195172(2*n)]-n]`
-/

namespace A189935.P1048890820715364211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189935.P1048890820715364211

namespace A189935

/-- `Δ[∑[A195172(2*n)]-n]` -/
def P1048890820715364211.Spec : Prop :=
  ∀ n, P1048890820715364211.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P10885051837115983300

`record[A195172(n+2)-(n-1)^(n%2)]`
-/

namespace A189935.P10885051837115983300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (n + 2) - ((n : ℤ) - 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189935.P10885051837115983300

namespace A189935

/-- `record[A195172(n+2)-(n-1)^(n%2)]` -/
def P10885051837115983300.Spec : Prop :=
  ∀ n, P10885051837115983300.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P3866801698499601311

`A005206(A001965(2*n+1))`
-/

namespace A189935.P3866801698499601311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A001965 (2 * n + 1)).toNat

end

end A189935.P3866801698499601311

namespace A189935

/-- `A005206(A001965(2*n+1))` -/
def P3866801698499601311.Spec : Prop :=
  ∀ n, P3866801698499601311.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P11103314603168430080

`A005206(A005206(4*n+2))`
-/

namespace A189935.P11103314603168430080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (4 * n + 2)).toNat

end

end A189935.P11103314603168430080

namespace A189935

/-- `A005206(A005206(4*n+2))` -/
def P11103314603168430080.Spec : Prop :=
  ∀ n, P11103314603168430080.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P7102497981953182966

`A004767(n)-A001961(2*(n+1))`
-/

namespace A189935.P7102497981953182966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A001961 (2 * (n + 1))

end

end A189935.P7102497981953182966

namespace A189935

/-- `A004767(n)-A001961(2*(n+1))` -/
def P7102497981953182966.Spec : Prop :=
  ∀ n, P7102497981953182966.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P1450825302012290027

`A016777(2*n+1)+1-A022839(2*(n+1))`
-/

namespace A189935.P1450825302012290027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n + 1) + (1 - A022839 (2 * (n + 1)))

end

end A189935.P1450825302012290027

namespace A189935

/-- `A016777(2*n+1)+1-A022839(2*(n+1))` -/
def P1450825302012290027.Spec : Prop :=
  ∀ n, P1450825302012290027.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P10079023464925061742

`A004767(n)-A005206(A004767(n))`
-/

namespace A189935.P10079023464925061742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A005206 (A004767 n).toNat

end

end A189935.P10079023464925061742

namespace A189935

/-- `A004767(n)-A005206(A004767(n))` -/
def P10079023464925061742.Spec : Prop :=
  ∀ n, P10079023464925061742.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P11907170373578554160

`A187329(2*(n+1))`
-/

namespace A189935.P11907170373578554160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (2 * (n + 1))

end

end A189935.P11907170373578554160

namespace A189935

/-- `A187329(2*(n+1))` -/
def P11907170373578554160.Spec : Prop :=
  ∀ n, P11907170373578554160.a n = A189935 (n + 1)

end A189935

/-! ## A189935.P12720690606294623015

`∑[2-Δ[A300763(2*n)]]`
-/

namespace A189935.P12720690606294623015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189935.P12720690606294623015

namespace A189935

/-- `∑[2-Δ[A300763(2*n)]]` -/
def P12720690606294623015.Spec : Prop :=
  ∀ n, P12720690606294623015.a n = A189935 (n + 1)

end A189935

/-!
# A189936: Odd numbers in A076763.

The programs for A189936, the canonical program `A189936.P5035974815014821206` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189936 has offset 1).

The definition of A189936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189936.P5035974815014821206

`∩[A076763(n+1), A216918(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A189936

/-- `∩[A076763(n+1), A216918(n+1)]` -/
def P5035974815014821206.Spec : Prop :=
  ∀ n, (P5035974815014821206.a n : ℤ) = A189936 (n + 1)

theorem P5035974815014821206.correct : P5035974815014821206.Spec := by
  intro n
  simp only [A189936, Nat.add_sub_cancel]

end A189936

/-! ## A189936.P17108516053406589428

`∩[A076763(n+1), A333326(n+1)]`
-/

namespace A189936.P17108516053406589428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P17108516053406589428

namespace A189936

/-- `∩[A076763(n+1), A333326(n+1)]` -/
def P17108516053406589428.Spec : Prop :=
  ∀ n, (P17108516053406589428.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P16818039632433315161

`∩[A076763(n+1), A176847(n+1)]`
-/

namespace A189936.P16818039632433315161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P16818039632433315161

namespace A189936

/-- `∩[A076763(n+1), A176847(n+1)]` -/
def P16818039632433315161.Spec : Prop :=
  ∀ n, (P16818039632433315161.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P283417945293391027

`∩[A076763(n+1), A083883(n+1)]`
-/

namespace A189936.P283417945293391027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P283417945293391027

namespace A189936

/-- `∩[A076763(n+1), A083883(n+1)]` -/
def P283417945293391027.Spec : Prop :=
  ∀ n, (P283417945293391027.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P11800320621900604261

`∩[A076763(n+1), A333855(n+1)]`
-/

namespace A189936.P11800320621900604261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P11800320621900604261

namespace A189936

/-- `∩[A076763(n+1), A333855(n+1)]` -/
def P11800320621900604261.Spec : Prop :=
  ∀ n, (P11800320621900604261.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P6802167550865037978

`∩[A076763(n+1), A082686(n+1)]`
-/

namespace A189936.P6802167550865037978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P6802167550865037978

namespace A189936

/-- `∩[A076763(n+1), A082686(n+1)]` -/
def P6802167550865037978.Spec : Prop :=
  ∀ n, (P6802167550865037978.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P657519209170540351

`∩[A061346(n+1), A076763(n+1)]`
-/

namespace A189936.P657519209170540351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P657519209170540351

namespace A189936

/-- `∩[A061346(n+1), A076763(n+1)]` -/
def P657519209170540351.Spec : Prop :=
  ∀ n, (P657519209170540351.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P5845867114598569278

`∩[A076763(n+1), A226025(n+1)]`
-/

namespace A189936.P5845867114598569278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P5845867114598569278

namespace A189936

/-- `∩[A076763(n+1), A226025(n+1)]` -/
def P5845867114598569278.Spec : Prop :=
  ∀ n, (P5845867114598569278.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P1556409455117634712

`∩[A014076(n+1), A076763(n+1)]`
-/

namespace A189936.P1556409455117634712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P1556409455117634712

namespace A189936

/-- `∩[A014076(n+1), A076763(n+1)]` -/
def P1556409455117634712.Spec : Prop :=
  ∀ n, (P1556409455117634712.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P13493765265788691670

`∩[A071904(n+1), A076763(n+1)]`
-/

namespace A189936.P13493765265788691670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P13493765265788691670

namespace A189936

/-- `∩[A071904(n+1), A076763(n+1)]` -/
def P13493765265788691670.Spec : Prop :=
  ∀ n, (P13493765265788691670.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P18406938546781528590

`∩[A076763(n+1), A257521(n+1)]`
-/

namespace A189936.P18406938546781528590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P18406938546781528590

namespace A189936

/-- `∩[A076763(n+1), A257521(n+1)]` -/
def P18406938546781528590.Spec : Prop :=
  ∀ n, (P18406938546781528590.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P729721772229299740

`∩[A076763(n+1), A329095(n+1)]`
-/

namespace A189936.P729721772229299740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P729721772229299740

namespace A189936

/-- `∩[A076763(n+1), A329095(n+1)]` -/
def P729721772229299740.Spec : Prop :=
  ∀ n, (P729721772229299740.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P1033390291562926456

`∩[A076763(n+1), A327922(n+1)]`
-/

namespace A189936.P1033390291562926456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P1033390291562926456

namespace A189936

/-- `∩[A076763(n+1), A327922(n+1)]` -/
def P1033390291562926456.Spec : Prop :=
  ∀ n, (P1033390291562926456.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P8150921564061730070

`∩[A076763(n+1), A296243(n+1)]`
-/

namespace A189936.P8150921564061730070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P8150921564061730070

namespace A189936

/-- `∩[A076763(n+1), A296243(n+1)]` -/
def P8150921564061730070.Spec : Prop :=
  ∀ n, (P8150921564061730070.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P1224356465435583471

`∩[A076763(n+1), A216848(n+1)]`
-/

namespace A189936.P1224356465435583471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P1224356465435583471

namespace A189936

/-- `∩[A076763(n+1), A216848(n+1)]` -/
def P1224356465435583471.Spec : Prop :=
  ∀ n, (P1224356465435583471.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P3347626053239449583

`∩[A076763(n+1), A255763(n+1)]`
-/

namespace A189936.P3347626053239449583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P3347626053239449583

namespace A189936

/-- `∩[A076763(n+1), A255763(n+1)]` -/
def P3347626053239449583.Spec : Prop :=
  ∀ n, (P3347626053239449583.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P10321497510299974720

`∩[A076763(n+1), A193071(n+1)]`
-/

namespace A189936.P10321497510299974720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P10321497510299974720

namespace A189936

/-- `∩[A076763(n+1), A193071(n+1)]` -/
def P10321497510299974720.Spec : Prop :=
  ∀ n, (P10321497510299974720.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P11591007940498388527

`∩[A076763(n+1), A305635(n+1)]`
-/

namespace A189936.P11591007940498388527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P11591007940498388527

namespace A189936

/-- `∩[A076763(n+1), A305635(n+1)]` -/
def P11591007940498388527.Spec : Prop :=
  ∀ n, (P11591007940498388527.a n : ℤ) = A189936 (n + 1)

end A189936

/-! ## A189936.P12722519386397895419

`∩[A076763(n+1), A088828(n+1)]`
-/

namespace A189936.P12722519386397895419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189936.P12722519386397895419

namespace A189936

/-- `∩[A076763(n+1), A088828(n+1)]` -/
def P12722519386397895419.Spec : Prop :=
  ∀ n, (P12722519386397895419.a n : ℤ) = A189936 (n + 1)

end A189936

/-!
# A189937: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sin(Pi/8), t=cos(Pi/8).

The programs for A189937, the canonical program `A189937.P7630660360309722758` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189937 has offset 1).

The definition of A189937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189937.P7630660360309722758

`n+1+floor((n+1)*sin(π/8))+floor((n+1)*cos(π/8))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189937

/-- `n+1+floor((n+1)*sin(π/8))+floor((n+1)*cos(π/8))` -/
def P7630660360309722758.Spec : Prop :=
  ∀ n, P7630660360309722758.a n = A189937 (n + 1)

theorem P7630660360309722758.correct : P7630660360309722758.Spec := by
  intro n
  simp only [A189937, Nat.add_sub_cancel]

end A189937

/-! ## A189937.P17360552495268948520

`∑[3-A188017(n+1)]-A093178(4*C(n+1, 3))`
-/

namespace A189937.P17360552495268948520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A188017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A093178 (4 * Nat.choose (n + 1) 3)

end

end A189937.P17360552495268948520

namespace A189937

/-- `∑[3-A188017(n+1)]-A093178(4*C(n+1, 3))` -/
def P17360552495268948520.Spec : Prop :=
  ∀ n, P17360552495268948520.a n = A189937 (n + 1)

end A189937

/-! ## A189937.P3345816963053325657

`∑[3-A188017(n+1)]-A208615(A208615(n))`
-/

namespace A189937.P3345816963053325657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A188017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A208615 (A208615 n).toNat

end

end A189937.P3345816963053325657

namespace A189937

/-- `∑[3-A188017(n+1)]-A208615(A208615(n))` -/
def P3345816963053325657.Spec : Prop :=
  ∀ n, P3345816963053325657.a n = A189937 (n + 1)

end A189937

/-! ## A189937.P7372629442173544579

`∑[3-A188017(n+1)]+A008683(A057429(n+1))`
-/

namespace A189937.P7372629442173544579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A188017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (A057429 (n + 1)).toNat

end

end A189937.P7372629442173544579

namespace A189937

/-- `∑[3-A188017(n+1)]+A008683(A057429(n+1))` -/
def P7372629442173544579.Spec : Prop :=
  ∀ n, P7372629442173544579.a n = A189937 (n + 1)

end A189937

/-! ## A189937.P15808409717202826565

`∑[3-A188017(n+1)]-A023532(A166341(n+1))`
-/

namespace A189937.P15808409717202826565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A188017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023532 (A166341 (n + 1)).toNat

end

end A189937.P15808409717202826565

namespace A189937

/-- `∑[3-A188017(n+1)]-A023532(A166341(n+1))` -/
def P15808409717202826565.Spec : Prop :=
  ∀ n, P15808409717202826565.a n = A189937 (n + 1)

end A189937

/-!
# A189938: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sin(Pi/8), t=cos(Pi/8).

The programs for A189938, the canonical program `A189938.P3125793875122959608` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189938 has offset 1).

The definition of A189938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189938.P3125793875122959608

`n+1+floor((n+1)/sin(π/8))+floor((n+1)/tan(π/8))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189938

/-- `n+1+floor((n+1)/sin(π/8))+floor((n+1)/tan(π/8))` -/
def P3125793875122959608.Spec : Prop :=
  ∀ n, P3125793875122959608.a n = A189938 (n + 1)

theorem P3125793875122959608.correct : P3125793875122959608.Spec := by
  intro n
  simp only [A189938, Nat.add_sub_cancel]

end A189938

/-! ## A189938.P2674481813866169548

`A001952(n+1)+A000196(A001952(A001105(n+1)))`
-/

namespace A189938.P2674481813866169548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + A000196 (A001952 (A001105 (n + 1)).toNat).toNat

end

end A189938.P2674481813866169548

namespace A189938

/-- `A001952(n+1)+A000196(A001952(A001105(n+1)))` -/
def P2674481813866169548.Spec : Prop :=
  ∀ n, P2674481813866169548.a n = A189938 (n + 1)

end A189938

/-! ## A189938.P15060979873667341706

`6*n+8-A282162(A092322(2*(n+2)))`
-/

namespace A189938.P15060979873667341706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 8 : ℤ) - A282162 (A092322 (2 * (n + 2))).toNat

end

end A189938.P15060979873667341706

namespace A189938

/-- `6*n+8-A282162(A092322(2*(n+2)))` -/
def P15060979873667341706.Spec : Prop :=
  ∀ n, P15060979873667341706.a n = A189938 (n + 1)

end A189938

/-! ## A189938.P6693087083930099128

`A285592(A294657(n+2))+A016789(2*n+1)`
-/

namespace A189938.P6693087083930099128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (A294657 (n + 2)).toNat + A016789 (2 * n + 1)

end

end A189938.P6693087083930099128

namespace A189938

/-- `A285592(A294657(n+2))+A016789(2*n+1)` -/
def P6693087083930099128.Spec : Prop :=
  ∀ n, P6693087083930099128.a n = A189938 (n + 1)

end A189938

/-! ## A189938.P1848992236985155559

`floor(sqrt(A065187((6*(n+1))²-1)))`
-/

namespace A189938.P1848992236985155559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A065187 ((6 * (n + 1)) ^ 2 - 1))

end

end A189938.P1848992236985155559

namespace A189938

/-- `floor(sqrt(A065187((6*(n+1))²-1)))` -/
def P1848992236985155559.Spec : Prop :=
  ∀ n, P1848992236985155559.a n = A189938 (n + 1)

end A189938

/-!
# A189939: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sin(Pi/8), t=cos(Pi/8).

The programs for A189939, the canonical program `A189939.P11774670708044472278` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189939 has offset 1).

The definition of A189939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189939.P11774670708044472278

`n+1+floor((n+1)/cos(π/8))+floor((n+1)*tan(π/8))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189939

/-- `n+1+floor((n+1)/cos(π/8))+floor((n+1)*tan(π/8))` -/
def P11774670708044472278.Spec : Prop :=
  ∀ n, P11774670708044472278.a n = A189939 (n + 1)

theorem P11774670708044472278.correct : P11774670708044472278.Spec := by
  intro n
  simp only [A189939, Nat.add_sub_cancel]

end A189939

/-! ## A189939.P12050663214770104982

`A118759(A003151(n+1))+A064459(n)`
-/

namespace A189939.P12050663214770104982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A003151 (n + 1)).toNat + A064459 n

end

end A189939.P12050663214770104982

namespace A189939

/-- `A118759(A003151(n+1))+A064459(n)` -/
def P12050663214770104982.Spec : Prop :=
  ∀ n, P12050663214770104982.a n = A189939 (n + 1)

end A189939

/-! ## A189939.P14599985079101788036

`A286666(n+1)+A110656(A372759(2*n+5))`
-/

namespace A189939.P14599985079101788036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) + A110656 (A372759 (2 * n + 5)).toNat

end

end A189939.P14599985079101788036

namespace A189939

/-- `A286666(n+1)+A110656(A372759(2*n+5))` -/
def P14599985079101788036.Spec : Prop :=
  ∀ n, P14599985079101788036.a n = A189939 (n + 1)

end A189939

/-! ## A189939.P9044482943204513307

`A055642(A383533(n))+floor((n+1)*sqrt(2)+n)`
-/

namespace A189939.P9044482943204513307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A383533 n).toNat + ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ) + (n : ℝ)⌋

end

end A189939.P9044482943204513307

namespace A189939

/-- `A055642(A383533(n))+floor((n+1)*sqrt(2)+n)` -/
def P9044482943204513307.Spec : Prop :=
  ∀ n, P9044482943204513307.a n = A189939 (n + 1)

end A189939

/-! ## A189939.P12156522266487880574

`A289057(A146631(n+1))+A003151(n+1)`
-/

namespace A189939.P12156522266487880574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289057 (A146631 (n + 1)).toNat + A003151 (n + 1)

end

end A189939.P12156522266487880574

namespace A189939

/-- `A289057(A146631(n+1))+A003151(n+1)` -/
def P12156522266487880574.Spec : Prop :=
  ∀ n, P12156522266487880574.a n = A189939 (n + 1)

end A189939

/-!
# A189940: Number of connected components in all simple labeled graphs with n nodes having degrees at most one.

The programs for A189940, the canonical program `A189940.P15295735568782816812` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189940 has offset 1).

The definition of A189940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189940.P15295735568782816812

`A162970(n+1)+A013989(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189940

/-- `A162970(n+1)+A013989(n)` -/
def P15295735568782816812.Spec : Prop :=
  ∀ n, P15295735568782816812.a n = A189940 (n + 1)

theorem P15295735568782816812.correct : P15295735568782816812.Spec := by
  intro n
  simp only [A189940, Nat.add_sub_cancel]

end A189940

/-! ## A189940.P12430378279271865114

`∑[A161125(n+1)+A000085(n)]`
-/

namespace A189940.P12430378279271865114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161125 (n + 1) + A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189940.P12430378279271865114

namespace A189940

/-- `∑[A161125(n+1)+A000085(n)]` -/
def P12430378279271865114.Spec : Prop :=
  ∀ n, P12430378279271865114.a n = A189940 (n + 1)

end A189940

/-! ## A189940.P13485897716623227762

`A245176(n)+∑[A161125(n+1)]`
-/

namespace A189940.P13485897716623227762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189940.P13485897716623227762

namespace A189940

/-- `A245176(n)+∑[A161125(n+1)]` -/
def P13485897716623227762.Spec : Prop :=
  ∀ n, P13485897716623227762.a n = A189940 (n + 1)

end A189940

/-! ## A189940.P18139127535822647199

`A001475(n+2)-A000085(n+1)`
-/

namespace A189940.P18139127535822647199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001475 (n + 2) - A000085 (n + 1)

end

end A189940.P18139127535822647199

namespace A189940

/-- `A001475(n+2)-A000085(n+1)` -/
def P18139127535822647199.Spec : Prop :=
  ∀ n, P18139127535822647199.a n = A189940 (n + 1)

end A189940

/-! ## A189940.P14685799761378416078

`A162970(n+1)+Δ[A001189(n+1)]`
-/

namespace A189940.P14685799761378416078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162970 (n + 1) + (f1 (n + 1) - f1 n)

end

end A189940.P14685799761378416078

namespace A189940

/-- `A162970(n+1)+Δ[A001189(n+1)]` -/
def P14685799761378416078.Spec : Prop :=
  ∀ n, P14685799761378416078.a n = A189940 (n + 1)

end A189940

/-! ## A189940.P12468219403908194378

`A162970(n+1)+(n+1)*A000085(n)`
-/

namespace A189940.P12468219403908194378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162970 (n + 1) + (n + 1 : ℤ) * A000085 n

end

end A189940.P12468219403908194378

namespace A189940

/-- `A162970(n+1)+(n+1)*A000085(n)` -/
def P12468219403908194378.Spec : Prop :=
  ∀ n, P12468219403908194378.a n = A189940 (n + 1)

end A189940

/-! ## A189940.P3700762798230086206

`(n+1)*(A000085(n+1)+A000085(n))/2`
-/

namespace A189940.P3700762798230086206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000085 (n + 1) + A000085 n : ℚ) / 2)

end

end A189940.P3700762798230086206

namespace A189940

/-- `(n+1)*(A000085(n+1)+A000085(n))/2` -/
def P3700762798230086206.Spec : Prop :=
  ∀ n, P3700762798230086206.a n = (A189940 (n + 1) : ℚ)

end A189940

/-! ## A189940.P17461364666267233984

`A001475(n+1)+n*A001475(A028310(n))`
-/

namespace A189940.P17461364666267233984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001475 (n + 1) + (n : ℤ) * A001475 (A028310 n).toNat

end

end A189940.P17461364666267233984

namespace A189940

/-- `A001475(n+1)+n*A001475(A028310(n))` -/
def P17461364666267233984.Spec : Prop :=
  ∀ n, P17461364666267233984.a n = A189940 (n + 1)

end A189940

/-! ## A189940.P4186616346701210523

`A013989(n+1)+A013989(n)-A001475(n+2)`
-/

namespace A189940.P4186616346701210523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013989 (n + 1) + (A013989 n - A001475 (n + 2))

end

end A189940.P4186616346701210523

namespace A189940

/-- `A013989(n+1)+A013989(n)-A001475(n+2)` -/
def P4186616346701210523.Spec : Prop :=
  ∀ n, P4186616346701210523.a n = A189940 (n + 1)

end A189940

/-! ## A189940.P16799611658633097796

`A001475(n+2)+A245176(n)-A245176(n+1)`
-/

namespace A189940.P16799611658633097796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001475 (n + 2) + (A245176 n - A245176 (n + 1))

end

end A189940.P16799611658633097796

namespace A189940

/-- `A001475(n+2)+A245176(n)-A245176(n+1)` -/
def P16799611658633097796.Spec : Prop :=
  ∀ n, P16799611658633097796.a n = A189940 (n + 1)

end A189940

/-! ## A189940.P15249514936511496765

`A135593(n+2)/(n+2)`
-/

namespace A189940.P15249514936511496765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135593 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A189940.P15249514936511496765

namespace A189940

/-- `A135593(n+2)/(n+2)` -/
def P15249514936511496765.Spec : Prop :=
  ∀ n, P15249514936511496765.a n = (A189940 (n + 1) : ℚ)

end A189940

/-!
# A189943: 1/4 the number of arrangements of n+1 nonzero numbers x(i) in -n..n with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189943, there is no canonical definition to state claims against.
-/

/-! ## A189943.P10500435871535630846

`A189951(∑[4*n]+1)`
-/

namespace A189943.P10500435871535630846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189943.P10500435871535630846

/-! ## A189943.P11846594674951132950

`record[A003982(n)*A189951(n+1)]`
-/

namespace A189943.P11846594674951132950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A189951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189943.P11846594674951132950

/-! ## A189943.P5439758968036075412

`record[gcd(A189951(n+1), A285721(n+1))]`
-/

namespace A189943.P5439758968036075412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189951 (n + 1)) (A285721 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189943.P5439758968036075412

/-! ## A189943.P12658106372417394503

`or(A000007(n), A189951(A001844(n)))`
-/

namespace A189943.P12658106372417394503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A189951 (A001844 n).toNat)

end

end A189943.P12658106372417394503

/-! ## A189943.P17901448810300464052

`A189951(A001844(n))%A232252(n+1)`
-/

namespace A189943.P17901448810300464052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189951 (A001844 n).toNat) (A232252 (n + 1))

end

end A189943.P17901448810300464052

/-!
# A189944: 1/4 the number of arrangements of n+1 nonzero numbers x(i) in -2..2 with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189944, there is no canonical definition to state claims against.
-/

/-! ## A189944.P14592089631834969053

`A189951(∑[n+2])`
-/

namespace A189944.P14592089631834969053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189944.P14592089631834969053

/-! ## A189944.P13180433613927400138

`record[A189951(A101881(n)+1)]`
-/

namespace A189944.P13180433613927400138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189944.P13180433613927400138

/-! ## A189944.P4214945959491392058

`record[A189951(A000096(A116549(n)))]`
-/

namespace A189944.P4214945959491392058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000096 (A116549 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189944.P4214945959491392058

/-! ## A189944.P2915035376090296915

`record[A189951(A101881(A093178(n)))]`
-/

namespace A189944.P2915035376090296915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A101881 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189944.P2915035376090296915

/-! ## A189944.P2874173047298646431

`record[A189951(A000096(A344180(n)))]`
-/

namespace A189944.P2874173047298646431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189944.P2874173047298646431

/-!
# A189945: 1/4 the number of arrangements of n+1 nonzero numbers x(i) in -3..3 with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189945, there is no canonical definition to state claims against.
-/

/-! ## A189945.P10773645299419519576

`A189951(∑[n+3]+1)`
-/

namespace A189945.P10773645299419519576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189945.P10773645299419519576

/-! ## A189945.P8004622433650689770

`or(A000007(n), A189951(A034856(n+2)))`
-/

namespace A189945.P8004622433650689770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A189951 (A034856 (n + 2)).toNat)

end

end A189945.P8004622433650689770

/-! ## A189945.P13819796369932030119

`(1-A010673(n))²*A189951(A034856(n+2))`
-/

namespace A189945.P13819796369932030119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) ^ 2 * A189951 (A034856 (n + 2)).toNat

end

end A189945.P13819796369932030119

/-! ## A189945.P7819014050252437135

`A189951(A034856(n+2))+A008683(4*(n+1))`
-/

namespace A189945.P7819014050252437135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A034856 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A189945.P7819014050252437135

/-!
# A189946: 1/4 the number of arrangements of n+1 nonzero numbers x(i) in -4..4 with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189946, there is no canonical definition to state claims against.
-/

/-! ## A189946.P12204485039636141763

`A189951(A141214(n+1))`
-/

namespace A189946.P12204485039636141763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A141214 (n + 1)).toNat

end

end A189946.P12204485039636141763

/-! ## A189946.P16104585191271638051

`A189951(A027379(n+2))`
-/

namespace A189946.P16104585191271638051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A027379 (n + 2)).toNat

end

end A189946.P16104585191271638051

/-! ## A189946.P5158468012332383778

`A189951(A055998(n+2))`
-/

namespace A189946.P5158468012332383778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A055998 (n + 2)).toNat

end

end A189946.P5158468012332383778

/-! ## A189946.P7485092525099015055

`A189951(A155212(n)+5)`
-/

namespace A189946.P7485092525099015055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A155212 n + 5).toNat

end

end A189946.P7485092525099015055

/-! ## A189946.P3907920001178979350

`A189951(A052905(n+1)+2)`
-/

namespace A189946.P3907920001178979350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A052905 (n + 1) + 2).toNat

end

end A189946.P3907920001178979350

/-!
# A189947: 1/4 the number of arrangements of n+1 nonzero numbers x(i) in -5..5 with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189947, there is no canonical definition to state claims against.
-/

/-! ## A189947.P2111355771245224657

`A189951(Δ[A264443(n)])`
-/

namespace A189947.P2111355771245224657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (f1 (n + 1) - f1 n).toNat

end

end A189947.P2111355771245224657

/-! ## A189947.P4094456155129907037

`A189951(A046691(n+3))`
-/

namespace A189947.P4094456155129907037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A046691 (n + 3)).toNat

end

end A189947.P4094456155129907037

/-! ## A189947.P7906320751515435202

`A189951(Δ[A023545(n+1)])`
-/

namespace A189947.P7906320751515435202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (f1 (n + 1) - f1 n).toNat

end

end A189947.P7906320751515435202

/-! ## A189947.P370068659681177232

`A189951(A000217(n+5)-4)`
-/

namespace A189947.P370068659681177232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000217 (n + 5) - 4).toNat

end

end A189947.P370068659681177232

/-! ## A189947.P2950329043104347488

`A189951(A000124(n+5)-5)`
-/

namespace A189947.P2950329043104347488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000124 (n + 5) - 5).toNat

end

end A189947.P2950329043104347488

/-!
# A189948: 1/4 the number of arrangements of n+1 nonzero numbers x(i) in -6..6 with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189948, there is no canonical definition to state claims against.
-/

/-! ## A189948.P16442122846097015843

`A189951(A052905(n+3))`
-/

namespace A189948.P16442122846097015843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A052905 (n + 3)).toNat

end

end A189948.P16442122846097015843

/-! ## A189948.P11385352530622534720

`A189951(eq[3, A219347(n)])`
-/

namespace A189948.P11385352530622534720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189948.P11385352530622534720

/-! ## A189948.P4485459834819441527

`A189951(A055999(n+3)+1)`
-/

namespace A189948.P4485459834819441527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A055999 (n + 3) + 1).toNat

end

end A189948.P4485459834819441527

/-! ## A189948.P2037387672908082729

`A189951(A000217(n+6)-5)`
-/

namespace A189948.P2037387672908082729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000217 (n + 6) - 5).toNat

end

end A189948.P2037387672908082729

/-! ## A189948.P8424573475060647356

`A189951(A000124(n+6)-6)`
-/

namespace A189948.P8424573475060647356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000124 (n + 6) - 6).toNat

end

end A189948.P8424573475060647356

/-!
# A189949: 1/4 the number of arrangements of n+1 nonzero numbers x(i) in -7..7 with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189949, there is no canonical definition to state claims against.
-/

/-! ## A189949.P16292625935963577198

`A189951(A055999(n+4))`
-/

namespace A189949.P16292625935963577198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A055999 (n + 4)).toNat

end

end A189949.P16292625935963577198

/-! ## A189949.P8626280011956185436

`A189951(eq[4, A219347(n)])`
-/

namespace A189949.P8626280011956185436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189949.P8626280011956185436

/-! ## A189949.P2429642866877495129

`A189951(eq[6, A193592(n)])`
-/

namespace A189949.P2429642866877495129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189949.P2429642866877495129

/-! ## A189949.P18252807279317819832

`A189951(eq[10, A185782(n+1)])`
-/

namespace A189949.P18252807279317819832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189949.P18252807279317819832

/-! ## A189949.P7725783239761928777

`A189951(A000217(n+6)+n+1)`
-/

namespace A189949.P7725783239761928777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A189949.P7725783239761928777

/-!
# A189950: 1/4 the number of arrangements of n+1 nonzero numbers x(i) in -8..8 with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189950, there is no canonical definition to state claims against.
-/

/-! ## A189950.P2321833888025464959

`A189951(eq[5, A219347(n)])`
-/

namespace A189950.P2321833888025464959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189950.P2321833888025464959

/-! ## A189950.P7379358093671582959

`A189951(eq[7, A193592(n)])`
-/

namespace A189950.P7379358093671582959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189950.P7379358093671582959

/-! ## A189950.P17058397273354021937

`A189951(A055999(n+5)-1)`
-/

namespace A189950.P17058397273354021937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A055999 (n + 5) - 1).toNat

end

end A189950.P17058397273354021937

/-! ## A189950.P14984972859438252933

`A189951(A161680(n+8)+n+1)`
-/

namespace A189950.P14984972859438252933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A161680 (n + 8) + (n + 1 : ℤ)).toNat

end

end A189950.P14984972859438252933

/-! ## A189950.P17540000890693613528

`A189951(A167487(n+5)+2*n+1)`
-/

namespace A189950.P17540000890693613528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A167487 (n + 5) + (2 * n + 1 : ℤ)).toNat

end

end A189950.P17540000890693613528

/-!
# A189952: 1/4 the number of arrangements of 3 nonzero numbers x(i) in -n..n with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189952, there is no canonical definition to state claims against.
-/

/-! ## A189952.P7989932980434216141

`A189951(∑[n+1]+2)`
-/

namespace A189952.P7989932980434216141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A189952.P7989932980434216141

/-! ## A189952.P12422294645371743705

`A189951(A133263(n+1))%A175163(n)`
-/

namespace A189952.P12422294645371743705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189951 (A133263 (n + 1)).toNat) (A175163 n)

end

end A189952.P12422294645371743705

/-! ## A189952.P15535314376225732623

`A189951(A000096(n)+3)%A000051(n)²`
-/

namespace A189952.P15535314376225732623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189951 (A000096 n + 3).toNat) (A000051 n ^ 2)

end

end A189952.P15535314376225732623

/-! ## A189952.P5245896004572298504

`A189951(A000096(n)+3)/(A004442(n)-n)²`
-/

namespace A189952.P5245896004572298504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189951 (A000096 n + 3).toNat : ℚ) / ((A004442 n - (n : ℤ)) ^ 2 : ℚ)

end

end A189952.P5245896004572298504

/-! ## A189952.P15924742237659727094

`A225312(2*n+1)+A189951(A000096(n)+3)`
-/

namespace A189952.P15924742237659727094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225312 (2 * n + 1) + A189951 (A000096 n + 3).toNat

end

end A189952.P15924742237659727094

/-!
# A189953: 1/4 the number of arrangements of 4 nonzero numbers x(i) in -n..n with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189953, there is no canonical definition to state claims against.
-/

/-! ## A189953.P10271158038379847956

`A189951(∑[n+2]+4)`
-/

namespace A189953.P10271158038379847956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189953.P10271158038379847956

/-! ## A189953.P17898343980827122739

`lcm((-1)^n, A189951(A167614(n+1)))`
-/

namespace A189953.P17898343980827122739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A189951 (A167614 (n + 1)).toNat)

end

end A189953.P17898343980827122739

/-! ## A189953.P1502223419277373262

`A189951(A167614(n+1))+A025444(n)`
-/

namespace A189953.P1502223419277373262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A167614 (n + 1)).toNat + A025444 n

end

end A189953.P1502223419277373262

/-! ## A189953.P5456394750000053591

`A189951(A167614(n+1))+A178798(n)`
-/

namespace A189953.P5456394750000053591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A167614 (n + 1)).toNat + A178798 n

end

end A189953.P5456394750000053591

/-! ## A189953.P1596606672159054810

`A189951(A167614(n+1))%A017151(n)`
-/

namespace A189953.P1596606672159054810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189951 (A167614 (n + 1)).toNat) (A017151 n)

end

end A189953.P1596606672159054810

/-!
# A189954: 1/4 the number of arrangements of 5 nonzero numbers x(i) in -n..n with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189954, there is no canonical definition to state claims against.
-/

/-! ## A189954.P2691996329833158060

`A189951(A141214(n)+7)`
-/

namespace A189954.P2691996329833158060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A141214 n + 7).toNat

end

end A189954.P2691996329833158060

/-! ## A189954.P9275226056461011434

`A189951(A055999(n)+10)`
-/

namespace A189954.P9275226056461011434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A055999 n + 10).toNat

end

end A189954.P9275226056461011434

/-! ## A189954.P9813343242061943292

`A189951(A167614(n+2)+1)`
-/

namespace A189954.P9813343242061943292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A167614 (n + 2) + 1).toNat

end

end A189954.P9813343242061943292

/-! ## A189954.P15380189595542008271

`A189951(A166136(n+2)-2)`
-/

namespace A189954.P15380189595542008271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A166136 (n + 2) - 2).toNat

end

end A189954.P15380189595542008271

/-! ## A189954.P10288303464987297464

`A189951(A167487(n+2)-3)`
-/

namespace A189954.P10288303464987297464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A167487 (n + 2) - 3).toNat

end

end A189954.P10288303464987297464

/-!
# A189955: 1/4 the number of arrangements of 6 nonzero numbers x(i) in -n..n with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189955, there is no canonical definition to state claims against.
-/

/-! ## A189955.P3219548054389955981

`A189951(A155212(n)+13)`
-/

namespace A189955.P3219548054389955981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A155212 n + 13).toNat

end

end A189955.P3219548054389955981

/-! ## A189955.P6709138205981199138

`A189951(A000124(n+4)+4)`
-/

namespace A189955.P6709138205981199138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000124 (n + 4) + 4).toNat

end

end A189955.P6709138205981199138

/-! ## A189955.P793930905439276914

`A189951(A000217(n+4)+5)`
-/

namespace A189955.P793930905439276914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000217 (n + 4) + 5).toNat

end

end A189955.P793930905439276914

/-! ## A189955.P17719739865191067091

`A189951(A027379(n+2)+8)`
-/

namespace A189955.P17719739865191067091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A027379 (n + 2) + 8).toNat

end

end A189955.P17719739865191067091

/-! ## A189955.P11197946982362497260

`A189951(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A189955.P11197946982362497260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A189955.P11197946982362497260

/-!
# A189956: 1/4 the number of arrangements of 7 nonzero numbers x(i) in -n..n with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189956, there is no canonical definition to state claims against.
-/

/-! ## A189956.P823681327951522601

`A189951(A166136(n+4))`
-/

namespace A189956.P823681327951522601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A166136 (n + 4)).toNat

end

end A189956.P823681327951522601

/-! ## A189956.P4020623796870139548

`A189951(A167499(n+4)+1)`
-/

namespace A189956.P4020623796870139548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A167499 (n + 4) + 1).toNat

end

end A189956.P4020623796870139548

/-! ## A189956.P11725539906122573187

`A189951(A167614(n+4)+3)`
-/

namespace A189956.P11725539906122573187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A167614 (n + 4) + 3).toNat

end

end A189956.P11725539906122573187

/-! ## A189956.P14607728234096691659

`A189951(A000124(n+5)+5)`
-/

namespace A189956.P14607728234096691659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000124 (n + 5) + 5).toNat

end

end A189956.P14607728234096691659

/-! ## A189956.P3635328750166878704

`A189951(A000217(n+5)+6)`
-/

namespace A189956.P3635328750166878704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000217 (n + 5) + 6).toNat

end

end A189956.P3635328750166878704

/-!
# A189957: 1/4 the number of arrangements of 8 nonzero numbers x(i) in -n..n with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189957, there is no canonical definition to state claims against.
-/

/-! ## A189957.P10709680222506853084

`A189951(A167487(n+5))`
-/

namespace A189957.P10709680222506853084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A167487 (n + 5)).toNat

end

end A189957.P10709680222506853084

/-! ## A189957.P6862904439360283686

`A189951(A167499(n+5)+2)`
-/

namespace A189957.P6862904439360283686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A167499 (n + 5) + 2).toNat

end

end A189957.P6862904439360283686

/-! ## A189957.P2467780495451833847

`A189951(A000217(n+6)+7)`
-/

namespace A189957.P2467780495451833847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A000217 (n + 6) + 7).toNat

end

end A189957.P2467780495451833847

/-! ## A189957.P9860014141908090468

`A189951(A155212(n)+A004277(n+13))`
-/

namespace A189957.P9860014141908090468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A155212 n + A004277 (n + 13)).toNat

end

end A189957.P9860014141908090468

/-! ## A189957.P2647007762425651797

`A189951(A004273(n+9)+A000124(n+4))`
-/

namespace A189957.P2647007762425651797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (A004273 (n + 9) + A000124 (n + 4)).toNat

end

end A189957.P2647007762425651797

/-!
# A189958: 1/4 the number of arrangements of 9 nonzero numbers x(i) in -n..n with the sum of sign(x(i))*(|x(i)| mod x(i+1)) equal to zero.

The programs for A189958, there is no canonical definition to state claims against.
-/

/-! ## A189958.P16749924738889041474

`A189951(eq[13, A066657(n)])`
-/

namespace A189958.P16749924738889041474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189958.P16749924738889041474

/-! ## A189958.P18138872656904488078

`A189951(eq[9, A131818(n+1)])`
-/

namespace A189958.P18138872656904488078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189958.P18138872656904488078

/-!
# A189959: Decimal expansion of (4+5*sqrt(2))/4.

The programs for A189959, there is no canonical definition to state claims against.
-/

/-! ## A189959.P7873550482338112583

`A020789(n)-A008683(A047836(n+1))`
-/

namespace A189959.P7873550482338112583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020789 n - A008683 (A047836 (n + 1)).toNat

end

end A189959.P7873550482338112583

/-! ## A189959.P929982915762646297

`A020789(n)+A008683(A047836(n+1)+4)`
-/

namespace A189959.P929982915762646297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020789 n + A008683 (A047836 (n + 1) + 4).toNat

end

end A189959.P929982915762646297

/-! ## A189959.P9067755668811556660

`A020789(n)+A008683((n+1)*(n+1))`
-/

namespace A189959.P9067755668811556660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020789 n + A008683 ((n + 1) * (n + 1))

end

end A189959.P9067755668811556660

/-!
# A189965: Continued fraction of (3+x+sqrt(38+6x))/4, where x=sqrt(13).

The programs for A189965, there is no canonical definition to state claims against.
-/

/-! ## A189965.P7645511331989937866

`A112798(A342864(3*n+4)+A223680(n+1))`
-/

namespace A189965.P7645511331989937866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A342864 (3 * n + 4) + A223680 (n + 1)).toNat

end

end A189965.P7645511331989937866

/-! ## A189965.P3502789120074196828

`gcd(A001222(A233733(n+5)), A345795(n+1))`
-/

namespace A189965.P3502789120074196828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A233733 (n + 5)).toNat) (A345795 (n + 1))

end

end A189965.P3502789120074196828

/-!
# A189972: Number of 3:4:5 proportioned triangles on a (n+1)X(n+1) grid.

The programs for A189972, there is no canonical definition to state claims against.
-/

/-! ## A189972.P7215991956838285735

`A189973(∑[4*n]+1)`
-/

namespace A189972.P7215991956838285735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189973 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189972.P7215991956838285735

/-! ## A189972.P16864627422842390311

`lcm(2, A189973(A001844(n)))`
-/

namespace A189972.P16864627422842390311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189973 (A001844 n).toNat)

end

end A189972.P16864627422842390311

/-! ## A189972.P3754824761202990406

`A054977(n)*A189973(A001844(n))`
-/

namespace A189972.P3754824761202990406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A189973 (A001844 n).toNat

end

end A189972.P3754824761202990406

/-! ## A189972.P5782095696827112501

`A189973(A001844(n))%A013973(n)`
-/

namespace A189972.P5782095696827112501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189973 (A001844 n).toNat) (A013973 n)

end

end A189972.P5782095696827112501

/-! ## A189972.P9044282190150229003

`A358771(n²)+A189973(A001844(n))`
-/

namespace A189972.P9044282190150229003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (n ^ 2) + A189973 (A001844 n).toNat

end

end A189972.P9044282190150229003

/-! ## A189972.P14023545452652253655

`(A000007(n)+1)*A189973(A001844(n))`
-/

namespace A189972.P14023545452652253655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A189973 (A001844 n).toNat

end

end A189972.P14023545452652253655

/-! ## A189972.P11376338997976013529

`A007318(C(2, n))*A189973(A001844(n))`
-/

namespace A189972.P11376338997976013529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189973 (A001844 n).toNat

end

end A189972.P11376338997976013529

/-! ## A189972.P3550970620706818992

`A007318(and(1, -n))*A189973(A001844(n))`
-/

namespace A189972.P3550970620706818992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A189973 (A001844 n).toNat

end

end A189972.P3550970620706818992

/-! ## A189972.P16138465804901512412

`val(A007318(n), 13)!*A189973(A001844(n))`
-/

namespace A189972.P16138465804901512412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A007318 n).toNat 13) : ℤ) * A189973 (A001844 n).toNat

end

end A189972.P16138465804901512412

/-! ## A189972.P15396061377074399744

`A000040(n+1)%2*A189973(A001844(n))`
-/

namespace A189972.P15396061377074399744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A189973 (A001844 n).toNat

end

end A189972.P15396061377074399744

/-!
# A189973: T(n,k)=Number of 3:4:5 proportioned triangles on a (n+1)X(k+1) grid.

The programs for A189973, there is no canonical definition to state claims against.
-/

/-! ## A189973.P4923014093143311608

`4*A067169(A131061(n))`
-/

namespace A189973.P4923014093143311608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A067169 ((A131061 n).toNat + 11)

end

end A189973.P4923014093143311608

/-! ## A189973.P17859624240832879849

`and(28, A034328(A125806(n)))`
-/

namespace A189973.P17859624240832879849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 28 (A034328 (A125806 n).toNat)

end

end A189973.P17859624240832879849

/-! ## A189973.P5466832773870262295

`and(28, A070956(A260340(n)))`
-/

namespace A189973.P5466832773870262295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 28 (A070956 (A260340 n).toNat)

end

end A189973.P5466832773870262295

/-! ## A189973.P1381219175714342811

`and(A122083(n), A331098(n+1))`
-/

namespace A189973.P1381219175714342811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122083 n) (A331098 (n + 1))

end

end A189973.P1381219175714342811

/-! ## A189973.P12870944776472843798

`A162200(∏{e}[A222944(n+1), #])`
-/

namespace A189973.P12870944776472843798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162200 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A189973.P12870944776472843798

/-!
# A189974: Numbers m such that d(m-1) = d(m+1) = 4, where d(k) is the number of divisors of k (A000005).

The programs for A189974, there is no canonical definition to state claims against.
-/

/-! ## A189974.P14101784059826712586

`A356742(n+1)+1`
-/

namespace A189974.P14101784059826712586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356742 (n + 1) + 1

end

end A189974.P14101784059826712586

/-! ## A189974.P14826666100180831360

`∩[A007422(n+1), A062832(n+1)]+1`
-/

namespace A189974.P14826666100180831360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A189974.P14826666100180831360

/-! ## A189974.P191962626319766994

`∩[A030513(n+1), A062832(n+1)]+1`
-/

namespace A189974.P191962626319766994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A189974.P191962626319766994

/-! ## A189974.P5313974856055507243

`∩[A062832(n+1), A332269(n+1)]+1`
-/

namespace A189974.P5313974856055507243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A189974.P5313974856055507243

/-! ## A189974.P14247201371927074525

`∩[A062832(n+1), A323644(n+1)]+1`
-/

namespace A189974.P14247201371927074525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A189974.P14247201371927074525

/-! ## A189974.P11785853554406235018

`∩[A067888(n+1), A323644(n+1)+1]`
-/

namespace A189974.P11785853554406235018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189974.P11785853554406235018

/-! ## A189974.P7262476119476153185

`A020725(A356742(n+1))`
-/

namespace A189974.P7262476119476153185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A356742 (n + 1)).toNat

end

end A189974.P7262476119476153185

/-! ## A189974.P6587867466819118748

`eq[A100577(n+1), A189827(n+2)]+2`
-/

namespace A189974.P6587867466819118748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A189974.P6587867466819118748

/-! ## A189974.P13126401087472220736

`eq[A286002(n+1)², A034714(A059292(n+1))]`
-/

namespace A189974.P13126401087472220736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034714 (A059292 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189974.P13126401087472220736

/-! ## A189974.P341082485905994484

`eq[A000079(A000005(n+1)-1), A189827(n+2)]+2`
-/

namespace A189974.P341082485905994484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000005 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A189974.P341082485905994484

/-! ## A189974.P2343155448762024100

`∩[A062832(n+1), A130763(n+1)]+1`
-/

namespace A189974.P2343155448762024100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A189974.P2343155448762024100

/-!
# A189975: Numbers with prime factorization pqr^3 for distinct p, q, r.

The programs for A189975, the canonical program `A189975.P4597304850234292274` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189975 has offset 1).

The definition of A189975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189975.P9086693052174934630

`∩[A048109(n+1), A137945(n+1)]`
-/

namespace A189975.P9086693052174934630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189975.P9086693052174934630

namespace A189975

/-- `∩[A048109(n+1), A137945(n+1)]` -/
def P9086693052174934630.Spec : Prop :=
  ∀ n, (P9086693052174934630.a n : ℤ) = A189975 (n + 1)

end A189975

/-! ## A189975.P9063960867636367333

`filter[A048109(n+1), A358751(#)]`
-/

namespace A189975.P9063960867636367333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A189975.P9063960867636367333

namespace A189975

/-- `filter[A048109(n+1), A358751(#)]` -/
def P9063960867636367333.Spec : Prop :=
  ∀ n, P9063960867636367333.a n = A189975 (n + 1)

end A189975

/-! ## A189975.P10321991331533204898

`filter[A137945(n+1), A359472(#)]`
-/

namespace A189975.P10321991331533204898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A189975.P10321991331533204898

namespace A189975

/-- `filter[A137945(n+1), A359472(#)]` -/
def P10321991331533204898.Spec : Prop :=
  ∀ n, P10321991331533204898.a n = A189975 (n + 1)

end A189975

/-! ## A189975.P9065965663058599220

`filter[A360793(n+1), A358751(#)]`
-/

namespace A189975.P9065965663058599220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A189975.P9065965663058599220

namespace A189975

/-- `filter[A360793(n+1), A358751(#)]` -/
def P9065965663058599220.Spec : Prop :=
  ∀ n, P9065965663058599220.a n = A189975 (n + 1)

end A189975

/-! ## A189975.P3916102462093802429

`filter[A030634(n+1), A358751(#)]`
-/

namespace A189975.P3916102462093802429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A189975.P3916102462093802429

namespace A189975

/-- `filter[A030634(n+1), A358751(#)]` -/
def P3916102462093802429.Spec : Prop :=
  ∀ n, P3916102462093802429.a n = A189975 (n + 1)

end A189975

/-! ## A189975.P4597304850234292274

`filter[A030634(n+1), A359472(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A189975

/-- `filter[A030634(n+1), A359472(#)]` -/
def P4597304850234292274.Spec : Prop :=
  ∀ n, P4597304850234292274.a n = A189975 (n + 1)

theorem P4597304850234292274.correct : P4597304850234292274.Spec := by
  intro n
  simp only [A189975, Nat.add_sub_cancel]

end A189975

/-! ## A189975.P10193876523161870679

`∩[A030634(n+1), A048109(n+1)]`
-/

namespace A189975.P10193876523161870679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189975.P10193876523161870679

namespace A189975

/-- `∩[A030634(n+1), A048109(n+1)]` -/
def P10193876523161870679.Spec : Prop :=
  ∀ n, (P10193876523161870679.a n : ℤ) = A189975 (n + 1)

end A189975

/-! ## A189975.P11324437375817761462

`∩[A030634(n+1), A137945(n+1)]`
-/

namespace A189975.P11324437375817761462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189975.P11324437375817761462

namespace A189975

/-- `∩[A030634(n+1), A137945(n+1)]` -/
def P11324437375817761462.Spec : Prop :=
  ∀ n, (P11324437375817761462.a n : ℤ) = A189975 (n + 1)

end A189975

/-! ## A189975.P13878328298750531529

`∩[A030634(n+1), A195086(n+1)]`
-/

namespace A189975.P13878328298750531529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189975.P13878328298750531529

namespace A189975

/-- `∩[A030634(n+1), A195086(n+1)]` -/
def P13878328298750531529.Spec : Prop :=
  ∀ n, (P13878328298750531529.a n : ℤ) = A189975 (n + 1)

end A189975

/-! ## A189975.P18186782168046314559

`filter[A014614(n+1), A359472(#)]`
-/

namespace A189975.P18186782168046314559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A189975.P18186782168046314559

namespace A189975

/-- `filter[A014614(n+1), A359472(#)]` -/
def P18186782168046314559.Spec : Prop :=
  ∀ n, P18186782168046314559.a n = A189975 (n + 1)

end A189975

/-! ## A189975.P83181267188842277

`∩[A014614(n+1), A030634(n+1)]`
-/

namespace A189975.P83181267188842277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189975.P83181267188842277

namespace A189975

/-- `∩[A014614(n+1), A030634(n+1)]` -/
def P83181267188842277.Spec : Prop :=
  ∀ n, (P83181267188842277.a n : ℤ) = A189975 (n + 1)

end A189975

/-! ## A189975.P6930029057208463685

`∩[A014614(n+1), A048109(n+1)]`
-/

namespace A189975.P6930029057208463685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189975.P6930029057208463685

namespace A189975

/-- `∩[A014614(n+1), A048109(n+1)]` -/
def P6930029057208463685.Spec : Prop :=
  ∀ n, (P6930029057208463685.a n : ℤ) = A189975 (n + 1)

end A189975

/-! ## A189975.P5071015754563979983

`∩[A014614(n+1), A137945(n+1)]`
-/

namespace A189975.P5071015754563979983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189975.P5071015754563979983

namespace A189975

/-- `∩[A014614(n+1), A137945(n+1)]` -/
def P5071015754563979983.Spec : Prop :=
  ∀ n, (P5071015754563979983.a n : ℤ) = A189975 (n + 1)

end A189975

/-! ## A189975.P12924883577578652792

`∩[A014614(n+1), A175496(n+1)]`
-/

namespace A189975.P12924883577578652792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189975.P12924883577578652792

namespace A189975

/-- `∩[A014614(n+1), A175496(n+1)]` -/
def P12924883577578652792.Spec : Prop :=
  ∀ n, (P12924883577578652792.a n : ℤ) = A189975 (n + 1)

end A189975

/-! ## A189975.P16375108740084152808

`∩[A030634(n+1), A173743(n+1)]`
-/

namespace A189975.P16375108740084152808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189975.P16375108740084152808

namespace A189975

/-- `∩[A030634(n+1), A173743(n+1)]` -/
def P16375108740084152808.Spec : Prop :=
  ∀ n, (P16375108740084152808.a n : ℤ) = A189975 (n + 1)

end A189975

/-! ## A189975.P16679827760224915439

`filter[A350371(n+1), A359472(#)]`
-/

namespace A189975.P16679827760224915439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A189975.P16679827760224915439

namespace A189975

/-- `filter[A350371(n+1), A359472(#)]` -/
def P16679827760224915439.Spec : Prop :=
  ∀ n, P16679827760224915439.a n = A189975 (n + 1)

end A189975

/-!
# A189976: a(n) is the number of incongruent two-color bracelets of n beads, 8 of them black (A005514), having a diameter of symmetry.

The programs for A189976, the canonical program `A189976.P9589969179646466254` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189976 has offset 8).

The definition of A189976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189976.P9589969179646466254

`C(floor((n+8)/2), 4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189976

/-- `C(floor((n+8)/2), 4)` -/
def P9589969179646466254.Spec : Prop :=
  ∀ n, (P9589969179646466254.a n : ℤ) = A189976 (n + 8)

theorem P9589969179646466254.correct : P9589969179646466254.Spec := by
  intro n
  simp only [A189976, Nat.add_sub_cancel]

end A189976

/-! ## A189976.P1467906598801939465

`sqrt(A288876(floor(n/2)))`
-/

namespace A189976.P1467906598801939465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A288876 ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A189976.P1467906598801939465

namespace A189976

/-- `sqrt(A288876(floor(n/2)))` -/
def P1467906598801939465.Spec : Prop :=
  ∀ n, P1467906598801939465.a n = (A189976 (n + 8) : ℝ)

end A189976

/-! ## A189976.P9113524174666051178

`A000332(floor(n/2)+4)`
-/

namespace A189976.P9113524174666051178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (⌊(n : ℚ) / 2⌋ + 4).toNat

end

end A189976.P9113524174666051178

namespace A189976

/-- `A000332(floor(n/2)+4)` -/
def P9113524174666051178.Spec : Prop :=
  ∀ n, P9113524174666051178.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P6808752828159580095

`∑[C(A027656(n)+2, 3)]`
-/

namespace A189976.P6808752828159580095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027656 n + 2).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P6808752828159580095

namespace A189976

/-- `∑[C(A027656(n)+2, 3)]` -/
def P6808752828159580095.Spec : Prop :=
  ∀ n, (P6808752828159580095.a n : ℤ) = A189976 (n + 8)

end A189976

/-! ## A189976.P17386212468074573159

`A145126(∑[log2(gcd(2, n))])-1`
-/

namespace A189976.P17386212468074573159
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A189976.P17386212468074573159

namespace A189976

/-- `A145126(∑[log2(gcd(2, n))])-1` -/
def P17386212468074573159.Spec : Prop :=
  ∀ n, P17386212468074573159.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P10563271866169907234

`∑[char[2*n]*A058187(n)]`
-/

namespace A189976.P10563271866169907234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A058187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P10563271866169907234

namespace A189976

/-- `∑[char[2*n]*A058187(n)]` -/
def P10563271866169907234.Spec : Prop :=
  ∀ n, P10563271866169907234.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P11277040919984134785

`A052762(∑[char[2*n]]+3)/24`
-/

namespace A189976.P11277040919984134785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℚ) / 24

end

end A189976.P11277040919984134785

namespace A189976

/-- `A052762(∑[char[2*n]]+3)/24` -/
def P11277040919984134785.Spec : Prop :=
  ∀ n, P11277040919984134785.a n = (A189976 (n + 8) : ℚ)

end A189976

/-! ## A189976.P15077913866718582888

`∑[A000292(∑[n+1]%(n+2))]`
-/

namespace A189976.P15077913866718582888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P15077913866718582888

namespace A189976

/-- `∑[A000292(∑[n+1]%(n+2))]` -/
def P15077913866718582888.Spec : Prop :=
  ∀ n, P15077913866718582888.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P14863751795962791306

`∑[A000292(A027656(n))]`
-/

namespace A189976.P14863751795962791306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P14863751795962791306

namespace A189976

/-- `∑[A000292(A027656(n))]` -/
def P14863751795962791306.Spec : Prop :=
  ∀ n, P14863751795962791306.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P6819119061766661428

`A093039(n+1)-A096338(n)`
-/

namespace A189976.P6819119061766661428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093039 (n + 1) - A096338 n

end

end A189976.P6819119061766661428

namespace A189976

/-- `A093039(n+1)-A096338(n)` -/
def P6819119061766661428.Spec : Prop :=
  ∀ n, P6819119061766661428.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P3873585218706024596

`∑[A056594(n)²*A008804(n)]`
-/

namespace A189976.P3873585218706024596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 * A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P3873585218706024596

namespace A189976

/-- `∑[A056594(n)²*A008804(n)]` -/
def P3873585218706024596.Spec : Prop :=
  ∀ n, P3873585218706024596.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P1127044457827681589

`∑[(1-A000035(n))*A008804(n)]`
-/

namespace A189976.P1127044457827681589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P1127044457827681589

namespace A189976

/-- `∑[(1-A000035(n))*A008804(n)]` -/
def P1127044457827681589.Spec : Prop :=
  ∀ n, P1127044457827681589.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P11846203799569604793

`∑[(2-A000034(n))*A008804(n)]`
-/

namespace A189976.P11846203799569604793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 n) * A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P11846203799569604793

namespace A189976

/-- `∑[(2-A000034(n))*A008804(n)]` -/
def P11846203799569604793.Spec : Prop :=
  ∀ n, P11846203799569604793.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P4054211150086330478

`∑[A056594(n)²*∑[A008642(n)]]`
-/

namespace A189976.P4054211150086330478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P4054211150086330478

namespace A189976

/-- `∑[A056594(n)²*∑[A008642(n)]]` -/
def P4054211150086330478.Spec : Prop :=
  ∀ n, P4054211150086330478.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P9707687735529254687

`∑[∑[A087960(n)]²*A008804(n)]`
-/

namespace A189976.P9707687735529254687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 * A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P9707687735529254687

namespace A189976

/-- `∑[∑[A087960(n)]²*A008804(n)]` -/
def P9707687735529254687.Spec : Prop :=
  ∀ n, P9707687735529254687.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P6851948841266664051

`A032094(n+9)-∑[A032093(n+8)]`
-/

namespace A189976.P6851948841266664051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032093 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032094 (n + 9) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P6851948841266664051

namespace A189976

/-- `A032094(n+9)-∑[A032093(n+8)]` -/
def P6851948841266664051.Spec : Prop :=
  ∀ n, P6851948841266664051.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P6721827922370036173

`2*A005514(n+8)-A032193(n+8)`
-/

namespace A189976.P6721827922370036173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005514 (n + 8) - A032193 (n + 8)

end

end A189976.P6721827922370036173

namespace A189976

/-- `2*A005514(n+8)-A032193(n+8)` -/
def P6721827922370036173.Spec : Prop :=
  ∀ n, P6721827922370036173.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P1953240594264847204

`A032094(n+9)-∑[∑[A032092(n+7)]]`
-/

namespace A189976.P1953240594264847204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032094 (n + 9) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P1953240594264847204

namespace A189976

/-- `A032094(n+9)-∑[∑[A032092(n+7)]]` -/
def P1953240594264847204.Spec : Prop :=
  ∀ n, P1953240594264847204.a n = A189976 (n + 8)

end A189976

/-! ## A189976.P425961713506113855

`A027800(A008619(n)-1)/A008619(n)`
-/

namespace A189976.P425961713506113855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027800 (A008619 n - 1).toNat : ℚ) / (A008619 n : ℚ)

end

end A189976.P425961713506113855

namespace A189976

/-- `A027800(A008619(n)-1)/A008619(n)` -/
def P425961713506113855.Spec : Prop :=
  ∀ n, P425961713506113855.a n = (A189976 (n + 8) : ℚ)

end A189976

/-! ## A189976.P11601980359925377744

`∑[A056594(n)*A058187(n)*A056594(n)]`
-/

namespace A189976.P11601980359925377744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A058187 n * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189976.P11601980359925377744

namespace A189976

/-- `∑[A056594(n)*A058187(n)*A056594(n)]` -/
def P11601980359925377744.Spec : Prop :=
  ∀ n, P11601980359925377744.a n = A189976 (n + 8)

end A189976

/-!
# A189977: Primes p such that d(p+1) = 2*d(p-1), where d(k) counts the divisors of k.

The programs for A189977, there is no canonical definition to state claims against.
-/

/-! ## A189977.P10859325283820064591

`p?[A175115(n+1)-1]`
-/

namespace A189977.P10859325283820064591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175115 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189977.P10859325283820064591

/-! ## A189977.P4199458916229888007

`record[A006530(A175115(n+1)-1)]`
-/

namespace A189977.P4199458916229888007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175115 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189977.P4199458916229888007

/-! ## A189977.P18211087572462250942

`record[A020639(A175115(n+1)-1)]`
-/

namespace A189977.P18211087572462250942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175115 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189977.P18211087572462250942

/-! ## A189977.P9800900874273915249

`p?[A188540(n+1)+1]`
-/

namespace A189977.P9800900874273915249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188540 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189977.P9800900874273915249

/-! ## A189977.P11260712943025815098

`record[A020639(A188540(n+1)+1)]`
-/

namespace A189977.P11260712943025815098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A188540 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189977.P11260712943025815098

/-! ## A189977.P8815398616532437064

`∩[A000040(n+1), A188540(n+1)+1]`
-/

namespace A189977.P8815398616532437064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188540 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189977.P8815398616532437064

/-! ## A189977.P8489229653381672590

`∩[A045319(n+1), A188540(n+1)+1]`
-/

namespace A189977.P8489229653381672590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188540 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189977.P8489229653381672590

/-! ## A189977.P7917793395935152891

`∩[A045344(n+1), A188540(n+1)+1]`
-/

namespace A189977.P7917793395935152891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188540 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189977.P7917793395935152891

/-! ## A189977.P14937390099624308478

`record[A014963(A188540(n+1)+1)]`
-/

namespace A189977.P14937390099624308478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A188540 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189977.P14937390099624308478

/-! ## A189977.P868678647601160595

`record[A014963(A175115(n+1)-1)]`
-/

namespace A189977.P868678647601160595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175115 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189977.P868678647601160595

/-!
# A189978: Number of isosceles triangles, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A189978, there is no canonical definition to state claims against.
-/

/-! ## A189978.P9378927253645866229

`A028419(n)-A190313(n+1)`
-/

namespace A189978.P9378927253645866229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028419 n - A190313 (n + 1)

end

end A189978.P9378927253645866229

/-! ## A189978.P8792686097940192731

`A108279(n+1)+A190310(n+1)+A190309(n+1)`
-/

namespace A189978.P8792686097940192731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108279 (n + 1) + (A190310 (n + 1) + A190309 (n + 1))

end

end A189978.P8792686097940192731

/-! ## A189978.P3226355217221628946

`A189979(n+1)+A190022(n+1)+A190021(n+1)-A190313(n+1)`
-/

namespace A189978.P3226355217221628946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189979 (n + 1) + (A190022 (n + 1) + A190021 (n + 1)) - A190313 (n + 1)

end

end A189978.P3226355217221628946

/-! ## A189978.P3645728632219889505

`3*A028419(n)-A272053(n)`
-/

namespace A189978.P3645728632219889505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028419 n - A272053 n

end

end A189978.P3645728632219889505

/-! ## A189978.P13843239071783135473

`(A272053(n)-A190313(n+1))/2-A190313(n+1)`
-/

namespace A189978.P13843239071783135473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272053 n - A190313 (n + 1) : ℚ) / 2 - (A190313 (n + 1) : ℚ)

end

end A189978.P13843239071783135473

/-!
# A189979: Number of right triangles, distinct up to congruence, on an n X n grid (or geoboard).

The programs for A189979, there is no canonical definition to state claims against.
-/

/-! ## A189979.P8138111392800416218

`A028419(n)-(A190022(n+1)+A190021(n+1))`
-/

namespace A189979.P8138111392800416218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028419 n - (A190022 (n + 1) + A190021 (n + 1))

end

end A189979.P8138111392800416218

/-! ## A189979.P12410945839807187879

`A190313(n+1)+A189978(n+1)-(A190022(n+1)+A190021(n+1))`
-/

namespace A189979.P12410945839807187879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190313 (n + 1) + A189978 (n + 1) - (A190022 (n + 1) + A190021 (n + 1))

end

end A189979.P12410945839807187879

/-! ## A189979.P149355133534724031

`(A272053(n)+A189978(n+1))/3-(A190022(n+1)+A190021(n+1))`
-/

namespace A189979.P149355133534724031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272053 n + A189978 (n + 1) : ℚ) / 3 - (A190022 (n + 1) + A190021 (n + 1) : ℚ)

end

end A189979.P149355133534724031

/-! ## A189979.P13144359367674480466

`A004709(A267682(n))%A146222(2*n+5)`
-/

namespace A189979.P13144359367674480466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004709 (A267682 n).toNat) (A146222 (2 * n + 5))

end

end A189979.P13144359367674480466

/-! ## A189979.P742598773509631460

`A108611(A091070(n))+n²`
-/

namespace A189979.P742598773509631460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A091070 n).toNat + (n ^ 2 : ℤ)

end

end A189979.P742598773509631460

/-!
# A189980: a(n) is the number of incongruent two-color bracelets of n beads, 10 from them are black (A005515), having a diameter of symmetry.

The programs for A189980, the canonical program `A189980.P17958627382576063384` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189980 has offset 10).

The definition of A189980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189980.P17958627382576063384

`C(floor((n+10)/2), 5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189980

/-- `C(floor((n+10)/2), 5)` -/
def P17958627382576063384.Spec : Prop :=
  ∀ n, (P17958627382576063384.a n : ℤ) = A189980 (n + 10)

theorem P17958627382576063384.correct : P17958627382576063384.Spec := by
  intro n
  simp only [A189980, Nat.add_sub_cancel]

end A189980

/-! ## A189980.P1810954478544436494

`A177747(or(1, n))/2`
-/

namespace A189980.P1810954478544436494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177747 (Nat.lor 1 n) : ℚ) / 2

end

end A189980.P1810954478544436494

namespace A189980

/-- `A177747(or(1, n))/2` -/
def P1810954478544436494.Spec : Prop :=
  ∀ n, P1810954478544436494.a n = (A189980 (n + 10) : ℚ)

end A189980

/-! ## A189980.P14009477126401783878

`A000389(floor(n/2)+5)`
-/

namespace A189980.P14009477126401783878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (⌊(n : ℚ) / 2⌋ + 5).toNat

end

end A189980.P14009477126401783878

namespace A189980

/-- `A000389(floor(n/2)+5)` -/
def P14009477126401783878.Spec : Prop :=
  ∀ n, P14009477126401783878.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P13464924607181423456

`A177747(n)-a(n-1)` with `a(0)=1`
-/

namespace A189980.P13464924607181423456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177747 n - a (n - 1)

end

end A189980.P13464924607181423456

namespace A189980

/-- `A177747(n)-a(n-1)` -/
def P13464924607181423456.Spec : Prop :=
  ∀ n, P13464924607181423456.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P7561105051134965338

`∑[char[2*n]*A189976(n+8)]`
-/

namespace A189980.P7561105051134965338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A189976 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189980.P7561105051134965338

namespace A189980

/-- `∑[char[2*n]*A189976(n+8)]` -/
def P7561105051134965338.Spec : Prop :=
  ∀ n, P7561105051134965338.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P5054613513115264376

`A018214(n)-A282078(n)`
-/

namespace A189980.P5054613513115264376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018214 n - A282078 n

end

end A189980.P5054613513115264376

namespace A189980

/-- `A018214(n)-A282078(n)` -/
def P5054613513115264376.Spec : Prop :=
  ∀ n, P5054613513115264376.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P16349694227935017770

`A323228(A004526(n)+1)-1`
-/

namespace A189980.P16349694227935017770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323228 (A004526 n + 1).toNat - 1

end

end A189980.P16349694227935017770

namespace A189980

/-- `A323228(A004526(n)+1)-1` -/
def P16349694227935017770.Spec : Prop :=
  ∀ n, P16349694227935017770.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P7138986166863744189

`2*A018214(n)-A001287(n)`
-/

namespace A189980.P7138986166863744189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018214 n - A001287 (n + 10)

end

end A189980.P7138986166863744189

namespace A189980

/-- `2*A018214(n)-A001287(n)` -/
def P7138986166863744189.Spec : Prop :=
  ∀ n, P7138986166863744189.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P14710123792377020347

`A001287(n)-2*A282078(n)`
-/

namespace A189980.P14710123792377020347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) - 2 * A282078 n

end

end A189980.P14710123792377020347

namespace A189980

/-- `A001287(n)-2*A282078(n)` -/
def P14710123792377020347.Spec : Prop :=
  ∀ n, P14710123792377020347.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P9678890617883472911

`2*A299337(n)-A299336(n)`
-/

namespace A189980.P9678890617883472911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299337 n - A299336 n

end

end A189980.P9678890617883472911

namespace A189980

/-- `2*A299337(n)-A299336(n)` -/
def P9678890617883472911.Spec : Prop :=
  ∀ n, P9678890617883472911.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P3190095262429106848

`∑[2*A018213(n)]-A001287(n)`
-/

namespace A189980.P3190095262429106848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001287 (n + 10)

end

end A189980.P3190095262429106848

namespace A189980

/-- `∑[2*A018213(n)]-A001287(n)` -/
def P3190095262429106848.Spec : Prop :=
  ∀ n, P3190095262429106848.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P16920464533904443407

`A001287(n)-∑[2*A282077(n)]`
-/

namespace A189980.P16920464533904443407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189980.P16920464533904443407

namespace A189980

/-- `A001287(n)-∑[2*A282077(n)]` -/
def P16920464533904443407.Spec : Prop :=
  ∀ n, P16920464533904443407.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P9422287127507713596

`∑[2*A018213(n)-A000582(n+9)]`
-/

namespace A189980.P9422287127507713596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018213 n - A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189980.P9422287127507713596

namespace A189980

/-- `∑[2*A018213(n)-A000582(n+9)]` -/
def P9422287127507713596.Spec : Prop :=
  ∀ n, P9422287127507713596.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P4817575952833717965

`2*A018214(n)-∑[A000582(n+9)]`
-/

namespace A189980.P4817575952833717965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018214 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189980.P4817575952833717965

namespace A189980

/-- `2*A018214(n)-∑[A000582(n+9)]` -/
def P4817575952833717965.Spec : Prop :=
  ∀ n, P4817575952833717965.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P7046688923112799408

`∑[A000582(n+9)-2*A282077(n)]`
-/

namespace A189980.P7046688923112799408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - 2 * A282077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189980.P7046688923112799408

namespace A189980

/-- `∑[A000582(n+9)-2*A282077(n)]` -/
def P7046688923112799408.Spec : Prop :=
  ∀ n, P7046688923112799408.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P4464250153677420585

`∑[A000582(n+9)]-2*A282078(n)`
-/

namespace A189980.P4464250153677420585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A282078 n

end

end A189980.P4464250153677420585

namespace A189980

/-- `∑[A000582(n+9)]-2*A282078(n)` -/
def P4464250153677420585.Spec : Prop :=
  ∀ n, P4464250153677420585.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P7178998746161487027

`Δ[A299336(n)-A299337(n)]`
-/

namespace A189980.P7178998746161487027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299336 n - A299337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189980.P7178998746161487027

namespace A189980

/-- `Δ[A299336(n)-A299337(n)]` -/
def P7178998746161487027.Spec : Prop :=
  ∀ n, P7178998746161487027.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P10507777814205109240

`∑[A056594(n)²*Δ[A081284(n)]]`
-/

namespace A189980.P10507777814205109240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189980.P10507777814205109240

namespace A189980

/-- `∑[A056594(n)²*Δ[A081284(n)]]` -/
def P10507777814205109240.Spec : Prop :=
  ∀ n, P10507777814205109240.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P5486659184590684111

`∑[A056594(n)²*Δ[A177747(n)]]`
-/

namespace A189980.P5486659184590684111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189980.P5486659184590684111

namespace A189980

/-- `∑[A056594(n)²*Δ[A177747(n)]]` -/
def P5486659184590684111.Spec : Prop :=
  ∀ n, P5486659184590684111.a n = A189980 (n + 10)

end A189980

/-! ## A189980.P4899780329352636237

`A177747(A004525(2*n+1))/2`
-/

namespace A189980.P4899780329352636237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177747 (A004525 (2 * n + 1)).toNat : ℚ) / 2

end

end A189980.P4899780329352636237

namespace A189980

/-- `A177747(A004525(2*n+1))/2` -/
def P4899780329352636237.Spec : Prop :=
  ∀ n, P4899780329352636237.a n = (A189980 (n + 10) : ℚ)

end A189980

/-!
# A189981: E.g.f. satisfies: A(x) = Sum_{n>=0} log(1 + x*A(x)^n)^n/n!.

The programs for A189981, there is no canonical definition to state claims against.
-/

/-! ## A189981.P3279805171786581824

`A000010(∑[C(2*n, n)/(n+1)*n!])`
-/

namespace A189981.P3279805171786581824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A189981.P3279805171786581824

/-! ## A189981.P3301052610238253028

`A055034(∑[C(2*n, n)/(n+1)*n!])`
-/

namespace A189981.P3301052610238253028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A189981.P3301052610238253028

/-!
# A189982: Numbers with prime signature (2,1,1,1), i.e., factorization p*q*r*s^2 with distinct primes p, q, r, s.

The programs for A189982, the canonical program `A189982.P2942469841084438276` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189982 has offset 1).

The definition of A189982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189982.P13755475088828350600

`∩[A137487(n+1), A200521(n+1)]`
-/

namespace A189982.P13755475088828350600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189982.P13755475088828350600

namespace A189982

/-- `∩[A137487(n+1), A200521(n+1)]` -/
def P13755475088828350600.Spec : Prop :=
  ∀ n, (P13755475088828350600.a n : ℤ) = A189982 (n + 1)

end A189982

/-! ## A189982.P3883242123201041545

`∩[A137487(n+1), A350374(n+1)]`
-/

namespace A189982.P3883242123201041545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189982.P3883242123201041545

namespace A189982

/-- `∩[A137487(n+1), A350374(n+1)]` -/
def P3883242123201041545.Spec : Prop :=
  ∀ n, (P3883242123201041545.a n : ℤ) = A189982 (n + 1)

end A189982

/-! ## A189982.P2942469841084438276

`filter[A137487(n+1), A212793(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A189982

/-- `filter[A137487(n+1), A212793(#)]` -/
def P2942469841084438276.Spec : Prop :=
  ∀ n, P2942469841084438276.a n = A189982 (n + 1)

theorem P2942469841084438276.correct : P2942469841084438276.Spec := by
  intro n
  simp only [A189982, Nat.add_sub_cancel]

end A189982

/-! ## A189982.P6180181634592733403

`filter[A137487(n+1), A355823(#)]`
-/

namespace A189982.P6180181634592733403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A189982.P6180181634592733403

namespace A189982

/-- `filter[A137487(n+1), A355823(#)]` -/
def P6180181634592733403.Spec : Prop :=
  ∀ n, P6180181634592733403.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P3656508938232818002

`filter[A137487(n+1), A359429(#)]`
-/

namespace A189982.P3656508938232818002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A189982.P3656508938232818002

namespace A189982

/-- `filter[A137487(n+1), A359429(#)]` -/
def P3656508938232818002.Spec : Prop :=
  ∀ n, P3656508938232818002.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P9446169763807829363

`filter[A137487(n+1), A359471(#)]`
-/

namespace A189982.P9446169763807829363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A189982.P9446169763807829363

namespace A189982

/-- `filter[A137487(n+1), A359471(#)]` -/
def P9446169763807829363.Spec : Prop :=
  ∀ n, P9446169763807829363.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P6473135039896341730

`filter[A137487(n+1), A359474(#)]`
-/

namespace A189982.P6473135039896341730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A189982.P6473135039896341730

namespace A189982

/-- `filter[A137487(n+1), A359474(#)]` -/
def P6473135039896341730.Spec : Prop :=
  ∀ n, P6473135039896341730.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P17668250608887834949

`filter[A137487(n+1), A359475(#)]`
-/

namespace A189982.P17668250608887834949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A189982.P17668250608887834949

namespace A189982

/-- `filter[A137487(n+1), A359475(#)]` -/
def P17668250608887834949.Spec : Prop :=
  ∀ n, P17668250608887834949.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P17999113471786241757

`filter[A200521(n+1), A359471(#)]`
-/

namespace A189982.P17999113471786241757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A189982.P17999113471786241757

namespace A189982

/-- `filter[A200521(n+1), A359471(#)]` -/
def P17999113471786241757.Spec : Prop :=
  ∀ n, P17999113471786241757.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P17590127291615354889

`filter[A200521(n+1), A359474(#)]`
-/

namespace A189982.P17590127291615354889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A189982.P17590127291615354889

namespace A189982

/-- `filter[A200521(n+1), A359474(#)]` -/
def P17590127291615354889.Spec : Prop :=
  ∀ n, P17590127291615354889.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P5079263305046625109

`filter[A200521(n+1), A359475(#)]`
-/

namespace A189982.P5079263305046625109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A189982.P5079263305046625109

namespace A189982

/-- `filter[A200521(n+1), A359475(#)]` -/
def P5079263305046625109.Spec : Prop :=
  ∀ n, P5079263305046625109.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P2568579181351880483

`filter[A350374(n+1), A212793(#)]`
-/

namespace A189982.P2568579181351880483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A189982.P2568579181351880483

namespace A189982

/-- `filter[A350374(n+1), A212793(#)]` -/
def P2568579181351880483.Spec : Prop :=
  ∀ n, P2568579181351880483.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P10268017112726902730

`filter[A350374(n+1), A359429(#)]`
-/

namespace A189982.P10268017112726902730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A189982.P10268017112726902730

namespace A189982

/-- `filter[A350374(n+1), A359429(#)]` -/
def P10268017112726902730.Spec : Prop :=
  ∀ n, P10268017112726902730.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P12105793312843969417

`filter[A350374(n+1), A359471(#)]`
-/

namespace A189982.P12105793312843969417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A189982.P12105793312843969417

namespace A189982

/-- `filter[A350374(n+1), A359471(#)]` -/
def P12105793312843969417.Spec : Prop :=
  ∀ n, P12105793312843969417.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P10967642941829956767

`filter[A350374(n+1), A359474(#)]`
-/

namespace A189982.P10967642941829956767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A189982.P10967642941829956767

namespace A189982

/-- `filter[A350374(n+1), A359474(#)]` -/
def P10967642941829956767.Spec : Prop :=
  ∀ n, P10967642941829956767.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P4828055615193316134

`filter[A350374(n+1), A359475(#)]`
-/

namespace A189982.P4828055615193316134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A189982.P4828055615193316134

namespace A189982

/-- `filter[A350374(n+1), A359475(#)]` -/
def P4828055615193316134.Spec : Prop :=
  ∀ n, P4828055615193316134.a n = A189982 (n + 1)

end A189982

/-! ## A189982.P2022538698095095393

`∩[A014614(n+1), A137487(n+1)]`
-/

namespace A189982.P2022538698095095393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189982.P2022538698095095393

namespace A189982

/-- `∩[A014614(n+1), A137487(n+1)]` -/
def P2022538698095095393.Spec : Prop :=
  ∀ n, (P2022538698095095393.a n : ℤ) = A189982 (n + 1)

end A189982

/-! ## A189982.P1986775732101164221

`∩[A014614(n+1), A200521(n+1)]`
-/

namespace A189982.P1986775732101164221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189982.P1986775732101164221

namespace A189982

/-- `∩[A014614(n+1), A200521(n+1)]` -/
def P1986775732101164221.Spec : Prop :=
  ∀ n, (P1986775732101164221.a n : ℤ) = A189982 (n + 1)

end A189982

/-! ## A189982.P12558611970883194585

`∩[A014614(n+1), A350374(n+1)]`
-/

namespace A189982.P12558611970883194585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189982.P12558611970883194585

namespace A189982

/-- `∩[A014614(n+1), A350374(n+1)]` -/
def P12558611970883194585.Spec : Prop :=
  ∀ n, (P12558611970883194585.a n : ℤ) = A189982 (n + 1)

end A189982

/-!
# A189983: Numbers with prime factorization pqrst^2.

The programs for A189983, there is no canonical definition to state claims against.
-/

/-! ## A189983.P2595832178321769334

`∩[A051270(n+1), A175754(n+1)]`
-/

namespace A189983.P2595832178321769334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189983.P2595832178321769334

/-! ## A189983.P11757515127402344890

`filter[A175754(n+1), A212793(#)]`
-/

namespace A189983.P11757515127402344890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A189983.P11757515127402344890

/-! ## A189983.P8417343256081903287

`filter[A051270(n+1), A359474(#)]`
-/

namespace A189983.P8417343256081903287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A189983.P8417343256081903287

/-! ## A189983.P7264464872646001328

`filter[A051270(n+1), A359475(#)]`
-/

namespace A189983.P7264464872646001328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A189983.P7264464872646001328

/-! ## A189983.P17302642381734488236

`filter[A051270(n+1), A359764(#)]`
-/

namespace A189983.P17302642381734488236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A189983.P17302642381734488236

/-! ## A189983.P10356006497267885415

`filter[A175754(n+1), A355823(#)]`
-/

namespace A189983.P10356006497267885415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A189983.P10356006497267885415

/-! ## A189983.P4336904110018919558

`filter[A175754(n+1), A359429(#)]`
-/

namespace A189983.P4336904110018919558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A189983.P4336904110018919558

/-! ## A189983.P12710249111522592412

`filter[A175754(n+1), A359471(#)]`
-/

namespace A189983.P12710249111522592412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A189983.P12710249111522592412

/-! ## A189983.P15230710911308149789

`filter[A175754(n+1), A359474(#)]`
-/

namespace A189983.P15230710911308149789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A189983.P15230710911308149789

/-! ## A189983.P17293924303542106513

`filter[A175754(n+1), A359475(#)]`
-/

namespace A189983.P17293924303542106513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A189983.P17293924303542106513

/-!
# A189984: Numbers with prime factorization pqrst^3.

The programs for A189984, there is no canonical definition to state claims against.
-/

/-! ## A189984.P15768134605555894312

`∩[A051270(n+1), A172443(n+1)]`
-/

namespace A189984.P15768134605555894312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189984.P15768134605555894312

/-! ## A189984.P2869586956512293160

`∩[A046308(n+1), A172443(n+1)]`
-/

namespace A189984.P2869586956512293160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189984.P2869586956512293160

/-! ## A189984.P5573092584518380334

`∩[A172443(n+1), A195086(n+1)]`
-/

namespace A189984.P5573092584518380334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189984.P5573092584518380334

/-! ## A189984.P13657240712928321700

`filter[A172443(n+1), A359472(#)]`
-/

namespace A189984.P13657240712928321700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A189984.P13657240712928321700

/-! ## A189984.P899334155365601788

`filter[A172443(n+1), A326072(#)]`
-/

namespace A189984.P899334155365601788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A189984.P899334155365601788

/-!
# A189985: Numbers with prime factorization pqrstu^2.

The programs for A189985, there is no canonical definition to state claims against.
-/

/-! ## A189985.P14909624764274511243

`A052410(A190390(n+1)/6)`
-/

namespace A189985.P14909624764274511243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.roundAway ((A190390 (n + 1) : ℚ) / 6)).toNat

end

end A189985.P14909624764274511243

/-!
# A189986: Numbers of the form 4k+1 having exactly 4 divisors.

The programs for A189986, the canonical program `A189986.P2460908165640344182` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189986 has offset 1).

The definition of A189986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189986.P3777692284113019342

`4*eq[4, A000005(4*n+1)]+1`
-/

namespace A189986.P3777692284113019342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189986.P3777692284113019342

namespace A189986

/-- `4*eq[4, A000005(4*n+1)]+1` -/
def P3777692284113019342.Spec : Prop :=
  ∀ n, (P3777692284113019342.a n : ℤ) = A189986 (n + 1)

end A189986

/-! ## A189986.P2460908165640344182

`filter[A385350(n+2), A373978(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A189986

/-- `filter[A385350(n+2), A373978(#)]` -/
def P2460908165640344182.Spec : Prop :=
  ∀ n, P2460908165640344182.a n = A189986 (n + 1)

theorem P2460908165640344182.correct : P2460908165640344182.Spec := by
  intro n
  simp only [A189986, Nat.add_sub_cancel]

end A189986

/-! ## A189986.P17151892684820085473

`filter[A385350(n+2), A373993(#)]`
-/

namespace A189986.P17151892684820085473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A189986.P17151892684820085473

namespace A189986

/-- `filter[A385350(n+2), A373993(#)]` -/
def P17151892684820085473.Spec : Prop :=
  ∀ n, P17151892684820085473.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P12909751823520500386

`filter[A091113(n+1), A353788(#)]`
-/

namespace A189986.P12909751823520500386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A189986.P12909751823520500386

namespace A189986

/-- `filter[A091113(n+1), A353788(#)]` -/
def P12909751823520500386.Spec : Prop :=
  ∀ n, P12909751823520500386.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P3105851701577136973

`filter[A091113(n+2), A354927(#)]`
-/

namespace A189986.P3105851701577136973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A189986.P3105851701577136973

namespace A189986

/-- `filter[A091113(n+2), A354927(#)]` -/
def P3105851701577136973.Spec : Prop :=
  ∀ n, P3105851701577136973.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P12051286120720829192

`filter[A030513(n+1), A373978(#)]`
-/

namespace A189986.P12051286120720829192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A189986.P12051286120720829192

namespace A189986

/-- `filter[A030513(n+1), A373978(#)]` -/
def P12051286120720829192.Spec : Prop :=
  ∀ n, P12051286120720829192.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P18247960519761730355

`filter[A030513(n+1), A373993(#)]`
-/

namespace A189986.P18247960519761730355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A189986.P18247960519761730355

namespace A189986

/-- `filter[A030513(n+1), A373993(#)]` -/
def P18247960519761730355.Spec : Prop :=
  ∀ n, P18247960519761730355.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P12211340136864586804

`∩[A030513(n+1), A091113(n+1)]`
-/

namespace A189986.P12211340136864586804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189986.P12211340136864586804

namespace A189986

/-- `∩[A030513(n+1), A091113(n+1)]` -/
def P12211340136864586804.Spec : Prop :=
  ∀ n, (P12211340136864586804.a n : ℤ) = A189986 (n + 1)

end A189986

/-! ## A189986.P15731462580972382719

`filter[A007422(n+2), A373978(#)]`
-/

namespace A189986.P15731462580972382719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A189986.P15731462580972382719

namespace A189986

/-- `filter[A007422(n+2), A373978(#)]` -/
def P15731462580972382719.Spec : Prop :=
  ∀ n, P15731462580972382719.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P2618657838657688117

`filter[A007422(n+2), A373993(#)]`
-/

namespace A189986.P2618657838657688117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A189986.P2618657838657688117

namespace A189986

/-- `filter[A007422(n+2), A373993(#)]` -/
def P2618657838657688117.Spec : Prop :=
  ∀ n, P2618657838657688117.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P5230053346437186052

`filter[A077425(n+1), A354927(#)]`
-/

namespace A189986.P5230053346437186052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A189986.P5230053346437186052

namespace A189986

/-- `filter[A077425(n+1), A354927(#)]` -/
def P5230053346437186052.Spec : Prop :=
  ∀ n, P5230053346437186052.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P16576810814121541626

`∩[A007422(n+1), A077425(n+1)]`
-/

namespace A189986.P16576810814121541626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189986.P16576810814121541626

namespace A189986

/-- `∩[A007422(n+1), A077425(n+1)]` -/
def P16576810814121541626.Spec : Prop :=
  ∀ n, (P16576810814121541626.a n : ℤ) = A189986 (n + 1)

end A189986

/-! ## A189986.P14107060404804425695

`∩[A030513(n+1), A077425(n+1)]`
-/

namespace A189986.P14107060404804425695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189986.P14107060404804425695

namespace A189986

/-- `∩[A030513(n+1), A077425(n+1)]` -/
def P14107060404804425695.Spec : Prop :=
  ∀ n, (P14107060404804425695.a n : ℤ) = A189986 (n + 1)

end A189986

/-! ## A189986.P10168655736254504137

`filter[A004766(n+1), A354927(#)]`
-/

namespace A189986.P10168655736254504137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A189986.P10168655736254504137

namespace A189986

/-- `filter[A004766(n+1), A354927(#)]` -/
def P10168655736254504137.Spec : Prop :=
  ∀ n, P10168655736254504137.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P15846406761213349926

`filter[A016813(n+1), A354927(#)]`
-/

namespace A189986.P15846406761213349926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A189986.P15846406761213349926

namespace A189986

/-- `filter[A016813(n+1), A354927(#)]` -/
def P15846406761213349926.Spec : Prop :=
  ∀ n, P15846406761213349926.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P8898846377690546844

`filter[A222945(n+1), A354927(#)]`
-/

namespace A189986.P8898846377690546844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A189986.P8898846377690546844

namespace A189986

/-- `filter[A222945(n+1), A354927(#)]` -/
def P8898846377690546844.Spec : Prop :=
  ∀ n, P8898846377690546844.a n = A189986 (n + 1)

end A189986

/-! ## A189986.P1153454405690902635

`∩[A030513(n+1), A016813(n)]`
-/

namespace A189986.P1153454405690902635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189986.P1153454405690902635

namespace A189986

/-- `∩[A030513(n+1), A016813(n)]` -/
def P1153454405690902635.Spec : Prop :=
  ∀ n, (P1153454405690902635.a n : ℤ) = A189986 (n + 1)

end A189986

/-! ## A189986.P13096686686985477352

`∩[A030513(n+1), A222945(n)]`
-/

namespace A189986.P13096686686985477352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189986.P13096686686985477352

namespace A189986

/-- `∩[A030513(n+1), A222945(n)]` -/
def P13096686686985477352.Spec : Prop :=
  ∀ n, (P13096686686985477352.a n : ℤ) = A189986 (n + 1)

end A189986

/-! ## A189986.P13392176303791133496

`∩[A004766(n+1), A007422(n+1)]`
-/

namespace A189986.P13392176303791133496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189986.P13392176303791133496

namespace A189986

/-- `∩[A004766(n+1), A007422(n+1)]` -/
def P13392176303791133496.Spec : Prop :=
  ∀ n, (P13392176303791133496.a n : ℤ) = A189986 (n + 1)

end A189986

/-! ## A189986.P1495071708279507300

`∩[A004766(n+1), A030513(n+1)]`
-/

namespace A189986.P1495071708279507300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189986.P1495071708279507300

namespace A189986

/-- `∩[A004766(n+1), A030513(n+1)]` -/
def P1495071708279507300.Spec : Prop :=
  ∀ n, (P1495071708279507300.a n : ℤ) = A189986 (n + 1)

end A189986

/-!
# A189987: Numbers with prime factorization p*q^6.

The programs for A189987, there is no canonical definition to state claims against.
-/

/-! ## A189987.P17059365641217570451

`∩[A030632(n+1), A195089(n+1)]`
-/

namespace A189987.P17059365641217570451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P17059365641217570451

/-! ## A189987.P16850762272339286608

`sqrt(A175748(n+1))`
-/

namespace A189987.P16850762272339286608
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175748 (n + 1) : ℝ)

end

end A189987.P16850762272339286608

/-! ## A189987.P4402683472871581729

`root(A175748(n+1), 2%A175749(n+1))`
-/

namespace A189987.P4402683472871581729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175748 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A175749 (n + 1)) : ℝ))

end

end A189987.P4402683472871581729

/-! ## A189987.P15810740475811820466

`root(A175748(n+1), lcm(2, A006338(n+1)))`
-/

namespace A189987.P15810740475811820466
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175748 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A006338 (n + 1)) : ℝ))

end

end A189987.P15810740475811820466

/-! ## A189987.P16608398896898011923

`root(A175748(n+1), A001316(A001316(n)))`
-/

namespace A189987.P16608398896898011923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175748 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A189987.P16608398896898011923

/-! ## A189987.P8852446170017071586

`∩[A030632(n+1), A046308(n+1)]`
-/

namespace A189987.P8852446170017071586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P8852446170017071586

/-! ## A189987.P10711333115159622693

`∩[A046308(n+1), A336596(n+1)]`
-/

namespace A189987.P10711333115159622693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P10711333115159622693

/-! ## A189987.P17338243926922159591

`∩[A030632(n+1), A398225(n+1)]`
-/

namespace A189987.P17338243926922159591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P17338243926922159591

/-! ## A189987.P9917264510109323490

`∩[A030632(n+1), A391922(n+1)]`
-/

namespace A189987.P9917264510109323490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P9917264510109323490

/-! ## A189987.P17442273408271457384

`∩[A046308(n+1), A391922(n+1)]`
-/

namespace A189987.P17442273408271457384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P17442273408271457384

/-! ## A189987.P16085764690595087961

`∩[A195089(n+1), A391922(n+1)]`
-/

namespace A189987.P16085764690595087961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P16085764690595087961

/-! ## A189987.P17932364224494125987

`∩[A030632(n+1), A322448(n+1)]`
-/

namespace A189987.P17932364224494125987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P17932364224494125987

/-! ## A189987.P16107161080500523662

`∩[A046308(n+1), A253388(n+1)]`
-/

namespace A189987.P16107161080500523662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P16107161080500523662

/-! ## A189987.P17152615469222121832

`∩[A195089(n+1), A253388(n+1)]`
-/

namespace A189987.P17152615469222121832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P17152615469222121832

/-! ## A189987.P4420380302208355816

`∩[A030632(n+1), A392360(n+1)]`
-/

namespace A189987.P4420380302208355816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P4420380302208355816

/-! ## A189987.P3254865358782627420

`∩[A030632(n+1), A391591(n+1)]`
-/

namespace A189987.P3254865358782627420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P3254865358782627420

/-! ## A189987.P13776492900923549954

`∩[A030632(n+1), A391115(n+1)]`
-/

namespace A189987.P13776492900923549954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P13776492900923549954

/-! ## A189987.P1097992739123535968

`∩[A030632(n+1), A187039(n+1)]`
-/

namespace A189987.P1097992739123535968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P1097992739123535968

/-! ## A189987.P11976341974868763884

`∩[A030632(n+1), A374904(n+1)]`
-/

namespace A189987.P11976341974868763884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189987.P11976341974868763884

/-!
# A189988: Numbers with prime factorization p^2*q^4.

The programs for A189988, the canonical program `A189988.P7148530891049410471` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189988 has offset 1).

The definition of A189988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189988.P7148530891049410471

`A054753(n+1)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A189988

/-- `A054753(n+1)²` -/
def P7148530891049410471.Spec : Prop :=
  ∀ n, P7148530891049410471.a n = A189988 (n + 1)

theorem P7148530891049410471.correct : P7148530891049410471.Spec := by
  intro n
  simp only [A189988, Nat.add_sub_cancel]

end A189988

/-! ## A189988.P3761317234290485185

`A179694(n+1)^(2/3)`
-/

namespace A189988.P3761317234290485185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179694 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A189988.P3761317234290485185

namespace A189988

/-- `A179694(n+1)^(2/3)` -/
def P3761317234290485185.Spec : Prop :=
  ∀ n, P3761317234290485185.a n = (A189988 (n + 1) : ℝ)

end A189988

/-! ## A189988.P18445225625680487288

`A054753(A000027(n+1))^2`
-/

namespace A189988.P18445225625680487288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (A000027 (n + 1)).toNat ^ 2

end

end A189988.P18445225625680487288

namespace A189988

/-- `A054753(A000027(n+1))^2` -/
def P18445225625680487288.Spec : Prop :=
  ∀ n, P18445225625680487288.a n = A189988 (n + 1)

end A189988

/-! ## A189988.P13037430054303367017

`A179694(n+1)/A054753(n+1)`
-/

namespace A189988.P13037430054303367017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179694 (n + 1) : ℚ) / (A054753 (n + 1) : ℚ)

end

end A189988.P13037430054303367017

namespace A189988

/-- `A179694(n+1)/A054753(n+1)` -/
def P13037430054303367017.Spec : Prop :=
  ∀ n, P13037430054303367017.a n = (A189988 (n + 1) : ℚ)

end A189988

/-! ## A189988.P1990872103996995789

`A054753(A000027(n+1))*A054753(n+1)`
-/

namespace A189988.P1990872103996995789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (A000027 (n + 1)).toNat * A054753 (n + 1)

end

end A189988.P1990872103996995789

namespace A189988

/-- `A054753(A000027(n+1))*A054753(n+1)` -/
def P1990872103996995789.Spec : Prop :=
  ∀ n, P1990872103996995789.a n = A189988 (n + 1)

end A189988

/-! ## A189988.P13645904858790175786

`(eq[1, A353472(n+1)]+1)²`
-/

namespace A189988.P13645904858790175786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A189988.P13645904858790175786

namespace A189988

/-- `(eq[1, A353472(n+1)]+1)²` -/
def P13645904858790175786.Spec : Prop :=
  ∀ n, (P13645904858790175786.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P4629915550357545172

`(eq[2, A281116(n+1)]+1)²`
-/

namespace A189988.P4629915550357545172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A189988.P4629915550357545172

namespace A189988

/-- `(eq[2, A281116(n+1)]+1)²` -/
def P4629915550357545172.Spec : Prop :=
  ∀ n, (P4629915550357545172.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P2573334538644157912

`∩[A030515(n+1), A038109(n+1)]²`
-/

namespace A189988.P2573334538644157912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P2573334538644157912

namespace A189988

/-- `∩[A030515(n+1), A038109(n+1)]²` -/
def P2573334538644157912.Spec : Prop :=
  ∀ n, (P2573334538644157912.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P17439268781804881675

`∩[A014612(n+1), A030515(n+1)]²`
-/

namespace A189988.P17439268781804881675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P17439268781804881675

namespace A189988

/-- `∩[A014612(n+1), A030515(n+1)]²` -/
def P17439268781804881675.Spec : Prop :=
  ∀ n, (P17439268781804881675.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P15911370055481353924

`∩[A014612(n+1), A038109(n+1)]²`
-/

namespace A189988.P15911370055481353924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P15911370055481353924

namespace A189988

/-- `∩[A014612(n+1), A038109(n+1)]²` -/
def P15911370055481353924.Spec : Prop :=
  ∀ n, (P15911370055481353924.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P13827787995982228828

`∩[A014612(n+1), A060687(n+1)]²`
-/

namespace A189988.P13827787995982228828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P13827787995982228828

namespace A189988

/-- `∩[A014612(n+1), A060687(n+1)]²` -/
def P13827787995982228828.Spec : Prop :=
  ∀ n, (P13827787995982228828.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P6102880702680097656

`∩[A014612(n+1), A064499(n+1)]²`
-/

namespace A189988.P6102880702680097656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P6102880702680097656

namespace A189988

/-- `∩[A014612(n+1), A064499(n+1)]²` -/
def P6102880702680097656.Spec : Prop :=
  ∀ n, (P6102880702680097656.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P2096755343769619919

`∩[A014612(n+1), A067259(n+1)]²`
-/

namespace A189988.P2096755343769619919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P2096755343769619919

namespace A189988

/-- `∩[A014612(n+1), A067259(n+1)]²` -/
def P2096755343769619919.Spec : Prop :=
  ∀ n, (P2096755343769619919.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P2391999844908225460

`∩[A014612(n+1), A072357(n+1)]²`
-/

namespace A189988.P2391999844908225460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P2391999844908225460

namespace A189988

/-- `∩[A014612(n+1), A072357(n+1)]²` -/
def P2391999844908225460.Spec : Prop :=
  ∀ n, (P2391999844908225460.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P12877307754880971994

`∩[A014612(n+1), A081619(n+1)]²`
-/

namespace A189988.P12877307754880971994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P12877307754880971994

namespace A189988

/-- `∩[A014612(n+1), A081619(n+1)]²` -/
def P12877307754880971994.Spec : Prop :=
  ∀ n, (P12877307754880971994.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P9008384155117742696

`∩[A014612(n+1), A177425(n+1)]²`
-/

namespace A189988.P9008384155117742696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P9008384155117742696

namespace A189988

/-- `∩[A014612(n+1), A177425(n+1)]²` -/
def P9008384155117742696.Spec : Prop :=
  ∀ n, (P9008384155117742696.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P13755763138179009683

`∩[A014612(n+1), A059269(n+1)]²`
-/

namespace A189988.P13755763138179009683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P13755763138179009683

namespace A189988

/-- `∩[A014612(n+1), A059269(n+1)]²` -/
def P13755763138179009683.Spec : Prop :=
  ∀ n, (P13755763138179009683.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P17630742043816922916

`∩[A059269(n+1), A080258(n+1)]²`
-/

namespace A189988.P17630742043816922916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P17630742043816922916

namespace A189988

/-- `∩[A059269(n+1), A080258(n+1)]²` -/
def P17630742043816922916.Spec : Prop :=
  ∀ n, (P17630742043816922916.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P14302684430683912158

`∩[A014612(n+1), A072588(n+1)]²`
-/

namespace A189988.P14302684430683912158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P14302684430683912158

namespace A189988

/-- `∩[A014612(n+1), A072588(n+1)]²` -/
def P14302684430683912158.Spec : Prop :=
  ∀ n, (P14302684430683912158.a n : ℤ) = A189988 (n + 1)

end A189988

/-! ## A189988.P17501802202303301244

`∩[A014612(n+1), A072587(n+1)]²`
-/

namespace A189988.P17501802202303301244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189988.P17501802202303301244

namespace A189988

/-- `∩[A014612(n+1), A072587(n+1)]²` -/
def P17501802202303301244.Spec : Prop :=
  ∀ n, (P17501802202303301244.a n : ℤ) = A189988 (n + 1)

end A189988

/-!
# A189989: Numbers with prime factorization pqrs^2t^2.

The programs for A189989, there is no canonical definition to state claims against.
-/

/-! ## A189989.P3917189923107318170

`lcm(20, A255407(A333950(n+3)))`
-/

namespace A189989.P3917189923107318170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 20 (A255407 (A333950 (n + 3)).toNat)

end

end A189989.P3917189923107318170

/-! ## A189989.P15962468087512691919

`A287381(A287378(n))*A287646(n+8)`
-/

namespace A189989.P15962468087512691919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287381 (A287378 n).toNat * A287646 (n + 8)

end

end A189989.P15962468087512691919

/-! ## A189989.P558056424350678109

`A047406(lcm(Δ[n²], A333950(n+3)))`
-/

namespace A189989.P558056424350678109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047406 (Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A333950 (n + 3)))

end

end A189989.P558056424350678109

/-! ## A189989.P7276190236172131420

`A190384(n+1)/A231475(A000670(n))`
-/

namespace A189989.P7276190236172131420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190384 (n + 1) : ℚ) / (A231475 (A000670 n).toNat : ℚ)

end

end A189989.P7276190236172131420

/-!
# A189990: Numbers with prime factorization p^2*q^6.

The programs for A189990, there is no canonical definition to state claims against.
-/

/-! ## A189990.P8781124111783805545

`A065036(n+1)²`
-/

namespace A189990.P8781124111783805545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1) ^ 2

end

end A189990.P8781124111783805545

/-! ## A189990.P8780504601648043219

`A065036(xor(1, xor(1, n+1)))^2`
-/

namespace A189990.P8780504601648043219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (Nat.xor 1 (Nat.xor 1 (n + 1))) ^ 2

end

end A189990.P8780504601648043219

/-! ## A189990.P2069986335297129326

`A065036((n+1)^2/(n+1))^2`
-/

namespace A189990.P2069986335297129326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A189990.P2069986335297129326

/-! ## A189990.P14599233009311812387

`∩[A048109(n+1), A065127(n+1)]²`
-/

namespace A189990.P14599233009311812387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P14599233009311812387

/-! ## A189990.P6340860704944690241

`∩[A048109(n+1), A067341(n+1)]²`
-/

namespace A189990.P6340860704944690241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P6340860704944690241

/-! ## A189990.P16530850674144551610

`∩[A048109(n+1), A067801(n+1)]²`
-/

namespace A189990.P16530850674144551610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P16530850674144551610

/-! ## A189990.P11939121369186841305

`record[A052410(A297401(n+1))²]`
-/

namespace A189990.P11939121369186841305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A297401 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189990.P11939121369186841305

/-! ## A189990.P4458673762085997316

`∩[A014613(n+1), A048109(n+1)]²`
-/

namespace A189990.P4458673762085997316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P4458673762085997316

/-! ## A189990.P12779843992735397846

`∩[A014613(n+1), A060476(n+1)]²`
-/

namespace A189990.P12779843992735397846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P12779843992735397846

/-! ## A189990.P928851865202349338

`∩[A014613(n+1), A065127(n+1)]²`
-/

namespace A189990.P928851865202349338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P928851865202349338

/-! ## A189990.P11552674190623336716

`(eq[3, A281116(n+1)]+1)²`
-/

namespace A189990.P11552674190623336716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A189990.P11552674190623336716

/-! ## A189990.P6181317354877028334

`∩[A014613(n+1), A030626(n+1)]²`
-/

namespace A189990.P6181317354877028334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P6181317354877028334

/-! ## A189990.P11181184254250530414

`∩[A030626(n+1), A048109(n+1)]²`
-/

namespace A189990.P11181184254250530414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P11181184254250530414

/-! ## A189990.P2079312212279354112

`∩[A030626(n+1), A065127(n+1)]²`
-/

namespace A189990.P2079312212279354112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P2079312212279354112

/-! ## A189990.P14823632035797347118

`∩[A030626(n+1), A067341(n+1)]²`
-/

namespace A189990.P14823632035797347118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P14823632035797347118

/-! ## A189990.P14137939308255615574

`∩[A030626(n+1), A067801(n+1)]²`
-/

namespace A189990.P14137939308255615574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P14137939308255615574

/-! ## A189990.P2131582564891932219

`∩[A030626(n+1), A110893(n+1)]²`
-/

namespace A189990.P2131582564891932219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P2131582564891932219

/-! ## A189990.P659340097488658792

`∩[A014613(n+1), A119251(n+1)]²`
-/

namespace A189990.P659340097488658792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P659340097488658792

/-! ## A189990.P11560473170403265812

`∩[A030626(n+1), A119251(n+1)]²`
-/

namespace A189990.P11560473170403265812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P11560473170403265812

/-! ## A189990.P5720853294194787864

`∩[A048109(n+1), A119251(n+1)]²`
-/

namespace A189990.P5720853294194787864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A189990.P5720853294194787864

/-!
# A189991: Numbers with prime factorization p^4*q^4.

The programs for A189991, the canonical program `A189991.P280947877882391651` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189991 has offset 1).

The definition of A189991 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085986, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189991.P280947877882391651

`A085986(n+1)²`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A189991

/-- `A085986(n+1)²` -/
def P280947877882391651.Spec : Prop :=
  ∀ n, P280947877882391651.a n = A189991 (n + 1)

theorem P280947877882391651.correct : P280947877882391651.Spec := by
  intro n
  simp only [A189991, Nat.add_sub_cancel]

end A189991

/-! ## A189991.P10304244983206345648

`A006881(n+1)^4`
-/

namespace A189991.P10304244983206345648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) ^ 4

end

end A189991.P10304244983206345648

namespace A189991

/-- `A006881(n+1)^4` -/
def P10304244983206345648.Spec : Prop :=
  ∀ n, P10304244983206345648.a n = A189991 (n + 1)

end A189991

/-! ## A189991.P14412198212909235444

`eq[4, A077462(n)]²²`
-/

namespace A189991.P14412198212909235444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A189991.P14412198212909235444

namespace A189991

/-- `eq[4, A077462(n)]²²` -/
def P14412198212909235444.Spec : Prop :=
  ∀ n, (P14412198212909235444.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P16012562524521683333

`(eq[2, A046645(n+1)]+1)²²`
-/

namespace A189991.P16012562524521683333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2) ^ 2

end

end A189991.P16012562524521683333

namespace A189991

/-- `(eq[2, A046645(n+1)]+1)²²` -/
def P16012562524521683333.Spec : Prop :=
  ∀ n, (P16012562524521683333.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P11316231505501579772

`A006881(n+1)*A162142(n+1)`
-/

namespace A189991.P11316231505501579772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) * A162142 (n + 1)

end

end A189991.P11316231505501579772

namespace A189991

/-- `A006881(n+1)*A162142(n+1)` -/
def P11316231505501579772.Spec : Prop :=
  ∀ n, P11316231505501579772.a n = A189991 (n + 1)

end A189991

/-! ## A189991.P12903008045081910699

`A190465(n+1)/A006881(n+1)`
-/

namespace A189991.P12903008045081910699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190465 (n + 1) : ℚ) / (A006881 (n + 1) : ℚ)

end

end A189991.P12903008045081910699

namespace A189991

/-- `A190465(n+1)/A006881(n+1)` -/
def P12903008045081910699.Spec : Prop :=
  ∀ n, P12903008045081910699.a n = (A189991 (n + 1) : ℚ)

end A189991

/-! ## A189991.P12332414409983814245

`A161918(A065475(n+1))²²`
-/

namespace A189991.P12332414409983814245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161918 (A065475 (n + 1)).toNat ^ 2) ^ 2

end

end A189991.P12332414409983814245

namespace A189991

/-- `A161918(A065475(n+1))²²` -/
def P12332414409983814245.Spec : Prop :=
  ∀ n, P12332414409983814245.a n = A189991 (n + 1)

end A189991

/-! ## A189991.P11290153153401160967

`A161918(A181440(n+2))²²`
-/

namespace A189991.P11290153153401160967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161918 (A181440 (n + 2)).toNat ^ 2) ^ 2

end

end A189991.P11290153153401160967

namespace A189991

/-- `A161918(A181440(n+2))²²` -/
def P11290153153401160967.Spec : Prop :=
  ∀ n, P11290153153401160967.a n = A189991 (n + 1)

end A189991

/-! ## A189991.P1132150585358610132

`A161918(A184985(n+2))²²`
-/

namespace A189991.P1132150585358610132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161918 (A184985 (n + 2)).toNat ^ 2) ^ 2

end

end A189991.P1132150585358610132

namespace A189991

/-- `A161918(A184985(n+2))²²` -/
def P1132150585358610132.Spec : Prop :=
  ∀ n, P1132150585358610132.a n = A189991 (n + 1)

end A189991

/-! ## A189991.P17766594269208169686

`record[∏{p}[A325230(n+1), #²²]]`
-/

namespace A189991.P17766594269208169686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325230 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (p ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189991.P17766594269208169686

namespace A189991

/-- `record[∏{p}[A325230(n+1), #²²]]` -/
def P17766594269208169686.Spec : Prop :=
  ∀ n, (P17766594269208169686.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P1400680063860454863

`A167171(A182800(n+1))²²`
-/

namespace A189991.P1400680063860454863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167171 (A182800 (n + 1)).toNat ^ 2) ^ 2

end

end A189991.P1400680063860454863

namespace A189991

/-- `A167171(A182800(n+1))²²` -/
def P1400680063860454863.Spec : Prop :=
  ∀ n, P1400680063860454863.a n = A189991 (n + 1)

end A189991

/-! ## A189991.P15684403211515517124

`eq[3, A074206(n)]²²`
-/

namespace A189991.P15684403211515517124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A189991.P15684403211515517124

namespace A189991

/-- `eq[3, A074206(n)]²²` -/
def P15684403211515517124.Spec : Prop :=
  ∀ n, (P15684403211515517124.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P14653678358603006359

`∩[A113849(n+1), A113877(n+1)]`
-/

namespace A189991.P14653678358603006359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189991.P14653678358603006359

namespace A189991

/-- `∩[A113849(n+1), A113877(n+1)]` -/
def P14653678358603006359.Spec : Prop :=
  ∀ n, (P14653678358603006359.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P6230689496475546177

`∩[A113849(n+1), A217908(n+1)]`
-/

namespace A189991.P6230689496475546177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189991.P6230689496475546177

namespace A189991

/-- `∩[A113849(n+1), A217908(n+1)]` -/
def P6230689496475546177.Spec : Prop :=
  ∀ n, (P6230689496475546177.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P14303557550252148796

`∩[A113877(n+1), A153157(n+1)]`
-/

namespace A189991.P14303557550252148796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189991.P14303557550252148796

namespace A189991

/-- `∩[A113877(n+1), A153157(n+1)]` -/
def P14303557550252148796.Spec : Prop :=
  ∀ n, (P14303557550252148796.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P14421133940936712304

`eq[2, ∑{e}[n, #²]]^4`
-/

namespace A189991.P14421133940936712304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 4

end

end A189991.P14421133940936712304

namespace A189991

/-- `eq[2, ∑{e}[n, #²]]^4` -/
def P14421133940936712304.Spec : Prop :=
  ∀ n, (P14421133940936712304.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P17836978925540984726

`eq[2, ∑{e}[n, #²]]²²`
-/

namespace A189991.P17836978925540984726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2) ^ 2

end

end A189991.P17836978925540984726

namespace A189991

/-- `eq[2, ∑{e}[n, #²]]²²` -/
def P17836978925540984726.Spec : Prop :=
  ∀ n, (P17836978925540984726.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P9018540502320721604

`eq[2, A066882(n)]^4`
-/

namespace A189991.P9018540502320721604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 4

end

end A189991.P9018540502320721604

namespace A189991

/-- `eq[2, A066882(n)]^4` -/
def P9018540502320721604.Spec : Prop :=
  ∀ n, (P9018540502320721604.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P13012228176988968387

`eq[2, A293813(n)]²²`
-/

namespace A189991.P13012228176988968387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2) ^ 2

end

end A189991.P13012228176988968387

namespace A189991

/-- `eq[2, A293813(n)]²²` -/
def P13012228176988968387.Spec : Prop :=
  ∀ n, (P13012228176988968387.a n : ℤ) = A189991 (n + 1)

end A189991

/-! ## A189991.P17649572433130379115

`(eq[2, A008476(n+1)]+1)²²`
-/

namespace A189991.P17649572433130379115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2) ^ 2

end

end A189991.P17649572433130379115

namespace A189991

/-- `(eq[2, A008476(n+1)]+1)²²` -/
def P17649572433130379115.Spec : Prop :=
  ∀ n, (P17649572433130379115.a n : ℤ) = A189991 (n + 1)

end A189991

/-!
# A189992: Numbers n such that 2^n'-1 is prime, where n' is the arithmetic derivative of n.

The programs for A189992, there is no canonical definition to state claims against.
-/

/-! ## A189992.P3390335816369471016

`eq[1, A059959(A003415(n*A166486(n)))]`
-/

namespace A189992.P3390335816369471016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 (A003415 ((n : ℤ) * A166486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189992.P3390335816369471016

/-! ## A189992.P16400558448521096871

`eq[1, A126717(A003415(n))]`
-/

namespace A189992.P16400558448521096871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189992.P16400558448521096871

/-! ## A189992.P4897627514271331238

`eq[A054977(n), A059959(A003415(n))]`
-/

namespace A189992.P4897627514271331238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189992.P4897627514271331238

/-! ## A189992.P18186648576218310656

`eq[A057427(n), A059959(A003415(n))]`
-/

namespace A189992.P18186648576218310656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189992.P18186648576218310656

/-! ## A189992.P10495436265625544522

`eq[A059959(A003415(n)), A166486(n)]`
-/

namespace A189992.P10495436265625544522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189992.P10495436265625544522

/-!
# A189993: Length of the longest run of Ramanujan primes that are consecutive primes < 10^n.

The programs for A189993, there is no canonical definition to state claims against.
-/

/-! ## A189993.P16205044721088333068

`A149853(n)%A026356(2*n+1)`
-/

namespace A189993.P16205044721088333068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149853 n) (A026356 (2 * n + 1))

end

end A189993.P16205044721088333068

/-! ## A189993.P11901460406216450817

`(A149853(n)%A026356(A005408(n)))%70`
-/

namespace A189993.P11901460406216450817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A149853 n) (A026356 (A005408 n).toNat)) 70

end

end A189993.P11901460406216450817

/-! ## A189993.P7609703508917442202

`or(A292271(A219158(2*n+3)), A325101(2*n))`
-/

namespace A189993.P7609703508917442202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A292271 (A219158 (2 * n + 3)).toNat) (A325101 (2 * n))

end

end A189993.P7609703508917442202

/-! ## A189993.P2140092847626108407

`A189633(A272576(2*(n+1))-Δ[A302929(2*n+5)])`
-/

namespace A189993.P2140092847626108407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302929 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (A272576 (2 * (n + 1)) - (f1 (n + 1) - f1 n)).toNat

end

end A189993.P2140092847626108407

/-!
# A189995: The order b_{4n-1} of the cyclic group S_{4n-1}^{bp} of oriented diffeomorphism classes of smooth homotopy (4n-1)-spheres that bound parallelizable manifolds, for n > 1.

The programs for A189995, there is no canonical definition to state claims against.
-/

/-! ## A189995.P10761027208956114775

`A187595(4*(n+2)-1)`
-/

namespace A189995.P10761027208956114775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187595 (4 * (n + 2) - 1)

end

end A189995.P10761027208956114775

/-! ## A189995.P2165365765787149928

`A057617(2*n+3)`
-/

namespace A189995.P2165365765787149928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057617 (2 * n + 3)

end

end A189995.P2165365765787149928

/-!
# A189996: Bott periodicity: the homotopy groups of the stable orthogonal group are periodic with period 8 and repeat like [2, 2, 1, 0, 1, 1, 1, 0].

The programs for A189996, the canonical program `A189996.P17305330628303191537` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189996 has offset 0).

The definition of A189996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189996.P17305330628303191537

`a(n-8)` with `a(0)=2, a(1)=2, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189996

/-- `a(n-8)` -/
def P17305330628303191537.Spec : Prop :=
  ∀ n, (P17305330628303191537.a n : ℤ) = A189996 n

theorem P17305330628303191537.correct : P17305330628303191537.Spec := by
  intro n
  simp only [A189996]

end A189996

/-!
# A189997: Partial sums of A061742.

The programs for A189997, there is no canonical definition to state claims against.
-/

/-! ## A189997.P11160503226038834042

`∑[∏[eq[n, ∏{d}[n, #]]]²]`
-/

namespace A189997.P11160503226038834042
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189997.P11160503226038834042

/-! ## A189997.P3486725290292972430

`∑[∏[eq[n, ∏{d}[n, #]]]^2]`
-/

namespace A189997.P3486725290292972430
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189997.P3486725290292972430

/-! ## A189997.P16986976531416051657

`∑[∏[lt[∏{d}[n, #], n+1]]^2]`
-/

namespace A189997.P16986976531416051657
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189997.P16986976531416051657

/-! ## A189997.P14577743622044889455

`a(n-1)+∏[eq[n, ∏{d}[n, #]]]²` with `a(0)=1`
-/

namespace A189997.P14577743622044889455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A189997.P14577743622044889455

/-! ## A189997.P10542471810635166240

`∑[A061742(n)]`
-/

namespace A189997.P10542471810635166240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189997.P10542471810635166240

/-!
# A189998: Numerator of h(n+5) - h(n) where h(n) = Sum_{k=1..n} (1/k) are the Harmonic numbers.

The programs for A189998, the canonical program `A189998.P3726811178440266367` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189998 has offset 0).

The definition of A189998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189998.P3726811178440266367

`A165677(n+1)/gcd(A165677(n+1), A165678(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189998

/-- `A165677(n+1)/gcd(A165677(n+1), A165678(n+1))` -/
def P3726811178440266367.Spec : Prop :=
  ∀ n, P3726811178440266367.a n = (A189998 n : ℚ)

end A189998

/-! ## A189998.P11078837792658942339

`A116416(31*A000079(n))`
-/

namespace A189998.P11078837792658942339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (31 * A000079 n).toNat

end

end A189998.P11078837792658942339

namespace A189998

/-- `A116416(31*A000079(n))` -/
def P11078837792658942339.Spec : Prop :=
  ∀ n, P11078837792658942339.a n = A189998 n

end A189998

/-! ## A189998.P14427760430507311522

`A116416(lcm(31, A000079(n)))`
-/

namespace A189998.P14427760430507311522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (Int.lcm 31 (A000079 n))

end

end A189998.P14427760430507311522

namespace A189998

/-- `A116416(lcm(31, A000079(n)))` -/
def P14427760430507311522.Spec : Prop :=
  ∀ n, P14427760430507311522.a n = A189998 n

end A189998

/-! ## A189998.P178716655919480058

`A093411(A165677(n+1)/A169609(n))`
-/

namespace A189998.P178716655919480058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (SequenceMachineLib.roundAway ((A165677 (n + 1) : ℚ) / (A169609 n : ℚ))).toNat

end

end A189998.P178716655919480058

namespace A189998

/-- `A093411(A165677(n+1)/A169609(n))` -/
def P178716655919480058.Spec : Prop :=
  ∀ n, P178716655919480058.a n = A189998 n

end A189998

/-!
# A189999: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sinh(1), t=cosh(1).

The programs for A189999, the canonical program `A189999.P6052523394652625546` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189999 has offset 1).

The definition of A189999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189999.P6052523394652625546

`n+1+floor((n+1)*sinh(1))+floor((n+1)*cosh(1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189999

/-- `n+1+floor((n+1)*sinh(1))+floor((n+1)*cosh(1))` -/
def P6052523394652625546.Spec : Prop :=
  ∀ n, P6052523394652625546.a n = A189999 (n + 1)

theorem P6052523394652625546.correct : P6052523394652625546.Spec := by
  intro n
  simp only [A189999, Nat.add_sub_cancel]

end A189999

/-! ## A189999.P15090376584506339150

`record[A329508(n+1)]+lt[2, ∏{d}[n+1, -#]]+n`
-/

namespace A189999.P15090376584506339150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), (-(d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + n : ℤ)

end

end A189999.P15090376584506339150

namespace A189999

/-- `record[A329508(n+1)]+lt[2, ∏{d}[n+1, -#]]+n` -/
def P15090376584506339150.Spec : Prop :=
  ∀ n, P15090376584506339150.a n = A189999 (n + 1)

end A189999

/-! ## A189999.P13758617445443348835

`∑[A007862(A355732(n+1))+2]`
-/

namespace A189999.P13758617445443348835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A355732 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189999.P13758617445443348835

namespace A189999

/-- `∑[A007862(A355732(n+1))+2]` -/
def P13758617445443348835.Spec : Prop :=
  ∀ n, P13758617445443348835.a n = A189999 (n + 1)

end A189999

/-! ## A189999.P15677398365637969361

`∑[A360678(A046315(n+3))+1]`
-/

namespace A189999.P15677398365637969361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360678 (A046315 (n + 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189999.P15677398365637969361

namespace A189999

/-- `∑[A360678(A046315(n+3))+1]` -/
def P15677398365637969361.Spec : Prop :=
  ∀ n, P15677398365637969361.a n = A189999 (n + 1)

end A189999

/-! ## A189999.P4648215691530624791

`∑[A090739(∑[A090710(2*n+5)])]`
-/

namespace A189999.P4648215691530624791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090710 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090739 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189999.P4648215691530624791

namespace A189999

/-- `∑[A090739(∑[A090710(2*n+5)])]` -/
def P4648215691530624791.Spec : Prop :=
  ∀ n, P4648215691530624791.a n = A189999 (n + 1)

end A189999

