import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
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

/-!
# A297800: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1s.

The programs for A297800, there is no canonical definition to state claims against.
-/

/-! ## A297800.P12006725999146629563

`A297802(A052905(n+3))`
-/

namespace A297800.P12006725999146629563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A052905 (n + 3)).toNat

end

end A297800.P12006725999146629563

/-! ## A297800.P17912418374301946551

`A297802(A056119(n)+16)`
-/

namespace A297800.P17912418374301946551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A056119 n + 16).toNat

end

end A297800.P17912418374301946551

/-! ## A297800.P3653223802079038917

`A297802(eq[3, A219347(n)])`
-/

namespace A297800.P3653223802079038917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297800.P3653223802079038917

/-! ## A297800.P12035560290177463022

`A297802(eq[5, A193592(n)])`
-/

namespace A297800.P12035560290177463022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297800.P12035560290177463022

/-! ## A297800.P1122156975818437222

`A297802(eq[6, A200370(n+1)])`
-/

namespace A297800.P1122156975818437222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297800.P1122156975818437222

/-!
# A297801: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1s.

The programs for A297801, there is no canonical definition to state claims against.
-/

/-! ## A297801.P6141000105102322445

`A297802(A055999(n+4))`
-/

namespace A297801.P6141000105102322445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A055999 (n + 4)).toNat

end

end A297801.P6141000105102322445

/-! ## A297801.P6783851929215430296

`A297802(eq[4, A219347(n)])`
-/

namespace A297801.P6783851929215430296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297801.P6783851929215430296

/-! ## A297801.P8101661332188033338

`A297802(eq[6, A193592(n)])`
-/

namespace A297801.P8101661332188033338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297801.P8101661332188033338

/-! ## A297801.P6928816547433957936

`A297802(eq[7, A152157(n)])`
-/

namespace A297801.P6928816547433957936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297801.P6928816547433957936

/-! ## A297801.P12042693222518139813

`A297802(eq[7, A200370(n+1)])`
-/

namespace A297801.P12042693222518139813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297801.P12042693222518139813

/-!
# A297802: T(n,k) = Number of n X k 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1's.

The programs for A297802, there is no canonical definition to state claims against.
-/

/-! ## A297802.P11585884481900589595

`A297544(n+1)+A033886(A059922(n))`
-/

namespace A297802.P11585884481900589595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (n + 1) + A033886 (A059922 n).toNat

end

end A297802.P11585884481900589595

/-! ## A297802.P2315263311472218742

`A297544(n+1)+A051516(A157630(n))`
-/

namespace A297802.P2315263311472218742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (n + 1) + A051516 (A157630 n).toNat

end

end A297802.P2315263311472218742

/-! ## A297802.P4291405033070849215

`A297544(n+1)+A170957(A113413(n))`
-/

namespace A297802.P4291405033070849215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (n + 1) + A170957 (A113413 n).toNat

end

end A297802.P4291405033070849215

/-! ## A297802.P10868815348490018993

`A297544(n+1)+A174875(A168288(n))`
-/

namespace A297802.P10868815348490018993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (n + 1) + A174875 (A168288 n).toNat

end

end A297802.P10868815348490018993

/-! ## A297802.P5412099506899172555

`A297544(n+1)+A212619(A363267(n+1))`
-/

namespace A297802.P5412099506899172555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297544 (n + 1) + A212619 (A363267 (n + 1)).toNat

end

end A297802.P5412099506899172555

/-!
# A297803: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1s.

The programs for A297803, there is no canonical definition to state claims against.
-/

/-! ## A297803.P12370992345580349397

`A297802(∑[n+2]+4)`
-/

namespace A297803.P12370992345580349397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297803.P12370992345580349397

/-! ## A297803.P6334175529711118872

`record[A297802(A128373(n+2)+2)]`
-/

namespace A297803.P6334175529711118872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A128373 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297803.P6334175529711118872

/-! ## A297803.P16899684226715860467

`record[gcd(A297802(n+1), A303913(n))]`
-/

namespace A297803.P16899684226715860467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297802 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297803.P16899684226715860467

/-! ## A297803.P7747796724684051744

`gcd(floor(acot(n)), A297802(A167614(n+1)))`
-/

namespace A297803.P7747796724684051744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A297802 (A167614 (n + 1)).toNat)

end

end A297803.P7747796724684051744

/-! ## A297803.P4185624997930895694

`A297802(A167614(n+1))+A137579(n)`
-/

namespace A297803.P4185624997930895694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A167614 (n + 1)).toNat + A137579 n

end

end A297803.P4185624997930895694

/-!
# A297804: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1s.

The programs for A297804, there is no canonical definition to state claims against.
-/

/-! ## A297804.P9727191000001232710

`A297802(A141214(n)+7)`
-/

namespace A297804.P9727191000001232710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A141214 n + 7).toNat

end

end A297804.P9727191000001232710

/-! ## A297804.P14532196044260531004

`A297802(A052905(n)+9)`
-/

namespace A297804.P14532196044260531004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A052905 n + 9).toNat

end

end A297804.P14532196044260531004

/-! ## A297804.P6749205904407265130

`A297802(A055999(n)+10)`
-/

namespace A297804.P6749205904407265130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A055999 n + 10).toNat

end

end A297804.P6749205904407265130

/-! ## A297804.P5116577982923130011

`A297802(A167614(n+2)+1)`
-/

namespace A297804.P5116577982923130011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A167614 (n + 2) + 1).toNat

end

end A297804.P5116577982923130011

/-! ## A297804.P10170438414655803575

`A297802(A166136(n+2)-2)`
-/

namespace A297804.P10170438414655803575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A166136 (n + 2) - 2).toNat

end

end A297804.P10170438414655803575

/-!
# A297805: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1s.

The programs for A297805, there is no canonical definition to state claims against.
-/

/-! ## A297805.P15649734932101459553

`A297802(A167499(n+3))`
-/

namespace A297805.P15649734932101459553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A167499 (n + 3)).toNat

end

end A297805.P15649734932101459553

/-! ## A297805.P14918224235471832002

`A297802(A077169(n+5))`
-/

namespace A297805.P14918224235471832002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A077169 (n + 5)).toNat

end

end A297805.P14918224235471832002

/-! ## A297805.P16029082431151951928

`A297802(A155212(n)+13)`
-/

namespace A297805.P16029082431151951928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A155212 n + 13).toNat

end

end A297805.P16029082431151951928

/-! ## A297805.P6828540967981318026

`A297802(A141214(n+1)+8)`
-/

namespace A297805.P6828540967981318026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A141214 (n + 1) + 8).toNat

end

end A297805.P6828540967981318026

/-! ## A297805.P2603384718832161167

`record[A297802(A077169(A008611(n)))]`
-/

namespace A297805.P2603384718832161167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A077169 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297805.P2603384718832161167

/-!
# A297806: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1s.

The programs for A297806, there is no canonical definition to state claims against.
-/

/-! ## A297806.P204649840183392875

`A297802(A166136(n+4))`
-/

namespace A297806.P204649840183392875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A166136 (n + 4)).toNat

end

end A297806.P204649840183392875

/-! ## A297806.P16133030977815603182

`A297802(eq[6, A256910(n)])`
-/

namespace A297806.P16133030977815603182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297806.P16133030977815603182

/-! ## A297806.P14458597501863164403

`A297802(A167499(n+4)+1)`
-/

namespace A297806.P14458597501863164403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A167499 (n + 4) + 1).toNat

end

end A297806.P14458597501863164403

/-! ## A297806.P5026607434490177223

`A297802(eq[6, A130270(n+1)])`
-/

namespace A297806.P5026607434490177223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297806.P5026607434490177223

/-! ## A297806.P8210742409272539731

`A297802(eq[7, A131818(n+1)])`
-/

namespace A297806.P8210742409272539731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297806.P8210742409272539731

/-!
# A297807: Number of 7 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1's.

The programs for A297807, there is no canonical definition to state claims against.
-/

/-! ## A297807.P17274203740694936004

`A297802(A056119(n)+28)`
-/

namespace A297807.P17274203740694936004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A056119 n + 28).toNat

end

end A297807.P17274203740694936004

/-! ## A297807.P18431967860557016580

`A297802(eq[11, A066657(n)])`
-/

namespace A297807.P18431967860557016580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297807.P18431967860557016580

/-! ## A297807.P17281049031745130732

`A297802(A055998(n+4)+10)`
-/

namespace A297807.P17281049031745130732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A055998 (n + 4) + 10).toNat

end

end A297807.P17281049031745130732

/-! ## A297807.P13481226100146114092

`A297802(eq[8, A131818(n+1)])`
-/

namespace A297807.P13481226100146114092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297807.P13481226100146114092

/-! ## A297807.P9325809519578068612

`A297802(eq[A144328(n+1), A186684(n+1)])`
-/

namespace A297807.P9325809519578068612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297807.P9325809519578068612

/-!
# A297808: Number of n X n 0..1 arrays with every element equal to 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297808, there is no canonical definition to state claims against.
-/

/-! ## A297808.P3028323273073325390

`A297814(∑[4*n]+1)`
-/

namespace A297808.P3028323273073325390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297808.P3028323273073325390

/-! ## A297808.P8872512729690365441

`and(-1, A297814(A001844(n)))`
-/

namespace A297808.P8872512729690365441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A297814 (A001844 n).toNat)

end

end A297808.P8872512729690365441

/-! ## A297808.P9997930438644086477

`A297814(A001844(n))+A061858(n)`
-/

namespace A297808.P9997930438644086477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (A001844 n).toNat + A061858 n

end

end A297808.P9997930438644086477

/-! ## A297808.P16606893664989219228

`A297814(A001844(n))%A126473(n)`
-/

namespace A297808.P16606893664989219228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297814 (A001844 n).toNat) (A126473 n)

end

end A297808.P16606893664989219228

/-! ## A297808.P16277094731676146127

`A007318(∑[n])*A297814(A001844(n))`
-/

namespace A297808.P16277094731676146127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A297814 (A001844 n).toNat

end

end A297808.P16277094731676146127

/-!
# A297809: Number of n X 2 0..1 arrays with every element equal to 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297809, the canonical program `A297809.P11596601963123447654` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297809 has offset 1).

The definition of A297809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297809.P16752440788683992254

`ogf((x+2x^2-2x^3)/(1-3x^2-2x^3+2x^4))`
-/

namespace A297809.P16752440788683992254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -2] [1, 0, -3, -2, 2] n

end

end A297809.P16752440788683992254

namespace A297809

/-- `ogf((x+2x^2-2x^3)/(1-3x^2-2x^3+2x^4))` -/
def P16752440788683992254.Spec : Prop :=
  ∀ n, P16752440788683992254.a n = A297809 (n + 1)

end A297809

/-! ## A297809.P11596601963123447654

`3*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297809

/-- `3*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P11596601963123447654.Spec : Prop :=
  ∀ n, P11596601963123447654.a n = A297809 (n + 1)

theorem P11596601963123447654.correct : P11596601963123447654.Spec := by
  intro n
  simp only [A297809, Nat.add_sub_cancel]

end A297809

/-! ## A297809.P465806399461459296

`A304257(n+3)-2^(n+2)`
-/

namespace A297809.P465806399461459296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304257 (n + 3) - (2 ^ (n + 2) : ℤ)

end

end A297809.P465806399461459296

namespace A297809

/-- `A304257(n+3)-2^(n+2)` -/
def P465806399461459296.Spec : Prop :=
  ∀ n, P465806399461459296.a n = A297809 (n + 1)

end A297809

/-! ## A297809.P5282499761403189572

`A304257(n+3)%A000079(n)`
-/

namespace A297809.P5282499761403189572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304257 (n + 3)) (A000079 n)

end

end A297809.P5282499761403189572

namespace A297809

/-- `A304257(n+3)%A000079(n)` -/
def P5282499761403189572.Spec : Prop :=
  ∀ n, P5282499761403189572.a n = A297809 (n + 1)

end A297809

/-! ## A297809.P7459865173120652986

`and(A000225(n), A304257(n+3))`
-/

namespace A297809.P7459865173120652986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A304257 (n + 3))

end

end A297809.P7459865173120652986

namespace A297809

/-- `and(A000225(n), A304257(n+3))` -/
def P7459865173120652986.Spec : Prop :=
  ∀ n, P7459865173120652986.a n = A297809 (n + 1)

end A297809

/-! ## A297809.P540047131147297418

`and(A126646(n), A304257(n+3))`
-/

namespace A297809.P540047131147297418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A304257 (n + 3))

end

end A297809.P540047131147297418

namespace A297809

/-- `and(A126646(n), A304257(n+3))` -/
def P540047131147297418.Spec : Prop :=
  ∀ n, P540047131147297418.a n = A297809 (n + 1)

end A297809

/-!
# A297810: Number of nX4 0..1 arrays with every element equal to 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297810, there is no canonical definition to state claims against.
-/

/-! ## A297810.P13814780074295804179

`A297814(∑[n+3]+7)`
-/

namespace A297810.P13814780074295804179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297810.P13814780074295804179

/-! ## A297810.P8955167586807377616

`record[A297814(A020705(∑[n]))]`
-/

namespace A297810.P8955167586807377616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (A020705 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297810.P8955167586807377616

/-! ## A297810.P8387437723890706590

`record[A297814(A145018(n+1))]`
-/

namespace A297810.P8387437723890706590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (A145018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297810.P8387437723890706590

/-! ## A297810.P7446893387562853056

`record[A297814(A000217(n)+4)]`
-/

namespace A297810.P7446893387562853056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (A000217 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297810.P7446893387562853056

/-! ## A297810.P17909774752517454905

`or(char[1], A297814(A167614(n+2)+1))`
-/

namespace A297810.P17909774752517454905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297814 (A167614 (n + 2) + 1).toNat)

end

end A297810.P17909774752517454905

/-!
# A297811: Number of nX5 0..1 arrays with every element equal to 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297811, there is no canonical definition to state claims against.
-/

/-! ## A297811.P6755752870058976514

`A297814(∑[n+6]+9-2*n)`
-/

namespace A297811.P6755752870058976514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (∑ j ∈ Finset.range (n + 1), f1 j + 9 - 2 * n)

end

end A297811.P6755752870058976514

/-! ## A297811.P1085375704246386675

`or(char[3], A297814(A000217(n+4)+5))`
-/

namespace A297811.P1085375704246386675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297814 (A000217 (n + 4) + 5).toNat)

end

end A297811.P1085375704246386675

/-! ## A297811.P12404105397376805001

`A297814(A167614(n+3)+2)%A109126(n)`
-/

namespace A297811.P12404105397376805001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297814 (A167614 (n + 3) + 2).toNat) (A109126 n)

end

end A297811.P12404105397376805001

/-! ## A297811.P1364365126542458471

`A007318(∑[n])*A297814(A000217(n+4)+5)`
-/

namespace A297811.P1364365126542458471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A297814 (A000217 (n + 4) + 5).toNat

end

end A297811.P1364365126542458471

/-! ## A297811.P4158786534311650826

`char[A007318(n)]*A297814(A000124(n+4)+4)`
-/

namespace A297811.P4158786534311650826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297814 (A000124 (n + 4) + 4).toNat

end

end A297811.P4158786534311650826

/-!
# A297812: Number of nX6 0..1 arrays with every element equal to 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297812, there is no canonical definition to state claims against.
-/

/-! ## A297812.P17952896442756829933

`A297814(∑[n+5]+16)`
-/

namespace A297812.P17952896442756829933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A297812.P17952896442756829933

/-! ## A297812.P14935603430565308313

`or(char[1], A297814(A000124(n+5)+5))`
-/

namespace A297812.P14935603430565308313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297814 (A000124 (n + 5) + 5).toNat)

end

end A297812.P14935603430565308313

/-! ## A297812.P15388633078867854241

`xor(1, xor(1, A297814(A046691(n+3)+10)))`
-/

namespace A297812.P15388633078867854241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A297814 (A046691 (n + 3) + 10).toNat))

end

end A297812.P15388633078867854241

/-! ## A297812.P15681244294391304145

`A007318(C(3, n))*A297814(A000124(n+5)+5)`
-/

namespace A297812.P15681244294391304145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A297814 (A000124 (n + 5) + 5).toNat

end

end A297812.P15681244294391304145

/-! ## A297812.P5760699841880975051

`A007318(C(n, 2))*A297814(A000217(n+5)+6)`
-/

namespace A297812.P5760699841880975051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A297814 (A000217 (n + 5) + 6).toNat

end

end A297812.P5760699841880975051

/-!
# A297813: Number of nX7 0..1 arrays with every element equal to 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297813, there is no canonical definition to state claims against.
-/

/-! ## A297813.P10276491815285010854

`A297814(A374008(n+1))`
-/

namespace A297813.P10276491815285010854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (A374008 (n + 1)).toNat

end

end A297813.P10276491815285010854

/-! ## A297813.P1172533512222531530

`A297814(A056119(n)+28)`
-/

namespace A297813.P1172533512222531530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (A056119 n + 28).toNat

end

end A297813.P1172533512222531530

/-! ## A297813.P14096028571618610843

`A297814(A133263(n+6)+5)`
-/

namespace A297813.P14096028571618610843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (A133263 (n + 6) + 5).toNat

end

end A297813.P14096028571618610843

/-! ## A297813.P11970253857761971777

`A297814(A000124(n+6)+6)`
-/

namespace A297813.P11970253857761971777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (A000124 (n + 6) + 6).toNat

end

end A297813.P11970253857761971777

/-! ## A297813.P12634345643722238342

`A297814(A000096(n+5)+8)`
-/

namespace A297813.P12634345643722238342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297814 (A000096 (n + 5) + 8).toNat

end

end A297813.P12634345643722238342

/-!
# A297814: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297814, there is no canonical definition to state claims against.
-/

/-! ## A297814.P12683361793121943490

`A298146(n+1)%A007097(A298139(n+1))`
-/

namespace A297814.P12683361793121943490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298146 (n + 1)) (A007097 (A298139 (n + 1)).toNat)

end

end A297814.P12683361793121943490

/-! ## A297814.P12645340588452573477

`A298177(n+1)%A298173(A298139(n+1))`
-/

namespace A297814.P12645340588452573477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298177 (n + 1)) (A298173 (A298139 (n + 1)).toNat)

end

end A297814.P12645340588452573477

/-! ## A297814.P13831012715787228774

`lcm(A011582(A304104(n+5)), A298146(n+1))`
-/

namespace A297814.P13831012715787228774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011582 (A304104 (n + 5)).toNat) (A298146 (n + 1))

end

end A297814.P13831012715787228774

/-! ## A297814.P10941746455146635222

`and(A099837(A316953(n+1)), A298146(n+1))`
-/

namespace A297814.P10941746455146635222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099837 (A316953 (n + 1)).toNat) (A298146 (n + 1))

end

end A297814.P10941746455146635222

/-! ## A297814.P10004637695177327298

`A249802(A250473(n+1))%2*A298146(n+1)`
-/

namespace A297814.P10004637695177327298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249802 (A250473 (n + 1)).toNat) 2 * A298146 (n + 1)

end

end A297814.P10004637695177327298

/-!
# A297816: Number of n X n 0..1 arrays with every element equal to 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297816, there is no canonical definition to state claims against.
-/

/-! ## A297816.P18156958814974982006

`A297823(∑[4*n]+1)`
-/

namespace A297816.P18156958814974982006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297816.P18156958814974982006

/-! ## A297816.P8063309379646510576

`record[A297823(Δ[A235355(n)])]`
-/

namespace A297816.P8063309379646510576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297816.P8063309379646510576

/-! ## A297816.P8341633709968576436

`record[A297823(A330613(n+1))]`
-/

namespace A297816.P8341633709968576436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297816.P8341633709968576436

/-! ## A297816.P8420168401400338830

`record[A003982(n)*A297823(n+1)]`
-/

namespace A297816.P8420168401400338830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297816.P8420168401400338830

/-! ## A297816.P2829904971198227193

`record[A203994(n+1)*A297823(n+1)]`
-/

namespace A297816.P2829904971198227193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A297823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297816.P2829904971198227193

/-!
# A297817: Number of nX2 0..1 arrays with every element equal to 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297817, the canonical program `A297817.P17287508125453786091` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297817 has offset 1).

The definition of A297817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297817.P17287508125453786091

`3*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-4*a(n-5)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=49, a(4)=166, a(5)=573`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297817

/-- `3*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-4*a(n-5)` -/
def P17287508125453786091.Spec : Prop :=
  ∀ n, P17287508125453786091.a n = A297817 (n + 1)

theorem P17287508125453786091.correct : P17287508125453786091.Spec := by
  intro n
  simp only [A297817, Nat.add_sub_cancel]

end A297817

/-! ## A297817.P12371979574670415945

`record[A297823(n+2)]`
-/

namespace A297817.P12371979574670415945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297817.P12371979574670415945

namespace A297817

/-- `record[A297823(n+2)]` -/
def P12371979574670415945.Spec : Prop :=
  ∀ n, P12371979574670415945.a n = A297817 (n + 1)

end A297817

/-! ## A297817.P14703326330869404450

`A297823(∑[n+1]+2)`
-/

namespace A297817.P14703326330869404450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297817.P14703326330869404450

namespace A297817

/-- `A297823(∑[n+1]+2)` -/
def P14703326330869404450.Spec : Prop :=
  ∀ n, P14703326330869404450.a n = A297817 (n + 1)

end A297817

/-! ## A297817.P10700480223356785433

`A297823(A133263(n+1))+char[29]`
-/

namespace A297817.P10700480223356785433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297817.P10700480223356785433

namespace A297817

/-- `A297823(A133263(n+1))+char[29]` -/
def P10700480223356785433.Spec : Prop :=
  ∀ n, P10700480223356785433.a n = A297817 (n + 1)

end A297817

/-! ## A297817.P1729337092189919795

`and(1, A000041(n))!*A297823(A133263(n+1))`
-/

namespace A297817.P1729337092189919795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000041 n)).toNat : ℤ) * A297823 (A133263 (n + 1)).toNat

end

end A297817.P1729337092189919795

namespace A297817

/-- `and(1, A000041(n))!*A297823(A133263(n+1))` -/
def P1729337092189919795.Spec : Prop :=
  ∀ n, P1729337092189919795.a n = A297817 (n + 1)

end A297817

/-!
# A297818: Number of nX3 0..1 arrays with every element equal to 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297818, there is no canonical definition to state claims against.
-/

/-! ## A297818.P15495011812837386485

`A297823(∑[n+2]+4)`
-/

namespace A297818.P15495011812837386485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297818.P15495011812837386485

/-! ## A297818.P5142728122365215256

`and(-1, A297823(A167614(n+1)))`
-/

namespace A297818.P5142728122365215256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A297823 (A167614 (n + 1)).toNat)

end

end A297818.P5142728122365215256

/-! ## A297818.P14010958450887259

`A297823(A167614(n+1))+A025439(n)`
-/

namespace A297818.P14010958450887259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A167614 (n + 1)).toNat + A025439 n

end

end A297818.P14010958450887259

/-! ## A297818.P8569339876435255841

`A297823(A167614(n+1))+A025444(n)`
-/

namespace A297818.P8569339876435255841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A167614 (n + 1)).toNat + A025444 n

end

end A297818.P8569339876435255841

/-! ## A297818.P8453397230306384045

`A063435(n)*A297823(A167614(n+1))`
-/

namespace A297818.P8453397230306384045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A297823 (A167614 (n + 1)).toNat

end

end A297818.P8453397230306384045

/-!
# A297819: Number of nX4 0..1 arrays with every element equal to 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297819, there is no canonical definition to state claims against.
-/

/-! ## A297819.P1639208372765501804

`A297823(∑[n+3]+7)`
-/

namespace A297819.P1639208372765501804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297819.P1639208372765501804

/-! ## A297819.P2245841756998940308

`or(char[1], A297823(A055999(n)+10))`
-/

namespace A297819.P2245841756998940308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297823 (A055999 n + 10).toNat)

end

end A297819.P2245841756998940308

/-! ## A297819.P8205524909726282706

`lcm(log2(1/2), A297823(A141214(n)+7))`
-/

namespace A297819.P8205524909726282706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A297823 (A141214 n + 7).toNat)

end

end A297819.P8205524909726282706

/-! ## A297819.P9372550609548762759

`or(char[1], A297823(A167614(n+2)+1))`
-/

namespace A297819.P9372550609548762759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297823 (A167614 (n + 2) + 1).toNat)

end

end A297819.P9372550609548762759

/-! ## A297819.P339923795204807917

`gcd(5, A000032(n))*A297823(A167614(n+2)+1)`
-/

namespace A297819.P339923795204807917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A000032 n) : ℤ) * A297823 (A167614 (n + 2) + 1).toNat

end

end A297819.P339923795204807917

/-!
# A297820: Number of nX5 0..1 arrays with every element equal to 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297820, there is no canonical definition to state claims against.
-/

/-! ## A297820.P17161278891621874196

`A297823(∑[n+6]+9-2*n)`
-/

namespace A297820.P17161278891621874196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (∑ j ∈ Finset.range (n + 1), f1 j + 9 - 2 * n)

end

end A297820.P17161278891621874196

/-! ## A297820.P4938041455087073414

`xor(1, xor(1, A297823(A167499(n+3))))`
-/

namespace A297820.P4938041455087073414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A297823 (A167499 (n + 3)).toNat))

end

end A297820.P4938041455087073414

/-! ## A297820.P13993088297703230117

`A297823(A167499(n+3))/A007318(∑[n])`
-/

namespace A297820.P13993088297703230117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297823 (A167499 (n + 3)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A297820.P13993088297703230117

/-! ## A297820.P15527285061841679432

`A297823(A167499(n+3))%A297821(n+1)`
-/

namespace A297820.P15527285061841679432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297823 (A167499 (n + 3)).toNat) (A297821 (n + 1))

end

end A297820.P15527285061841679432

/-! ## A297820.P5797122045251187266

`A007318(C(n, 2))*A297823(A167499(n+3))`
-/

namespace A297820.P5797122045251187266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A297823 (A167499 (n + 3)).toNat

end

end A297820.P5797122045251187266

/-!
# A297821: Number of nX6 0..1 arrays with every element equal to 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297821, there is no canonical definition to state claims against.
-/

/-! ## A297821.P8408452058177521199

`A297823(A056115(n)+21)`
-/

namespace A297821.P8408452058177521199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A056115 n + 21).toNat

end

end A297821.P8408452058177521199

/-! ## A297821.P10515620685106856540

`A297823(A167499(n+4)+1)`
-/

namespace A297821.P10515620685106856540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A167499 (n + 4) + 1).toNat

end

end A297821.P10515620685106856540

/-! ## A297821.P2490015119087346655

`A297823(A167614(n+4)+3)`
-/

namespace A297821.P2490015119087346655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A167614 (n + 4) + 3).toNat

end

end A297821.P2490015119087346655

/-! ## A297821.P4579111471444620942

`A297823(A000124(n+5)+5)`
-/

namespace A297821.P4579111471444620942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A000124 (n + 5) + 5).toNat

end

end A297821.P4579111471444620942

/-! ## A297821.P4715823131841740799

`A297823(A000096(n+4)+7)`
-/

namespace A297821.P4715823131841740799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A000096 (n + 4) + 7).toNat

end

end A297821.P4715823131841740799

/-!
# A297822: Number of nX7 0..1 arrays with every element equal to 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297822, there is no canonical definition to state claims against.
-/

/-! ## A297822.P687237475148409647

`A297823(A167487(n+5))`
-/

namespace A297822.P687237475148409647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A167487 (n + 5)).toNat

end

end A297822.P687237475148409647

/-! ## A297822.P9215231855021107601

`A297823(A056119(n)+28)`
-/

namespace A297822.P9215231855021107601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A056119 n + 28).toNat

end

end A297822.P9215231855021107601

/-! ## A297822.P12904678679516049932

`A297823(A167614(n+5)+4)`
-/

namespace A297822.P12904678679516049932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A167614 (n + 5) + 4).toNat

end

end A297822.P12904678679516049932

/-! ## A297822.P17946629866241572465

`A297823(A133263(n+6)+5)`
-/

namespace A297822.P17946629866241572465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A133263 (n + 6) + 5).toNat

end

end A297822.P17946629866241572465

/-! ## A297822.P17333982597634797335

`A297823(A000124(n+6)+6)`
-/

namespace A297822.P17333982597634797335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297823 (A000124 (n + 6) + 6).toNat

end

end A297822.P17333982597634797335

/-!
# A297823: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A297823, there is no canonical definition to state claims against.
-/

/-! ## A297823.P8288161663795103750

`A297993(abs(Δ[A113880(n)]))`
-/

namespace A297823.P8288161663795103750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297993 |f1 (n + 1) - f1 n|.toNat

end

end A297823.P8288161663795103750

/-! ## A297823.P12976104684745238169

`A298653(abs(Δ[A113880(n)]))`
-/

namespace A297823.P12976104684745238169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 |f1 (n + 1) - f1 n|.toNat

end

end A297823.P12976104684745238169

/-! ## A297823.P8342296591103380548

`A299607(abs(Δ[A113880(n)]))`
-/

namespace A297823.P8342296591103380548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 |f1 (n + 1) - f1 n|.toNat

end

end A297823.P8342296591103380548

/-! ## A297823.P10347099080105680929

`A297993(n+1)%A000759(n)`
-/

namespace A297823.P10347099080105680929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297993 (n + 1)) (A000759 n)

end

end A297823.P10347099080105680929

/-! ## A297823.P540007924921270144

`A298653(n+1)%A000759(n)`
-/

namespace A297823.P540007924921270144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298653 (n + 1)) (A000759 n)

end

end A297823.P540007924921270144

/-!
# A297826: Solution (a(n)) of the near-complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297826, there is no canonical definition to state claims against.
-/

/-! ## A297826.P7489375167705090842

`A297827(n)+a(n-1)` with `a(0)=1`
-/

namespace A297826.P7489375167705090842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A297827 n + a (n - 1)

end

end A297826.P7489375167705090842

/-! ## A297826.P12800148649423085417

`A297999(n)-A157928(n)`
-/

namespace A297826.P12800148649423085417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n - A157928 n

end

end A297826.P12800148649423085417

/-! ## A297826.P16800331260288245587

`∑[A297827(n+1)]+1-A297827(n+1)`
-/

namespace A297826.P16800331260288245587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A297827 (n + 1))

end

end A297826.P16800331260288245587

/-! ## A297826.P1967669630644803032

`A297830(n)+A297999(n)-A298000(n)`
-/

namespace A297826.P1967669630644803032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + (A297999 n - A298000 n)

end

end A297826.P1967669630644803032

/-! ## A297826.P3023314993887111527

`A297836(n)+A297999(n)-A298001(n)`
-/

namespace A297826.P3023314993887111527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + (A297999 n - A298001 n)

end

end A297826.P3023314993887111527

/-! ## A297826.P17762002729544497020

`A297837(n)+A297999(n)-A298002(n)`
-/

namespace A297826.P17762002729544497020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + (A297999 n - A298002 n)

end

end A297826.P17762002729544497020

/-!
# A297827: Difference sequence of A297826.

The programs for A297827, there is no canonical definition to state claims against.
-/

/-! ## A297827.P10918466122685256296

`Δ[A297826(n)]`
-/

namespace A297827.P10918466122685256296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297827.P10918466122685256296

/-! ## A297827.P6068028265417875888

`A297826(n+1)-A297826(n)`
-/

namespace A297827.P6068028265417875888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (n + 1) - A297826 n

end

end A297827.P6068028265417875888

/-! ## A297827.P10584055008957625491

`Δ[A297999(n)]-char[1]`
-/

namespace A297827.P10584055008957625491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297827.P10584055008957625491

/-! ## A297827.P1383935691081188257

`A159075(n)+Δ[A297999(n)]`
-/

namespace A297827.P1383935691081188257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + (f1 (n + 1) - f1 n)

end

end A297827.P1383935691081188257

/-! ## A297827.P2775634954524489144

`Δ[A297999(n)-A157928(n)]`
-/

namespace A297827.P2775634954524489144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297827.P2775634954524489144

/-! ## A297827.P16807876505932423487

`Δ[A297830(n)+A297999(n)-A298000(n)]`
-/

namespace A297827.P16807876505932423487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + (A297999 n - A298000 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297827.P16807876505932423487

/-!
# A297828: Difference sequence of A297997.

The programs for A297828, there is no canonical definition to state claims against.
-/

/-! ## A297828.P3763112595259947477

`Δ[A297997(n)]`
-/

namespace A297828.P3763112595259947477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297828.P3763112595259947477

/-! ## A297828.P1190183035604626848

`A297997(n+1)-A297997(n)`
-/

namespace A297828.P1190183035604626848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297997 (n + 1) - A297997 n

end

end A297828.P1190183035604626848

/-! ## A297828.P384651323843563180

`A297997(1-(n-2*n))%A297997(n)`
-/

namespace A297828.P384651323843563180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297997 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (A297997 n)

end

end A297828.P384651323843563180

/-! ## A297828.P14668835593149513370

`Δ[A298110(n+1)]`
-/

namespace A297828.P14668835593149513370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297828.P14668835593149513370

/-! ## A297828.P1538718537331091342

`abs(Δ[A298110(A005408(n)-n)])`
-/

namespace A297828.P1538718537331091342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A297828.P1538718537331091342

/-! ## A297828.P11373792585325674968

`A298110(n+2)-A298110(n+1)`
-/

namespace A297828.P11373792585325674968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 (n + 2) - A298110 (n + 1)

end

end A297828.P11373792585325674968

/-! ## A297828.P16698889553913065880

`Δ[record[A298110(A008611(n))]]`
-/

namespace A297828.P16698889553913065880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297828.P16698889553913065880

/-! ## A297828.P13210516350721834888

`Δ[record[A298110(A008624(n))]]`
-/

namespace A297828.P13210516350721834888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297828.P13210516350721834888

/-!
# A297829: Duplicates in A297826.

The programs for A297829, there is no canonical definition to state claims against.
-/

/-! ## A297829.P14706396706101271065

`A297826(eq[0, A297827(n+1)])`
-/

namespace A297829.P14706396706101271065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297829.P14706396706101271065

/-! ## A297829.P676028859455251819

`A297826(lt[A297827(n+1), 1])`
-/

namespace A297829.P676028859455251819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297827 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A297829.P676028859455251819

/-! ## A297829.P14917269328158115082

`∩[A297826(2*n+1), A297826(2*n)]`
-/

namespace A297829.P14917269328158115082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297829.P14917269328158115082

/-! ## A297829.P9992631430435385247

`A297826(eq[0, A297826(n+1)-A297826(n)])`
-/

namespace A297829.P9992631430435385247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (n + 1) - A297826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297829.P9992631430435385247

/-! ## A297829.P11561625122411789860

`A297826(lt[A297826(n+1)-A297826(n), 1])`
-/

namespace A297829.P11561625122411789860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (n + 1) - A297826 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A297829.P11561625122411789860

/-!
# A297830: Solution of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297830, there is no canonical definition to state claims against.
-/

/-! ## A297830.P17687221050566889104

`A298000(n)-A157928(n)`
-/

namespace A297830.P17687221050566889104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n - A157928 n

end

end A297830.P17687221050566889104

/-! ## A297830.P3607497075601083694

`A297826(n)+A298000(n)-A297999(n)`
-/

namespace A297830.P3607497075601083694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n + (A298000 n - A297999 n)

end

end A297830.P3607497075601083694

/-! ## A297830.P12047283279470342165

`A297836(n)+A298000(n)-A298001(n)`
-/

namespace A297830.P12047283279470342165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + (A298000 n - A298001 n)

end

end A297830.P12047283279470342165

/-! ## A297830.P15936265577771015673

`A297837(n)+A298000(n)-A298002(n)`
-/

namespace A297830.P15936265577771015673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + (A298000 n - A298002 n)

end

end A297830.P15936265577771015673

/-! ## A297830.P10572716276063296588

`A135481(A000010(n+1))+A298000(n)-1`
-/

namespace A297830.P10572716276063296588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A000010 (n + 1)).toNat + (A298000 n - 1)

end

end A297830.P10572716276063296588

/-! ## A297830.P13145094349504768497

`A298000(n)-A001222(A076396(A109613(n)))`
-/

namespace A297830.P13145094349504768497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n - A001222 (A076396 (A109613 n).toNat).toNat

end

end A297830.P13145094349504768497

/-!
# A297831: Solution of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n - 1, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297831, there is no canonical definition to state claims against.
-/

/-! ## A297831.P3931190742337537588

`eq[char[A298006(n)], A000007(n)]`
-/

namespace A297831.P3931190742337537588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298006 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297831.P3931190742337537588

/-! ## A297831.P8171933834393471325

`eq[char[A298006(n)], A000038(n)]`
-/

namespace A297831.P8171933834393471325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298006 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297831.P8171933834393471325

/-! ## A297831.P1738665161045841709

`eq[char[A298006(n)], A036987(2*n)]`
-/

namespace A297831.P1738665161045841709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298006 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297831.P1738665161045841709

/-! ## A297831.P6268258549542945993

`eq[A064538(n)%2, char[A298006(n)]]`
-/

namespace A297831.P6268258549542945993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064538 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298006 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A297831.P6268258549542945993

/-! ## A297831.P3306827621473144885

`eq[char[A298006(n)], A151933(n)]`
-/

namespace A297831.P3306827621473144885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298006 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297831.P3306827621473144885

/-!
# A297832: Solution of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n - 2, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297832, there is no canonical definition to state claims against.
-/

/-! ## A297832.P3144442069465384185

`eq[char[A298007(n)], A000007(n)]`
-/

namespace A297832.P3144442069465384185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298007 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297832.P3144442069465384185

/-! ## A297832.P2212216086136357851

`eq[char[A298007(n)], A000038(n)]`
-/

namespace A297832.P2212216086136357851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298007 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297832.P2212216086136357851

/-! ## A297832.P12919204503083713147

`eq[1, A057427(n)+char[A298007(n)]]`
-/

namespace A297832.P12919204503083713147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298007 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297832.P12919204503083713147

/-! ## A297832.P17265778736835627835

`eq[char[A298007(n)], A036987(2*n)]`
-/

namespace A297832.P17265778736835627835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298007 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297832.P17265778736835627835

/-! ## A297832.P10480647709656893803

`eq[char[A298007(n)], A151933(n)]`
-/

namespace A297832.P10480647709656893803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298007 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297832.P10480647709656893803

/-!
# A297833: Solution of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n - 3, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297833, there is no canonical definition to state claims against.
-/

/-! ## A297833.P7593247770380228899

`eq[char[A298108(n)], A000007(n)]`
-/

namespace A297833.P7593247770380228899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298108 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297833.P7593247770380228899

/-! ## A297833.P9716601628599227015

`eq[char[A298108(n)], A000038(n)]`
-/

namespace A297833.P9716601628599227015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298108 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297833.P9716601628599227015

/-! ## A297833.P12991955278724756332

`eq[char[A298108(n)], A178225(2*n)]`
-/

namespace A297833.P12991955278724756332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298108 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297833.P12991955278724756332

/-! ## A297833.P13379427709585136763

`eq[1, A178334(n)+char[A298108(n)]]`
-/

namespace A297833.P13379427709585136763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298108 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297833.P13379427709585136763

/-! ## A297833.P10589039806485478917

`eq[char[A298108(n)], A151933(n)]`
-/

namespace A297833.P10589039806485478917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298108 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297833.P10589039806485478917

/-!
# A297834: Solution of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n - 4, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297834, there is no canonical definition to state claims against.
-/

/-! ## A297834.P9803045293430565479

`eq[char[A298109(n)], A151933(n)]`
-/

namespace A297834.P9803045293430565479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298109 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A297834.P9803045293430565479

/-!
# A297836: Solution of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 3*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297836, there is no canonical definition to state claims against.
-/

/-! ## A297836.P17871681486314685726

`A298001(n)-A157928(n)`
-/

namespace A297836.P17871681486314685726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298001 n - A157928 n

end

end A297836.P17871681486314685726

/-! ## A297836.P4162068559059468948

`A298001(n)-A013281(C(2, n²))`
-/

namespace A297836.P4162068559059468948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298001 n - A013281 (Nat.choose 2 (n ^ 2))

end

end A297836.P4162068559059468948

/-! ## A297836.P16409018621740417585

`A297826(n)+A298001(n)-A297999(n)`
-/

namespace A297836.P16409018621740417585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n + (A298001 n - A297999 n)

end

end A297836.P16409018621740417585

/-! ## A297836.P9552176575405821099

`A297830(n)+A298001(n)-A298000(n)`
-/

namespace A297836.P9552176575405821099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + (A298001 n - A298000 n)

end

end A297836.P9552176575405821099

/-! ## A297836.P8510775663828631261

`A297837(n)+A298001(n)-A298002(n)`
-/

namespace A297836.P8510775663828631261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + (A298001 n - A298002 n)

end

end A297836.P8510775663828631261

/-!
# A297837: Solution of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 4*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A297837, there is no canonical definition to state claims against.
-/

/-! ## A297837.P11538905594862900065

`A298002(n)-A157928(n)`
-/

namespace A297837.P11538905594862900065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n - A157928 n

end

end A297837.P11538905594862900065

/-! ## A297837.P13049616714348000764

`A298002(n)-A307432(C(3, n²))`
-/

namespace A297837.P13049616714348000764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n - A307432 (Nat.choose 3 (n ^ 2))

end

end A297837.P13049616714348000764

/-! ## A297837.P13420323369368977647

`A298002(n)-A123707(C(n, n²)+1)`
-/

namespace A297837.P13420323369368977647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n - A123707 (Nat.choose n (n ^ 2) + 1)

end

end A297837.P13420323369368977647

/-! ## A297837.P10705263501030547077

`A297826(n)+A298002(n)-A297999(n)`
-/

namespace A297837.P10705263501030547077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 n + (A298002 n - A297999 n)

end

end A297837.P10705263501030547077

/-! ## A297837.P2492935269823863555

`A297830(n)+A298002(n)-A298000(n)`
-/

namespace A297837.P2492935269823863555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + (A298002 n - A298000 n)

end

end A297837.P2492935269823863555

/-! ## A297837.P15001101661235368864

`A297836(n)+A298002(n)-A298001(n)`
-/

namespace A297837.P15001101661235368864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + (A298002 n - A298001 n)

end

end A297837.P15001101661235368864

/-!
# A297838: Solution (a(n)) of the system of 3 complementary equations in Comments.

The programs for A297838, there is no canonical definition to state claims against.
-/

/-! ## A297838.P2920541110570033974

`A298418(n)-A298170(n)`
-/

namespace A297838.P2920541110570033974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298418 n - A298170 n

end

end A297838.P2920541110570033974

/-! ## A297838.P16266722192426032453

`A004526(A298418(n)-(n+1))`
-/

namespace A297838.P16266722192426032453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A298418 n - (n + 1 : ℤ)).toNat

end

end A297838.P16266722192426032453

/-! ## A297838.P10380893983527632059

`A123108(A298418(n)-(n+1))`
-/

namespace A297838.P10380893983527632059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A298418 n - (n + 1 : ℤ)).toNat

end

end A297838.P10380893983527632059

/-! ## A297838.P15514858698439858047

`A004526(A298418(n)-1-n)`
-/

namespace A297838.P15514858698439858047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A298418 n - 1 - (n : ℤ)).toNat

end

end A297838.P15514858698439858047

/-! ## A297838.P10754259457304625161

`A065033(A298418(n)-(n+2))`
-/

namespace A297838.P10754259457304625161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A298418 n - (n + 2 : ℤ)).toNat

end

end A297838.P10754259457304625161

/-! ## A297838.P6190282841376532315

`A065033(A298418(n)-n)-1`
-/

namespace A297838.P6190282841376532315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A298418 n - (n : ℤ)).toNat - 1

end

end A297838.P6190282841376532315

/-! ## A297838.P13037180450872572730

`A110654(A298418(n)-(n+2))`
-/

namespace A297838.P13037180450872572730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A298418 n - (n + 2 : ℤ)).toNat

end

end A297838.P13037180450872572730

/-! ## A297838.P15050630926320139366

`A110654(A298418(n)-n)-1`
-/

namespace A297838.P15050630926320139366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A298418 n - (n : ℤ)).toNat - 1

end

end A297838.P15050630926320139366

/-! ## A297838.P13433751594467590995

`A123108(A298418(n)-1-n)`
-/

namespace A297838.P13433751594467590995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A298418 n - 1 - (n : ℤ)).toNat

end

end A297838.P13433751594467590995

/-! ## A297838.P11347420443542388664

`A298418(n)-A008619(A298418(n)+n)`
-/

namespace A297838.P11347420443542388664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298418 n - A008619 (A298418 n + (n : ℤ)).toNat

end

end A297838.P11347420443542388664

/-! ## A297838.P9802101445064040994

`(A298418(n)%A298170(n))%A297469(n)`
-/

namespace A297838.P9802101445064040994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A298418 n) (A298170 n)) (A297469 n)

end

end A297838.P9802101445064040994

/-!
# A297841: a(n) = Sum_{d|n} max(d, n/d)^2.

The programs for A297841, the canonical program `A297841.P6793829861847375659` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297841 has offset 1).

The definition of A297841 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297792, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297841.P6793829861847375659

`2*A001157(n+1)-A297792(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A297841

/-- `2*A001157(n+1)-A297792(n+1)` -/
def P6793829861847375659.Spec : Prop :=
  ∀ n, P6793829861847375659.a n = A297841 (n + 1)

theorem P6793829861847375659.correct : P6793829861847375659.Spec := by
  intro n
  simp only [A297841, Nat.add_sub_cancel]

end A297841

/-! ## A297841.P402150611702922845

`∑{d}[n+1, #²+abs(n+1-#²)]`
-/

namespace A297841.P402150611702922845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) + |(n + 1 : ℤ) - (d ^ 2 : ℤ)|)

end

end A297841.P402150611702922845

namespace A297841

/-- `∑{d}[n+1, #²+abs(n+1-#²)]` -/
def P402150611702922845.Spec : Prop :=
  ∀ n, P402150611702922845.a n = A297841 (n + 1)

end A297841

/-! ## A297841.P1751003714177859739

`A297792(A020338(n+1))-A297792(n+1)`
-/

namespace A297841.P1751003714177859739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297792 (A020338 (n + 1)).toNat - A297792 (n + 1)

end

end A297841.P1751003714177859739

namespace A297841

/-- `A297792(A020338(n+1))-A297792(n+1)` -/
def P1751003714177859739.Spec : Prop :=
  ∀ n, P1751003714177859739.a n = A297841 (n + 1)

end A297841

/-! ## A297841.P13757961552977547721

`A004277(∑{d}[n+1, #²])-A297792(n+1)`
-/

namespace A297841.P13757961552977547721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ d ∈ Nat.divisors (f1 n), d ^ 2) - A297792 (n + 1)

end

end A297841.P13757961552977547721

namespace A297841

/-- `A004277(∑{d}[n+1, #²])-A297792(n+1)` -/
def P13757961552977547721.Spec : Prop :=
  ∀ n, P13757961552977547721.a n = A297841 (n + 1)

end A297841

/-! ## A297841.P16575460245532910264

`A004277(ceil(∑{d}[n+1, #^(4/2)]))-A297792(n+1)`
-/

namespace A297841.P16575460245532910264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌈∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌉.toNat - A297792 (n + 1)

end

end A297841.P16575460245532910264

namespace A297841

/-- `A004277(ceil(∑{d}[n+1, #^(4/2)]))-A297792(n+1)` -/
def P16575460245532910264.Spec : Prop :=
  ∀ n, P16575460245532910264.a n = A297841 (n + 1)

end A297841

/-! ## A297841.P4709639713035167851

`A004277(round(∑{d}[n+1, #^(4/2)]))-A297792(n+1)`
-/

namespace A297841.P4709639713035167851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ))).toNat - A297792 (n + 1)

end

end A297841.P4709639713035167851

namespace A297841

/-- `A004277(round(∑{d}[n+1, #^(4/2)]))-A297792(n+1)` -/
def P4709639713035167851.Spec : Prop :=
  ∀ n, P4709639713035167851.a n = A297841 (n + 1)

end A297841

/-! ## A297841.P13254462329252564403

`A004277(A001157(n+1))-A297792(n+1)`
-/

namespace A297841.P13254462329252564403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001157 (n + 1)).toNat - A297792 (n + 1)

end

end A297841.P13254462329252564403

namespace A297841

/-- `A004277(A001157(n+1))-A297792(n+1)` -/
def P13254462329252564403.Spec : Prop :=
  ∀ n, P13254462329252564403.a n = A297841 (n + 1)

end A297841

/-! ## A297841.P13899587886254765841

`A004277(A328259(n+1)/(n+1))-A297792(n+1)`
-/

namespace A297841.P13899587886254765841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A328259 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat - A297792 (n + 1)

end

end A297841.P13899587886254765841

namespace A297841

/-- `A004277(A328259(n+1)/(n+1))-A297792(n+1)` -/
def P13899587886254765841.Spec : Prop :=
  ∀ n, P13899587886254765841.a n = A297841 (n + 1)

end A297841

/-! ## A297841.P13097621480206074601

`A004277(A067558(n+1)+(n+1)²)-A297792(n+1)`
-/

namespace A297841.P13097621480206074601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A067558 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat - A297792 (n + 1)

end

end A297841.P13097621480206074601

namespace A297841

/-- `A004277(A067558(n+1)+(n+1)²)-A297792(n+1)` -/
def P13097621480206074601.Spec : Prop :=
  ∀ n, P13097621480206074601.a n = A297841 (n + 1)

end A297841

/-! ## A297841.P13124103756354610146

`A004277(A067692(n+1)-A119616(n+1))-A297792(n+1)`
-/

namespace A297841.P13124103756354610146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A067692 (n + 1) - A119616 (n + 1)).toNat - A297792 (n + 1)

end

end A297841.P13124103756354610146

namespace A297841

/-- `A004277(A067692(n+1)-A119616(n+1))-A297792(n+1)` -/
def P13124103756354610146.Spec : Prop :=
  ∀ n, P13124103756354610146.a n = A297841 (n + 1)

end A297841

/-!
# A297842: a(n) = Sum_{d|n} max(d, n/d)^3.

The programs for A297842, there is no canonical definition to state claims against.
-/

/-! ## A297842.P6582709483468570127

`2*A001158(n+1)-A297793(n+1)`
-/

namespace A297842.P6582709483468570127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001158 (n + 1) - A297793 (n + 1)

end

end A297842.P6582709483468570127

/-! ## A297842.P15582029377134273711

`∑{d}[n+1, #^3]-(A297793(n+1)-(A279290(n+1)+A005064(n+1)))`
-/

namespace A297842.P15582029377134273711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) - (A297793 (n + 1) - (A279290 (n + 1) + A005064 (n + 1)))

end

end A297842.P15582029377134273711

/-! ## A297842.P6984153744631575166

`∑{d}[n+1, #^3]-(A297793(n+1)-A051000(n+1)*A318935(n+1))`
-/

namespace A297842.P6984153744631575166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) - (A297793 (n + 1) - A051000 (n + 1) * A318935 (n + 1))

end

end A297842.P6984153744631575166

/-! ## A297842.P5012880981276674496

`2*A278403(n+1)-A001157(n+1)-(A297793(n+1)-∑{d}[n+1, #^3])`
-/

namespace A297842.P5012880981276674496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278403 (n + 1) - A001157 (n + 1) - (A297793 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ))

end

end A297842.P5012880981276674496

/-! ## A297842.P10696610853913224988

`A001158(n+1)-(A297793(n+1)-(A279290(n+1)+A005064(n+1)))`
-/

namespace A297842.P10696610853913224988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - (A297793 (n + 1) - (A279290 (n + 1) + A005064 (n + 1)))

end

end A297842.P10696610853913224988

/-! ## A297842.P3527106829972966718

`∑{d}[n+1, #^3]-(A297793(n+1)-A281372(n+1)/(n+1))`
-/

namespace A297842.P3527106829972966718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℚ) - ((A297793 (n + 1) : ℚ) - (A281372 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A297842.P3527106829972966718

/-! ## A297842.P11180008097861047531

`A001158(n+1)-(A297793(n+1)-A281372(n+1)/(n+1))`
-/

namespace A297842.P11180008097861047531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) - ((A297793 (n + 1) : ℚ) - (A281372 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A297842.P11180008097861047531

/-! ## A297842.P3785200590973871458

`2*A278403(n+1)-A001157(n+1)-(A297793(n+1)-A281372(n+1)/(n+1))`
-/

namespace A297842.P3785200590973871458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A278403 (n + 1) - A001157 (n + 1) : ℚ) - ((A297793 (n + 1) : ℚ) - (A281372 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A297842.P3785200590973871458

/-! ## A297842.P12790096495076266687

`A297793(A020338(n+1))-A297793(n+1)`
-/

namespace A297842.P12790096495076266687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297793 (A020338 (n + 1)).toNat - A297793 (n + 1)

end

end A297842.P12790096495076266687

/-!
# A297843: a(n) = Sum_{d|n} max(d, n/d)^4.

The programs for A297843, there is no canonical definition to state claims against.
-/

/-! ## A297843.P2441303228117165603

`2*A001159(n+1)-A297794(n+1)`
-/

namespace A297843.P2441303228117165603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001159 (n + 1) - A297794 (n + 1)

end

end A297843.P2441303228117165603

/-! ## A297843.P11164666102550657334

`A297794(A020338(n+1))-A297794(n+1)`
-/

namespace A297843.P11164666102550657334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297794 (A020338 (n + 1)).toNat - A297794 (n + 1)

end

end A297843.P11164666102550657334

/-! ## A297843.P1390681829954394878

`A297794(A033286(n+1))-A297794(n+1)`
-/

namespace A297843.P1390681829954394878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297794 (A033286 (n + 1)).toNat - A297794 (n + 1)

end

end A297843.P1390681829954394878

/-! ## A297843.P5755151537344026966

`A004277(A001159(n+1))-A297794(n+1)`
-/

namespace A297843.P5755151537344026966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001159 (n + 1)).toNat - A297794 (n + 1)

end

end A297843.P5755151537344026966

/-!
# A297844: a(n) = Sum_{d|n} max(d, n/d)^5.

The programs for A297844, there is no canonical definition to state claims against.
-/

/-! ## A297844.P9000712191117942257

`2*A001160(n+1)-A297795(n+1)`
-/

namespace A297844.P9000712191117942257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001160 (n + 1) - A297795 (n + 1)

end

end A297844.P9000712191117942257

/-! ## A297844.P2080218770672101681

`A297795(A020338(n+1))-A297795(n+1)`
-/

namespace A297844.P2080218770672101681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297795 (A020338 (n + 1)).toNat - A297795 (n + 1)

end

end A297844.P2080218770672101681

/-! ## A297844.P7782963096023144758

`A297795(A033286(n+1))-A297795(n+1)`
-/

namespace A297844.P7782963096023144758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297795 (A033286 (n + 1)).toNat - A297795 (n + 1)

end

end A297844.P7782963096023144758

/-!
# A297845: Encoded multiplication table for polynomials in one indeterminate with nonnegative integer coefficients. Symmetric square array T(n, k) read by antidiagonals, n > 0 and k > 0. See comment for details.

The programs for A297845, there is no canonical definition to state claims against.
-/

/-! ## A297845.P608167518639139137

`A306697(n+1)²/A329329(n+1)`
-/

namespace A297845.P608167518639139137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306697 (n + 1) ^ 2 : ℚ) / (A329329 (n + 1) : ℚ)

end

end A297845.P608167518639139137

/-! ## A297845.P5435281333527587371

`A053164(A004767(n))*A306697(n+1)`
-/

namespace A297845.P5435281333527587371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A004767 n).toNat * A306697 (n + 1)

end

end A297845.P5435281333527587371

/-! ## A297845.P12463668379283562433

`A028234(A256554(n))*A306697(n+1)`
-/

namespace A297845.P12463668379283562433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A256554 n).toNat * A306697 (n + 1)

end

end A297845.P12463668379283562433

/-! ## A297845.P3010085345934871647

`A287215(A004198(n))*A306697(n+1)`
-/

namespace A297845.P3010085345934871647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (A004198 n).toNat * A306697 (n + 1)

end

end A297845.P3010085345934871647

/-! ## A297845.P1054004487784592091

`A287215(A331902(n))*A306697(n+1)`
-/

namespace A297845.P1054004487784592091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (A331902 n).toNat * A306697 (n + 1)

end

end A297845.P1054004487784592091

/-! ## A297845.P8582028451051025887

`A287215(A341840(n))*A306697(n+1)`
-/

namespace A297845.P8582028451051025887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (A341840 n).toNat * A306697 (n + 1)

end

end A297845.P8582028451051025887

/-! ## A297845.P7994887011086672441

`A028234(A059895(n+1))*A306697(n+1)`
-/

namespace A297845.P7994887011086672441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A059895 (n + 1)).toNat * A306697 (n + 1)

end

end A297845.P7994887011086672441

/-! ## A297845.P5237923560352509690

`A093803(A003989(n+1))*A306697(n+1)`
-/

namespace A297845.P5237923560352509690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A003989 (n + 1)).toNat * A306697 (n + 1)

end

end A297845.P5237923560352509690

/-! ## A297845.P3027251988865218587

`lcm(A297473(A003989(n+1)), A329329(n+1))`
-/

namespace A297845.P3027251988865218587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A297473 (A003989 (n + 1)).toNat) (A329329 (n + 1))

end

end A297845.P3027251988865218587

/-! ## A297845.P13596446616622401158

`A069010(A059895(n+1)!)*A306697(n+1)`
-/

namespace A297845.P13596446616622401158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Nat.factorial (A059895 (n + 1)).toNat) * A306697 (n + 1)

end

end A297845.P13596446616622401158

/-!
# A297846: Primes p such that p is the largest member of a Wieferich tuple.

The programs for A297846, there is no canonical definition to state claims against.
-/

/-! ## A297846.P17611628787797408513

`record[A344282(n+1)-char[2]]`
-/

namespace A297846.P17611628787797408513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344282 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297846.P17611628787797408513

/-! ## A297846.P11649882197208433472

`record[A344282(n%3+1+n)]`
-/

namespace A297846.P11649882197208433472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344282 (n % 3 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297846.P11649882197208433472

/-! ## A297846.P4977761331588880264

`record[A344282(gcd(n, ∑[n]²)+1)]`
-/

namespace A297846.P4977761331588880264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344282 (Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297846.P4977761331588880264

/-! ## A297846.P6178845030959121693

`record[A344282(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A297846.P6178845030959121693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344282 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297846.P6178845030959121693

/-! ## A297846.P3983682265300394086

`record[A344282(A000174(n))]`
-/

namespace A297846.P3983682265300394086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344282 (A000174 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297846.P3983682265300394086

/-!
# A297847: Sexiness of p = prime(n): number of iterations of the function f(x) = x + 6 that leave p prime.

The programs for A297847, there is no canonical definition to state claims against.
-/

/-! ## A297847.P5315571864929957156

`10%A309606(A304908(n))`
-/

namespace A297847.P5315571864929957156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (A309606 (A304908 n).toNat)

end

end A297847.P5315571864929957156

/-!
# A297849: Composites c where another composite d < c exists such that c and d satisfy c^(d-1) == 1 (mod d^2) and d^(c-1) == 1 (mod c) or satisfy c^(d-1) == 1 (mod d) and d^(c-1) == 1 (mod c^2).

The programs for A297849, there is no canonical definition to state claims against.
-/

/-! ## A297849.P6129176526556086896

`∩[A173251(n+1), A216765(n+1)]`
-/

namespace A297849.P6129176526556086896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297849.P6129176526556086896

/-!
# A297851: Number of n X n 0..1 arrays with every element equal to 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297851, there is no canonical definition to state claims against.
-/

/-! ## A297851.P1934949823880123705

`A297858(∑[4*n]+1)`
-/

namespace A297851.P1934949823880123705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297851.P1934949823880123705

/-! ## A297851.P5142670743266118313

`and(-1, A297858(A001844(n)))`
-/

namespace A297851.P5142670743266118313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A297858 (A001844 n).toNat)

end

end A297851.P5142670743266118313

/-! ## A297851.P5107887611384418245

`A297858(A001844(n))%A134931(n)`
-/

namespace A297851.P5107887611384418245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297858 (A001844 n).toNat) (A134931 n)

end

end A297851.P5107887611384418245

/-! ## A297851.P5041966178372143467

`or(A010051(n+1), A297858(A001844(n)))`
-/

namespace A297851.P5041966178372143467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A297858 (A001844 n).toNat)

end

end A297851.P5041966178372143467

/-! ## A297851.P13440323083874322671

`A007318(C(2, n))*A297858(A001844(n))`
-/

namespace A297851.P13440323083874322671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A297858 (A001844 n).toNat

end

end A297851.P13440323083874322671

/-!
# A297852: Number of n X 2 0..1 arrays with every element equal to 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297852, there is no canonical definition to state claims against.
-/

/-! ## A297852.P12146333813393314194

`A297858(∑[n+1]+2)`
-/

namespace A297852.P12146333813393314194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297852.P12146333813393314194

/-! ## A297852.P16199348171362839251

`record[A297858(A298296(n))]`
-/

namespace A297852.P16199348171362839251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A298296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297852.P16199348171362839251

/-! ## A297852.P10979372494476487560

`record[A297858(comp[A297870(n+1)])]`
-/

namespace A297852.P10979372494476487560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297852.P10979372494476487560

/-! ## A297852.P13699066597184089329

`record[A297858(A254052(n+1)+1)]`
-/

namespace A297852.P13699066597184089329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A254052 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297852.P13699066597184089329

/-! ## A297852.P12557905693308176056

`record[A297858(A008795(n+1)+2)]`
-/

namespace A297852.P12557905693308176056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A008795 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297852.P12557905693308176056

/-!
# A297853: Number of n X 3 0..1 arrays with every element equal to 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297853, the canonical program `A297853.P6486815569479796070` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297853 has offset 1).

The definition of A297853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297853.P6486815569479796070

`2*a(n-1)-a(n-4)-a(n-5)-a(n-6)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=7, a(2)=15, a(3)=19, a(4)=21, a(5)=33, a(6)=53, a(7)=77, a(8)=111`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297853

/-- `2*a(n-1)-a(n-4)-a(n-5)-a(n-6)+a(n-7)+a(n-8)` -/
def P6486815569479796070.Spec : Prop :=
  ∀ n, P6486815569479796070.a n = A297853 (n + 1)

theorem P6486815569479796070.correct : P6486815569479796070.Spec := by
  intro n
  simp only [A297853, Nat.add_sub_cancel]

end A297853

/-! ## A297853.P5094432207772601780

`A297858(∑[n+2]+4)`
-/

namespace A297853.P5094432207772601780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297853.P5094432207772601780

namespace A297853

/-- `A297858(∑[n+2]+4)` -/
def P5094432207772601780.Spec : Prop :=
  ∀ n, P5094432207772601780.a n = A297853 (n + 1)

end A297853

/-! ## A297853.P1093585308785954631

`or(1, A297858(A167614(n+1)))`
-/

namespace A297853.P1093585308785954631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297858 (A167614 (n + 1)).toNat)

end

end A297853.P1093585308785954631

namespace A297853

/-- `or(1, A297858(A167614(n+1)))` -/
def P1093585308785954631.Spec : Prop :=
  ∀ n, P1093585308785954631.a n = A297853 (n + 1)

end A297853

/-! ## A297853.P7211407401810149126

`A297858(A167614(n+1))%A000032(n+4)`
-/

namespace A297853.P7211407401810149126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297858 (A167614 (n + 1)).toNat) (A000032 (n + 4))

end

end A297853.P7211407401810149126

namespace A297853

/-- `A297858(A167614(n+1))%A000032(n+4)` -/
def P7211407401810149126.Spec : Prop :=
  ∀ n, P7211407401810149126.a n = A297853 (n + 1)

end A297853

/-! ## A297853.P13797871170626326124

`ceil(1/A000041(n))*A297858(A167614(n+1))`
-/

namespace A297853.P13797871170626326124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A297858 (A167614 (n + 1)).toNat

end

end A297853.P13797871170626326124

namespace A297853

/-- `ceil(1/A000041(n))*A297858(A167614(n+1))` -/
def P13797871170626326124.Spec : Prop :=
  ∀ n, P13797871170626326124.a n = A297853 (n + 1)

end A297853

/-!
# A297854: Number of nX4 0..1 arrays with every element equal to 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297854, there is no canonical definition to state claims against.
-/

/-! ## A297854.P13037296674420712313

`A297858(∑[n+3]+7)`
-/

namespace A297854.P13037296674420712313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297854.P13037296674420712313

/-!
# A297855: Number of nX5 0..1 arrays with every element equal to 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297855, there is no canonical definition to state claims against.
-/

/-! ## A297855.P3001956719935327369

`A297858(C(n+4, 2)+n+9)`
-/

namespace A297855.P3001956719935327369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (Nat.choose (n + 4) 2 + (n + 9))

end

end A297855.P3001956719935327369

/-! ## A297855.P8778274337172686225

`A297858(A374005(n+1))`
-/

namespace A297855.P8778274337172686225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A374005 (n + 1)).toNat

end

end A297855.P8778274337172686225

/-! ## A297855.P667555821438131889

`A297858(A155212(n)+13)`
-/

namespace A297855.P667555821438131889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A155212 n + 13).toNat

end

end A297855.P667555821438131889

/-! ## A297855.P8330739203629760597

`A297858(A056000(n)+15)`
-/

namespace A297855.P8330739203629760597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A056000 n + 15).toNat

end

end A297855.P8330739203629760597

/-! ## A297855.P14303531591327043539

`A297858(A167614(n+3)+2)`
-/

namespace A297855.P14303531591327043539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A167614 (n + 3) + 2).toNat

end

end A297855.P14303531591327043539

/-!
# A297856: Number of nX6 0..1 arrays with every element equal to 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297856, there is no canonical definition to state claims against.
-/

/-! ## A297856.P9758323350706100874

`A297858(A374007(n+1))`
-/

namespace A297856.P9758323350706100874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A374007 (n + 1)).toNat

end

end A297856.P9758323350706100874

/-! ## A297856.P7202941416223400364

`A297858(A167499(n+4)+1)`
-/

namespace A297856.P7202941416223400364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A167499 (n + 4) + 1).toNat

end

end A297856.P7202941416223400364

/-! ## A297856.P14345276212419881626

`A297858(A167614(n+4)+3)`
-/

namespace A297856.P14345276212419881626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A167614 (n + 4) + 3).toNat

end

end A297856.P14345276212419881626

/-! ## A297856.P5640359757728413000

`A297858(A000124(n+5)+5)`
-/

namespace A297856.P5640359757728413000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A000124 (n + 5) + 5).toNat

end

end A297856.P5640359757728413000

/-! ## A297856.P15646794575800409048

`A297858(A000096(n+4)+7)`
-/

namespace A297856.P15646794575800409048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A000096 (n + 4) + 7).toNat

end

end A297856.P15646794575800409048

/-!
# A297857: Number of nX7 0..1 arrays with every element equal to 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297857, there is no canonical definition to state claims against.
-/

/-! ## A297857.P11503401680030448445

`A297858(A374008(n+1))`
-/

namespace A297857.P11503401680030448445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A374008 (n + 1)).toNat

end

end A297857.P11503401680030448445

/-! ## A297857.P15537208682206528310

`A297858(A167487(n+5))`
-/

namespace A297857.P15537208682206528310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A167487 (n + 5)).toNat

end

end A297857.P15537208682206528310

/-! ## A297857.P18372231532666346873

`A297858(A056119(n)+28)`
-/

namespace A297857.P18372231532666346873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A056119 n + 28).toNat

end

end A297857.P18372231532666346873

/-! ## A297857.P10889892867387879569

`A297858(A167614(n+5)+4)`
-/

namespace A297857.P10889892867387879569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A167614 (n + 5) + 4).toNat

end

end A297857.P10889892867387879569

/-! ## A297857.P10513767978211126610

`A297858(A000124(n+6)+6)`
-/

namespace A297857.P10513767978211126610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297858 (A000124 (n + 6) + 6).toNat

end

end A297857.P10513767978211126610

/-!
# A297858: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297858, there is no canonical definition to state claims against.
-/

/-! ## A297858.P292606788178760976

`A298093(n+1)%A063055(n)`
-/

namespace A297858.P292606788178760976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298093 (n + 1)) (A063055 n)

end

end A297858.P292606788178760976

/-! ## A297858.P7268807535594467938

`A298093(n+1)/A349941(n+2)%2`
-/

namespace A297858.P7268807535594467938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298093 (n + 1) : ℚ) / (Int.tmod (A349941 (n + 2)) 2 : ℚ)

end

end A297858.P7268807535594467938

/-! ## A297858.P18330161541605021426

`A298093(n+1)+A185284(A007318(n))`
-/

namespace A297858.P18330161541605021426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (n + 1) + A185284 (A007318 n).toNat

end

end A297858.P18330161541605021426

/-! ## A297858.P14754151050930802993

`A298093(n+1)+A000035(A067726(n+1))`
-/

namespace A297858.P14754151050930802993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (n + 1) + A000035 (A067726 (n + 1)).toNat

end

end A297858.P14754151050930802993

/-! ## A297858.P18248045162322285625

`A298093(n+1)+A008683(A097226(n+1))`
-/

namespace A297858.P18248045162322285625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (n + 1) + A008683 (A097226 (n + 1)).toNat

end

end A297858.P18248045162322285625

/-!
# A297859: Number of n X n 0..1 arrays with every element equal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297859, there is no canonical definition to state claims against.
-/

/-! ## A297859.P17212799293242645950

`A297866(∑[4*n]+1)`
-/

namespace A297859.P17212799293242645950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297859.P17212799293242645950

/-! ## A297859.P12389654406045646432

`record[A003982(n)*A297866(n+1)]`
-/

namespace A297859.P12389654406045646432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297859.P12389654406045646432

/-! ## A297859.P13003277831799364155

`A297866(A001844(n))%A024342(n)`
-/

namespace A297859.P13003277831799364155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297866 (A001844 n).toNat) (A024342 n)

end

end A297859.P13003277831799364155

/-! ## A297859.P11457356220651300909

`A000108(C(2, n+2))*A297866(A001844(n))`
-/

namespace A297859.P11457356220651300909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A297866 (A001844 n).toNat

end

end A297859.P11457356220651300909

/-! ## A297859.P15419539274628933800

`gcd(11, 4*A007318(n))*A297866(A001844(n))`
-/

namespace A297859.P15419539274628933800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (4 * A007318 n) : ℤ) * A297866 (A001844 n).toNat

end

end A297859.P15419539274628933800

/-!
# A297860: Number of n X 2 0..1 arrays with every element equal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297860, the canonical program `A297860.P13650754848099452528` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297860 has offset 1).

The definition of A297860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297860.P11936039547542510771

`ogf((x+2x^2+2x^3)/(1-3x^2-4x^3-2x^4))`
-/

namespace A297860.P11936039547542510771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2] [1, 0, -3, -4, -2] n

end

end A297860.P11936039547542510771

namespace A297860

/-- `ogf((x+2x^2+2x^3)/(1-3x^2-4x^3-2x^4))` -/
def P11936039547542510771.Spec : Prop :=
  ∀ n, P11936039547542510771.a n = A297860 (n + 1)

end A297860

/-! ## A297860.P13650754848099452528

`3*a(n-2)+4*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297860

/-- `3*a(n-2)+4*a(n-3)+2*a(n-4)` -/
def P13650754848099452528.Spec : Prop :=
  ∀ n, (P13650754848099452528.a n : ℤ) = A297860 (n + 1)

theorem P13650754848099452528.correct : P13650754848099452528.Spec := by
  intro n
  simp only [A297860, Nat.add_sub_cancel]

end A297860

/-! ## A297860.P1312287612351696306

`A078006(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A297860.P1312287612351696306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A078006 n + a (n - 2)

end

end A297860.P1312287612351696306

namespace A297860

/-- `A078006(n)+a(n-2)` -/
def P1312287612351696306.Spec : Prop :=
  ∀ n, P1312287612351696306.a n = A297860 (n + 1)

end A297860

/-! ## A297860.P6368966042336002337

`abs(1-A077900(n))`
-/

namespace A297860.P6368966042336002337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A077900 n|

end

end A297860.P6368966042336002337

namespace A297860

/-- `abs(1-A077900(n))` -/
def P6368966042336002337.Spec : Prop :=
  ∀ n, P6368966042336002337.a n = A297860 (n + 1)

end A297860

/-! ## A297860.P2065273961936705660

`abs(1-∑[A077970(n)])`
-/

namespace A297860.P2065273961936705660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A297860.P2065273961936705660

namespace A297860

/-- `abs(1-∑[A077970(n)])` -/
def P2065273961936705660.Spec : Prop :=
  ∀ n, P2065273961936705660.a n = A297860 (n + 1)

end A297860

/-! ## A297860.P16116265995111902896

`lcm(A008836(n), A077970(n))-a(n-1)` with `a(0)=0`
-/

namespace A297860.P16116265995111902896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm (A008836 n) (A077970 n) : ℤ) - a (n - 1)

end

end A297860.P16116265995111902896

namespace A297860

/-- `lcm(A008836(n), A077970(n))-a(n-1)` -/
def P16116265995111902896.Spec : Prop :=
  ∀ n, P16116265995111902896.a n = A297860 (n + 1)

end A297860

/-! ## A297860.P12622444407074773361

`abs(A077970(n+1)%∑[A077970(n+1)])`
-/

namespace A297860.P12622444407074773361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A077970 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A297860.P12622444407074773361

namespace A297860

/-- `abs(A077970(n+1)%∑[A077970(n+1)])` -/
def P12622444407074773361.Spec : Prop :=
  ∀ n, P12622444407074773361.a n = A297860 (n + 1)

end A297860

/-! ## A297860.P5156342765344252246

`abs(1-∑[∑[A078040(n)]])`
-/

namespace A297860.P5156342765344252246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A297860.P5156342765344252246

namespace A297860

/-- `abs(1-∑[∑[A078040(n)]])` -/
def P5156342765344252246.Spec : Prop :=
  ∀ n, P5156342765344252246.a n = A297860 (n + 1)

end A297860

/-! ## A297860.P10808406177167340216

`abs(∑[A077970(n)%A077939(n)])`
-/

namespace A297860.P10808406177167340216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077970 n) (A077939 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A297860.P10808406177167340216

namespace A297860

/-- `abs(∑[A077970(n)%A077939(n)])` -/
def P10808406177167340216.Spec : Prop :=
  ∀ n, P10808406177167340216.a n = A297860 (n + 1)

end A297860

/-!
# A297861: Number of nX3 0..1 arrays with every element equal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297861, there is no canonical definition to state claims against.
-/

/-! ## A297861.P7115116542152038775

`A297866(∑[n+2]+4)`
-/

namespace A297861.P7115116542152038775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297861.P7115116542152038775

/-! ## A297861.P13860845170829593952

`lcm((-1)^n, A297866(A167614(n+1)))`
-/

namespace A297861.P13860845170829593952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A297866 (A167614 (n + 1)).toNat)

end

end A297861.P13860845170829593952

/-! ## A297861.P9964878987804197830

`A297866(A167499(n)+n)%(4^(n+1))`
-/

namespace A297861.P9964878987804197830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297866 (A167499 n + (n : ℤ)).toNat) (4 ^ (n + 1) : ℤ)

end

end A297861.P9964878987804197830

/-! ## A297861.P17801882900081293554

`A297866(A167614(n+1))+A034439(n+1)`
-/

namespace A297861.P17801882900081293554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A167614 (n + 1)).toNat + A034439 (n + 1)

end

end A297861.P17801882900081293554

/-! ## A297861.P15946683658859691669

`A000040(n+1)%2*A297866(A167499(n)+n)`
-/

namespace A297861.P15946683658859691669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A297866 (A167499 n + (n : ℤ)).toNat

end

end A297861.P15946683658859691669

/-!
# A297862: Number of nX4 0..1 arrays with every element equal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297862, there is no canonical definition to state claims against.
-/

/-! ## A297862.P3708080766093050248

`A297866(A052905(n)+9)`
-/

namespace A297862.P3708080766093050248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A052905 n + 9).toNat

end

end A297862.P3708080766093050248

/-! ## A297862.P15983493182379309731

`A297866(A055999(n)+10)`
-/

namespace A297862.P15983493182379309731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A055999 n + 10).toNat

end

end A297862.P15983493182379309731

/-! ## A297862.P10178631490302145457

`A297866(Δ[A008778(n)]+6)`
-/

namespace A297862.P10178631490302145457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (f1 (n + 1) - f1 n + 6).toNat

end

end A297862.P10178631490302145457

/-! ## A297862.P4061677829697876601

`A297866(A167614(n+2)+1)`
-/

namespace A297862.P4061677829697876601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A167614 (n + 2) + 1).toNat

end

end A297862.P4061677829697876601

/-! ## A297862.P1041050629741764219

`A297866(A000096(n+3)-(n-1))`
-/

namespace A297862.P1041050629741764219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A000096 (n + 3) - ((n : ℤ) - 1)).toNat

end

end A297862.P1041050629741764219

/-!
# A297863: Number of nX5 0..1 arrays with every element equal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297863, there is no canonical definition to state claims against.
-/

/-! ## A297863.P14505750527927592176

`A297866(A167499(n+3))`
-/

namespace A297863.P14505750527927592176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A167499 (n + 3)).toNat

end

end A297863.P14505750527927592176

/-! ## A297863.P13733315035873904772

`A297866(A155212(n)+13)`
-/

namespace A297863.P13733315035873904772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A155212 n + 13).toNat

end

end A297863.P13733315035873904772

/-! ## A297863.P16494147478806010136

`A297866(A000096(n+3)+6)`
-/

namespace A297863.P16494147478806010136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A000096 (n + 3) + 6).toNat

end

end A297863.P16494147478806010136

/-! ## A297863.P17589727113919576435

`A297866(A000217(n+4)+5)`
-/

namespace A297863.P17589727113919576435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A000217 (n + 4) + 5).toNat

end

end A297863.P17589727113919576435

/-! ## A297863.P11221430916545745351

`A297866(A000124(n+5)+n-(2*n+1))`
-/

namespace A297863.P11221430916545745351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A000124 (n + 5) + (n : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A297863.P11221430916545745351

/-!
# A297864: Number of nX6 0..1 arrays with every element equal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297864, there is no canonical definition to state claims against.
-/

/-! ## A297864.P1587292658286321186

`A297866(A056115(n)+21)`
-/

namespace A297864.P1587292658286321186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A056115 n + 21).toNat

end

end A297864.P1587292658286321186

/-! ## A297864.P11112237001840211017

`A297866(A161680(n+6)+6)`
-/

namespace A297864.P11112237001840211017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A161680 (n + 6) + 6).toNat

end

end A297864.P11112237001840211017

/-! ## A297864.P7913901201363699028

`A297866(eq[7, A131818(n+1)])`
-/

namespace A297864.P7913901201363699028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297864.P7913901201363699028

/-! ## A297864.P416126934736289282

`A297866(A374007(n+1))`
-/

namespace A297864.P416126934736289282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A374007 (n + 1)).toNat

end

end A297864.P416126934736289282

/-! ## A297864.P16527954552626953809

`A297866(eq[3, A219347(n)])`
-/

namespace A297864.P16527954552626953809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297864.P16527954552626953809

/-!
# A297865: Number of nX7 0..1 arrays with every element equal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297865, there is no canonical definition to state claims against.
-/

/-! ## A297865.P2633561733112083050

`A297866(A056119(n)+28)`
-/

namespace A297865.P2633561733112083050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A056119 n + 28).toNat

end

end A297865.P2633561733112083050

/-! ## A297865.P13476260813843578203

`A297866(eq[11, A066657(n)])`
-/

namespace A297865.P13476260813843578203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297865.P13476260813843578203

/-! ## A297865.P6568497531760266067

`A297866(eq[8, A131818(n+1)])`
-/

namespace A297865.P6568497531760266067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297865.P6568497531760266067

/-! ## A297865.P5252962726747876349

`A297866(A374008(n+1))`
-/

namespace A297865.P5252962726747876349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (A374008 (n + 1)).toNat

end

end A297865.P5252962726747876349

/-! ## A297865.P18248455814484329080

`A297866(eq[4, A219347(n)])`
-/

namespace A297865.P18248455814484329080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297865.P18248455814484329080

/-!
# A297866: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297866, there is no canonical definition to state claims against.
-/

/-! ## A297866.P6190081042012146066

`A298133(n+1)-A355432(A217547(n+1))`
-/

namespace A297866.P6190081042012146066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (n + 1) - A355432 (A217547 (n + 1)).toNat

end

end A297866.P6190081042012146066

/-! ## A297866.P5890953765485735741

`A097449(A298133(n+1))`
-/

namespace A297866.P5890953765485735741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A298133 (n + 1)).toNat

end

end A297866.P5890953765485735741

/-! ## A297866.P1774935911119503660

`A298133(A281873(n+1))`
-/

namespace A297866.P1774935911119503660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (A281873 (n + 1)).toNat

end

end A297866.P1774935911119503660

/-! ## A297866.P5104219685557555753

`A000196(A298133(n+1)²)`
-/

namespace A297866.P5104219685557555753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A298133 (n + 1) ^ 2).toNat

end

end A297866.P5104219685557555753

/-! ## A297866.P11732179190276947374

`A130696(A298133(n+1)+1)`
-/

namespace A297866.P11732179190276947374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A298133 (n + 1) + 1).toNat

end

end A297866.P11732179190276947374

/-!
# A297868: Prime powers p^e with odd exponent e such that rho(p^(e+1)) is prime, where rho is A206369.

The programs for A297868, there is no canonical definition to state claims against.
-/

/-! ## A297868.P10170504546078002439

`A304291(A256389(n+1)^A262619(n+1))`
-/

namespace A297868.P10170504546078002439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304291 (SequenceMachineLib.roundAway ((A256389 (n + 1) : ℚ) ^ (A262619 (n + 1) : ℤ))).toNat

end

end A297868.P10170504546078002439

/-! ## A297868.P17435657553549821782

`A056824(lt[A104192(n+1), A291317(3*(n+1))])`
-/

namespace A297868.P17435657553549821782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291317 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A297868.P17435657553549821782

/-! ## A297868.P11487066620095340282

`A056824(A003586(n+1)^A241601(n))`
-/

namespace A297868.P11487066620095340282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (SequenceMachineLib.roundAway ((A003586 (n + 1) : ℚ) ^ (A241601 n : ℤ))).toNat

end

end A297868.P11487066620095340282

/-!
# A297869: Number of n X n 0..1 arrays with every element equal to 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297869, there is no canonical definition to state claims against.
-/

/-! ## A297869.P16485033952230436

`A297876(∑[4*n]+1)`
-/

namespace A297869.P16485033952230436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297869.P16485033952230436

/-! ## A297869.P4620999944224554165

`and(-1, A297876(A001844(n)))`
-/

namespace A297869.P4620999944224554165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A297876 (A001844 n).toNat)

end

end A297869.P4620999944224554165

/-! ## A297869.P2571424276692375489

`A297876(A001844(n))+A185284(n)`
-/

namespace A297869.P2571424276692375489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A001844 n).toNat + A185284 n

end

end A297869.P2571424276692375489

/-! ## A297869.P2400381179927510356

`A208615(n)*A297876(A001844(n))`
-/

namespace A297869.P2400381179927510356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 n * A297876 (A001844 n).toNat

end

end A297869.P2400381179927510356

/-! ## A297869.P15069111396683803314

`A297876(A001844(n))%A097310(n)`
-/

namespace A297869.P15069111396683803314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297876 (A001844 n).toNat) (A097310 n)

end

end A297869.P15069111396683803314

/-!
# A297870: Number of nX2 0..1 arrays with every element equal to 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297870, the canonical program `A297870.P7382743245505233311` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297870 has offset 1).

The definition of A297870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297870.P6831416623296701942

`ogf((x+2x^2-4x^3)/(1-x-3x^2+4x^4))`
-/

namespace A297870.P6831416623296701942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -4] [1, -1, -3, 0, 4] n

end

end A297870.P6831416623296701942

namespace A297870

/-- `ogf((x+2x^2-4x^3)/(1-x-3x^2+4x^4))` -/
def P6831416623296701942.Spec : Prop :=
  ∀ n, P6831416623296701942.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P7382743245505233311

`a(n-1)+3*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297870

/-- `a(n-1)+3*a(n-2)-4*a(n-4)` -/
def P7382743245505233311.Spec : Prop :=
  ∀ n, P7382743245505233311.a n = A297870 (n + 1)

theorem P7382743245505233311.correct : P7382743245505233311.Spec := by
  intro n
  simp only [A297870, Nat.add_sub_cancel]

end A297870

/-! ## A297870.P8824719956012130299

`A302279(n+1)%(2^n)`
-/

namespace A297870.P8824719956012130299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302279 (n + 1)) (2 ^ n : ℤ)

end

end A297870.P8824719956012130299

namespace A297870

/-- `A302279(n+1)%(2^n)` -/
def P8824719956012130299.Spec : Prop :=
  ∀ n, P8824719956012130299.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P13934305260205842772

`A302279(n+1)-A155559(n)`
-/

namespace A297870.P13934305260205842772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302279 (n + 1) - A155559 n

end

end A297870.P13934305260205842772

namespace A297870

/-- `A302279(n+1)-A155559(n)` -/
def P13934305260205842772.Spec : Prop :=
  ∀ n, P13934305260205842772.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P1011175937647566900

`and(A000225(n), A302279(n+1))`
-/

namespace A297870.P1011175937647566900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A302279 (n + 1))

end

end A297870.P1011175937647566900

namespace A297870

/-- `and(A000225(n), A302279(n+1))` -/
def P1011175937647566900.Spec : Prop :=
  ∀ n, P1011175937647566900.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P6632344956521130948

`and(A255047(n), A302279(n+1))`
-/

namespace A297870.P6632344956521130948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255047 n) (A302279 (n + 1))

end

end A297870.P6632344956521130948

namespace A297870

/-- `and(A255047(n), A302279(n+1))` -/
def P6632344956521130948.Spec : Prop :=
  ∀ n, P6632344956521130948.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P11136368447267973564

`and(A302279(n+1), A303611(n+2))`
-/

namespace A297870.P11136368447267973564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A302279 (n + 1)) (A303611 (n + 2))

end

end A297870.P11136368447267973564

namespace A297870

/-- `and(A302279(n+1), A303611(n+2))` -/
def P11136368447267973564.Spec : Prop :=
  ∀ n, P11136368447267973564.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P12351571322194762527

`and(A052940(n), A302279(n+1))`
-/

namespace A297870.P12351571322194762527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052940 n) (A302279 (n + 1))

end

end A297870.P12351571322194762527

namespace A297870

/-- `and(A052940(n), A302279(n+1))` -/
def P12351571322194762527.Spec : Prop :=
  ∀ n, P12351571322194762527.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P9732097182731287604

`and(A140683(n), A302279(n+1))`
-/

namespace A297870.P9732097182731287604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140683 n) (A302279 (n + 1))

end

end A297870.P9732097182731287604

namespace A297870

/-- `and(A140683(n), A302279(n+1))` -/
def P9732097182731287604.Spec : Prop :=
  ∀ n, P9732097182731287604.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P10461937259679048033

`and(A153893(n), A302279(n+1))`
-/

namespace A297870.P10461937259679048033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 n) (A302279 (n + 1))

end

end A297870.P10461937259679048033

namespace A297870

/-- `and(A153893(n), A302279(n+1))` -/
def P10461937259679048033.Spec : Prop :=
  ∀ n, P10461937259679048033.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P15281652726261419915

`and(A086224(n), A302279(n+1))`
-/

namespace A297870.P15281652726261419915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A302279 (n + 1))

end

end A297870.P15281652726261419915

namespace A297870

/-- `and(A086224(n), A302279(n+1))` -/
def P15281652726261419915.Spec : Prop :=
  ∀ n, P15281652726261419915.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P2145363234179424837

`and(A153894(n), A302279(n+1))`
-/

namespace A297870.P2145363234179424837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153894 n) (A302279 (n + 1))

end

end A297870.P2145363234179424837

namespace A297870

/-- `and(A153894(n), A302279(n+1))` -/
def P2145363234179424837.Spec : Prop :=
  ∀ n, P2145363234179424837.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P11641963022798228504

`and(A086225(n), A302279(n+1))`
-/

namespace A297870.P11641963022798228504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A302279 (n + 1))

end

end A297870.P11641963022798228504

namespace A297870

/-- `and(A086225(n), A302279(n+1))` -/
def P11641963022798228504.Spec : Prop :=
  ∀ n, P11641963022798228504.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P1487878430343377243

`and(A196305(n), A302279(n+1))`
-/

namespace A297870.P1487878430343377243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196305 n) (A302279 (n + 1))

end

end A297870.P1487878430343377243

namespace A297870

/-- `and(A196305(n), A302279(n+1))` -/
def P1487878430343377243.Spec : Prop :=
  ∀ n, P1487878430343377243.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P18376296989802214655

`and(A198274(n), A302279(n+1))`
-/

namespace A297870.P18376296989802214655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198274 n) (A302279 (n + 1))

end

end A297870.P18376296989802214655

namespace A297870

/-- `and(A198274(n), A302279(n+1))` -/
def P18376296989802214655.Spec : Prop :=
  ∀ n, P18376296989802214655.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P7656952100749270823

`and(A198275(n), A302279(n+1))`
-/

namespace A297870.P7656952100749270823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198275 n) (A302279 (n + 1))

end

end A297870.P7656952100749270823

namespace A297870

/-- `and(A198275(n), A302279(n+1))` -/
def P7656952100749270823.Spec : Prop :=
  ∀ n, P7656952100749270823.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P4899888759617669977

`and(A171389(n), A302279(n+1))`
-/

namespace A297870.P4899888759617669977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A302279 (n + 1))

end

end A297870.P4899888759617669977

namespace A297870

/-- `and(A171389(n), A302279(n+1))` -/
def P4899888759617669977.Spec : Prop :=
  ∀ n, P4899888759617669977.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P9195328483481465608

`and(A198276(n), A302279(n+1))`
-/

namespace A297870.P9195328483481465608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A302279 (n + 1))

end

end A297870.P9195328483481465608

namespace A297870

/-- `and(A198276(n), A302279(n+1))` -/
def P9195328483481465608.Spec : Prop :=
  ∀ n, P9195328483481465608.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P9538273396713926903

`and(A291557(n), A302279(n+1))`
-/

namespace A297870.P9538273396713926903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291557 n) (A302279 (n + 1))

end

end A297870.P9538273396713926903

namespace A297870

/-- `and(A291557(n), A302279(n+1))` -/
def P9538273396713926903.Spec : Prop :=
  ∀ n, P9538273396713926903.a n = A297870 (n + 1)

end A297870

/-! ## A297870.P1063068842649666441

`and(A171390(n+1), A302279(n+1))`
-/

namespace A297870.P1063068842649666441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171390 (n + 1)) (A302279 (n + 1))

end

end A297870.P1063068842649666441

namespace A297870

/-- `and(A171390(n+1), A302279(n+1))` -/
def P1063068842649666441.Spec : Prop :=
  ∀ n, P1063068842649666441.a n = A297870 (n + 1)

end A297870

/-!
# A297871: Number of nX3 0..1 arrays with every element equal to 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297871, there is no canonical definition to state claims against.
-/

/-! ## A297871.P5192377758856612555

`A297876(∑[n+2]+4)`
-/

namespace A297871.P5192377758856612555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297871.P5192377758856612555

/-! ## A297871.P9402793017959378602

`A298139(∑[n+2]+4)`
-/

namespace A297871.P9402793017959378602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297871.P9402793017959378602

/-! ## A297871.P8886401905281173603

`A297876(A167614(n+1))+char[20]`
-/

namespace A297871.P8886401905281173603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297871.P8886401905281173603

/-! ## A297871.P3009873633902284685

`A297876(A055998(n)+6)+char[19]`
-/

namespace A297871.P3009873633902284685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297871.P3009873633902284685

/-! ## A297871.P14866506274084103113

`A298139(A167614(n+1))+A185284(n)`
-/

namespace A297871.P14866506274084103113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (A167614 (n + 1)).toNat + A185284 n

end

end A297871.P14866506274084103113

/-!
# A297872: Number of nX4 0..1 arrays with every element equal to 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297872, there is no canonical definition to state claims against.
-/

/-! ## A297872.P192839389262597279

`A297876(∑[n+3]+7)`
-/

namespace A297872.P192839389262597279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297872.P192839389262597279

/-! ## A297872.P8209132855261589659

`record[A023531(n+3)*A297876(n+1)]`
-/

namespace A297872.P8209132855261589659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 3) * A297876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297872.P8209132855261589659

/-! ## A297872.P1794693916489110967

`record[A297876(A141214(floor(n/(xor(n, n+1)+1))))]`
-/

namespace A297872.P1794693916489110967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A141214 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297872.P1794693916489110967

/-! ## A297872.P8261683473427554836

`A297876(A027379(n+2))%A107953(n)`
-/

namespace A297872.P8261683473427554836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297876 (A027379 (n + 2)).toNat) (A107953 n)

end

end A297872.P8261683473427554836

/-! ## A297872.P10306176481459126961

`A297876(A055998(n+2))%A268493(n)`
-/

namespace A297872.P10306176481459126961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297876 (A055998 (n + 2)).toNat) (A268493 n)

end

end A297872.P10306176481459126961

/-!
# A297873: Number of nX5 0..1 arrays with every element equal to 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297873, there is no canonical definition to state claims against.
-/

/-! ## A297873.P101943813076967063

`A297876(∑[n+4]+11)`
-/

namespace A297873.P101943813076967063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A297873.P101943813076967063

/-! ## A297873.P13830459074150531544

`A297876(A000124(n+4)+4)+C(n, 30)`
-/

namespace A297873.P13830459074150531544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A000124 (n + 4) + 4).toNat + (Nat.choose n 30 : ℤ)

end

end A297873.P13830459074150531544

/-! ## A297873.P12240551792511035096

`A297876(A000124(n+4)+4)+A008683(4*(n+1))`
-/

namespace A297873.P12240551792511035096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A000124 (n + 4) + 4).toNat + A008683 (4 * (n + 1))

end

end A297873.P12240551792511035096

/-! ## A297873.P14259596182960078022

`A014963(4*n+2)*A297876(A000124(n+4)+4)`
-/

namespace A297873.P14259596182960078022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A297876 (A000124 (n + 4) + 4).toNat

end

end A297873.P14259596182960078022

/-! ## A297873.P6284418711873936069

`A000040(n+1)%2*A297876(A000124(n+4)+4)`
-/

namespace A297873.P6284418711873936069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A297876 (A000124 (n + 4) + 4).toNat

end

end A297873.P6284418711873936069

/-!
# A297874: Number of nX6 0..1 arrays with every element equal to 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297874, there is no canonical definition to state claims against.
-/

/-! ## A297874.P4073424928666060677

`A297876(C(n+7, 2)-n)`
-/

namespace A297874.P4073424928666060677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (Nat.choose (n + 7) 2 - n)

end

end A297874.P4073424928666060677

/-! ## A297874.P2170982909195754628

`A297876(A374007(n+1))`
-/

namespace A297874.P2170982909195754628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A374007 (n + 1)).toNat

end

end A297874.P2170982909195754628

/-! ## A297874.P12182419911051481932

`A297876(A166136(n+4))`
-/

namespace A297874.P12182419911051481932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A166136 (n + 4)).toNat

end

end A297874.P12182419911051481932

/-! ## A297874.P12184559938014960998

`A297876(A056115(n)+21)`
-/

namespace A297874.P12184559938014960998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A056115 n + 21).toNat

end

end A297874.P12184559938014960998

/-! ## A297874.P13429425871818275923

`A297876(A167499(n+4)+1)`
-/

namespace A297874.P13429425871818275923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A167499 (n + 4) + 1).toNat

end

end A297874.P13429425871818275923

/-!
# A297875: Number of n X 7 0..1 arrays with every element equal to 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297875, there is no canonical definition to state claims against.
-/

/-! ## A297875.P4969015990238199988

`A297876(A374008(n+1))`
-/

namespace A297875.P4969015990238199988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A374008 (n + 1)).toNat

end

end A297875.P4969015990238199988

/-! ## A297875.P6577708924802676641

`A297876(A056119(n)+28)`
-/

namespace A297875.P6577708924802676641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A056119 n + 28).toNat

end

end A297875.P6577708924802676641

/-! ## A297875.P815925216716201897

`A297876(eq[11, A066657(n)])`
-/

namespace A297875.P815925216716201897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297875.P815925216716201897

/-! ## A297875.P678847905372418255

`A297876(A000124(n+6)+6)`
-/

namespace A297875.P678847905372418255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A000124 (n + 6) + 6).toNat

end

end A297875.P678847905372418255

/-! ## A297875.P6161030487952603162

`A297876(A000217(n+6)+7)`
-/

namespace A297875.P6161030487952603162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (A000217 (n + 6) + 7).toNat

end

end A297875.P6161030487952603162

/-!
# A297876: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A297876, there is no canonical definition to state claims against.
-/

/-! ## A297876.P11573167214638004634

`A072088(A298139(n+1))`
-/

namespace A297876.P11573167214638004634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A298139 (n + 1)).toNat

end

end A297876.P11573167214638004634

/-! ## A297876.P14788459652838783190

`A298139(n+1)%∑[A186727(n)]`
-/

namespace A297876.P14788459652838783190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298139 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297876.P14788459652838783190

/-! ## A297876.P14400165609970691417

`and(A059960(n+1), A298139(n+1))`
-/

namespace A297876.P14400165609970691417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059960 (n + 1)) (A298139 (n + 1))

end

end A297876.P14400165609970691417

/-! ## A297876.P16974359312233566036

`and(A298139(n+1), A349820(n+1))`
-/

namespace A297876.P16974359312233566036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A298139 (n + 1)) (A349820 (n + 1))

end

end A297876.P16974359312233566036

/-! ## A297876.P14211478275601748564

`and(A163961(Δ[n²]), A298139(n+1))`
-/

namespace A297876.P14211478275601748564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163961 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A298139 (n + 1))

end

end A297876.P14211478275601748564

/-!
# A297878: 1/4 of the even edges of primitive Pythagorean triangles with legs (b=A081872, c=A081859), ordered by semiperimeters.

The programs for A297878, there is no canonical definition to state claims against.
-/

/-! ## A297878.P7690050294860916687

`A002265(A231100(n+1)^A251072(n))`
-/

namespace A297878.P7690050294860916687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A231100 (n + 1) : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A297878.P7690050294860916687

/-! ## A297878.P3209662702168571755

`A002265(C(A231100(n+1), A251072(n)))`
-/

namespace A297878.P3209662702168571755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Nat.choose (A231100 (n + 1)).toNat (A251072 n).toNat)

end

end A297878.P3209662702168571755

/-! ## A297878.P592934381842688272

`A231100(n+1)/A000005(A232170(n+1))`
-/

namespace A297878.P592934381842688272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231100 (n + 1) : ℚ) / (A000005 (A232170 (n + 1)).toNat : ℚ)

end

end A297878.P592934381842688272

/-! ## A297878.P13381432225432156298

`A231100(n+1)/A309500(A016027(n+1))`
-/

namespace A297878.P13381432225432156298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231100 (n + 1) : ℚ) / (A309500 (A016027 (n + 1)).toNat : ℚ)

end

end A297878.P13381432225432156298

/-! ## A297878.P16922183332102255066

`A231100(n+1)/A309500(A309500(n+1))`
-/

namespace A297878.P16922183332102255066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231100 (n + 1) : ℚ) / (A309500 (A309500 (n + 1)).toNat : ℚ)

end

end A297878.P16922183332102255066

/-!
# A297882: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297882, there is no canonical definition to state claims against.
-/

/-! ## A297882.P1913899774071430501

`A297889(∑[4*n]+1)`
-/

namespace A297882.P1913899774071430501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297882.P1913899774071430501

/-! ## A297882.P2798074640091746605

`A297889(A001844(n))+C(n, 64)`
-/

namespace A297882.P2798074640091746605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A001844 n).toNat + (Nat.choose n 64 : ℤ)

end

end A297882.P2798074640091746605

/-! ## A297882.P8972260637445655893

`A297889(A001844(n))+A025466(n)`
-/

namespace A297882.P8972260637445655893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A001844 n).toNat + A025466 n

end

end A297882.P8972260637445655893

/-! ## A297882.P13566725077482471803

`A297889(A001844(n))+A178798(n)`
-/

namespace A297882.P13566725077482471803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A001844 n).toNat + A178798 n

end

end A297882.P13566725077482471803

/-! ## A297882.P12583802969480147226

`A297889(A001844(n))%A002757(n)`
-/

namespace A297882.P12583802969480147226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297889 (A001844 n).toNat) (A002757 n)

end

end A297882.P12583802969480147226

/-!
# A297883: Number of n X 2 0..1 arrays with every element equal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297883, the canonical program `A297883.P5024304067695683050` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297883 has offset 1).

The definition of A297883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297883.P5024304067695683050

`A303963(n+1)+A155559(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A297883

/-- `A303963(n+1)+A155559(n)` -/
def P5024304067695683050.Spec : Prop :=
  ∀ n, P5024304067695683050.a n = A297883 (n + 1)

theorem P5024304067695683050.correct : P5024304067695683050.Spec := by
  intro n
  simp only [A297883, Nat.add_sub_cancel]

end A297883

/-! ## A297883.P18349232365432734628

`A303963(n+1)+A000079(n)%A168680(n)`
-/

namespace A297883.P18349232365432734628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303963 (n + 1) + Int.tmod (A000079 n) (A168680 n)

end

end A297883.P18349232365432734628

namespace A297883

/-- `A303963(n+1)+A000079(n)%A168680(n)` -/
def P18349232365432734628.Spec : Prop :=
  ∀ n, P18349232365432734628.a n = A297883 (n + 1)

end A297883

/-! ## A297883.P6510547922510253343

`A297889(∑[n+1]+2)`
-/

namespace A297883.P6510547922510253343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297883.P6510547922510253343

namespace A297883

/-- `A297889(∑[n+1]+2)` -/
def P6510547922510253343.Spec : Prop :=
  ∀ n, P6510547922510253343.a n = A297883 (n + 1)

end A297883

/-! ## A297883.P4007017589879815023

`A297889(A000096(n)+3)+val(2^n, 3)`
-/

namespace A297883.P4007017589879815023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A000096 n + 3).toNat + (SequenceMachineLib.valuation (2 ^ n) 3 : ℤ)

end

end A297883.P4007017589879815023

namespace A297883

/-- `A297889(A000096(n)+3)+val(2^n, 3)` -/
def P4007017589879815023.Spec : Prop :=
  ∀ n, P4007017589879815023.a n = A297883 (n + 1)

end A297883

/-! ## A297883.P10680637372490061244

`A014963(A044249(n+1))*A297889(A000096(n)+3)`
-/

namespace A297883.P10680637372490061244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A044249 (n + 1)).toNat * A297889 (A000096 n + 3).toNat

end

end A297883.P10680637372490061244

namespace A297883

/-- `A014963(A044249(n+1))*A297889(A000096(n)+3)` -/
def P10680637372490061244.Spec : Prop :=
  ∀ n, P10680637372490061244.a n = A297883 (n + 1)

end A297883

/-!
# A297884: Number of nX3 0..1 arrays with every element equal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297884, there is no canonical definition to state claims against.
-/

/-! ## A297884.P11479901414401585078

`A297889(∑[n+2]+4)`
-/

namespace A297884.P11479901414401585078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297884.P11479901414401585078

/-! ## A297884.P8804407325746663814

`A297889(A167614(n+1))%(21*2^n-15)`
-/

namespace A297884.P8804407325746663814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297889 (A167614 (n + 1)).toNat) ((21 * 2 ^ n : ℤ) - 15)

end

end A297884.P8804407325746663814

/-! ## A297884.P7418033850591025108

`lcm(A033999(n), A297889(A167614(n+1)))`
-/

namespace A297884.P7418033850591025108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297889 (A167614 (n + 1)).toNat)

end

end A297884.P7418033850591025108

/-! ## A297884.P388200124320409880

`A297889(A167614(n+1))+A000035(2*n)`
-/

namespace A297884.P388200124320409880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A297884.P388200124320409880

/-! ## A297884.P5388106818210585614

`A297889(A167614(n+1))+A010673(2*n)`
-/

namespace A297884.P5388106818210585614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A167614 (n + 1)).toNat + A010673 (2 * n)

end

end A297884.P5388106818210585614

/-!
# A297885: Number of nX4 0..1 arrays with every element equal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297885, there is no canonical definition to state claims against.
-/

/-! ## A297885.P1978156267784439573

`A297889(∑[n+3]+7)`
-/

namespace A297885.P1978156267784439573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297885.P1978156267784439573

/-! ## A297885.P433590119830420083

`A297889(A055999(n)+10)%(13*10^n)`
-/

namespace A297885.P433590119830420083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297889 (A055999 n + 10).toNat) (13 * 10 ^ n : ℤ)

end

end A297885.P433590119830420083

/-! ## A297885.P16737671911826703104

`or(char[1], A297889(A055998(n+2)))`
-/

namespace A297885.P16737671911826703104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297889 (A055998 (n + 2)).toNat)

end

end A297885.P16737671911826703104

/-! ## A297885.P3286093437164086818

`A007318(C(2, n))*A297889(A055998(n+2))`
-/

namespace A297885.P3286093437164086818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A297889 (A055998 (n + 2)).toNat

end

end A297885.P3286093437164086818

/-! ## A297885.P8706358697391182176

`(A007318(n)%2)!*A297889(A055998(n+2))`
-/

namespace A297885.P8706358697391182176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * A297889 (A055998 (n + 2)).toNat

end

end A297885.P8706358697391182176

/-!
# A297886: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297886, there is no canonical definition to state claims against.
-/

/-! ## A297886.P14708968592704970153

`A297889(A374005(n+1))`
-/

namespace A297886.P14708968592704970153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A374005 (n + 1)).toNat

end

end A297886.P14708968592704970153

/-! ## A297886.P2887557663334824001

`A297889(A167499(n+3))`
-/

namespace A297886.P2887557663334824001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A167499 (n + 3)).toNat

end

end A297886.P2887557663334824001

/-! ## A297886.P8161992989807291997

`A297889(A056000(n)+15)`
-/

namespace A297886.P8161992989807291997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A056000 n + 15).toNat

end

end A297886.P8161992989807291997

/-! ## A297886.P12516069831637810535

`A297889(A167614(n+3)+2)`
-/

namespace A297886.P12516069831637810535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A167614 (n + 3) + 2).toNat

end

end A297886.P12516069831637810535

/-! ## A297886.P10056700110568660792

`A297889(A145018(n+5)+1)`
-/

namespace A297886.P10056700110568660792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A145018 (n + 5) + 1).toNat

end

end A297886.P10056700110568660792

/-!
# A297887: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297887, there is no canonical definition to state claims against.
-/

/-! ## A297887.P1201583613398210303

`A297889(A374007(n+1))`
-/

namespace A297887.P1201583613398210303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A374007 (n + 1)).toNat

end

end A297887.P1201583613398210303

/-! ## A297887.P6158812666646372390

`A297889(A166136(n+4))`
-/

namespace A297887.P6158812666646372390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A166136 (n + 4)).toNat

end

end A297887.P6158812666646372390

/-! ## A297887.P16906621733713623187

`A297889(A000124(n+5)+5)`
-/

namespace A297887.P16906621733713623187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A000124 (n + 5) + 5).toNat

end

end A297887.P16906621733713623187

/-! ## A297887.P18398016131903507337

`A297889(A000217(n+5)+6)`
-/

namespace A297887.P18398016131903507337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A000217 (n + 5) + 6).toNat

end

end A297887.P18398016131903507337

/-! ## A297887.P4495881871397638575

`A297889(A046691(n+3)+10)`
-/

namespace A297887.P4495881871397638575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A046691 (n + 3) + 10).toNat

end

end A297887.P4495881871397638575

/-!
# A297888: Number of nX7 0..1 arrays with every element equal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297888, there is no canonical definition to state claims against.
-/

/-! ## A297888.P15809819701635912582

`A297889(A374008(n+1))`
-/

namespace A297888.P15809819701635912582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A374008 (n + 1)).toNat

end

end A297888.P15809819701635912582

/-! ## A297888.P13645851617795105434

`A297889(A167487(n+5))`
-/

namespace A297888.P13645851617795105434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A167487 (n + 5)).toNat

end

end A297888.P13645851617795105434

/-! ## A297888.P18277516596442594760

`A297889(A000124(n+6)+6)`
-/

namespace A297888.P18277516596442594760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A000124 (n + 6) + 6).toNat

end

end A297888.P18277516596442594760

/-! ## A297888.P1984030191536147867

`A297889(A000217(n+6)+7)`
-/

namespace A297888.P1984030191536147867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A000217 (n + 6) + 7).toNat

end

end A297888.P1984030191536147867

/-! ## A297888.P3003474666805303929

`A297889(A055998(n+4)+10)`
-/

namespace A297888.P3003474666805303929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (A055998 (n + 4) + 10).toNat

end

end A297888.P3003474666805303929

/-!
# A297889: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A297889, there is no canonical definition to state claims against.
-/

/-! ## A297889.P6375495857094223188

`A298494(n+1)-A025466(A118180(n))`
-/

namespace A297889.P6375495857094223188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (n + 1) - A025466 (A118180 n).toNat

end

end A297889.P6375495857094223188

/-! ## A297889.P2980941666141906044

`A298294(n+1)-A018843(A285548(n+1))`
-/

namespace A297889.P2980941666141906044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (n + 1) - A018843 (A285548 (n + 1)).toNat

end

end A297889.P2980941666141906044

/-! ## A297889.P16531728404343317933

`A299388(n+1)-A018843(A285548(n+1))`
-/

namespace A297889.P16531728404343317933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (n + 1) - A018843 (A285548 (n + 1)).toNat

end

end A297889.P16531728404343317933

/-! ## A297889.P244555463438083390

`A298294(∑[∑[A111332(n)]])`
-/

namespace A297889.P244555463438083390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297889.P244555463438083390

/-! ## A297889.P8669636896706501810

`A299388(∑[∑[A111332(n)]])`
-/

namespace A297889.P8669636896706501810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297889.P8669636896706501810

/-!
# A297891: Numbers that divide exactly two Euclid numbers.

The programs for A297891, there is no canonical definition to state claims against.
-/

/-! ## A297891.P9357181301980788629

`A001748(A279099(n+1))/3`
-/

namespace A297891.P9357181301980788629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A279099 (n + 1)).toNat : ℚ) / 3

end

end A297891.P9357181301980788629

/-! ## A297891.P2682605605373090310

`A000040(A279099(n+1))`
-/

namespace A297891.P2682605605373090310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A279099 (n + 1)).toNat

end

end A297891.P2682605605373090310

/-! ## A297891.P10503673361727193977

`A008578(A279099(n+1)+1)`
-/

namespace A297891.P10503673361727193977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A279099 (n + 1) + 1).toNat

end

end A297891.P10503673361727193977

/-! ## A297891.P14478739466125375694

`A065514(A279099(n+1)+1)`
-/

namespace A297891.P14478739466125375694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065514 (A279099 (n + 1) + 1).toNat

end

end A297891.P14478739466125375694

/-! ## A297891.P17665427885883795470

`A045319(A279099(n+1)-1)`
-/

namespace A297891.P17665427885883795470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A279099 (n + 1) - 1).toNat

end

end A297891.P17665427885883795470

/-! ## A297891.P10365018499613197675

`A045344(A279099(n+1)-1)`
-/

namespace A297891.P10365018499613197675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A279099 (n + 1) - 1).toNat

end

end A297891.P10365018499613197675

/-! ## A297891.P10401289130542386775

`A065091(A279099(n+1)-1)`
-/

namespace A297891.P10401289130542386775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A279099 (n + 1) - 1).toNat

end

end A297891.P10401289130542386775

/-! ## A297891.P12089855857227388953

`A158611(A279099(n+1)+2)`
-/

namespace A297891.P12089855857227388953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A279099 (n + 1) + 2).toNat

end

end A297891.P12089855857227388953

/-! ## A297891.P7502021427378196508

`∑{d}[A279099(n+1), A007444(#)]`
-/

namespace A297891.P7502021427378196508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A297891.P7502021427378196508

/-!
# A297892: Triangle read by rows. T(n,k) is the number of n X n diagonalizable matrices over GF(3) that have rank k, 0 <= k <= n, n >= 0.

The programs for A297892, there is no canonical definition to state claims against.
-/

/-! ## A297892.P15901832438966385927

`A080248(n)*A325248(A212267(n+1))`
-/

namespace A297892.P15901832438966385927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 n * A325248 (A212267 (n + 1)).toNat

end

end A297892.P15901832438966385927

/-!
# A297893: Numbers that divide exactly three Euclid numbers.

The programs for A297893, there is no canonical definition to state claims against.
-/

/-! ## A297893.P16990065687359365235

`A330310(A283928(n+1))`
-/

namespace A297893.P16990065687359365235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330310 (A283928 (n + 1)).toNat

end

end A297893.P16990065687359365235

/-!
# A297897: Triangular array read by row: T(m,n) = number of ways to obtain a single sphere by gluing the (labeled) sides of a (2m+1)-gon and a (2n+1)-gon, m >= n >= 0.

The programs for A297897, there is no canonical definition to state claims against.
-/

/-! ## A297897.P7796250156245799864

`A226949(A228684(n+2))`
-/

namespace A297897.P7796250156245799864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226949 (A228684 (n + 2)).toNat

end

end A297897.P7796250156245799864

/-!
# A297898: Triangle read by rows, T(n, k) = (-1)^(n-k)*binomial(n,k)*hypergeom([k - n, n + 1], k + 1, 2), for n >= 0 and 0 <= k <= n.

The programs for A297898, there is no canonical definition to state claims against.
-/

/-! ## A297898.P14659227230333458399

`A208341(A245300(A061579(n)))`
-/

namespace A297898.P14659227230333458399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A245300 (A061579 n).toNat).toNat

end

end A297898.P14659227230333458399

