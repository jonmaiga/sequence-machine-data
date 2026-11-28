import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C007
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021

/-!
# A095501: a(n) = 54 written in base 10 - n.

The programs for A095501, there is no canonical definition to state claims against.
-/

/-! ## A095501.P14182648595160695920

`A095503(n+3)-A336420(A033312(n))`
-/

namespace A095501.P14182648595160695920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095503 (n + 3) - A336420 (A033312 n).toNat

end

end A095501.P14182648595160695920

/-!
# A095505: a(n) = 56 written in base 14 - n.

The programs for A095505, there is no canonical definition to state claims against.
-/

/-! ## A095505.P10575884654160005169

`A233583(A095507(n))`
-/

namespace A095505.P10575884654160005169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A095507 n).toNat

end

end A095505.P10575884654160005169

/-! ## A095505.P17246353907054187729

`A095507(A062399(n))-1`
-/

namespace A095505.P17246353907054187729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095507 (A062399 n).toNat - 1

end

end A095505.P17246353907054187729

/-! ## A095505.P10108835554355645250

`A095507(A120125(n))-1`
-/

namespace A095505.P10108835554355645250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095507 (A120125 n).toNat - 1

end

end A095505.P10108835554355645250

/-! ## A095505.P3587261169563919789

`A095507(A120126(n))-1`
-/

namespace A095505.P3587261169563919789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095507 (A120126 n).toNat - 1

end

end A095505.P3587261169563919789

/-! ## A095505.P5192487648554559546

`A095507(A158699(n))-1`
-/

namespace A095505.P5192487648554559546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095507 (A158699 n).toNat - 1

end

end A095505.P5192487648554559546

/-!
# A095507: a(n) = 57 written in base 14 - n.

The programs for A095507, there is no canonical definition to state claims against.
-/

/-! ## A095507.P2683168271091941598

`A095505(A062399(n))+1`
-/

namespace A095507.P2683168271091941598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095505 (A062399 n).toNat + 1

end

end A095507.P2683168271091941598

/-! ## A095507.P973249921723043314

`A095505(A120125(n))+1`
-/

namespace A095507.P973249921723043314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095505 (A120125 n).toNat + 1

end

end A095507.P973249921723043314

/-! ## A095507.P12774285774306750169

`A095505(A120126(n))+1`
-/

namespace A095507.P12774285774306750169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095505 (A120126 n).toNat + 1

end

end A095507.P12774285774306750169

/-! ## A095507.P4124601022839333254

`A095505(A158699(n))+1`
-/

namespace A095507.P4124601022839333254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095505 (A158699 n).toNat + 1

end

end A095507.P4124601022839333254

/-! ## A095507.P15067429212476661433

`A095505(A264979(n))+1`
-/

namespace A095507.P15067429212476661433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095505 (A264979 n).toNat + 1

end

end A095507.P15067429212476661433

/-!
# A095509: a(n) = 58 written in base 11 - n.

The programs for A095509, there is no canonical definition to state claims against.
-/

/-! ## A095509.P9396087553006102283

`A134824(A095469(n))+A095511(n)`
-/

namespace A095509.P9396087553006102283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095469 n).toNat + A095511 n

end

end A095509.P9396087553006102283

/-! ## A095509.P10039162900312041974

`A260196(A095465(n))+A095511(n)`
-/

namespace A095509.P10039162900312041974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095465 n).toNat + A095511 n

end

end A095509.P10039162900312041974

/-! ## A095509.P17054463413797544883

`A260196(A095467(n))+A095511(n)`
-/

namespace A095509.P17054463413797544883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095467 n).toNat + A095511 n

end

end A095509.P17054463413797544883

/-! ## A095509.P15122051777192257922

`A260196(A095491(n))+A095511(n)`
-/

namespace A095509.P15122051777192257922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095491 n).toNat + A095511 n

end

end A095509.P15122051777192257922

/-!
# A095511: a(n) = 59 written in base 11 - n.

The programs for A095511, there is no canonical definition to state claims against.
-/

/-! ## A095511.P400487142410438329

`abs(A260196(A095465(n))-A095509(n))`
-/

namespace A095511.P400487142410438329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260196 (A095465 n).toNat - A095509 n|

end

end A095511.P400487142410438329

/-! ## A095511.P907178936744509352

`abs(A260196(A095467(n))-A095509(n))`
-/

namespace A095511.P907178936744509352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260196 (A095467 n).toNat - A095509 n|

end

end A095511.P907178936744509352

/-!
# A095512: 

The programs for A095512, there is no canonical definition to state claims against.
-/

/-! ## A095512.P10295480586887952354

`A095513(xor(7, A296704(n+1)))`
-/

namespace A095512.P10295480586887952354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095513 (Int.xor 7 (A296704 (n + 1))).toNat

end

end A095512.P10295480586887952354

/-!
# A095513: a(n) = 60 written in base 15 - n.

The programs for A095513, there is no canonical definition to state claims against.
-/

/-! ## A095513.P6894346572776597957

`A321800(A000079(n))+A095515(n)`
-/

namespace A095513.P6894346572776597957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A000079 n).toNat + A095515 n

end

end A095513.P6894346572776597957

/-! ## A095513.P8449530003642833651

`A260196(A095489(n))+A095515(n)`
-/

namespace A095513.P8449530003642833651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095489 n).toNat + A095515 n

end

end A095513.P8449530003642833651

/-! ## A095513.P12842569657746381764

`A057428(n+1)+A000027(A095515(n))`
-/

namespace A095513.P12842569657746381764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000027 (A095515 n).toNat

end

end A095513.P12842569657746381764

/-!
# A095515: a(n) = 61 written in base 15 - n.

The programs for A095515, there is no canonical definition to state claims against.
-/

/-! ## A095515.P17214401965378699911

`A011760(A095513(n))`
-/

namespace A095515.P17214401965378699911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095513 n).toNat

end

end A095515.P17214401965378699911

/-! ## A095515.P13917935895671691464

`A009056(A095513(n)-1)`
-/

namespace A095515.P13917935895671691464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A095513 n - 1).toNat

end

end A095515.P13917935895671691464

/-! ## A095515.P1800352862094657316

`A074764(A095513(n)-2)`
-/

namespace A095515.P1800352862094657316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (A095513 n - 2).toNat

end

end A095515.P1800352862094657316

/-!
# A095517: a(n) = 62 written in base 12 - n.

The programs for A095517, there is no canonical definition to state claims against.
-/

/-! ## A095517.P591263163656973283

`A009056(A095513(n+3))`
-/

namespace A095517.P591263163656973283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A095513 (n + 3)).toNat

end

end A095517.P591263163656973283

/-! ## A095517.P12281969503241081614

`A011760(A095515(n+3))`
-/

namespace A095517.P12281969503241081614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095515 (n + 3)).toNat

end

end A095517.P12281969503241081614

/-!
# A095519: a(n) = 63 written in base 12 - n.

The programs for A095519, there is no canonical definition to state claims against.
-/

/-! ## A095519.P14902427417287854302

`A096812(A228832(2*n+1))+A095517(n)`
-/

namespace A095519.P14902427417287854302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096812 (A228832 (2 * n + 1)).toNat + A095517 n

end

end A095519.P14902427417287854302

/-!
# A095523: a(n) = 65 written in base 10 - n.

The programs for A095523, there is no canonical definition to state claims against.
-/

/-! ## A095523.P2202109760579519881

`A095521(n+2)+val(A095507(3*n), 6)+1`
-/

namespace A095523.P2202109760579519881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095521 (n + 2) + (SequenceMachineLib.valuation (A095507 (3 * n)).toNat 6 + 1 : ℤ)

end

end A095523.P2202109760579519881

/-!
# A095527: a(n) = 67 written in base 13 - n.

The programs for A095527, there is no canonical definition to state claims against.
-/

/-! ## A095527.P290211017281809334

`abs(A134824(A095537(n))-A095525(n))`
-/

namespace A095527.P290211017281809334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134824 (A095537 n).toNat - A095525 n|

end

end A095527.P290211017281809334

/-! ## A095527.P17247994803196656090

`abs(A134824(A095539(n))-A095525(n))`
-/

namespace A095527.P17247994803196656090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134824 (A095539 n).toNat - A095525 n|

end

end A095527.P17247994803196656090

/-! ## A095527.P4747744769372727368

`abs(A280193(A022180(n))-A095525(n))`
-/

namespace A095527.P4747744769372727368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280193 (A022180 n).toNat - A095525 n|

end

end A095527.P4747744769372727368

/-!
# A095529: a(n) = 68 written in base 13 - n.

The programs for A095529, there is no canonical definition to state claims against.
-/

/-! ## A095529.P14745798504681484650

`A095531(A051022(n))-1`
-/

namespace A095529.P14745798504681484650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095531 (A051022 n).toNat - 1

end

end A095529.P14745798504681484650

/-! ## A095529.P6340714555670556903

`A095531(A082216(n))-1`
-/

namespace A095529.P6340714555670556903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095531 (A082216 n).toNat - 1

end

end A095529.P6340714555670556903

/-! ## A095529.P6397296391306617199

`A024164(6*A095531(n))`
-/

namespace A095529.P6397296391306617199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024164 (6 * A095531 n).toNat

end

end A095529.P6397296391306617199

/-! ## A095529.P789707171043904527

`A095531(A064702(n+1))-1`
-/

namespace A095529.P789707171043904527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095531 (A064702 (n + 1)).toNat - 1

end

end A095529.P789707171043904527

/-!
# A095531: a(n) = 69 written in base 13 - n.

The programs for A095531, there is no canonical definition to state claims against.
-/

/-! ## A095531.P17568290189575319003

`A095529(A002998(n))+1`
-/

namespace A095531.P17568290189575319003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095529 (A002998 n).toNat + 1

end

end A095531.P17568290189575319003

/-! ## A095531.P17746149391542003340

`A095529(A003100(n))+1`
-/

namespace A095531.P17746149391542003340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095529 (A003100 n).toNat + 1

end

end A095531.P17746149391542003340

/-! ## A095531.P13456029680502549015

`A095529(A023106(n))+1`
-/

namespace A095531.P13456029680502549015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095529 (A023106 n).toNat + 1

end

end A095531.P13456029680502549015

/-! ## A095531.P6039055881873933456

`A232740(A095525(n))+A095529(n)`
-/

namespace A095531.P6039055881873933456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (A095525 n).toNat + A095529 n

end

end A095531.P6039055881873933456

/-! ## A095531.P1372730776415962364

`A232740(A095527(n))+A095529(n)`
-/

namespace A095531.P1372730776415962364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (A095527 n).toNat + A095529 n

end

end A095531.P1372730776415962364

/-!
# A095533: a(n) = 70 written in base 11 - n.

The programs for A095533, there is no canonical definition to state claims against.
-/

/-! ## A095533.P4018083742602951806

`A260196(A095491(n))+A095535(n)`
-/

namespace A095533.P4018083742602951806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095491 n).toNat + A095535 n

end

end A095533.P4018083742602951806

/-! ## A095533.P7957431434703005178

`A260196(A095493(n))+A095535(n)`
-/

namespace A095533.P7957431434703005178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095493 n).toNat + A095535 n

end

end A095533.P7957431434703005178

/-! ## A095533.P6603891138022388942

`A260196(A095495(n))+A095535(n)`
-/

namespace A095533.P6603891138022388942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095495 n).toNat + A095535 n

end

end A095533.P6603891138022388942

/-!
# A095535: a(n) = 71 written in base 11 - n.

The programs for A095535, there is no canonical definition to state claims against.
-/

/-! ## A095535.P2299591837775089378

`A095533(n)%A095523(n)+1`
-/

namespace A095535.P2299591837775089378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095533 n) (A095523 n) + 1

end

end A095535.P2299591837775089378

/-! ## A095535.P15970712351489161791

`A232740(A095525(n))+A095533(n)`
-/

namespace A095535.P15970712351489161791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (A095525 n).toNat + A095533 n

end

end A095535.P15970712351489161791

/-! ## A095535.P4359157882300302438

`A232740(A095527(n))+A095533(n)`
-/

namespace A095535.P4359157882300302438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (A095527 n).toNat + A095533 n

end

end A095535.P4359157882300302438

/-! ## A095535.P9967098834317683945

`A095533(n)-A260196(A095491(n))`
-/

namespace A095535.P9967098834317683945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095533 n - A260196 (A095491 n).toNat

end

end A095535.P9967098834317683945

/-! ## A095535.P7622709396422622806

`A095533(n)-A260196(A095493(n))`
-/

namespace A095535.P7622709396422622806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095533 n - A260196 (A095493 n).toNat

end

end A095535.P7622709396422622806

/-!
# A095537: a(n) = 72 written in base 14 - n.

The programs for A095537, there is no canonical definition to state claims against.
-/

/-! ## A095537.P18045893440593189227

`A134824(A095549(n))+A095539(n)`
-/

namespace A095537.P18045893440593189227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095549 n).toNat + A095539 n

end

end A095537.P18045893440593189227

/-!
# A095539: a(n) = 73 written in base 14 - n.

The programs for A095539, there is no canonical definition to state claims against.
-/

/-! ## A095539.P3823962371470141498

`abs(A134824(A095513(n))-A095537(n))`
-/

namespace A095539.P3823962371470141498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134824 (A095513 n).toNat - A095537 n|

end

end A095539.P3823962371470141498

/-!
# A095541: a(n) = 74 written in base 14 - n.

The programs for A095541, there is no canonical definition to state claims against.
-/

/-! ## A095541.P10887457338999414150

`A009056(A095537(n))`
-/

namespace A095541.P10887457338999414150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A095537 n).toNat

end

end A095541.P10887457338999414150

/-! ## A095541.P4718566936532366509

`A011760(A095539(n))`
-/

namespace A095541.P4718566936532366509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095539 n).toNat

end

end A095541.P4718566936532366509

/-!
# A095543: a(n) = 75 written in base 12 - n.

The programs for A095543, there is no canonical definition to state claims against.
-/

/-! ## A095543.P13705922798585871794

`A095541(A250043(n+1))+1`
-/

namespace A095543.P13705922798585871794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095541 (A250043 (n + 1)).toNat + 1

end

end A095543.P13705922798585871794

/-! ## A095543.P13394470972293696300

`A342005(A002110(n))+A095541(n+2)`
-/

namespace A095543.P13394470972293696300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 (A002110 n).toNat + A095541 (n + 2)

end

end A095543.P13394470972293696300

/-! ## A095543.P14576014262414173668

`A095539(n+2)+A000122(A000079(2*n))`
-/

namespace A095543.P14576014262414173668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095539 (n + 2) + A000122 (A000079 (2 * n)).toNat

end

end A095543.P14576014262414173668

/-!
# A095545: a(n) = 76 written in base 10 - n.

The programs for A095545, there is no canonical definition to state claims against.
-/

/-! ## A095545.P2508560745246040934

`A095543(A007092(n)+2)+1`
-/

namespace A095545.P2508560745246040934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095543 (A007092 n + 2).toNat + 1

end

end A095545.P2508560745246040934

/-! ## A095545.P12006381121351109880

`A095543(A057436(n+1)+1)+1`
-/

namespace A095545.P12006381121351109880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095543 (A057436 (n + 1) + 1).toNat + 1

end

end A095545.P12006381121351109880

/-!
# A095547: a(n) = 77 written in base 12 - n.

The programs for A095547, there is no canonical definition to state claims against.
-/

/-! ## A095547.P10555269782194615709

`A134824(A074501(n))+A095549(n+3)`
-/

namespace A095547.P10555269782194615709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A074501 n).toNat + A095549 (n + 3)

end

end A095547.P10555269782194615709

/-! ## A095547.P11280416670975644021

`A095549(n+3)-A355739(A060114(n))`
-/

namespace A095547.P11280416670975644021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095549 (n + 3) - A355739 (A060114 n).toNat

end

end A095547.P11280416670975644021

/-!
# A095549: a(n) = 78 written in base 15 - n.

The programs for A095549, there is no canonical definition to state claims against.
-/

/-! ## A095549.P13006276389416277414

`A321800(A000079(n))+A095551(n)`
-/

namespace A095549.P13006276389416277414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A000079 n).toNat + A095551 n

end

end A095549.P13006276389416277414

/-!
# A095551: a(n) = 79 written in base 15 - n.

The programs for A095551, there is no canonical definition to state claims against.
-/

/-! ## A095551.P14402643968951137064

`abs(A321800(A000079(n))-A095549(n))`
-/

namespace A095551.P14402643968951137064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321800 (A000079 n).toNat - A095549 n|

end

end A095551.P14402643968951137064

/-! ## A095551.P6261664482452008237

`A011760(A095549(n))`
-/

namespace A095551.P6261664482452008237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095549 n).toNat

end

end A095551.P6261664482452008237

/-! ## A095551.P9130196872855100809

`A009056(A095549(n)-1)`
-/

namespace A095551.P9130196872855100809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A095549 n - 1).toNat

end

end A095551.P9130196872855100809

/-!
# A095553: a(n) = 80 written in base 13 - n.

The programs for A095553, there is no canonical definition to state claims against.
-/

/-! ## A095553.P4959451273910652116

`A294609(n)+A095551(A204928(n+2))`
-/

namespace A095553.P4959451273910652116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 n + A095551 (A204928 (n + 2)).toNat

end

end A095553.P4959451273910652116

/-!
# A095557: a(n) = 82 written in base 11 - n.

The programs for A095557, there is no canonical definition to state claims against.
-/

/-! ## A095557.P1103887264841181718

`A134824(A095555(n))+A095559(n)`
-/

namespace A095557.P1103887264841181718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095555 n).toNat + A095559 n

end

end A095557.P1103887264841181718

/-! ## A095557.P15444000404718638092

`A134824(A095585(n))+A095559(n)`
-/

namespace A095557.P15444000404718638092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095585 n).toNat + A095559 n

end

end A095557.P15444000404718638092

/-! ## A095557.P15189696108188873611

`A134824(A095587(n))+A095559(n)`
-/

namespace A095557.P15189696108188873611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095587 n).toNat + A095559 n

end

end A095557.P15189696108188873611

/-!
# A095559: a(n) = 83 written in base 11 - n.

The programs for A095559, there is no canonical definition to state claims against.
-/

/-! ## A095559.P18403966578057273854

`abs(A134824(A095585(n))-A095557(n))`
-/

namespace A095559.P18403966578057273854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134824 (A095585 n).toNat - A095557 n|

end

end A095559.P18403966578057273854

/-!
# A095563: a(n) = 85 written in base 14 - n.

The programs for A095563, there is no canonical definition to state claims against.
-/

/-! ## A095563.P7437367142041846317

`A134824(A095539(n))+A095565(n)`
-/

namespace A095563.P7437367142041846317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095539 n).toNat + A095565 n

end

end A095563.P7437367142041846317

/-!
# A095567: a(n) = 87 written in base 10 - n.

The programs for A095567, there is no canonical definition to state claims against.
-/

/-! ## A095567.P7691527101584190808

`A009056(A095563(n+4))`
-/

namespace A095567.P7691527101584190808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A095563 (n + 4)).toNat

end

end A095567.P7691527101584190808

/-! ## A095567.P4797428610601393113

`A011760(A095565(n+4))`
-/

namespace A095567.P4797428610601393113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095565 (n + 4)).toNat

end

end A095567.P4797428610601393113

/-!
# A095569: a(n) = 88 written in base 12 - n.

The programs for A095569, there is no canonical definition to state claims against.
-/

/-! ## A095569.P12810575321429965964

`A134824(A020714(n))+A095571(n)`
-/

namespace A095569.P12810575321429965964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A020714 n).toNat + A095571 n

end

end A095569.P12810575321429965964

/-! ## A095569.P17461581030823373680

`A134824(A095553(n))+A095571(n)`
-/

namespace A095569.P17461581030823373680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095553 n).toNat + A095571 n

end

end A095569.P17461581030823373680

/-! ## A095569.P5141355244308409037

`A134824(A095563(n))+A095571(n)`
-/

namespace A095569.P5141355244308409037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095563 n).toNat + A095571 n

end

end A095569.P5141355244308409037

/-!
# A095571: a(n) = 89 written in base 12 - n.

The programs for A095571, there is no canonical definition to state claims against.
-/

/-! ## A095571.P14504077765828332915

`abs(A134824(A020714(n))-A095569(n))`
-/

namespace A095571.P14504077765828332915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134824 (A020714 n).toNat - A095569 n|

end

end A095571.P14504077765828332915

/-!
# A095573: a(n) = 90 written in base 12 - n.

The programs for A095573, there is no canonical definition to state claims against.
-/

/-! ## A095573.P6999459422159183632

`A095571(n)+gcd(2, A095557(2*n))`
-/

namespace A095573.P6999459422159183632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095571 n + (Int.gcd 2 (A095557 (2 * n)) : ℤ)

end

end A095573.P6999459422159183632

/-! ## A095573.P13371202378689468507

`A095571(n)+A055229(A002546(n+1))`
-/

namespace A095573.P13371202378689468507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095571 n + A055229 (A002546 (n + 1)).toNat

end

end A095573.P13371202378689468507

/-!
# A095575: a(n) = 91 written in base 15 - n.

The programs for A095575, there is no canonical definition to state claims against.
-/

/-! ## A095575.P10336279947578041194

`A233583(A095577(n))`
-/

namespace A095575.P10336279947578041194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A095577 n).toNat

end

end A095575.P10336279947578041194

/-! ## A095575.P17977276065168439688

`A095577(A055649(n))-1`
-/

namespace A095575.P17977276065168439688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095577 (A055649 n).toNat - 1

end

end A095575.P17977276065168439688

/-! ## A095575.P16550679253356573215

`A095577(A062399(n))-1`
-/

namespace A095575.P16550679253356573215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095577 (A062399 n).toNat - 1

end

end A095575.P16550679253356573215

/-! ## A095575.P15712750374269986794

`A095577(A120125(n))-1`
-/

namespace A095575.P15712750374269986794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095577 (A120125 n).toNat - 1

end

end A095575.P15712750374269986794

/-!
# A095577: a(n) = 92 written in base 15 - n.

The programs for A095577, there is no canonical definition to state claims against.
-/

/-! ## A095577.P7783719698104705140

`A023443(A095579(n))`
-/

namespace A095577.P7783719698104705140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095579 n).toNat

end

end A095577.P7783719698104705140

/-! ## A095577.P5762491517394977136

`A023444(A095579(n)+1)`
-/

namespace A095577.P5762491517394977136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A095579 n + 1).toNat

end

end A095577.P5762491517394977136

/-! ## A095577.P2561510785097843385

`A289207(A095579(n)+1)`
-/

namespace A095577.P2561510785097843385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A095579 n + 1).toNat

end

end A095577.P2561510785097843385

/-!
# A095579: a(n) = 93 written in base 15 - n.

The programs for A095579, there is no canonical definition to state claims against.
-/

/-! ## A095579.P18066363161830772558

`A011760(A095577(n))`
-/

namespace A095579.P18066363161830772558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095577 n).toNat

end

end A095579.P18066363161830772558

/-!
# A095581: a(n) = 94 written in base 11 - n.

The programs for A095581, there is no canonical definition to state claims against.
-/

/-! ## A095581.P8386346447182270875

`A095579(n+4)+A010121(A095535(n))`
-/

namespace A095581.P8386346447182270875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095579 (n + 4) + A010121 (A095535 n).toNat

end

end A095581.P8386346447182270875

/-! ## A095581.P7802118704924948202

`A011760(A095579(n+4))`
-/

namespace A095581.P7802118704924948202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095579 (n + 4)).toNat

end

end A095581.P7802118704924948202

/-! ## A095581.P8455856599497844490

`A095583(n)-A136759(A000578(3*n))`
-/

namespace A095581.P8455856599497844490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095583 n - A136759 (A000578 (3 * n)).toNat

end

end A095581.P8455856599497844490

/-!
# A095583: a(n) = 95 written in base 11 - n.

The programs for A095583, there is no canonical definition to state claims against.
-/

/-! ## A095583.P198604056893348035

`A177040(A145269(n))+A095581(n)`
-/

namespace A095583.P198604056893348035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177040 (A145269 n).toNat + A095581 n

end

end A095583.P198604056893348035

/-! ## A095583.P6373694346126388846

`A078428(A145269(n))+A095579(A055649(n+4))+1`
-/

namespace A095583.P6373694346126388846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078428 (A145269 n).toNat + (A095579 (A055649 (n + 4)).toNat + 1)

end

end A095583.P6373694346126388846

/-!
# A095585: a(n) = 96 written in base 13 - n.

The programs for A095585, there is no canonical definition to state claims against.
-/

/-! ## A095585.P2462039238907075093

`A134824(A095539(n))+A095587(n)`
-/

namespace A095585.P2462039238907075093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095539 n).toNat + A095587 n

end

end A095585.P2462039238907075093

/-! ## A095585.P4817660634353133567

`A134824(A095575(n))+A095587(n)`
-/

namespace A095585.P4817660634353133567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095575 n).toNat + A095587 n

end

end A095585.P4817660634353133567

/-! ## A095585.P15765985992773387726

`A134824(A095577(n))+A095587(n)`
-/

namespace A095585.P15765985992773387726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095577 n).toNat + A095587 n

end

end A095585.P15765985992773387726

/-! ## A095585.P14348007640333261138

`A134824(A095579(n))+A095587(n)`
-/

namespace A095585.P14348007640333261138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A095579 n).toNat + A095587 n

end

end A095585.P14348007640333261138

/-! ## A095585.P10347614245948008714

`A321804(A008958(n))+A095587(n)`
-/

namespace A095585.P10347614245948008714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A008958 n).toNat + A095587 n

end

end A095585.P10347614245948008714

/-!
# A095587: a(n) = 97 written in base 13 - n.

The programs for A095587, there is no canonical definition to state claims against.
-/

/-! ## A095587.P14349101447924123173

`A095585(A011760(n+1)-1)+1`
-/

namespace A095587.P14349101447924123173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095585 (A011760 (n + 1) - 1).toNat + 1

end

end A095587.P14349101447924123173

/-! ## A095587.P14644842876121767351

`A095585(n)-A280193(A022180(n))`
-/

namespace A095587.P14644842876121767351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095585 n - A280193 (A022180 n).toNat

end

end A095587.P14644842876121767351

/-! ## A095587.P8701006886132695974

`abs(A134824(A095537(n))-A095585(n))`
-/

namespace A095587.P8701006886132695974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134824 (A095537 n).toNat - A095585 n|

end

end A095587.P8701006886132695974

/-! ## A095587.P11368510081617236127

`abs(A134824(A095539(n))-A095585(n))`
-/

namespace A095587.P11368510081617236127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134824 (A095539 n).toNat - A095585 n|

end

end A095587.P11368510081617236127

/-! ## A095587.P1869761742618675253

`abs(A134824(A095575(n))-A095585(n))`
-/

namespace A095587.P1869761742618675253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134824 (A095575 n).toNat - A095585 n|

end

end A095587.P1869761742618675253

/-!
# A095589: a(n) = 98 written in base 10 - n.

The programs for A095589, there is no canonical definition to state claims against.
-/

/-! ## A095589.P16900217947675303479

`A007519(n+5)-A171177(A220172(n+2))`
-/

namespace A095589.P16900217947675303479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 5) - A171177 (A220172 (n + 2)).toNat

end

end A095589.P16900217947675303479

/-!
# A095593: a(n) = 101 written in base 12 - n.

The programs for A095593, there is no canonical definition to state claims against.
-/

/-! ## A095593.P16338994224529065895

`A065147(n+3)+1`
-/

namespace A095593.P16338994224529065895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065147 (n + 3) + 1

end

end A095593.P16338994224529065895

/-! ## A095593.P7187760686834145949

`A011760(A065147(n+3))`
-/

namespace A095593.P7187760686834145949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A065147 (n + 3)).toNat

end

end A095593.P7187760686834145949

/-! ## A095593.P10052172477645048292

`A095595(n)-A055229(A095595(n))`
-/

namespace A095593.P10052172477645048292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095595 n - A055229 (A095595 n).toNat

end

end A095593.P10052172477645048292

/-! ## A095593.P17862487007123620368

`A095597(n)-1-A055229(A095597(n)-1)`
-/

namespace A095593.P17862487007123620368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095597 n - 1 - A055229 (A095597 n - 1).toNat

end

end A095593.P17862487007123620368

/-! ## A095593.P51451614444007825

`A153152(A095595(n))-A163493(A319421(n+2))`
-/

namespace A095593.P51451614444007825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A095595 n).toNat - A163493 (A319421 (n + 2)).toNat

end

end A095593.P51451614444007825

/-!
# A095595: a(n) = 102 written in base 12 - n.

The programs for A095595, there is no canonical definition to state claims against.
-/

/-! ## A095595.P4434964804231381594

`A095597(n)-1`
-/

namespace A095595.P4434964804231381594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095597 n - 1

end

end A095595.P4434964804231381594

/-! ## A095595.P14592583290323875025

`A321800(n)+A095597(n)`
-/

namespace A095595.P14592583290323875025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A095597 n

end

end A095595.P14592583290323875025

/-! ## A095595.P15803294633044986289

`A321804(n)+A095597(n)`
-/

namespace A095595.P15803294633044986289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A095597 n

end

end A095595.P15803294633044986289

/-! ## A095595.P2565991393103791363

`A134824(n+2)+A095597(n)`
-/

namespace A095595.P2565991393103791363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A095597 n

end

end A095595.P2565991393103791363

/-! ## A095595.P9839644658748709910

`A153881(n+2)+A095597(n)`
-/

namespace A095595.P9839644658748709910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A095597 n

end

end A095595.P9839644658748709910

/-!
# A095597: a(n) = 103 written in base 12 - n.

The programs for A095597, there is no canonical definition to state claims against.
-/

/-! ## A095597.P260704888861330977

`A095595(n)+1`
-/

namespace A095597.P260704888861330977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095595 n + 1

end

end A095597.P260704888861330977

/-! ## A095597.P1676325738445938403

`abs(A321800(n)-A095595(n))`
-/

namespace A095597.P1676325738445938403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321800 n - A095595 n|

end

end A095597.P1676325738445938403

/-! ## A095597.P1906596286748288122

`abs(A321804(n)-A095595(n))`
-/

namespace A095597.P1906596286748288122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321804 n - A095595 n|

end

end A095597.P1906596286748288122

/-! ## A095597.P17652136935608205829

`abs(xor(A015063(n), A095595(n)))`
-/

namespace A095597.P17652136935608205829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A015063 n) (A095595 n)|

end

end A095597.P17652136935608205829

/-! ## A095597.P13449146756643611507

`abs(xor(A015075(n), A095595(n)))`
-/

namespace A095597.P13449146756643611507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A015075 n) (A095595 n)|

end

end A095597.P13449146756643611507

/-!
# A095599: a(n) = 104 written in base 14 - n.

The programs for A095599, there is no canonical definition to state claims against.
-/

/-! ## A095599.P17926797636630437338

`A095601(n+3)-A010195(A038992(n+1))`
-/

namespace A095599.P17926797636630437338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095601 (n + 3) - A010195 (A038992 (n + 1)).toNat

end

end A095599.P17926797636630437338

/-! ## A095599.P14418546114586007900

`A095601(n+3)-A033999(A038055(n+1))`
-/

namespace A095599.P14418546114586007900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095601 (n + 3) - A033999 (A038055 (n + 1)).toNat

end

end A095599.P14418546114586007900

/-! ## A095599.P4002062721265126094

`A095601(n+3)-A010195(A089689(n+1))`
-/

namespace A095599.P4002062721265126094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095601 (n + 3) - A010195 (A089689 (n + 1)).toNat

end

end A095599.P4002062721265126094

