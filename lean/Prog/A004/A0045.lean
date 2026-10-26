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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A004500: Tersum n + 11.

The programs for A004500, there is no canonical definition to state claims against.
-/

/-! ## A004500.P2884019543642980529

`A004499(A004482(n))`
-/

namespace A004500.P2884019543642980529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004482 n).toNat

end

end A004500.P2884019543642980529

/-! ## A004500.P5688647980798099606

`A131713(n)+A004499(n)`
-/

namespace A004500.P5688647980798099606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004499 n

end

end A004500.P5688647980798099606

/-! ## A004500.P17776865007475169125

`A004499(A061347(n+1)+n)`
-/

namespace A004500.P17776865007475169125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A061347 (n + 1) + (n : ℤ)).toNat

end

end A004500.P17776865007475169125

/-! ## A004500.P7507645767790542027

`A004503(n)+n-A004492(n)`
-/

namespace A004500.P7507645767790542027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 n + ((n : ℤ) - A004492 n)

end

end A004500.P7507645767790542027

/-! ## A004500.P10669445614089670196

`A004506(n)+n-A004495(n)`
-/

namespace A004500.P10669445614089670196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 n + ((n : ℤ) - A004495 n)

end

end A004500.P10669445614089670196

/-! ## A004500.P16285072360586345108

`A004499(2*n+1-A004483(n+1))`
-/

namespace A004500.P16285072360586345108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 ((2 * n + 1 : ℤ) - A004483 (n + 1)).toNat

end

end A004500.P16285072360586345108

/-! ## A004500.P15115357403862430494

`A004494(n)+A004498(n)-A004492(n)`
-/

namespace A004500.P15115357403862430494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 n + (A004498 n - A004492 n)

end

end A004500.P15115357403862430494

/-! ## A004500.P4894729417981474432

`A004494(n)+A004499(n)-A004493(n)`
-/

namespace A004500.P4894729417981474432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 n + (A004499 n - A004493 n)

end

end A004500.P4894729417981474432

/-! ## A004500.P11251509830310693021

`A004499(A004499(n)+n-A004498(n))`
-/

namespace A004500.P11251509830310693021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004499 n + ((n : ℤ) - A004498 n)).toNat

end

end A004500.P11251509830310693021

/-! ## A004500.P11581568587442580514

`A004493(n+1)+A004498(n)-A004494(n+1)`
-/

namespace A004500.P11581568587442580514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (n + 1) + (A004498 n - A004494 (n + 1))

end

end A004500.P11581568587442580514

/-! ## A004500.P4292796989934826440

`A004498(A004483(n))`
-/

namespace A004500.P4292796989934826440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004483 n).toNat

end

end A004500.P4292796989934826440

/-! ## A004500.P8017325870587335200

`A004506(A004492(n))`
-/

namespace A004500.P8017325870587335200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004492 n).toNat

end

end A004500.P8017325870587335200

/-! ## A004500.P9330498598298213637

`A004505(A004493(n))`
-/

namespace A004500.P9330498598298213637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004493 n).toNat

end

end A004500.P9330498598298213637

/-! ## A004500.P7475047606246082057

`A004504(A004494(n))`
-/

namespace A004500.P7475047606246082057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004494 n).toNat

end

end A004500.P7475047606246082057

/-! ## A004500.P1144191020927353604

`A004503(A004495(n))`
-/

namespace A004500.P1144191020927353604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004495 n).toNat

end

end A004500.P1144191020927353604

/-! ## A004500.P9083640785772256488

`A004502(A004496(n))`
-/

namespace A004500.P9083640785772256488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004496 n).toNat

end

end A004500.P9083640785772256488

/-! ## A004500.P11862595292525277936

`A004501(A004497(n))`
-/

namespace A004500.P11862595292525277936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004497 n).toNat

end

end A004500.P11862595292525277936

/-! ## A004500.P3969755542477260258

`A004499(n-A099837(n+1))`
-/

namespace A004500.P3969755542477260258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 ((n : ℤ) - A099837 (n + 1)).toNat

end

end A004500.P3969755542477260258

/-! ## A004500.P10858309842649401104

`A004498(n-A131713(n+1))`
-/

namespace A004500.P10858309842649401104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 ((n : ℤ) - A131713 (n + 1)).toNat

end

end A004500.P10858309842649401104

/-! ## A004500.P624424425151381595

`A004498(n)-A061347(n+3)`
-/

namespace A004500.P624424425151381595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 n - A061347 (n + 3)

end

end A004500.P624424425151381595

/-!
# A004501: Tersum n + 12.

The programs for A004501, there is no canonical definition to state claims against.
-/

/-! ## A004501.P2537601216083139906

`A004503(A004482(n))`
-/

namespace A004501.P2537601216083139906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004482 n).toNat

end

end A004501.P2537601216083139906

/-! ## A004501.P8493332626376352439

`A004502(n)-A061347(n+1)`
-/

namespace A004501.P8493332626376352439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 n - A061347 (n + 1)

end

end A004501.P8493332626376352439

/-! ## A004501.P15555012869017554135

`A004502(n)+n-A004482(n)`
-/

namespace A004501.P15555012869017554135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 n + ((n : ℤ) - A004482 n)

end

end A004501.P15555012869017554135

/-! ## A004501.P8061214499930651680

`A004503(n)+n-A004483(n)`
-/

namespace A004501.P8061214499930651680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 n + ((n : ℤ) - A004483 n)

end

end A004501.P8061214499930651680

/-! ## A004501.P8902105849346469558

`A004492(n)+A004499(n)-A004482(n)`
-/

namespace A004501.P8902105849346469558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 n + (A004499 n - A004482 n)

end

end A004501.P8902105849346469558

/-! ## A004501.P3362062768132272105

`A004493(n)+A004498(n)-A004482(n)`
-/

namespace A004501.P3362062768132272105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n + (A004498 n - A004482 n)

end

end A004501.P3362062768132272105

/-! ## A004501.P1680961332041777433

`A004494(n)+A004498(n)-A004483(n)`
-/

namespace A004501.P1680961332041777433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 n + (A004498 n - A004483 n)

end

end A004501.P1680961332041777433

/-! ## A004501.P18257789486381838422

`A004502(A004483(n))`
-/

namespace A004501.P18257789486381838422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004483 n).toNat

end

end A004501.P18257789486381838422

/-! ## A004501.P4617041566408841769

`A004498(A004492(n))`
-/

namespace A004501.P4617041566408841769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004492 n).toNat

end

end A004501.P4617041566408841769

/-! ## A004501.P8832591921230759331

`A004500(A004493(n))`
-/

namespace A004501.P8832591921230759331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004493 n).toNat

end

end A004501.P8832591921230759331

/-! ## A004501.P8869486482641579705

`A004499(A004494(n))`
-/

namespace A004501.P8869486482641579705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004494 n).toNat

end

end A004501.P8869486482641579705

/-! ## A004501.P3516023413733482087

`A004504(A004495(n))`
-/

namespace A004501.P3516023413733482087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004495 n).toNat

end

end A004501.P3516023413733482087

/-! ## A004501.P1482840609274595358

`A004506(A004496(n))`
-/

namespace A004501.P1482840609274595358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004496 n).toNat

end

end A004501.P1482840609274595358

/-! ## A004501.P8977817769534544549

`A004505(A004497(n))`
-/

namespace A004501.P8977817769534544549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004497 n).toNat

end

end A004501.P8977817769534544549

/-! ## A004501.P12425418031595641513

`A131713(n+1)+A004503(n)`
-/

namespace A004501.P12425418031595641513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 1) + A004503 n

end

end A004501.P12425418031595641513

/-! ## A004501.P13672446496189238611

`A004502(n-A131713(n+1))`
-/

namespace A004501.P13672446496189238611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 ((n : ℤ) - A131713 (n + 1)).toNat

end

end A004501.P13672446496189238611

/-! ## A004501.P11234338430985521043

`A004494(A004482(A004498(n)))`
-/

namespace A004501.P11234338430985521043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004482 (A004498 n).toNat).toNat

end

end A004501.P11234338430985521043

/-! ## A004501.P299037485239408556

`A004492(A004483(A004499(n)))`
-/

namespace A004501.P299037485239408556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004483 (A004499 n).toNat).toNat

end

end A004501.P299037485239408556

/-! ## A004501.P16114074533177048276

`A004510(A004507(n))`
-/

namespace A004501.P16114074533177048276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004507 n).toNat

end

end A004501.P16114074533177048276

/-! ## A004501.P8685020319920978041

`A004512(A004508(n))`
-/

namespace A004501.P8685020319920978041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004508 n).toNat

end

end A004501.P8685020319920978041

/-!
# A004502: Tersum n + 13.

The programs for A004502, there is no canonical definition to state claims against.
-/

/-! ## A004502.P1140777606256578252

`A004501(A004482(n))`
-/

namespace A004502.P1140777606256578252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004482 n).toNat

end

end A004502.P1140777606256578252

/-! ## A004502.P10319800419699419832

`A004503(n)-A131713(n)`
-/

namespace A004502.P10319800419699419832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 n - A131713 n

end

end A004502.P10319800419699419832

/-! ## A004502.P6123207772315359374

`A061347(n+1)+A004501(n)`
-/

namespace A004502.P6123207772315359374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + A004501 n

end

end A004502.P6123207772315359374

/-! ## A004502.P8086462043493007472

`A004493(n)+A004498(n)-n`
-/

namespace A004502.P8086462043493007472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n + (A004498 n - (n : ℤ))

end

end A004502.P8086462043493007472

/-! ## A004502.P15345952059031499830

`A004493(n)+A004499(n)-A004482(n)`
-/

namespace A004502.P15345952059031499830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n + (A004499 n - A004482 n)

end

end A004502.P15345952059031499830

/-! ## A004502.P16481060775184399495

`A004494(n)+A004499(n)-A004483(n)`
-/

namespace A004502.P16481060775184399495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 n + (A004499 n - A004483 n)

end

end A004502.P16481060775184399495

/-! ## A004502.P9316686965566826756

`A004503(A004483(n))`
-/

namespace A004502.P9316686965566826756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004483 n).toNat

end

end A004502.P9316686965566826756

/-! ## A004502.P2576261002809587432

`A004499(A004492(n))`
-/

namespace A004502.P2576261002809587432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004492 n).toNat

end

end A004502.P2576261002809587432

/-! ## A004502.P9909569967375780062

`A004498(A004493(n))`
-/

namespace A004502.P9909569967375780062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004493 n).toNat

end

end A004502.P9909569967375780062

/-! ## A004502.P4902722872942368882

`A004500(A004494(n))`
-/

namespace A004502.P4902722872942368882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004494 n).toNat

end

end A004502.P4902722872942368882

/-! ## A004502.P4445701615570136538

`A004505(A004495(n))`
-/

namespace A004502.P4445701615570136538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004495 n).toNat

end

end A004502.P4445701615570136538

/-! ## A004502.P10729061008720405865

`A004504(A004496(n))`
-/

namespace A004502.P10729061008720405865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004496 n).toNat

end

end A004502.P10729061008720405865

/-! ## A004502.P8536903489765584444

`A004506(A004497(n))`
-/

namespace A004502.P8536903489765584444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004497 n).toNat

end

end A004502.P8536903489765584444

/-! ## A004502.P13735752112100648702

`A004492(A004482(A004498(n)))`
-/

namespace A004502.P13735752112100648702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004482 (A004498 n).toNat).toNat

end

end A004502.P13735752112100648702

/-! ## A004502.P6852934141115430441

`A004511(A004507(n))`
-/

namespace A004502.P6852934141115430441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004507 n).toNat

end

end A004502.P6852934141115430441

/-! ## A004502.P8238835142778795176

`A004510(A004508(n))`
-/

namespace A004502.P8238835142778795176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004508 n).toNat

end

end A004502.P8238835142778795176

/-! ## A004502.P3465405774533683295

`A004512(A004509(n))`
-/

namespace A004502.P3465405774533683295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004509 n).toNat

end

end A004502.P3465405774533683295

/-! ## A004502.P3192464794950559649

`A004494(A004482(A004499(n)))`
-/

namespace A004502.P3192464794950559649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004482 (A004499 n).toNat).toNat

end

end A004502.P3192464794950559649

/-! ## A004502.P12441453965027440948

`A004493(A004482(A004500(n)))`
-/

namespace A004502.P12441453965027440948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004482 (A004500 n).toNat).toNat

end

end A004502.P12441453965027440948

/-! ## A004502.P14625160591504101150

`A004482(A004482(A004503(n)))`
-/

namespace A004502.P14625160591504101150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004503 n).toNat).toNat

end

end A004502.P14625160591504101150

/-!
# A004503: Tersum n + 14.

The programs for A004503, there is no canonical definition to state claims against.
-/

/-! ## A004503.P326255024008855391

`A004502(A004482(n))`
-/

namespace A004503.P326255024008855391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004482 n).toNat

end

end A004503.P326255024008855391

/-! ## A004503.P12515452420998257752

`A131713(n)+A004502(n)`
-/

namespace A004503.P12515452420998257752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004502 n

end

end A004503.P12515452420998257752

/-! ## A004503.P13073486291676201234

`A004502(A061347(n+1)+n)`
-/

namespace A004503.P13073486291676201234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A061347 (n + 1) + (n : ℤ)).toNat

end

end A004503.P13073486291676201234

/-! ## A004503.P16290833945614934310

`A004483(n)+A004501(n)-n`
-/

namespace A004503.P16290833945614934310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 n + (A004501 n - (n : ℤ))

end

end A004503.P16290833945614934310

/-! ## A004503.P13991063905904628660

`A004502(2*n+1-A004483(n+1))`
-/

namespace A004503.P13991063905904628660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 ((2 * n + 1 : ℤ) - A004483 (n + 1)).toNat

end

end A004503.P13991063905904628660

/-! ## A004503.P14412793867393980062

`A004493(n)+A004500(n)-A004482(n)`
-/

namespace A004503.P14412793867393980062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n + (A004500 n - A004482 n)

end

end A004503.P14412793867393980062

/-! ## A004503.P4701807507838791551

`A004494(n)+A004499(n)-A004482(n)`
-/

namespace A004503.P4701807507838791551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 n + (A004499 n - A004482 n)

end

end A004503.P4701807507838791551

/-! ## A004503.P15431296638838314104

`A004494(n)+A004502(n)-A004493(n)`
-/

namespace A004503.P15431296638838314104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 n + (A004502 n - A004493 n)

end

end A004503.P15431296638838314104

/-! ## A004503.P2725476051386032933

`A004501(A004483(n))`
-/

namespace A004503.P2725476051386032933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004483 n).toNat

end

end A004503.P2725476051386032933

/-! ## A004503.P6327709256337354850

`A004500(A004492(n))`
-/

namespace A004503.P6327709256337354850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004492 n).toNat

end

end A004503.P6327709256337354850

/-! ## A004503.P4998022304356082801

`A004499(A004493(n))`
-/

namespace A004503.P4998022304356082801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004493 n).toNat

end

end A004503.P4998022304356082801

/-! ## A004503.P16960248598082408975

`A004498(A004494(n))`
-/

namespace A004503.P16960248598082408975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004494 n).toNat

end

end A004503.P16960248598082408975

/-! ## A004503.P1034073978053702469

`A004506(A004495(n))`
-/

namespace A004503.P1034073978053702469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004495 n).toNat

end

end A004503.P1034073978053702469

/-! ## A004503.P8209331424318087595

`A004505(A004496(n))`
-/

namespace A004503.P8209331424318087595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004496 n).toNat

end

end A004503.P8209331424318087595

/-! ## A004503.P1023119017061251434

`A004504(A004497(n))`
-/

namespace A004503.P1023119017061251434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004497 n).toNat

end

end A004503.P1023119017061251434

/-! ## A004503.P5798809193925027324

`A004493(A004482(A004498(n)))`
-/

namespace A004503.P5798809193925027324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004482 (A004498 n).toNat).toNat

end

end A004503.P5798809193925027324

/-! ## A004503.P10956695336001457711

`A004494(A004483(A004499(n)))`
-/

namespace A004503.P10956695336001457711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004494 (A004483 (A004499 n).toNat).toNat

end

end A004503.P10956695336001457711

/-! ## A004503.P5129970292896673574

`A004512(A004507(n))`
-/

namespace A004503.P5129970292896673574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004507 n).toNat

end

end A004503.P5129970292896673574

/-! ## A004503.P9856417253430815026

`A004511(A004508(n))`
-/

namespace A004503.P9856417253430815026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004508 n).toNat

end

end A004503.P9856417253430815026

/-! ## A004503.P15358817358339487441

`A004510(A004509(n))`
-/

namespace A004503.P15358817358339487441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004509 n).toNat

end

end A004503.P15358817358339487441

/-!
# A004504: Tersum n + 15.

The programs for A004504, there is no canonical definition to state claims against.
-/

/-! ## A004504.P13585990090437739673

`A004506(A004482(n))`
-/

namespace A004504.P13585990090437739673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004482 n).toNat

end

end A004504.P13585990090437739673

/-! ## A004504.P10618043294380527009

`A004505(n)-A061347(n+1)`
-/

namespace A004504.P10618043294380527009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 n - A061347 (n + 1)

end

end A004504.P10618043294380527009

/-! ## A004504.P15531071962249001061

`A004495(n)+A004498(n)-n`
-/

namespace A004504.P15531071962249001061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 n + (A004498 n - (n : ℤ))

end

end A004504.P15531071962249001061

/-! ## A004504.P4529115226304338586

`A004505(n)+n-A004482(n)`
-/

namespace A004504.P4529115226304338586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 n + ((n : ℤ) - A004482 n)

end

end A004504.P4529115226304338586

/-! ## A004504.P12063444369830748642

`A004506(n)+n-A004483(n)`
-/

namespace A004504.P12063444369830748642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 n + ((n : ℤ) - A004483 n)

end

end A004504.P12063444369830748642

/-! ## A004504.P15603478920887370334

`A004495(n)+A004499(n)-A004482(n)`
-/

namespace A004504.P15603478920887370334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 n + (A004499 n - A004482 n)

end

end A004504.P15603478920887370334

/-! ## A004504.P2374473391446913362

`A004496(n)+A004498(n)-A004482(n)`
-/

namespace A004504.P2374473391446913362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 n + (A004498 n - A004482 n)

end

end A004504.P2374473391446913362

/-! ## A004504.P6321360941068297934

`A004497(n)+A004498(n)-A004483(n)`
-/

namespace A004504.P6321360941068297934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 n + (A004498 n - A004483 n)

end

end A004504.P6321360941068297934

/-! ## A004504.P11917771876157253861

`A004505(A004483(n))`
-/

namespace A004504.P11917771876157253861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004483 n).toNat

end

end A004504.P11917771876157253861

/-! ## A004504.P9958127549724386087

`A004501(A004492(n))`
-/

namespace A004504.P9958127549724386087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004492 n).toNat

end

end A004504.P9958127549724386087

/-! ## A004504.P15948378723188430914

`A004503(A004493(n))`
-/

namespace A004504.P15948378723188430914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004493 n).toNat

end

end A004504.P15948378723188430914

/-! ## A004504.P9738400388134935970

`A004502(A004494(n))`
-/

namespace A004504.P9738400388134935970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004494 n).toNat

end

end A004504.P9738400388134935970

/-! ## A004504.P1045252849005876682

`A004498(A004495(n))`
-/

namespace A004504.P1045252849005876682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004495 n).toNat

end

end A004504.P1045252849005876682

/-! ## A004504.P17260413794475260084

`A004500(A004496(n))`
-/

namespace A004504.P17260413794475260084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004496 n).toNat

end

end A004504.P17260413794475260084

/-! ## A004504.P8485670039427973267

`A004499(A004497(n))`
-/

namespace A004504.P8485670039427973267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004497 n).toNat

end

end A004504.P8485670039427973267

/-! ## A004504.P12505041757819852748

`A131713(n+1)+A004506(n)`
-/

namespace A004504.P12505041757819852748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 1) + A004506 n

end

end A004504.P12505041757819852748

/-! ## A004504.P10590646488823487214

`A004505(n-A131713(n+1))`
-/

namespace A004504.P10590646488823487214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 ((n : ℤ) - A131713 (n + 1)).toNat

end

end A004504.P10590646488823487214

/-! ## A004504.P7028411808022519177

`A004497(A004482(A004498(n)))`
-/

namespace A004504.P7028411808022519177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (A004482 (A004498 n).toNat).toNat

end

end A004504.P7028411808022519177

/-! ## A004504.P1817823886663849932

`A004513(A004507(n))`
-/

namespace A004504.P1817823886663849932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004507 n).toNat

end

end A004504.P1817823886663849932

/-! ## A004504.P488045345014417943

`A004510(A004510(n))`
-/

namespace A004504.P488045345014417943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004510 n).toNat

end

end A004504.P488045345014417943

/-!
# A004505: Tersum n + 16.

The programs for A004505, there is no canonical definition to state claims against.
-/

/-! ## A004505.P9338588367458567204

`A004504(A004482(n))`
-/

namespace A004505.P9338588367458567204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004482 n).toNat

end

end A004505.P9338588367458567204

/-! ## A004505.P5120936215924699821

`A004506(n)-A131713(n)`
-/

namespace A004505.P5120936215924699821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 n - A131713 n

end

end A004505.P5120936215924699821

/-! ## A004505.P16352935197383594078

`A061347(n+1)+A004504(n)`
-/

namespace A004505.P16352935197383594078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + A004504 n

end

end A004505.P16352935197383594078

/-! ## A004505.P17691402557595558120

`A004496(n)+A004498(n)-n`
-/

namespace A004505.P17691402557595558120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 n + (A004498 n - (n : ℤ))

end

end A004505.P17691402557595558120

/-! ## A004505.P2068535486387815539

`A004496(n)+A004499(n)-A004482(n)`
-/

namespace A004505.P2068535486387815539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 n + (A004499 n - A004482 n)

end

end A004505.P2068535486387815539

/-! ## A004505.P14775697581175948410

`A004497(n)+A004499(n)-A004483(n)`
-/

namespace A004505.P14775697581175948410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 n + (A004499 n - A004483 n)

end

end A004505.P14775697581175948410

/-! ## A004505.P16597798710656339690

`A004506(A004483(n))`
-/

namespace A004505.P16597798710656339690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004483 n).toNat

end

end A004505.P16597798710656339690

/-! ## A004505.P3465118169537091898

`A004502(A004492(n))`
-/

namespace A004505.P3465118169537091898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004492 n).toNat

end

end A004505.P3465118169537091898

/-! ## A004505.P16552416359759577982

`A004501(A004493(n))`
-/

namespace A004505.P16552416359759577982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004493 n).toNat

end

end A004505.P16552416359759577982

/-! ## A004505.P1146451431875292968

`A004503(A004494(n))`
-/

namespace A004505.P1146451431875292968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004494 n).toNat

end

end A004505.P1146451431875292968

/-! ## A004505.P13703732982293211468

`A004499(A004495(n))`
-/

namespace A004505.P13703732982293211468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004495 n).toNat

end

end A004505.P13703732982293211468

/-! ## A004505.P1699212599462500752

`A004498(A004496(n))`
-/

namespace A004505.P1699212599462500752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004496 n).toNat

end

end A004505.P1699212599462500752

/-! ## A004505.P4905345744535331238

`A004500(A004497(n))`
-/

namespace A004505.P4905345744535331238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004497 n).toNat

end

end A004505.P4905345744535331238

/-! ## A004505.P9210514033918751354

`A004495(A004482(A004498(n)))`
-/

namespace A004505.P9210514033918751354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (A004482 (A004498 n).toNat).toNat

end

end A004505.P9210514033918751354

/-! ## A004505.P4550676655667147277

`A004496(A004483(A004499(n)))`
-/

namespace A004505.P4550676655667147277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004483 (A004499 n).toNat).toNat

end

end A004505.P4550676655667147277

/-! ## A004505.P14509492295976241345

`A004513(A004508(n))`
-/

namespace A004505.P14509492295976241345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004508 n).toNat

end

end A004505.P14509492295976241345

/-! ## A004505.P10275685766712483435

`A004511(A004510(n))`
-/

namespace A004505.P10275685766712483435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004510 n).toNat

end

end A004505.P10275685766712483435

/-! ## A004505.P332473006044771648

`A004512(A004512(n))`
-/

namespace A004505.P332473006044771648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004512 n).toNat

end

end A004505.P332473006044771648

/-! ## A004505.P4874579951005500879

`A004496(A004482(A004500(n)))`
-/

namespace A004505.P4874579951005500879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004482 (A004500 n).toNat).toNat

end

end A004505.P4874579951005500879

/-! ## A004505.P18016045228754735118

`A004492(A004482(A004501(n)))`
-/

namespace A004505.P18016045228754735118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004482 (A004501 n).toNat).toNat

end

end A004505.P18016045228754735118

/-!
# A004506: Tersum n + 17.

The programs for A004506, there is no canonical definition to state claims against.
-/

/-! ## A004506.P12974230128733703032

`A004505(A004482(n))`
-/

namespace A004506.P12974230128733703032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004482 n).toNat

end

end A004506.P12974230128733703032

/-! ## A004506.P5738638796265525938

`A131713(n)+A004505(n)`
-/

namespace A004506.P5738638796265525938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004505 n

end

end A004506.P5738638796265525938

/-! ## A004506.P5741522708586176836

`A004505(A061347(n+1)+n)`
-/

namespace A004506.P5741522708586176836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A061347 (n + 1) + (n : ℤ)).toNat

end

end A004506.P5741522708586176836

/-! ## A004506.P5098316568652655410

`A004483(n)+A004504(n)-n`
-/

namespace A004506.P5098316568652655410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 n + (A004504 n - (n : ℤ))

end

end A004506.P5098316568652655410

/-! ## A004506.P5352381141091428879

`A004497(n)+A004498(n)-n`
-/

namespace A004506.P5352381141091428879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 n + (A004498 n - (n : ℤ))

end

end A004506.P5352381141091428879

/-! ## A004506.P1235228653074523257

`A004497(n)+A004499(n)-A004482(n)`
-/

namespace A004506.P1235228653074523257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 n + (A004499 n - A004482 n)

end

end A004506.P1235228653074523257

/-! ## A004506.P17993178277463776697

`A004504(A004483(n))`
-/

namespace A004506.P17993178277463776697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004483 n).toNat

end

end A004506.P17993178277463776697

/-! ## A004506.P15883774161777258762

`A004503(A004492(n))`
-/

namespace A004506.P15883774161777258762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004492 n).toNat

end

end A004506.P15883774161777258762

/-! ## A004506.P2351283915585767839

`A004502(A004493(n))`
-/

namespace A004506.P2351283915585767839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004493 n).toNat

end

end A004506.P2351283915585767839

/-! ## A004506.P8859513164144003412

`A004501(A004494(n))`
-/

namespace A004506.P8859513164144003412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004494 n).toNat

end

end A004506.P8859513164144003412

/-! ## A004506.P5581769465237267185

`A004500(A004495(n))`
-/

namespace A004506.P5581769465237267185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004495 n).toNat

end

end A004506.P5581769465237267185

/-! ## A004506.P10594691646954239984

`A004499(A004496(n))`
-/

namespace A004506.P10594691646954239984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004496 n).toNat

end

end A004506.P10594691646954239984

/-! ## A004506.P17701360439213284175

`A004498(A004497(n))`
-/

namespace A004506.P17701360439213284175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004497 n).toNat

end

end A004506.P17701360439213284175

/-! ## A004506.P15008375590773824651

`A004496(A004482(A004498(n)))`
-/

namespace A004506.P15008375590773824651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004482 (A004498 n).toNat).toNat

end

end A004506.P15008375590773824651

/-! ## A004506.P17509073532175958122

`A004497(A004483(A004499(n)))`
-/

namespace A004506.P17509073532175958122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (A004483 (A004499 n).toNat).toNat

end

end A004506.P17509073532175958122

/-! ## A004506.P14115091771218886190

`A004513(A004509(n))`
-/

namespace A004506.P14115091771218886190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004509 n).toNat

end

end A004506.P14115091771218886190

/-! ## A004506.P5647996251581239921

`A004512(A004510(n))`
-/

namespace A004506.P5647996251581239921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004510 n).toNat

end

end A004506.P5647996251581239921

/-! ## A004506.P14063723200689331865

`A004511(A004511(n))`
-/

namespace A004506.P14063723200689331865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004511 n).toNat

end

end A004506.P14063723200689331865

/-! ## A004506.P15754172956232038153

`A004482(A004482(A004504(n)))`
-/

namespace A004506.P15754172956232038153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004504 n).toNat).toNat

end

end A004506.P15754172956232038153

/-! ## A004506.P15416374000116996064

`A004492(A004492(A004500(n)))`
-/

namespace A004506.P15416374000116996064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004492 (A004500 n).toNat).toNat

end

end A004506.P15416374000116996064

/-!
# A004507: Tersum n + 18.

The programs for A004507, there is no canonical definition to state claims against.
-/

/-! ## A004507.P831255252428981062

`A004509(A004482(n))`
-/

namespace A004507.P831255252428981062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 (A004482 n).toNat

end

end A004507.P831255252428981062

/-! ## A004507.P6146166452872154422

`A004508(n)-A061347(n+1)`
-/

namespace A004507.P6146166452872154422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 n - A061347 (n + 1)

end

end A004507.P6146166452872154422

/-! ## A004507.P9670312607880161222

`A004508(n)+n-A004482(n)`
-/

namespace A004507.P9670312607880161222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 n + ((n : ℤ) - A004482 n)

end

end A004507.P9670312607880161222

/-! ## A004507.P13306978659023714411

`A004509(n)+n-A004483(n)`
-/

namespace A004507.P13306978659023714411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 n + ((n : ℤ) - A004483 n)

end

end A004507.P13306978659023714411

/-! ## A004507.P11618075967515239044

`A004510(n)+n-A004492(n)`
-/

namespace A004507.P11618075967515239044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 n + ((n : ℤ) - A004492 n)

end

end A004507.P11618075967515239044

/-! ## A004507.P14423794594439840936

`A004513(n)+n-A004495(n)`
-/

namespace A004507.P14423794594439840936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 n + ((n : ℤ) - A004495 n)

end

end A004507.P14423794594439840936

/-! ## A004507.P8764481873836346645

`A004508(A004483(n))`
-/

namespace A004507.P8764481873836346645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004483 n).toNat

end

end A004507.P8764481873836346645

/-! ## A004507.P2838454950271809758

`A004513(A004492(n))`
-/

namespace A004507.P2838454950271809758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004492 n).toNat

end

end A004507.P2838454950271809758

/-! ## A004507.P608062270353144820

`A004510(A004495(n))`
-/

namespace A004507.P608062270353144820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004495 n).toNat

end

end A004507.P608062270353144820

/-! ## A004507.P15943711274527215265

`A004512(A004496(n))`
-/

namespace A004507.P15943711274527215265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004496 n).toNat

end

end A004507.P15943711274527215265

/-! ## A004507.P13991748330626130444

`A004511(A004497(n))`
-/

namespace A004507.P13991748330626130444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004497 n).toNat

end

end A004507.P13991748330626130444

/-! ## A004507.P15211264057024881431

`A131713(n+1)+A004509(n)`
-/

namespace A004507.P15211264057024881431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 1) + A004509 n

end

end A004507.P15211264057024881431

/-! ## A004507.P7977095107869243221

`A004508(n-A131713(n+1))`
-/

namespace A004507.P7977095107869243221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 ((n : ℤ) - A131713 (n + 1)).toNat

end

end A004507.P7977095107869243221

/-! ## A004507.P12963526326023961556

`A004498(A004498(n))`
-/

namespace A004507.P12963526326023961556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004498 n).toNat

end

end A004507.P12963526326023961556

/-! ## A004507.P2460841418067998167

`A004500(A004499(n))`
-/

namespace A004507.P2460841418067998167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004499 n).toNat

end

end A004507.P2460841418067998167

/-! ## A004507.P4596845476842143129

`A004504(A004501(n))`
-/

namespace A004507.P4596845476842143129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004501 n).toNat

end

end A004507.P4596845476842143129

/-! ## A004507.P16463095518298708993

`A004506(A004502(n))`
-/

namespace A004507.P16463095518298708993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004502 n).toNat

end

end A004507.P16463095518298708993

/-! ## A004507.P3869101506266489175

`A004505(A004503(n))`
-/

namespace A004507.P3869101506266489175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004503 n).toNat

end

end A004507.P3869101506266489175

/-! ## A004507.P1627127728364009158

`A004482(A004482(A004508(n)))`
-/

namespace A004507.P1627127728364009158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004508 n).toNat).toNat

end

end A004507.P1627127728364009158

/-! ## A004507.P8952611937977044649

`A004500(A004483(A004500(n)))`
-/

namespace A004507.P8952611937977044649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004483 (A004500 n).toNat).toNat

end

end A004507.P8952611937977044649

/-!
# A004508: Tersum n + 19.

The programs for A004508, there is no canonical definition to state claims against.
-/

/-! ## A004508.P9917214689411039439

`A004507(A004482(n))`
-/

namespace A004508.P9917214689411039439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 (A004482 n).toNat

end

end A004508.P9917214689411039439

/-! ## A004508.P14467397353427571842

`A004509(n)-A131713(n)`
-/

namespace A004508.P14467397353427571842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 n - A131713 n

end

end A004508.P14467397353427571842

/-! ## A004508.P4997248736733504969

`A061347(n+1)+A004507(n)`
-/

namespace A004508.P4997248736733504969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + A004507 n

end

end A004508.P4997248736733504969

/-! ## A004508.P15178006366454838245

`A004499(n)+A004513(n)-A004504(n)`
-/

namespace A004508.P15178006366454838245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 n + (A004513 n - A004504 n)

end

end A004508.P15178006366454838245

/-! ## A004508.P16476466167586474897

`A004509(A004483(n))`
-/

namespace A004508.P16476466167586474897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 (A004483 n).toNat

end

end A004508.P16476466167586474897

/-! ## A004508.P16897631369388928030

`A004513(A004493(n))`
-/

namespace A004508.P16897631369388928030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004493 n).toNat

end

end A004508.P16897631369388928030

/-! ## A004508.P5715288338877267916

`A004511(A004495(n))`
-/

namespace A004508.P5715288338877267916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004495 n).toNat

end

end A004508.P5715288338877267916

/-! ## A004508.P767608758332680448

`A004510(A004496(n))`
-/

namespace A004508.P767608758332680448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004496 n).toNat

end

end A004508.P767608758332680448

/-! ## A004508.P13615667677803159704

`A004512(A004497(n))`
-/

namespace A004508.P13615667677803159704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004497 n).toNat

end

end A004508.P13615667677803159704

/-! ## A004508.P13039267777489085660

`A004511(A004492(A004492(n)))`
-/

namespace A004508.P13039267777489085660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004492 (A004492 n).toNat).toNat

end

end A004508.P13039267777489085660

/-! ## A004508.P10229787471930572063

`A131713(n+2)+A004507(n)`
-/

namespace A004508.P10229787471930572063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2) + A004507 n

end

end A004508.P10229787471930572063

/-! ## A004508.P13308341323456413157

`A004499(A004498(n))`
-/

namespace A004508.P13308341323456413157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004498 n).toNat

end

end A004508.P13308341323456413157

/-! ## A004508.P3656444543347565388

`A061347(n+1)+A004498(A004498(n))`
-/

namespace A004508.P3656444543347565388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + A004498 (A004498 n).toNat

end

end A004508.P3656444543347565388

/-! ## A004508.P6346929476835176370

`A004499(A099837(n+1)+A004499(n))`
-/

namespace A004508.P6346929476835176370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A099837 (n + 1) + A004499 n).toNat

end

end A004508.P6346929476835176370

/-! ## A004508.P4354539276206769293

`A004499(A004499(n)-A061347(n+1))`
-/

namespace A004508.P4354539276206769293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004499 n - A061347 (n + 1)).toNat

end

end A004508.P4354539276206769293

/-! ## A004508.P8903522886752991571

`A004499(A004499(n))-A131713(n)`
-/

namespace A004508.P8903522886752991571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004499 n).toNat - A131713 n

end

end A004508.P8903522886752991571

/-! ## A004508.P17933151134704729981

`A004498(A004498(n-A099837(n+1)))`
-/

namespace A004508.P17933151134704729981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A004498 ((n : ℤ) - A099837 (n + 1)).toNat).toNat

end

end A004508.P17933151134704729981

/-! ## A004508.P16536676611028830575

`A004500(A004500(n))`
-/

namespace A004508.P16536676611028830575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004500 n).toNat

end

end A004508.P16536676611028830575

/-! ## A004508.P17091186109363845120

`A004505(A004501(n))`
-/

namespace A004508.P17091186109363845120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004501 n).toNat

end

end A004508.P17091186109363845120

/-! ## A004508.P70165335994068778

`A004504(A004502(n))`
-/

namespace A004508.P70165335994068778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004502 n).toNat

end

end A004508.P70165335994068778

/-!
# A004509: Tersum n + 20.

The programs for A004509, there is no canonical definition to state claims against.
-/

/-! ## A004509.P12845681778903804343

`A004508(A004482(n))`
-/

namespace A004509.P12845681778903804343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004482 n).toNat

end

end A004509.P12845681778903804343

/-! ## A004509.P15775662983594365881

`A131713(n)+A004508(n)`
-/

namespace A004509.P15775662983594365881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004508 n

end

end A004509.P15775662983594365881

/-! ## A004509.P2651355731360329268

`A004508(A061347(n+1)+n)`
-/

namespace A004509.P2651355731360329268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A061347 (n + 1) + (n : ℤ)).toNat

end

end A004509.P2651355731360329268

/-! ## A004509.P9211059289398945784

`A004483(n)+A004507(n)-n`
-/

namespace A004509.P9211059289398945784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 n + (A004507 n - (n : ℤ))

end

end A004509.P9211059289398945784

/-! ## A004509.P695196854150253452

`A004512(n)+n-A004492(n)`
-/

namespace A004509.P695196854150253452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 n + ((n : ℤ) - A004492 n)

end

end A004509.P695196854150253452

/-! ## A004509.P12867981194480055104

`A004507(A004483(n))`
-/

namespace A004509.P12867981194480055104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 (A004483 n).toNat

end

end A004509.P12867981194480055104

/-! ## A004509.P1599192610760370805

`A004513(A004494(n))`
-/

namespace A004509.P1599192610760370805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004494 n).toNat

end

end A004509.P1599192610760370805

/-! ## A004509.P12654059210383380059

`A004512(A004495(n))`
-/

namespace A004509.P12654059210383380059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004495 n).toNat

end

end A004509.P12654059210383380059

/-! ## A004509.P9369360824946042094

`A004511(A004496(n))`
-/

namespace A004509.P9369360824946042094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004496 n).toNat

end

end A004509.P9369360824946042094

/-! ## A004509.P16864501420612157158

`A004510(A004497(n))`
-/

namespace A004509.P16864501420612157158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004497 n).toNat

end

end A004509.P16864501420612157158

/-! ## A004509.P11233903563016645616

`A004507(n-A131713(n+1))`
-/

namespace A004509.P11233903563016645616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 ((n : ℤ) - A131713 (n + 1)).toNat

end

end A004509.P11233903563016645616

/-! ## A004509.P13218014308243202514

`A004512(A004492(A004492(n)))`
-/

namespace A004509.P13218014308243202514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004492 (A004492 n).toNat).toNat

end

end A004509.P13218014308243202514

/-! ## A004509.P15665645735229583494

`A004500(A004498(n))`
-/

namespace A004509.P15665645735229583494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004498 n).toNat

end

end A004509.P15665645735229583494

/-! ## A004509.P9889675506244703262

`A004500(A004500(A004494(A004493(A004493(n)))))`
-/

namespace A004509.P9889675506244703262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004500 (A004494 (A004493 (A004493 n).toNat).toNat).toNat).toNat

end

end A004509.P9889675506244703262

/-! ## A004509.P13956827435475940229

`A004499(A004499(n))`
-/

namespace A004509.P13956827435475940229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 (A004499 n).toNat

end

end A004509.P13956827435475940229

/-! ## A004509.P4809542014969437080

`A004506(A004501(n))`
-/

namespace A004509.P4809542014969437080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004501 n).toNat

end

end A004509.P4809542014969437080

/-! ## A004509.P14599766591154309366

`A004505(A004502(n))`
-/

namespace A004509.P14599766591154309366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004502 n).toNat

end

end A004509.P14599766591154309366

/-! ## A004509.P15530314492114046154

`A004504(A004503(n))`
-/

namespace A004509.P15530314492114046154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004503 n).toNat

end

end A004509.P15530314492114046154

/-! ## A004509.P8877595127503172095

`A004482(A004482(A004507(n)))`
-/

namespace A004509.P8877595127503172095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004507 n).toNat).toNat

end

end A004509.P8877595127503172095

/-! ## A004509.P4914409546026269713

`A004500(A004482(A004500(n)))`
-/

namespace A004509.P4914409546026269713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004482 (A004500 n).toNat).toNat

end

end A004509.P4914409546026269713

/-!
# A004510: Tersum n + 21.

The programs for A004510, there is no canonical definition to state claims against.
-/

/-! ## A004510.P604679387094620481

`A004512(A004482(n))`
-/

namespace A004510.P604679387094620481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004482 n).toNat

end

end A004510.P604679387094620481

/-! ## A004510.P7915520149115274685

`A004511(n)-A061347(n+1)`
-/

namespace A004510.P7915520149115274685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 n - A061347 (n + 1)

end

end A004510.P7915520149115274685

/-! ## A004510.P5120848295482519693

`A004511(n)+n-A004482(n)`
-/

namespace A004510.P5120848295482519693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 n + ((n : ℤ) - A004482 n)

end

end A004510.P5120848295482519693

/-! ## A004510.P16191841303863166530

`A004512(n)+n-A004483(n)`
-/

namespace A004510.P16191841303863166530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 n + ((n : ℤ) - A004483 n)

end

end A004510.P16191841303863166530

/-! ## A004510.P10070321342797793630

`A004511(A064429(n))-A049347(n)`
-/

namespace A004510.P10070321342797793630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A064429 n).toNat - A049347 n

end

end A004510.P10070321342797793630

/-! ## A004510.P2438455830360190688

`A004511(A004483(n))`
-/

namespace A004510.P2438455830360190688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004483 n).toNat

end

end A004510.P2438455830360190688

/-! ## A004510.P9557853698167086967

`A004507(A004492(n))`
-/

namespace A004510.P9557853698167086967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 (A004492 n).toNat

end

end A004510.P9557853698167086967

/-! ## A004510.P17768334832035868099

`A004509(A004493(n))`
-/

namespace A004510.P17768334832035868099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 (A004493 n).toNat

end

end A004510.P17768334832035868099

/-! ## A004510.P8844694637993115053

`A004508(A004494(n))`
-/

namespace A004510.P8844694637993115053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004494 n).toNat

end

end A004510.P8844694637993115053

/-! ## A004510.P8029273370471231929

`A004513(A004495(n))`
-/

namespace A004510.P8029273370471231929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004495 n).toNat

end

end A004510.P8029273370471231929

/-! ## A004510.P14103655931426634938

`A131713(n+1)+A004512(n)`
-/

namespace A004510.P14103655931426634938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 1) + A004512 n

end

end A004510.P14103655931426634938

/-! ## A004510.P6844942546633069910

`A004511(n-A131713(n+1))`
-/

namespace A004510.P6844942546633069910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 ((n : ℤ) - A131713 (n + 1)).toNat

end

end A004510.P6844942546633069910

/-! ## A004510.P13102822306054902601

`A004508(A004496(A004496(n)))`
-/

namespace A004510.P13102822306054902601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004496 (A004496 n).toNat).toNat

end

end A004510.P13102822306054902601

/-! ## A004510.P15700919192935787431

`A004511(A064429(A049347(n)+n))`
-/

namespace A004510.P15700919192935787431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A064429 (A049347 n + (n : ℤ)).toNat).toNat

end

end A004510.P15700919192935787431

/-! ## A004510.P8457252435954777180

`A004501(A004498(n))`
-/

namespace A004510.P8457252435954777180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004498 n).toNat

end

end A004510.P8457252435954777180

/-! ## A004510.P10127420913944170678

`A004503(A004499(n))`
-/

namespace A004510.P10127420913944170678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004499 n).toNat

end

end A004510.P10127420913944170678

/-! ## A004510.P4888775014917236312

`A004502(A004500(n))`
-/

namespace A004510.P4888775014917236312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004500 n).toNat

end

end A004510.P4888775014917236312

/-! ## A004510.P14651582830852738350

`A004504(A004504(n))`
-/

namespace A004510.P14651582830852738350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004504 n).toNat

end

end A004510.P14651582830852738350

/-! ## A004510.P2312759581731905021

`A004506(A004505(n))`
-/

namespace A004510.P2312759581731905021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004505 n).toNat

end

end A004510.P2312759581731905021

/-! ## A004510.P1155976926468158043

`A004500(A004482(A004501(n)))`
-/

namespace A004510.P1155976926468158043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004482 (A004501 n).toNat).toNat

end

end A004510.P1155976926468158043

/-!
# A004511: Tersum n + 22.

The programs for A004511, there is no canonical definition to state claims against.
-/

/-! ## A004511.P12643734015178407839

`A004510(A004482(n))`
-/

namespace A004511.P12643734015178407839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004482 n).toNat

end

end A004511.P12643734015178407839

/-! ## A004511.P15872273274846582794

`A004512(n)-A131713(n)`
-/

namespace A004511.P15872273274846582794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 n - A131713 n

end

end A004511.P15872273274846582794

/-! ## A004511.P1127360479917357803

`A061347(n+1)+A004510(n)`
-/

namespace A004511.P1127360479917357803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + A004510 n

end

end A004511.P1127360479917357803

/-! ## A004511.P15470749354230155575

`A004492(n)+A004508(n)-n`
-/

namespace A004511.P15470749354230155575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 n + (A004508 n - (n : ℤ))

end

end A004511.P15470749354230155575

/-! ## A004511.P18344943520231045222

`A004512(A004483(n))`
-/

namespace A004511.P18344943520231045222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004483 n).toNat

end

end A004511.P18344943520231045222

/-! ## A004511.P3609938937467543664

`A004508(A004492(n))`
-/

namespace A004511.P3609938937467543664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004492 n).toNat

end

end A004511.P3609938937467543664

/-! ## A004511.P8744843087881661887

`A004507(A004493(n))`
-/

namespace A004511.P8744843087881661887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 (A004493 n).toNat

end

end A004511.P8744843087881661887

/-! ## A004511.P6109615493760029300

`A004509(A004494(n))`
-/

namespace A004511.P6109615493760029300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 (A004494 n).toNat

end

end A004511.P6109615493760029300

/-! ## A004511.P4382685385051555858

`A004513(A004496(n))`
-/

namespace A004511.P4382685385051555858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004496 n).toNat

end

end A004511.P4382685385051555858

/-! ## A004511.P13562824756192355033

`A004508(A004495(A004495(n)))`
-/

namespace A004511.P13562824756192355033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004495 (A004495 n).toNat).toNat

end

end A004511.P13562824756192355033

/-! ## A004511.P332572832699471193

`A004502(A004498(n))`
-/

namespace A004511.P332572832699471193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004498 n).toNat

end

end A004511.P332572832699471193

/-! ## A004511.P8140227892846090068

`A004501(A004499(n))`
-/

namespace A004511.P8140227892846090068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004499 n).toNat

end

end A004511.P8140227892846090068

/-! ## A004511.P17979987847013977106

`A004503(A004500(n))`
-/

namespace A004511.P17979987847013977106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004500 n).toNat

end

end A004511.P17979987847013977106

/-! ## A004511.P13653862705319697100

`A004505(A004504(n))`
-/

namespace A004511.P13653862705319697100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004504 n).toNat

end

end A004511.P13653862705319697100

/-! ## A004511.P4373324994335475739

`A004506(A004506(n))`
-/

namespace A004511.P4373324994335475739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004506 n).toNat

end

end A004511.P4373324994335475739

/-! ## A004511.P12885535907160407895

`A004500(A004482(A004502(n)))`
-/

namespace A004511.P12885535907160407895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004482 (A004502 n).toNat).toNat

end

end A004511.P12885535907160407895

/-! ## A004511.P10108809126616951715

`A004492(A004482(A004507(n)))`
-/

namespace A004511.P10108809126616951715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004482 (A004507 n).toNat).toNat

end

end A004511.P10108809126616951715

/-! ## A004511.P8692499226130723905

`A004482(A004482(A004512(n)))`
-/

namespace A004511.P8692499226130723905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004512 n).toNat).toNat

end

end A004511.P8692499226130723905

/-! ## A004511.P6929168089346379935

`A004502(A004495(A004501(n)))`
-/

namespace A004511.P6929168089346379935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004495 (A004501 n).toNat).toNat

end

end A004511.P6929168089346379935

/-! ## A004511.P16359775182568637689

`A004503(A004495(A004503(n)))`
-/

namespace A004511.P16359775182568637689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004495 (A004503 n).toNat).toNat

end

end A004511.P16359775182568637689

/-!
# A004512: Tersum n + 23.

The programs for A004512, there is no canonical definition to state claims against.
-/

/-! ## A004512.P17988147590411538114

`A004511(A004482(n))`
-/

namespace A004512.P17988147590411538114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004482 n).toNat

end

end A004512.P17988147590411538114

/-! ## A004512.P8869638531835075182

`A131713(n)+A004511(n)`
-/

namespace A004512.P8869638531835075182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004511 n

end

end A004512.P8869638531835075182

/-! ## A004512.P17546992092881077659

`A004511(A061347(n+1)+n)`
-/

namespace A004512.P17546992092881077659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A061347 (n + 1) + (n : ℤ)).toNat

end

end A004512.P17546992092881077659

/-! ## A004512.P5694497468282228684

`A004483(n)+A004510(n)-n`
-/

namespace A004512.P5694497468282228684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 n + (A004510 n - (n : ℤ))

end

end A004512.P5694497468282228684

/-! ## A004512.P4454571893765410412

`A049347(A064429(n))+A004511(A064429(n))`
-/

namespace A004512.P4454571893765410412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A064429 n).toNat + A004511 (A064429 n).toNat

end

end A004512.P4454571893765410412

/-! ## A004512.P13368128847205986535

`A004510(A004483(n))`
-/

namespace A004512.P13368128847205986535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004483 n).toNat

end

end A004512.P13368128847205986535

/-! ## A004512.P4123343793520896427

`A004509(A004492(n))`
-/

namespace A004512.P4123343793520896427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 (A004492 n).toNat

end

end A004512.P4123343793520896427

/-! ## A004512.P15679831421501878406

`A004508(A004493(n))`
-/

namespace A004512.P15679831421501878406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004493 n).toNat

end

end A004512.P15679831421501878406

/-! ## A004512.P4350896864726251441

`A004507(A004494(n))`
-/

namespace A004512.P4350896864726251441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 (A004494 n).toNat

end

end A004512.P4350896864726251441

/-! ## A004512.P5747052786018077941

`A004513(A004497(n))`
-/

namespace A004512.P5747052786018077941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004497 n).toNat

end

end A004512.P5747052786018077941

/-! ## A004512.P2330509645217268899

`A004509(A004495(A004495(n)))`
-/

namespace A004512.P2330509645217268899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 (A004495 (A004495 n).toNat).toNat

end

end A004512.P2330509645217268899

/-! ## A004512.P7001698667458979373

`A004508(A004495(A004496(n)))`
-/

namespace A004512.P7001698667458979373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004495 (A004496 n).toNat).toNat

end

end A004512.P7001698667458979373

/-! ## A004512.P1078929571603853034

`A004503(A004498(n))`
-/

namespace A004512.P1078929571603853034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004503 (A004498 n).toNat

end

end A004512.P1078929571603853034

/-! ## A004512.P13216476717858330311

`A004502(A004499(n))`
-/

namespace A004512.P13216476717858330311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004502 (A004499 n).toNat

end

end A004512.P13216476717858330311

/-! ## A004512.P6720411335468456237

`A004501(A004500(n))`
-/

namespace A004512.P6720411335468456237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004501 (A004500 n).toNat

end

end A004512.P6720411335468456237

/-! ## A004512.P2161842723906629177

`A004506(A004504(n))`
-/

namespace A004512.P2161842723906629177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004506 (A004504 n).toNat

end

end A004512.P2161842723906629177

/-! ## A004512.P5761528586502929156

`A004505(A004505(n))`
-/

namespace A004512.P5761528586502929156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004505 (A004505 n).toNat

end

end A004512.P5761528586502929156

/-! ## A004512.P11664902969098808759

`A004482(A004482(A004510(n)))`
-/

namespace A004512.P11664902969098808759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A004482 (A004510 n).toNat).toNat

end

end A004512.P11664902969098808759

/-! ## A004512.P9771417626178263218

`A004500(A004482(A004503(n)))`
-/

namespace A004512.P9771417626178263218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004500 (A004482 (A004503 n).toNat).toNat

end

end A004512.P9771417626178263218

/-! ## A004512.P9006069973154306871

`A004492(A004482(A004508(n)))`
-/

namespace A004512.P9006069973154306871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004482 (A004508 n).toNat).toNat

end

end A004512.P9006069973154306871

/-!
# A004513: Tersum n + 24.

The programs for A004513, there is no canonical definition to state claims against.
-/

/-! ## A004513.P127598962452467147

`A004495(n)+A004507(n)-n`
-/

namespace A004513.P127598962452467147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 n + (A004507 n - (n : ℤ))

end

end A004513.P127598962452467147

/-! ## A004513.P14191138938129744172

`A004488(A004501(n))-A117966(n)`
-/

namespace A004513.P14191138938129744172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004501 n).toNat - A117966 n

end

end A004513.P14191138938129744172

/-! ## A004513.P526390852791067746

`A004495(n)+A004508(n)-A004482(n)`
-/

namespace A004513.P526390852791067746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 n + (A004508 n - A004482 n)

end

end A004513.P526390852791067746

/-! ## A004513.P10382244577174928999

`A004495(n)+A004509(n)-A004483(n)`
-/

namespace A004513.P10382244577174928999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 n + (A004509 n - A004483 n)

end

end A004513.P10382244577174928999

/-! ## A004513.P10783245784052942320

`A004497(n)+A004507(n)-A004483(n)`
-/

namespace A004513.P10783245784052942320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 n + (A004507 n - A004483 n)

end

end A004513.P10783245784052942320

/-! ## A004513.P10301033577176586589

`A004495(n)+A004510(n)-A004492(n)`
-/

namespace A004513.P10301033577176586589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 n + (A004510 n - A004492 n)

end

end A004513.P10301033577176586589

/-! ## A004513.P17051024913191291674

`A117966(A004488(n))+A004488(A004501(n))`
-/

namespace A004513.P17051024913191291674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A004488 n).toNat + A004488 (A004501 n).toNat

end

end A004513.P17051024913191291674

/-! ## A004513.P17027338744809004829

`A004488(A004506(n))-A117966(A004496(n))`
-/

namespace A004513.P17027338744809004829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004506 n).toNat - A117966 (A004496 n).toNat

end

end A004513.P17027338744809004829

/-! ## A004513.P14681955174978965528

`A004488(A004510(n))-A117966(A004507(n))`
-/

namespace A004513.P14681955174978965528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004510 n).toNat - A117966 (A004507 n).toNat

end

end A004513.P14681955174978965528

/-! ## A004513.P5903427630058049485

`A004488(A004512(n))-A117966(A004508(n))`
-/

namespace A004513.P5903427630058049485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004512 n).toNat - A117966 (A004508 n).toNat

end

end A004513.P5903427630058049485

/-! ## A004513.P4875490867831570667

`A004510(A004492(n))`
-/

namespace A004513.P4875490867831570667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004492 n).toNat

end

end A004513.P4875490867831570667

/-! ## A004513.P14689163504889491860

`A004512(A004493(n))`
-/

namespace A004513.P14689163504889491860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004493 n).toNat

end

end A004513.P14689163504889491860

/-! ## A004513.P1194280946340188640

`A004511(A004494(n))`
-/

namespace A004513.P1194280946340188640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004511 (A004494 n).toNat

end

end A004513.P1194280946340188640

/-! ## A004513.P55175562343500502

`A004507(A004495(n))`
-/

namespace A004513.P55175562343500502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 (A004495 n).toNat

end

end A004513.P55175562343500502

/-! ## A004513.P4791739150031180705

`A004509(A004496(n))`
-/

namespace A004513.P4791739150031180705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004509 (A004496 n).toNat

end

end A004513.P4791739150031180705

/-! ## A004513.P11460267841277629532

`A004508(A004497(n))`
-/

namespace A004513.P11460267841277629532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004508 (A004497 n).toNat

end

end A004513.P11460267841277629532

/-! ## A004513.P15974596231765005493

`A004512(A004492(A004482(n)))`
-/

namespace A004513.P15974596231765005493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004512 (A004492 (A004482 n).toNat).toNat

end

end A004513.P15974596231765005493

/-! ## A004513.P8580512497507328581

`A004510(A004510(n)+n-A004507(n))`
-/

namespace A004513.P8580512497507328581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004510 (A004510 n + ((n : ℤ) - A004507 n)).toNat

end

end A004513.P8580512497507328581

/-! ## A004513.P8670811723111840270

`A004504(A004498(n))`
-/

namespace A004513.P8670811723111840270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004498 n).toNat

end

end A004513.P8670811723111840270

/-! ## A004513.P8413979142253145834

`A004504(A004504(n)+n-A004495(n))`
-/

namespace A004513.P8413979142253145834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004504 (A004504 n + ((n : ℤ) - A004495 n)).toNat

end

end A004513.P8413979142253145834

/-!
# A004514: Generalized nim sum n + n in base 4.

The programs for A004514, the canonical program `A004514.P10787267126789005372` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004514 has offset 0).

The definition of A004514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004514.P10787267126789005372

`2*(n-a(floor(n/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004514

/-- `2*(n-a(floor(n/2)))` -/
def P10787267126789005372.Spec : Prop :=
  ∀ n, P10787267126789005372.a n = A004514 n

theorem P10787267126789005372.correct : P10787267126789005372.Spec := by
  intro n
  simp only [A004514]

end A004514

/-! ## A004514.P2976582529632026345

`A088442(n)-1`
-/

namespace A004514.P2976582529632026345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 n - 1

end

end A004514.P2976582529632026345

namespace A004514

/-- `A088442(n)-1` -/
def P2976582529632026345.Spec : Prop :=
  ∀ n, P2976582529632026345.a n = A004514 n

theorem P2976582529632026345.correct : P2976582529632026345.Spec := by
  intro n
  simp only [A004514, Nat.add_sub_cancel, A004514.P2976582529632026345.a, A004514.P10787267126789005372.a, A088442, A088442.P5388418706274842335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004514

/-! ## A004514.P8192509163387885839

`2*A063694(n)`
-/

namespace A004514.P8192509163387885839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063694 n

end

end A004514.P8192509163387885839

namespace A004514

/-- `2*A063694(n)` -/
def P8192509163387885839.Spec : Prop :=
  ∀ n, P8192509163387885839.a n = A004514 n

end A004514

/-! ## A004514.P937989498326296278

`n+A053985(n)`
-/

namespace A004514.P937989498326296278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A053985 n

end

end A004514.P937989498326296278

namespace A004514

/-- `n+A053985(n)` -/
def P937989498326296278.Spec : Prop :=
  ∀ n, P937989498326296278.a n = A004514 n

end A004514

/-! ## A004514.P13008958909629419555

`A063695(2*n)`
-/

namespace A004514.P13008958909629419555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (2 * n)

end

end A004514.P13008958909629419555

namespace A004514

/-- `A063695(2*n)` -/
def P13008958909629419555.Spec : Prop :=
  ∀ n, P13008958909629419555.a n = A004514 n

end A004514

/-! ## A004514.P7572435800230769607

`2*xor(n, a(floor(n/2)))` with `a(0)=0`
-/

namespace A004514.P7572435800230769607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * Nat.xor n (a ⌊(n : ℚ) / 2⌋.toNat)

end

end A004514.P7572435800230769607

namespace A004514

/-- `2*xor(n, a(floor(n/2)))` -/
def P7572435800230769607.Spec : Prop :=
  ∀ n, (P7572435800230769607.a n : ℤ) = A004514 n

end A004514

/-! ## A004514.P5111939853424133573

`xor(n, A048647(n))`
-/

namespace A004514.P5111939853424133573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048647 n)

end

end A004514.P5111939853424133573

namespace A004514

/-- `xor(n, A048647(n))` -/
def P5111939853424133573.Spec : Prop :=
  ∀ n, P5111939853424133573.a n = A004514 n

end A004514

/-! ## A004514.P686392160427405233

`A005843(A063694(n))`
-/

namespace A004514.P686392160427405233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063694 n).toNat

end

end A004514.P686392160427405233

namespace A004514

/-- `A005843(A063694(n))` -/
def P686392160427405233.Spec : Prop :=
  ∀ n, P686392160427405233.a n = A004514 n

end A004514

/-! ## A004514.P5219979839851063339

`A062880(A059905(n))`
-/

namespace A004514.P5219979839851063339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (A059905 n).toNat

end

end A004514.P5219979839851063339

namespace A004514

/-- `A062880(A059905(n))` -/
def P5219979839851063339.Spec : Prop :=
  ∀ n, P5219979839851063339.a n = A004514 n

end A004514

/-! ## A004514.P5223893764861349208

`A317050(A006068(n))+n`
-/

namespace A004514.P5223893764861349208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 (A006068 n).toNat + (n : ℤ)

end

end A004514.P5223893764861349208

namespace A004514

/-- `A317050(A006068(n))+n` -/
def P5223893764861349208.Spec : Prop :=
  ∀ n, P5223893764861349208.a n = A004514 n

end A004514

/-! ## A004514.P7390313087316457820

`A053985(n)-A001489(n)`
-/

namespace A004514.P7390313087316457820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n - A001489 n

end

end A004514.P7390313087316457820

namespace A004514

/-- `A053985(n)-A001489(n)` -/
def P7390313087316457820.Spec : Prop :=
  ∀ n, P7390313087316457820.a n = A004514 n

end A004514

/-! ## A004514.P12922969178660659873

`A005843(n-A063695(n))`
-/

namespace A004514.P12922969178660659873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - A063695 n).toNat

end

end A004514.P12922969178660659873

namespace A004514

/-- `A005843(n-A063695(n))` -/
def P12922969178660659873.Spec : Prop :=
  ∀ n, P12922969178660659873.a n = A004514 n

end A004514

/-! ## A004514.P13593436269332658841

`A006015(n-A063695(n))`
-/

namespace A004514.P13593436269332658841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 ((n : ℤ) - A063695 n).toNat

end

end A004514.P13593436269332658841

namespace A004514

/-- `A006015(n-A063695(n))` -/
def P13593436269332658841.Spec : Prop :=
  ∀ n, P13593436269332658841.a n = A004514 n

end A004514

/-! ## A004514.P2294338724615661522

`A057300(n-A063695(n))`
-/

namespace A004514.P2294338724615661522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 ((n : ℤ) - A063695 n).toNat

end

end A004514.P2294338724615661522

namespace A004514

/-- `A057300(n-A063695(n))` -/
def P2294338724615661522.Spec : Prop :=
  ∀ n, P2294338724615661522.a n = A004514 n

end A004514

/-! ## A004514.P2316446859894949678

`and(A005843(n), A088442(n))`
-/

namespace A004514.P2316446859894949678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005843 n) (A088442 n)

end

end A004514.P2316446859894949678

namespace A004514

/-- `and(A005843(n), A088442(n))` -/
def P2316446859894949678.Spec : Prop :=
  ∀ n, P2316446859894949678.a n = A004514 n

end A004514

/-! ## A004514.P7442028569969515169

`and(A057300(n), A379578(n))`
-/

namespace A004514.P7442028569969515169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057300 n) (A379578 n)

end

end A004514.P7442028569969515169

namespace A004514

/-- `and(A057300(n), A379578(n))` -/
def P7442028569969515169.Spec : Prop :=
  ∀ n, P7442028569969515169.a n = A004514 n

end A004514

/-! ## A004514.P10300951564951600232

`xor(n, A057300(A004468(n)))`
-/

namespace A004514.P10300951564951600232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A057300 (A004468 n).toNat)

end

end A004514.P10300951564951600232

namespace A004514

/-- `xor(n, A057300(A004468(n)))` -/
def P10300951564951600232.Spec : Prop :=
  ∀ n, P10300951564951600232.a n = A004514 n

end A004514

/-! ## A004514.P12012911643438277231

`A006015(xor(n, A063695(n)))`
-/

namespace A004514.P12012911643438277231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (Int.xor (n : ℤ) (A063695 n)).toNat

end

end A004514.P12012911643438277231

namespace A004514

/-- `A006015(xor(n, A063695(n)))` -/
def P12012911643438277231.Spec : Prop :=
  ∀ n, P12012911643438277231.a n = A004514 n

end A004514

/-! ## A004514.P950368361038957801

`A057300(xor(n, A063695(n)))`
-/

namespace A004514.P950368361038957801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (Int.xor (n : ℤ) (A063695 n)).toNat

end

end A004514.P950368361038957801

namespace A004514

/-- `A057300(xor(n, A063695(n)))` -/
def P950368361038957801.Spec : Prop :=
  ∀ n, P950368361038957801.a n = A004514 n

end A004514

/-! ## A004514.P8992578945325045523

`and(A088442(n), A168276(n+1))`
-/

namespace A004514.P8992578945325045523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088442 n) (A168276 (n + 1))

end

end A004514.P8992578945325045523

namespace A004514

/-- `and(A088442(n), A168276(n+1))` -/
def P8992578945325045523.Spec : Prop :=
  ∀ n, P8992578945325045523.a n = A004514 n

end A004514

/-!
# A004515: Generalized nim sum n + n in base 5.

The programs for A004515, there is no canonical definition to state claims against.
-/

/-! ## A004515.P8800671534697431939

`A309991(n)+n`
-/

namespace A004515.P8800671534697431939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n + (n : ℤ)

end

end A004515.P8800671534697431939

/-! ## A004515.P15429288923974511756

`A065257(n+1)-1`
-/

namespace A004515.P15429288923974511756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065257 (n + 1) - 1

end

end A004515.P15429288923974511756

/-! ## A004515.P5758136882635763604

`n-A309991(A055115(n))`
-/

namespace A004515.P5758136882635763604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A309991 (A055115 n).toNat

end

end A004515.P5758136882635763604

/-! ## A004515.P14709365969836777479

`A055115(n)-(A065256(n)-n)`
-/

namespace A004515.P14709365969836777479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055115 n - (A065256 n - (n : ℤ))

end

end A004515.P14709365969836777479

/-! ## A004515.P4253984974565710647

`A005843(n)-(n-A309991(n))`
-/

namespace A004515.P4253984974565710647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A309991 n)

end

end A004515.P4253984974565710647

/-! ## A004515.P13953630460797868222

`A004488(n)-(A117966(n)-A309991(n))`
-/

namespace A004515.P13953630460797868222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - (A117966 n - A309991 n)

end

end A004515.P13953630460797868222

/-! ## A004515.P18040449284387873096

`2*n-A309991(n-A309991(n))`
-/

namespace A004515.P18040449284387873096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A309991 ((n : ℤ) - A309991 n).toNat

end

end A004515.P18040449284387873096

/-! ## A004515.P1825301805933436130

`A023443(A065257(n+1))`
-/

namespace A004515.P1825301805933436130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065257 (n + 1)).toNat

end

end A004515.P1825301805933436130

/-! ## A004515.P12789841562984922159

`A055115(A065256(n))`
-/

namespace A004515.P12789841562984922159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055115 (A065256 n).toNat

end

end A004515.P12789841562984922159

/-! ## A004515.P11757035619266348463

`A319047(∑[n+2]-1)+n`
-/

namespace A004515.P11757035619266348463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n : ℤ)

end

end A004515.P11757035619266348463

/-!
# A004516: Generalized nim sum n + n in base 6.

The programs for A004516, there is no canonical definition to state claims against.
-/

/-! ## A004516.P17295161505626746905

`A389424(Δ[A055831(n+4)])`
-/

namespace A004516.P17295161505626746905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389424 (f1 (n + 1) - f1 n).toNat

end

end A004516.P17295161505626746905

/-! ## A004516.P16259789662503597608

`A284803(or(1, A284803(2*n)))`
-/

namespace A004516.P16259789662503597608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284803 (Int.lor 1 (A284803 (2 * n))).toNat

end

end A004516.P16259789662503597608

/-! ## A004516.P3077010302897422415

`2*(n+1)-A040015(∑[∑[A000045(n+1)]])`
-/

namespace A004516.P3077010302897422415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A040015 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004516.P3077010302897422415

/-! ## A004516.P18078402170025503600

`A005843(n+1)-A040015(A210677(n))`
-/

namespace A004516.P18078402170025503600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A040015 (A210677 n).toNat

end

end A004516.P18078402170025503600

/-! ## A004516.P10850324062630235128

`A004522(2*n)/A001511(A272139(n+1))`
-/

namespace A004516.P10850324062630235128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004522 (2 * n) : ℚ) / (A001511 (A272139 (n + 1)).toNat : ℚ)

end

end A004516.P10850324062630235128

/-!
# A004517: Generalized nim sum n + n in base 7.

The programs for A004517, there is no canonical definition to state claims against.
-/

/-! ## A004517.P4691582801414559489

`A309995(n)+n`
-/

namespace A004517.P4691582801414559489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309995 n + (n : ℤ)

end

end A004517.P4691582801414559489

/-! ## A004517.P13803749684022225811

`abs(A001489(n)-A309995(n))`
-/

namespace A004517.P13803749684022225811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A309995 n|

end

end A004517.P13803749684022225811

/-! ## A004517.P3121510996766630539

`A005843(n)-(n-A309995(n))`
-/

namespace A004517.P3121510996766630539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A309995 n)

end

end A004517.P3121510996766630539

/-! ## A004517.P16309747276294993627

`A004488(n)-(A117966(n)-A309995(n))`
-/

namespace A004517.P16309747276294993627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - (A117966 n - A309995 n)

end

end A004517.P16309747276294993627

/-! ## A004517.P17738026890325387735

`log(A020985(n)²)-(A001489(n)-A309995(n))`
-/

namespace A004517.P17738026890325387735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A020985 n ^ 2 : ℝ) - (A001489 n - A309995 n : ℝ)

end

end A004517.P17738026890325387735

/-! ## A004517.P16553446781439296435

`-((A001489(n)-A309995(n))%(A243201(n)%A179259(n)))`
-/

namespace A004517.P16553446781439296435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A001489 n - A309995 n) (Int.tmod (A243201 n) (A179259 n))

end

end A004517.P16553446781439296435

/-! ## A004517.P12205847566651879988

`A319047(∑[n+3])+n`
-/

namespace A004517.P12205847566651879988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A004517.P12205847566651879988

/-! ## A004517.P16197235062417188415

`abs(A319047(A027379(n+1))+n)`
-/

namespace A004517.P16197235062417188415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319047 (A027379 (n + 1)).toNat + (n : ℤ)|

end

end A004517.P16197235062417188415

/-! ## A004517.P7223776602545644694

`A319047(A027379(n+1))+A023443(n)+1`
-/

namespace A004517.P7223776602545644694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A027379 (n + 1)).toNat + A023443 n + 1

end

end A004517.P7223776602545644694

/-! ## A004517.P4957631068536093054

`(A319047(A027379(n+1))+n)*A057427(n)`
-/

namespace A004517.P4957631068536093054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A319047 (A027379 (n + 1)).toNat + (n : ℤ)) * A057427 n

end

end A004517.P4957631068536093054

/-! ## A004517.P2398353456804403705

`A319047(A027379(n+1))%A094414(n)+n`
-/

namespace A004517.P2398353456804403705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319047 (A027379 (n + 1)).toNat) (A094414 n) + (n : ℤ)

end

end A004517.P2398353456804403705

/-! ## A004517.P5365935619706989019

`A000007(n+1)+A319047(A027379(n+1))+n`
-/

namespace A004517.P5365935619706989019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A319047 (A027379 (n + 1)).toNat + (n : ℤ))

end

end A004517.P5365935619706989019

/-! ## A004517.P11872066679671441939

`(A319047(A027379(n+1))+n)%A000040(n+1)`
-/

namespace A004517.P11872066679671441939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319047 (A027379 (n + 1)).toNat + (n : ℤ)) (A000040 (n + 1))

end

end A004517.P11872066679671441939

/-! ## A004517.P15090102093003982985

`A005171(2*(n+1))*A319047(A027379(n+1))+n`
-/

namespace A004517.P15090102093003982985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1)) * A319047 (A027379 (n + 1)).toNat + (n : ℤ)

end

end A004517.P15090102093003982985

/-! ## A004517.P10444574901365520080

`(A319047(A027379(n+1))+n)*A014963(14*(n+1))`
-/

namespace A004517.P10444574901365520080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A319047 (A027379 (n + 1)).toNat + (n : ℤ)) * A014963 (14 * (n + 1))

end

end A004517.P10444574901365520080

/-! ## A004517.P9581950833827351366

`n-(A014473(∑[n])-A309995(n))`
-/

namespace A004517.P9581950833827351366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A014473 (∑ j ∈ Finset.range (n + 1), f1 j) - A309995 n)

end

end A004517.P9581950833827351366

/-!
# A004518: Generalized nim sum n + n in base 8.

The programs for A004518, the canonical program `A004518.P10568020488106147748` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004518 has offset 0).

The definition of A004518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004518.P10568020488106147748

`2*(n-a(a(floor(n/4))))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004518

/-- `2*(n-a(a(floor(n/4))))` -/
def P10568020488106147748.Spec : Prop :=
  ∀ n, P10568020488106147748.a n = A004518 n

theorem P10568020488106147748.correct : P10568020488106147748.Spec := by
  intro n
  simp only [A004518]

end A004518

/-! ## A004518.P5792534701331747540

`and(2*n, A299913(A213923(n+1)))`
-/

namespace A004518.P5792534701331747540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A299913 (A213923 (n + 1)).toNat)

end

end A004518.P5792534701331747540

namespace A004518

/-- `and(2*n, A299913(A213923(n+1)))` -/
def P5792534701331747540.Spec : Prop :=
  ∀ n, P5792534701331747540.a n = A004518 n

end A004518

/-! ## A004518.P17413363684128664100

`and(2*n, A014987(A003057(n+2)))`
-/

namespace A004518.P17413363684128664100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A014987 (A003057 (n + 2)).toNat)

end

end A004518.P17413363684128664100

namespace A004518

/-- `and(2*n, A014987(A003057(n+2)))` -/
def P17413363684128664100.Spec : Prop :=
  ∀ n, P17413363684128664100.a n = A004518 n

end A004518

/-! ## A004518.P8360407116746861788

`and(2*n, A083068(A172471(n)))`
-/

namespace A004518.P8360407116746861788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A083068 (A172471 n).toNat)

end

end A004518.P8360407116746861788

namespace A004518

/-- `and(2*n, A083068(A172471(n)))` -/
def P8360407116746861788.Spec : Prop :=
  ∀ n, P8360407116746861788.a n = A004518 n

end A004518

/-! ## A004518.P13799904445022946185

`and(2*n, A016203(A002024(n+1)))`
-/

namespace A004518.P13799904445022946185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A016203 (A002024 (n + 1)).toNat)

end

end A004518.P13799904445022946185

namespace A004518

/-- `and(2*n, A016203(A002024(n+1)))` -/
def P13799904445022946185.Spec : Prop :=
  ∀ n, P13799904445022946185.a n = A004518 n

end A004518

/-! ## A004518.P7950941875038201616

`and(2*n, or(2, A218790(n+1)))`
-/

namespace A004518.P7950941875038201616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (Int.lor 2 (A218790 (n + 1)))

end

end A004518.P7950941875038201616

namespace A004518

/-- `and(2*n, or(2, A218790(n+1)))` -/
def P7950941875038201616.Spec : Prop :=
  ∀ n, P7950941875038201616.a n = A004518 n

end A004518

/-! ## A004518.P10979458380903190215

`2*and(n, A113836(n+1))`
-/

namespace A004518.P10979458380903190215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (A113836 (n + 1))

end

end A004518.P10979458380903190215

namespace A004518

/-- `2*and(n, A113836(n+1))` -/
def P10979458380903190215.Spec : Prop :=
  ∀ n, P10979458380903190215.a n = A004518 n

end A004518

/-! ## A004518.P5686932361497298600

`2*and(n, A267276(n))`
-/

namespace A004518.P5686932361497298600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (A267276 n)

end

end A004518.P5686932361497298600

namespace A004518

/-- `2*and(n, A267276(n))` -/
def P5686932361497298600.Spec : Prop :=
  ∀ n, P5686932361497298600.a n = A004518 n

end A004518

/-! ## A004518.P10372448566793480530

`A005843(and(n, A267276(n)))`
-/

namespace A004518.P10372448566793480530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.land (n : ℤ) (A267276 n)).toNat

end

end A004518.P10372448566793480530

namespace A004518

/-- `A005843(and(n, A267276(n)))` -/
def P10372448566793480530.Spec : Prop :=
  ∀ n, P10372448566793480530.a n = A004518 n

end A004518

/-! ## A004518.P16759590514360096904

`2*and(n, A110052(n))`
-/

namespace A004518.P16759590514360096904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (A110052 n)

end

end A004518.P16759590514360096904

namespace A004518

/-- `2*and(n, A110052(n))` -/
def P16759590514360096904.Spec : Prop :=
  ∀ n, P16759590514360096904.a n = A004518 n

end A004518

/-! ## A004518.P6795484197708419912

`2*n-and(2*n, A218989(n))`
-/

namespace A004518.P6795484197708419912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.land (2 * n : ℤ) (A218989 n)

end

end A004518.P6795484197708419912

namespace A004518

/-- `2*n-and(2*n, A218989(n))` -/
def P6795484197708419912.Spec : Prop :=
  ∀ n, P6795484197708419912.a n = A004518 n

end A004518

/-! ## A004518.P5828388105040937742

`and(2*n, A218988(n+1))`
-/

namespace A004518.P5828388105040937742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A218988 (n + 1))

end

end A004518.P5828388105040937742

namespace A004518

/-- `and(2*n, A218988(n+1))` -/
def P5828388105040937742.Spec : Prop :=
  ∀ n, P5828388105040937742.a n = A004518 n

end A004518

/-! ## A004518.P7170508400040896392

`and(2*n, A110051(n+2))`
-/

namespace A004518.P7170508400040896392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A110051 (n + 2))

end

end A004518.P7170508400040896392

namespace A004518

/-- `and(2*n, A110051(n+2))` -/
def P7170508400040896392.Spec : Prop :=
  ∀ n, P7170508400040896392.a n = A004518 n

end A004518

/-! ## A004518.P16292350995088206043

`and(2*n, A196468(n+2))`
-/

namespace A004518.P16292350995088206043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A196468 (n + 2))

end

end A004518.P16292350995088206043

namespace A004518

/-- `and(2*n, A196468(n+2))` -/
def P16292350995088206043.Spec : Prop :=
  ∀ n, P16292350995088206043.a n = A004518 n

end A004518

/-! ## A004518.P16670347449387066560

`and(2*n, A180677(n))`
-/

namespace A004518.P16670347449387066560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A180677 n)

end

end A004518.P16670347449387066560

namespace A004518

/-- `and(2*n, A180677(n))` -/
def P16670347449387066560.Spec : Prop :=
  ∀ n, P16670347449387066560.a n = A004518 n

end A004518

/-! ## A004518.P345470748873143794

`and(2*n, ∑[(-6)^n])`
-/

namespace A004518.P345470748873143794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-6) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004518.P345470748873143794

namespace A004518

/-- `and(2*n, ∑[(-6)^n])` -/
def P345470748873143794.Spec : Prop :=
  ∀ n, P345470748873143794.a n = A004518 n

end A004518

/-! ## A004518.P15101510402558085684

`2*and(n, A083713(n))`
-/

namespace A004518.P15101510402558085684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (A083713 n)

end

end A004518.P15101510402558085684

namespace A004518

/-- `2*and(n, A083713(n))` -/
def P15101510402558085684.Spec : Prop :=
  ∀ n, P15101510402558085684.a n = A004518 n

end A004518

/-! ## A004518.P6317599674999110110

`2*and(n, A245599(n+1))`
-/

namespace A004518.P6317599674999110110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (A245599 (n + 1))

end

end A004518.P6317599674999110110

namespace A004518

/-- `2*and(n, A245599(n+1))` -/
def P6317599674999110110.Spec : Prop :=
  ∀ n, P6317599674999110110.a n = A004518 n

end A004518

/-! ## A004518.P1461427446283969104

`and(A005408(n), A083068(n))-1`
-/

namespace A004518.P1461427446283969104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 n) (A083068 n) - 1

end

end A004518.P1461427446283969104

namespace A004518

/-- `and(A005408(n), A083068(n))-1` -/
def P1461427446283969104.Spec : Prop :=
  ∀ n, P1461427446283969104.a n = A004518 n

end A004518

/-! ## A004518.P5080458115246510088

`A004442(and(A005408(n), A083068(n)))`
-/

namespace A004518.P5080458115246510088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.land (A005408 n) (A083068 n)).toNat

end

end A004518.P5080458115246510088

namespace A004518

/-- `A004442(and(A005408(n), A083068(n)))` -/
def P5080458115246510088.Spec : Prop :=
  ∀ n, P5080458115246510088.a n = A004518 n

end A004518

/-!
# A004519: Generalized nim sum n + n in base 9.

The programs for A004519, there is no canonical definition to state claims against.
-/

/-! ## A004519.P16697679348999257497

`A316823(n)+n`
-/

namespace A004519.P16697679348999257497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n + (n : ℤ)

end

end A004519.P16697679348999257497

/-! ## A004519.P13021465978521154909

`n-A316823(A055119(n))`
-/

namespace A004519.P13021465978521154909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A316823 (A055119 n).toNat

end

end A004519.P13021465978521154909

/-! ## A004519.P9684630349716076699

`abs(A001489(n)-A316823(n))`
-/

namespace A004519.P9684630349716076699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A316823 n|

end

end A004519.P9684630349716076699

/-! ## A004519.P5526423584989289553

`A005843(n)-(n-A316823(n))`
-/

namespace A004519.P5526423584989289553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A316823 n)

end

end A004519.P5526423584989289553

/-! ## A004519.P1866587774403483689

`A000096(n)-(A000217(n)-A316823(n))`
-/

namespace A004519.P1866587774403483689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A000217 n - A316823 n)

end

end A004519.P1866587774403483689

/-! ## A004519.P6050800756158131730

`A319047(A046691(n+2))+n`
-/

namespace A004519.P6050800756158131730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A046691 (n + 2)).toNat + (n : ℤ)

end

end A004519.P6050800756158131730

/-!
# A004520: Generalized nim sum n + n in base 10.

The programs for A004520, there is no canonical definition to state claims against.
-/

/-! ## A004520.P16058658850172178908

`A059631(A055120(n))`
-/

namespace A004520.P16058658850172178908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059631 (A055120 n).toNat

end

end A004520.P16058658850172178908

/-! ## A004520.P4115186178126917787

`A059627(A059626(n))`
-/

namespace A004520.P4115186178126917787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059627 (A059626 n).toNat

end

end A004520.P4115186178126917787

/-! ## A004520.P12511949617867720065

`A059631(A059627(n))`
-/

namespace A004520.P12511949617867720065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059631 (A059627 n).toNat

end

end A004520.P12511949617867720065

/-! ## A004520.P13943008961599687162

`A059629(A059630(n))`
-/

namespace A004520.P13943008961599687162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059629 (A059630 n).toNat

end

end A004520.P13943008961599687162

/-! ## A004520.P13503577338178647190

`2*A106747(2*n)`
-/

namespace A004520.P13503577338178647190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106747 (2 * n)

end

end A004520.P13503577338178647190

/-! ## A004520.P14184116395185993581

`A005843(A106747(2*n))`
-/

namespace A004520.P14184116395185993581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A106747 (2 * n)).toNat

end

end A004520.P14184116395185993581

/-! ## A004520.P5694041062878016855

`2*n-A103181(2*n)`
-/

namespace A004520.P5694041062878016855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A103181 (2 * n)

end

end A004520.P5694041062878016855

/-! ## A004520.P11695542594680845959

`A306436(A351744(2*n))`
-/

namespace A004520.P11695542594680845959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 (A351744 (2 * n)).toNat

end

end A004520.P11695542594680845959

/-! ## A004520.P1252114840586925345

`A001613(A306436(A351744(n+n)))`
-/

namespace A004520.P1252114840586925345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A306436 (A351744 (n + n)).toNat).toNat

end

end A004520.P1252114840586925345

/-! ## A004520.P2123717170391943425

`A306436(A107128(A351744(n+1+n)))`
-/

namespace A004520.P2123717170391943425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 (A107128 (A351744 (n + 1 + n)).toNat).toNat

end

end A004520.P2123717170391943425

/-! ## A004520.P17851337103925697987

`A061601(A103181(2*n+1)+A061601(2*n+1))`
-/

namespace A004520.P17851337103925697987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A103181 (2 * n + 1) + A061601 (2 * n + 1)).toNat

end

end A004520.P17851337103925697987

/-! ## A004520.P11520680557280821226

`A001613(A322131(n))`
-/

namespace A004520.P11520680557280821226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A322131 n).toNat

end

end A004520.P11520680557280821226

/-! ## A004520.P12707206598153662465

`A059692(A167614(n+1)-1)`
-/

namespace A004520.P12707206598153662465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (A167614 (n + 1) - 1).toNat

end

end A004520.P12707206598153662465

/-! ## A004520.P12983258163918464349

`A059692(∑[n+3])`
-/

namespace A004520.P12983258163918464349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004520.P12983258163918464349

/-!
# A004521: Generalized nim sum n + n in base 11.

The programs for A004521, there is no canonical definition to state claims against.
-/

/-! ## A004521.P3978164415433028870

`A319047(∑[n+5]+5)+n`
-/

namespace A004521.P3978164415433028870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j + 5) + (n : ℤ)

end

end A004521.P3978164415433028870

/-! ## A004521.P3859441722372262094

`(2*n)%A010927(A067284(n))`
-/

namespace A004521.P3859441722372262094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A010927 (A067284 n).toNat)

end

end A004521.P3859441722372262094

/-! ## A004521.P10519253475556385922

`A005843(n)%A178572(A212390(n))`
-/

namespace A004521.P10519253475556385922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n) (A178572 (A212390 n).toNat)

end

end A004521.P10519253475556385922

/-!
# A004522: Generalized nim sum n + n in base 12.

The programs for A004522, there is no canonical definition to state claims against.
-/

/-! ## A004522.P5035023392341394887

`A389424(A034856(n+10)-9)`
-/

namespace A004522.P5035023392341394887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389424 (A034856 (n + 10) - 9).toNat

end

end A004522.P5035023392341394887

/-! ## A004522.P11920642314369163454

`(2*n)%A114241(A171765(n)!)`
-/

namespace A004522.P11920642314369163454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A114241 (Nat.factorial (A171765 n).toNat))

end

end A004522.P11920642314369163454

/-! ## A004522.P10650609014214090287

`A005843(n)%A154266(A036427(n))`
-/

namespace A004522.P10650609014214090287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n) (A154266 (A036427 n).toNat)

end

end A004522.P10650609014214090287

/-! ## A004522.P15013231162532868699

`record[A014681(n)]%A141214(2*A147252(n+1))`
-/

namespace A004522.P15013231162532868699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A141214 (2 * A147252 (n + 1)).toNat)

end

end A004522.P15013231162532868699

/-!
# A004523: Two even followed by one odd; or floor(2n/3).

The programs for A004523, the canonical program `A004523.P10612776629676351712` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004523 has offset 0).

The definition of A004523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*n/3)` (program `A004523.P10612776629676351712`, by `A004523.P10612776629676351712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004523.P10612776629676351712

`floor(2*n/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004523

/-- `floor(2*n/3)` -/
def P10612776629676351712.Spec : Prop :=
  ∀ n, P10612776629676351712.a n = A004523 n

theorem P10612776629676351712.correct : P10612776629676351712.Spec := by
  intro n
  simp only [A004523]

end A004523

/-! ## A004523.P4383838772891692340

`n-1-floor(a(n-1)/2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A004523.P4383838772891692340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (n : ℤ) - 1 - ⌊(a (n - 1) : ℚ) / 2⌋

end

end A004523.P4383838772891692340

namespace A004523

/-- `n-1-floor(a(n-1)/2)` -/
def P4383838772891692340.Spec : Prop :=
  ∀ n, P4383838772891692340.a n = A004523 n

end A004523

/-! ## A004523.P3884536860172453292

`(6*n-3+2*sqrt(3)*sin(2*(n-2)*π/3))/9`
-/

namespace A004523.P3884536860172453292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 * n : ℤ) - 3 : ℝ) + 2 * Real.sqrt (3 : ℝ) * Real.sin ((2 * ((n : ℤ) - 2) : ℝ) * Real.pi / 3)) / 9

end

end A004523.P3884536860172453292

namespace A004523

/-- `(6*n-3+2*sqrt(3)*sin(2*(n-2)*π/3))/9` -/
def P3884536860172453292.Spec : Prop :=
  ∀ n, P3884536860172453292.a n = (A004523 n : ℝ)

end A004523

/-! ## A004523.P16324800199300833038

`A004773(n)-A004396(n)`
-/

namespace A004523.P16324800199300833038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n - A004396 n

end

end A004523.P16324800199300833038

namespace A004523

/-- `A004773(n)-A004396(n)` -/
def P16324800199300833038.Spec : Prop :=
  ∀ n, P16324800199300833038.a n = A004523 n

end A004523

/-! ## A004523.P6071865388655811523

`∑[char[∑[gcd(2, n)]]]`
-/

namespace A004523.P6071865388655811523
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004523.P6071865388655811523

namespace A004523

/-- `∑[char[∑[gcd(2, n)]]]` -/
def P6071865388655811523.Spec : Prop :=
  ∀ n, (P6071865388655811523.a n : ℤ) = A004523 n

end A004523

/-! ## A004523.P7345742318130548925

`∑[floor(atan(dr(∑[n])))]`
-/

namespace A004523.P7345742318130548925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004523.P7345742318130548925

namespace A004523

/-- `∑[floor(atan(dr(∑[n])))]` -/
def P7345742318130548925.Spec : Prop :=
  ∀ n, P7345742318130548925.a n = A004523 n

end A004523

/-! ## A004523.P11631475391111121127

`∑[dr(6*n)%2]`
-/

namespace A004523.P11631475391111121127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (6 * n : ℤ) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004523.P11631475391111121127

namespace A004523

/-- `∑[dr(6*n)%2]` -/
def P11631475391111121127.Spec : Prop :=
  ∀ n, (P11631475391111121127.a n : ℤ) = A004523 n

end A004523

/-! ## A004523.P14133260876963600364

`∑[and(1, dr(6*n))]`
-/

namespace A004523.P14133260876963600364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.digitalRoot (6 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004523.P14133260876963600364

namespace A004523

/-- `∑[and(1, dr(6*n))]` -/
def P14133260876963600364.Spec : Prop :=
  ∀ n, (P14133260876963600364.a n : ℤ) = A004523 n

end A004523

/-! ## A004523.P5759077080667437750

`round(record[lcm(2, n)]/6)`
-/

namespace A004523.P5759077080667437750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6)

end

end A004523.P5759077080667437750

namespace A004523

/-- `round(record[lcm(2, n)]/6)` -/
def P5759077080667437750.Spec : Prop :=
  ∀ n, P5759077080667437750.a n = A004523 n

end A004523

/-! ## A004523.P17068279400672579960

`n-∑[∑[n]%3]`
-/

namespace A004523.P17068279400672579960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004523.P17068279400672579960

namespace A004523

/-- `n-∑[∑[n]%3]` -/
def P17068279400672579960.Spec : Prop :=
  ∀ n, P17068279400672579960.a n = A004523 n

end A004523

/-! ## A004523.P2326286546110719912

`∑[char[∑[(n+2)%3]]]`
-/

namespace A004523.P2326286546110719912
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004523.P2326286546110719912

namespace A004523

/-- `∑[char[∑[(n+2)%3]]]` -/
def P2326286546110719912.Spec : Prop :=
  ∀ n, (P2326286546110719912.a n : ℤ) = A004523 n

end A004523

/-! ## A004523.P13576921260525125294

`∑[char[∑[2-and(1, n)]]]`
-/

namespace A004523.P13576921260525125294
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004523.P13576921260525125294

namespace A004523

/-- `∑[char[∑[2-and(1, n)]]]` -/
def P13576921260525125294.Spec : Prop :=
  ∀ n, (P13576921260525125294.a n : ℤ) = A004523 n

end A004523

/-! ## A004523.P12028533397870368222

`∑[∑[-n]%3]+n`
-/

namespace A004523.P12028533397870368222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A004523.P12028533397870368222

namespace A004523

/-- `∑[∑[-n]%3]+n` -/
def P12028533397870368222.Spec : Prop :=
  ∀ n, P12028533397870368222.a n = A004523 n

end A004523

/-! ## A004523.P17052433270180019548

`a(n-3)+2` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A004523.P17052433270180019548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + 2

end

end A004523.P17052433270180019548

namespace A004523

/-- `a(n-3)+2` -/
def P17052433270180019548.Spec : Prop :=
  ∀ n, (P17052433270180019548.a n : ℤ) = A004523 n

end A004523

/-! ## A004523.P1544373109316991064

`round((2*n-cos(1))/3)`
-/

namespace A004523.P1544373109316991064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.cos (1 : ℝ)) / 3)

end

end A004523.P1544373109316991064

namespace A004523

/-- `round((2*n-cos(1))/3)` -/
def P1544373109316991064.Spec : Prop :=
  ∀ n, P1544373109316991064.a n = A004523 n

end A004523

/-! ## A004523.P15120749517058462678

`round((2*n-sin(1))/3)`
-/

namespace A004523.P15120749517058462678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.sin (1 : ℝ)) / 3)

end

end A004523.P15120749517058462678

namespace A004523

/-- `round((2*n-sin(1))/3)` -/
def P15120749517058462678.Spec : Prop :=
  ∀ n, P15120749517058462678.a n = A004523 n

end A004523

/-! ## A004523.P18098127857665030640

`round((cos(3)+2*n)/3)`
-/

namespace A004523.P18098127857665030640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cos (3 : ℝ) + (2 * n : ℝ)) / 3)

end

end A004523.P18098127857665030640

namespace A004523

/-- `round((cos(3)+2*n)/3)` -/
def P18098127857665030640.Spec : Prop :=
  ∀ n, P18098127857665030640.a n = A004523 n

end A004523

/-! ## A004523.P18257066945783446783

`round((sin(4)+2*n)/3)`
-/

namespace A004523.P18257066945783446783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sin (4 : ℝ) + (2 * n : ℝ)) / 3)

end

end A004523.P18257066945783446783

namespace A004523

/-- `round((sin(4)+2*n)/3)` -/
def P18257066945783446783.Spec : Prop :=
  ∀ n, P18257066945783446783.a n = A004523 n

end A004523

/-! ## A004523.P6452072346978562426

`round((2*n-atan(1))/3)`
-/

namespace A004523.P6452072346978562426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.arctan (1 : ℝ)) / 3)

end

end A004523.P6452072346978562426

namespace A004523

/-- `round((2*n-atan(1))/3)` -/
def P6452072346978562426.Spec : Prop :=
  ∀ n, P6452072346978562426.a n = A004523 n

end A004523

/-! ## A004523.P9764155116438998810

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A004523.P9764155116438998810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004523.P9764155116438998810

namespace A004523

/-- `∑[abs(a(n-3))]` -/
def P9764155116438998810.Spec : Prop :=
  ∀ n, (P9764155116438998810.a n : ℤ) = A004523 n

end A004523

/-!
# A004524: Three even followed by one odd.

The programs for A004524, the canonical program `A004524.P8943215836771390324` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004524 has offset 0).

The definition of A004524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004524.P13401617350853965623

`n/2-sqrt(n²%8)/2`
-/

namespace A004524.P13401617350853965623
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 : ℝ) - Real.sqrt ((n ^ 2 % 8 : ℕ) : ℝ) / 2

end

end A004524.P13401617350853965623

namespace A004524

/-- `n/2-sqrt(n²%8)/2` -/
def P13401617350853965623.Spec : Prop :=
  ∀ n, P13401617350853965623.a n = (A004524 n : ℝ)

end A004524

/-! ## A004524.P8943215836771390324

`floor(n/4)+floor((n+1)/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004524

/-- `floor(n/4)+floor((n+1)/4)` -/
def P8943215836771390324.Spec : Prop :=
  ∀ n, P8943215836771390324.a n = A004524 n

theorem P8943215836771390324.correct : P8943215836771390324.Spec := by
  intro n
  simp only [A004524]

end A004524

/-! ## A004524.P15879949804580079705

`(n-1-cos(π*(n-2)/2))/2`
-/

namespace A004524.P15879949804580079705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℝ) - Real.cos (Real.pi * ((n : ℤ) - 2 : ℝ) / 2)) / 2

end

end A004524.P15879949804580079705

namespace A004524

/-- `(n-1-cos(π*(n-2)/2))/2` -/
def P15879949804580079705.Spec : Prop :=
  ∀ n, P15879949804580079705.a n = (A004524 n : ℝ)

end A004524

/-! ## A004524.P8451363900351584753

`∑[char[or(2, n)+1]]`
-/

namespace A004524.P8451363900351584753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004524.P8451363900351584753

namespace A004524

/-- `∑[char[or(2, n)+1]]` -/
def P8451363900351584753.Spec : Prop :=
  ∀ n, (P8451363900351584753.a n : ℤ) = A004524 n

end A004524

/-! ## A004524.P11294857690270388353

`∑[∑[char[1]+n]%2]`
-/

namespace A004524.P11294857690270388353
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004524.P11294857690270388353

namespace A004524

/-- `∑[∑[char[1]+n]%2]` -/
def P11294857690270388353.Spec : Prop :=
  ∀ n, (P11294857690270388353.a n : ℤ) = A004524 n

end A004524

/-! ## A004524.P3486772358747770975

`∑[and(1, ∑[char[1]+n])]`
-/

namespace A004524.P3486772358747770975
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004524.P3486772358747770975

namespace A004524

/-- `∑[and(1, ∑[char[1]+n])]` -/
def P3486772358747770975.Spec : Prop :=
  ∀ n, (P3486772358747770975.a n : ℤ) = A004524 n

end A004524

/-! ## A004524.P12519957039699782763

`(n-gcd(4, n)%4)/2`
-/

namespace A004524.P12519957039699782763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((Nat.gcd 4 n % 4 : ℕ) : ℤ) : ℚ) / 2

end

end A004524.P12519957039699782763

namespace A004524

/-- `(n-gcd(4, n)%4)/2` -/
def P12519957039699782763.Spec : Prop :=
  ∀ n, P12519957039699782763.a n = (A004524 n : ℚ)

end A004524

/-! ## A004524.P7386007053726911598

`ceil(∑[(n-1)%4/3])`
-/

namespace A004524.P7386007053726911598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 4 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A004524.P7386007053726911598

namespace A004524

/-- `ceil(∑[(n-1)%4/3])` -/
def P7386007053726911598.Spec : Prop :=
  ∀ n, P7386007053726911598.a n = A004524 n

end A004524

/-! ## A004524.P14563288516488298388

`∑[1-a(n-2)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A004524.P14563288516488298388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004524.P14563288516488298388

namespace A004524

/-- `∑[1-a(n-2)]` -/
def P14563288516488298388.Spec : Prop :=
  ∀ n, P14563288516488298388.a n = A004524 n

end A004524

/-! ## A004524.P12960955596183616369

`floor((n-n%4/3)/2)`
-/

namespace A004524.P12960955596183616369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) - ((n % 4 : ℕ) : ℚ) / 3) / 2⌋

end

end A004524.P12960955596183616369

namespace A004524

/-- `floor((n-n%4/3)/2)` -/
def P12960955596183616369.Spec : Prop :=
  ∀ n, P12960955596183616369.a n = A004524 n

end A004524

/-! ## A004524.P6366574484640576432

`floor((or(2, n)+n-1)/4)`
-/

namespace A004524.P6366574484640576432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 2 n : ℤ) + ((n : ℤ) - 1) : ℚ) / 4⌋

end

end A004524.P6366574484640576432

namespace A004524

/-- `floor((or(2, n)+n-1)/4)` -/
def P6366574484640576432.Spec : Prop :=
  ∀ n, P6366574484640576432.a n = A004524 n

end A004524

/-! ## A004524.P16654101615694584387

`and(n, 2*or(n, -2))/2`
-/

namespace A004524.P16654101615694584387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (2 * Int.lor (n : ℤ) (-2)) : ℚ) / 2

end

end A004524.P16654101615694584387

namespace A004524

/-- `and(n, 2*or(n, -2))/2` -/
def P16654101615694584387.Spec : Prop :=
  ∀ n, P16654101615694584387.a n = (A004524 n : ℚ)

end A004524

/-! ## A004524.P8300515048218733995

`and(n, or(n-1, -4))/2`
-/

namespace A004524.P8300515048218733995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (Int.lor ((n : ℤ) - 1) (-4)) : ℚ) / 2

end

end A004524.P8300515048218733995

namespace A004524

/-- `and(n, or(n-1, -4))/2` -/
def P8300515048218733995.Spec : Prop :=
  ∀ n, P8300515048218733995.a n = (A004524 n : ℚ)

end A004524

/-! ## A004524.P8224794584446258450

`floor((2*n-and(2, n))/4)`
-/

namespace A004524.P8224794584446258450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℤ) - (Nat.land 2 n : ℤ) : ℚ) / 4⌋

end

end A004524.P8224794584446258450

namespace A004524

/-- `floor((2*n-and(2, n))/4)` -/
def P8224794584446258450.Spec : Prop :=
  ∀ n, P8224794584446258450.a n = A004524 n

end A004524

/-! ## A004524.P16630445756965058478

`round((or(2, n-3)+n)/4)`
-/

namespace A004524.P16630445756965058478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 2 ((n : ℤ) - 3) + (n : ℤ) : ℚ) / 4)

end

end A004524.P16630445756965058478

namespace A004524

/-- `round((or(2, n-3)+n)/4)` -/
def P16630445756965058478.Spec : Prop :=
  ∀ n, P16630445756965058478.a n = A004524 n

end A004524

/-! ## A004524.P425055387152886733

`floor(∑[∑[and(2, n)]]/(n+1))`
-/

namespace A004524.P425055387152886733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A004524.P425055387152886733

namespace A004524

/-- `floor(∑[∑[and(2, n)]]/(n+1))` -/
def P425055387152886733.Spec : Prop :=
  ∀ n, P425055387152886733.a n = A004524 n

end A004524

/-! ## A004524.P3739359433852269504

`round(n-2-a(n-2))` with `a(0)=0, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A004524.P3739359433852269504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) - 2 - a (n - 2)

end

end A004524.P3739359433852269504

namespace A004524

/-- `round(n-2-a(n-2))` -/
def P3739359433852269504.Spec : Prop :=
  ∀ n, P3739359433852269504.a n = A004524 n

end A004524

/-! ## A004524.P3673050000692899432

`and(n, n+1-and(2, n))/2`
-/

namespace A004524.P3673050000692899432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) ((n + 1 : ℤ) - (Nat.land 2 n : ℤ)) : ℚ) / 2

end

end A004524.P3673050000692899432

namespace A004524

/-- `and(n, n+1-and(2, n))/2` -/
def P3673050000692899432.Spec : Prop :=
  ∀ n, P3673050000692899432.a n = (A004524 n : ℚ)

end A004524

/-! ## A004524.P7688504046017208682

`∑[and(2, n-1)!]%(n+2)`
-/

namespace A004524.P7688504046017208682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)

end

end A004524.P7688504046017208682

namespace A004524

/-- `∑[and(2, n-1)!]%(n+2)` -/
def P7688504046017208682.Spec : Prop :=
  ∀ n, (P7688504046017208682.a n : ℤ) = A004524 n

end A004524

/-! ## A004524.P5624862850580591226

`ogf(x^3/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A004524.P5624862850580591226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -2, 2, -2, 1] n

end

end A004524.P5624862850580591226

namespace A004524

/-- `ogf(x^3/(1-2x+2x^2-2x^3+x^4))` -/
def P5624862850580591226.Spec : Prop :=
  ∀ n, P5624862850580591226.a n = A004524 n

end A004524

/-!
# A004525: One even followed by three odd.

The programs for A004525, the canonical program `A004525.P4158271949796742323` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004525 has offset 0).

The definition of A004525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004525.P4158271949796742323

`floor(n/4)+ceil(n/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004525

/-- `floor(n/4)+ceil(n/4)` -/
def P4158271949796742323.Spec : Prop :=
  ∀ n, P4158271949796742323.a n = A004525 n

theorem P4158271949796742323.correct : P4158271949796742323.Spec := by
  intro n
  simp only [A004525]

end A004525

/-! ## A004525.P6148966727747154555

`(n+sin(n*π/2))/2`
-/

namespace A004525.P6148966727747154555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) + Real.sin ((n : ℝ) * Real.pi / 2)) / 2

end

end A004525.P6148966727747154555

namespace A004525

/-- `(n+sin(n*π/2))/2` -/
def P6148966727747154555.Spec : Prop :=
  ∀ n, P6148966727747154555.a n = (A004525 n : ℝ)

end A004525

/-! ## A004525.P4905545916662956865

`Δ[ceil(C(n, 2)/2)]`
-/

namespace A004525.P4905545916662956865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004525.P4905545916662956865

namespace A004525

/-- `Δ[ceil(C(n, 2)/2)]` -/
def P4905545916662956865.Spec : Prop :=
  ∀ n, P4905545916662956865.a n = A004525 n

end A004525

/-! ## A004525.P7461376305861991273

`ceil(comp[or(4, n)]/4)`
-/

namespace A004525.P7461376305861991273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 4⌉

end

end A004525.P7461376305861991273

namespace A004525

/-- `ceil(comp[or(4, n)]/4)` -/
def P7461376305861991273.Spec : Prop :=
  ∀ n, P7461376305861991273.a n = A004525 n

end A004525

/-! ## A004525.P9095729247066972654

`floor((or(2, n)+n)/4)`
-/

namespace A004525.P9095729247066972654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 n + n : ℚ) / 4⌋

end

end A004525.P9095729247066972654

namespace A004525

/-- `floor((or(2, n)+n)/4)` -/
def P9095729247066972654.Spec : Prop :=
  ∀ n, P9095729247066972654.a n = A004525 n

end A004525

/-! ## A004525.P12869873676649621532

`∑[char[and(n+3, -3)]]`
-/

namespace A004525.P12869873676649621532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (-3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004525.P12869873676649621532

namespace A004525

/-- `∑[char[and(n+3, -3)]]` -/
def P12869873676649621532.Spec : Prop :=
  ∀ n, (P12869873676649621532.a n : ℤ) = A004525 n

end A004525

/-! ## A004525.P14041452679005776480

`∑[char[∑[3^(n%2)]]]`
-/

namespace A004525.P14041452679005776480
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004525.P14041452679005776480

namespace A004525

/-- `∑[char[∑[3^(n%2)]]]` -/
def P14041452679005776480.Spec : Prop :=
  ∀ n, (P14041452679005776480.a n : ℤ) = A004525 n

end A004525

/-! ## A004525.P3439379344244933091

`∑[char[∑[3^and(1, n)]]]`
-/

namespace A004525.P3439379344244933091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004525.P3439379344244933091

namespace A004525

/-- `∑[char[∑[3^and(1, n)]]]` -/
def P3439379344244933091.Spec : Prop :=
  ∀ n, (P3439379344244933091.a n : ℤ) = A004525 n

end A004525

/-! ## A004525.P16658684789453407920

`∑[comp[3*(n+1)]%2]`
-/

namespace A004525.P16658684789453407920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004525.P16658684789453407920

namespace A004525

/-- `∑[comp[3*(n+1)]%2]` -/
def P16658684789453407920.Spec : Prop :=
  ∀ n, (P16658684789453407920.a n : ℤ) = A004525 n

end A004525

/-! ## A004525.P10656735568164281576

`∑[and(1, comp[3*(n+1)])]`
-/

namespace A004525.P10656735568164281576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004525.P10656735568164281576

namespace A004525

/-- `∑[and(1, comp[3*(n+1)])]` -/
def P10656735568164281576.Spec : Prop :=
  ∀ n, (P10656735568164281576.a n : ℤ) = A004525 n

end A004525

/-! ## A004525.P12675629944387371181

`floor((and(1, ∑[n])+n)/2)`
-/

namespace A004525.P12675629944387371181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + n : ℚ) / 2⌋

end

end A004525.P12675629944387371181

namespace A004525

/-- `floor((and(1, ∑[n])+n)/2)` -/
def P12675629944387371181.Spec : Prop :=
  ∀ n, P12675629944387371181.a n = A004525 n

end A004525

/-! ## A004525.P17597148889479835188

`ceil(∑[n]/or(2, n+1))`
-/

namespace A004525.P17597148889479835188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 2 (n + 1) : ℚ)⌉

end

end A004525.P17597148889479835188

namespace A004525

/-- `ceil(∑[n]/or(2, n+1))` -/
def P17597148889479835188.Spec : Prop :=
  ∀ n, P17597148889479835188.a n = A004525 n

end A004525

/-! ## A004525.P16740304639355257936

`∑[char[or(1, n+1)+n]]`
-/

namespace A004525.P16740304639355257936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004525.P16740304639355257936

namespace A004525

/-- `∑[char[or(1, n+1)+n]]` -/
def P16740304639355257936.Spec : Prop :=
  ∀ n, (P16740304639355257936.a n : ℤ) = A004525 n

end A004525

/-! ## A004525.P4564007492247888345

`∑[1-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A004525.P4564007492247888345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004525.P4564007492247888345

namespace A004525

/-- `∑[1-a(n-2)]` -/
def P4564007492247888345.Spec : Prop :=
  ∀ n, P4564007492247888345.a n = A004525 n

end A004525

/-! ## A004525.P11159000358226101015

`round((or(2, n-1)+n)/4)`
-/

namespace A004525.P11159000358226101015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 2 ((n : ℤ) - 1) + (n : ℤ) : ℚ) / 4)

end

end A004525.P11159000358226101015

namespace A004525

/-- `round((or(2, n-1)+n)/4)` -/
def P11159000358226101015.Spec : Prop :=
  ∀ n, P11159000358226101015.a n = A004525 n

end A004525

/-! ## A004525.P10333690441421138579

`ceil((2*n-and(2, n))/4)`
-/

namespace A004525.P10333690441421138579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) - (Nat.land 2 n : ℤ) : ℚ) / 4⌉

end

end A004525.P10333690441421138579

namespace A004525

/-- `ceil((2*n-and(2, n))/4)` -/
def P10333690441421138579.Spec : Prop :=
  ∀ n, P10333690441421138579.a n = A004525 n

end A004525

/-! ## A004525.P18204608622189588042

`ogf((x-x^2+x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A004525.P18204608622189588042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 1] [1, -2, 2, -2, 1] n

end

end A004525.P18204608622189588042

namespace A004525

/-- `ogf((x-x^2+x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P18204608622189588042.Spec : Prop :=
  ∀ n, P18204608622189588042.a n = A004525 n

end A004525

/-! ## A004525.P11250941186951780023

`Δ[A054925(n)]`
-/

namespace A004525.P11250941186951780023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004525.P11250941186951780023

namespace A004525

/-- `Δ[A054925(n)]` -/
def P11250941186951780023.Spec : Prop :=
  ∀ n, P11250941186951780023.a n = A004525 n

end A004525

/-! ## A004525.P3237288245578613108

`floor(sqrt(A302488(n)))`
-/

namespace A004525.P3237288245578613108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A302488 n)

end

end A004525.P3237288245578613108

namespace A004525

/-- `floor(sqrt(A302488(n)))` -/
def P3237288245578613108.Spec : Prop :=
  ∀ n, P3237288245578613108.a n = A004525 n

end A004525

/-! ## A004525.P1132119858760115043

`∑[char[A127932(n)]]`
-/

namespace A004525.P1132119858760115043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127932 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004525.P1132119858760115043

namespace A004525

/-- `∑[char[A127932(n)]]` -/
def P1132119858760115043.Spec : Prop :=
  ∀ n, (P1132119858760115043.a n : ℤ) = A004525 n

end A004525

/-!
# A004526: Nonnegative integers repeated, floor(n/2).

The programs for A004526, the canonical program `A004526.P10084182425416171735` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004526 has offset 0).

The definition of A004526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)` (program `A004526.P10084182425416171735`, by `A004526.P10084182425416171735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004526.P10084182425416171735

`floor(n/2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004526

/-- `floor(n/2)` -/
def P10084182425416171735.Spec : Prop :=
  ∀ n, P10084182425416171735.a n = A004526 n

theorem P10084182425416171735.correct : P10084182425416171735.Spec := by
  intro n
  simp only [A004526]

end A004526

/-! ## A004526.P8433294733218743104

`1+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A004526.P8433294733218743104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + a (n - 2)

end

end A004526.P8433294733218743104

namespace A004526

/-- `1+a(n-2)` -/
def P8433294733218743104.Spec : Prop :=
  ∀ n, (P8433294733218743104.a n : ℤ) = A004526 n

end A004526

/-! ## A004526.P15152797386365068221

`(n-A000035(n))/2`
-/

namespace A004526.P15152797386365068221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000035 n : ℚ) / 2

end

end A004526.P15152797386365068221

namespace A004526

/-- `(n-A000035(n))/2` -/
def P15152797386365068221.Spec : Prop :=
  ∀ n, P15152797386365068221.a n = (A004526 n : ℚ)

end A004526

/-! ## A004526.P13119892666038722323

`A008615(n)+A002264(n)`
-/

namespace A004526.P13119892666038722323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n + A002264 n

end

end A004526.P13119892666038722323

namespace A004526

/-- `A008615(n)+A002264(n)` -/
def P13119892666038722323.Spec : Prop :=
  ∀ n, P13119892666038722323.a n = A004526 n

theorem P13119892666038722323.correct : P13119892666038722323.Spec := by
  intro n
  simp only [A004526, Nat.add_sub_cancel, A004526.P13119892666038722323.a, A004526.P10084182425416171735.a, A002264, A002264.P5647656940077635922.a, A008615, A008615.P10410393553474300613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004526

/-! ## A004526.P9785368430740804626

`and(n, -2)/2`
-/

namespace A004526.P9785368430740804626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2

end

end A004526.P9785368430740804626

namespace A004526

/-- `and(n, -2)/2` -/
def P9785368430740804626.Spec : Prop :=
  ∀ n, P9785368430740804626.a n = (A004526 n : ℚ)

end A004526

/-! ## A004526.P5195139162956440349

`n-∑[n%2]`
-/

namespace A004526.P5195139162956440349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004526.P5195139162956440349

namespace A004526

/-- `n-∑[n%2]` -/
def P5195139162956440349.Spec : Prop :=
  ∀ n, P5195139162956440349.a n = A004526 n

end A004526

/-! ## A004526.P12836250002467590035

`n-∑[and(1, n)]`
-/

namespace A004526.P12836250002467590035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004526.P12836250002467590035

namespace A004526

/-- `n-∑[and(1, n)]` -/
def P12836250002467590035.Spec : Prop :=
  ∀ n, P12836250002467590035.a n = A004526 n

end A004526

/-! ## A004526.P995170322344132699

`∑[∑{p}[n, val(#, 2)]]`
-/

namespace A004526.P995170322344132699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004526.P995170322344132699

namespace A004526

/-- `∑[∑{p}[n, val(#, 2)]]` -/
def P995170322344132699.Spec : Prop :=
  ∀ n, (P995170322344132699.a n : ℤ) = A004526 n

end A004526

/-! ## A004526.P11265772503710890174

`∑[val(∏{p}[n, #], 2)]`
-/

namespace A004526.P11265772503710890174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004526.P11265772503710890174

namespace A004526

/-- `∑[val(∏{p}[n, #], 2)]` -/
def P11265772503710890174.Spec : Prop :=
  ∀ n, (P11265772503710890174.a n : ℤ) = A004526 n

end A004526

/-! ## A004526.P1608476524947376578

`∑[∑{p}[n, C(2, #)]]`
-/

namespace A004526.P1608476524947376578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004526.P1608476524947376578

namespace A004526

/-- `∑[∑{p}[n, C(2, #)]]` -/
def P1608476524947376578.Spec : Prop :=
  ∀ n, (P1608476524947376578.a n : ℤ) = A004526 n

end A004526

/-! ## A004526.P6358588163784503807

`round(sinh(log(or(1, n))))`
-/

namespace A004526.P6358588163784503807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (Nat.lor 1 n : ℝ)))

end

end A004526.P6358588163784503807

namespace A004526

/-- `round(sinh(log(or(1, n))))` -/
def P6358588163784503807.Spec : Prop :=
  ∀ n, P6358588163784503807.a n = A004526 n

end A004526

/-! ## A004526.P13131763911478740265

`(or(1, n)-1)/2`
-/

namespace A004526.P13131763911478740265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2

end

end A004526.P13131763911478740265

namespace A004526

/-- `(or(1, n)-1)/2` -/
def P13131763911478740265.Spec : Prop :=
  ∀ n, P13131763911478740265.a n = (A004526 n : ℚ)

end A004526

/-! ## A004526.P4399595126225132656

`xor(1, or(1, n))/2`
-/

namespace A004526.P4399595126225132656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.lor 1 n) : ℚ) / 2

end

end A004526.P4399595126225132656

namespace A004526

/-- `xor(1, or(1, n))/2` -/
def P4399595126225132656.Spec : Prop :=
  ∀ n, P4399595126225132656.a n = (A004526 n : ℚ)

end A004526

/-! ## A004526.P9796951598634800647

`(n-and(1, n))/2`
-/

namespace A004526.P9796951598634800647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land 1 n : ℤ) : ℚ) / 2

end

end A004526.P9796951598634800647

namespace A004526

/-- `(n-and(1, n))/2` -/
def P9796951598634800647.Spec : Prop :=
  ∀ n, P9796951598634800647.a n = (A004526 n : ℚ)

end A004526

/-! ## A004526.P7902297209044084555

`xor(n, and(1, n))/2`
-/

namespace A004526.P7902297209044084555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.land 1 n) : ℚ) / 2

end

end A004526.P7902297209044084555

namespace A004526

/-- `xor(n, and(1, n))/2` -/
def P7902297209044084555.Spec : Prop :=
  ∀ n, P7902297209044084555.a n = (A004526 n : ℚ)

end A004526

/-! ## A004526.P7425437183911258547

`∑[log2(gcd(2, n))]-1`
-/

namespace A004526.P7425437183911258547
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004526.P7425437183911258547

namespace A004526

/-- `∑[log2(gcd(2, n))]-1` -/
def P7425437183911258547.Spec : Prop :=
  ∀ n, P7425437183911258547.a n = (A004526 n : ℝ)

end A004526

/-! ## A004526.P2402135574029969831

`ceil(n/2-cos(1))`
-/

namespace A004526.P2402135574029969831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2 : ℝ) - Real.cos (1 : ℝ)⌉

end

end A004526.P2402135574029969831

namespace A004526

/-- `ceil(n/2-cos(1))` -/
def P2402135574029969831.Spec : Prop :=
  ∀ n, P2402135574029969831.a n = A004526 n

end A004526

/-! ## A004526.P3756788221558171396

`round(cos(2)+n/2)`
-/

namespace A004526.P3756788221558171396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n : ℚ) / 2 : ℝ))

end

end A004526.P3756788221558171396

namespace A004526

/-- `round(cos(2)+n/2)` -/
def P3756788221558171396.Spec : Prop :=
  ∀ n, P3756788221558171396.a n = A004526 n

end A004526

/-! ## A004526.P1754020413103985149

`ceil(cos(3)+n/2)`
-/

namespace A004526.P1754020413103985149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((n : ℚ) / 2 : ℝ)⌉

end

end A004526.P1754020413103985149

namespace A004526

/-- `ceil(cos(3)+n/2)` -/
def P1754020413103985149.Spec : Prop :=
  ∀ n, P1754020413103985149.a n = A004526 n

end A004526

/-! ## A004526.P7897183671763136443

`round((n-cos(1))/2)`
-/

namespace A004526.P7897183671763136443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.cos (1 : ℝ)) / 2)

end

end A004526.P7897183671763136443

namespace A004526

/-- `round((n-cos(1))/2)` -/
def P7897183671763136443.Spec : Prop :=
  ∀ n, P7897183671763136443.a n = A004526 n

end A004526

/-!
# A004527: Ratios of successive terms are 1,2,2,3,4,4,5,6,6,...

The programs for A004527, there is no canonical definition to state claims against.
-/

/-! ## A004527.P17066365882578506088

`∏[ceil(floor(2/acot(n))/3)]`
-/

namespace A004527.P17066365882578506088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004527.P17066365882578506088

/-! ## A004527.P4947374356754889291

`∏[ceil(abs((4*n-1)/6))]`
-/

namespace A004527.P4947374356754889291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((4 * n : ℤ) - 1 : ℚ) / 6|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004527.P4947374356754889291

/-! ## A004527.P4771309545592538274

`a(n-1)*∑[n²%3]` with `a(0)=1`
-/

namespace A004527.P4771309545592538274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004527.P4771309545592538274

/-! ## A004527.P3015326161614998548

`ceil(2*n/3)*a(n-1)` with `a(0)=1`
-/

namespace A004527.P3015326161614998548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈2 * ((n : ℚ) / 3)⌉ * a (n - 1)

end

end A004527.P3015326161614998548

/-! ## A004527.P1970569924391134852

`a(n-1)*A004523(n+1)` with `a(0)=1`
-/

namespace A004527.P1970569924391134852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004523 (n + 1)

end

end A004527.P1970569924391134852

/-! ## A004527.P11039639514325048667

`a(n-1)*A322042(n+1)` with `a(0)=1`
-/

namespace A004527.P11039639514325048667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A322042 (n + 1)

end

end A004527.P11039639514325048667

/-! ## A004527.P3725323257959288694

`∏[A322042(n+2)]/A322042(n+2)`
-/

namespace A004527.P3725323257959288694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A322042 (n + 2) : ℚ)

end

end A004527.P3725323257959288694

/-! ## A004527.P14353430823659202109

`∏[A086161(2*n)]/A086161(2*n)`
-/

namespace A004527.P14353430823659202109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A086161 (2 * n) : ℚ)

end

end A004527.P14353430823659202109

/-! ## A004527.P12134825200636741422

`∏[A099480(2*n)]/A099480(2*n)`
-/

namespace A004527.P12134825200636741422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099480 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A099480 (2 * n) : ℚ)

end

end A004527.P12134825200636741422

/-! ## A004527.P14644171665168746177

`∏[A154958(2*n)]/A154958(2*n)`
-/

namespace A004527.P14644171665168746177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A154958 (2 * n) : ℚ)

end

end A004527.P14644171665168746177

/-!
# A004528: Ratios of successive terms are 1,2,2,2,3,4,4,4,5,6,6,6,7,...

The programs for A004528, there is no canonical definition to state claims against.
-/

/-! ## A004528.P9609741403125690773

`∏[n-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A004528.P9609741403125690773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004528.P9609741403125690773

/-! ## A004528.P976427133805601919

`a(n-1)*∑[∑[n]%2]` with `a(0)=1`
-/

namespace A004528.P976427133805601919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004528.P976427133805601919

/-! ## A004528.P6414113922481704311

`a(n-1)*∑[and(1, ∑[n])]` with `a(0)=1`
-/

namespace A004528.P6414113922481704311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004528.P6414113922481704311

/-! ## A004528.P7663536386197190968

`a(n-1)*Δ[floor(∑[n/2])]` with `a(0)=1`
-/

namespace A004528.P7663536386197190968
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A004528.P7663536386197190968

/-! ## A004528.P7137530729133715731

`ceil(∑[n]/or(2, n))*a(n-1)` with `a(0)=1`
-/

namespace A004528.P7137530729133715731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 2 n : ℚ)⌉ * a (n - 1)

end

end A004528.P7137530729133715731

/-! ## A004528.P15764932974167519317

`∏[∑[char[char[2*(n+1)]+2*n]]]`
-/

namespace A004528.P15764932974167519317
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + 2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004528.P15764932974167519317

/-! ## A004528.P4471125485281174219

`(n-∑[char[or(2, n)+1]])*a(n-1)` with `a(0)=1`
-/

namespace A004528.P4471125485281174219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * a (n - 1)

end

end A004528.P4471125485281174219

/-! ## A004528.P18303575239476618674

`(n-a(n-2)/a(n-3))*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A004528.P18303575239476618674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ((n : ℚ) - a (n - 2) / a (n - 3)) * a (n - 1)

end

end A004528.P18303575239476618674

/-! ## A004528.P17585451220402645950

`A004524(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A004528.P17585451220402645950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004524 (n + 2) * a (n - 1)

end

end A004528.P17585451220402645950

/-! ## A004528.P3608863749948257944

`(n-A004524(n))*a(n-1)` with `a(0)=1`
-/

namespace A004528.P3608863749948257944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - A004524 n) * a (n - 1)

end

end A004528.P3608863749948257944

/-!
# A004529: Ratios of successive terms are 1,1,1,2,3,3,3,4,5,5,5,6,...

The programs for A004529, there is no canonical definition to state claims against.
-/

/-! ## A004529.P10081619162464966093

`∏[or((n%2)^n, floor(n/2))]`
-/

namespace A004529.P10081619162464966093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n % 2) ^ n : ℕ) : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004529.P10081619162464966093

/-! ## A004529.P16139511342592487814

`∏[n-(a(n-2)+1)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A004529.P16139511342592487814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  (n : ℤ) - (f1 (n - 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004529.P16139511342592487814

/-! ## A004529.P13143343045416784978

`∏[n-1-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A004529.P13143343045416784978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  (n : ℤ) - 1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004529.P13143343045416784978

/-! ## A004529.P16228417849245100316

`a(n-1)*Δ[ceil(C(n, 2)/2)]` with `a(0)=1`
-/

namespace A004529.P16228417849245100316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A004529.P16228417849245100316

/-! ## A004529.P3720314620547379419

`(∑[∑[n+1]%2]-1)*a(n-1)` with `a(0)=1`
-/

namespace A004529.P3720314620547379419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * a (n - 1)

end

end A004529.P3720314620547379419

/-! ## A004529.P596937582560492908

`(∑[char[and(2, n)+n]]-1)*a(n-1)` with `a(0)=1`
-/

namespace A004529.P596937582560492908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * a (n - 1)

end

end A004529.P596937582560492908

/-! ## A004529.P15913387929517016512

`(∑[1-a(n-2)]-1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A004529.P15913387929517016512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * a (n - 1)

end

end A004529.P15913387929517016512

/-! ## A004529.P16356753937616369303

`a(n-1)*A004525(n)` with `a(0)=1`
-/

namespace A004529.P16356753937616369303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004525 n

end

end A004529.P16356753937616369303

/-! ## A004529.P1595589050982266450

`a(n-1)*A049206(n)` with `a(0)=1, a(1)=1`
-/

namespace A004529.P1595589050982266450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A049206 n

end

end A004529.P1595589050982266450

/-! ## A004529.P8199315047418199386

`∏[A028310(A004525(n))]`
-/

namespace A004529.P8199315047418199386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004529.P8199315047418199386

/-!
# A004530: Expansion of (theta_2(0, x) + theta_3(0, x) + theta_4(0, x)) / 2 in powers of x^(1/4).

The programs for A004530, the canonical program `A004530.P5757221461617830557` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004530 has offset 0).

The definition of A004530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004530.P14675822130772080199

`char[(4*n)²]+char[A154615(n+1)]`
-/

namespace A004530.P14675822130772080199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A004530.P14675822130772080199

namespace A004530

/-- `char[(4*n)²]+char[A154615(n+1)]` -/
def P14675822130772080199.Spec : Prop :=
  ∀ n, (P14675822130772080199.a n : ℤ) = A004530 n

end A004530

/-! ## A004530.P18135955060411384655

`C(char[(n+1)²]+char[n²], A072400(n+1))`
-/

namespace A004530.P18135955060411384655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0)) (A072400 (n + 1)).toNat

end

end A004530.P18135955060411384655

namespace A004530

/-- `C(char[(n+1)²]+char[n²], A072400(n+1))` -/
def P18135955060411384655.Spec : Prop :=
  ∀ n, (P18135955060411384655.a n : ℤ) = A004530 n

end A004530

/-! ## A004530.P7809862696236414692

`A010052(n)*A257179(n)`
-/

namespace A004530.P7809862696236414692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A257179 n

end

end A004530.P7809862696236414692

namespace A004530

/-- `A010052(n)*A257179(n)` -/
def P7809862696236414692.Spec : Prop :=
  ∀ n, P7809862696236414692.a n = A004530 n

end A004530

/-! ## A004530.P5757221461617830557

`A257179(n)%(A000122(n)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004530

/-- `A257179(n)%(A000122(n)+1)` -/
def P5757221461617830557.Spec : Prop :=
  ∀ n, P5757221461617830557.a n = A004530 n

theorem P5757221461617830557.correct : P5757221461617830557.Spec := by
  intro n
  simp only [A004530]

end A004530

/-! ## A004530.P5347317665745008518

`A014682(A000122(n)*A014682(n+1))%4`
-/

namespace A004530.P5347317665745008518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 (A000122 n * A014682 (n + 1)).toNat) 4

end

end A004530.P5347317665745008518

namespace A004530

/-- `A014682(A000122(n)*A014682(n+1))%4` -/
def P5347317665745008518.Spec : Prop :=
  ∀ n, P5347317665745008518.a n = A004530 n

end A004530

/-! ## A004530.P1015369207239656400

`C(A000122(n), A266152(A089080(3*n+5)))`
-/

namespace A004530.P1015369207239656400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000122 n).toNat (A266152 (A089080 (3 * n + 5)).toNat).toNat

end

end A004530.P1015369207239656400

namespace A004530

/-- `C(A000122(n), A266152(A089080(3*n+5)))` -/
def P1015369207239656400.Spec : Prop :=
  ∀ n, (P1015369207239656400.a n : ℤ) = A004530 n

end A004530

/-! ## A004530.P4222187813753819722

`A005925(3*n)%3`
-/

namespace A004530.P4222187813753819722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005925 (3 * n)) 3

end

end A004530.P4222187813753819722

namespace A004530

/-- `A005925(3*n)%3` -/
def P4222187813753819722.Spec : Prop :=
  ∀ n, P4222187813753819722.a n = A004530 n

end A004530

/-! ## A004530.P10607402852570046772

`∑[A278887(n)]*char[n²]`
-/

namespace A004530.P10607402852570046772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278887 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A004530.P10607402852570046772

namespace A004530

/-- `∑[A278887(n)]*char[n²]` -/
def P10607402852570046772.Spec : Prop :=
  ∀ n, P10607402852570046772.a n = A004530 n

end A004530

/-! ## A004530.P13042012115857682373

`∏{e}[n, A328571(A257670((n+1)²))%#]`
-/

namespace A004530.P13042012115857682373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (A328571 (A257670 ((n + 1) ^ 2)).toNat) (Nat.factorization (f1 n) p : ℤ)

end

end A004530.P13042012115857682373

namespace A004530

/-- `∏{e}[n, A328571(A257670((n+1)²))%#]` -/
def P13042012115857682373.Spec : Prop :=
  ∀ n, P13042012115857682373.a n = A004530 n

end A004530

/-! ## A004530.P14729857933303604801

`∏{e}[n, (n+1-A306248(n+2))%#]`
-/

namespace A004530.P14729857933303604801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod ((n + 1 : ℤ) - A306248 (n + 2)) (Nat.factorization (f1 n) p : ℤ)

end

end A004530.P14729857933303604801

namespace A004530

/-- `∏{e}[n, (n+1-A306248(n+2))%#]` -/
def P14729857933303604801.Spec : Prop :=
  ∀ n, P14729857933303604801.a n = A004530 n

end A004530

/-!
# A004531: Number of integer solutions to x^2 + 4 * y^2 = n.

The programs for A004531, there is no canonical definition to state claims against.
-/

/-! ## A004531.P7728995047528619277

`abs(A134014(n))`
-/

namespace A004531.P7728995047528619277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134014 n|

end

end A004531.P7728995047528619277

/-! ## A004531.P18077292017232564272

`A033999(n)*A134014(n)`
-/

namespace A004531.P18077292017232564272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A134014 n

end

end A004531.P18077292017232564272

/-! ## A004531.P17820126320420110555

`A087960(n)*A134014(n)`
-/

namespace A004531.P17820126320420110555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A134014 n

end

end A004531.P17820126320420110555

/-! ## A004531.P5569921108350898984

`A094267(n)*A134014(n)`
-/

namespace A004531.P5569921108350898984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A134014 n

end

end A004531.P5569921108350898984

/-! ## A004531.P460548461607098114

`A134014(n)*A219977(n)`
-/

namespace A004531.P460548461607098114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134014 n * A219977 n

end

end A004531.P460548461607098114

/-! ## A004531.P976445406867089868

`gcd(A000038(n), A134014(n))`
-/

namespace A004531.P976445406867089868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A134014 n)

end

end A004531.P976445406867089868

/-! ## A004531.P7747477825378282722

`lcm(A000034(n), A134014(n))`
-/

namespace A004531.P7747477825378282722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A134014 n)

end

end A004531.P7747477825378282722

/-! ## A004531.P6104725184097157336

`∑{d}[A134014(n), A000010(#)]`
-/

namespace A004531.P6104725184097157336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A004531.P6104725184097157336

/-! ## A004531.P4903545751051343749

`A071935(n+1)*A134014(n)`
-/

namespace A004531.P4903545751051343749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A134014 n

end

end A004531.P4903545751051343749

/-! ## A004531.P17682469732561438981

`A134014(n)*A309873(n+1)`
-/

namespace A004531.P17682469732561438981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134014 n * A309873 (n + 1)

end

end A004531.P17682469732561438981

/-! ## A004531.P5607035872843106699

`(A000035(n+1)-A000035(n))*A134014(n)`
-/

namespace A004531.P5607035872843106699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A134014 n

end

end A004531.P5607035872843106699

/-! ## A004531.P1027544252487756680

`gcd(A204531(2*n), A204531(n))`
-/

namespace A004531.P1027544252487756680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204531 (2 * n)) (A204531 n)

end

end A004531.P1027544252487756680

/-! ## A004531.P8083471035100682882

`gcd(A246950(2*n), A246950(n))`
-/

namespace A004531.P8083471035100682882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246950 (2 * n)) (A246950 n)

end

end A004531.P8083471035100682882

/-! ## A004531.P10031841082503780260

`A028573(4*n)`
-/

namespace A004531.P10031841082503780260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028573 (4 * n)

end

end A004531.P10031841082503780260

/-! ## A004531.P10441782503243416511

`A028629(4*4*n)`
-/

namespace A004531.P10441782503243416511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028629 (4 * (4 * n))

end

end A004531.P10441782503243416511

/-!
# A004532: Theta series of {D_10}^{+} lattice.

The programs for A004532, there is no canonical definition to state claims against.
-/

/-! ## A004532.P3582371986071565321

`A366592(A212112(n))`
-/

namespace A004532.P3582371986071565321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366592 (A212112 n).toNat

end

end A004532.P3582371986071565321

/-! ## A004532.P11899438879400666612

`and(A045824(n), A128595(n))`
-/

namespace A004532.P11899438879400666612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045824 n) (A128595 n)

end

end A004532.P11899438879400666612

/-!
# A004533: Theta series of 12-dimensional unimodular lattice {D_12}^{+}.

The programs for A004533, there is no canonical definition to state claims against.
-/

/-! ## A004533.P15265368680317131851

`(A286346(n)+A022065(n))/2`
-/

namespace A004533.P15265368680317131851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286346 n + A022065 n : ℚ) / 2

end

end A004533.P15265368680317131851

/-!
# A004534: Theta series of {D_14}^{+} lattice.

The programs for A004534, there is no canonical definition to state claims against.
-/

/-! ## A004534.P9863148486198894800

`and(A105920(n), A105947(A105954(n)))`
-/

namespace A004534.P9863148486198894800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105920 n) (A105947 (A105954 n).toNat)

end

end A004534.P9863148486198894800

/-! ## A004534.P8045570595455368694

`and(A105920(n), A216771(A331557(n+1)))`
-/

namespace A004534.P8045570595455368694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105920 n) (A216771 (A331557 (n + 1)).toNat)

end

end A004534.P8045570595455368694

/-!
# A004536: Theta series of 15-dimensional unimodular lattice A15+.

The programs for A004536, there is no canonical definition to state claims against.
-/

/-! ## A004536.P15448370574519572816

`A023927(16*n)`
-/

namespace A004536.P15448370574519572816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023927 (16 * n)

end

end A004536.P15448370574519572816

/-! ## A004536.P9365243784294295739

`xor(1, xor(1, A023927(A008598(n))))`
-/

namespace A004536.P9365243784294295739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A023927 (A008598 n).toNat))

end

end A004536.P9365243784294295739

/-! ## A004536.P8696364609109987800

`gcd(A000038(n), A023927(A008598(n)))`
-/

namespace A004536.P8696364609109987800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A023927 (A008598 n).toNat)

end

end A004536.P8696364609109987800

/-! ## A004536.P6204575781796566835

`lcm(A020985(n), A023927(A008598(n)))`
-/

namespace A004536.P6204575781796566835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A023927 (A008598 n).toNat)

end

end A004536.P6204575781796566835

/-! ## A004536.P15397127892064574728

`A023927(A008598(n))/A057077(n)²`
-/

namespace A004536.P15397127892064574728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A057077 n ^ 2 : ℚ)

end

end A004536.P15397127892064574728

/-! ## A004536.P3673648432438517675

`A023927(A008598(n))+A000007(n+1)`
-/

namespace A004536.P3673648432438517675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023927 (A008598 n).toNat + A000007 (n + 1)

end

end A004536.P3673648432438517675

/-! ## A004536.P11300378020893613289

`and(A023927(A008598(n)), A153881(n+1))`
-/

namespace A004536.P11300378020893613289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023927 (A008598 n).toNat) (A153881 (n + 1))

end

end A004536.P11300378020893613289

/-! ## A004536.P6343154914675802265

`A023927(A008598(n))/A000108(C(2, n))`
-/

namespace A004536.P6343154914675802265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A000108 (Nat.choose 2 n) : ℚ)

end

end A004536.P6343154914675802265

/-! ## A004536.P14882471813120986027

`A023927(A008598(n))/A007318(C(2, n))`
-/

namespace A004536.P14882471813120986027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A004536.P14882471813120986027

/-! ## A004536.P17662261562455691688

`A023927(A008598(n))/A154990(n+2)²`
-/

namespace A004536.P17662261562455691688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A154990 (n + 2) ^ 2 : ℚ)

end

end A004536.P17662261562455691688

/-! ## A004536.P5575116539928722683

`A023927(A008598(n))/A007318(and(1, -n))`
-/

namespace A004536.P5575116539928722683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A004536.P5575116539928722683

/-! ## A004536.P9094773166667766783

`A023927(A008598(n))/A000010(C(2, n)!)`
-/

namespace A004536.P9094773166667766783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A000010 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A004536.P9094773166667766783

/-! ## A004536.P14368116117003870460

`A023927(A008598(n))/and(1, A000041(n))!`
-/

namespace A004536.P14368116117003870460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (Nat.factorial (Int.land 1 (A000041 n)).toNat : ℚ)

end

end A004536.P14368116117003870460

/-! ## A004536.P3042019723888168460

`A023927(A008598(n))/A018252(C(2, n)!)`
-/

namespace A004536.P3042019723888168460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A018252 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A004536.P3042019723888168460

/-! ## A004536.P17232086978658323695

`A023927(A008598(n))/A000045(C(2, n)+1)`
-/

namespace A004536.P17232086978658323695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A000045 (Nat.choose 2 n + 1) : ℚ)

end

end A004536.P17232086978658323695

/-! ## A004536.P9805215315866715550

`A023927(A008598(n))^and(1, A000040(n+1))`
-/

namespace A004536.P9805215315866715550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A004536.P9805215315866715550

/-! ## A004536.P6623555393781172911

`A023927(A008598(n))+A000045(C(n, n+1))`
-/

namespace A004536.P6623555393781172911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023927 (A008598 n).toNat + A000045 (Nat.choose n (n + 1))

end

end A004536.P6623555393781172911

/-! ## A004536.P16858327818960347247

`A023927(A008598(n))/A001222(A031928(n+1))`
-/

namespace A004536.P16858327818960347247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A001222 (A031928 (n + 1)).toNat : ℚ)

end

end A004536.P16858327818960347247

/-! ## A004536.P4218045454301691155

`A023927(A008598(n))/A001222(A008578(n+3))`
-/

namespace A004536.P4218045454301691155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023927 (A008598 n).toNat : ℚ) / (A001222 (A008578 (n + 3)).toNat : ℚ)

end

end A004536.P4218045454301691155

/-!
# A004538: a(n) = 3*n^2 + 3*n - 1.

The programs for A004538, the canonical program `A004538.P10298653278695798692` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004538 has offset 0).

The definition of A004538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+3*n-1` (program `A004538.P10298653278695798692`, by `A004538.P10298653278695798692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004538.P7868588807493041810

`a(n-1)+6*n` with `a(0)=-1`
-/

namespace A004538.P7868588807493041810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + (6 * n : ℤ)

end

end A004538.P7868588807493041810

namespace A004538

/-- `a(n-1)+6*n` -/
def P7868588807493041810.Spec : Prop :=
  ∀ n, P7868588807493041810.a n = A004538 n

theorem P7868588807493041810.correct : P7868588807493041810.Spec := by
  intro n
  induction n with
  | zero => simp [A004538, A004538.P7868588807493041810.a, A004538.P10298653278695798692.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A004538, Nat.add_sub_cancel, A004538.P7868588807493041810.a, A004538.P10298653278695798692.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A004538

/-! ## A004538.P10298653278695798692

`3*n²+3*n-1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004538

/-- `3*n²+3*n-1` -/
def P10298653278695798692.Spec : Prop :=
  ∀ n, P10298653278695798692.a n = A004538 n

theorem P10298653278695798692.correct : P10298653278695798692.Spec := by
  intro n
  simp only [A004538]

end A004538

/-! ## A004538.P11200880166387716861

`xor(∑[-(6*n)], -1)`
-/

namespace A004538.P11200880166387716861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A004538.P11200880166387716861

namespace A004538

/-- `xor(∑[-(6*n)], -1)` -/
def P11200880166387716861.Spec : Prop :=
  ∀ n, P11200880166387716861.a n = A004538 n

end A004538

/-! ## A004538.P14124086821744725063

`or(1, Δ[n^3]-2)`
-/

namespace A004538.P14124086821744725063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2)

end

end A004538.P14124086821744725063

namespace A004538

/-- `or(1, Δ[n^3]-2)` -/
def P14124086821744725063.Spec : Prop :=
  ∀ n, P14124086821744725063.a n = A004538 n

end A004538

/-! ## A004538.P3983946675756062992

`-or(1, ∑[-(6*n)])`
-/

namespace A004538.P3983946675756062992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004538.P3983946675756062992

namespace A004538

/-- `-or(1, ∑[-(6*n)])` -/
def P3983946675756062992.Spec : Prop :=
  ∀ n, P3983946675756062992.a n = A004538 n

end A004538

/-! ## A004538.P16507854169704676665

`Δ[lcm(n, 1-n²)-n]`
-/

namespace A004538.P16507854169704676665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (1 - (n ^ 2 : ℤ)) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004538.P16507854169704676665

namespace A004538

/-- `Δ[lcm(n, 1-n²)-n]` -/
def P16507854169704676665.Spec : Prop :=
  ∀ n, P16507854169704676665.a n = A004538 n

end A004538

/-! ## A004538.P16591544376724886424

`∑[a(n-1)+6]` with `a(0)=-1, a(1)=6`
-/

namespace A004538.P16591544376724886424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 6] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004538.P16591544376724886424

namespace A004538

/-- `∑[a(n-1)+6]` -/
def P16591544376724886424.Spec : Prop :=
  ∀ n, P16591544376724886424.a n = A004538 n

end A004538

/-! ## A004538.P16402327464353117434

`ogf((1-8x+x^2)/(-1+3x-3x^2+x^3))`
-/

namespace A004538.P16402327464353117434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 8, -1] [1, -3, 3, -1] n

end

end A004538.P16402327464353117434

namespace A004538

/-- `ogf((1-8x+x^2)/(-1+3x-3x^2+x^3))` -/
def P16402327464353117434.Spec : Prop :=
  ∀ n, P16402327464353117434.a n = A004538 n

end A004538

/-! ## A004538.P14420110595719832496

`∑[6*n-C(2, n+2)]`
-/

namespace A004538.P14420110595719832496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004538.P14420110595719832496

namespace A004538

/-- `∑[6*n-C(2, n+2)]` -/
def P14420110595719832496.Spec : Prop :=
  ∀ n, P14420110595719832496.a n = A004538 n

end A004538

/-! ## A004538.P4265409491082061339

`Δ[n^3-lcm(2, 2*n)]`
-/

namespace A004538.P4265409491082061339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.lcm 2 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004538.P4265409491082061339

namespace A004538

/-- `Δ[n^3-lcm(2, 2*n)]` -/
def P4265409491082061339.Spec : Prop :=
  ∀ n, P4265409491082061339.a n = A004538 n

theorem P4265409491082061339.correct : P4265409491082061339.Spec := by
  intro n
  simp only [A004538, Nat.add_sub_cancel, A004538.P4265409491082061339.f1, A004538.P4265409491082061339.a, A004538.P10298653278695798692.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A004538

/-! ## A004538.P17794040021292630918

`floor(n-∑[a(n-1)-6])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A004538.P17794040021292630918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004538.P17794040021292630918

namespace A004538

/-- `floor(n-∑[a(n-1)-6])` -/
def P17794040021292630918.Spec : Prop :=
  ∀ n, P17794040021292630918.a n = A004538 n

end A004538

/-! ## A004538.P1224598949049096522

`Δ[n*(gcd(n, 2*n)²-2)]`
-/

namespace A004538.P1224598949049096522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.gcd n (2 * n) ^ 2 : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004538.P1224598949049096522

namespace A004538

/-- `Δ[n*(gcd(n, 2*n)²-2)]` -/
def P1224598949049096522.Spec : Prop :=
  ∀ n, P1224598949049096522.a n = A004538 n

theorem P1224598949049096522.correct : P1224598949049096522.Spec := by
  intro n
  simp only [A004538, Nat.add_sub_cancel, A004538.P1224598949049096522.f1, A004538.P1224598949049096522.a, A004538.P10298653278695798692.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A004538

/-! ## A004538.P605839481641177804

`Δ[lcm(n-1, 1-n*(n+1))]`
-/

namespace A004538.P605839481641177804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (1 - (n * (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A004538.P605839481641177804

namespace A004538

/-- `Δ[lcm(n-1, 1-n*(n+1))]` -/
def P605839481641177804.Spec : Prop :=
  ∀ n, P605839481641177804.a n = A004538 n

end A004538

/-! ## A004538.P7198397543247895833

`Δ[2*(n+1)*C(n, 2)-n]`
-/

namespace A004538.P7198397543247895833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) * Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004538.P7198397543247895833

namespace A004538

/-- `Δ[2*(n+1)*C(n, 2)-n]` -/
def P7198397543247895833.Spec : Prop :=
  ∀ n, P7198397543247895833.a n = A004538 n

theorem P7198397543247895833.correct : P7198397543247895833.Spec := by
  intro n
  simp only [A004538, Nat.add_sub_cancel, A004538.P7198397543247895833.f1, A004538.P7198397543247895833.a, A004538.P10298653278695798692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004538

/-! ## A004538.P12841943242862045290

`Δ[n*or(2, (n+2)*(n-2))]`
-/

namespace A004538.P12841943242862045290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 2 ((n + 2 : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004538.P12841943242862045290

namespace A004538

/-- `Δ[n*or(2, (n+2)*(n-2))]` -/
def P12841943242862045290.Spec : Prop :=
  ∀ n, P12841943242862045290.a n = A004538 n

end A004538

/-! ## A004538.P15420807922649281961

`Δ[n*xor(2, (n+2)*(n-2))]`
-/

namespace A004538.P15420807922649281961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 2 ((n + 2 : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004538.P15420807922649281961

namespace A004538

/-- `Δ[n*xor(2, (n+2)*(n-2))]` -/
def P15420807922649281961.Spec : Prop :=
  ∀ n, P15420807922649281961.a n = A004538 n

end A004538

/-! ## A004538.P15207682246839499674

`Δ[n^3-and(2*n+1, 2*n)]`
-/

namespace A004538.P15207682246839499674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.land (2 * n + 1) (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004538.P15207682246839499674

namespace A004538

/-- `Δ[n^3-and(2*n+1, 2*n)]` -/
def P15207682246839499674.Spec : Prop :=
  ∀ n, P15207682246839499674.a n = A004538 n

end A004538

/-! ## A004538.P4628749615026325047

`Δ[(C(2*n, 2)-(1-n)²)*(n-1)]`
-/

namespace A004538.P4628749615026325047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 : ℤ) - (1 - (n : ℤ)) ^ 2) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004538.P4628749615026325047

namespace A004538

/-- `Δ[(C(2*n, 2)-(1-n)²)*(n-1)]` -/
def P4628749615026325047.Spec : Prop :=
  ∀ n, P4628749615026325047.a n = A004538 n

theorem P4628749615026325047.correct : P4628749615026325047.Spec := by
  intro n
  simp only [A004538, Nat.add_sub_cancel, A004538.P4628749615026325047.f1, A004538.P4628749615026325047.a, A004538.P10298653278695798692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004538

/-! ## A004538.P10640114838718127388

`Δ[A242135(n)]`
-/

namespace A004538.P10640114838718127388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004538.P10640114838718127388

namespace A004538

/-- `Δ[A242135(n)]` -/
def P10640114838718127388.Spec : Prop :=
  ∀ n, P10640114838718127388.a n = A004538 n

theorem P10640114838718127388.correct : P10640114838718127388.Spec := by
  intro n
  simp only [A004538, Nat.add_sub_cancel, A004538.P10640114838718127388.f1, A004538.P10640114838718127388.a, A004538.P10298653278695798692.a, A242135, A242135.P980314958597288477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004538

/-! ## A004538.P16855143673591151045

`(A049598(n)-2)/2`
-/

namespace A004538.P16855143673591151045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049598 n - 2 : ℚ) / 2

end

end A004538.P16855143673591151045

namespace A004538

/-- `(A049598(n)-2)/2` -/
def P16855143673591151045.Spec : Prop :=
  ∀ n, P16855143673591151045.a n = (A004538 n : ℚ)

theorem P16855143673591151045.correct : P16855143673591151045.Spec := by
  intro n
  simp only [A004538, Nat.add_sub_cancel, A004538.P16855143673591151045.a, A004538.P10298653278695798692.a, A049598, A049598.P15670095646145140517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004538

/-!
# A004539: Expansion of sqrt(2) in base 2.

The programs for A004539, there is no canonical definition to state claims against.
-/

/-! ## A004539.P4192607329737530147

`char[A004713(n+1)-1]`
-/

namespace A004539.P4192607329737530147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A004539.P4192607329737530147

/-! ## A004539.P10580171218379030829

`1-char[A320985(n+1)]`
-/

namespace A004539.P10580171218379030829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004539.P10580171218379030829

/-! ## A004539.P4108553802891477836

`1-char[A246339(n+1)-1]`
-/

namespace A004539.P4108553802891477836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004539.P4108553802891477836

/-! ## A004539.P6691092060905656346

`char[A023443(A004713(n+1))]`
-/

namespace A004539.P6691092060905656346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004713 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A004539.P6691092060905656346

/-! ## A004539.P10506091262888458266

`A201125(n+1)%2`
-/

namespace A004539.P10506091262888458266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201125 (n + 1)) 2

end

end A004539.P10506091262888458266

/-! ## A004539.P14376395113315505424

`and(A060576(n), A201125(n+1))`
-/

namespace A004539.P14376395113315505424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A201125 (n + 1))

end

end A004539.P14376395113315505424

/-! ## A004539.P14941471342147572958

`floor(sqrt(2)*2^n)%2`
-/

namespace A004539.P14941471342147572958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (2 : ℝ) * (2 ^ n : ℝ)⌋ 2

end

end A004539.P14941471342147572958

/-! ## A004539.P9734934715091827265

`and(1, floor(sqrt(2)*2^n))`
-/

namespace A004539.P9734934715091827265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.sqrt (2 : ℝ) * (2 ^ n : ℝ)⌋

end

end A004539.P9734934715091827265

/-! ## A004539.P17039130574563664924

`gcd(2, A017912(2*n+1))-1`
-/

namespace A004539.P17039130574563664924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A017912 (2 * n + 1)) : ℤ) - 1

end

end A004539.P17039130574563664924

/-! ## A004539.P4467601133805974137

`Δ[A116601(2*n+1)]-A116601(2*n+1)`
-/

namespace A004539.P4467601133805974137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A116601 (2 * n + 1)

end

end A004539.P4467601133805974137

/-! ## A004539.P10753713676613455125

`or(1, A136417(2*n+1))-A136417(2*n+1)`
-/

namespace A004539.P10753713676613455125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A136417 (2 * n + 1)) - A136417 (2 * n + 1)

end

end A004539.P10753713676613455125

/-! ## A004539.P3719046940510940494

`Δ[A001521(2*n+1)]-A001521(2*n+1)`
-/

namespace A004539.P3719046940510940494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001521 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001521 (2 * n + 1)

end

end A004539.P3719046940510940494

/-!
# A004540: Expansion of sqrt(2) in base 3.

The programs for A004540, the canonical program `A004540.P11230005680064243108` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004540 has offset 1).

The definition of A004540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004540.P11230005680064243108

`A221944(2*n)%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004540

/-- `A221944(2*n)%3` -/
def P11230005680064243108.Spec : Prop :=
  ∀ n, P11230005680064243108.a n = A004540 (n + 1)

theorem P11230005680064243108.correct : P11230005680064243108.Spec := by
  intro n
  simp only [A004540, Nat.add_sub_cancel]

end A004540

/-! ## A004540.P8160511256984011683

`floor(Δ[3^n]/sqrt(2))%3`
-/

namespace A004540.P8160511256984011683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) / Real.sqrt (2 : ℝ)⌋ 3

end

end A004540.P8160511256984011683

namespace A004540

/-- `floor(Δ[3^n]/sqrt(2))%3` -/
def P8160511256984011683.Spec : Prop :=
  ∀ n, P8160511256984011683.a n = A004540 (n + 1)

end A004540

/-! ## A004540.P6802468241191423738

`A010872(A261049(n)+A109708(n+4))`
-/

namespace A004540.P6802468241191423738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A261049 n + A109708 (n + 4)).toNat

end

end A004540.P6802468241191423738

namespace A004540

/-- `A010872(A261049(n)+A109708(n+4))` -/
def P6802468241191423738.Spec : Prop :=
  ∀ n, P6802468241191423738.a n = A004540 (n + 1)

end A004540

/-!
# A004541: Expansion of sqrt(2) in base 4.

The programs for A004541, the canonical program `A004541.P13526906007645996510` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004541 has offset 1).

The definition of A004541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004541.P13526906007645996510

`A084188(2*n)%4`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004541

/-- `A084188(2*n)%4` -/
def P13526906007645996510.Spec : Prop :=
  ∀ n, P13526906007645996510.a n = A004541 (n + 1)

theorem P13526906007645996510.correct : P13526906007645996510.Spec := by
  intro n
  simp only [A004541, Nat.add_sub_cancel]

end A004541

/-! ## A004541.P4311963014039330939

`A017910(A016813(n))%4`
-/

namespace A004541.P4311963014039330939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017910 (A016813 n).toNat) 4

end

end A004541.P4311963014039330939

namespace A004541

/-- `A017910(A016813(n))%4` -/
def P4311963014039330939.Spec : Prop :=
  ∀ n, P4311963014039330939.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P10446337407477464857

`and(A158388(n+1)+2, A084188(2*n))`
-/

namespace A004541.P10446337407477464857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 (n + 1) + 2) (A084188 (2 * n))

end

end A004541.P10446337407477464857

namespace A004541

/-- `and(A158388(n+1)+2, A084188(2*n))` -/
def P10446337407477464857.Spec : Prop :=
  ∀ n, P10446337407477464857.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P7845459564597682226

`and(A020737(2*n)+2, A084188(2*n))`
-/

namespace A004541.P7845459564597682226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 (2 * n) + 2) (A084188 (2 * n))

end

end A004541.P7845459564597682226

namespace A004541

/-- `and(A020737(2*n)+2, A084188(2*n))` -/
def P7845459564597682226.Spec : Prop :=
  ∀ n, P7845459564597682226.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P17966130625282286831

`and(A048578(2*n)+2, A084188(2*n))`
-/

namespace A004541.P17966130625282286831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 (2 * n) + 2) (A084188 (2 * n))

end

end A004541.P17966130625282286831

namespace A004541

/-- `and(A048578(2*n)+2, A084188(2*n))` -/
def P17966130625282286831.Spec : Prop :=
  ∀ n, P17966130625282286831.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P1734668418487063375

`and(A060576(2*n)+2, A084188(2*n))`
-/

namespace A004541.P1734668418487063375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 (2 * n) + 2) (A084188 (2 * n))

end

end A004541.P1734668418487063375

namespace A004541

/-- `and(A060576(2*n)+2, A084188(2*n))` -/
def P1734668418487063375.Spec : Prop :=
  ∀ n, P1734668418487063375.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P9916050203663331320

`and(A066827(2*n+1)+2, A084188(2*n))`
-/

namespace A004541.P9916050203663331320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (2 * n + 1) + 2) (A084188 (2 * n))

end

end A004541.P9916050203663331320

namespace A004541

/-- `and(A066827(2*n+1)+2, A084188(2*n))` -/
def P9916050203663331320.Spec : Prop :=
  ∀ n, P9916050203663331320.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P4990397520502791393

`and(A000040(A020639(2*(n+1))), A084188(2*n))`
-/

namespace A004541.P4990397520502791393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A020639 (2 * (n + 1))).toNat) (A084188 (2 * n))

end

end A004541.P4990397520502791393

namespace A004541

/-- `and(A000040(A020639(2*(n+1))), A084188(2*n))` -/
def P4990397520502791393.Spec : Prop :=
  ∀ n, P4990397520502791393.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P2710877512208908277

`and(A066827(A066827(2*(n+1))), A084188(2*n))`
-/

namespace A004541.P2710877512208908277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (A066827 (2 * (n + 1))).toNat) (A084188 (2 * n))

end

end A004541.P2710877512208908277

namespace A004541

/-- `and(A066827(A066827(2*(n+1))), A084188(2*n))` -/
def P2710877512208908277.Spec : Prop :=
  ∀ n, P2710877512208908277.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P6196752362338298782

`and(A195744(2*n)+2, A084188(2*n))`
-/

namespace A004541.P6196752362338298782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 (2 * n) + 2) (A084188 (2 * n))

end

end A004541.P6196752362338298782

namespace A004541

/-- `and(A195744(2*n)+2, A084188(2*n))` -/
def P6196752362338298782.Spec : Prop :=
  ∀ n, P6196752362338298782.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P2627683041043653800

`and(A122041(2*n+1)+2, A084188(2*n))`
-/

namespace A004541.P2627683041043653800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (2 * n + 1) + 2) (A084188 (2 * n))

end

end A004541.P2627683041043653800

namespace A004541

/-- `and(A122041(2*n+1)+2, A084188(2*n))` -/
def P2627683041043653800.Spec : Prop :=
  ∀ n, P2627683041043653800.a n = A004541 (n + 1)

end A004541

/-! ## A004541.P16739661826574073040

`and(A094404(n+2)+2, A084188(2*n))`
-/

namespace A004541.P16739661826574073040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094404 (n + 2) + 2) (A084188 (2 * n))

end

end A004541.P16739661826574073040

namespace A004541

/-- `and(A094404(n+2)+2, A084188(2*n))` -/
def P16739661826574073040.Spec : Prop :=
  ∀ n, P16739661826574073040.a n = A004541 (n + 1)

end A004541

/-!
# A004542: Expansion of sqrt(2) in base 5.

The programs for A004542, the canonical program `A004542.P2609492655697361213` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004542 has offset 1).

The definition of A004542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004542.P2609492655697361213

`A221945(2*n)%5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004542

/-- `A221945(2*n)%5` -/
def P2609492655697361213.Spec : Prop :=
  ∀ n, P2609492655697361213.a n = A004542 (n + 1)

theorem P2609492655697361213.correct : P2609492655697361213.Spec := by
  intro n
  simp only [A004542, Nat.add_sub_cancel]

end A004542

/-! ## A004542.P13565745081926313089

`floor(A020729(n)/sqrt(2))%5`
-/

namespace A004542.P13565745081926313089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A020729 n : ℝ) / Real.sqrt (2 : ℝ)⌋ 5

end

end A004542.P13565745081926313089

namespace A004542

/-- `floor(A020729(n)/sqrt(2))%5` -/
def P13565745081926313089.Spec : Prop :=
  ∀ n, P13565745081926313089.a n = A004542 (n + 1)

end A004542

/-! ## A004542.P16817205201776060021

`floor(sqrt(A020729(2*n)))%5`
-/

namespace A004542.P16817205201776060021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A020729 (2 * n))) 5

end

end A004542.P16817205201776060021

namespace A004542

/-- `floor(sqrt(A020729(2*n)))%5` -/
def P16817205201776060021.Spec : Prop :=
  ∀ n, P16817205201776060021.a n = A004542 (n + 1)

end A004542

/-!
# A004544: Expansion of sqrt(2) in base 7.

The programs for A004544, the canonical program `A004544.P14090878640019133571` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004544 has offset 1).

The definition of A004544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004544.P14090878640019133571

`A221946(2*n)%7`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004544

/-- `A221946(2*n)%7` -/
def P14090878640019133571.Spec : Prop :=
  ∀ n, P14090878640019133571.a n = A004544 (n + 1)

theorem P14090878640019133571.correct : P14090878640019133571.Spec := by
  intro n
  simp only [A004544, Nat.add_sub_cancel]

end A004544

/-!
# A004545: Expansion of sqrt(2) in base 8.

The programs for A004545, the canonical program `A004545.P12399132687633140930` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004545 has offset 1).

The definition of A004545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004545.P12399132687633140930

`and(7, A084188(3*n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004545

/-- `and(7, A084188(3*n))` -/
def P12399132687633140930.Spec : Prop :=
  ∀ n, P12399132687633140930.a n = A004545 (n + 1)

theorem P12399132687633140930.correct : P12399132687633140930.Spec := by
  intro n
  simp only [A004545, Nat.add_sub_cancel]

end A004545

/-! ## A004545.P3671750852776463336

`A084188(A008585(n))%8`
-/

namespace A004545.P3671750852776463336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084188 (A008585 n).toNat) 8

end

end A004545.P3671750852776463336

namespace A004545

/-- `A084188(A008585(n))%8` -/
def P3671750852776463336.Spec : Prop :=
  ∀ n, P3671750852776463336.a n = A004545 (n + 1)

end A004545

/-! ## A004545.P2641765572777444291

`A116601(A016945(n))%8`
-/

namespace A004545.P2641765572777444291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116601 (A016945 n).toNat) 8

end

end A004545.P2641765572777444291

namespace A004545

/-- `A116601(A016945(n))%8` -/
def P2641765572777444291.Spec : Prop :=
  ∀ n, P2641765572777444291.a n = A004545 (n + 1)

end A004545

/-! ## A004545.P8794406580792755423

`and(7, A017910(A016921(n)))`
-/

namespace A004545.P8794406580792755423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A017910 (A016921 n).toNat)

end

end A004545.P8794406580792755423

namespace A004545

/-- `and(7, A017910(A016921(n)))` -/
def P8794406580792755423.Spec : Prop :=
  ∀ n, P8794406580792755423.a n = A004545 (n + 1)

end A004545

/-!
# A004546: Expansion of sqrt(2) in base 9.

The programs for A004546, the canonical program `A004546.P16106512506241214683` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004546 has offset 1).

The definition of A004546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004546.P16106512506241214683

`A221944(4*n)%9`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004546

/-- `A221944(4*n)%9` -/
def P16106512506241214683.Spec : Prop :=
  ∀ n, P16106512506241214683.a n = A004546 (n + 1)

theorem P16106512506241214683.correct : P16106512506241214683.Spec := by
  intro n
  simp only [A004546, Nat.add_sub_cancel]

end A004546

/-!
# A004547: Expansion of sqrt(3) in base 2.

The programs for A004547, the canonical program `A004547.P3854672842645069455` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004547 has offset 1).

The definition of A004547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004547.P16041606829240439465

`floor(sqrt(3)*2^n)%2`
-/

namespace A004547.P16041606829240439465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (3 : ℝ) * (2 ^ n : ℝ)⌋ 2

end

end A004547.P16041606829240439465

namespace A004547

/-- `floor(sqrt(3)*2^n)%2` -/
def P16041606829240439465.Spec : Prop :=
  ∀ n, P16041606829240439465.a n = A004547 (n + 1)

end A004547

/-! ## A004547.P17381855655473578341

`and(1, floor(sqrt(3)*2^n))`
-/

namespace A004547.P17381855655473578341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.sqrt (3 : ℝ) * (2 ^ n : ℝ)⌋

end

end A004547.P17381855655473578341

namespace A004547

/-- `and(1, floor(sqrt(3)*2^n))` -/
def P17381855655473578341.Spec : Prop :=
  ∀ n, P17381855655473578341.a n = A004547 (n + 1)

end A004547

/-! ## A004547.P3854672842645069455

`gcd(2, A293325(n))-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004547

/-- `gcd(2, A293325(n))-1` -/
def P3854672842645069455.Spec : Prop :=
  ∀ n, P3854672842645069455.a n = A004547 (n + 1)

theorem P3854672842645069455.correct : P3854672842645069455.Spec := by
  intro n
  simp only [A004547, Nat.add_sub_cancel]

end A004547

/-! ## A004547.P3536675933265665818

`(A094386(n+1)%2)²`
-/

namespace A004547.P3536675933265665818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094386 (n + 1)) 2 ^ 2

end

end A004547.P3536675933265665818

namespace A004547

/-- `(A094386(n+1)%2)²` -/
def P3536675933265665818.Spec : Prop :=
  ∀ n, P3536675933265665818.a n = A004547 (n + 1)

end A004547

/-! ## A004547.P8302998870616895313

`A309952(and(1, A293325(n)-1))`
-/

namespace A004547.P8302998870616895313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (Int.land 1 (A293325 n - 1)).toNat

end

end A004547.P8302998870616895313

namespace A004547

/-- `A309952(and(1, A293325(n)-1))` -/
def P8302998870616895313.Spec : Prop :=
  ∀ n, P8302998870616895313.a n = A004547 (n + 1)

end A004547

/-! ## A004547.P1220767499708807511

`and(A094386(n+1), A195744(n))²`
-/

namespace A004547.P1220767499708807511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094386 (n + 1)) (A195744 n) ^ 2

end

end A004547.P1220767499708807511

namespace A004547

/-- `and(A094386(n+1), A195744(n))²` -/
def P1220767499708807511.Spec : Prop :=
  ∀ n, P1220767499708807511.a n = A004547 (n + 1)

end A004547

/-! ## A004547.P15123305747802207719

`and(A094386(n+1), A122041(n+1))²`
-/

namespace A004547.P15123305747802207719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094386 (n + 1)) (A122041 (n + 1)) ^ 2

end

end A004547.P15123305747802207719

namespace A004547

/-- `and(A094386(n+1), A122041(n+1))²` -/
def P15123305747802207719.Spec : Prop :=
  ∀ n, P15123305747802207719.a n = A004547 (n + 1)

end A004547

/-!
# A004548: Expansion of sqrt(3) in base 3.

The programs for A004548, the canonical program `A004548.P9215137426199546943` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004548 has offset 1).

The definition of A004548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004548.P8768618800553120200

`floor(sqrt(3)*3^n)%3`
-/

namespace A004548.P8768618800553120200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (3 : ℝ) * (3 ^ n : ℝ)⌋ 3

end

end A004548.P8768618800553120200

namespace A004548

/-- `floor(sqrt(3)*3^n)%3` -/
def P8768618800553120200.Spec : Prop :=
  ∀ n, P8768618800553120200.a n = A004548 (n + 1)

end A004548

/-! ## A004548.P9215137426199546943

`dr(A017913(2*n+1)%3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004548

/-- `dr(A017913(2*n+1)%3)` -/
def P9215137426199546943.Spec : Prop :=
  ∀ n, (P9215137426199546943.a n : ℤ) = A004548 (n + 1)

theorem P9215137426199546943.correct : P9215137426199546943.Spec := by
  intro n
  simp only [A004548, Nat.add_sub_cancel]

end A004548

/-! ## A004548.P1556803779396832039

`and(3, A017913(n+1+n)%3)`
-/

namespace A004548.P1556803779396832039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (Int.tmod (A017913 (n + 1 + n)) 3)

end

end A004548.P1556803779396832039

namespace A004548

/-- `and(3, A017913(n+1+n)%3)` -/
def P1556803779396832039.Spec : Prop :=
  ∀ n, P1556803779396832039.a n = A004548 (n + 1)

end A004548

/-! ## A004548.P9696829282944119831

`and(A017913(Δ[n²])%3, ∑[10^n])`
-/

namespace A004548.P9696829282944119831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A017913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 3) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A004548.P9696829282944119831

namespace A004548

/-- `and(A017913(Δ[n²])%3, ∑[10^n])` -/
def P9696829282944119831.Spec : Prop :=
  ∀ n, P9696829282944119831.a n = A004548 (n + 1)

end A004548

/-! ## A004548.P4214668941088974524

`A053260(n)+A000035(A026764(n))`
-/

namespace A004548.P4214668941088974524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 n + A000035 (A026764 n).toNat

end

end A004548.P4214668941088974524

namespace A004548

/-- `A053260(n)+A000035(A026764(n))` -/
def P4214668941088974524.Spec : Prop :=
  ∀ n, P4214668941088974524.a n = A004548 (n + 1)

end A004548

/-!
# A004549: Expansion of sqrt(3) in base 4.

The programs for A004549, the canonical program `A004549.P6849516851646129098` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004549 has offset 1).

The definition of A004549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004549.P6849516851646129098

`A094386(2*n+1)%4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004549

/-- `A094386(2*n+1)%4` -/
def P6849516851646129098.Spec : Prop :=
  ∀ n, P6849516851646129098.a n = A004549 (n + 1)

theorem P6849516851646129098.correct : P6849516851646129098.Spec := by
  intro n
  simp only [A004549, Nat.add_sub_cancel]

end A004549

/-! ## A004549.P5212688448973472100

`floor(A000079(n)²*sqrt(3))%4`
-/

namespace A004549.P5212688448973472100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000079 n ^ 2 : ℝ) * Real.sqrt (3 : ℝ)⌋ 4

end

end A004549.P5212688448973472100

namespace A004549

/-- `floor(A000079(n)²*sqrt(3))%4` -/
def P5212688448973472100.Spec : Prop :=
  ∀ n, P5212688448973472100.a n = A004549 (n + 1)

theorem P5212688448973472100.correct : P5212688448973472100.Spec := by
  intro n
  simp only [A004549, Nat.add_sub_cancel, A004549.P5212688448973472100.a, A004549.P6849516851646129098.a, A000079, A000079.P10855139691139572931.a, A094386, A094386.P3165738204109953300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A004549

/-! ## A004549.P6356176490153460304

`and(3, A094386(record[A028234(n+1)]))`
-/

namespace A004549.P6356176490153460304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A094386 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A004549.P6356176490153460304

namespace A004549

/-- `and(3, A094386(record[A028234(n+1)]))` -/
def P6356176490153460304.Spec : Prop :=
  ∀ n, P6356176490153460304.a n = A004549 (n + 1)

end A004549

/-! ## A004549.P18367366634625214534

`and(A158388(n+1)+2, A094386(2*n+1))`
-/

namespace A004549.P18367366634625214534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 (n + 1) + 2) (A094386 (2 * n + 1))

end

end A004549.P18367366634625214534

namespace A004549

/-- `and(A158388(n+1)+2, A094386(2*n+1))` -/
def P18367366634625214534.Spec : Prop :=
  ∀ n, P18367366634625214534.a n = A004549 (n + 1)

end A004549

/-! ## A004549.P381688434440038101

`and(A020737(2*n)+2, A094386(2*n+1))`
-/

namespace A004549.P381688434440038101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 (2 * n) + 2) (A094386 (2 * n + 1))

end

end A004549.P381688434440038101

namespace A004549

/-- `and(A020737(2*n)+2, A094386(2*n+1))` -/
def P381688434440038101.Spec : Prop :=
  ∀ n, P381688434440038101.a n = A004549 (n + 1)

end A004549

/-! ## A004549.P4184237569392326628

`and(A048578(2*n)+2, A094386(2*n+1))`
-/

namespace A004549.P4184237569392326628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 (2 * n) + 2) (A094386 (2 * n + 1))

end

end A004549.P4184237569392326628

namespace A004549

/-- `and(A048578(2*n)+2, A094386(2*n+1))` -/
def P4184237569392326628.Spec : Prop :=
  ∀ n, P4184237569392326628.a n = A004549 (n + 1)

end A004549

/-! ## A004549.P12379230046833828270

`and(A066827(2*n+1)+2, A094386(2*n+1))`
-/

namespace A004549.P12379230046833828270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (2 * n + 1) + 2) (A094386 (2 * n + 1))

end

end A004549.P12379230046833828270

namespace A004549

/-- `and(A066827(2*n+1)+2, A094386(2*n+1))` -/
def P12379230046833828270.Spec : Prop :=
  ∀ n, P12379230046833828270.a n = A004549 (n + 1)

end A004549

/-! ## A004549.P5877108258124149575

`and(A066827(A066827(2*(n+1))), A094386(2*n+1))`
-/

namespace A004549.P5877108258124149575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (A066827 (2 * (n + 1))).toNat) (A094386 (2 * n + 1))

end

end A004549.P5877108258124149575

namespace A004549

/-- `and(A066827(A066827(2*(n+1))), A094386(2*n+1))` -/
def P5877108258124149575.Spec : Prop :=
  ∀ n, P5877108258124149575.a n = A004549 (n + 1)

end A004549

/-! ## A004549.P1105627696880202673

`and(A087289(n+1)+2, A094386(2*n+1))`
-/

namespace A004549.P1105627696880202673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087289 (n + 1) + 2) (A094386 (2 * n + 1))

end

end A004549.P1105627696880202673

namespace A004549

/-- `and(A087289(n+1)+2, A094386(2*n+1))` -/
def P1105627696880202673.Spec : Prop :=
  ∀ n, P1105627696880202673.a n = A004549 (n + 1)

end A004549

/-! ## A004549.P2534767142690691174

`and(A195744(2*n)+2, A094386(2*n+1))`
-/

namespace A004549.P2534767142690691174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 (2 * n) + 2) (A094386 (2 * n + 1))

end

end A004549.P2534767142690691174

namespace A004549

/-- `and(A195744(2*n)+2, A094386(2*n+1))` -/
def P2534767142690691174.Spec : Prop :=
  ∀ n, P2534767142690691174.a n = A004549 (n + 1)

end A004549

/-! ## A004549.P6239806103673909978

`and(A122041(2*n+1)+2, A094386(2*n+1))`
-/

namespace A004549.P6239806103673909978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (2 * n + 1) + 2) (A094386 (2 * n + 1))

end

end A004549.P6239806103673909978

namespace A004549

/-- `and(A122041(2*n+1)+2, A094386(2*n+1))` -/
def P6239806103673909978.Spec : Prop :=
  ∀ n, P6239806103673909978.a n = A004549 (n + 1)

end A004549

/-!
# A004550: Expansion of sqrt(3) in base 5.

The programs for A004550, there is no canonical definition to state claims against.
-/

/-! ## A004550.P9179407175393551938

`A036584(∑[abs(A045626(n))])`
-/

namespace A004550.P9179407175393551938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045626 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004550.P9179407175393551938

/-! ## A004550.P14614993787876663241

`A036584(∑[A045626(n)]+2)`
-/

namespace A004550.P14614993787876663241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A004550.P14614993787876663241

/-! ## A004550.P10006826478734091233

`A260453(eq[2, A237705(n+1)]+1)`
-/

namespace A004550.P10006826478734091233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004550.P10006826478734091233

/-! ## A004550.P4213387098207942710

`A260453(eq[2, A237705(A028310(n))])`
-/

namespace A004550.P4213387098207942710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237705 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004550.P4213387098207942710

/-! ## A004550.P12044656032539900874

`A260450(A320451(n)*A334760(n+1))`
-/

namespace A004550.P12044656032539900874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (A320451 n * A334760 (n + 1)).toNat

end

end A004550.P12044656032539900874

/-!
# A004553: Expansion of sqrt(3) in base 8.

The programs for A004553, the canonical program `A004553.P17094153890970716795` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004553 has offset 1).

The definition of A004553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004553.P17094153890970716795

`A221718(6*n)%8`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004553

/-- `A221718(6*n)%8` -/
def P17094153890970716795.Spec : Prop :=
  ∀ n, P17094153890970716795.a n = A004553 (n + 1)

theorem P17094153890970716795.correct : P17094153890970716795.Spec := by
  intro n
  simp only [A004553, Nat.add_sub_cancel]

end A004553

/-! ## A004553.P14398090884936511618

`and(7, A094386(3*n+1))`
-/

namespace A004553.P14398090884936511618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A094386 (3 * n + 1))

end

end A004553.P14398090884936511618

namespace A004553

/-- `and(7, A094386(3*n+1))` -/
def P14398090884936511618.Spec : Prop :=
  ∀ n, P14398090884936511618.a n = A004553 (n + 1)

end A004553

/-! ## A004553.P18061772814523331796

`A094386(A016777(n))%8`
-/

namespace A004553.P18061772814523331796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094386 (A016777 n).toNat) 8

end

end A004553.P18061772814523331796

namespace A004553

/-- `A094386(A016777(n))%8` -/
def P18061772814523331796.Spec : Prop :=
  ∀ n, P18061772814523331796.a n = A004553 (n + 1)

end A004553

/-! ## A004553.P14595074221732529747

`A094386(A016789(n)-1)%8`
-/

namespace A004553.P14595074221732529747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094386 (A016789 n - 1).toNat) 8

end

end A004553.P14595074221732529747

namespace A004553

/-- `A094386(A016789(n)-1)%8` -/
def P14595074221732529747.Spec : Prop :=
  ∀ n, P14595074221732529747.a n = A004553 (n + 1)

end A004553

/-!
# A004554: Expansion of sqrt(3) in base 9.

The programs for A004554, the canonical program `A004554.P2446996440457271753` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004554 has offset 1).

The definition of A004554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004554.P2446996440457271753

`A017913(4*n+1)%9`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004554

/-- `A017913(4*n+1)%9` -/
def P2446996440457271753.Spec : Prop :=
  ∀ n, P2446996440457271753.a n = A004554 (n + 1)

theorem P2446996440457271753.correct : P2446996440457271753.Spec := by
  intro n
  simp only [A004554, Nat.add_sub_cancel]

end A004554

/-! ## A004554.P3278719789850761769

`A018051(A017089(n))%9`
-/

namespace A004554.P3278719789850761769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018051 (A017089 n).toNat) 9

end

end A004554.P3278719789850761769

namespace A004554

/-- `A018051(A017089(n))%9` -/
def P3278719789850761769.Spec : Prop :=
  ∀ n, P3278719789850761769.a n = A004554 (n + 1)

end A004554

/-!
# A004555: Expansion of sqrt(5) in base 2.

The programs for A004555, there is no canonical definition to state claims against.
-/

/-! ## A004555.P17299492299586510168

`A068432(char[1]+1+n)`
-/

namespace A004555.P17299492299586510168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A004555.P17299492299586510168

/-! ## A004555.P5995865142726862580

`a(1-A068432(n+1))` with `a(0)=1, a(1)=0`
-/

namespace A004555.P5995865142726862580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (1 - A068432 (n + 1)).toNat

end

end A004555.P5995865142726862580

/-! ## A004555.P3041737270131076344

`A159075(n)+A068432(n+1)`
-/

namespace A004555.P3041737270131076344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A068432 (n + 1)

end

end A004555.P3041737270131076344

/-! ## A004555.P17557899899237007962

`A068432(n+1)-A063524(n)`
-/

namespace A004555.P17557899899237007962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1) - A063524 n

end

end A004555.P17557899899237007962

/-! ## A004555.P14380662643440384279

`A060576(n)*A068432(n+1)`
-/

namespace A004555.P14380662643440384279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A068432 (n + 1)

end

end A004555.P14380662643440384279

/-! ## A004555.P6205650179397466496

`A068432(n+1)*A179184(n)`
-/

namespace A004555.P6205650179397466496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1) * A179184 n

end

end A004555.P6205650179397466496

/-! ## A004555.P12518381176674689383

`A068432(n+1)*A185114(n)`
-/

namespace A004555.P12518381176674689383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1) * A185114 n

end

end A004555.P12518381176674689383

/-! ## A004555.P15440922806856795209

`A068432(n+1)*A267870(n)`
-/

namespace A004555.P15440922806856795209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1) * A267870 n

end

end A004555.P15440922806856795209

/-! ## A004555.P3782574498093482922

`and(A004281(n), A068432(n+1))`
-/

namespace A004555.P3782574498093482922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004281 n) (A068432 (n + 1))

end

end A004555.P3782574498093482922

/-! ## A004555.P16230851458219518094

`and(A005728(n), A068432(n+1))`
-/

namespace A004555.P16230851458219518094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005728 n) (A068432 (n + 1))

end

end A004555.P16230851458219518094

/-! ## A004555.P13436343643458506102

`and(A027635(n), A068432(n+1))`
-/

namespace A004555.P13436343643458506102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027635 n) (A068432 (n + 1))

end

end A004555.P13436343643458506102

/-! ## A004555.P9908214950515325211

`and(A033556(n), A068432(n+1))`
-/

namespace A004555.P9908214950515325211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033556 n) (A068432 (n + 1))

end

end A004555.P9908214950515325211

/-! ## A004555.P2121301848997495554

`and(A042951(n), A068432(n+1))`
-/

namespace A004555.P2121301848997495554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042951 n) (A068432 (n + 1))

end

end A004555.P2121301848997495554

/-! ## A004555.P17985046950778461812

`and(A049454(n), A068432(n+1))`
-/

namespace A004555.P17985046950778461812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049454 n) (A068432 (n + 1))

end

end A004555.P17985046950778461812

/-! ## A004555.P9329680928736722270

`char[A004714(n+1)-A000007(n)]`
-/

namespace A004555.P9329680928736722270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004714 (n + 1) - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A004555.P9329680928736722270

/-! ## A004555.P14013644187630273922

`A000007(n)+char[A004714(n+2)]`
-/

namespace A004555.P14013644187630273922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004714 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004555.P14013644187630273922

/-! ## A004555.P8868265185665939996

`and(A001092(n+1), A068432(n+1))`
-/

namespace A004555.P8868265185665939996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001092 (n + 1)) (A068432 (n + 1))

end

end A004555.P8868265185665939996

/-! ## A004555.P15415969715305282337

`and(A003277(n+1), A068432(n+1))`
-/

namespace A004555.P15415969715305282337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003277 (n + 1)) (A068432 (n + 1))

end

end A004555.P15415969715305282337

/-! ## A004555.P599800723157961977

`and(A049698(n), A068432(n+1))`
-/

namespace A004555.P599800723157961977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049698 n) (A068432 (n + 1))

end

end A004555.P599800723157961977

/-! ## A004555.P817080287059894915

`and(A032022(n), A068432(n+1))`
-/

namespace A004555.P817080287059894915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032022 n) (A068432 (n + 1))

end

end A004555.P817080287059894915

/-!
# A004556: Expansion of sqrt(5) in base 3.

The programs for A004556, the canonical program `A004556.P12390363093850750916` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004556 has offset 1).

The definition of A004556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004556.P12390363093850750916

`floor(sqrt(5)*3^n)%3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004556

/-- `floor(sqrt(5)*3^n)%3` -/
def P12390363093850750916.Spec : Prop :=
  ∀ n, P12390363093850750916.a n = A004556 (n + 1)

theorem P12390363093850750916.correct : P12390363093850750916.Spec := by
  intro n
  simp only [A004556, Nat.add_sub_cancel]

end A004556

/-! ## A004556.P17825528903403416836

`A287447(∑[A055249(A003961(n+1))])`
-/

namespace A004556.P17825528903403416836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004556.P17825528903403416836

namespace A004556

/-- `A287447(∑[A055249(A003961(n+1))])` -/
def P17825528903403416836.Spec : Prop :=
  ∀ n, P17825528903403416836.a n = A004556 (n + 1)

end A004556

/-!
# A004557: Expansion of sqrt(5) in base 4.

The programs for A004557, there is no canonical definition to state claims against.
-/

/-! ## A004557.P4677003007538057722

`A004555(2*n+3)+2*A004555(2*(n+1))`
-/

namespace A004557.P4677003007538057722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (2 * n + 3) + 2 * A004555 (2 * (n + 1))

end

end A004557.P4677003007538057722

/-! ## A004557.P8803798664414410779

`A293331(2*n)%4`
-/

namespace A004557.P8803798664414410779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293331 (2 * n)) 4

end

end A004557.P8803798664414410779

/-! ## A004557.P15065612267384652613

`(A293332(2*n)-1)%4`
-/

namespace A004557.P15065612267384652613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293332 (2 * n) - 1) 4

end

end A004557.P15065612267384652613

/-! ## A004557.P16769595278821920977

`and(A060576(n+1)+2, A293313(2*n+1))`
-/

namespace A004557.P16769595278821920977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 (n + 1) + 2) (A293313 (2 * n + 1))

end

end A004557.P16769595278821920977

/-! ## A004557.P13619628911624848095

`and(A179184(n+1)+2, A293313(2*n+1))`
-/

namespace A004557.P13619628911624848095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179184 (n + 1) + 2) (A293313 (2 * n + 1))

end

end A004557.P13619628911624848095

/-! ## A004557.P7777512893568826984

`and(A185114(n+2)+2, A293313(2*n+1))`
-/

namespace A004557.P7777512893568826984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185114 (n + 2) + 2) (A293313 (2 * n + 1))

end

end A004557.P7777512893568826984

/-! ## A004557.P13146477799480753301

`and(A267870(2*n+1)+2, A293313(2*n+1))`
-/

namespace A004557.P13146477799480753301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267870 (2 * n + 1) + 2) (A293313 (2 * n + 1))

end

end A004557.P13146477799480753301

/-! ## A004557.P10189410010015523978

`and(A008585(2*n+1)-6*n, A293331(2*n))`
-/

namespace A004557.P10189410010015523978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008585 (2 * n + 1) - (6 * n : ℤ)) (A293331 (2 * n))

end

end A004557.P10189410010015523978

/-! ## A004557.P15519083519043686213

`floor(sqrt(A292540(Δ[n²])))%4`
-/

namespace A004557.P15519083519043686213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A292540 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)) 4

end

end A004557.P15519083519043686213

/-!
# A004558: Expansion of sqrt(5) in base 5.

The programs for A004558, the canonical program `A004558.P4442881765870322193` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004558 has offset 1).

The definition of A004558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004558.P4442881765870322193

`A017919(2*n+1)%5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004558

/-- `A017919(2*n+1)%5` -/
def P4442881765870322193.Spec : Prop :=
  ∀ n, P4442881765870322193.a n = A004558 (n + 1)

theorem P4442881765870322193.correct : P4442881765870322193.Spec := by
  intro n
  simp only [A004558, Nat.add_sub_cancel]

end A004558

/-! ## A004558.P16202912947349642918

`floor(sqrt(5^(2*n+1)))%5`
-/

namespace A004558.P16202912947349642918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (5 ^ (2 * n + 1)) % 5

end

end A004558.P16202912947349642918

namespace A004558

/-- `floor(sqrt(5^(2*n+1)))%5` -/
def P16202912947349642918.Spec : Prop :=
  ∀ n, (P16202912947349642918.a n : ℤ) = A004558 (n + 1)

end A004558

/-!
# A004561: Expansion of sqrt(5) in base 8.

The programs for A004561, the canonical program `A004561.P2140334228168708990` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004561 has offset 1).

The definition of A004561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004561.P11812087398823802680

`A293331(3*n)%8`
-/

namespace A004561.P11812087398823802680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293331 (3 * n)) 8

end

end A004561.P11812087398823802680

namespace A004561

/-- `A293331(3*n)%8` -/
def P11812087398823802680.Spec : Prop :=
  ∀ n, P11812087398823802680.a n = A004561 (n + 1)

end A004561

/-! ## A004561.P2140334228168708990

`A221942(A008588(n))%8`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004561

/-- `A221942(A008588(n))%8` -/
def P2140334228168708990.Spec : Prop :=
  ∀ n, P2140334228168708990.a n = A004561 (n + 1)

theorem P2140334228168708990.correct : P2140334228168708990.Spec := by
  intro n
  simp only [A004561, Nat.add_sub_cancel]

end A004561

/-! ## A004561.P15879018862972152191

`and(7, A293331(A008585(n)))`
-/

namespace A004561.P15879018862972152191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A293331 (A008585 n).toNat)

end

end A004561.P15879018862972152191

namespace A004561

/-- `and(7, A293331(A008585(n)))` -/
def P15879018862972152191.Spec : Prop :=
  ∀ n, P15879018862972152191.a n = A004561 (n + 1)

end A004561

/-!
# A004563: Expansion of sqrt(6) in base 4.

The programs for A004563, the canonical program `A004563.P10581778296416500836` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004563 has offset 1).

The definition of A004563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004563.P10581778296416500836

`A004609(2*n+3)+2*A004609(2*(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004563

/-- `A004609(2*n+3)+2*A004609(2*(n+1))` -/
def P10581778296416500836.Spec : Prop :=
  ∀ n, P10581778296416500836.a n = A004563 (n + 1)

theorem P10581778296416500836.correct : P10581778296416500836.Spec := by
  intro n
  simp only [A004563, Nat.add_sub_cancel]

end A004563

/-! ## A004563.P1209562598482548009

`A221718(4*n+1)%4`
-/

namespace A004563.P1209562598482548009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221718 (4 * n + 1)) 4

end

end A004563.P1209562598482548009

namespace A004563

/-- `A221718(4*n+1)%4` -/
def P1209562598482548009.Spec : Prop :=
  ∀ n, P1209562598482548009.a n = A004563 (n + 1)

end A004563

/-! ## A004563.P14767268643924438425

`and(3, A221718(A016813(n)))`
-/

namespace A004563.P14767268643924438425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A221718 (A016813 n).toNat)

end

end A004563.P14767268643924438425

namespace A004563

/-- `and(3, A221718(A016813(n)))` -/
def P14767268643924438425.Spec : Prop :=
  ∀ n, P14767268643924438425.a n = A004563 (n + 1)

end A004563

/-! ## A004563.P18423264265014388517

`(A007318(∑[n])*A221718(A016813(n)))%4`
-/

namespace A004563.P18423264265014388517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A221718 (A016813 n).toNat) 4

end

end A004563.P18423264265014388517

namespace A004563

/-- `(A007318(∑[n])*A221718(A016813(n)))%4` -/
def P18423264265014388517.Spec : Prop :=
  ∀ n, P18423264265014388517.a n = A004563 (n + 1)

end A004563

/-! ## A004563.P8630147996792213657

`and(A040887(A151909(n)+1), A221718(4*n+1))`
-/

namespace A004563.P8630147996792213657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040887 (A151909 n + 1).toNat) (A221718 (4 * n + 1))

end

end A004563.P8630147996792213657

namespace A004563

/-- `and(A040887(A151909(n)+1), A221718(4*n+1))` -/
def P8630147996792213657.Spec : Prop :=
  ∀ n, P8630147996792213657.a n = A004563 (n + 1)

end A004563

/-!
# A004565: Expansion of sqrt(6) in base 6.

The programs for A004565, the canonical program `A004565.P14315501333199100927` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004565 has offset 1).

The definition of A004565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004565.P14315501333199100927

`A017922(2*n+1)%6`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004565

/-- `A017922(2*n+1)%6` -/
def P14315501333199100927.Spec : Prop :=
  ∀ n, P14315501333199100927.a n = A004565 (n + 1)

theorem P14315501333199100927.correct : P14315501333199100927.Spec := by
  intro n
  simp only [A004565, Nat.add_sub_cancel]

end A004565

/-! ## A004565.P11094262764342616083

`A018060(4*n+2)%6`
-/

namespace A004565.P11094262764342616083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018060 (4 * n + 2)) 6

end

end A004565.P11094262764342616083

namespace A004565

/-- `A018060(4*n+2)%6` -/
def P11094262764342616083.Spec : Prop :=
  ∀ n, P11094262764342616083.a n = A004565 (n + 1)

end A004565

/-! ## A004565.P2611630798172831929

`floor(sqrt(6^(2*n+1)))%6`
-/

namespace A004565.P2611630798172831929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (6 ^ (2 * n + 1)) % 6

end

end A004565.P2611630798172831929

namespace A004565

/-- `floor(sqrt(6^(2*n+1)))%6` -/
def P2611630798172831929.Spec : Prop :=
  ∀ n, (P2611630798172831929.a n : ℤ) = A004565 (n + 1)

end A004565

/-!
# A004567: Expansion of sqrt(6) in base 8.

The programs for A004567, the canonical program `A004567.P15535764283866829389` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004567 has offset 1).

The definition of A004567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004567.P15535764283866829389

`A221718(6*n+1)%8`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004567

/-- `A221718(6*n+1)%8` -/
def P15535764283866829389.Spec : Prop :=
  ∀ n, P15535764283866829389.a n = A004567 (n + 1)

theorem P15535764283866829389.correct : P15535764283866829389.Spec := by
  intro n
  simp only [A004567, Nat.add_sub_cancel]

end A004567

/-! ## A004567.P8075594228733452763

`and(7, A221718(2*3*n+1))`
-/

namespace A004567.P8075594228733452763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A221718 (2 * (3 * n) + 1))

end

end A004567.P8075594228733452763

namespace A004567

/-- `and(7, A221718(2*3*n+1))` -/
def P8075594228733452763.Spec : Prop :=
  ∀ n, P8075594228733452763.a n = A004567 (n + 1)

end A004567

/-!
# A004568: Expansion of sqrt(6) in base 9.

The programs for A004568, the canonical program `A004568.P7165566380675965637` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004568 has offset 1).

The definition of A004568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004568.P7165566380675965637

`A221944(4*n+1)%9`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004568

/-- `A221944(4*n+1)%9` -/
def P7165566380675965637.Spec : Prop :=
  ∀ n, P7165566380675965637.a n = A004568 (n + 1)

theorem P7165566380675965637.correct : P7165566380675965637.Spec := by
  intro n
  simp only [A004568, Nat.add_sub_cancel]

end A004568

/-!
# A004569: Expansion of sqrt(7) in base 2.

The programs for A004569, the canonical program `A004569.P9129839962585521232` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004569 has offset 2).

The definition of A004569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004569.P9129839962585521232

`and(2, A221943(2*n))/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004569

/-- `and(2, A221943(2*n))/2` -/
def P9129839962585521232.Spec : Prop :=
  ∀ n, P9129839962585521232.a n = (A004569 (n + 2) : ℚ)

end A004569

/-! ## A004569.P10938671051033412398

`val(and(2, A221943(2*n))+1, 3)^A051340(n)`
-/

namespace A004569.P10938671051033412398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (Int.land 2 (A221943 (2 * n)) + 1).toNat 3 : ℚ) ^ (A051340 n : ℤ)

end

end A004569.P10938671051033412398

namespace A004569

/-- `val(and(2, A221943(2*n))+1, 3)^A051340(n)` -/
def P10938671051033412398.Spec : Prop :=
  ∀ n, P10938671051033412398.a n = (A004569 (n + 2) : ℚ)

end A004569

/-! ## A004569.P6211834885864847888

`val(and(2, A221943(2*n))+1, 3)^A030392(n+2)`
-/

namespace A004569.P6211834885864847888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (Int.land 2 (A221943 (2 * n)) + 1).toNat 3 : ℚ) ^ (A030392 (n + 2) : ℤ)

end

end A004569.P6211834885864847888

namespace A004569

/-- `val(and(2, A221943(2*n))+1, 3)^A030392(n+2)` -/
def P6211834885864847888.Spec : Prop :=
  ∀ n, P6211834885864847888.a n = (A004569 (n + 2) : ℚ)

end A004569

/-! ## A004569.P1441019221814528391

`floor(sqrt(A147597(n+1)))%2`
-/

namespace A004569.P1441019221814528391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A147597 (n + 1))) 2

end

end A004569.P1441019221814528391

namespace A004569

/-- `floor(sqrt(A147597(n+1)))%2` -/
def P1441019221814528391.Spec : Prop :=
  ∀ n, P1441019221814528391.a n = A004569 (n + 2)

end A004569

/-! ## A004569.P13214708840094374227

`floor(sqrt(14*A065109(∑[n])²/8))%2`
-/

namespace A004569.P13214708840094374227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (14 * ((A065109 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) / 8) : ℝ)⌋ 2

end

end A004569.P13214708840094374227

namespace A004569

/-- `floor(sqrt(14*A065109(∑[n])²/8))%2` -/
def P13214708840094374227.Spec : Prop :=
  ∀ n, P13214708840094374227.a n = A004569 (n + 2)

end A004569

/-!
# A004570: Expansion of sqrt(7) in base 3.

The programs for A004570, there is no canonical definition to state claims against.
-/

/-! ## A004570.P5863706678400153745

`A285930(A285979(n+1)-A285830(n+1))`
-/

namespace A004570.P5863706678400153745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285930 (A285979 (n + 1) - A285830 (n + 1)).toNat

end

end A004570.P5863706678400153745

/-! ## A004570.P3072426873858541175

`A287524(or(2, A088813(n)))`
-/

namespace A004570.P3072426873858541175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (Int.lor 2 (A088813 n)).toNat

end

end A004570.P3072426873858541175

/-! ## A004570.P7492821872510634796

`A079643(A298289(n+1))%3`
-/

namespace A004570.P7492821872510634796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079643 (A298289 (n + 1)).toNat) 3

end

end A004570.P7492821872510634796

/-! ## A004570.P14802444256720560561

`(p?[A030653(n+1)]*A088567(n))%3`
-/

namespace A004570.P14802444256720560561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A088567 n) 3

end

end A004570.P14802444256720560561

/-! ## A004570.P8377900748909035153

`A052343(A000295(n))*A087888(n+1)`
-/

namespace A004570.P8377900748909035153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (A000295 n).toNat * A087888 (n + 1)

end

end A004570.P8377900748909035153

/-!
# A004571: Expansion of sqrt(7) in base 4.

The programs for A004571, the canonical program `A004571.P7483282977501291624` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004571 has offset 1).

The definition of A004571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004571.P7483282977501291624

`A004569(2*n+3)+2*A004569(2*(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004571

/-- `A004569(2*n+3)+2*A004569(2*(n+1))` -/
def P7483282977501291624.Spec : Prop :=
  ∀ n, P7483282977501291624.a n = A004571 (n + 1)

theorem P7483282977501291624.correct : P7483282977501291624.Spec := by
  intro n
  simp only [A004571, Nat.add_sub_cancel]

end A004571

/-! ## A004571.P17748851665282576411

`A221943(4*n)%4`
-/

namespace A004571.P17748851665282576411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221943 (4 * n)) 4

end

end A004571.P17748851665282576411

namespace A004571

/-- `A221943(4*n)%4` -/
def P17748851665282576411.Spec : Prop :=
  ∀ n, P17748851665282576411.a n = A004571 (n + 1)

end A004571

/-! ## A004571.P9924475494459243630

`and(3, A221943(A008586(n)))`
-/

namespace A004571.P9924475494459243630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A221943 (A008586 n).toNat)

end

end A004571.P9924475494459243630

namespace A004571

/-- `and(3, A221943(A008586(n)))` -/
def P9924475494459243630.Spec : Prop :=
  ∀ n, P9924475494459243630.a n = A004571 (n + 1)

end A004571

/-! ## A004571.P11819460547151394773

`and(A243456(2*n+1)+3, A221943(4*n))`
-/

namespace A004571.P11819460547151394773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243456 (2 * n + 1) + 3) (A221943 (4 * n))

end

end A004571.P11819460547151394773

namespace A004571

/-- `and(A243456(2*n+1)+3, A221943(4*n))` -/
def P11819460547151394773.Spec : Prop :=
  ∀ n, P11819460547151394773.a n = A004571 (n + 1)

end A004571

/-!
# A004574: Expansion of sqrt(7) in base 7.

The programs for A004574, the canonical program `A004574.P18301511294695238640` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004574 has offset 1).

The definition of A004574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004574.P18301511294695238640

`A017925(2*n+1)%7`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004574

/-- `A017925(2*n+1)%7` -/
def P18301511294695238640.Spec : Prop :=
  ∀ n, P18301511294695238640.a n = A004574 (n + 1)

theorem P18301511294695238640.correct : P18301511294695238640.Spec := by
  intro n
  simp only [A004574, Nat.add_sub_cancel]

end A004574

/-! ## A004574.P8614195969500703262

`(A017927(Δ[n²])-1)%7`
-/

namespace A004574.P8614195969500703262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1) 7

end

end A004574.P8614195969500703262

namespace A004574

/-- `(A017927(Δ[n²])-1)%7` -/
def P8614195969500703262.Spec : Prop :=
  ∀ n, P8614195969500703262.a n = A004574 (n + 1)

end A004574

/-! ## A004574.P926468587694309299

`floor(sqrt(7^(2*n+1)))%7`
-/

namespace A004574.P926468587694309299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (7 ^ (2 * n + 1)) % 7

end

end A004574.P926468587694309299

namespace A004574

/-- `floor(sqrt(7^(2*n+1)))%7` -/
def P926468587694309299.Spec : Prop :=
  ∀ n, (P926468587694309299.a n : ℤ) = A004574 (n + 1)

end A004574

/-!
# A004575: Expansion of sqrt(7) in base 8.

The programs for A004575, the canonical program `A004575.P15716396964342662133` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004575 has offset 1).

The definition of A004575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004575.P15716396964342662133

`and(7, A221943(6*n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004575

/-- `and(7, A221943(6*n))` -/
def P15716396964342662133.Spec : Prop :=
  ∀ n, P15716396964342662133.a n = A004575 (n + 1)

theorem P15716396964342662133.correct : P15716396964342662133.Spec := by
  intro n
  simp only [A004575, Nat.add_sub_cancel]

end A004575

/-!
# A004579: Expansion of sqrt(8) in base 4.

The programs for A004579, there is no canonical definition to state claims against.
-/

/-! ## A004579.P314913413391845287

`A004539(2*(n+1))+2*A004539(2*n+1)`
-/

namespace A004579.P314913413391845287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (2 * (n + 1)) + 2 * A004539 (2 * n + 1)

end

end A004579.P314913413391845287

/-! ## A004579.P1069222745506998703

`A084188(2*n+1)%4`
-/

namespace A004579.P1069222745506998703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084188 (2 * n + 1)) 4

end

end A004579.P1069222745506998703

/-! ## A004579.P7500889888533962135

`and(3, A017910(A004767(n)))`
-/

namespace A004579.P7500889888533962135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A017910 (A004767 n).toNat)

end

end A004579.P7500889888533962135

/-! ## A004579.P11456992259534893877

`and(A060576(n+1)+2, A084188(2*n+1))`
-/

namespace A004579.P11456992259534893877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 (n + 1) + 2) (A084188 (2 * n + 1))

end

end A004579.P11456992259534893877

/-! ## A004579.P9155504947888878241

`and(A158388(n+1)+2, A084188(2*n+1))`
-/

namespace A004579.P9155504947888878241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 (n + 1) + 2) (A084188 (2 * n + 1))

end

end A004579.P9155504947888878241

/-! ## A004579.P6140319433828199806

`and(A020737(2*n)+2, A084188(2*n+1))`
-/

namespace A004579.P6140319433828199806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 (2 * n) + 2) (A084188 (2 * n + 1))

end

end A004579.P6140319433828199806

/-! ## A004579.P4035966301973966066

`and(A048578(2*n+1)+2, A084188(2*n+1))`
-/

namespace A004579.P4035966301973966066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 (2 * n + 1) + 2) (A084188 (2 * n + 1))

end

end A004579.P4035966301973966066

/-! ## A004579.P4133372627373875253

`and(A066827(2*(n+1))+2, A084188(2*n+1))`
-/

namespace A004579.P4133372627373875253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (2 * (n + 1)) + 2) (A084188 (2 * n + 1))

end

end A004579.P4133372627373875253

/-! ## A004579.P17192368189725240778

`and(A000040(A020639(2*(n+1))), A084188(2*n+1))`
-/

namespace A004579.P17192368189725240778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A020639 (2 * (n + 1))).toNat) (A084188 (2 * n + 1))

end

end A004579.P17192368189725240778

/-! ## A004579.P10211556672722976008

`and(A066827(A066827(2*(n+1))), A084188(2*n+1))`
-/

namespace A004579.P10211556672722976008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (A066827 (2 * (n + 1))).toNat) (A084188 (2 * n + 1))

end

end A004579.P10211556672722976008

/-! ## A004579.P9619135747272459140

`A001521(4*n+5)%4`
-/

namespace A004579.P9619135747272459140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001521 (4 * n + 5)) 4

end

end A004579.P9619135747272459140

/-! ## A004579.P16717807315535671046

`and(A122041(2*(n+1))+2, A084188(2*n+1))`
-/

namespace A004579.P16717807315535671046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (2 * (n + 1)) + 2) (A084188 (2 * n + 1))

end

end A004579.P16717807315535671046

/-! ## A004579.P4125245302612491217

`and(A195744(2*n+1)+2, A084188(2*n+1))`
-/

namespace A004579.P4125245302612491217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 (2 * n + 1) + 2) (A084188 (2 * n + 1))

end

end A004579.P4125245302612491217

/-!
# A004583: Expansion of sqrt(8) in base 8.

The programs for A004583, the canonical program `A004583.P1694518623339431495` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004583 has offset 1).

The definition of A004583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004583.P1694518623339431495

`A017928(2*n+1)%8`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004583

/-- `A017928(2*n+1)%8` -/
def P1694518623339431495.Spec : Prop :=
  ∀ n, P1694518623339431495.a n = A004583 (n + 1)

theorem P1694518623339431495.correct : P1694518623339431495.Spec := by
  intro n
  simp only [A004583, Nat.add_sub_cancel]

end A004583

/-! ## A004583.P4921794290894662799

`A084188(3*n+1)%8`
-/

namespace A004583.P4921794290894662799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084188 (3 * n + 1)) 8

end

end A004583.P4921794290894662799

namespace A004583

/-- `A084188(3*n+1)%8` -/
def P4921794290894662799.Spec : Prop :=
  ∀ n, P4921794290894662799.a n = A004583 (n + 1)

theorem P4921794290894662799.correct : P4921794290894662799.Spec := by
  intro n
  simp only [A004583, Nat.add_sub_cancel, A004583.P4921794290894662799.a, A004583.P1694518623339431495.a, A017928, A017928.P9559625745466745229.a, A084188, A084188.P10075373482138290167.a, A017910, A017910.P15542471758442603211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004583

/-! ## A004583.P4139855934986725848

`(A018068(4*n+2)-1)%8`
-/

namespace A004583.P4139855934986725848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018068 (4 * n + 2) - 1) 8

end

end A004583.P4139855934986725848

namespace A004583

/-- `(A018068(4*n+2)-1)%8` -/
def P4139855934986725848.Spec : Prop :=
  ∀ n, P4139855934986725848.a n = A004583 (n + 1)

end A004583

/-! ## A004583.P12109677755584101022

`and(7, A017928(A008619(4*n)))`
-/

namespace A004583.P12109677755584101022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A017928 (A008619 (4 * n)).toNat)

end

end A004583.P12109677755584101022

namespace A004583

/-- `and(7, A017928(A008619(4*n)))` -/
def P12109677755584101022.Spec : Prop :=
  ∀ n, P12109677755584101022.a n = A004583 (n + 1)

end A004583

/-! ## A004583.P8912279902203403583

`floor(sqrt(8^(2*n+1)))%8`
-/

namespace A004583.P8912279902203403583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 ^ (2 * n + 1)) % 8

end

end A004583.P8912279902203403583

namespace A004583

/-- `floor(sqrt(8^(2*n+1)))%8` -/
def P8912279902203403583.Spec : Prop :=
  ∀ n, (P8912279902203403583.a n : ℤ) = A004583 (n + 1)

end A004583

/-!
# A004585: Expansion of sqrt(10) in base 2.

The programs for A004585, the canonical program `A004585.P7732518386118126900` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004585 has offset 2).

The definition of A004585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004585.P7732518386118126900

`and(2, A221942(2*n+1))/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004585

/-- `and(2, A221942(2*n+1))/2` -/
def P7732518386118126900.Spec : Prop :=
  ∀ n, P7732518386118126900.a n = (A004585 (n + 2) : ℚ)

end A004585

/-! ## A004585.P16067599106350829858

`floor(sqrt(A072944(3*n+2)))%2`
-/

namespace A004585.P16067599106350829858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A072944 (3 * n + 2))) 2

end

end A004585.P16067599106350829858

namespace A004585

/-- `floor(sqrt(A072944(3*n+2)))%2` -/
def P16067599106350829858.Spec : Prop :=
  ∀ n, P16067599106350829858.a n = A004585 (n + 2)

end A004585

/-! ## A004585.P12720323520186307400

`C(A221942(Δ[n²]), 2)%2`
-/

namespace A004585.P12720323520186307400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A221942 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat 2 % 2

end

end A004585.P12720323520186307400

namespace A004585

/-- `C(A221942(Δ[n²]), 2)%2` -/
def P12720323520186307400.Spec : Prop :=
  ∀ n, (P12720323520186307400.a n : ℤ) = A004585 (n + 2)

end A004585

/-! ## A004585.P6307071304732434442

`A079944(A008630(n)*A060240(n))`
-/

namespace A004585.P6307071304732434442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A008630 n * A060240 n).toNat

end

end A004585.P6307071304732434442

namespace A004585

/-- `A079944(A008630(n)*A060240(n))` -/
def P6307071304732434442.Spec : Prop :=
  ∀ n, P6307071304732434442.a n = A004585 (n + 2)

end A004585

/-! ## A004585.P13426188529881077365

`A079336(A211698(n+2))`
-/

namespace A004585.P13426188529881077365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079336 (A211698 (n + 2)).toNat

end

end A004585.P13426188529881077365

namespace A004585

/-- `A079336(A211698(n+2))` -/
def P13426188529881077365.Spec : Prop :=
  ∀ n, P13426188529881077365.a n = A004585 (n + 2)

end A004585

/-!
# A004586: Expansion of sqrt(10) in base 3.

The programs for A004586, the canonical program `A004586.P10348372198609749547` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004586 has offset 2).

The definition of A004586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004586.P10348372198609749547

`floor(sqrt(floor(10*9^(n-1))+n^3))%3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004586

/-- `floor(sqrt(floor(10*9^(n-1))+n^3))%3` -/
def P10348372198609749547.Spec : Prop :=
  ∀ n, P10348372198609749547.a n = A004586 (n + 2)

theorem P10348372198609749547.correct : P10348372198609749547.Spec := by
  intro n
  simp only [A004586, Nat.add_sub_cancel]

end A004586

/-! ## A004586.P4820177554974300886

`and(A013595(A244050(n+1)), A181916(n+1))`
-/

namespace A004586.P4820177554974300886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013595 (A244050 (n + 1)).toNat) (A181916 (n + 1))

end

end A004586.P4820177554974300886

namespace A004586

/-- `and(A013595(A244050(n+1)), A181916(n+1))` -/
def P4820177554974300886.Spec : Prop :=
  ∀ n, P4820177554974300886.a n = A004586 (n + 2)

end A004586

/-! ## A004586.P10492231496419388929

`A287397(or(A004188(n), A004209(n+2)))`
-/

namespace A004586.P10492231496419388929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (Int.lor (A004188 n) (A004209 (n + 2))).toNat

end

end A004586.P10492231496419388929

namespace A004586

/-- `A287397(or(A004188(n), A004209(n+2)))` -/
def P10492231496419388929.Spec : Prop :=
  ∀ n, P10492231496419388929.a n = A004586 (n + 2)

end A004586

/-! ## A004586.P9875399633851919895

`and(A087117(2*n), A262372(A262372(n+3)))`
-/

namespace A004586.P9875399633851919895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087117 (2 * n)) (A262372 (A262372 (n + 3)).toNat)

end

end A004586.P9875399633851919895

namespace A004586

/-- `and(A087117(2*n), A262372(A262372(n+3)))` -/
def P9875399633851919895.Spec : Prop :=
  ∀ n, P9875399633851919895.a n = A004586 (n + 2)

end A004586

/-! ## A004586.P14178121981232309059

`A216282(A248663(3*n+2)+A000201(n+1))`
-/

namespace A004586.P14178121981232309059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A248663 (3 * n + 2) + A000201 (n + 1)).toNat

end

end A004586.P14178121981232309059

namespace A004586

/-- `A216282(A248663(3*n+2)+A000201(n+1))` -/
def P14178121981232309059.Spec : Prop :=
  ∀ n, P14178121981232309059.a n = A004586 (n + 2)

end A004586

/-!
# A004587: Expansion of sqrt(10) in base 4.

The programs for A004587, the canonical program `A004587.P16410296489562385656` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004587 has offset 1).

The definition of A004587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004587.P16410296489562385656

`A004585(2*n+3)+2*A004585(2*(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004587

/-- `A004585(2*n+3)+2*A004585(2*(n+1))` -/
def P16410296489562385656.Spec : Prop :=
  ∀ n, P16410296489562385656.a n = A004587 (n + 1)

theorem P16410296489562385656.correct : P16410296489562385656.Spec := by
  intro n
  simp only [A004587, Nat.add_sub_cancel]

end A004587

/-! ## A004587.P165521575439151332

`A221942(4*n+1)%4`
-/

namespace A004587.P165521575439151332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221942 (4 * n + 1)) 4

end

end A004587.P165521575439151332

namespace A004587

/-- `A221942(4*n+1)%4` -/
def P165521575439151332.Spec : Prop :=
  ∀ n, P165521575439151332.a n = A004587 (n + 1)

end A004587

/-! ## A004587.P7442485990908422708

`and(3, A221942(2*2*n+1))`
-/

namespace A004587.P7442485990908422708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A221942 (2 * (2 * n) + 1))

end

end A004587.P7442485990908422708

namespace A004587

/-- `and(3, A221942(2*2*n+1))` -/
def P7442485990908422708.Spec : Prop :=
  ∀ n, P7442485990908422708.a n = A004587 (n + 1)

end A004587

/-! ## A004587.P11126537376437378723

`A090977(A090868(n+1))%A090724(n+4)`
-/

namespace A004587.P11126537376437378723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090977 (A090868 (n + 1)).toNat) (A090724 (n + 4))

end

end A004587.P11126537376437378723

namespace A004587

/-- `A090977(A090868(n+1))%A090724(n+4)` -/
def P11126537376437378723.Spec : Prop :=
  ∀ n, P11126537376437378723.a n = A004587 (n + 1)

end A004587

/-! ## A004587.P17070010786728320922

`val(A217398(A264003(n+1)+2)-(A057427(n)-2), 2)`
-/

namespace A004587.P17070010786728320922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A217398 (A264003 (n + 1) + 2).toNat - (A057427 n - 2)).toNat 2

end

end A004587.P17070010786728320922

namespace A004587

/-- `val(A217398(A264003(n+1)+2)-(A057427(n)-2), 2)` -/
def P17070010786728320922.Spec : Prop :=
  ∀ n, (P17070010786728320922.a n : ℤ) = A004587 (n + 1)

end A004587

/-!
# A004588: Expansion of sqrt(10) in base 5.

The programs for A004588, the canonical program `A004588.P9751913097939409600` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004588 has offset 1).

The definition of A004588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004588.P9751913097939409600

`A221945(2*n+1)%5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004588

/-- `A221945(2*n+1)%5` -/
def P9751913097939409600.Spec : Prop :=
  ∀ n, P9751913097939409600.a n = A004588 (n + 1)

theorem P9751913097939409600.correct : P9751913097939409600.Spec := by
  intro n
  simp only [A004588, Nat.add_sub_cancel]

end A004588

/-!
# A004591: Expansion of sqrt(10) in base 8.

The programs for A004591, the canonical program `A004591.P12752315265161502023` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004591 has offset 1).

The definition of A004591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004591.P12752315265161502023

`and(7, A221942(6*n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004591

/-- `and(7, A221942(6*n+1))` -/
def P12752315265161502023.Spec : Prop :=
  ∀ n, P12752315265161502023.a n = A004591 (n + 1)

theorem P12752315265161502023.correct : P12752315265161502023.Spec := by
  intro n
  simp only [A004591, Nat.add_sub_cancel]

end A004591

/-! ## A004591.P17870600711187040127

`A221942(A016921(n))%8`
-/

namespace A004591.P17870600711187040127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221942 (A016921 n).toNat) 8

end

end A004591.P17870600711187040127

namespace A004591

/-- `A221942(A016921(n))%8` -/
def P17870600711187040127.Spec : Prop :=
  ∀ n, P17870600711187040127.a n = A004591 (n + 1)

end A004591

/-! ## A004591.P5620076633297151896

`A221942(A016777(2*n))%8`
-/

namespace A004591.P5620076633297151896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221942 (A016777 (2 * n)).toNat) 8

end

end A004591.P5620076633297151896

namespace A004591

/-- `A221942(A016777(2*n))%8` -/
def P5620076633297151896.Spec : Prop :=
  ∀ n, P5620076633297151896.a n = A004591 (n + 1)

end A004591

/-!
# A004593: Expansion of e in base 2.

The programs for A004593, the canonical program `A004593.P10915400110262315907` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004593 has offset 2).

The definition of A004593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004593.P6845894034696777391

`and(2, A027437(n))/2`
-/

namespace A004593.P6845894034696777391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A027437 n) : ℚ) / 2

end

end A004593.P6845894034696777391

namespace A004593

/-- `and(2, A027437(n))/2` -/
def P6845894034696777391.Spec : Prop :=
  ∀ n, P6845894034696777391.a n = (A004593 (n + 2) : ℚ)

end A004593

/-! ## A004593.P17186748844448641965

`A252706(and(2, -A293337(n)))`
-/

namespace A004593.P17186748844448641965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252706 (Int.land 2 (-A293337 n)).toNat

end

end A004593.P17186748844448641965

namespace A004593

/-- `A252706(and(2, -A293337(n)))` -/
def P17186748844448641965.Spec : Prop :=
  ∀ n, P17186748844448641965.a n = A004593 (n + 2)

end A004593

/-! ## A004593.P10915400110262315907

`A000045(and(2, A293337(n)-1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004593

/-- `A000045(and(2, A293337(n)-1))` -/
def P10915400110262315907.Spec : Prop :=
  ∀ n, P10915400110262315907.a n = A004593 (n + 2)

theorem P10915400110262315907.correct : P10915400110262315907.Spec := by
  intro n
  simp only [A004593, Nat.add_sub_cancel]

end A004593

/-! ## A004593.P16396825594689897323

`A293339(and(2, A293337(n)-1))`
-/

namespace A004593.P16396825594689897323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293339 (Int.land 2 (A293337 n - 1)).toNat

end

end A004593.P16396825594689897323

namespace A004593

/-- `A293339(and(2, A293337(n)-1))` -/
def P16396825594689897323.Spec : Prop :=
  ∀ n, P16396825594689897323.a n = A004593 (n + 2)

end A004593

/-! ## A004593.P5774360394188991558

`A293341(and(2, A293337(n)-1))`
-/

namespace A004593.P5774360394188991558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293341 (Int.land 2 (A293337 n - 1)).toNat

end

end A004593.P5774360394188991558

namespace A004593

/-- `A293341(and(2, A293337(n)-1))` -/
def P5774360394188991558.Spec : Prop :=
  ∀ n, P5774360394188991558.a n = A004593 (n + 2)

end A004593

/-! ## A004593.P4250921023325625621

`A317974(and(2, A293337(n)-1))`
-/

namespace A004593.P4250921023325625621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 (Int.land 2 (A293337 n - 1)).toNat

end

end A004593.P4250921023325625621

namespace A004593

/-- `A317974(and(2, A293337(n)-1))` -/
def P4250921023325625621.Spec : Prop :=
  ∀ n, P4250921023325625621.a n = A004593 (n + 2)

end A004593

/-!
# A004594: Expansion of e in base 3.

The programs for A004594, the canonical program `A004594.P16125656733988585971` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004594 has offset 1).

The definition of A004594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004594.P16125656733988585971

`floor(e*3^n)%3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004594

/-- `floor(e*3^n)%3` -/
def P16125656733988585971.Spec : Prop :=
  ∀ n, P16125656733988585971.a n = A004594 (n + 1)

theorem P16125656733988585971.correct : P16125656733988585971.Spec := by
  intro n
  simp only [A004594, Nat.add_sub_cancel]

end A004594

/-! ## A004594.P8737635325177706908

`A030341(A005587(n+1)-A114108(2*n+1))`
-/

namespace A004594.P8737635325177706908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A005587 (n + 1) - A114108 (2 * n + 1)).toNat

end

end A004594.P8737635325177706908

namespace A004594

/-- `A030341(A005587(n+1)-A114108(2*n+1))` -/
def P8737635325177706908.Spec : Prop :=
  ∀ n, P8737635325177706908.a n = A004594 (n + 1)

end A004594

/-! ## A004594.P2183453819057948522

`dr(A306323(A304531(n+1))%3)`
-/

namespace A004594.P2183453819057948522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A306323 (A304531 (n + 1)).toNat) 3)

end

end A004594.P2183453819057948522

namespace A004594

/-- `dr(A306323(A304531(n+1))%3)` -/
def P2183453819057948522.Spec : Prop :=
  ∀ n, (P2183453819057948522.a n : ℤ) = A004594 (n + 1)

end A004594

/-! ## A004594.P18432856083509411886

`A289165(A229311(n+1))+A195011(n)`
-/

namespace A004594.P18432856083509411886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A229311 (n + 1)).toNat + A195011 n

end

end A004594.P18432856083509411886

namespace A004594

/-- `A289165(A229311(n+1))+A195011(n)` -/
def P18432856083509411886.Spec : Prop :=
  ∀ n, P18432856083509411886.a n = A004594 (n + 1)

end A004594

/-! ## A004594.P18346615774674574817

`A349221(n+1)+A236862(A349206(n))`
-/

namespace A004594.P18346615774674574817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349221 (n + 1) + A236862 (A349206 (n + 21)).toNat

end

end A004594.P18346615774674574817

namespace A004594

/-- `A349221(n+1)+A236862(A349206(n))` -/
def P18346615774674574817.Spec : Prop :=
  ∀ n, P18346615774674574817.a n = A004594 (n + 1)

end A004594

/-!
# A004595: Expansion of e in base 4.

The programs for A004595, the canonical program `A004595.P5051314179271727689` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004595 has offset 1).

The definition of A004595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004595.P5051314179271727689

`A004593(2*n+3)+2*A004593(2*(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004595

/-- `A004593(2*n+3)+2*A004593(2*(n+1))` -/
def P5051314179271727689.Spec : Prop :=
  ∀ n, P5051314179271727689.a n = A004595 (n + 1)

theorem P5051314179271727689.correct : P5051314179271727689.Spec := by
  intro n
  simp only [A004595, Nat.add_sub_cancel]

end A004595

/-! ## A004595.P15808281375118401350

`floor(e*4^n)%4`
-/

namespace A004595.P15808281375118401350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.exp 1 * (4 ^ n : ℝ)⌋ 4

end

end A004595.P15808281375118401350

namespace A004595

/-- `floor(e*4^n)%4` -/
def P15808281375118401350.Spec : Prop :=
  ∀ n, P15808281375118401350.a n = A004595 (n + 1)

end A004595

/-! ## A004595.P13756476543759927009

`and(3, floor(e*4^n))`
-/

namespace A004595.P13756476543759927009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ⌊Real.exp 1 * (4 ^ n : ℝ)⌋

end

end A004595.P13756476543759927009

namespace A004595

/-- `and(3, floor(e*4^n))` -/
def P13756476543759927009.Spec : Prop :=
  ∀ n, P13756476543759927009.a n = A004595 (n + 1)

end A004595

/-! ## A004595.P17446557585744080613

`dr(A027437(2*n)%4)`
-/

namespace A004595.P17446557585744080613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A027437 (2 * n)) 4)

end

end A004595.P17446557585744080613

namespace A004595

/-- `dr(A027437(2*n)%4)` -/
def P17446557585744080613.Spec : Prop :=
  ∀ n, (P17446557585744080613.a n : ℤ) = A004595 (n + 1)

end A004595

/-!
# A004597: Expansion of e in base 6.

The programs for A004597, the canonical program `A004597.P10008506205806624898` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004597 has offset 1).

The definition of A004597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004597.P10008506205806624898

`floor(e*6^n)%6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004597

/-- `floor(e*6^n)%6` -/
def P10008506205806624898.Spec : Prop :=
  ∀ n, P10008506205806624898.a n = A004597 (n + 1)

theorem P10008506205806624898.correct : P10008506205806624898.Spec := by
  intro n
  simp only [A004597, Nat.add_sub_cancel]

end A004597

/-!
# A004599: Expansion of e in base 8.

The programs for A004599, the canonical program `A004599.P11205641395720963001` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004599 has offset 1).

The definition of A004599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004599.P11205641395720963001

`A027437(3*n)%8`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004599

/-- `A027437(3*n)%8` -/
def P11205641395720963001.Spec : Prop :=
  ∀ n, P11205641395720963001.a n = A004599 (n + 1)

theorem P11205641395720963001.correct : P11205641395720963001.Spec := by
  intro n
  simp only [A004599, Nat.add_sub_cancel]

end A004599

/-! ## A004599.P5242845365231251499

`and(7, A293337(3*n)-1)`
-/

namespace A004599.P5242845365231251499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A293337 (3 * n) - 1)

end

end A004599.P5242845365231251499

namespace A004599

/-- `and(7, A293337(3*n)-1)` -/
def P5242845365231251499.Spec : Prop :=
  ∀ n, P5242845365231251499.a n = A004599 (n + 1)

end A004599

/-! ## A004599.P14561288190177129075

`and(7, A027437(A008585(n)))`
-/

namespace A004599.P14561288190177129075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A027437 (A008585 n).toNat)

end

end A004599.P14561288190177129075

namespace A004599

/-- `and(7, A027437(A008585(n)))` -/
def P14561288190177129075.Spec : Prop :=
  ∀ n, P14561288190177129075.a n = A004599 (n + 1)

end A004599

/-! ## A004599.P12505559728263490671

`and(7, A027437(A023444(3*n+2)))`
-/

namespace A004599.P12505559728263490671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A027437 (A023444 (3 * n + 2)).toNat)

end

end A004599.P12505559728263490671

namespace A004599

/-- `and(7, A027437(A023444(3*n+2)))` -/
def P12505559728263490671.Spec : Prop :=
  ∀ n, P12505559728263490671.a n = A004599 (n + 1)

end A004599

/-! ## A004599.P17936618969762736611

`and(A027437(3*n), A106226(A055396(2*(n+2))))`
-/

namespace A004599.P17936618969762736611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027437 (3 * n)) (A106226 (A055396 (2 * (n + 2))).toNat)

end

end A004599.P17936618969762736611

namespace A004599

/-- `and(A027437(3*n), A106226(A055396(2*(n+2))))` -/
def P17936618969762736611.Spec : Prop :=
  ∀ n, P17936618969762736611.a n = A004599 (n + 1)

end A004599

