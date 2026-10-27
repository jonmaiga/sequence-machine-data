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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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

/-!
# A043200: Numbers k such that 2 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043200, there is no canonical definition to state claims against.
-/

/-! ## A043200.P14844150399218496272

`A043980(n+1)-A283978(A276080(n))`
-/

namespace A043200.P14844150399218496272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043980 (n + 1) - A283978 (A276080 n).toNat

end

end A043200.P14844150399218496272

/-!
# A043201: Numbers k such that 3 and 4 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043201, there is no canonical definition to state claims against.
-/

/-! ## A043201.P13285455159314590526

`record[A025480(A043214(n+1))]`
-/

namespace A043201.P13285455159314590526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P13285455159314590526

/-! ## A043201.P4033013492476897359

`record[A001057(A043214(n+1)-1)]`
-/

namespace A043201.P4033013492476897359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043214 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043201.P4033013492476897359

/-! ## A043201.P7442809046950165923

`A037472(C(A043128(n+1), A333805(3*n+5)))`
-/

namespace A043201.P7442809046950165923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (Nat.choose (A043128 (n + 1)).toNat (A333805 (3 * n + 5)).toNat)

end

end A043201.P7442809046950165923

/-! ## A043201.P4591570345853277287

`A037472(A043128(n+1)%A217726(3*(n+1)))`
-/

namespace A043201.P4591570345853277287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (Int.tmod (A043128 (n + 1)) (A217726 (3 * (n + 1)))).toNat

end

end A043201.P4591570345853277287

/-!
# A043202: Numbers k such that 3 and 5 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043202, there is no canonical definition to state claims against.
-/

/-! ## A043202.P3765560474635136292

`A043982(n+1)-A184974(A161119(n))`
-/

namespace A043202.P3765560474635136292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043982 (n + 1) - A184974 (A161119 n).toNat

end

end A043202.P3765560474635136292

/-! ## A043202.P12800206941876740216

`A037477(C(A043171(n+1), 1-(∑{digits}[n, #]-n)))`
-/

namespace A043202.P12800206941876740216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A043171 (n + 1)).toNat (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))).toNat)

end

end A043202.P12800206941876740216

/-! ## A043202.P9376523831686270681

`A037477(A043171(n+1)*A147454(n+1))`
-/

namespace A043202.P9376523831686270681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043171 (n + 1) * A147454 (n + 1)).toNat

end

end A043202.P9376523831686270681

/-! ## A043202.P16044000138187054187

`A037477(A043171(n+1)%A086521(2*(n+3)))`
-/

namespace A043202.P16044000138187054187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043171 (n + 1)) (A086521 (2 * (n + 3)))).toNat

end

end A043202.P16044000138187054187

/-!
# A043203: Numbers k such that 3 and 6 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043203, there is no canonical definition to state claims against.
-/

/-! ## A043203.P8077126894467519428

`A037477(A043172(n+1))%A126094(n+4)`
-/

namespace A043203.P8077126894467519428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037477 (A043172 (n + 1)).toNat) (A126094 (n + 4))

end

end A043203.P8077126894467519428

/-! ## A043203.P900356693632762544

`A037475(A043148(n+1)%A255093(n+1))`
-/

namespace A043203.P900356693632762544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Int.tmod (A043148 (n + 1)) (A255093 (n + 1))).toNat

end

end A043203.P900356693632762544

/-! ## A043203.P10716141343488177532

`A037477(A043172(n+1)%A255093(n+1))`
-/

namespace A043203.P10716141343488177532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043172 (n + 1)) (A255093 (n + 1))).toNat

end

end A043203.P10716141343488177532

/-! ## A043203.P2842068364322904926

`A037475(A043148(n+1)^A124778(n))`
-/

namespace A043203.P2842068364322904926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043148 (n + 1) : ℚ) ^ (A124778 n : ℤ))).toNat

end

end A043203.P2842068364322904926

/-!
# A043204: Numbers k such that 3 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043204, there is no canonical definition to state claims against.
-/

/-! ## A043204.P4742388215501976314

`A043984(n+1)-A270417(A042645(n))`
-/

namespace A043204.P4742388215501976314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043984 (n + 1) - A270417 (A042645 n).toNat

end

end A043204.P4742388215501976314

/-! ## A043204.P17586898063964395466

`A037477(A043173(n+1)^A136400(n+2))`
-/

namespace A043204.P17586898063964395466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043173 (n + 1) : ℚ) ^ (A136400 (n + 2) : ℤ))).toNat

end

end A043204.P17586898063964395466

/-! ## A043204.P15579354200154138898

`A043984(A032551(n+2))`
-/

namespace A043204.P15579354200154138898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043984 (A032551 (n + 2)).toNat

end

end A043204.P15579354200154138898

/-!
# A043205: Numbers k such that 3 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043205, there is no canonical definition to state claims against.
-/

/-! ## A043205.P8893299559506068100

`A157271(A044321(n+1)-1)`
-/

namespace A043205.P8893299559506068100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A044321 (n + 1) - 1).toNat

end

end A043205.P8893299559506068100

/-! ## A043205.P4216127169635764096

`A157271(A043213(2*n+1))+4`
-/

namespace A043205.P4216127169635764096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A043213 (2 * n + 1)).toNat + 4

end

end A043205.P4216127169635764096

/-! ## A043205.P16305513223587833605

`A004526(A044321(n+1)^A107711(n))`
-/

namespace A043205.P16305513223587833605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A044321 (n + 1) : ℚ) ^ (A107711 n : ℤ))).toNat

end

end A043205.P16305513223587833605

/-! ## A043205.P10704455935999627251

`A004526(A107711(n)²²*A044321(n+1))`
-/

namespace A043205.P10704455935999627251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A107711 n ^ 2) ^ 2 * A044321 (n + 1)).toNat

end

end A043205.P10704455935999627251

/-! ## A043205.P11516588696728070845

`A004526(A044321(n+1)^A298444(n+1))`
-/

namespace A043205.P11516588696728070845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A044321 (n + 1) : ℚ) ^ (A298444 (n + 1) : ℤ))).toNat

end

end A043205.P11516588696728070845

/-!
# A043206: Numbers k such that 4 and 5 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043206, there is no canonical definition to state claims against.
-/

/-! ## A043206.P7647984679506949902

`A037477(A136400(n)!*A043174(n+1))`
-/

namespace A043206.P7647984679506949902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 ((Nat.factorial (A136400 n).toNat : ℤ) * A043174 (n + 1)).toNat

end

end A043206.P7647984679506949902

/-! ## A043206.P6891648046634466512

`A037477(A043174(n+1)^A136400(n)!)`
-/

namespace A043206.P6891648046634466512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043174 (n + 1) ^ Nat.factorial (A136400 n).toNat).toNat

end

end A043206.P6891648046634466512

/-! ## A043206.P12803568174654010749

`A037477(lcm(A136400(n)!, A043174(n+1)))`
-/

namespace A043206.P12803568174654010749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.lcm (Nat.factorial (A136400 n).toNat : ℤ) (A043174 (n + 1)))

end

end A043206.P12803568174654010749

/-! ## A043206.P1103799457417280239

`A037477(A043174(n+1)*A147454(n+1))`
-/

namespace A043206.P1103799457417280239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043174 (n + 1) * A147454 (n + 1)).toNat

end

end A043206.P1103799457417280239

/-! ## A043206.P18046675473139301096

`A037475(A043149(n+1)^A147454(n+1))`
-/

namespace A043206.P18046675473139301096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043149 (n + 1) : ℚ) ^ (A147454 (n + 1) : ℤ))).toNat

end

end A043206.P18046675473139301096

/-!
# A043207: Numbers k such that 4 and 6 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043207, there is no canonical definition to state claims against.
-/

/-! ## A043207.P3507230136374746593

`A037477(A043175(n+1)^A334184(n+1))`
-/

namespace A043207.P3507230136374746593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043175 (n + 1) : ℚ) ^ (A334184 (n + 1) : ℤ))).toNat

end

end A043207.P3507230136374746593

/-! ## A043207.P8604559775187986201

`A037475(C(A043150(n+1), A334184(n+1)))`
-/

namespace A043207.P8604559775187986201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Nat.choose (A043150 (n + 1)).toNat (A334184 (n + 1)).toNat)

end

end A043207.P8604559775187986201

/-! ## A043207.P18311093199266860201

`A037477(C(A043175(n+1), A334184(n+1)))`
-/

namespace A043207.P18311093199266860201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A043175 (n + 1)).toNat (A334184 (n + 1)).toNat)

end

end A043207.P18311093199266860201

/-! ## A043207.P10278034369475574181

`A037477(A043175(n+1)^A309932(n))`
-/

namespace A043207.P10278034369475574181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043175 (n + 1) : ℚ) ^ (A309932 n : ℤ))).toNat

end

end A043207.P10278034369475574181

/-! ## A043207.P16141482388068498195

`A043987(n+1)-A169778(A169764(n+1))`
-/

namespace A043207.P16141482388068498195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043987 (n + 1) - A169778 (A169764 (n + 1)).toNat

end

end A043207.P16141482388068498195

/-!
# A043208: Numbers k such that 4 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043208, there is no canonical definition to state claims against.
-/

/-! ## A043208.P11839307646568603792

`A043988(A032555(n+1))`
-/

namespace A043208.P11839307646568603792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043988 (A032555 (n + 1)).toNat

end

end A043208.P11839307646568603792

/-! ## A043208.P13266951112522882264

`A043988(A032559(n+1))`
-/

namespace A043208.P13266951112522882264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043988 (A032559 (n + 1)).toNat

end

end A043208.P13266951112522882264

/-! ## A043208.P6643969861350921127

`A043988(A077739(n+1))`
-/

namespace A043208.P6643969861350921127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043988 (A077739 (n + 1)).toNat

end

end A043208.P6643969861350921127

/-! ## A043208.P9794235215775562641

`A043988(A078213(n+1))`
-/

namespace A043208.P9794235215775562641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043988 (A078213 (n + 1)).toNat

end

end A043208.P9794235215775562641

/-! ## A043208.P15017543070351526144

`A043988(A082217(n+1))`
-/

namespace A043208.P15017543070351526144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043988 (A082217 (n + 1)).toNat

end

end A043208.P15017543070351526144

/-!
# A043209: Numbers k such that 4 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043209, there is no canonical definition to state claims against.
-/

/-! ## A043209.P12758945584416401511

`record[A028904(A043249(n+1))]`
-/

namespace A043209.P12758945584416401511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043209.P12758945584416401511

/-! ## A043209.P15845419610413464264

`A165878(A302680(n+1))+A028904(A043249(n+1))`
-/

namespace A043209.P15845419610413464264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165878 (A302680 (n + 1)).toNat + A028904 (A043249 (n + 1)).toNat

end

end A043209.P15845419610413464264

/-! ## A043209.P4427216926124635777

`A355820(A100735(n)+1)+A028904(A043249(n+1))`
-/

namespace A043209.P4427216926124635777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (A100735 n + 1).toNat + A028904 (A043249 (n + 1)).toNat

end

end A043209.P4427216926124635777

/-! ## A043209.P16869880596282011561

`gcd(A000038((n+5)^3), A028904(A043249(n+1)))`
-/

namespace A043209.P16869880596282011561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 ((n + 5) ^ 3)) (A028904 (A043249 (n + 1)).toNat)

end

end A043209.P16869880596282011561

/-! ## A043209.P2598547641929448284

`A165878(A165878(n+4))+A028904(A043249(n+1))`
-/

namespace A043209.P2598547641929448284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165878 (A165878 (n + 4)).toNat + A028904 (A043249 (n + 1)).toNat

end

end A043209.P2598547641929448284

/-!
# A043210: Numbers k such that 5 and 6 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043210, there is no canonical definition to state claims against.
-/

/-! ## A043210.P14019684292247847175

`A043990(n+1)-A181153(A084600(n))`
-/

namespace A043210.P14019684292247847175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043990 (n + 1) - A181153 (A084600 n).toNat

end

end A043210.P14019684292247847175

/-! ## A043210.P227009926427209790

`A043990(A062399(n)+1)`
-/

namespace A043210.P227009926427209790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043990 (A062399 n + 1).toNat

end

end A043210.P227009926427209790

/-! ## A043210.P11691286166813270041

`A043990(A351870(n)+1)`
-/

namespace A043210.P11691286166813270041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043990 (A351870 n + 1).toNat

end

end A043210.P11691286166813270041

/-! ## A043210.P12368780999679437961

`A043990(A271058(2^n+1))`
-/

namespace A043210.P12368780999679437961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043990 (A271058 (2 ^ n + 1)).toNat

end

end A043210.P12368780999679437961

/-! ## A043210.P3522214452164768082

`A043990(C(A132030(n+1), n))`
-/

namespace A043210.P3522214452164768082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043990 (Nat.choose (A132030 (n + 1)).toNat n)

end

end A043210.P3522214452164768082

/-!
# A043211: Numbers k such that 5 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043211, there is no canonical definition to state claims against.
-/

/-! ## A043211.P7412129457580008787

`A037477(A043178(n+1)^A212177(n+1))`
-/

namespace A043211.P7412129457580008787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043178 (n + 1) : ℚ) ^ (A212177 (n + 1) : ℤ))).toNat

end

end A043211.P7412129457580008787

/-! ## A043211.P17442506118589919996

`A043991(∑[A053501(n)])`
-/

namespace A043211.P17442506118589919996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043991 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A043211.P17442506118589919996

/-! ## A043211.P10949506903804121968

`A043991(A062399(n)+1)`
-/

namespace A043211.P10949506903804121968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043991 (A062399 n + 1).toNat

end

end A043211.P10949506903804121968

/-! ## A043211.P4355557623285346274

`A043991(A351870(n)+1)`
-/

namespace A043211.P4355557623285346274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043991 (A351870 n + 1).toNat

end

end A043211.P4355557623285346274

/-! ## A043211.P12935407450249110806

`A043991(A053501(n)+n)`
-/

namespace A043211.P12935407450249110806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043991 (A053501 n + (n : ℤ)).toNat

end

end A043211.P12935407450249110806

/-!
# A043212: Numbers k such that 5 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043212, there is no canonical definition to state claims against.
-/

/-! ## A043212.P5889606183503066915

`A043992(A062399(n)+1)`
-/

namespace A043212.P5889606183503066915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043992 (A062399 n + 1).toNat

end

end A043212.P5889606183503066915

/-! ## A043212.P3920982729052634100

`A043992(A351870(n)+1)`
-/

namespace A043212.P3920982729052634100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043992 (A351870 n + 1).toNat

end

end A043212.P3920982729052634100

/-! ## A043212.P12530046170640315458

`A043992(A000005(3^n))`
-/

namespace A043212.P12530046170640315458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043992 (A000005 (3 ^ n)).toNat

end

end A043212.P12530046170640315458

/-! ## A043212.P13968923541834065029

`A295181(∑[n+2])+A043992(n+1)`
-/

namespace A043212.P13968923541834065029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295181 (∑ j ∈ Finset.range (n + 1), f1 j) + A043992 (n + 1)

end

end A043212.P13968923541834065029

/-!
# A043213: Numbers k such that 6 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043213, there is no canonical definition to state claims against.
-/

/-! ## A043213.P10796394735107869593

`record[A028904(A043255(n+1))]`
-/

namespace A043213.P10796394735107869593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043213.P10796394735107869593

/-! ## A043213.P11686920428237430816

`A028904(A043255(n+1))%A198298(A005123(n+1))`
-/

namespace A043213.P11686920428237430816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028904 (A043255 (n + 1)).toNat) (A198298 (A005123 (n + 1)).toNat)

end

end A043213.P11686920428237430816

/-! ## A043213.P4484944407017027771

`A295662(A005935(3*n+5))+A028904(A043255(n+1))`
-/

namespace A043213.P4484944407017027771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (A005935 (3 * n + 5)).toNat + A028904 (A043255 (n + 1)).toNat

end

end A043213.P4484944407017027771

/-! ## A043213.P17091889099053388245

`A028904(A043255(n+1))%A005935(A063834(n))`
-/

namespace A043213.P17091889099053388245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028904 (A043255 (n + 1)).toNat) (A005935 (A063834 n).toNat)

end

end A043213.P17091889099053388245

/-! ## A043213.P10178856472152444473

`A028904(A043255(n+1))*A105899(A349981(n+1))`
-/

namespace A043213.P10178856472152444473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043255 (n + 1)).toNat * A105899 (A349981 (n + 1)).toNat

end

end A043213.P10178856472152444473

/-!
# A043214: Numbers k such that 6 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043214, there is no canonical definition to state claims against.
-/

/-! ## A043214.P1468222052088073367

`A043994(n+1)%A095473(n)²`
-/

namespace A043214.P1468222052088073367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043994 (n + 1)) (A095473 n ^ 2)

end

end A043214.P1468222052088073367

/-! ## A043214.P11216515909623305038

`A043994(n+1)^A120043(n)!`
-/

namespace A043214.P11216515909623305038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043994 (n + 1) ^ Nat.factorial (A120043 n).toNat

end

end A043214.P11216515909623305038

/-! ## A043214.P9341360966092983379

`A043994(n+1)+A000007(A077998(n))`
-/

namespace A043214.P9341360966092983379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043994 (n + 1) + A000007 (A077998 n).toNat

end

end A043214.P9341360966092983379

/-! ## A043214.P7227234300392074179

`A043994(n+1)+A000122(A201718(n+1))`
-/

namespace A043214.P7227234300392074179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043994 (n + 1) + A000122 (A201718 (n + 1)).toNat

end

end A043214.P7227234300392074179

/-! ## A043214.P13935633745623402674

`A340599(A002046(n+1))+A043994(n+1)`
-/

namespace A043214.P13935633745623402674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (A002046 (n + 1)).toNat + A043994 (n + 1)

end

end A043214.P13935633745623402674

/-!
# A043215: Numbers k such that 7 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043215, there is no canonical definition to state claims against.
-/

/-! ## A043215.P10299822945525750004

`A043485(8*A187829(n+1))`
-/

namespace A043215.P10299822945525750004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043485 (8 * A187829 (n + 1)).toNat

end

end A043215.P10299822945525750004

/-!
# A043216: Numbers k such that 0 and 1 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043216, there is no canonical definition to state claims against.
-/

/-! ## A043216.P1772231478285736272

`A007095(A043180(n+1)%p?[A083074(n)])`
-/

namespace A043216.P1772231478285736272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043180 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A043216.P1772231478285736272

/-! ## A043216.P13740054264026126965

`A007095(A043180(n+1))%A059118(n+1)`
-/

namespace A043216.P13740054264026126965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043180 (n + 1)).toNat) (A059118 (n + 1))

end

end A043216.P13740054264026126965

/-! ## A043216.P1343307151296133724

`A007095(A043180(n+1))*A147159(A147159(n+1))`
-/

namespace A043216.P1343307151296133724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043180 (n + 1)).toNat * A147159 (A147159 (n + 1)).toNat

end

end A043216.P1343307151296133724

/-! ## A043216.P6386345678145139165

`A007095(gcd(37, A043461(n+1))*A043180(n+1))`
-/

namespace A043216.P6386345678145139165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((Int.gcd 37 (A043461 (n + 1)) : ℤ) * A043180 (n + 1)).toNat

end

end A043216.P6386345678145139165

/-! ## A043216.P5807101537363406303

`A007095(A043180(n+1))*A101279(A038279(n))`
-/

namespace A043216.P5807101537363406303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043180 (n + 1)).toNat * A101279 (A038279 n).toNat

end

end A043216.P5807101537363406303

/-!
# A043217: Numbers k such that 0 and 2 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043217, there is no canonical definition to state claims against.
-/

/-! ## A043217.P18401751939969353441

`∩[A043221(n+1), A008588(n)]/3`
-/

namespace A043217.P18401751939969353441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A043217.P18401751939969353441

/-! ## A043217.P15950341773015511916

`record[A078898(A004396(A043221(n+1)))]`
-/

namespace A043217.P15950341773015511916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A004396 (A043221 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043217.P15950341773015511916

/-! ## A043217.P7720549493827881097

`record[A235049(A043218(n+1))-C(n, 33)]`
-/

namespace A043217.P7720549493827881097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043218 (n + 1)).toNat - (Nat.choose n 33 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043217.P7720549493827881097

/-! ## A043217.P1395015710843357549

`A007095(A043181(n+1)^A153683(n+1))`
-/

namespace A043217.P1395015710843357549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043181 (n + 1) : ℚ) ^ (A153683 (n + 1) : ℤ))).toNat

end

end A043217.P1395015710843357549

/-! ## A043217.P1155318998718211927

`A037479(A043181(n+1)^A153683(n+1))`
-/

namespace A043217.P1155318998718211927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (SequenceMachineLib.roundAway ((A043181 (n + 1) : ℚ) ^ (A153683 (n + 1) : ℤ))).toNat

end

end A043217.P1155318998718211927

/-!
# A043218: Numbers k such that 0 and 3 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043218, there is no canonical definition to state claims against.
-/

/-! ## A043218.P17353183816698386138

`A007095(A043182(n+1)^A278657(n))`
-/

namespace A043218.P17353183816698386138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043182 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A043218.P17353183816698386138

/-! ## A043218.P15993895523254845068

`A007095(C(A043182(n+1), A278657(n)))`
-/

namespace A043218.P15993895523254845068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043182 (n + 1)).toNat (A278657 n).toNat)

end

end A043218.P15993895523254845068

/-! ## A043218.P7455792458731493286

`A007095(A278657(n)²*A043182(n+1))`
-/

namespace A043218.P7455792458731493286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A278657 n ^ 2 * A043182 (n + 1)).toNat

end

end A043218.P7455792458731493286

/-! ## A043218.P9760258207134283032

`record[A015586(n)*A235049(A043219(n+1))]`
-/

namespace A043218.P9760258207134283032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015586 n * A235049 (A043219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043218.P9760258207134283032

/-! ## A043218.P7387521873627695462

`record[A016272(n)*A235049(A043219(n+1))]`
-/

namespace A043218.P7387521873627695462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 n * A235049 (A043219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043218.P7387521873627695462

/-!
# A043219: Numbers k such that 0 and 4 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043219, there is no canonical definition to state claims against.
-/

/-! ## A043219.P6863034302087188260

`A007095(A043183(n+1)^A153683(n+1))`
-/

namespace A043219.P6863034302087188260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043183 (n + 1) : ℚ) ^ (A153683 (n + 1) : ℤ))).toNat

end

end A043219.P6863034302087188260

/-! ## A043219.P12209195809243589460

`A007095(A043183(n+1)%A090943(n+1))`
-/

namespace A043219.P12209195809243589460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043183 (n + 1)) (A090943 (n + 1))).toNat

end

end A043219.P12209195809243589460

/-! ## A043219.P12339485045903455867

`A007095(A043183(n+1))%A007792(n+2)`
-/

namespace A043219.P12339485045903455867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043183 (n + 1)).toNat) (A007792 (n + 2))

end

end A043219.P12339485045903455867

/-! ## A043219.P10359820501993153949

`A007095(C(A043183(n+1), A153683(n+1)))`
-/

namespace A043219.P10359820501993153949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043183 (n + 1)).toNat (A153683 (n + 1)).toNat)

end

end A043219.P10359820501993153949

/-!
# A043220: Numbers k such that 0 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043220, there is no canonical definition to state claims against.
-/

/-! ## A043220.P15790742435247742344

`A007095(A043184(n+1)^A278657(n))`
-/

namespace A043220.P15790742435247742344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043184 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A043220.P15790742435247742344

/-! ## A043220.P6265834430997875208

`A007095(C(A043184(n+1), A278657(n)))`
-/

namespace A043220.P6265834430997875208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043184 (n + 1)).toNat (A278657 n).toNat)

end

end A043220.P6265834430997875208

/-! ## A043220.P1315657269914363066

`A007095(A278657(n)²*A043184(n+1))`
-/

namespace A043220.P1315657269914363066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A278657 n ^ 2 * A043184 (n + 1)).toNat

end

end A043220.P1315657269914363066

/-! ## A043220.P13768105683157228939

`A154269(A138669(n+1))+A007095(A043184(n+1))`
-/

namespace A043220.P13768105683157228939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A138669 (n + 1)).toNat + A007095 (A043184 (n + 1)).toNat

end

end A043220.P13768105683157228939

/-! ## A043220.P1289460123338728426

`A007093(A043135(n+1)%A031583(3*n+4))`
-/

namespace A043220.P1289460123338728426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A043135 (n + 1)) (A031583 (3 * n + 4))).toNat

end

end A043220.P1289460123338728426

/-!
# A043221: Numbers k such that 0 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043221, there is no canonical definition to state claims against.
-/

/-! ## A043221.P6158773120493637358

`record[A235049(A185255(n)+A043222(n+1))]`
-/

namespace A043221.P6158773120493637358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A185255 n + A043222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P6158773120493637358

/-! ## A043221.P10225337854270429445

`record[A235049(A043222(n+1))+A185284(n)]`
-/

namespace A043221.P10225337854270429445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043222 (n + 1)).toNat + A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P10225337854270429445

/-! ## A043221.P225999228874957040

`record[A014560(n)*A235049(A043222(n+1))]`
-/

namespace A043221.P225999228874957040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 n * A235049 (A043222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P225999228874957040

/-! ## A043221.P9529517133590966522

`record[A235049(A043222(n+1)%A075954(n))]`
-/

namespace A043221.P9529517133590966522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (Int.tmod (A043222 (n + 1)) (A075954 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P9529517133590966522

/-! ## A043221.P3727714197145502504

`record[A235049(A043222(n+1))-A034549(n+1)]`
-/

namespace A043221.P3727714197145502504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043222 (n + 1)).toNat - A034549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043221.P3727714197145502504

/-!
# A043222: Numbers k such that 0 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043222, there is no canonical definition to state claims against.
-/

/-! ## A043222.P1001693989475076094

`record[A235049(A043223(n+1))+A185284(n)]`
-/

namespace A043222.P1001693989475076094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043223 (n + 1)).toNat + A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P1001693989475076094

/-! ## A043222.P13630697442866086855

`record[A014560(n)*A235049(A043223(n+1))]`
-/

namespace A043222.P13630697442866086855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 n * A235049 (A043223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P13630697442866086855

/-! ## A043222.P5711300953851788905

`record[A235049(A043223(n+1)%A075954(n))]`
-/

namespace A043222.P5711300953851788905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (Int.tmod (A043223 (n + 1)) (A075954 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P5711300953851788905

/-! ## A043222.P6501718813469185798

`record[A235049(A043223(n+1))-A034549(n+1)]`
-/

namespace A043222.P6501718813469185798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043223 (n + 1)).toNat - A034549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P6501718813469185798

/-! ## A043222.P4673291278016519158

`record[A235049(A043223(n+1))-A034553(n+1)]`
-/

namespace A043222.P4673291278016519158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A043223 (n + 1)).toNat - A034553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043222.P4673291278016519158

/-!
# A043223: Numbers k such that 0 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043223, there is no canonical definition to state claims against.
-/

/-! ## A043223.P4466437136500986081

`A007095(∑[A015161(n)]*A043187(n+1))`
-/

namespace A043223.P4466437136500986081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((∑ j ∈ Finset.range (n + 1), f1 j) * A043187 (n + 1)).toNat

end

end A043223.P4466437136500986081

/-! ## A043223.P9294611636846417554

`A007095(A043187(n+1)^A153683(n+1))`
-/

namespace A043223.P9294611636846417554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043187 (n + 1) : ℚ) ^ (A153683 (n + 1) : ℤ))).toNat

end

end A043223.P9294611636846417554

/-! ## A043223.P2120898716434784760

`A007095(A043187(n+1))%A285004(n+2)`
-/

namespace A043223.P2120898716434784760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043187 (n + 1)).toNat) (A285004 (n + 2))

end

end A043223.P2120898716434784760

/-!
# A043225: Numbers k such that 1 and 2 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043225, there is no canonical definition to state claims against.
-/

/-! ## A043225.P404312506953749672

`A007095(A043188(n+1)%A159625(n+1))`
-/

namespace A043225.P404312506953749672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043188 (n + 1)) (A159625 (n + 1))).toNat

end

end A043225.P404312506953749672

/-! ## A043225.P15114357084877009186

`A007095(A043188(n+1))%A001125(A001115(n))`
-/

namespace A043225.P15114357084877009186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043188 (n + 1)).toNat) (A001125 (A001115 n).toNat)

end

end A043225.P15114357084877009186

/-! ## A043225.P5054859589298537985

`A007094(A043159(n+1)%A331561(3*(n+5)))`
-/

namespace A043225.P5054859589298537985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043159 (n + 1)) (A331561 (3 * (n + 5)))).toNat

end

end A043225.P5054859589298537985

/-! ## A043225.P16008485472921715896

`A007094(A043159(n+1))%A068150(n+4)`
-/

namespace A043225.P16008485472921715896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A043159 (n + 1)).toNat) (A068150 (n + 4))

end

end A043225.P16008485472921715896

/-! ## A043225.P5865043989040982899

`A007095(A043188(n+1))^A014963(A106458(2*n))`
-/

namespace A043225.P5865043989040982899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (A043188 (n + 1)).toNat : ℚ) ^ (A014963 (A106458 (2 * n)).toNat : ℤ)

end

end A043225.P5865043989040982899

/-!
# A043226: Numbers k such that 1 and 3 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043226, there is no canonical definition to state claims against.
-/

/-! ## A043226.P5530611684834117025

`A007095(A043189(n+1)%A054680(n+2))`
-/

namespace A043226.P5530611684834117025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043189 (n + 1)) (A054680 (n + 2))).toNat

end

end A043226.P5530611684834117025

/-! ## A043226.P9778877692896845891

`A007095(A043189(n+1))%A258287(n+3)`
-/

namespace A043226.P9778877692896845891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043189 (n + 1)).toNat) (A258287 (n + 3 + 17))

end

end A043226.P9778877692896845891

/-! ## A043226.P6867292617430133468

`A007094(A043160(n+1)%A091100(n+1))`
-/

namespace A043226.P6867292617430133468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043160 (n + 1)) (A091100 (n + 1))).toNat

end

end A043226.P6867292617430133468

/-! ## A043226.P9175464908126934392

`A037479(A043189(n+1))%A091100(n+1)`
-/

namespace A043226.P9175464908126934392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037479 (A043189 (n + 1)).toNat) (A091100 (n + 1))

end

end A043226.P9175464908126934392

/-! ## A043226.P3567956939334330235

`A007094(A043160(n+1))%A250234(n+1)`
-/

namespace A043226.P3567956939334330235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A043160 (n + 1)).toNat) (A250234 (n + 1))

end

end A043226.P3567956939334330235

/-!
# A043227: Numbers k such that 1 and 4 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043227, there is no canonical definition to state claims against.
-/

/-! ## A043227.P13894625442236693232

`A007095(A043190(n+1)%A186483(n+1))`
-/

namespace A043227.P13894625442236693232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043190 (n + 1)) (A186483 (n + 1))).toNat

end

end A043227.P13894625442236693232

/-! ## A043227.P17531873314462733256

`A007095(A043190(n+1))%A023082(A296562(n+1))`
-/

namespace A043227.P17531873314462733256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043190 (n + 1)).toNat) (A023082 (A296562 (n + 1)).toNat)

end

end A043227.P17531873314462733256

/-! ## A043227.P13262205642014187675

`A007093(A043139(n+1)%A262514(2*(n+2)))`
-/

namespace A043227.P13262205642014187675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A043139 (n + 1)) (A262514 (2 * (n + 2)))).toNat

end

end A043227.P13262205642014187675

/-!
# A043228: Numbers k such that 1 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043228, there is no canonical definition to state claims against.
-/

/-! ## A043228.P14721309030672471459

`A007095(A043191(n+1)%A134595(n))`
-/

namespace A043228.P14721309030672471459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043191 (n + 1)) (A134595 n)).toNat

end

end A043228.P14721309030672471459

/-! ## A043228.P8273448603919514526

`A007095(A043191(n+1)^A152846(3*n))`
-/

namespace A043228.P8273448603919514526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043191 (n + 1) : ℚ) ^ (A152846 (3 * n) : ℤ))).toNat

end

end A043228.P8273448603919514526

/-! ## A043228.P17557007241839422668

`A007094(A043162(n+1)%A317628(n+1))`
-/

namespace A043228.P17557007241839422668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043162 (n + 1)) (A317628 (n + 1))).toNat

end

end A043228.P17557007241839422668

/-! ## A043228.P5327497234770486017

`A007095(A043191(n+1))%A317628(n+1)`
-/

namespace A043228.P5327497234770486017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043191 (n + 1)).toNat) (A317628 (n + 1))

end

end A043228.P5327497234770486017

/-! ## A043228.P12793300802743209517

`A007094(A043162(n+1))%A134595(n+2)`
-/

namespace A043228.P12793300802743209517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A043162 (n + 1)).toNat) (A134595 (n + 2))

end

end A043228.P12793300802743209517

/-!
# A043229: Numbers k such that 1 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043229, there is no canonical definition to state claims against.
-/

/-! ## A043229.P4288473084593004516

`A007095(A043192(n+1)%A159625(n+1))`
-/

namespace A043229.P4288473084593004516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043192 (n + 1)) (A159625 (n + 1))).toNat

end

end A043229.P4288473084593004516

/-! ## A043229.P3492020306850749355

`A007095(A043192(n+1))%A306308(n+1)`
-/

namespace A043229.P3492020306850749355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043192 (n + 1)).toNat) (A306308 (n + 1))

end

end A043229.P3492020306850749355

/-! ## A043229.P17809875118661606878

`A007095(A043192(n+1))+A000007(A161831(n+1))`
-/

namespace A043229.P17809875118661606878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043192 (n + 1)).toNat + A000007 (A161831 (n + 1)).toNat

end

end A043229.P17809875118661606878

/-! ## A043229.P10406687483684444311

`A007095(A043192(n+1)%A075978(n))`
-/

namespace A043229.P10406687483684444311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043192 (n + 1)) (A075978 n)).toNat

end

end A043229.P10406687483684444311

/-!
# A043230: Numbers k such that 1 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043230, there is no canonical definition to state claims against.
-/

/-! ## A043230.P7201169409322057625

`A007095(A043193(n+1))%A023082(A296562(n+1))`
-/

namespace A043230.P7201169409322057625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043193 (n + 1)).toNat) (A023082 (A296562 (n + 1)).toNat)

end

end A043230.P7201169409322057625

/-! ## A043230.P7861966958123973683

`A007095(A043193(n+1)%A046410(n+1))`
-/

namespace A043230.P7861966958123973683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043193 (n + 1)) (A046410 (n + 1))).toNat

end

end A043230.P7861966958123973683

/-! ## A043230.P4267140060498229180

`A007094(A043164(n+1)^A262438(n))`
-/

namespace A043230.P4267140060498229180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A043164 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043230.P4267140060498229180

/-! ## A043230.P13037882709507573010

`A007095(A043193(n+1)^A262438(n))`
-/

namespace A043230.P13037882709507573010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043193 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043230.P13037882709507573010

/-! ## A043230.P15274036630607523688

`A007094(C(A043164(n+1), A262438(n)))`
-/

namespace A043230.P15274036630607523688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Nat.choose (A043164 (n + 1)).toNat (A262438 n).toNat)

end

end A043230.P15274036630607523688

/-!
# A043231: Numbers k such that 1 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043231, there is no canonical definition to state claims against.
-/

/-! ## A043231.P9935470422764990331

`A007095(A043194(n+1))%A119209(n+8)`
-/

namespace A043231.P9935470422764990331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043194 (n + 1)).toNat) (A119209 (n + 8))

end

end A043231.P9935470422764990331

/-! ## A043231.P7276113488286915680

`A001222(A072828(n+1))*A007095(A043194(n+1))`
-/

namespace A043231.P7276113488286915680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072828 (n + 1)).toNat * A007095 (A043194 (n + 1)).toNat

end

end A043231.P7276113488286915680

/-! ## A043231.P10818084082142077946

`A007095(A043194(n+1)^A271831(n))`
-/

namespace A043231.P10818084082142077946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043194 (n + 1) : ℚ) ^ (A271831 n : ℤ))).toNat

end

end A043231.P10818084082142077946

/-! ## A043231.P2215674579455551191

`A007095(A043194(n+1)^A031226(3*(n+1)))`
-/

namespace A043231.P2215674579455551191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043194 (n + 1) : ℚ) ^ (A031226 (3 * (n + 1)) : ℤ))).toNat

end

end A043231.P2215674579455551191

/-!
# A043232: Numbers k such that 1 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043232, there is no canonical definition to state claims against.
-/

/-! ## A043232.P1446977018478196139

`or(A001222(A061860(2*n)), A061877(2*(n+1)))`
-/

namespace A043232.P1446977018478196139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A061860 (2 * n)).toNat) (A061877 (2 * (n + 1)))

end

end A043232.P1446977018478196139

/-!
# A043233: Numbers k such that 2 and 3 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043233, there is no canonical definition to state claims against.
-/

/-! ## A043233.P18225797078884757594

`A007095(A043195(n+1)%A134595(n))`
-/

namespace A043233.P18225797078884757594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043195 (n + 1)) (A134595 n)).toNat

end

end A043233.P18225797078884757594

/-! ## A043233.P3956847299406662565

`A007095(or(A043195(n+1), A091536(n)))`
-/

namespace A043233.P3956847299406662565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.lor (A043195 (n + 1)) (A091536 n)).toNat

end

end A043233.P3956847299406662565

/-! ## A043233.P17298713896532160278

`A007095(A043195(n+1)+n*A091536(n))`
-/

namespace A043233.P17298713896532160278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043195 (n + 1) + (n : ℤ) * A091536 n).toNat

end

end A043233.P17298713896532160278

/-! ## A043233.P8311568026111221442

`A007094(A043165(n+1))-A122840(A043025(n+3))`
-/

namespace A043233.P8311568026111221442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043165 (n + 1)).toNat - A122840 (A043025 (n + 3)).toNat

end

end A043233.P8311568026111221442

/-!
# A043234: Numbers k such that 2 and 4 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043234, there is no canonical definition to state claims against.
-/

/-! ## A043234.P13612621496144709679

`A007094(A043166(n+1)%A089315(n))`
-/

namespace A043234.P13612621496144709679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043166 (n + 1)) (A089315 n)).toNat

end

end A043234.P13612621496144709679

/-! ## A043234.P7069950285513802110

`A007095(A043196(n+1))+A000122(A022410(n))`
-/

namespace A043234.P7069950285513802110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043196 (n + 1)).toNat + A000122 (A022410 n).toNat

end

end A043234.P7069950285513802110

/-! ## A043234.P927544736527530318

`A007094(A043166(n+1))^A014963(A039352(n+1))`
-/

namespace A043234.P927544736527530318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007094 (A043166 (n + 1)).toNat : ℚ) ^ (A014963 (A039352 (n + 1)).toNat : ℤ)

end

end A043234.P927544736527530318

/-! ## A043234.P16829187616469468970

`A007094(A043166(n+1))+A008683(A102650(n))`
-/

namespace A043234.P16829187616469468970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043166 (n + 1)).toNat + A008683 (A102650 n).toNat

end

end A043234.P16829187616469468970

/-!
# A043235: Numbers k such that 2 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043235, there is no canonical definition to state claims against.
-/

/-! ## A043235.P13360625088374637144

`A007094(A043167(n+1)%A202292(n))`
-/

namespace A043235.P13360625088374637144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043167 (n + 1)) (A202292 n)).toNat

end

end A043235.P13360625088374637144

/-! ## A043235.P13321086338324204794

`A007095(A043197(n+1)%A202292(n))`
-/

namespace A043235.P13321086338324204794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043197 (n + 1)) (A202292 n)).toNat

end

end A043235.P13321086338324204794

/-! ## A043235.P17863157427020735579

`A294927(A011782(n))+A007094(A043167(n+1))`
-/

namespace A043235.P17863157427020735579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (A011782 n).toNat + A007094 (A043167 (n + 1)).toNat

end

end A043235.P17863157427020735579

/-! ## A043235.P474107986943039552

`A294927(A011782(n))+A007095(A043197(n+1))`
-/

namespace A043235.P474107986943039552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (A011782 n).toNat + A007095 (A043197 (n + 1)).toNat

end

end A043235.P474107986943039552

/-! ## A043235.P2210810573089145471

`A001221(A308838(n+1))*A007094(A043167(n+1))`
-/

namespace A043235.P2210810573089145471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A308838 (n + 1)).toNat * A007094 (A043167 (n + 1)).toNat

end

end A043235.P2210810573089145471

/-!
# A043236: Numbers k such that 2 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043236, there is no canonical definition to state claims against.
-/

/-! ## A043236.P9036627131918584906

`A007095(A043198(n+1)%A211240(n+1))`
-/

namespace A043236.P9036627131918584906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043198 (n + 1)) (A211240 (n + 1))).toNat

end

end A043236.P9036627131918584906

/-! ## A043236.P2493687724422036041

`A007095(A043198(n+1))%A043198(A296562(n+1))`
-/

namespace A043236.P2493687724422036041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043198 (n + 1)).toNat) (A043198 (A296562 (n + 1)).toNat)

end

end A043236.P2493687724422036041

/-! ## A043236.P12752696793754378120

`A001221(A016116(2*n))!*A007095(A043198(n+1))`
-/

namespace A043236.P12752696793754378120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001221 (A016116 (2 * n)).toNat).toNat : ℤ) * A007095 (A043198 (n + 1)).toNat

end

end A043236.P12752696793754378120

/-! ## A043236.P7512734656832825607

`A007094(A043168(n+1)^A262438(n))`
-/

namespace A043236.P7512734656832825607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A043168 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043236.P7512734656832825607

/-! ## A043236.P5044910658163308205

`A007095(A043198(n+1)^A262438(n))`
-/

namespace A043236.P5044910658163308205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043198 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043236.P5044910658163308205

/-!
# A043237: Numbers k such that 2 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043237, there is no canonical definition to state claims against.
-/

/-! ## A043237.P5713150837329517942

`A007095(A043199(n+1)%A235210(n+1))`
-/

namespace A043237.P5713150837329517942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043199 (n + 1)) (A235210 (n + 1))).toNat

end

end A043237.P5713150837329517942

/-! ## A043237.P6959757001186968382

`A007095(A043199(n+1))+A000007(A326114(n))`
-/

namespace A043237.P6959757001186968382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043199 (n + 1)).toNat + A000007 (A326114 n).toNat

end

end A043237.P6959757001186968382

/-! ## A043237.P5741333438898463285

`A007094(A043169(n+1)%A233031(3*(n+1)))`
-/

namespace A043237.P5741333438898463285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043169 (n + 1)) (A233031 (3 * (n + 1)))).toNat

end

end A043237.P5741333438898463285

/-! ## A043237.P7039844810857275229

`A007094(A043169(n+1))%A343339(3*(n+1))`
-/

namespace A043237.P7039844810857275229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A043169 (n + 1)).toNat) (A343339 (3 * (n + 1)))

end

end A043237.P7039844810857275229

/-!
# A043238: Numbers k such that 2 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043238, there is no canonical definition to state claims against.
-/

/-! ## A043238.P15434417817186951741

`A007095(A043200(n+1)^A152846(3*n))`
-/

namespace A043238.P15434417817186951741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043200 (n + 1) : ℚ) ^ (A152846 (3 * n) : ℤ))).toNat

end

end A043238.P15434417817186951741

/-! ## A043238.P13702982174845289100

`A007095(A043200(n+1)%A055160(n+1))`
-/

namespace A043238.P13702982174845289100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043200 (n + 1)) (A055160 (n + 1))).toNat

end

end A043238.P13702982174845289100

/-! ## A043238.P13822347871056170766

`A007095(A043200(n+1))%A223936(n+3)`
-/

namespace A043238.P13822347871056170766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043200 (n + 1)).toNat) (A223936 (n + 3))

end

end A043238.P13822347871056170766

/-! ## A043238.P10547450837764869382

`A007095(A043200(n+1))*A147112(A147112(n+1))`
-/

namespace A043238.P10547450837764869382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043200 (n + 1)).toNat * A147112 (A147112 (n + 1)).toNat

end

end A043238.P10547450837764869382

/-! ## A043238.P12515641254436978684

`A007095(A043200(n+1))*A147502(A147502(n+1)²)`
-/

namespace A043238.P12515641254436978684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043200 (n + 1)).toNat * A147502 (A147502 (n + 1) ^ 2).toNat

end

end A043238.P12515641254436978684

/-!
# A043239: Numbers k such that 2 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043239, there is no canonical definition to state claims against.
-/

/-! ## A043239.P1597899034152162269

`A044019(A330929(n+1))`
-/

namespace A043239.P1597899034152162269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044019 (A330929 (n + 1)).toNat

end

end A043239.P1597899034152162269

/-!
# A043240: Numbers k such that 3 and 4 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043240, there is no canonical definition to state claims against.
-/

/-! ## A043240.P2301196649517524725

`A007095(A043201(n+1)^A278657(n))`
-/

namespace A043240.P2301196649517524725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043201 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A043240.P2301196649517524725

/-! ## A043240.P12157786500205473288

`A007095(C(A043201(n+1), A278657(n)))`
-/

namespace A043240.P12157786500205473288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043201 (n + 1)).toNat (A278657 n).toNat)

end

end A043240.P12157786500205473288

/-! ## A043240.P3605303925108345255

`A007095(A278657(n)²*A043201(n+1))`
-/

namespace A043240.P3605303925108345255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A278657 n ^ 2 * A043201 (n + 1)).toNat

end

end A043240.P3605303925108345255

/-!
# A043241: Numbers k such that 3 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043241, there is no canonical definition to state claims against.
-/

/-! ## A043241.P17756339477831739907

`A007095(A043202(n+1))%A031986(A004639(n+1))`
-/

namespace A043241.P17756339477831739907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043202 (n + 1)).toNat) (A031986 (A004639 (n + 1)).toNat)

end

end A043241.P17756339477831739907

/-! ## A043241.P5686921463618271243

`A007095(A043202(n+1)%A003828(n+4))`
-/

namespace A043241.P5686921463618271243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043202 (n + 1)) (A003828 (n + 4))).toNat

end

end A043241.P5686921463618271243

/-! ## A043241.P16541849904496679782

`A007094(A043171(n+1))+A000007(A210697(n+1))`
-/

namespace A043241.P16541849904496679782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043171 (n + 1)).toNat + A000007 (A210697 (n + 1)).toNat

end

end A043241.P16541849904496679782

/-! ## A043241.P9237847903149553394

`A007094(A043171(n+1))^A014963(A043439(n+1))`
-/

namespace A043241.P9237847903149553394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007094 (A043171 (n + 1)).toNat : ℚ) ^ (A014963 (A043439 (n + 1)).toNat : ℤ)

end

end A043241.P9237847903149553394

/-! ## A043241.P9184741949518653895

`A007093(A043147(n+1)^(∑{digits}[n, 10^#]%9))`
-/

namespace A043241.P9184741949518653895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A043147 (n + 1) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9)).toNat

end

end A043241.P9184741949518653895

/-!
# A043242: Numbers k such that 3 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043242, there is no canonical definition to state claims against.
-/

/-! ## A043242.P3782974865608317173

`A007095(A043203(n+1)%A352316(2*n+1))`
-/

namespace A043242.P3782974865608317173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043203 (n + 1)) (A352316 (2 * n + 1))).toNat

end

end A043242.P3782974865608317173

/-! ## A043242.P6116675826371556567

`A007095(A043203(n+1)^(val(∏{p}[n+1, #], 17)+1))`
-/

namespace A043242.P6116675826371556567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043203 (n + 1) ^ (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 17 + 1)).toNat

end

end A043242.P6116675826371556567

/-! ## A043242.P3302860187008159797

`A007094(A043172(n+1)%A179170(n+1))`
-/

namespace A043242.P3302860187008159797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043172 (n + 1)) (A179170 (n + 1))).toNat

end

end A043242.P3302860187008159797

/-! ## A043242.P162716311932340824

`A007095(A043203(n+1)%A179170(n+1))`
-/

namespace A043242.P162716311932340824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043203 (n + 1)) (A179170 (n + 1))).toNat

end

end A043242.P162716311932340824

/-!
# A043243: Numbers k such that 3 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043243, there is no canonical definition to state claims against.
-/

/-! ## A043243.P7622327915457363301

`A007095(A043204(n+1)%A134595(n))`
-/

namespace A043243.P7622327915457363301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043204 (n + 1)) (A134595 n)).toNat

end

end A043243.P7622327915457363301

/-! ## A043243.P1212583436030884575

`A037479(A043204(n+1))%A039392(A004639(n+1))`
-/

namespace A043243.P1212583436030884575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037479 (A043204 (n + 1)).toNat) (A039392 (A004639 (n + 1)).toNat)

end

end A043243.P1212583436030884575

/-! ## A043243.P5608053366487522280

`A007094(A043173(n+1))+A008683(A020707(n))`
-/

namespace A043243.P5608053366487522280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043173 (n + 1)).toNat + A008683 (A020707 n).toNat

end

end A043243.P5608053366487522280

/-! ## A043243.P11898865270091713670

`A007095(A043204(n+1)^A067284(n))`
-/

namespace A043243.P11898865270091713670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043204 (n + 1) : ℚ) ^ (A067284 n : ℤ))).toNat

end

end A043243.P11898865270091713670

/-!
# A043244: Numbers k such that 3 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043244, there is no canonical definition to state claims against.
-/

/-! ## A043244.P390093857602782109

`A007095(A043205(n+1))%A201153(n+1)`
-/

namespace A043244.P390093857602782109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043205 (n + 1)).toNat) (A201153 (n + 1))

end

end A043244.P390093857602782109

/-! ## A043244.P2030455213039516857

`A007095(A043205(n+1)%A165383(n+2))`
-/

namespace A043244.P2030455213039516857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043205 (n + 1)) (A165383 (n + 2))).toNat

end

end A043244.P2030455213039516857

/-! ## A043244.P14831298332529179735

`A007095(A043205(n+1))+A000007(A000712(n))`
-/

namespace A043244.P14831298332529179735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043205 (n + 1)).toNat + A000007 (A000712 n).toNat

end

end A043244.P14831298332529179735

/-!
# A043245: Numbers k such that 3 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043245, there is no canonical definition to state claims against.
-/

/-! ## A043245.P3362899559445315662

`A280193(A326132(2*(n+1)))+A045809(2*(n+1))`
-/

namespace A043245.P3362899559445315662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A326132 (2 * (n + 1))).toNat + A045809 (2 * (n + 1))

end

end A043245.P3362899559445315662

/-! ## A043245.P16621874375841111863

`A044025(n+1)-A004198(A243324(n+1))`
-/

namespace A043245.P16621874375841111863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044025 (n + 1) - A004198 (A243324 (n + 1)).toNat

end

end A043245.P16621874375841111863

/-! ## A043245.P12316621214382372532

`A044025(A032551(n+2))`
-/

namespace A043245.P12316621214382372532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044025 (A032551 (n + 2)).toNat

end

end A043245.P12316621214382372532

/-!
# A043246: Numbers k such that 4 and 5 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043246, there is no canonical definition to state claims against.
-/

/-! ## A043246.P16538154868174030659

`A007095(A043206(n+1)%A211240(n+1))`
-/

namespace A043246.P16538154868174030659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043206 (n + 1)) (A211240 (n + 1))).toNat

end

end A043246.P16538154868174030659

/-! ## A043246.P13873125428415954231

`A007095(A043206(n+1))%A234738(A167614(n+1))`
-/

namespace A043246.P13873125428415954231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043206 (n + 1)).toNat) (A234738 (A167614 (n + 1)).toNat)

end

end A043246.P13873125428415954231

/-! ## A043246.P16036664014807233725

`A007095(A043206(n+1))^A184240(A277086(n))`
-/

namespace A043246.P16036664014807233725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007095 (A043206 (n + 1)).toNat : ℚ) ^ (A184240 (A277086 n).toNat : ℤ)

end

end A043246.P16036664014807233725

/-! ## A043246.P6730611952726323281

`A007093(A043149(n+1)^A119788(n+1))`
-/

namespace A043246.P6730611952726323281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.roundAway ((A043149 (n + 1) : ℚ) ^ (A119788 (n + 1) : ℤ))).toNat

end

end A043246.P6730611952726323281

/-! ## A043246.P12590433897275652085

`A007093(A043149(n+1)%A211240(n+5))`
-/

namespace A043246.P12590433897275652085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A043149 (n + 1)) (A211240 (n + 5))).toNat

end

end A043246.P12590433897275652085

/-!
# A043247: Numbers k such that 4 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043247, there is no canonical definition to state claims against.
-/

/-! ## A043247.P12517629418481851913

`A007095(A043207(n+1)%A159625(n+1))`
-/

namespace A043247.P12517629418481851913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043207 (n + 1)) (A159625 (n + 1))).toNat

end

end A043247.P12517629418481851913

/-! ## A043247.P7424900623159553349

`A007095(A043207(n+1))%A043467(A004639(n+1))`
-/

namespace A043247.P7424900623159553349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043207 (n + 1)).toNat) (A043467 (A004639 (n + 1)).toNat)

end

end A043247.P7424900623159553349

/-! ## A043247.P12787003990324257498

`A007094(A043175(n+1)^A262438(n))`
-/

namespace A043247.P12787003990324257498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A043175 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043247.P12787003990324257498

/-! ## A043247.P4174741589637704910

`A007095(A043207(n+1)^A262438(n))`
-/

namespace A043247.P4174741589637704910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043207 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043247.P4174741589637704910

/-! ## A043247.P6849473936123255389

`A007094(C(A043175(n+1), A262438(n)))`
-/

namespace A043247.P6849473936123255389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Nat.choose (A043175 (n + 1)).toNat (A262438 n).toNat)

end

end A043247.P6849473936123255389

/-!
# A043248: Numbers k such that 4 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043248, there is no canonical definition to state claims against.
-/

/-! ## A043248.P17643658152663983849

`A007095(A043208(n+1)%A048255(n+1))`
-/

namespace A043248.P17643658152663983849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043208 (n + 1)) (A048255 (n + 1))).toNat

end

end A043248.P17643658152663983849

/-! ## A043248.P10296050691089968504

`A007094(A043176(n+1)^val(17*(n+1), 17))`
-/

namespace A043248.P10296050691089968504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043176 (n + 1) ^ SequenceMachineLib.valuation (17 * (n + 1)) 17).toNat

end

end A043248.P10296050691089968504

/-! ## A043248.P8363969650753525471

`A102394(A075934(n))+A007094(A043176(n+1))`
-/

namespace A043248.P8363969650753525471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 (A075934 n).toNat + A007094 (A043176 (n + 1)).toNat

end

end A043248.P8363969650753525471

/-! ## A043248.P18108593682649673299

`A102394(A075934(n))+A007095(A043208(n+1))`
-/

namespace A043248.P18108593682649673299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 (A075934 n).toNat + A007095 (A043208 (n + 1)).toNat

end

end A043248.P18108593682649673299

/-! ## A043248.P483940752325302970

`A044028(A032555(n+1))`
-/

namespace A043248.P483940752325302970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044028 (A032555 (n + 1)).toNat

end

end A043248.P483940752325302970

/-!
# A043249: Numbers k such that 4 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043249, there is no canonical definition to state claims against.
-/

/-! ## A043249.P1653883441339386171

`A007095(A043209(n+1)^A340365(3*n+1))`
-/

namespace A043249.P1653883441339386171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043209 (n + 1) : ℚ) ^ (A340365 (3 * n + 1) : ℤ))).toNat

end

end A043249.P1653883441339386171

/-! ## A043249.P1924335524166617063

`A007095(A043209(n+1)%A108157(2*n+5))`
-/

namespace A043249.P1924335524166617063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043209 (n + 1)) (A108157 (2 * n + 5))).toNat

end

end A043249.P1924335524166617063

/-! ## A043249.P10797431990912012408

`A007095(C(A043209(n+1), A340365(3*n+1)))`
-/

namespace A043249.P10797431990912012408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043209 (n + 1)).toNat (A340365 (3 * n + 1)).toNat)

end

end A043249.P10797431990912012408

/-! ## A043249.P9907054478277170515

`A007095(A043209(n+1)^A278657(n))`
-/

namespace A043249.P9907054478277170515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043209 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A043249.P9907054478277170515

/-! ## A043249.P510715847730833294

`A007095(C(A043209(n+1), A278657(n)))`
-/

namespace A043249.P510715847730833294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043209 (n + 1)).toNat (A278657 n).toNat)

end

end A043249.P510715847730833294

/-!
# A043250: Numbers k such that 4 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043250, there is no canonical definition to state claims against.
-/

/-! ## A043250.P12658439427617386856

`A044030(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A043250.P12658439427617386856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044030 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A043250.P12658439427617386856

/-! ## A043250.P15464960908530252907

`A044030(A032555(n+1))`
-/

namespace A043250.P15464960908530252907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044030 (A032555 (n + 1)).toNat

end

end A043250.P15464960908530252907

/-! ## A043250.P3346571813118151814

`A044030(A032559(n+1))`
-/

namespace A043250.P3346571813118151814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044030 (A032559 (n + 1)).toNat

end

end A043250.P3346571813118151814

/-! ## A043250.P8123826702258208312

`A044030(A077739(n+1))`
-/

namespace A043250.P8123826702258208312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044030 (A077739 (n + 1)).toNat

end

end A043250.P8123826702258208312

/-! ## A043250.P8550323233755251903

`A044030(A078213(n+1))`
-/

namespace A043250.P8550323233755251903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044030 (A078213 (n + 1)).toNat

end

end A043250.P8550323233755251903

/-!
# A043251: Numbers k such that 5 and 6 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043251, there is no canonical definition to state claims against.
-/

/-! ## A043251.P17475773289579100375

`A007095(A043210(n+1)%A042983(n+1))`
-/

namespace A043251.P17475773289579100375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043210 (n + 1)) (A042983 (n + 1))).toNat

end

end A043251.P17475773289579100375

/-! ## A043251.P10595849564835972955

`A007095(A206705(2*n+3)+A043210(n+1))`
-/

namespace A043251.P10595849564835972955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A206705 (2 * n + 3) + A043210 (n + 1)).toNat

end

end A043251.P10595849564835972955

/-! ## A043251.P381263731077128055

`A044940(A022172(n))+A007095(A043210(n+1))`
-/

namespace A043251.P381263731077128055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A022172 n).toNat + A007095 (A043210 (n + 1)).toNat

end

end A043251.P381263731077128055

/-! ## A043251.P1766980306254376002

`A007094(A043177(n+1)%A153048(n+1))`
-/

namespace A043251.P1766980306254376002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A043177 (n + 1)) (A153048 (n + 1))).toNat

end

end A043251.P1766980306254376002

/-!
# A043252: Numbers k such that 5 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043252, there is no canonical definition to state claims against.
-/

/-! ## A043252.P13327077698083112731

`A007095(A043211(n+1)%A125016(2*n+3))`
-/

namespace A043252.P13327077698083112731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043211 (n + 1)) (A125016 (2 * n + 3))).toNat

end

end A043252.P13327077698083112731

/-! ## A043252.P8961190496986958653

`A007094(A043178(n+1))%A179518(n+1)`
-/

namespace A043252.P8961190496986958653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A043178 (n + 1)).toNat) (A179518 (n + 1))

end

end A043252.P8961190496986958653

/-! ## A043252.P15584123880333242076

`A044032(n+1)%A346029(2*(n+1))`
-/

namespace A043252.P15584123880333242076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044032 (n + 1)) (A346029 (2 * (n + 1)))

end

end A043252.P15584123880333242076

/-!
# A043253: Numbers k such that 5 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043253, there is no canonical definition to state claims against.
-/

/-! ## A043253.P10810500344281552580

`A007095(A043212(n+1)%A295339(2*(n+2)))`
-/

namespace A043253.P10810500344281552580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043212 (n + 1)) (A295339 (2 * (n + 2)))).toNat

end

end A043253.P10810500344281552580

/-! ## A043253.P16206603456970101417

`A007095(A043212(n+1)%A153432(n+1))`
-/

namespace A043253.P16206603456970101417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043212 (n + 1)) (A153432 (n + 1))).toNat

end

end A043253.P16206603456970101417

/-! ## A043253.P11073303068377034950

`A007095(A043212(n+1)^A146631(n+1))`
-/

namespace A043253.P11073303068377034950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043212 (n + 1) : ℚ) ^ (A146631 (n + 1) : ℤ))).toNat

end

end A043253.P11073303068377034950

/-!
# A043255: Numbers k such that 6 and 7 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043255, there is no canonical definition to state claims against.
-/

/-! ## A043255.P16204210917713745827

`A007095(A043213(n+1)*A337335(3*(n+1)))`
-/

namespace A043255.P16204210917713745827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043213 (n + 1) * A337335 (3 * (n + 1))).toNat

end

end A043255.P16204210917713745827

/-! ## A043255.P2574683675397311429

`A007095(A043213(n+1))%A043198(A296562(n+1))`
-/

namespace A043255.P2574683675397311429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043213 (n + 1)).toNat) (A043198 (A296562 (n + 1)).toNat)

end

end A043255.P2574683675397311429

/-! ## A043255.P4467726020398368031

`A007095(A043213(n+1)^A262438(n))`
-/

namespace A043255.P4467726020398368031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043213 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043255.P4467726020398368031

/-! ## A043255.P5484278223227296793

`A007095(C(A043213(n+1), A262438(n)))`
-/

namespace A043255.P5484278223227296793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043213 (n + 1)).toNat (A262438 n).toNat)

end

end A043255.P5484278223227296793

/-!
# A043256: Numbers k such that 6 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043256, there is no canonical definition to state claims against.
-/

/-! ## A043256.P6746582773161822504

`A007095(A043214(n+1)%A068216(n+3))`
-/

namespace A043256.P6746582773161822504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A043214 (n + 1)) (A068216 (n + 3))).toNat

end

end A043256.P6746582773161822504

/-! ## A043256.P3852794471488340745

`A007095(C(A043214(n+1), A043290(n+1)))`
-/

namespace A043256.P3852794471488340745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043214 (n + 1)).toNat (A043290 (n + 1)).toNat)

end

end A043256.P3852794471488340745

/-! ## A043256.P18069774019310789406

`A007095(A043290(n+1)²²*A043214(n+1))`
-/

namespace A043256.P18069774019310789406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((A043290 (n + 1) ^ 2) ^ 2 * A043214 (n + 1)).toNat

end

end A043256.P18069774019310789406

/-! ## A043256.P13349203649773105942

`A007095(C(A043214(n+1), A043289(n+1)))`
-/

namespace A043256.P13349203649773105942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043214 (n + 1)).toNat (A043289 (n + 1)).toNat)

end

end A043256.P13349203649773105942

/-! ## A043256.P16357829705401115558

`A185044(A267072(n+1))+A044036(n+1)`
-/

namespace A043256.P16357829705401115558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A267072 (n + 1)).toNat + A044036 (n + 1)

end

end A043256.P16357829705401115558

/-!
# A043257: Numbers k such that 6 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043257, there is no canonical definition to state claims against.
-/

/-! ## A043257.P11514210471508861467

`record[A044037(A195110(n+1))]`
-/

namespace A043257.P11514210471508861467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044037 (A195110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043257.P11514210471508861467

/-! ## A043257.P14479616147119773856

`A044037(n+1)+A008683(A129150(n))`
-/

namespace A043257.P14479616147119773856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044037 (n + 1) + A008683 (A129150 n).toNat

end

end A043257.P14479616147119773856

/-! ## A043257.P3350212747128466000

`A044037(n+1)/A138904(A025049(n))`
-/

namespace A043257.P3350212747128466000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044037 (n + 1) : ℚ) / (A138904 (A025049 n).toNat : ℚ)

end

end A043257.P3350212747128466000

/-! ## A043257.P4057329912450697906

`A044037(n+1)%A002997(A083329(n))`
-/

namespace A043257.P4057329912450697906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044037 (n + 1)) (A002997 (A083329 n).toNat)

end

end A043257.P4057329912450697906

/-! ## A043257.P8698986991669487901

`A186719(A044057(n+1))+A044037(n+1)`
-/

namespace A043257.P8698986991669487901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (A044057 (n + 1)).toNat + A044037 (n + 1)

end

end A043257.P8698986991669487901

/-!
# A043258: Numbers k such that 7 and 8 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043258, there is no canonical definition to state claims against.
-/

/-! ## A043258.P8425676135036915828

`A044038(A187829(n+1))`
-/

namespace A043258.P8425676135036915828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044038 (A187829 (n + 1)).toNat

end

end A043258.P8425676135036915828

/-! ## A043258.P15955606353345117425

`A044038(n+1)%A118279(2*n+5)`
-/

namespace A043258.P15955606353345117425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044038 (n + 1)) (A118279 (2 * n + 5))

end

end A043258.P15955606353345117425

/-! ## A043258.P14252920617153234441

`A206499(A276086(n))+A044038(n+1)`
-/

namespace A043258.P14252920617153234441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (A276086 n).toNat + A044038 (n + 1)

end

end A043258.P14252920617153234441

/-! ## A043258.P7403147312618752277

`A033999(A062026(n))*A044038(n+1)`
-/

namespace A043258.P7403147312618752277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A062026 n).toNat * A044038 (n + 1)

end

end A043258.P7403147312618752277

/-! ## A043258.P4938777538653282667

`A044038(n+1)^A007318(A123081(n))`
-/

namespace A043258.P4938777538653282667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044038 (n + 1) : ℚ) ^ (A007318 (A123081 n).toNat : ℤ)

end

end A043258.P4938777538653282667

/-!
# A043259: Numbers k such that 7 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043259, there is no canonical definition to state claims against.
-/

/-! ## A043259.P6906131791025849276

`A044039(A187829(n+1))`
-/

namespace A043259.P6906131791025849276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044039 (A187829 (n + 1)).toNat

end

end A043259.P6906131791025849276

/-! ## A043259.P1231567098516990206

`A031499(8*A187829(n+1))`
-/

namespace A043259.P1231567098516990206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031499 (8 * A187829 (n + 1)).toNat

end

end A043259.P1231567098516990206

/-! ## A043259.P12469373959308540751

`A106433(n)!*A044039(n+1)`
-/

namespace A043259.P12469373959308540751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A106433 n).toNat : ℤ) * A044039 (n + 1)

end

end A043259.P12469373959308540751

/-! ## A043259.P15522149905665912521

`A044039(n+1)%Δ[A324945(n+3)]`
-/

namespace A043259.P15522149905665912521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324945 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044039 (n + 1)) (f1 (n + 1) - f1 n)

end

end A043259.P15522149905665912521

/-! ## A043259.P11516021448423834288

`A045807(record[or(2, n)+1]%A268662(n+1))`
-/

namespace A043259.P11516021448423834288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (A268662 (n + 1))).toNat

end

end A043259.P11516021448423834288

/-!
# A043260: Numbers k such that 8 and 9 occur juxtaposed in the base-10 representation of k but not of k-1.

The programs for A043260, there is no canonical definition to state claims against.
-/

/-! ## A043260.P9067049080878799704

`A044040(n+1)-A185255(A004275(n))`
-/

namespace A043260.P9067049080878799704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1) - A185255 (A004275 n).toNat

end

end A043260.P9067049080878799704

/-!
# A043261: Sum of the binary digits of the n-th base-2 palindrome.

The programs for A043261, the canonical program `A043261.P1967999559110171279` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043261 has offset 1).

The definition of A043261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043261.P1967999559110171279

`∑{digits}[A057148(n+1), #]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043261

/-- `∑{digits}[A057148(n+1), #]` -/
def P1967999559110171279.Spec : Prop :=
  ∀ n, (P1967999559110171279.a n : ℤ) = A043261 (n + 1)

theorem P1967999559110171279.correct : P1967999559110171279.Spec := by
  intro n
  simp only [A043261, Nat.add_sub_cancel]

end A043261

/-! ## A043261.P14346630280939441311

`∑{digits}[A101705(n+1), A096268(#)]`
-/

namespace A043261.P14346630280939441311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A096268 x).sum

end

end A043261.P14346630280939441311

namespace A043261

/-- `∑{digits}[A101705(n+1), A096268(#)]` -/
def P14346630280939441311.Spec : Prop :=
  ∀ n, P14346630280939441311.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P14780386166544343691

`∑{digits}[A101705(n+1), A103609(A103609(#+1))]`
-/

namespace A043261.P14780386166544343691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A103609 (A103609 (x + 1)).toNat).sum

end

end A043261.P14780386166544343691

namespace A043261

/-- `∑{digits}[A101705(n+1), A103609(A103609(#+1))]` -/
def P14780386166544343691.Spec : Prop :=
  ∀ n, P14780386166544343691.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P8780830948502388499

`A001222(A001316(A006995(n+1)))`
-/

namespace A043261.P8780830948502388499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (A006995 (n + 1)).toNat).toNat

end

end A043261.P8780830948502388499

namespace A043261

/-- `A001222(A001316(A006995(n+1)))` -/
def P8780830948502388499.Spec : Prop :=
  ∀ n, P8780830948502388499.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P17495696434579336656

`A274036(A006995(n+1))`
-/

namespace A043261.P17495696434579336656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A006995 (n + 1)).toNat

end

end A043261.P17495696434579336656

namespace A043261

/-- `A274036(A006995(n+1))` -/
def P17495696434579336656.Spec : Prop :=
  ∀ n, P17495696434579336656.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P2518493792984364617

`∑{d}[A006995(n+1), A297115(#)]`
-/

namespace A043261.P2518493792984364617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297115 d

end

end A043261.P2518493792984364617

namespace A043261

/-- `∑{d}[A006995(n+1), A297115(#)]` -/
def P2518493792984364617.Spec : Prop :=
  ∀ n, P2518493792984364617.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P10367523376557719615

`A005811(A126684(n+1))`
-/

namespace A043261.P10367523376557719615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A126684 (n + 1)).toNat

end

end A043261.P10367523376557719615

namespace A043261

/-- `A005811(A126684(n+1))` -/
def P10367523376557719615.Spec : Prop :=
  ∀ n, P10367523376557719615.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P1647239184181375832

`A000120(eq[0, A175919(n)])`
-/

namespace A043261.P1647239184181375832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043261.P1647239184181375832

namespace A043261

/-- `A000120(eq[0, A175919(n)])` -/
def P1647239184181375832.Spec : Prop :=
  ∀ n, P1647239184181375832.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P3568177876713251230

`A000120(lt[A175919(n), 1])`
-/

namespace A043261.P3568177876713251230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A043261.P3568177876713251230

namespace A043261

/-- `A000120(lt[A175919(n), 1])` -/
def P3568177876713251230.Spec : Prop :=
  ∀ n, P3568177876713251230.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P13107929462084058959

`A000120(eq[n, A030101(n)])`
-/

namespace A043261.P13107929462084058959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043261.P13107929462084058959

namespace A043261

/-- `A000120(eq[n, A030101(n)])` -/
def P13107929462084058959.Spec : Prop :=
  ∀ n, P13107929462084058959.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P1609138707191575288

`A000120(eq[n, A175298(n)])`
-/

namespace A043261.P1609138707191575288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043261.P1609138707191575288

namespace A043261

/-- `A000120(eq[n, A175298(n)])` -/
def P1609138707191575288.Spec : Prop :=
  ∀ n, P1609138707191575288.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P14472527100775215433

`A159780(eq[n, A030101(n)])`
-/

namespace A043261.P14472527100775215433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043261.P14472527100775215433

namespace A043261

/-- `A159780(eq[n, A030101(n)])` -/
def P14472527100775215433.Spec : Prop :=
  ∀ n, P14472527100775215433.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P4861949042035867799

`A000120(eq[A000120(n), A159780(n)])`
-/

namespace A043261.P4861949042035867799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A043261.P4861949042035867799

namespace A043261

/-- `A000120(eq[A000120(n), A159780(n)])` -/
def P4861949042035867799.Spec : Prop :=
  ∀ n, P4861949042035867799.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P14099155214682568954

`A000120(record[A331471(n)])`
-/

namespace A043261.P14099155214682568954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043261.P14099155214682568954

namespace A043261

/-- `A000120(record[A331471(n)])` -/
def P14099155214682568954.Spec : Prop :=
  ∀ n, P14099155214682568954.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P5925711822674406941

`A000120(eq[0, A344220(n)])`
-/

namespace A043261.P5925711822674406941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043261.P5925711822674406941

namespace A043261

/-- `A000120(eq[0, A344220(n)])` -/
def P5925711822674406941.Spec : Prop :=
  ∀ n, P5925711822674406941.a n = A043261 (n + 1)

end A043261

/-! ## A043261.P7716757778464987400

`A000120(eq[n, A331471(n)])`
-/

namespace A043261.P7716757778464987400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043261.P7716757778464987400

namespace A043261

/-- `A000120(eq[n, A331471(n)])` -/
def P7716757778464987400.Spec : Prop :=
  ∀ n, P7716757778464987400.a n = A043261 (n + 1)

end A043261

/-!
# A043262: Sum of digits of n-th base 3 palindrome.

The programs for A043262, there is no canonical definition to state claims against.
-/

/-! ## A043262.P11499836537371433184

`∑{digits}[A118594(n+1), #]`
-/

namespace A043262.P11499836537371433184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043262.P11499836537371433184

/-! ## A043262.P8542575867852860355

`∑{digits}[A006072(n+1), A005811(#)]`
-/

namespace A043262.P8542575867852860355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005811 x).sum

end

end A043262.P8542575867852860355

/-! ## A043262.P6825419765780017591

`∑{digits}[A006072(n+1), A130130(#)]`
-/

namespace A043262.P6825419765780017591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A130130 x).sum

end

end A043262.P6825419765780017591

/-! ## A043262.P1628671579250543783

`∑{digits}[A006072(n+1), A001222(#+1)]`
-/

namespace A043262.P1628671579250543783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 (x + 1)).sum

end

end A043262.P1628671579250543783

/-! ## A043262.P13762445764642268723

`∑{digits}[A006072(n+1), A025800(#+1)]`
-/

namespace A043262.P13762445764642268723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025800 (x + 1)).sum

end

end A043262.P13762445764642268723

/-! ## A043262.P619786922395094429

`A053735(record[A265511(n)])`
-/

namespace A043262.P619786922395094429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043262.P619786922395094429

/-! ## A043262.P6999676137114060714

`A053735(A014190(n+1))`
-/

namespace A043262.P6999676137114060714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A014190 (n + 1)).toNat

end

end A043262.P6999676137114060714

/-! ## A043262.P8663323628219888970

`∑{digits}[record[gcd(A007089(n), A055947(n))], #]`
-/

namespace A043262.P8663323628219888970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007089 n) (A055947 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A043262.P8663323628219888970

/-!
# A043263: Sum of the digits of the n-th base 4 palindrome.

The programs for A043263, there is no canonical definition to state claims against.
-/

/-! ## A043263.P8224682899564966946

`∑{digits}[A118595(n+1), #]`
-/

namespace A043263.P8224682899564966946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043263.P8224682899564966946

/-! ## A043263.P4123867660540944169

`A053737(A014192(n+1))`
-/

namespace A043263.P4123867660540944169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A014192 (n + 1)).toNat

end

end A043263.P4123867660540944169

/-! ## A043263.P2436365168233466212

`A053737(eq[n, A030103(n)])`
-/

namespace A043263.P2436365168233466212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043263.P2436365168233466212

/-! ## A043263.P6332878967332210479

`A053737(eq[n, A265546(n)])`
-/

namespace A043263.P6332878967332210479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043263.P6332878967332210479

/-! ## A043263.P6966065252516995345

`A053737(record[and(n, A048703(n))])`
-/

namespace A043263.P6966065252516995345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A048703 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043263.P6966065252516995345

/-! ## A043263.P5536300009847019272

`∑{digits}[A007090(record[and(n, A030103(n))]), #]`
-/

namespace A043263.P5536300009847019272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A030103 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043263.P5536300009847019272

/-!
# A043264: Sum of the digits of the n-th base 5 palindrome.

The programs for A043264, there is no canonical definition to state claims against.
-/

/-! ## A043264.P15808151599499316971

`∑{digits}[A118596(n+1), #]`
-/

namespace A043264.P15808151599499316971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P15808151599499316971

/-! ## A043264.P390916218288331682

`∑{digits}[A062287(n+1)/2, #]`
-/

namespace A043264.P390916218288331682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062287 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P390916218288331682

/-! ## A043264.P1788323891205335745

`A001281(∑{digits}[A062287(n+1), #])`
-/

namespace A043264.P1788323891205335745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P1788323891205335745

/-! ## A043264.P16117666798135705819

`A004525(∑{digits}[A062287(n+1), #])`
-/

namespace A043264.P16117666798135705819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P16117666798135705819

/-! ## A043264.P15974255898638167464

`A004526(∑{digits}[A062287(n+1), #])`
-/

namespace A043264.P15974255898638167464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P15974255898638167464

/-! ## A043264.P17292128133017286031

`A006370(∑{digits}[A062287(n+1), #])`
-/

namespace A043264.P17292128133017286031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043264.P17292128133017286031

/-! ## A043264.P294776174453182237

`A053824(A029952(n+1))`
-/

namespace A043264.P294776174453182237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A029952 (n + 1)).toNat

end

end A043264.P294776174453182237

/-! ## A043264.P12406755173791614042

`A053824(eq[n, A030104(n)])`
-/

namespace A043264.P12406755173791614042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043264.P12406755173791614042

/-! ## A043264.P10513457898970297439

`A326746(A118596(n+1))`
-/

namespace A043264.P10513457898970297439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A118596 (n + 1)).toNat

end

end A043264.P10513457898970297439

/-!
# A043265: Sum of the digits of the n-th base 6 palindrome.

The programs for A043265, there is no canonical definition to state claims against.
-/

/-! ## A043265.P593183203977880529

`∑{digits}[A118597(n+1), #]`
-/

namespace A043265.P593183203977880529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043265.P593183203977880529

/-! ## A043265.P12736165149647883248

`log2(∏{digits}[A118597(n+1), A007055(#)])`
-/

namespace A043265.P12736165149647883248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007055 x).prod : ℤ) : ℝ)

end

end A043265.P12736165149647883248

/-! ## A043265.P2064869058208784987

`A053827(A029953(n+1))`
-/

namespace A043265.P2064869058208784987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A029953 (n + 1)).toNat

end

end A043265.P2064869058208784987

/-! ## A043265.P4752523354206882792

`A053827(eq[n, A030105(n)])`
-/

namespace A043265.P4752523354206882792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043265.P4752523354206882792

/-! ## A043265.P459680692856905792

`∑{digits}[A007092(A029953(n+1)), A004086(#)]`
-/

namespace A043265.P459680692856905792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A029953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004086 x).sum

end

end A043265.P459680692856905792

/-! ## A043265.P939339585005727537

`A326746(A118597(n+1))`
-/

namespace A043265.P939339585005727537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A118597 (n + 1)).toNat

end

end A043265.P939339585005727537

/-! ## A043265.P5126932329832352760

`A007953(A118597(n+1)+1)-1`
-/

namespace A043265.P5126932329832352760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118597 (n + 1) + 1).toNat - 1

end

end A043265.P5126932329832352760

/-! ## A043265.P10612769057464557088

`A007953(A118597(n+1))%A008574(n)`
-/

namespace A043265.P10612769057464557088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A118597 (n + 1)).toNat) (A008574 n)

end

end A043265.P10612769057464557088

/-! ## A043265.P4113401105750723917

`A007953(A118597(n+1)%A016829(n))`
-/

namespace A043265.P4113401105750723917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Int.tmod (A118597 (n + 1)) (A016829 n)).toNat

end

end A043265.P4113401105750723917

/-!
# A043266: Sum of the digits of the n-th base 7 palindrome.

The programs for A043266, there is no canonical definition to state claims against.
-/

/-! ## A043266.P12110305425060125335

`∑{digits}[A118598(n+1), #]`
-/

namespace A043266.P12110305425060125335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043266.P12110305425060125335

/-! ## A043266.P14659769842792252373

`A053828(A029954(n+1))`
-/

namespace A043266.P14659769842792252373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A029954 (n + 1)).toNat

end

end A043266.P14659769842792252373

/-! ## A043266.P7287077903845933232

`∑{digits}[A007093(A029954(n+1)), A262087(#)]`
-/

namespace A043266.P7287077903845933232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A029954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A262087 x).sum

end

end A043266.P7287077903845933232

/-! ## A043266.P10823112891483666442

`∑{digits}[A007093(A029954(n+1)), A265525(#)]`
-/

namespace A043266.P10823112891483666442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A029954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A265525 x).sum

end

end A043266.P10823112891483666442

/-! ## A043266.P17234803548335714433

`A007953(A118598(n+1))`
-/

namespace A043266.P17234803548335714433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118598 (n + 1)).toNat

end

end A043266.P17234803548335714433

/-! ## A043266.P15578108021767069732

`∑{digits}[record[A047813(A007093(n))], #]`
-/

namespace A043266.P15578108021767069732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A007093 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043266.P15578108021767069732

/-! ## A043266.P3743997024109870696

`A007953(∩[A002113(n+1), A007093(n)])`
-/

namespace A043266.P3743997024109870696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A043266.P3743997024109870696

/-! ## A043266.P16242682301647839000

`A004092(5*A118598(n+1))`
-/

namespace A043266.P16242682301647839000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A118598 (n + 1)).toNat

end

end A043266.P16242682301647839000

/-!
# A043267: Sum of the digits of the n-th base 8 palindrome.

The programs for A043267, there is no canonical definition to state claims against.
-/

/-! ## A043267.P13903830029709710112

`∑{digits}[A118599(n+1), #]`
-/

namespace A043267.P13903830029709710112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043267.P13903830029709710112

/-! ## A043267.P481712077876602936

`A053829(A029803(n+1))`
-/

namespace A043267.P481712077876602936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A029803 (n + 1)).toNat

end

end A043267.P481712077876602936

/-! ## A043267.P4105580235205362027

`A007953(A118599(n+1))`
-/

namespace A043267.P4105580235205362027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118599 (n + 1)).toNat

end

end A043267.P4105580235205362027

/-! ## A043267.P2027123682667214807

`∑{digits}[record[A047813(A007094(n))], #]`
-/

namespace A043267.P2027123682667214807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A007094 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043267.P2027123682667214807

/-! ## A043267.P2267892248271738392

`∑{digits}[record[A235049(A118600(n+1))], #]`
-/

namespace A043267.P2267892248271738392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A118600 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043267.P2267892248271738392

/-! ## A043267.P2472316316904845382

`A007953(∩[A002113(n+1), A007094(n)])`
-/

namespace A043267.P2472316316904845382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A043267.P2472316316904845382

/-!
# A043268: Sum of digits of n-th base 9 palindrome.

The programs for A043268, there is no canonical definition to state claims against.
-/

/-! ## A043268.P10186673586902641461

`∑{digits}[A118600(n+1), #]`
-/

namespace A043268.P10186673586902641461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043268.P10186673586902641461

/-! ## A043268.P3356932811965451437

`A053830(A029955(n+1))`
-/

namespace A043268.P3356932811965451437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A029955 (n + 1)).toNat

end

end A043268.P3356932811965451437

/-! ## A043268.P12352024814675028412

`A053830(record[A265523(n)])`
-/

namespace A043268.P12352024814675028412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043268.P12352024814675028412

/-! ## A043268.P5076031753580674219

`∑{digits}[A007095(record[A265523(n)]), #]`
-/

namespace A043268.P5076031753580674219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043268.P5076031753580674219

/-! ## A043268.P16109193582388999670

`∑{digits}[A007095(A029955(n+1)), A007095(#)]`
-/

namespace A043268.P16109193582388999670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A029955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007095 x).sum

end

end A043268.P16109193582388999670

/-! ## A043268.P9723222158261607282

`A007953(A118600(n+1))`
-/

namespace A043268.P9723222158261607282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A118600 (n + 1)).toNat

end

end A043268.P9723222158261607282

/-! ## A043268.P8161477091678546860

`∑{digits}[record[A235049(A002113(n+1))], #]`
-/

namespace A043268.P8161477091678546860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A002113 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043268.P8161477091678546860

/-! ## A043268.P7580890188251151475

`A004092(5*A118600(n+1))`
-/

namespace A043268.P7580890188251151475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A118600 (n + 1)).toNat

end

end A043268.P7580890188251151475

/-!
# A043269: a(n) is the sum of the digits of n-th base-10 palindrome.

The programs for A043269, there is no canonical definition to state claims against.
-/

/-! ## A043269.P10532019419593107376

`A007953(A002113(n+1))`
-/

namespace A043269.P10532019419593107376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002113 (n + 1)).toNat

end

end A043269.P10532019419593107376

/-! ## A043269.P9199712455163120898

`∑{digits}[A014187(n)^(1/3), #]`
-/

namespace A043269.P9199712455163120898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P9199712455163120898

/-! ## A043269.P1144153274490082077

`∑{digits}[record[A002113(A328399(n))], #]`
-/

namespace A043269.P1144153274490082077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P1144153274490082077

/-! ## A043269.P4106645622822161001

`∑{digits}[A086862(n+1)-∑[A086862(n+1)], #]`
-/

namespace A043269.P4106645622822161001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P4106645622822161001

/-! ## A043269.P11728444402230531587

`∑{digits}[record[A002113(A152271(n))], #]`
-/

namespace A043269.P11728444402230531587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P11728444402230531587

/-! ## A043269.P2426743277224862464

`∑{digits}[record[A047813(n)], #]`
-/

namespace A043269.P2426743277224862464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P2426743277224862464

/-! ## A043269.P16527028525150590168

`∑{digits}[record[A262087(n)], #]`
-/

namespace A043269.P16527028525150590168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P16527028525150590168

/-! ## A043269.P185552398352826565

`∑{digits}[record[A265525(n)], #]`
-/

namespace A043269.P185552398352826565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P185552398352826565

/-! ## A043269.P15434079863566816669

`∑{digits}[record[A331472(n)], #]`
-/

namespace A043269.P15434079863566816669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043269.P15434079863566816669

/-! ## A043269.P8015456758703703086

`∑{digits}[lt[A241173(n), 1], #]`
-/

namespace A043269.P8015456758703703086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A043269.P8015456758703703086

/-! ## A043269.P5503749163358105312

`∑{digits}[lt[A262257(n), 1], #]`
-/

namespace A043269.P5503749163358105312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A043269.P5503749163358105312

/-! ## A043269.P9262136045333317831

`∑{digits}[lt[A338827(n), 1], #]`
-/

namespace A043269.P9262136045333317831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A043269.P9262136045333317831

/-! ## A043269.P2946666206152418928

`A007953(record[A047813(n)])`
-/

namespace A043269.P2946666206152418928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043269.P2946666206152418928

/-! ## A043269.P10568877587129014011

`A007953(record[A265525(n)])`
-/

namespace A043269.P10568877587129014011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043269.P10568877587129014011

/-! ## A043269.P141515355500506333

`A007953(eq[0, A064834(n)])`
-/

namespace A043269.P141515355500506333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043269.P141515355500506333

/-! ## A043269.P10616140372678248949

`A007953(lt[A256756(n), 1])`
-/

namespace A043269.P10616140372678248949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A043269.P10616140372678248949

/-! ## A043269.P15807874614929362384

`A007953(eq[n, A004086(n)])`
-/

namespace A043269.P15807874614929362384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043269.P15807874614929362384

/-!
# A043270: Sum of the digits of the n-th base 11 palindrome.

The programs for A043270, there is no canonical definition to state claims against.
-/

/-! ## A043270.P5111356892848985265

`A053831(A029956(n+1))`
-/

namespace A043270.P5111356892848985265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (A029956 (n + 1)).toNat

end

end A043270.P5111356892848985265

/-! ## A043270.P17066734432318512101

`A053831(eq[0, A055961(n)])`
-/

namespace A043270.P17066734432318512101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043270.P17066734432318512101

/-! ## A043270.P1892778454902624316

`A053831(eq[n, A056960(n)])`
-/

namespace A043270.P1892778454902624316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043270.P1892778454902624316

/-! ## A043270.P18322506596234035506

`A053831(record[n-A055961(n)²])`
-/

namespace A043270.P18322506596234035506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055961 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043270.P18322506596234035506

/-! ## A043270.P7908263020277179633

`A053831(lcm(11, A048322(n)))`
-/

namespace A043270.P7908263020277179633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (Int.lcm 11 (A048322 n))

end

end A043270.P7908263020277179633

/-! ## A043270.P11536782881697226207

`A053831(11*A048322(n))`
-/

namespace A043270.P11536782881697226207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (11 * A048322 n).toNat

end

end A043270.P11536782881697226207

/-!
# A043271: Sum of the digits of the n-th base 12 palindrome.

The programs for A043271, there is no canonical definition to state claims against.
-/

/-! ## A043271.P6941674922352787405

`A053832(A029957(n+1))`
-/

namespace A043271.P6941674922352787405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A029957 (n + 1)).toNat

end

end A043271.P6941674922352787405

/-! ## A043271.P9622251469931464939

`A053832(eq[0, A055963(n)])`
-/

namespace A043271.P9622251469931464939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043271.P9622251469931464939

/-! ## A043271.P2979684207347647350

`A053832(eq[n, A056961(n)])`
-/

namespace A043271.P2979684207347647350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043271.P2979684207347647350

/-! ## A043271.P2211130190201173831

`A053832(eq[2*n, A055962(n)])`
-/

namespace A043271.P2211130190201173831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043271.P2211130190201173831

/-! ## A043271.P12511911990831914274

`A053832(eq[n, A055962(n)/2])`
-/

namespace A043271.P12511911990831914274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055962 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A043271.P12511911990831914274

/-! ## A043271.P16124824267530535875

`A053832(eq[n, A055962(n)-n])`
-/

namespace A043271.P16124824267530535875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043271.P16124824267530535875

/-! ## A043271.P7127351722381168994

`A053832(record[n-A055963(n)²])`
-/

namespace A043271.P7127351722381168994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055963 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043271.P7127351722381168994

/-! ## A043271.P2463357258903030299

`A053832(eq[A005843(n)², A055962(n)²])`
-/

namespace A043271.P2463357258903030299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055962 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A043271.P2463357258903030299

/-! ## A043271.P879823264124611591

`A053832(A048323(n)%A076530(n+1))`
-/

namespace A043271.P879823264124611591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (Int.tmod (A048323 n) (A076530 (n + 1))).toNat

end

end A043271.P879823264124611591

/-!
# A043272: Sum of the digits of the n-th base 13 palindrome.

The programs for A043272, there is no canonical definition to state claims against.
-/

/-! ## A043272.P17234341424907082013

`A053833(A029958(n+1))`
-/

namespace A043272.P17234341424907082013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053833 (A029958 (n + 1)).toNat

end

end A043272.P17234341424907082013

/-!
# A043273: Sum of the digits of the n-th base 14 palindrome.

The programs for A043273, there is no canonical definition to state claims against.
-/

/-! ## A043273.P6997675663287073014

`A053834(A029959(n+1))`
-/

namespace A043273.P6997675663287073014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (A029959 (n + 1)).toNat

end

end A043273.P6997675663287073014

/-! ## A043273.P5115671877048557166

`A053834(A048325(n))+A000007(A001312(n))`
-/

namespace A043273.P5115671877048557166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (A048325 n).toNat + A000007 (A001312 n).toNat

end

end A043273.P5115671877048557166

/-! ## A043273.P13209406207432969665

`A053834(A048325(n))+A000007(A031925(2*(n+2)))`
-/

namespace A043273.P13209406207432969665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (A048325 n).toNat + A000007 (A031925 (2 * (n + 2))).toNat

end

end A043273.P13209406207432969665

/-! ## A043273.P7370945996877174692

`A053834(A048325(n))/(A002260(A046691(n+3))-n)`
-/

namespace A043273.P7370945996877174692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053834 (A048325 n).toNat : ℚ) / (A002260 (A046691 (n + 3)).toNat - (n : ℤ) : ℚ)

end

end A043273.P7370945996877174692

/-! ## A043273.P12389034697123699317

`A053834(A007318(∑[n])*A048325(n))`
-/

namespace A043273.P12389034697123699317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A048325 n).toNat

end

end A043273.P12389034697123699317

/-! ## A043273.P13653656767097492359

`A053834(A048325(n)/A007318(∑[n]))`
-/

namespace A043273.P13653656767097492359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (SequenceMachineLib.roundAway ((A048325 n : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A043273.P13653656767097492359

/-! ## A043273.P10254071986276557693

`A053834(A048325(n))/A158405(∑[n]+1)`
-/

namespace A043273.P10254071986276557693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053834 (A048325 n).toNat : ℚ) / (A158405 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A043273.P10254071986276557693

/-! ## A043273.P6766613470527666617

`A053834(A048325(n))+(n+1)%A062378(A064549(n+1))`
-/

namespace A043273.P6766613470527666617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (A048325 n).toNat + Int.tmod (n + 1 : ℤ) (A062378 (A064549 (n + 1)).toNat)

end

end A043273.P6766613470527666617

/-! ## A043273.P401354322379617879

`A000108(A151933(n))*A053834(A048325(n))`
-/

namespace A043273.P401354322379617879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A151933 n).toNat * A053834 (A048325 n).toNat

end

end A043273.P401354322379617879

/-!
# A043274: Sum of the digits of the n-th base 15 palindrome.

The programs for A043274, there is no canonical definition to state claims against.
-/

/-! ## A043274.P1003673648924587031

`A053835(A029960(n+1))`
-/

namespace A043274.P1003673648924587031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A029960 (n + 1)).toNat

end

end A043274.P1003673648924587031

/-! ## A043274.P2842416447327085271

`A053835(A048326(n))%A302943(A000040(n+1))`
-/

namespace A043274.P2842416447327085271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053835 (A048326 n).toNat) (A302943 (A000040 (n + 1)).toNat)

end

end A043274.P2842416447327085271

/-! ## A043274.P18145455609727522525

`A053835(A048326(n))*A055874(A127336(n+1))`
-/

namespace A043274.P18145455609727522525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A048326 n).toNat * A055874 (A127336 (n + 1)).toNat

end

end A043274.P18145455609727522525

/-! ## A043274.P8395374004460077554

`A053835(A048326(n))+A034188(A003367(n+1))`
-/

namespace A043274.P8395374004460077554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A048326 n).toNat + A034188 (A003367 (n + 1)).toNat

end

end A043274.P8395374004460077554

/-! ## A043274.P14075200038543966601

`A053835(A048326(n))%A235212(n+1)`
-/

namespace A043274.P14075200038543966601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053835 (A048326 n).toNat) (A235212 (n + 1))

end

end A043274.P14075200038543966601

/-! ## A043274.P7406384287088211768

`A053835(A048326(n))/(A002262(C(n+1, 2))+1)`
-/

namespace A043274.P7406384287088211768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053835 (A048326 n).toNat : ℚ) / (A002262 (Nat.choose (n + 1) 2) + 1 : ℚ)

end

end A043274.P7406384287088211768

/-! ## A043274.P16482587491195615082

`A053835(A048326(n))/(A002262(∑[n+1])+1)`
-/

namespace A043274.P16482587491195615082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053835 (A048326 n).toNat : ℚ) / (A002262 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ)

end

end A043274.P16482587491195615082

/-! ## A043274.P4302290706967961678

`A053835(A048326(n))/A051064(A046691(n+1)-1)`
-/

namespace A043274.P4302290706967961678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053835 (A048326 n).toNat : ℚ) / (A051064 (A046691 (n + 1) - 1).toNat : ℚ)

end

end A043274.P4302290706967961678

/-! ## A043274.P7596231795345375644

`A053835(A048326(n))+A000007(A007294(n))`
-/

namespace A043274.P7596231795345375644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A048326 n).toNat + A000007 (A007294 n).toNat

end

end A043274.P7596231795345375644

/-! ## A043274.P14031493828273972902

`A053835(A048326(n))+A348717(A007294(n)+1)%2`
-/

namespace A043274.P14031493828273972902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A048326 n).toNat + Int.tmod (A348717 (A007294 n + 1).toNat) 2

end

end A043274.P14031493828273972902

/-! ## A043274.P12222519291555051554

`A053835(A048326(n))+-A000040(A007294(n)+2)%2+1`
-/

namespace A043274.P12222519291555051554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A048326 n).toNat + (Int.tmod (-A000040 (A007294 n + 2).toNat) 2 + 1)

end

end A043274.P12222519291555051554

/-!
# A043275: Sum of the digits of the n-th base 16 palindrome.

The programs for A043275, there is no canonical definition to state claims against.
-/

/-! ## A043275.P1726675781295741373

`A053836(A029730(n+1))`
-/

namespace A043275.P1726675781295741373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A029730 (n + 1)).toNat

end

end A043275.P1726675781295741373

/-! ## A043275.P14156545974875558956

`A053836(eq[n, A056962(n)])`
-/

namespace A043275.P14156545974875558956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043275.P14156545974875558956

/-! ## A043275.P7304303004042633542

`A053836(A048327(n)%(A077288(n+2)+1))`
-/

namespace A043275.P7304303004042633542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (Int.tmod (A048327 n) (A077288 (n + 2) + 1)).toNat

end

end A043275.P7304303004042633542

/-! ## A043275.P10116573367953834996

`A053836(record[gcd(n, A217558(n))])`
-/

namespace A043275.P10116573367953834996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A217558 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A043275.P10116573367953834996

/-! ## A043275.P2820192959497066863

`A053836(lcm(A048313(n), A048340(n)))`
-/

namespace A043275.P2820192959497066863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (Int.lcm (A048313 n) (A048340 n))

end

end A043275.P2820192959497066863

/-!
# A043276: a(n) = maximal run length in base-2 representation of n.

The programs for A043276, the canonical program `A043276.P1642899858786712398` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043276 has offset 1).

The definition of A043276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043276.P18028500898409178135

`A061395(A382255(n+1))`
-/

namespace A043276.P18028500898409178135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A382255 (n + 1)).toNat

end

end A043276.P18028500898409178135

namespace A043276

/-- `A061395(A382255(n+1))` -/
def P18028500898409178135.Spec : Prop :=
  ∀ n, P18028500898409178135.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P1642899858786712398

`A087117(A341915(n+1))+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A043276

/-- `A087117(A341915(n+1))+1` -/
def P1642899858786712398.Spec : Prop :=
  ∀ n, P1642899858786712398.a n = A043276 (n + 1)

theorem P1642899858786712398.correct : P1642899858786712398.Spec := by
  intro n
  simp only [A043276, Nat.add_sub_cancel]

end A043276

/-! ## A043276.P11813656084388564423

`A038374(A335835(n+1))`
-/

namespace A043276.P11813656084388564423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A335835 (n + 1)).toNat

end

end A043276.P11813656084388564423

namespace A043276

/-- `A038374(A335835(n+1))` -/
def P11813656084388564423.Spec : Prop :=
  ∀ n, P11813656084388564423.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P11965843970389117249

`A038374(A361480(n+1))`
-/

namespace A043276.P11965843970389117249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A361480 (n + 1)).toNat

end

end A043276.P11965843970389117249

namespace A043276

/-- `A038374(A361480(n+1))` -/
def P11965843970389117249.Spec : Prop :=
  ∀ n, P11965843970389117249.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P7985901637651206598

`A136480(A335834(n+1))`
-/

namespace A043276.P7985901637651206598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A335834 (n + 1)).toNat

end

end A043276.P7985901637651206598

namespace A043276

/-- `A136480(A335834(n+1))` -/
def P7985901637651206598.Spec : Prop :=
  ∀ n, P7985901637651206598.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P2888332711545617599

`A087117(A003188(n+1))+1`
-/

namespace A043276.P2888332711545617599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A003188 (n + 1)).toNat + 1

end

end A043276.P2888332711545617599

namespace A043276

/-- `A087117(A003188(n+1))+1` -/
def P2888332711545617599.Spec : Prop :=
  ∀ n, P2888332711545617599.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P3871331231270887054

`A007814(or(1, A335834(n+1)-1)+1)`
-/

namespace A043276.P3871331231270887054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor 1 (A335834 (n + 1) - 1) + 1).toNat

end

end A043276.P3871331231270887054

namespace A043276

/-- `A007814(or(1, A335834(n+1)-1)+1)` -/
def P3871331231270887054.Spec : Prop :=
  ∀ n, P3871331231270887054.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P5797739831277213503

`A007814(A335834(n+1)-A014707(2*n)+1)`
-/

namespace A043276.P5797739831277213503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A335834 (n + 1) - A014707 (2 * n) + 1).toNat

end

end A043276.P5797739831277213503

namespace A043276

/-- `A007814(A335834(n+1)-A014707(2*n)+1)` -/
def P5797739831277213503.Spec : Prop :=
  ∀ n, P5797739831277213503.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P5960316535317099340

`A333352(2*A382255(n+1))`
-/

namespace A043276.P5960316535317099340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (2 * A382255 (n + 1)).toNat

end

end A043276.P5960316535317099340

namespace A043276

/-- `A333352(2*A382255(n+1))` -/
def P5960316535317099340.Spec : Prop :=
  ∀ n, P5960316535317099340.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P6387633663785437588

`A043277(A005836(n+2))`
-/

namespace A043276.P6387633663785437588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A005836 (n + 2)).toNat

end

end A043276.P6387633663785437588

namespace A043276

/-- `A043277(A005836(n+2))` -/
def P6387633663785437588.Spec : Prop :=
  ∀ n, P6387633663785437588.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P2954741575720862197

`A043277(A005823(n+2)/2)`
-/

namespace A043276.P2954741575720862197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A043276.P2954741575720862197

namespace A043276

/-- `A043277(A005823(n+2)/2)` -/
def P2954741575720862197.Spec : Prop :=
  ∀ n, P2954741575720862197.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P6762371115651126832

`A067132(A286468(n+1))`
-/

namespace A043276.P6762371115651126832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A286468 (n + 1)).toNat

end

end A043276.P6762371115651126832

namespace A043276

/-- `A067132(A286468(n+1))` -/
def P6762371115651126832.Spec : Prop :=
  ∀ n, P6762371115651126832.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P15541040666512224178

`A043277(A055661(n+1))`
-/

namespace A043276.P15541040666512224178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A055661 (n + 1)).toNat

end

end A043276.P15541040666512224178

namespace A043276

/-- `A043277(A055661(n+1))` -/
def P15541040666512224178.Spec : Prop :=
  ∀ n, P15541040666512224178.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P9017250011411753360

`A043277(A005823(n+2))`
-/

namespace A043276.P9017250011411753360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A005823 (n + 2)).toNat

end

end A043276.P9017250011411753360

namespace A043276

/-- `A043277(A005823(n+2))` -/
def P9017250011411753360.Spec : Prop :=
  ∀ n, P9017250011411753360.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P14286931761579590727

`A043278(A000695(n+1))`
-/

namespace A043276.P14286931761579590727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A000695 (n + 1)).toNat

end

end A043276.P14286931761579590727

namespace A043276

/-- `A043278(A000695(n+1))` -/
def P14286931761579590727.Spec : Prop :=
  ∀ n, P14286931761579590727.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P7350721065497723230

`A043278(A374625(n+1))`
-/

namespace A043276.P7350721065497723230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A374625 (n + 1)).toNat

end

end A043276.P7350721065497723230

namespace A043276

/-- `A043278(A374625(n+1))` -/
def P7350721065497723230.Spec : Prop :=
  ∀ n, P7350721065497723230.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P806204133349724563

`A043277(A055246(n+2))`
-/

namespace A043276.P806204133349724563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A055246 (n + 2)).toNat

end

end A043276.P806204133349724563

namespace A043276

/-- `A043277(A055246(n+2))` -/
def P806204133349724563.Spec : Prop :=
  ∀ n, P806204133349724563.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P15519816988048345384

`A038374(A290254(n+2))`
-/

namespace A043276.P15519816988048345384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A290254 (n + 2)).toNat

end

end A043276.P15519816988048345384

namespace A043276

/-- `A038374(A290254(n+2))` -/
def P15519816988048345384.Spec : Prop :=
  ∀ n, P15519816988048345384.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P16312519030465356105

`A038374(A035928(n+1)/2)`
-/

namespace A043276.P16312519030465356105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (SequenceMachineLib.roundAway ((A035928 (n + 1) : ℚ) / 2)).toNat

end

end A043276.P16312519030465356105

namespace A043276

/-- `A038374(A035928(n+1)/2)` -/
def P16312519030465356105.Spec : Prop :=
  ∀ n, P16312519030465356105.a n = A043276 (n + 1)

end A043276

/-! ## A043276.P18126999534009105538

`A043278(A062880(n+1)/2)`
-/

namespace A043276.P18126999534009105538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A043276.P18126999534009105538

namespace A043276

/-- `A043278(A062880(n+1)/2)` -/
def P18126999534009105538.Spec : Prop :=
  ∀ n, P18126999534009105538.a n = A043276 (n + 1)

end A043276

/-!
# A043277: Maximal run length in base 3 representation of n.

The programs for A043277, the canonical program `A043277.P4229213591346107339` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043277 has offset 1).

The definition of A043277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043277.P4229213591346107339

`A043276(A371256(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A043277

/-- `A043276(A371256(n+1))` -/
def P4229213591346107339.Spec : Prop :=
  ∀ n, P4229213591346107339.a n = A043277 (n + 1)

theorem P4229213591346107339.correct : P4229213591346107339.Spec := by
  intro n
  simp only [A043277, Nat.add_sub_cancel]

end A043277

/-! ## A043277.P1305772246978611920

`A043278(A023717(n+1))`
-/

namespace A043277.P1305772246978611920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A023717 (n + 1)).toNat

end

end A043277.P1305772246978611920

namespace A043277

/-- `A043278(A023717(n+1))` -/
def P1305772246978611920.Spec : Prop :=
  ∀ n, P1305772246978611920.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P14907101216859179850

`A043278(A023713(n+2))`
-/

namespace A043277.P14907101216859179850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A023713 (n + 2)).toNat

end

end A043277.P14907101216859179850

namespace A043277

/-- `A043278(A023713(n+2))` -/
def P14907101216859179850.Spec : Prop :=
  ∀ n, P14907101216859179850.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P18366853319225281387

`A043278(A006288(n+1))`
-/

namespace A043277.P18366853319225281387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A006288 (n + 1)).toNat

end

end A043277.P18366853319225281387

namespace A043277

/-- `A043278(A006288(n+1))` -/
def P18366853319225281387.Spec : Prop :=
  ∀ n, P18366853319225281387.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P8864328567273075456

`A043278(A023709(n+2))`
-/

namespace A043277.P8864328567273075456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A023709 (n + 2)).toNat

end

end A043277.P8864328567273075456

namespace A043277

/-- `A043278(A023709(n+2))` -/
def P8864328567273075456.Spec : Prop :=
  ∀ n, P8864328567273075456.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P8552961646223830814

`A043279(A037453(n+1))`
-/

namespace A043277.P8552961646223830814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A037453 (n + 1)).toNat

end

end A043277.P8552961646223830814

namespace A043277

/-- `A043279(A037453(n+1))` -/
def P8552961646223830814.Spec : Prop :=
  ∀ n, P8552961646223830814.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P3673618278112349404

`A043280(A037454(n+1))`
-/

namespace A043277.P3673618278112349404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A037454 (n + 1)).toNat

end

end A043277.P3673618278112349404

namespace A043277

/-- `A043280(A037454(n+1))` -/
def P3673618278112349404.Spec : Prop :=
  ∀ n, P3673618278112349404.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P15917477190723561780

`A043283(A037314(n+1))`
-/

namespace A043277.P15917477190723561780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A037314 (n + 1)).toNat

end

end A043277.P15917477190723561780

namespace A043277

/-- `A043283(A037314(n+1))` -/
def P15917477190723561780.Spec : Prop :=
  ∀ n, P15917477190723561780.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P9895873983295885623

`A043283(A319497(n+1))`
-/

namespace A043277.P9895873983295885623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A319497 (n + 1)).toNat

end

end A043277.P9895873983295885623

namespace A043277

/-- `A043283(A319497(n+1))` -/
def P9895873983295885623.Spec : Prop :=
  ∀ n, P9895873983295885623.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P6186672062455897477

`A043281(A037455(n+1))`
-/

namespace A043277.P6186672062455897477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A037455 (n + 1)).toNat

end

end A043277.P6186672062455897477

namespace A043277

/-- `A043281(A037455(n+1))` -/
def P6186672062455897477.Spec : Prop :=
  ∀ n, P6186672062455897477.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P14153533773384803262

`A043282(A037456(n+1))`
-/

namespace A043277.P14153533773384803262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037456 (n + 1)).toNat

end

end A043277.P14153533773384803262

namespace A043277

/-- `A043282(A037456(n+1))` -/
def P14153533773384803262.Spec : Prop :=
  ∀ n, P14153533773384803262.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P6112048543307802176

`A043283(A208665(n+1))`
-/

namespace A043277.P6112048543307802176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A208665 (n + 1)).toNat

end

end A043277.P6112048543307802176

namespace A043277

/-- `A043283(A208665(n+1))` -/
def P6112048543307802176.Spec : Prop :=
  ∀ n, P6112048543307802176.a n = A043277 (n + 1)

end A043277

/-! ## A043277.P3131389011300036654

`A043283(A338086(n+1))`
-/

namespace A043277.P3131389011300036654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A338086 (n + 1)).toNat

end

end A043277.P3131389011300036654

namespace A043277

/-- `A043283(A338086(n+1))` -/
def P3131389011300036654.Spec : Prop :=
  ∀ n, P3131389011300036654.a n = A043277 (n + 1)

end A043277

/-!
# A043278: Maximal run length in base 4 representation of n.

The programs for A043278, the canonical program `A043278.P7875337536898136716` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043278 has offset 1).

The definition of A043278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043278.P5745154322466488221

`A043279(A037459(n+1))`
-/

namespace A043278.P5745154322466488221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A037459 (n + 1)).toNat

end

end A043278.P5745154322466488221

namespace A043278

/-- `A043279(A037459(n+1))` -/
def P5745154322466488221.Spec : Prop :=
  ∀ n, P5745154322466488221.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P11238007040558999177

`A043279(A020654(n+2))`
-/

namespace A043278.P11238007040558999177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A020654 (n + 2)).toNat

end

end A043278.P11238007040558999177

namespace A043278

/-- `A043279(A020654(n+2))` -/
def P11238007040558999177.Spec : Prop :=
  ∀ n, P11238007040558999177.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P7875337536898136716

`A043279(A023733(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A043278

/-- `A043279(A023733(n+2))` -/
def P7875337536898136716.Spec : Prop :=
  ∀ n, P7875337536898136716.a n = A043278 (n + 1)

theorem P7875337536898136716.correct : P7875337536898136716.Spec := by
  intro n
  simp only [A043278, Nat.add_sub_cancel]

end A043278

/-! ## A043278.P17661238616627181082

`A043279(A023729(n+2))`
-/

namespace A043278.P17661238616627181082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A023729 (n + 2)).toNat

end

end A043278.P17661238616627181082

namespace A043278

/-- `A043279(A023729(n+2))` -/
def P17661238616627181082.Spec : Prop :=
  ∀ n, P17661238616627181082.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P7705006848826246831

`A043279(A023725(n+2))`
-/

namespace A043278.P7705006848826246831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A023725 (n + 2)).toNat

end

end A043278.P7705006848826246831

namespace A043278

/-- `A043279(A023725(n+2))` -/
def P7705006848826246831.Spec : Prop :=
  ∀ n, P7705006848826246831.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P14572319678358734207

`A043280(A037460(n+1))`
-/

namespace A043278.P14572319678358734207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A037460 (n + 1)).toNat

end

end A043278.P14572319678358734207

namespace A043278

/-- `A043280(A037460(n+1))` -/
def P14572319678358734207.Spec : Prop :=
  ∀ n, P14572319678358734207.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P10932136876618734889

`A043283(A037463(n+1))`
-/

namespace A043278.P10932136876618734889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A037463 (n + 1)).toNat

end

end A043278.P10932136876618734889

namespace A043278

/-- `A043283(A037463(n+1))` -/
def P10932136876618734889.Spec : Prop :=
  ∀ n, P10932136876618734889.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P9549286685433381005

`A043283(A005836(n+2))`
-/

namespace A043278.P9549286685433381005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A005836 (n + 2)).toNat

end

end A043278.P9549286685433381005

namespace A043278

/-- `A043283(A005836(n+2))` -/
def P9549286685433381005.Spec : Prop :=
  ∀ n, P9549286685433381005.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P3389670289272359100

`A043283(A005823(n+2)/2)`
-/

namespace A043278.P3389670289272359100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A043278.P3389670289272359100

namespace A043278

/-- `A043283(A005823(n+2)/2)` -/
def P3389670289272359100.Spec : Prop :=
  ∀ n, P3389670289272359100.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P3472620317799528097

`A043281(A037461(n+1))`
-/

namespace A043278.P3472620317799528097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A037461 (n + 1)).toNat

end

end A043278.P3472620317799528097

namespace A043278

/-- `A043281(A037461(n+1))` -/
def P3472620317799528097.Spec : Prop :=
  ∀ n, P3472620317799528097.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P15222707481406125214

`A043283(A005823(n+2))`
-/

namespace A043278.P15222707481406125214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A005823 (n + 2)).toNat

end

end A043278.P15222707481406125214

namespace A043278

/-- `A043283(A005823(n+2))` -/
def P15222707481406125214.Spec : Prop :=
  ∀ n, P15222707481406125214.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P12866479804495203077

`A043282(A037462(n+1))`
-/

namespace A043278.P12866479804495203077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037462 (n + 1)).toNat

end

end A043278.P12866479804495203077

namespace A043278

/-- `A043282(A037462(n+1))` -/
def P12866479804495203077.Spec : Prop :=
  ∀ n, P12866479804495203077.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P8653312187001547314

`A043283(A265100(n+2))`
-/

namespace A043278.P8653312187001547314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A265100 (n + 2)).toNat

end

end A043278.P8653312187001547314

namespace A043278

/-- `A043283(A265100(n+2))` -/
def P8653312187001547314.Spec : Prop :=
  ∀ n, P8653312187001547314.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P6626947099414145620

`A043290(A000695(n+1))`
-/

namespace A043278.P6626947099414145620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A000695 (n + 1)).toNat

end

end A043278.P6626947099414145620

namespace A043278

/-- `A043290(A000695(n+1))` -/
def P6626947099414145620.Spec : Prop :=
  ∀ n, P6626947099414145620.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P15370965637297411716

`A043290(A062880(n+1)/2)`
-/

namespace A043278.P15370965637297411716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A043278.P15370965637297411716

namespace A043278

/-- `A043290(A062880(n+1)/2)` -/
def P15370965637297411716.Spec : Prop :=
  ∀ n, P15370965637297411716.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P1605451548792699187

`A043284(A007090(n+1))`
-/

namespace A043278.P1605451548792699187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007090 (n + 1)).toNat

end

end A043278.P1605451548792699187

namespace A043278

/-- `A043284(A007090(n+1))` -/
def P1605451548792699187.Spec : Prop :=
  ∀ n, P1605451548792699187.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P6438439768519802001

`A043284(A007284(n+1))`
-/

namespace A043278.P6438439768519802001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007284 (n + 1)).toNat

end

end A043278.P6438439768519802001

namespace A043278

/-- `A043284(A007284(n+1))` -/
def P6438439768519802001.Spec : Prop :=
  ∀ n, P6438439768519802001.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P9457249711087702024

`A043284(A046030(n+2))`
-/

namespace A043278.P9457249711087702024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A046030 (n + 2)).toNat

end

end A043278.P9457249711087702024

namespace A043278

/-- `A043284(A046030(n+2))` -/
def P9457249711087702024.Spec : Prop :=
  ∀ n, P9457249711087702024.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P2484537961373030104

`A043290(A001196(n+1))`
-/

namespace A043278.P2484537961373030104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A001196 (n + 1)).toNat

end

end A043278.P2484537961373030104

namespace A043278

/-- `A043290(A001196(n+1))` -/
def P2484537961373030104.Spec : Prop :=
  ∀ n, P2484537961373030104.a n = A043278 (n + 1)

end A043278

/-! ## A043278.P5921212731510010898

`A043290(A062880(n+1))`
-/

namespace A043278.P5921212731510010898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A062880 (n + 1)).toNat

end

end A043278.P5921212731510010898

namespace A043278

/-- `A043290(A062880(n+1))` -/
def P5921212731510010898.Spec : Prop :=
  ∀ n, P5921212731510010898.a n = A043278 (n + 1)

end A043278

/-!
# A043279: Maximal run length in base 5 representation of n.

The programs for A043279, the canonical program `A043279.P13934484324389794782` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043279 has offset 1).

The definition of A043279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043279.P14474387265651885725

`A043280(A037465(n+1))`
-/

namespace A043279.P14474387265651885725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A037465 (n + 1)).toNat

end

end A043279.P14474387265651885725

namespace A043279

/-- `A043280(A037465(n+1))` -/
def P14474387265651885725.Spec : Prop :=
  ∀ n, P14474387265651885725.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P13934484324389794782

`A043283(A037468(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A043279

/-- `A043283(A037468(n+1))` -/
def P13934484324389794782.Spec : Prop :=
  ∀ n, P13934484324389794782.a n = A043279 (n + 1)

theorem P13934484324389794782.correct : P13934484324389794782.Spec := by
  intro n
  simp only [A043279, Nat.add_sub_cancel]

end A043279

/-! ## A043279.P10290397802814029005

`A043281(A037466(n+1))`
-/

namespace A043279.P10290397802814029005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A037466 (n + 1)).toNat

end

end A043279.P10290397802814029005

namespace A043279

/-- `A043281(A037466(n+1))` -/
def P10290397802814029005.Spec : Prop :=
  ∀ n, P10290397802814029005.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P1625360553496287547

`A043282(A037467(n+1))`
-/

namespace A043279.P1625360553496287547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037467 (n + 1)).toNat

end

end A043279.P1625360553496287547

namespace A043279

/-- `A043282(A037467(n+1))` -/
def P1625360553496287547.Spec : Prop :=
  ∀ n, P1625360553496287547.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P6975299600490175789

`A043283(record[A163327(n+1)])`
-/

namespace A043279.P6975299600490175789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043279.P6975299600490175789

namespace A043279

/-- `A043283(record[A163327(n+1)])` -/
def P6975299600490175789.Spec : Prop :=
  ∀ n, P6975299600490175789.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P3371811456251998963

`A043284(A007091(n+1))`
-/

namespace A043279.P3371811456251998963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007091 (n + 1)).toNat

end

end A043279.P3371811456251998963

namespace A043279

/-- `A043284(A007091(n+1))` -/
def P3371811456251998963.Spec : Prop :=
  ∀ n, P3371811456251998963.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P975431588565854371

`A043284(A054047(n+1))`
-/

namespace A043279.P975431588565854371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A054047 (n + 1)).toNat

end

end A043279.P975431588565854371

namespace A043279

/-- `A043284(A054047(n+1))` -/
def P975431588565854371.Spec : Prop :=
  ∀ n, P975431588565854371.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P17659683964405311108

`A043284(A080228(n+2))`
-/

namespace A043279.P17659683964405311108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A080228 (n + 2)).toNat

end

end A043279.P17659683964405311108

namespace A043279

/-- `A043284(A080228(n+2))` -/
def P17659683964405311108.Spec : Prop :=
  ∀ n, P17659683964405311108.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P7101276089286988079

`A043284(A014263(n+2)/2)`
-/

namespace A043279.P7101276089286988079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (SequenceMachineLib.roundAway ((A014263 (n + 2) : ℚ) / 2)).toNat

end

end A043279.P7101276089286988079

namespace A043279

/-- `A043284(A014263(n+2)/2)` -/
def P7101276089286988079.Spec : Prop :=
  ∀ n, P7101276089286988079.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P9816353323503364040

`A043284(A001744(n+2))`
-/

namespace A043279.P9816353323503364040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A001744 (n + 2)).toNat

end

end A043279.P9816353323503364040

namespace A043279

/-- `A043284(A001744(n+2))` -/
def P9816353323503364040.Spec : Prop :=
  ∀ n, P9816353323503364040.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P3937437968478810477

`A043284(A014263(n+2))`
-/

namespace A043279.P3937437968478810477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A014263 (n + 2)).toNat

end

end A043279.P3937437968478810477

namespace A043279

/-- `A043284(A014263(n+2))` -/
def P3937437968478810477.Spec : Prop :=
  ∀ n, P3937437968478810477.a n = A043279 (n + 1)

end A043279

/-! ## A043279.P250712910807429782

`A043284(A072960(n+2))`
-/

namespace A043279.P250712910807429782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A072960 (n + 2)).toNat

end

end A043279.P250712910807429782

namespace A043279

/-- `A043284(A072960(n+2))` -/
def P250712910807429782.Spec : Prop :=
  ∀ n, P250712910807429782.a n = A043279 (n + 1)

end A043279

/-!
# A043280: Maximal run length in base 6 representation of n.

The programs for A043280, the canonical program `A043280.P11751337126056473840` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043280 has offset 1).

The definition of A043280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043280.P11751337126056473840

`A043283(A037472(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043280

/-- `A043283(A037472(n+1))` -/
def P11751337126056473840.Spec : Prop :=
  ∀ n, P11751337126056473840.a n = A043280 (n + 1)

theorem P11751337126056473840.correct : P11751337126056473840.Spec := by
  intro n
  simp only [A043280, Nat.add_sub_cancel]

end A043280

/-! ## A043280.P18246731874821582908

`A043281(A020657(n+2))`
-/

namespace A043280.P18246731874821582908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A020657 (n + 2)).toNat

end

end A043280.P18246731874821582908

namespace A043280

/-- `A043281(A020657(n+2))` -/
def P18246731874821582908.Spec : Prop :=
  ∀ n, P18246731874821582908.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P11161944330387920564

`A043281(A249102(n+2))`
-/

namespace A043280.P11161944330387920564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A249102 (n + 2)).toNat

end

end A043280.P11161944330387920564

namespace A043280

/-- `A043281(A249102(n+2))` -/
def P11161944330387920564.Spec : Prop :=
  ∀ n, P11161944330387920564.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P7500483331402617088

`A043282(A037471(n+1))`
-/

namespace A043280.P7500483331402617088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037471 (n + 1)).toNat

end

end A043280.P7500483331402617088

namespace A043280

/-- `A043282(A037471(n+1))` -/
def P7500483331402617088.Spec : Prop :=
  ∀ n, P7500483331402617088.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P17536459518923988057

`A043285(A212495(n+2)/2)`
-/

namespace A043280.P17536459518923988057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043285 (SequenceMachineLib.roundAway ((A212495 (n + 2) : ℚ) / 2)).toNat

end

end A043280.P17536459518923988057

namespace A043280

/-- `A043285(A212495(n+2)/2)` -/
def P17536459518923988057.Spec : Prop :=
  ∀ n, P17536459518923988057.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P16601289085965813846

`A043284(A007092(n+1))`
-/

namespace A043280.P16601289085965813846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007092 (n + 1)).toNat

end

end A043280.P16601289085965813846

namespace A043280

/-- `A043284(A007092(n+1))` -/
def P16601289085965813846.Spec : Prop :=
  ∀ n, P16601289085965813846.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P7008501514246348314

`A043284(A084984(n+2))`
-/

namespace A043280.P7008501514246348314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A084984 (n + 2)).toNat

end

end A043280.P7008501514246348314

namespace A043280

/-- `A043284(A084984(n+2))` -/
def P7008501514246348314.Spec : Prop :=
  ∀ n, P7008501514246348314.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P10860860186409759258

`A043284(A202267(n+2))`
-/

namespace A043280.P10860860186409759258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A202267 (n + 2)).toNat

end

end A043280.P10860860186409759258

namespace A043280

/-- `A043284(A202267(n+2))` -/
def P10860860186409759258.Spec : Prop :=
  ∀ n, P10860860186409759258.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P18007885430872353804

`A043285(A212495(n+2))`
-/

namespace A043280.P18007885430872353804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043285 (A212495 (n + 2)).toNat

end

end A043280.P18007885430872353804

namespace A043280

/-- `A043285(A212495(n+2))` -/
def P18007885430872353804.Spec : Prop :=
  ∀ n, P18007885430872353804.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P15302379982792045511

`A043284(A276138(n+2))`
-/

namespace A043280.P15302379982792045511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A276138 (n + 2)).toNat

end

end A043280.P15302379982792045511

namespace A043280

/-- `A043284(A276138(n+2))` -/
def P15302379982792045511.Spec : Prop :=
  ∀ n, P15302379982792045511.a n = A043280 (n + 1)

end A043280

/-! ## A043280.P14630494727902195173

`A043284(A137386(n+2))`
-/

namespace A043280.P14630494727902195173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A137386 (n + 2)).toNat

end

end A043280.P14630494727902195173

namespace A043280

/-- `A043284(A137386(n+2))` -/
def P14630494727902195173.Spec : Prop :=
  ∀ n, P14630494727902195173.a n = A043280 (n + 1)

end A043280

/-!
# A043281: Maximal run length in base-7 representation of n.

The programs for A043281, the canonical program `A043281.P4877973788972823573` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043281 has offset 1).

The definition of A043281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043281.P4877973788972823573

`A043283(A037475(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043281

/-- `A043283(A037475(n+1))` -/
def P4877973788972823573.Spec : Prop :=
  ∀ n, P4877973788972823573.a n = A043281 (n + 1)

theorem P4877973788972823573.correct : P4877973788972823573.Spec := by
  intro n
  simp only [A043281, Nat.add_sub_cancel]

end A043281

/-! ## A043281.P13705633518644426086

`A043282(A037474(n+1))`
-/

namespace A043281.P13705633518644426086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A037474 (n + 1)).toNat

end

end A043281.P13705633518644426086

namespace A043281

/-- `A043282(A037474(n+1))` -/
def P13705633518644426086.Spec : Prop :=
  ∀ n, P13705633518644426086.a n = A043281 (n + 1)

end A043281

/-! ## A043281.P13492981136547324694

`A043284(A007093(n+1))`
-/

namespace A043281.P13492981136547324694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007093 (n + 1)).toNat

end

end A043281.P13492981136547324694

namespace A043281

/-- `A043284(A007093(n+1))` -/
def P13492981136547324694.Spec : Prop :=
  ∀ n, P13492981136547324694.a n = A043281 (n + 1)

end A043281

/-! ## A043281.P1257754716103273408

`A043284(A028374(n+2))`
-/

namespace A043281.P1257754716103273408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A028374 (n + 2)).toNat

end

end A043281.P1257754716103273408

namespace A043281

/-- `A043284(A028374(n+2))` -/
def P1257754716103273408.Spec : Prop :=
  ∀ n, P1257754716103273408.a n = A043281 (n + 1)

end A043281

/-! ## A043281.P15521422221234800950

`A043284(record[A222251(n+1)])`
-/

namespace A043281.P15521422221234800950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043281.P15521422221234800950

namespace A043281

/-- `A043284(record[A222251(n+1)])` -/
def P15521422221234800950.Spec : Prop :=
  ∀ n, P15521422221234800950.a n = A043281 (n + 1)

end A043281

/-! ## A043281.P2407557757808774046

`A043283(A072957(n+1))`
-/

namespace A043281.P2407557757808774046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A072957 (n + 1)).toNat

end

end A043281.P2407557757808774046

namespace A043281

/-- `A043283(A072957(n+1))` -/
def P2407557757808774046.Spec : Prop :=
  ∀ n, P2407557757808774046.a n = A043281 (n + 1)

end A043281

/-! ## A043281.P9117228674967647193

`A023191(A000189(n+1)%A023186(n+1))`
-/

namespace A043281.P9117228674967647193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023191 (Int.tmod (A000189 (n + 1)) (A023186 (n + 1))).toNat

end

end A043281.P9117228674967647193

namespace A043281

/-- `A023191(A000189(n+1)%A023186(n+1))` -/
def P9117228674967647193.Spec : Prop :=
  ∀ n, P9117228674967647193.a n = A043281 (n + 1)

end A043281

/-! ## A043281.P7661693497995384442

`gcd(A264119(n), A309098(n))`
-/

namespace A043281.P7661693497995384442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264119 n) (A309098 n)

end

end A043281.P7661693497995384442

namespace A043281

/-- `gcd(A264119(n), A309098(n))` -/
def P7661693497995384442.Spec : Prop :=
  ∀ n, (P7661693497995384442.a n : ℤ) = A043281 (n + 1)

end A043281

/-!
# A043282: Maximal run length in base 8 representation of n.

The programs for A043282, the canonical program `A043282.P4792003988380030781` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043282 has offset 1).

The definition of A043282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043282.P4792003988380030781

`A043283(A037477(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043282

/-- `A043283(A037477(n+1))` -/
def P4792003988380030781.Spec : Prop :=
  ∀ n, P4792003988380030781.a n = A043282 (n + 1)

theorem P4792003988380030781.correct : P4792003988380030781.Spec := by
  intro n
  simp only [A043282, Nat.add_sub_cancel]

end A043282

/-! ## A043282.P18388976627943100344

`A043284(A007094(n+1))`
-/

namespace A043282.P18388976627943100344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A007094 (n + 1)).toNat

end

end A043282.P18388976627943100344

namespace A043282

/-- `A043284(A007094(n+1))` -/
def P18388976627943100344.Spec : Prop :=
  ∀ n, P18388976627943100344.a n = A043282 (n + 1)

end A043282

/-! ## A043282.P8687731658198752290

`A043284(record[A222228(n+1)])`
-/

namespace A043282.P8687731658198752290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043282.P8687731658198752290

namespace A043282

/-- `A043284(record[A222228(n+1)])` -/
def P8687731658198752290.Spec : Prop :=
  ∀ n, P8687731658198752290.a n = A043282 (n + 1)

end A043282

/-! ## A043282.P8934947699994727295

`A043284(eq[n, A035043(A028310(n))])`
-/

namespace A043282.P8934947699994727295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043282.P8934947699994727295

namespace A043282

/-- `A043284(eq[n, A035043(A028310(n))])` -/
def P8934947699994727295.Spec : Prop :=
  ∀ n, P8934947699994727295.a n = A043282 (n + 1)

end A043282

/-! ## A043282.P10353964776284051640

`A043284(eq[n, A222252(A028310(n))])`
-/

namespace A043282.P10353964776284051640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A043282.P10353964776284051640

namespace A043282

/-- `A043284(eq[n, A222252(A028310(n))])` -/
def P10353964776284051640.Spec : Prop :=
  ∀ n, P10353964776284051640.a n = A043282 (n + 1)

end A043282

/-!
# A043283: Maximal run length in base-9 representation of n.

The programs for A043283, the canonical program `A043283.P13169352551083880011` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043283 has offset 1).

The definition of A043283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043283.P13169352551083880011

`A043290(A023717(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043283

/-- `A043290(A023717(n+1))` -/
def P13169352551083880011.Spec : Prop :=
  ∀ n, P13169352551083880011.a n = A043283 (n + 1)

theorem P13169352551083880011.correct : P13169352551083880011.Spec := by
  intro n
  simp only [A043283, Nat.add_sub_cancel]

end A043283

/-! ## A043283.P3771178908300507950

`A043284(record[A222252(n+1)])`
-/

namespace A043283.P3771178908300507950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043283.P3771178908300507950

namespace A043283

/-- `A043284(record[A222252(n+1)])` -/
def P3771178908300507950.Spec : Prop :=
  ∀ n, P3771178908300507950.a n = A043283 (n + 1)

end A043283

/-! ## A043283.P9528346198215398039

`A043290(record[A057300(n+1)])`
-/

namespace A043283.P9528346198215398039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043283.P9528346198215398039

namespace A043283

/-- `A043290(record[A057300(n+1)])` -/
def P9528346198215398039.Spec : Prop :=
  ∀ n, P9528346198215398039.a n = A043283 (n + 1)

end A043283

/-! ## A043283.P5476110343797588118

`A043290(eq[A000007(n), A292373(n)])`
-/

namespace A043283.P5476110343797588118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A043283.P5476110343797588118

namespace A043283

/-- `A043290(eq[A000007(n), A292373(n)])` -/
def P5476110343797588118.Spec : Prop :=
  ∀ n, P5476110343797588118.a n = A043283 (n + 1)

end A043283

/-! ## A043283.P14200013900781856029

`A043290(eq[A000038(n), A292373(n)])`
-/

namespace A043283.P14200013900781856029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A043283.P14200013900781856029

namespace A043283

/-- `A043290(eq[A000038(n), A292373(n)])` -/
def P14200013900781856029.Spec : Prop :=
  ∀ n, P14200013900781856029.a n = A043283 (n + 1)

end A043283

/-! ## A043283.P1366248186157245329

`A000032(A151810(n)^A044940(n+1))`
-/

namespace A043283.P1366248186157245329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A151810 n : ℚ) ^ (A044940 (n + 1) : ℤ))).toNat

end

end A043283.P1366248186157245329

namespace A043283

/-- `A000032(A151810(n)^A044940(n+1))` -/
def P1366248186157245329.Spec : Prop :=
  ∀ n, P1366248186157245329.a n = A043283 (n + 1)

end A043283

/-!
# A043284: Maximal run length in base-10 representation of n.

The programs for A043284, there is no canonical definition to state claims against.
-/

/-! ## A043284.P10532748242331208686

`A043290(A102489(n+1))`
-/

namespace A043284.P10532748242331208686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A102489 (n + 1)).toNat

end

end A043284.P10532748242331208686

/-! ## A043284.P2344685114329075213

`A055642(A057169(n+1))-A043562(n+1)`
-/

namespace A043284.P2344685114329075213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A057169 (n + 1)).toNat - A043562 (n + 1)

end

end A043284.P2344685114329075213

/-! ## A043284.P3521566760728780967

`A321804(n+1)%11+2`
-/

namespace A043284.P3521566760728780967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321804 (n + 1)) 11 + 2

end

end A043284.P3521566760728780967

/-! ## A043284.P12326555294837139324

`A055640(A321804(n+1)+11)`
-/

namespace A043284.P12326555294837139324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A321804 (n + 1) + 11).toNat

end

end A043284.P12326555294837139324

/-! ## A043284.P11674229236387873018

`A055642(gcd(A193581(n+1), A321804(n+1)))`
-/

namespace A043284.P11674229236387873018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.gcd (A193581 (n + 1)) (A321804 (n + 1)))

end

end A043284.P11674229236387873018

/-! ## A043284.P4741143772930369428

`A199343(A037817(n+1)-ceil(A037851(n+1)/A166046(n)))`
-/

namespace A043284.P4741143772930369428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A037817 (n + 1) - ⌈(A037851 (n + 1) : ℚ) / (A166046 n : ℚ)⌉).toNat

end

end A043284.P4741143772930369428

/-! ## A043284.P17087547696929720362

`round(ratio[A278566(A332550(n))])`
-/

namespace A043284.P17087547696929720362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278566 (A332550 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A043284.P17087547696929720362

/-! ## A043284.P10947049254021227264

`A281007(gcd(n+1, A321804(n+1)))`
-/

namespace A043284.P10947049254021227264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (Int.gcd (n + 1 : ℤ) (A321804 (n + 1)))

end

end A043284.P10947049254021227264

/-! ## A043284.P4332639079814107093

`A056926(A001401(n))+A044941(n+1)`
-/

namespace A043284.P4332639079814107093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A001401 n).toNat + A044941 (n + 1)

end

end A043284.P4332639079814107093

/-! ## A043284.P3748022523123929779

`A044941(n+1)-A057428(A026769(n))`
-/

namespace A043284.P3748022523123929779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (n + 1) - A057428 (A026769 n).toNat

end

end A043284.P3748022523123929779

/-! ## A043284.P9530221854791284242

`A000034(A044941(n+1)+A044364(n+1))`
-/

namespace A043284.P9530221854791284242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A044941 (n + 1) + A044364 (n + 1)).toNat

end

end A043284.P9530221854791284242

/-! ## A043284.P7062161662053437882

`A044941(n+1)+A001511(A044808(n+1))`
-/

namespace A043284.P7062161662053437882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (n + 1) + A001511 (A044808 (n + 1)).toNat

end

end A043284.P7062161662053437882

/-! ## A043284.P1816431602737127326

`A020639(A215655(n+1))^A044941(n+1)`
-/

namespace A043284.P1816431602737127326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A215655 (n + 1)).toNat : ℚ) ^ (A044941 (n + 1) : ℤ)

end

end A043284.P1816431602737127326

/-! ## A043284.P3262887040894417164

`A044941(n+1)+A001222(A020631(n+1))`
-/

namespace A043284.P3262887040894417164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (n + 1) + A001222 (A020631 (n + 1)).toNat

end

end A043284.P3262887040894417164

/-!
# A043285: Maximal run length in base 11 representation of n.

The programs for A043285, the canonical program `A043285.P857067819011013542` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043285 has offset 1).

The definition of A043285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043285.P1546965028360689851

`A043286(A040223(n)+lt[A107504(n²), 2])`
-/

namespace A043285.P1546965028360689851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107504 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043286 (A040223 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)).toNat

end

end A043285.P1546965028360689851

namespace A043285

/-- `A043286(A040223(n)+lt[A107504(n²), 2])` -/
def P1546965028360689851.Spec : Prop :=
  ∀ n, P1546965028360689851.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P3262727784655559767

`val(A042869(n), 13)+1`
-/

namespace A043285.P3262727784655559767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A042869 n).toNat 13 + 1

end

end A043285.P3262727784655559767

namespace A043285

/-- `val(A042869(n), 13)+1` -/
def P3262727784655559767.Spec : Prop :=
  ∀ n, (P3262727784655559767.a n : ℤ) = A043285 (n + 1)

end A043285

/-! ## A043285.P6951729951145543868

`Δ[A043651(n+2)]!!`
-/

namespace A043285.P6951729951145543868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043651 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A043285.P6951729951145543868

namespace A043285

/-- `Δ[A043651(n+2)]!!` -/
def P6951729951145543868.Spec : Prop :=
  ∀ n, (P6951729951145543868.a n : ℤ) = A043285 (n + 1)

end A043285

/-! ## A043285.P3545604117206483998

`A100063(∑[A047201(n+7)])`
-/

namespace A043285.P3545604117206483998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A043285.P3545604117206483998

namespace A043285

/-- `A100063(∑[A047201(n+7)])` -/
def P3545604117206483998.Spec : Prop :=
  ∀ n, P3545604117206483998.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P14495860692773022592

`2-A168185(A328617(n+1))`
-/

namespace A043285.P14495860692773022592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A168185 (A328617 (n + 1)).toNat

end

end A043285.P14495860692773022592

namespace A043285

/-- `2-A168185(A328617(n+1))` -/
def P14495860692773022592.Spec : Prop :=
  ∀ n, P14495860692773022592.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P8904291640651775675

`A001222(3^Δ[A043651(n+2)])`
-/

namespace A043285.P8904291640651775675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A043285.P8904291640651775675

namespace A043285

/-- `A001222(3^Δ[A043651(n+2)])` -/
def P8904291640651775675.Spec : Prop :=
  ∀ n, P8904291640651775675.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P15743100255444601741

`A334507(n+1)^Δ[A064459(n)]`
-/

namespace A043285.P15743100255444601741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334507 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A043285.P15743100255444601741

namespace A043285

/-- `A334507(n+1)^Δ[A064459(n)]` -/
def P15743100255444601741.Spec : Prop :=
  ∀ n, P15743100255444601741.a n = (A043285 (n + 1) : ℚ)

end A043285

/-! ## A043285.P12727995219225902469

`A334507(n+1)^Δ[A342696(n)]`
-/

namespace A043285.P12727995219225902469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334507 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A043285.P12727995219225902469

namespace A043285

/-- `A334507(n+1)^Δ[A342696(n)]` -/
def P12727995219225902469.Spec : Prop :=
  ∀ n, P12727995219225902469.a n = (A043285 (n + 1) : ℚ)

end A043285

/-! ## A043285.P14784279636260840660

`gcd(Δ[A113763(n+1)], A010103(n))`
-/

namespace A043285.P14784279636260840660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A010103 n)

end

end A043285.P14784279636260840660

namespace A043285

/-- `gcd(Δ[A113763(n+1)], A010103(n))` -/
def P14784279636260840660.Spec : Prop :=
  ∀ n, (P14784279636260840660.a n : ℤ) = A043285 (n + 1)

end A043285

/-! ## A043285.P857067819011013542

`A089309(A137688(n))+val(n+1, 12)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043285

/-- `A089309(A137688(n))+val(n+1, 12)` -/
def P857067819011013542.Spec : Prop :=
  ∀ n, P857067819011013542.a n = A043285 (n + 1)

theorem P857067819011013542.correct : P857067819011013542.Spec := by
  intro n
  simp only [A043285, Nat.add_sub_cancel]

end A043285

/-! ## A043285.P13115684757665064146

`Δ[A023806(n+2)]%A141065(n+1)`
-/

namespace A043285.P13115684757665064146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023806 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A141065 (n + 1))

end

end A043285.P13115684757665064146

namespace A043285

/-- `Δ[A023806(n+2)]%A141065(n+1)` -/
def P13115684757665064146.Spec : Prop :=
  ∀ n, P13115684757665064146.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P16272011694098751124

`gcd(1-val(n+1, 12), A100961(A100944(n)))`
-/

namespace A043285.P16272011694098751124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (SequenceMachineLib.valuation (n + 1) 12 : ℤ)) (A100961 (A100944 n).toNat)

end

end A043285.P16272011694098751124

namespace A043285

/-- `gcd(1-val(n+1, 12), A100961(A100944(n)))` -/
def P16272011694098751124.Spec : Prop :=
  ∀ n, (P16272011694098751124.a n : ℤ) = A043285 (n + 1)

end A043285

/-! ## A043285.P6793497273708309571

`gcd(A177704(n), A242424(A000096(n+7)))`
-/

namespace A043285.P6793497273708309571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A177704 n) (A242424 (A000096 (n + 7)).toNat)

end

end A043285.P6793497273708309571

namespace A043285

/-- `gcd(A177704(n), A242424(A000096(n+7)))` -/
def P6793497273708309571.Spec : Prop :=
  ∀ n, (P6793497273708309571.a n : ℤ) = A043285 (n + 1)

end A043285

/-! ## A043285.P14513816204734504637

`A043286(A040223(n)+comp[13*A057515(3*(n+1))])`
-/

namespace A043285.P14513816204734504637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A057515 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043286 (A040223 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A043285.P14513816204734504637

namespace A043285

/-- `A043286(A040223(n)+comp[13*A057515(3*(n+1))])` -/
def P14513816204734504637.Spec : Prop :=
  ∀ n, P14513816204734504637.a n = A043285 (n + 1)

end A043285

/-! ## A043285.P9800527292381457326

`A143484(A129202(n))`
-/

namespace A043285.P9800527292381457326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143484 (A129202 n).toNat

end

end A043285.P9800527292381457326

namespace A043285

/-- `A143484(A129202(n))` -/
def P9800527292381457326.Spec : Prop :=
  ∀ n, P9800527292381457326.a n = A043285 (n + 1)

end A043285

/-!
# A043286: Maximal run length in base-12 representation of n.

The programs for A043286, there is no canonical definition to state claims against.
-/

/-! ## A043286.P8044508391785950972

`Δ[A043657(n+2)]!!`
-/

namespace A043286.P8044508391785950972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043657 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A043286.P8044508391785950972

/-! ## A043286.P2964352083388603597

`val(A261216(∑[n+1]), 13)+1`
-/

namespace A043286.P2964352083388603597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13 + 1

end

end A043286.P2964352083388603597

/-! ## A043286.P17941409166979403701

`A000629(C(∏{e}[n+1, #+1], 13*(n+1)%13))`
-/

namespace A043286.P17941409166979403701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) (13 * ((n + 1) % 13)))

end

end A043286.P17941409166979403701

/-! ## A043286.P11378888286462600343

`A135010(A054494(n+1)²)`
-/

namespace A043286.P11378888286462600343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A054494 (n + 1) ^ 2).toNat

end

end A043286.P11378888286462600343

/-! ## A043286.P1493171731111942481

`A139549(A054494(n+1)-1)`
-/

namespace A043286.P1493171731111942481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139549 (A054494 (n + 1) - 1).toNat

end

end A043286.P1493171731111942481

/-! ## A043286.P11629331370064301945

`A139549(xor(1, A054494(n+1)))`
-/

namespace A043286.P11629331370064301945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139549 (Int.xor 1 (A054494 (n + 1))).toNat

end

end A043286.P11629331370064301945

/-! ## A043286.P5659005509135265200

`gcd(2, A178334(A054494(n+1)²))`
-/

namespace A043286.P5659005509135265200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A178334 (A054494 (n + 1) ^ 2).toNat)

end

end A043286.P5659005509135265200

/-! ## A043286.P11525435869790503837

`A000079(val(A261216(∑[n+1]), 13))`
-/

namespace A043286.P11525435869790503837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13)

end

end A043286.P11525435869790503837

/-! ## A043286.P5051324335989039901

`A000123(val(A261216(∑[n+1]), 13))`
-/

namespace A043286.P5051324335989039901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13)

end

end A043286.P5051324335989039901

/-! ## A043286.P9326918035256003783

`A068009(val(A261216(∑[n+1]), 13))`
-/

namespace A043286.P9326918035256003783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13)

end

end A043286.P9326918035256003783

/-! ## A043286.P7537512114357066558

`A193723(val(A261216(∑[n+1]), 13))`
-/

namespace A043286.P7537512114357066558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 (SequenceMachineLib.valuation (A261216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 13)

end

end A043286.P7537512114357066558

/-! ## A043286.P12316768035672787139

`A001221(3^Δ[A043657(n+2)]+1)`
-/

namespace A043286.P12316768035672787139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) + 1)).toNat

end

end A043286.P12316768035672787139

/-! ## A043286.P3278150376223722533

`(val(n+1, 13)+1)%A161863(abs(A130595(n)))`
-/

namespace A043286.P3278150376223722533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (n + 1) 13 + 1 : ℤ) (A161863 |A130595 n|.toNat)

end

end A043286.P3278150376223722533

/-! ## A043286.P8966020149743776319

`A102382(gcd(A004770(n+3), A006003(n+1)))`
-/

namespace A043286.P8966020149743776319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 (Int.gcd (A004770 (n + 3)) (A006003 (n + 1)))

end

end A043286.P8966020149743776319

/-! ## A043286.P16287963769605427752

`A007318(A007318(A007318(A280686(2*(n+1))))²)`
-/

namespace A043286.P16287963769605427752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (A007318 (A280686 (2 * (n + 1))).toNat).toNat ^ 2).toNat

end

end A043286.P16287963769605427752

/-!
# A043287: Maximal run length in base-13 representation of n.

The programs for A043287, the canonical program `A043287.P1481354817054238234` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043287 has offset 1).

The definition of A043287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043287.P11764241306904494228

`A043288(A043669(n+1)+Δ[A043669(n+2)]!!)`
-/

namespace A043287.P11764241306904494228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (A043669 (n + 1) + (Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat) : ℤ)).toNat

end

end A043287.P11764241306904494228

namespace A043287

/-- `A043288(A043669(n+1)+Δ[A043669(n+2)]!!)` -/
def P11764241306904494228.Spec : Prop :=
  ∀ n, P11764241306904494228.a n = A043287 (n + 1)

end A043287

/-! ## A043287.P6744152550459772811

`Δ[A043663(n+2)]!!`
-/

namespace A043287.P6744152550459772811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043663 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A043287.P6744152550459772811

namespace A043287

/-- `Δ[A043663(n+2)]!!` -/
def P6744152550459772811.Spec : Prop :=
  ∀ n, (P6744152550459772811.a n : ℤ) = A043287 (n + 1)

end A043287

/-! ## A043287.P1481354817054238234

`A080225(lcm(30, A026491(n)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043287

/-- `A080225(lcm(30, A026491(n)))` -/
def P1481354817054238234.Spec : Prop :=
  ∀ n, P1481354817054238234.a n = A043287 (n + 1)

theorem P1481354817054238234.correct : P1481354817054238234.Spec := by
  intro n
  simp only [A043287, Nat.add_sub_cancel]

end A043287

/-! ## A043287.P14542626311707563570

`A000108(∏{d}[Δ[A043663(n+2)], #])`
-/

namespace A043287.P14542626311707563570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043663 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A043287.P14542626311707563570

namespace A043287

/-- `A000108(∏{d}[Δ[A043663(n+2)], #])` -/
def P14542626311707563570.Spec : Prop :=
  ∀ n, P14542626311707563570.a n = A043287 (n + 1)

end A043287

/-!
# A043288: Maximal run length in base-14 representation of n.

The programs for A043288, there is no canonical definition to state claims against.
-/

/-! ## A043288.P2894743892399180961

`A043289(A043675(n+1)+Δ[A043675(n+2)]!!)`
-/

namespace A043288.P2894743892399180961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043289 (A043675 (n + 1) + (Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat) : ℤ)).toNat

end

end A043288.P2894743892399180961

/-! ## A043288.P15133215866963869579

`Δ[A043669(n+2)]!!`
-/

namespace A043288.P15133215866963869579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A043288.P15133215866963869579

/-! ## A043288.P13927692452695279274

`A018323(Δ[A043669(n+2)])`
-/

namespace A043288.P13927692452695279274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018323 (f1 (n + 1) - f1 n).toNat

end

end A043288.P13927692452695279274

/-! ## A043288.P2112768087706067179

`A322356(A304481(n+1))%3`
-/

namespace A043288.P2112768087706067179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322356 (A304481 (n + 1)).toNat) 3

end

end A043288.P2112768087706067179

/-! ## A043288.P12203818672677959164

`A156988(Δ[A043669(n+2)]²)`
-/

namespace A043288.P12203818672677959164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156988 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A043288.P12203818672677959164

/-! ## A043288.P11192003860356587672

`A265173(Δ[A043669(n+2)]²)`
-/

namespace A043288.P11192003860356587672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265173 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A043288.P11192003860356587672

/-! ## A043288.P9463475127671613143

`A007318(2^Δ[A043669(n+2)])`
-/

namespace A043288.P9463475127671613143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A043288.P9463475127671613143

/-! ## A043288.P4588647652925183844

`A280801(Δ[A055647(n)+A055646(n)])`
-/

namespace A043288.P4588647652925183844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280801 (f1 (n + 1) - f1 n).toNat

end

end A043288.P4588647652925183844

/-! ## A043288.P15030034653042572010

`A003989(Δ[A055647(n)+A055646(n)]²)`
-/

namespace A043288.P15030034653042572010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A043288.P15030034653042572010

/-! ## A043288.P14002822351218791705

`A000034(3*Δ[A055647(n)+A055646(n)])`
-/

namespace A043288.P14002822351218791705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (3 * (f1 (n + 1) - f1 n)).toNat

end

end A043288.P14002822351218791705

/-! ## A043288.P10657332401416081102

`A053989(3*Δ[A055647(n)+A055646(n)])`
-/

namespace A043288.P10657332401416081102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (3 * (f1 (n + 1) - f1 n)).toNat

end

end A043288.P10657332401416081102

/-! ## A043288.P14390081829194566476

`A231820(3*Δ[A055647(n)+A055646(n)])`
-/

namespace A043288.P14390081829194566476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (3 * (f1 (n + 1) - f1 n)).toNat

end

end A043288.P14390081829194566476

/-! ## A043288.P13204421360180333699

`A003989(8*Δ[A055647(n)+A055646(n)])`
-/

namespace A043288.P13204421360180333699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n + A055646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (8 * (f1 (n + 1) - f1 n)).toNat

end

end A043288.P13204421360180333699

/-! ## A043288.P394401723918645408

`A001221(Δ[A043669(n+2)]²*A000040(n+1))`
-/

namespace A043288.P394401723918645408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) - f1 n) ^ 2 * A000040 (n + 1)).toNat

end

end A043288.P394401723918645408

/-! ## A043288.P17437556732744661045

`A322356(n+1)%A000523(A000523(A023197(n+1)))`
-/

namespace A043288.P17437556732744661045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322356 (n + 1)) (A000523 (A000523 (A023197 (n + 1)).toNat).toNat)

end

end A043288.P17437556732744661045

/-!
# A043289: Maximal run length in base-15 representation of n.

The programs for A043289, the canonical program `A043289.P2676077445732993452` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043289 has offset 1).

The definition of A043289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043289.P16118394781775462950

`A071187(gcd(Δ[A043675(n+2)]!, A076413(n+1)))`
-/

namespace A043289.P16118394781775462950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (Int.gcd (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) (A076413 (n + 1)))

end

end A043289.P16118394781775462950

namespace A043289

/-- `A071187(gcd(Δ[A043675(n+2)]!, A076413(n+1)))` -/
def P16118394781775462950.Spec : Prop :=
  ∀ n, P16118394781775462950.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P16434130883163351086

`Δ[A043675(n+2)]!!`
-/

namespace A043289.P16434130883163351086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A043289.P16434130883163351086

namespace A043289

/-- `Δ[A043675(n+2)]!!` -/
def P16434130883163351086.Spec : Prop :=
  ∀ n, (P16434130883163351086.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P9954217112254746099

`A276949(23*∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A043289.P9954217112254746099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (23 * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A043289.P9954217112254746099

namespace A043289

/-- `A276949(23*∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P9954217112254746099.Spec : Prop :=
  ∀ n, P9954217112254746099.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P12662269768004840716

`gcd(A042257(n), A177704(n))`
-/

namespace A043289.P12662269768004840716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042257 n) (A177704 n)

end

end A043289.P12662269768004840716

namespace A043289

/-- `gcd(A042257(n), A177704(n))` -/
def P12662269768004840716.Spec : Prop :=
  ∀ n, (P12662269768004840716.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P2676077445732993452

`A014709(51*A336642(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A043289

/-- `A014709(51*A336642(n+1))` -/
def P2676077445732993452.Spec : Prop :=
  ∀ n, P2676077445732993452.a n = A043289 (n + 1)

theorem P2676077445732993452.correct : P2676077445732993452.Spec := by
  intro n
  simp only [A043289, Nat.add_sub_cancel]

end A043289

/-! ## A043289.P13924277653117454100

`A007318(2^Δ[A043675(n+2)])`
-/

namespace A043289.P13924277653117454100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A043289.P13924277653117454100

namespace A043289

/-- `A007318(2^Δ[A043675(n+2)])` -/
def P13924277653117454100.Spec : Prop :=
  ∀ n, P13924277653117454100.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P7342437311976579543

`A001222(3^Δ[A043675(n+2)])`
-/

namespace A043289.P7342437311976579543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A043289.P7342437311976579543

namespace A043289

/-- `A001222(3^Δ[A043675(n+2)])` -/
def P7342437311976579543.Spec : Prop :=
  ∀ n, P7342437311976579543.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P3486610418800290393

`gcd(A001316(n²), A053164(n+1))`
-/

namespace A043289.P3486610418800290393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 (n ^ 2)) (A053164 (n + 1))

end

end A043289.P3486610418800290393

namespace A043289

/-- `gcd(A001316(n²), A053164(n+1))` -/
def P3486610418800290393.Spec : Prop :=
  ∀ n, (P3486610418800290393.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P4090427184919749512

`A007318(∏{d}[Δ[A043675(n+2)], #²])`
-/

namespace A043289.P4090427184919749512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043675 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2)

end

end A043289.P4090427184919749512

namespace A043289

/-- `A007318(∏{d}[Δ[A043675(n+2)], #²])` -/
def P4090427184919749512.Spec : Prop :=
  ∀ n, P4090427184919749512.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P2015862032331395141

`A007968(A007494(A000188(n+1)²))`
-/

namespace A043289.P2015862032331395141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A007494 (A000188 (n + 1) ^ 2).toNat).toNat

end

end A043289.P2015862032331395141

namespace A043289

/-- `A007968(A007494(A000188(n+1)²))` -/
def P2015862032331395141.Spec : Prop :=
  ∀ n, P2015862032331395141.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P4742229934056760870

`A004530(A032527(A000188(n+1))²)`
-/

namespace A043289.P4742229934056760870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A032527 (A000188 (n + 1)).toNat ^ 2).toNat

end

end A043289.P4742229934056760870

namespace A043289

/-- `A004530(A032527(A000188(n+1))²)` -/
def P4742229934056760870.Spec : Prop :=
  ∀ n, P4742229934056760870.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P9420130227947544661

`A014963(A010301(A000188(n+1))!)`
-/

namespace A043289.P9420130227947544661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.factorial (A010301 (A000188 (n + 1)).toNat).toNat)

end

end A043289.P9420130227947544661

namespace A043289

/-- `A014963(A010301(A000188(n+1))!)` -/
def P9420130227947544661.Spec : Prop :=
  ∀ n, P9420130227947544661.a n = A043289 (n + 1)

end A043289

/-! ## A043289.P8015577864404547258

`gcd(A040526(n), A042175(n))`
-/

namespace A043289.P8015577864404547258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040526 n) (A042175 n)

end

end A043289.P8015577864404547258

namespace A043289

/-- `gcd(A040526(n), A042175(n))` -/
def P8015577864404547258.Spec : Prop :=
  ∀ n, (P8015577864404547258.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P8650415344447639938

`gcd(A040673(n), A041249(n))`
-/

namespace A043289.P8650415344447639938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040673 n) (A041249 n)

end

end A043289.P8650415344447639938

namespace A043289

/-- `gcd(A040673(n), A041249(n))` -/
def P8650415344447639938.Spec : Prop :=
  ∀ n, (P8650415344447639938.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P1269050033117651429

`gcd(A000034(n), A042361(n))`
-/

namespace A043289.P1269050033117651429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000034 n) (A042361 n)

end

end A043289.P1269050033117651429

namespace A043289

/-- `gcd(A000034(n), A042361(n))` -/
def P1269050033117651429.Spec : Prop :=
  ∀ n, (P1269050033117651429.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P1437807155124359860

`gcd(A041981(n), A108413(n))`
-/

namespace A043289.P1437807155124359860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041981 n) (A108413 n)

end

end A043289.P1437807155124359860

namespace A043289

/-- `gcd(A041981(n), A108413(n))` -/
def P1437807155124359860.Spec : Prop :=
  ∀ n, (P1437807155124359860.a n : ℤ) = A043289 (n + 1)

end A043289

/-! ## A043289.P880087880059460946

`gcd(A040722(n), A041171(n))`
-/

namespace A043289.P880087880059460946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040722 n) (A041171 n)

end

end A043289.P880087880059460946

namespace A043289

/-- `gcd(A040722(n), A041171(n))` -/
def P880087880059460946.Spec : Prop :=
  ∀ n, (P880087880059460946.a n : ℤ) = A043289 (n + 1)

end A043289

/-!
# A043290: Maximal run length in base 16 representation of n.

The programs for A043290, the canonical program `A043290.P10258835075994519670` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043290 has offset 1).

The definition of A043290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043290.P10258835075994519670

`val(A309002(n+1), 17)!`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043290

/-- `val(A309002(n+1), 17)!` -/
def P10258835075994519670.Spec : Prop :=
  ∀ n, (P10258835075994519670.a n : ℤ) = A043290 (n + 1)

theorem P10258835075994519670.correct : P10258835075994519670.Spec := by
  intro n
  simp only [A043290, Nat.add_sub_cancel]

end A043290

/-! ## A043290.P1192501897212184032

`A000041(val(A309002(n+1), 17))`
-/

namespace A043290.P1192501897212184032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P1192501897212184032

namespace A043290

/-- `A000041(val(A309002(n+1), 17))` -/
def P1192501897212184032.Spec : Prop :=
  ∀ n, P1192501897212184032.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P9226595884270095120

`A000108(val(A309002(n+1), 17))`
-/

namespace A043290.P9226595884270095120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P9226595884270095120

namespace A043290

/-- `A000108(val(A309002(n+1), 17))` -/
def P9226595884270095120.Spec : Prop :=
  ∀ n, P9226595884270095120.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P12565434694103839604

`A000142(val(A309002(n+1), 17))`
-/

namespace A043290.P12565434694103839604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P12565434694103839604

namespace A043290

/-- `A000142(val(A309002(n+1), 17))` -/
def P12565434694103839604.Spec : Prop :=
  ∀ n, P12565434694103839604.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P16688865603249477470

`A001405(val(A309002(n+1), 17))`
-/

namespace A043290.P16688865603249477470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P16688865603249477470

namespace A043290

/-- `A001405(val(A309002(n+1), 17))` -/
def P16688865603249477470.Spec : Prop :=
  ∀ n, P16688865603249477470.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P1350491830573780891

`A077957(val(A309002(n+1), 17))`
-/

namespace A043290.P1350491830573780891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P1350491830573780891

namespace A043290

/-- `A077957(val(A309002(n+1), 17))` -/
def P1350491830573780891.Spec : Prop :=
  ∀ n, P1350491830573780891.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P15451331234583521581

`A289501(val(A309002(n+1), 17))`
-/

namespace A043290.P15451331234583521581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289501 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P15451331234583521581

namespace A043290

/-- `A289501(val(A309002(n+1), 17))` -/
def P15451331234583521581.Spec : Prop :=
  ∀ n, P15451331234583521581.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P2453580238213211990

`A327064(val(A309002(n+1), 17))`
-/

namespace A043290.P2453580238213211990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327064 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P2453580238213211990

namespace A043290

/-- `A327064(val(A309002(n+1), 17))` -/
def P2453580238213211990.Spec : Prop :=
  ∀ n, P2453580238213211990.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P10540011293647390859

`A341291(val(A341293(n+1), 17))`
-/

namespace A043290.P10540011293647390859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341291 (SequenceMachineLib.valuation (A341293 (n + 1)).toNat 17)

end

end A043290.P10540011293647390859

namespace A043290

/-- `A341291(val(A341293(n+1), 17))` -/
def P10540011293647390859.Spec : Prop :=
  ∀ n, P10540011293647390859.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P13369220159473925128

`A000010(val(A309002(n+1), 17)+1)`
-/

namespace A043290.P13369220159473925128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17 + 1)

end

end A043290.P13369220159473925128

namespace A043290

/-- `A000010(val(A309002(n+1), 17)+1)` -/
def P13369220159473925128.Spec : Prop :=
  ∀ n, P13369220159473925128.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P5684322969088803728

`A036038(val(A309002(n+1), 17)+1)`
-/

namespace A043290.P5684322969088803728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17 + 1)

end

end A043290.P5684322969088803728

namespace A043290

/-- `A036038(val(A309002(n+1), 17)+1)` -/
def P5684322969088803728.Spec : Prop :=
  ∀ n, P5684322969088803728.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P5992621445696244064

`A025581(val(A341293(n+1), 17))+1`
-/

namespace A043290.P5992621445696244064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.valuation (A341293 (n + 1)).toNat 17) + 1

end

end A043290.P5992621445696244064

namespace A043290

/-- `A025581(val(A341293(n+1), 17))+1` -/
def P5992621445696244064.Spec : Prop :=
  ∀ n, P5992621445696244064.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P17056935070073328224

`A055349(val(A341293(n+1), 17)+1)`
-/

namespace A043290.P17056935070073328224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.valuation (A341293 (n + 1)).toNat 17 + 1)

end

end A043290.P17056935070073328224

namespace A043290

/-- `A055349(val(A341293(n+1), 17)+1)` -/
def P17056935070073328224.Spec : Prop :=
  ∀ n, P17056935070073328224.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P16504361340327473350

`2-A290452(val(A309002(n+1), 17))`
-/

namespace A043290.P16504361340327473350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A290452 (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P16504361340327473350

namespace A043290

/-- `2-A290452(val(A309002(n+1), 17))` -/
def P16504361340327473350.Spec : Prop :=
  ∀ n, P16504361340327473350.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P13511220224994748523

`A065033(val(A066023(n+1), 17))`
-/

namespace A043290.P13511220224994748523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.valuation (A066023 (n + 1)).toNat 17)

end

end A043290.P13511220224994748523

namespace A043290

/-- `A065033(val(A066023(n+1), 17))` -/
def P13511220224994748523.Spec : Prop :=
  ∀ n, P13511220224994748523.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P14458474605440248021

`A132217(val(A066023(n+1), 17))`
-/

namespace A043290.P14458474605440248021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132217 (SequenceMachineLib.valuation (A066023 (n + 1)).toNat 17)

end

end A043290.P14458474605440248021

namespace A043290

/-- `A132217(val(A066023(n+1), 17))` -/
def P14458474605440248021.Spec : Prop :=
  ∀ n, P14458474605440248021.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P10899538310590669452

`∏{e}[3-A171026(A006530(n+1)+1)², #]`
-/

namespace A043290.P10899538310590669452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A171026 (A006530 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A043290.P10899538310590669452

namespace A043290

/-- `∏{e}[3-A171026(A006530(n+1)+1)², #]` -/
def P10899538310590669452.Spec : Prop :=
  ∀ n, (P10899538310590669452.a n : ℤ) = A043290 (n + 1)

end A043290

/-! ## A043290.P2764796307657632597

`2-A011584((n+1)²)`
-/

namespace A043290.P2764796307657632597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A011584 ((n + 1) ^ 2)

end

end A043290.P2764796307657632597

namespace A043290

/-- `2-A011584((n+1)²)` -/
def P2764796307657632597.Spec : Prop :=
  ∀ n, P2764796307657632597.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P3719368370735191343

`A069877(val(A316563(n+1), 17))`
-/

namespace A043290.P3719368370735191343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (SequenceMachineLib.valuation (A316563 (n + 1)).toNat 17)

end

end A043290.P3719368370735191343

namespace A043290

/-- `A069877(val(A316563(n+1), 17))` -/
def P3719368370735191343.Spec : Prop :=
  ∀ n, P3719368370735191343.a n = A043290 (n + 1)

end A043290

/-! ## A043290.P5875429499956076332

`∏{e}[A068963(n+1), A000010(#)]`
-/

namespace A043290.P5875429499956076332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A043290.P5875429499956076332

namespace A043290

/-- `∏{e}[A068963(n+1), A000010(#)]` -/
def P5875429499956076332.Spec : Prop :=
  ∀ n, P5875429499956076332.a n = A043290 (n + 1)

end A043290

/-!
# A043291: Every run length in base 2 is 2.

The programs for A043291, the canonical program `A043291.P14424377653976249789` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043291 has offset 1).

The definition of A043291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A043291.P14424377653976249789

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=3, a(1)=12, a(2)=51`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A043291

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P14424377653976249789.Spec : Prop :=
  ∀ n, P14424377653976249789.a n = A043291 (n + 1)

theorem P14424377653976249789.correct : P14424377653976249789.Spec := by
  intro n
  simp only [A043291, Nat.add_sub_cancel]

end A043291

/-! ## A043291.P11452951515127999387

`3*A033114(n+1)`
-/

namespace A043291.P11452951515127999387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033114 (n + 1)

end

end A043291.P11452951515127999387

namespace A043291

/-- `3*A033114(n+1)` -/
def P11452951515127999387.Spec : Prop :=
  ∀ n, P11452951515127999387.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P17591521611218279386

`floor(4^(n+2)/5)`
-/

namespace A043291.P17591521611218279386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ (n + 2) : ℚ) / 5⌋

end

end A043291.P17591521611218279386

namespace A043291

/-- `floor(4^(n+2)/5)` -/
def P17591521611218279386.Spec : Prop :=
  ∀ n, P17591521611218279386.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P2345151180009691508

`ogf(3/(1-4x-x^2+4x^3))`
-/

namespace A043291.P2345151180009691508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -4, -1, 4] n

end

end A043291.P2345151180009691508

namespace A043291

/-- `ogf(3/(1-4x-x^2+4x^3))` -/
def P2345151180009691508.Spec : Prop :=
  ∀ n, P2345151180009691508.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P8692887178449785316

`3*∑[4^n-a(n-1)]` with `a(0)=1`
-/

namespace A043291.P8692887178449785316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A043291.P8692887178449785316

namespace A043291

/-- `3*∑[4^n-a(n-1)]` -/
def P8692887178449785316.Spec : Prop :=
  ∀ n, P8692887178449785316.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P17593340834332251642

`4^(n+1)-(a(n-1)+1)` with `a(0)=3`
-/

namespace A043291.P17593340834332251642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (4 ^ (n + 1) : ℤ) - (a (n - 1) + 1)

end

end A043291.P17593340834332251642

namespace A043291

/-- `4^(n+1)-(a(n-1)+1)` -/
def P17593340834332251642.Spec : Prop :=
  ∀ n, P17593340834332251642.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P10951501501262995879

`4*4^n-1-a(n-1)` with `a(0)=3`
-/

namespace A043291.P10951501501262995879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (4 * 4 ^ n : ℤ) - 1 - a (n - 1)

end

end A043291.P10951501501262995879

namespace A043291

/-- `4*4^n-1-a(n-1)` -/
def P10951501501262995879.Spec : Prop :=
  ∀ n, P10951501501262995879.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P12172461050989279446

`a(n-1)+3*or(1, a(n-1))` with `a(0)=3`
-/

namespace A043291.P12172461050989279446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 3 * Nat.lor 1 (a (n - 1))

end

end A043291.P12172461050989279446

namespace A043291

/-- `a(n-1)+3*or(1, a(n-1))` -/
def P12172461050989279446.Spec : Prop :=
  ∀ n, (P12172461050989279446.a n : ℤ) = A043291 (n + 1)

end A043291

/-! ## A043291.P12541266585667652459

`3*(n+1)%2+4*a(n-1)` with `a(0)=3`
-/

namespace A043291.P12541266585667652459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * ((n + 1) % 2) + 4 * a (n - 1)

end

end A043291.P12541266585667652459

namespace A043291

/-- `3*(n+1)%2+4*a(n-1)` -/
def P12541266585667652459.Spec : Prop :=
  ∀ n, (P12541266585667652459.a n : ℤ) = A043291 (n + 1)

end A043291

/-! ## A043291.P1493816223362510644

`4*a(n-1)+gcd(4, a(n-1))-1` with `a(0)=3`
-/

namespace A043291.P1493816223362510644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * a (n - 1) + ((Int.gcd 4 (a (n - 1)) : ℤ) - 1)

end

end A043291.P1493816223362510644

namespace A043291

/-- `4*a(n-1)+gcd(4, a(n-1))-1` -/
def P1493816223362510644.Spec : Prop :=
  ∀ n, P1493816223362510644.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P14679486595116789131

`3-(a(n-1)%4-4*a(n-1))` with `a(0)=3`
-/

namespace A043291.P14679486595116789131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - (Int.tmod (a (n - 1)) 4 - 4 * a (n - 1))

end

end A043291.P14679486595116789131

namespace A043291

/-- `3-(a(n-1)%4-4*a(n-1))` -/
def P14679486595116789131.Spec : Prop :=
  ∀ n, P14679486595116789131.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P3122663236958349931

`A077854(Δ[n²])`
-/

namespace A043291.P3122663236958349931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A043291.P3122663236958349931

namespace A043291

/-- `A077854(Δ[n²])` -/
def P3122663236958349931.Spec : Prop :=
  ∀ n, P3122663236958349931.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P13751309330961990439

`∑[A330795(n+1)]`
-/

namespace A043291.P13751309330961990439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043291.P13751309330961990439

namespace A043291

/-- `∑[A330795(n+1)]` -/
def P13751309330961990439.Spec : Prop :=
  ∀ n, P13751309330961990439.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P8368783452411017497

`3*A083593(2*n)`
-/

namespace A043291.P8368783452411017497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083593 (2 * n)

end

end A043291.P8368783452411017497

namespace A043291

/-- `3*A083593(2*n)` -/
def P8368783452411017497.Spec : Prop :=
  ∀ n, P8368783452411017497.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P4843810644706096772

`3*A281216(2*n)`
-/

namespace A043291.P4843810644706096772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A281216 (2 * n)

end

end A043291.P4843810644706096772

namespace A043291

/-- `3*A281216(2*n)` -/
def P4843810644706096772.Spec : Prop :=
  ∀ n, P4843810644706096772.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P3742180226157549806

`3*A283216(2*n)`
-/

namespace A043291.P3742180226157549806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A283216 (2 * n)

end

end A043291.P3742180226157549806

namespace A043291

/-- `3*A283216(2*n)` -/
def P3742180226157549806.Spec : Prop :=
  ∀ n, P3742180226157549806.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P15730566855227079603

`3*A115451(Δ[n²])`
-/

namespace A043291.P15730566855227079603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A115451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A043291.P15730566855227079603

namespace A043291

/-- `3*A115451(Δ[n²])` -/
def P15730566855227079603.Spec : Prop :=
  ∀ n, P15730566855227079603.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P1412242697759170434

`3*A215095(Δ[n²])`
-/

namespace A043291.P1412242697759170434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A215095 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A043291.P1412242697759170434

namespace A043291

/-- `3*A215095(Δ[n²])` -/
def P1412242697759170434.Spec : Prop :=
  ∀ n, P1412242697759170434.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P7578745073751049929

`∑[record[A199402(n+1)]]`
-/

namespace A043291.P7578745073751049929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199402 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043291.P7578745073751049929

namespace A043291

/-- `∑[record[A199402(n+1)]]` -/
def P7578745073751049929.Spec : Prop :=
  ∀ n, P7578745073751049929.a n = A043291 (n + 1)

end A043291

/-! ## A043291.P6773905173859192363

`∑[A199402(2*n+1)]`
-/

namespace A043291.P6773905173859192363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199402 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043291.P6773905173859192363

namespace A043291

/-- `∑[A199402(2*n+1)]` -/
def P6773905173859192363.Spec : Prop :=
  ∀ n, P6773905173859192363.a n = A043291 (n + 1)

end A043291

/-!
# A043292: Numbers that divide 10^k + 1 for some k.

The programs for A043292, there is no canonical definition to state claims against.
-/

/-! ## A043292.P7896503575657601467

`record[A006530(record[A339352(n)])]`
-/

namespace A043292.P7896503575657601467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P7896503575657601467

/-! ## A043292.P17727215969639858009

`record[A014963(record[A339352(n)])]`
-/

namespace A043292.P17727215969639858009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P17727215969639858009

/-! ## A043292.P13470473489701839053

`record[A020639(record[A339352(n)])]`
-/

namespace A043292.P13470473489701839053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P13470473489701839053

/-! ## A043292.P9238669448011955671

`record[A033677(record[A339352(n)])]`
-/

namespace A043292.P9238669448011955671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P9238669448011955671

/-! ## A043292.P14516354020862778276

`record[A020639(lt[2, A100880(2*n+1)])]`
-/

namespace A043292.P14516354020862778276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100880 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043292.P14516354020862778276

/-!
# A043293: Numbers n such that lcm(sigma(n),phi(n)) is a perfect square.

The programs for A043293, there is no canonical definition to state claims against.
-/

/-! ## A043293.P7923759805329996094

`∑[A334923(A134915(n))]`
-/

namespace A043293.P7923759805329996094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334923 (A134915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043293.P7923759805329996094

/-! ## A043293.P4420482420928042619

`A249728(record[ratio[A305470(n+1)]])`
-/

namespace A043293.P4420482420928042619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305470 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A043293.P4420482420928042619

/-!
# A043294: Sum of digits of binomial(2n,n).

The programs for A043294, the canonical program `A043294.P17313216890179425883` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043294 has offset 1).

The definition of A043294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043294.P17313216890179425883

`∑{digits}[∏[2/(n+1)-4], #]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A043294

/-- `∑{digits}[∏[2/(n+1)-4], #]` -/
def P17313216890179425883.Spec : Prop :=
  ∀ n, (P17313216890179425883.a n : ℤ) = A043294 (n + 1)

theorem P17313216890179425883.correct : P17313216890179425883.Spec := by
  intro n
  simp only [A043294, Nat.add_sub_cancel]

end A043294

/-! ## A043294.P9141463979317541712

`A000027(∑{digits}[A000984(n+1), #])`
-/

namespace A043294.P9141463979317541712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043294.P9141463979317541712

namespace A043294

/-- `A000027(∑{digits}[A000984(n+1), #])` -/
def P9141463979317541712.Spec : Prop :=
  ∀ n, P9141463979317541712.a n = A043294 (n + 1)

end A043294

/-! ## A043294.P9384001193460881288

`A028310(∑{digits}[A000984(n+1), #])`
-/

namespace A043294.P9384001193460881288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043294.P9384001193460881288

namespace A043294

/-- `A028310(∑{digits}[A000984(n+1), #])` -/
def P9384001193460881288.Spec : Prop :=
  ∀ n, P9384001193460881288.a n = A043294 (n + 1)

end A043294

/-! ## A043294.P8730640046637692751

`A000027(∑{digits}[A128014(2*(n+1)), #])`
-/

namespace A043294.P8730640046637692751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043294.P8730640046637692751

namespace A043294

/-- `A000027(∑{digits}[A128014(2*(n+1)), #])` -/
def P8730640046637692751.Spec : Prop :=
  ∀ n, P8730640046637692751.a n = A043294 (n + 1)

end A043294

/-! ## A043294.P7691037772791215020

`∑{digits}[A000984(n+1), #]%A000217(n+6)`
-/

namespace A043294.P7691037772791215020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A000217 (n + 6))

end

end A043294.P7691037772791215020

namespace A043294

/-- `∑{digits}[A000984(n+1), #]%A000217(n+6)` -/
def P7691037772791215020.Spec : Prop :=
  ∀ n, P7691037772791215020.a n = A043294 (n + 1)

end A043294

/-! ## A043294.P344884557364268462

`A096145(∑[4*(n+1)])`
-/

namespace A043294.P344884557364268462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096145 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A043294.P344884557364268462

namespace A043294

/-- `A096145(∑[4*(n+1)])` -/
def P344884557364268462.Spec : Prop :=
  ∀ n, P344884557364268462.a n = A043294 (n + 1)

end A043294

/-! ## A043294.P13653457822217602825

`A000027(∑{digits}[A007318(∑[4*(n+1)]), #])`
-/

namespace A043294.P13653457822217602825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043294.P13653457822217602825

namespace A043294

/-- `A000027(∑{digits}[A007318(∑[4*(n+1)]), #])` -/
def P13653457822217602825.Spec : Prop :=
  ∀ n, P13653457822217602825.a n = A043294 (n + 1)

end A043294

/-!
# A043295: Sum of digits of numerator of Bernoulli number B(2n).

The programs for A043295, there is no canonical definition to state claims against.
-/

/-! ## A043295.P7714186154267427895

`∑{digits}[A000367(n+1), #]`
-/

namespace A043295.P7714186154267427895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P7714186154267427895

/-! ## A043295.P16192163570683136649

`∑{digits}[A027641(A103517(n)), #]`
-/

namespace A043295.P16192163570683136649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A103517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P16192163570683136649

/-! ## A043295.P1380490722421277621

`∑{digits}[A164555(Δ[A002378(n)]), #]`
-/

namespace A043295.P1380490722421277621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P1380490722421277621

/-! ## A043295.P6365429996018769189

`∑{digits}[A027641(A004277(n+1)), #]`
-/

namespace A043295.P6365429996018769189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A004277 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P6365429996018769189

/-! ## A043295.P1379500286121676362

`∑{digits}[A027641(A005408(n)+1), #]`
-/

namespace A043295.P1379500286121676362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A005408 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P1379500286121676362

/-! ## A043295.P10277121517349673619

`∑{digits}[A027641(A005843(n+1)), #]`
-/

namespace A043295.P10277121517349673619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A005843 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P10277121517349673619

/-! ## A043295.P18286550839103726847

`∑{digits}[A162298(A014105(n+1)), #]`
-/

namespace A043295.P18286550839103726847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162298 (A014105 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P18286550839103726847

/-! ## A043295.P706568708501756712

`∑{digits}[A176840(n+2), #]`
-/

namespace A043295.P706568708501756712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176840 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043295.P706568708501756712

/-!
# A043296: Sum of digits of denominator of Bernoulli number B(2n).

The programs for A043296, the canonical program `A043296.P1256347733658503674` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043296 has offset 1).

The definition of A043296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002445, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A043296.P1256347733658503674

`A007953(A002445(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043296

/-- `A007953(A002445(n+1))` -/
def P1256347733658503674.Spec : Prop :=
  ∀ n, P1256347733658503674.a n = A043296 (n + 1)

theorem P1256347733658503674.correct : P1256347733658503674.Spec := by
  intro n
  simp only [A043296, Nat.add_sub_cancel]

end A043296

/-! ## A043296.P4131001122634964163

`∑{digits}[A027762(n+1), #]`
-/

namespace A043296.P4131001122634964163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P4131001122634964163

namespace A043296

/-- `∑{digits}[A027762(n+1), #]` -/
def P4131001122634964163.Spec : Prop :=
  ∀ n, (P4131001122634964163.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P12726762382867970882

`∑{digits}[A140814(n+1), #]`
-/

namespace A043296.P12726762382867970882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P12726762382867970882

namespace A043296

/-- `∑{digits}[A140814(n+1), #]` -/
def P12726762382867970882.Spec : Prop :=
  ∀ n, (P12726762382867970882.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P9855460702900331342

`∑{digits}[A027642(2*(n+1)), #]`
-/

namespace A043296.P9855460702900331342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P9855460702900331342

namespace A043296

/-- `∑{digits}[A027642(2*(n+1)), #]` -/
def P9855460702900331342.Spec : Prop :=
  ∀ n, (P9855460702900331342.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P2274976742265108522

`∑{digits}[A027760(2*(n+1)), #]`
-/

namespace A043296.P2274976742265108522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P2274976742265108522

namespace A043296

/-- `∑{digits}[A027760(2*(n+1)), #]` -/
def P2274976742265108522.Spec : Prop :=
  ∀ n, (P2274976742265108522.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P18329826314016678981

`∑{digits}[A141056(2*(n+1)), #]`
-/

namespace A043296.P18329826314016678981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P18329826314016678981

namespace A043296

/-- `∑{digits}[A141056(2*(n+1)), #]` -/
def P18329826314016678981.Spec : Prop :=
  ∀ n, (P18329826314016678981.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P15961447253734212919

`∑{digits}[A164020(2*(n+1)), #]`
-/

namespace A043296.P15961447253734212919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P15961447253734212919

namespace A043296

/-- `∑{digits}[A164020(2*(n+1)), #]` -/
def P15961447253734212919.Spec : Prop :=
  ∀ n, (P15961447253734212919.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P9057417503120498995

`∑{digits}[2*A001897(n+1), #]`
-/

namespace A043296.P9057417503120498995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P9057417503120498995

namespace A043296

/-- `∑{digits}[2*A001897(n+1), #]` -/
def P9057417503120498995.Spec : Prop :=
  ∀ n, (P9057417503120498995.a n : ℤ) = A043296 (n + 1)

end A043296

/-! ## A043296.P18388408794194722219

`∑{digits}[A006954(n+2), #]`
-/

namespace A043296.P18388408794194722219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006954 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A043296.P18388408794194722219

namespace A043296

/-- `∑{digits}[A006954(n+2), #]` -/
def P18388408794194722219.Spec : Prop :=
  ∀ n, (P18388408794194722219.a n : ℤ) = A043296 (n + 1)

end A043296

/-!
# A043297: Primes p such that B(4*p) has denominator 30 where B(2n) are the Bernoulli numbers.

The programs for A043297, the canonical program `A043297.P1803761097073732209` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043297 has offset 1).

The definition of A043297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043297.P1803761097073732209

`p?[A119480(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043297

/-- `p?[A119480(n+1)]` -/
def P1803761097073732209.Spec : Prop :=
  ∀ n, P1803761097073732209.a n = A043297 (n + 1)

theorem P1803761097073732209.correct : P1803761097073732209.Spec := by
  intro n
  simp only [A043297, Nat.add_sub_cancel]

end A043297

/-! ## A043297.P16953476204589841709

`∩[A045319(n+1), A119480(n+1)]`
-/

namespace A043297.P16953476204589841709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P16953476204589841709

namespace A043297

/-- `∩[A045319(n+1), A119480(n+1)]` -/
def P16953476204589841709.Spec : Prop :=
  ∀ n, (P16953476204589841709.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P13396267628970047743

`∩[A045344(n+1), A119480(n+1)]`
-/

namespace A043297.P13396267628970047743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P13396267628970047743

namespace A043297

/-- `∩[A045344(n+1), A119480(n+1)]` -/
def P13396267628970047743.Spec : Prop :=
  ∀ n, (P13396267628970047743.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P10484791218201531877

`∩[A000040(n+1), A119480(n+1)]`
-/

namespace A043297.P10484791218201531877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P10484791218201531877

namespace A043297

/-- `∩[A000040(n+1), A119480(n+1)]` -/
def P10484791218201531877.Spec : Prop :=
  ∀ n, (P10484791218201531877.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P6063797235347929803

`∩[A051948(n+1), A119480(n+1)]`
-/

namespace A043297.P6063797235347929803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P6063797235347929803

namespace A043297

/-- `∩[A051948(n+1), A119480(n+1)]` -/
def P6063797235347929803.Spec : Prop :=
  ∀ n, (P6063797235347929803.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P9767404339687033439

`∩[A053813(n+1), A119480(n+1)]`
-/

namespace A043297.P9767404339687033439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P9767404339687033439

namespace A043297

/-- `∩[A053813(n+1), A119480(n+1)]` -/
def P9767404339687033439.Spec : Prop :=
  ∀ n, (P9767404339687033439.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P11721127369928998287

`∩[A251595(n+1), A119480(n+1)]`
-/

namespace A043297.P11721127369928998287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P11721127369928998287

namespace A043297

/-- `∩[A251595(n+1), A119480(n+1)]` -/
def P11721127369928998287.Spec : Prop :=
  ∀ n, (P11721127369928998287.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P7672996206321029939

`∩[A066191(n+1), A119480(n+1)]`
-/

namespace A043297.P7672996206321029939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P7672996206321029939

namespace A043297

/-- `∩[A066191(n+1), A119480(n+1)]` -/
def P7672996206321029939.Spec : Prop :=
  ∀ n, (P7672996206321029939.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P14862644351149104624

`record[A006530(A119480(n+2))]`
-/

namespace A043297.P14862644351149104624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A119480 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043297.P14862644351149104624

namespace A043297

/-- `record[A006530(A119480(n+2))]` -/
def P14862644351149104624.Spec : Prop :=
  ∀ n, P14862644351149104624.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P17513826052828402207

`filter[A119480(n+1), A010051(#)]`
-/

namespace A043297.P17513826052828402207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A043297.P17513826052828402207

namespace A043297

/-- `filter[A119480(n+1), A010051(#)]` -/
def P17513826052828402207.Spec : Prop :=
  ∀ n, P17513826052828402207.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P1176958673152050482

`filter[A119480(n+1), A358751(#)]`
-/

namespace A043297.P1176958673152050482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A043297.P1176958673152050482

namespace A043297

/-- `filter[A119480(n+1), A358751(#)]` -/
def P1176958673152050482.Spec : Prop :=
  ∀ n, P1176958673152050482.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P5939595810282063257

`∩[A036844(n+1), A119480(n+1)]`
-/

namespace A043297.P5939595810282063257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P5939595810282063257

namespace A043297

/-- `∩[A036844(n+1), A119480(n+1)]` -/
def P5939595810282063257.Spec : Prop :=
  ∀ n, (P5939595810282063257.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P3273728661043602603

`filter[A119480(n+1), A323153(#)]`
-/

namespace A043297.P3273728661043602603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A043297.P3273728661043602603

namespace A043297

/-- `filter[A119480(n+1), A323153(#)]` -/
def P3273728661043602603.Spec : Prop :=
  ∀ n, P3273728661043602603.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P14105841405864358795

`filter[A119480(n+1), A342460(#)]`
-/

namespace A043297.P14105841405864358795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A043297.P14105841405864358795

namespace A043297

/-- `filter[A119480(n+1), A342460(#)]` -/
def P14105841405864358795.Spec : Prop :=
  ∀ n, P14105841405864358795.a n = A043297 (n + 1)

end A043297

/-! ## A043297.P10622867448553522724

`∩[A106843(n+1), A119480(n+1)]`
-/

namespace A043297.P10622867448553522724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P10622867448553522724

namespace A043297

/-- `∩[A106843(n+1), A119480(n+1)]` -/
def P10622867448553522724.Spec : Prop :=
  ∀ n, (P10622867448553522724.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P12835458597578759500

`∩[A054010(n+1), A119480(n+1)]`
-/

namespace A043297.P12835458597578759500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043297.P12835458597578759500

namespace A043297

/-- `∩[A054010(n+1), A119480(n+1)]` -/
def P12835458597578759500.Spec : Prop :=
  ∀ n, (P12835458597578759500.a n : ℤ) = A043297 (n + 1)

end A043297

/-! ## A043297.P15343509833824726602

`p?[A119656(n+1)+A006093(n+1)]`
-/

namespace A043297.P15343509833824726602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119656 (n + 1) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A043297.P15343509833824726602

namespace A043297

/-- `p?[A119656(n+1)+A006093(n+1)]` -/
def P15343509833824726602.Spec : Prop :=
  ∀ n, P15343509833824726602.a n = A043297 (n + 1)

end A043297

/-!
# A043298: Numbers n such that B(6*n) has denominator 42 where B(2k) are the Bernoulli numbers.

The programs for A043298, there is no canonical definition to state claims against.
-/

/-! ## A043298.P4177401758820529353

`A051227(n+1)/3`
-/

namespace A043298.P4177401758820529353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051227 (n + 1) : ℚ) / 3

end

end A043298.P4177401758820529353

/-! ## A043298.P8708610730766043908

`A051228(n+1)/6`
-/

namespace A043298.P8708610730766043908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051228 (n + 1) : ℚ) / 6

end

end A043298.P8708610730766043908

/-! ## A043298.P7684827799086993769

`A117358(2*lcm(A010696(n), A051227(n+1)))`
-/

namespace A043298.P7684827799086993769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * Int.lcm (A010696 n) (A051227 (n + 1)))

end

end A043298.P7684827799086993769

/-! ## A043298.P14459810573859289720

`A117358(6*A051227(n+1))`
-/

namespace A043298.P14459810573859289720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (6 * A051227 (n + 1)).toNat

end

end A043298.P14459810573859289720

/-! ## A043298.P17646915667648547848

`A002264(A051227(n+1))`
-/

namespace A043298.P17646915667648547848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A051227 (n + 1)).toNat

end

end A043298.P17646915667648547848

/-! ## A043298.P17047591852083132853

`A008611(A051227(n+1)+1)`
-/

namespace A043298.P17047591852083132853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A051227 (n + 1) + 1).toNat

end

end A043298.P17047591852083132853

/-! ## A043298.P15085260504888591601

`A086161(A051227(n+1)-2)`
-/

namespace A043298.P15085260504888591601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A051227 (n + 1) - 2).toNat

end

end A043298.P15085260504888591601

/-! ## A043298.P3137889205915474410

`A051275(A051227(n+1)-3)`
-/

namespace A043298.P3137889205915474410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (A051227 (n + 1) - 3).toNat

end

end A043298.P3137889205915474410

/-! ## A043298.P3471344260554135994

`A051275(or(1, A051227(n+1)))`
-/

namespace A043298.P3471344260554135994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (Int.lor 1 (A051227 (n + 1))).toNat

end

end A043298.P3471344260554135994

/-! ## A043298.P4660236028982225713

`A214685(or(1, A051227(n+1)))`
-/

namespace A043298.P4660236028982225713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (Int.lor 1 (A051227 (n + 1))).toNat

end

end A043298.P4660236028982225713

/-! ## A043298.P15643962301635307401

`A008615(A051228(n+1))`
-/

namespace A043298.P15643962301635307401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A051228 (n + 1)).toNat

end

end A043298.P15643962301635307401

/-! ## A043298.P5448077807193477163

`A214685(2*A051227(n+1))`
-/

namespace A043298.P5448077807193477163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (2 * A051227 (n + 1)).toNat

end

end A043298.P5448077807193477163

/-! ## A043298.P12325173226751998999

`A004396(2*A051227(n+1))-A051227(n+1)`
-/

namespace A043298.P12325173226751998999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A051227 (n + 1)).toNat - A051227 (n + 1)

end

end A043298.P12325173226751998999

