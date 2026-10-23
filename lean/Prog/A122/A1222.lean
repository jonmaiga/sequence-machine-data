import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A122200: Signature permutations of RIBS-transformations of non-recursive Catalan automorphisms in table A089840.

The programs for A122200, there is no canonical definition to state claims against.
-/

/-! ## A122200.P4596256341421159393

`A025581(n)+A122284(n)-A089840(n)`
-/

namespace A122200.P4596256341421159393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A122284 n - A089840 n)

end

end A122200.P4596256341421159393

/-! ## A122200.P5075425171093831412

`A025581(n)+A122202(n)-A122204(n)`
-/

namespace A122200.P5075425171093831412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A122202 n - A122204 n)

end

end A122200.P5075425171093831412

/-! ## A122200.P8480412446565033112

`A025581(n)+A122285(n)-A122288(n)`
-/

namespace A122200.P8480412446565033112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A122285 n - A122288 n)

end

end A122200.P8480412446565033112

/-! ## A122200.P8105800094868159810

`A025581(n-(A122284(n)-A089840(n)))`
-/

namespace A122200.P8105800094868159810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n : ℤ) - (A122284 n - A089840 n)).toNat

end

end A122200.P8105800094868159810

/-! ## A122200.P5310723656828463967

`A025581(n-(A122202(n)-A122204(n)))`
-/

namespace A122200.P5310723656828463967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n : ℤ) - (A122202 n - A122204 n)).toNat

end

end A122200.P5310723656828463967

/-! ## A122200.P14671120939802508037

`A025581(n-(A122285(n)-A122288(n)))`
-/

namespace A122200.P14671120939802508037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n : ℤ) - (A122285 n - A122288 n)).toNat

end

end A122200.P14671120939802508037

/-!
# A122201: Signature permutations of FORK-transformations of non-recursive Catalan automorphisms in table A089840.

The programs for A122201, there is no canonical definition to state claims against.
-/

/-! ## A122201.P12598141246447660437

`A122203(n)+A122285(n)-A122287(n)`
-/

namespace A122201.P12598141246447660437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 n + (A122285 n - A122287 n)

end

end A122201.P12598141246447660437

/-! ## A122201.P8163330695508841480

`A122202(n)+A130400(n)-A130401(n)`
-/

namespace A122201.P8163330695508841480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 n + (A130400 n - A130401 n)

end

end A122201.P8163330695508841480

/-! ## A122201.P980488424266613279

`A089869(A122203(n))+A122204(n)-A130401(n)`
-/

namespace A122201.P980488424266613279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A122203 n).toNat + (A122204 n - A130401 n)

end

end A122201.P980488424266613279

/-! ## A122201.P17147663437158632160

`A122286(n)%A188416(n+1)`
-/

namespace A122201.P17147663437158632160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122286 n) (A188416 (n + 1))

end

end A122201.P17147663437158632160

/-! ## A122201.P17918767974263731720

`A122202(n)^A007318(A125562(n))`
-/

namespace A122201.P17918767974263731720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122202 n : ℚ) ^ (A007318 (A125562 n).toNat : ℤ)

end

end A122201.P17918767974263731720

/-! ## A122201.P857502631816010573

`A122285(n)%A163420(A008527(n))`
-/

namespace A122201.P857502631816010573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122285 n) (A163420 (A008527 n).toNat)

end

end A122201.P857502631816010573

/-! ## A122201.P17237665774753027616

`A335462(A335490(n+1))+A122202(n)`
-/

namespace A122201.P17237665774753027616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A335490 (n + 1)).toNat + A122202 n

end

end A122201.P17237665774753027616

/-! ## A122201.P6370950493677565424

`A122285(A122312(A122311(n)))`
-/

namespace A122201.P6370950493677565424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 (A122312 (A122311 n).toNat).toNat

end

end A122201.P6370950493677565424

/-! ## A122201.P2994297300161452617

`A122202(A025581((n+1)*2*n))`
-/

namespace A122201.P2994297300161452617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 (A025581 ((n + 1) * (2 * n))).toNat

end

end A122201.P2994297300161452617

/-! ## A122201.P3556704119459674207

`and(A122202(n), A316554(n+1))`
-/

namespace A122201.P3556704119459674207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122202 n) (A316554 (n + 1))

end

end A122201.P3556704119459674207

/-!
# A122202: Signature permutations of KROF-transformations of non-recursive Catalan automorphisms in table A089840.

The programs for A122202, there is no canonical definition to state claims against.
-/

/-! ## A122202.P3769554048924275612

`A122285(n)-char[A017756(n+1)]`
-/

namespace A122202.P3769554048924275612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017756 (n + 1 + 92)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122202.P3769554048924275612

/-! ## A122202.P18149252705536629018

`A122285(n)-char[A082131(n+1)]`
-/

namespace A122202.P18149252705536629018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082131 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122202.P18149252705536629018

/-! ## A122202.P2096991729258731567

`A122285(n)-char[A116240(n+1)]`
-/

namespace A122202.P2096991729258731567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116240 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122202.P2096991729258731567

/-! ## A122202.P13004634441120197093

`A122285(n)-char[A250373(n+1)]`
-/

namespace A122202.P13004634441120197093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122202.P13004634441120197093

/-! ## A122202.P3953053299016166285

`A122285(n)-char[A045125(n+2)]`
-/

namespace A122202.P3953053299016166285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045125 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122202.P3953053299016166285

/-! ## A122202.P22347646818409721

`A122285(n)-char[A017197(n+10)]`
-/

namespace A122202.P22347646818409721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 (n + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122202.P22347646818409721

/-! ## A122202.P17986554971175524385

`A122285(n)-char[A025503(2*n+3)]`
-/

namespace A122202.P17986554971175524385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025503 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122202.P17986554971175524385

/-! ## A122202.P4573027396935244604

`A122285(n)-char[A123694(3*n+4)]`
-/

namespace A122202.P4573027396935244604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123694 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122202.P4573027396935244604

/-! ## A122202.P8326370499229613981

`xor(char[A025503(3*(n+1))], A122285(n))`
-/

namespace A122202.P8326370499229613981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025503 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122285 n)

end

end A122202.P8326370499229613981

/-! ## A122202.P12832410593516409647

`A122285(n)-A001222(A239700(n+1))`
-/

namespace A122202.P12832410593516409647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - A001222 (A239700 (n + 1)).toNat

end

end A122202.P12832410593516409647

/-!
# A122203: Signature permutations of SPINE-transformations of non-recursive Catalan automorphisms in table A089840.

The programs for A122203, there is no canonical definition to state claims against.
-/

/-! ## A122203.P12079063204436943249

`A122284(n)-A015989(A297469(n))`
-/

namespace A122203.P12079063204436943249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122284 n - A015989 (A297469 n).toNat

end

end A122203.P12079063204436943249

/-! ## A122203.P4400035787214781210

`A122201(n)+A122287(n)-A122285(n)`
-/

namespace A122203.P4400035787214781210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 n + (A122287 n - A122285 n)

end

end A122203.P4400035787214781210

/-! ## A122203.P1765166243047045924

`A122286(n)+A130400(n)-A122288(n)`
-/

namespace A122203.P1765166243047045924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122286 n + (A130400 n - A122288 n)

end

end A122203.P1765166243047045924

/-! ## A122203.P12959192792472873331

`A089867(A122284(n))+A025439(A028967(n))`
-/

namespace A122203.P12959192792472873331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A122284 n).toNat + A025439 (A028967 n).toNat

end

end A122203.P12959192792472873331

/-! ## A122203.P12566403205121353049

`A089867(A122284(n))+A011730(A053186(n))`
-/

namespace A122203.P12566403205121353049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A122284 n).toNat + A011730 (A053186 n).toNat

end

end A122203.P12566403205121353049

/-! ## A122203.P2511258166547563544

`A089867(A122284(n))+A025462(A080465(n))`
-/

namespace A122203.P2511258166547563544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A122284 n).toNat + A025462 (A080465 (n + 10)).toNat

end

end A122203.P2511258166547563544

/-! ## A122203.P11938932731482808417

`A089870(A122284(n))+A000073(A112315(n))`
-/

namespace A122203.P11938932731482808417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A122284 n).toNat + A000073 (A112315 n).toNat

end

end A122203.P11938932731482808417

/-! ## A122203.P12834057944080782113

`A101637(A117592(n))+A089867(A122284(n))`
-/

namespace A122203.P12834057944080782113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A117592 n).toNat + A089867 (A122284 n).toNat

end

end A122203.P12834057944080782113

/-! ## A122203.P10079770902846179297

`A101637(A141310(n))+A089870(A122284(n))`
-/

namespace A122203.P10079770902846179297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A141310 n).toNat + A089870 (A122284 n).toNat

end

end A122203.P10079770902846179297

/-! ## A122203.P12025468578978005186

`A089867(A122284(n))+A084904(A057521(n+1))`
-/

namespace A122203.P12025468578978005186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A122284 n).toNat + A084904 (A057521 (n + 1)).toNat

end

end A122203.P12025468578978005186

/-!
# A122204: Signature permutations of ENIPS-transformations of non-recursive Catalan automorphisms in table A089840.

The programs for A122204, there is no canonical definition to state claims against.
-/

/-! ## A122204.P7639255348938982752

`A122288(n)-char[A017756(n+1)]`
-/

namespace A122204.P7639255348938982752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017756 (n + 1 + 92)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122204.P7639255348938982752

/-! ## A122204.P6478302353461043492

`A122288(n)-char[A082131(n+1)]`
-/

namespace A122204.P6478302353461043492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082131 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122204.P6478302353461043492

/-! ## A122204.P18319858557332444083

`A122288(n)-char[A116240(n+1)]`
-/

namespace A122204.P18319858557332444083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116240 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122204.P18319858557332444083

/-! ## A122204.P15019578434890120531

`A122288(n)-char[A250373(n+1)]`
-/

namespace A122204.P15019578434890120531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122204.P15019578434890120531

/-! ## A122204.P2340532621611981196

`A122288(n)-char[A045125(n+2)]`
-/

namespace A122204.P2340532621611981196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045125 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122204.P2340532621611981196

/-! ## A122204.P10418203962827342057

`A122288(n)-char[A025503(2*n+3)]`
-/

namespace A122204.P10418203962827342057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025503 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122204.P10418203962827342057

/-! ## A122204.P17532636444756824353

`A122288(n)-char[A123694(3*n+4)]`
-/

namespace A122204.P17532636444756824353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123694 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122204.P17532636444756824353

/-! ## A122204.P18093782010750482916

`xor(char[A025503(3*(n+1))], A122288(n))`
-/

namespace A122204.P18093782010750482916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025503 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122288 n)

end

end A122204.P18093782010750482916

/-! ## A122204.P3024151050104493589

`A122288(n)-A000332(A051699(n))`
-/

namespace A122204.P3024151050104493589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - A000332 (A051699 n).toNat

end

end A122204.P3024151050104493589

/-! ## A122204.P16236743697653536326

`A122288(n)-A001222(A239700(n+1))`
-/

namespace A122204.P16236743697653536326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 n - A001222 (A239700 (n + 1)).toNat

end

end A122204.P16236743697653536326

/-!
# A122205: Number of finite sequences b with b(0) = 1, b(i+1) = b(i)+d where d|b(i), ending with n.

The programs for A122205, there is no canonical definition to state claims against.
-/

/-! ## A122205.P4017354916309395610

`A240328(n²²)+A185216(3*n+1)`
-/

namespace A122205.P4017354916309395610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 ((n ^ 2) ^ 2) + A185216 (3 * n + 1)

end

end A122205.P4017354916309395610

/-! ## A122205.P6077789394526790440

`A247973(A002033(n)+A001590(n))`
-/

namespace A122205.P6077789394526790440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A002033 n + A001590 n).toNat

end

end A122205.P6077789394526790440

/-!
# A122206: Number of sequences b with last index n with b(0) = 1, b(i+1) = b(i)+d where d|b(i).

The programs for A122206, there is no canonical definition to state claims against.
-/

/-! ## A122206.P12498375841357321451

`∑[floor(n!/root(A284728(n+2), 6))]`
-/

namespace A122206.P12498375841357321451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) / (A284728 (n + 2) : ℝ) ^ (1 / (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122206.P12498375841357321451

/-! ## A122206.P5931213396689151185

`A033270(A276573(n!))`
-/

namespace A122206.P5931213396689151185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A276573 (Nat.factorial n)).toNat

end

end A122206.P5931213396689151185

/-! ## A122206.P452018355079092935

`A210357(A027610(n+2))`
-/

namespace A122206.P452018355079092935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A027610 (n + 2)).toNat

end

end A122206.P452018355079092935

/-!
# A122207: Primes of the form A109724[n] = A007504[n^2] or the sum of the first n^2 primes.

The programs for A122207, there is no canonical definition to state claims against.
-/

/-! ## A122207.P10618460044501343198

`A109724(A122208(n+1))`
-/

namespace A122207.P10618460044501343198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (A122208 (n + 1)).toNat

end

end A122207.P10618460044501343198

/-! ## A122207.P8030270813364081283

`A007504(A122208(n+1)²)`
-/

namespace A122207.P8030270813364081283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A122208 (n + 1) ^ 2).toNat

end

end A122207.P8030270813364081283

/-! ## A122207.P4887569847915368177

`∩[A013918(n+1), A109724(n)]`
-/

namespace A122207.P4887569847915368177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122207.P4887569847915368177

/-! ## A122207.P1598014606036088449

`A007504(A122208(n+1)^2)`
-/

namespace A122207.P1598014606036088449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A122208 (n + 1) ^ 2).toNat

end

end A122207.P1598014606036088449

/-! ## A122207.P17763714829145975954

`A007504(A122208(n+1)*A122208(n+1))`
-/

namespace A122207.P17763714829145975954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A122208 (n + 1) * A122208 (n + 1)).toNat

end

end A122207.P17763714829145975954

/-!
# A122208: Numbers n such that the sum of the first n^2 primes A109724(n) = A007504(n^2) is a prime.

The programs for A122208, there is no canonical definition to state claims against.
-/

/-! ## A122208.P10276201627795587514

`record[A056926(A013916(n+1))]`
-/

namespace A122208.P10276201627795587514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A013916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122208.P10276201627795587514

/-! ## A122208.P4520767164109592695

`lt[A105783((n+1)²), acot(n)]+1`
-/

namespace A122208.P4520767164109592695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 ((n + 1) ^ 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A122208.P4520767164109592695

/-! ## A122208.P15781965410582480807

`lt[A105783(4*((C(n, n²)+n)/2)²), 1]`
-/

namespace A122208.P15781965410582480807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (SequenceMachineLib.roundAway (4 * ((Nat.choose n (n ^ 2) + n : ℚ) / 2) ^ 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122208.P15781965410582480807

/-! ## A122208.P10478874957131888539

`lt[A105783((floor(acot(n)+n)+1)*(n+1)), 1]+1`
-/

namespace A122208.P10478874957131888539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 ((⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1) * (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122208.P10478874957131888539

/-! ## A122208.P13235530697595264357

`lt[A105783((n+1)*(A028310(n)+1)), 1]+1`
-/

namespace A122208.P13235530697595264357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 ((n + 1 : ℤ) * (A028310 n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122208.P13235530697595264357

/-!
# A122209: Sum of squares of the first n^2 primes = A024450[n^2].

The programs for A122209, the canonical program `A122209.P962173722163386459` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122209 has offset 1).

The definition of A122209 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122209.P962173722163386459

`A024450((n+1)²)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122209

/-- `A024450((n+1)²)` -/
def P962173722163386459.Spec : Prop :=
  ∀ n, P962173722163386459.a n = A122209 (n + 1)

theorem P962173722163386459.correct : P962173722163386459.Spec := by
  intro n
  simp only [A122209, Nat.add_sub_cancel]

end A122209

/-! ## A122209.P11293717221586646447

`record[A024450(round(or(2, n)/2)²)]`
-/

namespace A122209.P11293717221586646447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (SequenceMachineLib.roundAway ((Nat.lor 2 n : ℚ) / 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122209.P11293717221586646447

namespace A122209

/-- `record[A024450(round(or(2, n)/2)²)]` -/
def P11293717221586646447.Spec : Prop :=
  ∀ n, P11293717221586646447.a n = A122209 (n + 1)

end A122209

/-! ## A122209.P8614350268018546876

`or(char[1], A024450(∑[2*n+1]))`
-/

namespace A122209.P8614350268018546876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A024450 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A122209.P8614350268018546876

namespace A122209

/-- `or(char[1], A024450(∑[2*n+1]))` -/
def P8614350268018546876.Spec : Prop :=
  ∀ n, P8614350268018546876.a n = A122209 (n + 1)

end A122209

/-! ## A122209.P7267118517007479917

`record[A024450(gcd(xor(1, n²), ∑[n])²)]`
-/

namespace A122209.P7267118517007479917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122209.P7267118517007479917

namespace A122209

/-- `record[A024450(gcd(xor(1, n²), ∑[n])²)]` -/
def P7267118517007479917.Spec : Prop :=
  ∀ n, P7267118517007479917.a n = A122209 (n + 1)

end A122209

/-! ## A122209.P13769383180425464980

`record[A024450(A081315(n)²)]`
-/

namespace A122209.P13769383180425464980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A081315 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122209.P13769383180425464980

namespace A122209

/-- `record[A024450(A081315(n)²)]` -/
def P13769383180425464980.Spec : Prop :=
  ∀ n, P13769383180425464980.a n = A122209 (n + 1)

end A122209

/-! ## A122209.P17179793024621628336

`record[A024450(A158416(n)²)]`
-/

namespace A122209.P17179793024621628336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A158416 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122209.P17179793024621628336

namespace A122209

/-- `record[A024450(A158416(n)²)]` -/
def P17179793024621628336.Spec : Prop :=
  ∀ n, P17179793024621628336.a n = A122209 (n + 1)

end A122209

/-! ## A122209.P7297282143742692329

`record[A024450(A286626(n)²)]`
-/

namespace A122209.P7297282143742692329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A286626 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122209.P7297282143742692329

namespace A122209

/-- `record[A024450(A286626(n)²)]` -/
def P7297282143742692329.Spec : Prop :=
  ∀ n, P7297282143742692329.a n = A122209 (n + 1)

end A122209

/-! ## A122209.P2035544424816608638

`record[A024450(A366874(n)²)]`
-/

namespace A122209.P2035544424816608638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A366874 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122209.P2035544424816608638

namespace A122209

/-- `record[A024450(A366874(n)²)]` -/
def P2035544424816608638.Spec : Prop :=
  ∀ n, P2035544424816608638.a n = A122209 (n + 1)

end A122209

/-! ## A122209.P13609966738382269395

`A024525((n+1)²)-1`
-/

namespace A122209.P13609966738382269395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 ((n + 1) ^ 2) - 1

end

end A122209.P13609966738382269395

namespace A122209

/-- `A024525((n+1)²)-1` -/
def P13609966738382269395.Spec : Prop :=
  ∀ n, P13609966738382269395.a n = A122209 (n + 1)

end A122209

/-!
# A122210: Primes in A122209[n].

The programs for A122210, there is no canonical definition to state claims against.
-/

/-! ## A122210.P7438867204296942215

`A122209(A122211(n+1))`
-/

namespace A122210.P7438867204296942215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122209 (A122211 (n + 1)).toNat

end

end A122210.P7438867204296942215

/-!
# A122211: Numbers k such that the sum of squares of the first k^2 primes is a prime.

The programs for A122211, there is no canonical definition to state claims against.
-/

/-! ## A122211.P10696970950817481570

`record[A011773(A293817(2*n+1))]`
-/

namespace A122211.P10696970950817481570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (A293817 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122211.P10696970950817481570

/-! ## A122211.P16565730731216645933

`A145300(A272919(2*(n+1)))-1`
-/

namespace A122211.P16565730731216645933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145300 (A272919 (2 * (n + 1))).toNat - 1

end

end A122211.P16565730731216645933

/-!
# A122212: a(n) is the n-th integer among the positive integers coprime to the sum of the divisors of n.

The programs for A122212, there is no canonical definition to state claims against.
-/

/-! ## A122212.P5347417753960432306

`A130466(∑[n+1])`
-/

namespace A122212.P5347417753960432306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122212.P5347417753960432306

/-! ## A122212.P12533046906150639185

`xor(1, xor(1, A130466(C(n+2, 2))))`
-/

namespace A122212.P12533046906150639185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A130466 (Nat.choose (n + 2) 2)))

end

end A122212.P12533046906150639185

/-! ## A122212.P9182664325062572144

`round(sqrt(A130466(C(n+2, n))²+1))`
-/

namespace A122212.P9182664325062572144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A130466 (Nat.choose (n + 2) n) ^ 2 + 1 : ℝ))

end

end A122212.P9182664325062572144

/-! ## A122212.P11577267971025118101

`A000027(A130466(C(n+2, 2)))`
-/

namespace A122212.P11577267971025118101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A130466 (Nat.choose (n + 2) 2)).toNat

end

end A122212.P11577267971025118101

/-! ## A122212.P16898874117369293457

`A130466(C(n+2, 2))%A154286(n)`
-/

namespace A122212.P16898874117369293457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130466 (Nat.choose (n + 2) 2)) (A154286 n)

end

end A122212.P16898874117369293457

/-! ## A122212.P10851149221022669817

`A130466(A000096(n)+1)+2-4/2`
-/

namespace A122212.P10851149221022669817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130466 (A000096 n + 1).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A122212.P10851149221022669817

/-! ## A122212.P284434120616778243

`A130466(C(n+2, 2))+val(A005117(n+1), 9)`
-/

namespace A122212.P284434120616778243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130466 (Nat.choose (n + 2) 2) + (SequenceMachineLib.valuation (A005117 (n + 1)).toNat 9 : ℤ)

end

end A122212.P284434120616778243

/-! ## A122212.P8896487430357300273

`∑{d}[A130466(A000217(n+1)), A000010(#)]`
-/

namespace A122212.P8896487430357300273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130466 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A122212.P8896487430357300273

/-! ## A122212.P11808856011189344692

`A007318(C(2, n))*A130466(A000217(n+1))`
-/

namespace A122212.P11808856011189344692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A130466 (A000217 (n + 1)).toNat

end

end A122212.P11808856011189344692

/-! ## A122212.P2565877485775779444

`A130466(A000217(n+1))+val(A000032(n), 39)`
-/

namespace A122212.P2565877485775779444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130466 (A000217 (n + 1)).toNat + (SequenceMachineLib.valuation (A000032 n).toNat 39 : ℤ)

end

end A122212.P2565877485775779444

/-!
# A122213: a(n) = (sum of the divisors of n)th integer from among those positive integers which are coprime to n.

The programs for A122213, there is no canonical definition to state claims against.
-/

/-! ## A122213.P5040892739790744686

`A126571(C(A000203(n+1), 2)+n+1)`
-/

namespace A122213.P5040892739790744686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (Nat.choose (A000203 (n + 1)).toNat 2 + (n + 1))

end

end A122213.P5040892739790744686

/-!
# A122214: Numerators in infinite products for Pi/2, e and e^gamma (reduced).

The programs for A122214, there is no canonical definition to state claims against.
-/

/-! ## A122214.P11901979088330695117

`and(Δ[A122216(n)], A122216(n))`
-/

namespace A122214.P11901979088330695117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A122216 n)

end

end A122214.P11901979088330695117

/-! ## A122214.P16378424832670786575

`A097029(A007800(n+1))`
-/

namespace A122214.P16378424832670786575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097029 (A007800 (n + 1)).toNat

end

end A122214.P16378424832670786575

/-! ## A122214.P1317249265728638916

`A097029(A299026(n+1))`
-/

namespace A122214.P1317249265728638916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097029 (A299026 (n + 1)).toNat

end

end A122214.P1317249265728638916

/-!
# A122215: Denominators in infinite products for Pi/2, e and e^gamma (reduced).

The programs for A122215, there is no canonical definition to state claims against.
-/

/-! ## A122215.P9729738714548358458

`A122214(n+1)/A122216(n)*A122217(n)`
-/

namespace A122215.P9729738714548358458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122214 (n + 1) : ℚ) / (A122216 n : ℚ) * (A122217 n : ℚ)

end

end A122215.P9729738714548358458

/-! ## A122215.P7233459456881743856

`A122217(n)/A102086(A014377(n))`
-/

namespace A122215.P7233459456881743856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122217 n : ℚ) / (A102086 (A014377 n).toNat : ℚ)

end

end A122215.P7233459456881743856

/-!
# A122216: Numerators in infinite products for Pi/2, e and e^gamma (unreduced).

The programs for A122216, there is no canonical definition to state claims against.
-/

/-! ## A122216.P12009750435476097454

`A000010(n*a(n-1))²*A001222(n+3)` with `a(0)=1`
-/

namespace A122216.P12009750435476097454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 ((n : ℤ) * a (n - 1)).toNat ^ 2 * A001222 (n + 3)

end

end A122216.P12009750435476097454

/-!
# A122217: Denominators in infinite products for Pi/2, e and e^gamma (unreduced).

The programs for A122217, there is no canonical definition to state claims against.
-/

/-! ## A122217.P10608263234330325949

`∏[A003961(A256774(ceil(2^(n-1))))]`
-/

namespace A122217.P10608263234330325949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A256774 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122217.P10608263234330325949

/-!
# A122218: Pascal array A(n,p,k) for selection of k elements from two sets L and U with n elements in total whereat the nl = n - p elements in L are labeled and the nu = p elements in U are unlabeled and (in this example) with p = 2 (read by rows).

The programs for A122218, the canonical program `A122218.P3700712301954717953` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122218 has offset 0).

The definition of A122218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122218.P3700712301954717953

`A072405(n)-A130716(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A122218

/-- `A072405(n)-A130716(n)` -/
def P3700712301954717953.Spec : Prop :=
  ∀ n, P3700712301954717953.a n = A122218 n

theorem P3700712301954717953.correct : P3700712301954717953.Spec := by
  intro n
  simp only [A122218]

end A122218

/-! ## A122218.P4948955375733216688

`A072405(n)%A000009(n)`
-/

namespace A122218.P4948955375733216688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072405 n) (A000009 n)

end

end A122218.P4948955375733216688

namespace A122218

/-- `A072405(n)%A000009(n)` -/
def P4948955375733216688.Spec : Prop :=
  ∀ n, P4948955375733216688.a n = A122218 n

end A122218

/-! ## A122218.P17503035478162348814

`A072405(n)-char[A024032(n)]`
-/

namespace A122218.P17503035478162348814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122218.P17503035478162348814

namespace A122218

/-- `A072405(n)-char[A024032(n)]` -/
def P17503035478162348814.Spec : Prop :=
  ∀ n, P17503035478162348814.a n = A122218 n

end A122218

/-! ## A122218.P15326637033149219547

`A072405(n)-char[A060024(n)]`
-/

namespace A122218.P15326637033149219547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060024 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122218.P15326637033149219547

namespace A122218

/-- `A072405(n)-char[A060024(n)]` -/
def P15326637033149219547.Spec : Prop :=
  ∀ n, P15326637033149219547.a n = A122218 n

end A122218

/-! ## A122218.P10152107768792942039

`A072405(n)-A000007(floor(n/3))`
-/

namespace A122218.P10152107768792942039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n - A000007 ⌊(n : ℚ) / 3⌋.toNat

end

end A122218.P10152107768792942039

namespace A122218

/-- `A072405(n)-A000007(floor(n/3))` -/
def P10152107768792942039.Spec : Prop :=
  ∀ n, P10152107768792942039.a n = A122218 n

end A122218

/-! ## A122218.P14243287521426408744

`A072405(n)-char[2-A001222(n+1)]`
-/

namespace A122218.P14243287521426408744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001222 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122218.P14243287521426408744

namespace A122218

/-- `A072405(n)-char[2-A001222(n+1)]` -/
def P14243287521426408744.Spec : Prop :=
  ∀ n, P14243287521426408744.a n = A122218 n

end A122218

/-! ## A122218.P1924487035039372220

`A072405(n)-A019590(A019590(n+1)+n)`
-/

namespace A122218.P1924487035039372220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n - A019590 (A019590 (n + 1) + (n : ℤ)).toNat

end

end A122218.P1924487035039372220

namespace A122218

/-- `A072405(n)-A019590(A019590(n+1)+n)` -/
def P1924487035039372220.Spec : Prop :=
  ∀ n, P1924487035039372220.a n = A122218 n

end A122218

/-! ## A122218.P11033241727859223967

`-(-A072405(n)%A006498(n))`
-/

namespace A122218.P11033241727859223967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A072405 n) (A006498 n)

end

end A122218.P11033241727859223967

namespace A122218

/-- `-(-A072405(n)%A006498(n))` -/
def P11033241727859223967.Spec : Prop :=
  ∀ n, P11033241727859223967.a n = A122218 n

end A122218

/-! ## A122218.P6951436884248275267

`and(A072405(n), A275016(n+1))`
-/

namespace A122218.P6951436884248275267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072405 n) (A275016 (n + 1))

end

end A122218.P6951436884248275267

namespace A122218

/-- `and(A072405(n), A275016(n+1))` -/
def P6951436884248275267.Spec : Prop :=
  ∀ n, P6951436884248275267.a n = A122218 n

end A122218

/-! ## A122218.P11929265764627545590

`and(A072405(n), A274626(n))`
-/

namespace A122218.P11929265764627545590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072405 n) (A274626 n)

end

end A122218.P11929265764627545590

namespace A122218

/-- `and(A072405(n), A274626(n))` -/
def P11929265764627545590.Spec : Prop :=
  ∀ n, P11929265764627545590.a n = A122218 n

end A122218

/-! ## A122218.P11602179229301723340

`and(A072405(n), A386875(n))`
-/

namespace A122218.P11602179229301723340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072405 n) (A386875 n)

end

end A122218.P11602179229301723340

namespace A122218

/-- `and(A072405(n), A386875(n))` -/
def P11602179229301723340.Spec : Prop :=
  ∀ n, P11602179229301723340.a n = A122218 n

end A122218

/-! ## A122218.P11090573478108371896

`and(A072405(n), A089226(n+1))`
-/

namespace A122218.P11090573478108371896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072405 n) (A089226 (n + 1))

end

end A122218.P11090573478108371896

namespace A122218

/-- `and(A072405(n), A089226(n+1))` -/
def P11090573478108371896.Spec : Prop :=
  ∀ n, P11090573478108371896.a n = A122218 n

end A122218

/-! ## A122218.P10896975547016016694

`and(A072405(n), A102029(n+1))`
-/

namespace A122218.P10896975547016016694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072405 n) (A102029 (n + 1))

end

end A122218.P10896975547016016694

namespace A122218

/-- `and(A072405(n), A102029(n+1))` -/
def P10896975547016016694.Spec : Prop :=
  ∀ n, P10896975547016016694.a n = A122218 n

end A122218

/-! ## A122218.P7332389925619842299

`and(A048099(n+1), A072405(n))`
-/

namespace A122218.P7332389925619842299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048099 (n + 1)) (A072405 n)

end

end A122218.P7332389925619842299

namespace A122218

/-- `and(A048099(n+1), A072405(n))` -/
def P7332389925619842299.Spec : Prop :=
  ∀ n, P7332389925619842299.a n = A122218 n

end A122218

/-!
# A122219: Period 9: repeat 5, 4, 5, 4, 3, 4, 5, 4, 5.

The programs for A122219, the canonical program `A122219.P12177395638374466416` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122219 has offset 0).

The definition of A122219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122219.P12177395638374466416

`5-∑[n/gcd(3, n)]%3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122219

/-- `5-∑[n/gcd(3, n)]%3` -/
def P12177395638374466416.Spec : Prop :=
  ∀ n, P12177395638374466416.a n = A122219 n

theorem P12177395638374466416.correct : P12177395638374466416.Spec := by
  intro n
  simp only [A122219]

end A122219

/-!
# A122220: a(n) = (prime(n)^6 - prime(n)^2)/20.

The programs for A122220, the canonical program `A122220.P15811966447984658883` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122220 has offset 1).

The definition of A122220 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030516, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122220.P2253805808393519045

`A138441(n+1)/10`
-/

namespace A122220.P2253805808393519045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / 10

end

end A122220.P2253805808393519045

namespace A122220

/-- `A138441(n+1)/10` -/
def P2253805808393519045.Spec : Prop :=
  ∀ n, P2253805808393519045.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P15811966447984658883

`(A030516(n+1)-A001248(n+1))/20`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122220

/-- `(A030516(n+1)-A001248(n+1))/20` -/
def P15811966447984658883.Spec : Prop :=
  ∀ n, P15811966447984658883.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P2954379968158099411

`A001248(n+1)*(A030514(n+1)-1)/20`
-/

namespace A122220.P2954379968158099411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) * (A030514 (n + 1) - 1) : ℚ) / 20

end

end A122220.P2954379968158099411

namespace A122220

/-- `A001248(n+1)*(A030514(n+1)-1)/20` -/
def P2954379968158099411.Spec : Prop :=
  ∀ n, P2954379968158099411.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P4540650089990855099

`A138446(n+1)/2`
-/

namespace A122220.P4540650089990855099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138446 (n + 1) : ℚ) / 2

end

end A122220.P4540650089990855099

namespace A122220

/-- `A138446(n+1)/2` -/
def P4540650089990855099.Spec : Prop :=
  ∀ n, P4540650089990855099.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P12805947533587328557

`3*A138451(n+1)`
-/

namespace A122220.P12805947533587328557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138451 (n + 1)

end

end A122220.P12805947533587328557

namespace A122220

/-- `3*A138451(n+1)` -/
def P12805947533587328557.Spec : Prop :=
  ∀ n, P12805947533587328557.a n = A122220 (n + 1)

end A122220

/-! ## A122220.P2880392629347051995

`A138444(n+1)/4`
-/

namespace A122220.P2880392629347051995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138444 (n + 1) : ℚ) / 4

end

end A122220.P2880392629347051995

namespace A122220

/-- `A138444(n+1)/4` -/
def P2880392629347051995.Spec : Prop :=
  ∀ n, P2880392629347051995.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P11761317425683954756

`A138443(n+1)/5`
-/

namespace A122220.P11761317425683954756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138443 (n + 1) : ℚ) / 5

end

end A122220.P11761317425683954756

namespace A122220

/-- `A138443(n+1)/5` -/
def P11761317425683954756.Spec : Prop :=
  ∀ n, P11761317425683954756.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P10632798434731342816

`A138409(n+1)/20`
-/

namespace A122220.P10632798434731342816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 20

end

end A122220.P10632798434731342816

namespace A122220

/-- `A138409(n+1)/20` -/
def P10632798434731342816.Spec : Prop :=
  ∀ n, P10632798434731342816.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P5741502492809518286

`3/2*A138450(n+1)`
-/

namespace A122220.P5741502492809518286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A138450 (n + 1) : ℚ)

end

end A122220.P5741502492809518286

namespace A122220

/-- `3/2*A138450(n+1)` -/
def P5741502492809518286.Spec : Prop :=
  ∀ n, P5741502492809518286.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P16848582359510584447

`3/4*A138448(n+1)`
-/

namespace A122220.P16848582359510584447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A138448 (n + 1) : ℚ)

end

end A122220.P16848582359510584447

namespace A122220

/-- `3/4*A138448(n+1)` -/
def P16848582359510584447.Spec : Prop :=
  ∀ n, P16848582359510584447.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P9713013676889957722

`3/5*A138447(n+1)`
-/

namespace A122220.P9713013676889957722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A138447 (n + 1) : ℚ)

end

end A122220.P9713013676889957722

namespace A122220

/-- `3/5*A138447(n+1)` -/
def P9713013676889957722.Spec : Prop :=
  ∀ n, P9713013676889957722.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P2018655612266292443

`A138451(n+1)+A138450(n+1)`
-/

namespace A122220.P2018655612266292443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138451 (n + 1) + A138450 (n + 1)

end

end A122220.P2018655612266292443

namespace A122220

/-- `A138451(n+1)+A138450(n+1)` -/
def P2018655612266292443.Spec : Prop :=
  ∀ n, P2018655612266292443.a n = A122220 (n + 1)

end A122220

/-! ## A122220.P12640645300348114780

`A138443(n+1)-A138444(n+1)`
-/

namespace A122220.P12640645300348114780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138443 (n + 1) - A138444 (n + 1)

end

end A122220.P12640645300348114780

namespace A122220

/-- `A138443(n+1)-A138444(n+1)` -/
def P12640645300348114780.Spec : Prop :=
  ∀ n, P12640645300348114780.a n = A122220 (n + 1)

end A122220

/-! ## A122220.P12331295517756914087

`A138447(n+1)-A138450(n+1)`
-/

namespace A122220.P12331295517756914087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138447 (n + 1) - A138450 (n + 1)

end

end A122220.P12331295517756914087

namespace A122220

/-- `A138447(n+1)-A138450(n+1)` -/
def P12331295517756914087.Spec : Prop :=
  ∀ n, P12331295517756914087.a n = A122220 (n + 1)

end A122220

/-! ## A122220.P1669709307447516407

`A138448(n+1)-A138451(n+1)`
-/

namespace A122220.P1669709307447516407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138448 (n + 1) - A138451 (n + 1)

end

end A122220.P1669709307447516407

namespace A122220

/-- `A138448(n+1)-A138451(n+1)` -/
def P1669709307447516407.Spec : Prop :=
  ∀ n, P1669709307447516407.a n = A122220 (n + 1)

end A122220

/-! ## A122220.P4603821292942133131

`gcd(A138443(n+1), A138446(n+1))`
-/

namespace A122220.P4603821292942133131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138443 (n + 1)) (A138446 (n + 1))

end

end A122220.P4603821292942133131

namespace A122220

/-- `gcd(A138443(n+1), A138446(n+1))` -/
def P4603821292942133131.Spec : Prop :=
  ∀ n, (P4603821292942133131.a n : ℤ) = A122220 (n + 1)

end A122220

/-! ## A122220.P8337641052012916549

`2*A138448(n+1)-A138447(n+1)`
-/

namespace A122220.P8337641052012916549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138448 (n + 1) - A138447 (n + 1)

end

end A122220.P8337641052012916549

namespace A122220

/-- `2*A138448(n+1)-A138447(n+1)` -/
def P8337641052012916549.Spec : Prop :=
  ∀ n, P8337641052012916549.a n = A122220 (n + 1)

end A122220

/-! ## A122220.P6517800061633467340

`(A138450(n+1)+A138448(n+1))/2`
-/

namespace A122220.P6517800061633467340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138450 (n + 1) + A138448 (n + 1) : ℚ) / 2

end

end A122220.P6517800061633467340

namespace A122220

/-- `(A138450(n+1)+A138448(n+1))/2` -/
def P6517800061633467340.Spec : Prop :=
  ∀ n, P6517800061633467340.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P8111898551224353424

`(A138451(n+1)+A138447(n+1))/2`
-/

namespace A122220.P8111898551224353424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138451 (n + 1) + A138447 (n + 1) : ℚ) / 2

end

end A122220.P8111898551224353424

namespace A122220

/-- `(A138451(n+1)+A138447(n+1))/2` -/
def P8111898551224353424.Spec : Prop :=
  ∀ n, P8111898551224353424.a n = (A122220 (n + 1) : ℚ)

end A122220

/-! ## A122220.P3501399311802134725

`A138445(n+1)/2-A138450(n+1)`
-/

namespace A122220.P3501399311802134725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) / 2 - (A138450 (n + 1) : ℚ)

end

end A122220.P3501399311802134725

namespace A122220

/-- `A138445(n+1)/2-A138450(n+1)` -/
def P3501399311802134725.Spec : Prop :=
  ∀ n, P3501399311802134725.a n = (A122220 (n + 1) : ℚ)

end A122220

/-!
# A122221: Largest number k such that k! < (n!)^n.

The programs for A122221, there is no canonical definition to state claims against.
-/

/-! ## A122221.P4480081664445386220

`∑[A102354(A173534(n))+n+1]`
-/

namespace A122221.P4480081664445386220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (A173534 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122221.P4480081664445386220

/-! ## A122221.P15411380214892742253

`∑[A071028(A008937(n)-A000035(n))+1+n]`
-/

namespace A122221.P15411380214892742253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A008937 n - A000035 n).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122221.P15411380214892742253

/-! ## A122221.P4051679662673813342

`A127321(A220084(n))+∑[n]+1`
-/

namespace A122221.P4051679662673813342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A220084 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A122221.P4051679662673813342

/-! ## A122221.P2035315925539624024

`A084558(A202212(n+2))+∑[n+1]`
-/

namespace A122221.P2035315925539624024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A202212 (n + 2)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A122221.P2035315925539624024

/-! ## A122221.P1526008452784017670

`∑[A000002(A178493(n+1)+A011782(n))+n]`
-/

namespace A122221.P1526008452784017670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A178493 (n + 1) + A011782 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122221.P1526008452784017670

/-!
# A122225: (1/4)*number of nonsquare rectangles with corners on an n X n grid of points.

The programs for A122225, there is no canonical definition to state claims against.
-/

/-! ## A122225.P11270595600906494023

`(A085582(n+3)-A002415(n+3))/4`
-/

namespace A122225.P11270595600906494023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085582 (n + 3) - A002415 (n + 3) : ℚ) / 4

end

end A122225.P11270595600906494023

/-! ## A122225.P5585554435013270388

`∑[∑[∑[A007920(4^n)+2*n]]]`
-/

namespace A122225.P5585554435013270388
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (4 ^ n) + (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122225.P5585554435013270388

/-! ## A122225.P17417953786665677761

`A219027(A145549(n+1))+A161409(n)`
-/

namespace A122225.P17417953786665677761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219027 (A145549 (n + 1)).toNat + A161409 n

end

end A122225.P17417953786665677761

/-!
# A122227: a(n) = A057548(A057117(n)).

The programs for A122227, there is no canonical definition to state claims against.
-/

/-! ## A122227.P16162794758734193433

`A057548(A057117(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122227.P16162794758734193433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (A057117 n).toNat

end

end A122227.P16162794758734193433

/-! ## A122227.P11562323333007209976

`filter[A057117(n), A083923(#)]`
-/

namespace A122227.P11562323333007209976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083923 (f1 j).toNat = 1) n)

end

end A122227.P11562323333007209976

/-! ## A122227.P5665860069552718885

`A057548(A082356(n)%A057751(n))`
-/

namespace A122227.P5665860069552718885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (Int.tmod (A082356 n) (A057751 n)).toNat

end

end A122227.P5665860069552718885

/-! ## A122227.P9150292098222021374

`A122237(A082357(A082356(n)))`
-/

namespace A122227.P9150292098222021374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122237 (A082357 (A082356 n).toNat).toNat

end

end A122227.P9150292098222021374

/-! ## A122227.P616989169450243048

`A122237(A082355(A082358(n)))`
-/

namespace A122227.P616989169450243048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122237 (A082355 (A082358 n).toNat).toNat

end

end A122227.P616989169450243048

/-!
# A122228: Iterates of A122227, starting from 0.

The programs for A122228, there is no canonical definition to state claims against.
-/

/-! ## A122228.P6381359472171577193

`record[A130994(record[A130957(n)])]`
-/

namespace A122228.P6381359472171577193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130957 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130994 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122228.P6381359472171577193

/-! ## A122228.P12262942933019834456

`record[A130985(record[A130998(n)])]`
-/

namespace A122228.P12262942933019834456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130985 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122228.P12262942933019834456

/-! ## A122228.P10356931316934331031

`record[A130985(record[A131010(n)])]`
-/

namespace A122228.P10356931316934331031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130985 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122228.P10356931316934331031

/-! ## A122228.P18082777048296082896

`A130371(A069770(∑[(4-6/n)*a(n-1)]))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A122228.P18082777048296082896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 (A069770 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A122228.P18082777048296082896

/-! ## A122228.P17338942304149260739

`A069770(A130375(∑[(4-6/n)*a(n-1)]))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A122228.P17338942304149260739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130375 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A122228.P17338942304149260739

/-!
# A122229: a(n) = A014486(A122228(n)).

The programs for A122229, there is no canonical definition to state claims against.
-/

/-! ## A122229.P13820369347557488197

`A014486(A122228(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122229.P13820369347557488197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A122228 n).toNat

end

end A122229.P13820369347557488197

/-! ## A122229.P15972342331973396485

`ogf((2x+4x^2+6x^3)/(1-4x-x^2+4x^3))`
-/

namespace A122229.P15972342331973396485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, 6] [1, -4, -1, 4] n

end

end A122229.P15972342331973396485

/-! ## A122229.P18412843685679572635

`4*(a(n-1)+n%2+1)` with `a(0)=0, a(1)=2`
-/

namespace A122229.P18412843685679572635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * (a (n - 1) + (n % 2 + 1))

end

end A122229.P18412843685679572635

/-! ## A122229.P17802976058321234050

`4*(a(n-1)+gcd(2, n+1))` with `a(0)=0, a(1)=2`
-/

namespace A122229.P17802976058321234050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * (a (n - 1) + Nat.gcd 2 (n + 1))

end

end A122229.P17802976058321234050

/-! ## A122229.P12943477967864551718

`4*(and(1, n)+a(n-1)+1)` with `a(0)=0, a(1)=2`
-/

namespace A122229.P12943477967864551718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * (Nat.land 1 n + (a (n - 1) + 1))

end

end A122229.P12943477967864551718

/-!
# A122230: a(n) = A007088(A122229(n)).

The programs for A122230, there is no canonical definition to state claims against.
-/

/-! ## A122230.P15295027541935631272

`A007088(A122229(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122230.P15295027541935631272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A122229 n).toNat

end

end A122230.P15295027541935631272

/-! ## A122230.P4960514054819707627

`A063171(A122228(n))`
-/

namespace A122230.P4960514054819707627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A122228 n).toNat

end

end A122230.P4960514054819707627

/-! ## A122230.P14637144102620931079

`A099820(A122229(n)/2)`
-/

namespace A122230.P14637144102620931079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.roundAway ((A122229 n : ℚ) / 2)).toNat

end

end A122230.P14637144102620931079

/-!
# A122231: Iterates of A122227, starting from A122227(4)=17.

The programs for A122231, there is no canonical definition to state claims against.
-/

/-! ## A122231.P13581399468510347960

`A057548(A057117(a(n-1)))` with `a(0)=4`
-/

namespace A122231.P13581399468510347960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A057548 (A057117 (a (n - 1)).toNat).toNat

end

end A122231.P13581399468510347960

/-!
# A122232: a(n) = A014486(A122231(n)).

The programs for A122232, there is no canonical definition to state claims against.
-/

/-! ## A122232.P14454298289514851463

`A014486(A122231(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122232.P14454298289514851463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A122231 (n + 1)).toNat

end

end A122232.P14454298289514851463

/-! ## A122232.P12592948240720870180

`A194045(A122231(n+1))/A079416(n+1)`
-/

namespace A122232.P12592948240720870180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 (A122231 (n + 1)).toNat : ℚ) / (A079416 (n + 1) : ℚ)

end

end A122232.P12592948240720870180

/-!
# A122233: a(n) = A007088(A122232(n)).

The programs for A122233, there is no canonical definition to state claims against.
-/

/-! ## A122233.P4425422475779552719

`A007088(A122232(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122233.P4425422475779552719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A122232 (n + 1)).toNat

end

end A122233.P4425422475779552719

/-! ## A122233.P18095392333874133555

`A063171(A122231(n+1))`
-/

namespace A122233.P18095392333874133555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A122231 (n + 1)).toNat

end

end A122233.P18095392333874133555

/-!
# A122234: Iterates of A122227, starting from A122227(5)=18.

The programs for A122234, there is no canonical definition to state claims against.
-/

/-! ## A122234.P18403826772602966786

`A057548(A057117(a(n-1)))` with `a(0)=5`
-/

namespace A122234.P18403826772602966786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A057548 (A057117 (a (n - 1)).toNat).toNat

end

end A122234.P18403826772602966786

/-!
# A122235: a(n) = A014486(A122234(n)).

The programs for A122235, there is no canonical definition to state claims against.
-/

/-! ## A122235.P6530400182912076983

`A014486(A122234(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122235.P6530400182912076983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A122234 (n + 1)).toNat

end

end A122235.P6530400182912076983

/-! ## A122235.P14543225288503701293

`A040001(2*(n+1))*A057520(A122234(n+1))`
-/

namespace A122235.P14543225288503701293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * (n + 1)) * A057520 (A122234 (n + 1)).toNat

end

end A122235.P14543225288503701293

/-!
# A122236: a(n) = A007088(A122235(n)).

The programs for A122236, there is no canonical definition to state claims against.
-/

/-! ## A122236.P1378598052408024754

`A007088(A122235(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122236.P1378598052408024754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A122235 (n + 1)).toNat

end

end A122236.P1378598052408024754

/-! ## A122236.P14850996685412101542

`A063171(A122234(n+1))`
-/

namespace A122236.P14850996685412101542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A122234 (n + 1)).toNat

end

end A122236.P14850996685412101542

/-!
# A122237: a(n) = A057548(A082358(n)).

The programs for A122237, there is no canonical definition to state claims against.
-/

/-! ## A122237.P15387994492439189930

`A057548(A082358(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122237.P15387994492439189930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (A082358 n).toNat

end

end A122237.P15387994492439189930

/-! ## A122237.P17622110083780643617

`A082358(A072795(n))`
-/

namespace A122237.P17622110083780643617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082358 (A072795 n).toNat

end

end A122237.P17622110083780643617

/-! ## A122237.P5932982712866647683

`filter[A082358(n), A083923(#)]`
-/

namespace A122237.P5932982712866647683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083923 (f1 j).toNat = 1) n)

end

end A122237.P5932982712866647683

/-! ## A122237.P6768160451661963266

`A057163(A082356(A080067(A057164(A057163(n)))))`
-/

namespace A122237.P6768160451661963266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082356 (A080067 (A057164 (A057163 n).toNat).toNat).toNat).toNat

end

end A122237.P6768160451661963266

/-! ## A122237.P5361510666406043730

`A122227(A082357(A082356(n)))`
-/

namespace A122237.P5361510666406043730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122227 (A082357 (A082356 n).toNat).toNat

end

end A122237.P5361510666406043730

/-!
# A122238: Iterates of A122227, starting from A122227(7)=22.

The programs for A122238, there is no canonical definition to state claims against.
-/

/-! ## A122238.P13612204131586386973

`∑[or(3, A304714(A056119(n)+16))]`
-/

namespace A122238.P13612204131586386973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A304714 (A056119 n + 16).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122238.P13612204131586386973

/-!
# A122239: a(n) = A014486(A122238(n)).

The programs for A122239, there is no canonical definition to state claims against.
-/

/-! ## A122239.P13350473122088652790

`A014486(A122238(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122239.P13350473122088652790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A122238 (n + 1)).toNat

end

end A122239.P13350473122088652790

/-! ## A122239.P11655942669158392557

`A194045(A122238(n+1))/A079416(n+1)`
-/

namespace A122239.P11655942669158392557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 (A122238 (n + 1)).toNat : ℚ) / (A079416 (n + 1) : ℚ)

end

end A122239.P11655942669158392557

/-!
# A122240: a(n) = A007088(A122239(n)).

The programs for A122240, there is no canonical definition to state claims against.
-/

/-! ## A122240.P6890437133911110628

`A007088(A122239(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122240.P6890437133911110628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A122239 (n + 1)).toNat

end

end A122240.P6890437133911110628

/-! ## A122240.P17695280102846994775

`A063171(A122238(n+1))`
-/

namespace A122240.P17695280102846994775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A122238 (n + 1)).toNat

end

end A122240.P17695280102846994775

/-!
# A122241: Iterates of A122237, starting from 4.

The programs for A122241, there is no canonical definition to state claims against.
-/

/-! ## A122241.P3470851189608507393

`A338995(n)+A245450(A127996(n+1))`
-/

namespace A122241.P3470851189608507393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338995 n + A245450 (A127996 (n + 1)).toNat

end

end A122241.P3470851189608507393

/-!
# A122242: a(n) = A014486(A122241(n)).

The programs for A122242, there is no canonical definition to state claims against.
-/

/-! ## A122242.P18038630779518659514

`A014486(A122241(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122242.P18038630779518659514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A122241 (n + 1)).toNat

end

end A122242.P18038630779518659514

/-! ## A122242.P6545480007275567449

`A057520(A122241(n+1))*A079416(n+1)`
-/

namespace A122242.P6545480007275567449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 (A122241 (n + 1)).toNat * A079416 (n + 1)

end

end A122242.P6545480007275567449

/-!
# A122243: a(n) = A007088(A122242(n)).

The programs for A122243, there is no canonical definition to state claims against.
-/

/-! ## A122243.P13846134165019193319

`A007088(A122242(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122243.P13846134165019193319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A122242 (n + 1)).toNat

end

end A122243.P13846134165019193319

/-! ## A122243.P18028210686510247834

`A063171(A122241(n+1))`
-/

namespace A122243.P18028210686510247834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A122241 (n + 1)).toNat

end

end A122243.P18028210686510247834

/-!
# A122244: Iterates of A122237, starting from 5.

The programs for A122244, there is no canonical definition to state claims against.
-/

/-! ## A122244.P9022595208534727410

`A014085(A202085(2*(n+2))+A085731(n+1))`
-/

namespace A122244.P9022595208534727410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A202085 (2 * (n + 2)) + A085731 (n + 1)).toNat

end

end A122244.P9022595208534727410

/-!
# A122245: a(n) = A014486(A122244(n)).

The programs for A122245, there is no canonical definition to state claims against.
-/

/-! ## A122245.P1720307036665519539

`A014486(A122244(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122245.P1720307036665519539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A122244 (n + 1)).toNat

end

end A122245.P1720307036665519539

/-! ## A122245.P3522285109458550371

`A057520(A122244(n+1))*A079416(n+1)`
-/

namespace A122245.P3522285109458550371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 (A122244 (n + 1)).toNat * A079416 (n + 1)

end

end A122245.P3522285109458550371

/-!
# A122246: a(n) = A007088(A122245(n)).

The programs for A122246, there is no canonical definition to state claims against.
-/

/-! ## A122246.P14803008759543580473

`A007088(A122245(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122246.P14803008759543580473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A122245 (n + 1)).toNat

end

end A122246.P14803008759543580473

/-! ## A122246.P13377884851062867595

`A063171(A122244(n+1))`
-/

namespace A122246.P13377884851062867595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A122244 (n + 1)).toNat

end

end A122246.P13377884851062867595

/-!
# A122247: Partial sums of A005187.

The programs for A122247, the canonical program `A122247.P764438229139541202` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122247 has offset 0).

The definition of A122247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122247.P764438229139541202

`∑[∑[∑{e}[xor(n, -n), #]]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122247

/-- `∑[∑[∑{e}[xor(n, -n), #]]]` -/
def P764438229139541202.Spec : Prop :=
  ∀ n, (P764438229139541202.a n : ℤ) = A122247 n

theorem P764438229139541202.correct : P764438229139541202.Spec := by
  intro n
  simp only [A122247]

end A122247

/-! ## A122247.P12961586347856514250

`∑[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A122247.P12961586347856514250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P12961586347856514250

namespace A122247

/-- `∑[a(floor(n/2))+n]` -/
def P12961586347856514250.Spec : Prop :=
  ∀ n, (P12961586347856514250.a n : ℤ) = A122247 n

end A122247

/-! ## A122247.P10923372177781027933

`abs(∑[a(floor(n/2))-n])` with `a(0)=0`
-/

namespace A122247.P10923372177781027933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A122247.P10923372177781027933

namespace A122247

/-- `abs(∑[a(floor(n/2))-n])` -/
def P10923372177781027933.Spec : Prop :=
  ∀ n, P10923372177781027933.a n = A122247 n

end A122247

/-! ## A122247.P1202537286138322589

`-∑[a(floor(n/2))-n]` with `a(0)=0`
-/

namespace A122247.P1202537286138322589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122247.P1202537286138322589

namespace A122247

/-- `-∑[a(floor(n/2))-n]` -/
def P1202537286138322589.Spec : Prop :=
  ∀ n, P1202537286138322589.a n = A122247 n

end A122247

/-! ## A122247.P10301900200600098902

`∑[∑[a(∑[n]%n)+1]]` with `a(0)=0`
-/

namespace A122247.P10301900200600098902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ((∑ j ∈ Finset.range (n + 1), f3 j) % n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P10301900200600098902

namespace A122247

/-- `∑[∑[a(∑[n]%n)+1]]` -/
def P10301900200600098902.Spec : Prop :=
  ∀ n, (P10301900200600098902.a n : ℤ) = A122247 n

end A122247

/-! ## A122247.P13204942499951568816

`∑[record[val(n, 2)-a(n-1)]]` with `a(0)=0`
-/

namespace A122247.P13204942499951568816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P13204942499951568816

namespace A122247

/-- `∑[record[val(n, 2)-a(n-1)]]` -/
def P13204942499951568816.Spec : Prop :=
  ∀ n, P13204942499951568816.a n = A122247 n

end A122247

/-! ## A122247.P5944993681865402452

`∑[A005187(n)]`
-/

namespace A122247.P5944993681865402452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P5944993681865402452

namespace A122247

/-- `∑[A005187(n)]` -/
def P5944993681865402452.Spec : Prop :=
  ∀ n, P5944993681865402452.a n = A122247 n

end A122247

/-! ## A122247.P8845828843207550221

`∑[A101925(n)-1]`
-/

namespace A122247.P8845828843207550221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P8845828843207550221

namespace A122247

/-- `∑[A101925(n)-1]` -/
def P8845828843207550221.Spec : Prop :=
  ∀ n, P8845828843207550221.a n = A122247 n

end A122247

/-! ## A122247.P4279670364511887711

`∑[A011371(n)+n]`
-/

namespace A122247.P4279670364511887711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P4279670364511887711

namespace A122247

/-- `∑[A011371(n)+n]` -/
def P4279670364511887711.Spec : Prop :=
  ∀ n, P4279670364511887711.a n = A122247 n

end A122247

/-! ## A122247.P8535011083358485787

`A174605(n)+∑[n]`
-/

namespace A122247.P8535011083358485787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174605 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A122247.P8535011083358485787

namespace A122247

/-- `A174605(n)+∑[n]` -/
def P8535011083358485787.Spec : Prop :=
  ∀ n, P8535011083358485787.a n = A122247 n

end A122247

/-! ## A122247.P14542525048900089288

`∑[A004134(n)-n]`
-/

namespace A122247.P14542525048900089288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P14542525048900089288

namespace A122247

/-- `∑[A004134(n)-n]` -/
def P14542525048900089288.Spec : Prop :=
  ∀ n, P14542525048900089288.a n = A122247 n

end A122247

/-! ## A122247.P10308083879578443389

`∑[∑[val(A004277(n), 2)]]`
-/

namespace A122247.P10308083879578443389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P10308083879578443389

namespace A122247

/-- `∑[∑[val(A004277(n), 2)]]` -/
def P10308083879578443389.Spec : Prop :=
  ∀ n, (P10308083879578443389.a n : ℤ) = A122247 n

end A122247

/-! ## A122247.P10265443294448949222

`∑[∑[val(A008458(n), 2)]]`
-/

namespace A122247.P10265443294448949222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008458 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P10265443294448949222

namespace A122247

/-- `∑[∑[val(A008458(n), 2)]]` -/
def P10265443294448949222.Spec : Prop :=
  ∀ n, (P10265443294448949222.a n : ℤ) = A122247 n

end A122247

/-! ## A122247.P17679113286431882523

`∑[∑[val(A255177(n), 2)]]`
-/

namespace A122247.P17679113286431882523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P17679113286431882523

namespace A122247

/-- `∑[∑[val(A255177(n), 2)]]` -/
def P17679113286431882523.Spec : Prop :=
  ∀ n, (P17679113286431882523.a n : ℤ) = A122247 n

end A122247

/-! ## A122247.P10649339284452623042

`∑[∑[n-A093049(n)]]`
-/

namespace A122247.P10649339284452623042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A093049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P10649339284452623042

namespace A122247

/-- `∑[∑[n-A093049(n)]]` -/
def P10649339284452623042.Spec : Prop :=
  ∀ n, P10649339284452623042.a n = A122247 n

end A122247

/-! ## A122247.P16193966383854895988

`∑[∑[n]-A127944(n)]`
-/

namespace A122247.P16193966383854895988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A127944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P16193966383854895988

namespace A122247

/-- `∑[∑[n]-A127944(n)]` -/
def P16193966383854895988.Spec : Prop :=
  ∀ n, P16193966383854895988.a n = A122247 n

end A122247

/-! ## A122247.P9459113655888407413

`∑[(A178207(n)-1)/2]`
-/

namespace A122247.P9459113655888407413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178207 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P9459113655888407413

namespace A122247

/-- `∑[(A178207(n)-1)/2]` -/
def P9459113655888407413.Spec : Prop :=
  ∀ n, P9459113655888407413.a n = (A122247 n : ℚ)

end A122247

/-! ## A122247.P14497120495544284178

`∑[2*n-A000120(n)]`
-/

namespace A122247.P14497120495544284178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122247.P14497120495544284178

namespace A122247

/-- `∑[2*n-A000120(n)]` -/
def P14497120495544284178.Spec : Prop :=
  ∀ n, P14497120495544284178.a n = A122247 n

end A122247

/-! ## A122247.P8389275044774304244

`n²+n-A000788(n)`
-/

namespace A122247.P8389275044774304244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A000788 n

end

end A122247.P8389275044774304244

namespace A122247

/-- `n²+n-A000788(n)` -/
def P8389275044774304244.Spec : Prop :=
  ∀ n, P8389275044774304244.a n = A122247 n

end A122247

/-!
# A122248: a(n) - a(n-1) = A113474(n).

The programs for A122248, the canonical program `A122248.P3723099654744921739` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122248 has offset 0).

The definition of A122248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122247, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122248.P3723099654744921739

`A122247(n)-C(n, 2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122248

/-- `A122247(n)-C(n, 2)` -/
def P3723099654744921739.Spec : Prop :=
  ∀ n, P3723099654744921739.a n = A122248 n

theorem P3723099654744921739.correct : P3723099654744921739.Spec := by
  intro n
  simp only [A122248]

end A122248

/-! ## A122248.P5881712168051192591

`∑[∑[∑{e}[and(n, -n), #]]]+n`
-/

namespace A122248.P5881712168051192591
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A122248.P5881712168051192591

namespace A122248

/-- `∑[∑[∑{e}[and(n, -n), #]]]+n` -/
def P5881712168051192591.Spec : Prop :=
  ∀ n, (P5881712168051192591.a n : ℤ) = A122248 n

end A122248

/-! ## A122248.P10762135804808112179

`∑[∑[∑{e}[or(n, -n), #]]]+n`
-/

namespace A122248.P10762135804808112179
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A122248.P10762135804808112179

namespace A122248

/-- `∑[∑[∑{e}[or(n, -n), #]]]+n` -/
def P10762135804808112179.Spec : Prop :=
  ∀ n, (P10762135804808112179.a n : ℤ) = A122248 n

end A122248

/-! ## A122248.P15630042452783597886

`∑[a(n-1)+val(n, 2)]` with `a(0)=0, a(1)=1`
-/

namespace A122248.P15630042452783597886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122248.P15630042452783597886

namespace A122248

/-- `∑[a(n-1)+val(n, 2)]` -/
def P15630042452783597886.Spec : Prop :=
  ∀ n, (P15630042452783597886.a n : ℤ) = A122248 n

end A122248

/-! ## A122248.P14460428386640406553

`∑[∑[val(abs(1-n)+1, 2)]]-1`
-/

namespace A122248.P14460428386640406553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A122248.P14460428386640406553

namespace A122248

/-- `∑[∑[val(abs(1-n)+1, 2)]]-1` -/
def P14460428386640406553.Spec : Prop :=
  ∀ n, P14460428386640406553.a n = A122248 n

end A122248

/-! ## A122248.P5044192003822930658

`∑[∑[val(n+1, 2)]-val(n+1, 2)]+n`
-/

namespace A122248.P5044192003822930658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A122248.P5044192003822930658

namespace A122248

/-- `∑[∑[val(n+1, 2)]-val(n+1, 2)]+n` -/
def P5044192003822930658.Spec : Prop :=
  ∀ n, P5044192003822930658.a n = A122248 n

end A122248

/-! ## A122248.P15008968783230308787

`A174605(n)+n`
-/

namespace A122248.P15008968783230308787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174605 n + (n : ℤ)

end

end A122248.P15008968783230308787

namespace A122248

/-- `A174605(n)+n` -/
def P15008968783230308787.Spec : Prop :=
  ∀ n, P15008968783230308787.a n = A122248 n

end A122248

/-! ## A122248.P378770951763464688

`∑[A011371(n)]+n`
-/

namespace A122248.P378770951763464688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A122248.P378770951763464688

namespace A122248

/-- `∑[A011371(n)]+n` -/
def P378770951763464688.Spec : Prop :=
  ∀ n, P378770951763464688.a n = A122248 n

end A122248

/-! ## A122248.P11058883022426736042

`∑[A004134(n)]-n²`
-/

namespace A122248.P11058883022426736042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A122248.P11058883022426736042

namespace A122248

/-- `∑[A004134(n)]-n²` -/
def P11058883022426736042.Spec : Prop :=
  ∀ n, P11058883022426736042.a n = A122248 n

end A122248

/-! ## A122248.P12575610538282182419

`A000096(n)-A000788(n)`
-/

namespace A122248.P12575610538282182419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A000788 n

end

end A122248.P12575610538282182419

namespace A122248

/-- `A000096(n)-A000788(n)` -/
def P12575610538282182419.Spec : Prop :=
  ∀ n, P12575610538282182419.a n = A122248 n

end A122248

/-! ## A122248.P8800954709169799256

`A122247(n)-A161680(n)`
-/

namespace A122248.P8800954709169799256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 n - A161680 n

end

end A122248.P8800954709169799256

namespace A122248

/-- `A122247(n)-A161680(n)` -/
def P8800954709169799256.Spec : Prop :=
  ∀ n, P8800954709169799256.a n = A122248 n

end A122248

/-! ## A122248.P16582161218423615268

`A000096(n)-∑[A000120(n)]`
-/

namespace A122248.P16582161218423615268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122248.P16582161218423615268

namespace A122248

/-- `A000096(n)-∑[A000120(n)]` -/
def P16582161218423615268.Spec : Prop :=
  ∀ n, P16582161218423615268.a n = A122248 n

end A122248

/-! ## A122248.P11095182767616169871

`A000217(n)+n-A000788(n)`
-/

namespace A122248.P11095182767616169871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ((n : ℤ) - A000788 n)

end

end A122248.P11095182767616169871

namespace A122248

/-- `A000217(n)+n-A000788(n)` -/
def P11095182767616169871.Spec : Prop :=
  ∀ n, P11095182767616169871.a n = A122248 n

end A122248

/-! ## A122248.P7434142461160107695

`A249152(n)+n-A187059(n)`
-/

namespace A122248.P7434142461160107695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249152 n + ((n : ℤ) - A187059 n)

end

end A122248.P7434142461160107695

namespace A122248

/-- `A249152(n)+n-A187059(n)` -/
def P7434142461160107695.Spec : Prop :=
  ∀ n, P7434142461160107695.a n = A122248 n

end A122248

/-! ## A122248.P5713423079303105128

`A000096(n)-∑[∑[A088705(n)]]`
-/

namespace A122248.P5713423079303105128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122248.P5713423079303105128

namespace A122248

/-- `A000096(n)-∑[∑[A088705(n)]]` -/
def P5713423079303105128.Spec : Prop :=
  ∀ n, P5713423079303105128.a n = A122248 n

end A122248

/-! ## A122248.P12020275868745571853

`∑[A113474(n+1)]-A113474(n+1)`
-/

namespace A122248.P12020275868745571853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A113474 (n + 1)

end

end A122248.P12020275868745571853

namespace A122248

/-- `∑[A113474(n+1)]-A113474(n+1)` -/
def P12020275868745571853.Spec : Prop :=
  ∀ n, P12020275868745571853.a n = A122248 n

end A122248

/-!
# A122249: Numerators of Hankel transform of 1/(2n+1).

The programs for A122249, the canonical program `A122249.P11506506410736040305` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122249 has offset 0).

The definition of A122249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122247, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122249.P11506506410736040305

`4^A122247(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122249

/-- `4^A122247(n)` -/
def P11506506410736040305.Spec : Prop :=
  ∀ n, P11506506410736040305.a n = (A122249 n : ℚ)

end A122249

/-! ## A122249.P13719357668347750048

`4^∑[val((2*n)!, 2)]`
-/

namespace A122249.P13719357668347750048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (2 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122249.P13719357668347750048

namespace A122249

/-- `4^∑[val((2*n)!, 2)]` -/
def P13719357668347750048.Spec : Prop :=
  ∀ n, (P13719357668347750048.a n : ℤ) = A122249 n

end A122249

/-! ## A122249.P13546826821176554234

`∏[4^val((2*n)!, 2)]`
-/

namespace A122249.P13546826821176554234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (Nat.factorial (2 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122249.P13546826821176554234

namespace A122249

/-- `∏[4^val((2*n)!, 2)]` -/
def P13546826821176554234.Spec : Prop :=
  ∀ n, (P13546826821176554234.a n : ℤ) = A122249 n

end A122249

/-! ## A122249.P9935656778216605408

`4^∑[val(n!, 2)+n]`
-/

namespace A122249.P9935656778216605408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122249.P9935656778216605408

namespace A122249

/-- `4^∑[val(n!, 2)+n]` -/
def P9935656778216605408.Spec : Prop :=
  ∀ n, (P9935656778216605408.a n : ℤ) = A122249 n

end A122249

/-! ## A122249.P2022196896977289728

`∏[gcd(4^n, (2*n)!)²]`
-/

namespace A122249.P2022196896977289728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 ^ n) (Nat.factorial (2 * n)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122249.P2022196896977289728

namespace A122249

/-- `∏[gcd(4^n, (2*n)!)²]` -/
def P2022196896977289728.Spec : Prop :=
  ∀ n, (P2022196896977289728.a n : ℤ) = A122249 n

end A122249

/-!
# A122250: Partial sums of A004128.

The programs for A122250, the canonical program `A122250.P13302479762941390179` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122250 has offset 0).

The definition of A122250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122250.P13302479762941390179

`∑[a(floor(n/3))+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122250

/-- `∑[a(floor(n/3))+n]` -/
def P13302479762941390179.Spec : Prop :=
  ∀ n, (P13302479762941390179.a n : ℤ) = A122250 n

theorem P13302479762941390179.correct : P13302479762941390179.Spec := by
  intro n
  simp only [A122250]

end A122250

/-! ## A122250.P4146784070620256295

`∑[a(n-1)+val(n, 3)+1]` with `a(0)=0`
-/

namespace A122250.P4146784070620256295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P4146784070620256295

namespace A122250

/-- `∑[a(n-1)+val(n, 3)+1]` -/
def P4146784070620256295.Spec : Prop :=
  ∀ n, (P4146784070620256295.a n : ℤ) = A122250 n

end A122250

/-! ## A122250.P6788559304110425704

`∑[∑[val(abs(1-3*n)+1, 3)]]`
-/

namespace A122250.P6788559304110425704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (3 * n : ℤ)| + 1).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P6788559304110425704

namespace A122250

/-- `∑[∑[val(abs(1-3*n)+1, 3)]]` -/
def P6788559304110425704.Spec : Prop :=
  ∀ n, (P6788559304110425704.a n : ℤ) = A122250 n

end A122250

/-! ## A122250.P6670796606678671956

`∑[∑[val(abs(1-n)+1, 3)]+n]`
-/

namespace A122250.P6670796606678671956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P6670796606678671956

namespace A122250

/-- `∑[∑[val(abs(1-n)+1, 3)]+n]` -/
def P6670796606678671956.Spec : Prop :=
  ∀ n, (P6670796606678671956.a n : ℤ) = A122250 n

end A122250

/-! ## A122250.P8311886485089120180

`∑[A004128(n)]`
-/

namespace A122250.P8311886485089120180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P8311886485089120180

namespace A122250

/-- `∑[A004128(n)]` -/
def P8311886485089120180.Spec : Prop :=
  ∀ n, P8311886485089120180.a n = A122250 n

end A122250

/-! ## A122250.P17322368209177039407

`∑[comp[A096346(n)]]`
-/

namespace A122250.P17322368209177039407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096346 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P17322368209177039407

namespace A122250

/-- `∑[comp[A096346(n)]]` -/
def P17322368209177039407.Spec : Prop :=
  ∀ n, (P17322368209177039407.a n : ℤ) = A122250 n

end A122250

/-! ## A122250.P11518662367775336254

`∑[A346502(n)/2]`
-/

namespace A122250.P11518662367775336254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346502 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P11518662367775336254

namespace A122250

/-- `∑[A346502(n)/2]` -/
def P11518662367775336254.Spec : Prop :=
  ∀ n, P11518662367775336254.a n = (A122250 n : ℚ)

end A122250

/-! ## A122250.P3250886355294203887

`∑[A054861(n)+n]`
-/

namespace A122250.P3250886355294203887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P3250886355294203887

namespace A122250

/-- `∑[A054861(n)+n]` -/
def P3250886355294203887.Spec : Prop :=
  ∀ n, P3250886355294203887.a n = A122250 n

end A122250

/-! ## A122250.P7220886466642105026

`∑[A120514(n+1)-1]`
-/

namespace A122250.P7220886466642105026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120514 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P7220886466642105026

namespace A122250

/-- `∑[A120514(n+1)-1]` -/
def P7220886466642105026.Spec : Prop :=
  ∀ n, P7220886466642105026.a n = A122250 n

end A122250

/-! ## A122250.P8432823777275206288

`∑[2*n-A089792(n)]`
-/

namespace A122250.P8432823777275206288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A089792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P8432823777275206288

namespace A122250

/-- `∑[2*n-A089792(n)]` -/
def P8432823777275206288.Spec : Prop :=
  ∀ n, P8432823777275206288.a n = A122250 n

end A122250

/-! ## A122250.P227488680160578907

`∑[A344853(n)/2+n]`
-/

namespace A122250.P227488680160578907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344853 n : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P227488680160578907

namespace A122250

/-- `∑[A344853(n)/2+n]` -/
def P227488680160578907.Spec : Prop :=
  ∀ n, P227488680160578907.a n = (A122250 n : ℚ)

end A122250

/-! ## A122250.P8170585047451091423

`∑[A001281(A344853(n))+n]`
-/

namespace A122250.P8170585047451091423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A344853 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P8170585047451091423

namespace A122250

/-- `∑[A001281(A344853(n))+n]` -/
def P8170585047451091423.Spec : Prop :=
  ∀ n, P8170585047451091423.a n = A122250 n

end A122250

/-! ## A122250.P9225004329554977545

`∑[n-(A054861(n)-A344853(n))]`
-/

namespace A122250.P9225004329554977545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A054861 n - A344853 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P9225004329554977545

namespace A122250

/-- `∑[n-(A054861(n)-A344853(n))]` -/
def P9225004329554977545.Spec : Prop :=
  ∀ n, P9225004329554977545.a n = A122250 n

end A122250

/-! ## A122250.P14013308134306567195

`∑[∑[A051064(n+1)]-A051064(n+1)]`
-/

namespace A122250.P14013308134306567195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A051064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P14013308134306567195

namespace A122250

/-- `∑[∑[A051064(n+1)]-A051064(n+1)]` -/
def P14013308134306567195.Spec : Prop :=
  ∀ n, P14013308134306567195.a n = A122250 n

end A122250

/-! ## A122250.P10295851722110835839

`∑[∑[A168570(2*(n+1))]-A168570(2*(n+1))]`
-/

namespace A122250.P10295851722110835839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A168570 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P10295851722110835839

namespace A122250

/-- `∑[∑[A168570(2*(n+1))]-A168570(2*(n+1))]` -/
def P10295851722110835839.Spec : Prop :=
  ∀ n, P10295851722110835839.a n = A122250 n

end A122250

/-! ## A122250.P12216502866658091049

`∑[A054861(3*n)]`
-/

namespace A122250.P12216502866658091049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P12216502866658091049

namespace A122250

/-- `∑[A054861(3*n)]` -/
def P12216502866658091049.Spec : Prop :=
  ∀ n, P12216502866658091049.a n = A122250 n

end A122250

/-! ## A122250.P8963386152994135438

`∑[A344853(3*n)/2]`
-/

namespace A122250.P8963386152994135438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344853 (3 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P8963386152994135438

namespace A122250

/-- `∑[A344853(3*n)/2]` -/
def P8963386152994135438.Spec : Prop :=
  ∀ n, P8963386152994135438.a n = (A122250 n : ℚ)

end A122250

/-! ## A122250.P9430649372269936080

`∑[record[A054861(A062028(n))]]`
-/

namespace A122250.P9430649372269936080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A062028 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P9430649372269936080

namespace A122250

/-- `∑[record[A054861(A062028(n))]]` -/
def P9430649372269936080.Spec : Prop :=
  ∀ n, P9430649372269936080.a n = A122250 n

end A122250

/-! ## A122250.P9829054231825585765

`∑[A001281(A344853(3*n))]`
-/

namespace A122250.P9829054231825585765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A344853 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P9829054231825585765

namespace A122250

/-- `∑[A001281(A344853(3*n))]` -/
def P9829054231825585765.Spec : Prop :=
  ∀ n, P9829054231825585765.a n = A122250 n

end A122250

/-! ## A122250.P12236177990697372069

`∑[record[A054861(n-A054861(n))]]`
-/

namespace A122250.P12236177990697372069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 ((n : ℤ) - A054861 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122250.P12236177990697372069

namespace A122250

/-- `∑[record[A054861(n-A054861(n))]]` -/
def P12236177990697372069.Spec : Prop :=
  ∀ n, P12236177990697372069.a n = A122250 n

end A122250

/-!
# A122251: Numerators of Hankel transform of 1/(3n+1) (conjecture).

The programs for A122251, the canonical program `A122251.P8285076149538175054` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122251 has offset 0).

The definition of A122251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122250, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122251.P8285076149538175054

`9^A122250(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122251

/-- `9^A122250(n)` -/
def P8285076149538175054.Spec : Prop :=
  ∀ n, P8285076149538175054.a n = (A122251 n : ℚ)

end A122251

/-!
# A122252: Binet's factorial series. Numerators of the coefficients of a convergent series for the logarithm of the Gamma function.

The programs for A122252, there is no canonical definition to state claims against.
-/

/-! ## A122252.P2288767561618361484

`A054379(n+1)/gcd(n+1, A054379(n+1))`
-/

namespace A122252.P2288767561618361484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054379 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A054379 (n + 1)) : ℚ)

end

end A122252.P2288767561618361484

/-! ## A122252.P10967929584044651120

`A054379(n+1)/gcd(A054379(n+1), A103517(n))`
-/

namespace A122252.P10967929584044651120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054379 (n + 1) : ℚ) / (Int.gcd (A054379 (n + 1)) (A103517 n) : ℚ)

end

end A122252.P10967929584044651120

/-! ## A122252.P17422629025833150504

`lcm(A054379(n+1), A103517(n))/A103517(n)`
-/

namespace A122252.P17422629025833150504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A054379 (n + 1)) (A103517 n) : ℚ) / (A103517 n : ℚ)

end

end A122252.P17422629025833150504

/-! ## A122252.P11150844172626956329

`A054379(n+1)/A109008(A041139(n))`
-/

namespace A122252.P11150844172626956329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054379 (n + 1) : ℚ) / (A109008 (A041139 n).toNat : ℚ)

end

end A122252.P11150844172626956329

/-!
# A122253: Binet's factorial series. Denominators of the coefficients of a convergent series for the logarithm of the Gamma function.

The programs for A122253, there is no canonical definition to state claims against.
-/

/-! ## A122253.P2748196451776865873

`A054380(n+1)*A070777(A054380(2*n+1))`
-/

namespace A122253.P2748196451776865873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054380 (n + 1) * A070777 (A054380 (2 * n + 1)).toNat

end

end A122253.P2748196451776865873

/-!
# A122254: Numbers with 3-smooth Euler's totient (A000010).

The programs for A122254, there is no canonical definition to state claims against.
-/

/-! ## A122254.P1773025151581416846

`filter[A248180(2*n+1), A122255(#)]`
-/

namespace A122254.P1773025151581416846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A122254.P1773025151581416846

/-! ## A122254.P11306373953302937991

`record[A060775(A048135(n+1))]`
-/

namespace A122254.P11306373953302937991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A048135 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122254.P11306373953302937991

/-! ## A122254.P948473400986273136

`filter[A359415(n+1), A122255(#)]`
-/

namespace A122254.P948473400986273136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A122254.P948473400986273136

/-! ## A122254.P16944657894163489589

`filter[A167520(n+1), A122255(#)]`
-/

namespace A122254.P16944657894163489589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A122254.P16944657894163489589

/-! ## A122254.P765295291945901869

`filter[A123068(n+2), A122255(#)]`
-/

namespace A122254.P765295291945901869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A122254.P765295291945901869

/-!
# A122255: Characteristic function of numbers with 3-smooth Euler's totient (A000010).

The programs for A122255, the canonical program `A122255.P582623873584825635` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122255 has offset 1).

The definition of A122255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A065333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122255.P582623873584825635

`A065333(A000010(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A122255

/-- `A065333(A000010(n+1))` -/
def P582623873584825635.Spec : Prop :=
  ∀ n, P582623873584825635.a n = A122255 (n + 1)

theorem P582623873584825635.correct : P582623873584825635.Spec := by
  intro n
  simp only [A122255, Nat.add_sub_cancel]

end A122255

/-! ## A122255.P11884844557871364445

`A065333(A002322(n+1))`
-/

namespace A122255.P11884844557871364445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A002322 (n + 1)).toNat

end

end A122255.P11884844557871364445

namespace A122255

/-- `A065333(A002322(n+1))` -/
def P11884844557871364445.Spec : Prop :=
  ∀ n, P11884844557871364445.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P1533529473334534240

`A065333(A011773(n+1))`
-/

namespace A122255.P1533529473334534240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A011773 (n + 1)).toNat

end

end A122255.P1533529473334534240

namespace A122255

/-- `A065333(A011773(n+1))` -/
def P1533529473334534240.Spec : Prop :=
  ∀ n, P1533529473334534240.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P761006035004161506

`A012245(A080400(n+1))`
-/

namespace A122255.P761006035004161506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (A080400 (n + 1)).toNat

end

end A122255.P761006035004161506

namespace A122255

/-- `A012245(A080400(n+1))` -/
def P761006035004161506.Spec : Prop :=
  ∀ n, P761006035004161506.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P15739094260932331452

`A065333(A046073(n+1))`
-/

namespace A122255.P15739094260932331452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A046073 (n + 1)).toNat

end

end A122255.P15739094260932331452

namespace A122255

/-- `A065333(A046073(n+1))` -/
def P15739094260932331452.Spec : Prop :=
  ∀ n, P15739094260932331452.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P18286140374117735289

`A065333(A055034(n+1))`
-/

namespace A122255.P18286140374117735289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A055034 (n + 1)).toNat

end

end A122255.P18286140374117735289

namespace A122255

/-- `A065333(A055034(n+1))` -/
def P18286140374117735289.Spec : Prop :=
  ∀ n, P18286140374117735289.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P5641124591048684741

`A065333(A055035(n+1))`
-/

namespace A122255.P5641124591048684741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A055035 (n + 1)).toNat

end

end A122255.P5641124591048684741

namespace A122255

/-- `A065333(A055035(n+1))` -/
def P5641124591048684741.Spec : Prop :=
  ∀ n, P5641124591048684741.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P5633555629075591136

`A065333(A062570(n+1))`
-/

namespace A122255.P5633555629075591136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A062570 (n + 1)).toNat

end

end A122255.P5633555629075591136

namespace A122255

/-- `A065333(A062570(n+1))` -/
def P5633555629075591136.Spec : Prop :=
  ∀ n, P5633555629075591136.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P17924617346705321874

`A065333(A070306(n+1))`
-/

namespace A122255.P17924617346705321874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A070306 (n + 1)).toNat

end

end A122255.P17924617346705321874

namespace A122255

/-- `A065333(A070306(n+1))` -/
def P17924617346705321874.Spec : Prop :=
  ∀ n, P17924617346705321874.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P8001767101864171638

`A065333(A087692(n+1))`
-/

namespace A122255.P8001767101864171638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A087692 (n + 1)).toNat

end

end A122255.P8001767101864171638

namespace A122255

/-- `A065333(A087692(n+1))` -/
def P8001767101864171638.Spec : Prop :=
  ∀ n, P8001767101864171638.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P15680450871052153649

`A065333(A089692(n+1))`
-/

namespace A122255.P15680450871052153649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A089692 (n + 1)).toNat

end

end A122255.P15680450871052153649

namespace A122255

/-- `A065333(A089692(n+1))` -/
def P15680450871052153649.Spec : Prop :=
  ∀ n, P15680450871052153649.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P15465437638224607405

`A340363(3*A000010(n+1))`
-/

namespace A122255.P15465437638224607405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (3 * A000010 (n + 1)).toNat

end

end A122255.P15465437638224607405

namespace A122255

/-- `A340363(3*A000010(n+1))` -/
def P15465437638224607405.Spec : Prop :=
  ∀ n, P15465437638224607405.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P2883712767726762667

`A340373(3*A000010(n+1))`
-/

namespace A122255.P2883712767726762667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (3 * A000010 (n + 1)).toNat

end

end A122255.P2883712767726762667

namespace A122255

/-- `A340373(3*A000010(n+1))` -/
def P2883712767726762667.Spec : Prop :=
  ∀ n, P2883712767726762667.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P1985587781639287870

`A316341(∏{p}[A000010(n+1), #])`
-/

namespace A122255.P1985587781639287870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A122255.P1985587781639287870

namespace A122255

/-- `A316341(∏{p}[A000010(n+1), #])` -/
def P1985587781639287870.Spec : Prop :=
  ∀ n, P1985587781639287870.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P6387700842896068916

`floor(3/A006530(2*A000010(n+1)))`
-/

namespace A122255.P6387700842896068916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (A006530 (2 * A000010 (n + 1)).toNat : ℚ)⌋

end

end A122255.P6387700842896068916

namespace A122255

/-- `floor(3/A006530(2*A000010(n+1)))` -/
def P6387700842896068916.Spec : Prop :=
  ∀ n, P6387700842896068916.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P903205011957544848

`char[eq[3, A006530(3*A000010(n+1))]]`
-/

namespace A122255.P903205011957544848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A000010 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A122255.P903205011957544848

namespace A122255

/-- `char[eq[3, A006530(3*A000010(n+1))]]` -/
def P903205011957544848.Spec : Prop :=
  ∀ n, (P903205011957544848.a n : ℤ) = A122255 (n + 1)

end A122255

/-! ## A122255.P17571653818151721443

`∏{p}[A000010(n+1), A000045(round(2/#))]`
-/

namespace A122255.P17571653818151721443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (SequenceMachineLib.roundAway (2 / (p : ℚ))).toNat

end

end A122255.P17571653818151721443

namespace A122255

/-- `∏{p}[A000010(n+1), A000045(round(2/#))]` -/
def P17571653818151721443.Spec : Prop :=
  ∀ n, P17571653818151721443.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P6228757545920135878

`round(2/round(A089192(A080400(n+1)+1)/3))`
-/

namespace A122255.P6228757545920135878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (SequenceMachineLib.roundAway ((A089192 (A080400 (n + 1) + 1).toNat : ℚ) / 3) : ℚ))

end

end A122255.P6228757545920135878

namespace A122255

/-- `round(2/round(A089192(A080400(n+1)+1)/3))` -/
def P6228757545920135878.Spec : Prop :=
  ∀ n, P6228757545920135878.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P14464398926886359842

`A316341(∏{p}[(A109606(n+1)+1)%(n+1), #])`
-/

namespace A122255.P14464398926886359842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109606 (n + 1) + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A122255.P14464398926886359842

namespace A122255

/-- `A316341(∏{p}[(A109606(n+1)+1)%(n+1), #])` -/
def P14464398926886359842.Spec : Prop :=
  ∀ n, P14464398926886359842.a n = A122255 (n + 1)

end A122255

/-! ## A122255.P3138331030083052913

`A252372(2*A000010(n+1))`
-/

namespace A122255.P3138331030083052913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252372 (2 * A000010 (n + 1)).toNat

end

end A122255.P3138331030083052913

namespace A122255

/-- `A252372(2*A000010(n+1))` -/
def P3138331030083052913.Spec : Prop :=
  ∀ n, P3138331030083052913.a n = A122255 (n + 1)

end A122255

/-!
# A122256: Number of numbers <= n with 3-smooth Euler's totient (A000010).

The programs for A122256, the canonical program `A122256.P3316348703661489538` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122256 has offset 1).

The definition of A122256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122256.P3316348703661489538

`∑[A122255(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A122256

/-- `∑[A122255(n+1)]` -/
def P3316348703661489538.Spec : Prop :=
  ∀ n, P3316348703661489538.a n = A122256 (n + 1)

theorem P3316348703661489538.correct : P3316348703661489538.Spec := by
  intro n
  simp only [A122256, Nat.add_sub_cancel]

end A122256

/-! ## A122256.P16214519594282228039

`∑[A065333(A000010(n+1))]`
-/

namespace A122256.P16214519594282228039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122256.P16214519594282228039

namespace A122256

/-- `∑[A065333(A000010(n+1))]` -/
def P16214519594282228039.Spec : Prop :=
  ∀ n, P16214519594282228039.a n = A122256 (n + 1)

end A122256

/-! ## A122256.P1743320551296522320

`∑[val(A006530(3*A000010(n+1)), 3)]`
-/

namespace A122256.P1743320551296522320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (3 * A000010 (n + 1)).toNat).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122256.P1743320551296522320

namespace A122256

/-- `∑[val(A006530(3*A000010(n+1)), 3)]` -/
def P1743320551296522320.Spec : Prop :=
  ∀ n, (P1743320551296522320.a n : ℤ) = A122256 (n + 1)

end A122256

/-! ## A122256.P8187367499297864501

`∑[C(2, A001221(6*A000010(n+1)))]`
-/

namespace A122256.P8187367499297864501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001221 (6 * A000010 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122256.P8187367499297864501

namespace A122256

/-- `∑[C(2, A001221(6*A000010(n+1)))]` -/
def P8187367499297864501.Spec : Prop :=
  ∀ n, (P8187367499297864501.a n : ℤ) = A122256 (n + 1)

end A122256

/-! ## A122256.P3059309910850444810

`∑[∑{d}[A000010(n+1), A008683(6*#)]]`
-/

namespace A122256.P3059309910850444810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A008683 (6 * d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122256.P3059309910850444810

namespace A122256

/-- `∑[∑{d}[A000010(n+1), A008683(6*#)]]` -/
def P3059309910850444810.Spec : Prop :=
  ∀ n, P3059309910850444810.a n = A122256 (n + 1)

end A122256

/-!
# A122257: Characteristic function of Pierpont primes (A005109).

The programs for A122257, the canonical program `A122257.P4437493794124437711` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122257 has offset 1).

The definition of A122257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122257.P17232780228273635518

`char[A005109(n+1)-1]`
-/

namespace A122257.P17232780228273635518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A122257.P17232780228273635518

namespace A122257

/-- `char[A005109(n+1)-1]` -/
def P17232780228273635518.Spec : Prop :=
  ∀ n, (P17232780228273635518.a n : ℤ) = A122257 (n + 1)

end A122257

/-! ## A122257.P1085349816443158757

`char[A000010(A005109(n+1))]`
-/

namespace A122257.P1085349816443158757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005109 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A122257.P1085349816443158757

namespace A122257

/-- `char[A000010(A005109(n+1))]` -/
def P1085349816443158757.Spec : Prop :=
  ∀ n, (P1085349816443158757.a n : ℤ) = A122257 (n + 1)

end A122257

/-! ## A122257.P15146607665085820667

`char[A346466(A284255(n+1)+1)]`
-/

namespace A122257.P15146607665085820667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346466 (A284255 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A122257.P15146607665085820667

namespace A122257

/-- `char[A346466(A284255(n+1)+1)]` -/
def P15146607665085820667.Spec : Prop :=
  ∀ n, (P15146607665085820667.a n : ℤ) = A122257 (n + 1)

end A122257

/-! ## A122257.P3755686147844131935

`char[A036561(n)]*A010051(n+1)`
-/

namespace A122257.P3755686147844131935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A010051 (n + 1)

end

end A122257.P3755686147844131935

namespace A122257

/-- `char[A036561(n)]*A010051(n+1)` -/
def P3755686147844131935.Spec : Prop :=
  ∀ n, P3755686147844131935.a n = A122257 (n + 1)

end A122257

/-! ## A122257.P4437493794124437711

`A010051(n+1)*A122255(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A122257

/-- `A010051(n+1)*A122255(n+1)` -/
def P4437493794124437711.Spec : Prop :=
  ∀ n, P4437493794124437711.a n = A122257 (n + 1)

theorem P4437493794124437711.correct : P4437493794124437711.Spec := by
  intro n
  simp only [A122257, Nat.add_sub_cancel]

end A122257

/-! ## A122257.P12128903296381075713

`A010051(n+1)*A122261(n+1)`
-/

namespace A122257.P12128903296381075713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A122261 (n + 1)

end

end A122257.P12128903296381075713

namespace A122257

/-- `A010051(n+1)*A122261(n+1)` -/
def P12128903296381075713.Spec : Prop :=
  ∀ n, P12128903296381075713.a n = A122257 (n + 1)

end A122257

/-! ## A122257.P9619240847579067531

`and(A035026(n+1), A122255(n+1))`
-/

namespace A122257.P9619240847579067531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035026 (n + 1)) (A122255 (n + 1))

end

end A122257.P9619240847579067531

namespace A122257

/-- `and(A035026(n+1), A122255(n+1))` -/
def P9619240847579067531.Spec : Prop :=
  ∀ n, P9619240847579067531.a n = A122257 (n + 1)

end A122257

/-! ## A122257.P6472393334043590453

`A010051(n+1)*A065333(∏{p}[n, #])`
-/

namespace A122257.P6472393334043590453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A065333 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A122257.P6472393334043590453

namespace A122257

/-- `A010051(n+1)*A065333(∏{p}[n, #])` -/
def P6472393334043590453.Spec : Prop :=
  ∀ n, P6472393334043590453.a n = A122257 (n + 1)

end A122257

/-! ## A122257.P15138303596420792453

`char[A003586(n+1)]*A010051(n+1)`
-/

namespace A122257.P15138303596420792453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A010051 (n + 1)

end

end A122257.P15138303596420792453

namespace A122257

/-- `char[A003586(n+1)]*A010051(n+1)` -/
def P15138303596420792453.Spec : Prop :=
  ∀ n, P15138303596420792453.a n = A122257 (n + 1)

end A122257

/-! ## A122257.P17942636660436784020

`char[A006093(n+1)]*A122261(n+1)`
-/

namespace A122257.P17942636660436784020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A122261 (n + 1)

end

end A122257.P17942636660436784020

namespace A122257

/-- `char[A006093(n+1)]*A122261(n+1)` -/
def P17942636660436784020.Spec : Prop :=
  ∀ n, P17942636660436784020.a n = A122257 (n + 1)

end A122257

/-! ## A122257.P5617037065385934696

`C(2, A000005(n+1))*char[A036561(n)]`
-/

namespace A122257.P5617037065385934696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 1)).toNat * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A122257.P5617037065385934696

namespace A122257

/-- `C(2, A000005(n+1))*char[A036561(n)]` -/
def P5617037065385934696.Spec : Prop :=
  ∀ n, (P5617037065385934696.a n : ℤ) = A122257 (n + 1)

end A122257

/-! ## A122257.P4899810058114534609

`C(2, A000005(n+1))*char[A175840(n)]`
-/

namespace A122257.P4899810058114534609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 1)).toNat * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A122257.P4899810058114534609

namespace A122257

/-- `C(2, A000005(n+1))*char[A175840(n)]` -/
def P4899810058114534609.Spec : Prop :=
  ∀ n, (P4899810058114534609.a n : ℤ) = A122257 (n + 1)

end A122257

/-! ## A122257.P8705694928124438416

`char[record[A006530(A003586(n+1)+1)]-1]`
-/

namespace A122257.P8705694928124438416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003586 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A122257.P8705694928124438416

namespace A122257

/-- `char[record[A006530(A003586(n+1)+1)]-1]` -/
def P8705694928124438416.Spec : Prop :=
  ∀ n, (P8705694928124438416.a n : ℤ) = A122257 (n + 1)

end A122257

/-! ## A122257.P6715896586932951799

`A010051(n+1)-char[A122259(n+1)-1]`
-/

namespace A122257.P6715896586932951799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122257.P6715896586932951799

namespace A122257

/-- `A010051(n+1)-char[A122259(n+1)-1]` -/
def P6715896586932951799.Spec : Prop :=
  ∀ n, P6715896586932951799.a n = A122257 (n + 1)

end A122257

/-! ## A122257.P7375849860878491285

`char[A000010(A008578(A174099(n+1)+1))]`
-/

namespace A122257.P7375849860878491285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008578 (A174099 (n + 1) + 1).toNat).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A122257.P7375849860878491285

namespace A122257

/-- `char[A000010(A008578(A174099(n+1)+1))]` -/
def P7375849860878491285.Spec : Prop :=
  ∀ n, (P7375849860878491285.a n : ℤ) = A122257 (n + 1)

end A122257

/-! ## A122257.P14783093519386218793

`A010051(n+1)*A065333(A065333(n+1)+n)`
-/

namespace A122257.P14783093519386218793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A065333 (A065333 (n + 1) + (n : ℤ)).toNat

end

end A122257.P14783093519386218793

namespace A122257

/-- `A010051(n+1)*A065333(A065333(n+1)+n)` -/
def P14783093519386218793.Spec : Prop :=
  ∀ n, P14783093519386218793.a n = A122257 (n + 1)

end A122257

/-! ## A122257.P1903947355210282617

`char[record[A014963(A003586(n+1)+1)]-1]`
-/

namespace A122257.P1903947355210282617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003586 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A122257.P1903947355210282617

namespace A122257

/-- `char[record[A014963(A003586(n+1)+1)]-1]` -/
def P1903947355210282617.Spec : Prop :=
  ∀ n, (P1903947355210282617.a n : ℤ) = A122257 (n + 1)

end A122257

/-! ## A122257.P4539874058360766392

`and(A122255(n+1), A351708(n+1))`
-/

namespace A122257.P4539874058360766392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122255 (n + 1)) (A351708 (n + 1))

end

end A122257.P4539874058360766392

namespace A122257

/-- `and(A122255(n+1), A351708(n+1))` -/
def P4539874058360766392.Spec : Prop :=
  ∀ n, P4539874058360766392.a n = A122257 (n + 1)

end A122257

/-! ## A122257.P3905883478542567032

`and(A122261(n+1), A351708(n+1))`
-/

namespace A122257.P3905883478542567032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122261 (n + 1)) (A351708 (n + 1))

end

end A122257.P3905883478542567032

namespace A122257

/-- `and(A122261(n+1), A351708(n+1))` -/
def P3905883478542567032.Spec : Prop :=
  ∀ n, P3905883478542567032.a n = A122257 (n + 1)

end A122257

/-!
# A122258: Number of Pierpont primes <= n.

The programs for A122258, the canonical program `A122258.P2851884273537307678` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122258 has offset 1).

The definition of A122258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122258.P2851884273537307678

`∑[A122257(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A122258

/-- `∑[A122257(n+1)]` -/
def P2851884273537307678.Spec : Prop :=
  ∀ n, P2851884273537307678.a n = A122258 (n + 1)

theorem P2851884273537307678.correct : P2851884273537307678.Spec := by
  intro n
  simp only [A122258, Nat.add_sub_cancel]

end A122258

/-! ## A122258.P8968069283735812494

`∑[char[A005109(n+1)-1]]`
-/

namespace A122258.P8968069283735812494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122258.P8968069283735812494

namespace A122258

/-- `∑[char[A005109(n+1)-1]]` -/
def P8968069283735812494.Spec : Prop :=
  ∀ n, (P8968069283735812494.a n : ℤ) = A122258 (n + 1)

end A122258

/-! ## A122258.P10375785958097505207

`∑[char[A000010(A005109(n+1))]]`
-/

namespace A122258.P10375785958097505207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005109 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122258.P10375785958097505207

namespace A122258

/-- `∑[char[A000010(A005109(n+1))]]` -/
def P10375785958097505207.Spec : Prop :=
  ∀ n, (P10375785958097505207.a n : ℤ) = A122258 (n + 1)

end A122258

/-! ## A122258.P13539005052137541641

`∑[char[A036561(n)]*A010051(n+1)]`
-/

namespace A122258.P13539005052137541641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122258.P13539005052137541641

namespace A122258

/-- `∑[char[A036561(n)]*A010051(n+1)]` -/
def P13539005052137541641.Spec : Prop :=
  ∀ n, P13539005052137541641.a n = A122258 (n + 1)

end A122258

/-! ## A122258.P12272482520431194452

`∑[A010051(n+1)*A122255(n+1)]`
-/

namespace A122258.P12272482520431194452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A122255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122258.P12272482520431194452

namespace A122258

/-- `∑[A010051(n+1)*A122255(n+1)]` -/
def P12272482520431194452.Spec : Prop :=
  ∀ n, P12272482520431194452.a n = A122258 (n + 1)

end A122258

/-! ## A122258.P16127032614297315726

`∑[A010051(n+1)*A065333(∏{p}[n, #])]`
-/

namespace A122258.P16127032614297315726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A065333 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122258.P16127032614297315726

namespace A122258

/-- `∑[A010051(n+1)*A065333(∏{p}[n, #])]` -/
def P16127032614297315726.Spec : Prop :=
  ∀ n, P16127032614297315726.a n = A122258 (n + 1)

end A122258

/-! ## A122258.P6354254829613594370

`A122257(n*A122257(n+1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A122258.P6354254829613594370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A122257 ((n : ℤ) * A122257 (n + 1) + 1).toNat + a (n - 1)

end

end A122258.P6354254829613594370

namespace A122258

/-- `A122257(n*A122257(n+1)+1)+a(n-1)` -/
def P6354254829613594370.Spec : Prop :=
  ∀ n, P6354254829613594370.a n = A122258 (n + 1)

end A122258

/-! ## A122258.P5492463132144869596

`∑[char[A014963(A122254(n+1))-1]]-1`
-/

namespace A122258.P5492463132144869596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A122254 (n + 1)).toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A122258.P5492463132144869596

namespace A122258

/-- `∑[char[A014963(A122254(n+1))-1]]-1` -/
def P5492463132144869596.Spec : Prop :=
  ∀ n, P5492463132144869596.a n = A122258 (n + 1)

end A122258

/-!
# A122259: Primes p such that p - 1 is not 3-smooth.

The programs for A122259, the canonical program `A122259.P14863377937943997555` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122259 has offset 1).

The definition of A122259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9968 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122259.P14863377937943997555

`A000040(lt[3, A006530(A005097(n+1))]+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A122259

/-- `A000040(lt[3, A006530(A005097(n+1))]+2)` -/
def P14863377937943997555.Spec : Prop :=
  ∀ n, P14863377937943997555.a n = A122259 (n + 1)

theorem P14863377937943997555.correct : P14863377937943997555.Spec := by
  intro n
  simp only [A122259, Nat.add_sub_cancel]

end A122259

/-! ## A122259.P9859799362132847514

`p?[(n+1)*gcd(6, A006530(a(n-1)))]` with `a(0)=6`
-/

namespace A122259.P9859799362132847514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  (n + 1) * Int.gcd 6 (A006530 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122259.P9859799362132847514

namespace A122259

/-- `p?[(n+1)*gcd(6, A006530(a(n-1)))]` -/
def P9859799362132847514.Spec : Prop :=
  ∀ n, (P9859799362132847514.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P6467844618031358554

`p?[2*comp[A003586(n+1)]+1]`
-/

namespace A122259.P6467844618031358554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122259.P6467844618031358554

namespace A122259

/-- `p?[2*comp[A003586(n+1)]+1]` -/
def P6467844618031358554.Spec : Prop :=
  ∀ n, (P6467844618031358554.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P16990822585014744058

`p?[A059485(n+1)+A059485(n+1)+1]`
-/

namespace A122259.P16990822585014744058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1) + (A059485 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122259.P16990822585014744058

namespace A122259

/-- `p?[A059485(n+1)+A059485(n+1)+1]` -/
def P16990822585014744058.Spec : Prop :=
  ∀ n, P16990822585014744058.a n = A122259 (n + 1)

end A122259

/-! ## A122259.P1264533097117588090

`p?[A251727(n+1)+1]`
-/

namespace A122259.P1264533097117588090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122259.P1264533097117588090

namespace A122259

/-- `p?[A251727(n+1)+1]` -/
def P1264533097117588090.Spec : Prop :=
  ∀ n, P1264533097117588090.a n = A122259 (n + 1)

end A122259

/-! ## A122259.P15044552863778155781

`record[A006530(A251727(n+1)+1)]`
-/

namespace A122259.P15044552863778155781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A251727 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122259.P15044552863778155781

namespace A122259

/-- `record[A006530(A251727(n+1)+1)]` -/
def P15044552863778155781.Spec : Prop :=
  ∀ n, P15044552863778155781.a n = A122259 (n + 1)

end A122259

/-! ## A122259.P16893337858893587838

`p?[A069900(n+1)+1]`
-/

namespace A122259.P16893337858893587838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122259.P16893337858893587838

namespace A122259

/-- `p?[A069900(n+1)+1]` -/
def P16893337858893587838.Spec : Prop :=
  ∀ n, P16893337858893587838.a n = A122259 (n + 1)

end A122259

/-! ## A122259.P8556567191879797744

`p?[A048136(n+1)]`
-/

namespace A122259.P8556567191879797744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122259.P8556567191879797744

namespace A122259

/-- `p?[A048136(n+1)]` -/
def P8556567191879797744.Spec : Prop :=
  ∀ n, P8556567191879797744.a n = A122259 (n + 1)

end A122259

/-! ## A122259.P3271154409902329970

`record[A006530(A048136(n+2))]`
-/

namespace A122259.P3271154409902329970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A048136 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122259.P3271154409902329970

namespace A122259

/-- `record[A006530(A048136(n+2))]` -/
def P3271154409902329970.Spec : Prop :=
  ∀ n, P3271154409902329970.a n = A122259 (n + 1)

end A122259

/-! ## A122259.P12314998988086082443

`filter[A048136(n+1), A010051(#)]`
-/

namespace A122259.P12314998988086082443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A122259.P12314998988086082443

namespace A122259

/-- `filter[A048136(n+1), A010051(#)]` -/
def P12314998988086082443.Spec : Prop :=
  ∀ n, P12314998988086082443.a n = A122259 (n + 1)

end A122259

/-! ## A122259.P11311163638414939741

`∩[A000040(n+1), A048136(n+1)]`
-/

namespace A122259.P11311163638414939741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P11311163638414939741

namespace A122259

/-- `∩[A000040(n+1), A048136(n+1)]` -/
def P11311163638414939741.Spec : Prop :=
  ∀ n, (P11311163638414939741.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P4209461205751820804

`∩[A004139(n+1), A048136(n+1)]`
-/

namespace A122259.P4209461205751820804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P4209461205751820804

namespace A122259

/-- `∩[A004139(n+1), A048136(n+1)]` -/
def P4209461205751820804.Spec : Prop :=
  ∀ n, (P4209461205751820804.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P11875476688528255403

`∩[A006005(n+1), A048136(n+1)]`
-/

namespace A122259.P11875476688528255403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P11875476688528255403

namespace A122259

/-- `∩[A006005(n+1), A048136(n+1)]` -/
def P11875476688528255403.Spec : Prop :=
  ∀ n, (P11875476688528255403.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P8063035877786898263

`∩[A008578(n+1), A048136(n+1)]`
-/

namespace A122259.P8063035877786898263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P8063035877786898263

namespace A122259

/-- `∩[A008578(n+1), A048136(n+1)]` -/
def P8063035877786898263.Spec : Prop :=
  ∀ n, (P8063035877786898263.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P14358965720921049150

`∩[A045319(n+1), A048136(n+1)]`
-/

namespace A122259.P14358965720921049150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P14358965720921049150

namespace A122259

/-- `∩[A045319(n+1), A048136(n+1)]` -/
def P14358965720921049150.Spec : Prop :=
  ∀ n, (P14358965720921049150.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P1013922462271099471

`∩[A045344(n+1), A048136(n+1)]`
-/

namespace A122259.P1013922462271099471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P1013922462271099471

namespace A122259

/-- `∩[A045344(n+1), A048136(n+1)]` -/
def P1013922462271099471.Spec : Prop :=
  ∀ n, (P1013922462271099471.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P13820532656657227688

`∩[A046022(n+1), A048136(n+1)]`
-/

namespace A122259.P13820532656657227688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P13820532656657227688

namespace A122259

/-- `∩[A046022(n+1), A048136(n+1)]` -/
def P13820532656657227688.Spec : Prop :=
  ∀ n, (P13820532656657227688.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P9836472584579887547

`∩[A048136(n+1), A065091(n+1)]`
-/

namespace A122259.P9836472584579887547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P9836472584579887547

namespace A122259

/-- `∩[A048136(n+1), A065091(n+1)]` -/
def P9836472584579887547.Spec : Prop :=
  ∀ n, (P9836472584579887547.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P11689057457672390445

`∩[A048136(n+1), A066050(n+1)]`
-/

namespace A122259.P11689057457672390445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P11689057457672390445

namespace A122259

/-- `∩[A048136(n+1), A066050(n+1)]` -/
def P11689057457672390445.Spec : Prop :=
  ∀ n, (P11689057457672390445.a n : ℤ) = A122259 (n + 1)

end A122259

/-! ## A122259.P2467491088840159283

`∩[A048136(n+1), A066542(n+1)]`
-/

namespace A122259.P2467491088840159283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122259.P2467491088840159283

namespace A122259

/-- `∩[A048136(n+1), A066542(n+1)]` -/
def P2467491088840159283.Spec : Prop :=
  ∀ n, (P2467491088840159283.a n : ℤ) = A122259 (n + 1)

end A122259

/-!
# A122260: Multiplicative closure of Pierpont primes.

The programs for A122260, the canonical program `A122260.P1226289541384129242` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122260 has offset 1).

The definition of A122260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122260.P1226289541384129242

`lt[A173557(A173557(n+1)), 3]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122260

/-- `lt[A173557(A173557(n+1)), 3]+1` -/
def P1226289541384129242.Spec : Prop :=
  ∀ n, (P1226289541384129242.a n : ℤ) = A122260 (n + 1)

theorem P1226289541384129242.correct : P1226289541384129242.Spec := by
  intro n
  simp only [A122260, Nat.add_sub_cancel]

end A122260

/-! ## A122260.P5794359122761404308

`eq[1, A122261(n+1)]+1`
-/

namespace A122260.P5794359122761404308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122260.P5794359122761404308

namespace A122260

/-- `eq[1, A122261(n+1)]+1` -/
def P5794359122761404308.Spec : Prop :=
  ∀ n, (P5794359122761404308.a n : ℤ) = A122260 (n + 1)

end A122260

/-! ## A122260.P1024800845696663237

`filter[A382546(n+1), A122261(#)]`
-/

namespace A122260.P1024800845696663237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A122260.P1024800845696663237

namespace A122260

/-- `filter[A382546(n+1), A122261(#)]` -/
def P1024800845696663237.Spec : Prop :=
  ∀ n, P1024800845696663237.a n = A122260 (n + 1)

end A122260

/-! ## A122260.P11339916559520359035

`record[A000027(n+1)*A122261(n+1)]`
-/

namespace A122260.P11339916559520359035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A122261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122260.P11339916559520359035

namespace A122260

/-- `record[A000027(n+1)*A122261(n+1)]` -/
def P11339916559520359035.Spec : Prop :=
  ∀ n, P11339916559520359035.a n = A122260 (n + 1)

end A122260

/-! ## A122260.P2901511232362451356

`filter[A160542(n+1), A122261(#)]`
-/

namespace A122260.P2901511232362451356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A122260.P2901511232362451356

namespace A122260

/-- `filter[A160542(n+1), A122261(#)]` -/
def P2901511232362451356.Spec : Prop :=
  ∀ n, P2901511232362451356.a n = A122260 (n + 1)

end A122260

/-! ## A122260.P13037109254982955923

`filter[A160546(n+1), A122261(#)]`
-/

namespace A122260.P13037109254982955923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A122260.P13037109254982955923

namespace A122260

/-- `filter[A160546(n+1), A122261(#)]` -/
def P13037109254982955923.Spec : Prop :=
  ∀ n, P13037109254982955923.a n = A122260 (n + 1)

end A122260

/-! ## A122260.P7915134240477518843

`filter[A160547(n+1), A122261(#)]`
-/

namespace A122260.P7915134240477518843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A122260.P7915134240477518843

namespace A122260

/-- `filter[A160547(n+1), A122261(#)]` -/
def P7915134240477518843.Spec : Prop :=
  ∀ n, P7915134240477518843.a n = A122260 (n + 1)

end A122260

/-! ## A122260.P9493543095619574622

`filter[n+1, A122261(#)]`
-/

namespace A122260.P9493543095619574622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j) = 1) n)

end

end A122260.P9493543095619574622

namespace A122260

/-- `filter[n+1, A122261(#)]` -/
def P9493543095619574622.Spec : Prop :=
  ∀ n, (P9493543095619574622.a n : ℤ) = A122260 (n + 1)

end A122260

/-! ## A122260.P6229089595447350474

`lt[0, A122255(∏{p}[n+1, #])]+1`
-/

namespace A122260.P6229089595447350474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122260.P6229089595447350474

namespace A122260

/-- `lt[0, A122255(∏{p}[n+1, #])]+1` -/
def P6229089595447350474.Spec : Prop :=
  ∀ n, (P6229089595447350474.a n : ℤ) = A122260 (n + 1)

end A122260

/-! ## A122260.P18416783093005975233

`record[(floor(n/(xor(n, n+1)+1))+1)*A122261(n+2)]`
-/

namespace A122260.P18416783093005975233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) * A122261 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122260.P18416783093005975233

namespace A122260

/-- `record[(floor(n/(xor(n, n+1)+1))+1)*A122261(n+2)]` -/
def P18416783093005975233.Spec : Prop :=
  ∀ n, P18416783093005975233.a n = A122260 (n + 1)

end A122260

/-!
# A122261: Characteristic function of numbers having only factors that are Pierpont primes.

The programs for A122261, the canonical program `A122261.P6538206010001195725` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122261 has offset 1).

The definition of A122261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122261.P6538206010001195725

`A122255(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A122261

/-- `A122255(∏{p}[n+1, #])` -/
def P6538206010001195725.Spec : Prop :=
  ∀ n, P6538206010001195725.a n = A122261 (n + 1)

theorem P6538206010001195725.correct : P6538206010001195725.Spec := by
  intro n
  simp only [A122261, Nat.add_sub_cancel]

end A122261

/-! ## A122261.P10559350754089435375

`∏{p}[n+1, A122257(#)]`
-/

namespace A122261.P10559350754089435375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A122257 p

end

end A122261.P10559350754089435375

namespace A122261

/-- `∏{p}[n+1, A122257(#)]` -/
def P10559350754089435375.Spec : Prop :=
  ∀ n, P10559350754089435375.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P2924307389556055717

`char[A122260(n+1)-1]`
-/

namespace A122261.P2924307389556055717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A122261.P2924307389556055717

namespace A122261

/-- `char[A122260(n+1)-1]` -/
def P2924307389556055717.Spec : Prop :=
  ∀ n, (P2924307389556055717.a n : ℤ) = A122261 (n + 1)

end A122261

/-! ## A122261.P9278568303982407631

`A065333(A003958(n+1))`
-/

namespace A122261.P9278568303982407631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A003958 (n + 1)).toNat

end

end A122261.P9278568303982407631

namespace A122261

/-- `A065333(A003958(n+1))` -/
def P9278568303982407631.Spec : Prop :=
  ∀ n, P9278568303982407631.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P10940122142770273053

`A122255(A007947(n+1))`
-/

namespace A122261.P10940122142770273053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (A007947 (n + 1)).toNat

end

end A122261.P10940122142770273053

namespace A122261

/-- `A122255(A007947(n+1))` -/
def P10940122142770273053.Spec : Prop :=
  ∀ n, P10940122142770273053.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P17878114508592371408

`A122255(A015052(n+1))`
-/

namespace A122261.P17878114508592371408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (A015052 (n + 1)).toNat

end

end A122261.P17878114508592371408

namespace A122261

/-- `A122255(A015052(n+1))` -/
def P17878114508592371408.Spec : Prop :=
  ∀ n, P17878114508592371408.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P13568368147911136491

`A122255(A015053(n+1))`
-/

namespace A122261.P13568368147911136491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (A015053 (n + 1)).toNat

end

end A122261.P13568368147911136491

namespace A122261

/-- `A122255(A015053(n+1))` -/
def P13568368147911136491.Spec : Prop :=
  ∀ n, P13568368147911136491.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P17380754629550455710

`A065333(A173557(n+1))`
-/

namespace A122261.P17380754629550455710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A173557 (n + 1)).toNat

end

end A122261.P17380754629550455710

namespace A122261

/-- `A065333(A173557(n+1))` -/
def P17380754629550455710.Spec : Prop :=
  ∀ n, P17380754629550455710.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P15799799838872426983

`A122262(2*(n+1))-A122262(2*n+1)`
-/

namespace A122261.P15799799838872426983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122262 (2 * (n + 1)) - A122262 (2 * n + 1)

end

end A122261.P15799799838872426983

namespace A122261

/-- `A122262(2*(n+1))-A122262(2*n+1)` -/
def P15799799838872426983.Spec : Prop :=
  ∀ n, P15799799838872426983.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P2822584916147068113

`A008683(A297381(A173557(n+1))²)`
-/

namespace A122261.P2822584916147068113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A297381 (A173557 (n + 1)).toNat ^ 2).toNat

end

end A122261.P2822584916147068113

namespace A122261

/-- `A008683(A297381(A173557(n+1))²)` -/
def P2822584916147068113.Spec : Prop :=
  ∀ n, P2822584916147068113.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P4070701248383373792

`A008683(A349431(A173557(n+1))²)`
-/

namespace A122261.P4070701248383373792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A349431 (A173557 (n + 1)).toNat ^ 2).toNat

end

end A122261.P4070701248383373792

namespace A122261

/-- `A008683(A349431(A173557(n+1))²)` -/
def P4070701248383373792.Spec : Prop :=
  ∀ n, P4070701248383373792.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P10148165855037067341

`A122255(gcd(A009474(n+1), A144845(n)))`
-/

namespace A122261.P10148165855037067341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (Int.gcd (A009474 (n + 1)) (A144845 n))

end

end A122261.P10148165855037067341

namespace A122261

/-- `A122255(gcd(A009474(n+1), A144845(n)))` -/
def P10148165855037067341.Spec : Prop :=
  ∀ n, P10148165855037067341.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P1792677352393843648

`A008683(A305444(A173557(n+1))²)`
-/

namespace A122261.P1792677352393843648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A305444 (A173557 (n + 1)).toNat ^ 2).toNat

end

end A122261.P1792677352393843648

namespace A122261

/-- `A008683(A305444(A173557(n+1))²)` -/
def P1792677352393843648.Spec : Prop :=
  ∀ n, P1792677352393843648.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P9393709301131770075

`A008683(A307410(A173557(n+1))²)`
-/

namespace A122261.P9393709301131770075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A307410 (A173557 (n + 1)).toNat ^ 2).toNat

end

end A122261.P9393709301131770075

namespace A122261

/-- `A008683(A307410(A173557(n+1))²)` -/
def P9393709301131770075.Spec : Prop :=
  ∀ n, P9393709301131770075.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P3792315081580958102

`A054521(A000217(A076512(A076512(A109395(n+1)))))`
-/

namespace A122261.P3792315081580958102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A000217 (A076512 (A076512 (A109395 (n + 1)).toNat).toNat).toNat).toNat

end

end A122261.P3792315081580958102

namespace A122261

/-- `A054521(A000217(A076512(A076512(A109395(n+1)))))` -/
def P3792315081580958102.Spec : Prop :=
  ∀ n, P3792315081580958102.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P7565402998230520052

`A122255(A003968(n+1))`
-/

namespace A122261.P7565402998230520052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (A003968 (n + 1)).toNat

end

end A122261.P7565402998230520052

namespace A122261

/-- `A122255(A003968(n+1))` -/
def P7565402998230520052.Spec : Prop :=
  ∀ n, P7565402998230520052.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P1800808683841719482

`val(2*A003958(n+1), A102443(2*A003958(n+1)))`
-/

namespace A122261.P1800808683841719482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A003958 (n + 1)).toNat (A102443 (2 * A003958 (n + 1)).toNat).toNat

end

end A122261.P1800808683841719482

namespace A122261

/-- `val(2*A003958(n+1), A102443(2*A003958(n+1)))` -/
def P1800808683841719482.Spec : Prop :=
  ∀ n, (P1800808683841719482.a n : ℤ) = A122261 (n + 1)

end A122261

/-! ## A122261.P8521484359061646642

`A154955(A297381(A173557(n+1))²)`
-/

namespace A122261.P8521484359061646642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A297381 (A173557 (n + 1)).toNat ^ 2).toNat

end

end A122261.P8521484359061646642

namespace A122261

/-- `A154955(A297381(A173557(n+1))²)` -/
def P8521484359061646642.Spec : Prop :=
  ∀ n, P8521484359061646642.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P1652137186332383519

`A097945(A305444(A173557(n+1))²)`
-/

namespace A122261.P1652137186332383519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (A305444 (A173557 (n + 1)).toNat ^ 2).toNat

end

end A122261.P1652137186332383519

namespace A122261

/-- `A097945(A305444(A173557(n+1))²)` -/
def P1652137186332383519.Spec : Prop :=
  ∀ n, P1652137186332383519.a n = A122261 (n + 1)

end A122261

/-! ## A122261.P10178443570295738290

`C(2, A001221(A166636(n+1)))`
-/

namespace A122261.P10178443570295738290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001221 (A166636 (n + 1)).toNat).toNat

end

end A122261.P10178443570295738290

namespace A122261

/-- `C(2, A001221(A166636(n+1)))` -/
def P10178443570295738290.Spec : Prop :=
  ∀ n, (P10178443570295738290.a n : ℤ) = A122261 (n + 1)

end A122261

/-!
# A122262: Number of numbers having only factors that are Pierpont primes.

The programs for A122262, the canonical program `A122262.P16298075075539591976` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122262 has offset 1).

The definition of A122262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122262.P16298075075539591976

`∑[round(1/∏{p}[∏{p}[n+1, #-1], #-1])]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122262

/-- `∑[round(1/∏{p}[∏{p}[n+1, #-1], #-1])]` -/
def P16298075075539591976.Spec : Prop :=
  ∀ n, P16298075075539591976.a n = A122262 (n + 1)

theorem P16298075075539591976.correct : P16298075075539591976.Spec := by
  intro n
  simp only [A122262, Nat.add_sub_cancel]

end A122262

/-! ## A122262.P13591506507022537598

`∑[A122261(n+1)]`
-/

namespace A122262.P13591506507022537598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122262.P13591506507022537598

namespace A122262

/-- `∑[A122261(n+1)]` -/
def P13591506507022537598.Spec : Prop :=
  ∀ n, P13591506507022537598.a n = A122262 (n + 1)

end A122262

/-! ## A122262.P2096287573882534399

`∑[A122255(∏{p}[n+1, #])]`
-/

namespace A122262.P2096287573882534399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122262.P2096287573882534399

namespace A122262

/-- `∑[A122255(∏{p}[n+1, #])]` -/
def P2096287573882534399.Spec : Prop :=
  ∀ n, P2096287573882534399.a n = A122262 (n + 1)

end A122262

/-! ## A122262.P5311354890757456688

`∑[∏{p}[n+1, A122257(#)]]`
-/

namespace A122262.P5311354890757456688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A122257 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122262.P5311354890757456688

namespace A122262

/-- `∑[∏{p}[n+1, A122257(#)]]` -/
def P5311354890757456688.Spec : Prop :=
  ∀ n, P5311354890757456688.a n = A122262 (n + 1)

end A122262

/-! ## A122262.P14403576610645409717

`∑[char[A122260(n+1)-1]]`
-/

namespace A122262.P14403576610645409717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122262.P14403576610645409717

namespace A122262

/-- `∑[char[A122260(n+1)-1]]` -/
def P14403576610645409717.Spec : Prop :=
  ∀ n, (P14403576610645409717.a n : ℤ) = A122262 (n + 1)

end A122262

/-! ## A122262.P11463655388826794644

`∑[A001222(∏{p}[∏{p}[n+1, #-1], #-1])!%2]`
-/

namespace A122262.P11463655388826794644
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, ((p : ℤ) - 1)).toNat).toNat % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122262.P11463655388826794644

namespace A122262

/-- `∑[A001222(∏{p}[∏{p}[n+1, #-1], #-1])!%2]` -/
def P11463655388826794644.Spec : Prop :=
  ∀ n, (P11463655388826794644.a n : ℤ) = A122262 (n + 1)

end A122262

/-! ## A122262.P7287547123564528634

`∑[A065333(A000010(∏{p}[n+1, #]))]`
-/

namespace A122262.P7287547123564528634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A000010 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122262.P7287547123564528634

namespace A122262

/-- `∑[A065333(A000010(∏{p}[n+1, #]))]` -/
def P7287547123564528634.Spec : Prop :=
  ∀ n, P7287547123564528634.a n = A122262 (n + 1)

end A122262

/-! ## A122262.P17477123608491906768

`A122261((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A122262.P17477123608491906768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122261 ((n + 1) ^ 2) + a (n - 1)

end

end A122262.P17477123608491906768

namespace A122262

/-- `A122261((n+1)²)+a(n-1)` -/
def P17477123608491906768.Spec : Prop :=
  ∀ n, P17477123608491906768.a n = A122262 (n + 1)

end A122262

/-!
# A122263: a(n) = 2*a(n-1) - a(n-2) + 2*(prime(n+1)-prime(n)); a(1) = 2, a(2) = 3.

The programs for A122263, the canonical program `A122263.P12952156999036149536` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122263 has offset 1).

The definition of A122263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122263.P12952156999036149536

`∑[2*A040976(n+2)-5]+5`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122263

/-- `∑[2*A040976(n+2)-5]+5` -/
def P12952156999036149536.Spec : Prop :=
  ∀ n, P12952156999036149536.a n = A122263 (n + 1)

theorem P12952156999036149536.correct : P12952156999036149536.Spec := by
  intro n
  simp only [A122263, Nat.add_sub_cancel]

end A122263

/-! ## A122263.P13999117060671984411

`∑[A100484(n+2)]-(9*n+4)`
-/

namespace A122263.P13999117060671984411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (9 * n + 4 : ℤ)

end

end A122263.P13999117060671984411

namespace A122263

/-- `∑[A100484(n+2)]-(9*n+4)` -/
def P13999117060671984411.Spec : Prop :=
  ∀ n, P13999117060671984411.a n = A122263 (n + 1)

end A122263

/-! ## A122263.P3197704528087955382

`∑[2*A000040(n+2)]-(9*n+4)`
-/

namespace A122263.P3197704528087955382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (9 * n + 4 : ℤ)

end

end A122263.P3197704528087955382

namespace A122263

/-- `∑[2*A000040(n+2)]-(9*n+4)` -/
def P3197704528087955382.Spec : Prop :=
  ∀ n, P3197704528087955382.a n = A122263 (n + 1)

end A122263

/-! ## A122263.P5140501309021903139

`∑[A072055(n+2)-A040020(n)]`
-/

namespace A122263.P5140501309021903139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 2) - A040020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122263.P5140501309021903139

namespace A122263

/-- `∑[A072055(n+2)-A040020(n)]` -/
def P5140501309021903139.Spec : Prop :=
  ∀ n, P5140501309021903139.a n = A122263 (n + 1)

end A122263

/-! ## A122263.P11606244706392868470

`∑[A001747(n+3)]-(9*n+4)`
-/

namespace A122263.P11606244706392868470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (9 * n + 4 : ℤ)

end

end A122263.P11606244706392868470

namespace A122263

/-- `∑[A001747(n+3)]-(9*n+4)` -/
def P11606244706392868470.Spec : Prop :=
  ∀ n, P11606244706392868470.a n = A122263 (n + 1)

end A122263

/-! ## A122263.P6884542991334810898

`∑[A196226(n+1)-9]+3`
-/

namespace A122263.P6884542991334810898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196226 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A122263.P6884542991334810898

namespace A122263

/-- `∑[A196226(n+1)-9]+3` -/
def P6884542991334810898.Spec : Prop :=
  ∀ n, P6884542991334810898.a n = A122263 (n + 1)

end A122263

/-!
# A122264: a(n) = n + 1 + 2*Sum_{j=0..n-2} (j*prime(n-j+2) - (2*j-1)*prime(n-j+1) + (j-1)*prime(n-j)).

The programs for A122264, the canonical program `A122264.P4329901969960442374` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122264 has offset 1).

The definition of A122264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122264.P13986569437501183097

`∑[2*A100803(n+1)]-n`
-/

namespace A122264.P13986569437501183097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A122264.P13986569437501183097

namespace A122264

/-- `∑[2*A100803(n+1)]-n` -/
def P13986569437501183097.Spec : Prop :=
  ∀ n, P13986569437501183097.a n = A122264 (n + 1)

end A122264

/-! ## A122264.P4329901969960442374

`A001749(n+2)-(3*n+10)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122264

/-- `A001749(n+2)-(3*n+10)` -/
def P4329901969960442374.Spec : Prop :=
  ∀ n, P4329901969960442374.a n = A122264 (n + 1)

theorem P4329901969960442374.correct : P4329901969960442374.Spec := by
  intro n
  simp only [A122264, Nat.add_sub_cancel]

end A122264

/-! ## A122264.P18339105119632891871

`2*A239636(n+2)+n`
-/

namespace A122264.P18339105119632891871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239636 (n + 2) + (n : ℤ)

end

end A122264.P18339105119632891871

namespace A122264

/-- `2*A239636(n+2)+n` -/
def P18339105119632891871.Spec : Prop :=
  ∀ n, P18339105119632891871.a n = A122264 (n + 1)

end A122264

/-! ## A122264.P9840862244163661840

`∑[Δ[4*A000040(n+1)]-3]+1`
-/

namespace A122264.P9840862244163661840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A122264.P9840862244163661840

namespace A122264

/-- `∑[Δ[4*A000040(n+1)]-3]+1` -/
def P9840862244163661840.Spec : Prop :=
  ∀ n, P9840862244163661840.a n = A122264 (n + 1)

end A122264

/-! ## A122264.P12523617359427641474

`∑[A047617(Δ[A000040(n+1)])]`
-/

namespace A122264.P12523617359427641474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047617 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122264.P12523617359427641474

namespace A122264

/-- `∑[A047617(Δ[A000040(n+1)])]` -/
def P12523617359427641474.Spec : Prop :=
  ∀ n, P12523617359427641474.a n = A122264 (n + 1)

end A122264

/-! ## A122264.P15158351850103371979

`∑[A004274(Δ[2*A000040(n+1)])]`
-/

namespace A122264.P15158351850103371979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122264.P15158351850103371979

namespace A122264

/-- `∑[A004274(Δ[2*A000040(n+1)])]` -/
def P15158351850103371979.Spec : Prop :=
  ∀ n, P15158351850103371979.a n = A122264 (n + 1)

end A122264

/-! ## A122264.P15920048965377487639

`∑[A004280(Δ[2*A000040(n+1)])]`
-/

namespace A122264.P15920048965377487639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122264.P15920048965377487639

namespace A122264

/-- `∑[A004280(Δ[2*A000040(n+1)])]` -/
def P15920048965377487639.Spec : Prop :=
  ∀ n, P15920048965377487639.a n = A122264 (n + 1)

end A122264

/-! ## A122264.P8892163813408911403

`∑[A047606(Δ[2*A000040(n+1)])]`
-/

namespace A122264.P8892163813408911403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122264.P8892163813408911403

namespace A122264

/-- `∑[A047606(Δ[2*A000040(n+1)])]` -/
def P8892163813408911403.Spec : Prop :=
  ∀ n, P8892163813408911403.a n = A122264 (n + 1)

end A122264

/-! ## A122264.P11241038949576431189

`2*(2*record[A000010(n+3)]-2-n)-2-n`
-/

namespace A122264.P11241038949576431189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 - (n : ℤ)) - 2 - (n : ℤ)

end

end A122264.P11241038949576431189

namespace A122264

/-- `2*(2*record[A000010(n+3)]-2-n)-2-n` -/
def P11241038949576431189.Spec : Prop :=
  ∀ n, P11241038949576431189.a n = A122264 (n + 1)

end A122264

/-! ## A122264.P3754412905899225840

`A000010(8*A000040(n+2))-3*(n+2)`
-/

namespace A122264.P3754412905899225840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (8 * A000040 (n + 2)).toNat - (3 * (n + 2) : ℤ)

end

end A122264.P3754412905899225840

namespace A122264

/-- `A000010(8*A000040(n+2))-3*(n+2)` -/
def P3754412905899225840.Spec : Prop :=
  ∀ n, P3754412905899225840.a n = A122264 (n + 1)

end A122264

/-!
# A122265: 10th-order Fibonacci numbers: a(n+1) = a(n)+...+a(n-9) with a(0) = ... = a(8) = 0, a(9) = 1.

The programs for A122265, there is no canonical definition to state claims against.
-/

/-! ## A122265.P12726122135793572502

`∑[A251759(abs(1-n))]`
-/

namespace A122265.P12726122135793572502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122265.P12726122135793572502

/-! ## A122265.P14499990763248866865

`A251766(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A122265.P14499990763248866865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251766 (n + 1) - a (n - 1)

end

end A122265.P14499990763248866865

/-! ## A122265.P4045106646692423676

`∑[A251759(n)]-A251759(n)`
-/

namespace A122265.P4045106646692423676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A251759 n

end

end A122265.P4045106646692423676

/-! ## A122265.P4229193068678503769

`A251759(n+1)-A251760(n)`
-/

namespace A122265.P4229193068678503769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 (n + 1) - A251760 n

end

end A122265.P4229193068678503769

/-! ## A122265.P10003344965260089791

`A251760(n+1)-A251761(n)`
-/

namespace A122265.P10003344965260089791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (n + 1) - A251761 n

end

end A122265.P10003344965260089791

/-! ## A122265.P15453601925691322849

`A251761(n+1)-A251762(n)`
-/

namespace A122265.P15453601925691322849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 1) - A251762 n

end

end A122265.P15453601925691322849

/-! ## A122265.P8837661893605391139

`A251762(n+1)-A251763(n)`
-/

namespace A122265.P8837661893605391139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251762 (n + 1) - A251763 n

end

end A122265.P8837661893605391139

/-! ## A122265.P14511536783248121118

`A251763(n+1)-A251764(n)`
-/

namespace A122265.P14511536783248121118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251763 (n + 1) - A251764 n

end

end A122265.P14511536783248121118

/-! ## A122265.P5215364910749227936

`A251764(n+1)-A251765(n)`
-/

namespace A122265.P5215364910749227936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251764 (n + 1) - A251765 n

end

end A122265.P5215364910749227936

/-! ## A122265.P1127001414725776425

`A251765(n+1)-A251766(n)`
-/

namespace A122265.P1127001414725776425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251765 (n + 1) - A251766 n

end

end A122265.P1127001414725776425

/-! ## A122265.P3225424242902476299

`Δ[A127194(n+1)/9]`
-/

namespace A122265.P3225424242902476299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127194 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122265.P3225424242902476299

/-! ## A122265.P9309334010214952388

`Δ[A172320(n)-Δ[A172320(n)]]`
-/

namespace A122265.P9309334010214952388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172320 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122265.P9309334010214952388

/-!
# A122266: Expansion of f(-q)^2 * Q(q) in powers of q.

The programs for A122266, there is no canonical definition to state claims against.
-/

/-! ## A122266.P7017863395399540553

`A234565(3*n)`
-/

namespace A122266.P7017863395399540553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234565 (3 * n)

end

end A122266.P7017863395399540553

/-! ## A122266.P7837676418204242519

`or(char[2], A234565(A008585(n)))`
-/

namespace A122266.P7837676418204242519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A234565 (A008585 n).toNat)

end

end A122266.P7837676418204242519

/-! ## A122266.P4066667311548704050

`A234565(A008585(n))/A054977(n+1)`
-/

namespace A122266.P4066667311548704050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234565 (A008585 n).toNat : ℚ) / (A054977 (n + 1) : ℚ)

end

end A122266.P4066667311548704050

/-! ## A122266.P2053322137086172454

`A234565(A008585(n))^A007318(C(2, n))`
-/

namespace A122266.P2053322137086172454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234565 (A008585 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A122266.P2053322137086172454

/-! ## A122266.P1817700526494365581

`A234565(A008585(n))+A000007(A000005(n+1))`
-/

namespace A122266.P1817700526494365581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234565 (A008585 n).toNat + A000007 (A000005 (n + 1)).toNat

end

end A122266.P1817700526494365581

/-! ## A122266.P9303700974460230327

`A234565(A008585(n))/A007318(∑[n])`
-/

namespace A122266.P9303700974460230327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234565 (A008585 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A122266.P9303700974460230327

/-!
# A122270: Numbers m such that the numerator of the Bernoulli number B(m) is divisible by a cube.

The programs for A122270, there is no canonical definition to state claims against.
-/

/-! ## A122270.P11338718696224677716

`A122272(A138245(n+1))/A122271(n+1)`
-/

namespace A122270.P11338718696224677716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122272 (A138245 (n + 1)).toNat : ℚ) / (A122271 (n + 1) : ℚ)

end

end A122270.P11338718696224677716

/-!
# A122271: a(n) is the smallest prime whose cube divides the numerator of the Bernoulli number B(A122270(n)).

The programs for A122271, there is no canonical definition to state claims against.
-/

/-! ## A122271.P1714424896645665728

`A082061(A122270(n+1))`
-/

namespace A122271.P1714424896645665728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A122270 (n + 1)).toNat

end

end A122271.P1714424896645665728

/-! ## A122271.P3469052888057623514

`A087039(A122270(n+1)/2)`
-/

namespace A122271.P3469052888057623514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (SequenceMachineLib.roundAway ((A122270 (n + 1) : ℚ) / 2)).toNat

end

end A122271.P3469052888057623514

/-! ## A122271.P18065559913344636707

`A087039(lcm(2, A122270(n+1)))`
-/

namespace A122271.P18065559913344636707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (Int.lcm 2 (A122270 (n + 1)))

end

end A122271.P18065559913344636707

/-! ## A122271.P301759173824009150

`∏{p}[A087039(A122270(n+1)), A006530(#)]`
-/

namespace A122271.P301759173824009150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A122270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A122271.P301759173824009150

/-! ## A122271.P11185798387249682081

`A006530(A122270(n+1)/∏{p}[A122270(n+1), #])`
-/

namespace A122271.P11185798387249682081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A122270 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A122271.P11185798387249682081

/-!
# A122272: Numbers m such that the numerator of the Bernoulli number B(m) is divisible by p^4, where p is prime.

The programs for A122272, there is no canonical definition to state claims against.
-/

/-! ## A122272.P11969490508452910927

`filter[A122270(n+1), A353628(#)]`
-/

namespace A122272.P11969490508452910927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A122272.P11969490508452910927

/-!
# A122275: Expansion of q^(-2/3) * eta(q) * eta(q^5)^3 in powers of q.

The programs for A122275, there is no canonical definition to state claims against.
-/

/-! ## A122275.P769530891955095066

`A122274(A016885(n))/5`
-/

namespace A122275.P769530891955095066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122274 (A016885 n).toNat : ℚ) / 5

end

end A122275.P769530891955095066

/-! ## A122275.P5017186270895105424

`A122274(Δ[A116668(n)])/5`
-/

namespace A122275.P5017186270895105424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122274 (f1 (n + 1) - f1 n).toNat : ℚ) / 5

end

end A122275.P5017186270895105424

/-! ## A122275.P7406303329464590810

`A122274(A016861(n)+2)/5`
-/

namespace A122275.P7406303329464590810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122274 (A016861 n + 2).toNat : ℚ) / 5

end

end A122275.P7406303329464590810

/-!
# A122276: If b(n-1) + b(n-2) < n then a(n) = 0, otherwise a(n) = 1, where b(i) = A096535(i).

The programs for A122276, the canonical program `A122276.P10869181094470073014` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122276 has offset 2).

The definition of A122276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122276.P10869181094470073014

`floor((A096535(n+1)+A096535(n))/(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122276

/-- `floor((A096535(n+1)+A096535(n))/(n+2))` -/
def P10869181094470073014.Spec : Prop :=
  ∀ n, P10869181094470073014.a n = A122276 (n + 2)

theorem P10869181094470073014.correct : P10869181094470073014.Spec := by
  intro n
  simp only [A122276, Nat.add_sub_cancel]

end A122276

/-! ## A122276.P16438800628218618553

`char[lt[A096535(n+2), A096535(n)]]`
-/

namespace A122276.P16438800628218618553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096535 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096535 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A122276.P16438800628218618553

namespace A122276

/-- `char[lt[A096535(n+2), A096535(n)]]` -/
def P16438800628218618553.Spec : Prop :=
  ∀ n, (P16438800628218618553.a n : ℤ) = A122276 (n + 2)

end A122276

/-! ## A122276.P1115477173314515118

`A288220(A035008(n+2)+A002024(n+5))`
-/

namespace A122276.P1115477173314515118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (A035008 (n + 2) + A002024 (n + 5)).toNat

end

end A122276.P1115477173314515118

namespace A122276

/-- `A288220(A035008(n+2)+A002024(n+5))` -/
def P1115477173314515118.Spec : Prop :=
  ∀ n, P1115477173314515118.a n = A122276 (n + 2)

end A122276

/-! ## A122276.P14910427838296538308

`A000007(C(A096535(n+2), A096535(n)))`
-/

namespace A122276.P14910427838296538308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose (A096535 (n + 2)).toNat (A096535 n).toNat)

end

end A122276.P14910427838296538308

namespace A122276

/-- `A000007(C(A096535(n+2), A096535(n)))` -/
def P14910427838296538308.Spec : Prop :=
  ∀ n, P14910427838296538308.a n = A122276 (n + 2)

end A122276

/-! ## A122276.P13418519103461187578

`A010060(A239708(n+1)-A095076(n+2))`
-/

namespace A122276.P13418519103461187578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A239708 (n + 1) - A095076 (n + 2)).toNat

end

end A122276.P13418519103461187578

namespace A122276

/-- `A010060(A239708(n+1)-A095076(n+2))` -/
def P13418519103461187578.Spec : Prop :=
  ∀ n, P13418519103461187578.a n = A122276 (n + 2)

end A122276

/-!
# A122282: Row 1 of A122200, row 7 of A122203 and A122204.

The programs for A122282, there is no canonical definition to state claims against.
-/

/-! ## A122282.P14243030031837058511

`A130359(A069768(n))`
-/

namespace A122282.P14243030031837058511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (A069768 n).toNat

end

end A122282.P14243030031837058511

/-! ## A122282.P14683065248805891403

`A069767(A130360(n))`
-/

namespace A122282.P14683065248805891403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A130360 n).toNat

end

end A122282.P14683065248805891403

/-! ## A122282.P6681353137018928029

`A130355(A074686(n))`
-/

namespace A122282.P6681353137018928029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130355 (A074686 n).toNat

end

end A122282.P6681353137018928029

/-! ## A122282.P17571932070848108090

`A074685(A130356(n))`
-/

namespace A122282.P17571932070848108090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074685 (A130356 n).toNat

end

end A122282.P17571932070848108090

/-! ## A122282.P8258369771605170014

`A130353(A082340(n))`
-/

namespace A122282.P8258369771605170014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130353 (A082340 n).toNat

end

end A122282.P8258369771605170014

/-! ## A122282.P14602492965445772008

`A082339(A130354(n))`
-/

namespace A122282.P14602492965445772008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082339 (A130354 n).toNat

end

end A122282.P14602492965445772008

/-! ## A122282.P6375853845523268550

`A130351(A130350(n))`
-/

namespace A122282.P6375853845523268550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130351 (A130350 n).toNat

end

end A122282.P6375853845523268550

/-! ## A122282.P2872153294714034963

`A130349(A130352(n))`
-/

namespace A122282.P2872153294714034963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130349 (A130352 n).toNat

end

end A122282.P2872153294714034963

/-! ## A122282.P5351742321575533686

`A130361(A130358(n))`
-/

namespace A122282.P5351742321575533686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130361 (A130358 n).toNat

end

end A122282.P5351742321575533686

/-! ## A122282.P12016229790415968116

`A130357(A130362(n))`
-/

namespace A122282.P12016229790415968116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130357 (A130362 n).toNat

end

end A122282.P12016229790415968116

/-!
# A122283: Signature permutations of DEEPEN-transformations of non-recursive Catalan automorphisms in table A089840.

The programs for A122283, there is no canonical definition to state claims against.
-/

/-! ## A122283.P8590308354295243470

`A089840(n)+A122286(n)-A122287(n)`
-/

namespace A122283.P8590308354295243470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n + (A122286 n - A122287 n)

end

end A122283.P8590308354295243470

/-! ## A122283.P4896691112650230881

`A089840(n)+A122204(n)-A130401(n)`
-/

namespace A122283.P4896691112650230881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n + (A122204 n - A130401 n)

end

end A122283.P4896691112650230881

/-!
# A122284: Signature permutations of NEPEED-transformations of non-recursive Catalan automorphisms in table A089840.

The programs for A122284, there is no canonical definition to state claims against.
-/

/-! ## A122284.P4443963209024504130

`A089869(A122203(n))-char[80*(n+1)²]`
-/

namespace A122284.P4443963209024504130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  80 * (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A122203 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A122284.P4443963209024504130

/-! ## A122284.P17373352159379306497

`A122203(n)+A015989(A297469(n))`
-/

namespace A122284.P17373352159379306497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 n + A015989 (A297469 n).toNat

end

end A122284.P17373352159379306497

/-! ## A122284.P15108825078960871567

`A089840(n)+A122200(n)-A025581(n)`
-/

namespace A122284.P15108825078960871567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n + (A122200 n - A025581 n)

end

end A122284.P15108825078960871567

/-! ## A122284.P11753163074307374671

`A089840(n)+A122202(n)-A122204(n)`
-/

namespace A122284.P11753163074307374671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n + (A122202 n - A122204 n)

end

end A122284.P11753163074307374671

/-! ## A122284.P8632994746124323027

`A089840(n)+A122285(n)-A122288(n)`
-/

namespace A122284.P8632994746124323027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n + (A122285 n - A122288 n)

end

end A122284.P8632994746124323027

/-! ## A122284.P9469783760785377811

`A089867(A122203(n))-A000073(A112315(n))`
-/

namespace A122284.P9469783760785377811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A122203 n).toNat - A000073 (A112315 n).toNat

end

end A122284.P9469783760785377811

/-! ## A122284.P16698106892008838571

`A089867(A122203(n))-A025461(A341882(n))`
-/

namespace A122284.P16698106892008838571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A122203 n).toNat - A025461 (A341882 (n + 64)).toNat

end

end A122284.P16698106892008838571

/-!
# A122285: Signature permutations of ENIPS-transformations of Catalan automorphisms in table A122203.

The programs for A122285, there is no canonical definition to state claims against.
-/

/-! ## A122285.P16882005250005610503

`or(char[A017756(n)], A122202(n))`
-/

namespace A122285.P16882005250005610503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017756 (n + 92)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122202 n)

end

end A122285.P16882005250005610503

/-! ## A122285.P6195438451414867882

`or(char[A047861(n)], A122202(n))`
-/

namespace A122285.P6195438451414867882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122202 n)

end

end A122285.P6195438451414867882

/-! ## A122285.P6090321434763314335

`or(char[A122369(n)], A122202(n))`
-/

namespace A122285.P6090321434763314335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122369 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122202 n)

end

end A122285.P6090321434763314335

/-! ## A122285.P1554442747835142334

`or(char[A215148(n)], A122202(n))`
-/

namespace A122285.P1554442747835142334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122202 n)

end

end A122285.P1554442747835142334

/-! ## A122285.P9881554687168629692

`ceil(sqrt(A122202(n)*A122286(n)))`
-/

namespace A122285.P9881554687168629692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A122202 n * A122286 n : ℝ)⌉

end

end A122285.P9881554687168629692

/-! ## A122285.P10132310453663125400

`or(and(n, A122288(n)), A122202(n))`
-/

namespace A122285.P10132310453663125400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land (n : ℤ) (A122288 n)) (A122202 n)

end

end A122285.P10132310453663125400

/-! ## A122285.P6930391300089851972

`A122202(n)+char[A017756(n+1)]`
-/

namespace A122285.P6930391300089851972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017756 (n + 1 + 92)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122285.P6930391300089851972

/-! ## A122285.P2955240416305260730

`A122202(n)+char[A082131(n+1)]`
-/

namespace A122285.P2955240416305260730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082131 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122285.P2955240416305260730

/-! ## A122285.P10032820940337731163

`A122202(n)+char[A250373(n+1)]`
-/

namespace A122285.P10032820940337731163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122285.P10032820940337731163

/-! ## A122285.P4711635013540128117

`A122202(n)+A001222(A239700(n+1))`
-/

namespace A122285.P4711635013540128117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 n + A001222 (A239700 (n + 1)).toNat

end

end A122285.P4711635013540128117

/-!
# A122286: Signature permutations of SPINE-transformations of Catalan automorphisms in table A122204.

The programs for A122286, there is no canonical definition to state claims against.
-/

/-! ## A122286.P6512260219626466757

`A122285(n)-char[A233311(n+1)]`
-/

namespace A122286.P6512260219626466757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233311 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122286.P6512260219626466757

/-! ## A122286.P16760064858383291426

`A122285(n)-char[A082131(n+1)-1]`
-/

namespace A122286.P16760064858383291426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082131 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122286.P16760064858383291426

/-! ## A122286.P13325528541690292829

`A122285(n)-char[A116240(n+1)-1]`
-/

namespace A122286.P13325528541690292829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116240 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122286.P13325528541690292829

/-! ## A122286.P10140822883960276264

`A122285(n)-char[A106429(2*n+1)]`
-/

namespace A122286.P10140822883960276264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106429 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122286.P10140822883960276264

/-! ## A122286.P1861731325303200158

`A122285(n)-char[A275918(2*n+1)]`
-/

namespace A122286.P1861731325303200158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275918 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122286.P1861731325303200158

/-! ## A122286.P14565382708368163566

`A122285(n)-char[A157052(3*(n+1))]`
-/

namespace A122286.P14565382708368163566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157052 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122286.P14565382708368163566

/-! ## A122286.P13835330962857746591

`A049474(A003056(A122285(n)²))`
-/

namespace A122286.P13835330962857746591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A003056 (A122285 n ^ 2).toNat).toNat

end

end A122286.P13835330962857746591

/-! ## A122286.P16736691931639322278

`A122285(n)-A025466(A029234(n))`
-/

namespace A122286.P16736691931639322278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - A025466 (A029234 n).toNat

end

end A122286.P16736691931639322278

/-! ## A122286.P10912698408744428804

`A122285(n)-A025439(A079217(n))`
-/

namespace A122286.P10912698408744428804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - A025439 (A079217 n).toNat

end

end A122286.P10912698408744428804

/-! ## A122286.P8683750569723391905

`A122285(n)-A011731(A122204(n))`
-/

namespace A122286.P8683750569723391905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n - A011731 (A122204 n).toNat

end

end A122286.P8683750569723391905

/-!
# A122287: Signature permutations of FORK-transformations of Catalan automorphisms in table A122204.

The programs for A122287, there is no canonical definition to state claims against.
-/

/-! ## A122287.P8678106058218787416

`A089840(n)+A122286(n)-A122283(n)`
-/

namespace A122287.P8678106058218787416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n + (A122286 n - A122283 n)

end

end A122287.P8678106058218787416

/-! ## A122287.P6121994487980658983

`A122203(n)+A122285(n)-A122201(n)`
-/

namespace A122287.P6121994487980658983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 n + (A122285 n - A122201 n)

end

end A122287.P6121994487980658983

/-! ## A122287.P2429727992522391770

`A122286(n)+A130401(n)-A122204(n)`
-/

namespace A122287.P2429727992522391770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122286 n + (A130401 n - A122204 n)

end

end A122287.P2429727992522391770

/-!
# A122288: Signature permutations of KROF-transformations of Catalan automorphisms in table A122203.

The programs for A122288, there is no canonical definition to state claims against.
-/

/-! ## A122288.P15291718215731117582

`or(char[A017756(n)], A122204(n))`
-/

namespace A122288.P15291718215731117582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017756 (n + 92)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122204 n)

end

end A122288.P15291718215731117582

/-! ## A122288.P9878642987767760771

`or(char[A047861(n)], A122204(n))`
-/

namespace A122288.P9878642987767760771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122204 n)

end

end A122288.P9878642987767760771

/-! ## A122288.P7630429128309760140

`or(char[A215148(n)], A122204(n))`
-/

namespace A122288.P7630429128309760140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122204 n)

end

end A122288.P7630429128309760140

/-! ## A122288.P13921074541246131800

`or(char[A299034(n)], A122204(n))`
-/

namespace A122288.P13921074541246131800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299034 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122204 n)

end

end A122288.P13921074541246131800

/-! ## A122288.P1970604229227346057

`A122204(n)+C(A051699(n), 4)`
-/

namespace A122288.P1970604229227346057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 n + (Nat.choose (A051699 n).toNat 4 : ℤ)

end

end A122288.P1970604229227346057

/-! ## A122288.P14787607832946794075

`A122204(n)+char[A082131(n+1)]`
-/

namespace A122288.P14787607832946794075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082131 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122288.P14787607832946794075

/-! ## A122288.P8636582729059170395

`A122204(n)+char[A250373(n+1)]`
-/

namespace A122288.P8636582729059170395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250373 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122288.P8636582729059170395

/-! ## A122288.P11287436949562880597

`or(char[A006178(n+1)], A122204(n))`
-/

namespace A122288.P11287436949562880597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006178 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122204 n)

end

end A122288.P11287436949562880597

/-! ## A122288.P16287275130454499062

`or(char[A045125(n+1)], A122204(n))`
-/

namespace A122288.P16287275130454499062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122204 n)

end

end A122288.P16287275130454499062

/-! ## A122288.P12832731866157540621

`or(A122180(2*n+3), A122204(n))`
-/

namespace A122288.P12832731866157540621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122180 (2 * n + 3)) (A122204 n)

end

end A122288.P12832731866157540621

/-!
# A122289: Signature permutations of FORK-transformations of Catalan automorphisms in table A122201.

The programs for A122289, there is no canonical definition to state claims against.
-/

/-! ## A122289.P17419060817174366832

`A073286(A073286(A089840(n)))`
-/

namespace A122289.P17419060817174366832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 (A073286 (A089840 n).toNat).toNat

end

end A122289.P17419060817174366832

/-! ## A122289.P14017998350119361009

`A122290(n)-A220164(A096826(n+1))`
-/

namespace A122289.P14017998350119361009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122290 n - A220164 (A096826 (n + 1)).toNat

end

end A122289.P14017998350119361009

/-! ## A122289.P1159317998707732750

`A122290(n)-A326688(A181819(n+1))`
-/

namespace A122289.P1159317998707732750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122290 n - A326688 (A181819 (n + 1)).toNat

end

end A122289.P1159317998707732750

/-! ## A122289.P2137361912611500514

`A122290(n)-A288166(A048896(A007896(n+1)))`
-/

namespace A122289.P2137361912611500514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122290 n - A288166 (A048896 (A007896 (n + 1)).toNat).toNat

end

end A122289.P2137361912611500514

/-! ## A122289.P17938488704272525847

`A122349(A122349(A089840(n)%A031443(n+1)))`
-/

namespace A122289.P17938488704272525847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A122349 (Int.tmod (A089840 n) (A031443 (n + 1))).toNat).toNat

end

end A122289.P17938488704272525847

/-! ## A122289.P27826883919299338

`A122350(A122350(A089840(n))%A031443(n+1))`
-/

namespace A122289.P27826883919299338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (Int.tmod (A122350 (A089840 n).toNat) (A031443 (n + 1))).toNat

end

end A122289.P27826883919299338

/-! ## A122289.P9689584475789061514

`A127380(A127380(A089840(n))%A031443(n+1))`
-/

namespace A122289.P9689584475789061514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (Int.tmod (A127380 (A089840 n).toNat) (A031443 (n + 1))).toNat

end

end A122289.P9689584475789061514

/-!
# A122290: Signature permutations of KROF-transformations of Catalan automorphisms in table A122202.

The programs for A122290, there is no canonical definition to state claims against.
-/

/-! ## A122290.P15263674366066246090

`A220164(A096826(n+1))+A122289(n)`
-/

namespace A122290.P15263674366066246090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220164 (A096826 (n + 1)).toNat + A122289 n

end

end A122290.P15263674366066246090

/-! ## A122290.P9559532159768511573

`A122289(n+1)-Δ[A122289(n)]`
-/

namespace A122290.P9559532159768511573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122289 (n + 1) - (f1 (n + 1) - f1 n)

end

end A122290.P9559532159768511573

/-! ## A122290.P1097928886068355299

`A122289(n)%A335071(∑{d}[n+1, #+1])`
-/

namespace A122290.P1097928886068355299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122289 n) (A335071 (∑ d ∈ Nat.divisors (f1 n), (d + 1)))

end

end A122290.P1097928886068355299

/-! ## A122290.P18277024024521264030

`A057427(A160239(n))*A122289(n)`
-/

namespace A122290.P18277024024521264030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A160239 n).toNat * A122289 n

end

end A122290.P18277024024521264030

/-! ## A122290.P14388368285529420280

`A001511(A273150(n))*A122289(n)`
-/

namespace A122290.P14388368285529420280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A273150 n).toNat * A122289 n

end

end A122290.P14388368285529420280

/-! ## A122290.P9379764207883804702

`A122289(n)%A184477(A002033(n))`
-/

namespace A122290.P9379764207883804702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122289 n) (A184477 (A002033 n).toNat)

end

end A122290.P9379764207883804702

/-! ## A122290.P8722954795246118836

`A071625(A005382(2*n+1))*A122289(n)`
-/

namespace A122290.P8722954795246118836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A005382 (2 * n + 1)).toNat * A122289 n

end

end A122290.P8722954795246118836

/-! ## A122290.P12703736025003647410

`A185014(A132760(n))+A122289(n)`
-/

namespace A122290.P12703736025003647410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A132760 n).toNat + A122289 n

end

end A122290.P12703736025003647410

/-! ## A122290.P9819665155524956136

`A083040(A005382(2*(n+2)))*A122289(n)`
-/

namespace A122290.P9819665155524956136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083040 (A005382 (2 * (n + 2))).toNat * A122289 n

end

end A122290.P9819665155524956136

/-! ## A122290.P7849447983260116302

`and(A122289(n), A316554(n+1))`
-/

namespace A122290.P7849447983260116302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122289 n) (A316554 (n + 1))

end

end A122290.P7849447983260116302

/-!
# A122291: Row 10 of A122201.

The programs for A122291, there is no canonical definition to state claims against.
-/

/-! ## A122291.P13519583503364231186

`A057163(A122359(n))`
-/

namespace A122291.P13519583503364231186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122359 n).toNat

end

end A122291.P13519583503364231186

/-! ## A122291.P5648943421874847827

`A122295(A057163(n))`
-/

namespace A122291.P5648943421874847827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122295 (A057163 n).toNat

end

end A122291.P5648943421874847827

/-! ## A122291.P5899349277501139972

`A130390(n)%A113157(n+1)`
-/

namespace A122291.P5899349277501139972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130390 n) (A113157 (n + 1))

end

end A122291.P5899349277501139972

/-! ## A122291.P10770179970885690479

`A130939(n)+A000007(A069877(n))`
-/

namespace A122291.P10770179970885690479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130939 n + A000007 (A069877 n).toNat

end

end A122291.P10770179970885690479

/-! ## A122291.P7252698108139418236

`and(A130390(n), A359082(n+1))`
-/

namespace A122291.P7252698108139418236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130390 n) (A359082 (n + 1))

end

end A122291.P7252698108139418236

/-!
# A122292: Row 10 of A122202.

The programs for A122292, there is no canonical definition to state claims against.
-/

/-! ## A122292.P2164817990140067724

`A057163(A122296(n))`
-/

namespace A122292.P2164817990140067724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122296 n).toNat

end

end A122292.P2164817990140067724

/-! ## A122292.P1399302037731278286

`A089856(A122318(A130390(A089856(A122318(n)))))`
-/

namespace A122292.P1399302037731278286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A122318 (A130390 (A089856 (A122318 n).toNat).toNat).toNat).toNat

end

end A122292.P1399302037731278286

/-! ## A122292.P7218404104738728183

`A122360(A057163(n))`
-/

namespace A122292.P7218404104738728183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122360 (A057163 n).toNat

end

end A122292.P7218404104738728183

/-! ## A122292.P10409993172076848032

`A130389(n)+A000122(A008445(n+2))`
-/

namespace A122292.P10409993172076848032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130389 n + A000122 (A008445 (n + 2)).toNat

end

end A122292.P10409993172076848032

/-! ## A122292.P8360529854047467674

`A130389(n)%A261396(n)`
-/

namespace A122292.P8360529854047467674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130389 n) (A261396 n)

end

end A122292.P8360529854047467674

/-!
# A122293: Row 11 of A122201.

The programs for A122293, there is no canonical definition to state claims against.
-/

/-! ## A122293.P15730353773641601304

`A130353(n)+A130388(n)-A130350(n)`
-/

namespace A122293.P15730353773641601304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130353 n + (A130388 n - A130350 n)

end

end A122293.P15730353773641601304

/-! ## A122293.P5366778850126556020

`A057163(A122361(n))`
-/

namespace A122293.P5366778850126556020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122361 n).toNat

end

end A122293.P5366778850126556020

/-! ## A122293.P11198959344035349457

`A122355(A057163(n))`
-/

namespace A122293.P11198959344035349457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122355 (A057163 n).toNat

end

end A122293.P11198959344035349457

/-! ## A122293.P8090560779664479495

`A130388(n)%A270929(n+1)`
-/

namespace A122293.P8090560779664479495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130388 n) (A270929 (n + 1))

end

end A122293.P8090560779664479495

/-! ## A122293.P1692830726452099053

`A130937(n)+A000007(A143007(n))`
-/

namespace A122293.P1692830726452099053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130937 n + A000007 (A143007 n).toNat

end

end A122293.P1692830726452099053

/-!
# A122294: Row 9 of A122202.

The programs for A122294, there is no canonical definition to state claims against.
-/

/-! ## A122294.P16329061292966034121

`A057163(A122356(n))`
-/

namespace A122294.P16329061292966034121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122356 n).toNat

end

end A122294.P16329061292966034121

/-! ## A122294.P332108187755173467

`A122362(A057163(n))`
-/

namespace A122294.P332108187755173467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122362 (A057163 n).toNat

end

end A122294.P332108187755173467

/-! ## A122294.P4833787648095032911

`A130387(n)%A239934(n+1)`
-/

namespace A122294.P4833787648095032911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130387 n) (A239934 (n + 1))

end

end A122294.P4833787648095032911

/-! ## A122294.P4727084135037254887

`A130938(n)%Δ[A213321(n+1)]`
-/

namespace A122294.P4727084135037254887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130938 n) (f1 (n + 1) - f1 n)

end

end A122294.P4727084135037254887

/-! ## A122294.P3042337897478986718

`A130938(n)+A000007(A001935(n))`
-/

namespace A122294.P3042337897478986718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130938 n + A000007 (A001935 n).toNat

end

end A122294.P3042337897478986718

/-!
# A122295: Row 13 of A122201.

The programs for A122295, there is no canonical definition to state claims against.
-/

/-! ## A122295.P12708284751108733489

`A057163(A122345(n))`
-/

namespace A122295.P12708284751108733489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122345 n).toNat

end

end A122295.P12708284751108733489

/-! ## A122295.P14810465481479236712

`A122291(A057163(n))`
-/

namespace A122295.P14810465481479236712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (A057163 n).toNat

end

end A122295.P14810465481479236712

/-! ## A122295.P491974500689498714

`A122291(A122296(A122291(n)))`
-/

namespace A122295.P491974500689498714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (A122296 (A122291 n).toNat).toNat

end

end A122295.P491974500689498714

/-! ## A122295.P14493477071241647270

`A122291(A122291(A122360(n)))`
-/

namespace A122295.P14493477071241647270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (A122291 (A122360 n).toNat).toNat

end

end A122295.P14493477071241647270

/-! ## A122295.P12690369697407379303

`A130390(A057163(n)%A123910(n+2))`
-/

namespace A122295.P12690369697407379303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130390 (Int.tmod (A057163 n) (A123910 (n + 2))).toNat

end

end A122295.P12690369697407379303

/-!
# A122296: Row 18 of A122202.

The programs for A122296, there is no canonical definition to state claims against.
-/

/-! ## A122296.P14140379176159967958

`A057163(A122292(n))`
-/

namespace A122296.P14140379176159967958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122292 n).toNat

end

end A122296.P14140379176159967958

/-! ## A122296.P16081219747695681822

`A122346(A057163(n))`
-/

namespace A122296.P16081219747695681822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122346 (A057163 n).toNat

end

end A122296.P16081219747695681822

/-! ## A122296.P579730343467541614

`A122291(A122360(A122360(A122291(A122360(n)))))`
-/

namespace A122296.P579730343467541614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (A122360 (A122360 (A122291 (A122360 n).toNat).toNat).toNat).toNat

end

end A122296.P579730343467541614

/-! ## A122296.P870995210835172124

`A057163(A130389(n)%A261396(n))`
-/

namespace A122296.P870995210835172124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (Int.tmod (A130389 n) (A261396 n)).toNat

end

end A122296.P870995210835172124

/-! ## A122296.P11964682128019918725

`A130384(A057163(n))%A344653(A325130(n+1))`
-/

namespace A122296.P11964682128019918725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130384 (A057163 n).toNat) (A344653 (A325130 (n + 1)).toNat)

end

end A122296.P11964682128019918725

/-!
# A122297: Row 14 of A122201.

The programs for A122297, there is no canonical definition to state claims against.
-/

/-! ## A122297.P17505814077402024146

`A057163(A057511(n))`
-/

namespace A122297.P17505814077402024146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057511 n).toNat

end

end A122297.P17505814077402024146

/-! ## A122297.P4986329492542400501

`A082325(A057163(n))`
-/

namespace A122297.P4986329492542400501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082325 (A057163 n).toNat

end

end A122297.P4986329492542400501

/-! ## A122297.P14895224433086316034

`A074681(A122342(n))`
-/

namespace A122297.P14895224433086316034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074681 (A122342 n).toNat

end

end A122297.P14895224433086316034

/-! ## A122297.P3150676253427640072

`A082360(A122302(n))`
-/

namespace A122297.P3150676253427640072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A122302 n).toNat

end

end A122297.P3150676253427640072

/-! ## A122297.P16562885492491902452

`A082325(A082325(A122358(n)))`
-/

namespace A122297.P16562885492491902452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082325 (A082325 (A122358 n).toNat).toNat

end

end A122297.P16562885492491902452

/-! ## A122297.P13345965712772567160

`A122325(A073270(A122336(n)))`
-/

namespace A122297.P13345965712772567160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122325 (A073270 (A122336 n).toNat).toNat

end

end A122297.P13345965712772567160

/-! ## A122297.P5380537101891543346

`A057163(A057164(A057512(A057164(n))))`
-/

namespace A122297.P5380537101891543346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057164 (A057512 (A057164 n).toNat).toNat).toNat

end

end A122297.P5380537101891543346

/-! ## A122297.P9049018160542840044

`A082342(A082342(A057163(A057512(n))))`
-/

namespace A122297.P9049018160542840044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082342 (A082342 (A057163 (A057512 n).toNat).toNat).toNat

end

end A122297.P9049018160542840044

/-! ## A122297.P4042016242024657190

`A122325(A069770(A122336(A072796(n))))`
-/

namespace A122297.P4042016242024657190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122325 (A069770 (A122336 (A072796 n).toNat).toNat).toNat

end

end A122297.P4042016242024657190

/-! ## A122297.P14321756280745827694

`A122325(A069770(A122336(A069770(A073269(n)))))`
-/

namespace A122297.P14321756280745827694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122325 (A069770 (A122336 (A069770 (A073269 n).toNat).toNat).toNat).toNat

end

end A122297.P14321756280745827694

/-!
# A122298: Row 19 of A122202.

The programs for A122298, there is no canonical definition to state claims against.
-/

/-! ## A122298.P6163839651977533081

`A057512(A057163(n))`
-/

namespace A122298.P6163839651977533081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057512 (A057163 n).toNat

end

end A122298.P6163839651977533081

/-! ## A122298.P5252507628839776139

`A057163(A082326(n))`
-/

namespace A122298.P5252507628839776139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082326 n).toNat

end

end A122298.P5252507628839776139

/-! ## A122298.P6886735662361306129

`A122301(A082359(n))`
-/

namespace A122298.P6886735662361306129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A082359 n).toNat

end

end A122298.P6886735662361306129

/-! ## A122298.P13092725546042625555

`A057164(A057163(A082325(A069787(n))))`
-/

namespace A122298.P13092725546042625555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057163 (A082325 (A069787 n).toNat).toNat).toNat

end

end A122298.P13092725546042625555

/-! ## A122298.P17309194277348995412

`A057163(A082341(A082341(A082325(n))))`
-/

namespace A122298.P17309194277348995412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082341 (A082341 (A082325 n).toNat).toNat).toNat

end

end A122298.P17309194277348995412

/-! ## A122298.P3554787871178953810

`A057163(A082341(A082339(A082339(n))))`
-/

namespace A122298.P3554787871178953810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082341 (A082339 (A082339 n).toNat).toNat).toNat

end

end A122298.P3554787871178953810

/-! ## A122298.P12889851249195499565

`A057163(A082341(A082340(A082340(n))))`
-/

namespace A122298.P12889851249195499565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082341 (A082340 (A082340 n).toNat).toNat).toNat

end

end A122298.P12889851249195499565

/-! ## A122298.P17121168765878615038

`A057163(A122314(A082325(A122314(n))))`
-/

namespace A122298.P17121168765878615038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122314 (A082325 (A122314 n).toNat).toNat).toNat

end

end A122298.P17121168765878615038

/-! ## A122298.P9066951178869955835

`A057163(A130936(A082325(A130936(n))))`
-/

namespace A122298.P9066951178869955835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130936 (A082325 (A130936 n).toNat).toNat).toNat

end

end A122298.P9066951178869955835

/-! ## A122298.P10712031092051112657

`A122341(A074682(n))`
-/

namespace A122298.P10712031092051112657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122341 (A074682 n).toNat

end

end A122298.P10712031092051112657

/-!
# A122299: Expansion of x * (1-x) / ( 1 - 2*x - 3*x^2 + x^3 ).

The programs for A122299, the canonical program `A122299.P17467584302610295398` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122299 has offset 1).

The definition of A122299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-2x-3x^2+x^3))` (program `A122299.P17467584302610295398`, by `A122299.P17467584302610295398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122299.P17467584302610295398

`ogf((x-x^2)/(1-2x-3x^2+x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122299

/-- `ogf((x-x^2)/(1-2x-3x^2+x^3))` -/
def P17467584302610295398.Spec : Prop :=
  ∀ n, P17467584302610295398.a n = A122299 (n + 1)

theorem P17467584302610295398.correct : P17467584302610295398.Spec := by
  intro n
  simp only [A122299, Nat.add_sub_cancel]

end A122299

/-! ## A122299.P2363387076637161098

`2*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A122299.P2363387076637161098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - a (n - 3)

end

end A122299.P2363387076637161098

namespace A122299

/-- `2*a(n-1)+3*a(n-2)-a(n-3)` -/
def P2363387076637161098.Spec : Prop :=
  ∀ n, P2363387076637161098.a n = A122299 (n + 1)

end A122299

/-! ## A122299.P5543164490364019461

`A095127(n+1)-A101169(n)`
-/

namespace A122299.P5543164490364019461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095127 (n + 1) - A101169 n

end

end A122299.P5543164490364019461

namespace A122299

/-- `A095127(n+1)-A101169(n)` -/
def P5543164490364019461.Spec : Prop :=
  ∀ n, P5543164490364019461.a n = A122299 (n + 1)

end A122299

/-! ## A122299.P14780951937565296779

`A095310(n+1)-A143787(n+1)`
-/

namespace A122299.P14780951937565296779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095310 (n + 1) - A143787 (n + 1)

end

end A122299.P14780951937565296779

namespace A122299

/-- `A095310(n+1)-A143787(n+1)` -/
def P14780951937565296779.Spec : Prop :=
  ∀ n, P14780951937565296779.a n = A122299 (n + 1)

end A122299

/-! ## A122299.P13939332370140951700

`A095127(A000027(n+1))%A101169(n)`
-/

namespace A122299.P13939332370140951700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095127 (A000027 (n + 1)).toNat) (A101169 n)

end

end A122299.P13939332370140951700

namespace A122299

/-- `A095127(A000027(n+1))%A101169(n)` -/
def P13939332370140951700.Spec : Prop :=
  ∀ n, P13939332370140951700.a n = A122299 (n + 1)

end A122299

/-! ## A122299.P7821534248224273141

`A095126(n+1)%A101169(n)`
-/

namespace A122299.P7821534248224273141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095126 (n + 1)) (A101169 n)

end

end A122299.P7821534248224273141

namespace A122299

/-- `A095126(n+1)%A101169(n)` -/
def P7821534248224273141.Spec : Prop :=
  ∀ n, P7821534248224273141.a n = A122299 (n + 1)

end A122299

/-! ## A122299.P6342595919914681262

`A095125(n+1)+A095125(n+2)-A095127(n+2)`
-/

namespace A122299.P6342595919914681262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095125 (n + 1) + (A095125 (n + 2) - A095127 (n + 2))

end

end A122299.P6342595919914681262

namespace A122299

/-- `A095125(n+1)+A095125(n+2)-A095127(n+2)` -/
def P6342595919914681262.Spec : Prop :=
  ∀ n, P6342595919914681262.a n = A122299 (n + 1)

end A122299

/-! ## A122299.P10208887306643016204

`(A095127(n+1)%A094618(n))%A101169(n)`
-/

namespace A122299.P10208887306643016204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A095127 (n + 1)) (A094618 n)) (A101169 n)

end

end A122299.P10208887306643016204

namespace A122299

/-- `(A095127(n+1)%A094618(n))%A101169(n)` -/
def P10208887306643016204.Spec : Prop :=
  ∀ n, P10208887306643016204.a n = A122299 (n + 1)

end A122299

