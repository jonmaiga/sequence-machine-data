import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B001.C001
import Seq.B001.C005
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C022
import Seq.Opaque.C023

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

/-! ## A095505.P11445478564261777270

`A095507(A264979(n))-1`
-/

namespace A095505.P11445478564261777270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095507 (A264979 n).toNat - 1

end

end A095505.P11445478564261777270

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

/-! ## A095509.P11896053233939304712

`(A095511(n)-1)%A095545(n)`
-/

namespace A095509.P11896053233939304712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095511 n - 1) (A095545 n)

end

end A095509.P11896053233939304712

/-! ## A095509.P15122051777192257922

`A260196(A095491(n))+A095511(n)`
-/

namespace A095509.P15122051777192257922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095491 n).toNat + A095511 n

end

end A095509.P15122051777192257922

/-! ## A095509.P15309422906374959686

`A260196(A095493(n))+A095511(n)`
-/

namespace A095509.P15309422906374959686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095493 n).toNat + A095511 n

end

end A095509.P15309422906374959686

/-! ## A095509.P5219676033597511129

`A260196(A095495(n))+A095511(n)`
-/

namespace A095509.P5219676033597511129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095495 n).toNat + A095511 n

end

end A095509.P5219676033597511129

/-! ## A095509.P9392409014271167743

`A260196(A095517(n))+A095511(n)`
-/

namespace A095509.P9392409014271167743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095517 n).toNat + A095511 n

end

end A095509.P9392409014271167743

/-!
# A095511: a(n) = 59 written in base 11 - n.

The programs for A095511, there is no canonical definition to state claims against.
-/

/-! ## A095511.P1956034334067263326

`A095509(n)%A095501(n)+1`
-/

namespace A095511.P1956034334067263326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095509 n) (A095501 n) + 1

end

end A095511.P1956034334067263326

/-! ## A095511.P6810330911216581494

`(A095509(n)+1)%A095523(n)`
-/

namespace A095511.P6810330911216581494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095509 n + 1) (A095523 n)

end

end A095511.P6810330911216581494

/-! ## A095511.P8451921125452056049

`A095509(n)+gcd(A288033(n+1)+1, n+2)`
-/

namespace A095511.P8451921125452056049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095509 n + (Int.gcd (A288033 (n + 1) + 1) (n + 2 : ℤ) : ℤ)

end

end A095511.P8451921125452056049

/-! ## A095511.P11664441942237833499

`A011760(A095509(n))`
-/

namespace A095511.P11664441942237833499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095509 n).toNat

end

end A095511.P11664441942237833499

/-! ## A095511.P17372023237729646208

`A008619(2*A095509(n))`
-/

namespace A095511.P17372023237729646208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A095509 n).toNat

end

end A095511.P17372023237729646208

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

/-! ## A095513.P8457325107507246755

`A000027(A095515(n)-1)`
-/

namespace A095513.P8457325107507246755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095515 n - 1).toNat

end

end A095513.P8457325107507246755

/-! ## A095513.P13480549250323248465

`A095515(n)+A057428(A126764(n))`
-/

namespace A095513.P13480549250323248465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095515 n + A057428 (A126764 n).toNat

end

end A095513.P13480549250323248465

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

/-! ## A095513.P17675775437708107479

`A023443(A095515(n))`
-/

namespace A095513.P17675775437708107479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095515 n).toNat

end

end A095513.P17675775437708107479

/-!
# A095515: a(n) = 61 written in base 15 - n.

The programs for A095515, there is no canonical definition to state claims against.
-/

/-! ## A095515.P4340493121919009470

`A000027(A095513(n)+1)`
-/

namespace A095515.P4340493121919009470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095513 n + 1).toNat

end

end A095515.P4340493121919009470

/-! ## A095515.P4066273416248324693

`A095513(n)+A000034(A094536(n))`
-/

namespace A095515.P4066273416248324693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095513 n + A000034 (A094536 n).toNat

end

end A095515.P4066273416248324693

/-! ## A095515.P420867487064811470

`A065475(A095513(n))`
-/

namespace A095515.P420867487064811470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A095513 n).toNat

end

end A095515.P420867487064811470

/-! ## A095515.P1800352862094657316

`A074764(A095513(n)-2)`
-/

namespace A095515.P1800352862094657316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (A095513 n - 2).toNat

end

end A095515.P1800352862094657316

/-! ## A095515.P2667551473820418724

`A095513(n)+A008683(A182461(n))+1`
-/

namespace A095515.P2667551473820418724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095513 n + (A008683 (A182461 n).toNat + 1)

end

end A095515.P2667551473820418724

/-!
# A095517: a(n) = 62 written in base 12 - n.

The programs for A095517, there is no canonical definition to state claims against.
-/

/-! ## A095517.P15076046407941386503

`A181440(A095515(n+3)+1)`
-/

namespace A095517.P15076046407941386503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A095515 (n + 3) + 1).toNat

end

end A095517.P15076046407941386503

/-! ## A095517.P1720687261049362542

`A023443(A095515(n+3)+1)+1`
-/

namespace A095517.P1720687261049362542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095515 (n + 3) + 1).toNat + 1

end

end A095517.P1720687261049362542

/-! ## A095517.P1031645746224823090

`A023481(A095515(n+3)+A022996(n)+n)`
-/

namespace A095517.P1031645746224823090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023481 (A095515 (n + 3) + A022996 n + (n : ℤ)).toNat

end

end A095517.P1031645746224823090

/-! ## A095517.P14644654186915974328

`A165430(A095511(n))+A095515(n+3)`
-/

namespace A095517.P14644654186915974328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165430 (A095511 n).toNat + A095515 (n + 3)

end

end A095517.P14644654186915974328

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
# A095525: a(n) = 66 written in base 13 - n.

The programs for A095525, there is no canonical definition to state claims against.
-/

/-! ## A095525.P292851085638648245

`(A095527(n)-1)%A095573(n)`
-/

namespace A095525.P292851085638648245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095527 n - 1) (A095573 n)

end

end A095525.P292851085638648245

/-! ## A095525.P17940897967353038171

`A095527(n)-A339974(n+1)²%4`
-/

namespace A095525.P17940897967353038171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095527 n - Int.tmod (A339974 (n + 1) ^ 2) 4

end

end A095525.P17940897967353038171

/-! ## A095525.P8975583153592978179

`A095527(n)+A057428(A095505(n))`
-/

namespace A095525.P8975583153592978179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095527 n + A057428 (A095505 n).toNat

end

end A095525.P8975583153592978179

/-! ## A095525.P3646971341445525292

`A095527(n)+A057428(A095537(n))`
-/

namespace A095525.P3646971341445525292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095527 n + A057428 (A095537 n).toNat

end

end A095525.P3646971341445525292

/-! ## A095525.P18418040954770868498

`A095527(n)+A057428(A095539(n))`
-/

namespace A095525.P18418040954770868498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095527 n + A057428 (A095539 n).toNat

end

end A095525.P18418040954770868498

/-!
# A095527: a(n) = 67 written in base 13 - n.

The programs for A095527, there is no canonical definition to state claims against.
-/

/-! ## A095527.P5195017263311400804

`(A095525(n)+1)%A095573(n)`
-/

namespace A095527.P5195017263311400804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095525 n + 1) (A095573 n)

end

end A095527.P5195017263311400804

/-! ## A095527.P12943070341497822748

`A095525(n)+A339974(n+1)²%4`
-/

namespace A095527.P12943070341497822748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095525 n + Int.tmod (A339974 (n + 1) ^ 2) 4

end

end A095527.P12943070341497822748

/-! ## A095527.P2321059202775115660

`A020725(A095525(n))`
-/

namespace A095527.P2321059202775115660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095525 n).toNat

end

end A095527.P2321059202775115660

/-! ## A095527.P17849610755600135157

`A087156(A095525(n)+1)`
-/

namespace A095527.P17849610755600135157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A095525 n + 1).toNat

end

end A095527.P17849610755600135157

/-! ## A095527.P8680977642866533074

`A009056(A095525(n)-1)`
-/

namespace A095527.P8680977642866533074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A095525 n - 1).toNat

end

end A095527.P8680977642866533074

/-!
# A095529: a(n) = 68 written in base 13 - n.

The programs for A095529, there is no canonical definition to state claims against.
-/

/-! ## A095529.P1613281066481540578

`A119788(A095549(n))+A095527(n)`
-/

namespace A095529.P1613281066481540578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A095549 n).toNat + A095527 n

end

end A095529.P1613281066481540578

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

/-!
# A095533: a(n) = 70 written in base 11 - n.

The programs for A095533, there is no canonical definition to state claims against.
-/

/-! ## A095533.P4466495719552313220

`(A095535(n)-1)%A095545(n)`
-/

namespace A095533.P4466495719552313220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095535 n - 1) (A095545 n)

end

end A095533.P4466495719552313220

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

/-! ## A095533.P5766654352693253096

`A095535(n)-A232740(A095525(n))`
-/

namespace A095533.P5766654352693253096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095535 n - A232740 (A095525 n).toNat

end

end A095533.P5766654352693253096

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

/-! ## A095537.P1117307286802378041

`record[A095539(A163351(n))-1]`
-/

namespace A095537.P1117307286802378041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095539 (A163351 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095537.P1117307286802378041

/-! ## A095537.P4667888470335463997

`(A095539(n)-1)%A095555(n)`
-/

namespace A095537.P4667888470335463997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095539 n - 1) (A095555 n)

end

end A095537.P4667888470335463997

/-! ## A095537.P8901524769141500376

`A095539(n)%A095505(n)²-1`
-/

namespace A095537.P8901524769141500376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095539 n) (A095505 n ^ 2) - 1

end

end A095537.P8901524769141500376

/-! ## A095537.P6429806453843398718

`A095539(n)+A057428(A095513(n))`
-/

namespace A095537.P6429806453843398718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095539 n + A057428 (A095513 n).toNat

end

end A095537.P6429806453843398718

/-!
# A095539: a(n) = 73 written in base 14 - n.

The programs for A095539, there is no canonical definition to state claims against.
-/

/-! ## A095539.P6890708441458498921

`A095537(n)%A095529(n)+1`
-/

namespace A095539.P6890708441458498921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095537 n) (A095529 n) + 1

end

end A095539.P6890708441458498921

/-! ## A095539.P15995430964429789266

`(A095537(n)+1)%A095505(n)²`
-/

namespace A095539.P15995430964429789266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095537 n + 1) (A095505 n ^ 2)

end

end A095539.P15995430964429789266

/-! ## A095539.P11983433571126382797

`A095537(n)+val(A095499(n), 6)+1`
-/

namespace A095539.P11983433571126382797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095537 n + (SequenceMachineLib.valuation (A095499 n).toNat 6 + 1 : ℤ)

end

end A095539.P11983433571126382797

/-! ## A095539.P6887668115231886820

`A020725(A095537(n))`
-/

namespace A095539.P6887668115231886820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095537 n).toNat

end

end A095539.P6887668115231886820

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

/-! ## A095541.P11272080299138713186

`A020725(A095539(n))`
-/

namespace A095541.P11272080299138713186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095539 n).toNat

end

end A095541.P11272080299138713186

/-! ## A095541.P10489922199815146868

`A000027(A095539(n)+1)`
-/

namespace A095541.P10489922199815146868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095539 n + 1).toNat

end

end A095541.P10489922199815146868

/-! ## A095541.P12144517802489660749

`A095539(A004186(n))+1`
-/

namespace A095541.P12144517802489660749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095539 (A004186 n).toNat + 1

end

end A095541.P12144517802489660749

/-! ## A095541.P3692912600122943580

`A020725(A095537(n)+1)`
-/

namespace A095541.P3692912600122943580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095537 n + 1).toNat

end

end A095541.P3692912600122943580

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

/-! ## A095547.P11280416670975644021

`A095549(n+3)-A355739(A060114(n))`
-/

namespace A095547.P11280416670975644021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095549 (n + 3) - A355739 (A060114 n).toNat

end

end A095547.P11280416670975644021

/-! ## A095547.P17295976413675492227

`A095551(n+3)-A020639(A095537(2*n))`
-/

namespace A095547.P17295976413675492227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095551 (n + 3) - A020639 (A095537 (2 * n)).toNat

end

end A095547.P17295976413675492227

/-!
# A095549: a(n) = 78 written in base 15 - n.

The programs for A095549, there is no canonical definition to state claims against.
-/

/-! ## A095549.P327673286451254865

`A095551(A106039(n+1))-1`
-/

namespace A095549.P327673286451254865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095551 (A106039 (n + 1)).toNat - 1

end

end A095549.P327673286451254865

/-! ## A095549.P11234384098721160863

`(A095551(n)-1)%A095563(n)`
-/

namespace A095549.P11234384098721160863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095551 n - 1) (A095563 n)

end

end A095549.P11234384098721160863

/-! ## A095549.P5338551294536546156

`A095551(n)%A095565(n)-1`
-/

namespace A095549.P5338551294536546156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095551 n) (A095565 n) - 1

end

end A095549.P5338551294536546156

/-!
# A095551: a(n) = 79 written in base 15 - n.

The programs for A095551, there is no canonical definition to state claims against.
-/

/-! ## A095551.P6839883783050718299

`(A095549(n)+1)%A095563(n)`
-/

namespace A095551.P6839883783050718299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095549 n + 1) (A095563 n)

end

end A095551.P6839883783050718299

/-! ## A095551.P6261664482452008237

`A011760(A095549(n))`
-/

namespace A095551.P6261664482452008237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095549 n).toNat

end

end A095551.P6261664482452008237

/-! ## A095551.P4355667400854351108

`A000027(A095549(n)+1)`
-/

namespace A095551.P4355667400854351108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095549 n + 1).toNat

end

end A095551.P4355667400854351108

/-! ## A095551.P9130196872855100809

`A009056(A095549(n)-1)`
-/

namespace A095551.P9130196872855100809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A095549 n - 1).toNat

end

end A095551.P9130196872855100809

/-! ## A095551.P8209406510606344253

`A171463(A095549(n)-1)`
-/

namespace A095551.P8209406510606344253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A095549 n - 1).toNat

end

end A095551.P8209406510606344253

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

/-! ## A095557.P16690240896502498502

`(A095559(n)-1)%A095545(n)`
-/

namespace A095557.P16690240896502498502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095559 n - 1) (A095545 n)

end

end A095557.P16690240896502498502

/-! ## A095557.P11403872500821989941

`A095559(n)%A095567(n)-1`
-/

namespace A095557.P11403872500821989941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095559 n) (A095567 n) - 1

end

end A095557.P11403872500821989941

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

/-! ## A095559.P15505052085244206218

`A095557(n)%A095545(n)+1`
-/

namespace A095559.P15505052085244206218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095557 n) (A095545 n) + 1

end

end A095559.P15505052085244206218

/-! ## A095559.P11272310130906153233

`(A095557(n)+1)%A095567(n)`
-/

namespace A095559.P11272310130906153233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095557 n + 1) (A095567 n)

end

end A095559.P11272310130906153233

/-! ## A095559.P15233006235182812309

`A232740(A095525(n))+A095557(n)`
-/

namespace A095559.P15233006235182812309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (A095525 n).toNat + A095557 n

end

end A095559.P15233006235182812309

/-! ## A095559.P5378359570434170464

`A232740(A095527(n))+A095557(n)`
-/

namespace A095559.P5378359570434170464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (A095527 n).toNat + A095557 n

end

end A095559.P5378359570434170464

/-! ## A095559.P12782160825097556856

`A000027(A095557(n)+1)`
-/

namespace A095559.P12782160825097556856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095557 n + 1).toNat

end

end A095559.P12782160825097556856

/-!
# A095563: a(n) = 85 written in base 14 - n.

The programs for A095563, there is no canonical definition to state claims against.
-/

/-! ## A095563.P14479408311518030629

`A000027(A095565(n)-1)`
-/

namespace A095563.P14479408311518030629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095565 n - 1).toNat

end

end A095563.P14479408311518030629

/-! ## A095563.P9487222559953817772

`A095565(A084383(n))-1`
-/

namespace A095563.P9487222559953817772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095565 (A084383 n).toNat - 1

end

end A095563.P9487222559953817772

/-! ## A095563.P1655908405791418086

`(A095565(n)-1)%A095547(n)`
-/

namespace A095563.P1655908405791418086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095565 n - 1) (A095547 n)

end

end A095563.P1655908405791418086

/-! ## A095563.P4569366130068413039

`∑{d}[1-A095565(n), A000010(#)]`
-/

namespace A095563.P4569366130068413039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A095563.P4569366130068413039

/-! ## A095563.P17474961279891492755

`A280193(A022180(n))+A095565(n)`
-/

namespace A095563.P17474961279891492755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A022180 n).toNat + A095565 n

end

end A095563.P17474961279891492755

/-!
# A095565: a(n) = 86 written in base 14 - n.

The programs for A095565, there is no canonical definition to state claims against.
-/

/-! ## A095565.P239485300318231613

`A000027(A095563(n)+1)`
-/

namespace A095565.P239485300318231613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095563 n + 1).toNat

end

end A095565.P239485300318231613

/-! ## A095565.P14667737101509041378

`A095563(A062279(n))+1`
-/

namespace A095565.P14667737101509041378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095563 (A062279 n).toNat + 1

end

end A095565.P14667737101509041378

/-! ## A095565.P10988838352094427510

`A095563(A084383(n))+1`
-/

namespace A095565.P10988838352094427510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095563 (A084383 n).toNat + 1

end

end A095565.P10988838352094427510

/-! ## A095565.P1026173687099800627

`A095563(A130571(n))+1`
-/

namespace A095565.P1026173687099800627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095563 (A130571 n).toNat + 1

end

end A095565.P1026173687099800627

/-! ## A095565.P18181577671210311382

`A095563(A130576(n))+1`
-/

namespace A095565.P18181577671210311382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095563 (A130576 n).toNat + 1

end

end A095565.P18181577671210311382

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

/-! ## A095567.P17667669528060138844

`A011760(A095563(n+4)+1)`
-/

namespace A095567.P17667669528060138844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095563 (n + 4) + 1).toNat

end

end A095567.P17667669528060138844

/-!
# A095569: a(n) = 88 written in base 12 - n.

The programs for A095569, there is no canonical definition to state claims against.
-/

/-! ## A095569.P5550803606681470956

`(A095571(n)-1)%A095557(n)`
-/

namespace A095569.P5550803606681470956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095571 n - 1) (A095557 n)

end

end A095569.P5550803606681470956

/-! ## A095569.P16048469551122181992

`A095571(n)%A095559(n)-1`
-/

namespace A095569.P16048469551122181992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095571 n) (A095559 n) - 1

end

end A095569.P16048469551122181992

/-! ## A095569.P5317049216219289087

`A165573(A020714(n))+A095571(n)`
-/

namespace A095569.P5317049216219289087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (A020714 n).toNat + A095571 n

end

end A095569.P5317049216219289087

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

/-! ## A095571.P1623676598223118591

`(A095569(n)+1)%A095559(n)`
-/

namespace A095571.P1623676598223118591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095569 n + 1) (A095559 n)

end

end A095571.P1623676598223118591

/-! ## A095571.P18023939539084974891

`A095569(n)%A095557(n)+1`
-/

namespace A095571.P18023939539084974891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095569 n) (A095557 n) + 1

end

end A095571.P18023939539084974891

/-! ## A095571.P14418398466447589984

`A232740(A095539(n))+A095569(n)`
-/

namespace A095571.P14418398466447589984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (A095539 n).toNat + A095569 n

end

end A095571.P14418398466447589984

/-! ## A095571.P1047915105776576282

`A232740(A095563(n))+A095569(n)`
-/

namespace A095571.P1047915105776576282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (A095563 n).toNat + A095569 n

end

end A095571.P1047915105776576282

/-! ## A095571.P14535842028291042371

`A095569(n)+A054977(A343458(n+1))`
-/

namespace A095571.P14535842028291042371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095569 n + A054977 (A343458 (n + 1)).toNat

end

end A095571.P14535842028291042371

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

/-! ## A095573.P6017579704289684187

`A232740(A095569(n+3))+A095571(n)`
-/

namespace A095573.P6017579704289684187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232740 (A095569 (n + 3)).toNat + A095571 n

end

end A095573.P6017579704289684187

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

/-! ## A095575.P16456072761701404376

`A233583(A095579(n)-1)`
-/

namespace A095575.P16456072761701404376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A095579 n - 1).toNat

end

end A095575.P16456072761701404376

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

/-! ## A095577.P148771359263536465

`A095579(A004186(n))-1`
-/

namespace A095577.P148771359263536465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095579 (A004186 n).toNat - 1

end

end A095577.P148771359263536465

/-! ## A095577.P6260501846559321125

`A028310(A095579(n)-1)`
-/

namespace A095577.P6260501846559321125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A095579 n - 1).toNat

end

end A095577.P6260501846559321125

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

/-! ## A095579.P18368936434106784295

`A004151(A095577(n)+1)`
-/

namespace A095579.P18368936434106784295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A095577 n + 1).toNat

end

end A095579.P18368936434106784295

/-! ## A095579.P8922548527414435593

`A095577(A004186(n))+1`
-/

namespace A095579.P8922548527414435593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095577 (A004186 n).toNat + 1

end

end A095579.P8922548527414435593

/-! ## A095579.P10528160185020044623

`A004719(A095577(n)+1)`
-/

namespace A095579.P10528160185020044623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A095577 n + 1).toNat

end

end A095579.P10528160185020044623

/-! ## A095579.P18214300457517284432

`A028310(A095577(n)+1)`
-/

namespace A095579.P18214300457517284432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A095577 n + 1).toNat

end

end A095579.P18214300457517284432

/-!
# A095581: a(n) = 94 written in base 11 - n.

The programs for A095581, there is no canonical definition to state claims against.
-/

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

/-! ## A095581.P2137822223543824733

`A095579(A055649(n+4))+1`
-/

namespace A095581.P2137822223543824733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095579 (A055649 (n + 4)).toNat + 1

end

end A095581.P2137822223543824733

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

/-! ## A095587.P3892260607523015397

`A095691(A095692(n+1))+A095585(n)`
-/

namespace A095587.P3892260607523015397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095691 (A095692 (n + 1)).toNat + A095585 n

end

end A095587.P3892260607523015397

/-! ## A095587.P16394291722281473212

`A095585(n)+A095597(n)-A095595(n)`
-/

namespace A095587.P16394291722281473212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095585 n + (A095597 n - A095595 n)

end

end A095587.P16394291722281473212

/-! ## A095587.P5085604170141234512

`A011760(A095585(n))`
-/

namespace A095587.P5085604170141234512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A095585 n).toNat

end

end A095587.P5085604170141234512

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

/-! ## A095593.P12562651264964432776

`A153152(A065147(n+3))`
-/

namespace A095593.P12562651264964432776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A065147 (n + 3)).toNat

end

end A095593.P12562651264964432776

/-! ## A095593.P10052172477645048292

`A095595(n)-A055229(A095595(n))`
-/

namespace A095593.P10052172477645048292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095595 n - A055229 (A095595 n).toNat

end

end A095593.P10052172477645048292

/-! ## A095593.P12134714684982554035

`A023444(A095597(n)+1)-A152654(A337886(n+2))`
-/

namespace A095593.P12134714684982554035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A095597 n + 1).toNat - A152654 (A337886 (n + 2)).toNat

end

end A095593.P12134714684982554035

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

/-! ## A095595.P9839644658748709910

`A153881(n+2)+A095597(n)`
-/

namespace A095595.P9839644658748709910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A095597 n

end

end A095595.P9839644658748709910

/-! ## A095595.P14101245292410971255

`A165326(2*(n+1))+A095597(n)`
-/

namespace A095595.P14101245292410971255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A095597 n

end

end A095595.P14101245292410971255

/-! ## A095595.P14430427369173815351

`A280193(2*n+1)+A095597(n)`
-/

namespace A095595.P14430427369173815351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A095597 n

end

end A095595.P14430427369173815351

/-! ## A095595.P4336334290631437417

`A001478(n+1)+A095597(n)+n`
-/

namespace A095595.P4336334290631437417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A095597 n + (n : ℤ))

end

end A095595.P4336334290631437417

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

/-! ## A095597.P15042193870141587036

`abs(xor(A016303(n), A095595(n)))`
-/

namespace A095597.P15042193870141587036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A016303 n) (A095595 n)|

end

end A095597.P15042193870141587036

/-! ## A095597.P17925603374383272632

`abs(xor(A033999(n), A095595(n)))`
-/

namespace A095597.P17925603374383272632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A033999 n) (A095595 n)|

end

end A095597.P17925603374383272632

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

