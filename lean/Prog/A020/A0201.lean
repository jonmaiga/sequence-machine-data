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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A020100: Ceiling of Gamma(n + 5/11)/Gamma(5/11).

The programs for A020100, there is no canonical definition to state claims against.
-/

/-! ## A020100.P15669636767066622870

`A057427(n)+A020055(n)`
-/

namespace A020100.P15669636767066622870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020055 n

end

end A020100.P15669636767066622870

/-! ## A020100.P2215464061602139460

`A020055(n)-A057428(n)`
-/

namespace A020100.P2215464061602139460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020055 n - A057428 n

end

end A020100.P2215464061602139460

/-! ## A020100.P4617858862559739438

`A020055(n)+abs(A011620(n))`
-/

namespace A020100.P4617858862559739438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020055 n + |A011620 n|

end

end A020100.P4617858862559739438

/-! ## A020100.P1195815505705495715

`A020055(n)+A011620(n²)`
-/

namespace A020100.P1195815505705495715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020055 n + A011620 (n ^ 2)

end

end A020100.P1195815505705495715

/-! ## A020100.P18007926212757612636

`A020055(A000007(n)+n)+1`
-/

namespace A020100.P18007926212757612636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020055 (A000007 n + (n : ℤ)).toNat + 1

end

end A020100.P18007926212757612636

/-! ## A020100.P4930986355989353229

`A020055(n)%A020043(n)+1`
-/

namespace A020100.P4930986355989353229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020055 n) (A020043 n) + 1

end

end A020100.P4930986355989353229

/-! ## A020100.P715935790681235336

`A020055(n)+char[A002260(n+1)]`
-/

namespace A020100.P715935790681235336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020055 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020100.P715935790681235336

/-! ## A020100.P5657626415988245808

`A074206(A107286(n))+A020055(n)`
-/

namespace A020100.P5657626415988245808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A107286 n).toNat + A020055 n

end

end A020100.P5657626415988245808

/-!
# A020101: Ceiling of Gamma(n+4/11)/Gamma(4/11).

The programs for A020101, there is no canonical definition to state claims against.
-/

/-! ## A020101.P15386402710994962091

`A020056(A028310(n))+1`
-/

namespace A020101.P15386402710994962091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020056 (A028310 n).toNat + 1

end

end A020101.P15386402710994962091

/-! ## A020101.P17292505559156955056

`A057427(n)+A020056(n)`
-/

namespace A020101.P17292505559156955056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020056 n

end

end A020101.P17292505559156955056

/-! ## A020101.P6930926405901968969

`A020056(n)+A011620(n²)`
-/

namespace A020101.P6930926405901968969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020056 n + A011620 (n ^ 2)

end

end A020101.P6930926405901968969

/-! ## A020101.P1408294129497733757

`A020056(n)+char[A348268(n)]`
-/

namespace A020101.P1408294129497733757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348268 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020056 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020101.P1408294129497733757

/-! ## A020101.P3267946639011164116

`A020056(A000007(n)+n)+1`
-/

namespace A020101.P3267946639011164116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020056 (A000007 n + (n : ℤ)).toNat + 1

end

end A020101.P3267946639011164116

/-! ## A020101.P7644864952310471416

`A020056(n)-(A000007(n)-1)`
-/

namespace A020101.P7644864952310471416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020056 n - (A000007 n - 1)

end

end A020101.P7644864952310471416

/-! ## A020101.P15294008053234865087

`A020056(n)+char[A002260(n+1)]`
-/

namespace A020101.P15294008053234865087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020056 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020101.P15294008053234865087

/-! ## A020101.P4991082685433832026

`A020056(n)+char[A003991(n+1)]`
-/

namespace A020101.P4991082685433832026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020056 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020101.P4991082685433832026

/-!
# A020102: Ceiling of Gamma(n+3/11)/Gamma(3/11).

The programs for A020102, there is no canonical definition to state claims against.
-/

/-! ## A020102.P10926966151009243259

`A020057(round(sqrt(n²+1)))+1`
-/

namespace A020102.P10926966151009243259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020057 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A020102.P10926966151009243259

/-! ## A020102.P13196254294361234699

`A057427(n)+A020057(n)`
-/

namespace A020102.P13196254294361234699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020057 n

end

end A020102.P13196254294361234699

/-! ## A020102.P7213685453117065446

`A178334(n)+A020057(n)`
-/

namespace A020102.P7213685453117065446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020057 n

end

end A020102.P7213685453117065446

/-! ## A020102.P8361478770119126220

`abs(A057428(n)-A020057(n))`
-/

namespace A020102.P8361478770119126220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n - A020057 n|

end

end A020102.P8361478770119126220

/-! ## A020102.P16154798215512510367

`A020057(n)%A020020(n)+1`
-/

namespace A020102.P16154798215512510367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020057 n) (A020020 n) + 1

end

end A020102.P16154798215512510367

/-!
# A020103: Ceiling of Gamma(n+2/11)/Gamma(2/11).

The programs for A020103, there is no canonical definition to state claims against.
-/

/-! ## A020103.P192073742199319703

`ceil(A020058(n)+abs(sin(n)))`
-/

namespace A020103.P192073742199319703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020058 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020103.P192073742199319703

/-! ## A020103.P17906853756238776128

`A020058(A028310(n))+1`
-/

namespace A020103.P17906853756238776128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020058 (A028310 n).toNat + 1

end

end A020103.P17906853756238776128

/-! ## A020103.P1801011644413905528

`A057427(n)+A020058(n)`
-/

namespace A020103.P1801011644413905528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020058 n

end

end A020103.P1801011644413905528

/-! ## A020103.P6425873370391163164

`A020058(n)-A057428(n)`
-/

namespace A020103.P6425873370391163164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020058 n - A057428 n

end

end A020103.P6425873370391163164

/-! ## A020103.P17085493081940879668

`A020058(n)+A004248(A000124(n))`
-/

namespace A020103.P17085493081940879668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020058 n + A004248 (A000124 n).toNat

end

end A020103.P17085493081940879668

/-! ## A020103.P2463689938922228080

`A020058(n)+A001222(A008578(n+1))`
-/

namespace A020103.P2463689938922228080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020058 n + A001222 (A008578 (n + 1)).toNat

end

end A020103.P2463689938922228080

/-!
# A020104: Ceiling of Gamma(n+1/11)/Gamma(1/11).

The programs for A020104, there is no canonical definition to state claims against.
-/

/-! ## A020104.P7877367702089901819

`A020059(A028310(n))+1`
-/

namespace A020104.P7877367702089901819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020059 (A028310 n).toNat + 1

end

end A020104.P7877367702089901819

/-! ## A020104.P4007265960939045164

`A057427(n)+A020059(n)`
-/

namespace A020104.P4007265960939045164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020059 n

end

end A020104.P4007265960939045164

/-! ## A020104.P16171224720294240682

`A178334(n)+A020059(n)`
-/

namespace A020104.P16171224720294240682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020059 n

end

end A020104.P16171224720294240682

/-! ## A020104.P13574676238987441066

`A020059(n)-A057428(n)`
-/

namespace A020104.P13574676238987441066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020059 n - A057428 n

end

end A020104.P13574676238987441066

/-! ## A020104.P11912832546016613413

`A020059(n)+char[A007318(n)]`
-/

namespace A020104.P11912832546016613413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020059 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020104.P11912832546016613413

/-! ## A020104.P7097224136705677018

`A020059(A000007(n)+n)+1`
-/

namespace A020104.P7097224136705677018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020059 (A000007 n + (n : ℤ)).toNat + 1

end

end A020104.P7097224136705677018

/-! ## A020104.P17517095008954340037

`A020059(n)+char[A002260(n+1)]`
-/

namespace A020104.P17517095008954340037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020059 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020104.P17517095008954340037

/-! ## A020104.P2264908844512703178

`A020059(n)+char[A002487(n+1)]`
-/

namespace A020104.P2264908844512703178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020059 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020104.P2264908844512703178

/-! ## A020104.P363970708674415957

`A020059(n)+char[A023130(n+1)]`
-/

namespace A020104.P363970708674415957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023130 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020059 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020104.P363970708674415957

/-!
# A020105: Ceiling of Gamma(n+9/10)/Gamma(9/10).

The programs for A020105, there is no canonical definition to state claims against.
-/

/-! ## A020105.P5167732940622697305

`ceil(A020060(n)+abs(sin(n)))`
-/

namespace A020105.P5167732940622697305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020060 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020105.P5167732940622697305

/-! ## A020105.P13865878180768140305

`A057427(n)+A020060(n)`
-/

namespace A020105.P13865878180768140305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020060 n

end

end A020105.P13865878180768140305

/-! ## A020105.P12114755498288593543

`A178334(n)+A020060(n)`
-/

namespace A020105.P12114755498288593543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020060 n

end

end A020105.P12114755498288593543

/-! ## A020105.P4482521673137385654

`A020060(n)-A057428(n)`
-/

namespace A020105.P4482521673137385654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020060 n - A057428 n

end

end A020105.P4482521673137385654

/-! ## A020105.P8312358547092480076

`A020060(A000007(n)+n)+1`
-/

namespace A020105.P8312358547092480076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020060 (A000007 n + (n : ℤ)).toNat + 1

end

end A020105.P8312358547092480076

/-! ## A020105.P11992152403052679613

`A020060(n)+char[A002260(n+1)]`
-/

namespace A020105.P11992152403052679613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020060 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020105.P11992152403052679613

/-!
# A020106: Ceiling of Gamma(n+7/10)/Gamma(7/10).

The programs for A020106, there is no canonical definition to state claims against.
-/

/-! ## A020106.P9625494645482299822

`A020061(A028310(n))+1`
-/

namespace A020106.P9625494645482299822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020061 (A028310 n).toNat + 1

end

end A020106.P9625494645482299822

/-! ## A020106.P10905945140702305365

`A057427(n)+A020061(n)`
-/

namespace A020106.P10905945140702305365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020061 n

end

end A020106.P10905945140702305365

/-! ## A020106.P18329828251369495426

`A178334(n)+A020061(n)`
-/

namespace A020106.P18329828251369495426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020061 n

end

end A020106.P18329828251369495426

/-! ## A020106.P3378142732271244446

`A020061(n)-A057428(n)`
-/

namespace A020106.P3378142732271244446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020061 n - A057428 n

end

end A020106.P3378142732271244446

/-! ## A020106.P1037905482294684995

`A020061(A000007(n)+n)+1`
-/

namespace A020106.P1037905482294684995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020061 (A000007 n + (n : ℤ)).toNat + 1

end

end A020106.P1037905482294684995

/-! ## A020106.P12528988590362839084

`A020061(n)-(A000007(n)-1)`
-/

namespace A020106.P12528988590362839084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020061 n - (A000007 n - 1)

end

end A020106.P12528988590362839084

/-! ## A020106.P16398374664756002508

`A020061(n)+record[A020639(n+2)]%2`
-/

namespace A020106.P16398374664756002508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020061 n + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A020106.P16398374664756002508

/-! ## A020106.P18009739539145164924

`A020061(n)%A059082(n+4)+1`
-/

namespace A020106.P18009739539145164924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020061 n) (A059082 (n + 4)) + 1

end

end A020106.P18009739539145164924

/-!
# A020107: Ceiling of Gamma(n+3/10)/Gamma(3/10).

The programs for A020107, there is no canonical definition to state claims against.
-/

/-! ## A020107.P13081744893530002797

`A020062(n)+ceil(abs(sin(n)))`
-/

namespace A020107.P13081744893530002797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020062 n + ⌈|Real.sin (n : ℝ)|⌉

end

end A020107.P13081744893530002797

/-! ## A020107.P12514950450127863821

`A057427(n)+A020062(n)`
-/

namespace A020107.P12514950450127863821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020062 n

end

end A020107.P12514950450127863821

/-! ## A020107.P6450296530265300919

`A020062(n)-A057428(n)`
-/

namespace A020107.P6450296530265300919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020062 n - A057428 n

end

end A020107.P6450296530265300919

/-! ## A020107.P7927001316428132109

`A020062(n)+char[A052938(n)]`
-/

namespace A020107.P7927001316428132109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020062 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020107.P7927001316428132109

/-! ## A020107.P10797371756182591174

`A020062(n)+char[A344180(n)]`
-/

namespace A020107.P10797371756182591174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020062 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020107.P10797371756182591174

/-! ## A020107.P9431531626642553940

`A020062(A000007(n)+n)+1`
-/

namespace A020107.P9431531626642553940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020062 (A000007 n + (n : ℤ)).toNat + 1

end

end A020107.P9431531626642553940

/-! ## A020107.P2706461622727557540

`A211666(n+1)+A020062(n)`
-/

namespace A020107.P2706461622727557540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) + A020062 n

end

end A020107.P2706461622727557540

/-! ## A020107.P15245931783363797662

`A020062(n)-(A000007(n)-1)`
-/

namespace A020107.P15245931783363797662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020062 n - (A000007 n - 1)

end

end A020107.P15245931783363797662

/-! ## A020107.P6371743871566038202

`A020062(n)+char[A002260(n+1)]`
-/

namespace A020107.P6371743871566038202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020062 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020107.P6371743871566038202

/-! ## A020107.P8414893405351068524

`A020062(n)+record[A020639(n+2)]%2`
-/

namespace A020107.P8414893405351068524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020062 n + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A020107.P8414893405351068524

/-!
# A020108: Ceiling of Gamma(n+1/10)/Gamma(1/10).

The programs for A020108, there is no canonical definition to state claims against.
-/

/-! ## A020108.P15063989374708680951

`A020063(n)-A057428(n)`
-/

namespace A020108.P15063989374708680951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020063 n - A057428 n

end

end A020108.P15063989374708680951

/-! ## A020108.P323633808822045925

`A020063(A000007(n)+n)+1`
-/

namespace A020108.P323633808822045925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020063 (A000007 n + (n : ℤ)).toNat + 1

end

end A020108.P323633808822045925

/-! ## A020108.P12222201624121307629

`1-(A000007(n)-A020063(n))`
-/

namespace A020108.P12222201624121307629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - A020063 n)

end

end A020108.P12222201624121307629

/-! ## A020108.P1879259527098763968

`A020063(n)%A020118(n)+1`
-/

namespace A020108.P1879259527098763968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020063 n) (A020118 n) + 1

end

end A020108.P1879259527098763968

/-! ## A020108.P17984714173896707690

`A020063(n)+A057428(n²)²`
-/

namespace A020108.P17984714173896707690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020063 n + A057428 (n ^ 2) ^ 2

end

end A020108.P17984714173896707690

/-! ## A020108.P16702626314428261019

`A020063(n)+char[A002260(n+1)]`
-/

namespace A020108.P16702626314428261019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020063 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020108.P16702626314428261019

/-! ## A020108.P15457346699488096696

`A020063(n)+ceil(n/A000079(n))`
-/

namespace A020108.P15457346699488096696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020063 n + ⌈(n : ℚ) / (A000079 n : ℚ)⌉

end

end A020108.P15457346699488096696

/-! ## A020108.P6532225810102520384

`A020063(n)+a(val(A000040(n+1), 2))` with `a(0)=1`
-/

namespace A020108.P6532225810102520384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020063 n + a (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2)

end

end A020108.P6532225810102520384

/-! ## A020108.P6733573195356531594

`A020063(n)+A000035(A000040(n+1))`
-/

namespace A020108.P6733573195356531594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020063 n + A000035 (A000040 (n + 1)).toNat

end

end A020108.P6733573195356531594

/-!
# A020109: Ceiling of Gamma(n+8/9)/Gamma(8/9).

The programs for A020109, there is no canonical definition to state claims against.
-/

/-! ## A020109.P9045416365375842685

`A057427(n)+A020064(n)`
-/

namespace A020109.P9045416365375842685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020064 n

end

end A020109.P9045416365375842685

/-! ## A020109.P10459928661925545115

`A178334(n)+A020064(n)`
-/

namespace A020109.P10459928661925545115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020064 n

end

end A020109.P10459928661925545115

/-! ## A020109.P14492955544422990112

`A020064(n)+abs(A011600(n))`
-/

namespace A020109.P14492955544422990112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n + |A011600 n|

end

end A020109.P14492955544422990112

/-! ## A020109.P1217544769533504216

`A020064(n)+A011600(n²)`
-/

namespace A020109.P1217544769533504216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n + A011600 (n ^ 2)

end

end A020109.P1217544769533504216

/-! ## A020109.P16619740824681039662

`A020064(n)+char[A152271(n)]`
-/

namespace A020109.P16619740824681039662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020109.P16619740824681039662

/-! ## A020109.P14527502267515954939

`A020064(A000007(n)+n)+1`
-/

namespace A020109.P14527502267515954939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 (A000007 n + (n : ℤ)).toNat + 1

end

end A020109.P14527502267515954939

/-! ## A020109.P5742617257277159443

`1-(A000007(n)-A020064(n))`
-/

namespace A020109.P5742617257277159443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - A020064 n)

end

end A020109.P5742617257277159443

/-! ## A020109.P13380587648224393185

`A020064(n)+char[A023131(n+1)]`
-/

namespace A020109.P13380587648224393185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023131 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020109.P13380587648224393185

/-! ## A020109.P2360333581227953261

`A020064(n)+A001221(record[(n+1)/A001221(n+1)!])`
-/

namespace A020109.P2360333581227953261
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n + A001221 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A020109.P2360333581227953261

/-!
# A020110: Ceiling of Gamma(n + 7/9)/Gamma(7/9).

The programs for A020110, there is no canonical definition to state claims against.
-/

/-! ## A020110.P8026960107252069413

`ceil(A020065(n)+abs(sin(n)))`
-/

namespace A020110.P8026960107252069413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020065 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020110.P8026960107252069413

/-! ## A020110.P11016122392662051058

`A057427(n)+A020065(n)`
-/

namespace A020110.P11016122392662051058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020065 n

end

end A020110.P11016122392662051058

/-! ## A020110.P16615118232964683621

`A020065(A000007(n)+n)+1`
-/

namespace A020110.P16615118232964683621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020065 (A000007 n + (n : ℤ)).toNat + 1

end

end A020110.P16615118232964683621

/-! ## A020110.P17908890561705622414

`A020065(n)+A019431(2*n)`
-/

namespace A020110.P17908890561705622414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020065 n + A019431 (2 * n)

end

end A020110.P17908890561705622414

/-! ## A020110.P11453433870740393255

`A020065(n)+char[A026409(n+1)]`
-/

namespace A020110.P11453433870740393255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026409 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020065 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020110.P11453433870740393255

/-! ## A020110.P5534009002776066932

`A020065(n)+A000035(A014963(n²+2))`
-/

namespace A020110.P5534009002776066932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020065 n + A000035 (A014963 (n ^ 2 + 2)).toNat

end

end A020110.P5534009002776066932

/-! ## A020110.P12721397658539693833

`A020065(n)+A001221(A098355(n))`
-/

namespace A020110.P12721397658539693833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020065 n + A001221 (A098355 n).toNat

end

end A020110.P12721397658539693833

/-!
# A020111: Ceiling of Gamma(n+5/9)/Gamma(5/9).

The programs for A020111, there is no canonical definition to state claims against.
-/

/-! ## A020111.P7884401045833599444

`A020066(A028310(n))+1`
-/

namespace A020111.P7884401045833599444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020066 (A028310 n).toNat + 1

end

end A020111.P7884401045833599444

/-! ## A020111.P6455410793266774194

`A057427(n)+A020066(n)`
-/

namespace A020111.P6455410793266774194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020066 n

end

end A020111.P6455410793266774194

/-! ## A020111.P17881803064242594640

`A178334(n)+A020066(n)`
-/

namespace A020111.P17881803064242594640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020066 n

end

end A020111.P17881803064242594640

/-! ## A020111.P17940850435431978157

`A020066(n)+char[A007318(n)]`
-/

namespace A020111.P17940850435431978157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020066 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020111.P17940850435431978157

/-! ## A020111.P1762534740693360764

`A020066(A000007(n)+n)+1`
-/

namespace A020111.P1762534740693360764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020066 (A000007 n + (n : ℤ)).toNat + 1

end

end A020111.P1762534740693360764

/-! ## A020111.P11603629337608313821

`A020066(n)+char[A002260(n+1)]`
-/

namespace A020111.P11603629337608313821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020066 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020111.P11603629337608313821

/-! ## A020111.P11474544384462145814

`A020066(n)+A020109(n)-A020064(n)`
-/

namespace A020111.P11474544384462145814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020066 n + (A020109 n - A020064 n)

end

end A020111.P11474544384462145814

/-!
# A020112: Ceiling of Gamma(n+4/9)/Gamma(4/9).

The programs for A020112, there is no canonical definition to state claims against.
-/

/-! ## A020112.P1681302469849485017

`ceil(A020067(n)+abs(sin(n)))`
-/

namespace A020112.P1681302469849485017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020067 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020112.P1681302469849485017

/-! ## A020112.P1037276524649832348

`A057427(n)+A020067(n)`
-/

namespace A020112.P1037276524649832348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020067 n

end

end A020112.P1037276524649832348

/-! ## A020112.P7430550830660752652

`A178334(n)+A020067(n)`
-/

namespace A020112.P7430550830660752652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020067 n

end

end A020112.P7430550830660752652

/-! ## A020112.P11321832508286033634

`A020067(n)-A057428(n)`
-/

namespace A020112.P11321832508286033634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020067 n - A057428 n

end

end A020112.P11321832508286033634

/-! ## A020112.P2597604977547258447

`A020067(A065033(2*n))+1`
-/

namespace A020112.P2597604977547258447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020067 (A065033 (2 * n)).toNat + 1

end

end A020112.P2597604977547258447

/-! ## A020112.P4187165951386136925

`A020067(A000007(n)+n)+1`
-/

namespace A020112.P4187165951386136925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020067 (A000007 n + (n : ℤ)).toNat + 1

end

end A020112.P4187165951386136925

/-! ## A020112.P1507629993283752593

`A020067(n)%A020019(n)+1`
-/

namespace A020112.P1507629993283752593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020067 n) (A020019 n) + 1

end

end A020112.P1507629993283752593

/-! ## A020112.P10684663172718938387

`A020067(n)+A057428(n²)²`
-/

namespace A020112.P10684663172718938387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020067 n + A057428 (n ^ 2) ^ 2

end

end A020112.P10684663172718938387

/-! ## A020112.P2277456526650407803

`A020067(n)+A038870(n+1)%2`
-/

namespace A020112.P2277456526650407803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020067 n + Int.tmod (A038870 (n + 1)) 2

end

end A020112.P2277456526650407803

/-!
# A020113: a(n) = ceiling of Gamma(n + 2/9)/Gamma(2/9).

The programs for A020113, there is no canonical definition to state claims against.
-/

/-! ## A020113.P5053194093629875516

`A057427(n)+A020068(n)`
-/

namespace A020113.P5053194093629875516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020068 n

end

end A020113.P5053194093629875516

/-! ## A020113.P6031811552798896652

`A178334(n)+A020068(n)`
-/

namespace A020113.P6031811552798896652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020068 n

end

end A020113.P6031811552798896652

/-! ## A020113.P16628013077501205165

`A020068(n)-A057428(n)`
-/

namespace A020113.P16628013077501205165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020068 n - A057428 n

end

end A020113.P16628013077501205165

/-! ## A020113.P1993302236941835212

`A020068(n)+char[A007318(n)]`
-/

namespace A020113.P1993302236941835212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020068 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020113.P1993302236941835212

/-! ## A020113.P4260830265149169204

`A020068(A000007(n)+n)+1`
-/

namespace A020113.P4260830265149169204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020068 (A000007 n + (n : ℤ)).toNat + 1

end

end A020113.P4260830265149169204

/-! ## A020113.P11726607659471867702

`A020068(A000038(n)+n)+1`
-/

namespace A020113.P11726607659471867702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020068 (A000038 n + (n : ℤ)).toNat + 1

end

end A020113.P11726607659471867702

/-!
# A020114: Ceiling of Gamma(n+1/9)/Gamma(1/9).

The programs for A020114, there is no canonical definition to state claims against.
-/

/-! ## A020114.P3556431736301291906

`ceil(A020069(n)+abs(sin(n)))`
-/

namespace A020114.P3556431736301291906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020069 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020114.P3556431736301291906

/-! ## A020114.P7097457179401202666

`A057427(n)+A020069(n)`
-/

namespace A020114.P7097457179401202666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020069 n

end

end A020114.P7097457179401202666

/-! ## A020114.P2409923643310889546

`A178334(n)+A020069(n)`
-/

namespace A020114.P2409923643310889546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020069 n

end

end A020114.P2409923643310889546

/-! ## A020114.P6441613788896951715

`A020069(n)-A057428(n)`
-/

namespace A020114.P6441613788896951715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020069 n - A057428 n

end

end A020114.P6441613788896951715

/-! ## A020114.P7593783713947451412

`A020069(n)+char[A141256(n)]`
-/

namespace A020114.P7593783713947451412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020069 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020114.P7593783713947451412

/-! ## A020114.P13779031024427596074

`A020069(A000007(n)+n)+1`
-/

namespace A020114.P13779031024427596074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020069 (A000007 n + (n : ℤ)).toNat + 1

end

end A020114.P13779031024427596074

/-! ## A020114.P16766543586538227727

`A020069(n)+A019428(2*n)`
-/

namespace A020114.P16766543586538227727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020069 n + A019428 (2 * n)

end

end A020114.P16766543586538227727

/-! ## A020114.P15856584601224643040

`A020069(n)+char[A004736(n+1)]`
-/

namespace A020114.P15856584601224643040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020069 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020114.P15856584601224643040

/-!
# A020115: Ceiling of Gamma(n+7/8)/Gamma(7/8).

The programs for A020115, there is no canonical definition to state claims against.
-/

/-! ## A020115.P5992605505709917272

`ceil(A020070(n)+abs(sin(n)))`
-/

namespace A020115.P5992605505709917272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020070 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020115.P5992605505709917272

/-! ## A020115.P8273929872462120532

`A057427(n)+A020070(n)`
-/

namespace A020115.P8273929872462120532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020070 n

end

end A020115.P8273929872462120532

/-! ## A020115.P1678168929485785486

`A165586(n²)+A020070(n)`
-/

namespace A020115.P1678168929485785486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (n ^ 2) + A020070 n

end

end A020115.P1678168929485785486

/-! ## A020115.P17148763019661254731

`A020070(n)+char[A112778(n+2)]`
-/

namespace A020115.P17148763019661254731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020070 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020115.P17148763019661254731

/-! ## A020115.P15587153388307672695

`A020070(n)+A001221(A001316(n))`
-/

namespace A020115.P15587153388307672695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020070 n + A001221 (A001316 n).toNat

end

end A020115.P15587153388307672695

/-! ## A020115.P2965633936152421105

`A020070(n)+A001222(A008578(n+1))`
-/

namespace A020115.P2965633936152421105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020070 n + A001222 (A008578 (n + 1)).toNat

end

end A020115.P2965633936152421105

/-! ## A020115.P14822051432149966573

`A020070(n)+char[A008279(n)]`
-/

namespace A020115.P14822051432149966573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020070 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020115.P14822051432149966573

/-!
# A020116: Ceiling of Gamma(n+5/8)/Gamma(5/8).

The programs for A020116, there is no canonical definition to state claims against.
-/

/-! ## A020116.P1522272197299482914

`floor(A020071(n)+atan(n+1))`
-/

namespace A020116.P1522272197299482914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020071 n : ℝ) + Real.arctan (n + 1 : ℝ)⌋

end

end A020116.P1522272197299482914

/-! ## A020116.P15327923217847302117

`A020071(A028310(n))+1`
-/

namespace A020116.P15327923217847302117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020071 (A028310 n).toNat + 1

end

end A020116.P15327923217847302117

/-! ## A020116.P13903608408490513781

`A020071(n)-A057428(n)`
-/

namespace A020116.P13903608408490513781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020071 n - A057428 n

end

end A020116.P13903608408490513781

/-! ## A020116.P11561154986552981926

`A020071(n)+char[A037027(n)]`
-/

namespace A020116.P11561154986552981926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020071 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020116.P11561154986552981926

/-! ## A020116.P18434332193750216470

`A266719(2*n+1)+A020071(n)`
-/

namespace A020116.P18434332193750216470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (2 * n + 1) + A020071 n

end

end A020116.P18434332193750216470

/-! ## A020116.P9334358412536146971

`A020071(n)+A001221(A001316(n))`
-/

namespace A020116.P9334358412536146971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020071 n + A001221 (A001316 n).toNat

end

end A020116.P9334358412536146971

/-! ## A020116.P14018237605221107467

`A020071(n)+A001221(lt[A001221(n+1), 2]+1)`
-/

namespace A020116.P14018237605221107467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020071 n + A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A020116.P14018237605221107467

/-! ## A020116.P1526969790311565628

`A020071(n)+char[A008279(n)]`
-/

namespace A020116.P1526969790311565628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020071 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020116.P1526969790311565628

/-!
# A020117: Ceiling of Gamma(n+3/8)/Gamma(3/8).

The programs for A020117, there is no canonical definition to state claims against.
-/

/-! ## A020117.P7366761349862938475

`A020072(n)+C(n, C(n, n²))`
-/

namespace A020117.P7366761349862938475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020072 n + (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)

end

end A020117.P7366761349862938475

/-! ## A020117.P10206079812467776320

`A020072(A028310(n))+1`
-/

namespace A020117.P10206079812467776320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020072 (A028310 n).toNat + 1

end

end A020117.P10206079812467776320

/-! ## A020117.P6874127611928006023

`A178334(n)+A020072(n)`
-/

namespace A020117.P6874127611928006023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020072 n

end

end A020117.P6874127611928006023

/-! ## A020117.P14242866548628699067

`A020072(A000007(n)+n)+1`
-/

namespace A020117.P14242866548628699067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020072 (A000007 n + (n : ℤ)).toNat + 1

end

end A020117.P14242866548628699067

/-! ## A020117.P10887225255042124146

`A020072(n)+A001221(A001316(n))`
-/

namespace A020117.P10887225255042124146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020072 n + A001221 (A001316 n).toNat

end

end A020117.P10887225255042124146

/-! ## A020117.P16585592363457626431

`A020072(n)+A001221(A028233(n+1))`
-/

namespace A020117.P16585592363457626431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020072 n + A001221 (A028233 (n + 1)).toNat

end

end A020117.P16585592363457626431

/-! ## A020117.P11565022367014058548

`A020072(n)+char[A008279(n)]`
-/

namespace A020117.P11565022367014058548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020072 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020117.P11565022367014058548

/-!
# A020118: Ceiling of Gamma(n+1/8)/Gamma(1/8).

The programs for A020118, there is no canonical definition to state claims against.
-/

/-! ## A020118.P14065204211746146245

`A020073(A028310(n))+1`
-/

namespace A020118.P14065204211746146245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020073 (A028310 n).toNat + 1

end

end A020118.P14065204211746146245

/-! ## A020118.P9053149677421855742

`A020073(n)+abs(A011627(n))`
-/

namespace A020118.P9053149677421855742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020073 n + |A011627 n|

end

end A020118.P9053149677421855742

/-! ## A020118.P14514443949020794858

`A020073(n)+abs(A062157(n))`
-/

namespace A020118.P14514443949020794858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020073 n + |A062157 n|

end

end A020118.P14514443949020794858

/-! ## A020118.P2902074610197140303

`A020073(n)+A011624(n²)`
-/

namespace A020118.P2902074610197140303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020073 n + A011624 (n ^ 2)

end

end A020118.P2902074610197140303

/-! ## A020118.P16014830160294036057

`A020073(n)+A011627(n²)`
-/

namespace A020118.P16014830160294036057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020073 n + A011627 (n ^ 2)

end

end A020118.P16014830160294036057

/-! ## A020118.P4312691624135848470

`A020073(n)-A062157(2*n)`
-/

namespace A020118.P4312691624135848470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020073 n - A062157 (2 * n)

end

end A020118.P4312691624135848470

/-! ## A020118.P13980421128007242502

`A020073(n)+A001221(A001316(n))`
-/

namespace A020118.P13980421128007242502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020073 n + A001221 (A001316 n).toNat

end

end A020118.P13980421128007242502

/-!
# A020119: Ceiling of Gamma(n+6/7)/Gamma(6/7).

The programs for A020119, there is no canonical definition to state claims against.
-/

/-! ## A020119.P2376531505183314088

`ceil(A020074(n)+abs(sin(n)))`
-/

namespace A020119.P2376531505183314088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020074 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020119.P2376531505183314088

/-! ## A020119.P12704198634780075400

`A020074(A028310(n))+1`
-/

namespace A020119.P12704198634780075400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020074 (A028310 n).toNat + 1

end

end A020119.P12704198634780075400

/-! ## A020119.P18350398799985880407

`A020074(n)-A057428(n)`
-/

namespace A020119.P18350398799985880407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020074 n - A057428 n

end

end A020119.P18350398799985880407

/-! ## A020119.P2872959520683915416

`A020074(n)+char[A051597(n)]`
-/

namespace A020119.P2872959520683915416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020074 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020119.P2872959520683915416

/-! ## A020119.P2272786846283662782

`A020074(n)+char[A074909(n)]`
-/

namespace A020119.P2272786846283662782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020074 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020119.P2272786846283662782

/-! ## A020119.P10091378372565269277

`A020074(n)+char[A135278(n)]`
-/

namespace A020119.P10091378372565269277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020074 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020119.P10091378372565269277

/-! ## A020119.P12787463635032907262

`A020074(n)+char[A153861(n)]`
-/

namespace A020119.P12787463635032907262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020074 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020119.P12787463635032907262

/-! ## A020119.P12210487714883895918

`A020074(n)+A002262(A000124(n))`
-/

namespace A020119.P12210487714883895918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020074 n + A002262 (A000124 n).toNat

end

end A020119.P12210487714883895918

/-!
# A020120: Ceiling of Gamma(n+5/7)/Gamma(5/7).

The programs for A020120, there is no canonical definition to state claims against.
-/

/-! ## A020120.P5399289106964006184

`A020075(A028310(n))+1`
-/

namespace A020120.P5399289106964006184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020075 (A028310 n).toNat + 1

end

end A020120.P5399289106964006184

/-! ## A020120.P921132034095586827

`A057427(n)+A020075(n)`
-/

namespace A020120.P921132034095586827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020075 n

end

end A020120.P921132034095586827

/-! ## A020120.P11756403427616628741

`A178334(n)+A020075(n)`
-/

namespace A020120.P11756403427616628741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020075 n

end

end A020120.P11756403427616628741

/-! ## A020120.P14577035705104370913

`A020075(n)-A057428(n)`
-/

namespace A020120.P14577035705104370913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020075 n - A057428 n

end

end A020120.P14577035705104370913

/-! ## A020120.P104930818880194268

`A020075(n)%A020029(n)+1`
-/

namespace A020120.P104930818880194268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020075 n) (A020029 n) + 1

end

end A020120.P104930818880194268

/-! ## A020120.P5312610255666956714

`A020075(n)+A003464(n)%2`
-/

namespace A020120.P5312610255666956714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020075 n + Int.tmod (A003464 n) 2

end

end A020120.P5312610255666956714

/-! ## A020120.P10248734661810773199

`A020075(n)+A067200(n+1)%2`
-/

namespace A020120.P10248734661810773199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020075 n + Int.tmod (A067200 (n + 1)) 2

end

end A020120.P10248734661810773199

/-! ## A020120.P1104213898698125297

`A020075(n)+A002262(A000124(n))`
-/

namespace A020120.P1104213898698125297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020075 n + A002262 (A000124 n).toNat

end

end A020120.P1104213898698125297

/-! ## A020120.P13066756264221696675

`A020075(n)+A000035(A067200(n+1))`
-/

namespace A020120.P13066756264221696675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020075 n + A000035 (A067200 (n + 1)).toNat

end

end A020120.P13066756264221696675

/-! ## A020120.P11111673520375950919

`A020075(n)+A020123(n)-A020078(n)`
-/

namespace A020120.P11111673520375950919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020075 n + (A020123 n - A020078 n)

end

end A020120.P11111673520375950919

/-!
# A020121: Ceiling of Gamma(n+4/7)/Gamma(4/7).

The programs for A020121, there is no canonical definition to state claims against.
-/

/-! ## A020121.P11083480498979392766

`A020076(n)+char[A051597(n)]`
-/

namespace A020121.P11083480498979392766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020076 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020121.P11083480498979392766

/-! ## A020121.P17517339691693824580

`A020076(n)+char[A074909(n)]`
-/

namespace A020121.P17517339691693824580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020076 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020121.P17517339691693824580

/-! ## A020121.P16141368323199234797

`A020076(n)+char[A135278(n)]`
-/

namespace A020121.P16141368323199234797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020076 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020121.P16141368323199234797

/-! ## A020121.P9935659311665124092

`A020076(n)+char[A153861(n)]`
-/

namespace A020121.P9935659311665124092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020076 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020121.P9935659311665124092

/-! ## A020121.P10498331100778445457

`A020076(n)%A020029(n)+1`
-/

namespace A020121.P10498331100778445457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020076 n) (A020029 n) + 1

end

end A020121.P10498331100778445457

/-! ## A020121.P9722242810705909670

`A020076(n)+A002262(A000124(n))`
-/

namespace A020121.P9722242810705909670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020076 n + A002262 (A000124 n).toNat

end

end A020121.P9722242810705909670

/-!
# A020122: Ceiling of Gamma(n+3/7)/Gamma(3/7).

The programs for A020122, there is no canonical definition to state claims against.
-/

/-! ## A020122.P14815331854788162009

`ceil(A020077(n)+abs(sin(n)))`
-/

namespace A020122.P14815331854788162009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020077 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020122.P14815331854788162009

/-! ## A020122.P8857979292748352217

`A020077(A028310(n))+1`
-/

namespace A020122.P8857979292748352217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020077 (A028310 n).toNat + 1

end

end A020122.P8857979292748352217

/-! ## A020122.P13452329404320449762

`A178334(n)+A020077(n)`
-/

namespace A020122.P13452329404320449762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020077 n

end

end A020122.P13452329404320449762

/-! ## A020122.P4520768088630011244

`A020077(n)-A057428(n)`
-/

namespace A020122.P4520768088630011244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020077 n - A057428 n

end

end A020122.P4520768088630011244

/-! ## A020122.P11243059818588267438

`A020077(n)+char[A034867(n)]`
-/

namespace A020122.P11243059818588267438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020077 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020122.P11243059818588267438

/-! ## A020122.P4090617759871426757

`A020077(n)+char[A051597(n)]`
-/

namespace A020122.P4090617759871426757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020077 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020122.P4090617759871426757

/-! ## A020122.P6730606044775669897

`A020077(n)+char[A074909(n)]`
-/

namespace A020122.P6730606044775669897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020077 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020122.P6730606044775669897

/-!
# A020123: Ceiling of Gamma(n+2/7)/Gamma(2/7).

The programs for A020123, there is no canonical definition to state claims against.
-/

/-! ## A020123.P10032156148656559987

`A020078(n)+1-floor(acot(n))`
-/

namespace A020123.P10032156148656559987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020078 n + 1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A020123.P10032156148656559987

/-! ## A020123.P15549205026721547895

`A020078(A028310(n))+1`
-/

namespace A020123.P15549205026721547895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020078 (A028310 n).toNat + 1

end

end A020123.P15549205026721547895

/-! ## A020123.P11012822914575846051

`A020078(n)-A057428(n)`
-/

namespace A020123.P11012822914575846051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020078 n - A057428 n

end

end A020123.P11012822914575846051

/-! ## A020123.P13498475142486147070

`A020078(A065033(2*n))+1`
-/

namespace A020123.P13498475142486147070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020078 (A065033 (2 * n)).toNat + 1

end

end A020123.P13498475142486147070

/-! ## A020123.P6537592528431816856

`A020078(n)+A019426(2*n)`
-/

namespace A020123.P6537592528431816856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020078 n + A019426 (2 * n)

end

end A020123.P6537592528431816856

/-! ## A020123.P12336542346787864524

`A020078(n)+char[A038722(n+1)]`
-/

namespace A020123.P12336542346787864524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020078 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020123.P12336542346787864524

/-!
# A020124: Ceiling of Gamma(n+1/7)/Gamma(1/7).

The programs for A020124, there is no canonical definition to state claims against.
-/

/-! ## A020124.P2889615568333380989

`ceil(A020079(n)+abs(sin(n)))`
-/

namespace A020124.P2889615568333380989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020079 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020124.P2889615568333380989

/-! ## A020124.P3239984973029981319

`A057427(n)+A020079(n)`
-/

namespace A020124.P3239984973029981319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020079 n

end

end A020124.P3239984973029981319

/-! ## A020124.P1704806993879029249

`A020079(n)-A057428(n)`
-/

namespace A020124.P1704806993879029249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020079 n - A057428 n

end

end A020124.P1704806993879029249

/-! ## A020124.P15637081931397425780

`A020079(n)-A008574(n)%2+1`
-/

namespace A020124.P15637081931397425780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020079 n - Int.tmod (A008574 n) 2 + 1

end

end A020124.P15637081931397425780

/-! ## A020124.P9036518329711294165

`A020079(n)-A026644(n)%2+1`
-/

namespace A020124.P9036518329711294165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020079 n - Int.tmod (A026644 n) 2 + 1

end

end A020124.P9036518329711294165

/-! ## A020124.P2252117709686260176

`A020079(n)-A315187(n)%2+1`
-/

namespace A020124.P2252117709686260176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020079 n - Int.tmod (A315187 n) 2 + 1

end

end A020124.P2252117709686260176

/-! ## A020124.P10882469729535705901

`A020079(n)%A020029(n)+1`
-/

namespace A020124.P10882469729535705901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020079 n) (A020029 n) + 1

end

end A020124.P10882469729535705901

/-!
# A020125: Ceiling of Gamma(n+5/6)/Gamma(5/6).

The programs for A020125, there is no canonical definition to state claims against.
-/

/-! ## A020125.P62631353902478842

`ceil(A020080(n)+abs(sin(n)))`
-/

namespace A020125.P62631353902478842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020080 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020125.P62631353902478842

/-! ## A020125.P15021863107266572327

`A178334(n)+A020080(n)`
-/

namespace A020125.P15021863107266572327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020080 n

end

end A020125.P15021863107266572327

/-! ## A020125.P16358930588122749875

`A020080(n)+char[A051597(n)]`
-/

namespace A020125.P16358930588122749875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020080 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020125.P16358930588122749875

/-! ## A020125.P15026412399883436516

`A020080(n)+char[A090930(n+1)]`
-/

namespace A020125.P15026412399883436516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020080 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020125.P15026412399883436516

/-! ## A020125.P7860687324447919506

`A020080(n)+char[A008279(n)]`
-/

namespace A020125.P7860687324447919506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020080 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020125.P7860687324447919506

/-!
# A020126: Ceiling of Gamma(n+1/6)/Gamma(1/6).

The programs for A020126, there is no canonical definition to state claims against.
-/

/-! ## A020126.P11040945053699922922

`A020081(A028310(n))+1`
-/

namespace A020126.P11040945053699922922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 (A028310 n).toNat + 1

end

end A020126.P11040945053699922922

/-! ## A020126.P17264976999995848405

`A020081(n)-A057428(n)`
-/

namespace A020126.P17264976999995848405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 n - A057428 n

end

end A020126.P17264976999995848405

/-! ## A020126.P10027554712080506183

`A073424(∑[n])+A020081(n)`
-/

namespace A020126.P10027554712080506183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (∑ j ∈ Finset.range (n + 1), f1 j) + A020081 n

end

end A020126.P10027554712080506183

/-! ## A020126.P11037557649902884419

`A020081(n)+char[A152271(n)]`
-/

namespace A020126.P11037557649902884419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020126.P11037557649902884419

/-! ## A020126.P17791546503473231543

`A020081(n)+char[A003051(n+1)]`
-/

namespace A020126.P17791546503473231543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020126.P17791546503473231543

/-! ## A020126.P13472597518461571737

`A020081(n)+char[A003602(n+1)]`
-/

namespace A020126.P13472597518461571737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020126.P13472597518461571737

/-! ## A020126.P866439809289224555

`A020081(n)+char[A003963(n+1)]`
-/

namespace A020126.P866439809289224555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020126.P866439809289224555

/-! ## A020126.P15729977035395209832

`A020081(n)+char[A011772(n+1)]`
-/

namespace A020126.P15729977035395209832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020126.P15729977035395209832

/-! ## A020126.P1327187160203663881

`A020081(n)+char[A207790(n+1)]`
-/

namespace A020126.P1327187160203663881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020126.P1327187160203663881

/-! ## A020126.P6585203481033173428

`A020081(n)+A001221(A227091(n+1))`
-/

namespace A020126.P6585203481033173428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 n + A001221 (A227091 (n + 1)).toNat

end

end A020126.P6585203481033173428

/-!
# A020127: Ceiling of Gamma(n+4/5)/Gamma(4/5).

The programs for A020127, there is no canonical definition to state claims against.
-/

/-! ## A020127.P11802456122936748542

`A020082(n)+1-C(2, n+2)`
-/

namespace A020127.P11802456122936748542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020082 n + 1 - (Nat.choose 2 (n + 2) : ℤ)

end

end A020127.P11802456122936748542

/-! ## A020127.P10010248638113045957

`A178334(n)+A020082(n)`
-/

namespace A020127.P10010248638113045957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020082 n

end

end A020127.P10010248638113045957

/-! ## A020127.P16293174445089230822

`A020082(n)+abs(A011599(n))`
-/

namespace A020127.P16293174445089230822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020082 n + |A011599 n|

end

end A020127.P16293174445089230822

/-! ## A020127.P4774144999358278094

`A020082(n)+A011599(n²)`
-/

namespace A020127.P4774144999358278094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020082 n + A011599 (n ^ 2)

end

end A020127.P4774144999358278094

/-! ## A020127.P16934254931577192586

`A020082(n)+char[A051597(n)]`
-/

namespace A020127.P16934254931577192586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020082 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020127.P16934254931577192586

/-! ## A020127.P4872941586998638935

`A020082(n)+char[A074909(n)]`
-/

namespace A020127.P4872941586998638935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020082 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020127.P4872941586998638935

/-! ## A020127.P18177482432975343752

`A020082(n)+char[A135278(n)]`
-/

namespace A020127.P18177482432975343752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020082 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020127.P18177482432975343752

/-! ## A020127.P7463791029133032772

`A020082(n)+char[A153861(n)]`
-/

namespace A020127.P7463791029133032772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020082 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020127.P7463791029133032772

/-! ## A020127.P11944928265592428949

`A097805(A000124(n))+A020082(n)`
-/

namespace A020127.P11944928265592428949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A000124 n).toNat + A020082 n

end

end A020127.P11944928265592428949

/-!
# A020128: Ceiling of Gamma(n+3/5)/Gamma(3/5).

The programs for A020128, there is no canonical definition to state claims against.
-/

/-! ## A020128.P11452362598383709881

`A020083(n)+char[A051597(n)]`
-/

namespace A020128.P11452362598383709881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020083 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020128.P11452362598383709881

/-! ## A020128.P12308548765347720618

`A020083(n)+char[A074909(n)]`
-/

namespace A020128.P12308548765347720618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020083 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020128.P12308548765347720618

/-! ## A020128.P2999622374129034822

`A020083(n)+char[A135278(n)]`
-/

namespace A020128.P2999622374129034822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020083 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020128.P2999622374129034822

/-! ## A020128.P1235961583405813644

`A020083(n)+char[A153861(n)]`
-/

namespace A020128.P1235961583405813644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020083 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020128.P1235961583405813644

/-! ## A020128.P2931546062632407146

`A020083(n)+ceil(n/A000041(n))`
-/

namespace A020128.P2931546062632407146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020083 n + ⌈(n : ℚ) / (A000041 n : ℚ)⌉

end

end A020128.P2931546062632407146

/-! ## A020128.P1089159872409850881

`A097805(A000124(n))+A020083(n)`
-/

namespace A020128.P1089159872409850881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A000124 n).toNat + A020083 n

end

end A020128.P1089159872409850881

/-!
# A020129: Ceiling of Gamma(n+2/5)/Gamma(2/5).

The programs for A020129, there is no canonical definition to state claims against.
-/

/-! ## A020129.P5822764753174505674

`A020084(n)+a(1-C(2, n))` with `a(0)=1, a(1)=1`
-/

namespace A020129.P5822764753174505674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A020084 n + a (1 - Nat.choose 2 n)

end

end A020129.P5822764753174505674

/-! ## A020129.P13381232280331287664

`A020084(n)+char[A051597(n)]`
-/

namespace A020129.P13381232280331287664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020084 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020129.P13381232280331287664

/-! ## A020129.P4289647123193960559

`A020084(n)+char[A074909(n)]`
-/

namespace A020129.P4289647123193960559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020084 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020129.P4289647123193960559

/-! ## A020129.P8525723837328675408

`A020084(n)+char[A135278(n)]`
-/

namespace A020129.P8525723837328675408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020084 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020129.P8525723837328675408

/-! ## A020129.P15779487321333673561

`A020084(n)+char[A152271(n)]`
-/

namespace A020129.P15779487321333673561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020084 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020129.P15779487321333673561

/-! ## A020129.P6735425980100275621

`A020084(n)+char[A153861(n)]`
-/

namespace A020129.P6735425980100275621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020084 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020129.P6735425980100275621

/-! ## A020129.P5344216910417998224

`A097805(A000124(n))+A020084(n)`
-/

namespace A020129.P5344216910417998224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A000124 n).toNat + A020084 n

end

end A020129.P5344216910417998224

/-!
# A020130: Ceiling of Gamma(n+1/5)/Gamma(1/5).

The programs for A020130, there is no canonical definition to state claims against.
-/

/-! ## A020130.P3112047990301183693

`A020085(n)-A057428(n)`
-/

namespace A020130.P3112047990301183693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020085 n - A057428 n

end

end A020130.P3112047990301183693

/-! ## A020130.P14565702247191120324

`A020085(n)+char[A051597(n)]`
-/

namespace A020130.P14565702247191120324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020085 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020130.P14565702247191120324

/-! ## A020130.P13781232380040184199

`A020085(n)+char[A074909(n)]`
-/

namespace A020130.P13781232380040184199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020085 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020130.P13781232380040184199

/-! ## A020130.P10388243728101385184

`A020085(n)+char[A135278(n)]`
-/

namespace A020130.P10388243728101385184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020085 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020130.P10388243728101385184

/-! ## A020130.P16497178254091935380

`A020085(n)+char[A153861(n)]`
-/

namespace A020130.P16497178254091935380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020085 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020130.P16497178254091935380

/-! ## A020130.P8094432039137933919

`A097805(A000124(n))+A020085(n)`
-/

namespace A020130.P8094432039137933919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A000124 n).toNat + A020085 n

end

end A020130.P8094432039137933919

/-!
# A020131: Ceiling of Gamma(n+3/4)/Gamma(3/4).

The programs for A020131, there is no canonical definition to state claims against.
-/

/-! ## A020131.P17250108658511018198

`ceil(A020086(n)+abs(sin(n)))`
-/

namespace A020131.P17250108658511018198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020086 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020131.P17250108658511018198

/-! ## A020131.P15183530345006143238

`A178334(n)+A020086(n)`
-/

namespace A020131.P15183530345006143238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020086 n

end

end A020131.P15183530345006143238

/-! ## A020131.P414135814996605027

`A020086(n)+char[A051597(n)]`
-/

namespace A020131.P414135814996605027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020086 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020131.P414135814996605027

/-! ## A020131.P11928669482313418180

`A020086(n)+char[A074909(n)]`
-/

namespace A020131.P11928669482313418180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020086 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020131.P11928669482313418180

/-! ## A020131.P4989268962617465916

`A020086(n)+char[A008279(n)]`
-/

namespace A020131.P4989268962617465916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020086 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020131.P4989268962617465916

/-!
# A020132: Ceiling of Gamma(n+1/4)/Gamma(1/4).

The programs for A020132, there is no canonical definition to state claims against.
-/

/-! ## A020132.P1858843208367657834

`A020087(A028310(n))+1`
-/

namespace A020132.P1858843208367657834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020087 (A028310 n).toNat + 1

end

end A020132.P1858843208367657834

/-! ## A020132.P12404634453373854163

`A020087(n)+abs(A011627(n))`
-/

namespace A020132.P12404634453373854163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020087 n + |A011627 n|

end

end A020132.P12404634453373854163

/-! ## A020132.P11213629963165342706

`A020087(n)+A011627(n²)`
-/

namespace A020132.P11213629963165342706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020087 n + A011627 (n ^ 2)

end

end A020132.P11213629963165342706

/-! ## A020132.P414826018940781846

`A020087(n)+char[A052938(n)]`
-/

namespace A020132.P414826018940781846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020087 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020132.P414826018940781846

/-! ## A020132.P8016726309860075950

`A020087(n)+char[A133310(n)]`
-/

namespace A020132.P8016726309860075950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020087 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020132.P8016726309860075950

/-! ## A020132.P1082850847451595953

`A020087(n)+char[A011772(n+1)]`
-/

namespace A020132.P1082850847451595953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020087 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020132.P1082850847451595953

/-! ## A020132.P4272984296687733406

`A020087(n)+and(1, A000040(n+1))`
-/

namespace A020132.P4272984296687733406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020087 n + Int.land 1 (A000040 (n + 1))

end

end A020132.P4272984296687733406

/-! ## A020132.P1598437939084169278

`A124625(A008574(n))+A020087(n)`
-/

namespace A020132.P1598437939084169278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A008574 n).toNat + A020087 n

end

end A020132.P1598437939084169278

/-! ## A020132.P9487665371962610573

`A020087(n)%A020101(n)+1`
-/

namespace A020132.P9487665371962610573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020087 n) (A020101 n) + 1

end

end A020132.P9487665371962610573

/-! ## A020132.P12604868040307717986

`ceil(A007696(n)/A000302(n))`
-/

namespace A020132.P12604868040307717986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007696 n : ℚ) / (A000302 n : ℚ)⌉

end

end A020132.P12604868040307717986

/-!
# A020133: Ceiling of Gamma(n+2/3)/Gamma(2/3).

The programs for A020133, there is no canonical definition to state claims against.
-/

/-! ## A020133.P306422304771756060

`ceil(A020088(n)+abs(sin(n)))`
-/

namespace A020133.P306422304771756060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020088 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A020133.P306422304771756060

/-! ## A020133.P11611476054636919045

`A020088(round(sqrt(n²+1)))+1`
-/

namespace A020133.P11611476054636919045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020088 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A020133.P11611476054636919045

/-! ## A020133.P5966600685372237094

`A057427(n)+A020088(n)`
-/

namespace A020133.P5966600685372237094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020088 n

end

end A020133.P5966600685372237094

/-! ## A020133.P4750582932538199063

`A178334(n)+A020088(n)`
-/

namespace A020133.P4750582932538199063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020088 n

end

end A020133.P4750582932538199063

/-! ## A020133.P6549075270919918759

`abs(A057428(n)-A020088(n))`
-/

namespace A020133.P6549075270919918759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n - A020088 n|

end

end A020133.P6549075270919918759

/-! ## A020133.P15688615765011347314

`A055396(A315209(n))+A020088(n)`
-/

namespace A020133.P15688615765011347314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A315209 n).toNat + A020088 n

end

end A020133.P15688615765011347314

/-! ## A020133.P4257510499892781261

`A055396(A147848(n+1))+A020088(n)`
-/

namespace A020133.P4257510499892781261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A147848 (n + 1)).toNat + A020088 n

end

end A020133.P4257510499892781261

/-!
# A020134: Ceiling of Gamma(n + 1/3)/Gamma(1/3).

The programs for A020134, there is no canonical definition to state claims against.
-/

/-! ## A020134.P14735657898435426106

`A057427(n)+A020089(n)`
-/

namespace A020134.P14735657898435426106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020089 n

end

end A020134.P14735657898435426106

/-! ## A020134.P4626908910668332255

`A178334(n)+A020089(n)`
-/

namespace A020134.P4626908910668332255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020089 n

end

end A020134.P4626908910668332255

/-! ## A020134.P18183471121150388019

`A020089(n)+char[A154958(n)]`
-/

namespace A020134.P18183471121150388019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020089 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020134.P18183471121150388019

/-! ## A020134.P7777850592059399429

`A020089(n)%A020095(n)+1`
-/

namespace A020134.P7777850592059399429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020089 n) (A020095 n) + 1

end

end A020134.P7777850592059399429

/-! ## A020134.P8732148954977658775

`A020089(n)+A002262(A000124(n))`
-/

namespace A020134.P8732148954977658775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020089 n + A002262 (A000124 n).toNat

end

end A020134.P8732148954977658775

/-! ## A020134.P9586051338368775624

`A211261(p?[A077127(n)])+A020089(n)`
-/

namespace A020134.P9586051338368775624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A020089 n

end

end A020134.P9586051338368775624

/-! ## A020134.P5578664808167512238

`A020089(n)+A000035(A105562(n+1))`
-/

namespace A020134.P5578664808167512238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020089 n + A000035 (A105562 (n + 1)).toNat

end

end A020134.P5578664808167512238

/-! ## A020134.P5486660107277120198

`A020089(n)+char[A081844(n)]`
-/

namespace A020134.P5486660107277120198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020089 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020134.P5486660107277120198

/-!
# A020135: Ceiling of Gamma(n+1/2)/Gamma(1/2).

The programs for A020135, there is no canonical definition to state claims against.
-/

/-! ## A020135.P16940271202011205096

`ceil(∏[A004280(n+1)/2])`
-/

namespace A020135.P16940271202011205096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004280 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A020135.P16940271202011205096

/-! ## A020135.P9313983101642437264

`A020090(A028310(n))+1`
-/

namespace A020135.P9313983101642437264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020090 (A028310 n).toNat + 1

end

end A020135.P9313983101642437264

/-! ## A020135.P15815305710719245209

`A057427(n)+A020090(n)`
-/

namespace A020135.P15815305710719245209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020090 n

end

end A020135.P15815305710719245209

/-! ## A020135.P14854992955867162719

`A178334(n)+A020090(n)`
-/

namespace A020135.P14854992955867162719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A020090 n

end

end A020135.P14854992955867162719

/-! ## A020135.P4462402404433960273

`A020090(n)+char[A152271(n)]`
-/

namespace A020135.P4462402404433960273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020090 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020135.P4462402404433960273

/-! ## A020135.P14115535724788805618

`A020090(n)+char[A323231(n)]`
-/

namespace A020135.P14115535724788805618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323231 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020090 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020135.P14115535724788805618

/-! ## A020135.P8195979129535754562

`A020090(A065033(2*n))+1`
-/

namespace A020135.P8195979129535754562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020090 (A065033 (2 * n)).toNat + 1

end

end A020135.P8195979129535754562

/-!
# A020136: Fermat pseudoprimes to base 4.

The programs for A020136, there is no canonical definition to state claims against.
-/

/-! ## A020136.P6416449086535132889

`∩[A020144(n+1), A020192(n+1)]`
-/

namespace A020136.P6416449086535132889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020136.P6416449086535132889

/-! ## A020136.P12853697388840553507

`∩[A020144(n+1), A122781(n+1)]`
-/

namespace A020136.P12853697388840553507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020136.P12853697388840553507

/-! ## A020136.P9240808040405066752

`∩[A020192(n+1), A122781(n+1)]`
-/

namespace A020136.P9240808040405066752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020136.P9240808040405066752

/-! ## A020136.P18241966733378542976

`∩[A122781(A020705(n)), A020144(n+1)]`
-/

namespace A020136.P18241966733378542976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (A020705 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020136.P18241966733378542976

/-! ## A020136.P12379077980040150187

`∩[A020144(n+1), A179458(n+1)]`
-/

namespace A020136.P12379077980040150187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020136.P12379077980040150187

/-! ## A020136.P12853168190349507270

`∩[A020192(n+1), A179458(n+1)]`
-/

namespace A020136.P12853168190349507270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020136.P12853168190349507270

/-! ## A020136.P7082716904859977573

`filter[A122781(n+1), A353638(#)]`
-/

namespace A020136.P7082716904859977573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A020136.P7082716904859977573

/-! ## A020136.P9012155134898563075

`filter[A122781(n+1), A374474(#)]`
-/

namespace A020136.P9012155134898563075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A020136.P9012155134898563075

/-! ## A020136.P7455206131345672536

`filter[A122781(n+2), A373157(#)]`
-/

namespace A020136.P7455206131345672536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A020136.P7455206131345672536

/-! ## A020136.P3525014094576319957

`filter[A122781(n+2), A374134(#)]`
-/

namespace A020136.P3525014094576319957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A020136.P3525014094576319957

/-! ## A020136.P11870461985169682094

`filter[A122781(n+3), A322980(#)]`
-/

namespace A020136.P11870461985169682094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A020136.P11870461985169682094

/-! ## A020136.P16003138159650255401

`filter[A122781(n+3), A379952(#)]`
-/

namespace A020136.P16003138159650255401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A020136.P16003138159650255401

/-! ## A020136.P7012199809951851215

`filter[A122781(n+1), A324908(#)]`
-/

namespace A020136.P7012199809951851215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A020136.P7012199809951851215

/-! ## A020136.P10600044554027864991

`filter[A122781(n+2), A323239(#)]`
-/

namespace A020136.P10600044554027864991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A020136.P10600044554027864991

/-! ## A020136.P3412500608511653789

`filter[A122781(n+3), A323158(#)]`
-/

namespace A020136.P3412500608511653789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A020136.P3412500608511653789

/-! ## A020136.P10630388952502540703

`filter[A122781(n+3), A347871(#)]`
-/

namespace A020136.P10630388952502540703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A020136.P10630388952502540703

/-! ## A020136.P15424606402206451310

`∩[A129494(n+1), A179458(n+1)]`
-/

namespace A020136.P15424606402206451310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020136.P15424606402206451310

/-!
# A020137: Pseudoprimes to base 8.

The programs for A020137, there is no canonical definition to state claims against.
-/

/-! ## A020137.P8396999369359734833

`∩[A020192(n+1), A122785(n+1)]`
-/

namespace A020137.P8396999369359734833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020137.P8396999369359734833

/-! ## A020137.P8534094080171189932

`record[A000265(A122785(n+4))]`
-/

namespace A020137.P8534094080171189932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A122785 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020137.P8534094080171189932

/-! ## A020137.P18002419469550101017

`filter[A122785(n+3), A379952(#)]`
-/

namespace A020137.P18002419469550101017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A020137.P18002419469550101017

/-! ## A020137.P2795256986155316286

`filter[A122785(n+2), A093719(#)]`
-/

namespace A020137.P2795256986155316286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A020137.P2795256986155316286

/-! ## A020137.P15111900920023866157

`∩[A071904(n+1), A122785(n+1)]`
-/

namespace A020137.P15111900920023866157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020137.P15111900920023866157

/-! ## A020137.P16112492321968012885

`filter[A122785(n+1), A266070(#)]`
-/

namespace A020137.P16112492321968012885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A020137.P16112492321968012885

/-! ## A020137.P3121615195978182426

`filter[A122785(n+1), A266611(#)]`
-/

namespace A020137.P3121615195978182426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A020137.P3121615195978182426

/-! ## A020137.P65196606724138744

`filter[A122785(n+1), A266719(#)]`
-/

namespace A020137.P65196606724138744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A020137.P65196606724138744

/-! ## A020137.P7936006688822325024

`filter[A122785(n+1), A296066(#)]`
-/

namespace A020137.P7936006688822325024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A020137.P7936006688822325024

/-! ## A020137.P14618427437116331340

`filter[A122785(n+2), A000035(#)]`
-/

namespace A020137.P14618427437116331340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A020137.P14618427437116331340

/-!
# A020138: Pseudoprimes to base 9.

The programs for A020138, there is no canonical definition to state claims against.
-/

/-! ## A020138.P8037395442557533786

`∩[A020209(n+1), A122786(n+1)]`
-/

namespace A020138.P8037395442557533786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020138.P8037395442557533786

/-! ## A020138.P1185374859977835878

`record[A038502(A122786(n+2))]`
-/

namespace A020138.P1185374859977835878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A122786 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020138.P1185374859977835878

/-! ## A020138.P6467640730750787698

`filter[A122786(n+2), A011655(#)]`
-/

namespace A020138.P6467640730750787698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A020138.P6467640730750787698

/-! ## A020138.P14133547160241810448

`filter[A122786(n+2), A267208(#)]`
-/

namespace A020138.P14133547160241810448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A020138.P14133547160241810448

/-! ## A020138.P4945320585322471763

`∩[A122786(n+1), A133223(n+1)]`
-/

namespace A020138.P4945320585322471763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020138.P4945320585322471763

/-!
# A020139: Pseudoprimes to base 11.

The programs for A020139, there is no canonical definition to state claims against.
-/

/-! ## A020139.P9562280129054381044

`A181498(A000043(n+3))+A178993(n+3)`
-/

namespace A020139.P9562280129054381044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181498 (A000043 (n + 3)).toNat + A178993 (n + 3)

end

end A020139.P9562280129054381044

/-!
# A020141: Pseudoprimes to base 13.

The programs for A020141, there is no canonical definition to state claims against.
-/

/-! ## A020141.P18132399454087192271

`A257695(A002110(n))+A061068(n+1)`
-/

namespace A020141.P18132399454087192271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257695 (A002110 n).toNat + A061068 (n + 1)

end

end A020141.P18132399454087192271

/-! ## A020141.P8325028000602389201

`A138010(A128318(n))+A061068(n+1)`
-/

namespace A020141.P8325028000602389201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138010 (A128318 n).toNat + A061068 (n + 1)

end

end A020141.P8325028000602389201

/-!
# A020142: Pseudoprimes to base 14.

The programs for A020142, there is no canonical definition to state claims against.
-/

/-! ## A020142.P11839590633871144795

`A096672(A344616(2*n+5)+A000566(n))`
-/

namespace A020142.P11839590633871144795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096672 (A344616 (2 * n + 5) + A000566 n).toNat

end

end A020142.P11839590633871144795

/-!
# A020144: Pseudoprimes to base 16.

The programs for A020144, there is no canonical definition to state claims against.
-/

/-! ## A020144.P1307042316055794139

`∪[A020136(n+1), A339880(n+1)%A087526(n+3)]`
-/

namespace A020144.P1307042316055794139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339880 (n + 1)) (A087526 (n + 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020144.P1307042316055794139

/-!
# A020146: Pseudoprimes to base 18.

The programs for A020146, there is no canonical definition to state claims against.
-/

/-! ## A020146.P16063295357685368705

`A338906(3*n+5)+A033707(A095329(n+3))`
-/

namespace A020146.P16063295357685368705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338906 (3 * n + 5) + A033707 (A095329 (n + 3)).toNat

end

end A020146.P16063295357685368705

/-!
# A020147: Pseudoprimes to base 19.

The programs for A020147, there is no canonical definition to state claims against.
-/

/-! ## A020147.P4635263235648572054

`A363701(2*(n+2))+A247761(A084623(n+1))`
-/

namespace A020147.P4635263235648572054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363701 (2 * (n + 2)) + A247761 (A084623 (n + 1)).toNat

end

end A020147.P4635263235648572054

/-!
# A020148: Pseudoprimes to base 20.

The programs for A020148, there is no canonical definition to state claims against.
-/

/-! ## A020148.P13819076546789296692

`A316266(A273519(n)+A055927(n+1))`
-/

namespace A020148.P13819076546789296692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316266 (A273519 n + A055927 (n + 1)).toNat

end

end A020148.P13819076546789296692

/-!
# A020156: Pseudoprimes to base 28.

The programs for A020156, there is no canonical definition to state claims against.
-/

/-! ## A020156.P6044657727198911656

`A356319(A060161(n+1))`
-/

namespace A020156.P6044657727198911656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356319 (A060161 (n + 1)).toNat

end

end A020156.P6044657727198911656

/-!
# A020172: Pseudoprimes to base 44.

The programs for A020172, there is no canonical definition to state claims against.
-/

/-! ## A020172.P9773196934785773996

`or(1, A256385(A272834(n)))`
-/

namespace A020172.P9773196934785773996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256385 (A272834 n).toNat)

end

end A020172.P9773196934785773996

/-!
# A020173: Pseudoprimes to base 45.

The programs for A020173, there is no canonical definition to state claims against.
-/

/-! ## A020173.P12352879980829295374

`A110178(A225286(n+1))`
-/

namespace A020173.P12352879980829295374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110178 (A225286 (n + 1)).toNat

end

end A020173.P12352879980829295374

/-!
# A020178: Pseudoprimes to base 50.

The programs for A020178, there is no canonical definition to state claims against.
-/

/-! ## A020178.P17101844201773566510

`A094750(n+1)+A094727(A204277(n+1))`
-/

namespace A020178.P17101844201773566510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1) + A094727 (A204277 (n + 1)).toNat

end

end A020178.P17101844201773566510

/-!
# A020184: Pseudoprimes to base 56.

The programs for A020184, there is no canonical definition to state claims against.
-/

/-! ## A020184.P14118003933117299589

`A231370(lt[A045931(n), A213999(n)])`
-/

namespace A020184.P14118003933117299589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231370 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020184.P14118003933117299589

/-!
# A020187: Pseudoprimes to base 59.

The programs for A020187, there is no canonical definition to state claims against.
-/

/-! ## A020187.P3977435888946289235

`A018454(n+4)*A176206(A018448(n+1))`
-/

namespace A020187.P3977435888946289235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018454 (n + 4) * A176206 (A018448 (n + 1)).toNat

end

end A020187.P3977435888946289235

/-!
# A020190: Pseudoprimes to base 62.

The programs for A020190, there is no canonical definition to state claims against.
-/

/-! ## A020190.P1373812026821836605

`record[A324644(A248422(n+1))]`
-/

namespace A020190.P1373812026821836605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324644 (A248422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020190.P1373812026821836605

/-!
# A020196: Pseudoprimes to base 68.

The programs for A020196, there is no canonical definition to state claims against.
-/

/-! ## A020196.P14220951718801595759

`A044079(n+1)-A044050(A044013(n+1))`
-/

namespace A020196.P14220951718801595759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044079 (n + 1) - A044050 (A044013 (n + 1)).toNat

end

end A020196.P14220951718801595759

/-!
# A020199: Pseudoprimes to base 71.

The programs for A020199, there is no canonical definition to state claims against.
-/

/-! ## A020199.P550311131434712404

`∩[A165412(n+1), A261614(n+1)]`
-/

namespace A020199.P550311131434712404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020199.P550311131434712404

/-! ## A020199.P7851574900437763061

`∩[A178858(n+1), A261614(n+1)]`
-/

namespace A020199.P7851574900437763061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020199.P7851574900437763061

/-! ## A020199.P17572288673554088977

`∩[A178860(n+1), A261614(n+1)]`
-/

namespace A020199.P17572288673554088977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020199.P17572288673554088977

/-! ## A020199.P17951913291251073741

`∩[A178862(n+1), A261614(n+1)]`
-/

namespace A020199.P17951913291251073741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020199.P17951913291251073741

/-! ## A020199.P4567105288396878531

`∩[A178877(n+1), A261614(n+1)]`
-/

namespace A020199.P4567105288396878531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020199.P4567105288396878531

