import SequenceMachineLib
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A056800: Numbers n such that 6*9^n +1 is prime.

The programs for A056800, there is no canonical definition to state claims against.
-/

/-! ## A056800.P8726796256449457766

`floor(A334993(n+1)/2)`
-/

namespace A056800.P8726796256449457766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334993 (n + 1) : ℚ) / 2⌋

end

end A056800.P8726796256449457766

/-! ## A056800.P13491911515134676620

`(A334993(n+1)+A321800(n))/2`
-/

namespace A056800.P13491911515134676620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334993 (n + 1) + A321800 n : ℚ) / 2

end

end A056800.P13491911515134676620

/-! ## A056800.P8747081937625705399

`(A334993(n+1)-A133707(n+1))/2`
-/

namespace A056800.P8747081937625705399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334993 (n + 1) - A133707 (n + 1) : ℚ) / 2

end

end A056800.P8747081937625705399

/-! ## A056800.P1673354597220965962

`ceil(A308778(n²)+A334993(n+1)/2)`
-/

namespace A056800.P1673354597220965962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308778 (n ^ 2) : ℚ) + (A334993 (n + 1) : ℚ) / 2⌉

end

end A056800.P1673354597220965962

/-! ## A056800.P426477227488875523

`A028242(A334993(n+1))`
-/

namespace A056800.P426477227488875523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A334993 (n + 1)).toNat

end

end A056800.P426477227488875523

/-!
# A056801: Numbers k such that 4*9^k + 1 is prime.

The programs for A056801, there is no canonical definition to state claims against.
-/

/-! ## A056801.P4800538755636962718

`record[A142150(A005537(n+1))]`
-/

namespace A056801.P4800538755636962718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A005537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056801.P4800538755636962718

/-! ## A056801.P2065918331135316337

`record[A001057(A216889(n+1))]`
-/

namespace A056801.P2065918331135316337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A216889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056801.P2065918331135316337

/-! ## A056801.P18122313718224392469

`record[A142150(A216889(n+1)+1)]`
-/

namespace A056801.P18122313718224392469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A216889 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056801.P18122313718224392469

/-! ## A056801.P6994913377844566422

`record[A246425(A005537(n+2)-1)]`
-/

namespace A056801.P6994913377844566422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A005537 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056801.P6994913377844566422

/-!
# A056802: Numbers k such that 2*9^k + 1 is prime.

The programs for A056802, there is no canonical definition to state claims against.
-/

/-! ## A056802.P8164431135758028659

`record[A273943(A003306(n+1))]`
-/

namespace A056802.P8164431135758028659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A003306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056802.P8164431135758028659

/-! ## A056802.P841380134731818407

`record[A273943(A216888(n+1)+A130543(n))]`
-/

namespace A056802.P841380134731818407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A216888 (n + 1) + A130543 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056802.P841380134731818407

/-! ## A056802.P5884132435353435338

`record[A273943(A323022(n+1)+A216888(n+1))]`
-/

namespace A056802.P5884132435353435338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A323022 (n + 1) + A216888 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056802.P5884132435353435338

/-! ## A056802.P8146498167717881174

`record[A246425(A216888(n+1))]`
-/

namespace A056802.P8146498167717881174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A216888 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056802.P8146498167717881174

/-! ## A056802.P11860585693050346907

`record[A246425(A003306(n+2)-1)]`
-/

namespace A056802.P11860585693050346907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A003306 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056802.P11860585693050346907

/-!
# A056803: Numbers k such that k copies of 12 followed by 1 is a palindromic prime.

The programs for A056803, there is no canonical definition to state claims against.
-/

/-! ## A056803.P13337393479682248346

`A153328(n+1)/2`
-/

namespace A056803.P13337393479682248346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153328 (n + 1) : ℚ) / 2

end

end A056803.P13337393479682248346

/-! ## A056803.P13206692191408224488

`floor(A062209(n+1)/2)`
-/

namespace A056803.P13206692191408224488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062209 (n + 1) : ℚ) / 2⌋

end

end A056803.P13206692191408224488

/-! ## A056803.P16237703623229754555

`floor(xor(1, A153328(comp[14*n²]))/2)`
-/

namespace A056803.P16237703623229754555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor 1 (A153328 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) : ℚ) / 2⌋

end

end A056803.P16237703623229754555

/-! ## A056803.P16637794581811643980

`floor(A153328(A005496(n))/2)`
-/

namespace A056803.P16637794581811643980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153328 (A005496 n).toNat : ℚ) / 2⌋

end

end A056803.P16637794581811643980

/-! ## A056803.P8347572574007442640

`A014682(A062209(n+1)-1)`
-/

namespace A056803.P8347572574007442640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A062209 (n + 1) - 1).toNat

end

end A056803.P8347572574007442640

/-!
# A056804: Numbers k such that 7*10^k + 1 is prime.

The programs for A056804, there is no canonical definition to state claims against.
-/

/-! ## A056804.P14179057972363354385

`A101128(n+1)+1`
-/

namespace A056804.P14179057972363354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101128 (n + 1) + 1

end

end A056804.P14179057972363354385

/-! ## A056804.P3717387697404674282

`∩[A161950(n+1), A163077(n+1)]`
-/

namespace A056804.P3717387697404674282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056804.P3717387697404674282

/-! ## A056804.P13679641665643009298

`eq[A014473(n)+1, A334141(n+1)%A127763(n+1)]`
-/

namespace A056804.P13679641665643009298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334141 (n + 1)) (A127763 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056804.P13679641665643009298

/-!
# A056805: Numbers k such that 6*10^k+1 is prime.

The programs for A056805, there is no canonical definition to state claims against.
-/

/-! ## A056805.P17002221725288845926

`A101517(A028310(n))+A057427(n)`
-/

namespace A056805.P17002221725288845926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101517 (A028310 n).toNat + A057427 n

end

end A056805.P17002221725288845926

/-! ## A056805.P1081983880084542616

`A178334(n)+A101517(A028310(n))`
-/

namespace A056805.P1081983880084542616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101517 (A028310 n).toNat

end

end A056805.P1081983880084542616

/-! ## A056805.P17548032210275927069

`A178489(n)+A101517(A028310(n))`
-/

namespace A056805.P17548032210275927069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A101517 (A028310 n).toNat

end

end A056805.P17548032210275927069

/-! ## A056805.P12928955467111192170

`A101517(A028310(n))-A057428(n)`
-/

namespace A056805.P12928955467111192170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101517 (A028310 n).toNat - A057428 n

end

end A056805.P12928955467111192170

/-! ## A056805.P90888937953312322

`A101517(A028310(n))+char[A007318(n)]`
-/

namespace A056805.P90888937953312322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101517 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A056805.P90888937953312322

/-!
# A056806: Numbers n such that 4*10^n + 1 is prime.

The programs for A056806, there is no canonical definition to state claims against.
-/

/-! ## A056806.P1715886010534626834

`A101712(A028310(n))-(floor(acot(n))-1)`
-/

namespace A056806.P1715886010534626834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101712 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A056806.P1715886010534626834

/-! ## A056806.P2676454125166380407

`A101712(A028310(n))+A057427(n)`
-/

namespace A056806.P2676454125166380407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101712 (A028310 n).toNat + A057427 n

end

end A056806.P2676454125166380407

/-! ## A056806.P5088078177385684369

`A178334(n)+A101712(A028310(n))`
-/

namespace A056806.P5088078177385684369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101712 (A028310 n).toNat

end

end A056806.P5088078177385684369

/-! ## A056806.P6709552518194115143

`A101712(A028310(n))-A057428(n)`
-/

namespace A056806.P6709552518194115143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101712 (A028310 n).toNat - A057428 n

end

end A056806.P6709552518194115143

/-!
# A056807: Numbers k such that 3*10^k + 1 is prime.

The programs for A056807, there is no canonical definition to state claims against.
-/

/-! ## A056807.P387685016304042244

`A101823(n+1)+1`
-/

namespace A056807.P387685016304042244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101823 (n + 1) + 1

end

end A056807.P387685016304042244

/-! ## A056807.P11109889294082954298

`eq[A121172(n+1), A122553(n)]+1`
-/

namespace A056807.P11109889294082954298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056807.P11109889294082954298

/-! ## A056807.P7679156079042169116

`eq[A121172(n+1), A158799(n)]+1`
-/

namespace A056807.P7679156079042169116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056807.P7679156079042169116

/-! ## A056807.P4083235362078792240

`eq[3, A120124(n+1)]+1`
-/

namespace A056807.P4083235362078792240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120124 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056807.P4083235362078792240

/-! ## A056807.P11274172408420829768

`lt[A120124(A028310(n+1)), 4]+1`
-/

namespace A056807.P11274172408420829768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120124 (A028310 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056807.P11274172408420829768

/-!
# A056808: Members of A055932 which are not least prime signatures (cf. A025487).

The programs for A056808, there is no canonical definition to state claims against.
-/

/-! ## A056808.P3191884763501669206

`∪[A369420(n+1), A386224(n+1)]`
-/

namespace A056808.P3191884763501669206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056808.P3191884763501669206

/-! ## A056808.P12931532147468352299

`∩[A055932(n+1), A071365(n+1)]`
-/

namespace A056808.P12931532147468352299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056808.P12931532147468352299

/-! ## A056808.P13336272737210352334

`∩[A071365(n+1), A363814(n+1)]`
-/

namespace A056808.P13336272737210352334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056808.P13336272737210352334

/-! ## A056808.P13377858884749915250

`record[A071364(A071365(n+1))]`
-/

namespace A056808.P13377858884749915250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A071365 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056808.P13377858884749915250

/-! ## A056808.P17596320582898956326

`filter[A071365(n+1), A341629(#)]`
-/

namespace A056808.P17596320582898956326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A056808.P17596320582898956326

/-! ## A056808.P6220836197832345114

`filter[A367268(n+1), A341629(#)]`
-/

namespace A056808.P6220836197832345114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A056808.P6220836197832345114

/-! ## A056808.P1453052903902004424

`∩[A055932(n+1), A367268(n+1)]`
-/

namespace A056808.P1453052903902004424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056808.P1453052903902004424

/-! ## A056808.P15049419806136085192

`∩[A363814(n+1), A367268(n+1)]`
-/

namespace A056808.P15049419806136085192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056808.P15049419806136085192

/-! ## A056808.P7759463682738741015

`∩[A055932(n+1), A369361(n+1)]`
-/

namespace A056808.P7759463682738741015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056808.P7759463682738741015

/-! ## A056808.P7394531821719976577

`∩[A363814(n+1), A369361(n+1)]`
-/

namespace A056808.P7394531821719976577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056808.P7394531821719976577

/-!
# A056809: Numbers k such that k, k+1 and k+2 are products of two primes.

The programs for A056809, the canonical program `A056809.P5257664665188293059` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056809 has offset 1).

The definition of A056809 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123255, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056809.P6983839438735457746

`A086005(n+1)-1`
-/

namespace A056809.P6983839438735457746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086005 (n + 1) - 1

end

end A056809.P6983839438735457746

namespace A056809

/-- `A086005(n+1)-1` -/
def P6983839438735457746.Spec : Prop :=
  ∀ n, P6983839438735457746.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P884127582966400432

`2*A086006(n+1)-1`
-/

namespace A056809.P884127582966400432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086006 (n + 1) - 1

end

end A056809.P884127582966400432

namespace A056809

/-- `2*A086006(n+1)-1` -/
def P884127582966400432.Spec : Prop :=
  ∀ n, P884127582966400432.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P5257664665188293059

`4*A123255(n+1)+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056809

/-- `4*A123255(n+1)+1` -/
def P5257664665188293059.Spec : Prop :=
  ∀ n, P5257664665188293059.a n = A056809 (n + 1)

theorem P5257664665188293059.correct : P5257664665188293059.Spec := by
  intro n
  simp only [A056809, Nat.add_sub_cancel]

end A056809

/-! ## A056809.P2010559631688505316

`A115393(n+1)-2`
-/

namespace A056809.P2010559631688505316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115393 (n + 1) - 2

end

end A056809.P2010559631688505316

namespace A056809

/-- `A115393(n+1)-2` -/
def P2010559631688505316.Spec : Prop :=
  ∀ n, P2010559631688505316.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P6018011619871964525

`xor(2, A115393(A000027(n+1)))`
-/

namespace A056809.P6018011619871964525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A115393 (A000027 (n + 1)).toNat)

end

end A056809.P6018011619871964525

namespace A056809

/-- `xor(2, A115393(A000027(n+1)))` -/
def P6018011619871964525.Spec : Prop :=
  ∀ n, P6018011619871964525.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P11692254041037398590

`A086006(n+1)+A086006(n+1)-A008836(n+1)²`
-/

namespace A056809.P11692254041037398590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086006 (n + 1) + (A086006 (n + 1) - A008836 (n + 1) ^ 2)

end

end A056809.P11692254041037398590

namespace A056809

/-- `A086006(n+1)+A086006(n+1)-A008836(n+1)²` -/
def P11692254041037398590.Spec : Prop :=
  ∀ n, P11692254041037398590.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P7296210175491561413

`A260196(n+2)+A086005(n+1)`
-/

namespace A056809.P7296210175491561413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A086005 (n + 1)

end

end A056809.P7296210175491561413

namespace A056809

/-- `A260196(n+2)+A086005(n+1)` -/
def P7296210175491561413.Spec : Prop :=
  ∀ n, P7296210175491561413.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P5392589459916800749

`∩[A039832(n+1)-1, A045939(n+1)]`
-/

namespace A056809.P5392589459916800749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056809.P5392589459916800749

namespace A056809

/-- `∩[A039832(n+1)-1, A045939(n+1)]` -/
def P5392589459916800749.Spec : Prop :=
  ∀ n, (P5392589459916800749.a n : ℤ) = A056809 (n + 1)

end A056809

/-! ## A056809.P1767458920502197989

`∩[A045939(n+1), A263990(n+1)-1]`
-/

namespace A056809.P1767458920502197989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056809.P1767458920502197989

namespace A056809

/-- `∩[A045939(n+1), A263990(n+1)-1]` -/
def P1767458920502197989.Spec : Prop :=
  ∀ n, (P1767458920502197989.a n : ℤ) = A056809 (n + 1)

end A056809

/-! ## A056809.P691661991561634163

`∩[A039832(n+1), A278311(n+1)]-1`
-/

namespace A056809.P691661991561634163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A056809.P691661991561634163

namespace A056809

/-- `∩[A039832(n+1), A278311(n+1)]-1` -/
def P691661991561634163.Spec : Prop :=
  ∀ n, P691661991561634163.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P2533681693112654489

`∩[A263990(n+1), A278311(n+1)]-1`
-/

namespace A056809.P2533681693112654489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A056809.P2533681693112654489

namespace A056809

/-- `∩[A263990(n+1), A278311(n+1)]-1` -/
def P2533681693112654489.Spec : Prop :=
  ∀ n, P2533681693112654489.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P12512825143061154279

`∩[A045939(n+1), A070552(n+1)]`
-/

namespace A056809.P12512825143061154279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056809.P12512825143061154279

namespace A056809

/-- `∩[A045939(n+1), A070552(n+1)]` -/
def P12512825143061154279.Spec : Prop :=
  ∀ n, (P12512825143061154279.a n : ℤ) = A056809 (n + 1)

end A056809

/-! ## A056809.P9974450583516024637

`∩[A070552(n+1), A109373(n+1)]-1`
-/

namespace A056809.P9974450583516024637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A056809.P9974450583516024637

namespace A056809

/-- `∩[A070552(n+1), A109373(n+1)]-1` -/
def P9974450583516024637.Spec : Prop :=
  ∀ n, P9974450583516024637.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P1352252299869808988

`∩[A070552(n+1), A278311(n+1)-1]`
-/

namespace A056809.P1352252299869808988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056809.P1352252299869808988

namespace A056809

/-- `∩[A070552(n+1), A278311(n+1)-1]` -/
def P1352252299869808988.Spec : Prop :=
  ∀ n, (P1352252299869808988.a n : ℤ) = A056809 (n + 1)

end A056809

/-! ## A056809.P13594460650456939967

`∩[A109373(n+1), A263990(n+1)]-1`
-/

namespace A056809.P13594460650456939967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A056809.P13594460650456939967

namespace A056809

/-- `∩[A109373(n+1), A263990(n+1)]-1` -/
def P13594460650456939967.Spec : Prop :=
  ∀ n, P13594460650456939967.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P18135567046232957013

`∩[A109373(n+1), A278311(n+1)]-1`
-/

namespace A056809.P18135567046232957013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A056809.P18135567046232957013

namespace A056809

/-- `∩[A109373(n+1), A278311(n+1)]-1` -/
def P18135567046232957013.Spec : Prop :=
  ∀ n, P18135567046232957013.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P9392390139617320910

`∩[A070552(n+2)-1, A070552(n+2)]`
-/

namespace A056809.P9392390139617320910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056809.P9392390139617320910

namespace A056809

/-- `∩[A070552(n+2)-1, A070552(n+2)]` -/
def P9392390139617320910.Spec : Prop :=
  ∀ n, (P9392390139617320910.a n : ℤ) = A056809 (n + 1)

end A056809

/-! ## A056809.P14279717416653167211

`∩[A039832(n+1), A213025(n+1)]-1`
-/

namespace A056809.P14279717416653167211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A056809.P14279717416653167211

namespace A056809

/-- `∩[A039832(n+1), A213025(n+1)]-1` -/
def P14279717416653167211.Spec : Prop :=
  ∀ n, P14279717416653167211.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P15586228140184993137

`∩[A109373(n+1), A213025(n+1)]-1`
-/

namespace A056809.P15586228140184993137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A056809.P15586228140184993137

namespace A056809

/-- `∩[A109373(n+1), A213025(n+1)]-1` -/
def P15586228140184993137.Spec : Prop :=
  ∀ n, P15586228140184993137.a n = A056809 (n + 1)

end A056809

/-! ## A056809.P6955623965475529081

`∩[A213025(n+1), A263990(n+1)]-1`
-/

namespace A056809.P6955623965475529081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A056809.P6955623965475529081

namespace A056809

/-- `∩[A213025(n+1), A263990(n+1)]-1` -/
def P6955623965475529081.Spec : Prop :=
  ∀ n, P6955623965475529081.a n = A056809 (n + 1)

end A056809

/-!
# A056810: Numbers whose fourth power is a palindrome.

The programs for A056810, there is no canonical definition to state claims against.
-/

/-! ## A056810.P16626800382713806609

`floor(atan(n)+10^(n-1))`
-/

namespace A056810.P16626800382713806609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A056810.P16626800382713806609

/-! ## A056810.P8270937316016801259

`or(floor(10^(n-1)), floor(atan(n)))`
-/

namespace A056810.P8270937316016801259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ⌊Real.arctan (n : ℝ)⌋

end

end A056810.P8270937316016801259

/-! ## A056810.P17038608139765217211

`xor(floor(10^(n-1)), floor(atan(n)))`
-/

namespace A056810.P17038608139765217211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ⌊Real.arctan (n : ℝ)⌋

end

end A056810.P17038608139765217211

/-! ## A056810.P6868435858772917702

`or(floor(10^(n-1)), ceil(tanh(n)))`
-/

namespace A056810.P6868435858772917702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ⌈Real.tanh (n : ℝ)⌉

end

end A056810.P6868435858772917702

/-!
# A056811: Number of primes not exceeding square root of n: primepi(sqrt(n)).

The programs for A056811, the canonical program `A056811.P16286728648920269496` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056811 has offset 1).

The definition of A056811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056811.P2432088135144866372

`∑[A302048(n+1)]`
-/

namespace A056811.P2432088135144866372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P2432088135144866372

namespace A056811

/-- `∑[A302048(n+1)]` -/
def P2432088135144866372.Spec : Prop :=
  ∀ n, P2432088135144866372.a n = A056811 (n + 1)

end A056811

/-! ## A056811.P5764858490541572579

`A000720(floor(sqrt(n+1)))`
-/

namespace A056811.P5764858490541572579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.sqrt (n + 1))

end

end A056811.P5764858490541572579

namespace A056811

/-- `A000720(floor(sqrt(n+1)))` -/
def P5764858490541572579.Spec : Prop :=
  ∀ n, P5764858490541572579.a n = A056811 (n + 1)

end A056811

/-! ## A056811.P16286728648920269496

`A230980(floor(sqrt(n+1)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056811

/-- `A230980(floor(sqrt(n+1)))` -/
def P16286728648920269496.Spec : Prop :=
  ∀ n, P16286728648920269496.a n = A056811 (n + 1)

theorem P16286728648920269496.correct : P16286728648920269496.Spec := by
  intro n
  simp only [A056811, Nat.add_sub_cancel]

end A056811

/-! ## A056811.P12516515570330924487

`∑[char[A084920(n+1)]]`
-/

namespace A056811.P12516515570330924487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P12516515570330924487

namespace A056811

/-- `∑[char[A084920(n+1)]]` -/
def P12516515570330924487.Spec : Prop :=
  ∀ n, (P12516515570330924487.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P9873071873561747210

`∑[char[eq[2, A002033(n)]]]`
-/

namespace A056811.P9873071873561747210
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P9873071873561747210

namespace A056811

/-- `∑[char[eq[2, A002033(n)]]]` -/
def P9873071873561747210.Spec : Prop :=
  ∀ n, (P9873071873561747210.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P7767678008938442069

`∑[char[A007918(n)²-1]]`
-/

namespace A056811.P7767678008938442069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P7767678008938442069

namespace A056811

/-- `∑[char[A007918(n)²-1]]` -/
def P7767678008938442069.Spec : Prop :=
  ∀ n, (P7767678008938442069.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P12608297520695998024

`∑[char[A051698(n)²-1]]`
-/

namespace A056811.P12608297520695998024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P12608297520695998024

namespace A056811

/-- `∑[char[A051698(n)²-1]]` -/
def P12608297520695998024.Spec : Prop :=
  ∀ n, (P12608297520695998024.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P4526684817593374309

`∑[char[A062584(n)²-1]]`
-/

namespace A056811.P4526684817593374309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P4526684817593374309

namespace A056811

/-- `∑[char[A062584(n)²-1]]` -/
def P4526684817593374309.Spec : Prop :=
  ∀ n, (P4526684817593374309.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P13773302822284049592

`∑[char[A151800(n)²-1]]`
-/

namespace A056811.P13773302822284049592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P13773302822284049592

namespace A056811

/-- `∑[char[A151800(n)²-1]]` -/
def P13773302822284049592.Spec : Prop :=
  ∀ n, (P13773302822284049592.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P7266719375603008377

`∑[C(C(2, A279119(n+1)), 2)]`
-/

namespace A056811.P7266719375603008377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A279119 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P7266719375603008377

namespace A056811

/-- `∑[C(C(2, A279119(n+1)), 2)]` -/
def P7266719375603008377.Spec : Prop :=
  ∀ n, (P7266719375603008377.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P3411127180838203875

`∑[char[A000040(n+1)²-1]]`
-/

namespace A056811.P3411127180838203875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P3411127180838203875

namespace A056811

/-- `∑[char[A000040(n+1)²-1]]` -/
def P3411127180838203875.Spec : Prop :=
  ∀ n, (P3411127180838203875.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P11927980559389904732

`∑[char[A000705(n+1)²-1]]`
-/

namespace A056811.P11927980559389904732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1) ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P11927980559389904732

namespace A056811

/-- `∑[char[A000705(n+1)²-1]]` -/
def P11927980559389904732.Spec : Prop :=
  ∀ n, (P11927980559389904732.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P4798429885204879176

`∑[char[A005145(n+1)²-1]]`
-/

namespace A056811.P4798429885204879176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P4798429885204879176

namespace A056811

/-- `∑[char[A005145(n+1)²-1]]` -/
def P4798429885204879176.Spec : Prop :=
  ∀ n, (P4798429885204879176.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P1952835177187177938

`∑[char[A030291(n+1)²-1]]`
-/

namespace A056811.P1952835177187177938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1) ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P1952835177187177938

namespace A056811

/-- `∑[char[A030291(n+1)²-1]]` -/
def P1952835177187177938.Spec : Prop :=
  ∀ n, (P1952835177187177938.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P10426149541054903084

`∑[char[A038618(n+1)²-1]]`
-/

namespace A056811.P10426149541054903084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1) ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P10426149541054903084

namespace A056811

/-- `∑[char[A038618(n+1)²-1]]` -/
def P10426149541054903084.Spec : Prop :=
  ∀ n, (P10426149541054903084.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P10971655304098279407

`∑[char[A006530(n+2)²-1]]`
-/

namespace A056811.P10971655304098279407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2 - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P10971655304098279407

namespace A056811

/-- `∑[char[A006530(n+2)²-1]]` -/
def P10971655304098279407.Spec : Prop :=
  ∀ n, (P10971655304098279407.a n : ℤ) = A056811 (n + 1)

end A056811

/-! ## A056811.P11780632720473644197

`A056172(A000267(n+1))`
-/

namespace A056811.P11780632720473644197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A000267 (n + 1)).toNat

end

end A056811.P11780632720473644197

namespace A056811

/-- `A056172(A000267(n+1))` -/
def P11780632720473644197.Spec : Prop :=
  ∀ n, P11780632720473644197.a n = A056811 (n + 1)

end A056811

/-! ## A056811.P3207498395305338910

`A230773(A056813(n+1)²)`
-/

namespace A056811.P3207498395305338910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230773 (A056813 (n + 1) ^ 2).toNat

end

end A056811.P3207498395305338910

namespace A056811

/-- `A230773(A056813(n+1)²)` -/
def P3207498395305338910.Spec : Prop :=
  ∀ n, P3207498395305338910.a n = A056811 (n + 1)

end A056811

/-! ## A056811.P14580979379887976099

`∑[A063524(A300252(n+1))]`
-/

namespace A056811.P14580979379887976099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A300252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P14580979379887976099

namespace A056811

/-- `∑[A063524(A300252(n+1))]` -/
def P14580979379887976099.Spec : Prop :=
  ∀ n, P14580979379887976099.a n = A056811 (n + 1)

end A056811

/-! ## A056811.P2951736072478405481

`∑[val(A000040(A000005(n+1)), 5)]`
-/

namespace A056811.P2951736072478405481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A000005 (n + 1)).toNat).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056811.P2951736072478405481

namespace A056811

/-- `∑[val(A000040(A000005(n+1)), 5)]` -/
def P2951736072478405481.Spec : Prop :=
  ∀ n, (P2951736072478405481.a n : ℤ) = A056811 (n + 1)

end A056811

/-!
# A056812: Number of unitary prime factors of lcm[1..n], i.e., primes in LCM with exponent 1.

The programs for A056812, the canonical program `A056812.P14896031248377744571` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056812 has offset 1).

The definition of A056812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056812.P9999014049920866095

`A079715(n+1)-1`
-/

namespace A056812.P9999014049920866095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079715 (n + 1) - 1

end

end A056812.P9999014049920866095

namespace A056812

/-- `A079715(n+1)-1` -/
def P9999014049920866095.Spec : Prop :=
  ∀ n, P9999014049920866095.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P12274329953995180914

`A000720(n+1)-A056811(n+1)`
-/

namespace A056812.P12274329953995180914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A056811 (n + 1)

end

end A056812.P12274329953995180914

namespace A056812

/-- `A000720(n+1)-A056811(n+1)` -/
def P12274329953995180914.Spec : Prop :=
  ∀ n, P12274329953995180914.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P14896031248377744571

`A078342(n+1)-A066247(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056812

/-- `A078342(n+1)-A066247(n+1)` -/
def P14896031248377744571.Spec : Prop :=
  ∀ n, P14896031248377744571.a n = A056812 (n + 1)

theorem P14896031248377744571.correct : P14896031248377744571.Spec := by
  intro n
  simp only [A056812, Nat.add_sub_cancel]

end A056812

/-! ## A056812.P10539259963003979230

`A072613(n+1)-A243906(n+1)`
-/

namespace A056812.P10539259963003979230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (n + 1) - A243906 (n + 1)

end

end A056812.P10539259963003979230

namespace A056812

/-- `A072613(n+1)-A243906(n+1)` -/
def P10539259963003979230.Spec : Prop :=
  ∀ n, P10539259963003979230.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P1650021021231824483

`A036234(n+1)-(A056811(n+1)+1)`
-/

namespace A056812.P1650021021231824483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - (A056811 (n + 1) + 1)

end

end A056812.P1650021021231824483

namespace A056812

/-- `A036234(n+1)-(A056811(n+1)+1)` -/
def P1650021021231824483.Spec : Prop :=
  ∀ n, P1650021021231824483.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P92437365830011872

`A078342(n+1)+A080339(n+1)-1`
-/

namespace A056812.P92437365830011872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078342 (n + 1) + (A080339 (n + 1) - 1)

end

end A056812.P92437365830011872

namespace A056812

/-- `A078342(n+1)+A080339(n+1)-1` -/
def P92437365830011872.Spec : Prop :=
  ∀ n, P92437365830011872.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P11785687149227176366

`A000720(n+1)-A000720(A000196(n+1))`
-/

namespace A056812.P11785687149227176366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A000196 (n + 1)).toNat

end

end A056812.P11785687149227176366

namespace A056812

/-- `A000720(n+1)-A000720(A000196(n+1))` -/
def P11785687149227176366.Spec : Prop :=
  ∀ n, P11785687149227176366.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P6399675350948980077

`A000720(n+1)-A000720(A056813(n+1))`
-/

namespace A056812.P6399675350948980077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A056813 (n + 1)).toNat

end

end A056812.P6399675350948980077

namespace A056812

/-- `A000720(n+1)-A000720(A056813(n+1))` -/
def P6399675350948980077.Spec : Prop :=
  ∀ n, P6399675350948980077.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P14772695187474982296

`A000720(n+1)+A072613(n+1)-A072000(n+1)`
-/

namespace A056812.P14772695187474982296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A072613 (n + 1) - A072000 (n + 1))

end

end A056812.P14772695187474982296

namespace A056812

/-- `A000720(n+1)+A072613(n+1)-A072000(n+1)` -/
def P14772695187474982296.Spec : Prop :=
  ∀ n, P14772695187474982296.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P1476895164980261048

`A072000(n+1)-(A243906(n+1)+A056811(n+1))`
-/

namespace A056812.P1476895164980261048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) - (A243906 (n + 1) + A056811 (n + 1))

end

end A056812.P1476895164980261048

namespace A056812

/-- `A072000(n+1)-(A243906(n+1)+A056811(n+1))` -/
def P1476895164980261048.Spec : Prop :=
  ∀ n, P1476895164980261048.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P2478267744035974369

`A230980(n+1)-A056811(n+1)`
-/

namespace A056812.P2478267744035974369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A056811 (n + 1)

end

end A056812.P2478267744035974369

namespace A056812

/-- `A230980(n+1)-A056811(n+1)` -/
def P2478267744035974369.Spec : Prop :=
  ∀ n, P2478267744035974369.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P10805506414493122048

`A230980(n+1)-A230980(A000196(n+1))`
-/

namespace A056812.P10805506414493122048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A230980 (A000196 (n + 1)).toNat

end

end A056812.P10805506414493122048

namespace A056812

/-- `A230980(n+1)-A230980(A000196(n+1))` -/
def P10805506414493122048.Spec : Prop :=
  ∀ n, P10805506414493122048.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P12202067542782106072

`A056811(n+2)+A078342(n+2)-A230774(n+2)`
-/

namespace A056812.P12202067542782106072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (n + 2) + (A078342 (n + 2) - A230774 (n + 2))

end

end A056812.P12202067542782106072

namespace A056812

/-- `A056811(n+2)+A078342(n+2)-A230774(n+2)` -/
def P12202067542782106072.Spec : Prop :=
  ∀ n, P12202067542782106072.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P457914559167336976

`∑[A359773(A002033(n))]-1`
-/

namespace A056812.P457914559167336976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359773 (A002033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A056812.P457914559167336976

namespace A056812

/-- `∑[A359773(A002033(n))]-1` -/
def P457914559167336976.Spec : Prop :=
  ∀ n, P457914559167336976.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P17768983933132123467

`A056172(2*(n+1))-A056172(A000267(n+1))`
-/

namespace A056812.P17768983933132123467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 1)) - A056172 (A000267 (n + 1)).toNat

end

end A056812.P17768983933132123467

namespace A056812

/-- `A056172(2*(n+1))-A056172(A000267(n+1))` -/
def P17768983933132123467.Spec : Prop :=
  ∀ n, P17768983933132123467.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P10770957403596937535

`A056172(2*(n+1))-A056172(A060018(n+3))`
-/

namespace A056812.P10770957403596937535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 1)) - A056172 (A060018 (n + 3)).toNat

end

end A056812.P10770957403596937535

namespace A056812

/-- `A056172(2*(n+1))-A056172(A060018(n+3))` -/
def P10770957403596937535.Spec : Prop :=
  ∀ n, P10770957403596937535.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P506234803957108659

`∑[A015483(A000005(n+1)²)]+1`
-/

namespace A056812.P506234803957108659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015483 (A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A056812.P506234803957108659

namespace A056812

/-- `∑[A015483(A000005(n+1)²)]+1` -/
def P506234803957108659.Spec : Prop :=
  ∀ n, P506234803957108659.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P3614719024613618261

`A000720(n+1)-A001221(A104588(n+1))`
-/

namespace A056812.P3614719024613618261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A001221 (A104588 (n + 1)).toNat

end

end A056812.P3614719024613618261

namespace A056812

/-- `A000720(n+1)-A001221(A104588(n+1))` -/
def P3614719024613618261.Spec : Prop :=
  ∀ n, P3614719024613618261.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P8298233024122785256

`A083800(n+1)%A079715(n+1)`
-/

namespace A056812.P8298233024122785256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A079715 (n + 1))

end

end A056812.P8298233024122785256

namespace A056812

/-- `A083800(n+1)%A079715(n+1)` -/
def P8298233024122785256.Spec : Prop :=
  ∀ n, P8298233024122785256.a n = A056812 (n + 1)

end A056812

/-! ## A056812.P1707298400874809261

`A070198(n)%A079715(n+1)`
-/

namespace A056812.P1707298400874809261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A079715 (n + 1))

end

end A056812.P1707298400874809261

namespace A056812

/-- `A070198(n)%A079715(n+1)` -/
def P1707298400874809261.Spec : Prop :=
  ∀ n, P1707298400874809261.a n = A056812 (n + 1)

end A056812

/-!
# A056813: Largest non-unitary prime factor of LCM(1,...,n); that is, the largest prime which occurs to power > 1 in prime factorization of LCM(1,..,n).

The programs for A056813, the canonical program `A056813.P16387577618086397622` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056813 has offset 1).

The definition of A056813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056813.P18349135759246580374

`A136548(ceil(sqrt(n+2)))`
-/

namespace A056813.P18349135759246580374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 ⌈Real.sqrt (n + 2 : ℝ)⌉.toNat

end

end A056813.P18349135759246580374

namespace A056813

/-- `A136548(ceil(sqrt(n+2)))` -/
def P18349135759246580374.Spec : Prop :=
  ∀ n, P18349135759246580374.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P6601796165622942592

`A006530(floor(sqrt(n+1))*a(n-1))` with `a(0)=1`
-/

namespace A056813.P6601796165622942592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 ((Nat.sqrt (n + 1) : ℤ) * a (n - 1)).toNat

end

end A056813.P6601796165622942592

namespace A056813

/-- `A006530(floor(sqrt(n+1))*a(n-1))` -/
def P6601796165622942592.Spec : Prop :=
  ∀ n, P6601796165622942592.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P16387577618086397622

`A008578(A056811(n+1)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056813

/-- `A008578(A056811(n+1)+1)` -/
def P16387577618086397622.Spec : Prop :=
  ∀ n, P16387577618086397622.a n = A056813 (n + 1)

theorem P16387577618086397622.correct : P16387577618086397622.Spec := by
  intro n
  simp only [A056813, Nat.add_sub_cancel]

end A056813

/-! ## A056813.P2205239361738076298

`A015919(A056811(n+1)+1)`
-/

namespace A056813.P2205239361738076298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A056811 (n + 1) + 1).toNat

end

end A056813.P2205239361738076298

namespace A056813

/-- `A015919(A056811(n+1)+1)` -/
def P2205239361738076298.Spec : Prop :=
  ∀ n, P2205239361738076298.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P4588212948871652110

`A064555(A056811(n+1)+1)`
-/

namespace A056813.P4588212948871652110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A056811 (n + 1) + 1).toNat

end

end A056813.P4588212948871652110

namespace A056813

/-- `A064555(A056811(n+1)+1)` -/
def P4588212948871652110.Spec : Prop :=
  ∀ n, P4588212948871652110.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P14776033855429785154

`A006530(a(n-1)*A000196(n+1))` with `a(0)=1`
-/

namespace A056813.P14776033855429785154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) * A000196 (n + 1)).toNat

end

end A056813.P14776033855429785154

namespace A056813

/-- `A006530(a(n-1)*A000196(n+1))` -/
def P14776033855429785154.Spec : Prop :=
  ∀ n, P14776033855429785154.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P9066113821985469602

`A008578(A230774(n+2))`
-/

namespace A056813.P9066113821985469602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A230774 (n + 2)).toNat

end

end A056813.P9066113821985469602

namespace A056813

/-- `A008578(A230774(n+2))` -/
def P9066113821985469602.Spec : Prop :=
  ∀ n, P9066113821985469602.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P9462316612085087028

`A006530(lcm((n+1)/A006530(n+1), a(n-1)))` with `a(0)=1`
-/

namespace A056813.P9462316612085087028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))) (a (n - 1)))

end

end A056813.P9462316612085087028

namespace A056813

/-- `A006530(lcm((n+1)/A006530(n+1), a(n-1)))` -/
def P9462316612085087028.Spec : Prop :=
  ∀ n, P9462316612085087028.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P1395371693010824614

`A006530(A104588(n+1))`
-/

namespace A056813.P1395371693010824614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104588 (n + 1)).toNat

end

end A056813.P1395371693010824614

namespace A056813

/-- `A006530(A104588(n+1))` -/
def P1395371693010824614.Spec : Prop :=
  ∀ n, P1395371693010824614.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P12286839484106321429

`A084111(∑[A353787((n+1)²)])`
-/

namespace A056813.P12286839484106321429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353787 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056813.P12286839484106321429

namespace A056813

/-- `A084111(∑[A353787((n+1)²)])` -/
def P12286839484106321429.Spec : Prop :=
  ∀ n, P12286839484106321429.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P16284145187396569689

`A006530(a(n-1)/(A006530(n+1)/(n+1))²)` with `a(0)=1`
-/

namespace A056813.P16284145187396569689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((A006530 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2)).toNat

end

end A056813.P16284145187396569689

namespace A056813

/-- `A006530(a(n-1)/(A006530(n+1)/(n+1))²)` -/
def P16284145187396569689.Spec : Prop :=
  ∀ n, P16284145187396569689.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P16394554666884212138

`A082061((n+1)*a(n-1)²)` with `a(0)=1`
-/

namespace A056813.P16394554666884212138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082061 ((n + 1 : ℤ) * a (n - 1) ^ 2).toNat

end

end A056813.P16394554666884212138

namespace A056813

/-- `A082061((n+1)*a(n-1)²)` -/
def P16394554666884212138.Spec : Prop :=
  ∀ n, P16394554666884212138.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P15269511766595192496

`A006530(A342766(n+1)/A006530(A342766(n+1)))`
-/

namespace A056813.P15269511766595192496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A342766 (n + 1) : ℚ) / (A006530 (A342766 (n + 1)).toNat : ℚ))).toNat

end

end A056813.P15269511766595192496

namespace A056813

/-- `A006530(A342766(n+1)/A006530(A342766(n+1)))` -/
def P15269511766595192496.Spec : Prop :=
  ∀ n, P15269511766595192496.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P15684311642922255509

`A076820(A342766(n+1))`
-/

namespace A056813.P15684311642922255509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A342766 (n + 1)).toNat

end

end A056813.P15684311642922255509

namespace A056813

/-- `A076820(A342766(n+1))` -/
def P15684311642922255509.Spec : Prop :=
  ∀ n, P15684311642922255509.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P17157998267583702077

`A087039((n+1)*a(n-1)²)` with `a(0)=1`
-/

namespace A056813.P17157998267583702077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087039 ((n + 1 : ℤ) * a (n - 1) ^ 2).toNat

end

end A056813.P17157998267583702077

namespace A056813

/-- `A087039((n+1)*a(n-1)²)` -/
def P17157998267583702077.Spec : Prop :=
  ∀ n, P17157998267583702077.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P4332473793116538269

`A189172((n+1)*a(n-1)²)` with `a(0)=1`
-/

namespace A056813.P4332473793116538269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189172 ((n + 1 : ℤ) * a (n - 1) ^ 2).toNat

end

end A056813.P4332473793116538269

namespace A056813

/-- `A189172((n+1)*a(n-1)²)` -/
def P4332473793116538269.Spec : Prop :=
  ∀ n, P4332473793116538269.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P3021730575354584067

`A249740((n+1)*a(n-1)²)` with `a(0)=1`
-/

namespace A056813.P3021730575354584067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249740 ((n + 1 : ℤ) * a (n - 1) ^ 2).toNat

end

end A056813.P3021730575354584067

namespace A056813

/-- `A249740((n+1)*a(n-1)²)` -/
def P3021730575354584067.Spec : Prop :=
  ∀ n, P3021730575354584067.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P16404133413250142454

`A006530(A045948(n+1))`
-/

namespace A056813.P16404133413250142454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A045948 (n + 1)).toNat

end

end A056813.P16404133413250142454

namespace A056813

/-- `A006530(A045948(n+1))` -/
def P16404133413250142454.Spec : Prop :=
  ∀ n, P16404133413250142454.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P1206669643671183325

`A300518(A003418(A000196(n+1)))`
-/

namespace A056813.P1206669643671183325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (A003418 (A000196 (n + 1)).toNat).toNat

end

end A056813.P1206669643671183325

namespace A056813

/-- `A300518(A003418(A000196(n+1)))` -/
def P1206669643671183325.Spec : Prop :=
  ∀ n, P1206669643671183325.a n = A056813 (n + 1)

end A056813

/-! ## A056813.P14306738751739704655

`A006530(∏[A006530(A056926(n+1))])`
-/

namespace A056813.P14306738751739704655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056926 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056813.P14306738751739704655

namespace A056813

/-- `A006530(∏[A006530(A056926(n+1))])` -/
def P14306738751739704655.Spec : Prop :=
  ∀ n, P14306738751739704655.a n = A056813 (n + 1)

end A056813

/-!
# A056814: Triangle partitions of order n: topologically distinct ways to dissect a triangle into n triangles.

The programs for A056814, there is no canonical definition to state claims against.
-/

/-! ## A056814.P8857638038606679138

`A140758(or(n, A212071(n)))`
-/

namespace A056814.P8857638038606679138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (Int.lor (n : ℤ) (A212071 n)).toNat

end

end A056814.P8857638038606679138

/-!
# A056815: Primes with prime "look and say" descriptions.

The programs for A056815, there is no canonical definition to state claims against.
-/

/-! ## A056815.P16734842732080505290

`p?[A036978(n+1)]`
-/

namespace A056815.P16734842732080505290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056815.P16734842732080505290

/-! ## A056815.P467100338493640531

`p?[record[A036978(A324347(n))]]`
-/

namespace A056815.P467100338493640531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056815.P467100338493640531

/-! ## A056815.P13102840340252166043

`∩[A000040(n+1), A036978(n+1)]`
-/

namespace A056815.P13102840340252166043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P13102840340252166043

/-! ## A056815.P18346704285222022806

`∩[A004139(n+1), A036978(n+1)]`
-/

namespace A056815.P18346704285222022806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P18346704285222022806

/-! ## A056815.P7427574645214761615

`∩[A036978(n+1), A045319(n+1)]`
-/

namespace A056815.P7427574645214761615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P7427574645214761615

/-! ## A056815.P1819682938288083565

`∩[A036978(n+1), A051948(n+1)]`
-/

namespace A056815.P1819682938288083565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P1819682938288083565

/-! ## A056815.P13256740994340923749

`∩[A036978(n+1), A053813(n+1)]`
-/

namespace A056815.P13256740994340923749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P13256740994340923749

/-! ## A056815.P16921831868687648036

`∩[A036978(n+1), A064728(n+1)]`
-/

namespace A056815.P16921831868687648036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P16921831868687648036

/-! ## A056815.P15300976795303380648

`∩[A036978(n+1), A065091(n+1)]`
-/

namespace A056815.P15300976795303380648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P15300976795303380648

/-! ## A056815.P500728214962713207

`∩[A036978(n+1), A066542(n+1)]`
-/

namespace A056815.P500728214962713207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P500728214962713207

/-! ## A056815.P4214924477763865177

`∩[A036978(n+1), A116974(n+1)]`
-/

namespace A056815.P4214924477763865177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P4214924477763865177

/-! ## A056815.P17620220258701974588

`∩[A036978(n+1), A140826(n+1)]`
-/

namespace A056815.P17620220258701974588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P17620220258701974588

/-! ## A056815.P11620262924120744791

`∩[A036978(n+1), A175787(n+1)]`
-/

namespace A056815.P11620262924120744791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P11620262924120744791

/-! ## A056815.P12944910821296850489

`∩[A036978(n+1), A182986(n+1)]`
-/

namespace A056815.P12944910821296850489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P12944910821296850489

/-! ## A056815.P6650013631759633790

`∩[A036978(n+1), A251595(n+1)]`
-/

namespace A056815.P6650013631759633790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P6650013631759633790

/-! ## A056815.P17235278723936745708

`∩[A093515(2*(n+1)), A036978(n+2)]`
-/

namespace A056815.P17235278723936745708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P17235278723936745708

/-! ## A056815.P1959157372620919830

`∩[A036978(n+1), A053577(n+1)]`
-/

namespace A056815.P1959157372620919830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P1959157372620919830

/-! ## A056815.P18392838385778831003

`∩[A036978(n+1), A066191(n+1)]`
-/

namespace A056815.P18392838385778831003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056815.P18392838385778831003

/-! ## A056815.P358948557566321238

`record[A020639(A036978(n+2))]`
-/

namespace A056815.P358948557566321238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036978 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056815.P358948557566321238

/-! ## A056815.P9746837685344869637

`filter[A036978(n+1), A010051(#)]`
-/

namespace A056815.P9746837685344869637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A056815.P9746837685344869637

/-!
# A056816: Primes in the tribonacci sequence A000213.

The programs for A056816, there is no canonical definition to state claims against.
-/

/-! ## A056816.P5984020493947999839

`A000213(A157611(n+1))`
-/

namespace A056816.P5984020493947999839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (A157611 (n + 1)).toNat

end

end A056816.P5984020493947999839

/-! ## A056816.P898631320632197352

`p?[2*a(n-1)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A056816.P898631320632197352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056816.P898631320632197352

/-! ## A056816.P8041419424566017069

`p?[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A056816.P8041419424566017069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A056816.P8041419424566017069

/-! ## A056816.P17478894536164945969

`p?[A000213(n)]`
-/

namespace A056816.P17478894536164945969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056816.P17478894536164945969

/-!
# A056817: Least inverse of A056796.

The programs for A056817, there is no canonical definition to state claims against.
-/

/-! ## A056817.P446508044367962051

`eq[(n+1)/∏{p}[n+1, #], Δ[n%7*ceil(n/7)]]`
-/

namespace A056817.P446508044367962051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 7 : ℕ) : ℤ) * ⌈(n : ℚ) / 7⌉

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A056817.P446508044367962051

/-! ## A056817.P13038249968225250802

`eq[(n+1)/∏{p}[n+1, #], Δ[(n+2)*ceil((n+1)/7)]]`
-/

namespace A056817.P13038249968225250802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈(n + 1 : ℚ) / 7⌉

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A056817.P13038249968225250802

/-! ## A056817.P13062123722933628324

`eq[floor((n+1)/∏{p}[n+1, #]), A138999(n+1)]`
-/

namespace A056817.P13062123722933628324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A056817.P13062123722933628324

/-! ## A056817.P13775498148827912589

`eq[n, A292271(A171592(n))]`
-/

namespace A056817.P13775498148827912589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292271 (A171592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056817.P13775498148827912589

/-! ## A056817.P14778230143962865974

`eq[n, A171592(A292593(n))]`
-/

namespace A056817.P14778230143962865974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171592 (A292593 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056817.P14778230143962865974

/-!
# A056818: A number n is included if n^2 divides n-th term of A056855.

The programs for A056818, the canonical program `A056818.P10951133536727049415` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056818 has offset 1).

The definition of A056818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056818.P15608105248960030097

`record[gcd(n+1, A295574(n+1))]`
-/

namespace A056818.P15608105248960030097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A295574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056818.P15608105248960030097

namespace A056818

/-- `record[gcd(n+1, A295574(n+1))]` -/
def P15608105248960030097.Spec : Prop :=
  ∀ n, (P15608105248960030097.a n : ℤ) = A056818 (n + 1)

end A056818

/-! ## A056818.P10951133536727049415

`record[gcd(n+2, A334628(n+2))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056818

/-- `record[gcd(n+2, A334628(n+2))]` -/
def P10951133536727049415.Spec : Prop :=
  ∀ n, (P10951133536727049415.a n : ℤ) = A056818 (n + 1)

theorem P10951133536727049415.correct : P10951133536727049415.Spec := by
  intro n
  simp only [A056818, Nat.add_sub_cancel]

end A056818

/-! ## A056818.P5745854086629231117

`eq[A010135(n), A124778(n)]`
-/

namespace A056818.P5745854086629231117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056818.P5745854086629231117

namespace A056818

/-- `eq[A010135(n), A124778(n)]` -/
def P5745854086629231117.Spec : Prop :=
  ∀ n, (P5745854086629231117.a n : ℤ) = A056818 (n + 1)

end A056818

/-! ## A056818.P14403683097697583760

`eq[A040331(n), A124778(n)]`
-/

namespace A056818.P14403683097697583760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056818.P14403683097697583760

namespace A056818

/-- `eq[A040331(n), A124778(n)]` -/
def P14403683097697583760.Spec : Prop :=
  ∀ n, (P14403683097697583760.a n : ℤ) = A056818 (n + 1)

end A056818

/-! ## A056818.P5033556457462109095

`eq[A040912(n), A124778(n)]`
-/

namespace A056818.P5033556457462109095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040912 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056818.P5033556457462109095

namespace A056818

/-- `eq[A040912(n), A124778(n)]` -/
def P5033556457462109095.Spec : Prop :=
  ∀ n, (P5033556457462109095.a n : ℤ) = A056818 (n + 1)

end A056818

/-!
# A056819: a(n) = Product_{k|n} (n+1-k).

The programs for A056819, the canonical program `A056819.P11966680852443817500` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056819 has offset 1).

The definition of A056819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056819.P11966680852443817500

`∏{d}[n+1, 2-#+n]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056819

/-- `∏{d}[n+1, 2-#+n]` -/
def P11966680852443817500.Spec : Prop :=
  ∀ n, P11966680852443817500.a n = A056819 (n + 1)

theorem P11966680852443817500.correct : P11966680852443817500.Spec := by
  intro n
  simp only [A056819, Nat.add_sub_cancel]

end A056819

/-! ## A056819.P11363837761155382467

`2^∑{d}[n+1, log2(2-#+n)]`
-/

namespace A056819.P11363837761155382467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (2 - (d : ℤ) + (n : ℤ) : ℝ))

end

end A056819.P11363837761155382467

namespace A056819

/-- `2^∑{d}[n+1, log2(2-#+n)]` -/
def P11363837761155382467.Spec : Prop :=
  ∀ n, P11363837761155382467.a n = (A056819 (n + 1) : ℝ)

end A056819

/-! ## A056819.P9744664355190192611

`A306286(A034729(n+1))`
-/

namespace A056819.P9744664355190192611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A034729 (n + 1)).toNat

end

end A056819.P9744664355190192611

namespace A056819

/-- `A306286(A034729(n+1))` -/
def P9744664355190192611.Spec : Prop :=
  ∀ n, P9744664355190192611.a n = A056819 (n + 1)

end A056819

/-! ## A056819.P11536132197031164472

`A306286(A055895(n+1)/2)`
-/

namespace A056819.P11536132197031164472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (SequenceMachineLib.roundAway ((A055895 (n + 1) : ℚ) / 2)).toNat

end

end A056819.P11536132197031164472

namespace A056819

/-- `A306286(A055895(n+1)/2)` -/
def P11536132197031164472.Spec : Prop :=
  ∀ n, P11536132197031164472.a n = A056819 (n + 1)

end A056819

/-! ## A056819.P6933937863876575061

`A306286(A055895(n+1))`
-/

namespace A056819.P6933937863876575061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A055895 (n + 1)).toNat

end

end A056819.P6933937863876575061

namespace A056819

/-- `A306286(A055895(n+1))` -/
def P6933937863876575061.Spec : Prop :=
  ∀ n, P6933937863876575061.a n = A056819 (n + 1)

end A056819

/-!
# A056820: Euler totient function of Cullen numbers (A002064), n*2^n +1.

The programs for A056820, the canonical program `A056820.P6967666015395470887` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056820 has offset 0).

The definition of A056820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056820.P6967666015395470887

`A000010(A002064(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056820

/-- `A000010(A002064(n))` -/
def P6967666015395470887.Spec : Prop :=
  ∀ n, P6967666015395470887.a n = A056820 n

theorem P6967666015395470887.correct : P6967666015395470887.Spec := by
  intro n
  simp only [A056820]

end A056820

/-! ## A056820.P12441751021229562647

`A000010(n*2^n+1)`
-/

namespace A056820.P12441751021229562647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n * 2 ^ n + 1)

end

end A056820.P12441751021229562647

namespace A056820

/-- `A000010(n*2^n+1)` -/
def P12441751021229562647.Spec : Prop :=
  ∀ n, P12441751021229562647.a n = A056820 n

end A056820

/-! ## A056820.P8675444109308666359

`A062570(n*2^n+1)`
-/

namespace A056820.P8675444109308666359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n * 2 ^ n + 1)

end

end A056820.P8675444109308666359

namespace A056820

/-- `A062570(n*2^n+1)` -/
def P8675444109308666359.Spec : Prop :=
  ∀ n, P8675444109308666359.a n = A056820 n

end A056820

/-! ## A056820.P6720476161674309376

`abs(A000010(n*A000079(n)+1)-A000038(n))`
-/

namespace A056820.P6720476161674309376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 ((n : ℤ) * A000079 n + 1).toNat - A000038 n|

end

end A056820.P6720476161674309376

namespace A056820

/-- `abs(A000010(n*A000079(n)+1)-A000038(n))` -/
def P6720476161674309376.Spec : Prop :=
  ∀ n, P6720476161674309376.a n = A056820 n

end A056820

/-! ## A056820.P6502975578553734563

`A300718(A048495(n+1))`
-/

namespace A056820.P6502975578553734563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300718 (A048495 (n + 1)).toNat

end

end A056820.P6502975578553734563

namespace A056820

/-- `A300718(A048495(n+1))` -/
def P6502975578553734563.Spec : Prop :=
  ∀ n, P6502975578553734563.a n = A056820 n

end A056820

/-!
# A056821: Totient of the Woodall numbers (A003261), n*2^n -1.

The programs for A056821, there is no canonical definition to state claims against.
-/

/-! ## A056821.P5908357739174375017

`A000010(Δ[(n-1)*∑[2^n]])`
-/

namespace A056821.P5908357739174375017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A056821.P5908357739174375017

/-! ## A056821.P562590153682574221

`char[13]+A000010(∑[(n+2)*2^n]-1)`
-/

namespace A056821.P562590153682574221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000010 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A056821.P562590153682574221

/-! ## A056821.P7876789586442742443

`A062570(A003261(n+1))`
-/

namespace A056821.P7876789586442742443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A003261 (n + 1)).toNat

end

end A056821.P7876789586442742443

/-! ## A056821.P18177889704373588365

`A062570(2*A001787(n+1)-1)`
-/

namespace A056821.P18177889704373588365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (2 * A001787 (n + 1) - 1).toNat

end

end A056821.P18177889704373588365

/-! ## A056821.P13039096702244462063

`A000010(∑[(n+2)*2^n]-1)-A064459(n)`
-/

namespace A056821.P13039096702244462063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A064459 n

end

end A056821.P13039096702244462063

/-!
# A056822: Nearest integer to n^2/16.

The programs for A056822, the canonical program `A056822.P8885983037383351689` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056822 has offset 0).

The definition of A056822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056822.P8885983037383351689

`round((n/4)²)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056822

/-- `round((n/4)²)` -/
def P8885983037383351689.Spec : Prop :=
  ∀ n, P8885983037383351689.a n = A056822 n

theorem P8885983037383351689.correct : P8885983037383351689.Spec := by
  intro n
  simp only [A056822]

end A056822

/-! ## A056822.P13653212690503024271

`floor((1/acot(n/4))²)`
-/

namespace A056822.P13653212690503024271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 / SequenceMachineLib.acot ((n : ℚ) / 4 : ℝ)) ^ 2⌋

end

end A056822.P13653212690503024271

namespace A056822

/-- `floor((1/acot(n/4))²)` -/
def P13653212690503024271.Spec : Prop :=
  ∀ n, P13653212690503024271.a n = A056822 n

end A056822

/-! ## A056822.P2697888301037088731

`floor(acot(n/4)^-2)`
-/

namespace A056822.P2697888301037088731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((n : ℚ) / 4 : ℝ) ^ (-2 : ℤ)⌋

end

end A056822.P2697888301037088731

namespace A056822

/-- `floor(acot(n/4)^-2)` -/
def P2697888301037088731.Spec : Prop :=
  ∀ n, P2697888301037088731.a n = A056822 n

end A056822

/-! ## A056822.P39787429337249209

`floor((cosh(3)+n²)/16)`
-/

namespace A056822.P39787429337249209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cosh (3 : ℝ) + (n ^ 2 : ℝ)) / 16⌋

end

end A056822.P39787429337249209

namespace A056822

/-- `floor((cosh(3)+n²)/16)` -/
def P39787429337249209.Spec : Prop :=
  ∀ n, P39787429337249209.a n = A056822 n

end A056822

/-! ## A056822.P6088251688435679069

`floor((n²-cot(3))/16)`
-/

namespace A056822.P6088251688435679069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℝ) - Real.cot (3 : ℝ)) / 16⌋

end

end A056822.P6088251688435679069

namespace A056822

/-- `floor((n²-cot(3))/16)` -/
def P6088251688435679069.Spec : Prop :=
  ∀ n, P6088251688435679069.a n = A056822 n

end A056822

/-! ## A056822.P14292473713210474547

`floor(or(2, n²+7)/16)`
-/

namespace A056822.P14292473713210474547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (n ^ 2 + 7) : ℚ) / 16⌋

end

end A056822.P14292473713210474547

namespace A056822

/-- `floor(or(2, n²+7)/16)` -/
def P14292473713210474547.Spec : Prop :=
  ∀ n, P14292473713210474547.a n = A056822 n

end A056822

/-! ## A056822.P564956260346160378

`or(round((n/4)^2), char[3])`
-/

namespace A056822.P564956260346160378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (((n : ℚ) / 4) ^ 2)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A056822.P564956260346160378

namespace A056822

/-- `or(round((n/4)^2), char[3])` -/
def P564956260346160378.Spec : Prop :=
  ∀ n, P564956260346160378.a n = A056822 n

end A056822

/-! ## A056822.P1390085387961927126

`ceil(∑[and(n+1, -4)/8])`
-/

namespace A056822.P1390085387961927126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 1 : ℤ) (-4) : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A056822.P1390085387961927126

namespace A056822

/-- `ceil(∑[and(n+1, -4)/8])` -/
def P1390085387961927126.Spec : Prop :=
  ∀ n, P1390085387961927126.a n = A056822 n

end A056822

/-! ## A056822.P1621389347190257462

`∑[floor(∑[1-a(n-1)]/4)]` with `a(0)=0, a(1)=3`
-/

namespace A056822.P1621389347190257462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056822.P1621389347190257462

namespace A056822

/-- `∑[floor(∑[1-a(n-1)]/4)]` -/
def P1621389347190257462.Spec : Prop :=
  ∀ n, P1621389347190257462.a n = A056822 n

end A056822

/-! ## A056822.P4832511192385347491

`floor((∑[n-n%2]/2+2)/4)`
-/

namespace A056822.P4832511192385347491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 + 2) / 4⌋

end

end A056822.P4832511192385347491

namespace A056822

/-- `floor((∑[n-n%2]/2+2)/4)` -/
def P4832511192385347491.Spec : Prop :=
  ∀ n, P4832511192385347491.a n = A056822 n

end A056822

/-! ## A056822.P8200713805212990797

`floor((ceil(∑[or(1, n-1)]/2)+2)/4)`
-/

namespace A056822.P8200713805212990797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉ + 2 : ℚ) / 4⌋

end

end A056822.P8200713805212990797

namespace A056822

/-- `floor((ceil(∑[or(1, n-1)]/2)+2)/4)` -/
def P8200713805212990797.Spec : Prop :=
  ∀ n, P8200713805212990797.a n = A056822 n

end A056822

/-! ## A056822.P2821051154137409178

`floor((and(n²+1, n²)/4+2)/4)`
-/

namespace A056822.P2821051154137409178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.land (n ^ 2 + 1) (n ^ 2) : ℚ) / 4 + 2) / 4⌋

end

end A056822.P2821051154137409178

namespace A056822

/-- `floor((and(n²+1, n²)/4+2)/4)` -/
def P2821051154137409178.Spec : Prop :=
  ∀ n, P2821051154137409178.a n = A056822 n

end A056822

/-! ## A056822.P18204760276642460847

`Δ[A177189(abs(1-n))]`
-/

namespace A056822.P18204760276642460847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177189 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056822.P18204760276642460847

namespace A056822

/-- `Δ[A177189(abs(1-n))]` -/
def P18204760276642460847.Spec : Prop :=
  ∀ n, P18204760276642460847.a n = A056822 n

end A056822

/-! ## A056822.P12777581727983745155

`floor((sqrt(A030179(n))+2)/4)`
-/

namespace A056822.P12777581727983745155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A030179 n : ℝ) + 2) / 4⌋

end

end A056822.P12777581727983745155

namespace A056822

/-- `floor((sqrt(A030179(n))+2)/4)` -/
def P12777581727983745155.Spec : Prop :=
  ∀ n, P12777581727983745155.a n = A056822 n

end A056822

/-! ## A056822.P5450611183083463748

`ceil(∑[A004526(ceil(n/2))]/2)`
-/

namespace A056822.P5450611183083463748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A056822.P5450611183083463748

namespace A056822

/-- `ceil(∑[A004526(ceil(n/2))]/2)` -/
def P5450611183083463748.Spec : Prop :=
  ∀ n, P5450611183083463748.a n = A056822 n

end A056822

/-! ## A056822.P11117592697893747175

`floor(∑[A004277(floor((n+1)/4))]/4)`
-/

namespace A056822.P11117592697893747175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌊(n + 1 : ℚ) / 4⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A056822.P11117592697893747175

namespace A056822

/-- `floor(∑[A004277(floor((n+1)/4))]/4)` -/
def P11117592697893747175.Spec : Prop :=
  ∀ n, P11117592697893747175.a n = A056822 n

end A056822

/-! ## A056822.P9547456772951622945

`∑[A059169(A162330(n+1))]`
-/

namespace A056822.P9547456772951622945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A162330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056822.P9547456772951622945

namespace A056822

/-- `∑[A059169(A162330(n+1))]` -/
def P9547456772951622945.Spec : Prop :=
  ∀ n, P9547456772951622945.a n = A056822 n

end A056822

/-! ## A056822.P16748800260622789033

`A361202(n+1)-A008619(n)`
-/

namespace A056822.P16748800260622789033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361202 (n + 1) - A008619 n

end

end A056822.P16748800260622789033

namespace A056822

/-- `A361202(n+1)-A008619(n)` -/
def P16748800260622789033.Spec : Prop :=
  ∀ n, P16748800260622789033.a n = A056822 n

end A056822

/-! ## A056822.P7101203709508286009

`ceil(∑[A002265(n+1)/2])`
-/

namespace A056822.P7101203709508286009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A056822.P7101203709508286009

namespace A056822

/-- `ceil(∑[A002265(n+1)/2])` -/
def P7101203709508286009.Spec : Prop :=
  ∀ n, P7101203709508286009.a n = A056822 n

end A056822

/-! ## A056822.P2302343783578152800

`∑[A059169(A183041(n+1))]`
-/

namespace A056822.P2302343783578152800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A183041 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056822.P2302343783578152800

namespace A056822

/-- `∑[A059169(A183041(n+1))]` -/
def P2302343783578152800.Spec : Prop :=
  ∀ n, P2302343783578152800.a n = A056822 n

end A056822

/-!
# A056823: Number of compositions minus number of partitions: A011782(n) - A000041(n).

The programs for A056823, there is no canonical definition to state claims against.
-/

/-! ## A056823.P10488291409444090401

`2*a(n-1)+A117989(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A056823.P10488291409444090401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) + A117989 (n - 1)

end

end A056823.P10488291409444090401

/-! ## A056823.P18385851426250072530

`A011782(n)-A000041(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056823.P18385851426250072530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000041 n

end

end A056823.P18385851426250072530

/-! ## A056823.P5437101165034046493

`ceil(2^(n-1))-∑[A002865(n)]`
-/

namespace A056823.P5437101165034046493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056823.P5437101165034046493

/-! ## A056823.P464684845949031940

`A237047(n)+A230441(n)`
-/

namespace A056823.P464684845949031940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237047 n + A230441 n

end

end A056823.P464684845949031940

/-! ## A056823.P9253456925473867913

`A094373(n)-A052810(n)`
-/

namespace A056823.P9253456925473867913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A052810 n

end

end A056823.P9253456925473867913

/-! ## A056823.P993975662345025395

`A337698(n)-A047967(n)`
-/

namespace A056823.P993975662345025395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337698 n - A047967 n

end

end A056823.P993975662345025395

/-! ## A056823.P11290360048893723430

`A011782(n)-(A000065(n)+1)`
-/

namespace A056823.P11290360048893723430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A000065 n + 1)

end

end A056823.P11290360048893723430

/-! ## A056823.P5669177093439443853

`A056469(n)-(A052810(n)+1)`
-/

namespace A056823.P5669177093439443853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - (A052810 n + 1)

end

end A056823.P5669177093439443853

/-! ## A056823.P9522307600179193382

`A166444(n+1)-A000041(n)`
-/

namespace A056823.P9522307600179193382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - A000041 n

end

end A056823.P9522307600179193382

/-! ## A056823.P3342881160666353400

`A288133(n+1)-A133041(n)`
-/

namespace A056823.P3342881160666353400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 1) - A133041 n

end

end A056823.P3342881160666353400

/-! ## A056823.P7051212746453365179

`A011782(n)-A035363(2*n)`
-/

namespace A056823.P7051212746453365179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A035363 (2 * n)

end

end A056823.P7051212746453365179

/-! ## A056823.P6483525573867402311

`A011782(n)-A100824(2*n)`
-/

namespace A056823.P6483525573867402311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A100824 (2 * n)

end

end A056823.P6483525573867402311

/-! ## A056823.P14354785882752005703

`A011782(n)-A119620(2*n)`
-/

namespace A056823.P14354785882752005703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A119620 (2 * n)

end

end A056823.P14354785882752005703

/-! ## A056823.P13558234411206446355

`A011782(n)-A035377(3*n)`
-/

namespace A056823.P13558234411206446355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A035377 (3 * n)

end

end A056823.P13558234411206446355

/-! ## A056823.P149600263551419722

`A011782(n)-A139582(n)/2`
-/

namespace A056823.P149600263551419722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) - (A139582 n : ℚ) / 2

end

end A056823.P149600263551419722

/-! ## A056823.P11773276816094798022

`A131577(n)-record[A035363(n+1)]`
-/

namespace A056823.P11773276816094798022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056823.P11773276816094798022

/-! ## A056823.P5634005329214413022

`gcd(2, A000010(n+2))^(n-1)-A000041(n)`
-/

namespace A056823.P5634005329214413022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A000041 n : ℚ)

end

end A056823.P5634005329214413022

/-! ## A056823.P6639535565017903438

`A000032(C(2, n+2))^(n-1)-A000041(n)`
-/

namespace A056823.P6639535565017903438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (Nat.choose 2 (n + 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A000041 n : ℚ)

end

end A056823.P6639535565017903438

/-! ## A056823.P7099056191880748049

`A011782(n)-(A047967(n)+A000009(n))`
-/

namespace A056823.P7099056191880748049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A047967 n + A000009 n)

end

end A056823.P7099056191880748049

/-! ## A056823.P5086924308872877290

`A011782(n)+A230441(n)-A015128(n)`
-/

namespace A056823.P5086924308872877290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A230441 n - A015128 n)

end

end A056823.P5086924308872877290

/-!
# A056824: Numbers of the form p^(2k+1), p prime, k >= 1.

The programs for A056824, there is no canonical definition to state claims against.
-/

/-! ## A056824.P6432747168780085069

`∩[A246549(n+1), A384518(n+1)]`
-/

namespace A056824.P6432747168780085069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P6432747168780085069

/-! ## A056824.P1603223773907354874

`∩[A097054(n+1), A246549(n+1)]`
-/

namespace A056824.P1603223773907354874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P1603223773907354874

/-! ## A056824.P8854200536801139018

`∩[A246549(n+1), A335988(n+1)]`
-/

namespace A056824.P8854200536801139018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P8854200536801139018

/-! ## A056824.P3721934004817529510

`∩[A246549(n+1), A304291(n+1)]`
-/

namespace A056824.P3721934004817529510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P3721934004817529510

/-! ## A056824.P9855407587982974302

`∩[A246549(n+1), A370788(n+1)]`
-/

namespace A056824.P9855407587982974302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P9855407587982974302

/-! ## A056824.P1573866723780653838

`∩[A246549(n+1), A376173(n+1)]`
-/

namespace A056824.P1573866723780653838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P1573866723780653838

/-! ## A056824.P28832797818860664

`∩[A056729(n+1), A246549(n+1)]`
-/

namespace A056824.P28832797818860664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P28832797818860664

/-! ## A056824.P16211098967917192635

`∩[A025475(n+1), A056729(n+1)]`
-/

namespace A056824.P16211098967917192635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P16211098967917192635

/-! ## A056824.P17230347920793246359

`∩[A025475(n+1), A097054(n+1)]`
-/

namespace A056824.P17230347920793246359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P17230347920793246359

/-! ## A056824.P13996306678634494539

`∩[A025475(n+1), A370788(n+1)]`
-/

namespace A056824.P13996306678634494539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P13996306678634494539

/-! ## A056824.P16217037505931427341

`∩[A025475(n+1), A376173(n+1)]`
-/

namespace A056824.P16217037505931427341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P16217037505931427341

/-! ## A056824.P14182165682117397805

`∩[A025475(n+1), A384518(n+1)]`
-/

namespace A056824.P14182165682117397805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P14182165682117397805

/-! ## A056824.P7925112829345618548

`∩[A056729(n+1), A073540(n+1)]`
-/

namespace A056824.P7925112829345618548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P7925112829345618548

/-! ## A056824.P3662902824884464734

`∩[A073540(n+1), A097054(n+1)]`
-/

namespace A056824.P3662902824884464734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P3662902824884464734

/-! ## A056824.P8750900312979449386

`∩[A073540(n+1), A384518(n+1)]`
-/

namespace A056824.P8750900312979449386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P8750900312979449386

/-! ## A056824.P17218875582336757507

`∩[A056729(n+1), A249125(n+1)]`
-/

namespace A056824.P17218875582336757507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056824.P17218875582336757507

/-!
# A056825: Numbers such that no smaller positive integer has the same maximal palindrome in the periodic part of the simple continued fraction for its square root.

The programs for A056825, there is no canonical definition to state claims against.
-/

/-! ## A056825.P11479099008713739761

`eq[char[A334116(n+1)], A000007(n²)]`
-/

namespace A056825.P11479099008713739761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334116 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056825.P11479099008713739761

/-! ## A056825.P13131795907293448345

`lt[A342194(n), A341862(n)]`
-/

namespace A056825.P13131795907293448345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056825.P13131795907293448345

/-! ## A056825.P2493380448776829036

`lt[A288416(n+1), A341862(n)+1]`
-/

namespace A056825.P2493380448776829036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056825.P2493380448776829036

/-! ## A056825.P8516939736050380146

`lt[A023443(A288416(n+1)), A341862(n)]`
-/

namespace A056825.P8516939736050380146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288416 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056825.P8516939736050380146

/-! ## A056825.P9676048938366360614

`A274546(n+2)+A254379(A167667(n))`
-/

namespace A056825.P9676048938366360614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274546 (n + 2) + A254379 (A167667 n).toNat

end

end A056825.P9676048938366360614

/-!
# A056827: a(n) = floor(n^2/6).

The programs for A056827, the canonical program `A056827.P8486130082073073386` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056827 has offset 0).

The definition of A056827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/6)` (program `A056827.P8486130082073073386`, by `A056827.P8486130082073073386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056827.P8486130082073073386

`floor(n²/6)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056827

/-- `floor(n²/6)` -/
def P8486130082073073386.Spec : Prop :=
  ∀ n, P8486130082073073386.a n = A056827 n

theorem P8486130082073073386.correct : P8486130082073073386.Spec := by
  intro n
  simp only [A056827]

end A056827

/-! ## A056827.P9187067945192782664

`(n²-n²%6)/6`
-/

namespace A056827.P9187067945192782664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ((n ^ 2 % 6 : ℕ) : ℤ) : ℚ) / 6

end

end A056827.P9187067945192782664

namespace A056827

/-- `(n²-n²%6)/6` -/
def P9187067945192782664.Spec : Prop :=
  ∀ n, P9187067945192782664.a n = (A056827 n : ℚ)

end A056827

/-! ## A056827.P14826809846526535630

`∑[floor((n%2+n)/3)]`
-/

namespace A056827.P14826809846526535630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 2 + n : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P14826809846526535630

namespace A056827

/-- `∑[floor((n%2+n)/3)]` -/
def P14826809846526535630.Spec : Prop :=
  ∀ n, P14826809846526535630.a n = A056827 n

end A056827

/-! ## A056827.P3186201341929514225

`∑[∑[char[or(1, 3*n-1)]]]`
-/

namespace A056827.P3186201341929514225
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * n : ℤ) - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P3186201341929514225

namespace A056827

/-- `∑[∑[char[or(1, 3*n-1)]]]` -/
def P3186201341929514225.Spec : Prop :=
  ∀ n, (P3186201341929514225.a n : ℤ) = A056827 n

end A056827

/-! ## A056827.P13475751493474815332

`∑[∑[val(∑[(n+1)²], n+2)]]`
-/

namespace A056827.P13475751493474815332
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f3 j) (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P13475751493474815332

namespace A056827

/-- `∑[∑[val(∑[(n+1)²], n+2)]]` -/
def P13475751493474815332.Spec : Prop :=
  ∀ n, (P13475751493474815332.a n : ℤ) = A056827 n

end A056827

/-! ## A056827.P15601219159949360981

`∑[floor(∑[2-a(n-1)]/3)]` with `a(0)=0`
-/

namespace A056827.P15601219159949360981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P15601219159949360981

namespace A056827

/-- `∑[floor(∑[2-a(n-1)]/3)]` -/
def P15601219159949360981.Spec : Prop :=
  ∀ n, P15601219159949360981.a n = A056827 n

end A056827

/-! ## A056827.P11463944053603019441

`round(C(n², 2)/(3*n²+2))`
-/

namespace A056827.P11463944053603019441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) 2 : ℚ) / (3 * n ^ 2 + 2 : ℚ))

end

end A056827.P11463944053603019441

namespace A056827

/-- `round(C(n², 2)/(3*n²+2))` -/
def P11463944053603019441.Spec : Prop :=
  ∀ n, P11463944053603019441.a n = A056827 n

end A056827

/-! ## A056827.P10865554956480142529

`∑[∑[char[3*n+gcd(2, n)+1]]]`
-/

namespace A056827.P10865554956480142529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + (Nat.gcd 2 n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P10865554956480142529

namespace A056827

/-- `∑[∑[char[3*n+gcd(2, n)+1]]]` -/
def P10865554956480142529.Spec : Prop :=
  ∀ n, (P10865554956480142529.a n : ℤ) = A056827 n

end A056827

/-! ## A056827.P7390385325863413202

`∑[∑[char[or(1, n)+2*(n+1)]]]`
-/

namespace A056827.P7390385325863413202
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P7390385325863413202

namespace A056827

/-- `∑[∑[char[or(1, n)+2*(n+1)]]]` -/
def P7390385325863413202.Spec : Prop :=
  ∀ n, (P7390385325863413202.a n : ℤ) = A056827 n

end A056827

/-! ## A056827.P1587535591018545763

`ceil((C(n+2, 3)-(n+2))/(n+3))`
-/

namespace A056827.P1587535591018545763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 2) 3 : ℤ) - (n + 2 : ℤ) : ℚ) / (n + 3 : ℚ)⌉

end

end A056827.P1587535591018545763

namespace A056827

/-- `ceil((C(n+2, 3)-(n+2))/(n+3))` -/
def P1587535591018545763.Spec : Prop :=
  ∀ n, P1587535591018545763.a n = A056827 n

end A056827

/-! ## A056827.P15258296056766862441

`floor(∑[C(n+3, 2)]/(n+3))-(n+1)`
-/

namespace A056827.P15258296056766862441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 3 : ℚ)⌋ - (n + 1 : ℤ)

end

end A056827.P15258296056766862441

namespace A056827

/-- `floor(∑[C(n+3, 2)]/(n+3))-(n+1)` -/
def P15258296056766862441.Spec : Prop :=
  ∀ n, P15258296056766862441.a n = A056827 n

end A056827

/-! ## A056827.P9583814246969988399

`∑[∑[(a(n-2)-a(n-4))²]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A056827.P9583814246969988399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  (f2 (n - 2) - f2 (n - 4)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P9583814246969988399

namespace A056827

/-- `∑[∑[(a(n-2)-a(n-4))²]]` -/
def P9583814246969988399.Spec : Prop :=
  ∀ n, P9583814246969988399.a n = A056827 n

end A056827

/-! ## A056827.P9323962918629798698

`∑[∑[a(n-3)^a(n-1)]-a(n-3)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A056827.P9323962918629798698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 3) ^ f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P9323962918629798698

namespace A056827

/-- `∑[∑[a(n-3)^a(n-1)]-a(n-3)]` -/
def P9323962918629798698.Spec : Prop :=
  ∀ n, P9323962918629798698.a n = A056827 n

end A056827

/-! ## A056827.P15917010352819864090

`Δ[A171965(abs(1-n))]`
-/

namespace A056827.P15917010352819864090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171965 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056827.P15917010352819864090

namespace A056827

/-- `Δ[A171965(abs(1-n))]` -/
def P15917010352819864090.Spec : Prop :=
  ∀ n, P15917010352819864090.a n = A056827 n

end A056827

/-! ## A056827.P932244760019499110

`∑[A004523(ceil(n/2))]`
-/

namespace A056827.P932244760019499110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P932244760019499110

namespace A056827

/-- `∑[A004523(ceil(n/2))]` -/
def P932244760019499110.Spec : Prop :=
  ∀ n, P932244760019499110.a n = A056827 n

end A056827

/-! ## A056827.P3763961168908613419

`∑[∑[A354354(n+2)]]`
-/

namespace A056827.P3763961168908613419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P3763961168908613419

namespace A056827

/-- `∑[∑[A354354(n+2)]]` -/
def P3763961168908613419.Spec : Prop :=
  ∀ n, P3763961168908613419.a n = A056827 n

end A056827

/-! ## A056827.P15303352123416076848

`∑[A047498(n+1)-n]`
-/

namespace A056827.P15303352123416076848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P15303352123416076848

namespace A056827

/-- `∑[A047498(n+1)-n]` -/
def P15303352123416076848.Spec : Prop :=
  ∀ n, P15303352123416076848.a n = A056827 n

end A056827

/-! ## A056827.P11623779198355549007

`∑[∑[abs(1-A093718(n))]]`
-/

namespace A056827.P11623779198355549007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A093718 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P11623779198355549007

namespace A056827

/-- `∑[∑[abs(1-A093718(n))]]` -/
def P11623779198355549007.Spec : Prop :=
  ∀ n, P11623779198355549007.a n = A056827 n

end A056827

/-! ## A056827.P2384637449544486676

`round(acot(n²)*A008911(n))`
-/

namespace A056827.P2384637449544486676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n ^ 2 : ℝ) * (A008911 n : ℝ))

end

end A056827.P2384637449544486676

namespace A056827

/-- `round(acot(n²)*A008911(n))` -/
def P2384637449544486676.Spec : Prop :=
  ∀ n, P2384637449544486676.a n = A056827 n

end A056827

/-! ## A056827.P11586550611437958004

`∑[A002264(or(1, n+1)-1)]`
-/

namespace A056827.P11586550611437958004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Nat.lor 1 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056827.P11586550611437958004

namespace A056827

/-- `∑[A002264(or(1, n+1)-1)]` -/
def P11586550611437958004.Spec : Prop :=
  ∀ n, P11586550611437958004.a n = A056827 n

end A056827

/-!
# A056828: Numbers that are not the sum of at most three powerful numbers (A001694).

The programs for A056828, there is no canonical definition to state claims against.
-/

/-! ## A056828.P3181665966577239319

`4*p?[ceil((n+1)/5)+2*n]-5`
-/

namespace A056828.P3181665966577239319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 5⌉ + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5

end

end A056828.P3181665966577239319

/-!
# A056829: Nearest integer to n^2/6.

The programs for A056829, the canonical program `A056829.P12177464283854203403` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056829 has offset 0).

The definition of A056829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056829.P12177464283854203403

`round(n²/6)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056829

/-- `round(n²/6)` -/
def P12177464283854203403.Spec : Prop :=
  ∀ n, P12177464283854203403.a n = A056829 n

theorem P12177464283854203403.correct : P12177464283854203403.Spec := by
  intro n
  simp only [A056829]

end A056829

/-! ## A056829.P214226109357976483

`∑[floor(or(1, n)/3)]`
-/

namespace A056829.P214226109357976483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056829.P214226109357976483

namespace A056829

/-- `∑[floor(or(1, n)/3)]` -/
def P214226109357976483.Spec : Prop :=
  ∀ n, P214226109357976483.a n = A056829 n

end A056829

/-! ## A056829.P4731356801506991035

`ceil(∑[and(n, -2)]/3)`
-/

namespace A056829.P4731356801506991035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A056829.P4731356801506991035

namespace A056829

/-- `ceil(∑[and(n, -2)]/3)` -/
def P4731356801506991035.Spec : Prop :=
  ∀ n, P4731356801506991035.a n = A056829 n

end A056829

/-! ## A056829.P3408515612404188149

`∑[round(and(n, -2)/3)]`
-/

namespace A056829.P3408515612404188149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056829.P3408515612404188149

namespace A056829

/-- `∑[round(and(n, -2)/3)]` -/
def P3408515612404188149.Spec : Prop :=
  ∀ n, P3408515612404188149.a n = A056829 n

end A056829

/-! ## A056829.P923841497982629444

`ceil(∑[or(1, n-1)]/3)`
-/

namespace A056829.P923841497982629444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A056829.P923841497982629444

namespace A056829

/-- `ceil(∑[or(1, n-1)]/3)` -/
def P923841497982629444.Spec : Prop :=
  ∀ n, P923841497982629444.a n = A056829 n

end A056829

/-! ## A056829.P4467153362626579934

`∑[floor(∑[2-a(n-1)]/3)]` with `a(0)=1, a(1)=0`
-/

namespace A056829.P4467153362626579934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056829.P4467153362626579934

namespace A056829

/-- `∑[floor(∑[2-a(n-1)]/3)]` -/
def P4467153362626579934.Spec : Prop :=
  ∀ n, P4467153362626579934.a n = A056829 n

end A056829

/-! ## A056829.P4494318447647471199

`∑[∑[(∑[∑[n+1]]%(n+1)²)%2]]`
-/

namespace A056829.P4494318447647471199
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) ^ 2 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056829.P4494318447647471199

namespace A056829

/-- `∑[∑[(∑[∑[n+1]]%(n+1)²)%2]]` -/
def P4494318447647471199.Spec : Prop :=
  ∀ n, (P4494318447647471199.a n : ℤ) = A056829 n

end A056829

/-! ## A056829.P18351228382323152946

`∑[a(n-2)+a(n-4)%2]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A056829.P18351228382323152946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 4) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056829.P18351228382323152946

namespace A056829

/-- `∑[a(n-2)+a(n-4)%2]` -/
def P18351228382323152946.Spec : Prop :=
  ∀ n, (P18351228382323152946.a n : ℤ) = A056829 n

end A056829

/-! ## A056829.P13176917040398825291

`a(n-1)+floor(n/2-a(n-1)/n)` with `a(0)=0`
-/

namespace A056829.P13176917040398825291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / 2 - (a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A056829.P13176917040398825291

namespace A056829

/-- `a(n-1)+floor(n/2-a(n-1)/n)` -/
def P13176917040398825291.Spec : Prop :=
  ∀ n, P13176917040398825291.a n = A056829 n

end A056829

/-! ## A056829.P11303063251051131170

`ceil(A000212(n)/2)`
-/

namespace A056829.P11303063251051131170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000212 n : ℚ) / 2⌉

end

end A056829.P11303063251051131170

namespace A056829

/-- `ceil(A000212(n)/2)` -/
def P11303063251051131170.Spec : Prop :=
  ∀ n, P11303063251051131170.a n = A056829 n

end A056829

/-! ## A056829.P6776045162482812434

`floor(A061925(n)/3)`
-/

namespace A056829.P6776045162482812434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061925 n : ℚ) / 3⌋

end

end A056829.P6776045162482812434

namespace A056829

/-- `floor(A061925(n)/3)` -/
def P6776045162482812434.Spec : Prop :=
  ∀ n, P6776045162482812434.a n = A056829 n

end A056829

/-! ## A056829.P8962029460801311857

`ceil(A007590(n)/3)`
-/

namespace A056829.P8962029460801311857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007590 n : ℚ) / 3⌉

end

end A056829.P8962029460801311857

namespace A056829

/-- `ceil(A007590(n)/3)` -/
def P8962029460801311857.Spec : Prop :=
  ∀ n, P8962029460801311857.a n = A056829 n

end A056829

/-! ## A056829.P15245191605661774058

`∑[A002264(or(1, n))]`
-/

namespace A056829.P15245191605661774058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056829.P15245191605661774058

namespace A056829

/-- `∑[A002264(or(1, n))]` -/
def P15245191605661774058.Spec : Prop :=
  ∀ n, P15245191605661774058.a n = A056829 n

end A056829

/-! ## A056829.P16879932053138933422

`Δ[A173691(abs(1-n))]`
-/

namespace A056829.P16879932053138933422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173691 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056829.P16879932053138933422

namespace A056829

/-- `Δ[A173691(abs(1-n))]` -/
def P16879932053138933422.Spec : Prop :=
  ∀ n, P16879932053138933422.a n = A056829 n

end A056829

/-! ## A056829.P15712386041447360247

`∑[A004396(floor(n/2))]`
-/

namespace A056829.P15712386041447360247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056829.P15712386041447360247

namespace A056829

/-- `∑[A004396(floor(n/2))]` -/
def P15712386041447360247.Spec : Prop :=
  ∀ n, P15712386041447360247.a n = A056829 n

end A056829

/-! ## A056829.P5533542065364079646

`ceil(∑[A004523(n)/2])`
-/

namespace A056829.P5533542065364079646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004523 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A056829.P5533542065364079646

namespace A056829

/-- `ceil(∑[A004523(n)/2])` -/
def P5533542065364079646.Spec : Prop :=
  ∀ n, P5533542065364079646.a n = A056829 n

end A056829

/-! ## A056829.P16289758841727246678

`floor(A333574(n+1)/3)`
-/

namespace A056829.P16289758841727246678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333574 (n + 1) : ℚ) / 3⌋

end

end A056829.P16289758841727246678

namespace A056829

/-- `floor(A333574(n+1)/3)` -/
def P16289758841727246678.Spec : Prop :=
  ∀ n, P16289758841727246678.a n = A056829 n

end A056829

/-! ## A056829.P13229309152813068311

`floor((A007980(n)-n)/2)`
-/

namespace A056829.P13229309152813068311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007980 n - (n : ℤ) : ℚ) / 2⌋

end

end A056829.P13229309152813068311

namespace A056829

/-- `floor((A007980(n)-n)/2)` -/
def P13229309152813068311.Spec : Prop :=
  ∀ n, P13229309152813068311.a n = A056829 n

end A056829

/-! ## A056829.P3900928887924900704

`∑[A047428(n+1)-n]`
-/

namespace A056829.P3900928887924900704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047428 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056829.P3900928887924900704

namespace A056829

/-- `∑[A047428(n+1)-n]` -/
def P3900928887924900704.Spec : Prop :=
  ∀ n, P3900928887924900704.a n = A056829 n

end A056829

/-! ## A056829.P7616038545320760542

`∑[∑[abs(A014021(n))]-1]`
-/

namespace A056829.P7616038545320760542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014021 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056829.P7616038545320760542

namespace A056829

/-- `∑[∑[abs(A014021(n))]-1]` -/
def P7616038545320760542.Spec : Prop :=
  ∀ n, P7616038545320760542.a n = A056829 n

end A056829

/-!
# A056830: Alternate digits 1 and 0.

The programs for A056830, the canonical program `A056830.P3746001297207901051` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056830 has offset 0).

The definition of A056830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056830.P14862293541052473961

`a(n-2)+10^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A056830.P14862293541052473961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A056830.P14862293541052473961

namespace A056830

/-- `a(n-2)+10^(n-1)` -/
def P14862293541052473961.Spec : Prop :=
  ∀ n, P14862293541052473961.a n = (A056830 n : ℚ)

end A056830

/-! ## A056830.P3746001297207901051

`9*a(n-1)+10*a(n-2)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056830

/-- `9*a(n-1)+10*a(n-2)+1` -/
def P3746001297207901051.Spec : Prop :=
  ∀ n, (P3746001297207901051.a n : ℤ) = A056830 n

theorem P3746001297207901051.correct : P3746001297207901051.Spec := by
  intro n
  simp only [A056830]

end A056830

/-! ## A056830.P6834862269691908354

`floor(10^(n+1)/99)`
-/

namespace A056830.P6834862269691908354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ (n + 1) : ℚ) / 99⌋

end

end A056830.P6834862269691908354

namespace A056830

/-- `floor(10^(n+1)/99)` -/
def P6834862269691908354.Spec : Prop :=
  ∀ n, P6834862269691908354.a n = A056830 n

end A056830

/-! ## A056830.P15776391516942252235

`A007088(A000975(n))`
-/

namespace A056830.P15776391516942252235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000975 n).toNat

end

end A056830.P15776391516942252235

namespace A056830

/-- `A007088(A000975(n))` -/
def P15776391516942252235.Spec : Prop :=
  ∀ n, P15776391516942252235.a n = A056830 n

end A056830

/-! ## A056830.P8641678564325667942

`A007088(A107909(A104161(n)))`
-/

namespace A056830.P8641678564325667942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A107909 (A104161 n).toNat).toNat

end

end A056830.P8641678564325667942

namespace A056830

/-- `A007088(A107909(A104161(n)))` -/
def P8641678564325667942.Spec : Prop :=
  ∀ n, P8641678564325667942.a n = A056830 n

end A056830

/-! ## A056830.P17918254037807189378

`n%2+10*a(n-1)` with `a(0)=0`
-/

namespace A056830.P17918254037807189378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n % 2 + 10 * a (n - 1)

end

end A056830.P17918254037807189378

namespace A056830

/-- `n%2+10*a(n-1)` -/
def P17918254037807189378.Spec : Prop :=
  ∀ n, (P17918254037807189378.a n : ℤ) = A056830 n

end A056830

/-! ## A056830.P10662480660971993029

`and(1, n)+10*a(n-1)` with `a(0)=0`
-/

namespace A056830.P10662480660971993029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 n + 10 * a (n - 1)

end

end A056830.P10662480660971993029

namespace A056830

/-- `and(1, n)+10*a(n-1)` -/
def P10662480660971993029.Spec : Prop :=
  ∀ n, (P10662480660971993029.a n : ℤ) = A056830 n

end A056830

/-! ## A056830.P7206667420390529935

`or(10*a(n-1), and(1, n))` with `a(0)=0`
-/

namespace A056830.P7206667420390529935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (10 * a (n - 1)) (Nat.land 1 n)

end

end A056830.P7206667420390529935

namespace A056830

/-- `or(10*a(n-1), and(1, n))` -/
def P7206667420390529935.Spec : Prop :=
  ∀ n, (P7206667420390529935.a n : ℤ) = A056830 n

end A056830

/-! ## A056830.P4553979869848218885

`or(10*a(n-1), gcd(2, n))` with `a(0)=0, a(1)=1`
-/

namespace A056830.P4553979869848218885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lor (10 * a (n - 1)) (Nat.gcd 2 n)

end

end A056830.P4553979869848218885

namespace A056830

/-- `or(10*a(n-1), gcd(2, n))` -/
def P4553979869848218885.Spec : Prop :=
  ∀ n, (P4553979869848218885.a n : ℤ) = A056830 n

end A056830

/-! ## A056830.P12817406351008194558

`∑[10^(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A056830.P12817406351008194558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056830.P12817406351008194558

namespace A056830

/-- `∑[10^(n-1)-a(n-1)]` -/
def P12817406351008194558.Spec : Prop :=
  ∀ n, P12817406351008194558.a n = (A056830 n : ℚ)

end A056830

/-! ## A056830.P7330746815381469845

`floor(10^n/9)-a(n-1)` with `a(0)=0`
-/

namespace A056830.P7330746815381469845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(10 ^ n : ℚ) / 9⌋ - a (n - 1)

end

end A056830.P7330746815381469845

namespace A056830

/-- `floor(10^n/9)-a(n-1)` -/
def P7330746815381469845.Spec : Prop :=
  ∀ n, P7330746815381469845.a n = A056830 n

end A056830

/-! ## A056830.P7669378712186097045

`or(1, a(n-1))+9*a(n-1)` with `a(0)=0`
-/

namespace A056830.P7669378712186097045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (a (n - 1)) + 9 * a (n - 1)

end

end A056830.P7669378712186097045

namespace A056830

/-- `or(1, a(n-1))+9*a(n-1)` -/
def P7669378712186097045.Spec : Prop :=
  ∀ n, (P7669378712186097045.a n : ℤ) = A056830 n

end A056830

/-! ## A056830.P9249758244289178533

`∑[A015585(n)]`
-/

namespace A056830.P9249758244289178533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056830.P9249758244289178533

namespace A056830

/-- `∑[A015585(n)]` -/
def P9249758244289178533.Spec : Prop :=
  ∀ n, P9249758244289178533.a n = A056830 n

end A056830

/-! ## A056830.P250399259738189659

`(A015585(n)+A002275(n))/2`
-/

namespace A056830.P250399259738189659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015585 n + A002275 n : ℚ) / 2

end

end A056830.P250399259738189659

namespace A056830

/-- `(A015585(n)+A002275(n))/2` -/
def P250399259738189659.Spec : Prop :=
  ∀ n, P250399259738189659.a n = (A056830 n : ℚ)

end A056830

/-! ## A056830.P2127463697566716067

`A000975(n)+A284235(n)-A284237(n)`
-/

namespace A056830.P2127463697566716067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (A284235 n - A284237 n)

end

end A056830.P2127463697566716067

namespace A056830

/-- `A000975(n)+A284235(n)-A284237(n)` -/
def P2127463697566716067.Spec : Prop :=
  ∀ n, P2127463697566716067.a n = A056830 n

end A056830

/-! ## A056830.P18328505076649440997

`round(A000042(n+1)/11)`
-/

namespace A056830.P18328505076649440997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000042 (n + 1) : ℚ) / 11)

end

end A056830.P18328505076649440997

namespace A056830

/-- `round(A000042(n+1)/11)` -/
def P18328505076649440997.Spec : Prop :=
  ∀ n, P18328505076649440997.a n = A056830 n

end A056830

/-! ## A056830.P7813296051189600103

`A037487(n)-A002275(n+1)`
-/

namespace A056830.P7813296051189600103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037487 (n + 1) - A002275 (n + 1)

end

end A056830.P7813296051189600103

namespace A056830

/-- `A037487(n)-A002275(n+1)` -/
def P7813296051189600103.Spec : Prop :=
  ∀ n, P7813296051189600103.a n = A056830 n

end A056830

/-!
# A056831: LCM of composite numbers falling between n-th and (n+1)-st primes.

The programs for A056831, there is no canonical definition to state claims against.
-/

/-! ## A056831.P6297131137987114457

`A109920(2*n+5)`
-/

namespace A056831.P6297131137987114457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109920 (2 * n + 5)

end

end A056831.P6297131137987114457

/-! ## A056831.P15181695564503834720

`lcm(2, A109920(A004280(n+4)))`
-/

namespace A056831.P15181695564503834720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A109920 (A004280 (n + 4)).toNat)

end

end A056831.P15181695564503834720

/-! ## A056831.P2897117474601391178

`A109920(A004280(n+4))/A007318(C(2, n))`
-/

namespace A056831.P2897117474601391178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109920 (A004280 (n + 4)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A056831.P2897117474601391178

/-! ## A056831.P18116328983683674989

`A109920(A004280(n+4))/A000041(C(n+1, 34))`
-/

namespace A056831.P18116328983683674989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109920 (A004280 (n + 4)).toNat : ℚ) / (A000041 (Nat.choose (n + 1) 34) : ℚ)

end

end A056831.P18116328983683674989

/-! ## A056831.P11989067747516908113

`A109920(A004280(n+4))/A000041(((-1)^n)²)`
-/

namespace A056831.P11989067747516908113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109920 (A004280 (n + 4)).toNat : ℚ) / (A000041 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A056831.P11989067747516908113

/-!
# A056832: All a(n) = 1 or 2; a(1) = 1; get next 2^k terms by repeating first 2^k terms and changing last element so sum of first 2^(k+1) terms is odd.

The programs for A056832, the canonical program `A056832.P3449662837231089589` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056832 has offset 1).

The definition of A056832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056832.P3449662837231089589

`2-A035263(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A056832

/-- `2-A035263(n+1)` -/
def P3449662837231089589.Spec : Prop :=
  ∀ n, P3449662837231089589.a n = A056832 (n + 1)

theorem P3449662837231089589.correct : P3449662837231089589.Spec := by
  intro n
  simp only [A056832, Nat.add_sub_cancel]

end A056832

/-! ## A056832.P15614608721961075293

`A006519(n+1)/A234957(n+1)`
-/

namespace A056832.P15614608721961075293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (n + 1) : ℚ) / (A234957 (n + 1) : ℚ)

end

end A056832.P15614608721961075293

namespace A056832

/-- `A006519(n+1)/A234957(n+1)` -/
def P15614608721961075293.Spec : Prop :=
  ∀ n, P15614608721961075293.a n = (A056832 (n + 1) : ℚ)

end A056832

/-! ## A056832.P14947422145316523819

`val(n+1, 2)%2+1`
-/

namespace A056832.P14947422145316523819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2 + 1

end

end A056832.P14947422145316523819

namespace A056832

/-- `val(n+1, 2)%2+1` -/
def P14947422145316523819.Spec : Prop :=
  ∀ n, (P14947422145316523819.a n : ℤ) = A056832 (n + 1)

end A056832

/-! ## A056832.P11007575049983486177

`gcd(2, val(n+1, 2)+1)`
-/

namespace A056832.P11007575049983486177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A056832.P11007575049983486177

namespace A056832

/-- `gcd(2, val(n+1, 2)+1)` -/
def P11007575049983486177.Spec : Prop :=
  ∀ n, (P11007575049983486177.a n : ℤ) = A056832 (n + 1)

end A056832

/-! ## A056832.P8214884994920310759

`and(1, val(n+1, 2))+1`
-/

namespace A056832.P8214884994920310759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2) + 1

end

end A056832.P8214884994920310759

namespace A056832

/-- `and(1, val(n+1, 2))+1` -/
def P8214884994920310759.Spec : Prop :=
  ∀ n, (P8214884994920310759.a n : ℤ) = A056832 (n + 1)

end A056832

/-! ## A056832.P5682809434590296145

`2-xor(n, n+1)%3`
-/

namespace A056832.P5682809434590296145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.xor n (n + 1) % 3 : ℕ) : ℤ)

end

end A056832.P5682809434590296145

namespace A056832

/-- `2-xor(n, n+1)%3` -/
def P5682809434590296145.Spec : Prop :=
  ∀ n, P5682809434590296145.a n = A056832 (n + 1)

end A056832

/-! ## A056832.P16921527540098833817

`(or(n, n+1)-n)%3`
-/

namespace A056832.P16921527540098833817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) 3

end

end A056832.P16921527540098833817

namespace A056832

/-- `(or(n, n+1)-n)%3` -/
def P16921527540098833817.Spec : Prop :=
  ∀ n, P16921527540098833817.a n = A056832 (n + 1)

end A056832

/-! ## A056832.P3440896301939936461

`xor(n, or(n, n+1))%3`
-/

namespace A056832.P3440896301939936461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (n + 1)) % 3

end

end A056832.P3440896301939936461

namespace A056832

/-- `xor(n, or(n, n+1))%3` -/
def P3440896301939936461.Spec : Prop :=
  ∀ n, (P3440896301939936461.a n : ℤ) = A056832 (n + 1)

end A056832

/-! ## A056832.P13144400506955855258

`or(-2, val(n+1, 2))+3`
-/

namespace A056832.P13144400506955855258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-2) (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + 3

end

end A056832.P13144400506955855258

namespace A056832

/-- `or(-2, val(n+1, 2))+3` -/
def P13144400506955855258.Spec : Prop :=
  ∀ n, P13144400506955855258.a n = A056832 (n + 1)

end A056832

/-! ## A056832.P62910569726711388

`and(n+1, -(n+1))%3`
-/

namespace A056832.P62910569726711388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 3

end

end A056832.P62910569726711388

namespace A056832

/-- `and(n+1, -(n+1))%3` -/
def P62910569726711388.Spec : Prop :=
  ∀ n, P62910569726711388.a n = A056832 (n + 1)

end A056832

/-! ## A056832.P16618614058344156715

`(gcd(3, xor(n, n+1))-1)!`
-/

namespace A056832.P16618614058344156715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.gcd 3 (Nat.xor n (n + 1)) : ℤ) - 1).toNat

end

end A056832.P16618614058344156715

namespace A056832

/-- `(gcd(3, xor(n, n+1))-1)!` -/
def P16618614058344156715.Spec : Prop :=
  ∀ n, (P16618614058344156715.a n : ℤ) = A056832 (n + 1)

end A056832

/-! ## A056832.P18181842687432995380

`gcd(n+1, (3-n)^10)%3`
-/

namespace A056832.P18181842687432995380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10) % 3

end

end A056832.P18181842687432995380

namespace A056832

/-- `gcd(n+1, (3-n)^10)%3` -/
def P18181842687432995380.Spec : Prop :=
  ∀ n, (P18181842687432995380.a n : ℤ) = A056832 (n + 1)

end A056832

/-! ## A056832.P9991759338326037317

`(n+1-and(n, n+1))%3`
-/

namespace A056832.P9991759338326037317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)) 3

end

end A056832.P9991759338326037317

namespace A056832

/-- `(n+1-and(n, n+1))%3` -/
def P9991759338326037317.Spec : Prop :=
  ∀ n, P9991759338326037317.a n = A056832 (n + 1)

end A056832

/-! ## A056832.P17499977416846992442

`abs(or(n+1, -(n+1))%3)`
-/

namespace A056832.P17499977416846992442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))) 3|

end

end A056832.P17499977416846992442

namespace A056832

/-- `abs(or(n+1, -(n+1))%3)` -/
def P17499977416846992442.Spec : Prop :=
  ∀ n, P17499977416846992442.a n = A056832 (n + 1)

end A056832

/-! ## A056832.P12107525352000996394

`-or(n+1, -(n+1))%3`
-/

namespace A056832.P12107525352000996394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))) 3

end

end A056832.P12107525352000996394

namespace A056832

/-- `-or(n+1, -(n+1))%3` -/
def P12107525352000996394.Spec : Prop :=
  ∀ n, P12107525352000996394.a n = A056832 (n + 1)

end A056832

/-! ## A056832.P5025989140179296069

`xor(n+1, and(n, n+1))%3`
-/

namespace A056832.P5025989140179296069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.land n (n + 1)) % 3

end

end A056832.P5025989140179296069

namespace A056832

/-- `xor(n+1, and(n, n+1))%3` -/
def P5025989140179296069.Spec : Prop :=
  ∀ n, (P5025989140179296069.a n : ℤ) = A056832 (n + 1)

end A056832

/-! ## A056832.P12184128695934598106

`(n*a(floor(n/2)))%2+1` with `a(0)=1`
-/

namespace A056832.P12184128695934598106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a ⌊(n : ℚ) / 2⌋.toNat % 2 + 1

end

end A056832.P12184128695934598106

namespace A056832

/-- `(n*a(floor(n/2)))%2+1` -/
def P12184128695934598106.Spec : Prop :=
  ∀ n, (P12184128695934598106.a n : ℤ) = A056832 (n + 1)

end A056832

/-! ## A056832.P912615863296315542

`n%(2/a(floor(n/2)))+1` with `a(0)=1`
-/

namespace A056832.P912615863296315542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (2 / (a ⌊(n : ℚ) / 2⌋.toNat : ℚ))) + 1

end

end A056832.P912615863296315542

namespace A056832

/-- `n%(2/a(floor(n/2)))+1` -/
def P912615863296315542.Spec : Prop :=
  ∀ n, P912615863296315542.a n = A056832 (n + 1)

end A056832

/-! ## A056832.P1412128974942418320

`2/a(gcd(1-n, floor(n/2)))` with `a(0)=1`
-/

namespace A056832.P1412128974942418320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / a (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A056832.P1412128974942418320

namespace A056832

/-- `2/a(gcd(1-n, floor(n/2)))` -/
def P1412128974942418320.Spec : Prop :=
  ∀ n, P1412128974942418320.a n = (A056832 (n + 1) : ℚ)

end A056832

/-! ## A056832.P9253355043592564715

`2/a(floor((n-1)/2*a(n-1)))` with `a(0)=1`
-/

namespace A056832.P9253355043592564715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / a ⌊((n : ℤ) - 1 : ℚ) / 2 * a (n - 1)⌋.toNat

end

end A056832.P9253355043592564715

namespace A056832

/-- `2/a(floor((n-1)/2*a(n-1)))` -/
def P9253355043592564715.Spec : Prop :=
  ∀ n, P9253355043592564715.a n = (A056832 (n + 1) : ℚ)

end A056832

/-!
# A056833: Nearest integer to n^2/7.

The programs for A056833, the canonical program `A056833.P4652295587826058590` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056833 has offset 0).

The definition of A056833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056833.P4652295587826058590

`round(n²/7)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056833

/-- `round(n²/7)` -/
def P4652295587826058590.Spec : Prop :=
  ∀ n, P4652295587826058590.a n = A056833 n

theorem P4652295587826058590.correct : P4652295587826058590.Spec := by
  intro n
  simp only [A056833]

end A056833

/-! ## A056833.P10437162528574337485

`ceil((tan(2)+n²)/7)`
-/

namespace A056833.P10437162528574337485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (2 : ℝ) + (n ^ 2 : ℝ)) / 7⌉

end

end A056833.P10437162528574337485

namespace A056833

/-- `ceil((tan(2)+n²)/7)` -/
def P10437162528574337485.Spec : Prop :=
  ∀ n, P10437162528574337485.a n = A056833 n

end A056833

/-! ## A056833.P4974732986756441829

`floor((cosh(2)+n²)/7)`
-/

namespace A056833.P4974732986756441829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cosh (2 : ℝ) + (n ^ 2 : ℝ)) / 7⌋

end

end A056833.P4974732986756441829

namespace A056833

/-- `floor((cosh(2)+n²)/7)` -/
def P4974732986756441829.Spec : Prop :=
  ∀ n, P4974732986756441829.a n = A056833 n

end A056833

/-! ## A056833.P8749086896119650404

`floor((n²-tan(5))/7)`
-/

namespace A056833.P8749086896119650404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℝ) - Real.tan (5 : ℝ)) / 7⌋

end

end A056833.P8749086896119650404

namespace A056833

/-- `floor((n²-tan(5))/7)` -/
def P8749086896119650404.Spec : Prop :=
  ∀ n, P8749086896119650404.a n = A056833 n

end A056833

/-! ## A056833.P5292570070601804677

`floor((sinh(2)+n²)/7)`
-/

namespace A056833.P5292570070601804677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sinh (2 : ℝ) + (n ^ 2 : ℝ)) / 7⌋

end

end A056833.P5292570070601804677

namespace A056833

/-- `floor((sinh(2)+n²)/7)` -/
def P5292570070601804677.Spec : Prop :=
  ∀ n, P5292570070601804677.a n = A056833 n

end A056833

/-! ## A056833.P6523048482360388017

`ceil((n²-sinh(2))/7)`
-/

namespace A056833.P6523048482360388017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℝ) - Real.sinh (2 : ℝ)) / 7⌉

end

end A056833.P6523048482360388017

namespace A056833

/-- `ceil((n²-sinh(2))/7)` -/
def P6523048482360388017.Spec : Prop :=
  ∀ n, P6523048482360388017.a n = A056833 n

end A056833

/-! ## A056833.P1128664291618829206

`floor(cot(7/(n²+5)))`
-/

namespace A056833.P1128664291618829206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (7 / (n ^ 2 + 5 : ℚ) : ℝ)⌋

end

end A056833.P1128664291618829206

namespace A056833

/-- `floor(cot(7/(n²+5)))` -/
def P1128664291618829206.Spec : Prop :=
  ∀ n, P1128664291618829206.a n = A056833 n

end A056833

/-! ## A056833.P8649242101383314901

`floor((xor(2, n²)+1)/7)`
-/

namespace A056833.P8649242101383314901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n ^ 2) + 1 : ℚ) / 7⌋

end

end A056833.P8649242101383314901

namespace A056833

/-- `floor((xor(2, n²)+1)/7)` -/
def P8649242101383314901.Spec : Prop :=
  ∀ n, P8649242101383314901.a n = A056833 n

end A056833

/-! ## A056833.P4961990988028916583

`floor((lcm(n, n*n)+4)/7)`
-/

namespace A056833.P4961990988028916583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (n * n) + 4 : ℚ) / 7⌋

end

end A056833.P4961990988028916583

namespace A056833

/-- `floor((lcm(n, n*n)+4)/7)` -/
def P4961990988028916583.Spec : Prop :=
  ∀ n, P4961990988028916583.a n = A056833 n

end A056833

/-! ## A056833.P9301447829789209562

`ceil((n+2)/(7*acot(n-2)))`
-/

namespace A056833.P9301447829789209562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / (7 * SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ))⌉

end

end A056833.P9301447829789209562

namespace A056833

/-- `ceil((n+2)/(7*acot(n-2)))` -/
def P9301447829789209562.Spec : Prop :=
  ∀ n, P9301447829789209562.a n = A056833 n

end A056833

/-! ## A056833.P957807666316620414

`∑[A289120(n)]`
-/

namespace A056833.P957807666316620414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056833.P957807666316620414

namespace A056833

/-- `∑[A289120(n)]` -/
def P957807666316620414.Spec : Prop :=
  ∀ n, P957807666316620414.a n = A056833 n

end A056833

/-! ## A056833.P9989867659911883810

`ceil(A033439(n)/3)`
-/

namespace A056833.P9989867659911883810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033439 n : ℚ) / 3⌉

end

end A056833.P9989867659911883810

namespace A056833

/-- `ceil(A033439(n)/3)` -/
def P9989867659911883810.Spec : Prop :=
  ∀ n, P9989867659911883810.a n = A056833 n

end A056833

/-! ## A056833.P4226581594719602613

`floor(A087475(n)/7)`
-/

namespace A056833.P4226581594719602613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087475 n : ℚ) / 7⌋

end

end A056833.P4226581594719602613

namespace A056833

/-- `floor(A087475(n)/7)` -/
def P4226581594719602613.Spec : Prop :=
  ∀ n, P4226581594719602613.a n = A056833 n

end A056833

/-! ## A056833.P2829226470185021490

`floor(A117950(n)/7)`
-/

namespace A056833.P2829226470185021490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117950 n : ℚ) / 7⌋

end

end A056833.P2829226470185021490

namespace A056833

/-- `floor(A117950(n)/7)` -/
def P2829226470185021490.Spec : Prop :=
  ∀ n, P2829226470185021490.a n = A056833 n

end A056833

/-! ## A056833.P9362919140962423234

`Δ[A173721(abs(1-n))]`
-/

namespace A056833.P9362919140962423234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173721 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056833.P9362919140962423234

namespace A056833

/-- `Δ[A173721(abs(1-n))]` -/
def P9362919140962423234.Spec : Prop :=
  ∀ n, P9362919140962423234.a n = A056833 n

end A056833

/-! ## A056833.P10839544355219734857

`floor(ceil(2*gcd(n, A028310(n))²/7)/2)`
-/

namespace A056833.P10839544355219734857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(2 * Int.gcd (n : ℤ) (A028310 n) ^ 2 : ℚ) / 7⌉ : ℚ) / 2⌋

end

end A056833.P10839544355219734857

namespace A056833

/-- `floor(ceil(2*gcd(n, A028310(n))²/7)/2)` -/
def P10839544355219734857.Spec : Prop :=
  ∀ n, P10839544355219734857.a n = A056833 n

end A056833

/-! ## A056833.P7011367658922979697

`A321324(n)-A082784(n)`
-/

namespace A056833.P7011367658922979697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321324 n - A082784 n

end

end A056833.P7011367658922979697

namespace A056833

/-- `A321324(n)-A082784(n)` -/
def P7011367658922979697.Spec : Prop :=
  ∀ n, P7011367658922979697.a n = A056833 n

end A056833

/-! ## A056833.P15032112832853158893

`A057358(A033638(n))`
-/

namespace A056833.P15032112832853158893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A033638 n).toNat

end

end A056833.P15032112832853158893

namespace A056833

/-- `A057358(A033638(n))` -/
def P15032112832853158893.Spec : Prop :=
  ∀ n, P15032112832853158893.a n = A056833 n

end A056833

/-! ## A056833.P3768879120213569118

`A057358(∑[A004526(n)]+1)`
-/

namespace A056833.P3768879120213569118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A056833.P3768879120213569118

namespace A056833

/-- `A057358(∑[A004526(n)]+1)` -/
def P3768879120213569118.Spec : Prop :=
  ∀ n, P3768879120213569118.a n = A056833 n

end A056833

/-! ## A056833.P7409217692105788572

`A057358(A008238(2*n)+1)`
-/

namespace A056833.P7409217692105788572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A008238 (2 * n) + 1).toNat

end

end A056833.P7409217692105788572

namespace A056833

/-- `A057358(A008238(2*n)+1)` -/
def P7409217692105788572.Spec : Prop :=
  ∀ n, P7409217692105788572.a n = A056833 n

end A056833

/-!
# A056834: a(n) = floor(n^2/7).

The programs for A056834, the canonical program `A056834.P15633665553298939051` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056834 has offset 0).

The definition of A056834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/7)` (program `A056834.P15633665553298939051`, by `A056834.P15633665553298939051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056834.P15633665553298939051

`floor(n²/7)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056834

/-- `floor(n²/7)` -/
def P15633665553298939051.Spec : Prop :=
  ∀ n, P15633665553298939051.a n = A056834 n

theorem P15633665553298939051.correct : P15633665553298939051.Spec := by
  intro n
  simp only [A056834]

end A056834

/-! ## A056834.P11494672175694530121

`2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=3, a(6)=5, a(7)=7, a(8)=9`
-/

namespace A056834.P11494672175694530121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 3, 5, 7, 9] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A056834.P11494672175694530121

namespace A056834

/-- `2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P11494672175694530121.Spec : Prop :=
  ∀ n, P11494672175694530121.a n = A056834 n

end A056834

/-! ## A056834.P16469472469982479532

`round((n²-cos(1))/7)`
-/

namespace A056834.P16469472469982479532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℝ) - Real.cos (1 : ℝ)) / 7)

end

end A056834.P16469472469982479532

namespace A056834

/-- `round((n²-cos(1))/7)` -/
def P16469472469982479532.Spec : Prop :=
  ∀ n, P16469472469982479532.a n = A056834 n

end A056834

/-! ## A056834.P605580615456694487

`round((cos(3)+n²)/7)`
-/

namespace A056834.P605580615456694487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cos (3 : ℝ) + (n ^ 2 : ℝ)) / 7)

end

end A056834.P605580615456694487

namespace A056834

/-- `round((cos(3)+n²)/7)` -/
def P605580615456694487.Spec : Prop :=
  ∀ n, P605580615456694487.a n = A056834 n

end A056834

/-! ## A056834.P3368087006533073292

`(n²-n²%7)/7`
-/

namespace A056834.P3368087006533073292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ((n ^ 2 % 7 : ℕ) : ℤ) : ℚ) / 7

end

end A056834.P3368087006533073292

namespace A056834

/-- `(n²-n²%7)/7` -/
def P3368087006533073292.Spec : Prop :=
  ∀ n, P3368087006533073292.a n = (A056834 n : ℚ)

end A056834

/-! ## A056834.P4383731156345188820

`round((n-1)/(7*acot(n+1)))`
-/

namespace A056834.P4383731156345188820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) / (7 * SequenceMachineLib.acot (n + 1 : ℝ)))

end

end A056834.P4383731156345188820

namespace A056834

/-- `round((n-1)/(7*acot(n+1)))` -/
def P4383731156345188820.Spec : Prop :=
  ∀ n, P4383731156345188820.a n = A056834 n

end A056834

/-! ## A056834.P10833452205588227876

`∑[floor(2*(n-a(n-1))/5)]` with `a(0)=0`
-/

namespace A056834.P10833452205588227876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊2 * (((n : ℤ) - f1 (n - 1) : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056834.P10833452205588227876

namespace A056834

/-- `∑[floor(2*(n-a(n-1))/5)]` -/
def P10833452205588227876.Spec : Prop :=
  ∀ n, P10833452205588227876.a n = A056834 n

end A056834

/-! ## A056834.P15999019868716725475

`a(n-1)+floor(2*(n+1)/7)` with `a(0)=0`
-/

namespace A056834.P15999019868716725475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊2 * ((n + 1 : ℚ) / 7)⌋

end

end A056834.P15999019868716725475

namespace A056834

/-- `a(n-1)+floor(2*(n+1)/7)` -/
def P15999019868716725475.Spec : Prop :=
  ∀ n, P15999019868716725475.a n = A056834 n

end A056834

/-! ## A056834.P6345270150131371331

`ceil(A227849(n)/3)`
-/

namespace A056834.P6345270150131371331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227849 n : ℚ) / 3⌉

end

end A056834.P6345270150131371331

namespace A056834

/-- `ceil(A227849(n)/3)` -/
def P6345270150131371331.Spec : Prop :=
  ∀ n, P6345270150131371331.a n = A056834 n

end A056834

/-! ## A056834.P11895424880143172470

`Δ[A172046(abs(1-n))]`
-/

namespace A056834.P11895424880143172470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172046 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056834.P11895424880143172470

namespace A056834

/-- `Δ[A172046(abs(1-n))]` -/
def P11895424880143172470.Spec : Prop :=
  ∀ n, P11895424880143172470.a n = A056834 n

end A056834

/-! ## A056834.P7595945454522959279

`∑[∑[char[A047280(n+1)]]]`
-/

namespace A056834.P7595945454522959279
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056834.P7595945454522959279

namespace A056834

/-- `∑[∑[char[A047280(n+1)]]]` -/
def P7595945454522959279.Spec : Prop :=
  ∀ n, (P7595945454522959279.a n : ℤ) = A056834 n

end A056834

/-! ## A056834.P3718229582012363695

`∑[2*n-A083120(n+1)]`
-/

namespace A056834.P3718229582012363695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A083120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056834.P3718229582012363695

namespace A056834

/-- `∑[2*n-A083120(n+1)]` -/
def P3718229582012363695.Spec : Prop :=
  ∀ n, P3718229582012363695.a n = A056834 n

end A056834

/-! ## A056834.P11570927642537162185

`∑[∑[char[A032766(n)+2*n+3]]]`
-/

namespace A056834.P11570927642537162185
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + (2 * n + 3 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056834.P11570927642537162185

namespace A056834

/-- `∑[∑[char[A032766(n)+2*n+3]]]` -/
def P11570927642537162185.Spec : Prop :=
  ∀ n, (P11570927642537162185.a n : ℤ) = A056834 n

end A056834

/-! ## A056834.P10218524038102442046

`A036405(n)-A109720(n)`
-/

namespace A056834.P10218524038102442046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036405 n - A109720 n

end

end A056834.P10218524038102442046

namespace A056834

/-- `A036405(n)-A109720(n)` -/
def P10218524038102442046.Spec : Prop :=
  ∀ n, P10218524038102442046.a n = A056834 n

end A056834

/-! ## A056834.P15587849033069524551

`∑[A057354(A057359(n)+1)]`
-/

namespace A056834.P15587849033069524551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A057359 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056834.P15587849033069524551

namespace A056834

/-- `∑[A057354(A057359(n)+1)]` -/
def P15587849033069524551.Spec : Prop :=
  ∀ n, P15587849033069524551.a n = A056834 n

end A056834

/-! ## A056834.P13011240826470789378

`∑[A002264(n-A242062(n))]`
-/

namespace A056834.P13011240826470789378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n : ℤ) - A242062 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056834.P13011240826470789378

namespace A056834

/-- `∑[A002264(n-A242062(n))]` -/
def P13011240826470789378.Spec : Prop :=
  ∀ n, P13011240826470789378.a n = A056834 n

end A056834

/-! ## A056834.P317074899671685356

`∑[A057356(n+1)]`
-/

namespace A056834.P317074899671685356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056834.P317074899671685356

namespace A056834

/-- `∑[A057356(n+1)]` -/
def P317074899671685356.Spec : Prop :=
  ∀ n, P317074899671685356.a n = A056834 n

end A056834

/-! ## A056834.P8126989436165457597

`∑[Δ[A008739(n)]-1]`
-/

namespace A056834.P8126989436165457597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008739 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056834.P8126989436165457597

namespace A056834

/-- `∑[Δ[A008739(n)]-1]` -/
def P8126989436165457597.Spec : Prop :=
  ∀ n, P8126989436165457597.a n = A056834 n

end A056834

/-! ## A056834.P9699750275981549003

`A008739(n+1)-(n+2)`
-/

namespace A056834.P9699750275981549003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008739 (n + 1) - (n + 2 : ℤ)

end

end A056834.P9699750275981549003

namespace A056834

/-- `A008739(n+1)-(n+2)` -/
def P9699750275981549003.Spec : Prop :=
  ∀ n, P9699750275981549003.a n = A056834 n

end A056834

/-! ## A056834.P2955543668073287581

`(A008824(n+1)-(n+2))/2`
-/

namespace A056834.P2955543668073287581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008824 (n + 1) - (n + 2 : ℤ) : ℚ) / 2

end

end A056834.P2955543668073287581

namespace A056834

/-- `(A008824(n+1)-(n+2))/2` -/
def P2955543668073287581.Spec : Prop :=
  ∀ n, P2955543668073287581.a n = (A056834 n : ℚ)

end A056834

/-!
# A056835: a(n) = lcm(s(1),...,s(n)) where {s(n)} = A024619 and a(0) = 1.

The programs for A056835, the canonical program `A056835.P10679261030270007209` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056835 has offset 0).

The definition of A056835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056835.P10679261030270007209

`lcm(a(n-1), A024619(n))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056835

/-- `lcm(a(n-1), A024619(n))` -/
def P10679261030270007209.Spec : Prop :=
  ∀ n, (P10679261030270007209.a n : ℤ) = A056835 n

theorem P10679261030270007209.correct : P10679261030270007209.Spec := by
  intro n
  simp only [A056835]

end A056835

/-! ## A056835.P15081631970550720920

`lcm(a(A023443(n)), A361102(n+1))` with `a(0)=1`
-/

namespace A056835.P15081631970550720920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A023443 n).toNat : ℤ) (A361102 (n + 1))

end

end A056835.P15081631970550720920

namespace A056835

/-- `lcm(a(A023443(n)), A361102(n+1))` -/
def P15081631970550720920.Spec : Prop :=
  ∀ n, (P15081631970550720920.a n : ℤ) = A056835 n

end A056835

/-! ## A056835.P15779185876466699068

`A046523(∏[dr(A041553(n))])`
-/

namespace A056835.P15779185876466699068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A041553 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A056835.P15779185876466699068

namespace A056835

/-- `A046523(∏[dr(A041553(n))])` -/
def P15779185876466699068.Spec : Prop :=
  ∀ n, P15779185876466699068.a n = A056835 n

end A056835

/-! ## A056835.P3644173314496480655

`A000593(A135060(n+3)-2)`
-/

namespace A056835.P3644173314496480655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A135060 (n + 3) - 2).toNat

end

end A056835.P3644173314496480655

namespace A056835

/-- `A000593(A135060(n+3)-2)` -/
def P3644173314496480655.Spec : Prop :=
  ∀ n, P3644173314496480655.a n = A056835 n

end A056835

/-!
# A056836: Distinct values of sequence obtained when LCM is applied to initial segments of sequence A024619 union {1}.

The programs for A056836, there is no canonical definition to state claims against.
-/

/-! ## A056836.P11992832528602017345

`record[A056835(A076314(n))]`
-/

namespace A056836.P11992832528602017345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056835 (A076314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P11992832528602017345

/-! ## A056836.P10935488152373707341

`record[A056835(A082853(n))]`
-/

namespace A056836.P10935488152373707341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056835 (A082853 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P10935488152373707341

/-! ## A056836.P15327954354679338086

`record[A056835(Δ[A056822(n)])]`
-/

namespace A056836.P15327954354679338086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056822 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056835 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P15327954354679338086

/-! ## A056836.P9582321376258787776

`record[A056835(Δ[A056833(n)])]`
-/

namespace A056836.P9582321376258787776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056833 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056835 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P9582321376258787776

/-! ## A056836.P2837444850293481918

`record[A056835(Δ[A056838(n)])]`
-/

namespace A056836.P2837444850293481918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056835 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P2837444850293481918

/-! ## A056836.P16746879652292592906

`record[A056835(A008624(n+1))]`
-/

namespace A056836.P16746879652292592906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056835 (A008624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P16746879652292592906

/-! ## A056836.P10124437988670577886

`record[A056835(A056812(n+1))]`
-/

namespace A056836.P10124437988670577886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056835 (A056812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P10124437988670577886

/-! ## A056836.P14655276099864853117

`record[A056835(A004526(A008624(n)))]`
-/

namespace A056836.P14655276099864853117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056835 (A004526 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P14655276099864853117

/-! ## A056836.P15421182840565090083

`record[A056835(A028242(A028242(n)))]`
-/

namespace A056836.P15421182840565090083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056835 (A028242 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P15421182840565090083

/-! ## A056836.P17436301403026124245

`record[A056835(n)%A056835(n+4)]`
-/

namespace A056836.P17436301403026124245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056835 n) (A056835 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056836.P17436301403026124245

/-!
# A056838: a(n) = floor(n^2/9).

The programs for A056838, the canonical program `A056838.P9037544453095616154` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056838 has offset 0).

The definition of A056838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/9)` (program `A056838.P9037544453095616154`, by `A056838.P9037544453095616154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056838.P9037544453095616154

`floor(n²/9)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056838

/-- `floor(n²/9)` -/
def P9037544453095616154.Spec : Prop :=
  ∀ n, P9037544453095616154.a n = A056838 n

theorem P9037544453095616154.correct : P9037544453095616154.Spec := by
  intro n
  simp only [A056838]

end A056838

/-! ## A056838.P9013503209968645538

`round(cos(2)+(n/3)²)`
-/

namespace A056838.P9013503209968645538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + (((n : ℚ) / 3) ^ 2 : ℝ))

end

end A056838.P9013503209968645538

namespace A056838

/-- `round(cos(2)+(n/3)²)` -/
def P9013503209968645538.Spec : Prop :=
  ∀ n, P9013503209968645538.a n = A056838 n

end A056838

/-! ## A056838.P11489619154341992263

`ceil(cos(3)+(n/3)²)`
-/

namespace A056838.P11489619154341992263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + (((n : ℚ) / 3) ^ 2 : ℝ)⌉

end

end A056838.P11489619154341992263

namespace A056838

/-- `ceil(cos(3)+(n/3)²)` -/
def P11489619154341992263.Spec : Prop :=
  ∀ n, P11489619154341992263.a n = A056838 n

end A056838

/-! ## A056838.P6314105125789121277

`ceil((n/3)²-sin(1))`
-/

namespace A056838.P6314105125789121277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 3) ^ 2 : ℝ) - Real.sin (1 : ℝ)⌉

end

end A056838.P6314105125789121277

namespace A056838

/-- `ceil((n/3)²-sin(1))` -/
def P6314105125789121277.Spec : Prop :=
  ∀ n, P6314105125789121277.a n = A056838 n

end A056838

/-! ## A056838.P9198355982600605521

`ceil((n/3)²-atan(1))`
-/

namespace A056838.P9198355982600605521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 3) ^ 2 : ℝ) - Real.arctan (1 : ℝ)⌉

end

end A056838.P9198355982600605521

namespace A056838

/-- `ceil((n/3)²-atan(1))` -/
def P9198355982600605521.Spec : Prop :=
  ∀ n, P9198355982600605521.a n = A056838 n

end A056838

/-! ## A056838.P3956528725896925186

`ceil((n/3)²-tanh(2))`
-/

namespace A056838.P3956528725896925186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 3) ^ 2 : ℝ) - Real.tanh (2 : ℝ)⌉

end

end A056838.P3956528725896925186

namespace A056838

/-- `ceil((n/3)²-tanh(2))` -/
def P3956528725896925186.Spec : Prop :=
  ∀ n, P3956528725896925186.a n = A056838 n

end A056838

/-! ## A056838.P16685359182052135990

`round(cot(2)+(n/3)²)`
-/

namespace A056838.P16685359182052135990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 : ℝ) + (((n : ℚ) / 3) ^ 2 : ℝ))

end

end A056838.P16685359182052135990

namespace A056838

/-- `round(cot(2)+(n/3)²)` -/
def P16685359182052135990.Spec : Prop :=
  ∀ n, P16685359182052135990.a n = A056838 n

end A056838

/-! ## A056838.P931973389285804421

`ceil((n/3)²-acot(1))`
-/

namespace A056838.P931973389285804421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 3) ^ 2 : ℝ) - SequenceMachineLib.acot (1 : ℝ)⌉

end

end A056838.P931973389285804421

namespace A056838

/-- `ceil((n/3)²-acot(1))` -/
def P931973389285804421.Spec : Prop :=
  ∀ n, P931973389285804421.a n = A056838 n

end A056838

/-! ## A056838.P17818074663399460192

`round((n/3)²-acot(2))`
-/

namespace A056838.P17818074663399460192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 3) ^ 2 : ℝ) - SequenceMachineLib.acot (2 : ℝ))

end

end A056838.P17818074663399460192

namespace A056838

/-- `round((n/3)²-acot(2))` -/
def P17818074663399460192.Spec : Prop :=
  ∀ n, P17818074663399460192.a n = A056838 n

end A056838

/-! ## A056838.P9715670139475664

`round((n²-sinh(2))/9)`
-/

namespace A056838.P9715670139475664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℝ) - Real.sinh (2 : ℝ)) / 9)

end

end A056838.P9715670139475664

namespace A056838

/-- `round((n²-sinh(2))/9)` -/
def P9715670139475664.Spec : Prop :=
  ∀ n, P9715670139475664.a n = A056838 n

end A056838

/-! ## A056838.P2342075621811693246

`(n²-n²%9)/9`
-/

namespace A056838.P2342075621811693246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ((n ^ 2 % 9 : ℕ) : ℤ) : ℚ) / 9

end

end A056838.P2342075621811693246

namespace A056838

/-- `(n²-n²%9)/9` -/
def P2342075621811693246.Spec : Prop :=
  ∀ n, P2342075621811693246.a n = (A056838 n : ℚ)

end A056838

/-! ## A056838.P13232292135185806139

`or(floor(n*n/9), char[3])`
-/

namespace A056838.P13232292135185806139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) * ((n : ℚ) / 9)⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A056838.P13232292135185806139

namespace A056838

/-- `or(floor(n*n/9), char[3])` -/
def P13232292135185806139.Spec : Prop :=
  ∀ n, P13232292135185806139.a n = A056838 n

end A056838

/-! ## A056838.P17994813745535518111

`xor(1, xor(1, floor(n*n/9)))`
-/

namespace A056838.P17994813745535518111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌊(n : ℚ) * ((n : ℚ) / 9)⌋)

end

end A056838.P17994813745535518111

namespace A056838

/-- `xor(1, xor(1, floor(n*n/9)))` -/
def P17994813745535518111.Spec : Prop :=
  ∀ n, P17994813745535518111.a n = A056838 n

end A056838

/-! ## A056838.P7709726953870432746

`floor((n/3)^2)%∑[n+1]`
-/

namespace A056838.P7709726953870432746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n : ℚ) / 3) ^ 2⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A056838.P7709726953870432746

namespace A056838

/-- `floor((n/3)^2)%∑[n+1]` -/
def P7709726953870432746.Spec : Prop :=
  ∀ n, P7709726953870432746.a n = A056838 n

end A056838

/-! ## A056838.P5447807738292659942

`round((n+2)/(9*acot(n-2)))`
-/

namespace A056838.P5447807738292659942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / (9 * SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ)))

end

end A056838.P5447807738292659942

namespace A056838

/-- `round((n+2)/(9*acot(n-2)))` -/
def P5447807738292659942.Spec : Prop :=
  ∀ n, P5447807738292659942.a n = A056838 n

end A056838

/-! ## A056838.P7427017468013757873

`∑[floor(∑[floor(a(n-3))]/3)]` with `a(0)=2, a(1)=-2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A056838.P7427017468013757873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056838.P7427017468013757873

namespace A056838

/-- `∑[floor(∑[floor(a(n-3))]/3)]` -/
def P7427017468013757873.Spec : Prop :=
  ∀ n, P7427017468013757873.a n = A056838 n

end A056838

/-! ## A056838.P2621114164832570797

`Δ[A172131(abs(1-n))]`
-/

namespace A056838.P2621114164832570797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172131 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056838.P2621114164832570797

namespace A056838

/-- `Δ[A172131(abs(1-n))]` -/
def P2621114164832570797.Spec : Prop :=
  ∀ n, P2621114164832570797.a n = A056838 n

end A056838

/-! ## A056838.P3555599569593962447

`A036407(n)-A011655(n)`
-/

namespace A056838.P3555599569593962447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 n - A011655 n

end

end A056838.P3555599569593962447

namespace A056838

/-- `A036407(n)-A011655(n)` -/
def P3555599569593962447.Spec : Prop :=
  ∀ n, P3555599569593962447.a n = A056838 n

end A056838

/-! ## A056838.P15904155207644305054

`A262397(2*n)`
-/

namespace A056838.P15904155207644305054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (2 * n)

end

end A056838.P15904155207644305054

namespace A056838

/-- `A262397(2*n)` -/
def P15904155207644305054.Spec : Prop :=
  ∀ n, P15904155207644305054.a n = A056838 n

end A056838

/-! ## A056838.P8296435209529416829

`∑{d}[floor((n/3)^2), A000010(#)]`
-/

namespace A056838.P8296435209529416829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 3) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A056838.P8296435209529416829

namespace A056838

/-- `∑{d}[floor((n/3)^2), A000010(#)]` -/
def P8296435209529416829.Spec : Prop :=
  ∀ n, P8296435209529416829.a n = A056838 n

end A056838

/-!
# A056839: Squarefree part of lcm(1,...,n).

The programs for A056839, the canonical program `A056839.P9485991888657918283` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056839 has offset 0).

The definition of A056839 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056839.P9485991888657918283

`A007913(A003418(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056839

/-- `A007913(A003418(n))` -/
def P9485991888657918283.Spec : Prop :=
  ∀ n, P9485991888657918283.a n = A056839 n

theorem P9485991888657918283.correct : P9485991888657918283.Spec := by
  intro n
  simp only [A056839]

end A056839

/-! ## A056839.P5796986164894147863

`A003418(n)/A003418(floor(sqrt(n)))²`
-/

namespace A056839.P5796986164894147863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A003418 (Nat.sqrt n) ^ 2 : ℚ)

end

end A056839.P5796986164894147863

namespace A056839

/-- `A003418(n)/A003418(floor(sqrt(n)))²` -/
def P5796986164894147863.Spec : Prop :=
  ∀ n, P5796986164894147863.a n = (A056839 n : ℚ)

end A056839

/-! ## A056839.P16880738541055045416

`A003418(n)/A139550(A060018(n+2))²`
-/

namespace A056839.P16880738541055045416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A139550 (A060018 (n + 2)).toNat ^ 2 : ℚ)

end

end A056839.P16880738541055045416

namespace A056839

/-- `A003418(n)/A139550(A060018(n+2))²` -/
def P16880738541055045416.Spec : Prop :=
  ∀ n, P16880738541055045416.a n = (A056839 n : ℚ)

end A056839

/-! ## A056839.P12014181119303149702

`A003418(n)/A053143(A214080(n))`
-/

namespace A056839.P12014181119303149702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A053143 (A214080 n).toNat : ℚ)

end

end A056839.P12014181119303149702

namespace A056839

/-- `A003418(n)/A053143(A214080(n))` -/
def P12014181119303149702.Spec : Prop :=
  ∀ n, P12014181119303149702.a n = (A056839 n : ℚ)

end A056839

/-! ## A056839.P7433527458030856195

`A007913(a(n-1)*A014963(n))` with `a(0)=1`
-/

namespace A056839.P7433527458030856195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007913 (a (n - 1) * A014963 n).toNat

end

end A056839.P7433527458030856195

namespace A056839

/-- `A007913(a(n-1)*A014963(n))` -/
def P7433527458030856195.Spec : Prop :=
  ∀ n, P7433527458030856195.a n = A056839 n

end A056839

/-!
# A056841: Number of diagonal polyominoes with n cells.

The programs for A056841, there is no canonical definition to state claims against.
-/

/-! ## A056841.P7742964735189064519

`Δ[floor(sqrt(A330628(n)))]+1`
-/

namespace A056841.P7742964735189064519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A330628 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A056841.P7742964735189064519

/-! ## A056841.P13847124811947769667

`A051889(A007161(n))`
-/

namespace A056841.P13847124811947769667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A007161 n).toNat

end

end A056841.P13847124811947769667

/-! ## A056841.P5358678138822400227

`A031143(A116718(n))`
-/

namespace A056841.P5358678138822400227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031143 (A116718 n).toNat

end

end A056841.P5358678138822400227

/-!
# A056842: Number of polydrafters: a(n) is the number of polydrafters with n cells.

The programs for A056842, there is no canonical definition to state claims against.
-/

/-! ## A056842.P845798122356746062

`A090481(3*n+1)-A337255(A196591(n+5))`
-/

namespace A056842.P845798122356746062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090481 (3 * n + 1) - A337255 (A196591 (n + 5)).toNat

end

end A056842.P845798122356746062

/-!
# A056843: Number of polydudes(1): a(n) is the number of polydudes with n cells. See the first link for the source of this sequence. The definition is unknown. Not the same as A091130.

The programs for A056843, there is no canonical definition to state claims against.
-/

/-! ## A056843.P5732985854094473094

`A334099(A128223(n))%A158152(n+1)`
-/

namespace A056843.P5732985854094473094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334099 (A128223 n).toNat) (A158152 (n + 1))

end

end A056843.P5732985854094473094

/-!
# A056845: Number of distinct connected planar figures that can be formed from n non-overlapping diamonds.

The programs for A056845, there is no canonical definition to state claims against.
-/

/-! ## A056845.P17298852266410675063

`A194815(A370242(n)+A274261(n+1))`
-/

namespace A056845.P17298852266410675063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194815 (A370242 n + A274261 (n + 1)).toNat

end

end A056845.P17298852266410675063

/-!
# A056846: Number of polyominoids containing n squares: these are 2-dimensional polyominoes in a three-dimensional grid (edge-connected squares, like the floors, ceilings and walls of a building). Mirror images are distinguished.

The programs for A056846, there is no canonical definition to state claims against.
-/

/-! ## A056846.P4345655812958511801

`A156684(7*(n+1)^n)`
-/

namespace A056846.P4345655812958511801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (7 * (n + 1) ^ n)

end

end A056846.P4345655812958511801

/-!
# A056847: Nearest integer to n - sqrt(n).

The programs for A056847, the canonical program `A056847.P700496860242093391` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056847 has offset 0).

The definition of A056847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056847.P15116355347665768313

`round(n-sqrt(n))`
-/

namespace A056847.P15116355347665768313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))

end

end A056847.P15116355347665768313

namespace A056847

/-- `round(n-sqrt(n))` -/
def P15116355347665768313.Spec : Prop :=
  ∀ n, P15116355347665768313.a n = A056847 n

end A056847

/-! ## A056847.P700496860242093391

`n-A000194(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056847

/-- `n-A000194(n)` -/
def P700496860242093391.Spec : Prop :=
  ∀ n, P700496860242093391.a n = A056847 n

theorem P700496860242093391.correct : P700496860242093391.Spec := by
  intro n
  simp only [A056847]

end A056847

/-! ## A056847.P9376762432095361100

`∑[char[comp[2*C(n, 2)]+1]]`
-/

namespace A056847.P9376762432095361100
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056847.P9376762432095361100

namespace A056847

/-- `∑[char[comp[2*C(n, 2)]+1]]` -/
def P9376762432095361100.Spec : Prop :=
  ∀ n, (P9376762432095361100.a n : ℤ) = A056847 n

end A056847

/-! ## A056847.P4218363127380914276

`2*n-comp[record[(n-1)²]]`
-/

namespace A056847.P4218363127380914276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A056847.P4218363127380914276

namespace A056847

/-- `2*n-comp[record[(n-1)²]]` -/
def P4218363127380914276.Spec : Prop :=
  ∀ n, P4218363127380914276.a n = A056847 n

end A056847

/-! ## A056847.P15891504174624391905

`comp[or(1, n)]-comp[(n+1)²]`
-/

namespace A056847.P15891504174624391905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A056847.P15891504174624391905

namespace A056847

/-- `comp[or(1, n)]-comp[(n+1)²]` -/
def P15891504174624391905.Spec : Prop :=
  ∀ n, P15891504174624391905.a n = A056847 n

end A056847

/-! ## A056847.P17481634263210555090

`∑[char[comp[lcm(n, n+1)]+1]]`
-/

namespace A056847.P17481634263210555090
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056847.P17481634263210555090

namespace A056847

/-- `∑[char[comp[lcm(n, n+1)]+1]]` -/
def P17481634263210555090.Spec : Prop :=
  ∀ n, (P17481634263210555090.a n : ℤ) = A056847 n

end A056847

/-! ## A056847.P10104942252560011872

`∑[char[∑[(char[n²]+1)%3]]]`
-/

namespace A056847.P10104942252560011872
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f4 j = n then 1 else 0) + 1) % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056847.P10104942252560011872

namespace A056847

/-- `∑[char[∑[(char[n²]+1)%3]]]` -/
def P10104942252560011872.Spec : Prop :=
  ∀ n, (P10104942252560011872.a n : ℤ) = A056847 n

end A056847

/-! ## A056847.P12987905491201523328

`n-1-floor(sqrt(a(n-1)))` with `a(0)=0`
-/

namespace A056847.P12987905491201523328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 1 - Int.sqrt (a (n - 1))

end

end A056847.P12987905491201523328

namespace A056847

/-- `n-1-floor(sqrt(a(n-1)))` -/
def P12987905491201523328.Spec : Prop :=
  ∀ n, P12987905491201523328.a n = A056847 n

end A056847

/-! ## A056847.P13429129046155891275

`ceil(n-1-sqrt(a(n-1)))` with `a(0)=0`
-/

namespace A056847.P13429129046155891275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈((n : ℤ) - 1 : ℝ) - Real.sqrt (a (n - 1) : ℝ)⌉

end

end A056847.P13429129046155891275

namespace A056847

/-- `ceil(n-1-sqrt(a(n-1)))` -/
def P13429129046155891275.Spec : Prop :=
  ∀ n, P13429129046155891275.a n = A056847 n

end A056847

/-! ## A056847.P4054145799921707045

`(2*n+1)%(comp[(n+1)²]+1)`
-/

namespace A056847.P4054145799921707045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A056847.P4054145799921707045

namespace A056847

/-- `(2*n+1)%(comp[(n+1)²]+1)` -/
def P4054145799921707045.Spec : Prop :=
  ∀ n, (P4054145799921707045.a n : ℤ) = A056847 n

end A056847

/-! ## A056847.P17540705021722221417

`floor(∪[2*n+1, 2*n²]/2)`
-/

namespace A056847.P17540705021722221417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / 2⌋

end

end A056847.P17540705021722221417

namespace A056847

/-- `floor(∪[2*n+1, 2*n²]/2)` -/
def P17540705021722221417.Spec : Prop :=
  ∀ n, P17540705021722221417.a n = A056847 n

end A056847

/-! ## A056847.P11410379331681033529

`floor(n²/(2*n-a(n-1)))` with `a(0)=0`
-/

namespace A056847.P11410379331681033529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n ^ 2 : ℚ) / ((2 * n : ℤ) - a (n - 1) : ℚ)⌋

end

end A056847.P11410379331681033529

namespace A056847

/-- `floor(n²/(2*n-a(n-1)))` -/
def P11410379331681033529.Spec : Prop :=
  ∀ n, P11410379331681033529.a n = A056847 n

end A056847

/-! ## A056847.P2465974528042221406

`floor(n²/(n-a(n-1)+n))` with `a(0)=0`
-/

namespace A056847.P2465974528042221406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n ^ 2 : ℚ) / ((n : ℤ) - a (n - 1) + (n : ℤ) : ℚ)⌋

end

end A056847.P2465974528042221406

namespace A056847

/-- `floor(n²/(n-a(n-1)+n))` -/
def P2465974528042221406.Spec : Prop :=
  ∀ n, P2465974528042221406.a n = A056847 n

end A056847

/-! ## A056847.P13872742646924243451

`floor(n²/(n-(a(n-1)-n)))` with `a(0)=0`
-/

namespace A056847.P13872742646924243451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n ^ 2 : ℚ) / ((n : ℤ) - (a (n - 1) - (n : ℤ)) : ℚ)⌋

end

end A056847.P13872742646924243451

namespace A056847

/-- `floor(n²/(n-(a(n-1)-n)))` -/
def P13872742646924243451.Spec : Prop :=
  ∀ n, P13872742646924243451.a n = A056847 n

end A056847

/-! ## A056847.P1635820446389937644

`floor(n*n/(2*n-a(n-1)))` with `a(0)=0`
-/

namespace A056847.P1635820446389937644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) * ((n : ℚ) / ((2 * n : ℤ) - a (n - 1) : ℚ))⌋

end

end A056847.P1635820446389937644

namespace A056847

/-- `floor(n*n/(2*n-a(n-1)))` -/
def P1635820446389937644.Spec : Prop :=
  ∀ n, P1635820446389937644.a n = A056847 n

end A056847

/-! ## A056847.P6698763505549456310

`∑[char[comp[(n+1)*n%(n+1)]+1]]`
-/

namespace A056847.P6698763505549456310
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n % (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056847.P6698763505549456310

namespace A056847

/-- `∑[char[comp[(n+1)*n%(n+1)]+1]]` -/
def P6698763505549456310.Spec : Prop :=
  ∀ n, (P6698763505549456310.a n : ℤ) = A056847 n

end A056847

/-! ## A056847.P3222664774535182777

`n-sqrt(A053187(n))`
-/

namespace A056847.P3222664774535182777
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (A053187 n : ℝ)

end

end A056847.P3222664774535182777

namespace A056847

/-- `n-sqrt(A053187(n))` -/
def P3222664774535182777.Spec : Prop :=
  ∀ n, P3222664774535182777.a n = (A056847 n : ℝ)

end A056847

/-! ## A056847.P3382411003767424637

`1-A368941(n)+n`
-/

namespace A056847.P3382411003767424637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A368941 n + (n : ℤ)

end

end A056847.P3382411003767424637

namespace A056847

/-- `1-A368941(n)+n` -/
def P3382411003767424637.Spec : Prop :=
  ∀ n, P3382411003767424637.a n = A056847 n

end A056847

/-! ## A056847.P2216043269645364481

`∑[char[A135668(n+1)]]`
-/

namespace A056847.P2216043269645364481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056847.P2216043269645364481

namespace A056847

/-- `∑[char[A135668(n+1)]]` -/
def P2216043269645364481.Spec : Prop :=
  ∀ n, (P2216043269645364481.a n : ℤ) = A056847 n

end A056847

/-! ## A056847.P10829594307018662499

`Δ[n²]-A164386(n+1)`
-/

namespace A056847.P10829594307018662499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A164386 (n + 1)

end

end A056847.P10829594307018662499

namespace A056847

/-- `Δ[n²]-A164386(n+1)` -/
def P10829594307018662499.Spec : Prop :=
  ∀ n, P10829594307018662499.a n = A056847 n

end A056847

/-!
# A056848: Numbers k that divide the number of partitions of k into distinct parts (A000009).

The programs for A056848, there is no canonical definition to state claims against.
-/

/-! ## A056848.P3005754123975391456

`eq[n, gcd(n, A000009(n))]`
-/

namespace A056848.P3005754123975391456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000009 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056848.P3005754123975391456

/-! ## A056848.P6811290701894318037

`eq[n, gcd(A028310(n), A081360(n))]`
-/

namespace A056848.P6811290701894318037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A081360 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056848.P6811290701894318037

/-! ## A056848.P12385964519696493460

`eq[lcm(n, A081360(n)), A000009(n)]`
-/

namespace A056848.P12385964519696493460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A081360 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056848.P12385964519696493460

/-! ## A056848.P9162983300434950925

`eq[A000009(n)%A028310(n), A000038(n)]`
-/

namespace A056848.P9162983300434950925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056848.P9162983300434950925

/-! ## A056848.P3264327161009398792

`eq[A081360(n)%A028310(n), A000007(n)]`
-/

namespace A056848.P3264327161009398792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081360 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056848.P3264327161009398792

/-!
# A056849: Final digit of n^n.

The programs for A056849, the canonical program `A056849.P12474984603476844232` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056849 has offset 1).

The definition of A056849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056849.P12474984603476844232

`((n+1)^(n%4+1))%10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056849

/-- `((n+1)^(n%4+1))%10` -/
def P12474984603476844232.Spec : Prop :=
  ∀ n, (P12474984603476844232.a n : ℤ) = A056849 (n + 1)

theorem P12474984603476844232.correct : P12474984603476844232.Spec := by
  intro n
  simp only [A056849, Nat.add_sub_cancel]

end A056849

/-!
# A056850: Minimal absolute difference of 3^n and 2^k.

The programs for A056850, there is no canonical definition to state claims against.
-/

/-! ## A056850.P14159851009922446903

`A064024(floor(log2(A027327(n))))`
-/

namespace A056850.P14159851009922446903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064024 (Nat.log 2 (A027327 n).toNat)

end

end A056850.P14159851009922446903

/-! ## A056850.P10763415360339412468

`A064024(ceil(log2(A025192(n))))`
-/

namespace A056850.P10763415360339412468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064024 ⌈Real.logb 2 (A025192 n : ℝ)⌉.toNat

end

end A056850.P10763415360339412468

/-! ## A056850.P9330207442320859022

`A064024(round(log(A117160(2*(n+1)))))`
-/

namespace A056850.P9330207442320859022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064024 (SequenceMachineLib.roundAway (Real.log (A117160 (2 * (n + 1)) : ℝ))).toNat

end

end A056850.P9330207442320859022

/-! ## A056850.P706767559339763149

`A303545(3^n)`
-/

namespace A056850.P706767559339763149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303545 (3 ^ n)

end

end A056850.P706767559339763149

/-! ## A056850.P4323368299422567186

`A303545(A000244(n))+char[10]`
-/

namespace A056850.P4323368299422567186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303545 (A000244 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A056850.P4323368299422567186

/-!
# A056851: Integers n such that the number of digits in n! is a cube.

The programs for A056851, there is no canonical definition to state claims against.
-/

/-! ## A056851.P16329826530047744836

`eq[1, A010057(A034886(n))]`
-/

namespace A056851.P16329826530047744836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056851.P16329826530047744836

/-! ## A056851.P7044764979892416967

`eq[A025469(n), A075847(A034886(n))]`
-/

namespace A056851.P7044764979892416967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075847 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056851.P7044764979892416967

/-! ## A056851.P1402966982449104392

`eq[0, A075847(A027868(n)+A008906(n))]`
-/

namespace A056851.P1402966982449104392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075847 (A027868 n + A008906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056851.P1402966982449104392

/-! ## A056851.P9592786642308171955

`eq[1, A010057(A027868(n)+A008906(n))]`
-/

namespace A056851.P9592786642308171955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A027868 n + A008906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056851.P9592786642308171955

/-! ## A056851.P12746698333331780311

`eq[1, A010057(A241730(n)+A055642(n))]`
-/

namespace A056851.P12746698333331780311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A241730 n + A055642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056851.P12746698333331780311

/-!
# A056852: a(n) = (p^p + 1)/(p + 1), where p = prime(n).

The programs for A056852, there is no canonical definition to state claims against.
-/

/-! ## A056852.P9853978280062820759

`A081216(p?[Δ[n²]])`
-/

namespace A056852.P9853978280062820759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081216 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A056852.P9853978280062820759

/-! ## A056852.P7072509750083082641

`A215159(p?[a(n-1)+2])+1` with `a(0)=1`
-/

namespace A056852.P7072509750083082641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215159 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A056852.P7072509750083082641

/-! ## A056852.P10181306913623277536

`A056009(A000040(n+2))`
-/

namespace A056852.P10181306913623277536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056009 (A000040 (n + 2)).toNat

end

end A056852.P10181306913623277536

/-! ## A056852.P8043375932865481494

`A056009(p?[comp[A221200(n+1)]])`
-/

namespace A056852.P8043375932865481494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056009 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A056852.P8043375932865481494

/-! ## A056852.P16164539336011112116

`A062160(A367573(n+2))`
-/

namespace A056852.P16164539336011112116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062160 (A367573 (n + 2)).toNat

end

end A056852.P16164539336011112116

/-!
# A056853: Numbers n satisfying phi(n+1) - phi(n-1) = 2.

The programs for A056853, there is no canonical definition to state claims against.
-/

/-! ## A056853.P9220693933724478070

`A001838(n+1)+1`
-/

namespace A056853.P9220693933724478070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1) + 1

end

end A056853.P9220693933724478070

/-! ## A056853.P12866011251929633803

`A320391(n+1)-1`
-/

namespace A056853.P12866011251929633803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1) - 1

end

end A056853.P12866011251929633803

/-! ## A056853.P10721312202851814098

`∪[A001359(n+1), A056774(n+1)]+1`
-/

namespace A056853.P10721312202851814098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A056853.P10721312202851814098

/-! ## A056853.P6164084912771882076

`eq[A000010(n+1)+2, A000010(n+3)]+2`
-/

namespace A056853.P6164084912771882076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A056853.P6164084912771882076

/-! ## A056853.P6562363792943458638

`A020725(A001838(n+1))`
-/

namespace A056853.P6562363792943458638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A001838 (n + 1)).toNat

end

end A056853.P6562363792943458638

/-! ## A056853.P2959381480061978031

`A004483(A320391(n+1))`
-/

namespace A056853.P2959381480061978031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A320391 (n + 1)).toNat

end

end A056853.P2959381480061978031

/-! ## A056853.P12939367010540476129

`A023444(A320391(n+1)+1)`
-/

namespace A056853.P12939367010540476129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A320391 (n + 1) + 1).toNat

end

end A056853.P12939367010540476129

/-! ## A056853.P13178382451709556910

`eq[A023022(n+2), A055684(n+4)]+3`
-/

namespace A056853.P13178382451709556910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A056853.P13178382451709556910

/-!
# A056854: a(n) = Lucas(4*n).

The programs for A056854, the canonical program `A056854.P17336805658555350541` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056854 has offset 0).

The definition of A056854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056854.P17336805658555350541

`7*a(n-1)-a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056854

/-- `7*a(n-1)-a(n-2)` -/
def P17336805658555350541.Spec : Prop :=
  ∀ n, P17336805658555350541.a n = A056854 n

theorem P17336805658555350541.correct : P17336805658555350541.Spec := by
  intro n
  simp only [A056854]

end A056854

/-! ## A056854.P12249564251672885067

`A005248(2*n)`
-/

namespace A056854.P12249564251672885067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (2 * n)

end

end A056854.P12249564251672885067

namespace A056854

/-- `A005248(2*n)` -/
def P12249564251672885067.Spec : Prop :=
  ∀ n, P12249564251672885067.a n = A056854 n

end A056854

/-! ## A056854.P15711572139911174712

`A000032(4*n)`
-/

namespace A056854.P15711572139911174712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (4 * n)

end

end A056854.P15711572139911174712

namespace A056854

/-- `A000032(4*n)` -/
def P15711572139911174712.Spec : Prop :=
  ∀ n, P15711572139911174712.a n = A056854 n

end A056854

/-! ## A056854.P7957380819999743970

`2+5*A049684(n)`
-/

namespace A056854.P7957380819999743970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + 5 * A049684 n

end

end A056854.P7957380819999743970

namespace A056854

/-- `2+5*A049684(n)` -/
def P7957380819999743970.Spec : Prop :=
  ∀ n, P7957380819999743970.a n = A056854 n

end A056854

/-! ## A056854.P15445968554004105554

`sqrt(45*A004187(n)²+4)`
-/

namespace A056854.P15445968554004105554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (45 * A004187 n ^ 2 + 4 : ℝ)

end

end A056854.P15445968554004105554

namespace A056854

/-- `sqrt(45*A004187(n)²+4)` -/
def P15445968554004105554.Spec : Prop :=
  ∀ n, P15445968554004105554.a n = (A056854 n : ℝ)

end A056854

/-! ## A056854.P3957809823292263609

`floor(ϕ^(4*n))+1`
-/

namespace A056854.P3957809823292263609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (4 * n)⌋ + 1

end

end A056854.P3957809823292263609

namespace A056854

/-- `floor(ϕ^(4*n))+1` -/
def P3957809823292263609.Spec : Prop :=
  ∀ n, P3957809823292263609.a n = A056854 n

end A056854

/-! ## A056854.P12433244536607672376

`A005247(4*n)`
-/

namespace A056854.P12433244536607672376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (4 * n)

end

end A056854.P12433244536607672376

namespace A056854

/-- `A005247(4*n)` -/
def P12433244536607672376.Spec : Prop :=
  ∀ n, P12433244536607672376.a n = A056854 n

end A056854

/-! ## A056854.P16031407651234509898

`A020878(4*n)`
-/

namespace A056854.P16031407651234509898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020878 (4 * n)

end

end A056854.P16031407651234509898

namespace A056854

/-- `A020878(4*n)` -/
def P16031407651234509898.Spec : Prop :=
  ∀ n, P16031407651234509898.a n = A056854 n

end A056854

/-! ## A056854.P7563862576601838220

`A062724(4*n)`
-/

namespace A056854.P7563862576601838220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 (4 * n)

end

end A056854.P7563862576601838220

namespace A056854

/-- `A062724(4*n)` -/
def P7563862576601838220.Spec : Prop :=
  ∀ n, P7563862576601838220.a n = A056854 n

end A056854

/-! ## A056854.P5100100121835496881

`A127218(8*n)`
-/

namespace A056854.P5100100121835496881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (8 * n)

end

end A056854.P5100100121835496881

namespace A056854

/-- `A127218(8*n)` -/
def P5100100121835496881.Spec : Prop :=
  ∀ n, P5100100121835496881.a n = A056854 n

end A056854

/-! ## A056854.P16833656485754207361

`A303427(8*n)`
-/

namespace A056854.P16833656485754207361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (8 * n)

end

end A056854.P16833656485754207361

namespace A056854

/-- `A303427(8*n)` -/
def P16833656485754207361.Spec : Prop :=
  ∀ n, P16833656485754207361.a n = A056854 n

end A056854

/-! ## A056854.P5273179282668910741

`Δ[A128535(2*n)]`
-/

namespace A056854.P5273179282668910741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056854.P5273179282668910741

namespace A056854

/-- `Δ[A128535(2*n)]` -/
def P5273179282668910741.Spec : Prop :=
  ∀ n, P5273179282668910741.a n = A056854 n

end A056854

/-! ## A056854.P7380925858006753991

`Δ[A078024(4*n)]`
-/

namespace A056854.P7380925858006753991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056854.P7380925858006753991

namespace A056854

/-- `Δ[A078024(4*n)]` -/
def P7380925858006753991.Spec : Prop :=
  ∀ n, P7380925858006753991.a n = A056854 n

end A056854

/-! ## A056854.P16565900371001898829

`record[A075150(n)-2]`
-/

namespace A056854.P16565900371001898829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056854.P16565900371001898829

namespace A056854

/-- `record[A075150(n)-2]` -/
def P16565900371001898829.Spec : Prop :=
  ∀ n, P16565900371001898829.a n = A056854 n

end A056854

/-! ## A056854.P14629852970165185237

`record[A005247(n)²-2]`
-/

namespace A056854.P14629852970165185237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056854.P14629852970165185237

namespace A056854

/-- `record[A005247(n)²-2]` -/
def P14629852970165185237.Spec : Prop :=
  ∀ n, P14629852970165185237.a n = A056854 n

end A056854

/-! ## A056854.P421739978802659534

`Δ[Δ[A152163(2*n)²]]`
-/

namespace A056854.P421739978802659534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056854.P421739978802659534

namespace A056854

/-- `Δ[Δ[A152163(2*n)²]]` -/
def P421739978802659534.Spec : Prop :=
  ∀ n, P421739978802659534.a n = A056854 n

end A056854

/-! ## A056854.P15322930765503990531

`A329723(2*(2*n+1))`
-/

namespace A056854.P15322930765503990531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (2 * (2 * n + 1))

end

end A056854.P15322930765503990531

namespace A056854

/-- `A329723(2*(2*n+1))` -/
def P15322930765503990531.Spec : Prop :=
  ∀ n, P15322930765503990531.a n = A056854 n

end A056854

/-! ## A056854.P10732325718142069557

`record[A000032(n)^cos(n%4)]`
-/

namespace A056854.P10732325718142069557
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℝ) ^ (Real.cos ((n % 4 : ℕ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056854.P10732325718142069557

namespace A056854

/-- `record[A000032(n)^cos(n%4)]` -/
def P10732325718142069557.Spec : Prop :=
  ∀ n, P10732325718142069557.a n = (A056854 n : ℝ)

end A056854

/-! ## A056854.P11023955667980015208

`or(2, 5*A000045(2*n)²)`
-/

namespace A056854.P11023955667980015208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (5 * A000045 (2 * n) ^ 2)

end

end A056854.P11023955667980015208

namespace A056854

/-- `or(2, 5*A000045(2*n)²)` -/
def P11023955667980015208.Spec : Prop :=
  ∀ n, P11023955667980015208.a n = A056854 n

end A056854

/-!
# A056855: a(n) = (Product k) * (Sum 1/k), where both the product and the sum are over those positive integers k, where k <= n and gcd(k,n) = 1.

The programs for A056855, there is no canonical definition to state claims against.
-/

/-! ## A056855.P17372158227633916998

`A002618(n+1)/2*A099940(n+1)`
-/

namespace A056855.P17372158227633916998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / 2 * (A099940 (n + 1) : ℚ)

end

end A056855.P17372158227633916998

/-! ## A056855.P9140871008757435601

`A110376(n+1)/A066570(n+1)`
-/

namespace A056855.P9140871008757435601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110376 (n + 1) : ℚ) / (A066570 (n + 1) : ℚ)

end

end A056855.P9140871008757435601

/-! ## A056855.P14796388218937092015

`A110376(n+1)/floor((n+1)!/A001783(n+1))`
-/

namespace A056855.P14796388218937092015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110376 (n + 1) : ℚ) / (⌊(Nat.factorial (n + 1) : ℚ) / (A001783 (n + 1) : ℚ)⌋ : ℚ)

end

end A056855.P14796388218937092015

/-! ## A056855.P5371990210890363933

`A110376(n+1)/floor(A000142(n+1)/A001783(n+1))`
-/

namespace A056855.P5371990210890363933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110376 (n + 1) : ℚ) / (⌊(A000142 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ)⌋ : ℚ)

end

end A056855.P5371990210890363933

/-! ## A056855.P930561436265822685

`A110376(n+1)/(A055067(n+1)/A001783(n+1)*A007955(n+1))`
-/

namespace A056855.P930561436265822685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110376 (n + 1) : ℚ) / ((A055067 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ) * (A007955 (n + 1) : ℚ))

end

end A056855.P930561436265822685

/-!
# A056856: Triangle of numbers related to rooted trees and unrooted planar trees.

The programs for A056856, there is no canonical definition to state claims against.
-/

/-! ## A056856.P14736352839038384264

`A076112(n+1)*A130534(n)`
-/

namespace A056856.P14736352839038384264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A130534 n

end

end A056856.P14736352839038384264

/-! ## A056856.P13994672382829554883

`abs(A008275(n+1)*A076112(n+1))`
-/

namespace A056856.P13994672382829554883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1) * A076112 (n + 1)|

end

end A056856.P13994672382829554883

/-! ## A056856.P7608763450720938833

`A079901(A007401(n+1))*A130534(n)`
-/

namespace A056856.P7608763450720938833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (A007401 (n + 1)).toNat * A130534 n

end

end A056856.P7608763450720938833

/-! ## A056856.P1768352937429004234

`A076112(n+1)*A094638(A038722(n+1))`
-/

namespace A056856.P1768352937429004234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A094638 (A038722 (n + 1)).toNat

end

end A056856.P1768352937429004234

/-! ## A056856.P8168233732186353067

`A076112(n+1)*A094638(A061579(n)+1)`
-/

namespace A056856.P8168233732186353067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A094638 (A061579 n + 1).toNat

end

end A056856.P8168233732186353067

/-! ## A056856.P4435634824661721552

`A076112(n+1)/A002260(n+1)*A028421(n)`
-/

namespace A056856.P4435634824661721552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076112 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A028421 n : ℚ)

end

end A056856.P4435634824661721552

/-! ## A056856.P6074222998004241063

`A076112(n+1)/A233543(n)*A188881(n+1)`
-/

namespace A056856.P6074222998004241063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076112 (n + 1) : ℚ) / (A233543 n : ℚ) * (A188881 (n + 1) : ℚ)

end

end A056856.P6074222998004241063

/-! ## A056856.P2488279695364563656

`abs(A123670(A038722(n+1))/A002024(n+1))`
-/

namespace A056856.P2488279695364563656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A123670 (A038722 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ)|

end

end A056856.P2488279695364563656

/-! ## A056856.P15058142014627985793

`A009999(A245300(n))*A130534(n)`
-/

namespace A056856.P15058142014627985793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A245300 n).toNat * A130534 n

end

end A056856.P15058142014627985793

/-! ## A056856.P15258603718948376817

`abs(A008275(n+1)*A009999(A245300(n)))`
-/

namespace A056856.P15258603718948376817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1) * A009999 (A245300 n).toNat|

end

end A056856.P15258603718948376817

/-!
# A056857: Triangle read by rows: T(n,c) = number of successive equalities in set partitions of n.

The programs for A056857, there is no canonical definition to state claims against.
-/

/-! ## A056857.P16235672874329458964

`A007318(n)*A000110(A025581(n))`
-/

namespace A056857.P16235672874329458964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000110 (A025581 n).toNat

end

end A056857.P16235672874329458964

/-! ## A056857.P3024033158033466865

`A130595(n)*A292935(A025581(n))`
-/

namespace A056857.P3024033158033466865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A292935 (A025581 n).toNat

end

end A056857.P3024033158033466865

/-! ## A056857.P5105823723495322491

`sqrt(A008459(n))*A000110(A025581(n))`
-/

namespace A056857.P5105823723495322491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000110 (A025581 n).toNat : ℝ)

end

end A056857.P5105823723495322491

/-! ## A056857.P17332507404451928373

`Δ[A102363(n)]*A000110(A025581(n))`
-/

namespace A056857.P17332507404451928373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000110 (A025581 n).toNat

end

end A056857.P17332507404451928373

/-! ## A056857.P8915637492216256062

`A056860(A038722(n+1))`
-/

namespace A056857.P8915637492216256062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A038722 (n + 1)).toNat

end

end A056857.P8915637492216256062

/-! ## A056857.P9644549837278964326

`A283424(n)-A283424(n+1)%A283424(n)`
-/

namespace A056857.P9644549837278964326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 n - Int.tmod (A283424 (n + 1)) (A283424 n)

end

end A056857.P9644549837278964326

/-! ## A056857.P7174755329173695535

`A000110(A025581(n))*A008619(A109128(n))`
-/

namespace A056857.P7174755329173695535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A025581 n).toNat * A008619 (A109128 n).toNat

end

end A056857.P7174755329173695535

/-! ## A056857.P18241881595509586508

`A007318(n)*A050315(A173787(n))`
-/

namespace A056857.P18241881595509586508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A050315 (A173787 n).toNat

end

end A056857.P18241881595509586508

/-! ## A056857.P13784061002226087553

`abs(A130595(n))*A050315(A173787(n))`
-/

namespace A056857.P13784061002226087553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A050315 (A173787 n).toNat

end

end A056857.P13784061002226087553

/-! ## A056857.P1471261938379151609

`A007318(n)*A104725(A130321(n))`
-/

namespace A056857.P1471261938379151609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A104725 (A130321 n).toNat

end

end A056857.P1471261938379151609

/-!
# A056858: Triangle of number of rises in restricted growth strings (RGS) for the set partitions of n.

The programs for A056858, there is no canonical definition to state claims against.
-/

/-! ## A056858.P5975485327942817036

`A137251(n+1)-A025465(A007053(n))`
-/

namespace A056858.P5975485327942817036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137251 (n + 1) - A025465 (A007053 n).toNat

end

end A056858.P5975485327942817036

/-! ## A056858.P6866021363999947113

`A133137(A137251(n+1)-A225099(n))`
-/

namespace A056858.P6866021363999947113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A137251 (n + 1) - A225099 n).toNat

end

end A056858.P6866021363999947113

/-! ## A056858.P17947622015715672197

`A137251(n+1)-A010894(A255509(n+2))`
-/

namespace A056858.P17947622015715672197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137251 (n + 1) - A010894 ((A255509 (n + 2)).toNat + 21)

end

end A056858.P17947622015715672197

/-! ## A056858.P1662208237904821286

`A338331(A008278(n+1))-A027188(A362899(n))`
-/

namespace A056858.P1662208237904821286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A008278 (n + 1)).toNat - A027188 (A362899 n).toNat

end

end A056858.P1662208237904821286

/-! ## A056858.P4335041330288876497

`A133713(n+2)+A055641(A280303(n+1))`
-/

namespace A056858.P4335041330288876497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133713 (n + 2) + A055641 (A280303 (n + 1)).toNat

end

end A056858.P4335041330288876497

/-!
# A056859: Triangle of number of falls in set partitions of n.

The programs for A056859, there is no canonical definition to state claims against.
-/

/-! ## A056859.P298285075204485992

`A272098(n)-A037912(A104004(n))`
-/

namespace A056859.P298285075204485992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272098 n - A037912 (A104004 n).toNat

end

end A056859.P298285075204485992

/-!
# A056860: Triangle T(n,k) = number of element-subset partitions of {1..n} with n-k+1 equalities (n >= 1, 1 <= k <= n).

The programs for A056860, there is no canonical definition to state claims against.
-/

/-! ## A056860.P15913509724371735024

`A000110(A002262(n))*A007318(n)`
-/

namespace A056860.P15913509724371735024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002262 n).toNat * A007318 n

end

end A056860.P15913509724371735024

/-! ## A056860.P15408856501554660705

`A007318(n)*A011971(A112367(n))`
-/

namespace A056860.P15408856501554660705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011971 (A112367 n).toNat

end

end A056860.P15408856501554660705

/-! ## A056860.P4967000320284708867

`A000110(A144328(n+1))*A007318(n)`
-/

namespace A056860.P4967000320284708867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A144328 (n + 1)).toNat * A007318 n

end

end A056860.P4967000320284708867

/-! ## A056860.P11765720594580762882

`A000110(n-A057944(n))*A007318(n)`
-/

namespace A056860.P11765720594580762882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ((n : ℤ) - A057944 n).toNat * A007318 n

end

end A056860.P11765720594580762882

/-! ## A056860.P10202377983665056007

`A000110(A002260(n+1)-1)*A007318(n)`
-/

namespace A056860.P10202377983665056007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002260 (n + 1) - 1).toNat * A007318 n

end

end A056860.P10202377983665056007

/-! ## A056860.P5843251525238202172

`A056857(∑[char[∑[n]]]²-n)`
-/

namespace A056860.P5843251525238202172
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A056860.P5843251525238202172

/-! ## A056860.P10093317402830491621

`gcd(A000038(n), A056857(A038722(n+1)))`
-/

namespace A056860.P10093317402830491621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A056857 (A038722 (n + 1)).toNat)

end

end A056860.P10093317402830491621

/-!
# A056861: Triangle T(n,k) is the number of restricted growth strings (RGS) of set partitions of {1..n} that have an increase at index k (1<=k

The programs for A056861, there is no canonical definition to state claims against.
-/

/-! ## A056861.P10770169439330447614

`A000110(comp[∑[n]]-n)-A120057(n+1)`
-/

namespace A056861.P10770169439330447614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A120057 (n + 1)

end

end A056861.P10770169439330447614

/-! ## A056861.P8108062434578822373

`A005493(A003056(n))-A056862(n+2)`
-/

namespace A056861.P8108062434578822373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 (A003056 n).toNat - A056862 (n + 2)

end

end A056861.P8108062434578822373

/-! ## A056861.P11095514326326132620

`A011972(A127739(n+1))-A120057(n+1)`
-/

namespace A056861.P11095514326326132620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A127739 (n + 1)).toNat - A120057 (n + 1)

end

end A056861.P11095514326326132620

/-! ## A056861.P18084786704840260827

`A120057(A127739(n+1)+1)-A120057(n+1)`
-/

namespace A056861.P18084786704840260827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120057 (A127739 (n + 1) + 1).toNat - A120057 (n + 1)

end

end A056861.P18084786704840260827

/-! ## A056861.P6636845269369492975

`A011972(A004736(n+1)+n)-A120057(n+1)`
-/

namespace A056861.P6636845269369492975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A004736 (n + 1) + (n : ℤ)).toNat - A120057 (n + 1)

end

end A056861.P6636845269369492975

/-!
# A056862: Triangle T(n,k) is the number of restricted growth strings (RGS) of set partitions of {1..n} that have a decrease at index k (1<=k

The programs for A056862, there is no canonical definition to state claims against.
-/

/-! ## A056862.P2420980731663370969

`A120057(n+1)-A123081(comp[∑[n]])`
-/

namespace A056862.P2420980731663370969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120057 (n + 1) - A123081 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A056862.P2420980731663370969

/-! ## A056862.P3137888904714204265

`A120057(n+1)-A011972(A057944(n))`
-/

namespace A056862.P3137888904714204265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120057 (n + 1) - A011972 (A057944 n).toNat

end

end A056862.P3137888904714204265

/-! ## A056862.P933305705797843248

`A120057(n+1)-A000110(A002024(n+1))`
-/

namespace A056862.P933305705797843248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120057 (n + 1) - A000110 (A002024 (n + 1)).toNat

end

end A056862.P933305705797843248

/-! ## A056862.P7084471872423480011

`A120057(n+1)-A011971(A127739(n+1))`
-/

namespace A056862.P7084471872423480011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120057 (n + 1) - A011971 (A127739 (n + 1)).toNat

end

end A056862.P7084471872423480011

/-! ## A056862.P5650740447955903998

`A120057(n+1)-A120057(A057944(n)+1)`
-/

namespace A056862.P5650740447955903998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120057 (n + 1) - A120057 (A057944 n + 1).toNat

end

end A056862.P5650740447955903998

/-! ## A056862.P819492584281348054

`A120057(n+1)-A123346(n-A002262(n))`
-/

namespace A056862.P819492584281348054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120057 (n + 1) - A123346 ((n : ℤ) - A002262 n).toNat

end

end A056862.P819492584281348054

/-! ## A056862.P3324737048045769716

`A120057(n+1)-A120057(1-A002262(n)+n)`
-/

namespace A056862.P3324737048045769716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120057 (n + 1) - A120057 (1 - A002262 n + (n : ℤ)).toNat

end

end A056862.P3324737048045769716

/-! ## A056862.P17702168661681717032

`A005493(A003056(n))-A056861(n+2)`
-/

namespace A056862.P17702168661681717032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 (A003056 n).toNat - A056861 (n + 2)

end

end A056862.P17702168661681717032

/-! ## A056862.P3477341636779495941

`A011972(A127739(n+1)-1)-A056861(n+2)`
-/

namespace A056862.P3477341636779495941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A127739 (n + 1) - 1).toNat - A056861 (n + 2)

end

end A056862.P3477341636779495941

/-!
# A056864: Nearest integer to n^2/10.

The programs for A056864, the canonical program `A056864.P11840570262622387089` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056864 has offset 0).

The definition of A056864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056864.P11840570262622387089

`round(n²/10)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056864

/-- `round(n²/10)` -/
def P11840570262622387089.Spec : Prop :=
  ∀ n, P11840570262622387089.a n = A056864 n

theorem P11840570262622387089.correct : P11840570262622387089.Spec := by
  intro n
  simp only [A056864]

end A056864

/-! ## A056864.P8459337761354487704

`floor((xor(2, n²)+3)/10)`
-/

namespace A056864.P8459337761354487704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n ^ 2) + 3 : ℚ) / 10⌋

end

end A056864.P8459337761354487704

namespace A056864

/-- `floor((xor(2, n²)+3)/10)` -/
def P8459337761354487704.Spec : Prop :=
  ∀ n, P8459337761354487704.a n = A056864 n

end A056864

/-! ## A056864.P17507648794535342738

`∑[floor(or(1, n+1)/5)]`
-/

namespace A056864.P17507648794535342738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P17507648794535342738

namespace A056864

/-- `∑[floor(or(1, n+1)/5)]` -/
def P17507648794535342738.Spec : Prop :=
  ∀ n, P17507648794535342738.a n = A056864 n

end A056864

/-! ## A056864.P5394526568951214816

`∑[round(or(1, n-1)/5)]`
-/

namespace A056864.P5394526568951214816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 ((n : ℤ) - 1) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P5394526568951214816

namespace A056864

/-- `∑[round(or(1, n-1)/5)]` -/
def P5394526568951214816.Spec : Prop :=
  ∀ n, P5394526568951214816.a n = A056864 n

end A056864

/-! ## A056864.P2092188678912291241

`∑[ceil(or(1, n-3)/5)]`
-/

namespace A056864.P2092188678912291241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 1 ((n : ℤ) - 3) : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P2092188678912291241

namespace A056864

/-- `∑[ceil(or(1, n-3)/5)]` -/
def P2092188678912291241.Spec : Prop :=
  ∀ n, P2092188678912291241.a n = A056864 n

end A056864

/-! ## A056864.P7494729822772438262

`∑[floor(record[xor(2, n+1)/10])]`
-/

namespace A056864.P7494729822772438262
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n + 1) : ℚ) / 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P7494729822772438262

namespace A056864

/-- `∑[floor(record[xor(2, n+1)/10])]` -/
def P7494729822772438262.Spec : Prop :=
  ∀ n, P7494729822772438262.a n = A056864 n

end A056864

/-! ## A056864.P8954679032169940202

`∑[floor((n%2+n+1)/5)]`
-/

namespace A056864.P8954679032169940202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 2 + (n + 1) : ℕ) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P8954679032169940202

namespace A056864

/-- `∑[floor((n%2+n+1)/5)]` -/
def P8954679032169940202.Spec : Prop :=
  ∀ n, P8954679032169940202.a n = A056864 n

end A056864

/-! ## A056864.P7213199886439741687

`∑[floor((gcd(2, n+1)+n)/5)]`
-/

namespace A056864.P7213199886439741687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 (n + 1) + n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P7213199886439741687

namespace A056864

/-- `∑[floor((gcd(2, n+1)+n)/5)]` -/
def P7213199886439741687.Spec : Prop :=
  ∀ n, P7213199886439741687.a n = A056864 n

end A056864

/-! ## A056864.P14395720964982512877

`∑[floor((and(1, n)+1+n)/5)]`
-/

namespace A056864.P14395720964982512877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 n + 1 + n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P14395720964982512877

namespace A056864

/-- `∑[floor((and(1, n)+1+n)/5)]` -/
def P14395720964982512877.Spec : Prop :=
  ∀ n, P14395720964982512877.a n = A056864 n

end A056864

/-! ## A056864.P17070989037162312920

`∑[floor(∑[2-a(n-1)]/5)]` with `a(0)=1, a(1)=2`
-/

namespace A056864.P17070989037162312920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P17070989037162312920

namespace A056864

/-- `∑[floor(∑[2-a(n-1)]/5)]` -/
def P17070989037162312920.Spec : Prop :=
  ∀ n, P17070989037162312920.a n = A056864 n

end A056864

/-! ## A056864.P3940208899690274379

`floor(A117951(n)/10)`
-/

namespace A056864.P3940208899690274379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117951 n : ℚ) / 10⌋

end

end A056864.P3940208899690274379

namespace A056864

/-- `floor(A117951(n)/10)` -/
def P3940208899690274379.Spec : Prop :=
  ∀ n, P3940208899690274379.a n = A056864 n

end A056864

/-! ## A056864.P6343533757139545611

`∑[∑[char[A268044(n+1)]]]`
-/

namespace A056864.P6343533757139545611
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P6343533757139545611

namespace A056864

/-- `∑[∑[char[A268044(n+1)]]]` -/
def P6343533757139545611.Spec : Prop :=
  ∀ n, (P6343533757139545611.a n : ℤ) = A056864 n

end A056864

/-! ## A056864.P5459132120619563192

`A118015(n)-A056865(n)`
-/

namespace A056864.P5459132120619563192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n - A056865 n

end

end A056864.P5459132120619563192

namespace A056864

/-- `A118015(n)-A056865(n)` -/
def P5459132120619563192.Spec : Prop :=
  ∀ n, P5459132120619563192.a n = A056864 n

end A056864

/-! ## A056864.P16707627339391391059

`∑[A288156(Δ[A002620(n)])]`
-/

namespace A056864.P16707627339391391059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P16707627339391391059

namespace A056864

/-- `∑[A288156(Δ[A002620(n)])]` -/
def P16707627339391391059.Spec : Prop :=
  ∀ n, P16707627339391391059.a n = A056864 n

end A056864

/-! ## A056864.P7197934230326289233

`∑[A288156(n-A004526(n))]`
-/

namespace A056864.P7197934230326289233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 ((n : ℤ) - A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P7197934230326289233

namespace A056864

/-- `∑[A288156(n-A004526(n))]` -/
def P7197934230326289233.Spec : Prop :=
  ∀ n, P7197934230326289233.a n = A056864 n

end A056864

/-! ## A056864.P2611285363614159027

`∑[A288156(∑[A166486(2*n)])]`
-/

namespace A056864.P2611285363614159027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P2611285363614159027

namespace A056864

/-- `∑[A288156(∑[A166486(2*n)])]` -/
def P2611285363614159027.Spec : Prop :=
  ∀ n, P2611285363614159027.a n = A056864 n

end A056864

/-! ## A056864.P8787163258169117432

`∑[A289133(A239492(A057353(n+1)))]`
-/

namespace A056864.P8787163258169117432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A239492 (A057353 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P8787163258169117432

namespace A056864

/-- `∑[A289133(A239492(A057353(n+1)))]` -/
def P8787163258169117432.Spec : Prop :=
  ∀ n, P8787163258169117432.a n = A056864 n

end A056864

/-! ## A056864.P11548647205308083313

`∑[A002266(char[2*n+1]+n+1)]`
-/

namespace A056864.P11548647205308083313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 ((if ∃ j, f2 j = n then 1 else 0) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P11548647205308083313

namespace A056864

/-- `∑[A002266(char[2*n+1]+n+1)]` -/
def P11548647205308083313.Spec : Prop :=
  ∀ n, P11548647205308083313.a n = A056864 n

end A056864

/-! ## A056864.P156551408268435721

`∑[A288156(A004526(n+1))]`
-/

namespace A056864.P156551408268435721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056864.P156551408268435721

namespace A056864

/-- `∑[A288156(A004526(n+1))]` -/
def P156551408268435721.Spec : Prop :=
  ∀ n, P156551408268435721.a n = A056864 n

end A056864

/-! ## A056864.P283819340903458553

`A130520(n+2)-A059995(n+2)`
-/

namespace A056864.P283819340903458553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 2) - A059995 (n + 2)

end

end A056864.P283819340903458553

namespace A056864

/-- `A130520(n+2)-A059995(n+2)` -/
def P283819340903458553.Spec : Prop :=
  ∀ n, P283819340903458553.a n = A056864 n

end A056864

/-!
# A056865: a(n) = floor(n^2/10).

The programs for A056865, the canonical program `A056865.P12722896492128971852` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056865 has offset 0).

The definition of A056865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/10)` (program `A056865.P12722896492128971852`, by `A056865.P12722896492128971852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056865.P12722896492128971852

`floor(n²/10)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A056865

/-- `floor(n²/10)` -/
def P12722896492128971852.Spec : Prop :=
  ∀ n, P12722896492128971852.a n = A056865 n

theorem P12722896492128971852.correct : P12722896492128971852.Spec := by
  intro n
  simp only [A056865]

end A056865

/-! ## A056865.P7850444466337882849

`∑[round(and(n, -2)/5)]`
-/

namespace A056865.P7850444466337882849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P7850444466337882849

namespace A056865

/-- `∑[round(and(n, -2)/5)]` -/
def P7850444466337882849.Spec : Prop :=
  ∀ n, P7850444466337882849.a n = A056865 n

end A056865

/-! ## A056865.P14938816091241136707

`∑[floor((or(1, n)+1)/5)]`
-/

namespace A056865.P14938816091241136707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n + 1 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P14938816091241136707

namespace A056865

/-- `∑[floor((or(1, n)+1)/5)]` -/
def P14938816091241136707.Spec : Prop :=
  ∀ n, P14938816091241136707.a n = A056865 n

end A056865

/-! ## A056865.P17119977525831556366

`∑[round((or(1, n)-1)/5)]`
-/

namespace A056865.P17119977525831556366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P17119977525831556366

namespace A056865

/-- `∑[round((or(1, n)-1)/5)]` -/
def P17119977525831556366.Spec : Prop :=
  ∀ n, P17119977525831556366.a n = A056865 n

end A056865

/-! ## A056865.P5746756017762876701

`∑[ceil((or(1, n)-3)/5)]`
-/

namespace A056865.P5746756017762876701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor 1 n : ℤ) - 3 : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P5746756017762876701

namespace A056865

/-- `∑[ceil((or(1, n)-3)/5)]` -/
def P5746756017762876701.Spec : Prop :=
  ∀ n, P5746756017762876701.a n = A056865 n

end A056865

/-! ## A056865.P11551057979644218713

`(n²-n²%10)/10`
-/

namespace A056865.P11551057979644218713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ((n ^ 2 % 10 : ℕ) : ℤ) : ℚ) / 10

end

end A056865.P11551057979644218713

namespace A056865

/-- `(n²-n²%10)/10` -/
def P11551057979644218713.Spec : Prop :=
  ∀ n, P11551057979644218713.a n = (A056865 n : ℚ)

end A056865

/-! ## A056865.P9011406159956512884

`∑[floor((gcd(2, n)+n)/5)]`
-/

namespace A056865.P9011406159956512884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n + n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P9011406159956512884

namespace A056865

/-- `∑[floor((gcd(2, n)+n)/5)]` -/
def P9011406159956512884.Spec : Prop :=
  ∀ n, P9011406159956512884.a n = A056865 n

end A056865

/-! ## A056865.P6717711939201016816

`∑[round((n-n%2)/5)]`
-/

namespace A056865.P6717711939201016816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P6717711939201016816

namespace A056865

/-- `∑[round((n-n%2)/5)]` -/
def P6717711939201016816.Spec : Prop :=
  ∀ n, P6717711939201016816.a n = A056865 n

end A056865

/-! ## A056865.P8333990081505783072

`∑[∑[char[and(5*n+4, -2)]]]`
-/

namespace A056865.P8333990081505783072
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * n + 4 : ℤ) (-2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P8333990081505783072

namespace A056865

/-- `∑[∑[char[and(5*n+4, -2)]]]` -/
def P8333990081505783072.Spec : Prop :=
  ∀ n, (P8333990081505783072.a n : ℤ) = A056865 n

end A056865

/-! ## A056865.P11710436152891827436

`∑[floor(∑[2-a(n-1)]/5)]` with `a(0)=2`
-/

namespace A056865.P11710436152891827436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P11710436152891827436

namespace A056865

/-- `∑[floor(∑[2-a(n-1)]/5)]` -/
def P11710436152891827436.Spec : Prop :=
  ∀ n, P11710436152891827436.a n = A056865 n

end A056865

/-! ## A056865.P9654334694958494525

`∑[∑[char[or(1, 3*n)+2*n+3]]]`
-/

namespace A056865.P9654334694958494525
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n) + (2 * n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P9654334694958494525

namespace A056865

/-- `∑[∑[char[or(1, 3*n)+2*n+3]]]` -/
def P9654334694958494525.Spec : Prop :=
  ∀ n, (P9654334694958494525.a n : ℤ) = A056865 n

end A056865

/-! ## A056865.P6286584453017026035

`∑[A134119(n)]`
-/

namespace A056865.P6286584453017026035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P6286584453017026035

namespace A056865

/-- `∑[A134119(n)]` -/
def P6286584453017026035.Spec : Prop :=
  ∀ n, P6286584453017026035.a n = A056865 n

end A056865

/-! ## A056865.P13543298852551688926

`Δ[A173653(abs(1-n))]`
-/

namespace A056865.P13543298852551688926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173653 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056865.P13543298852551688926

namespace A056865

/-- `Δ[A173653(abs(1-n))]` -/
def P13543298852551688926.Spec : Prop :=
  ∀ n, P13543298852551688926.a n = A056865 n

end A056865

/-! ## A056865.P18394047271024577348

`ceil(A005897(n)/60)-1`
-/

namespace A056865.P18394047271024577348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005897 n : ℚ) / 60⌉ - 1

end

end A056865.P18394047271024577348

namespace A056865

/-- `ceil(A005897(n)/60)-1` -/
def P18394047271024577348.Spec : Prop :=
  ∀ n, P18394047271024577348.a n = A056865 n

end A056865

/-! ## A056865.P2731370015647994549

`A118015(n)-A056864(n)`
-/

namespace A056865.P2731370015647994549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n - A056864 n

end

end A056865.P2731370015647994549

namespace A056865

/-- `A118015(n)-A056864(n)` -/
def P2731370015647994549.Spec : Prop :=
  ∀ n, P2731370015647994549.a n = A056865 n

end A056865

/-! ## A056865.P1978754872375652670

`A036408(n)-A168184(n)`
-/

namespace A056865.P1978754872375652670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 n - A168184 n

end

end A056865.P1978754872375652670

namespace A056865

/-- `A036408(n)-A168184(n)` -/
def P1978754872375652670.Spec : Prop :=
  ∀ n, P1978754872375652670.a n = A056865 n

end A056865

/-! ## A056865.P17692438152422939928

`∑[A057354(A004526(n)+1)]`
-/

namespace A056865.P17692438152422939928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P17692438152422939928

namespace A056865

/-- `∑[A057354(A004526(n)+1)]` -/
def P17692438152422939928.Spec : Prop :=
  ∀ n, P17692438152422939928.a n = A056865 n

end A056865

/-! ## A056865.P4309439662380757055

`∑[A057354(A001651(n+1)-n)]`
-/

namespace A056865.P4309439662380757055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A001651 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056865.P4309439662380757055

namespace A056865

/-- `∑[A057354(A001651(n+1)-n)]` -/
def P4309439662380757055.Spec : Prop :=
  ∀ n, P4309439662380757055.a n = A056865 n

end A056865

/-! ## A056865.P11268320890759327122

`A130520(n+1)+A059995(n+2)`
-/

namespace A056865.P11268320890759327122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 1) + A059995 (n + 2)

end

end A056865.P11268320890759327122

namespace A056865

/-- `A130520(n+1)+A059995(n+2)` -/
def P11268320890759327122.Spec : Prop :=
  ∀ n, P11268320890759327122.a n = A056865 n

end A056865

/-! ## A056865.P3423524411719558285

`A004524(A008738(n))`
-/

namespace A056865.P3423524411719558285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A008738 n).toNat

end

end A056865.P3423524411719558285

namespace A056865

/-- `A004524(A008738(n))` -/
def P3423524411719558285.Spec : Prop :=
  ∀ n, P3423524411719558285.a n = A056865 n

end A056865

/-!
# A056866: Orders of non-solvable groups, i.e., numbers that are not solvable numbers.

The programs for A056866, there is no canonical definition to state claims against.
-/

/-! ## A056866.P1362028712432500779

`4*A131933(n+1)`
-/

namespace A056866.P1362028712432500779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131933 (n + 1)

end

end A056866.P1362028712432500779

/-! ## A056866.P14738763964810246282

`A008574(A131933(n+1))`
-/

namespace A056866.P14738763964810246282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A131933 (n + 1)).toNat

end

end A056866.P14738763964810246282

/-! ## A056866.P11449264577468929165

`A016813(A131933(n+1)+1)-5`
-/

namespace A056866.P11449264577468929165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A131933 (n + 1) + 1).toNat - 5

end

end A056866.P11449264577468929165

/-! ## A056866.P5359955906106940404

`A008586(A131933(n+1)%A074379(n+1))`
-/

namespace A056866.P5359955906106940404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.tmod (A131933 (n + 1)) (A074379 (n + 1))).toNat

end

end A056866.P5359955906106940404

/-! ## A056866.P3718812939371426261

`A008586(A131933(n+1))%A097282(n+1)`
-/

namespace A056866.P3718812939371426261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A131933 (n + 1)).toNat) (A097282 (n + 1))

end

end A056866.P3718812939371426261

/-! ## A056866.P3861831276496819155

`A008586(lcm(3, A131933(n+1)))`
-/

namespace A056866.P3861831276496819155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.lcm 3 (A131933 (n + 1)))

end

end A056866.P3861831276496819155

/-!
# A056867: Nilpotent numbers: n such that every group of order n is nilpotent.

The programs for A056867, there is no canonical definition to state claims against.
-/

/-! ## A056867.P7693414513301521096

`eq[1, gcd(n+1, A153038(n+1))]+1`
-/

namespace A056867.P7693414513301521096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A153038 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056867.P7693414513301521096

/-! ## A056867.P9807850481468827555

`record[lcm(A059806(n+1), A274006(n+1))]`
-/

namespace A056867.P9807850481468827555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059806 (n + 1)) (A274006 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056867.P9807850481468827555

/-! ## A056867.P15004232173543923807

`eq[A000001(n), A066060(A233583(n+1))]`
-/

namespace A056867.P15004232173543923807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056867.P15004232173543923807

/-! ## A056867.P290939471910822987

`record[A319677(n+1)+A061064(A051532(n+1))]`
-/

namespace A056867.P290939471910822987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (n + 1) + A061064 (A051532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056867.P290939471910822987

/-! ## A056867.P14613747757443800292

`A286815(∑[n])+eq[n+1, A319677(n+1)]`
-/

namespace A056867.P14613747757443800292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (∑ j ∈ Finset.range (n + 1), f1 j) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A056867.P14613747757443800292

/-! ## A056867.P233694514978067235

`eq[0, A004442(A323409(n+1)²)]+1`
-/

namespace A056867.P233694514978067235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A323409 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056867.P233694514978067235

/-! ## A056867.P7251014428893255436

`eq[1, A003557(A323409(n+1)²)]+1`
-/

namespace A056867.P7251014428893255436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A323409 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056867.P7251014428893255436

/-! ## A056867.P1885093535209652372

`eq[1, A261476(A260073(n+1)+1)]+1`
-/

namespace A056867.P1885093535209652372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261476 (A260073 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056867.P1885093535209652372

/-! ## A056867.P11597272616441222087

`∩[A046687(n+1), A257144(n+1)]`
-/

namespace A056867.P11597272616441222087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056867.P11597272616441222087

/-!
# A056868: Numbers that are not nilpotent numbers.

The programs for A056868, there is no canonical definition to state claims against.
-/

/-! ## A056868.P16157239818485116020

`comp[A056867(n+1)-1]+1`
-/

namespace A056868.P16157239818485116020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A056868.P16157239818485116020

/-! ## A056868.P14276904416686339331

`A153152(comp[A056867(n+1)-1])`
-/

namespace A056868.P14276904416686339331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A056868.P14276904416686339331

/-! ## A056868.P5806580780646483713

`eq[char[A056867(n+1)], A000007(n)]`
-/

namespace A056868.P5806580780646483713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056868.P5806580780646483713

/-! ## A056868.P16845616880401069431

`eq[char[A056867(n+1)], A000038(n)]`
-/

namespace A056868.P16845616880401069431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056868.P16845616880401069431

/-! ## A056868.P7513616454263641375

`lt[A066060(A233583(n+1)), A000001(n)]`
-/

namespace A056868.P7513616454263641375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056868.P7513616454263641375

/-! ## A056868.P11740331169839395249

`lt[A319677(A028310(n)), A118759(n)]`
-/

namespace A056868.P11740331169839395249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056868.P11740331169839395249

/-! ## A056868.P9190149274414005669

`lt[A319677(A233583(n+1)), A118759(n)]`
-/

namespace A056868.P9190149274414005669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056868.P9190149274414005669

/-!
# A056869: Prime hypotenuses of Pythagorean triangles with consecutive integer sides.

The programs for A056869, there is no canonical definition to state claims against.
-/

/-! ## A056869.P241163749830167266

`A086383(n+2)`
-/

namespace A056869.P241163749830167266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086383 (n + 2)

end

end A056869.P241163749830167266

/-! ## A056869.P10315613822593005916

`record[A364820(n+3)]`
-/

namespace A056869.P10315613822593005916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364820 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056869.P10315613822593005916

/-! ## A056869.P13996956834334347720

`record[A246556(p?[2*n+1])]`
-/

namespace A056869.P13996956834334347720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246556 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056869.P13996956834334347720

/-! ## A056869.P4776443440403955029

`A000129(A096650(n+2))`
-/

namespace A056869.P4776443440403955029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A096650 (n + 2)).toNat

end

end A056869.P4776443440403955029

/-! ## A056869.P10093734271238290453

`record[A246556(A000040(n+2))]`
-/

namespace A056869.P10093734271238290453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246556 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056869.P10093734271238290453

/-!
# A056870: Difference between partial sums of partition numbers (A026905) and partial sums of numbers of partitions into distinct parts (A026906).

The programs for A056870, there is no canonical definition to state claims against.
-/

/-! ## A056870.P13213700897226864749

`∑[A047967(n+1)]`
-/

namespace A056870.P13213700897226864749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056870.P13213700897226864749

/-! ## A056870.P11209855048830760229

`A000070(n+1)-A036469(n+1)`
-/

namespace A056870.P11209855048830760229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - A036469 (n + 1)

end

end A056870.P11209855048830760229

/-! ## A056870.P1011733105246876427

`A026905(n+1)-A026906(n+1)`
-/

namespace A056870.P1011733105246876427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) - A026906 (n + 1)

end

end A056870.P1011733105246876427

/-! ## A056870.P2373236260927478556

`A058682(n+1)-A317910(n+1)`
-/

namespace A056870.P2373236260927478556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (n + 1) - A317910 (n + 1)

end

end A056870.P2373236260927478556

/-! ## A056870.P5066637264422614378

`∑[A000041(n+1)-Δ[A036469(n)]]`
-/

namespace A056870.P5066637264422614378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056870.P5066637264422614378

/-! ## A056870.P14199958461338222191

`∑[A000041(n+1)-A000009(n+1)]`
-/

namespace A056870.P14199958461338222191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A000009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056870.P14199958461338222191

/-! ## A056870.P10314289133463012890

`∑[A000041(n+1)]-A026906(n+1)`
-/

namespace A056870.P10314289133463012890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026906 (n + 1)

end

end A056870.P10314289133463012890

/-! ## A056870.P5511111577013893019

`A056871(n+1)-2*A026906(n+1)`
-/

namespace A056870.P5511111577013893019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056871 (n + 1) - 2 * A026906 (n + 1)

end

end A056870.P5511111577013893019

/-! ## A056870.P1164270034916856140

`∑[A000041(n+1)-abs(A081360(n+1))]`
-/

namespace A056870.P1164270034916856140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - |A081360 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056870.P1164270034916856140

/-! ## A056870.P8921278607305973516

`∑[A000065(n+1)-∑[A087897(n+1)]]`
-/

namespace A056870.P8921278607305973516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056870.P8921278607305973516

/-! ## A056870.P18302358542996094203

`∑[∑[A002865(n+1)]-A111133(n+1)]`
-/

namespace A056870.P18302358542996094203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A111133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056870.P18302358542996094203

/-! ## A056870.P200492587387255661

`A026905(n+1)-(A111133(n+1)+A036469(n))`
-/

namespace A056870.P200492587387255661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) - (A111133 (n + 1) + A036469 n)

end

end A056870.P200492587387255661

/-! ## A056870.P3368111056091601497

`A225751(n+1)+A025065(n)-A036469(n+1)`
-/

namespace A056870.P3368111056091601497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225751 (n + 1) + (A025065 n - A036469 (n + 1))

end

end A056870.P3368111056091601497

/-! ## A056870.P14091606013064714166

`A026905(n+1)+A026905(n+1)-A056871(n+1)`
-/

namespace A056870.P14091606013064714166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) + (A026905 (n + 1) - A056871 (n + 1))

end

end A056870.P14091606013064714166

/-! ## A056870.P688413787912838770

`A000070(n+1)+A095944(n+1)-A095944(n+2)`
-/

namespace A056870.P688413787912838770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A095944 (n + 1) - A095944 (n + 2))

end

end A056870.P688413787912838770

/-! ## A056870.P17649311864092720176

`2*A026905(n+1)-A056871(n+1)`
-/

namespace A056870.P17649311864092720176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026905 (n + 1) - A056871 (n + 1)

end

end A056870.P17649311864092720176

/-! ## A056870.P4590127059300885507

`A025065(2*(n+1))-A036469(n+1)`
-/

namespace A056870.P4590127059300885507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * (n + 1)) - A036469 (n + 1)

end

end A056870.P4590127059300885507

/-! ## A056870.P6851327379715068215

`∑[A000041(n+1)-A035457(2*(n+1))]`
-/

namespace A056870.P6851327379715068215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A035457 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056870.P6851327379715068215

/-! ## A056870.P1827561914680390251

`record[A035363(n)+1-a(n-1)]-A026906(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A056870.P1827561914680390251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A035363 n + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026906 (n + 1)

end

end A056870.P1827561914680390251

/-! ## A056870.P2340228610171659543

`A000070(n+1)-(A318156(n+1)+A318155(n+1))`
-/

namespace A056870.P2340228610171659543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A318156 (n + 1) + A318155 (n + 1))

end

end A056870.P2340228610171659543

/-!
# A056871: Sum of partial sums of partition numbers (A026905) and partial sums of numbers of partitions into distinct parts (A026906).

The programs for A056871, there is no canonical definition to state claims against.
-/

/-! ## A056871.P8445188401968074105

`∑[A218004(n+1)+1]`
-/

namespace A056871.P8445188401968074105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218004 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056871.P8445188401968074105

/-! ## A056871.P13565273157323781516

`A026906(n+1)+A026905(n+1)`
-/

namespace A056871.P13565273157323781516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1) + A026905 (n + 1)

end

end A056871.P13565273157323781516

/-! ## A056871.P11027628847685012509

`∑[A000041(n+1)+Δ[A036469(n)]]`
-/

namespace A056871.P11027628847685012509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056871.P11027628847685012509

/-! ## A056871.P10280622496824789663

`∑[A000009(n+1)+A000041(n+1)]`
-/

namespace A056871.P10280622496824789663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056871.P10280622496824789663

/-! ## A056871.P17302998895641135508

`A026906(n+1)+∑[A000041(n+1)]`
-/

namespace A056871.P17302998895641135508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056871.P17302998895641135508

/-! ## A056871.P17077313506233392835

`∑[A139582(n+1)-A047967(n+1)]`
-/

namespace A056871.P17077313506233392835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (n + 1) - A047967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056871.P17077313506233392835

/-! ## A056871.P7364573099488380847

`A000070(n+1)+A036469(n+1)-2`
-/

namespace A056871.P7364573099488380847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A036469 (n + 1) - 2)

end

end A056871.P7364573099488380847

/-! ## A056871.P13229026435685260794

`A056870(n+1)+2*A026906(n+1)`
-/

namespace A056871.P13229026435685260794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056870 (n + 1) + 2 * A026906 (n + 1)

end

end A056871.P13229026435685260794

/-! ## A056871.P16345955554348426655

`∑[A000041(n+1)+abs(A081360(n+1))]`
-/

namespace A056871.P16345955554348426655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + |A081360 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056871.P16345955554348426655

/-! ## A056871.P6491696940087127379

`A026905(n+1)+A111133(n+1)+A036469(n)`
-/

namespace A056871.P6491696940087127379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) + (A111133 (n + 1) + A036469 n)

end

end A056871.P6491696940087127379

/-! ## A056871.P13484912593614892221

`A026905(n+1)+A026905(n+1)-A056870(n+1)`
-/

namespace A056871.P13484912593614892221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) + (A026905 (n + 1) - A056870 (n + 1))

end

end A056871.P13484912593614892221

/-! ## A056871.P11721389847324419396

`2*A026905(n+1)-A056870(n+1)`
-/

namespace A056871.P11721389847324419396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026905 (n + 1) - A056870 (n + 1)

end

end A056871.P11721389847324419396

/-! ## A056871.P8164378425074035992

`∑[A035457(2*(n+1))+A000041(n+1)]`
-/

namespace A056871.P8164378425074035992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * (n + 1)) + A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056871.P8164378425074035992

/-! ## A056871.P4360510856224497569

`∑[A116861(∑[n+1])+A000041(n+1)]`
-/

namespace A056871.P4360510856224497569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116861 (∑ j ∈ Finset.range (n + 1), f2 j) + A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056871.P4360510856224497569

/-!
# A056872: Numbers k such that k | p(k) + q(k) where p(k) = partition numbers (A000041) and q(k) = partition numbers into distinct parts (A000009).

The programs for A056872, there is no canonical definition to state claims against.
-/

/-! ## A056872.P6511270768185249844

`A124468(3*n+4)%(10*a(n-1))` with `a(0)=1, a(1)=5, a(2)=25, a(3)=42`
-/

namespace A056872.P6511270768185249844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25, 42] fun n a =>
  Int.tmod (A124468 (3 * n + 4)) (10 * a (n - 1))

end

end A056872.P6511270768185249844

/-!
# A056873: Numbers k such that k | p(k) - q(k) where p(k) = partition numbers (A000041) and q(k) = partition numbers into distinct parts (A000009).

The programs for A056873, there is no canonical definition to state claims against.
-/

/-! ## A056873.P13604931520435264219

`A039004(A232459(n+1))+A037075(n+1)`
-/

namespace A056873.P13604931520435264219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (A232459 (n + 1)).toNat + A037075 (n + 1)

end

end A056873.P13604931520435264219

/-!
# A056874: Primes of form x^2+xy+3y^2, discriminant -11.

The programs for A056874, there is no canonical definition to state claims against.
-/

/-! ## A056874.P3457492344135283759

`p?[A341785(n+1)]`
-/

namespace A056874.P3457492344135283759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056874.P3457492344135283759

/-! ## A056874.P1876626532553420293

`∩[A000040(n+1), A341785(n+1)]`
-/

namespace A056874.P1876626532553420293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056874.P1876626532553420293

/-! ## A056874.P4770457996478827884

`∩[A006005(n+1), A341785(n+1)]`
-/

namespace A056874.P4770457996478827884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056874.P4770457996478827884

/-! ## A056874.P6740446290811536185

`∩[A033946(n+1), A341785(n+1)]`
-/

namespace A056874.P6740446290811536185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056874.P6740446290811536185

/-! ## A056874.P17548422695285697948

`∩[A053813(n+1), A341785(n+1)]`
-/

namespace A056874.P17548422695285697948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056874.P17548422695285697948

/-! ## A056874.P2699399742230219406

`∩[A055977(n+1), A341785(n+1)]`
-/

namespace A056874.P2699399742230219406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056874.P2699399742230219406

/-! ## A056874.P1067149751032404729

`∩[A341785(n+1), A260442(n)]`
-/

namespace A056874.P1067149751032404729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056874.P1067149751032404729

/-! ## A056874.P1134883132854998433

`∩[A084111(n+1), A341785(n+1)]`
-/

namespace A056874.P1134883132854998433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056874.P1134883132854998433

/-! ## A056874.P13853392798562979754

`filter[A341785(n+1), A008966(#)]`
-/

namespace A056874.P13853392798562979754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A056874.P13853392798562979754

/-! ## A056874.P12601637502079863849

`filter[A341785(n+1), A010051(#)]`
-/

namespace A056874.P12601637502079863849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A056874.P12601637502079863849

/-! ## A056874.P4143329337576867095

`filter[A341785(n+1), A066829(#)]`
-/

namespace A056874.P4143329337576867095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A056874.P4143329337576867095

/-! ## A056874.P2460508232409675863

`∩[A117285(n+1), A341785(n+1)]`
-/

namespace A056874.P2460508232409675863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056874.P2460508232409675863

/-! ## A056874.P285184131583166467

`∩[A235050(n+1), A341785(n+1)]`
-/

namespace A056874.P285184131583166467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056874.P285184131583166467

/-! ## A056874.P14510866183217196599

`filter[A341785(n+1), A257531(#)]`
-/

namespace A056874.P14510866183217196599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A056874.P14510866183217196599

/-! ## A056874.P9777961975936533263

`filter[A341785(n+1), A049240(#)]`
-/

namespace A056874.P9777961975936533263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A056874.P9777961975936533263

/-! ## A056874.P13915046152944253410

`filter[A341785(n+1), A099104(#)]`
-/

namespace A056874.P13915046152944253410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A056874.P13915046152944253410

/-! ## A056874.P14745071917536616535

`filter[A341785(n+1), A174897(#)]`
-/

namespace A056874.P14745071917536616535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A056874.P14745071917536616535

/-! ## A056874.P13212762044204393957

`filter[A341785(n+1), A181183(#)]`
-/

namespace A056874.P13212762044204393957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A056874.P13212762044204393957

/-! ## A056874.P4640741121666568562

`filter[A341785(n+1), A252233(#)]`
-/

namespace A056874.P4640741121666568562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A056874.P4640741121666568562

/-! ## A056874.P9781529991119554812

`filter[A341785(n+1), A262684(#)]`
-/

namespace A056874.P9781529991119554812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A056874.P9781529991119554812

/-!
# A056875: Generated by sieving the natural numbers: keep the smallest remaining number k and take out its k-th successor l as well as the l-th successor m of l, the m-th successor of m and so on. Then start again from the next remaining number.

The programs for A056875, there is no canonical definition to state claims against.
-/

/-! ## A056875.P7226769181010660182

`comp[A232054(n+1)-1]+1`
-/

namespace A056875.P7226769181010660182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232054 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A056875.P7226769181010660182

/-! ## A056875.P10678889847384495695

`eq[char[A232054(n+1)], A000007(n)]`
-/

namespace A056875.P10678889847384495695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232054 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056875.P10678889847384495695

/-! ## A056875.P2814972949418238682

`eq[char[A232054(n+1)], A000038(n)]`
-/

namespace A056875.P2814972949418238682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232054 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056875.P2814972949418238682

/-! ## A056875.P14144061242038053575

`eq[A254667(n+1)-(n+1), char[A232054(n+1)]]`
-/

namespace A056875.P14144061242038053575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (n + 1) - (n + 1 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232054 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A056875.P14144061242038053575

/-! ## A056875.P8943157632379066390

`eq[char[A232054(n+1)], A048298(2*n+1)]`
-/

namespace A056875.P8943157632379066390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232054 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056875.P8943157632379066390

/-! ## A056875.P14961705502039759791

`eq[char[A232054(n+1)], A061397(2*(n+1))]`
-/

namespace A056875.P14961705502039759791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232054 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A056875.P14961705502039759791

/-!
# A056876: Number of permutations (p_1, ..., p_n) of {1,...,n} that are "balanced" in the sense that the sum of k*p_k equals the sum of (n+1-k)*p_k; equivalently, the expected value of k*p_k is (expected value of k) times (expected value of p_k), assuming the uniform distribution.

The programs for A056876, there is no canonical definition to state claims against.
-/

/-! ## A056876.P3814376329577861871

`A144027(A333766(n)+A076836(n+1))`
-/

namespace A056876.P3814376329577861871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (A333766 n + A076836 (n + 1)).toNat

end

end A056876.P3814376329577861871

/-!
# A056877: Number of polyominoes with n cells, symmetric about two orthogonal axes.

The programs for A056877, there is no canonical definition to state claims against.
-/

/-! ## A056877.P6844855805980255114

`A343562(n+1)-(A142886(n+1)+A006746(n+1))`
-/

namespace A056877.P6844855805980255114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343562 (n + 1) - (A142886 (n + 1) + A006746 (n + 1))

end

end A056877.P6844855805980255114

/-!
# A056878: Number of polyominoes with n cells, symmetric about diagonal 2.

The programs for A056878, there is no canonical definition to state claims against.
-/

/-! ## A056878.P5420785397022128102

`A351160(gcd(n+1, ceil(n/2)))+A351159(n+1)`
-/

namespace A056878.P5420785397022128102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351160 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉) + A351159 (n + 1)

end

end A056878.P5420785397022128102

/-! ## A056878.P16680187767793960286

`A351160(A152271(n))+A351159(n+1)`
-/

namespace A056878.P16680187767793960286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351160 (A152271 n).toNat + A351159 (n + 1)

end

end A056878.P16680187767793960286

/-! ## A056878.P14278364227354329021

`A030227(n+1)-(A343562(n+1)+A006748(n+1))`
-/

namespace A056878.P14278364227354329021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) - (A343562 (n + 1) + A006748 (n + 1))

end

end A056878.P14278364227354329021

/-!
# A056879: Number of n-celled axially symmetric polyominoes without holes.

The programs for A056879, there is no canonical definition to state claims against.
-/

/-! ## A056879.P1038307666121312342

`A006746(n+1)-A307598(A000032(n))`
-/

namespace A056879.P1038307666121312342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006746 (n + 1) - A307598 (A000032 n).toNat

end

end A056879.P1038307666121312342

/-! ## A056879.P4627947186496393529

`A006746(n+1)-A278801(A324088(n+1))`
-/

namespace A056879.P4627947186496393529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006746 (n + 1) - A278801 (A324088 (n + 1)).toNat

end

end A056879.P4627947186496393529

/-! ## A056879.P17195291726289774462

`A174231(A047171(n))`
-/

namespace A056879.P17195291726289774462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A047171 n).toNat

end

end A056879.P17195291726289774462

/-! ## A056879.P6385949720673465418

`A354374(A007477(n))`
-/

namespace A056879.P6385949720673465418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354374 (A007477 n).toNat

end

end A056879.P6385949720673465418

/-! ## A056879.P9064017757250080438

`∑[A283183(A020129(n))]`
-/

namespace A056879.P9064017757250080438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (A020129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056879.P9064017757250080438

/-!
# A056883: Number of n-celled rotationally symmetric polyominoes without holes.

The programs for A056883, there is no canonical definition to state claims against.
-/

/-! ## A056883.P6304802600118261027

`A006747(n+1)-A102683(A033995(n))`
-/

namespace A056883.P6304802600118261027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006747 (n + 1) - A102683 (A033995 n).toNat

end

end A056883.P6304802600118261027

/-! ## A056883.P6159777797707921250

`A006747(n+1)-A102681(A061993(n))`
-/

namespace A056883.P6159777797707921250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006747 (n + 1) - A102681 (A061993 n).toNat

end

end A056883.P6159777797707921250

/-! ## A056883.P11848543769201248948

`A006747(n+1)-A011691(A305753(n))`
-/

namespace A056883.P11848543769201248948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006747 (n + 1) - A011691 (A305753 n).toNat

end

end A056883.P11848543769201248948

/-! ## A056883.P11043109915291678996

`A006747(n+1)-A102683(A307466(n))`
-/

namespace A056883.P11043109915291678996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006747 (n + 1) - A102683 (A307466 n).toNat

end

end A056883.P11043109915291678996

/-! ## A056883.P918999909817978390

`A006747(n+1)-A248805(A174982(n))`
-/

namespace A056883.P918999909817978390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006747 (n + 1) - A248805 (A174982 n).toNat

end

end A056883.P918999909817978390

/-!
# A056884: Number of asymmetric n-celled polyominoes without holes.

The programs for A056884, there is no canonical definition to state claims against.
-/

/-! ## A056884.P8429824591571834583

`A006749(n+1)-∑[A243187(A137747(n)+1)]`
-/

namespace A056884.P8429824591571834583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243187 (A137747 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056884.P8429824591571834583

/-! ## A056884.P8629826463038464436

`A006749(n+1)-floor(A081158(n)/A174602(n+1))`
-/

namespace A056884.P8629826463038464436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) - ⌊(A081158 n : ℚ) / (A174602 (n + 1) : ℚ)⌋

end

end A056884.P8629826463038464436

/-! ## A056884.P5892488359414881395

`A006749(n+1)-A305151(C(n+1, 7))`
-/

namespace A056884.P5892488359414881395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) - A305151 (Nat.choose (n + 1) 7)

end

end A056884.P5892488359414881395

/-! ## A056884.P10075309015179512898

`A006749(n+1)-A335599(C(n+1, 7))`
-/

namespace A056884.P10075309015179512898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) - A335599 (Nat.choose (n + 1) 7)

end

end A056884.P10075309015179512898

/-! ## A056884.P924780234124422328

`A006749(n+1)-A326548(C(n, A062790(n+1)))`
-/

namespace A056884.P924780234124422328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) - A326548 (Nat.choose n (A062790 (n + 1)).toNat)

end

end A056884.P924780234124422328

/-!
# A056885: Triangle T(n,k) = number of minimal covers of an unlabeled n-set that cover k points of that set uniquely, k=0..n.

The programs for A056885, there is no canonical definition to state claims against.
-/

/-! ## A056885.P9753437714568357129

`A262905(A330140(n)^A136605(n+1))`
-/

namespace A056885.P9753437714568357129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262905 (SequenceMachineLib.roundAway ((A330140 n : ℚ) ^ (A136605 (n + 1) : ℤ))).toNat

end

end A056885.P9753437714568357129

/-! ## A056885.P7131119860430961306

`A056924(A156953(n))+Δ[A002024(n+1)]`
-/

namespace A056885.P7131119860430961306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A156953 n).toNat + (f1 (n + 1) - f1 n)

end

end A056885.P7131119860430961306

/-! ## A056885.P5360401341735011972

`A305052(A099375(n))+A056924(A156953(n))+1`
-/

namespace A056885.P5360401341735011972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305052 (A099375 n).toNat + (A056924 (A156953 n).toNat + 1)

end

end A056885.P5360401341735011972

/-! ## A056885.P5838440082741365686

`A004526(A330140(n))+A274537(n)^A343658(3*n+2)²`
-/

namespace A056885.P5838440082741365686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (A330140 n).toNat : ℚ) + (A274537 n : ℚ) ^ (A343658 (3 * n + 2) ^ 2 : ℤ)

end

end A056885.P5838440082741365686

/-! ## A056885.P18012240174011482131

`A115384(A330140(n)^A260340(n))`
-/

namespace A056885.P18012240174011482131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (SequenceMachineLib.roundAway ((A330140 n : ℚ) ^ (A260340 n : ℤ))).toNat

end

end A056885.P18012240174011482131

/-!
# A056891: a(n) = (s(n)-(n mod 2)) / n where s(n) is A006533.

The programs for A056891, there is no canonical definition to state claims against.
-/

/-! ## A056891.P13470813910594978018

`ceil((A006533(n+1)-1)/(n+1))`
-/

namespace A056891.P13470813910594978018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006533 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)⌉

end

end A056891.P13470813910594978018

/-! ## A056891.P12827732173012343765

`ceil((A007678(n+1)+n)/(n+1))`
-/

namespace A056891.P12827732173012343765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007678 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A056891.P12827732173012343765

/-! ## A056891.P17303005328107202398

`floor(A006533(n+1)/(A000007(n)+1+n))`
-/

namespace A056891.P17303005328107202398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006533 (n + 1) : ℚ) / (A000007 n + 1 + (n : ℤ) : ℚ)⌋

end

end A056891.P17303005328107202398

/-! ## A056891.P15672726283063940555

`round((A007678(n+1)+n)/A000027(n+1))`
-/

namespace A056891.P15672726283063940555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007678 (n + 1) + (n : ℤ) : ℚ) / (A000027 (n + 1) : ℚ))

end

end A056891.P15672726283063940555

/-! ## A056891.P2407485096267235063

`round(A006533(n+1)/(n+1))%A000330(2*n+1)`
-/

namespace A056891.P2407485096267235063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A006533 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000330 (2 * n + 1))

end

end A056891.P2407485096267235063

/-! ## A056891.P12109361540700082568

`round(A006533(n+1)/(n+1))%A007856(n+1)`
-/

namespace A056891.P12109361540700082568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A006533 (n + 1) : ℚ) / (n + 1 : ℚ))) (A007856 (n + 1))

end

end A056891.P12109361540700082568

/-!
# A056892: a(n) = square excess of the n-th prime.

The programs for A056892, the canonical program `A056892.P263178168060828477` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056892 has offset 1).

The definition of A056892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056892.P263178168060828477

`A053186(A000040(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A056892

/-- `A053186(A000040(n+1))` -/
def P263178168060828477.Spec : Prop :=
  ∀ n, P263178168060828477.a n = A056892 (n + 1)

theorem P263178168060828477.correct : P263178168060828477.Spec := by
  intro n
  simp only [A056892, Nat.add_sub_cancel]

end A056892

/-! ## A056892.P7570804345636498729

`A000040(n+1)-A065730(n+1)`
-/

namespace A056892.P7570804345636498729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065730 (n + 1)

end

end A056892.P7570804345636498729

namespace A056892

/-- `A000040(n+1)-A065730(n+1)` -/
def P7570804345636498729.Spec : Prop :=
  ∀ n, P7570804345636498729.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P9565535152720579221

`A000040(n+1)-A000006(n+1)²`
-/

namespace A056892.P9565535152720579221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000006 (n + 1) ^ 2

end

end A056892.P9565535152720579221

namespace A056892

/-- `A000040(n+1)-A000006(n+1)²` -/
def P9565535152720579221.Spec : Prop :=
  ∀ n, P9565535152720579221.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P10746923586762389398

`A000040(n+1)-∑[char[A038107(n)]]²`
-/

namespace A056892.P10746923586762389398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A056892.P10746923586762389398

namespace A056892

/-- `A000040(n+1)-∑[char[A038107(n)]]²` -/
def P10746923586762389398.Spec : Prop :=
  ∀ n, P10746923586762389398.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P13965022647907024707

`A006093(n+1)+1-A000006(n+1)²`
-/

namespace A056892.P13965022647907024707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A000006 (n + 1) ^ 2)

end

end A056892.P13965022647907024707

namespace A056892

/-- `A006093(n+1)+1-A000006(n+1)²` -/
def P13965022647907024707.Spec : Prop :=
  ∀ n, P13965022647907024707.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P16082070074723426578

`A008864(n+1)-(A000006(n+1)²+1)`
-/

namespace A056892.P16082070074723426578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A000006 (n + 1) ^ 2 + 1)

end

end A056892.P16082070074723426578

namespace A056892

/-- `A008864(n+1)-(A000006(n+1)²+1)` -/
def P16082070074723426578.Spec : Prop :=
  ∀ n, P16082070074723426578.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P3665669415562948778

`A000040(n+1)-(1-A104103(n+1))²`
-/

namespace A056892.P3665669415562948778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (1 - A104103 (n + 1)) ^ 2

end

end A056892.P3665669415562948778

namespace A056892

/-- `A000040(n+1)-(1-A104103(n+1))²` -/
def P3665669415562948778.Spec : Prop :=
  ∀ n, P3665669415562948778.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P4797146276270344898

`record[A006530(n+2)]-A000006(n+1)²`
-/

namespace A056892.P4797146276270344898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000006 (n + 1) ^ 2

end

end A056892.P4797146276270344898

namespace A056892

/-- `record[A006530(n+2)]-A000006(n+1)²` -/
def P4797146276270344898.Spec : Prop :=
  ∀ n, P4797146276270344898.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P18438864862416320004

`record[A020639(n+2)]-A000006(n+1)²`
-/

namespace A056892.P18438864862416320004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000006 (n + 1) ^ 2

end

end A056892.P18438864862416320004

namespace A056892

/-- `record[A020639(n+2)]-A000006(n+1)²` -/
def P18438864862416320004.Spec : Prop :=
  ∀ n, P18438864862416320004.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P7332804365421270249

`record[A000010(n+1)+1]-A000006(n+1)²`
-/

namespace A056892.P7332804365421270249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000006 (n + 1) ^ 2

end

end A056892.P7332804365421270249

namespace A056892

/-- `record[A000010(n+1)+1]-A000006(n+1)²` -/
def P7332804365421270249.Spec : Prop :=
  ∀ n, P7332804365421270249.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P17037350740998534717

`eq[1, A001222(n+1)]+1-A000006(n+1)²`
-/

namespace A056892.P17037350740998534717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A000006 (n + 1) ^ 2

end

end A056892.P17037350740998534717

namespace A056892

/-- `eq[1, A001222(n+1)]+1-A000006(n+1)²` -/
def P17037350740998534717.Spec : Prop :=
  ∀ n, P17037350740998534717.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P14905029926511669390

`eq[2, A000005(n+1)]+1-A000006(n+1)²`
-/

namespace A056892.P14905029926511669390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A000006 (n + 1) ^ 2

end

end A056892.P14905029926511669390

namespace A056892

/-- `eq[2, A000005(n+1)]+1-A000006(n+1)²` -/
def P14905029926511669390.Spec : Prop :=
  ∀ n, P14905029926511669390.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P8435934591291942974

`lt[n, A000010(n+2)]+2-A000006(n+1)²`
-/

namespace A056892.P8435934591291942974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 : ℤ) - A000006 (n + 1) ^ 2

end

end A056892.P8435934591291942974

namespace A056892

/-- `lt[n, A000010(n+2)]+2-A000006(n+1)²` -/
def P8435934591291942974.Spec : Prop :=
  ∀ n, P8435934591291942974.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P16537484280985293954

`A006530(lt[n, A006530(n+2)]+2)-A000006(n+1)²`
-/

namespace A056892.P16537484280985293954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2) - A000006 (n + 1) ^ 2

end

end A056892.P16537484280985293954

namespace A056892

/-- `A006530(lt[n, A006530(n+2)]+2)-A000006(n+1)²` -/
def P16537484280985293954.Spec : Prop :=
  ∀ n, P16537484280985293954.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P9768495792356756223

`A020639(lt[n, A020639(n+2)]+2)-A000006(n+1)²`
-/

namespace A056892.P9768495792356756223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2) - A000006 (n + 1) ^ 2

end

end A056892.P9768495792356756223

namespace A056892

/-- `A020639(lt[n, A020639(n+2)]+2)-A000006(n+1)²` -/
def P9768495792356756223.Spec : Prop :=
  ∀ n, P9768495792356756223.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P8227292650232964495

`A074294(A112045(n+1))`
-/

namespace A056892.P8227292650232964495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A112045 (n + 1)).toNat

end

end A056892.P8227292650232964495

namespace A056892

/-- `A074294(A112045(n+1))` -/
def P8227292650232964495.Spec : Prop :=
  ∀ n, P8227292650232964495.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P14011383965439056834

`A053186(p?[comp[n²]])`
-/

namespace A056892.P14011383965439056834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A056892.P14011383965439056834

namespace A056892

/-- `A053186(p?[comp[n²]])` -/
def P14011383965439056834.Spec : Prop :=
  ∀ n, P14011383965439056834.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P5411346778816061651

`A071797(A006005(n+1))`
-/

namespace A056892.P5411346778816061651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A006005 (n + 1)).toNat

end

end A056892.P5411346778816061651

namespace A056892

/-- `A071797(A006005(n+1))` -/
def P5411346778816061651.Spec : Prop :=
  ∀ n, P5411346778816061651.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P15368373697673985441

`A071797(A161847(n+1))`
-/

namespace A056892.P15368373697673985441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A161847 (n + 1)).toNat

end

end A056892.P15368373697673985441

namespace A056892

/-- `A071797(A161847(n+1))` -/
def P15368373697673985441.Spec : Prop :=
  ∀ n, P15368373697673985441.a n = A056892 (n + 1)

end A056892

/-! ## A056892.P2645292905785565280

`A053186(A008578(n+2))`
-/

namespace A056892.P2645292905785565280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A008578 (n + 2)).toNat

end

end A056892.P2645292905785565280

namespace A056892

/-- `A053186(A008578(n+2))` -/
def P2645292905785565280.Spec : Prop :=
  ∀ n, P2645292905785565280.a n = A056892 (n + 1)

end A056892

/-!
# A056893: Smallest prime with square excess of n.

The programs for A056893, there is no canonical definition to state claims against.
-/

/-! ## A056893.P7522486161766689797

`A056894(n+1)+1+n`
-/

namespace A056893.P7522486161766689797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056894 (n + 1) + 1 + (n : ℤ)

end

end A056893.P7522486161766689797

/-! ## A056893.P15596725328880399197

`A056895(n+1)²+1+n`
-/

namespace A056893.P15596725328880399197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056895 (n + 1) ^ 2 + 1 + (n : ℤ)

end

end A056893.P15596725328880399197

/-! ## A056893.P4163791700223493872

`A002522(A056895(n+1))+n`
-/

namespace A056893.P4163791700223493872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A056895 (n + 1)).toNat + (n : ℤ)

end

end A056893.P4163791700223493872

/-! ## A056893.P7944571158050241991

`A010000(A056895(abs(xor(n, -1))))+n-1`
-/

namespace A056893.P7944571158050241991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (A056895 |Int.xor (n : ℤ) (-1)|.toNat).toNat + ((n : ℤ) - 1)

end

end A056893.P7944571158050241991

/-! ## A056893.P9212394140088287379

`p?[A056894(A028310(n))+n]`
-/

namespace A056893.P9212394140088287379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056894 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056893.P9212394140088287379

/-! ## A056893.P7258804781199243676

`A020725(A056894(n+1)+n)`
-/

namespace A056893.P7258804781199243676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056894 (n + 1) + (n : ℤ)).toNat

end

end A056893.P7258804781199243676

/-! ## A056893.P14190153882831837482

`A034694(A056894(n+1)+n)`
-/

namespace A056893.P14190153882831837482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A056894 (n + 1) + (n : ℤ)).toNat

end

end A056893.P14190153882831837482

/-! ## A056893.P6002917790890325024

`A059843(A056894(n+1)+n)`
-/

namespace A056893.P6002917790890325024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A056894 (n + 1) + (n : ℤ)).toNat

end

end A056893.P6002917790890325024

/-! ## A056893.P6050779076152231734

`A074399(A056894(n+1)+n)`
-/

namespace A056893.P6050779076152231734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A056894 (n + 1) + (n : ℤ)).toNat

end

end A056893.P6050779076152231734

/-! ## A056893.P12509945900066657395

`A079228(A056894(n+1)+n)`
-/

namespace A056893.P12509945900066657395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (A056894 (n + 1) + (n : ℤ)).toNat

end

end A056893.P12509945900066657395

/-!
# A056894: If the smallest prime with a square excess of n is p then a(n)=p-n.

The programs for A056894, there is no canonical definition to state claims against.
-/

/-! ## A056894.P5655739773600321896

`A056895(n+1)²`
-/

namespace A056894.P5655739773600321896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056895 (n + 1) ^ 2

end

end A056894.P5655739773600321896

/-! ## A056894.P4974823730072147783

`A048760(A056893(n+1))`
-/

namespace A056894.P4974823730072147783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A056893 (n + 1)).toNat

end

end A056894.P4974823730072147783

/-! ## A056894.P13441493510215610886

`A056895(abs(xor(n, -1)))^2`
-/

namespace A056894.P13441493510215610886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056895 |Int.xor (n : ℤ) (-1)|.toNat ^ 2

end

end A056894.P13441493510215610886

/-! ## A056894.P14912801788332649917

`A056893(n+1)+A001478(n+1)`
-/

namespace A056894.P14912801788332649917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056893 (n + 1) + A001478 (n + 1)

end

end A056894.P14912801788332649917

/-! ## A056894.P6268130803247893669

`A056893(n+1)-A000027(n+1)`
-/

namespace A056894.P6268130803247893669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056893 (n + 1) - A000027 (n + 1)

end

end A056894.P6268130803247893669

/-! ## A056894.P2769472767521956252

`A056895(n+1)^A020639(2*(n+1))`
-/

namespace A056894.P2769472767521956252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056895 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A056894.P2769472767521956252

/-! ## A056894.P3688013341205905776

`A056895(n+1)^A000032(C(2, n+2))`
-/

namespace A056894.P3688013341205905776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056895 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ)

end

end A056894.P3688013341205905776

/-! ## A056894.P9453123686295278252

`A056895(n+1)^A000040(gcd(n, n+1))`
-/

namespace A056894.P9453123686295278252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056895 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A056894.P9453123686295278252

/-! ## A056894.P13856727412525079683

`A056893(n+1)+A056897(n)-A056896(n+1)`
-/

namespace A056894.P13856727412525079683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056893 (n + 1) + (A056897 n - A056896 (n + 1))

end

end A056894.P13856727412525079683

/-! ## A056894.P16518430144424228575

`A056893(n+1)+A068527(n+1)-A048761(n+1)`
-/

namespace A056894.P16518430144424228575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056893 (n + 1) + (A068527 (n + 1) - A048761 (n + 1))

end

end A056894.P16518430144424228575

/-! ## A056894.P10958019113249325693

`A004652(2*A056895(n+1))`
-/

namespace A056894.P10958019113249325693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A056895 (n + 1)).toNat

end

end A056894.P10958019113249325693

/-! ## A056894.P15787130436058941785

`A056895(n+1)^A001221(A001748(n+1))`
-/

namespace A056894.P15787130436058941785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056895 (n + 1) : ℚ) ^ (A001221 (A001748 (n + 1)).toNat : ℤ)

end

end A056894.P15787130436058941785

/-! ## A056894.P17160190764628407172

`A262690(A056893(n+1)-n)`
-/

namespace A056894.P17160190764628407172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262690 (A056893 (n + 1) - (n : ℤ)).toNat

end

end A056894.P17160190764628407172

/-! ## A056894.P10531779823362458449

`A048761(A056893(n+1)-(n+1))`
-/

namespace A056894.P10531779823362458449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A056893 (n + 1) - (n + 1 : ℤ)).toNat

end

end A056894.P10531779823362458449

/-! ## A056894.P8612292355460653006

`A074695(A056893(n+1)-(n+1))`
-/

namespace A056894.P8612292355460653006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074695 (A056893 (n + 1) - (n + 1 : ℤ)).toNat

end

end A056894.P8612292355460653006

/-! ## A056894.P10085698650582261533

`A074695(A000196(A056893(n+1))²)`
-/

namespace A056894.P10085698650582261533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074695 (A000196 (A056893 (n + 1)).toNat ^ 2).toNat

end

end A056894.P10085698650582261533

/-! ## A056894.P11741773510883963429

`A262690(A000196(A056893(n+1))²)`
-/

namespace A056894.P11741773510883963429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262690 (A000196 (A056893 (n + 1)).toNat ^ 2).toNat

end

end A056894.P11741773510883963429

/-! ## A056894.P1622623305033471549

`A048760(A056895(n+1)*A056895(n+1))`
-/

namespace A056894.P1622623305033471549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A056895 (n + 1) * A056895 (n + 1)).toNat

end

end A056894.P1622623305033471549

/-! ## A056894.P11494738788790902110

`A056895(n+1)^A000040(A007318(∑[n]))`
-/

namespace A056894.P11494738788790902110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056895 (n + 1) : ℚ) ^ (A000040 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A056894.P11494738788790902110

/-!
# A056895: If the smallest prime with a square excess of n is p then a(n)^2 = p - n.

The programs for A056895, there is no canonical definition to state claims against.
-/

/-! ## A056895.P14178633796908194569

`sqrt(A056894(n+1))`
-/

namespace A056895.P14178633796908194569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056894 (n + 1) : ℝ)

end

end A056895.P14178633796908194569

/-! ## A056895.P14434917099503277111

`A000196(A056893(n+1))`
-/

namespace A056895.P14434917099503277111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056893 (n + 1)).toNat

end

end A056895.P14434917099503277111

/-! ## A056895.P11771823629321466139

`A000027(root(A056894(n+1), 2))`
-/

namespace A056895.P11771823629321466139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A056894 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A056895.P11771823629321466139

/-! ## A056895.P2235477527567984350

`A056894(A000027(n+1))^(1/2)`
-/

namespace A056895.P2235477527567984350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056894 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A056895.P2235477527567984350

/-! ## A056895.P11358354603936210167

`root(A056894(n+1), A020639(2*(n+1)))`
-/

namespace A056895.P11358354603936210167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056894 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A056895.P11358354603936210167

/-! ## A056895.P9481752758860069231

`A056894(n+1)^(1/A000032(C(n, n²)))`
-/

namespace A056895.P9481752758860069231
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056894 (n + 1) : ℝ) ^ (1 / (A000032 (Nat.choose n (n ^ 2)) : ℚ) : ℝ)

end

end A056895.P9481752758860069231

/-! ## A056895.P12649136772944185167

`root(A056894(n+1), 2)^A000045(n²%(n+1))`
-/

namespace A056895.P12649136772944185167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A056894 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ (A000045 (n ^ 2 % (n + 1)) : ℤ)

end

end A056895.P12649136772944185167

/-! ## A056895.P16124010823373951057

`root(A056894(n+1), 2)%A000041(n+2)`
-/

namespace A056895.P16124010823373951057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A056894 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000041 (n + 2))

end

end A056895.P16124010823373951057

/-! ## A056895.P12545708166996388441

`A262689(A056893(n+1)-n)`
-/

namespace A056895.P12545708166996388441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A056893 (n + 1) - (n : ℤ)).toNat

end

end A056895.P12545708166996388441

/-! ## A056895.P4503807155414724918

`A000196(A056894(n+1)+1)`
-/

namespace A056895.P4503807155414724918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056894 (n + 1) + 1).toNat

end

end A056895.P4503807155414724918

/-! ## A056895.P16937833438512269468

`A075119(A056894(n+1)+1)`
-/

namespace A056895.P16937833438512269468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A056894 (n + 1) + 1).toNat

end

end A056895.P16937833438512269468

/-! ## A056895.P14623926214764906986

`A256243(A056894(n+1)+1)`
-/

namespace A056895.P14623926214764906986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256243 (A056894 (n + 1) + 1).toNat

end

end A056895.P14623926214764906986

/-! ## A056895.P692832942197407543

`A067815(A056894(2*n+1-n))`
-/

namespace A056895.P692832942197407543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 (A056894 (2 * n + 1 - n)).toNat

end

end A056895.P692832942197407543

/-! ## A056895.P2541945204237762201

`A068527(A056893(n+1)-n)/2`
-/

namespace A056895.P2541945204237762201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068527 (A056893 (n + 1) - (n : ℤ)).toNat : ℚ) / 2

end

end A056895.P2541945204237762201

/-! ## A056895.P12967401213356945170

`A073890(2*A056894(n+1)-A056894(n+1))`
-/

namespace A056895.P12967401213356945170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073890 (2 * A056894 (n + 1) - A056894 (n + 1)).toNat

end

end A056895.P12967401213356945170

/-! ## A056895.P12255118988126791155

`A002260(2*A056894(n+1))`
-/

namespace A056895.P12255118988126791155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A056894 (n + 1)).toNat

end

end A056895.P12255118988126791155

/-! ## A056895.P15367255207861538472

`A073890(A056894(A073890((n+1)²)))`
-/

namespace A056895.P15367255207861538472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073890 (A056894 (A073890 ((n + 1) ^ 2)).toNat).toNat

end

end A056895.P15367255207861538472

/-! ## A056895.P6202397738941979649

`A073890(A056894(A067815(∑[2*n+1])))`
-/

namespace A056895.P6202397738941979649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073890 (A056894 (A067815 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A056895.P6202397738941979649

/-!
# A056896: Smallest prime which can be written as k^2 + n for k >= 0.

The programs for A056896, there is no canonical definition to state claims against.
-/

/-! ## A056896.P5230436662865144245

`A056897(n)+1+n`
-/

namespace A056896.P5230436662865144245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056897 n + 1 + (n : ℤ)

end

end A056896.P5230436662865144245

/-! ## A056896.P2351888900382491066

`n+1+A056898(n+1)²`
-/

namespace A056896.P2351888900382491066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A056898 (n + 1) ^ 2

end

end A056896.P2351888900382491066

/-! ## A056896.P5749584598435804620

`A059843(A014684(n+1))`
-/

namespace A056896.P5749584598435804620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A014684 (n + 1)).toNat

end

end A056896.P5749584598435804620

/-! ## A056896.P15547872351954396698

`A002522(A056898(n+1))+n`
-/

namespace A056896.P15547872351954396698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A056898 (n + 1)).toNat + (n : ℤ)

end

end A056896.P15547872351954396698

/-! ## A056896.P2480364995883956817

`A059843(A005171(n+1)+n)`
-/

namespace A056896.P2480364995883956817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A005171 (n + 1) + (n : ℤ)).toNat

end

end A056896.P2480364995883956817

/-! ## A056896.P16127664524789836595

`A005408(n)-(n-A056897(n))`
-/

namespace A056896.P16127664524789836595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - A056897 n)

end

end A056896.P16127664524789836595

/-! ## A056896.P11357242838909304872

`Δ[A000290(n)]-(n-A056897(n))`
-/

namespace A056896.P11357242838909304872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - A056897 n)

end

end A056896.P11357242838909304872

/-! ## A056896.P173826166067736501

`A020639(Δ[n²]-(n-A056897(n)))`
-/

namespace A056896.P173826166067736501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - A056897 n)).toNat

end

end A056896.P173826166067736501

/-! ## A056896.P1397825356020329578

`A000027(n+1)+A056898(n+1)^2`
-/

namespace A056896.P1397825356020329578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + A056898 (n + 1) ^ 2

end

end A056896.P1397825356020329578

/-! ## A056896.P13073907643744876600

`A006530(A056898(n+1)^2+n+1)`
-/

namespace A056896.P13073907643744876600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056898 (n + 1) ^ 2 + (n + 1 : ℤ)).toNat

end

end A056896.P13073907643744876600

/-! ## A056896.P16776738750715165418

`A059843(n+1-char[A000040(n+1)-1])`
-/

namespace A056896.P16776738750715165418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (n + 1 - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A056896.P16776738750715165418

/-! ## A056896.P7327500812791202844

`A056898(n+1)^A020639(2*(n+1))+n+1`
-/

namespace A056896.P7327500812791202844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056898 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) + (n + 1 : ℚ)

end

end A056896.P7327500812791202844

/-! ## A056896.P11450649295362113310

`A059843(A113638(n+1))`
-/

namespace A056896.P11450649295362113310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A113638 (n + 1)).toNat

end

end A056896.P11450649295362113310

/-! ## A056896.P3071750995808512680

`A020725(A056897(n)+n)`
-/

namespace A056896.P3071750995808512680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056897 n + (n : ℤ)).toNat

end

end A056896.P3071750995808512680

/-! ## A056896.P15627942460923590334

`A059843(A056897(n)+n)`
-/

namespace A056896.P15627942460923590334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A056897 n + (n : ℤ)).toNat

end

end A056896.P15627942460923590334

/-! ## A056896.P9017949944319438308

`A014963(A056897(n)-xor(n, -1))`
-/

namespace A056896.P9017949944319438308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A056897 n - Int.xor (n : ℤ) (-1)).toNat

end

end A056896.P9017949944319438308

/-! ## A056896.P6597510043915355764

`A014963(Δ[n²]-(n-A056897(n)))`
-/

namespace A056896.P6597510043915355764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - A056897 n)).toNat

end

end A056896.P6597510043915355764

/-!
# A056897: Smallest square where a(n)+n is prime.

The programs for A056897, there is no canonical definition to state claims against.
-/

/-! ## A056897.P8641188886993947371

`A056898(n+1)²`
-/

namespace A056897.P8641188886993947371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (n + 1) ^ 2

end

end A056897.P8641188886993947371

/-! ## A056897.P15456109220508311631

`A056896(n+1)-(n+1)`
-/

namespace A056897.P15456109220508311631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056896 (n + 1) - (n + 1 : ℤ)

end

end A056897.P15456109220508311631

/-! ## A056897.P5607355962093805453

`A000010(A056896(n+1))-n`
-/

namespace A056897.P5607355962093805453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A056896 (n + 1)).toNat - (n : ℤ)

end

end A056897.P5607355962093805453

/-! ## A056897.P18221640532874910772

`A000290(A056898(n+1)%(n+3))`
-/

namespace A056897.P18221640532874910772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A056898 (n + 1)) (n + 3 : ℤ)).toNat

end

end A056897.P18221640532874910772

/-! ## A056897.P2964120908138638373

`lcm(A056898(n+1), A059844(n+1))`
-/

namespace A056897.P2964120908138638373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056898 (n + 1)) (A059844 (n + 1))

end

end A056897.P2964120908138638373

/-! ## A056897.P14945866476262912367

`(A005171(n+1)*A085099(n+1))²`
-/

namespace A056897.P14945866476262912367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005171 (n + 1) * A085099 (n + 1)) ^ 2

end

end A056897.P14945866476262912367

/-! ## A056897.P4632469503563897697

`((1-A010051(n+1))*A085099(n+1))²`
-/

namespace A056897.P4632469503563897697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A010051 (n + 1)) * A085099 (n + 1)) ^ 2

end

end A056897.P4632469503563897697

/-! ## A056897.P3169342253828476299

`A056898(n+1)^A000032(floor(1/(n+1)))`
-/

namespace A056897.P3169342253828476299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056898 (n + 1) : ℚ) ^ (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A056897.P3169342253828476299

/-! ## A056897.P5386486607240832834

`A000010(A059843(A014684(n+1)))-n`
-/

namespace A056897.P5386486607240832834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059843 (A014684 (n + 1)).toNat).toNat - (n : ℤ)

end

end A056897.P5386486607240832834

/-! ## A056897.P4872000182087294920

`A056898(A000027(n+1))*A056898(n+1)`
-/

namespace A056897.P4872000182087294920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (A000027 (n + 1)).toNat * A056898 (n + 1)

end

end A056897.P4872000182087294920

/-! ## A056897.P6029635786556741505

`A000290(2*A056898(n+1)-A056898(n+1))`
-/

namespace A056897.P6029635786556741505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A056898 (n + 1) - A056898 (n + 1)).toNat

end

end A056897.P6029635786556741505

/-! ## A056897.P5364326299572264226

`(A159075(n)+A056898(n+1))*A056898(n+1)`
-/

namespace A056897.P5364326299572264226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159075 n + A056898 (n + 1)) * A056898 (n + 1)

end

end A056897.P5364326299572264226

/-! ## A056897.P15527459275612589636

`(A056898(A000040(n+1))+A056898(n+1))*A056898(n+1)`
-/

namespace A056897.P15527459275612589636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056898 (A000040 (n + 1)).toNat + A056898 (n + 1)) * A056898 (n + 1)

end

end A056897.P15527459275612589636

/-! ## A056897.P14872625620276428637

`A048760(A056898(n+1)*A056898(n+1))`
-/

namespace A056897.P14872625620276428637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A056898 (n + 1) * A056898 (n + 1)).toNat

end

end A056897.P14872625620276428637

/-! ## A056897.P13895525889441925930

`A110654(2*A056898(n+1)*A056898(n+1))`
-/

namespace A056897.P13895525889441925930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A056898 (n + 1) * A056898 (n + 1)).toNat

end

end A056897.P13895525889441925930

/-!
# A056898: a(n) = smallest number m such that m^2+n is prime.

The programs for A056898, there is no canonical definition to state claims against.
-/

/-! ## A056898.P14404341377328520084

`sqrt(A056897(n))`
-/

namespace A056898.P14404341377328520084
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056897 n : ℝ)

end

end A056898.P14404341377328520084

/-! ## A056898.P16396386163283468916

`sqrt(A056896(n+1)-(n+1))`
-/

namespace A056898.P16396386163283468916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056896 (n + 1) - (n + 1 : ℤ) : ℝ)

end

end A056898.P16396386163283468916

/-! ## A056898.P7975110798130897389

`A056897(n)/A085099(n+1)`
-/

namespace A056898.P7975110798130897389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056897 n : ℚ) / (A085099 (n + 1) : ℚ)

end

end A056898.P7975110798130897389

/-! ## A056898.P2020602379790067334

`A005171(n+1)*A085099(n+1)`
-/

namespace A056898.P2020602379790067334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A085099 (n + 1)

end

end A056898.P2020602379790067334

/-! ## A056898.P892953457055234620

`(1-A010051(n+1))*A085099(n+1)`
-/

namespace A056898.P892953457055234620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A085099 (n + 1)

end

end A056898.P892953457055234620

/-! ## A056898.P14732613431537389435

`A056926(A056897(n)+A000007(n))`
-/

namespace A056898.P14732613431537389435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A056897 n + A000007 n).toNat

end

end A056898.P14732613431537389435

/-! ## A056898.P8917722140895972864

`A056926(or(A000007(n), A056897(n)))`
-/

namespace A056898.P8917722140895972864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.lor (A000007 n) (A056897 n)).toNat

end

end A056898.P8917722140895972864

/-! ## A056898.P6470541483318203929

`A000194(A056896(n+1)-(n+1))`
-/

namespace A056898.P6470541483318203929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A056896 (n + 1) - (n + 1 : ℤ)).toNat

end

end A056898.P6470541483318203929

/-! ## A056898.P7774357530774161064

`A000196(A056896(n+1)-(n+1))`
-/

namespace A056898.P7774357530774161064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056896 (n + 1) - (n + 1 : ℤ)).toNat

end

end A056898.P7774357530774161064

/-! ## A056898.P7150250094320448858

`A085099(n+1)%A259175(n+1)`
-/

namespace A056898.P7150250094320448858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085099 (n + 1)) (A259175 (n + 1))

end

end A056898.P7150250094320448858

/-!
# A056899: Primes of the form k^2 + 2.

The programs for A056899, there is no canonical definition to state claims against.
-/

/-! ## A056899.P17834976378863807039

`A067201(n+1)²+2`
-/

namespace A056899.P17834976378863807039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1) ^ 2 + 2

end

end A056899.P17834976378863807039

/-! ## A056899.P16240978190423878069

`A392249(n+1)+1`
-/

namespace A056899.P16240978190423878069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392249 (n + 1) + 1

end

end A056899.P16240978190423878069

/-! ## A056899.P14925828613991800802

`∪[A129388(n+1), A182343(n+1)]`
-/

namespace A056899.P14925828613991800802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056899.P14925828613991800802

/-! ## A056899.P17804795604233104441

`eq[1, A355449(n)]²+2`
-/

namespace A056899.P17804795604233104441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 2

end

end A056899.P17804795604233104441

/-! ## A056899.P885237833939313573

`eq[2, A300817(n)]²+2`
-/

namespace A056899.P885237833939313573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 2

end

end A056899.P885237833939313573

/-! ## A056899.P7606194852813559301

`A059100(A067201(n+1))`
-/

namespace A056899.P7606194852813559301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (A067201 (n + 1)).toNat

end

end A056899.P7606194852813559301

/-! ## A056899.P9791729267458803347

`A059100(eq[2, A300817(n)])`
-/

namespace A056899.P9791729267458803347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056899.P9791729267458803347

/-! ## A056899.P6946237069815822502

`∩[A245388(n+1), A059100(n)]`
-/

namespace A056899.P6946237069815822502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056899.P6946237069815822502

/-! ## A056899.P6872829098229750795

`A379351(A067201(2*n+1-n))`
-/

namespace A056899.P6872829098229750795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379351 (A067201 (2 * n + 1 - n)).toNat

end

end A056899.P6872829098229750795

/-! ## A056899.P2853144839969000538

`A059100(eq[A059100(n), A379351(n)])`
-/

namespace A056899.P2853144839969000538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A056899.P2853144839969000538

/-! ## A056899.P5495858969174523899

`A087475(A067201(n+1))-gcd(2, A188158(n+1))`
-/

namespace A056899.P5495858969174523899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A067201 (n + 1)).toNat - (Int.gcd 2 (A188158 (n + 1)) : ℤ)

end

end A056899.P5495858969174523899

/-! ## A056899.P18086491527068671293

`A087475(A067201(n+1))-gcd(16, A257049(n+1))`
-/

namespace A056899.P18086491527068671293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A067201 (n + 1)).toNat - (Int.gcd 16 (A257049 (n + 1)) : ℤ)

end

end A056899.P18086491527068671293

/-! ## A056899.P11079828805616507449

`A087475(A067201(n+1))+A253639(n+1)-A085554(n+1)`
-/

namespace A056899.P11079828805616507449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A067201 (n + 1)).toNat + (A253639 (n + 1) - A085554 (n + 1))

end

end A056899.P11079828805616507449

/-! ## A056899.P12025805240836355521

`A102762(A067201(n+1)+2)`
-/

namespace A056899.P12025805240836355521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102762 (A067201 (n + 1) + 2).toNat

end

end A056899.P12025805240836355521

/-! ## A056899.P18015872082844852409

`∩[A230584(n+1), A245388(n+1)]`
-/

namespace A056899.P18015872082844852409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056899.P18015872082844852409

/-! ## A056899.P7509162516628712385

`∩[A395558(n+1), A059100(n)]`
-/

namespace A056899.P7509162516628712385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056899.P7509162516628712385

/-! ## A056899.P4242980866434010885

`∩[A245388(n+1), A395558(n+1)]`
-/

namespace A056899.P4242980866434010885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056899.P4242980866434010885

/-! ## A056899.P2072477761145639728

`∩[A230584(n+1), A395558(n+1)]`
-/

namespace A056899.P2072477761145639728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056899.P2072477761145639728

/-! ## A056899.P11892567463673484344

`∩[A290743(n+1), A395558(n+1)]`
-/

namespace A056899.P11892567463673484344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056899.P11892567463673484344

