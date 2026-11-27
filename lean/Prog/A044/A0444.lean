import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

/-!
# A044400: Numbers n such that string 6,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044400, there is no canonical definition to state claims against.
-/

/-! ## A044400.P16099241016378657531

`A110699(A044780(n+1))`
-/

namespace A044400.P16099241016378657531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044780 (n + 1)).toNat

end

end A044400.P16099241016378657531

/-!
# A044401: Numbers n such that string 6,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044401, there is no canonical definition to state claims against.
-/

/-! ## A044401.P9676803311720768146

`A257646(A044781(n+1))`
-/

namespace A044401.P9676803311720768146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044781 (n + 1)).toNat

end

end A044401.P9676803311720768146

/-! ## A044401.P15006473721591143508

`filter[A043257(n+1), A179775(#)]`
-/

namespace A044401.P15006473721591143508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A044401.P15006473721591143508

/-!
# A044402: Numbers n such that string 7,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044402, there is no canonical definition to state claims against.
-/

/-! ## A044402.P9540885420222736152

`∩[A043222(n+1), A311196(n)]`
-/

namespace A044402.P9540885420222736152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044402.P9540885420222736152

/-! ## A044402.P5026013698220628121

`∩[A043222(n+1), A311285(n)]`
-/

namespace A044402.P5026013698220628121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044402.P5026013698220628121

/-! ## A044402.P11177725815422785658

`record[A038608(A043222(1+n))]`
-/

namespace A044402.P11177725815422785658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A043222 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044402.P11177725815422785658

/-! ## A044402.P14911647769771402154

`filter[A043222(n+1), A059841(#)]`
-/

namespace A044402.P14911647769771402154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A044402.P14911647769771402154

/-! ## A044402.P11157761192647189205

`filter[A043222(n+1), A135528(#)]`
-/

namespace A044402.P11157761192647189205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A044402.P11157761192647189205

/-! ## A044402.P6015262086528564395

`filter[A043222(n+1), A179850(#)]`
-/

namespace A044402.P6015262086528564395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179850 (f1 j).toNat = 1) n)

end

end A044402.P6015262086528564395

/-! ## A044402.P6844381336317516694

`filter[A043222(n+1), A232990(#)]`
-/

namespace A044402.P6844381336317516694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044402.P6844381336317516694

/-! ## A044402.P6299891228639876387

`filter[A043222(n+1), A266591(#)]`
-/

namespace A044402.P6299891228639876387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A044402.P6299891228639876387

/-! ## A044402.P6805634905849480378

`filter[A043222(n+1), A267043(#)]`
-/

namespace A044402.P6805634905849480378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A044402.P6805634905849480378

/-! ## A044402.P1199814124758532955

`filter[A043222(n+1), A285383(#)]`
-/

namespace A044402.P1199814124758532955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285383 (f1 j).toNat = 1) n)

end

end A044402.P1199814124758532955

/-! ## A044402.P11097242967888198837

`filter[A043222(n+1), A285384(#)]`
-/

namespace A044402.P11097242967888198837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285384 (f1 j).toNat = 1) n)

end

end A044402.P11097242967888198837

/-!
# A044404: Numbers n such that string 7,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044404, there is no canonical definition to state claims against.
-/

/-! ## A044404.P9349859719140773549

`A113484(A044784(n+1))`
-/

namespace A044404.P9349859719140773549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044784 (n + 1)).toNat

end

end A044404.P9349859719140773549

/-!
# A044406: Numbers n such that string 7,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044406, there is no canonical definition to state claims against.
-/

/-! ## A044406.P1407405046991007509

`A110699(A044786(n+1))`
-/

namespace A044406.P1407405046991007509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044786 (n + 1)).toNat

end

end A044406.P1407405046991007509

/-!
# A044407: Numbers n such that string 7,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044407, there is no canonical definition to state claims against.
-/

/-! ## A044407.P9161188719297317564

`A113484(A044787(n+1))`
-/

namespace A044407.P9161188719297317564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044787 (n + 1)).toNat

end

end A044407.P9161188719297317564

/-!
# A044408: Numbers n such that string 7,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044408, there is no canonical definition to state claims against.
-/

/-! ## A044408.P5286421459385551051

`A110699(A044788(n+1))`
-/

namespace A044408.P5286421459385551051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044788 (n + 1)).toNat

end

end A044408.P5286421459385551051

/-!
# A044409: Numbers n such that string 7,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044409, there is no canonical definition to state claims against.
-/

/-! ## A044409.P2987597868440114612

`A043243(2*n+1)+A043219(A053501(n))`
-/

namespace A044409.P2987597868440114612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043243 (2 * n + 1) + A043219 (A053501 n).toNat

end

end A044409.P2987597868440114612

/-! ## A044409.P15098181228190933589

`A043243(n+1)+A043219(A053501(n)+n)`
-/

namespace A044409.P15098181228190933589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043243 (n + 1) + A043219 (A053501 n + (n : ℤ)).toNat

end

end A044409.P15098181228190933589

/-! ## A044409.P13861702804557605472

`A043243(n+1)+A043219(A078213(n+1))`
-/

namespace A044409.P13861702804557605472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043243 (n + 1) + A043219 (A078213 (n + 1)).toNat

end

end A044409.P13861702804557605472

/-! ## A044409.P6161887081999300498

`A007095(A044321(A032944(A032944(A032944(n+1)))))`
-/

namespace A044409.P6161887081999300498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A044321 (A032944 (A032944 (A032944 (n + 1)).toNat).toNat).toNat).toNat

end

end A044409.P6161887081999300498

/-!
# A044410: Numbers n such that string 7,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044410, there is no canonical definition to state claims against.
-/

/-! ## A044410.P17025415567313686091

`record[A175676(A044366(n+3))]`
-/

namespace A044410.P17025415567313686091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044366 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044410.P17025415567313686091

/-! ## A044410.P12256884821893179951

`A044411(n+1)-A283314(A139625(n+1))`
-/

namespace A044410.P12256884821893179951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - A283314 (A139625 (n + 1)).toNat

end

end A044410.P12256884821893179951

/-! ## A044410.P6766636175449179393

`A044411(n+1)-(n+2)^A055641(A325513(n))`
-/

namespace A044410.P6766636175449179393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044411 (n + 1) : ℚ) - (n + 2 : ℚ) ^ (A055641 (A325513 n).toNat : ℤ)

end

end A044410.P6766636175449179393

/-!
# A044412: Numbers n such that string 8,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044412, there is no canonical definition to state claims against.
-/

/-! ## A044412.P9642551457267474457

`filter[A043223(1+n), A198517(#)]`
-/

namespace A044412.P9642551457267474457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043223 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044412.P9642551457267474457

/-! ## A044412.P7533838194098430459

`∩[A043223(n+1), A297466(n)]`
-/

namespace A044412.P7533838194098430459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044412.P7533838194098430459

/-! ## A044412.P2497812982372552288

`∩[A277595(n+1), A297466(n)]`
-/

namespace A044412.P2497812982372552288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044412.P2497812982372552288

/-! ## A044412.P1781268805664809894

`A110699(A044792(n+1))`
-/

namespace A044412.P1781268805664809894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044792 (n + 1)).toNat

end

end A044412.P1781268805664809894

/-!
# A044413: Numbers n such that string 8,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044413, there is no canonical definition to state claims against.
-/

/-! ## A044413.P339580306060470310

`A110699(A044793(n+1))`
-/

namespace A044413.P339580306060470310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044793 (n + 1)).toNat

end

end A044413.P339580306060470310

/-!
# A044414: Numbers n such that string 8,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044414, there is no canonical definition to state claims against.
-/

/-! ## A044414.P1740707167305890315

`A113484(A044794(n+1))`
-/

namespace A044414.P1740707167305890315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044794 (n + 1)).toNat

end

end A044414.P1740707167305890315

/-!
# A044416: Numbers k such that string '84' occurs in the base 10 representation of k but not of k-1.

The programs for A044416, there is no canonical definition to state claims against.
-/

/-! ## A044416.P12631166133583431585

`A110699(A044796(n+1))`
-/

namespace A044416.P12631166133583431585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044796 (n + 1)).toNat

end

end A044416.P12631166133583431585

/-!
# A044417: Numbers n such that string 8,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044417, there is no canonical definition to state claims against.
-/

/-! ## A044417.P2199885932801826698

`A110699(A044797(n+1))`
-/

namespace A044417.P2199885932801826698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044797 (n + 1)).toNat

end

end A044417.P2199885932801826698

/-!
# A044418: Numbers n such that string 8,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044418, there is no canonical definition to state claims against.
-/

/-! ## A044418.P5690750661865436050

`A113484(A044798(n+1))`
-/

namespace A044418.P5690750661865436050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044798 (n + 1)).toNat

end

end A044418.P5690750661865436050

/-!
# A044419: Numbers n such that string 8,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044419, there is no canonical definition to state claims against.
-/

/-! ## A044419.P17740066412347785703

`A257646(A044799(n+1))`
-/

namespace A044419.P17740066412347785703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044799 (n + 1)).toNat

end

end A044419.P17740066412347785703

/-!
# A044420: Numbers n such that string 8,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044420, there is no canonical definition to state claims against.
-/

/-! ## A044420.P929850616914670232

`A044800(A032559(n+1))+1`
-/

namespace A044420.P929850616914670232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044800 (A032559 (n + 1)).toNat + 1

end

end A044420.P929850616914670232

/-! ## A044420.P123359572881428766

`A044800(A082217(n+1))+1`
-/

namespace A044420.P123359572881428766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044800 (A082217 (n + 1)).toNat + 1

end

end A044420.P123359572881428766

/-! ## A044420.P9372544860728364498

`A044800(n+1)+A001222(A187874(n))`
-/

namespace A044420.P9372544860728364498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044800 (n + 1) + A001222 (A187874 n).toNat

end

end A044420.P9372544860728364498

/-! ## A044420.P10845709271086479330

`A044800(n+1)+A010873(A354554(n))`
-/

namespace A044420.P10845709271086479330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044800 (n + 1) + A010873 (A354554 n).toNat

end

end A044420.P10845709271086479330

/-! ## A044420.P3118550226926500582

`A055881(A226657(n+1))+A044800(n+1)`
-/

namespace A044420.P3118550226926500582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A226657 (n + 1)).toNat + A044800 (n + 1)

end

end A044420.P3118550226926500582

/-!
# A044421: Numbers n such that string 8,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044421, there is no canonical definition to state claims against.
-/

/-! ## A044421.P565977295298641641

`A023465(A265948(n+2))`
-/

namespace A044421.P565977295298641641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023465 (A265948 (n + 2)).toNat

end

end A044421.P565977295298641641

/-!
# A044422: Numbers n such that string 9,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044422, there is no canonical definition to state claims against.
-/

/-! ## A044422.P9901033422594638465

`record[A153733(A043224(1+n))]`
-/

namespace A044422.P9901033422594638465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A043224 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044422.P9901033422594638465

/-! ## A044422.P15370364698852714705

`filter[A043224(n+1), A000034(#)]`
-/

namespace A044422.P15370364698852714705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000034 (f1 j).toNat = 1) n)

end

end A044422.P15370364698852714705

/-! ## A044422.P6708227628295188735

`filter[A043224(1+n), A059841(#)]`
-/

namespace A044422.P6708227628295188735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A044422.P6708227628295188735

/-! ## A044422.P282795836325294111

`filter[A043224(n+1), A135528(#)]`
-/

namespace A044422.P282795836325294111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A044422.P282795836325294111

/-! ## A044422.P17829987964728820800

`filter[A043224(n+1), A198517(#)]`
-/

namespace A044422.P17829987964728820800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044422.P17829987964728820800

/-! ## A044422.P539897148987620482

`filter[A043224(n+1), A232990(#)]`
-/

namespace A044422.P539897148987620482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044422.P539897148987620482

/-! ## A044422.P5694597477846272897

`filter[A043224(n+1), A266591(#)]`
-/

namespace A044422.P5694597477846272897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A044422.P5694597477846272897

/-! ## A044422.P1512631873384241457

`filter[A043224(n+1), A267043(#)]`
-/

namespace A044422.P1512631873384241457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A044422.P1512631873384241457

/-!
# A044424: Numbers n such that string 9,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044424, there is no canonical definition to state claims against.
-/

/-! ## A044424.P7328362362456023161

`A110699(A044804(n+1))`
-/

namespace A044424.P7328362362456023161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044804 (n + 1)).toNat

end

end A044424.P7328362362456023161

/-!
# A044425: Numbers n such that string 9,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044425, there is no canonical definition to state claims against.
-/

/-! ## A044425.P14444570470994506224

`A257646(A044805(n+1))`
-/

namespace A044425.P14444570470994506224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044805 (n + 1)).toNat

end

end A044425.P14444570470994506224

/-!
# A044426: Numbers n such that string 9,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044426, there is no canonical definition to state claims against.
-/

/-! ## A044426.P6681376174916299481

`A110699(A044806(n+1))`
-/

namespace A044426.P6681376174916299481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044806 (n + 1)).toNat

end

end A044426.P6681376174916299481

/-!
# A044427: Numbers n such that string 9,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044427, there is no canonical definition to state claims against.
-/

/-! ## A044427.P14085722033313889751

`A113484(A044807(n+1))`
-/

namespace A044427.P14085722033313889751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044807 (n + 1)).toNat

end

end A044427.P14085722033313889751

/-!
# A044428: Numbers n such that string 9,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044428, there is no canonical definition to state claims against.
-/

/-! ## A044428.P12580155350784032394

`A110699(A044808(n+1))`
-/

namespace A044428.P12580155350784032394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044808 (n + 1)).toNat

end

end A044428.P12580155350784032394

/-!
# A044429: Numbers n such that string 9,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044429, there is no canonical definition to state claims against.
-/

/-! ## A044429.P14406401822842938658

`A257646(A044809(n+1))`
-/

namespace A044429.P14406401822842938658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044809 (n + 1)).toNat

end

end A044429.P14406401822842938658

/-!
# A044430: Numbers n such that string 9,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044430, there is no canonical definition to state claims against.
-/

/-! ## A044430.P12038938122723789026

`A110699(A044810(n+1))`
-/

namespace A044430.P12038938122723789026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044810 (n + 1)).toNat

end

end A044430.P12038938122723789026

/-!
# A044431: Numbers n such that string 9,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044431, there is no canonical definition to state claims against.
-/

/-! ## A044431.P5850300928034791647

`A044332(1+n)-abs(A118762(n+1))`
-/

namespace A044431.P5850300928034791647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044332 (1 + n) - |A118762 (n + 1)|

end

end A044431.P5850300928034791647

/-! ## A044431.P1590224813807542847

`A158128(n+1)-(abs(A118762(n+1))+1)`
-/

namespace A044431.P1590224813807542847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - (|A118762 (n + 1)| + 1)

end

end A044431.P1590224813807542847

/-! ## A044431.P1519876428013957383

`A017377(A017377(n))-A324802(A324969(n+1))`
-/

namespace A044431.P1519876428013957383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A017377 n).toNat - A324802 (A324969 (n + 1)).toNat

end

end A044431.P1519876428013957383

/-! ## A044431.P17457795061997227528

`A044811(A351870(n+1))+1`
-/

namespace A044431.P17457795061997227528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044811 (A351870 (n + 1)).toNat + 1

end

end A044431.P17457795061997227528

/-! ## A044431.P7713839467078454510

`A044811(n+1)-A057428(ceil(3^(n-1)))`
-/

namespace A044431.P7713839467078454510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044811 (n + 1) - A057428 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A044431.P7713839467078454510

/-!
# A044432: a(n) is the number whose base-2 representation is d(0)d(1)...d(n), where d=A005614 (the infinite Fibonacci word).

The programs for A044432, the canonical program `A044432.P5964800957522265017` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044432 has offset 0).

The definition of A044432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A044432.P5964800957522265017

`2*a(n-1)+A005614(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A044432

/-- `2*a(n-1)+A005614(n)` -/
def P5964800957522265017.Spec : Prop :=
  ∀ n, P5964800957522265017.a n = A044432 n

theorem P5964800957522265017.correct : P5964800957522265017.Spec := by
  intro n
  simp only [A044432]

end A044432

/-! ## A044432.P2725713946124672152

`A000225(n+1)-A182028(n)`
-/

namespace A044432.P2725713946124672152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A182028 n

end

end A044432.P2725713946124672152

namespace A044432

/-- `A000225(n+1)-A182028(n)` -/
def P2725713946124672152.Spec : Prop :=
  ∀ n, P2725713946124672152.a n = A044432 n

end A044432

/-! ## A044432.P8029664550193005793

`Δ[floor((n+1)/ϕ)]+2*a(n-1)` with `a(0)=1`
-/

namespace A044432.P8029664550193005793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A044432.P8029664550193005793

namespace A044432

/-- `Δ[floor((n+1)/ϕ)]+2*a(n-1)` -/
def P8029664550193005793.Spec : Prop :=
  ∀ n, P8029664550193005793.a n = A044432 n

end A044432

/-! ## A044432.P15765364814331907706

`or(2*a(n-1), A003842(n))` with `a(0)=1`
-/

namespace A044432.P15765364814331907706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A003842 n)

end

end A044432.P15765364814331907706

namespace A044432

/-- `or(2*a(n-1), A003842(n))` -/
def P15765364814331907706.Spec : Prop :=
  ∀ n, P15765364814331907706.a n = A044432 n

end A044432

/-! ## A044432.P16776945385403571621

`2*a(n-1)+1-A003849(n)` with `a(0)=1`
-/

namespace A044432.P16776945385403571621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 1 - A003849 n

end

end A044432.P16776945385403571621

namespace A044432

/-- `2*a(n-1)+1-A003849(n)` -/
def P16776945385403571621.Spec : Prop :=
  ∀ n, P16776945385403571621.a n = A044432 n

end A044432

/-! ## A044432.P14158228142356201208

`A126646(n)-A182028(n)`
-/

namespace A044432.P14158228142356201208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A182028 n

end

end A044432.P14158228142356201208

namespace A044432

/-- `A126646(n)-A182028(n)` -/
def P14158228142356201208.Spec : Prop :=
  ∀ n, P14158228142356201208.a n = A044432 n

end A044432

/-! ## A044432.P840372766064770621

`A000079(n)-(A182028(n)-A000225(n))`
-/

namespace A044432.P840372766064770621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A182028 n - A000225 n)

end

end A044432.P840372766064770621

namespace A044432

/-- `A000079(n)-(A182028(n)-A000225(n))` -/
def P840372766064770621.Spec : Prop :=
  ∀ n, P840372766064770621.a n = A044432 n

end A044432

/-! ## A044432.P14286028050634679159

`A000225(n+1)+A003849(n+1)-A214319(n)`
-/

namespace A044432.P14286028050634679159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A003849 (n + 1) - A214319 n)

end

end A044432.P14286028050634679159

namespace A044432

/-- `A000225(n+1)+A003849(n+1)-A214319(n)` -/
def P14286028050634679159.Spec : Prop :=
  ∀ n, P14286028050634679159.a n = A044432 n

end A044432

/-! ## A044432.P13302246971796919549

`A228038(n+2)-A214318(n+1)`
-/

namespace A044432.P13302246971796919549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228038 (n + 2) - A214318 (n + 1)

end

end A044432.P13302246971796919549

namespace A044432

/-- `A228038(n+2)-A214318(n+1)` -/
def P13302246971796919549.Spec : Prop :=
  ∀ n, P13302246971796919549.a n = A044432 n

end A044432

/-! ## A044432.P16657597099903784752

`2*A126646(n)-A214318(n+1)`
-/

namespace A044432.P16657597099903784752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126646 n - A214318 (n + 1)

end

end A044432.P16657597099903784752

namespace A044432

/-- `2*A126646(n)-A214318(n+1)` -/
def P16657597099903784752.Spec : Prop :=
  ∀ n, P16657597099903784752.a n = A044432 n

end A044432

/-! ## A044432.P26845261172572243

`A214318(n+1)-2*A182028(n)`
-/

namespace A044432.P26845261172572243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214318 (n + 1) - 2 * A182028 n

end

end A044432.P26845261172572243

namespace A044432

/-- `A214318(n+1)-2*A182028(n)` -/
def P26845261172572243.Spec : Prop :=
  ∀ n, P26845261172572243.a n = A044432 n

end A044432

/-! ## A044432.P8489646073089580445

`A000225(n+1)+A000225(n+1)-A214318(n+1)`
-/

namespace A044432.P8489646073089580445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A000225 (n + 1) - A214318 (n + 1))

end

end A044432.P8489646073089580445

namespace A044432

/-- `A000225(n+1)+A000225(n+1)-A214318(n+1)` -/
def P8489646073089580445.Spec : Prop :=
  ∀ n, P8489646073089580445.a n = A044432 n

end A044432

/-! ## A044432.P2272045649184486884

`A003849(n+1)+A214318(n+1)-A182028(n+1)`
-/

namespace A044432.P2272045649184486884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 1) + (A214318 (n + 1) - A182028 (n + 1))

end

end A044432.P2272045649184486884

namespace A044432

/-- `A003849(n+1)+A214318(n+1)-A182028(n+1)` -/
def P2272045649184486884.Spec : Prop :=
  ∀ n, P2272045649184486884.a n = A044432 n

end A044432

/-!
# A044433: Numbers n such that string 0,0 occurs in the base 3 representation of n but not of n+1.

The programs for A044433, there is no canonical definition to state claims against.
-/

/-! ## A044433.P7092200775673209320

`A347398(A129445(n+1))+A044060(n+1)`
-/

namespace A044433.P7092200775673209320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347398 (A129445 (n + 1)).toNat + A044060 (n + 1)

end

end A044433.P7092200775673209320

/-!
# A044434: Numbers n such that string 0,1 occurs in the base 3 representation of n but not of n+1.

The programs for A044434, there is no canonical definition to state claims against.
-/

/-! ## A044434.P10870595201777737988

`A284722(A044054(n+1))`
-/

namespace A044434.P10870595201777737988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284722 (A044054 (n + 1)).toNat

end

end A044434.P10870595201777737988

/-! ## A044434.P5792533785987950153

`A160642(A044054(n+1))`
-/

namespace A044434.P5792533785987950153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160642 (A044054 (n + 1)).toNat

end

end A044434.P5792533785987950153

/-!
# A044435: Numbers k such that string 0,2 occurs in the base-3 representation of k but not of k+1.

The programs for A044435, there is no canonical definition to state claims against.
-/

/-! ## A044435.P12220653646674860099

`eq[A026146(n+4), A200507(2*n)]+1`
-/

namespace A044435.P12220653646674860099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026146 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044435.P12220653646674860099

/-! ## A044435.P15912149591181545313

`∩[A287960(n+1), A334521(n+1)]`
-/

namespace A044435.P15912149591181545313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044435.P15912149591181545313

/-! ## A044435.P2462282857246942281

`A026194(lt[A026194(n+1), A325389(n+1)])`
-/

namespace A044435.P2462282857246942281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026194 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A044435.P2462282857246942281

/-! ## A044435.P4552378222425604556

`lt[A319247(n+1)+A026143(2*(n+2)), A026195(n+1)]`
-/

namespace A044435.P4552378222425604556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319247 (n + 1) + A026143 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044435.P4552378222425604556

/-! ## A044435.P6687245069211910266

`eq[A026146(n+3), A181839(n)]`
-/

namespace A044435.P6687245069211910266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026146 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044435.P6687245069211910266

/-!
# A044436: Numbers n such that string 1,0 occurs in the base 3 representation of n but not of n+1.

The programs for A044436, the canonical program `A044436.P16465431864017586381` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044436 has offset 1).

The definition of A044436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044436.P16465431864017586381

`record[2*n+1+A004488(A059249(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044436

/-- `record[2*n+1+A004488(A059249(n+1))]` -/
def P16465431864017586381.Spec : Prop :=
  ∀ n, P16465431864017586381.a n = A044436 (n + 1)

theorem P16465431864017586381.correct : P16465431864017586381.Spec := by
  intro n
  simp only [A044436, Nat.add_sub_cancel]

end A044436

/-! ## A044436.P8428748271798715762

`record[Δ[A117966(n)]+3*n+2]`
-/

namespace A044436.P8428748271798715762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (3 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044436.P8428748271798715762

namespace A044436

/-- `record[Δ[A117966(n)]+3*n+2]` -/
def P8428748271798715762.Spec : Prop :=
  ∀ n, P8428748271798715762.a n = A044436 (n + 1)

end A044436

/-! ## A044436.P3602461463815188657

`record[Δ[A004488(n)+A000326(n)]]`
-/

namespace A044436.P3602461463815188657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n + A000326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044436.P3602461463815188657

namespace A044436

/-- `record[Δ[A004488(n)+A000326(n)]]` -/
def P3602461463815188657.Spec : Prop :=
  ∀ n, P3602461463815188657.a n = A044436 (n + 1)

end A044436

/-! ## A044436.P2487878729621553000

`record[A004488(A059249(n+1))+A004442(2*n)]`
-/

namespace A044436.P2487878729621553000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A059249 (n + 1)).toNat + A004442 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044436.P2487878729621553000

namespace A044436

/-- `record[A004488(A059249(n+1))+A004442(2*n)]` -/
def P2487878729621553000.Spec : Prop :=
  ∀ n, P2487878729621553000.a n = A044436 (n + 1)

end A044436

/-!
# A044437: Numbers n such that string 1,1 occurs in the base 3 representation of n but not of n+1.

The programs for A044437, the canonical program `A044437.P989226592921075756` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044437 has offset 1).

The definition of A044437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044437.P989226592921075756

`eq[A015053(A290091(n)), A290091(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A044437

/-- `eq[A015053(A290091(n)), A290091(n+1)]` -/
def P989226592921075756.Spec : Prop :=
  ∀ n, (P989226592921075756.a n : ℤ) = A044437 (n + 1)

theorem P989226592921075756.correct : P989226592921075756.Spec := by
  intro n
  simp only [A044437, Nat.add_sub_cancel]

end A044437

/-! ## A044437.P11705590770944337052

`eq[A048735(A289813(n)), A318666(n+1)]`
-/

namespace A044437.P11705590770944337052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A289813 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044437.P11705590770944337052

namespace A044437

/-- `eq[A048735(A289813(n)), A318666(n+1)]` -/
def P11705590770944337052.Spec : Prop :=
  ∀ n, (P11705590770944337052.a n : ℤ) = A044437 (n + 1)

end A044437

/-! ## A044437.P5820638770534098137

`eq[A289813(n+1), A292272(A289813(n))]`
-/

namespace A044437.P5820638770534098137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A289813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044437.P5820638770534098137

namespace A044437

/-- `eq[A289813(n+1), A292272(A289813(n))]` -/
def P5820638770534098137.Spec : Prop :=
  ∀ n, (P5820638770534098137.a n : ℤ) = A044437 (n + 1)

end A044437

/-! ## A044437.P6963129053951377506

`eq[20^A196096(n+1), A196096(n)]`
-/

namespace A044437.P6963129053951377506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ (A196096 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044437.P6963129053951377506

namespace A044437

/-- `eq[20^A196096(n+1), A196096(n)]` -/
def P6963129053951377506.Spec : Prop :=
  ∀ n, (P6963129053951377506.a n : ℤ) = A044437 (n + 1)

end A044437

/-! ## A044437.P16112550685827682448

`eq[A005894(n*A196096(n+1)), A196096(n)]`
-/

namespace A044437.P16112550685827682448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 ((n : ℤ) * A196096 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044437.P16112550685827682448

namespace A044437

/-- `eq[A005894(n*A196096(n+1)), A196096(n)]` -/
def P16112550685827682448.Spec : Prop :=
  ∀ n, (P16112550685827682448.a n : ℤ) = A044437 (n + 1)

end A044437

/-!
# A044438: Numbers n such that string 1,2 occurs in the base 3 representation of n but not of n+1.

The programs for A044438, the canonical program `A044438.P5204322575316227369` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044438 has offset 1).

The definition of A044438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044438.P9700011702532370679

`record[A014682(A319021(1+3*n))]`
-/

namespace A044438.P9700011702532370679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A319021 (1 + 3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044438.P9700011702532370679

namespace A044438

/-- `record[A014682(A319021(1+3*n))]` -/
def P9700011702532370679.Spec : Prop :=
  ∀ n, P9700011702532370679.a n = A044438 (n + 1)

end A044438

/-! ## A044438.P10079603081473832570

`A014682(record[A319021(A016921(n))])`
-/

namespace A044438.P10079603081473832570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A016921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044438.P10079603081473832570

namespace A044438

/-- `A014682(record[A319021(A016921(n))])` -/
def P10079603081473832570.Spec : Prop :=
  ∀ n, P10079603081473832570.a n = A044438 (n + 1)

end A044438

/-! ## A044438.P5204322575316227369

`lt[A023713(n+1), A006288(n)%A023713(n+2)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A044438

/-- `lt[A023713(n+1), A006288(n)%A023713(n+2)]` -/
def P5204322575316227369.Spec : Prop :=
  ∀ n, (P5204322575316227369.a n : ℤ) = A044438 (n + 1)

theorem P5204322575316227369.correct : P5204322575316227369.Spec := by
  intro n
  simp only [A044438, Nat.add_sub_cancel]

end A044438

/-! ## A044438.P14805043554705964065

`A043879(A000201(n+1)%A222531(n+1))`
-/

namespace A044438.P14805043554705964065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043879 (Int.tmod (A000201 (n + 1)) (A222531 (n + 1))).toNat

end

end A044438.P14805043554705964065

namespace A044438

/-- `A043879(A000201(n+1)%A222531(n+1))` -/
def P14805043554705964065.Spec : Prop :=
  ∀ n, P14805043554705964065.a n = A044438 (n + 1)

end A044438

/-! ## A044438.P10664385550636085803

`∩[A043879(n+1), A230902(n+1)]`
-/

namespace A044438.P10664385550636085803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044438.P10664385550636085803

namespace A044438

/-- `∩[A043879(n+1), A230902(n+1)]` -/
def P10664385550636085803.Spec : Prop :=
  ∀ n, (P10664385550636085803.a n : ℤ) = A044438 (n + 1)

end A044438

/-!
# A044440: Numbers n such that string 2,1 occurs in the base 3 representation of n but not of n+1.

The programs for A044440, there is no canonical definition to state claims against.
-/

/-! ## A044440.P10066939293149755431

`lt[A265344(n+1), A106625(A105361(n+1))]`
-/

namespace A044440.P10066939293149755431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106625 (A105361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044440.P10066939293149755431

/-!
# A044441: Numbers n such that string 2,2 occurs in the base 3 representation of n but not of n+1.

The programs for A044441, the canonical program `A044441.P9775668103846057135` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044441 has offset 1).

The definition of A044441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044441.P9775668103846057135

`eq[A300222(n+1), A338242(A300222(n+5))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A044441

/-- `eq[A300222(n+1), A338242(A300222(n+5))]` -/
def P9775668103846057135.Spec : Prop :=
  ∀ n, (P9775668103846057135.a n : ℤ) = A044441 (n + 1)

theorem P9775668103846057135.correct : P9775668103846057135.Spec := by
  intro n
  simp only [A044441, Nat.add_sub_cancel]

end A044441

/-! ## A044441.P12313666193071647089

`eq[A267017(n+2), A325788(A336850(n+1))]`
-/

namespace A044441.P12313666193071647089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267017 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325788 (A336850 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044441.P12313666193071647089

namespace A044441

/-- `eq[A267017(n+2), A325788(A336850(n+1))]` -/
def P12313666193071647089.Spec : Prop :=
  ∀ n, (P12313666193071647089.a n : ℤ) = A044441 (n + 1)

end A044441

/-! ## A044441.P7714306078312976795

`eq[A010888(n+2), A295920(A184348(n+1))]`
-/

namespace A044441.P7714306078312976795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (A184348 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044441.P7714306078312976795

namespace A044441

/-- `eq[A010888(n+2), A295920(A184348(n+1))]` -/
def P7714306078312976795.Spec : Prop :=
  ∀ n, (P7714306078312976795.a n : ℤ) = A044441 (n + 1)

end A044441

/-! ## A044441.P9298432369234867753

`lt[A367587(A287707(n+1)), A007949(n+1)]`
-/

namespace A044441.P9298432369234867753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367587 (A287707 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044441.P9298432369234867753

namespace A044441

/-- `lt[A367587(A287707(n+1)), A007949(n+1)]` -/
def P9298432369234867753.Spec : Prop :=
  ∀ n, (P9298432369234867753.a n : ℤ) = A044441 (n + 1)

end A044441

/-! ## A044441.P8323624598243582351

`filter[A017257(n), A156259(#)]`
-/

namespace A044441.P8323624598243582351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156259 (f1 j).toNat = 1) n)

end

end A044441.P8323624598243582351

namespace A044441

/-- `filter[A017257(n), A156259(#)]` -/
def P8323624598243582351.Spec : Prop :=
  ∀ n, P8323624598243582351.a n = A044441 (n + 1)

end A044441

/-!
# A044442: Numbers n such that string 0,0 occurs in the base 4 representation of n but not of n+1.

The programs for A044442, there is no canonical definition to state claims against.
-/

/-! ## A044442.P12792855406145144275

`A276330(A081437(n))+A125169(n)`
-/

namespace A044442.P12792855406145144275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276330 (A081437 n).toNat + A125169 n

end

end A044442.P12792855406145144275

/-! ## A044442.P17452779832349443018

`A125169(n)+A010121(A187829(n+1))`
-/

namespace A044442.P17452779832349443018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A010121 (A187829 (n + 1)).toNat

end

end A044442.P17452779832349443018

/-! ## A044442.P15230361182419037974

`A185216(A248576(n+1))+A125169(n)`
-/

namespace A044442.P15230361182419037974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 (A248576 (n + 1)).toNat + A125169 n

end

end A044442.P15230361182419037974

/-! ## A044442.P18341991835185756096

`xor(A115362(n), A158057(A187829(n+1)))`
-/

namespace A044442.P18341991835185756096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115362 n) (A158057 (A187829 (n + 1)).toNat)

end

end A044442.P18341991835185756096

/-! ## A044442.P4506370400982340665

`Δ[A001844(2*n+1)]-A040005(A071246(n+4))`
-/

namespace A044442.P4506370400982340665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A040005 (A071246 (n + 4)).toNat

end

end A044442.P4506370400982340665

/-!
# A044443: Numbers n such that string 0,1 occurs in the base 4 representation of n but not of n+1.

The programs for A044443, there is no canonical definition to state claims against.
-/

/-! ## A044443.P191759282652360100

`or(A044062(n+1)-1, A044062(n+1))`
-/

namespace A044443.P191759282652360100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044062 (n + 1) - 1) (A044062 (n + 1))

end

end A044443.P191759282652360100

/-! ## A044443.P278552138724635197

`A086799(A044062(n+1))`
-/

namespace A044443.P278552138724635197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044062 (n + 1)).toNat

end

end A044443.P278552138724635197

/-! ## A044443.P16266798782006395451

`A057428(A000045(n+2))+A044063(n+1)`
-/

namespace A044443.P16266798782006395451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000045 (n + 2)).toNat + A044063 (n + 1)

end

end A044443.P16266798782006395451

/-!
# A044444: Numbers n such that string 0,2 occurs in the base 4 representation of n but not of n+1.

The programs for A044444, there is no canonical definition to state claims against.
-/

/-! ## A044444.P2964228363784870334

`A023443(A044064(n+1)%A007766(2*(n+2)))`
-/

namespace A044444.P2964228363784870334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A044064 (n + 1)) (A007766 (2 * (n + 2)))).toNat

end

end A044444.P2964228363784870334

/-!
# A044445: Numbers n such that string 0,3 occurs in the base 4 representation of n but not of n+1.

The programs for A044445, there is no canonical definition to state claims against.
-/

/-! ## A044445.P16843051449974109715

`or(A044064(n+1)-1, A044064(n+1))`
-/

namespace A044445.P16843051449974109715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044064 (n + 1) - 1) (A044064 (n + 1))

end

end A044445.P16843051449974109715

/-! ## A044445.P6784248201290577761

`or(A057428(n)+A044064(n+1), A044064(n+1))`
-/

namespace A044445.P6784248201290577761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044064 (n + 1)) (A044064 (n + 1))

end

end A044445.P6784248201290577761

/-! ## A044445.P6362851900127599612

`A086799(A044064(1+n))`
-/

namespace A044445.P6362851900127599612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044064 (1 + n)).toNat

end

end A044445.P6362851900127599612

/-! ## A044445.P12804733176083537276

`∩[A043882(n+1), A223133(n)]`
-/

namespace A044445.P12804733176083537276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044445.P12804733176083537276

/-!
# A044446: Numbers k such that string 1,0 occurs in the base-4 representation of k but not of k+1.

The programs for A044446, there is no canonical definition to state claims against.
-/

/-! ## A044446.P5689835444430301513

`record[A289813(A037477(A044576(n+1)))]`
-/

namespace A044446.P5689835444430301513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A037477 (A044576 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044446.P5689835444430301513

/-! ## A044446.P5654585832112210892

`A119413(∑[A014709(A007179(n))])`
-/

namespace A044446.P5654585832112210892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A007179 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044446.P5654585832112210892

/-! ## A044446.P9631919827972120452

`record[A017089(n)*A246127(A276922(n))]`
-/

namespace A044446.P9631919827972120452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n * A246127 (A276922 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044446.P9631919827972120452

/-! ## A044446.P13587812397761444069

`eq[A038538(A163808(n+4)), A393146(2*(n+2))]`
-/

namespace A044446.P13587812397761444069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038538 (A163808 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393146 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044446.P13587812397761444069

/-! ## A044446.P3133533912907527851

`∩[A173512(n), A248614(n)]`
-/

namespace A044446.P3133533912907527851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044446.P3133533912907527851

/-!
# A044447: Numbers n such that string 1,1 occurs in the base 4 representation of n but not of n+1.

The programs for A044447, there is no canonical definition to state claims against.
-/

/-! ## A044447.P16711356155536456813

`or(A044066(n+1)-1, A044066(n+1))`
-/

namespace A044447.P16711356155536456813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044066 (n + 1) - 1) (A044066 (n + 1))

end

end A044447.P16711356155536456813

/-! ## A044447.P3125174341975229691

`A086799(A044066(n+1))`
-/

namespace A044447.P3125174341975229691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044066 (n + 1)).toNat

end

end A044447.P3125174341975229691

/-! ## A044447.P12906021533765897758

`eq[exp(A196272(n+1)), A196272(n)]`
-/

namespace A044447.P12906021533765897758
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A196272 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A044447.P12906021533765897758

/-! ## A044447.P14863255596790675722

`eq[A007089(n)^A196272(n+1), A196272(n)]`
-/

namespace A044447.P14863255596790675722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007089 n : ℚ) ^ (A196272 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044447.P14863255596790675722

/-! ## A044447.P20030935829892777

`eq[A007092(n)^A196272(n+1), A196272(n)]`
-/

namespace A044447.P20030935829892777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007092 n : ℚ) ^ (A196272 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044447.P20030935829892777

/-! ## A044447.P292494046137935221

`eq[A181099(n)^A196272(n+1), A196272(n)]`
-/

namespace A044447.P292494046137935221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181099 n : ℚ) ^ (A196272 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044447.P292494046137935221

/-! ## A044447.P15553630596929160661

`eq[A031456(n+1)^A196272(n+1), A196272(n)]`
-/

namespace A044447.P15553630596929160661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031456 (n + 1) : ℚ) ^ (A196272 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A044447.P15553630596929160661

/-!
# A044448: Numbers n such that string 1,2 occurs in the base 4 representation of n but not of n+1.

The programs for A044448, there is no canonical definition to state claims against.
-/

/-! ## A044448.P18075991483650026975

`record[A289831(A044644(n+1))]`
-/

namespace A044448.P18075991483650026975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A044644 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044448.P18075991483650026975

/-! ## A044448.P2135010473216434185

`record[A289814(A044656(n+1))]`
-/

namespace A044448.P2135010473216434185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A044656 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044448.P2135010473216434185

/-!
# A044449: Numbers n such that string 1,3 occurs in the base 4 representation of n but not of n+1.

The programs for A044449, there is no canonical definition to state claims against.
-/

/-! ## A044449.P10098975036690776326

`or(A044068(n+1)-1, A044068(n+1))`
-/

namespace A044449.P10098975036690776326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044068 (n + 1) - 1) (A044068 (n + 1))

end

end A044449.P10098975036690776326

/-! ## A044449.P18117328846927239813

`or(A057428(n)+A044068(n+1), A044068(n+1))`
-/

namespace A044449.P18117328846927239813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044068 (n + 1)) (A044068 (n + 1))

end

end A044449.P18117328846927239813

/-! ## A044449.P4035137108920286602

`A086799(A044068(1+n))`
-/

namespace A044449.P4035137108920286602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044068 (1 + n)).toNat

end

end A044449.P4035137108920286602

/-! ## A044449.P17493669923716333281

`eq[2, A055229(A332815(n))]`
-/

namespace A044449.P17493669923716333281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A332815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044449.P17493669923716333281

/-! ## A044449.P14179728434214363587

`eq[2, A055229(A005940(n+1))]`
-/

namespace A044449.P14179728434214363587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044449.P14179728434214363587

/-!
# A044450: Numbers k such that string 2,0 occurs in the base 4 representation of k but not of k+1.

The programs for A044450, the canonical program `A044450.P2422719575531033708` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044450 has offset 1).

The definition of A044450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044450.P2422719575531033708

`record[A225822(n+1)+A006519(A003159(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A044450

/-- `record[A225822(n+1)+A006519(A003159(n+1))]` -/
def P2422719575531033708.Spec : Prop :=
  ∀ n, P2422719575531033708.a n = A044450 (n + 1)

theorem P2422719575531033708.correct : P2422719575531033708.Spec := by
  intro n
  simp only [A044450, Nat.add_sub_cancel]

end A044450

/-! ## A044450.P13749939799849049310

`record[A289831(A044659(n+1))]`
-/

namespace A044450.P13749939799849049310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A044659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044450.P13749939799849049310

namespace A044450

/-- `record[A289831(A044659(n+1))]` -/
def P13749939799849049310.Spec : Prop :=
  ∀ n, P13749939799849049310.a n = A044450 (n + 1)

end A044450

/-! ## A044450.P16695587979871233851

`eq[3, A089311(A037462(n+1))]`
-/

namespace A044450.P16695587979871233851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A037462 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044450.P16695587979871233851

namespace A044450

/-- `eq[3, A089311(A037462(n+1))]` -/
def P16695587979871233851.Spec : Prop :=
  ∀ n, (P16695587979871233851.a n : ℤ) = A044450 (n + 1)

end A044450

/-!
# A044451: Numbers n such that string 2,1 occurs in the base 4 representation of n but not of n+1.

The programs for A044451, there is no canonical definition to state claims against.
-/

/-! ## A044451.P7980023670800507464

`or(A044070(n+1)-1, A044070(n+1))`
-/

namespace A044451.P7980023670800507464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044070 (n + 1) - 1) (A044070 (n + 1))

end

end A044451.P7980023670800507464

/-! ## A044451.P4205369621295570268

`A086799(A044070(n+1))`
-/

namespace A044451.P4205369621295570268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044070 (n + 1)).toNat

end

end A044451.P4205369621295570268

/-! ## A044451.P4394868369399558262

`record[A289831(A044660(n+1))]`
-/

namespace A044451.P4394868369399558262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A044660 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044451.P4394868369399558262

/-! ## A044451.P3190204271832635959

`lt[A014452(2*(n+1)), A007706(A311338(n+2))]`
-/

namespace A044451.P3190204271832635959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 (A311338 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044451.P3190204271832635959

/-! ## A044451.P12420839259263604928

`record[A289814(A044688(n+1))]`
-/

namespace A044451.P12420839259263604928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A044688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044451.P12420839259263604928

/-!
# A044452: Numbers n such that string 2,2 occurs in the base 4 representation of n but not of n+1.

The programs for A044452, there is no canonical definition to state claims against.
-/

/-! ## A044452.P8701058254140022610

`record[A341522(A055045(1+n)-1)]`
-/

namespace A044452.P8701058254140022610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 (A055045 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044452.P8701058254140022610

/-! ## A044452.P12605170878024958018

`A106839(n)-A330025(A007051(n))`
-/

namespace A044452.P12605170878024958018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n - A330025 (A007051 n).toNat

end

end A044452.P12605170878024958018

/-! ## A044452.P17361479808859599935

`A106839(n)-A000035(A093726(n+1))`
-/

namespace A044452.P17361479808859599935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n - A000035 (A093726 (n + 1)).toNat

end

end A044452.P17361479808859599935

/-! ## A044452.P10479415587834937499

`A106839(n)-A011703(A346207(n+1))`
-/

namespace A044452.P10479415587834937499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n - A011703 (A346207 (n + 1)).toNat

end

end A044452.P10479415587834937499

/-! ## A044452.P12565082136468969447

`A293630(A000108(n))+A017077(2*n+1)`
-/

namespace A044452.P12565082136468969447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293630 (A000108 n).toNat + A017077 (2 * n + 1)

end

end A044452.P12565082136468969447

/-!
# A044453: Numbers k such that string 2,3 occurs in the base 4 representation of k but not of k+1.

The programs for A044453, there is no canonical definition to state claims against.
-/

/-! ## A044453.P14875957647510591026

`∩[A043885(n+1), A254311(n+1)]`
-/

namespace A044453.P14875957647510591026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044453.P14875957647510591026

/-! ## A044453.P11538616741348252125

`∩[A043885(n+1), A122124(n+1)]`
-/

namespace A044453.P11538616741348252125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044453.P11538616741348252125

/-! ## A044453.P4833944079282504281

`∩[A043885(n+1), A350395(n+1)]`
-/

namespace A044453.P4833944079282504281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044453.P4833944079282504281

/-! ## A044453.P4699910079680293646

`∩[A043885(n+1), A096315(n+1)]`
-/

namespace A044453.P4699910079680293646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044453.P4699910079680293646

/-!
# A044454: Numbers n such that string 3,0 occurs in the base 4 representation of n but not of n+1.

The programs for A044454, there is no canonical definition to state claims against.
-/

/-! ## A044454.P2651012906023702329

`A044074(A187829(n+1))-1`
-/

namespace A044454.P2651012906023702329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (A187829 (n + 1)).toNat - 1

end

end A044454.P2651012906023702329

/-! ## A044454.P5892047831789636226

`A044074(n+1)-A001221(A128066(n+1))`
-/

namespace A044454.P5892047831789636226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (n + 1) - A001221 (A128066 (n + 1)).toNat

end

end A044454.P5892047831789636226

/-! ## A044454.P12508188049470273124

`A044074(n+1)-A001221(A168110(n+1))`
-/

namespace A044454.P12508188049470273124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (n + 1) - A001221 (A168110 (n + 1)).toNat

end

end A044454.P12508188049470273124

/-! ## A044454.P6271441700193067416

`A044074(n+1)-A325509(A145882(n+1))`
-/

namespace A044454.P6271441700193067416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (n + 1) - A325509 (A145882 (n + 1)).toNat

end

end A044454.P6271441700193067416

/-! ## A044454.P16680730190961459275

`A044074(n+1)-A072411(A347307(n+3))`
-/

namespace A044454.P16680730190961459275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044074 (n + 1) - A072411 (A347307 (n + 3)).toNat

end

end A044454.P16680730190961459275

/-!
# A044455: Numbers n such that string 3,1 occurs in the base 4 representation of n but not of n+1.

The programs for A044455, there is no canonical definition to state claims against.
-/

/-! ## A044455.P16625383470827118477

`A086799(A044074(1+n))`
-/

namespace A044455.P16625383470827118477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044074 (1 + n)).toNat

end

end A044455.P16625383470827118477

/-! ## A044455.P7817227577249363152

`eq[A000122(21*A004015(n+3)), A014455(n+1)]`
-/

namespace A044455.P7817227577249363152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (21 * A004015 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044455.P7817227577249363152

/-! ## A044455.P9947996167017692755

`eq[A004018(21*A004015(n+3)), A014455(n+1)]`
-/

namespace A044455.P9947996167017692755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (21 * A004015 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044455.P9947996167017692755

/-! ## A044455.P5869027977110247121

`eq[A014455(n+1), A014478(A014489(n+1))]`
-/

namespace A044455.P5869027977110247121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014478 (A014489 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044455.P5869027977110247121

/-! ## A044455.P13338778776224175186

`eq[A010051(A008137(n+1)), A080917(2*(n+1))]`
-/

namespace A044455.P13338778776224175186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008137 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044455.P13338778776224175186

/-!
# A044456: Numbers n such that string 3,2 occurs in the base 4 representation of n but not of n+1.

The programs for A044456, there is no canonical definition to state claims against.
-/

/-! ## A044456.P13562680794624358193

`record[A341522(A004215(1+n)-1)]`
-/

namespace A044456.P13562680794624358193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 (A004215 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044456.P13562680794624358193

/-! ## A044456.P12742667436987509700

`record[A289814(A044710(n+1))]`
-/

namespace A044456.P12742667436987509700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A044710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044456.P12742667436987509700

/-!
# A044458: Numbers n such that string 0,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044458, there is no canonical definition to state claims against.
-/

/-! ## A044458.P4363221238402271810

`A060904(n+1)+A008607(A187829(n+1))-1`
-/

namespace A044458.P4363221238402271810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (n + 1) + (A008607 (A187829 (n + 1)).toNat - 1)

end

end A044458.P4363221238402271810

/-! ## A044458.P4341495169681208698

`A387180(A047336(2*(n+1)))+A356944(n+1)`
-/

namespace A044458.P4341495169681208698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (A047336 (2 * (n + 1))).toNat + A356944 (n + 1)

end

end A044458.P4341495169681208698

/-! ## A044458.P2955379297528483893

`A311257(A008486(2*(n+1)))+A057918(A147491(2*n+3))`
-/

namespace A044458.P2955379297528483893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 (A008486 (2 * (n + 1))).toNat + A057918 (A147491 (2 * n + 3)).toNat

end

end A044458.P2955379297528483893

/-!
# A044460: Numbers n such that string 0,2 occurs in the base 5 representation of n but not of n+1.

The programs for A044460, there is no canonical definition to state claims against.
-/

/-! ## A044460.P4465150564255919255

`A395541(A044080(n+1))`
-/

namespace A044460.P4465150564255919255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395541 (A044080 (n + 1)).toNat

end

end A044460.P4465150564255919255

/-!
# A044462: Numbers n such that string 0,4 occurs in the base 5 representation of n but not of n+1.

The programs for A044462, there is no canonical definition to state claims against.
-/

/-! ## A044462.P15526550625035242603

`A044460(n+1)+A062379(A149643(n))+1`
-/

namespace A044462.P15526550625035242603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044460 (n + 1) + (A062379 (A149643 n).toNat + 1)

end

end A044462.P15526550625035242603

/-! ## A044462.P8769434298855087808

`or(A044081(n+1), A327127(A005836(n+1)))`
-/

namespace A044462.P8769434298855087808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044081 (n + 1)) (A327127 (A005836 (n + 1)).toNat)

end

end A044462.P8769434298855087808

/-!
# A044463: Numbers n such that string 1,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044463, there is no canonical definition to state claims against.
-/

/-! ## A044463.P1381917674815414721

`A008587(∩[A335525(n+1), A016861(n)])`
-/

namespace A044463.P1381917674815414721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044463.P1381917674815414721

/-! ## A044463.P13042414312901010282

`A016861(∩[A335525(n+1), A016861(n)])-1`
-/

namespace A044463.P13042414312901010282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A044463.P13042414312901010282

/-!
# A044464: Numbers k such that string 1,1 occurs in the base 5 representation of k but not of k+1.

The programs for A044464, there is no canonical definition to state claims against.
-/

/-! ## A044464.P10273069249614791275

`A002518(A044083(1+n))-1`
-/

namespace A044464.P10273069249614791275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 (A044083 (1 + n)).toNat - 1

end

end A044464.P10273069249614791275

/-!
# A044465: Numbers n such that string 1,2 occurs in the base 5 representation of n but not of n+1.

The programs for A044465, there is no canonical definition to state claims against.
-/

/-! ## A044465.P13039384559120394671

`A044085(A032559(n+1))-1`
-/

namespace A044465.P13039384559120394671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (A032559 (n + 1)).toNat - 1

end

end A044465.P13039384559120394671

/-! ## A044465.P1772613274570863837

`A044085(A077739(n+1))-1`
-/

namespace A044465.P1772613274570863837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (A077739 (n + 1)).toNat - 1

end

end A044465.P1772613274570863837

/-! ## A044465.P3736920061611056178

`A044085(A082217(n+1))-1`
-/

namespace A044465.P3736920061611056178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (A082217 (n + 1)).toNat - 1

end

end A044465.P3736920061611056178

/-! ## A044465.P4398071511014028845

`A044085(n+1)-A053865(A160506(n))`
-/

namespace A044465.P4398071511014028845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (n + 1) - A053865 (A160506 n).toNat

end

end A044465.P4398071511014028845

/-! ## A044465.P17811283383067733959

`A044085(n+1)-A010060(A351049(n))`
-/

namespace A044465.P17811283383067733959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044085 (n + 1) - A010060 (A351049 n).toNat

end

end A044465.P17811283383067733959

/-!
# A044466: Numbers n such that string 1,3 occurs in the base 5 representation of n but not of n+1.

The programs for A044466, there is no canonical definition to state claims against.
-/

/-! ## A044466.P8812872507444805803

`A044086(n+1)-exp(A153761(n+1))`
-/

namespace A044466.P8812872507444805803
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A044086 (n + 1) : ℝ) - Real.exp (A153761 (n + 1) : ℝ)

end

end A044466.P8812872507444805803

/-! ## A044466.P16126689723030199886

`A044086(n+1)+A008683(A109216(n))`
-/

namespace A044466.P16126689723030199886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044086 (n + 1) + A008683 (A109216 n).toNat

end

end A044466.P16126689723030199886

/-! ## A044466.P3710735389719394143

`A044086(n+1)-A011655(A006382(n))`
-/

namespace A044466.P3710735389719394143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044086 (n + 1) - A011655 (A006382 n).toNat

end

end A044466.P3710735389719394143

/-! ## A044466.P5982683936258557309

`A044086(n+1)+A008683(A090721(n+1))`
-/

namespace A044466.P5982683936258557309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044086 (n + 1) + A008683 (A090721 (n + 1)).toNat

end

end A044466.P5982683936258557309

/-! ## A044466.P8484521969000801421

`A044086(n+1)-A001222(A051342(n+1))`
-/

namespace A044466.P8484521969000801421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044086 (n + 1) - A001222 (A051342 (n + 1)).toNat

end

end A044466.P8484521969000801421

/-!
# A044467: Numbers n such that string 1,4 occurs in the base 5 representation of n but not of n+1.

The programs for A044467, there is no canonical definition to state claims against.
-/

/-! ## A044467.P10161026852038922092

`A044087(n+1)-A212793(A084171(n))`
-/

namespace A044467.P10161026852038922092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A212793 (A084171 n).toNat

end

end A044467.P10161026852038922092

/-! ## A044467.P14517910134033355160

`A044087(n+1)-A216635(A119266(n))`
-/

namespace A044467.P14517910134033355160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A216635 (A119266 n).toNat

end

end A044467.P14517910134033355160

/-! ## A044467.P755452095456301858

`A044087(n+1)-A056924(A359939(n+1))`
-/

namespace A044467.P755452095456301858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A056924 (A359939 (n + 1)).toNat

end

end A044467.P755452095456301858

/-! ## A044467.P5736389218893841863

`A044087(n+1)-A053865(A104980(3*(n+1)))`
-/

namespace A044467.P5736389218893841863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A053865 (A104980 (3 * (n + 1))).toNat

end

end A044467.P5736389218893841863

/-! ## A044467.P16973068099854382711

`A044087(n+1)-A053865(A035244(n))`
-/

namespace A044467.P16973068099854382711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044087 (n + 1) - A053865 (A035244 n).toNat

end

end A044467.P16973068099854382711

/-!
# A044468: Numbers n such that string 2,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044468, there is no canonical definition to state claims against.
-/

/-! ## A044468.P2342927552423139449

`A268830(C(A044088(n+1), 2))`
-/

namespace A044468.P2342927552423139449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (Nat.choose (A044088 (n + 1)).toNat 2)

end

end A044468.P2342927552423139449

/-! ## A044468.P8079910569806331586

`A044088(n+1)-A001222(A126691(n+1))`
-/

namespace A044468.P8079910569806331586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044088 (n + 1) - A001222 (A126691 (n + 1)).toNat

end

end A044468.P8079910569806331586

/-! ## A044468.P5441942435847678169

`A044088(n+1)-A338939(A000079(n+2))`
-/

namespace A044468.P5441942435847678169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044088 (n + 1) - A338939 (A000079 (n + 2)).toNat

end

end A044468.P5441942435847678169

/-! ## A044468.P8530853224237630749

`A044088(n+1)-A108775(A068669(2*n+1))`
-/

namespace A044468.P8530853224237630749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044088 (n + 1) - A108775 (A068669 (2 * n + 1)).toNat

end

end A044468.P8530853224237630749

/-! ## A044468.P12202056650382533809

`A044088(n+1)-A355737(A000040(2*n+1))`
-/

namespace A044468.P12202056650382533809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044088 (n + 1) - A355737 (A000040 (2 * n + 1)).toNat

end

end A044468.P12202056650382533809

/-!
# A044469: Numbers n such that string 2,1 occurs in the base 5 representation of n but not of n+1.

The programs for A044469, there is no canonical definition to state claims against.
-/

/-! ## A044469.P7556895660764825236

`lt[9, A380248(A249740(2*n+3))]`
-/

namespace A044469.P7556895660764825236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380248 (A249740 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A044469.P7556895660764825236

/-! ## A044469.P11288099224935070810

`xor(A005925(A147722(n)), A044088(n+1))`
-/

namespace A044469.P11288099224935070810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005925 (A147722 n).toNat) (A044088 (n + 1))

end

end A044469.P11288099224935070810

/-!
# A044470: Numbers n such that string 2,2 occurs in the base 5 representation of n but not of n+1.

The programs for A044470, there is no canonical definition to state claims against.
-/

/-! ## A044470.P7118298302498310937

`A043140(n+1)+A001222(A121956(2*n+1))`
-/

namespace A044470.P7118298302498310937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043140 (n + 1) + A001222 (A121956 (2 * n + 1)).toNat

end

end A044470.P7118298302498310937

/-!
# A044471: Numbers n such that string 2,3 occurs in the base 5 representation of n but not of n+1.

The programs for A044471, there is no canonical definition to state claims against.
-/

/-! ## A044471.P5991001494244931141

`A233583(record[A003602(A044460(n+1))])`
-/

namespace A044471.P5991001494244931141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A044460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044471.P5991001494244931141

/-! ## A044471.P16865048191250323785

`A044091(n+1)-A112765(A242882(n))!`
-/

namespace A044471.P16865048191250323785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044091 (n + 1) - (Nat.factorial (A112765 (A242882 n).toNat).toNat : ℤ)

end

end A044471.P16865048191250323785

/-! ## A044471.P3806670697429357067

`A044091(n+1)+A008683(A268109(n+1))`
-/

namespace A044471.P3806670697429357067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044091 (n + 1) + A008683 (A268109 (n + 1)).toNat

end

end A044471.P3806670697429357067

/-! ## A044471.P13185175477434473685

`A044091(n+1)-A001221(A308838(n+1))`
-/

namespace A044471.P13185175477434473685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044091 (n + 1) - A001221 (A308838 (n + 1)).toNat

end

end A044471.P13185175477434473685

/-! ## A044471.P1227018518148805519

`A044091(n+1)-A053865(A044043(n+3))`
-/

namespace A044471.P1227018518148805519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044091 (n + 1) - A053865 (A044043 (n + 3)).toNat

end

end A044471.P1227018518148805519

/-!
# A044472: Numbers n such that string 2,4 occurs in the base 5 representation of n but not of n+1.

The programs for A044472, there is no canonical definition to state claims against.
-/

/-! ## A044472.P3833166309251762279

`A044092(n+1)-A015161(n)!`
-/

namespace A044472.P3833166309251762279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044092 (n + 1) - (Nat.factorial (A015161 n).toNat : ℤ)

end

end A044472.P3833166309251762279

/-! ## A044472.P14457845675957456570

`A044092(n+1)-A091536(n)!`
-/

namespace A044472.P14457845675957456570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044092 (n + 1) - (Nat.factorial (A091536 n).toNat : ℤ)

end

end A044472.P14457845675957456570

/-! ## A044472.P7312095167992068593

`A044092(n+1)-A069897(2^n)`
-/

namespace A044472.P7312095167992068593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044092 (n + 1) - A069897 (2 ^ n)

end

end A044472.P7312095167992068593

/-! ## A044472.P10939583760525549634

`A044092(n+1)-2^A151838(n+2)`
-/

namespace A044472.P10939583760525549634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044092 (n + 1) : ℚ) - (2 : ℚ) ^ (A151838 (n + 2) : ℤ)

end

end A044472.P10939583760525549634

/-! ## A044472.P11536114939312212373

`A044092(n+1)-A001222(A014210(n))`
-/

namespace A044472.P11536114939312212373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044092 (n + 1) - A001222 (A014210 n).toNat

end

end A044472.P11536114939312212373

/-!
# A044473: Numbers n such that string 3,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044473, there is no canonical definition to state claims against.
-/

/-! ## A044473.P9994010204972951295

`A044093(n+1)-A001222(A339096(n+4))`
-/

namespace A044473.P9994010204972951295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A001222 (A339096 (n + 4)).toNat

end

end A044473.P9994010204972951295

/-! ## A044473.P6792822860573439233

`A044093(n+1)-A040929(A003215(3*n+4))`
-/

namespace A044473.P6792822860573439233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A040929 (A003215 (3 * n + 4)).toNat

end

end A044473.P6792822860573439233

/-! ## A044473.P15999680625356529832

`A044093(n+1)-A001222(A014210(n))`
-/

namespace A044473.P15999680625356529832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A001222 (A014210 n).toNat

end

end A044473.P15999680625356529832

/-! ## A044473.P11980276878253327627

`A044093(n+1)-A049076(A078441(n+1))`
-/

namespace A044473.P11980276878253327627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A049076 (A078441 (n + 1)).toNat

end

end A044473.P11980276878253327627

/-! ## A044473.P5895071596849859452

`A044093(n+1)-A185115(A140632(n+1))`
-/

namespace A044473.P5895071596849859452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044093 (n + 1) - A185115 (A140632 (n + 1)).toNat

end

end A044473.P5895071596849859452

/-!
# A044474: Numbers n such that string 3,1 occurs in the base 5 representation of n but not of n+1.

The programs for A044474, there is no canonical definition to state claims against.
-/

/-! ## A044474.P9877858278784989108

`record[A044094(A132663(n+1))-1]`
-/

namespace A044474.P9877858278784989108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (A132663 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044474.P9877858278784989108

/-! ## A044474.P13861789889324416912

`A044094(n+1)-A014963(A174264(n))`
-/

namespace A044474.P13861789889324416912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (n + 1) - A014963 (A174264 n).toNat

end

end A044474.P13861789889324416912

/-! ## A044474.P10310857730063179762

`A044094(n+1)-A381735(A005897(3*n+1))`
-/

namespace A044474.P10310857730063179762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (n + 1) - A381735 (A005897 (3 * n + 1)).toNat

end

end A044474.P10310857730063179762

/-! ## A044474.P1652433564708283839

`A044094(n+1)-A239001(A154982(n))`
-/

namespace A044474.P1652433564708283839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (n + 1) - A239001 (A154982 n).toNat

end

end A044474.P1652433564708283839

/-! ## A044474.P1833375100632774293

`A044094(n+1)-A001221(record[A000230(n)])`
-/

namespace A044474.P1833375100632774293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044094 (n + 1) - A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044474.P1833375100632774293

/-!
# A044475: Numbers n such that string 3,2 occurs in the base 5 representation of n but not of n+1.

The programs for A044475, there is no canonical definition to state claims against.
-/

/-! ## A044475.P10263957336330423501

`A051516(A034474(n))+A044094(n+1)`
-/

namespace A044475.P10263957336330423501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A034474 n).toNat + A044094 (n + 1)

end

end A044475.P10263957336330423501

/-! ## A044475.P5158116147300685114

`A353968(A353970(2*n+1)+A353969(n+5))`
-/

namespace A044475.P5158116147300685114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353968 (A353970 (2 * n + 1) + A353969 (n + 5)).toNat

end

end A044475.P5158116147300685114

/-!
# A044476: Numbers n such that string 3,3 occurs in the base 5 representation of n but not of n+1.

The programs for A044476, there is no canonical definition to state claims against.
-/

/-! ## A044476.P8915220091513072203

`A000002(A081714(n)+1)+25*n+17`
-/

namespace A044476.P8915220091513072203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A081714 n + 1).toNat + (25 * n + 17 : ℤ)

end

end A044476.P8915220091513072203

/-! ## A044476.P5429487699889726164

`A329991(8*n+1)+A002264(A329840(4*n+13))`
-/

namespace A044476.P5429487699889726164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329991 (8 * n + 1) + A002264 (A329840 (4 * n + 13)).toNat

end

end A044476.P5429487699889726164

/-! ## A044476.P7463962843547963996

`A163581(A000326(n))+A016885(A016885(n))`
-/

namespace A044476.P7463962843547963996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163581 (A000326 n).toNat + A016885 (A016885 n).toNat

end

end A044476.P7463962843547963996

/-!
# A044477: Numbers n such that string 3,4 occurs in the base 5 representation of n but not of n+1.

The programs for A044477, there is no canonical definition to state claims against.
-/

/-! ## A044477.P9783398817463661545

`∩[A043895(n+1), A112082(n+1)]`
-/

namespace A044477.P9783398817463661545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044477.P9783398817463661545

/-!
# A044478: Numbers n such that string 4,0 occurs in the base 5 representation of n but not of n+1.

The programs for A044478, there is no canonical definition to state claims against.
-/

/-! ## A044478.P5756631937678004563

`∩[A043889(n+1), A110095(n+1)]`
-/

namespace A044478.P5756631937678004563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044478.P5756631937678004563

/-!
# A044481: Numbers n such that string 4,3 occurs in the base 5 representation of n but not of n+1.

The programs for A044481, there is no canonical definition to state claims against.
-/

/-! ## A044481.P9376154232656515538

`A247815(p?[A129767(A044480(n+1))])`
-/

namespace A044481.P9376154232656515538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (A044480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247815 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A044481.P9376154232656515538

/-! ## A044481.P13120157923754426049

`∩[A044478(n+1), A233583(2*(n+2))]-A044099(n+1)`
-/

namespace A044481.P13120157923754426049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A044099 (n + 1)

end

end A044481.P13120157923754426049

/-! ## A044481.P6820537405778175814

`A060904(A044100(n+1))+A044480(A187829(n+1))`
-/

namespace A044481.P6820537405778175814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (A044100 (n + 1)).toNat + A044480 (A187829 (n + 1)).toNat

end

end A044481.P6820537405778175814

/-! ## A044481.P16670372080052225714

`A060904(A044107(n+1))+A044480(A187829(n+1))`
-/

namespace A044481.P16670372080052225714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (A044107 (n + 1)).toNat + A044480 (A187829 (n + 1)).toNat

end

end A044481.P16670372080052225714

/-! ## A044481.P7092702156759321031

`or(A044100(n+1), A159799(A211849(n+1)))`
-/

namespace A044481.P7092702156759321031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044100 (n + 1)) (A159799 (A211849 (n + 1)).toNat)

end

end A044481.P7092702156759321031

/-!
# A044483: Numbers n such that string 0,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044483, there is no canonical definition to state claims against.
-/

/-! ## A044483.P4751916891388501142

`A350055(n)+A234959(A187829(n+1))`
-/

namespace A044483.P4751916891388501142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n + A234959 (A187829 (n + 1)).toNat

end

end A044483.P4751916891388501142

/-! ## A044483.P17308318772286049007

`A044102(A187829(n+1))+A234959(n+1)-1`
-/

namespace A044483.P17308318772286049007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A187829 (n + 1)).toNat + (A234959 (n + 1) - 1)

end

end A044483.P17308318772286049007

/-! ## A044483.P12018791181546607468

`∑[A107833(Δ[A043897(2*n+1)])]`
-/

namespace A044483.P12018791181546607468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043897 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107833 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044483.P12018791181546607468

/-! ## A044483.P11140238934383933651

`A350055(n)+A350009(A334491(n+1))`
-/

namespace A044483.P11140238934383933651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n + A350009 (A334491 (n + 1)).toNat

end

end A044483.P11140238934383933651

/-! ## A044483.P10102771943008364125

`A306419(A140987(n+1))+A044137(n+1)`
-/

namespace A044483.P10102771943008364125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306419 (A140987 (n + 1)).toNat + A044137 (n + 1)

end

end A044483.P10102771943008364125

/-!
# A044484: Numbers n such that string 0,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044484, there is no canonical definition to state claims against.
-/

/-! ## A044484.P3643090146627004441

`A124741(A044104(n+1))`
-/

namespace A044484.P3643090146627004441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044104 (n + 1)).toNat

end

end A044484.P3643090146627004441

/-!
# A044485: Numbers n such that string 0,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044485, there is no canonical definition to state claims against.
-/

/-! ## A044485.P14427380864242892285

`A233583(A044105(n+1))`
-/

namespace A044485.P14427380864242892285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044105 (n + 1)).toNat

end

end A044485.P14427380864242892285

/-!
# A044486: Numbers n such that string 0,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044486, there is no canonical definition to state claims against.
-/

/-! ## A044486.P17534639626769443913

`A124741(A044106(n+1))`
-/

namespace A044486.P17534639626769443913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044106 (n + 1)).toNat

end

end A044486.P17534639626769443913

/-!
# A044487: Numbers n such that string 0,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044487, there is no canonical definition to state claims against.
-/

/-! ## A044487.P17553677630032842856

`A233583(A044107(n+1))`
-/

namespace A044487.P17553677630032842856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044107 (n + 1)).toNat

end

end A044487.P17553677630032842856

/-!
# A044488: Numbers n such that string 0,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044488, there is no canonical definition to state claims against.
-/

/-! ## A044488.P14828668225407347071

`filter[A043900(n+1), A179770(#)]`
-/

namespace A044488.P14828668225407347071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179770 (f1 j).toNat = 1) n)

end

end A044488.P14828668225407347071

/-! ## A044488.P18019394016241398548

`∩[A043900(n+1), A364728(n+1)]`
-/

namespace A044488.P18019394016241398548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044488.P18019394016241398548

/-!
# A044489: Numbers n such that string 1,0 occurs in the base 6 representation of n but not of n+1.

The programs for A044489, there is no canonical definition to state claims against.
-/

/-! ## A044489.P4245728834928522569

`∩[A043896(n+1), A236864(n+1)]`
-/

namespace A044489.P4245728834928522569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044489.P4245728834928522569

/-! ## A044489.P5700428767573709387

`∩[A043896(n+1), A074902(n+1)]`
-/

namespace A044489.P5700428767573709387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044489.P5700428767573709387

/-! ## A044489.P9919745284295726427

`∩[A043896(n+1), A230060(n+1)]`
-/

namespace A044489.P9919745284295726427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044489.P9919745284295726427

/-! ## A044489.P15253524712690707514

`∩[A043896(n+1), A381223(n+1)]`
-/

namespace A044489.P15253524712690707514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044489.P15253524712690707514

/-! ## A044489.P10782172438245782085

`record[A017581(3*n)/A258383(A002445(n+4)+5)]+1`
-/

namespace A044489.P10782172438245782085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017581 (3 * n) : ℚ) / (A258383 (A002445 (n + 4) + 5).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A044489.P10782172438245782085

/-!
# A044491: Numbers n such that string 1,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044491, there is no canonical definition to state claims against.
-/

/-! ## A044491.P13081891256220767530

`A044111(A061603(n)+n)-1`
-/

namespace A044491.P13081891256220767530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (A061603 n + (n : ℤ)).toNat - 1

end

end A044491.P13081891256220767530

/-! ## A044491.P7934491093140813317

`A044111(n+1)-A159713(n)!`
-/

namespace A044491.P7934491093140813317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (n + 1) - (Nat.factorial (A159713 n).toNat : ℤ)

end

end A044491.P7934491093140813317

/-! ## A044491.P5713019332684325615

`A044111(n+1)+A037861(A061603(n))`
-/

namespace A044491.P5713019332684325615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (n + 1) + A037861 (A061603 n).toNat

end

end A044491.P5713019332684325615

/-! ## A044491.P15700524337218965212

`A044111(n+1)+A008683(A096640(n))`
-/

namespace A044491.P15700524337218965212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (n + 1) + A008683 (A096640 n).toNat

end

end A044491.P15700524337218965212

/-! ## A044491.P9585272896944425512

`A044111(n+1)+A008683(A359292(n))`
-/

namespace A044491.P9585272896944425512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044111 (n + 1) + A008683 (A359292 n).toNat

end

end A044491.P9585272896944425512

/-!
# A044492: Numbers n such that string 1,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044492, there is no canonical definition to state claims against.
-/

/-! ## A044492.P16817053883175999707

`A044112(n+1)+A008683(A051301(n))`
-/

namespace A044492.P16817053883175999707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) + A008683 (A051301 n).toNat

end

end A044492.P16817053883175999707

/-! ## A044492.P330717431361534943

`A044112(n+1)-A057427(A002203(n))`
-/

namespace A044492.P330717431361534943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) - A057427 (A002203 n).toNat

end

end A044492.P330717431361534943

/-! ## A044492.P4916600063567415094

`A044112(n+1)-A057427(A055887(n))`
-/

namespace A044492.P4916600063567415094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) - A057427 (A055887 n).toNat

end

end A044492.P4916600063567415094

/-! ## A044492.P17180178594192245879

`A044112(n+1)-A003557(A309863(n))`
-/

namespace A044492.P17180178594192245879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) - A003557 (A309863 n).toNat

end

end A044492.P17180178594192245879

/-! ## A044492.P976971415841433278

`A044112(n+1)-A049419(A382308(n))`
-/

namespace A044492.P976971415841433278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044112 (n + 1) - A049419 (A382308 n).toNat

end

end A044492.P976971415841433278

/-!
# A044493: Numbers n such that string 1,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044493, there is no canonical definition to state claims against.
-/

/-! ## A044493.P10151168364035374035

`A044113(n+1)-A001222(A074478(n))`
-/

namespace A044493.P10151168364035374035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044113 (n + 1) - A001222 (A074478 n).toNat

end

end A044493.P10151168364035374035

/-! ## A044493.P4003084095710085530

`A044113(n+1)-A285851(A250286(n))`
-/

namespace A044493.P4003084095710085530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044113 (n + 1) - A285851 (A250286 n).toNat

end

end A044493.P4003084095710085530

/-! ## A044493.P13764788084000716845

`A044113(n+1)-A001222(A074477(n+1))`
-/

namespace A044493.P13764788084000716845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044113 (n + 1) - A001222 (A074477 (n + 1)).toNat

end

end A044493.P13764788084000716845

/-! ## A044493.P134607363727533566

`A044113(n+1)-A008966(A087788(n+1))`
-/

namespace A044493.P134607363727533566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044113 (n + 1) - A008966 (A087788 (n + 1)).toNat

end

end A044493.P134607363727533566

/-! ## A044493.P9294450020226677719

`A395541(A044113(n+1))`
-/

namespace A044493.P9294450020226677719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395541 (A044113 (n + 1)).toNat

end

end A044493.P9294450020226677719

/-!
# A044494: Numbers n such that string 1,5 occurs in the base 6 representation of n but not of n+1.

The programs for A044494, there is no canonical definition to state claims against.
-/

/-! ## A044494.P14949804729216762233

`A044114(n+1)-A179382(2^n)`
-/

namespace A044494.P14949804729216762233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A179382 (2 ^ n)

end

end A044494.P14949804729216762233

/-! ## A044494.P15510785015464351413

`A044114(n+1)-A014963(A251887(n+1))`
-/

namespace A044494.P15510785015464351413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A014963 (A251887 (n + 1)).toNat

end

end A044494.P15510785015464351413

/-! ## A044494.P7758536026421468356

`A044114(n+1)-A054977(A263534(n+1))`
-/

namespace A044494.P7758536026421468356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A054977 (A263534 (n + 1)).toNat

end

end A044494.P7758536026421468356

/-! ## A044494.P13620642544112302858

`A044114(n+1)-A309397(A206037(n+1))`
-/

namespace A044494.P13620642544112302858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A309397 (A206037 (n + 1)).toNat

end

end A044494.P13620642544112302858

/-! ## A044494.P6524302339022600436

`A044114(n+1)-A185116(A242994(2*(n+2)))`
-/

namespace A044494.P6524302339022600436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) - A185116 (A242994 (2 * (n + 2))).toNat

end

end A044494.P6524302339022600436

/-!
# A044495: Numbers k such that string 2,0 occurs in the base 6 representation of k but not of k+1.

The programs for A044495, there is no canonical definition to state claims against.
-/

/-! ## A044495.P3043950788393854611

`A044115(A077168(n))-1`
-/

namespace A044495.P3043950788393854611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044115 (A077168 n).toNat - 1

end

end A044495.P3043950788393854611

/-! ## A044495.P6098753723296686275

`A044115(n+1)-A251725(2^n)`
-/

namespace A044495.P6098753723296686275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044115 (n + 1) - A251725 (2 ^ n)

end

end A044495.P6098753723296686275

/-! ## A044495.P18195386770566395644

`A044115(n+1)-A284252(2^n)`
-/

namespace A044495.P18195386770566395644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044115 (n + 1) - A284252 (2 ^ n)

end

end A044495.P18195386770566395644

/-! ## A044495.P13932688918614176747

`A057428(A000079(n))+A044115(n+1)`
-/

namespace A044495.P13932688918614176747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000079 n).toNat + A044115 (n + 1)

end

end A044495.P13932688918614176747

/-! ## A044495.P7564098602668758963

`A044115(n+1)-A000035(A000605(n))`
-/

namespace A044495.P7564098602668758963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044115 (n + 1) - A000035 (A000605 n).toNat

end

end A044495.P7564098602668758963

/-!
# A044496: Numbers n such that string 2,1 occurs in the base 6 representation of n but not of n+1.

The programs for A044496, there is no canonical definition to state claims against.
-/

/-! ## A044496.P5518866312895016546

`A044114(n+1)+A014963(A282415(n))`
-/

namespace A044496.P5518866312895016546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044114 (n + 1) + A014963 (A282415 n).toNat

end

end A044496.P5518866312895016546

/-!
# A044497: Numbers n such that string 2,2 occurs in the base 6 representation of n but not of n+1.

The programs for A044497, there is no canonical definition to state claims against.
-/

/-! ## A044497.P10416913202242514954

`A059809(A229293(2*n))+A019557(2*n+1)`
-/

namespace A044497.P10416913202242514954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059809 (A229293 (2 * n)).toNat + A019557 (2 * n + 1)

end

end A044497.P10416913202242514954

/-! ## A044497.P10063861936566427793

`A017605(3*n+1)-A083945(A188523(3*n+5))`
-/

namespace A044497.P10063861936566427793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (3 * n + 1) - A083945 (A188523 (3 * n + 5)).toNat

end

end A044497.P10063861936566427793

/-!
# A044498: Numbers n such that string 2,3 occurs in the base 6 representation of n but not of n+1.

The programs for A044498, there is no canonical definition to state claims against.
-/

/-! ## A044498.P16421819092503319868

`A044118(n+1)-A001055(A050266(n+1))`
-/

namespace A044498.P16421819092503319868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (n + 1) - A001055 (A050266 (n + 1)).toNat

end

end A044498.P16421819092503319868

/-! ## A044498.P2470843995175564170

`A044118(n+1)-A381735(A005897(3*n+1))`
-/

namespace A044498.P2470843995175564170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (n + 1) - A381735 (A005897 (3 * n + 1)).toNat

end

end A044498.P2470843995175564170

/-! ## A044498.P3438525703939211322

`A044118(A000005(2^n))-1`
-/

namespace A044498.P3438525703939211322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (A000005 (2 ^ n)).toNat - 1

end

end A044498.P3438525703939211322

/-! ## A044498.P3149729778704718786

`A044118(n+1)+A008683(A014210(n))`
-/

namespace A044498.P3149729778704718786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (n + 1) + A008683 (A014210 n).toNat

end

end A044498.P3149729778704718786

/-! ## A044498.P2618756418573538397

`A044118(n+1)+A008683(A104080(n))`
-/

namespace A044498.P2618756418573538397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (n + 1) + A008683 (A104080 n).toNat

end

end A044498.P2618756418573538397

/-!
# A044499: Numbers n such that string 2,4 occurs in the base 6 representation of n but not of n+1.

The programs for A044499, there is no canonical definition to state claims against.
-/

/-! ## A044499.P12951820057395571284

`A044119(∑[∑[A151838(n)]])-1`
-/

namespace A044499.P12951820057395571284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044119 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A044499.P12951820057395571284

/-! ## A044499.P5792655922900440249

`A044119(n+1)-A151838(n)!`
-/

namespace A044499.P5792655922900440249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044119 (n + 1) - (Nat.factorial (A151838 n).toNat : ℤ)

end

end A044499.P5792655922900440249

/-! ## A044499.P11262390806127195828

`A138153(or(A044119(n+1), A151838(n)))`
-/

namespace A044499.P11262390806127195828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (Int.lor (A044119 (n + 1)) (A151838 n)).toNat

end

end A044499.P11262390806127195828

/-! ## A044499.P15894272976644430078

`A044119(n+1)-A000041(A151838(n)²)`
-/

namespace A044499.P15894272976644430078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044119 (n + 1) - A000041 (A151838 n ^ 2).toNat

end

end A044499.P15894272976644430078

/-! ## A044499.P5040164204922875155

`A044119(n+1)-A054977(A296562(n+1))`
-/

namespace A044499.P5040164204922875155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044119 (n + 1) - A054977 (A296562 (n + 1)).toNat

end

end A044499.P5040164204922875155

