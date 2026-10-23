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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A211800: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2*w^2 < x^2 + y^2.

The programs for A211800, there is no canonical definition to state claims against.
-/

/-! ## A211800.P6119268730801927038

`Δ[∑[n]²]-A211803(n+1)`
-/

namespace A211800.P6119268730801927038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A211803 (n + 1)

end

end A211800.P6119268730801927038

/-! ## A211800.P1846087611819347201

`A182260(n+1)+A055232(n)-A211803(n+1)`
-/

namespace A211800.P1846087611819347201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) + (A055232 n - A211803 (n + 1))

end

end A211800.P1846087611819347201

/-! ## A211800.P16063141387662917924

`A211807(n+1)+A211811(n+1)-A211803(n+1)`
-/

namespace A211800.P16063141387662917924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211807 (n + 1) + (A211811 (n + 1) - A211803 (n + 1))

end

end A211800.P16063141387662917924

/-! ## A211800.P6081707645025147745

`A211806(n+1)+A211810(n+1)-A211803(n+1)`
-/

namespace A211800.P6081707645025147745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211806 (n + 1) + (A211810 (n + 1) - A211803 (n + 1))

end

end A211800.P6081707645025147745

/-! ## A211800.P17907720601566162111

`A211801(n+1)+A211804(n+1)-A211803(n+1)`
-/

namespace A211800.P17907720601566162111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211801 (n + 1) + (A211804 (n + 1) - A211803 (n + 1))

end

end A211800.P17907720601566162111

/-!
# A211801: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^3

The programs for A211801, there is no canonical definition to state claims against.
-/

/-! ## A211801.P8667783261607731571

`A211807(n+1)-(n+1)`
-/

namespace A211801.P8667783261607731571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211807 (n + 1) - (n + 1 : ℤ)

end

end A211801.P8667783261607731571

/-! ## A211801.P10196895728606829176

`(n+1)^3-A211804(n+1)`
-/

namespace A211801.P10196895728606829176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A211804 (n + 1)

end

end A211801.P10196895728606829176

/-! ## A211801.P18328519090443476218

`∑[A028896(n)]-A211811(n+1)`
-/

namespace A211801.P18328519090443476218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211811 (n + 1)

end

end A211801.P18328519090443476218

/-! ## A211801.P5850502862846678228

`A002412(n+1)+A000330(n)-A211804(n+1)`
-/

namespace A211801.P5850502862846678228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) + (A000330 n - A211804 (n + 1))

end

end A211801.P5850502862846678228

/-! ## A211801.P4532347990351368893

`A182260(n+1)+A055232(n)-A211804(n+1)`
-/

namespace A211801.P4532347990351368893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) + (A055232 n - A211804 (n + 1))

end

end A211801.P4532347990351368893

/-!
# A211802: R(k,n) = number of ordered triples (w,x,y) with all terms in {1,...,n} and 2*w^k < x^k + y^k; square array read by descending antidiagonals.

The programs for A211802, there is no canonical definition to state claims against.
-/

/-! ## A211802.P17407222550618900221

`A004736(n+1)^3-A211805(n+1)`
-/

namespace A211802.P17407222550618900221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 3 - A211805 (n + 1)

end

end A211802.P17407222550618900221

/-! ## A211802.P13317450970127751346

`A000578(A004736(n+1))-A211805(n+1)`
-/

namespace A211802.P13317450970127751346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004736 (n + 1)).toNat - A211805 (n + 1)

end

end A211802.P13317450970127751346

/-! ## A211802.P14397219851998259745

`A000578(A025581(n)+1)-A211805(n+1)`
-/

namespace A211802.P14397219851998259745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A025581 n + 1).toNat - A211805 (n + 1)

end

end A211802.P14397219851998259745

/-! ## A211802.P10210202905844204753

`A182259(n+1)+A211808(n+1)-A211805(n+1)`
-/

namespace A211802.P10210202905844204753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182259 (n + 1) + (A211808 (n + 1) - A211805 (n + 1))

end

end A211802.P10210202905844204753

/-! ## A211802.P7527909068835603261

`A048763(A211790(n+1))-A211805(n+1)`
-/

namespace A211802.P7527909068835603261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211790 (n + 1)).toNat - A211805 (n + 1)

end

end A211802.P7527909068835603261

/-! ## A211802.P1625828629848254532

`A048763(A211796(n+1))-A211805(n+1)`
-/

namespace A211802.P1625828629848254532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211796 (n + 1)).toNat - A211805 (n + 1)

end

end A211802.P1625828629848254532

/-! ## A211802.P13183087886916045899

`A211790(n+1)+A211793(n+1)-A211805(n+1)`
-/

namespace A211802.P13183087886916045899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211790 (n + 1) + (A211793 (n + 1) - A211805 (n + 1))

end

end A211802.P13183087886916045899

/-! ## A211802.P5892425656021531215

`A211796(n+1)+A211799(n+1)-A211805(n+1)`
-/

namespace A211802.P5892425656021531215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211796 (n + 1) + (A211799 (n + 1) - A211805 (n + 1))

end

end A211802.P5892425656021531215

/-!
# A211803: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^2>=x^2+y^2.

The programs for A211803, there is no canonical definition to state claims against.
-/

/-! ## A211803.P14684285514310436427

`Δ[∑[n]²]-A211800(n+1)`
-/

namespace A211803.P14684285514310436427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A211800 (n + 1)

end

end A211803.P14684285514310436427

/-! ## A211803.P10926414797632839209

`A182260(n+1)+A055232(n)-A211800(n+1)`
-/

namespace A211803.P10926414797632839209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) + (A055232 n - A211800 (n + 1))

end

end A211803.P10926414797632839209

/-! ## A211803.P6992532291520497134

`A211807(n+1)+A211811(n+1)-A211800(n+1)`
-/

namespace A211803.P6992532291520497134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211807 (n + 1) + (A211811 (n + 1) - A211800 (n + 1))

end

end A211803.P6992532291520497134

/-! ## A211803.P4124888168198510121

`A211806(n+1)+A211810(n+1)-A211800(n+1)`
-/

namespace A211803.P4124888168198510121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211806 (n + 1) + (A211810 (n + 1) - A211800 (n + 1))

end

end A211803.P4124888168198510121

/-! ## A211803.P13668677060363336812

`A211801(n+1)+A211804(n+1)-A211800(n+1)`
-/

namespace A211803.P13668677060363336812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211801 (n + 1) + (A211804 (n + 1) - A211800 (n + 1))

end

end A211803.P13668677060363336812

/-!
# A211804: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^3>=x^3+y^3.

The programs for A211804, there is no canonical definition to state claims against.
-/

/-! ## A211804.P10690462602688816932

`A211811(n+1)+1+n`
-/

namespace A211804.P10690462602688816932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211811 (n + 1) + 1 + (n : ℤ)

end

end A211804.P10690462602688816932

/-! ## A211804.P1370088472086057582

`record[A211811(A065648(n))+A065648(n)]`
-/

namespace A211804.P1370088472086057582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211811 (A065648 n).toNat + A065648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211804.P1370088472086057582

/-! ## A211804.P10515134627530945664

`record[A211811(A133310(n))+A133310(n)]`
-/

namespace A211804.P10515134627530945664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211811 (A133310 n).toNat + A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211804.P10515134627530945664

/-! ## A211804.P9697951765224098286

`record[A211811(A154958(n))+A154958(n)]`
-/

namespace A211804.P9697951765224098286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211811 (A154958 n).toNat + A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211804.P9697951765224098286

/-! ## A211804.P17565496077190218225

`(n+1)^3-A211801(n+1)`
-/

namespace A211804.P17565496077190218225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A211801 (n + 1)

end

end A211804.P17565496077190218225

/-! ## A211804.P1457365792298847165

`A002412(n+1)+A000330(n)-A211801(n+1)`
-/

namespace A211804.P1457365792298847165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) + (A000330 n - A211801 (n + 1))

end

end A211804.P1457365792298847165

/-!
# A211805: Rectangular array: R(k,n) = number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^k>=x^k+y

The programs for A211805, there is no canonical definition to state claims against.
-/

/-! ## A211805.P3602790220633192203

`A004736(n+1)^3-A211802(n+1)`
-/

namespace A211805.P3602790220633192203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 3 - A211802 (n + 1)

end

end A211805.P3602790220633192203

/-! ## A211805.P11143081029851829548

`A000578(A004736(n+1))-A211802(n+1)`
-/

namespace A211805.P11143081029851829548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004736 (n + 1)).toNat - A211802 (n + 1)

end

end A211805.P11143081029851829548

/-! ## A211805.P5786166686680124949

`A062292(A127739(n+1)-n)-A211802(n+1)`
-/

namespace A211805.P5786166686680124949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062292 (A127739 (n + 1) - (n : ℤ)).toNat - A211802 (n + 1)

end

end A211805.P5786166686680124949

/-! ## A211805.P8317206887970031054

`A182259(n+1)+A211808(n+1)-A211802(n+1)`
-/

namespace A211805.P8317206887970031054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182259 (n + 1) + (A211808 (n + 1) - A211802 (n + 1))

end

end A211805.P8317206887970031054

/-! ## A211805.P1749066553936169155

`A048763(A211790(n+1))-A211802(n+1)`
-/

namespace A211805.P1749066553936169155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211790 (n + 1)).toNat - A211802 (n + 1)

end

end A211805.P1749066553936169155

/-! ## A211805.P15906929658733920257

`A048763(A211796(n+1))-A211802(n+1)`
-/

namespace A211805.P15906929658733920257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211796 (n + 1)).toNat - A211802 (n + 1)

end

end A211805.P15906929658733920257

/-! ## A211805.P2034771812150020182

`A211790(n+1)+A211793(n+1)-A211802(n+1)`
-/

namespace A211805.P2034771812150020182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211790 (n + 1) + (A211793 (n + 1) - A211802 (n + 1))

end

end A211805.P2034771812150020182

/-! ## A211805.P9461836343570683763

`A211796(n+1)+A211799(n+1)-A211802(n+1)`
-/

namespace A211805.P9461836343570683763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211796 (n + 1) + (A211799 (n + 1) - A211802 (n + 1))

end

end A211805.P9461836343570683763

/-!
# A211806: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^2<=x^2+y^2.

The programs for A211806, there is no canonical definition to state claims against.
-/

/-! ## A211806.P16871635685940478768

`(n+1)^3-A211810(n+1)`
-/

namespace A211806.P16871635685940478768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A211810 (n + 1)

end

end A211806.P16871635685940478768

/-! ## A211806.P4130743466820214532

`A211800(n+1)+A211803(n+1)-A211810(n+1)`
-/

namespace A211806.P4130743466820214532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211800 (n + 1) + (A211803 (n + 1) - A211810 (n + 1))

end

end A211806.P4130743466820214532

/-! ## A211806.P10393785837227206661

`A211807(n+1)+A211811(n+1)-A211810(n+1)`
-/

namespace A211806.P10393785837227206661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211807 (n + 1) + (A211811 (n + 1) - A211810 (n + 1))

end

end A211806.P10393785837227206661

/-! ## A211806.P14889248239120147232

`A184628(n+1)%A211807(n+1)+A211807(n+1)-A211810(n+1)`
-/

namespace A211806.P14889248239120147232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) (A211807 (n + 1)) + (A211807 (n + 1) - A211810 (n + 1))

end

end A211806.P14889248239120147232

/-! ## A211806.P3158923830422425073

`A211801(n+1)+A211804(n+1)-A211810(n+1)`
-/

namespace A211806.P3158923830422425073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211801 (n + 1) + (A211804 (n + 1) - A211810 (n + 1))

end

end A211806.P3158923830422425073

/-!
# A211807: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^3<=x^3+y^3.

The programs for A211807, there is no canonical definition to state claims against.
-/

/-! ## A211807.P5834688803604152127

`(n+1)^3-A211811(n+1)`
-/

namespace A211807.P5834688803604152127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A211811 (n + 1)

end

end A211807.P5834688803604152127

/-! ## A211807.P17070669308508480442

`A211801(n+1)+1+n`
-/

namespace A211807.P17070669308508480442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211801 (n + 1) + 1 + (n : ℤ)

end

end A211807.P17070669308508480442

/-! ## A211807.P13809002295350190878

`record[A211801(A065648(n))+A065648(n)]`
-/

namespace A211807.P13809002295350190878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211801 (A065648 n).toNat + A065648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211807.P13809002295350190878

/-! ## A211807.P932850437318755910

`record[A211801(A154958(n))+A154958(n)]`
-/

namespace A211807.P932850437318755910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211801 (A154958 n).toNat + A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211807.P932850437318755910

/-! ## A211807.P16693766946650473206

`record[A291769(n)+A211801(A291769(n))]`
-/

namespace A211807.P16693766946650473206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n + A211801 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211807.P16693766946650473206

/-!
# A211808: Rectangular array: R(k,n) = number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^k<=x^k+y

The programs for A211808, there is no canonical definition to state claims against.
-/

/-! ## A211808.P558597609589462046

`A004736(n+1)^3-A182259(n+1)`
-/

namespace A211808.P558597609589462046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 3 - A182259 (n + 1)

end

end A211808.P558597609589462046

/-! ## A211808.P8979896421922712473

`(A025581(n)+1)^3-A182259(n+1)`
-/

namespace A211808.P8979896421922712473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) ^ 3 - A182259 (n + 1)

end

end A211808.P8979896421922712473

/-! ## A211808.P1988649540545154324

`A000578(A004736(n+1))-A182259(n+1)`
-/

namespace A211808.P1988649540545154324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004736 (n + 1)).toNat - A182259 (n + 1)

end

end A211808.P1988649540545154324

/-! ## A211808.P13756117112366447820

`A000578(A025581(n)+1)-A182259(n+1)`
-/

namespace A211808.P13756117112366447820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A025581 n + 1).toNat - A182259 (n + 1)

end

end A211808.P13756117112366447820

/-! ## A211808.P9343958640648084950

`A211802(n+1)+A211805(n+1)-A182259(n+1)`
-/

namespace A211808.P9343958640648084950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211802 (n + 1) + (A211805 (n + 1) - A182259 (n + 1))

end

end A211808.P9343958640648084950

/-! ## A211808.P14760763173377914156

`A048763(A211790(n+1))-A182259(n+1)`
-/

namespace A211808.P14760763173377914156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211790 (n + 1)).toNat - A182259 (n + 1)

end

end A211808.P14760763173377914156

/-! ## A211808.P678078536759726423

`A048763(A211796(n+1))-A182259(n+1)`
-/

namespace A211808.P678078536759726423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211796 (n + 1)).toNat - A182259 (n + 1)

end

end A211808.P678078536759726423

/-! ## A211808.P17124076527695948534

`A211790(n+1)+A211793(n+1)-A182259(n+1)`
-/

namespace A211808.P17124076527695948534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211790 (n + 1) + (A211793 (n + 1) - A182259 (n + 1))

end

end A211808.P17124076527695948534

/-! ## A211808.P13712453197902405328

`A211796(n+1)+A211799(n+1)-A182259(n+1)`
-/

namespace A211808.P13712453197902405328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211796 (n + 1) + (A211799 (n + 1) - A182259 (n + 1))

end

end A211808.P13712453197902405328

/-!
# A211809: Number of 4-tuples (w,x,y,z) with all terms in {1,...,n} and w*x >= 2*y*z.

The programs for A211809, there is no canonical definition to state claims against.
-/

/-! ## A211809.P1059300374578839368

`n^4-A211795(n)`
-/

namespace A211809.P1059300374578839368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211795 n

end

end A211809.P1059300374578839368

/-! ## A211809.P11249790899680907442

`A212019(n)+A211797(n)`
-/

namespace A211809.P11249790899680907442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212019 n + A211797 n

end

end A211809.P11249790899680907442

/-! ## A211809.P3407458660304725944

`abs(A000583(n)-A211795(n))`
-/

namespace A211809.P3407458660304725944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211795 n|

end

end A211809.P3407458660304725944

/-! ## A211809.P1427714180441302320

`A002523(n)-(A211795(n)+1)`
-/

namespace A211809.P1427714180441302320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A211795 n + 1)

end

end A211809.P1427714180441302320

/-! ## A211809.P21140975752456443

`1-(A211795(n)+A024002(n))`
-/

namespace A211809.P21140975752456443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A211795 n + A024002 n)

end

end A211809.P21140975752456443

/-! ## A211809.P2171119301117663244

`abs(A000290(n)²-A211795(n))`
-/

namespace A211809.P2171119301117663244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A211795 n|

end

end A211809.P2171119301117663244

/-! ## A211809.P10882621738040311581

`n²²%A211795(A028310(n))`
-/

namespace A211809.P10882621738040311581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2) ^ 2 : ℤ) (A211795 (A028310 n).toNat)

end

end A211809.P10882621738040311581

/-! ## A211809.P2491427864064477120

`A211787(n)+A211797(n)-A211795(n)`
-/

namespace A211809.P2491427864064477120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A211795 n)

end

end A211809.P2491427864064477120

/-! ## A211809.P1869514646131122444

`A211812(n)+A211918(n)-A211795(n)`
-/

namespace A211809.P1869514646131122444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n + (A211918 n - A211795 n)

end

end A211809.P1869514646131122444

/-! ## A211809.P3494068631924006088

`A211917(n)+A211919(n)-A211795(n)`
-/

namespace A211809.P3494068631924006088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211917 n + (A211919 n - A211795 n)

end

end A211809.P3494068631924006088

/-! ## A211809.P4943529609663479872

`A211920(n)+A211923(n)-A211795(n)`
-/

namespace A211809.P4943529609663479872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211920 n + (A211923 n - A211795 n)

end

end A211809.P4943529609663479872

/-! ## A211809.P16408881352773773640

`A212053(n)+A212054(n)-A211795(n)`
-/

namespace A211809.P16408881352773773640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n + (A212054 n - A211795 n)

end

end A211809.P16408881352773773640

/-! ## A211809.P17852789573691157916

`A212055(n)+A212056(n)-A211795(n)`
-/

namespace A211809.P17852789573691157916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212055 n + (A212056 n - A211795 n)

end

end A211809.P17852789573691157916

/-! ## A211809.P5226872757090403321

`A212057(n)+A212058(n)-A211795(n)`
-/

namespace A211809.P5226872757090403321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212057 n + (A212058 n - A211795 n)

end

end A211809.P5226872757090403321

/-! ## A211809.P1017092712943612623

`A212063(n)+A212064(n)-A211795(n)`
-/

namespace A211809.P1017092712943612623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + (A212064 n - A211795 n)

end

end A211809.P1017092712943612623

/-! ## A211809.P13452876850793811896

`A212065(n)+A212066(n)-A211795(n)`
-/

namespace A211809.P13452876850793811896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n + (A212066 n - A211795 n)

end

end A211809.P13452876850793811896

/-! ## A211809.P4703528262668676623

`A212088(n)+A212089(n)-A211795(n)`
-/

namespace A211809.P4703528262668676623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A211795 n)

end

end A211809.P4703528262668676623

/-! ## A211809.P16919480041795256484

`A212092(n)+A212095(n)-A211795(n)`
-/

namespace A211809.P16919480041795256484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A211795 n)

end

end A211809.P16919480041795256484

/-! ## A211809.P13742629807668119353

`A212093(n)+A212094(n)-A211795(n)`
-/

namespace A211809.P13742629807668119353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212093 n + (A212094 n - A211795 n)

end

end A211809.P13742629807668119353

/-! ## A211809.P5280445997864948825

`A212097(n)+A212100(n)-A211795(n)`
-/

namespace A211809.P5280445997864948825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212097 n + (A212100 n - A211795 n)

end

end A211809.P5280445997864948825

/-!
# A211810: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^2>x^2+y^2.

The programs for A211810, there is no canonical definition to state claims against.
-/

/-! ## A211810.P10890719084233361305

`(n+1)^3-A211806(n+1)`
-/

namespace A211810.P10890719084233361305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A211806 (n + 1)

end

end A211810.P10890719084233361305

/-! ## A211810.P1433186710298067609

`A000578(n+1)%A211806(n+1)`
-/

namespace A211810.P1433186710298067609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (n + 1)) (A211806 (n + 1))

end

end A211810.P1433186710298067609

/-! ## A211810.P14036571937374296780

`A184628(n+1)%A211806(n+1)`
-/

namespace A211810.P14036571937374296780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) (A211806 (n + 1))

end

end A211810.P14036571937374296780

/-! ## A211810.P13392196363561741959

`A006501(A008486(n))%A211806(n+1)`
-/

namespace A211810.P13392196363561741959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006501 (A008486 n).toNat) (A211806 (n + 1))

end

end A211810.P13392196363561741959

/-! ## A211810.P3196120502076867322

`A002412(n+1)+A000330(n)-A211806(n+1)`
-/

namespace A211810.P3196120502076867322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) + (A000330 n - A211806 (n + 1))

end

end A211810.P3196120502076867322

/-! ## A211810.P15683575544620349969

`A211807(n+1)+A211811(n+1)-A211806(n+1)`
-/

namespace A211810.P15683575544620349969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211807 (n + 1) + (A211811 (n + 1) - A211806 (n + 1))

end

end A211810.P15683575544620349969

/-! ## A211810.P7813898023542809583

`A066023(n+1)%A211806(n+1)`
-/

namespace A211810.P7813898023542809583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066023 (n + 1)) (A211806 (n + 1))

end

end A211810.P7813898023542809583

/-!
# A211811: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w^3>x^3+y^3.

The programs for A211811, there is no canonical definition to state claims against.
-/

/-! ## A211811.P5018221617682012990

`(n+1)^3-A211807(n+1)`
-/

namespace A211811.P5018221617682012990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A211807 (n + 1)

end

end A211811.P5018221617682012990

/-! ## A211811.P4466541596336588612

`A184628(n+1)%A211807(n+1)`
-/

namespace A211811.P4466541596336588612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184628 (n + 1)) (A211807 (n + 1))

end

end A211811.P4466541596336588612

/-! ## A211811.P17669595767109127438

`A002412(n+1)+A000330(n)-A211807(n+1)`
-/

namespace A211811.P17669595767109127438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) + (A000330 n - A211807 (n + 1))

end

end A211811.P17669595767109127438

/-! ## A211811.P2829717292891981902

`A211804(n+1)-(n+1)`
-/

namespace A211811.P2829717292891981902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211804 (n + 1) - (n + 1 : ℤ)

end

end A211811.P2829717292891981902

/-! ## A211811.P6093976934885920401

`record[A211804(A065648(n))-A065648(n)]`
-/

namespace A211811.P6093976934885920401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211804 (A065648 n).toNat - A065648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211811.P6093976934885920401

/-! ## A211811.P11357222536219514709

`record[A211804(A154958(n))-A154958(n)]`
-/

namespace A211811.P11357222536219514709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211804 (A154958 n).toNat - A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211811.P11357222536219514709

/-! ## A211811.P18313185455144319444

`A211806(n+1)+A211810(n+1)-A211807(n+1)`
-/

namespace A211811.P18313185455144319444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211806 (n + 1) + (A211810 (n + 1) - A211807 (n + 1))

end

end A211811.P18313185455144319444

/-! ## A211811.P14353388224411765568

`A051925(n+1)+A016061(n)-A211801(n+1)`
-/

namespace A211811.P14353388224411765568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (n + 1) + (A016061 n - A211801 (n + 1))

end

end A211811.P14353388224411765568

/-! ## A211811.P5392059425501596630

`A066023(n+1)%A211807(n+1)`
-/

namespace A211811.P5392059425501596630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066023 (n + 1)) (A211807 (n + 1))

end

end A211811.P5392059425501596630

/-!
# A211812: Number of 4-tuples (w,x,y,z) with all terms in {1,...,n} and w*x<=3*y*z.

The programs for A211812, there is no canonical definition to state claims against.
-/

/-! ## A211812.P13176372169809562538

`n^4-A211918(n)`
-/

namespace A211812.P13176372169809562538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211918 n

end

end A211812.P13176372169809562538

/-! ## A211812.P11813497017939254940

`abs(A000583(n)-A211918(n))`
-/

namespace A211812.P11813497017939254940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211918 n|

end

end A211812.P11813497017939254940

/-! ## A211812.P3124564598392852004

`A212020(n)+n^4-A211919(n)`
-/

namespace A211812.P3124564598392852004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + ((n ^ 4 : ℤ) - A211919 n)

end

end A211812.P3124564598392852004

/-! ## A211812.P15664211261928879276

`n^4+A057428(n)*A211918(n)`
-/

namespace A211812.P15664211261928879276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) + A057428 n * A211918 n

end

end A211812.P15664211261928879276

/-! ## A211812.P16258245734885412788

`A000583(n)+A212020(n)-A211919(n)`
-/

namespace A211812.P16258245734885412788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + (A212020 n - A211919 n)

end

end A211812.P16258245734885412788

/-! ## A211812.P434840475637991943

`A000290(n)²+A212020(n)-A211919(n)`
-/

namespace A211812.P434840475637991943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 + (A212020 n - A211919 n)

end

end A211812.P434840475637991943

/-! ## A211812.P10762464070427581434

`A212020(n)+A002523(n)-(A211919(n)+1)`
-/

namespace A211812.P10762464070427581434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + (A002523 n - (A211919 n + 1))

end

end A211812.P10762464070427581434

/-! ## A211812.P13932941653940037549

`(A000583(n)-A211918(n))*A007318(C(n, n²))`
-/

namespace A211812.P13932941653940037549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211918 n) * A007318 (Nat.choose n (n ^ 2))

end

end A211812.P13932941653940037549

/-! ## A211812.P1008185453591395214

`(A000583(n)-A211918(n))*A000040(n+1)%2`
-/

namespace A211812.P1008185453591395214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211918 n) * Int.tmod (A000040 (n + 1)) 2

end

end A211812.P1008185453591395214

/-! ## A211812.P7209450767236025721

`(A000583(n)-A211918(n))*gcd(2, A000040(n+2))`
-/

namespace A211812.P7209450767236025721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211918 n) * (Int.gcd 2 (A000040 (n + 2)) : ℤ)

end

end A211812.P7209450767236025721

/-! ## A211812.P4075154802213720650

`(A000583(n)-A211918(n))*A007318(and(2, 1-n))`
-/

namespace A211812.P4075154802213720650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211918 n) * A007318 (Int.land 2 (1 - (n : ℤ))).toNat

end

end A211812.P4075154802213720650

/-! ## A211812.P4505591173706331143

`A212020(n)+A091940(n+1)-(A211919(n)+n)`
-/

namespace A211812.P4505591173706331143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + (A091940 (n + 1) - (A211919 n + (n : ℤ)))

end

end A211812.P4505591173706331143

/-! ## A211812.P11147392236619796236

`A000045(C(n, n+1))+A000583(n)-A211918(n)`
-/

namespace A211812.P11147392236619796236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (n + 1)) + (A000583 n - A211918 n)

end

end A211812.P11147392236619796236

/-! ## A211812.P17379491389870243590

`(A000583(n)-A211918(n))*A000010(ceil(3/(n+1)))`
-/

namespace A211812.P17379491389870243590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211918 n) * A000010 ⌈3 / (n + 1 : ℚ)⌉.toNat

end

end A211812.P17379491389870243590

/-! ## A211812.P15661875402724691170

`(A000583(n)-A211918(n))/A014963(lcm(2, 2*n+1))`
-/

namespace A211812.P15661875402724691170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211918 n : ℚ) / (A014963 (Nat.lcm 2 (2 * n + 1)) : ℚ)

end

end A211812.P15661875402724691170

/-! ## A211812.P12871663033163683585

`(A000583(n)-A211918(n))*A008683(A014963(n+1))²`
-/

namespace A211812.P12871663033163683585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211918 n) * A008683 (A014963 (n + 1)).toNat ^ 2

end

end A211812.P12871663033163683585

/-! ## A211812.P2416902007149835022

`A212020(n)+A211917(n)`
-/

namespace A211812.P2416902007149835022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + A211917 n

end

end A211812.P2416902007149835022

/-!
# A211813: Number of (n+1) X (n+1) -10..10 symmetric matrices with every 2 X 2 subblock having sum zero and two distinct values.

The programs for A211813, the canonical program `A211813.P4229429204270368905` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211813 has offset 1).

The definition of A211813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211813.P4229429204270368905

`a(n-1)+a(n-2)-14` with `a(0)=32, a(1)=44`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211813

/-- `a(n-1)+a(n-2)-14` -/
def P4229429204270368905.Spec : Prop :=
  ∀ n, P4229429204270368905.a n = A211813 (n + 1)

theorem P4229429204270368905.correct : P4229429204270368905.Spec := by
  intro n
  simp only [A211813, Nat.add_sub_cancel]

end A211813

/-! ## A211813.P1186077442364325765

`a(n-1)-(14-a(n-2))` with `a(0)=32, a(1)=44`
-/

namespace A211813.P1186077442364325765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32, 44] fun n a =>
  a (n - 1) - (14 - a (n - 2))

end

end A211813.P1186077442364325765

namespace A211813

/-- `a(n-1)-(14-a(n-2))` -/
def P1186077442364325765.Spec : Prop :=
  ∀ n, P1186077442364325765.a n = A211813 (n + 1)

theorem P1186077442364325765.correct : P1186077442364325765.Spec := by
  intro n
  simp only [A211813, Nat.add_sub_cancel, A211813.P1186077442364325765.a, A211813.P4229429204270368905.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211813

/-! ## A211813.P3660283673860278736

`A211549(n+1)+1`
-/

namespace A211813.P3660283673860278736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211549 (n + 1) + 1

end

end A211813.P3660283673860278736

namespace A211813

/-- `A211549(n+1)+1` -/
def P3660283673860278736.Spec : Prop :=
  ∀ n, P3660283673860278736.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P6303308902939611517

`A211710(n+1)-2`
-/

namespace A211813.P6303308902939611517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211710 (n + 1) - 2

end

end A211813.P6303308902939611517

namespace A211813

/-- `A211710(n+1)-2` -/
def P6303308902939611517.Spec : Prop :=
  ∀ n, P6303308902939611517.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P8770984017841051323

`6*A048584(n)+2`
-/

namespace A211813.P8770984017841051323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A048584 n + 2

end

end A211813.P8770984017841051323

namespace A211813

/-- `6*A048584(n)+2` -/
def P8770984017841051323.Spec : Prop :=
  ∀ n, P8770984017841051323.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P9562333997614889803

`6*A020706(n)+8`
-/

namespace A211813.P9562333997614889803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A020706 n + 8

end

end A211813.P9562333997614889803

namespace A211813

/-- `6*A020706(n)+8` -/
def P9562333997614889803.Spec : Prop :=
  ∀ n, P9562333997614889803.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P11073289313041391557

`3*A211322(n+1)-1`
-/

namespace A211813.P11073289313041391557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A211322 (n + 1) - 1

end

end A211813.P11073289313041391557

namespace A211813

/-- `3*A211322(n+1)-1` -/
def P11073289313041391557.Spec : Prop :=
  ∀ n, P11073289313041391557.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P16244799488813334383

`2*(3*A020701(n)+7)`
-/

namespace A211813.P16244799488813334383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A020701 n + 7)

end

end A211813.P16244799488813334383

namespace A211813

/-- `2*(3*A020701(n)+7)` -/
def P16244799488813334383.Spec : Prop :=
  ∀ n, P16244799488813334383.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P10542646811343731869

`3*A090991(n+1)+14`
-/

namespace A211813.P10542646811343731869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090991 (n + 1) + 14

end

end A211813.P10542646811343731869

namespace A211813

/-- `3*A090991(n+1)+14` -/
def P10542646811343731869.Spec : Prop :=
  ∀ n, P10542646811343731869.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P11043253040397632328

`3*(2*A000045(n+4)+5)-1`
-/

namespace A211813.P11043253040397632328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A000045 (n + 4) + 5) - 1

end

end A211813.P11043253040397632328

namespace A211813

/-- `3*(2*A000045(n+4)+5)-1` -/
def P11043253040397632328.Spec : Prop :=
  ∀ n, P11043253040397632328.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P49561585469851746

`record[A204749(n+2)+A000285(n)]`
-/

namespace A211813.P49561585469851746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204749 (n + 2) + A000285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211813.P49561585469851746

namespace A211813

/-- `record[A204749(n+2)+A000285(n)]` -/
def P49561585469851746.Spec : Prop :=
  ∀ n, P49561585469851746.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P12315767975154783032

`A211322(n+1)+A211253(n+1)`
-/

namespace A211813.P12315767975154783032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211322 (n + 1) + A211253 (n + 1)

end

end A211813.P12315767975154783032

namespace A211813

/-- `A211322(n+1)+A211253(n+1)` -/
def P12315767975154783032.Spec : Prop :=
  ∀ n, P12315767975154783032.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P945922145202953527

`A090991(n+1)+A211466(n+1)+1`
-/

namespace A211813.P945922145202953527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) + (A211466 (n + 1) + 1)

end

end A211813.P945922145202953527

namespace A211813

/-- `A090991(n+1)+A211466(n+1)+1` -/
def P945922145202953527.Spec : Prop :=
  ∀ n, P945922145202953527.a n = A211813 (n + 1)

end A211813

/-! ## A211813.P4579471561260960692

`A211253(n+1)+A211490(n+1)-2`
-/

namespace A211813.P4579471561260960692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211253 (n + 1) + (A211490 (n + 1) - 2)

end

end A211813.P4579471561260960692

namespace A211813

/-- `A211253(n+1)+A211490(n+1)-2` -/
def P4579471561260960692.Spec : Prop :=
  ∀ n, P4579471561260960692.a n = A211813 (n + 1)

end A211813

/-!
# A211821: Numbers with all divisors with additive digital root of 1.

The programs for A211821, there is no canonical definition to state claims against.
-/

/-! ## A211821.P3358318801240610777

`9*A211823(n+1)+1`
-/

namespace A211821.P3358318801240610777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A211823 (n + 1) + 1

end

end A211821.P3358318801240610777

/-! ## A211821.P4394689508645990989

`∪[p?[9*n+1], A211822(n+1)]`
-/

namespace A211821.P4394689508645990989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A211821.P4394689508645990989

/-! ## A211821.P12624223331987272410

`A017173(A211823(n+1))`
-/

namespace A211821.P12624223331987272410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A211823 (n + 1)).toNat

end

end A211821.P12624223331987272410

/-! ## A211821.P8343900577822829227

`A016777(3*A211823(n+1))`
-/

namespace A211821.P8343900577822829227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (3 * A211823 (n + 1)).toNat

end

end A211821.P8343900577822829227

/-! ## A211821.P2430992991032462468

`A161705(A211823(n+1)/2)`
-/

namespace A211821.P2430992991032462468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (SequenceMachineLib.roundAway ((A211823 (n + 1) : ℚ) / 2)).toNat

end

end A211821.P2430992991032462468

/-!
# A211822: Nonprime numbers with all divisors with additive digital root of 1.

The programs for A211822, there is no canonical definition to state claims against.
-/

/-! ## A211822.P17837457220992123083

`∩[9*A211823(n+1)+1, A247681(n+1)]`
-/

namespace A211822.P17837457220992123083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A211823 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211822.P17837457220992123083

/-! ## A211822.P17771991634266544114

`∩[A017173(A211823(n+1)), A247681(n+1)]`
-/

namespace A211822.P17771991634266544114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A211823 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211822.P17771991634266544114

/-! ## A211822.P5828769036004109415

`record[A191558(9*A211823(n+1)+1)]`
-/

namespace A211822.P5828769036004109415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (9 * A211823 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211822.P5828769036004109415

/-!
# A211823: Numbers k such that 9*k+1 are numbers with all divisors with additive digital root = 1.

The programs for A211823, there is no canonical definition to state claims against.
-/

/-! ## A211823.P436906971809660664

`floor(∪[p?[9*n+1], A211822(n+1)]/9)`
-/

namespace A211823.P436906971809660664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211822 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n : ℚ) / 9⌋

end

end A211823.P436906971809660664

/-! ## A211823.P10749208742112573178

`eq[1, dr(A032742(9*n+1))]`
-/

namespace A211823.P10749208742112573178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A032742 (9 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211823.P10749208742112573178

/-! ## A211823.P11463596053388883930

`A257849(∪[p?[9*n+1], A211822(n+1)])`
-/

namespace A211823.P11463596053388883930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211822 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n)

end

end A211823.P11463596053388883930

/-! ## A211823.P8745535924524826978

`A008611(∪[p?[9*n+1], A211822(n+1)])/3`
-/

namespace A211823.P8745535924524826978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211822 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n) : ℚ) / 3

end

end A211823.P8745535924524826978

/-! ## A211823.P7748421020345776151

`A257849(∪[A061237(n+1), A211822(n+1)])`
-/

namespace A211823.P7748421020345776151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211822 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A211823.P7748421020345776151

/-!
# A211824: G.f. satisfies: A(x) = 1 + x*( d/dx x*A(x) )^3.

The programs for A211824, there is no canonical definition to state claims against.
-/

/-! ## A211824.P12938712362903551644

`A018961(a(n-2))` with `a(0)=1, a(1)=1, a(2)=6, a(3)=66`
-/

namespace A211824.P12938712362903551644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6, 66] fun n a =>
  A018961 (a (n - 2)).toNat

end

end A211824.P12938712362903551644

/-!
# A211825: G.f. satisfies: A(x) = 1 + x*( d/dx x*A(x) )^4.

The programs for A211825, there is no canonical definition to state claims against.
-/

/-! ## A211825.P9448843828056512525

`8*A106265(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A211825.P9448843828056512525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  8 * A106265 (a (n - 1)).toNat

end

end A211825.P9448843828056512525

/-!
# A211826: G.f. satisfies: A(x) = 1 + x*( d/dx x*A(x) )^5.

The programs for A211826, there is no canonical definition to state claims against.
-/

/-! ## A211826.P5133524849249416880

`A006093(A049902(∑[char[1]+n]+1))`
-/

namespace A211826.P5133524849249416880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A049902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A211826.P5133524849249416880

/-!
# A211828: G.f. satisfies: A(x) = x + x^2 * d/dx A(A(x)).

The programs for A211828, there is no canonical definition to state claims against.
-/

/-! ## A211828.P7735142734117397514

`A210434(A138737(n)-n)`
-/

namespace A211828.P7735142734117397514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 (A138737 n - (n : ℤ)).toNat

end

end A211828.P7735142734117397514

/-! ## A211828.P13414145108687405635

`A028310(n)*A065033(A362660(n))`
-/

namespace A211828.P13414145108687405635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A065033 (A362660 n).toNat

end

end A211828.P13414145108687405635

/-!
# A211829: Number of nonnegative integer arrays of length n+2 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value 2.

The programs for A211829, there is no canonical definition to state claims against.
-/

/-! ## A211829.P78992685473805809

`A211836(∑[n+1])`
-/

namespace A211829.P78992685473805809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211829.P78992685473805809

/-! ## A211829.P13773435740295226406

`record[A211836(A250252(n+1))]`
-/

namespace A211829.P13773435740295226406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A250252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211829.P13773435740295226406

/-! ## A211829.P11946582522991452739

`record[A211836(n+1)/A077028(n)]`
-/

namespace A211829.P11946582522991452739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (n + 1) : ℚ) / (A077028 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211829.P11946582522991452739

/-! ## A211829.P6359111422384839453

`record[A211836(n+1)/A133084(n+1)]`
-/

namespace A211829.P6359111422384839453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (n + 1) : ℚ) / (A133084 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211829.P6359111422384839453

/-! ## A211829.P7901064494564270603

`record[A211836(A000217(A023190(n+1)))]`
-/

namespace A211829.P7901064494564270603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000217 (A023190 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211829.P7901064494564270603

/-! ## A211829.P17231910587014866060

`record[A211836(A000217(A026233(n+1)))]`
-/

namespace A211829.P17231910587014866060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000217 (A026233 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211829.P17231910587014866060

/-! ## A211829.P11806373562896787405

`record[A211836(A000217(A032742(n+1)))]`
-/

namespace A211829.P11806373562896787405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000217 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211829.P11806373562896787405

/-! ## A211829.P6736966707409336668

`record[A211836(n+1)/A322383(n+1)]`
-/

namespace A211829.P6736966707409336668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (n + 1) : ℚ) / (A322383 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211829.P6736966707409336668

/-!
# A211830: Number of nonnegative integer arrays of length n+3 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value 3.

The programs for A211830, there is no canonical definition to state claims against.
-/

/-! ## A211830.P4981631906559401598

`A211836(∑[n+2])`
-/

namespace A211830.P4981631906559401598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211830.P4981631906559401598

/-! ## A211830.P9494801630309675499

`record[A211836(A000096(A126759(n)))]`
-/

namespace A211830.P9494801630309675499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211830.P9494801630309675499

/-! ## A211830.P16401847622158960985

`record[A211836(A000096(A263274(n)))]`
-/

namespace A211830.P16401847622158960985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000096 (A263274 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211830.P16401847622158960985

/-! ## A211830.P8569172512495394279

`record[A211836(A000096(A328399(n)))]`
-/

namespace A211830.P8569172512495394279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211830.P8569172512495394279

/-! ## A211830.P8986216901547962648

`record[A211836(A000096(A002260(n+1)))]`
-/

namespace A211830.P8986216901547962648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211830.P8986216901547962648

/-! ## A211830.P17221362498485003779

`record[A211836(A000096(A023190(n+1)))]`
-/

namespace A211830.P17221362498485003779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000096 (A023190 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211830.P17221362498485003779

/-! ## A211830.P17395823256481030825

`record[A211836(A000096(A032742(n+1)))]`
-/

namespace A211830.P17395823256481030825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211830.P17395823256481030825

/-! ## A211830.P12131373020127476179

`record[A211836(A250252(2*(n+1)))]`
-/

namespace A211830.P12131373020127476179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A250252 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211830.P12131373020127476179

/-!
# A211831: Number of nonnegative integer arrays of length n+4 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value 4.

The programs for A211831, there is no canonical definition to state claims against.
-/

/-! ## A211831.P15509806797367631614

`A211836(∑[n+3]+1)`
-/

namespace A211831.P15509806797367631614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211831.P15509806797367631614

/-! ## A211831.P9983158756095633592

`record[A211836(A250252(n+1)+xor(1, n+2))]`
-/

namespace A211831.P9983158756095633592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A250252 (n + 1) + (Nat.xor 1 (n + 2) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211831.P9983158756095633592

/-! ## A211831.P11593298460416168017

`lcm(A097807(n), A211836(A034856(n+2)))`
-/

namespace A211831.P11593298460416168017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A211836 (A034856 (n + 2)).toNat)

end

end A211831.P11593298460416168017

/-! ## A211831.P1878734093003372450

`A211836(A034856(n+2))^gcd(2, A000040(n+1))`
-/

namespace A211831.P1878734093003372450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A034856 (n + 2)).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A211831.P1878734093003372450

/-! ## A211831.P14225148228406158611

`A211836(A034856(n+2))+n+4-A020705(n)`
-/

namespace A211831.P14225148228406158611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A034856 (n + 2)).toNat + ((n + 4 : ℤ) - A020705 n)

end

end A211831.P14225148228406158611

/-! ## A211831.P10953457707324132262

`A007318(A000217(n))*A211836(A034856(n+2))`
-/

namespace A211831.P10953457707324132262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A211836 (A034856 (n + 2)).toNat

end

end A211831.P10953457707324132262

/-! ## A211831.P10012948169122478576

`A211836(A034856(n+2))+A008683(A017137(n)-2)`
-/

namespace A211831.P10012948169122478576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A034856 (n + 2)).toNat + A008683 (A017137 n - 2).toNat

end

end A211831.P10012948169122478576

/-! ## A211831.P18292869665107163867

`A211836(A034856(n+2))^A014963(A089025(n+1))`
-/

namespace A211831.P18292869665107163867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (A034856 (n + 2)).toNat : ℚ) ^ (A014963 (A089025 (n + 1)).toNat : ℤ)

end

end A211831.P18292869665107163867

/-!
# A211832: Number of nonnegative integer arrays of length n+5 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value 5.

The programs for A211832, there is no canonical definition to state claims against.
-/

/-! ## A211832.P9718212020749211085

`A211836(n+4+∑[n+3])`
-/

namespace A211832.P9718212020749211085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (n + 4 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211832.P9718212020749211085

/-! ## A211832.P11596470727698727727

`abs(1-A211836(A027379(n+2)))+1`
-/

namespace A211832.P11596470727698727727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A211836 (A027379 (n + 2)).toNat| + 1

end

end A211832.P11596470727698727727

/-! ## A211832.P18398382449921610977

`record[A211836(n+7)/A211836(n+11)]`
-/

namespace A211832.P18398382449921610977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (n + 7) : ℚ) / (A211836 (n + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211832.P18398382449921610977

/-! ## A211832.P10984769775810510673

`lcm(A033999(n), A211836(A027379(n+2)))`
-/

namespace A211832.P10984769775810510673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A211836 (A027379 (n + 2)).toNat)

end

end A211832.P10984769775810510673

/-! ## A211832.P6831323862987054526

`gcd(A084099(2*n), A211836(A155212(n)+5))`
-/

namespace A211832.P6831323862987054526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084099 (2 * n)) (A211836 (A155212 n + 5).toNat)

end

end A211832.P6831323862987054526

/-! ## A211832.P1306628568574680277

`A211836(A027379(n+2))+A007814(2*n+1)`
-/

namespace A211832.P1306628568574680277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A027379 (n + 2)).toNat + A007814 (2 * n + 1)

end

end A211832.P1306628568574680277

/-! ## A211832.P8643709722319060802

`A001222(A002146(n))*A211836(A155212(n)+5)`
-/

namespace A211832.P8643709722319060802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002146 n).toNat * A211836 (A155212 n + 5).toNat

end

end A211832.P8643709722319060802

/-! ## A211832.P9404302697535878191

`A211836(A155212(n)+5)+A008683(A001248(n+1))`
-/

namespace A211832.P9404302697535878191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A155212 n + 5).toNat + A008683 (A001248 (n + 1)).toNat

end

end A211832.P9404302697535878191

/-!
# A211833: Number of nonnegative integer arrays of length n+6 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value 6.

The programs for A211833, there is no canonical definition to state claims against.
-/

/-! ## A211833.P5426460274634641680

`A211836(n+7+∑[n+4])`
-/

namespace A211833.P5426460274634641680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (n + 7 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211833.P5426460274634641680

/-! ## A211833.P1817431833407144165

`A211836(A046691(n+3))^ceil(acot(n))`
-/

namespace A211833.P1817431833407144165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (A046691 (n + 3)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A211833.P1817431833407144165

/-! ## A211833.P4077864380317112566

`record[A211836(n+11)/A211836(n+16)]`
-/

namespace A211833.P4077864380317112566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (n + 11) : ℚ) / (A211836 (n + 16) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211833.P4077864380317112566

/-! ## A211833.P1528931041950465202

`A211836(A046691(n+3))+C(n, A133124(n))`
-/

namespace A211833.P1528931041950465202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A046691 (n + 3)).toNat + (Nat.choose n (A133124 n).toNat : ℤ)

end

end A211833.P1528931041950465202

/-! ## A211833.P1246341137021792895

`A211836(A046691(n+3))+C(n, A133125(n))`
-/

namespace A211833.P1246341137021792895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A046691 (n + 3)).toNat + (Nat.choose n (A133125 n).toNat : ℤ)

end

end A211833.P1246341137021792895

/-! ## A211833.P18053535684592141599

`A211836(A046691(n+3))^A052409(n²+1)`
-/

namespace A211833.P18053535684592141599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (A046691 (n + 3)).toNat : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ)

end

end A211833.P18053535684592141599

/-! ## A211833.P5255860586671067422

`A211836(A046691(n+3))+C(n, A133161(n+1))`
-/

namespace A211833.P5255860586671067422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A046691 (n + 3)).toNat + (Nat.choose n (A133161 (n + 1)).toNat : ℤ)

end

end A211833.P5255860586671067422

/-! ## A211833.P9595518892334788008

`A211836(A000124(n+5)-5)+A000122(A000124(n+5)-5)`
-/

namespace A211833.P9595518892334788008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000124 (n + 5) - 5).toNat + A000122 (A000124 (n + 5) - 5).toNat

end

end A211833.P9595518892334788008

/-! ## A211833.P1237782266586670092

`A211836(A000124(n+5)-5)+A010054(A000124(n+5)-5)`
-/

namespace A211833.P1237782266586670092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000124 (n + 5) - 5).toNat + A010054 (A000124 (n + 5) - 5).toNat

end

end A211833.P1237782266586670092

/-!
# A211834: Number of nonnegative integer arrays of length n+7 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value 7.

The programs for A211834, there is no canonical definition to state claims against.
-/

/-! ## A211834.P5550676711374818635

`A211836(A052905(n+3))`
-/

namespace A211834.P5550676711374818635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A052905 (n + 3)).toNat

end

end A211834.P5550676711374818635

/-! ## A211834.P5399759787503891644

`A211836(eq[3, A219347(n)])`
-/

namespace A211834.P5399759787503891644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211834.P5399759787503891644

/-! ## A211834.P3531259227914100122

`A211836(A000096(n+5)-4)`
-/

namespace A211834.P3531259227914100122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000096 (n + 5) - 4).toNat

end

end A211834.P3531259227914100122

/-! ## A211834.P16037386489630570109

`A211836(A000124(n+6)-6)`
-/

namespace A211834.P16037386489630570109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000124 (n + 6) - 6).toNat

end

end A211834.P16037386489630570109

/-! ## A211834.P6573327726133292458

`A211836(Δ[A023545(n+2)]-1)`
-/

namespace A211834.P6573327726133292458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (f1 (n + 1) - f1 n - 1).toNat

end

end A211834.P6573327726133292458

/-! ## A211834.P16761115968094797134

`A211836(A000217(n+5)+n+1)`
-/

namespace A211834.P16761115968094797134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A211834.P16761115968094797134

/-! ## A211834.P598568160438672978

`A211836(A167614(n+1)+4*n+10)`
-/

namespace A211834.P598568160438672978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A167614 (n + 1) + (4 * n + 10 : ℤ)).toNat

end

end A211834.P598568160438672978

/-!
# A211835: Number of nonnegative integer arrays of length n+8 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value 8.

The programs for A211835, there is no canonical definition to state claims against.
-/

/-! ## A211835.P11103081647182438309

`A211836(eq[4, A219347(n)])`
-/

namespace A211835.P11103081647182438309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211835.P11103081647182438309

/-! ## A211835.P14882844400197464099

`A211836(eq[6, A193592(n)])`
-/

namespace A211835.P14882844400197464099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211835.P14882844400197464099

/-! ## A211835.P1388616192021181415

`A211836(eq[7, A152157(n)])`
-/

namespace A211835.P1388616192021181415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211835.P1388616192021181415

/-! ## A211835.P13363415514682317247

`A211836(eq[10, A185782(n+1)])`
-/

namespace A211835.P13363415514682317247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211835.P13363415514682317247

/-! ## A211835.P10108681078114964105

`A211836(eq[7, A200370(n+1)])`
-/

namespace A211835.P10108681078114964105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211835.P10108681078114964105

/-!
# A211836: T(n,k)=Number of nonnegative integer arrays of length n+k+1 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value k+1.

The programs for A211836, there is no canonical definition to state claims against.
-/

/-! ## A211836.P16663830302900736938

`A105593(A013612(n))+A013612(n)`
-/

namespace A211836.P16663830302900736938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105593 (A013612 n).toNat + A013612 n

end

end A211836.P16663830302900736938

/-! ## A211836.P5615742730704314319

`A115180(or(A088439(n+4), A100235(n)))`
-/

namespace A211836.P5615742730704314319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (Int.lor (A088439 (n + 4)) (A100235 n)).toNat

end

end A211836.P5615742730704314319

/-! ## A211836.P3737675128159631593

`or(A010052(2*n), A344167(A100232(n)))`
-/

namespace A211836.P3737675128159631593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (2 * n)) (A344167 (A100232 n).toNat)

end

end A211836.P3737675128159631593

/-!
# A211837: Number of nonnegative integer arrays of length n+4 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value n+1.

The programs for A211837, the canonical program `A211837.P5322037994114808625` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211837 has offset 1).

The definition of A211837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211837.P5322037994114808625

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=33, a(1)=77, a(2)=157, a(3)=289, a(4)=492`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211837

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5322037994114808625.Spec : Prop :=
  ∀ n, P5322037994114808625.a n = A211837 (n + 1)

theorem P5322037994114808625.correct : P5322037994114808625.Spec := by
  intro n
  simp only [A211837, Nat.add_sub_cancel]

end A211837

/-! ## A211837.P8383710393131535918

`1/8*(n+1)^4+17/12*(n+1)^3+51/8*(n+1)²+157/12*(n+1)+12`
-/

namespace A211837.P8383710393131535918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * ((n + 1) ^ 4 : ℚ) + (17 : ℚ) / 12 * ((n + 1) ^ 3 : ℚ) + (51 : ℚ) / 8 * ((n + 1) ^ 2 : ℚ) + (157 : ℚ) / 12 * (n + 1 : ℚ) + 12

end

end A211837.P8383710393131535918

namespace A211837

/-- `1/8*(n+1)^4+17/12*(n+1)^3+51/8*(n+1)²+157/12*(n+1)+12` -/
def P8383710393131535918.Spec : Prop :=
  ∀ n, P8383710393131535918.a n = (A211837 (n + 1) : ℚ)

theorem P8383710393131535918.correct : P8383710393131535918.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A211837, Nat.add_sub_cancel, A211837.P8383710393131535918.a, A211837.P5322037994114808625.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A211837, Nat.add_sub_cancel, A211837.P8383710393131535918.a, A211837.P5322037994114808625.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A211837

/-!
# A211838: Number of nonnegative integer arrays of length n+5 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value n+1.

The programs for A211838, the canonical program `A211838.P8340850666101725983` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211838 has offset 1).

The definition of A211838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211838.P8340850666101725983

`A001297(n+3)+A002817(n+3)+A000292(n+5)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211838

/-- `A001297(n+3)+A002817(n+3)+A000292(n+5)` -/
def P8340850666101725983.Spec : Prop :=
  ∀ n, P8340850666101725983.a n = A211838 (n + 1)

theorem P8340850666101725983.correct : P8340850666101725983.Spec := by
  intro n
  simp only [A211838, Nat.add_sub_cancel]

end A211838

/-! ## A211838.P1954036981311452229

`A211836(∑[n+3]+7)`
-/

namespace A211838.P1954036981311452229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A211838.P1954036981311452229

namespace A211838

/-- `A211836(∑[n+3]+7)` -/
def P1954036981311452229.Spec : Prop :=
  ∀ n, P1954036981311452229.a n = A211838 (n + 1)

end A211838

/-! ## A211838.P14144314173717156343

`record[A211836(n+10)/A211836(n+7)]`
-/

namespace A211838.P14144314173717156343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (n + 10) : ℚ) / (A211836 (n + 7) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211838.P14144314173717156343

namespace A211838

/-- `record[A211836(n+10)/A211836(n+7)]` -/
def P14144314173717156343.Spec : Prop :=
  ∀ n, P14144314173717156343.a n = (A211838 (n + 1) : ℚ)

end A211838

/-! ## A211838.P7035899859173981275

`lcm(A008836(n+1), A211836(A167499(n+2)-1))`
-/

namespace A211838.P7035899859173981275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A211836 (A167499 (n + 2) - 1).toNat)

end

end A211838.P7035899859173981275

namespace A211838

/-- `lcm(A008836(n+1), A211836(A167499(n+2)-1))` -/
def P7035899859173981275.Spec : Prop :=
  ∀ n, (P7035899859173981275.a n : ℤ) = A211838 (n + 1)

end A211838

/-! ## A211838.P17993308620053812214

`A007318(A000217(n+6))*A211836(A167499(n+2)-1)`
-/

namespace A211838.P17993308620053812214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 6)).toNat * A211836 (A167499 (n + 2) - 1).toNat

end

end A211838.P17993308620053812214

namespace A211838

/-- `A007318(A000217(n+6))*A211836(A167499(n+2)-1)` -/
def P17993308620053812214.Spec : Prop :=
  ∀ n, P17993308620053812214.a n = A211838 (n + 1)

end A211838

/-!
# A211839: Number of nonnegative integer arrays of length n+6 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value n+1.

The programs for A211839, there is no canonical definition to state claims against.
-/

/-! ## A211839.P7322138834659498291

`A211836(A167499(n+3))`
-/

namespace A211839.P7322138834659498291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A167499 (n + 3)).toNat

end

end A211839.P7322138834659498291

/-! ## A211839.P3085623322083063114

`A211836(A000124(n+4)+4)`
-/

namespace A211839.P3085623322083063114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000124 (n + 4) + 4).toNat

end

end A211839.P3085623322083063114

/-! ## A211839.P12677880456336487590

`A211836(A000217(n+4)+5)`
-/

namespace A211839.P12677880456336487590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000217 (n + 4) + 5).toNat

end

end A211839.P12677880456336487590

/-! ## A211839.P16066426158888193983

`A211836(A350295(n+5)+5)`
-/

namespace A211839.P16066426158888193983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A350295 (n + 5) + 5).toNat

end

end A211839.P16066426158888193983

/-! ## A211839.P10379099245515171779

`A211836(A000096(n+2)+n+10)`
-/

namespace A211839.P10379099245515171779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000096 (n + 2) + (n + 10 : ℤ)).toNat

end

end A211839.P10379099245515171779

/-! ## A211839.P16512687900730072118

`record[A211836(n+15)/A211836(n+11)]`
-/

namespace A211839.P16512687900730072118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211836 (n + 15) : ℚ) / (A211836 (n + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211839.P16512687900730072118

/-! ## A211839.P6703929218031926345

`A211836(A173036(n)+A016825(n))`
-/

namespace A211839.P6703929218031926345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A173036 n + A016825 n).toNat

end

end A211839.P6703929218031926345

/-! ## A211839.P1715058201562181966

`A211836(A038722(Δ[A023545(n+1)]))`
-/

namespace A211839.P1715058201562181966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A211839.P1715058201562181966

/-!
# A211840: Number of nonnegative integer arrays of length n+7 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value n+1.

The programs for A211840, there is no canonical definition to state claims against.
-/

/-! ## A211840.P14529912574637224582

`A211836(∑[n+5]+16)`
-/

namespace A211840.P14529912574637224582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A211840.P14529912574637224582

/-! ## A211840.P15698772267444481621

`abs(1-A211836(A166136(n+4)))+1`
-/

namespace A211840.P15698772267444481621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A211836 (A166136 (n + 4)).toNat| + 1

end

end A211840.P15698772267444481621

/-! ## A211840.P14738435932438100152

`A158388(n+1)*A211836(A166136(n+4))`
-/

namespace A211840.P14738435932438100152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A211836 (A166136 (n + 4)).toNat

end

end A211840.P14738435932438100152

/-! ## A211840.P15333133555722275126

`A211836(A166136(n+4))+val(A028128(n), 2)`
-/

namespace A211840.P15333133555722275126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A166136 (n + 4)).toNat + (SequenceMachineLib.valuation (A028128 n).toNat 2 : ℤ)

end

end A211840.P15333133555722275126

/-! ## A211840.P17871338690437727960

`A211836(A166136(n+4))+A071654(A071653(n))-n`
-/

namespace A211840.P17871338690437727960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A166136 (n + 4)).toNat + (A071654 (A071653 n).toNat - (n : ℤ))

end

end A211840.P17871338690437727960

/-!
# A211841: Number of nonnegative integer arrays of length n+8 with new values 0 upwards introduced in order, no three adjacent elements equal, and containing the value n+1.

The programs for A211841, there is no canonical definition to state claims against.
-/

/-! ## A211841.P17295448448861820715

`A211836(A056119(n)+28)`
-/

namespace A211841.P17295448448861820715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A056119 n + 28).toNat

end

end A211841.P17295448448861820715

/-! ## A211841.P5258822526728249435

`A211836(A167499(n+5)+2)`
-/

namespace A211841.P5258822526728249435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A167499 (n + 5) + 2).toNat

end

end A211841.P5258822526728249435

/-! ## A211841.P6557095820925862921

`A211836(A000217(n+6)+7)`
-/

namespace A211841.P6557095820925862921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000217 (n + 6) + 7).toNat

end

end A211841.P6557095820925862921

/-! ## A211841.P7431549301224804091

`A211836(A055998(n+4)+10)`
-/

namespace A211841.P7431549301224804091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A055998 (n + 4) + 10).toNat

end

end A211841.P7431549301224804091

/-! ## A211841.P12281627078890706025

`A211836(A000124(n+7)-(n+1))`
-/

namespace A211841.P12281627078890706025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A211841.P12281627078890706025

/-! ## A211841.P820706127155141642

`A211836(A000096(n+4)+n+14)`
-/

namespace A211841.P820706127155141642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211836 (A000096 (n + 4) + (n + 14 : ℤ)).toNat

end

end A211841.P820706127155141642

/-!
# A211842: Number of nonnegative integer arrays of length n+3 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value 2.

The programs for A211842, there is no canonical definition to state claims against.
-/

/-! ## A211842.P6228036154214478551

`A243634(n+2)-2^(n+3)`
-/

namespace A211842.P6228036154214478551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243634 (n + 2) - (2 ^ (n + 3) : ℤ)

end

end A211842.P6228036154214478551

/-! ## A211842.P11204677895779110950

`A247100(n+3)-2^(n+3)`
-/

namespace A211842.P11204677895779110950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 (n + 3) - (2 ^ (n + 3) : ℤ)

end

end A211842.P11204677895779110950

/-! ## A211842.P14155361775926710021

`A211849(∑[n+1])`
-/

namespace A211842.P14155361775926710021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211842.P14155361775926710021

/-! ## A211842.P15889341872250772622

`record[A211849(A134519(n+1))]`
-/

namespace A211842.P15889341872250772622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211842.P15889341872250772622

/-! ## A211842.P15414121645400989303

`record[A211849(n+1)/A211849(n+2)]`
-/

namespace A211842.P15414121645400989303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211849 (n + 1) : ℚ) / (A211849 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211842.P15414121645400989303

/-! ## A211842.P11202586697383569358

`record[A211849(A000217(A290094(n)))]`
-/

namespace A211842.P11202586697383569358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000217 (A290094 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211842.P11202586697383569358

/-! ## A211842.P11743924257095490811

`gcd(n, A002522(n))*A211849(A000217(n+1))`
-/

namespace A211842.P11743924257095490811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A002522 n) : ℤ) * A211849 (A000217 (n + 1)).toNat

end

end A211842.P11743924257095490811

/-! ## A211842.P6145382635617761515

`A211849(A000217(n+1))/gcd(n+1, A002522(n+1))`
-/

namespace A211842.P6145382635617761515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211849 (A000217 (n + 1)).toNat : ℚ) / (Int.gcd (n + 1 : ℤ) (A002522 (n + 1)) : ℚ)

end

end A211842.P6145382635617761515

/-! ## A211842.P87123590194066488

`A211849(A000217(n+1))*A211849(A000124(n))`
-/

namespace A211842.P87123590194066488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000217 (n + 1)).toNat * A211849 (A000124 n).toNat

end

end A211842.P87123590194066488

/-! ## A211842.P3032946200210407579

`A211849(A000217(n+1))/A211849(A000124(n+1))`
-/

namespace A211842.P3032946200210407579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211849 (A000217 (n + 1)).toNat : ℚ) / (A211849 (A000124 (n + 1)).toNat : ℚ)

end

end A211842.P3032946200210407579

/-!
# A211843: Number of nonnegative integer arrays of length n+5 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value 3.

The programs for A211843, there is no canonical definition to state claims against.
-/

/-! ## A211843.P4681338817735496761

`A211849(∑[n+2])`
-/

namespace A211843.P4681338817735496761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211843.P4681338817735496761

/-! ## A211843.P14616288587773891475

`record[A211849(A000096(A028920(n)))]`
-/

namespace A211843.P14616288587773891475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211843.P14616288587773891475

/-! ## A211843.P8404928055434916678

`record[A211849(A000096(A143182(n)))]`
-/

namespace A211843.P8404928055434916678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000096 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211843.P8404928055434916678

/-! ## A211843.P7177511274848794035

`Δ[A002024(n+1)]!*A211849(A000096(n+1))`
-/

namespace A211843.P7177511274848794035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) * A211849 (A000096 (n + 1)).toNat

end

end A211843.P7177511274848794035

/-! ## A211843.P13446949283892901755

`A211849(A000096(n+1))*A211849(A000124(n))`
-/

namespace A211843.P13446949283892901755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000096 (n + 1)).toNat * A211849 (A000124 n).toNat

end

end A211843.P13446949283892901755

/-! ## A211843.P4378180499514903980

`A211849(A000096(n+1))/A211849(A000124(n+1))`
-/

namespace A211843.P4378180499514903980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211849 (A000096 (n + 1)).toNat : ℚ) / (A211849 (A000124 (n + 1)).toNat : ℚ)

end

end A211843.P4378180499514903980

/-!
# A211844: Number of nonnegative integer arrays of length n+7 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value 4.

The programs for A211844, there is no canonical definition to state claims against.
-/

/-! ## A211844.P3414933935932074788

`A211849(∑[n+3]+1)`
-/

namespace A211844.P3414933935932074788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211844.P3414933935932074788

/-! ## A211844.P13664228240775321272

`record[A211849(n+1)/A211849(n+4)]`
-/

namespace A211844.P13664228240775321272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211849 (n + 1) : ℚ) / (A211849 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211844.P13664228240775321272

/-! ## A211844.P4538315252712935834

`record[A211849(A034856(A290094(n)))]`
-/

namespace A211844.P4538315252712935834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A034856 (A290094 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211844.P4538315252712935834

/-! ## A211844.P12217374222808520156

`record[A211849(A034856(A344180(n)))]`
-/

namespace A211844.P12217374222808520156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A034856 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211844.P12217374222808520156

/-! ## A211844.P2525539588527694076

`or(A000007(n), A211849(A055999(n)+4))`
-/

namespace A211844.P2525539588527694076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A211849 (A055999 n + 4).toNat)

end

end A211844.P2525539588527694076

/-! ## A211844.P15587340685479463831

`A087960(n)²*A211849(A034856(n+2))`
-/

namespace A211844.P15587340685479463831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A211849 (A034856 (n + 2)).toNat

end

end A211844.P15587340685479463831

/-! ## A211844.P7017943197128681974

`A211849(A034856(n+2))%A000032(4*n+2)`
-/

namespace A211844.P7017943197128681974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211849 (A034856 (n + 2)).toNat) (A000032 (4 * n + 2))

end

end A211844.P7017943197128681974

/-!
# A211845: Number of nonnegative integer arrays of length n+9 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value 5.

The programs for A211845, there is no canonical definition to state claims against.
-/

/-! ## A211845.P6764855691801598484

`A211849(2*(n+1)+∑[n+2]+3)`
-/

namespace A211845.P6764855691801598484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (2 * (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A211845.P6764855691801598484

/-! ## A211845.P7616656714727156352

`record[gcd(A159934(n+1), A211849(n+1))]`
-/

namespace A211845.P7616656714727156352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159934 (n + 1)) (A211849 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211845.P7616656714727156352

/-!
# A211846: Number of nonnegative integer arrays of length n+11 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value 6.

The programs for A211846, there is no canonical definition to state claims against.
-/

/-! ## A211846.P13524267579216210359

`A211849(Δ[A264443(n)])`
-/

namespace A211846.P13524267579216210359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (f1 (n + 1) - f1 n).toNat

end

end A211846.P13524267579216210359

/-! ## A211846.P16006612727510984435

`A211849(A046691(n+3))`
-/

namespace A211846.P16006612727510984435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A046691 (n + 3)).toNat

end

end A211846.P16006612727510984435

/-! ## A211846.P2965409655025602179

`A211849(A056115(n)+11)`
-/

namespace A211846.P2965409655025602179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A056115 n + 11).toNat

end

end A211846.P2965409655025602179

/-! ## A211846.P7115264792200198820

`A211849(Δ[A023545(n+1)])`
-/

namespace A211846.P7115264792200198820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (f1 (n + 1) - f1 n).toNat

end

end A211846.P7115264792200198820

/-! ## A211846.P656164019069443202

`A211849(Δ[A006416(n+3)]-1)`
-/

namespace A211846.P656164019069443202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (f1 (n + 1) - f1 n - 1).toNat

end

end A211846.P656164019069443202

/-! ## A211846.P5251778553492923841

`A211849(A000217(n+4)+n+1)`
-/

namespace A211846.P5251778553492923841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A211846.P5251778553492923841

/-! ## A211846.P10399243537461608982

`A211849(A264443(n+1)-A264443(n))`
-/

namespace A211846.P10399243537461608982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A264443 (n + 1) - A264443 n).toNat

end

end A211846.P10399243537461608982

/-!
# A211847: Number of nonnegative integer arrays of length n+13 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value 7.

The programs for A211847, there is no canonical definition to state claims against.
-/

/-! ## A211847.P12963965666070851943

`A211849(A052905(n+3))`
-/

namespace A211847.P12963965666070851943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A052905 (n + 3)).toNat

end

end A211847.P12963965666070851943

/-! ## A211847.P11855852948386633522

`A211849(A055999(n+3)+1)`
-/

namespace A211847.P11855852948386633522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A055999 (n + 3) + 1).toNat

end

end A211847.P11855852948386633522

/-! ## A211847.P1350663147455260846

`A211849(A000217(n+6)-5)`
-/

namespace A211847.P1350663147455260846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000217 (n + 6) - 5).toNat

end

end A211847.P1350663147455260846

/-! ## A211847.P1982993862697030342

`A211849(A000124(n+6)-6)`
-/

namespace A211847.P1982993862697030342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000124 (n + 6) - 6).toNat

end

end A211847.P1982993862697030342

/-! ## A211847.P6193333405094874060

`A211849(Δ[A023551(n+1)]+1)`
-/

namespace A211847.P6193333405094874060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (f1 (n + 1) - f1 n + 1).toNat

end

end A211847.P6193333405094874060

/-! ## A211847.P9775004630755502416

`A211849(Δ[A264443(n+1)]-1)`
-/

namespace A211847.P9775004630755502416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (f1 (n + 1) - f1 n - 1).toNat

end

end A211847.P9775004630755502416

/-! ## A211847.P8401687814158969524

`A211849(Δ[A023545(n+2)]-1)`
-/

namespace A211847.P8401687814158969524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (f1 (n + 1) - f1 n - 1).toNat

end

end A211847.P8401687814158969524

/-! ## A211847.P15966274170538198581

`A211849(A002522(n+9)%A000217(n+11))`
-/

namespace A211847.P15966274170538198581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (Int.tmod (A002522 (n + 9)) (A000217 (n + 11))).toNat

end

end A211847.P15966274170538198581

/-!
# A211848: Number of nonnegative integer arrays of length n+15 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value 8.

The programs for A211848, there is no canonical definition to state claims against.
-/

/-! ## A211848.P18334989139095222297

`A211849(A055999(n+4))`
-/

namespace A211848.P18334989139095222297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A055999 (n + 4)).toNat

end

end A211848.P18334989139095222297

/-! ## A211848.P15183577923656871331

`A211849(Δ[A023551(n+2)])`
-/

namespace A211848.P15183577923656871331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (f1 (n + 1) - f1 n).toNat

end

end A211848.P15183577923656871331

/-! ## A211848.P7069046419484323820

`A211849(A046691(n+5)-2)`
-/

namespace A211848.P7069046419484323820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A046691 (n + 5) - 2).toNat

end

end A211848.P7069046419484323820

/-! ## A211848.P6073298339841297108

`A211849(A034856(n+6)-4)`
-/

namespace A211848.P6073298339841297108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A034856 (n + 6) - 4).toNat

end

end A211848.P6073298339841297108

/-! ## A211848.P12163795527651272875

`A211849(A000096(n+6)-5)`
-/

namespace A211848.P12163795527651272875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000096 (n + 6) - 5).toNat

end

end A211848.P12163795527651272875

/-! ## A211848.P14845845652200804092

`A211849(A000217(n+7)-6)`
-/

namespace A211848.P14845845652200804092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000217 (n + 7) - 6).toNat

end

end A211848.P14845845652200804092

/-! ## A211848.P9152546558991179940

`A211849(A000124(n+7)-7)`
-/

namespace A211848.P9152546558991179940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000124 (n + 7) - 7).toNat

end

end A211848.P9152546558991179940

/-!
# A211849: T(n,k)=Number of nonnegative integer arrays of length n+2k+1 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value k+1.

The programs for A211849, there is no canonical definition to state claims against.
-/

/-! ## A211849.P9517397270751730218

`A347520(A193860(n))`
-/

namespace A211849.P9517397270751730218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A193860 n).toNat

end

end A211849.P9517397270751730218

/-! ## A211849.P3918718792297904850

`A161832(A261720(n+1))`
-/

namespace A211849.P3918718792297904850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161832 (A261720 (n + 1)).toNat

end

end A211849.P3918718792297904850

/-! ## A211849.P16054337526658060207

`A380573(A320905(n+1))`
-/

namespace A211849.P16054337526658060207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A320905 (n + 1)).toNat

end

end A211849.P16054337526658060207

/-! ## A211849.P13737548444346352337

`A244363(A122366(n))-1`
-/

namespace A211849.P13737548444346352337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244363 (A122366 n).toNat - 1

end

end A211849.P13737548444346352337

/-! ## A211849.P12053497007808772878

`or(1, A055572(A343599(n)))`
-/

namespace A211849.P12053497007808772878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055572 (A343599 n).toNat)

end

end A211849.P12053497007808772878

/-!
# A211850: Number of nonnegative integer arrays of length 2n+5 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value n+1.

The programs for A211850, the canonical program `A211850.P516431487583840775` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211850 has offset 1).

The definition of A211850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211850.P516431487583840775

`7/3*(n+1)^3+27/2*(n+1)²+163/6*(n+1)+20`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211850

/-- `7/3*(n+1)^3+27/2*(n+1)²+163/6*(n+1)+20` -/
def P516431487583840775.Spec : Prop :=
  ∀ n, P516431487583840775.a n = (A211850 (n + 1) : ℚ)

end A211850

/-! ## A211850.P17303354841750175975

`A211849(A052905(n)+9)`
-/

namespace A211850.P17303354841750175975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A052905 n + 9).toNat

end

end A211850.P17303354841750175975

namespace A211850

/-- `A211849(A052905(n)+9)` -/
def P17303354841750175975.Spec : Prop :=
  ∀ n, P17303354841750175975.a n = A211850 (n + 1)

end A211850

/-! ## A211850.P5588232646299667914

`A211849(A055999(n)+10)`
-/

namespace A211850.P5588232646299667914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A055999 n + 10).toNat

end

end A211850.P5588232646299667914

namespace A211850

/-- `A211849(A055999(n)+10)` -/
def P5588232646299667914.Spec : Prop :=
  ∀ n, P5588232646299667914.a n = A211850 (n + 1)

end A211850

/-! ## A211850.P16321271929632234379

`A211849(A167614(n+2)+1)`
-/

namespace A211850.P16321271929632234379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A167614 (n + 2) + 1).toNat

end

end A211850.P16321271929632234379

namespace A211850

/-- `A211849(A167614(n+2)+1)` -/
def P16321271929632234379.Spec : Prop :=
  ∀ n, P16321271929632234379.a n = A211850 (n + 1)

end A211850

/-! ## A211850.P13748357600845612356

`A211849(A167487(n+2)-3)`
-/

namespace A211850.P13748357600845612356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A167487 (n + 2) - 3).toNat

end

end A211850.P13748357600845612356

namespace A211850

/-- `A211849(A167487(n+2)-3)` -/
def P13748357600845612356.Spec : Prop :=
  ∀ n, P13748357600845612356.a n = A211850 (n + 1)

end A211850

/-! ## A211850.P16215262778941506458

`A211849(Δ[A264443(n)-n²])`
-/

namespace A211850.P16215262778941506458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (f1 (n + 1) - f1 n).toNat

end

end A211850.P16215262778941506458

namespace A211850

/-- `A211849(Δ[A264443(n)-n²])` -/
def P16215262778941506458.Spec : Prop :=
  ∀ n, P16215262778941506458.a n = A211850 (n + 1)

end A211850

/-! ## A211850.P415198385061760096

`A211849(Δ[A023545(n+1)-n²])`
-/

namespace A211850.P415198385061760096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (f1 (n + 1) - f1 n).toNat

end

end A211850.P415198385061760096

namespace A211850

/-- `A211849(Δ[A023545(n+1)-n²])` -/
def P415198385061760096.Spec : Prop :=
  ∀ n, P415198385061760096.a n = A211850 (n + 1)

end A211850

/-! ## A211850.P3593281305323836800

`A211849(A038722(Δ[A006416(n+2)]))`
-/

namespace A211850.P3593281305323836800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A211850.P3593281305323836800

namespace A211850

/-- `A211849(A038722(Δ[A006416(n+2)]))` -/
def P3593281305323836800.Spec : Prop :=
  ∀ n, P3593281305323836800.a n = A211850 (n + 1)

end A211850

/-!
# A211851: Number of nonnegative integer arrays of length 2n+6 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value n+1.

The programs for A211851, there is no canonical definition to state claims against.
-/

/-! ## A211851.P16763584129719107911

`A211849(A167499(n+3))`
-/

namespace A211851.P16763584129719107911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A167499 (n + 3)).toNat

end

end A211851.P16763584129719107911

/-! ## A211851.P6398740880911436240

`A211849(A000217(n+4)+5)`
-/

namespace A211851.P6398740880911436240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000217 (n + 4) + 5).toNat

end

end A211851.P6398740880911436240

/-! ## A211851.P13978720969447296370

`A211849(A055999(n+3)-2*n)`
-/

namespace A211851.P13978720969447296370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A211851.P13978720969447296370

/-! ## A211851.P8120332549425461635

`A211849(A038722(Δ[A023545(n+1)]))`
-/

namespace A211851.P8120332549425461635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A211851.P8120332549425461635

/-! ## A211851.P17303068197906875061

`A211849(A003602(Δ[A026046(n+6)]))`
-/

namespace A211851.P17303068197906875061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A003602 (f1 (n + 1) - f1 n).toNat).toNat

end

end A211851.P17303068197906875061

/-! ## A211851.P3304000895045523883

`A211849(A008619(Δ[A026046(n+6)]))`
-/

namespace A211851.P3304000895045523883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A211851.P3304000895045523883

/-!
# A211852: Number of nonnegative integer arrays of length 2n+7 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value n+1.

The programs for A211852, there is no canonical definition to state claims against.
-/

/-! ## A211852.P9100469101791450885

`A211849(A000124(n+5)+5)`
-/

namespace A211852.P9100469101791450885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000124 (n + 5) + 5).toNat

end

end A211852.P9100469101791450885

/-! ## A211852.P5248919652760486263

`A211849(A000096(n+4)+7)`
-/

namespace A211852.P5248919652760486263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000096 (n + 4) + 7).toNat

end

end A211852.P5248919652760486263

/-! ## A211852.P12710286246325077153

`A211849(A000217(n+5)+6)`
-/

namespace A211852.P12710286246325077153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000217 (n + 5) + 6).toNat

end

end A211852.P12710286246325077153

/-! ## A211852.P6646985268992833150

`A211849(A052905(n+2)+11)`
-/

namespace A211852.P6646985268992833150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A052905 (n + 2) + 11).toNat

end

end A211852.P6646985268992833150

/-! ## A211852.P7101950450332066738

`A211849(A046691(n+5)-(2*n+3))`
-/

namespace A211852.P7101950450332066738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A046691 (n + 5) - (2 * n + 3 : ℤ)).toNat

end

end A211852.P7101950450332066738

/-! ## A211852.P7068915030337359370

`A211849(A055998(n+10)-A017041(n+7))`
-/

namespace A211852.P7068915030337359370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A055998 (n + 10) - A017041 (n + 7)).toNat

end

end A211852.P7068915030337359370

/-!
# A211853: Number of nonnegative integer arrays of length 2n+8 with new values 0 upwards introduced in order, no three adjacent elements all unequal, and containing the value n+1.

The programs for A211853, there is no canonical definition to state claims against.
-/

/-! ## A211853.P11390153423717071966

`A211849(A167499(n+5)+2)`
-/

namespace A211853.P11390153423717071966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A167499 (n + 5) + 2).toNat

end

end A211853.P11390153423717071966

/-! ## A211853.P6580783283654807963

`A211849(A000124(n+6)+6)`
-/

namespace A211853.P6580783283654807963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000124 (n + 6) + 6).toNat

end

end A211853.P6580783283654807963

/-! ## A211853.P14759425304863971351

`A211849(A238531(n+7)+5)`
-/

namespace A211853.P14759425304863971351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A238531 (n + 7) + 5).toNat

end

end A211853.P14759425304863971351

/-! ## A211853.P7063672164676560585

`A211849(A000096(n+5)+8)`
-/

namespace A211853.P7063672164676560585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000096 (n + 5) + 8).toNat

end

end A211853.P7063672164676560585

/-! ## A211853.P14898175969334667218

`A211849(A000217(n+6)+7)`
-/

namespace A211853.P14898175969334667218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211849 (A000217 (n + 6) + 7).toNat

end

end A211853.P14898175969334667218

/-!
# A211854: G.f. satisfies: A(x) = (1+x*A(x)^2)*(1+x^2*A(x)^2)*(1+x^3*A(x)^2).

The programs for A211854, there is no canonical definition to state claims against.
-/

/-! ## A211854.P3530933555202148190

`A110655(∑[A150763(n)])`
-/

namespace A211854.P3530933555202148190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211854.P3530933555202148190

/-! ## A211854.P4262563335262802084

`A027868(A150865(n))+A011782(n)`
-/

namespace A211854.P4262563335262802084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A150865 n).toNat + A011782 n

end

end A211854.P4262563335262802084

/-! ## A211854.P3539440012427014525

`A149069(n)+A006926(A038020(n))`
-/

namespace A211854.P3539440012427014525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149069 n + A006926 (A038020 n).toNat

end

end A211854.P3539440012427014525

/-!
# A211855: G.f. satisfies: A(x) = (1+x*A(x)^3)*(1+x^2*A(x)^2)*(1+x^3*A(x)).

The programs for A211855, there is no canonical definition to state claims against.
-/

/-! ## A211855.P18081756824139446878

`A225819(A149440(n))`
-/

namespace A211855.P18081756824139446878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A149440 n).toNat

end

end A211855.P18081756824139446878

/-! ## A211855.P12395371034908380026

`A130940(A038348(n²))`
-/

namespace A211855.P12395371034908380026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130940 (A038348 (n ^ 2)).toNat

end

end A211855.P12395371034908380026

/-!
# A211856: Number of representations of n as a sum of products of distinct pairs of positive integers, considered to be equivalent when terms or factors are reordered.

The programs for A211856, there is no canonical definition to state claims against.
-/

/-! ## A211856.P1620986327554396982

`A128559(A027336(n)+1)`
-/

namespace A211856.P1620986327554396982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A027336 n + 1).toNat

end

end A211856.P1620986327554396982

/-! ## A211856.P4975357746124495193

`A128559(∑[A008483(n)]+1)`
-/

namespace A211856.P4975357746124495193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A211856.P4975357746124495193

/-! ## A211856.P12286475235023520057

`A128559(A185712(n+1)+A115671(n))`
-/

namespace A211856.P12286475235023520057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A185712 (n + 1) + A115671 n).toNat

end

end A211856.P12286475235023520057

/-! ## A211856.P8890976980785193583

`A115671(n)-A055641(A014172(n))`
-/

namespace A211856.P8890976980785193583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 n - A055641 (A014172 n).toNat

end

end A211856.P8890976980785193583

/-!
# A211857: Number of representations of n as a sum of products of distinct pairs of integers larger than 1, considered to be equivalent when terms or factors are reordered.

The programs for A211857, there is no canonical definition to state claims against.
-/

/-! ## A211857.P2241561379110022940

`or(A103675(A332759(n)), A212217(n))`
-/

namespace A211857.P2241561379110022940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103675 (A332759 n).toNat) (A212217 n)

end

end A211857.P2241561379110022940

/-! ## A211857.P9513609382896254764

`A212217(n)+A185284(A291694(n+1))`
-/

namespace A211857.P9513609382896254764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212217 n + A185284 (A291694 (n + 1)).toNat

end

end A211857.P9513609382896254764

/-! ## A211857.P8005444898164426517

`A212217(n)+A103675(A249699(n))`
-/

namespace A211857.P8005444898164426517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212217 n + A103675 (A249699 n).toNat

end

end A211857.P8005444898164426517

/-! ## A211857.P16450093115579368576

`A062108(A339222(n)%A058326(n+1))`
-/

namespace A211857.P16450093115579368576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.tmod (A339222 n) (A058326 (n + 1))).toNat

end

end A211857.P16450093115579368576

/-! ## A211857.P17173961563208929028

`A331282(A351716(n+1))+A212217(n)`
-/

namespace A211857.P17173961563208929028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A351716 (n + 1)).toNat + A212217 n

end

end A211857.P17173961563208929028

/-!
# A211858: Number of partitions of n into parts <= 3 with the property that all parts have distinct multiplicities.

The programs for A211858, there is no canonical definition to state claims against.
-/

/-! ## A211858.P5593009164247584138

`A112310(∑[A292556(n)])`
-/

namespace A211858.P5593009164247584138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211858.P5593009164247584138

/-! ## A211858.P11502318967835863696

`A112310(∑[A000081(n)]+1)`
-/

namespace A211858.P11502318967835863696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A211858.P11502318967835863696

/-!
# A211860: Number of partitions of n into parts <= 5 with the property that all parts have distinct multiplicities.

The programs for A211860, there is no canonical definition to state claims against.
-/

/-! ## A211860.P2163091251271766422

`A325325(n)+A102683(A003945(n))`
-/

namespace A211860.P2163091251271766422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 n + A102683 (A003945 n).toNat

end

end A211860.P2163091251271766422

/-! ## A211860.P950306264025838601

`A325325(n)+A056170(A096549(n+1))`
-/

namespace A211860.P950306264025838601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 n + A056170 (A096549 (n + 1)).toNat

end

end A211860.P950306264025838601

/-! ## A211860.P13686770658493631719

`A325325(n)+A240672(A000041(2*n+1))`
-/

namespace A211860.P13686770658493631719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 n + A240672 (A000041 (2 * n + 1)).toNat

end

end A211860.P13686770658493631719

/-! ## A211860.P4447212715675215412

`A325325(n)+A318950(A000203(3*n+1))`
-/

namespace A211860.P4447212715675215412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 n + A318950 (A000203 (3 * n + 1)).toNat

end

end A211860.P4447212715675215412

/-!
# A211862: Number of partitions of n into parts <= 7 with the property that all parts have distinct multiplicities.

The programs for A211862, there is no canonical definition to state claims against.
-/

/-! ## A211862.P16710375714612463179

`A098859(n)-A026816(A077168(n+1))`
-/

namespace A211862.P16710375714612463179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 n - A026816 (A077168 (n + 1)).toNat

end

end A211862.P16710375714612463179

/-! ## A211862.P4714018556004933098

`A098859(n)-A340102(A002839(n+1))`
-/

namespace A211862.P4714018556004933098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 n - A340102 (A002839 (n + 1)).toNat

end

end A211862.P4714018556004933098

/-! ## A211862.P3580959417120113227

`A239455(n)+A110161(A339830(n))-A026816(n+2)`
-/

namespace A211862.P3580959417120113227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239455 n + A110161 (A339830 n).toNat - A026816 (n + 2)

end

end A211862.P3580959417120113227

/-!
# A211863: Number of partitions of n into parts <= 8 with the property that all parts have distinct multiplicities.

The programs for A211863, there is no canonical definition to state claims against.
-/

/-! ## A211863.P12723743436867912781

`A098859(n)-A026816(A077168(n))`
-/

namespace A211863.P12723743436867912781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 n - A026816 (A077168 n).toNat

end

end A211863.P12723743436867912781

/-! ## A211863.P15845536281963172978

`A000041(n)-(A336866(n)+A026816(A077168(n)))`
-/

namespace A211863.P15845536281963172978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A336866 n + A026816 (A077168 n).toNat)

end

end A211863.P15845536281963172978

/-! ## A211863.P18389487418394853581

`A213598(n)-(A336866(n)+A026816(A077168(n)))`
-/

namespace A211863.P18389487418394853581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A336866 n + A026816 (A077168 n).toNat)

end

end A211863.P18389487418394853581

/-! ## A211863.P8928979924882136538

`A153679(A098859(n)-A326469(n))`
-/

namespace A211863.P8928979924882136538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153679 (A098859 n - A326469 n).toNat

end

end A211863.P8928979924882136538

/-! ## A211863.P5194246711593630957

`A153679(A098859(n)-A326591(n+1)%A082672(n+1))`
-/

namespace A211863.P5194246711593630957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153679 (A098859 n - Int.tmod (A326591 (n + 1)) (A082672 (n + 1))).toNat

end

end A211863.P5194246711593630957

/-!
# A211864: Powers of three read in base 2.

The programs for A211864, there is no canonical definition to state claims against.
-/

/-! ## A211864.P12948623392871717188

`A028897(3^n)`
-/

namespace A211864.P12948623392871717188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (3 ^ n)

end

end A211864.P12948623392871717188

/-!
# A211865: Arises in computing maximum information a Boolean function can reveal about noisy inputs.

The programs for A211865, there is no canonical definition to state claims against.
-/

/-! ## A211865.P12143738829105079626

`A132183(n+2)-A037213(n+2)`
-/

namespace A211865.P12143738829105079626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132183 (n + 2) - A037213 (n + 2)

end

end A211865.P12143738829105079626

/-!
# A211866: a(n) = (9^n - 5) / 4.

The programs for A211866, the canonical program `A211866.P6026757489020905335` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211866 has offset 1).

The definition of A211866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^(n+1)-5)/4` (program `A211866.P7080741418637948122`, by `A211866.P7080741418637948122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A211866.P6026757489020905335

`9*a(n-1)+10` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211866

/-- `9*a(n-1)+10` -/
def P6026757489020905335.Spec : Prop :=
  ∀ n, (P6026757489020905335.a n : ℤ) = A211866 (n + 1)

theorem P6026757489020905335.correct : P6026757489020905335.Spec := by
  intro n
  simp only [A211866, Nat.add_sub_cancel]

end A211866

/-! ## A211866.P3934654687965324062

`-A084222(2*(n+1))`
-/

namespace A211866.P3934654687965324062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A084222 (2 * (n + 1))

end

end A211866.P3934654687965324062

namespace A211866

/-- `-A084222(2*(n+1))` -/
def P3934654687965324062.Spec : Prop :=
  ∀ n, P3934654687965324062.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P7080741418637948122

`(9^(n+1)-5)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A211866.P7080741418637948122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 1) : ℤ) - 5 : ℚ) / 4

end

end A211866.P7080741418637948122

namespace A211866

/-- `(9^(n+1)-5)/4` -/
def P7080741418637948122.Spec : Prop :=
  ∀ n, P7080741418637948122.a n = (A211866 (n + 1) : ℚ)

theorem P7080741418637948122.correct : P7080741418637948122.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A211866, Nat.add_sub_cancel, A211866.P7080741418637948122.a, A211866.P6026757489020905335.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A211866, Nat.add_sub_cancel, A211866.P7080741418637948122.a, A211866.P6026757489020905335.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A211866

/-! ## A211866.P6366390009166670909

`ogf((1+9x)/(1-10x+9x^2))`
-/

namespace A211866.P6366390009166670909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, -10, 9] n

end

end A211866.P6366390009166670909

namespace A211866

/-- `ogf((1+9x)/(1-10x+9x^2))` -/
def P6366390009166670909.Spec : Prop :=
  ∀ n, P6366390009166670909.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P12904199414069532810

`∑[9*a(n-1)]` with `a(0)=1, a(1)=18`
-/

namespace A211866.P12904199414069532810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211866.P12904199414069532810

namespace A211866

/-- `∑[9*a(n-1)]` -/
def P12904199414069532810.Spec : Prop :=
  ∀ n, (P12904199414069532810.a n : ℤ) = A211866 (n + 1)

end A211866

/-! ## A211866.P6863640480361182434

`∑[9^n*ceil(cosh(sin(n)))]`
-/

namespace A211866.P6863640480361182434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211866.P6863640480361182434

namespace A211866

/-- `∑[9^n*ceil(cosh(sin(n)))]` -/
def P6863640480361182434.Spec : Prop :=
  ∀ n, P6863640480361182434.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P5315516854796565283

`floor(cot(2/3^(n+1))²)`
-/

namespace A211866.P5315516854796565283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 / (3 ^ (n + 1) : ℚ) : ℝ) ^ 2⌋

end

end A211866.P5315516854796565283

namespace A211866

/-- `floor(cot(2/3^(n+1))²)` -/
def P5315516854796565283.Spec : Prop :=
  ∀ n, P5315516854796565283.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P9748993985224170454

`∑[2*9^n/ceil(acot(n))]`
-/

namespace A211866.P9748993985224170454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 9 ^ n : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211866.P9748993985224170454

namespace A211866

/-- `∑[2*9^n/ceil(acot(n))]` -/
def P9748993985224170454.Spec : Prop :=
  ∀ n, P9748993985224170454.a n = (A211866 (n + 1) : ℚ)

end A211866

/-! ## A211866.P12329728645096096273

`record[a(n-1)-(-3)^(n+1)]` with `a(0)=1`
-/

namespace A211866.P12329728645096096273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (-3) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211866.P12329728645096096273

namespace A211866

/-- `record[a(n-1)-(-3)^(n+1)]` -/
def P12329728645096096273.Spec : Prop :=
  ∀ n, P12329728645096096273.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P7812184545026062024

`A080926(Δ[n²])`
-/

namespace A211866.P7812184545026062024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A211866.P7812184545026062024

namespace A211866

/-- `A080926(Δ[n²])` -/
def P7812184545026062024.Spec : Prop :=
  ∀ n, P7812184545026062024.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P4060674298774341568

`record[∑[A091103(n)]]`
-/

namespace A211866.P4060674298774341568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091103 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211866.P4060674298774341568

namespace A211866

/-- `record[∑[A091103(n)]]` -/
def P4060674298774341568.Spec : Prop :=
  ∀ n, P4060674298774341568.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P7422356368032035681

`∑[A027334(2*n)]`
-/

namespace A211866.P7422356368032035681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027334 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211866.P7422356368032035681

namespace A211866

/-- `∑[A027334(2*n)]` -/
def P7422356368032035681.Spec : Prop :=
  ∀ n, P7422356368032035681.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P17204027464890061681

`∑[A099856(2*n)]`
-/

namespace A211866.P17204027464890061681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211866.P17204027464890061681

namespace A211866

/-- `∑[A099856(2*n)]` -/
def P17204027464890061681.Spec : Prop :=
  ∀ n, P17204027464890061681.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P3858158741050400394

`record[-A084222(n+2)]`
-/

namespace A211866.P3858158741050400394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A084222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211866.P3858158741050400394

namespace A211866

/-- `record[-A084222(n+2)]` -/
def P3858158741050400394.Spec : Prop :=
  ∀ n, P3858158741050400394.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P4799302670164480347

`∑[ceil(A099856(n)²/2)]`
-/

namespace A211866.P4799302670164480347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099856 n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211866.P4799302670164480347

namespace A211866

/-- `∑[ceil(A099856(n)²/2)]` -/
def P4799302670164480347.Spec : Prop :=
  ∀ n, P4799302670164480347.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P9866008214479958740

`floor(A029858(2*(n+1))/2)`
-/

namespace A211866.P9866008214479958740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029858 (2 * (n + 1)) : ℚ) / 2⌋

end

end A211866.P9866008214479958740

namespace A211866

/-- `floor(A029858(2*(n+1))/2)` -/
def P9866008214479958740.Spec : Prop :=
  ∀ n, P9866008214479958740.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P12623229050638183414

`∑[A182751(2*n+2*n+1)]`
-/

namespace A211866.P12623229050638183414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182751 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211866.P12623229050638183414

namespace A211866

/-- `∑[A182751(2*n+2*n+1)]` -/
def P12623229050638183414.Spec : Prop :=
  ∀ n, P12623229050638183414.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P15125097622389697487

`∑[gcd(2, A255177(n))*A001019(n)]`
-/

namespace A211866.P15125097622389697487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A255177 n) : ℤ) * A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211866.P15125097622389697487

namespace A211866

/-- `∑[gcd(2, A255177(n))*A001019(n)]` -/
def P15125097622389697487.Spec : Prop :=
  ∀ n, P15125097622389697487.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P6371333601146455178

`abs(A084222(abs(A131738(2*n+1))))`
-/

namespace A211866.P6371333601146455178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A084222 |A131738 (2 * n + 1)|.toNat)|

end

end A211866.P6371333601146455178

namespace A211866

/-- `abs(A084222(abs(A131738(2*n+1))))` -/
def P6371333601146455178.Spec : Prop :=
  ∀ n, P6371333601146455178.a n = A211866 (n + 1)

end A211866

/-! ## A211866.P7682540990416749567

`record[∑[A168589(n+1)]]`
-/

namespace A211866.P7682540990416749567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168589 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211866.P7682540990416749567

namespace A211866

/-- `record[∑[A168589(n+1)]]` -/
def P7682540990416749567.Spec : Prop :=
  ∀ n, P7682540990416749567.a n = A211866 (n + 1)

end A211866

/-!
# A211867: a(n) = A097609(2*n-1,n), n>0; a(0)=1.

The programs for A211867, there is no canonical definition to state claims against.
-/

/-! ## A211867.P5561905015772486332

`ceil(A092765(n)/2)`
-/

namespace A211867.P5561905015772486332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092765 n : ℚ) / 2⌉

end

end A211867.P5561905015772486332

/-! ## A211867.P262660784518413201

`A092765(n)/A036453(n+1)`
-/

namespace A211867.P262660784518413201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A211867.P262660784518413201

/-! ## A211867.P11603615410959519284

`A092765(n)/A104435(n+1)`
-/

namespace A211867.P11603615410959519284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A104435 (n + 1) : ℚ)

end

end A211867.P11603615410959519284

/-! ## A211867.P13045417634017967972

`A092765(n)/A014963(A001316(n))`
-/

namespace A211867.P13045417634017967972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A211867.P13045417634017967972

/-! ## A211867.P7125582929492754636

`A092765(n)/A020639(A278222(n))`
-/

namespace A211867.P7125582929492754636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A020639 (A278222 n).toNat : ℚ)

end

end A211867.P7125582929492754636

/-! ## A211867.P7169458462755638180

`A092765(n)/A202146(A107286(n))`
-/

namespace A211867.P7169458462755638180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A202146 (A107286 n).toNat : ℚ)

end

end A211867.P7169458462755638180

/-! ## A211867.P5080783782743755595

`A092765(n)/A237271(A088732(n))`
-/

namespace A211867.P5080783782743755595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A237271 (A088732 n).toNat : ℚ)

end

end A211867.P5080783782743755595

/-! ## A211867.P2687410573579502218

`A092765(n)/A020639(A320139(n))`
-/

namespace A211867.P2687410573579502218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A020639 (A320139 n).toNat : ℚ)

end

end A211867.P2687410573579502218

/-! ## A211867.P5085698690263271613

`A092765(n)/A020639(A006093(n+1))`
-/

namespace A211867.P5085698690263271613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A211867.P5085698690263271613

/-! ## A211867.P8162796356576967070

`A092765(n)/A046523(A020639(n+1))`
-/

namespace A211867.P8162796356576967070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A046523 (A020639 (n + 1)).toNat : ℚ)

end

end A211867.P8162796356576967070

/-! ## A211867.P10104903514867133572

`A092765(n)/A014963(A061142(n+1))`
-/

namespace A211867.P10104903514867133572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A014963 (A061142 (n + 1)).toNat : ℚ)

end

end A211867.P10104903514867133572

/-! ## A211867.P5722894723312950673

`A092765(n)/A237271(A008578(n+1))`
-/

namespace A211867.P5722894723312950673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (A237271 (A008578 (n + 1)).toNat : ℚ)

end

end A211867.P5722894723312950673

/-! ## A211867.P15919576166671417654

`A092765(n)/gcd(2, A000302(n))`
-/

namespace A211867.P15919576166671417654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (Int.gcd 2 (A000302 n) : ℚ)

end

end A211867.P15919576166671417654

/-! ## A211867.P2384535881456042204

`A092765(n)/and(3, A047849(n))`
-/

namespace A211867.P2384535881456042204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092765 n : ℚ) / (Int.land 3 (A047849 n) : ℚ)

end

end A211867.P2384535881456042204

/-!
# A211869: a(n) = Sum_{j=1..n-1} j*(n-j)*b^(j-1) with b = floor(n^2/4)+1.

The programs for A211869, there is no canonical definition to state claims against.
-/

/-! ## A211869.P5023734971106957410

`xor(2, A243491(A107716(n)))`
-/

namespace A211869.P5023734971106957410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A243491 (A107716 n).toNat)

end

end A211869.P5023734971106957410

/-!
# A211870: Difference between sum of largest parts and sum of smallest parts of all partitions of n into an odd number of parts.

The programs for A211870, there is no canonical definition to state claims against.
-/

/-! ## A211870.P18161499557518816190

`A222047(n)-A222044(n)`
-/

namespace A211870.P18161499557518816190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n - A222044 n

end

end A211870.P18161499557518816190

/-! ## A211870.P318436636738395187

`A006128(n)-(A211881(n)+A046746(n))`
-/

namespace A211870.P318436636738395187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A211881 n + A046746 n)

end

end A211870.P318436636738395187

/-! ## A211870.P13922895416847042074

`A006128(n)-(A222048(n)+A222044(n))`
-/

namespace A211870.P13922895416847042074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A222048 n + A222044 n)

end

end A211870.P13922895416847042074

/-! ## A211870.P5395800623657394688

`A222045(n)+A222047(n)-A046746(n)`
-/

namespace A211870.P5395800623657394688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222045 n + (A222047 n - A046746 n)

end

end A211870.P5395800623657394688

/-! ## A211870.P3733122179220897065

`A222047(n)-(A222046(n)+A222045(n))`
-/

namespace A211870.P3733122179220897065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n - (A222046 n + A222045 n)

end

end A211870.P3733122179220897065

/-! ## A211870.P16444422015182688884

`A222048(n)+A222049(n)-A222044(n)`
-/

namespace A211870.P16444422015182688884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222048 n + (A222049 n - A222044 n)

end

end A211870.P16444422015182688884

/-!
# A211871: Number T(n,k) of permutations of n elements with no fixed points and largest cycle of length k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A211871, there is no canonical definition to state claims against.
-/

/-! ## A211871.P752640774359544752

`and(A031438(n)+n, A254040(n))`
-/

namespace A211871.P752640774359544752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031438 n + (n : ℤ)) (A254040 n)

end

end A211871.P752640774359544752

/-! ## A211871.P6383651854419837377

`A091229(A336574(n))*A346085(n)`
-/

namespace A211871.P6383651854419837377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091229 (A336574 n).toNat * A346085 n

end

end A211871.P6383651854419837377

/-! ## A211871.P1600033410629228080

`A345197(A327884(n+3))*A346085(n)`
-/

namespace A211871.P1600033410629228080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A327884 (n + 3)).toNat * A346085 n

end

end A211871.P1600033410629228080

/-! ## A211871.P4779325276830397236

`A254040(n)%A007953(A124886(3*n+5))`
-/

namespace A211871.P4779325276830397236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254040 n) (A007953 (A124886 (3 * n + 5)).toNat)

end

end A211871.P4779325276830397236

/-! ## A211871.P9094190504670218207

`and(A156351(A385908(3*(n+1))), A254040(n))`
-/

namespace A211871.P9094190504670218207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156351 (A385908 (3 * (n + 1))).toNat) (A254040 n)

end

end A211871.P9094190504670218207

/-!
# A211872: For each triprime (A014612) less than or equal to n, sum the positive integers less than or equal to the number of divisors of the triprime.

The programs for A211872, the canonical program `A211872.P2233114170905546091` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211872 has offset 1).

The definition of A211872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211872.P15180007328108952109

`∑[A101605(n+1)*A184389(n+1)]`
-/

namespace A211872.P15180007328108952109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1) * A184389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211872.P15180007328108952109

namespace A211872

/-- `∑[A101605(n+1)*A184389(n+1)]` -/
def P15180007328108952109.Spec : Prop :=
  ∀ n, P15180007328108952109.a n = A211872 (n + 1)

end A211872

/-! ## A211872.P11295125421517141742

`∑[A101637(2*(n+1))*A184389(n+1)]`
-/

namespace A211872.P11295125421517141742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1)) * A184389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211872.P11295125421517141742

namespace A211872

/-- `∑[A101637(2*(n+1))*A184389(n+1)]` -/
def P11295125421517141742.Spec : Prop :=
  ∀ n, P11295125421517141742.a n = A211872 (n + 1)

end A211872

/-! ## A211872.P2233114170905546091

`∑[A000217(∏{e}[n+1, #+1])*A101605(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211872

/-- `∑[A000217(∏{e}[n+1, #+1])*A101605(n+1)]` -/
def P2233114170905546091.Spec : Prop :=
  ∀ n, P2233114170905546091.a n = A211872 (n + 1)

theorem P2233114170905546091.correct : P2233114170905546091.Spec := by
  intro n
  simp only [A211872, Nat.add_sub_cancel]

end A211872

/-! ## A211872.P14020608077044893041

`∑[A000217(A000005(n+1)*A101605(n+1))]`
-/

namespace A211872.P14020608077044893041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1) * A101605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211872.P14020608077044893041

namespace A211872

/-- `∑[A000217(A000005(n+1)*A101605(n+1))]` -/
def P14020608077044893041.Spec : Prop :=
  ∀ n, P14020608077044893041.a n = A211872 (n + 1)

end A211872

/-! ## A211872.P16367982734861810443

`∑[A163575(A007318(A293524(n+1)))]`
-/

namespace A211872.P16367982734861810443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (A007318 (A293524 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211872.P16367982734861810443

namespace A211872

/-- `∑[A163575(A007318(A293524(n+1)))]` -/
def P16367982734861810443.Spec : Prop :=
  ∀ n, P16367982734861810443.a n = A211872 (n + 1)

end A211872

/-!
# A211873: Numbers b >= 0 such that 2 b^2 + 3 b + 5 is prime.

The programs for A211873, there is no canonical definition to state claims against.
-/

/-! ## A211873.P206864278433914640

`eq[1, A001222(2*(n+1)²-(n-3))]`
-/

namespace A211873.P206864278433914640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((2 * (n + 1) ^ 2 : ℤ) - ((n : ℤ) - 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211873.P206864278433914640

/-! ## A211873.P18401192171022681239

`eq[2, A000005(2*(n+1)²-(n-3))]`
-/

namespace A211873.P18401192171022681239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * (n + 1) ^ 2 : ℤ) - ((n : ℤ) - 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211873.P18401192171022681239

/-! ## A211873.P3828696942668323140

`lt[A000005(3*n+2*n²+5), 3]`
-/

namespace A211873.P3828696942668323140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + (2 * n ^ 2 + 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A211873.P3828696942668323140

/-! ## A211873.P6202409306214960600

`lt[A001222((n+1)*(2*n+1)+4), 2]`
-/

namespace A211873.P6202409306214960600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) * (2 * n + 1) + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A211873.P6202409306214960600

/-! ## A211873.P1561381894337647648

`lt[2*n, A020639((2*n+1)*(n+1)+4)]`
-/

namespace A211873.P1561381894337647648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * n + 1) * (n + 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A211873.P1561381894337647648

/-!
# A211874: Primes of the form Phi_k(3), the k-th cyclotomic polynomial evaluated at 3.

The programs for A211874, there is no canonical definition to state claims against.
-/

/-! ## A211874.P9678120755147366648

`record[A006530(A131030(n+1)*A133453(n))]`
-/

namespace A211874.P9678120755147366648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A131030 (n + 1) * A133453 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211874.P9678120755147366648

/-! ## A211874.P15209183958949447542

`A074476(n+2)%A008472(A063834(3*n+2))`
-/

namespace A211874.P15209183958949447542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074476 (n + 2)) (A008472 (A063834 (3 * n + 2)).toNat)

end

end A211874.P15209183958949447542

/-!
# A211875: Primes of the form Phi(phi(k),3), the phi(k)-th Cyclotomic polynomial evaluated at 3, where phi is the Euler totient function.

The programs for A211875, there is no canonical definition to state claims against.
-/

/-! ## A211875.P4390366768832463505

`A211874(record[Δ[A122303(n)]])`
-/

namespace A211875.P4390366768832463505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211874 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211875.P4390366768832463505

/-! ## A211875.P1948835760843638608

`record[p?[A019321(A000010(n+1))]]`
-/

namespace A211875.P1948835760843638608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019321 (A000010 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211875.P1948835760843638608

/-!
# A211876: Primes of the form Phi(phi(k),2), the phi(k)-th cyclotomic polynomial evaluated at 2, where phi is the Euler totient function.

The programs for A211876, there is no canonical definition to state claims against.
-/

/-! ## A211876.P15491527658804022725

`A153443(A307887(n)+A046052(n))`
-/

namespace A211876.P15491527658804022725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153443 (A307887 n + A046052 n).toNat

end

end A211876.P15491527658804022725

/-! ## A211876.P17417054525178269105

`A153443(A043562(n)*A175020(n+1))`
-/

namespace A211876.P17417054525178269105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153443 (A043562 n * A175020 (n + 1)).toNat

end

end A211876.P17417054525178269105

/-! ## A211876.P5034458456944500689

`A153443(A175020(n+1)^A043562(n))`
-/

namespace A211876.P5034458456944500689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153443 (SequenceMachineLib.roundAway ((A175020 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A211876.P5034458456944500689

/-! ## A211876.P6644329474557559445

`A153443(lcm(A043562(n), A175020(n+1)))`
-/

namespace A211876.P6644329474557559445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153443 (Int.lcm (A043562 n) (A175020 (n + 1)))

end

end A211876.P6644329474557559445

/-! ## A211876.P6677126296548623580

`A153443(C(A175020(n+1), A043562(n)))`
-/

namespace A211876.P6677126296548623580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153443 (Nat.choose (A175020 (n + 1)).toNat (A043562 n).toNat)

end

end A211876.P6677126296548623580

/-!
# A211880: Number of permutations of n elements with no fixed points and largest cycle of length 3.

The programs for A211880, there is no canonical definition to state claims against.
-/

/-! ## A211880.P2617099536352445337

`A055814(n)-A123023(n)`
-/

namespace A211880.P2617099536352445337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055814 n - A123023 n

end

end A211880.P2617099536352445337

/-! ## A211880.P12990054700212394511

`A055814(n)-A144299(A092530(n))`
-/

namespace A211880.P12990054700212394511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055814 n - A144299 (A092530 n).toNat

end

end A211880.P12990054700212394511

/-! ## A211880.P9119292115047745059

`A055814(n)-A144331(A135276(n))`
-/

namespace A211880.P9119292115047745059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055814 n - A144331 (A135276 n).toNat

end

end A211880.P9119292115047745059

/-! ## A211880.P1268085253551306748

`A055814(n)-A144331(A024206(n+1))`
-/

namespace A211880.P1268085253551306748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055814 n - A144331 (A024206 (n + 1)).toNat

end

end A211880.P1268085253551306748

/-! ## A211880.P7366480493923210905

`A211871(∑[n]+3)`
-/

namespace A211880.P7366480493923210905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211871 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A211880.P7366480493923210905

/-!
# A211881: Difference between sum of largest parts and sum of smallest parts of all partitions of n into an even number of parts.

The programs for A211881, there is no canonical definition to state claims against.
-/

/-! ## A211881.P7606552153582859634

`A222048(n)-A222045(n)`
-/

namespace A211881.P7606552153582859634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222048 n - A222045 n

end

end A211881.P7606552153582859634

/-! ## A211881.P15878924460889225660

`A006128(n)-(A211870(n)+A046746(n))`
-/

namespace A211881.P15878924460889225660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A211870 n + A046746 n)

end

end A211881.P15878924460889225660

/-! ## A211881.P5621702823255518565

`A006128(n)-(A222047(n)+A222045(n))`
-/

namespace A211881.P5621702823255518565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A222047 n + A222045 n)

end

end A211881.P5621702823255518565

/-! ## A211881.P6811737051416056581

`A222044(n)+A222048(n)-A046746(n)`
-/

namespace A211881.P6811737051416056581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222044 n + (A222048 n - A046746 n)

end

end A211881.P6811737051416056581

/-! ## A211881.P8884121787171988234

`A222046(n)+A222048(n)-A222044(n)`
-/

namespace A211881.P8884121787171988234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222046 n + (A222048 n - A222044 n)

end

end A211881.P8884121787171988234

/-! ## A211881.P11707430549618673252

`A222047(n)-(A222049(n)+A222045(n))`
-/

namespace A211881.P11707430549618673252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n - (A222049 n + A222045 n)

end

end A211881.P11707430549618673252

/-!
# A211882: Number of integral circulant graphs with perfect state transfer on 4*n vertices.

The programs for A211882, there is no canonical definition to state claims against.
-/

/-! ## A211882.P13552802911846457403

`A338506(A152271(n))^A001227(n+1)`
-/

namespace A211882.P13552802911846457403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338506 (A152271 n).toNat : ℚ) ^ (A001227 (n + 1) : ℤ)

end

end A211882.P13552802911846457403

/-! ## A211882.P6890400855162431383

`A338506(A057979(n+2))^A001227(n+1)`
-/

namespace A211882.P6890400855162431383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338506 (A057979 (n + 2)).toNat : ℚ) ^ (A001227 (n + 1) : ℤ)

end

end A211882.P6890400855162431383

/-! ## A211882.P7838806795832286069

`A060546(A054844(n+1))^A000005(A152271(n))`
-/

namespace A211882.P7838806795832286069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060546 (A054844 (n + 1)).toNat : ℚ) ^ (A000005 (A152271 n).toNat : ℤ)

end

end A211882.P7838806795832286069

/-! ## A211882.P15738981178113359327

`A000079(A320111(n+1))^A001227(A152271(n))`
-/

namespace A211882.P15738981178113359327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A320111 (n + 1)).toNat : ℚ) ^ (A001227 (A152271 n).toNat : ℤ)

end

end A211882.P15738981178113359327

/-! ## A211882.P12272669852065738128

`A000079(A320111(n+1))^A299480(A093178(n))`
-/

namespace A211882.P12272669852065738128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A320111 (n + 1)).toNat : ℚ) ^ (A299480 (A093178 n).toNat : ℤ)

end

end A211882.P12272669852065738128

/-! ## A211882.P18193047584124829833

`A060546(A054844(n+1))^A028310(A183063(n+1))`
-/

namespace A211882.P18193047584124829833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060546 (A054844 (n + 1)).toNat : ℚ) ^ (A028310 (A183063 (n + 1)).toNat : ℤ)

end

end A211882.P18193047584124829833

/-!
# A211885: Number of lower triangular n X n arrays of integers 0 upwards introduced in row major order, with each element unique in its row and column, and containing the value n(n+1)/2-2.

The programs for A211885, there is no canonical definition to state claims against.
-/

/-! ## A211885.P299330178535170158

`∑[char[1]+n*∑[n]]`
-/

namespace A211885.P299330178535170158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211885.P299330178535170158

/-! ## A211885.P5994399345941848018

`∑[n*∑[n]]+ceil(sin(n)²)`
-/

namespace A211885.P5994399345941848018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A211885.P5994399345941848018

/-! ## A211885.P3851985344924433531

`a(n-1)+n*∑[n]` with `a(0)=0, a(1)=2`
-/

namespace A211885.P3851985344924433531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211885.P3851985344924433531

/-! ## A211885.P5074385016185928725

`(∑[n*∑[n]]+1)%(3^n)`
-/

namespace A211885.P5074385016185928725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3 ^ n

end

end A211885.P5074385016185928725

/-! ## A211885.P12658864974480689122

`∑[n*∑[n]]+floor(atan(n+1))`
-/

namespace A211885.P12658864974480689122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A211885.P12658864974480689122

/-!
# A211886: Number of lower triangular n X n arrays of integers 0 upwards introduced in row major order, with each element unique in its row and column, and containing the value n(n+1)/2-3.

The programs for A211886, there is no canonical definition to state claims against.
-/

/-! ## A211886.P5724400490628873422

`A211888(∑[n+2])`
-/

namespace A211886.P5724400490628873422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211888 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211886.P5724400490628873422

/-! ## A211886.P1801989142107507014

`record[A211888(A193974(n))]`
-/

namespace A211886.P1801989142107507014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211888 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211886.P1801989142107507014

/-! ## A211886.P5590364954468063055

`record[(1-A211871(n))*A211888(n+1)]`
-/

namespace A211886.P5590364954468063055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A211871 n) * A211888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211886.P5590364954468063055

/-!
# A211887: Number of lower triangular n X n arrays of integers 0 upwards introduced in row major order, with each element unique in its row and column, and containing the value n(n+1)/2-4.

The programs for A211887, there is no canonical definition to state claims against.
-/

/-! ## A211887.P16370815972185196562

`A211888(∑[n+3]+1)`
-/

namespace A211887.P16370815972185196562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211888 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211887.P16370815972185196562

/-!
# A211889: Smallest positive d such that prime(n)+k*d is prime for 0 <= k <= n.

The programs for A211889, there is no canonical definition to state claims against.
-/

/-! ## A211889.P7129760302244716700

`record[Δ[p?[A211890(n)]]]`
-/

namespace A211889.P7129760302244716700
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211889.P7129760302244716700

/-! ## A211889.P16063640183608766140

`A000027(record[Δ[A211890(n)]])`
-/

namespace A211889.P16063640183608766140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211889.P16063640183608766140

/-!
# A211890: Triangle read by rows, where row n starts with n-th prime, followed by n primes in arithmetic progression; T(0,0) = 1 by convention.

The programs for A211890, there is no canonical definition to state claims against.
-/

/-! ## A211890.P17153442172196842097

`A113460(∑[A345046(n+4)^A070635(n+1)])`
-/

namespace A211890.P17153442172196842097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345046 (n + 4) : ℚ) ^ (A070635 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113460 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A211890.P17153442172196842097

/-!
# A211893: G.f.: exp( Sum_{n>=1} 3 * Jacobsthal(n)^n * x^n/n ), where Jacobsthal(n) = A001045(n).

The programs for A211893, there is no canonical definition to state claims against.
-/

/-! ## A211893.P18407331170323387907

`A057944(2^n+n!²)`
-/

namespace A211893.P18407331170323387907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (2 ^ n + Nat.factorial n ^ 2)

end

end A211893.P18407331170323387907

/-!
# A211894: G.f.: exp( Sum_{n>=1} 3 * Jacobsthal(n)^2 * x^n/n ), where Jacobsthal(n) = A001045(n).

The programs for A211894, there is no canonical definition to state claims against.
-/

/-! ## A211894.P113075546107027601

`A154287(round(2^(n-2))+ceil(2^(n-1)))`
-/

namespace A211894.P113075546107027601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154287 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A211894.P113075546107027601

/-! ## A211894.P6247305610020867214

`A014419(A274232(n))`
-/

namespace A211894.P6247305610020867214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A274232 n).toNat

end

end A211894.P6247305610020867214

/-!
# A211895: G.f.: exp( Sum_{n>=1} 3 * Jacobsthal(n)^3 * x^n/n ), where Jacobsthal(n) = A001045(n).

The programs for A211895, there is no canonical definition to state claims against.
-/

/-! ## A211895.P5312371199855628678

`A350845(a(n-1)+1)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A211895.P5312371199855628678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A350845 (a (n - 1) + 1).toNat

end

end A211895.P5312371199855628678

/-!
# A211896: G.f.: exp( Sum_{n>=1} 3 * Jacobsthal(n)^4 * x^n/n ), where Jacobsthal(n) = A001045(n).

The programs for A211896, there is no canonical definition to state claims against.
-/

/-! ## A211896.P767928833012752459

`record[A007733(Δ[A341920(n+1)]-n)]`
-/

namespace A211896.P767928833012752459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211896.P767928833012752459

/-!
# A211898: G.f.: exp( Sum_{n>=1} (2^n - (-1)^n)^n * x^n/n ).

The programs for A211898, there is no canonical definition to state claims against.
-/

/-! ## A211898.P12815543762408942249

`A061898(A000170(comp[a(n-2)+7]+n))` with `a(0)=2, a(1)=0, a(2)=6, a(3)=8`
-/

namespace A211898.P12815543762408942249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 6, 8] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A000170 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)).toNat

end

end A211898.P12815543762408942249

/-!
# A211899: Number of triangular n X n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any neighbor, and containing the value n(n+1)/2-2.

The programs for A211899, the canonical program `A211899.P18024240149601656115` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211899 has offset 1).

The definition of A211899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211899.P11710838123995316515

`∑[char[1]+(n+4)*C(n, 2)]`
-/

namespace A211899.P11710838123995316515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (n + 4) * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211899.P11710838123995316515

namespace A211899

/-- `∑[char[1]+(n+4)*C(n, 2)]` -/
def P11710838123995316515.Spec : Prop :=
  ∀ n, (P11710838123995316515.a n : ℤ) = A211899 (n + 1)

end A211899

/-! ## A211899.P5254156439658201554

`∑[char[1]+3*(∑[∑[n]]-n)]`
-/

namespace A211899.P5254156439658201554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 3 * (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211899.P5254156439658201554

namespace A211899

/-- `∑[char[1]+3*(∑[∑[n]]-n)]` -/
def P5254156439658201554.Spec : Prop :=
  ∀ n, P5254156439658201554.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P3429793340684309740

`a(n-1)+(n+4)*C(n, 2)` with `a(0)=0, a(1)=1`
-/

namespace A211899.P3429793340684309740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (n + 4) * Nat.choose n 2

end

end A211899.P3429793340684309740

namespace A211899

/-- `a(n-1)+(n+4)*C(n, 2)` -/
def P3429793340684309740.Spec : Prop :=
  ∀ n, (P3429793340684309740.a n : ℤ) = A211899 (n + 1)

end A211899

/-! ## A211899.P16140081363685969404

`a(n-1)+n*(∑[n+1]-3)` with `a(0)=0, a(1)=1`
-/

namespace A211899.P16140081363685969404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3)

end

end A211899.P16140081363685969404

namespace A211899

/-- `a(n-1)+n*(∑[n+1]-3)` -/
def P16140081363685969404.Spec : Prop :=
  ∀ n, P16140081363685969404.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P7586292169800907084

`C(abs(2-∑[n+1]), 2)+n-C(n, 2)`
-/

namespace A211899.P7586292169800907084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat 2 + n : ℤ) - (Nat.choose n 2 : ℤ)

end

end A211899.P7586292169800907084

namespace A211899

/-- `C(abs(2-∑[n+1]), 2)+n-C(n, 2)` -/
def P7586292169800907084.Spec : Prop :=
  ∀ n, P7586292169800907084.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P18024240149601656115

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=28, a(4)=76, a(5)=166`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211899

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P18024240149601656115.Spec : Prop :=
  ∀ n, P18024240149601656115.a n = A211899 (n + 1)

theorem P18024240149601656115.correct : P18024240149601656115.Spec := by
  intro n
  simp only [A211899, Nat.add_sub_cancel]

end A211899

/-! ## A211899.P16857557126486471645

`A211924(n+1)-n`
-/

namespace A211899.P16857557126486471645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211924 (n + 1) - (n : ℤ)

end

end A211899.P16857557126486471645

namespace A211899

/-- `A211924(n+1)-n` -/
def P16857557126486471645.Spec : Prop :=
  ∀ n, P16857557126486471645.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P1635745745315666357

`A211905(n+1)-∑[n]`
-/

namespace A211899.P1635745745315666357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211905 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211899.P1635745745315666357

namespace A211899

/-- `A211905(n+1)-∑[n]` -/
def P1635745745315666357.Spec : Prop :=
  ∀ n, P1635745745315666357.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P14893083100981835245

`A211911(n+1)+∑[n]-n`
-/

namespace A211899.P14893083100981835245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A211899.P14893083100981835245

namespace A211899

/-- `A211911(n+1)+∑[n]-n` -/
def P14893083100981835245.Spec : Prop :=
  ∀ n, P14893083100981835245.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P2909837864627308414

`A211958(n+1)-(∑[n]+n)`
-/

namespace A211899.P2909837864627308414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211958 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A211899.P2909837864627308414

namespace A211899

/-- `A211958(n+1)-(∑[n]+n)` -/
def P2909837864627308414.Spec : Prop :=
  ∀ n, P2909837864627308414.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P15868600033107171888

`A212039(n+1)+A000326(n)-n`
-/

namespace A211899.P15868600033107171888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212039 (n + 1) + (A000326 n - (n : ℤ))

end

end A211899.P15868600033107171888

namespace A211899

/-- `A212039(n+1)+A000326(n)-n` -/
def P15868600033107171888.Spec : Prop :=
  ∀ n, P15868600033107171888.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P6653474750967985115

`A057427(n)+A135503(n)+∑[A135503(n)]`
-/

namespace A211899.P6653474750967985115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A135503 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211899.P6653474750967985115

namespace A211899

/-- `A057427(n)+A135503(n)+∑[A135503(n)]` -/
def P6653474750967985115.Spec : Prop :=
  ∀ n, P6653474750967985115.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P6108069064213391709

`A135503(n)+∑[A135503(n)]-A057428(n)`
-/

namespace A211899.P6108069064213391709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + (∑ j ∈ Finset.range (n + 1), f1 j - A057428 n)

end

end A211899.P6108069064213391709

namespace A211899

/-- `A135503(n)+∑[A135503(n)]-A057428(n)` -/
def P6108069064213391709.Spec : Prop :=
  ∀ n, P6108069064213391709.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P2188924641576202025

`A000217(A000217(n+1))-A212342(2*n+1)`
-/

namespace A211899.P2188924641576202025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 (n + 1)).toNat - A212342 (2 * n + 1)

end

end A211899.P2188924641576202025

namespace A211899

/-- `A000217(A000217(n+1))-A212342(2*n+1)` -/
def P2188924641576202025.Spec : Prop :=
  ∀ n, P2188924641576202025.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P8284333270437330181

`A089071(A000217(n+1))-A002522(n)`
-/

namespace A211899.P8284333270437330181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (A000217 (n + 1)).toNat - A002522 n

end

end A211899.P8284333270437330181

namespace A211899

/-- `A089071(A000217(n+1))-A002522(n)` -/
def P8284333270437330181.Spec : Prop :=
  ∀ n, P8284333270437330181.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P17381228569370071472

`A253145(A000096(n))-A000096(2*n)`
-/

namespace A211899.P17381228569370071472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A000096 n).toNat - A000096 (2 * n)

end

end A211899.P17381228569370071472

namespace A211899

/-- `A253145(A000096(n))-A000096(2*n)` -/
def P17381228569370071472.Spec : Prop :=
  ∀ n, P17381228569370071472.a n = A211899 (n + 1)

end A211899

/-! ## A211899.P12072100024432198533

`A000096(A000096(n))-(A132209(n)+n)`
-/

namespace A211899.P12072100024432198533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A000096 n).toNat - (A132209 n + (n : ℤ))

end

end A211899.P12072100024432198533

namespace A211899

/-- `A000096(A000096(n))-(A132209(n)+n)` -/
def P12072100024432198533.Spec : Prop :=
  ∀ n, P12072100024432198533.a n = A211899 (n + 1)

end A211899

