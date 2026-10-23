import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A370800: Expansion of (1/x) * Series_Reversion( x/(x+1/(1-x+x^3)) ).

The programs for A370800, there is no canonical definition to state claims against.
-/

/-! ## A370800.P9633429627091197130

`A080605(A377109(n))-n`
-/

namespace A370800.P9633429627091197130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A377109 n).toNat - (n : ℤ)

end

end A370800.P9633429627091197130

/-! ## A370800.P3142626026679216418

`A080605(A005827(n))-n²`
-/

namespace A370800.P3142626026679216418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A005827 n).toNat - (n ^ 2 : ℤ)

end

end A370800.P3142626026679216418

/-! ## A370800.P1722403727189842158

`A351564(A116834(2*(n+2)))+A116847(n+1)`
-/

namespace A370800.P1722403727189842158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351564 (A116834 (2 * (n + 2))).toNat + A116847 (n + 1)

end

end A370800.P1722403727189842158

/-!
# A370801: Expansion of (1/x) * Series_Reversion( x/(x+1/(1-x+x^4)) ).

The programs for A370801, there is no canonical definition to state claims against.
-/

/-! ## A370801.P7913397212278932184

`A008619(A006134(n)-A151762(n))`
-/

namespace A370801.P7913397212278932184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006134 n - A151762 n).toNat

end

end A370801.P7913397212278932184

/-! ## A370801.P14202487513122447748

`A008619(A006134(n)-A077394(n+1))`
-/

namespace A370801.P14202487513122447748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006134 n - A077394 (n + 1)).toNat

end

end A370801.P14202487513122447748

/-! ## A370801.P12235315608851592257

`A024718(n)-A076020(A179554(n+1))`
-/

namespace A370801.P12235315608851592257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - A076020 (A179554 (n + 1)).toNat

end

end A370801.P12235315608851592257

/-! ## A370801.P13724291023995154790

`A024718(n)-A351357(A185645(n+1))`
-/

namespace A370801.P13724291023995154790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - A351357 (A185645 (n + 1)).toNat

end

end A370801.P13724291023995154790

/-!
# A370802: Positive integers with as many prime factors (A001222) as distinct divisors of prime indices (A370820).

The programs for A370802, there is no canonical definition to state claims against.
-/

/-! ## A370802.P9500775602439873480

`∩[A371169(n+1), A371170(n+1)]`
-/

namespace A370802.P9500775602439873480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370802.P9500775602439873480

/-! ## A370802.P2035981773794346552

`eq[A001222(n+1), A370820(n+1)]+1`
-/

namespace A370802.P2035981773794346552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A370802.P2035981773794346552

/-!
# A370803: Number of integer partitions of n such that more than one set can be obtained by choosing a different divisor of each part.

The programs for A370803, there is no canonical definition to state claims against.
-/

/-! ## A370803.P7903725467669765356

`A239312(n)-A370595(n)`
-/

namespace A370803.P7903725467669765356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n - A370595 n

end

end A370803.P7903725467669765356

/-! ## A370803.P16291696950959562106

`A000041(n)-(A370595(n)+A370320(n))`
-/

namespace A370803.P16291696950959562106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A370595 n + A370320 n)

end

end A370803.P16291696950959562106

/-! ## A370803.P2374791807284684545

`∑[A002865(n)]-A370320(n)-A370595(n)`
-/

namespace A370803.P2374791807284684545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A370320 n - A370595 n

end

end A370803.P2374791807284684545

/-! ## A370803.P1902416040330513675

`A000009(n)-A091492(A003459(n+1))`
-/

namespace A370803.P1902416040330513675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A091492 (A003459 (n + 1)).toNat

end

end A370803.P1902416040330513675

/-! ## A370803.P3871275054659707554

`A326357(n)-A327932(A064043(3*n+1))`
-/

namespace A370803.P3871275054659707554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326357 n - A327932 (A064043 (3 * n + 1)).toNat

end

end A370803.P3871275054659707554

/-!
# A370804: Number of non-condensed integer partitions of n into parts > 1.

The programs for A370804, there is no canonical definition to state claims against.
-/

/-! ## A370804.P14278131545090557811

`A002865(n)-A370805(n)`
-/

namespace A370804.P14278131545090557811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A370805 n

end

end A370804.P14278131545090557811

/-!
# A370805: Number of condensed integer partitions of n into parts > 1.

The programs for A370805, there is no canonical definition to state claims against.
-/

/-! ## A370805.P11217860421339448797

`A002865(n)-A370804(n)`
-/

namespace A370805.P11217860421339448797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A370804 n

end

end A370805.P11217860421339448797

/-! ## A370805.P4652073902251360132

`A292746(∑[n])-A370804(n)`
-/

namespace A370805.P4652073902251360132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (∑ j ∈ Finset.range (n + 1), f1 j) - A370804 n

end

end A370805.P4652073902251360132

/-! ## A370805.P16422813396811857901

`A085811(n+3)-A370804(n)`
-/

namespace A370805.P16422813396811857901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A370804 n

end

end A370805.P16422813396811857901

/-! ## A370805.P1898684220335846908

`A181923(n+1)+A048766(A088808(n))`
-/

namespace A370805.P1898684220335846908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181923 (n + 1) + A048766 (A088808 n).toNat

end

end A370805.P1898684220335846908

/-! ## A370805.P10727098663515610607

`A023894(n)-A190224(A024450(n+1))`
-/

namespace A370805.P10727098663515610607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n - A190224 (A024450 (n + 1)).toNat

end

end A370805.P10727098663515610607

/-!
# A370806: Number of non-strict condensed integer partitions of n.

The programs for A370806, there is no canonical definition to state claims against.
-/

/-! ## A370806.P8122803277750031846

`A239312(n)-A000009(n)`
-/

namespace A370806.P8122803277750031846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n - A000009 n

end

end A370806.P8122803277750031846

/-! ## A370806.P9194845299259271647

`A239312(n)-∑[A087897(n)]`
-/

namespace A370806.P9194845299259271647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370806.P9194845299259271647

/-! ## A370806.P4540502090463636532

`A239312(n)-(A111133(n)+1)`
-/

namespace A370806.P4540502090463636532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n - (A111133 n + 1)

end

end A370806.P4540502090463636532

/-! ## A370806.P3179701304918126660

`A239312(n)-A035457(2*n)`
-/

namespace A370806.P3179701304918126660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n - A035457 (2 * n)

end

end A370806.P3179701304918126660

/-! ## A370806.P7349722278379832316

`A239312(n)-A219347(A001844(n))`
-/

namespace A370806.P7349722278379832316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n - A219347 (A001844 n).toNat

end

end A370806.P7349722278379832316

/-! ## A370806.P9405731265344453143

`A239312(n)-(A317239(n)+A316996(n))`
-/

namespace A370806.P9405731265344453143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n - (A317239 n + A316996 n)

end

end A370806.P9405731265344453143

/-!
# A370807: Number of integer partitions of n into parts > 1 such that it is not possible to choose a different prime factor of each part.

The programs for A370807, there is no canonical definition to state claims against.
-/

/-! ## A370807.P12492679781487412378

`A002865(n)-A370592(n)`
-/

namespace A370807.P12492679781487412378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A370592 n

end

end A370807.P12492679781487412378

/-! ## A370807.P4662869009463787371

`A268189(A000217(n+1))-A370592(n)`
-/

namespace A370807.P4662869009463787371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268189 (A000217 (n + 1)).toNat - A370592 n

end

end A370807.P4662869009463787371

/-! ## A370807.P2766015448717394052

`A002865(n)-(A133041(n)-n-A370593(n))`
-/

namespace A370807.P2766015448717394052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - (A133041 n - (n : ℤ) - A370593 n)

end

end A370807.P2766015448717394052

/-! ## A370807.P10425904982778302524

`A370593(n)%A000688(A011782(n))`
-/

namespace A370807.P10425904982778302524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370593 n) (A000688 (A011782 n).toNat)

end

end A370807.P10425904982778302524

/-! ## A370807.P17592368108787012606

`A188585(A000079(n))-A370592(n)`
-/

namespace A370807.P17592368108787012606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (A000079 n).toNat - A370592 n

end

end A370807.P17592368108787012606

/-!
# A370809: Greatest number of multisets that can be obtained by choosing a prime factor of each part of an integer partition of n.

The programs for A370809, there is no canonical definition to state claims against.
-/

/-! ## A370809.P15709671338025993390

`A103221(n)-A008683(A236523(n+1))`
-/

namespace A370809.P15709671338025993390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A008683 (A236523 (n + 1)).toNat

end

end A370809.P15709671338025993390

/-! ## A370809.P9472732737932047028

`A103221(lt[A008288(3*n), A343067(2*n+3)])`
-/

namespace A370809.P9472732737932047028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343067 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370809.P9472732737932047028

/-! ## A370809.P6165951286252200107

`A103221(n)+A051731(A235017(n+1))`
-/

namespace A370809.P6165951286252200107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + A051731 (A235017 (n + 1)).toNat

end

end A370809.P6165951286252200107

/-! ## A370809.P10333447667301682188

`A103221(lt[A000978(n+1), A106302(n+1)])`
-/

namespace A370809.P10333447667301682188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370809.P10333447667301682188

/-! ## A370809.P12726263651108089562

`A297035(A147675(n+1))`
-/

namespace A370809.P12726263651108089562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297035 (A147675 (n + 1)).toNat

end

end A370809.P12726263651108089562

/-!
# A370810: Numbers n such that only one set can be obtained by choosing a different divisor of each prime index of n.

The programs for A370810, there is no canonical definition to state claims against.
-/

/-! ## A370810.P14808839872241240843

`∩[A368110(n+1), A370802(n+1)]`
-/

namespace A370810.P14808839872241240843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370810.P14808839872241240843

/-! ## A370810.P15542350599891774486

`∩[A368110(n+1), A371169(n+1)]`
-/

namespace A370810.P15542350599891774486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370810.P15542350599891774486

/-! ## A370810.P1260836095075465798

`A370802(record[A222254(n+1)%(A179388(n+1)+n)])`
-/

namespace A370810.P1260836095075465798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222254 (n + 1)) (A179388 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A370810.P1260836095075465798

/-!
# A370811: Numbers such that more than one set can be obtained by choosing a different divisor of each prime index.

The programs for A370811, there is no canonical definition to state claims against.
-/

/-! ## A370811.P13822337894241919297

`filter[A371168(n+1), A105597(#)]`
-/

namespace A370811.P13822337894241919297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A370811.P13822337894241919297

/-! ## A370811.P9038692376388570805

`filter[A371168(n+1), A166486(#)]`
-/

namespace A370811.P9038692376388570805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A370811.P9038692376388570805

/-! ## A370811.P1235116134371009569

`filter[A371168(n+1), A341625(#)]`
-/

namespace A370811.P1235116134371009569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A370811.P1235116134371009569

/-! ## A370811.P5895094940154222932

`filter[A371168(n+1), A359550(#)]`
-/

namespace A370811.P5895094940154222932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A370811.P5895094940154222932

/-! ## A370811.P14249093708039619973

`filter[A371168(n+1), A359832(#)]`
-/

namespace A370811.P14249093708039619973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A370811.P14249093708039619973

/-! ## A370811.P18215405483908483348

`filter[A371168(n+1), A371087(#)]`
-/

namespace A370811.P18215405483908483348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A370811.P18215405483908483348

/-! ## A370811.P7240934156224278467

`filter[A371168(n+1), A384667(#)]`
-/

namespace A370811.P7240934156224278467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A370811.P7240934156224278467

/-! ## A370811.P5144294504866983486

`A371168(lt[A174344(2*n+3), A353245(n+1)])`
-/

namespace A370811.P5144294504866983486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370811.P5144294504866983486

/-! ## A370811.P15316440872918030852

`∩[A371168(n+1), A382913(n+1)]`
-/

namespace A370811.P15316440872918030852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370811.P15316440872918030852

/-!
# A370812: a(1) = 1; for n >= 2, a(n) = noz(a(n-1) + 2*n - 1), where noz(n) = A004719(n).

The programs for A370812, there is no canonical definition to state claims against.
-/

/-! ## A370812.P11933223239063185297

`A004719(a(n-1)+2*n+1)` with `a(0)=1`
-/

namespace A370812.P11933223239063185297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004719 (a (n - 1) + (2 * n : ℤ) + 1).toNat

end

end A370812.P11933223239063185297

/-! ## A370812.P922647768936302208

`A373169(A052905(n)+4)`
-/

namespace A370812.P922647768936302208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A052905 n + 4).toNat

end

end A370812.P922647768936302208

/-! ## A370812.P4340303657000476090

`A373169(A055999(n)+5)`
-/

namespace A370812.P4340303657000476090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A055999 n + 5).toNat

end

end A370812.P4340303657000476090

/-! ## A370812.P953768660314037373

`A373169(A034856(n+2)+1)`
-/

namespace A370812.P953768660314037373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A034856 (n + 2) + 1).toNat

end

end A370812.P953768660314037373

/-! ## A370812.P17381571779009563618

`A373169(A253145(n+2)-1)`
-/

namespace A370812.P17381571779009563618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A253145 (n + 2) - 1).toNat

end

end A370812.P17381571779009563618

/-! ## A370812.P4048723873058118219

`A373169(A000217(n+3)-1)`
-/

namespace A370812.P4048723873058118219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A000217 (n + 3) - 1).toNat

end

end A370812.P4048723873058118219

/-! ## A370812.P6406840871932403030

`A373169(A024206(n+1)+A024206(n+4))`
-/

namespace A370812.P6406840871932403030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A024206 (n + 1) + A024206 (n + 4)).toNat

end

end A370812.P6406840871932403030

/-! ## A370812.P11574430455550710981

`A373169(lt[A103327(n), A003056(n)])`
-/

namespace A370812.P11574430455550710981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370812.P11574430455550710981

/-!
# A370813: Number of non-condensed integer factorizations of n into unordered factors > 1.

The programs for A370813, there is no canonical definition to state claims against.
-/

/-! ## A370813.P16767233218351648237

`A347706(n+1)+floor(∑{e}[n+1, 1-1/#])`
-/

namespace A370813.P16767233218351648237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (n + 1) + ⌊∑ p ∈ Nat.primeFactors (f1 n), (1 - 1 / (Nat.factorization (f1 n) p : ℚ))⌋

end

end A370813.P16767233218351648237

/-! ## A370813.P1523601622206785545

`A353625(n+1)+A347706(n+1)`
-/

namespace A370813.P1523601622206785545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353625 (n + 1) + A347706 (n + 1)

end

end A370813.P1523601622206785545

/-! ## A370813.P9248099309240661826

`A175684(n+1)%A326976(n+1)`
-/

namespace A370813.P9248099309240661826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175684 (n + 1)) (A326976 (n + 1))

end

end A370813.P9248099309240661826

/-! ## A370813.P14581905626958704288

`A363225(∑{e}[n+1, #]%A046643(n+1))`
-/

namespace A370813.P14581905626958704288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363225 (Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A046643 (n + 1))).toNat

end

end A370813.P14581905626958704288

/-! ## A370813.P8237854080201416026

`A019361(n+1)%A239312(∑{e}[n+1, #%#²])`
-/

namespace A370813.P8237854080201416026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019361 (n + 1)) (A239312 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.factorization (f1 n) p ^ 2))

end

end A370813.P8237854080201416026

/-! ## A370813.P14805969793786096930

`A023506(A000005(n+1))%(2^∑{e}[n+1, #-1])`
-/

namespace A370813.P14805969793786096930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023506 (A000005 (n + 1)).toNat) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ)))

end

end A370813.P14805969793786096930

/-! ## A370813.P1465692965955251614

`A347706(n+1)+A079979((n+1)/∏{p}[n+1, #])`
-/

namespace A370813.P1465692965955251614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (n + 1) + A079979 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A370813.P1465692965955251614

/-! ## A370813.P9087987993680178084

`A178786(A002445(n)%A162512(n+1))`
-/

namespace A370813.P9087987993680178084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (Int.tmod (A002445 n) (A162512 (n + 1))).toNat

end

end A370813.P9087987993680178084

/-! ## A370813.P11143536868294213292

`A347706(n+1)+A243055(A003557(n+1))`
-/

namespace A370813.P11143536868294213292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (n + 1) + A243055 (A003557 (n + 1)).toNat

end

end A370813.P11143536868294213292

/-! ## A370813.P1049208095994381355

`A001055(n+1)-A370814(A046523(n+1))`
-/

namespace A370813.P1049208095994381355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A370814 (A046523 (n + 1)).toNat

end

end A370813.P1049208095994381355

/-!
# A370814: Number of condensed integer factorizations of n into unordered factors > 1.

The programs for A370814, there is no canonical definition to state claims against.
-/

/-! ## A370814.P13489517002836412932

`A244017(A034836(n+1))`
-/

namespace A370814.P13489517002836412932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244017 (A034836 (n + 1)).toNat

end

end A370814.P13489517002836412932

/-! ## A370814.P2860314381133057915

`A065306(A347050(n+1))`
-/

namespace A370814.P2860314381133057915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065306 (A347050 (n + 1)).toNat

end

end A370814.P2860314381133057915

/-! ## A370814.P5118599854288283551

`A001055(n+1)-A370813(n+1)`
-/

namespace A370814.P5118599854288283551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A370813 (n + 1)

end

end A370814.P5118599854288283551

/-! ## A370814.P2483814988840510540

`A347050(n+1)-A353625(n+1)`
-/

namespace A370814.P2483814988840510540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (n + 1) - A353625 (n + 1)

end

end A370814.P2483814988840510540

/-! ## A370814.P11729145903263204115

`A292886(n+1)-A028422(A096826(n+1))`
-/

namespace A370814.P11729145903263204115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292886 (n + 1) - A028422 (A096826 (n + 1)).toNat

end

end A370814.P11729145903263204115

/-! ## A370814.P11510191136930018482

`A347050(n+1)-A363808(A292589(n+1))`
-/

namespace A370814.P11510191136930018482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (n + 1) - A363808 (A292589 (n + 1)).toNat

end

end A370814.P11510191136930018482

/-!
# A370815: Number of integer factorizations of n into unordered factors > 1, such that only one set can be obtained by choosing a different divisor of each factor.

The programs for A370815, there is no canonical definition to state claims against.
-/

/-! ## A370815.P1617192822933729539

`A115357(∏{e}[n+1, C(#+2, 2)]-A370813(n+1))`
-/

namespace A370815.P1617192822933729539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115357 (((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 : ℕ) : ℤ) - A370813 (n + 1)).toNat

end

end A370815.P1617192822933729539

/-! ## A370815.P4089750636861260116

`A058716(A292582(n+1)%A016777(n))`
-/

namespace A370815.P4089750636861260116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 (Int.tmod (A292582 (n + 1)) (A016777 n)).toNat

end

end A370815.P4089750636861260116

/-! ## A370815.P9303972361195384548

`A188431(A000005(n+1)-A378214(n+1))`
-/

namespace A370815.P9303972361195384548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188431 (A000005 (n + 1) - A378214 (n + 1)).toNat

end

end A370815.P9303972361195384548

/-! ## A370815.P4909411681177935357

`A196563(A062069(n+1)*A323022(n+1))`
-/

namespace A370815.P4909411681177935357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A062069 (n + 1) * A323022 (n + 1)).toNat

end

end A370815.P4909411681177935357

/-! ## A370815.P9559748066820041995

`A354911(A000688(n+1)*A346213(n+1))`
-/

namespace A370815.P9559748066820041995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354911 (A000688 (n + 1) * A346213 (n + 1)).toNat

end

end A370815.P9559748066820041995

/-! ## A370815.P16329980643365235026

`A279061(and(A000005(n+1), A181591(n+1)))`
-/

namespace A370815.P16329980643365235026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (Int.land (A000005 (n + 1)) (A181591 (n + 1))).toNat

end

end A370815.P16329980643365235026

/-! ## A370815.P12617632523082053593

`A164704(A067824(n+1))`
-/

namespace A370815.P12617632523082053593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164704 (A067824 (n + 1)).toNat

end

end A370815.P12617632523082053593

/-! ## A370815.P17853456711012680732

`A025334(A339341(n+1))%2`
-/

namespace A370815.P17853456711012680732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025334 (A339341 (n + 1)).toNat) 2

end

end A370815.P17853456711012680732

/-! ## A370815.P13233841962525152969

`A059841(A000040(n+1)*A062069(n+1))`
-/

namespace A370815.P13233841962525152969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A000040 (n + 1) * A062069 (n + 1)).toNat

end

end A370815.P13233841962525152969

/-! ## A370815.P15145521878048847158

`A336169(A000005(n+1))^A324242(n+1)`
-/

namespace A370815.P15145521878048847158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336169 (A000005 (n + 1)).toNat : ℚ) ^ (A324242 (n + 1) : ℤ)

end

end A370815.P15145521878048847158

/-!
# A370816: Greatest number of multisets that can be obtained by choosing a divisor of each factor in an integer factorization of n into unordered factors > 1.

The programs for A370816, there is no canonical definition to state claims against.
-/

/-! ## A370816.P18436203875465115928

`A373503(A242649(n+1))`
-/

namespace A370816.P18436203875465115928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373503 (A242649 (n + 1)).toNat

end

end A370816.P18436203875465115928

/-! ## A370816.P10169633358680110109

`or(A001878(A293663(n+2)), A181819(n+1))`
-/

namespace A370816.P10169633358680110109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001878 (A293663 (n + 2)).toNat) (A181819 (n + 1))

end

end A370816.P10169633358680110109

/-! ## A370816.P16299651214376504476

`A000015(A181819(n+1)%A070009(n+1))`
-/

namespace A370816.P16299651214376504476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (Int.tmod (A181819 (n + 1)) (A070009 (n + 1))).toNat

end

end A370816.P16299651214376504476

/-! ## A370816.P1329144250546058957

`A338650(A046523(n+1)*A063904(3*(n+1)))`
-/

namespace A370816.P1329144250546058957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338650 (A046523 (n + 1) * A063904 (3 * (n + 1))).toNat

end

end A370816.P1329144250546058957

/-! ## A370816.P13086867522428941656

`A118164(A300831(n+1))+∏{e}[n+1, A095313(#)]`
-/

namespace A370816.P13086867522428941656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118164 (A300831 (n + 1)).toNat + ∏ p ∈ Nat.primeFactors (f1 n), A095313 (Nat.factorization (f1 n) p)

end

end A370816.P13086867522428941656

/-!
# A370818: Number of sets of nonempty subsets of {1..n} with only one possible way to choose a set of different vertices of each edge.

The programs for A370818, there is no canonical definition to state claims against.
-/

/-! ## A370818.P1505207334582162834

`A370638(2^n-1)`
-/

namespace A370818.P1505207334582162834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370638 (2 ^ n - 1)

end

end A370818.P1505207334582162834

/-! ## A370818.P17394767102096701895

`A370638(2^n)/2`
-/

namespace A370818.P17394767102096701895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370638 (2 ^ n) : ℚ) / 2

end

end A370818.P17394767102096701895

/-!
# A370819: Number of subsets of {1..n-1} whose cardinality is one less than the length of the binary expansion of n; a(0) = 0.

The programs for A370819, the canonical program `A370819.P7119138988108707849` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370819 has offset 0).

The definition of A370819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370819.P7119138988108707849

`A097805(A070939(n)+∑[n])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A370819

/-- `A097805(A070939(n)+∑[n])` -/
def P7119138988108707849.Spec : Prop :=
  ∀ n, P7119138988108707849.a n = A370819 n

theorem P7119138988108707849.correct : P7119138988108707849.Spec := by
  intro n
  simp only [A370819]

end A370819

/-! ## A370819.P7796000858645290817

`A097805(A000217(n+1)-ceil(log2(n+1)))`
-/

namespace A370819.P7796000858645290817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A000217 (n + 1) - ⌈Real.logb 2 (n + 1 : ℝ)⌉).toNat

end

end A370819.P7796000858645290817

namespace A370819

/-- `A097805(A000217(n+1)-ceil(log2(n+1)))` -/
def P7796000858645290817.Spec : Prop :=
  ∀ n, P7796000858645290817.a n = A370819 n

end A370819

/-! ## A370819.P5841769073300807225

`A378181(A282164(n+2))`
-/

namespace A370819.P5841769073300807225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378181 (A282164 (n + 2)).toNat

end

end A370819.P5841769073300807225

namespace A370819

/-- `A378181(A282164(n+2))` -/
def P5841769073300807225.Spec : Prop :=
  ∀ n, P5841769073300807225.a n = A370819 n

end A370819

/-! ## A370819.P7395856286003342880

`C(A367582(A167614(n+1)), A008621(n))`
-/

namespace A370819.P7395856286003342880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A367582 (A167614 (n + 1)).toNat).toNat (A008621 n).toNat

end

end A370819.P7395856286003342880

namespace A370819

/-- `C(A367582(A167614(n+1)), A008621(n))` -/
def P7395856286003342880.Spec : Prop :=
  ∀ n, (P7395856286003342880.a n : ℤ) = A370819 n

end A370819

/-! ## A370819.P13632416385145628048

`C(A062153(A052952(2*n)), A000700(n+4))`
-/

namespace A370819.P13632416385145628048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062153 (A052952 (2 * n)).toNat).toNat (A000700 (n + 4)).toNat

end

end A370819.P13632416385145628048

namespace A370819

/-- `C(A062153(A052952(2*n)), A000700(n+4))` -/
def P13632416385145628048.Spec : Prop :=
  ∀ n, (P13632416385145628048.a n : ℤ) = A370819 n

end A370819

/-!
# A370820: Number of positive integers that are a divisor of some prime index of n.

The programs for A370820, there is no canonical definition to state claims against.
-/

/-! ## A370820.P9793460477802436533

`∑{p}[A371285(n+1), A001221(#)]`
-/

namespace A370820.P9793460477802436533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A370820.P9793460477802436533

/-! ## A370820.P12166244857392292612

`∑{p}[A371285(n+1), A001222(#)]`
-/

namespace A370820.P12166244857392292612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A370820.P12166244857392292612

/-! ## A370820.P14950489967078308702

`∑{p}[A371285(n+1), A003415(#)]`
-/

namespace A370820.P14950489967078308702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A370820.P14950489967078308702

/-! ## A370820.P3891427258528188387

`∑{p}[A371285(n+1), A003557(#)]`
-/

namespace A370820.P3891427258528188387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003557 p

end

end A370820.P3891427258528188387

/-! ## A370820.P11706302942633188984

`∑{p}[A371285(n+1), A008966(#)]`
-/

namespace A370820.P11706302942633188984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008966 p

end

end A370820.P11706302942633188984

/-! ## A370820.P782976202197751504

`∑{p}[A371285(n+1), A069897(#)]`
-/

namespace A370820.P782976202197751504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069897 p

end

end A370820.P782976202197751504

/-! ## A370820.P16442269515608477849

`∑{p}[A371285(n+1), A327499(#)]`
-/

namespace A370820.P16442269515608477849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A327499 p

end

end A370820.P16442269515608477849

/-! ## A370820.P14946226187239695170

`∑{p}[A371285(n+1), A335521(#)]`
-/

namespace A370820.P14946226187239695170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A335521 p

end

end A370820.P14946226187239695170

/-! ## A370820.P911913634480088548

`∑{e}[A371285(n+1), A058365(#)]`
-/

namespace A370820.P911913634480088548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A058365 (Nat.factorization (f1 n).natAbs p)

end

end A370820.P911913634480088548

/-!
# A370821: Number of minimal deterministic Mealy automata with n states outputting ternary strings.

The programs for A370821, there is no canonical definition to state claims against.
-/

/-! ## A370821.P9218569681469216946

`A138554(A218181(3*(n+1)))+A086348(n)`
-/

namespace A370821.P9218569681469216946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A218181 (3 * (n + 1))).toNat + A086348 n

end

end A370821.P9218569681469216946

/-!
# A370822: Lexicographically earliest sequence of positive integers such that all equal terms appear at mutually coprime indices.

The programs for A370822, there is no canonical definition to state claims against.
-/

/-! ## A370822.P628365119443207143

`1+A279119(n+1)`
-/

namespace A370822.P628365119443207143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A279119 (n + 1)

end

end A370822.P628365119443207143

/-! ## A370822.P14201738076744515153

`A295887(A300833(n+1)%A194134(n+5))`
-/

namespace A370822.P14201738076744515153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295887 (Int.tmod (A300833 (n + 1)) (A194134 (n + 5))).toNat

end

end A370822.P14201738076744515153

/-! ## A370822.P18417841337691146182

`A305897(n+1)-A023532(A096925(2*(n+1)))`
-/

namespace A370822.P18417841337691146182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (n + 1) - A023532 (A096925 (2 * (n + 1))).toNat

end

end A370822.P18417841337691146182

/-! ## A370822.P17474686703752509865

`A249738(n+1)+A152822(A118630(n+1))`
-/

namespace A370822.P17474686703752509865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (n + 1) + A152822 (A118630 (n + 1)).toNat

end

end A370822.P17474686703752509865

/-! ## A370822.P12044163186110205491

`A249738(n+1)+A146160(A146132(n+1))`
-/

namespace A370822.P12044163186110205491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (n + 1) + A146160 (A146132 (n + 1)).toNat

end

end A370822.P12044163186110205491

/-!
# A370823: a(n) is the numerator of the ratio of winning probabilities P_A/P_B of winning in a 2-player game with a ratio of odds for A and B in a single round of 2:1. To win the game it is necessary to win n rounds in a row.

The programs for A370823, there is no canonical definition to state claims against.
-/

/-! ## A370823.P8999868097496772540

`A000079(n+1)*A355933(A000079(n))`
-/

namespace A370823.P8999868097496772540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A355933 (A000079 n).toNat

end

end A370823.P8999868097496772540

/-! ## A370823.P14658296313601713599

`2*A341526(2^n)`
-/

namespace A370823.P14658296313601713599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341526 (2 ^ n)

end

end A370823.P14658296313601713599

/-! ## A370823.P14564130495894672800

`2*A342664(3^n)`
-/

namespace A370823.P14564130495894672800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342664 (3 ^ n)

end

end A370823.P14564130495894672800

/-!
# A370824: a(n) are the denominators corresponding to A370823(n).

The programs for A370824, there is no canonical definition to state claims against.
-/

/-! ## A370824.P9530622356430443688

`A276737(A001047(n+1))`
-/

namespace A370824.P9530622356430443688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276737 (A001047 (n + 1)).toNat

end

end A370824.P9530622356430443688

/-! ## A370824.P3130422043417882923

`A276737(A056182(n+1)/2)`
-/

namespace A370824.P3130422043417882923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276737 (SequenceMachineLib.roundAway ((A056182 (n + 1) : ℚ) / 2)).toNat

end

end A370824.P3130422043417882923

/-! ## A370824.P12297453503749645995

`A276737(A056182(n+1))`
-/

namespace A370824.P12297453503749645995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276737 (A056182 (n + 1)).toNat

end

end A370824.P12297453503749645995

/-!
# A370825: a(n) is the numerator of the ratio of winning probabilities in a game similar to A370823, but with a draw and single round odds A:B:draw of 3:2:1.

The programs for A370825, there is no canonical definition to state claims against.
-/

/-! ## A370825.P1577560523080190536

`A355933(3*2^n)`
-/

namespace A370825.P1577560523080190536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355933 (3 * 2 ^ n)

end

end A370825.P1577560523080190536

/-!
# A370826: a(n) are the denominators corresponding to A370825(n).

The programs for A370826, there is no canonical definition to state claims against.
-/

/-! ## A370826.P11638537484600781131

`A370825(n+1)/(3/4*(3^(n+1)-1)/(2^(n+1)-1))`
-/

namespace A370826.P11638537484600781131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370825 (n + 1) : ℚ) / ((3 : ℚ) / 4 * (((3 ^ (n + 1) : ℤ) - 1 : ℚ) / ((2 ^ (n + 1) : ℤ) - 1 : ℚ)))

end

end A370826.P11638537484600781131

/-! ## A370826.P1156732984432627572

`A355934(3*2^n)`
-/

namespace A370826.P1156732984432627572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355934 (3 * 2 ^ n)

end

end A370826.P1156732984432627572

/-! ## A370826.P8111309395261331105

`gcd(A221255(A282658(n)), A282658(n+1))`
-/

namespace A370826.P8111309395261331105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221255 (A282658 n).toNat) (A282658 (n + 1))

end

end A370826.P8111309395261331105

/-!
# A370827: a(n) is the numerator of the ratio of winning probabilities P_A/P_B of winning in a 2-player game with a ratio of odds for A and B in a single round of 3:2. To win the game it is necessary to win n rounds in a row.

The programs for A370827, there is no canonical definition to state claims against.
-/

/-! ## A370827.P2265394973239601940

`A389467(6^(n+1))`
-/

namespace A370827.P2265394973239601940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389467 (6 ^ (n + 1))

end

end A370827.P2265394973239601940

/-!
# A370828: a(n) are the denominators corresponding to A370827(n).

The programs for A370828, there is no canonical definition to state claims against.
-/

/-! ## A370828.P4394207360162826019

`A245092(A016170(n))+A016186(n)`
-/

namespace A370828.P4394207360162826019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A016170 n).toNat + A016186 n

end

end A370828.P4394207360162826019

/-!
# A370829: Minimum number of (-1)'s needed to write n, using +, *, ^ and parentheses, disallowing noninteger intermediate values.

The programs for A370829, there is no canonical definition to state claims against.
-/

/-! ## A370829.P11360827840022418006

`A228298(A228286(n+2))%A228303(2*n+3)`
-/

namespace A370829.P11360827840022418006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228298 (A228286 (n + 2)).toNat) (A228303 (2 * n + 3))

end

end A370829.P11360827840022418006

/-! ## A370829.P982255014033574812

`A143104(A000079(n))+A005245(n+1)`
-/

namespace A370829.P982255014033574812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143104 (A000079 n).toNat + A005245 (n + 1)

end

end A370829.P982255014033574812

/-! ## A370829.P7379274339131329608

`A143104(A131577(n+1))+A005245(n+1)`
-/

namespace A370829.P7379274339131329608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143104 (A131577 (n + 1)).toNat + A005245 (n + 1)

end

end A370829.P7379274339131329608

/-! ## A370829.P11248388284345664197

`A248972(A242351(n+1))+A000720(n+1)`
-/

namespace A370829.P11248388284345664197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248972 (A242351 (n + 1)).toNat + A000720 (n + 1)

end

end A370829.P11248388284345664197

/-! ## A370829.P10582277384719956876

`A082844(A245937(3*(n+1)))+A000720(n+1)`
-/

namespace A370829.P10582277384719956876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082844 (A245937 (3 * (n + 1))).toNat + A000720 (n + 1)

end

end A370829.P10582277384719956876

/-!
# A370830: Primes p such that the polynomial x^4-x^3-x^2-x-1 is irreducible mod p.

The programs for A370830, there is no canonical definition to state claims against.
-/

/-! ## A370830.P731045537086434042

`A106308(lt[A122863(n+3), A087110(3*(n+1))])`
-/

namespace A370830.P731045537086434042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122863 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087110 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106308 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370830.P731045537086434042

/-! ## A370830.P14664201104986461680

`filter[A106308(n+1), A181632(#)]`
-/

namespace A370830.P14664201104986461680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181632 (f1 j).toNat = 1) n)

end

end A370830.P14664201104986461680

/-! ## A370830.P9664218296497067625

`filter[A106308(n+1), A275694(#)]`
-/

namespace A370830.P9664218296497067625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A275694 (f1 j).toNat = 1) n)

end

end A370830.P9664218296497067625

/-!
# A370831: Alternating sum of composites.

The programs for A370831, the canonical program `A370831.P12708300684849236063` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370831 has offset 1).

The definition of A370831 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370831.P12708300684849236063

`A002808(n+1)-a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A370831

/-- `A002808(n+1)-a(n-1)` -/
def P12708300684849236063.Spec : Prop :=
  ∀ n, P12708300684849236063.a n = A370831 (n + 1)

theorem P12708300684849236063.correct : P12708300684849236063.Spec := by
  intro n
  simp only [A370831, Nat.add_sub_cancel]

end A370831

/-! ## A370831.P3515464248635868717

`Δ[A053767(n)]-a(n-1)` with `a(0)=4`
-/

namespace A370831.P3515464248635868717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A370831.P3515464248635868717

namespace A370831

/-- `Δ[A053767(n)]-a(n-1)` -/
def P3515464248635868717.Spec : Prop :=
  ∀ n, P3515464248635868717.a n = A370831 (n + 1)

end A370831

/-! ## A370831.P11958566004816435701

`A056653(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A370831.P11958566004816435701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A056653 (n + 1) - a (n - 1)

end

end A370831.P11958566004816435701

namespace A370831

/-- `A056653(n+1)-a(n-1)` -/
def P11958566004816435701.Spec : Prop :=
  ∀ n, P11958566004816435701.a n = A370831 (n + 1)

end A370831

/-! ## A370831.P3686598010257649417

`A018252(n+2)-a(n-1)` with `a(0)=4`
-/

namespace A370831.P3686598010257649417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A018252 (n + 2) - a (n - 1)

end

end A370831.P3686598010257649417

namespace A370831

/-- `A018252(n+2)-a(n-1)` -/
def P3686598010257649417.Spec : Prop :=
  ∀ n, P3686598010257649417.a n = A370831 (n + 1)

end A370831

/-! ## A370831.P14486649393282529549

`A065090(n+3)-a(n-1)` with `a(0)=4`
-/

namespace A370831.P14486649393282529549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A065090 (n + 3) - a (n - 1)

end

end A370831.P14486649393282529549

namespace A370831

/-- `A065090(n+3)-a(n-1)` -/
def P14486649393282529549.Spec : Prop :=
  ∀ n, P14486649393282529549.a n = A370831 (n + 1)

end A370831

/-! ## A370831.P17341920626500582251

`A141468(n+3)-a(n-1)` with `a(0)=4`
-/

namespace A370831.P17341920626500582251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A141468 (n + 3) - a (n - 1)

end

end A370831.P17341920626500582251

namespace A370831

/-- `A141468(n+3)-a(n-1)` -/
def P17341920626500582251.Spec : Prop :=
  ∀ n, P17341920626500582251.a n = A370831 (n + 1)

end A370831

/-! ## A370831.P12609646557179351637

`lt[0, A107393(n)]-a(n-1)` with `a(0)=4`
-/

namespace A370831.P12609646557179351637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - a (n - 1)

end

end A370831.P12609646557179351637

namespace A370831

/-- `lt[0, A107393(n)]-a(n-1)` -/
def P12609646557179351637.Spec : Prop :=
  ∀ n, P12609646557179351637.a n = A370831 (n + 1)

end A370831

/-!
# A370832: Triangle read by rows: T(n,k) gives the number of parking functions of size n with k lucky cars. 0 <= k <= n.

The programs for A370832, there is no canonical definition to state claims against.
-/

/-! ## A370832.P2112571518456482145

`A102705(A088996(n))`
-/

namespace A370832.P2112571518456482145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A088996 n).toNat

end

end A370832.P2112571518456482145

/-! ## A370832.P15272014285276781477

`and(record[A174713(n)], A286892(n))`
-/

namespace A370832.P15272014285276781477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A286892 n)

end

end A370832.P15272014285276781477

/-! ## A370832.P15638783910708020215

`A265607(n)-A373954(A063865(n))`
-/

namespace A370832.P15638783910708020215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265607 n - A373954 (A063865 n).toNat

end

end A370832.P15638783910708020215

/-! ## A370832.P7791099700247941931

`lcm(A057820(A290383(n)), A084938(n))`
-/

namespace A370832.P7791099700247941931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057820 (A290383 n).toNat) (A084938 n)

end

end A370832.P7791099700247941931

/-! ## A370832.P14239904475719085298

`A097805(n)*A104890(A137907(n+1))`
-/

namespace A370832.P14239904475719085298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A104890 (A137907 (n + 1)).toNat

end

end A370832.P14239904475719085298

/-!
# A370833: a(n) is the greatest prime dividing the n-th cubefree number, for n >= 2; a(1)=1.

The programs for A370833, the canonical program `A370833.P4333784619671070186` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370833 has offset 1).

The definition of A370833 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370833.P4333784619671070186

`A006530(A004709(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A370833

/-- `A006530(A004709(n+1))` -/
def P4333784619671070186.Spec : Prop :=
  ∀ n, P4333784619671070186.a n = A370833 (n + 1)

theorem P4333784619671070186.correct : P4333784619671070186.Spec := by
  intro n
  simp only [A370833, Nat.add_sub_cancel]

end A370833

/-! ## A370833.P10871366830700190485

`A006530(A277803(n+1))`
-/

namespace A370833.P10871366830700190485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A277803 (n + 1)).toNat

end

end A370833.P10871366830700190485

namespace A370833

/-- `A006530(A277803(n+1))` -/
def P10871366830700190485.Spec : Prop :=
  ∀ n, P10871366830700190485.a n = A370833 (n + 1)

end A370833

/-! ## A370833.P18361967528907844813

`A002034(A382888(n+1))`
-/

namespace A370833.P18361967528907844813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A382888 (n + 1)).toNat

end

end A370833.P18361967528907844813

namespace A370833

/-- `A002034(A382888(n+1))` -/
def P18361967528907844813.Spec : Prop :=
  ∀ n, P18361967528907844813.a n = A370833 (n + 1)

end A370833

/-! ## A370833.P8726722811912925879

`A006530(record[A007948(n+1)])`
-/

namespace A370833.P8726722811912925879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A370833.P8726722811912925879

namespace A370833

/-- `A006530(record[A007948(n+1)])` -/
def P8726722811912925879.Spec : Prop :=
  ∀ n, P8726722811912925879.a n = A370833 (n + 1)

end A370833

/-! ## A370833.P15129911625261540231

`A006530(record[A066990(n+1)])`
-/

namespace A370833.P15129911625261540231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A370833.P15129911625261540231

namespace A370833

/-- `A006530(record[A066990(n+1)])` -/
def P15129911625261540231.Spec : Prop :=
  ∀ n, P15129911625261540231.a n = A370833 (n + 1)

end A370833

/-! ## A370833.P13331580509353102298

`A006530(record[A097377(n+1)-1])`
-/

namespace A370833.P13331580509353102298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A370833.P13331580509353102298

namespace A370833

/-- `A006530(record[A097377(n+1)-1])` -/
def P13331580509353102298.Spec : Prop :=
  ∀ n, P13331580509353102298.a n = A370833 (n + 1)

end A370833

/-! ## A370833.P15424718987827444784

`A284695(A004709(2*n+1-n))`
-/

namespace A370833.P15424718987827444784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (A004709 (2 * n + 1 - n)).toNat

end

end A370833.P15424718987827444784

namespace A370833

/-- `A284695(A004709(2*n+1-n))` -/
def P15424718987827444784.Spec : Prop :=
  ∀ n, P15424718987827444784.a n = A370833 (n + 1)

end A370833

/-! ## A370833.P17191645591632810961

`A006530(A277802(n+1))`
-/

namespace A370833.P17191645591632810961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A277802 (n + 1)).toNat

end

end A370833.P17191645591632810961

namespace A370833

/-- `A006530(A277802(n+1))` -/
def P17191645591632810961.Spec : Prop :=
  ∀ n, P17191645591632810961.a n = A370833 (n + 1)

end A370833

/-! ## A370833.P4145974129553970517

`A006530(A392365(n+1))`
-/

namespace A370833.P4145974129553970517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A392365 (n + 1)).toNat

end

end A370833.P4145974129553970517

namespace A370833

/-- `A006530(A392365(n+1))` -/
def P4145974129553970517.Spec : Prop :=
  ∀ n, P4145974129553970517.a n = A370833 (n + 1)

end A370833

/-! ## A370833.P10629064062456327691

`A284695(A004709(n+1)²)`
-/

namespace A370833.P10629064062456327691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (A004709 (n + 1) ^ 2).toNat

end

end A370833.P10629064062456327691

namespace A370833

/-- `A284695(A004709(n+1)²)` -/
def P10629064062456327691.Spec : Prop :=
  ∀ n, P10629064062456327691.a n = A370833 (n + 1)

end A370833

/-!
# A370834: a(n) is the greatest prime dividing the n-th powerful number, for n >= 2; a(1)=1.

The programs for A370834, there is no canonical definition to state claims against.
-/

/-! ## A370834.P5623453617720049688

`A006530(A001694(n+1))`
-/

namespace A370834.P5623453617720049688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001694 (n + 1)).toNat

end

end A370834.P5623453617720049688

/-! ## A370834.P16498231800110809701

`A002034(A084371(n+1))`
-/

namespace A370834.P16498231800110809701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A084371 (n + 1)).toNat

end

end A370834.P16498231800110809701

/-! ## A370834.P230985072374980831

`A006530(A369429(n+1))`
-/

namespace A370834.P230985072374980831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A369429 (n + 1)).toNat

end

end A370834.P230985072374980831

/-! ## A370834.P17571350864275842991

`A006530(A369430(n+1))`
-/

namespace A370834.P17571350864275842991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A369430 (n + 1)).toNat

end

end A370834.P17571350864275842991

/-! ## A370834.P3676302961334805609

`A006530(A306458(n+1))`
-/

namespace A370834.P3676302961334805609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A306458 (n + 1)).toNat

end

end A370834.P3676302961334805609

/-! ## A370834.P3229031727181818637

`A006530(A323333(n+1))`
-/

namespace A370834.P3229031727181818637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A323333 (n + 1)).toNat

end

end A370834.P3229031727181818637

/-! ## A370834.P18318070310266794859

`A006530(A224866(n+1)-1)`
-/

namespace A370834.P18318070310266794859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A224866 (n + 1) - 1).toNat

end

end A370834.P18318070310266794859

/-! ## A370834.P1283057696006361629

`A020639(A249740(A001694(n+1))²)`
-/

namespace A370834.P1283057696006361629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A249740 (A001694 (n + 1)).toNat ^ 2).toNat

end

end A370834.P1283057696006361629

/-! ## A370834.P15708610844786494362

`A249740(A249740(A001694(n+1))²)`
-/

namespace A370834.P15708610844786494362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A249740 (A001694 (n + 1)).toNat ^ 2).toNat

end

end A370834.P15708610844786494362

/-! ## A370834.P40518599352856349

`A249740(2*A001694(n+1))`
-/

namespace A370834.P40518599352856349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (2 * A001694 (n + 1)).toNat

end

end A370834.P40518599352856349

/-! ## A370834.P9311424672336863886

`A249740(A001694(n+1)+A001694(n+1))`
-/

namespace A370834.P9311424672336863886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A001694 (n + 1) + A001694 (n + 1)).toNat

end

end A370834.P9311424672336863886

/-!
# A370835: a(n) is the greatest prime dividing the n-th cubefull number, for n >= 2; a(1)=1.

The programs for A370835, there is no canonical definition to state claims against.
-/

/-! ## A370835.P16222359845726636789

`A006530(A036966(n+1))`
-/

namespace A370835.P16222359845726636789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036966 (n + 1)).toNat

end

end A370835.P16222359845726636789

/-! ## A370835.P14484471700996194234

`A002034(A362972(n+1))`
-/

namespace A370835.P14484471700996194234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A362972 (n + 1)).toNat

end

end A370835.P14484471700996194234

/-! ## A370835.P17676262753861998250

`A085392(2*A362972(n+1))`
-/

namespace A370835.P17676262753861998250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A362972 (n + 1)).toNat

end

end A370835.P17676262753861998250

/-! ## A370835.P17646915159465155551

`A370834(A371185(n+1))`
-/

namespace A370835.P17646915159465155551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370834 (A371185 (n + 1)).toNat

end

end A370835.P17646915159465155551

/-! ## A370835.P12453673337729196917

`A085392(A362972(n+1)²)`
-/

namespace A370835.P12453673337729196917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A362972 (n + 1) ^ 2).toNat

end

end A370835.P12453673337729196917

/-! ## A370835.P5018931346354684547

`A002034(∏{p}[A036966(n+1), #])`
-/

namespace A370835.P5018931346354684547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A370835.P5018931346354684547

/-! ## A370835.P12803186439268954822

`A006530(A371412(n+1))`
-/

namespace A370835.P12803186439268954822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A371412 (n + 1)).toNat

end

end A370835.P12803186439268954822

/-! ## A370835.P15590061638246308885

`A082061(A371413(n+1))`
-/

namespace A370835.P15590061638246308885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A371413 (n + 1)).toNat

end

end A370835.P15590061638246308885

/-!
# A370838: Expansion of (1/x) * Series_Reversion( x/(x+1/(1+x^4)) ).

The programs for A370838, there is no canonical definition to state claims against.
-/

/-! ## A370838.P10889568772893041691

`1-A339020(A238431(n+1))`
-/

namespace A370838.P10889568772893041691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A339020 (A238431 (n + 1)).toNat

end

end A370838.P10889568772893041691

/-! ## A370838.P16683647963032617652

`A036587(A036596(n))-A000332(n)`
-/

namespace A370838.P16683647963032617652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036587 (A036596 n).toNat - A000332 n

end

end A370838.P16683647963032617652

/-! ## A370838.P13809322066182918663

`A127057(A000244(n))-A000332(n)`
-/

namespace A370838.P13809322066182918663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000244 n).toNat - A000332 n

end

end A370838.P13809322066182918663

/-! ## A370838.P8861565584857439959

`A048707(A212387(n))-A000332(n)`
-/

namespace A370838.P8861565584857439959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048707 (A212387 n).toNat - A000332 n

end

end A370838.P8861565584857439959

/-! ## A370838.P2096279709480205289

`A275924(A226874(n))-A000332(n)`
-/

namespace A370838.P2096279709480205289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275924 (A226874 n).toNat - A000332 n

end

end A370838.P2096279709480205289

/-!
# A370841: Expansion of (1/x) * Series_Reversion( x * (1/(1-x^4) - x) ).

The programs for A370841, there is no canonical definition to state claims against.
-/

/-! ## A370841.P8155487566230217956

`A366088(n)+A324930(A049288(n+1))`
-/

namespace A370841.P8155487566230217956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366088 n + A324930 (A049288 (n + 1)).toNat

end

end A370841.P8155487566230217956

/-! ## A370841.P3590003403638090043

`A366088(n)+A324424(A246080(n+1))`
-/

namespace A370841.P3590003403638090043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366088 n + A324424 (A246080 (n + 1)).toNat

end

end A370841.P3590003403638090043

/-!
# A370842: Numbers k that can be added without carries to their digit reversal (A004086(k)).

The programs for A370842, there is no canonical definition to state claims against.
-/

/-! ## A370842.P6754884660435884702

`lt[A088133(n), 10]`
-/

namespace A370842.P6754884660435884702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370842.P6754884660435884702

/-! ## A370842.P8777203247734819741

`comp[lt[A267193(n), n]]`
-/

namespace A370842.P8777203247734819741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A370842.P8777203247734819741

/-! ## A370842.P7700589962486878401

`lt[A023443(n), A267193(n)]`
-/

namespace A370842.P7700589962486878401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370842.P7700589962486878401

/-! ## A370842.P2129592257634184298

`lt[A240807(2*n), A267193(n)]`
-/

namespace A370842.P2129592257634184298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240807 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370842.P2129592257634184298

/-! ## A370842.P17560393685822364861

`lt[n-A045843(n), A267193(n)]`
-/

namespace A370842.P17560393685822364861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A045843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370842.P17560393685822364861

/-! ## A370842.P6511229796145444447

`eq[A055642(n), A055642(A056964(n))]`
-/

namespace A370842.P6511229796145444447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370842.P6511229796145444447

/-! ## A370842.P13323373292222927724

`lt[A002522(n), A002378(A267193(n))]`
-/

namespace A370842.P13323373292222927724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A267193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370842.P13323373292222927724

/-!
# A370844: Expansion of (1/x) * Series_Reversion( x / (1/(1-x)^4 + x) ).

The programs for A370844, there is no canonical definition to state claims against.
-/

/-! ## A370844.P280787863147351382

`∑[A371486(n)]`
-/

namespace A370844.P280787863147351382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370844.P280787863147351382

/-! ## A370844.P10233554653188538746

`A371486(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A370844.P10233554653188538746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A371486 n + a (A023443 n).toNat

end

end A370844.P10233554653188538746

/-!
# A370845: a(n) = (n-2)^n*n!.

The programs for A370845, the canonical program `A370845.P2164859643592774306` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370845 has offset 1).

The definition of A370845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)^(n+1)*(n+1)!` (program `A370845.P2164859643592774306`, by `A370845.P2164859643592774306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370845.P2164859643592774306

`(n-1)^(n+1)*(n+1)!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370845

/-- `(n-1)^(n+1)*(n+1)!` -/
def P2164859643592774306.Spec : Prop :=
  ∀ n, P2164859643592774306.a n = A370845 (n + 1)

theorem P2164859643592774306.correct : P2164859643592774306.Spec := by
  intro n
  simp only [A370845, Nat.add_sub_cancel]

end A370845

/-! ## A370845.P10639746405559924109

`(n-1)^(n+1)*∏[n+1]`
-/

namespace A370845.P10639746405559924109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n + 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A370845.P10639746405559924109

namespace A370845

/-- `(n-1)^(n+1)*∏[n+1]` -/
def P10639746405559924109.Spec : Prop :=
  ∀ n, P10639746405559924109.a n = A370845 (n + 1)

theorem P10639746405559924109.correct : P10639746405559924109.Spec := by
  intro n
  simp only [A370845, Nat.add_sub_cancel, A370845.P10639746405559924109.f1, A370845.P10639746405559924109.a, A370845.P2164859643592774306.a, SequenceMachineLib.memo_apply]
  try simp

end A370845

/-!
# A370846: a(n) = 5 + 4^n + 3*((-i*sqrt(7) - 3)^n + (i*sqrt(7) - 3)^n)/2^n.

The programs for A370846, the canonical program `A370846.P7864879143794603799` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370846 has offset 1).

The definition of A370846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370846.P7864879143794603799

`2*a(n-1)+7*a(n-2)+8*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=24, a(2)=96, a(3)=168`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370846

/-- `2*a(n-1)+7*a(n-2)+8*a(n-3)-16*a(n-4)` -/
def P7864879143794603799.Spec : Prop :=
  ∀ n, P7864879143794603799.a n = A370846 (n + 1)

theorem P7864879143794603799.correct : P7864879143794603799.Spec := by
  intro n
  simp only [A370846, Nat.add_sub_cancel]

end A370846

/-! ## A370846.P9340080632143460104

`5+A000302(n+1)+3*A128415(n+1)`
-/

namespace A370846.P9340080632143460104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + A000302 (n + 1) + 3 * A128415 (n + 1)

end

end A370846.P9340080632143460104

namespace A370846

/-- `5+A000302(n+1)+3*A128415(n+1)` -/
def P9340080632143460104.Spec : Prop :=
  ∀ n, P9340080632143460104.a n = A370846 (n + 1)

end A370846

/-!
# A370847: a(n) = (n-1)*n!*(n-1)!.

The programs for A370847, the canonical program `A370847.P6546958388033332299` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370847 has offset 1).

The definition of A370847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)!*n!` (program `A370847.P6546958388033332299`, by `A370847.P6546958388033332299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370847.P6546958388033332299

`n*(n+1)!*n!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370847

/-- `n*(n+1)!*n!` -/
def P6546958388033332299.Spec : Prop :=
  ∀ n, (P6546958388033332299.a n : ℤ) = A370847 (n + 1)

theorem P6546958388033332299.correct : P6546958388033332299.Spec := by
  intro n
  simp only [A370847, Nat.add_sub_cancel]

end A370847

/-! ## A370847.P11384801068771105834

`2*n!²*∑[n]`
-/

namespace A370847.P11384801068771105834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.factorial n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A370847.P11384801068771105834

namespace A370847

/-- `2*n!²*∑[n]` -/
def P11384801068771105834.Spec : Prop :=
  ∀ n, (P11384801068771105834.a n : ℤ) = A370847 (n + 1)

end A370847

/-! ## A370847.P4977418512119290412

`(n+1)!*Δ[n!]`
-/

namespace A370847.P4977418512119290412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A370847.P4977418512119290412

namespace A370847

/-- `(n+1)!*Δ[n!]` -/
def P4977418512119290412.Spec : Prop :=
  ∀ n, P4977418512119290412.a n = A370847 (n + 1)

theorem P4977418512119290412.correct : P4977418512119290412.Spec := by
  intro n
  simp only [A370847, Nat.add_sub_cancel, A370847.P4977418512119290412.f1, A370847.P4977418512119290412.a, A370847.P6546958388033332299.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A370847

/-! ## A370847.P10818726188726648365

`(n²+n)*n!²`
-/

namespace A370847.P10818726188726648365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) * Nat.factorial n ^ 2

end

end A370847.P10818726188726648365

namespace A370847

/-- `(n²+n)*n!²` -/
def P10818726188726648365.Spec : Prop :=
  ∀ n, (P10818726188726648365.a n : ℤ) = A370847 (n + 1)

theorem P10818726188726648365.correct : P10818726188726648365.Spec := by
  intro n
  simp only [A370847, Nat.add_sub_cancel, A370847.P10818726188726648365.a, A370847.P6546958388033332299.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A370847

/-! ## A370847.P1288723518642995511

`Δ[n!]/∏[1/(n+1)]`
-/

namespace A370847.P1288723518642995511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A370847.P1288723518642995511

namespace A370847

/-- `Δ[n!]/∏[1/(n+1)]` -/
def P1288723518642995511.Spec : Prop :=
  ∀ n, P1288723518642995511.a n = (A370847 (n + 1) : ℚ)

end A370847

/-!
# A370848: Lesser of two consecutive primes such that the product of its digits is also prime and the sum of the digits of the other is composite.

The programs for A370848, there is no canonical definition to state claims against.
-/

/-! ## A370848.P7629850980187913576

`filter[A210546(n+1), A095076(#)]`
-/

namespace A370848.P7629850980187913576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095076 (f1 j).toNat = 1) n)

end

end A370848.P7629850980187913576

/-!
# A370850: Lesser of two consecutive primes whose digits' products are also prime.

The programs for A370850, there is no canonical definition to state claims against.
-/

/-! ## A370850.P560018060527010590

`A117835(A380121(n))`
-/

namespace A370850.P560018060527010590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117835 (A380121 n).toNat

end

end A370850.P560018060527010590

/-!
# A370851: Lesser of two consecutive primes such that the product of its digits is also prime and that of the other is composite.

The programs for A370851, there is no canonical definition to state claims against.
-/

/-! ## A370851.P11710669479015933628

`∩[A046703(n+1), A060254(n+1)]`
-/

namespace A370851.P11710669479015933628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370851.P11710669479015933628

/-! ## A370851.P5876758724282016911

`∩[A060254(n+1), A307714(n+1)]`
-/

namespace A370851.P5876758724282016911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370851.P5876758724282016911

/-! ## A370851.P10040862903896165963

`A004719(A046703(n+6))`
-/

namespace A370851.P10040862903896165963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A046703 (n + 6)).toNat

end

end A370851.P10040862903896165963

/-!
# A370852: Irregular triangle read by rows: row n is the list of residues mod n that occur among the Markov numbers.

The programs for A370852, there is no canonical definition to state claims against.
-/

/-! ## A370852.P1684988949607271596

`A124737(A091954(n+1)*A118103(n))`
-/

namespace A370852.P1684988949607271596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 (A091954 (n + 1) * A118103 n).toNat

end

end A370852.P1684988949607271596

/-! ## A370852.P5790236304583531700

`A124737(A118103(n)%A346382(n+2))`
-/

namespace A370852.P5790236304583531700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 (Int.tmod (A118103 n) (A346382 (n + 2))).toNat

end

end A370852.P5790236304583531700

/-! ## A370852.P1208990631620163872

`A124748(A061554(3*(n+1))%A000108(n))`
-/

namespace A370852.P1208990631620163872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124748 (Int.tmod (A061554 (3 * (n + 1))) (A000108 n)).toNat

end

end A370852.P1208990631620163872

/-!
# A370853: Numbers m such that c(0) < c(1) < c(2), where c(k) = number of k's in the ternary representation of m.

The programs for A370853, there is no canonical definition to state claims against.
-/

/-! ## A370853.P10376488463747689136

`∩[A370854(n+1), A370855(n+1)]`
-/

namespace A370853.P10376488463747689136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370853.P10376488463747689136

/-! ## A370853.P18130137608284832771

`∩[A167819(n+1), A370854(n+1)]`
-/

namespace A370853.P18130137608284832771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370853.P18130137608284832771

/-! ## A370853.P5976738278894729822

`∩[A167819(n+1), A370855(n+1)]`
-/

namespace A370853.P5976738278894729822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370853.P5976738278894729822

/-! ## A370853.P11022849644288347588

`∩[A167819(n+1), A370856(n+1)]`
-/

namespace A370853.P11022849644288347588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370853.P11022849644288347588

/-! ## A370853.P12895910173734059695

`∩[A044952(n+1), A370855(n+1)]`
-/

namespace A370853.P12895910173734059695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370853.P12895910173734059695

/-!
# A370858: Let L_1 = (1) and L_2 = (1, 2); for any n > 2, L_n is obtained by inserting one n between each pair of consecutive terms of L_{n-1} coprime to n; a(n) gives the number of terms in L_n.

The programs for A370858, there is no canonical definition to state claims against.
-/

/-! ## A370858.P3239564345553406743

`∑[A370857(n+1)]`
-/

namespace A370858.P3239564345553406743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370858.P3239564345553406743

/-! ## A370858.P17601989829801337528

`A156262(A339586(n+5))+A135671(n+1)`
-/

namespace A370858.P17601989829801337528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A339586 (n + 5)).toNat + A135671 (n + 1)

end

end A370858.P17601989829801337528

/-!
# A370859: Numbers m such that c(0) < c(1) > c(2), where c(k) = number of k's in the ternary representation of m.

The programs for A370859, there is no canonical definition to state claims against.
-/

/-! ## A370859.P16157992042912983225

`∩[A370860(n+1), A370861(n+1)]`
-/

namespace A370859.P16157992042912983225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370859.P16157992042912983225

/-! ## A370859.P9598719934377134661

`lt[A075823(n+1), A246479(A387188(n))]`
-/

namespace A370859.P9598719934377134661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246479 (A387188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370859.P9598719934377134661

/-! ## A370859.P3632671379067212764

`lt[A000688(A332449(3*n+1)), A120880(n)]`
-/

namespace A370859.P3632671379067212764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A332449 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370859.P3632671379067212764

/-! ## A370859.P3668907266841914407

`A355275(A032555(n+1))`
-/

namespace A370859.P3668907266841914407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355275 (A032555 (n + 1)).toNat

end

end A370859.P3668907266841914407

/-! ## A370859.P3278881179860153172

`A355275(A032559(n+1))`
-/

namespace A370859.P3278881179860153172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355275 (A032559 (n + 1)).toNat

end

end A370859.P3278881179860153172

/-!
# A370860: Numbers m such that c(0) <= c(1) > c(2), where c(k) = number of k's in the ternary representation of m.

The programs for A370860, there is no canonical definition to state claims against.
-/

/-! ## A370860.P2930915599181266266

`lt[A057427(A307683(n+1)), A062756(n)]`
-/

namespace A370860.P2930915599181266266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A307683 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370860.P2930915599181266266

/-! ## A370860.P11872834782426288714

`lt[n+1, A366411(A120880(n))]`
-/

namespace A370860.P11872834782426288714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366411 (A120880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370860.P11872834782426288714

/-! ## A370860.P17447279206041320070

`lt[A048058(n), A300397(A120880(n))]`
-/

namespace A370860.P17447279206041320070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300397 (A120880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370860.P17447279206041320070

/-! ## A370860.P6771149372704275746

`lt[A036795(n), A191098(A290091(n))]`
-/

namespace A370860.P6771149372704275746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036795 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191098 (A290091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370860.P6771149372704275746

/-! ## A370860.P11929706498758032136

`lt[A253565(n), A191098(A290091(n))]`
-/

namespace A370860.P11929706498758032136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191098 (A290091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370860.P11929706498758032136

/-!
# A370863: Numbers m such that c(0) > c(1) < c(2), where c(k) = number of k's in the ternary representation of m.

The programs for A370863, there is no canonical definition to state claims against.
-/

/-! ## A370863.P5820356082523106178

`∩[A370864(n+1), A370865(n+1)]`
-/

namespace A370863.P5820356082523106178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370863.P5820356082523106178

/-! ## A370863.P1172157868662605261

`eq[ceil(n/98)², A212193(n)]`
-/

namespace A370863.P1172157868662605261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉ ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370863.P1172157868662605261

/-! ## A370863.P17483587887764695295

`filter[A344153(n+1), A088917(#)]`
-/

namespace A370863.P17483587887764695295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088917 (f1 j).toNat = 1) n)

end

end A370863.P17483587887764695295

/-! ## A370863.P7221341560980120874

`filter[A192416(n+3), A088917(#)]`
-/

namespace A370863.P7221341560980120874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088917 (f1 j).toNat = 1) n)

end

end A370863.P7221341560980120874

/-! ## A370863.P6806468698154417543

`eq[A039968(n+1), A119995(n)]`
-/

namespace A370863.P6806468698154417543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370863.P6806468698154417543

/-!
# A370867: Records in A224908.

The programs for A370867, there is no canonical definition to state claims against.
-/

/-! ## A370867.P12806430400166613199

`record[A224908(n+1)]`
-/

namespace A370867.P12806430400166613199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370867.P12806430400166613199

/-! ## A370867.P11217299190384558675

`lt[A114151(A325131(n+1)), A239241(3*(n+1))]`
-/

namespace A370867.P11217299190384558675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114151 (A325131 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370867.P11217299190384558675

/-! ## A370867.P11862287944257465226

`eq[1, A356233(A028805(3*n+1))]`
-/

namespace A370867.P11862287944257465226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (A028805 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370867.P11862287944257465226

/-! ## A370867.P10840576710179138185

`lt[A266459(A274287(3*n+1)), 1]`
-/

namespace A370867.P10840576710179138185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266459 (A274287 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370867.P10840576710179138185

/-! ## A370867.P14356574329114518703

`record[A229994(n+1)-A126743(2*n+5)]`
-/

namespace A370867.P14356574329114518703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229994 (n + 1) - A126743 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370867.P14356574329114518703

/-!
# A370869: a(0) = 0; thereafter, a(n) = a(n-1)^2 - 3*A058891(n).

The programs for A370869, the canonical program `A370869.P13692030525450674995` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370869 has offset 0).

The definition of A370869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370869.P18303254341235946053

`a(n-1)²-3*2^(2^(n-1)-1)` with `a(0)=0`
-/

namespace A370869.P18303254341235946053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - 3 * (2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1 : ℝ)

end

end A370869.P18303254341235946053

namespace A370869

/-- `a(n-1)²-3*2^(2^(n-1)-1)` -/
def P18303254341235946053.Spec : Prop :=
  ∀ n, P18303254341235946053.a n = (A370869 n : ℝ)

end A370869

/-! ## A370869.P13692030525450674995

`a(n-1)²-3*A058891(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370869

/-- `a(n-1)²-3*A058891(n)` -/
def P13692030525450674995.Spec : Prop :=
  ∀ n, P13692030525450674995.a n = A370869 n

theorem P13692030525450674995.correct : P13692030525450674995.Spec := by
  intro n
  simp only [A370869]

end A370869

/-!
# A370870: Numbers m such that c(0) > c(1) > c(2), where c(k) = number of k's in the ternary representation of m.

The programs for A370870, there is no canonical definition to state claims against.
-/

/-! ## A370870.P2523390504094970525

`∩[A370871(n+1), A370872(n+1)]`
-/

namespace A370870.P2523390504094970525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370870.P2523390504094970525

/-! ## A370870.P102887508086011214

`∩[A044952(n+1), A370871(n+1)]`
-/

namespace A370870.P102887508086011214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370870.P102887508086011214

/-! ## A370870.P6975312929625310788

`∩[A044952(n+1), A370872(n+1)]`
-/

namespace A370870.P6975312929625310788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370870.P6975312929625310788

/-! ## A370870.P15183090625266371310

`∩[A044952(n+1), A370873(n+1)]`
-/

namespace A370870.P15183090625266371310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370870.P15183090625266371310

/-! ## A370870.P1944208700871038907

`∩[A167819(n+1), A370871(n+1)]`
-/

namespace A370870.P1944208700871038907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370870.P1944208700871038907

/-! ## A370870.P1800230307827967109

`∩[A167819(n+1), A370872(n+1)]`
-/

namespace A370870.P1800230307827967109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370870.P1800230307827967109

/-! ## A370870.P9363916175829812885

`∩[A167819(n+1), A370873(n+1)]`
-/

namespace A370870.P9363916175829812885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370870.P9363916175829812885

/-!
# A370873: Positive integers m such that c(0) >= c(1) >= c(2), where c(k) = number of k's in the ternary representation of m.

The programs for A370873, there is no canonical definition to state claims against.
-/

/-! ## A370873.P9213278167539079568

`record[A289437(A370872(n+1))]`
-/

namespace A370873.P9213278167539079568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A370872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370873.P9213278167539079568

/-!
# A370874: Number of partitions of 4n whose xor-sum is 2n.

The programs for A370874, there is no canonical definition to state claims against.
-/

/-! ## A370874.P2317035826548718809

`A050314(A033586(n))`
-/

namespace A370874.P2317035826548718809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (A033586 n).toNat

end

end A370874.P2317035826548718809

/-! ## A370874.P364818343241315762

`A050314(A102083(n)-1)`
-/

namespace A370874.P364818343241315762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (A102083 n - 1).toNat

end

end A370874.P364818343241315762

/-! ## A370874.P8244636886977867368

`A050314(4*A014105(n))`
-/

namespace A370874.P8244636886977867368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (4 * A014105 n).toNat

end

end A370874.P8244636886977867368

/-! ## A370874.P17209296688684510923

`A050314(2*A002378(2*n))`
-/

namespace A370874.P17209296688684510923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (2 * A002378 (2 * n)).toNat

end

end A370874.P17209296688684510923

/-! ## A370874.P13243141473931555708

`A050314(4*A000217(2*n))`
-/

namespace A370874.P13243141473931555708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (4 * A000217 (2 * n)).toNat

end

end A370874.P13243141473931555708

/-! ## A370874.P17288427588680101155

`A050314(A005563(3*n)-A005563(n))`
-/

namespace A370874.P17288427588680101155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (A005563 (3 * n) - A005563 n).toNat

end

end A370874.P17288427588680101155

/-! ## A370874.P17873794967317069382

`A050314(A005843(2*n+1)*A005843(n))`
-/

namespace A370874.P17873794967317069382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (A005843 (2 * n + 1) * A005843 n).toNat

end

end A370874.P17873794967317069382

/-! ## A370874.P3024695657844910200

`A050314(A074378(2*n)+A074377(2*n))`
-/

namespace A370874.P3024695657844910200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (A074378 (2 * n) + A074377 (2 * n)).toNat

end

end A370874.P3024695657844910200

/-!
# A370875: Expansion of e.g.f. (1/x) * Series_Reversion( x/(x + exp(x^2)) ).

The programs for A370875, there is no canonical definition to state claims against.
-/

/-! ## A370875.P15786114262878229004

`A004523(A360611(n)+1)`
-/

namespace A370875.P15786114262878229004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A360611 n + 1).toNat

end

end A370875.P15786114262878229004

/-! ## A370875.P9055559672935475713

`A067022(A067041(n))+A000108(n)`
-/

namespace A370875.P9055559672935475713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067022 (A067041 n).toNat + A000108 n

end

end A370875.P9055559672935475713

/-!
# A370876: Expansion of e.g.f. (1/x) * Series_Reversion( x/(x + exp(x^3)) ).

The programs for A370876, there is no canonical definition to state claims against.
-/

/-! ## A370876.P16030816492001373492

`A000196(A008485(n))*A001710(n)`
-/

namespace A370876.P16030816492001373492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008485 n).toNat * A001710 n

end

end A370876.P16030816492001373492

/-!
# A370877: Expansion of e.g.f. (1/x) * Series_Reversion( x/(x + exp(x^2/2)) ).

The programs for A370877, there is no canonical definition to state claims against.
-/

/-! ## A370877.P17518461266159892063

`A201339(A298671(n)-1)`
-/

namespace A370877.P17518461266159892063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201339 (A298671 n - 1).toNat

end

end A370877.P17518461266159892063

/-! ## A370877.P10085965884506887900

`A201339(A374431(n)-1)`
-/

namespace A370877.P10085965884506887900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201339 (A374431 n - 1).toNat

end

end A370877.P10085965884506887900

/-!
# A370879: a(n) = 2^n*t + 1 where t is the least x such that there exists an r in the range 2 <= r <= x+1 that is coprime to 2^n*x + 1 and has multiplicative order 2^n modulo 2^n*x + 1.

The programs for A370879, there is no canonical definition to state claims against.
-/

/-! ## A370879.P1124690663052776901

`filter[A080076(n+1), A129572(#)]`
-/

namespace A370879.P1124690663052776901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A129572 (f1 j).toNat = 1) n)

end

end A370879.P1124690663052776901

/-!
# A370880: Natural numbers repeated 3 times are taken in parts of successive lengths 1,2,3,..., and a(n) is the sum of the numbers in the part with length n.

The programs for A370880, the canonical program `A370880.P16755223464345591874` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370880 has offset 1).

The definition of A370880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370880.P16755223464345591874

`round((n+1)^3/6+(n+1)/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370880

/-- `round((n+1)^3/6+(n+1)/2)` -/
def P16755223464345591874.Spec : Prop :=
  ∀ n, P16755223464345591874.a n = A370880 (n + 1)

theorem P16755223464345591874.correct : P16755223464345591874.Spec := by
  intro n
  simp only [A370880, Nat.add_sub_cancel]

end A370880

/-! ## A370880.P11926143375542903155

`∑[∑[n]+(1-n)²%3]`
-/

namespace A370880.P11926143375542903155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + Int.tmod ((1 - (n : ℤ)) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370880.P11926143375542903155

namespace A370880

/-- `∑[∑[n]+(1-n)²%3]` -/
def P11926143375542903155.Spec : Prop :=
  ∀ n, P11926143375542903155.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P14144322479843687401

`∑[a(n-3)²]+∑[∑[n]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A370880.P14144322479843687401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A370880.P14144322479843687401

namespace A370880

/-- `∑[a(n-3)²]+∑[∑[n]]` -/
def P14144322479843687401.Spec : Prop :=
  ∀ n, (P14144322479843687401.a n : ℤ) = A370880 (n + 1)

end A370880

/-! ## A370880.P2024146258641943808

`∑[floor(a(n-3))]+∑[∑[n]]` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A370880.P2024146258641943808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A370880.P2024146258641943808

namespace A370880

/-- `∑[floor(a(n-3))]+∑[∑[n]]` -/
def P2024146258641943808.Spec : Prop :=
  ∀ n, (P2024146258641943808.a n : ℤ) = A370880 (n + 1)

end A370880

/-! ## A370880.P3980028400415580668

`ceil((2*n+1)/3)+C(n+2, 3)`
-/

namespace A370880.P3980028400415580668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / 3⌉ + (Nat.choose (n + 2) 3 : ℤ)

end

end A370880.P3980028400415580668

namespace A370880

/-- `ceil((2*n+1)/3)+C(n+2, 3)` -/
def P3980028400415580668.Spec : Prop :=
  ∀ n, P3980028400415580668.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P3249384455663886531

`∑[∑[a(n-3)+3]]+n+1` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A370880.P3249384455663886531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f2 =>
  f2 (n - 3) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A370880.P3249384455663886531

namespace A370880

/-- `∑[∑[a(n-3)+3]]+n+1` -/
def P3249384455663886531.Spec : Prop :=
  ∀ n, (P3249384455663886531.a n : ℤ) = A370880 (n + 1)

end A370880

/-! ## A370880.P14723674380607473946

`∑[∑[A163804(n)+n]]`
-/

namespace A370880.P14723674380607473946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370880.P14723674380607473946

namespace A370880

/-- `∑[∑[A163804(n)+n]]` -/
def P14723674380607473946.Spec : Prop :=
  ∀ n, P14723674380607473946.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P8038960946574782684

`∑[A204418(n)+∑[n]]`
-/

namespace A370880.P8038960946574782684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370880.P8038960946574782684

namespace A370880

/-- `∑[A204418(n)+∑[n]]` -/
def P8038960946574782684.Spec : Prop :=
  ∀ n, P8038960946574782684.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P13007796402041687853

`A004396(n+1)+∑[∑[n]]`
-/

namespace A370880.P13007796402041687853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A370880.P13007796402041687853

namespace A370880

/-- `A004396(n+1)+∑[∑[n]]` -/
def P13007796402041687853.Spec : Prop :=
  ∀ n, P13007796402041687853.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P8005734812146699447

`A212986(n)+A131941(n)`
-/

namespace A370880.P8005734812146699447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212986 n + A131941 n

end

end A370880.P8005734812146699447

namespace A370880

/-- `A212986(n)+A131941(n)` -/
def P8005734812146699447.Spec : Prop :=
  ∀ n, P8005734812146699447.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P6974217810795722657

`A389142(n)+A000125(n)`
-/

namespace A370880.P6974217810795722657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389142 n + A000125 n

end

end A370880.P6974217810795722657

namespace A370880

/-- `A389142(n)+A000125(n)` -/
def P6974217810795722657.Spec : Prop :=
  ∀ n, P6974217810795722657.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P17429552685768480270

`A064808(n)-A131477(n)`
-/

namespace A370880.P17429552685768480270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n - A131477 n

end

end A370880.P17429552685768480270

namespace A370880

/-- `A064808(n)-A131477(n)` -/
def P17429552685768480270.Spec : Prop :=
  ∀ n, P17429552685768480270.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P17851070309043973606

`A213397(n)-A027480(n)`
-/

namespace A370880.P17851070309043973606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213397 n - A027480 n

end

end A370880.P17851070309043973606

namespace A370880

/-- `A213397(n)-A027480(n)` -/
def P17851070309043973606.Spec : Prop :=
  ∀ n, P17851070309043973606.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P3567818538917860575

`A027378(n)-A389317(n)`
-/

namespace A370880.P3567818538917860575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027378 n - A389317 n

end

end A370880.P3567818538917860575

namespace A370880

/-- `A027378(n)-A389317(n)` -/
def P3567818538917860575.Spec : Prop :=
  ∀ n, P3567818538917860575.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P14260629448537102858

`A000292(n)+A004523(n)+1`
-/

namespace A370880.P14260629448537102858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A004523 n + 1)

end

end A370880.P14260629448537102858

namespace A370880

/-- `A000292(n)+A004523(n)+1` -/
def P14260629448537102858.Spec : Prop :=
  ∀ n, P14260629448537102858.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P5501322335860534158

`A032793(n+1)+A005581(n)`
-/

namespace A370880.P5501322335860534158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (n + 1) + A005581 n

end

end A370880.P5501322335860534158

namespace A370880

/-- `A032793(n+1)+A005581(n)` -/
def P5501322335860534158.Spec : Prop :=
  ∀ n, P5501322335860534158.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P16407464270566159196

`A105163(n+1)+A047220(n+1)`
-/

namespace A370880.P16407464270566159196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105163 (n + 1) + A047220 (n + 1)

end

end A370880.P16407464270566159196

namespace A370880

/-- `A105163(n+1)+A047220(n+1)` -/
def P16407464270566159196.Spec : Prop :=
  ∀ n, P16407464270566159196.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P16284882214935702927

`(A212069(n+1)+n+1)/2`
-/

namespace A370880.P16284882214935702927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212069 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A370880.P16284882214935702927

namespace A370880

/-- `(A212069(n+1)+n+1)/2` -/
def P16284882214935702927.Spec : Prop :=
  ∀ n, P16284882214935702927.a n = (A370880 (n + 1) : ℚ)

end A370880

/-! ## A370880.P7451885637185851072

`A008620(2*n)+A000292(n)`
-/

namespace A370880.P7451885637185851072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n) + A000292 n

end

end A370880.P7451885637185851072

namespace A370880

/-- `A008620(2*n)+A000292(n)` -/
def P7451885637185851072.Spec : Prop :=
  ∀ n, P7451885637185851072.a n = A370880 (n + 1)

end A370880

/-! ## A370880.P10793303296634097098

`∑[A117571(∑[n])]`
-/

namespace A370880.P10793303296634097098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370880.P10793303296634097098

namespace A370880

/-- `∑[A117571(∑[n])]` -/
def P10793303296634097098.Spec : Prop :=
  ∀ n, P10793303296634097098.a n = A370880 (n + 1)

end A370880

/-!
# A370883: Irregular triangle read by rows: T(n,k) is the number of unmatched right parentheses in the k-th string of parentheses of length n, where strings within a row are in reverse lexicographical order.

The programs for A370883, there is no canonical definition to state claims against.
-/

/-! ## A370883.P9852696750437000927

`A370884(n)-A274575(n)`
-/

namespace A370883.P9852696750437000927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370884 n - A274575 n

end

end A370883.P9852696750437000927

/-! ## A370883.P1221171140072609106

`A370885(n)-A370884(n)`
-/

namespace A370883.P1221171140072609106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370885 n - A370884 n

end

end A370883.P1221171140072609106

/-! ## A370883.P7991791194508764768

`A126387(xor(n+1, 2^floor(log2(n+1))-1))-1`
-/

namespace A370883.P7991791194508764768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat - 1

end

end A370883.P7991791194508764768

/-! ## A370883.P17466897702641427973

`A126387(A054429(n+1))-1`
-/

namespace A370883.P17466897702641427973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (A054429 (n + 1)).toNat - 1

end

end A370883.P17466897702641427973

/-! ## A370883.P6338987436176815224

`A107782(A004754(n+1)%A192088(n+2))`
-/

namespace A370883.P6338987436176815224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (Int.tmod (A004754 (n + 1)) (A192088 (n + 2))).toNat

end

end A370883.P6338987436176815224

/-!
# A370884: Irregular triangle read by rows: T(n,k) is the number of unmatched left parentheses in the k-th string of parentheses of length n, where strings within a row are in reverse lexicographical order.

The programs for A370884, there is no canonical definition to state claims against.
-/

/-! ## A370884.P1665529534215999258

`A370883(n)+A274575(n)`
-/

namespace A370884.P1665529534215999258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370883 n + A274575 n

end

end A370884.P1665529534215999258

/-! ## A370884.P10125918201224375583

`A370885(n)-A370883(n)`
-/

namespace A370884.P10125918201224375583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370885 n - A370883 n

end

end A370884.P10125918201224375583

/-! ## A370884.P16517793413759972350

`A036989(A053645(n+1))-1`
-/

namespace A370884.P16517793413759972350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A053645 (n + 1)).toNat - 1

end

end A370884.P16517793413759972350

/-! ## A370884.P15054575137723624673

`A370883(n)+A145037(2*(n+1))`
-/

namespace A370884.P15054575137723624673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370883 n + A145037 (2 * (n + 1))

end

end A370884.P15054575137723624673

/-! ## A370884.P15622819447775400645

`A036989(A004754(n+1)*A267870(n))-1`
-/

namespace A370884.P15622819447775400645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A004754 (n + 1) * A267870 n).toNat - 1

end

end A370884.P15622819447775400645

/-!
# A370885: Irregular triangle read by rows: T(n,k) is the total number of unmatched parentheses (both left and right) in the k-th string of parentheses of length n, where strings within a row are in reverse lexicographical order.

The programs for A370885, there is no canonical definition to state claims against.
-/

/-! ## A370885.P8022415630200118303

`A370884(n)+A370883(n)`
-/

namespace A370885.P8022415630200118303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370884 n + A370883 n

end

end A370885.P8022415630200118303

/-! ## A370885.P12746780195848685746

`A274575(n)+2*A370883(n)`
-/

namespace A370885.P12746780195848685746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n + 2 * A370883 n

end

end A370885.P12746780195848685746

/-! ## A370885.P4173285389353485996

`2*A370884(n)-A274575(n)`
-/

namespace A370885.P4173285389353485996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370884 n - A274575 n

end

end A370885.P4173285389353485996

/-! ## A370885.P13638964026184597452

`A370884(n)+A126387(A054429(n+1))-1`
-/

namespace A370885.P13638964026184597452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370884 n + (A126387 (A054429 (n + 1)).toNat - 1)

end

end A370885.P13638964026184597452

/-! ## A370885.P16570751223772262895

`A370884(n)+A107782(A004754(n+1)%A192088(n+2))`
-/

namespace A370885.P16570751223772262895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370884 n + A107782 (Int.tmod (A004754 (n + 1)) (A192088 (n + 2))).toNat

end

end A370885.P16570751223772262895

/-!
# A370886: Number of Git graphs (also called Git feature branch graphs) with n vertices.

The programs for A370886, there is no canonical definition to state claims against.
-/

/-! ## A370886.P6365837024656635421

`A226762(A001168(n))`
-/

namespace A370886.P6365837024656635421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A001168 n).toNat

end

end A370886.P6365837024656635421

/-! ## A370886.P16501163823606347505

`A133365(A250264(n+1))`
-/

namespace A370886.P16501163823606347505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133365 (A250264 (n + 1)).toNat

end

end A370886.P16501163823606347505

/-! ## A370886.P12179952655099220687

`∏{e}[A054726(n), A133365(#)]`
-/

namespace A370886.P12179952655099220687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A133365 (Nat.factorization (f1 n).natAbs p)

end

end A370886.P12179952655099220687

/-! ## A370886.P694697936604474167

`A175072(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A370886.P694697936604474167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A175072 (a (n - 1)).toNat

end

end A370886.P694697936604474167

/-!
# A370887: Square array read by descending antidiagonals: T(n,k) is the number of subgroups of the elementary abelian group of order A000040(k)^n for n >= 0 and k >= 1.

The programs for A370887, there is no canonical definition to state claims against.
-/

/-! ## A370887.P5572920206611281805

`A208910(n+1)-A091121(A259325(n))%A203647(n+1)`
-/

namespace A370887.P5572920206611281805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1) - Int.tmod (A091121 (A259325 n).toNat) (A203647 (n + 1))

end

end A370887.P5572920206611281805

/-! ## A370887.P4282558496983211042

`A112979(A355721(n))`
-/

namespace A370887.P4282558496983211042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112979 (A355721 n).toNat

end

end A370887.P4282558496983211042

/-! ## A370887.P9906208768832771762

`A196183(A396800(n+1))`
-/

namespace A370887.P9906208768832771762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196183 (A396800 (n + 1)).toNat

end

end A370887.P9906208768832771762

/-! ## A370887.P17705623789449288224

`A208910(n+1)-A081419(A212829(n+1))`
-/

namespace A370887.P17705623789449288224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1) - A081419 (A212829 (n + 1)).toNat

end

end A370887.P17705623789449288224

/-! ## A370887.P5176589688424424058

`A208910(n+1)-A329362(C(A226441(n+1), 2))`
-/

namespace A370887.P5176589688424424058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1) - A329362 (Nat.choose (A226441 (n + 1)).toNat 2)

end

end A370887.P5176589688424424058

/-!
# A370888: a(n) = (n-1)*(2*(n-2)!+1).

The programs for A370888, the canonical program `A370888.P3838807388034725864` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370888 has offset 2).

The definition of A370888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2*n!+1)` (program `A370888.P3838807388034725864`, by `A370888.P3838807388034725864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370888.P3838807388034725864

`(n+1)*(2*n!+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370888

/-- `(n+1)*(2*n!+1)` -/
def P3838807388034725864.Spec : Prop :=
  ∀ n, (P3838807388034725864.a n : ℤ) = A370888 (n + 2)

theorem P3838807388034725864.correct : P3838807388034725864.Spec := by
  intro n
  simp only [A370888, Nat.add_sub_cancel]

end A370888

/-! ## A370888.P12553115551954443859

`2*∏[n+1]+1+n`
-/

namespace A370888.P12553115551954443859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1 + n

end

end A370888.P12553115551954443859

namespace A370888

/-- `2*∏[n+1]+1+n` -/
def P12553115551954443859.Spec : Prop :=
  ∀ n, (P12553115551954443859.a n : ℤ) = A370888 (n + 2)

theorem P12553115551954443859.correct : P12553115551954443859.Spec := by
  intro n
  simp only [A370888, Nat.add_sub_cancel, A370888.P12553115551954443859.f1, A370888.P12553115551954443859.a, A370888.P3838807388034725864.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A370888

/-! ## A370888.P16827884994838966802

`∑[Δ[n*a(n-1)]+1]` with `a(0)=0, a(1)=2`
-/

namespace A370888.P16827884994838966802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370888.P16827884994838966802

namespace A370888

/-- `∑[Δ[n*a(n-1)]+1]` -/
def P16827884994838966802.Spec : Prop :=
  ∀ n, P16827884994838966802.a n = A370888 (n + 2)

end A370888

/-! ## A370888.P13817886368196388763

`(n+1)*(a(n-1)+1-n)` with `a(0)=3`
-/

namespace A370888.P13817886368196388763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) + (1 - (n : ℤ)))

end

end A370888.P13817886368196388763

namespace A370888

/-- `(n+1)*(a(n-1)+1-n)` -/
def P13817886368196388763.Spec : Prop :=
  ∀ n, P13817886368196388763.a n = A370888 (n + 2)

end A370888

/-! ## A370888.P6646718905058073097

`lcm(n+1, a(n-1)+1-n)` with `a(0)=3`
-/

namespace A370888.P6646718905058073097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (n + 1 : ℤ) ((a (n - 1) : ℤ) + (1 - (n : ℤ)))

end

end A370888.P6646718905058073097

namespace A370888

/-- `lcm(n+1, a(n-1)+1-n)` -/
def P6646718905058073097.Spec : Prop :=
  ∀ n, (P6646718905058073097.a n : ℤ) = A370888 (n + 2)

end A370888

/-! ## A370888.P18114726696593203466

`or(n+1, ∏[n+1]+(n+1)!)`
-/

namespace A370888.P18114726696593203466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j + Nat.factorial (n + 1))

end

end A370888.P18114726696593203466

namespace A370888

/-- `or(n+1, ∏[n+1]+(n+1)!)` -/
def P18114726696593203466.Spec : Prop :=
  ∀ n, (P18114726696593203466.a n : ℤ) = A370888 (n + 2)

end A370888

/-! ## A370888.P966452954485045328

`xor(n+1, ∏[n+1]+(n+1)!)`
-/

namespace A370888.P966452954485045328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j + Nat.factorial (n + 1))

end

end A370888.P966452954485045328

namespace A370888

/-- `xor(n+1, ∏[n+1]+(n+1)!)` -/
def P966452954485045328.Spec : Prop :=
  ∀ n, (P966452954485045328.a n : ℤ) = A370888 (n + 2)

end A370888

/-! ## A370888.P8152794138494937959

`(n-1-2*n)*(n-1-a(n-1))` with `a(0)=3`
-/

namespace A370888.P8152794138494937959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ((n : ℤ) - 1 - (2 * n : ℤ)) * ((n : ℤ) - 1 - a (n - 1))

end

end A370888.P8152794138494937959

namespace A370888

/-- `(n-1-2*n)*(n-1-a(n-1))` -/
def P8152794138494937959.Spec : Prop :=
  ∀ n, P8152794138494937959.a n = A370888 (n + 2)

end A370888

/-! ## A370888.P6827565977583764588

`or(n+1, (n+3)!/C(n+3, 2))`
-/

namespace A370888.P6827565977583764588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((Nat.factorial (n + 3) : ℚ) / (Nat.choose (n + 3) 2 : ℚ)))

end

end A370888.P6827565977583764588

namespace A370888

/-- `or(n+1, (n+3)!/C(n+3, 2))` -/
def P6827565977583764588.Spec : Prop :=
  ∀ n, P6827565977583764588.a n = A370888 (n + 2)

end A370888

/-! ## A370888.P14250342552399887271

`xor(n+1, (n+3)!/C(n+3, 2))`
-/

namespace A370888.P14250342552399887271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((Nat.factorial (n + 3) : ℚ) / (Nat.choose (n + 3) 2 : ℚ)))

end

end A370888.P14250342552399887271

namespace A370888

/-- `xor(n+1, (n+3)!/C(n+3, 2))` -/
def P14250342552399887271.Spec : Prop :=
  ∀ n, P14250342552399887271.a n = A370888 (n + 2)

end A370888

/-!
# A370889: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x*exp(x^2/2)) ).

The programs for A370889, there is no canonical definition to state claims against.
-/

/-! ## A370889.P3779361560487735680

`A098235(A122045(n)+A002110(n))`
-/

namespace A370889.P3779361560487735680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098235 (A122045 n + A002110 n).toNat

end

end A370889.P3779361560487735680

/-! ## A370889.P103387555454449278

`A367485(n)+A000007(A006129(n))`
-/

namespace A370889.P103387555454449278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367485 n + A000007 (A006129 n).toNat

end

end A370889.P103387555454449278

/-!
# A370890: A(n, k) = 2^n*Pochhammer(k/2, floor((n+1)/2)). Square array read by ascending antidiagonals.

The programs for A370890, there is no canonical definition to state claims against.
-/

/-! ## A370890.P16488946751385388611

`A125186(A264436(n))`
-/

namespace A370890.P16488946751385388611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A264436 n).toNat

end

end A370890.P16488946751385388611

/-! ## A370890.P8985103222967505

`A106486(A337506(n))`
-/

namespace A370890.P8985103222967505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A337506 n).toNat

end

end A370890.P8985103222967505

/-! ## A370890.P12095842635156273644

`A106486(A354794(n))`
-/

namespace A370890.P12095842635156273644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A354794 n).toNat

end

end A370890.P12095842635156273644

/-! ## A370890.P10217071200818748036

`A102382(A394615(n))`
-/

namespace A370890.P10217071200818748036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 (A394615 n).toNat

end

end A370890.P10217071200818748036

/-! ## A370890.P8200308051552631107

`A167439(A368602(n))`
-/

namespace A370890.P8200308051552631107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A368602 n).toNat

end

end A370890.P8200308051552631107

/-!
# A370891: G.f. satisfies A(x) = ( 1 + x * A(x)^(1/4) * (1 + A(x)^(3/4)) )^2.

The programs for A370891, there is no canonical definition to state claims against.
-/

/-! ## A370891.P3476981227621230997

`A262441(n+1)-A106228(n)`
-/

namespace A370891.P3476981227621230997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262441 (n + 1) - A106228 n

end

end A370891.P3476981227621230997

/-! ## A370891.P1628431134890202540

`A109081(n+2)+A371724(n)-A262441(n)`
-/

namespace A370891.P1628431134890202540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 2) + (A371724 n - A262441 n)

end

end A370891.P1628431134890202540

/-! ## A370891.P14129125286049738554

`A106228(n+1)+A109081(n+2)-A106228(n)`
-/

namespace A370891.P14129125286049738554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 (n + 1) + (A109081 (n + 2) - A106228 n)

end

end A370891.P14129125286049738554

/-! ## A370891.P14495203165414640079

`A262441(n+1)-A379382(n)/A000079(n)`
-/

namespace A370891.P14495203165414640079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262441 (n + 1) : ℚ) - (A379382 n : ℚ) / (A000079 n : ℚ)

end

end A370891.P14495203165414640079

/-!
# A370892: Least positive integer k such that 4 numbers starting with k in an arithmetic progression with difference n have a solution in the game 24.

The programs for A370892, there is no canonical definition to state claims against.
-/

/-! ## A370892.P6214793957634687275

`gcd(A060130(n), A376593(A376637(n+1)))`
-/

namespace A370892.P6214793957634687275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060130 n) (A376593 (A376637 (n + 1)).toNat)

end

end A370892.P6214793957634687275

/-!
# A370894: Expansion of e.g.f. (1/x) * Series_Reversion( x*(3 - exp(2*x))/2 ).

The programs for A370894, there is no canonical definition to state claims against.
-/

/-! ## A370894.P6280854880784939383

`A287676(n!²)`
-/

namespace A370894.P6280854880784939383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287676 (Nat.factorial n ^ 2)

end

end A370894.P6280854880784939383

/-!
# A370895: Partial alternating sums of Pillai's arithmetical function (A018804).

The programs for A370895, the canonical program `A370895.P1285603479824087748` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370895 has offset 1).

The definition of A370895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370895.P1285603479824087748

`∑[(-1)^n*A018804(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A370895

/-- `∑[(-1)^n*A018804(n+1)]` -/
def P1285603479824087748.Spec : Prop :=
  ∀ n, P1285603479824087748.a n = A370895 (n + 1)

theorem P1285603479824087748.correct : P1285603479824087748.Spec := by
  intro n
  simp only [A370895, Nat.add_sub_cancel]

end A370895

/-! ## A370895.P2678311773527184770

`∑[A018804(n+1)*A033999(n)]`
-/

namespace A370895.P2678311773527184770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370895.P2678311773527184770

namespace A370895

/-- `∑[A018804(n+1)*A033999(n)]` -/
def P2678311773527184770.Spec : Prop :=
  ∀ n, P2678311773527184770.a n = A370895 (n + 1)

end A370895

/-! ## A370895.P9248387164578831980

`∑[(A349131(n+1)+A348981(n+1))*A033999(n)]`
-/

namespace A370895.P9248387164578831980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349131 (n + 1) + A348981 (n + 1)) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370895.P9248387164578831980

namespace A370895

/-- `∑[(A349131(n+1)+A348981(n+1))*A033999(n)]` -/
def P9248387164578831980.Spec : Prop :=
  ∀ n, P9248387164578831980.a n = A370895 (n + 1)

end A370895

/-! ## A370895.P5846239020256772106

`∑[A018804(n+1)/A033999(n+2)]`
-/

namespace A370895.P5846239020256772106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370895.P5846239020256772106

namespace A370895

/-- `∑[A018804(n+1)/A033999(n+2)]` -/
def P5846239020256772106.Spec : Prop :=
  ∀ n, P5846239020256772106.a n = (A370895 (n + 1) : ℚ)

end A370895

/-! ## A370895.P6315730604514420571

`∑[A018804(n+1)/A010892(3*n)]`
-/

namespace A370895.P6315730604514420571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A010892 (3 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370895.P6315730604514420571

namespace A370895

/-- `∑[A018804(n+1)/A010892(3*n)]` -/
def P6315730604514420571.Spec : Prop :=
  ∀ n, P6315730604514420571.a n = (A370895 (n + 1) : ℚ)

end A370895

/-!
# A370896: Partial alternating sums of the squarefree kernel function (A007947).

The programs for A370896, the canonical program `A370896.P5725410653635743924` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370896 has offset 1).

The definition of A370896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370896.P5725410653635743924

`∑[(-1)^n*∏{p}[n+1, #]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370896

/-- `∑[(-1)^n*∏{p}[n+1, #]]` -/
def P5725410653635743924.Spec : Prop :=
  ∀ n, P5725410653635743924.a n = A370896 (n + 1)

theorem P5725410653635743924.correct : P5725410653635743924.Spec := by
  intro n
  simp only [A370896, Nat.add_sub_cancel]

end A370896

/-! ## A370896.P328769348461318155

`∑[∏{p}[n+1, #]/(-1)^n]`
-/

namespace A370896.P328769348461318155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370896.P328769348461318155

namespace A370896

/-- `∑[∏{p}[n+1, #]/(-1)^n]` -/
def P328769348461318155.Spec : Prop :=
  ∀ n, P328769348461318155.a n = (A370896 (n + 1) : ℚ)

end A370896

/-! ## A370896.P15008647829430047324

`∑[∏{p}[n+1, #]*A033999(n)]`
-/

namespace A370896.P15008647829430047324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370896.P15008647829430047324

namespace A370896

/-- `∑[∏{p}[n+1, #]*A033999(n)]` -/
def P15008647829430047324.Spec : Prop :=
  ∀ n, P15008647829430047324.a n = A370896 (n + 1)

end A370896

/-! ## A370896.P5339125681814573581

`∑[(-1)^n*A007947(n+1)]`
-/

namespace A370896.P5339125681814573581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370896.P5339125681814573581

namespace A370896

/-- `∑[(-1)^n*A007947(n+1)]` -/
def P5339125681814573581.Spec : Prop :=
  ∀ n, P5339125681814573581.a n = A370896 (n + 1)

end A370896

/-! ## A370896.P16550525874734467316

`∑[-(A078636(n)/a(n-1))]` with `a(0)=1`
-/

namespace A370896.P16550525874734467316
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -((A078636 n : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370896.P16550525874734467316

namespace A370896

/-- `∑[-(A078636(n)/a(n-1))]` -/
def P16550525874734467316.Spec : Prop :=
  ∀ n, P16550525874734467316.a n = (A370896 (n + 1) : ℚ)

end A370896

/-! ## A370896.P17815425933911241731

`∑[A181983(A007947(n+1))]`
-/

namespace A370896.P17815425933911241731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370896.P17815425933911241731

namespace A370896

/-- `∑[A181983(A007947(n+1))]` -/
def P17815425933911241731.Spec : Prop :=
  ∀ n, P17815425933911241731.a n = A370896 (n + 1)

end A370896

/-! ## A370896.P2519924850314864469

`∑[A007947(n+1)*A033999(n)]`
-/

namespace A370896.P2519924850314864469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370896.P2519924850314864469

namespace A370896

/-- `∑[A007947(n+1)*A033999(n)]` -/
def P2519924850314864469.Spec : Prop :=
  ∀ n, P2519924850314864469.a n = A370896 (n + 1)

end A370896

/-! ## A370896.P10304129325352669006

`∑[∏{p}[n+1, #]*A034947(2*n+1)]`
-/

namespace A370896.P10304129325352669006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) * A034947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370896.P10304129325352669006

namespace A370896

/-- `∑[∏{p}[n+1, #]*A034947(2*n+1)]` -/
def P10304129325352669006.Spec : Prop :=
  ∀ n, P10304129325352669006.a n = A370896 (n + 1)

end A370896

/-! ## A370896.P14815855538010267273

`∑[A007947(n+1)/A101455(2*n+1)]`
-/

namespace A370896.P14815855538010267273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A101455 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370896.P14815855538010267273

namespace A370896

/-- `∑[A007947(n+1)/A101455(2*n+1)]` -/
def P14815855538010267273.Spec : Prop :=
  ∀ n, P14815855538010267273.a n = (A370896 (n + 1) : ℚ)

end A370896

/-!
# A370897: Partial alternating sums of the number of abelian groups sequence (A000688).

The programs for A370897, there is no canonical definition to state claims against.
-/

/-! ## A370897.P1613416043200545536

`∑[(-1)^n*A000688(n+1)]`
-/

namespace A370897.P1613416043200545536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370897.P1613416043200545536

/-! ## A370897.P7833233162973166350

`∑[A000688(n+1)*A033999(n)]`
-/

namespace A370897.P7833233162973166350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370897.P7833233162973166350

/-! ## A370897.P7615022508022980299

`∑[A000688(n+1)/A033999(n+2)]`
-/

namespace A370897.P7615022508022980299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000688 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370897.P7615022508022980299

/-! ## A370897.P11506422560027374127

`∑[A000688(n+1)*A057077(2*(n+2))]`
-/

namespace A370897.P11506422560027374127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A057077 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370897.P11506422560027374127

/-! ## A370897.P5790624073619444786

`∑[A000688(n+1)*A034947(2*n+5)]`
-/

namespace A370897.P5790624073619444786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A034947 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370897.P5790624073619444786

/-! ## A370897.P3832087839899548916

`∑[A000688(n+1)/A062157(3*(n+1))]`
-/

namespace A370897.P3832087839899548916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000688 (n + 1) : ℚ) / (A062157 (3 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370897.P3832087839899548916

/-!
# A370898: Partial alternating sums of the sum of unitary divisors function (A034448).

The programs for A370898, the canonical program `A370898.P6566907685410368332` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370898 has offset 1).

The definition of A370898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370898.P6566907685410368332

`∑[(-1)^n*A034448(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A370898

/-- `∑[(-1)^n*A034448(n+1)]` -/
def P6566907685410368332.Spec : Prop :=
  ∀ n, P6566907685410368332.a n = A370898 (n + 1)

theorem P6566907685410368332.correct : P6566907685410368332.Spec := by
  intro n
  simp only [A370898, Nat.add_sub_cancel]

end A370898

/-! ## A370898.P69932167760263829

`∑[A034448(n+1)/A033999(n)]`
-/

namespace A370898.P69932167760263829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370898.P69932167760263829

namespace A370898

/-- `∑[A034448(n+1)/A033999(n)]` -/
def P69932167760263829.Spec : Prop :=
  ∀ n, P69932167760263829.a n = (A370898 (n + 1) : ℚ)

end A370898

/-! ## A370898.P2416476010346221221

`∑[A034448(n+1)/A087960(2*n)]`
-/

namespace A370898.P2416476010346221221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A087960 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370898.P2416476010346221221

namespace A370898

/-- `∑[A034448(n+1)/A087960(2*n)]` -/
def P2416476010346221221.Spec : Prop :=
  ∀ n, P2416476010346221221.a n = (A370898 (n + 1) : ℚ)

end A370898

/-! ## A370898.P482830761999544648

`∑[A034448(n+1)*A057079(3*n)]`
-/

namespace A370898.P482830761999544648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) * A057079 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370898.P482830761999544648

namespace A370898

/-- `∑[A034448(n+1)*A057079(3*n)]` -/
def P482830761999544648.Spec : Prop :=
  ∀ n, P482830761999544648.a n = A370898 (n + 1)

end A370898

/-! ## A370898.P4686848651142979927

`∑[A034448(n+1)*A128834(3*n+1)]`
-/

namespace A370898.P4686848651142979927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) * A128834 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370898.P4686848651142979927

namespace A370898

/-- `∑[A034448(n+1)*A128834(3*n+1)]` -/
def P4686848651142979927.Spec : Prop :=
  ∀ n, P4686848651142979927.a n = A370898 (n + 1)

end A370898

/-!
# A370899: Partial alternating sums of the unitary totient function (A047994).

The programs for A370899, the canonical program `A370899.P10835421738952848629` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370899 has offset 1).

The definition of A370899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370899.P10835421738952848629

`∑[(-1)^n*A047994(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A370899

/-- `∑[(-1)^n*A047994(n+1)]` -/
def P10835421738952848629.Spec : Prop :=
  ∀ n, P10835421738952848629.a n = A370899 (n + 1)

theorem P10835421738952848629.correct : P10835421738952848629.Spec := by
  intro n
  simp only [A370899, Nat.add_sub_cancel]

end A370899

/-! ## A370899.P257256127149676954

`∑[A047994(n+1)/A033999(n)]`
-/

namespace A370899.P257256127149676954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370899.P257256127149676954

namespace A370899

/-- `∑[A047994(n+1)/A033999(n)]` -/
def P257256127149676954.Spec : Prop :=
  ∀ n, P257256127149676954.a n = (A370899 (n + 1) : ℚ)

end A370899

/-! ## A370899.P17935439357727253496

`∑[A047994(n+1)/A009001(2*n)]`
-/

namespace A370899.P17935439357727253496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A009001 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370899.P17935439357727253496

namespace A370899

/-- `∑[A047994(n+1)/A009001(2*n)]` -/
def P17935439357727253496.Spec : Prop :=
  ∀ n, P17935439357727253496.a n = (A370899 (n + 1) : ℚ)

end A370899

/-! ## A370899.P9942951027462419084

`∑[A047994(n+1)*A165326(n+1)]`
-/

namespace A370899.P9942951027462419084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) * A165326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370899.P9942951027462419084

namespace A370899

/-- `∑[A047994(n+1)*A165326(n+1)]` -/
def P9942951027462419084.Spec : Prop :=
  ∀ n, P9942951027462419084.a n = A370899 (n + 1)

end A370899

/-! ## A370899.P7624257364364579439

`∑[A047994(n+1)*A057077(2*n)]`
-/

namespace A370899.P7624257364364579439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370899.P7624257364364579439

namespace A370899

/-- `∑[A047994(n+1)*A057077(2*n)]` -/
def P7624257364364579439.Spec : Prop :=
  ∀ n, P7624257364364579439.a n = A370899 (n + 1)

end A370899

/-! ## A370899.P13139190164179044684

`∑[A047994(n+1)*A087960(2*n+3)]`
-/

namespace A370899.P13139190164179044684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) * A087960 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370899.P13139190164179044684

namespace A370899

/-- `∑[A047994(n+1)*A087960(2*n+3)]` -/
def P13139190164179044684.Spec : Prop :=
  ∀ n, P13139190164179044684.a n = A370899 (n + 1)

end A370899

/-! ## A370899.P3559205046309590894

`∑[A006519(2*n+5)*A047994(n+1)*A033999(n)]`
-/

namespace A370899.P3559205046309590894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 5) * A047994 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370899.P3559205046309590894

namespace A370899

/-- `∑[A006519(2*n+5)*A047994(n+1)*A033999(n)]` -/
def P3559205046309590894.Spec : Prop :=
  ∀ n, P3559205046309590894.a n = A370899 (n + 1)

end A370899

