import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C006
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C003
import Seq.B006.C000
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
# A148600: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (0, 1, 1), (1, -1, -1)}.

The programs for A148600, there is no canonical definition to state claims against.
-/

/-! ## A148600.P8730524716668654188

`A322070(A130829(n+1))+A148599(A073789(n))`
-/

namespace A148600.P8730524716668654188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322070 (A130829 (n + 1)).toNat + A148599 (A073789 n).toNat

end

end A148600.P8730524716668654188

/-! ## A148600.P9302318092649601002

`A322070(A130829(n+1))+A127287(A148599(n))`
-/

namespace A148600.P9302318092649601002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322070 (A130829 (n + 1)).toNat + A127287 (A148599 n).toNat

end

end A148600.P9302318092649601002

/-! ## A148600.P4666713095005452479

`A209229(A322070(n+1))+A148599(A073789(n))`
-/

namespace A148600.P4666713095005452479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A322070 (n + 1)).toNat + A148599 (A073789 n).toNat

end

end A148600.P4666713095005452479

/-! ## A148600.P7600821178696594469

`A209229(A322070(n+1))+A127287(A148599(n))`
-/

namespace A148600.P7600821178696594469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A322070 (n + 1)).toNat + A127287 (A148599 n).toNat

end

end A148600.P7600821178696594469

/-!
# A148601: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, -1, -1), (1, 1, 0)}.

The programs for A148601, there is no canonical definition to state claims against.
-/

/-! ## A148601.P2028841060939391983

`A335380(A000041(n)*A000085(n))`
-/

namespace A148601.P2028841060939391983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A000041 n * A000085 n).toNat

end

end A148601.P2028841060939391983

/-! ## A148601.P12069324578472879436

`A242932(a(n-1)+3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A148601.P12069324578472879436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 6] fun n a =>
  A242932 (a (n - 1) + 3).toNat

end

end A148601.P12069324578472879436

/-! ## A148601.P504596191533986006

`A023190(A149218(n))`
-/

namespace A148601.P504596191533986006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149218 n).toNat

end

end A148601.P504596191533986006

/-!
# A148602: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (0, 1, 1), (1, -1, -1)}.

The programs for A148602, there is no canonical definition to state claims against.
-/

/-! ## A148602.P14726294338384334600

`A362851(A102475(n))`
-/

namespace A148602.P14726294338384334600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362851 (A102475 n).toNat

end

end A148602.P14726294338384334600

/-! ## A148602.P10194412148576887553

`A349523(A269964(n+1))`
-/

namespace A148602.P10194412148576887553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349523 (A269964 (n + 1)).toNat

end

end A148602.P10194412148576887553

/-!
# A148603: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A148603, there is no canonical definition to state claims against.
-/

/-! ## A148603.P15295813844474170609

`A241183(A241151(n+2)+A026016(n+1))`
-/

namespace A148603.P15295813844474170609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (A241151 (n + 2) + A026016 (n + 1)).toNat

end

end A148603.P15295813844474170609

/-! ## A148603.P10319062285266874614

`A024417(A149613(n))`
-/

namespace A148603.P10319062285266874614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149613 n).toNat

end

end A148603.P10319062285266874614

/-! ## A148603.P1788104141587948027

`A239500(A320594(n+4)-3)`
-/

namespace A148603.P1788104141587948027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239500 (A320594 (n + 4 + 12) - 3).toNat

end

end A148603.P1788104141587948027

/-!
# A148606: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A148606, there is no canonical definition to state claims against.
-/

/-! ## A148606.P16393729838966743986

`A148607(n)-A271437(A117228(n+1))`
-/

namespace A148606.P16393729838966743986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148607 n - A271437 (A117228 (n + 1)).toNat

end

end A148606.P16393729838966743986

/-! ## A148606.P11007546043296299528

`A148608(n)-A271437(A117228(n+1))`
-/

namespace A148606.P11007546043296299528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148608 n - A271437 (A117228 (n + 1)).toNat

end

end A148606.P11007546043296299528

/-! ## A148606.P15389403958547277846

`A148607(n)-A271437(A193412(n+1))`
-/

namespace A148606.P15389403958547277846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148607 n - A271437 (A193412 (n + 1)).toNat

end

end A148606.P15389403958547277846

/-! ## A148606.P7120627640074869918

`A148608(n)-A271437(A193412(n+1))`
-/

namespace A148606.P7120627640074869918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148608 n - A271437 (A193412 (n + 1)).toNat

end

end A148606.P7120627640074869918

/-!
# A148613: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148613, there is no canonical definition to state claims against.
-/

/-! ## A148613.P4196877812735941966

`A078709(A130505(n))`
-/

namespace A148613.P4196877812735941966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078709 (A130505 n).toNat

end

end A148613.P4196877812735941966

/-! ## A148613.P3335756000322547314

`A126315(A003520(∑[n]+2))`
-/

namespace A148613.P3335756000322547314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A003520 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A148613.P3335756000322547314

/-! ## A148613.P14562628345678250568

`A148608(n)+A033665(A096647(n))`
-/

namespace A148613.P14562628345678250568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148608 n + A033665 (A096647 n).toNat

end

end A148613.P14562628345678250568

/-!
# A148614: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A148614, there is no canonical definition to state claims against.
-/

/-! ## A148614.P26337601964183047

`C(A091497(2^n), 2)`
-/

namespace A148614.P26337601964183047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091497 (2 ^ n)).toNat 2

end

end A148614.P26337601964183047

/-! ## A148614.P4537729385647215529

`C(A306841(2^n), round(sqrt(n)))`
-/

namespace A148614.P4537729385647215529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A306841 (2 ^ n)).toNat (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A148614.P4537729385647215529

/-! ## A148614.P12627334484962462974

`A176747(A088325(n))`
-/

namespace A148614.P12627334484962462974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176747 (A088325 n).toNat

end

end A148614.P12627334484962462974

/-!
# A148615: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148615, there is no canonical definition to state claims against.
-/

/-! ## A148615.P11901839210567719120

`A066339(3*a(n-2)*(n+1)²)` with `a(0)=1, a(1)=1`
-/

namespace A148615.P11901839210567719120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A066339 (3 * a (n - 2) * ((n + 1) ^ 2 : ℤ)).toNat

end

end A148615.P11901839210567719120

/-! ## A148615.P7968945422114022780

`A117892(A059219(n)+A057162(n))`
-/

namespace A148615.P7968945422114022780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117892 (A059219 n + A057162 n).toNat

end

end A148615.P7968945422114022780

/-! ## A148615.P7226355519625110876

`A366770(A001003(n))+A000110(n)`
-/

namespace A148615.P7226355519625110876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366770 (A001003 n).toNat + A000110 n

end

end A148615.P7226355519625110876

/-!
# A148616: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148616, there is no canonical definition to state claims against.
-/

/-! ## A148616.P15499553159320088812

`A333627(A000295(n))+A000110(n)`
-/

namespace A148616.P15499553159320088812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A000295 n).toNat + A000110 n

end

end A148616.P15499553159320088812

/-! ## A148616.P6505957103764339604

`A333627(A000295(n))+A164864(n)`
-/

namespace A148616.P6505957103764339604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A000295 n).toNat + A164864 n

end

end A148616.P6505957103764339604

/-! ## A148616.P3420511937653068242

`A333627(A000295(n))+A276724(n)`
-/

namespace A148616.P3420511937653068242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A000295 n).toNat + A276724 n

end

end A148616.P3420511937653068242

/-!
# A148617: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148617, there is no canonical definition to state claims against.
-/

/-! ## A148617.P3085046469664733368

`or(A148616(n), A185284(n²))`
-/

namespace A148617.P3085046469664733368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148616 n) (A185284 (n ^ 2))

end

end A148617.P3085046469664733368

/-! ## A148617.P16486557810339073095

`A346722(A120588(n))+A065942(n)`
-/

namespace A148617.P16486557810339073095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346722 (A120588 n).toNat + A065942 n

end

end A148617.P16486557810339073095

/-! ## A148617.P300053220032461079

`or(A001462(A000262(n)), A148616(n))`
-/

namespace A148617.P300053220032461079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001462 (A000262 n).toNat) (A148616 n)

end

end A148617.P300053220032461079

/-!
# A148618: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 1), (1, -1, -1)}.

The programs for A148618, there is no canonical definition to state claims against.
-/

/-! ## A148618.P10421723439572037519

`A148619(n)-A065937(A065953(n+1))`
-/

namespace A148618.P10421723439572037519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148619 n - A065937 (A065953 (n + 1)).toNat

end

end A148618.P10421723439572037519

/-! ## A148618.P7776173621338866884

`A148619(A073788(n))`
-/

namespace A148618.P7776173621338866884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148619 (A073788 n).toNat

end

end A148618.P7776173621338866884

/-! ## A148618.P12629232242676059903

`A106432(A118397(n))`
-/

namespace A148618.P12629232242676059903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A118397 n).toNat

end

end A148618.P12629232242676059903

/-!
# A148619: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, -1)}.

The programs for A148619, there is no canonical definition to state claims against.
-/

/-! ## A148619.P15602187173244319041

`A148618(n)+A065937(A065953(n+1))`
-/

namespace A148619.P15602187173244319041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148618 n + A065937 (A065953 (n + 1)).toNat

end

end A148619.P15602187173244319041

/-!
# A148620: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148620, there is no canonical definition to state claims against.
-/

/-! ## A148620.P8355364811139929474

`A148618(n)+A033685(A014211(n))`
-/

namespace A148620.P8355364811139929474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148618 n + A033685 (A014211 n).toNat

end

end A148620.P8355364811139929474

/-! ## A148620.P623230506391538724

`A108141(A148689(n))`
-/

namespace A148620.P623230506391538724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148689 n).toNat

end

end A148620.P623230506391538724

/-! ## A148620.P8220784220159404396

`A110266(or(n, A339845(n)))`
-/

namespace A148620.P8220784220159404396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (Int.lor (n : ℤ) (A339845 n)).toNat

end

end A148620.P8220784220159404396

/-!
# A148621: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, -1)}.

The programs for A148621, there is no canonical definition to state claims against.
-/

/-! ## A148621.P4072959903432992007

`A319193(A034430(n))+A203578(n)`
-/

namespace A148621.P4072959903432992007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319193 (A034430 n).toNat + A203578 n

end

end A148621.P4072959903432992007

/-! ## A148621.P6255651138272029364

`A322437(A277830(n))+A148619(n)`
-/

namespace A148621.P6255651138272029364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (A277830 n).toNat + A148619 n

end

end A148621.P6255651138272029364

/-! ## A148621.P15414073812625711517

`A331266(A294175(n)+A275558(n))`
-/

namespace A148621.P15414073812625711517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331266 (A294175 n + A275558 n).toNat

end

end A148621.P15414073812625711517

/-!
# A148622: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148622, there is no canonical definition to state claims against.
-/

/-! ## A148622.P8677223739967816897

`A087836(∑[A148137(n)²])`
-/

namespace A148622.P8677223739967816897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148137 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148622.P8677223739967816897

/-! ## A148622.P1001877264365591537

`abs(xor(-A215970(n+1), A148589(n)))`
-/

namespace A148622.P1001877264365591537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-A215970 (n + 1)) (A148589 n)|

end

end A148622.P1001877264365591537

/-! ## A148622.P4844374843292922266

`A216522(a(n-2)*A000110(n))` with `a(0)=1, a(1)=1`
-/

namespace A148622.P4844374843292922266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A216522 (a (n - 2) * A000110 n).toNat

end

end A148622.P4844374843292922266

/-!
# A148623: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148623, there is no canonical definition to state claims against.
-/

/-! ## A148623.P4163084803614682892

`A049990(A098465(n)+1)`
-/

namespace A148623.P4163084803614682892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (A098465 n + 1).toNat

end

end A148623.P4163084803614682892

/-! ## A148623.P7748951374191496120

`A244130(n)+A096182(A134964(n))`
-/

namespace A148623.P7748951374191496120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244130 n + A096182 (A134964 n).toNat

end

end A148623.P7748951374191496120

/-! ## A148623.P12866861652156700750

`A352665(A000041(n))+A274295(n)`
-/

namespace A148623.P12866861652156700750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352665 (A000041 n).toNat + A274295 n

end

end A148623.P12866861652156700750

/-!
# A148624: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A148624, there is no canonical definition to state claims against.
-/

/-! ## A148624.P120135247772312787

`A148629(A004891(n+1))`
-/

namespace A148624.P120135247772312787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148629 (A004891 (n + 1)).toNat

end

end A148624.P120135247772312787

/-!
# A148630: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148630, there is no canonical definition to state claims against.
-/

/-! ## A148630.P9840229318123392814

`A177431(A059529(n))`
-/

namespace A148630.P9840229318123392814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177431 (A059529 n).toNat

end

end A148630.P9840229318123392814

/-!
# A148633: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A148633, there is no canonical definition to state claims against.
-/

/-! ## A148633.P1684792695126081601

`A247908(A149121(n))`
-/

namespace A148633.P1684792695126081601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A149121 n).toNat

end

end A148633.P1684792695126081601

/-! ## A148633.P5404307945910666844

`A308627(A291988(n))`
-/

namespace A148633.P5404307945910666844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308627 (A291988 n).toNat

end

end A148633.P5404307945910666844

/-!
# A148634: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148634, there is no canonical definition to state claims against.
-/

/-! ## A148634.P9160152818607280282

`A118492(A371777(n))`
-/

namespace A148634.P9160152818607280282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118492 (A371777 n).toNat

end

end A148634.P9160152818607280282

/-! ## A148634.P18077478253153371100

`A220413(∑[A135343(n)])`
-/

namespace A148634.P18077478253153371100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148634.P18077478253153371100

/-! ## A148634.P17483153338268597176

`A106432(Δ[Δ[A151463(n)]])`
-/

namespace A148634.P17483153338268597176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151463 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (f1 (n + 1) - f1 n).toNat

end

end A148634.P17483153338268597176

/-!
# A148637: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, -1), (1, 1, -1), (1, 1, 0)}.

The programs for A148637, there is no canonical definition to state claims against.
-/

/-! ## A148637.P17065851163509760837

`A363462(A026766(n))`
-/

namespace A148637.P17065851163509760837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363462 (A026766 n).toNat

end

end A148637.P17065851163509760837

/-! ## A148637.P17570865338634907032

`A121166(A327067(n))`
-/

namespace A148637.P17570865338634907032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121166 (A327067 n).toNat

end

end A148637.P17570865338634907032

/-! ## A148637.P15274412982053694404

`A306838(n)+1-A011371(n+3)`
-/

namespace A148637.P15274412982053694404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306838 n + 1 - A011371 (n + 3)

end

end A148637.P15274412982053694404

/-!
# A148638: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A148638, there is no canonical definition to state claims against.
-/

/-! ## A148638.P13853457888679345727

`A247911(A193384(2*(n+1))+floor((n+1)/(10-sqrt(22))))`
-/

namespace A148638.P13853457888679345727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A193384 (2 * (n + 1)) + ⌊(n + 1 : ℝ) / (10 - Real.sqrt (22 : ℝ))⌋).toNat

end

end A148638.P13853457888679345727

/-! ## A148638.P7469889386386987044

`A304406(n)+A136803(A289501(n))`
-/

namespace A148638.P7469889386386987044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304406 n + A136803 (A289501 n).toNat

end

end A148638.P7469889386386987044

/-! ## A148638.P1984638189367679842

`A038567(A290072(n)%A349255(n))`
-/

namespace A148638.P1984638189367679842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (Int.tmod (A290072 n) (A349255 n)).toNat

end

end A148638.P1984638189367679842

/-!
# A148639: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148639, there is no canonical definition to state claims against.
-/

/-! ## A148639.P6425175324274292123

`A148640(A073788(n))`
-/

namespace A148639.P6425175324274292123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148640 (A073788 n).toNat

end

end A148639.P6425175324274292123

/-!
# A148641: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148641, there is no canonical definition to state claims against.
-/

/-! ## A148641.P7920050437165875026

`A084470(A325213(n))`
-/

namespace A148641.P7920050437165875026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084470 (A325213 n).toNat

end

end A148641.P7920050437165875026

/-!
# A148643: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148643, there is no canonical definition to state claims against.
-/

/-! ## A148643.P11048672996342987057

`A262689(∑[A100302(n)²])`
-/

namespace A148643.P11048672996342987057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100302 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148643.P11048672996342987057

/-!
# A148644: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148644, there is no canonical definition to state claims against.
-/

/-! ## A148644.P11792646803788185925

`A247971(A148751(n))`
-/

namespace A148644.P11792646803788185925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A148751 n).toNat

end

end A148644.P11792646803788185925

/-! ## A148644.P2476577702472235830

`∑[and(A323786(n), A323792(n+1))]`
-/

namespace A148644.P2476577702472235830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323786 n) (A323792 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148644.P2476577702472235830

/-! ## A148644.P10392298297850664516

`or(A281489(n), A321228(floor(7*n/4)))`
-/

namespace A148644.P10392298297850664516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A281489 n) (A321228 ⌊7 * ((n : ℚ) / 4)⌋.toNat)

end

end A148644.P10392298297850664516

/-!
# A148645: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148645, there is no canonical definition to state claims against.
-/

/-! ## A148645.P7898830566594583821

`A247971(or(1, A148756(n)))`
-/

namespace A148645.P7898830566594583821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (Int.lor 1 (A148756 n)).toNat

end

end A148645.P7898830566594583821

/-! ## A148645.P11553707463352340453

`A258850(A018028(n))+A100302(n)`
-/

namespace A148645.P11553707463352340453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (A018028 n).toNat + A100302 n

end

end A148645.P11553707463352340453

/-!
# A148646: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148646, there is no canonical definition to state claims against.
-/

/-! ## A148646.P293672350215009632

`A226762(A326854(n+1)+A026593(n+1))`
-/

namespace A148646.P293672350215009632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A326854 (n + 1) + A026593 (n + 1)).toNat

end

end A148646.P293672350215009632

/-! ## A148646.P11938918131101872703

`A148647(n)-A083891(A000045(3*n+2))`
-/

namespace A148646.P11938918131101872703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148647 n - A083891 (A000045 (3 * n + 2)).toNat

end

end A148646.P11938918131101872703

/-!
# A148647: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148647, there is no canonical definition to state claims against.
-/

/-! ## A148647.P3332603209927604430

`or(A007814(A051451(n+1)), A148646(n))`
-/

namespace A148647.P3332603209927604430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A051451 (n + 1)).toNat) (A148646 n)

end

end A148647.P3332603209927604430

/-! ## A148647.P15083324877274206455

`or(A148646(A004891(n+1)), A331585(n))`
-/

namespace A148647.P15083324877274206455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148646 (A004891 (n + 1)).toNat) (A331585 n)

end

end A148647.P15083324877274206455

/-! ## A148647.P16997126731569545937

`A148646(n)+A083891(A025012(n))`
-/

namespace A148647.P16997126731569545937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148646 n + A083891 (A025012 n).toNat

end

end A148647.P16997126731569545937

/-!
# A148648: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148648, there is no canonical definition to state claims against.
-/

/-! ## A148648.P492606427191640141

`A332284(A014381(n))+A148647(n)`
-/

namespace A148648.P492606427191640141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332284 (A014381 n).toNat + A148647 n

end

end A148648.P492606427191640141

/-! ## A148648.P8770935064394322072

`or(A001472(n), A007953(A321585(n)))`
-/

namespace A148648.P8770935064394322072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001472 n) (A007953 (A321585 n).toNat)

end

end A148648.P8770935064394322072

/-! ## A148648.P17954203830207103918

`A107040(A378086(n+1)+A000088(n))`
-/

namespace A148648.P17954203830207103918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (A378086 (n + 1) + A000088 n).toNat

end

end A148648.P17954203830207103918

/-!
# A148651: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A148651, there is no canonical definition to state claims against.
-/

/-! ## A148651.P14141181650655462216

`A148652(A073788(n))`
-/

namespace A148651.P14141181650655462216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148652 (A073788 n).toNat

end

end A148651.P14141181650655462216

/-!
# A148657: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A148657, there is no canonical definition to state claims against.
-/

/-! ## A148657.P702340968614812474

`A148649(n)+A064834(A076321(n+1))`
-/

namespace A148657.P702340968614812474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148649 n + A064834 (A076321 (n + 1)).toNat

end

end A148657.P702340968614812474

/-! ## A148657.P2839012569084656411

`A148650(n)+A064834(A076321(n+1))`
-/

namespace A148657.P2839012569084656411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148650 n + A064834 (A076321 (n + 1)).toNat

end

end A148657.P2839012569084656411

/-! ## A148657.P412518046052586797

`A045917(A155610(n)+A034886(2*(n+2)))`
-/

namespace A148657.P412518046052586797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A155610 n + A034886 (2 * (n + 2))).toNat

end

end A148657.P412518046052586797

/-!
# A148660: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148660, there is no canonical definition to state claims against.
-/

/-! ## A148660.P10539054304944764769

`A148661(n)-A292628(A283250(n))`
-/

namespace A148660.P10539054304944764769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148661 n - A292628 (A283250 n).toNat

end

end A148660.P10539054304944764769

/-! ## A148660.P8828997071555515951

`A232640(A108070(n+1)+A038145(n+1))`
-/

namespace A148660.P8828997071555515951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232640 (A108070 (n + 1) + A038145 (n + 1)).toNat

end

end A148660.P8828997071555515951

/-!
# A148661: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148661, there is no canonical definition to state claims against.
-/

/-! ## A148661.P3763454404231624276

`A117892(A148665(n)*A329746(n+1))`
-/

namespace A148661.P3763454404231624276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117892 (A148665 n * A329746 (n + 1)).toNat

end

end A148661.P3763454404231624276

/-! ## A148661.P8743813072043974376

`A220413(A331383(3*n+4)+A180140(n))`
-/

namespace A148661.P8743813072043974376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A331383 (3 * n + 4) + A180140 n).toNat

end

end A148661.P8743813072043974376

/-!
# A148662: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148662, there is no canonical definition to state claims against.
-/

/-! ## A148662.P8642266022487748236

`A339539(A376707(n))`
-/

namespace A148662.P8642266022487748236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339539 (A376707 n).toNat

end

end A148662.P8642266022487748236

/-! ## A148662.P18266382044832059925

`A154099(or(1, n)*A148908(n))`
-/

namespace A148662.P18266382044832059925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 ((Nat.lor 1 n : ℤ) * A148908 n).toNat

end

end A148662.P18266382044832059925

/-!
# A148663: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148663, there is no canonical definition to state claims against.
-/

/-! ## A148663.P3229480351972752518

`A047974(n)-A298931(A001858(n))`
-/

namespace A148663.P3229480351972752518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047974 n - A298931 (A001858 n).toNat

end

end A148663.P3229480351972752518

/-! ## A148663.P2583670252630402269

`A277680(A277686(n+1))%A277712(2*n+1)`
-/

namespace A148663.P2583670252630402269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277680 (A277686 (n + 1)).toNat) (A277712 (2 * n + 1))

end

end A148663.P2583670252630402269

/-!
# A148664: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A148664, there is no canonical definition to state claims against.
-/

/-! ## A148664.P237043817338363546

`A148666(A073789(n))-A333037(A000005(n+5))`
-/

namespace A148664.P237043817338363546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148666 (A073789 n).toNat - A333037 (A000005 (n + 5)).toNat

end

end A148664.P237043817338363546

/-! ## A148664.P11556966504307657027

`A121760(A148666(n))-A333037(A000005(n+5))`
-/

namespace A148664.P11556966504307657027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121760 (A148666 n).toNat - A333037 (A000005 (n + 5)).toNat

end

end A148664.P11556966504307657027

/-! ## A148664.P5921282571337409500

`A148666(A171644(n))-A333037(A000005(n+5))`
-/

namespace A148664.P5921282571337409500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148666 (A171644 n).toNat - A333037 (A000005 (n + 5)).toNat

end

end A148664.P5921282571337409500

/-!
# A148667: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, 1, 0)}.

The programs for A148667, there is no canonical definition to state claims against.
-/

/-! ## A148667.P6517793267489122114

`A332086(A190168(2*(n+2))+1)`
-/

namespace A148667.P6517793267489122114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A190168 (2 * (n + 2)) + 1).toNat

end

end A148667.P6517793267489122114

/-! ## A148667.P6408526435100534888

`A054384(A007462(n+1))`
-/

namespace A148667.P6408526435100534888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054384 (A007462 (n + 1)).toNat

end

end A148667.P6408526435100534888

/-! ## A148667.P3711192201938926555

`A220188(A026956(n))+1`
-/

namespace A148667.P3711192201938926555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220188 (A026956 n).toNat + 1

end

end A148667.P3711192201938926555

/-!
# A148668: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A148668, there is no canonical definition to state claims against.
-/

/-! ## A148668.P9724629993748809394

`A148669(A073788(n))`
-/

namespace A148668.P9724629993748809394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148669 (A073788 n).toNat

end

end A148668.P9724629993748809394

/-!
# A148669: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A148669, there is no canonical definition to state claims against.
-/

/-! ## A148669.P8062134257971653755

`A076885(A056239(n+4)+A001047(n))`
-/

namespace A148669.P8062134257971653755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A056239 (n + 4) + A001047 n).toNat

end

end A148669.P8062134257971653755

/-!
# A148670: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A148670, there is no canonical definition to state claims against.
-/

/-! ## A148670.P15090554380199268201

`A148673(A073788(n))`
-/

namespace A148670.P15090554380199268201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148673 (A073788 n).toNat

end

end A148670.P15090554380199268201

/-! ## A148670.P338846336262435152

`A156689(A149019(n))`
-/

namespace A148670.P338846336262435152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A149019 n).toNat

end

end A148670.P338846336262435152

/-!
# A148674: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 1, 0)}.

The programs for A148674, there is no canonical definition to state claims against.
-/

/-! ## A148674.P9561531735327369382

`A120837(A148302(n))`
-/

namespace A148674.P9561531735327369382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120837 (A148302 n).toNat

end

end A148674.P9561531735327369382

/-! ## A148674.P4231751382026736886

`A148675(A073788(n))`
-/

namespace A148674.P4231751382026736886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148675 (A073788 n).toNat

end

end A148674.P4231751382026736886

/-! ## A148674.P3458756556169264502

`A023193(A383573(n))`
-/

namespace A148674.P3458756556169264502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A383573 n).toNat

end

end A148674.P3458756556169264502

/-!
# A148675: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148675, there is no canonical definition to state claims against.
-/

/-! ## A148675.P4400683589243042313

`or(1, A008612(A065053(2*n+1)))`
-/

namespace A148675.P4400683589243042313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008612 (A065053 (2 * n + 1)).toNat)

end

end A148675.P4400683589243042313

/-!
# A148676: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148676, there is no canonical definition to state claims against.
-/

/-! ## A148676.P17488958860476812972

`A195174(A343806(n)+A287971(n+2))`
-/

namespace A148676.P17488958860476812972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A343806 n + A287971 (n + 2)).toNat

end

end A148676.P17488958860476812972

/-! ## A148676.P12861188616413093352

`A008615(A291887(n+3)+A129247(n))`
-/

namespace A148676.P12861188616413093352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A291887 (n + 3) + A129247 n).toNat

end

end A148676.P12861188616413093352

/-! ## A148676.P1036605508645695863

`A185283(A052798(n))`
-/

namespace A148676.P1036605508645695863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A052798 n).toNat

end

end A148676.P1036605508645695863

/-!
# A148677: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (1, 1, 0)}.

The programs for A148677, there is no canonical definition to state claims against.
-/

/-! ## A148677.P15325838570831612230

`A104177(A096938(∑[n]))`
-/

namespace A148677.P15325838570831612230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104177 (A096938 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A148677.P15325838570831612230

/-!
# A148678: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A148678, there is no canonical definition to state claims against.
-/

/-! ## A148678.P5009427860485747390

`A162226(floor((round(11*∑[3^n/13])+1)/2)+1)`
-/

namespace A148678.P5009427860485747390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (⌊(SequenceMachineLib.roundAway (11 * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1 : ℚ) / 2⌋ + 1).toNat

end

end A148678.P5009427860485747390

/-! ## A148678.P3285147508467508332

`A244819(A128816(n))`
-/

namespace A148678.P3285147508467508332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244819 (A128816 n).toNat

end

end A148678.P3285147508467508332

/-!
# A148679: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A148679, there is no canonical definition to state claims against.
-/

/-! ## A148679.P16260124932304713795

`A345439(A345470(2*(n+1))+A345433(n+1))`
-/

namespace A148679.P16260124932304713795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345439 (A345470 (2 * (n + 1)) + A345433 (n + 1)).toNat

end

end A148679.P16260124932304713795

/-!
# A148680: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A148680, there is no canonical definition to state claims against.
-/

/-! ## A148680.P367559734111293414

`or(A007920(75*2^n-38), A148679(n))`
-/

namespace A148680.P367559734111293414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007920 (75 * 2 ^ n - 38)) (A148679 n)

end

end A148680.P367559734111293414

/-! ## A148680.P935712971616938064

`or(1, A171874(A171874(n))+A165521(n))`
-/

namespace A148680.P935712971616938064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171874 (A171874 n).toNat + A165521 n)

end

end A148680.P935712971616938064

/-! ## A148680.P17231809830366337212

`A335460(A002620(2*n+3))+A165521(n)`
-/

namespace A148680.P17231809830366337212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A002620 (2 * n + 3)).toNat + A165521 n

end

end A148680.P17231809830366337212

/-! ## A148680.P11524972595130499190

`A102466(A002426(n))-A001221(3*n+2)`
-/

namespace A148680.P11524972595130499190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (A002426 n).toNat - A001221 (3 * n + 2)

end

end A148680.P11524972595130499190

/-!
# A148683: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148683, there is no canonical definition to state claims against.
-/

/-! ## A148683.P5134277475207476487

`A004525(A148685(n)+A148681(n))`
-/

namespace A148683.P5134277475207476487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148685 n + A148681 n).toNat

end

end A148683.P5134277475207476487

/-! ## A148683.P219487029068066245

`A110654(A148685(n)+A148681(n))`
-/

namespace A148683.P219487029068066245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A148685 n + A148681 n).toNat

end

end A148683.P219487029068066245

/-!
# A148685: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148685, there is no canonical definition to state claims against.
-/

/-! ## A148685.P6287317147142994517

`or(A148684(n), A185245(A088634(n)))`
-/

namespace A148685.P6287317147142994517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148684 n) (A185245 (A088634 n).toNat)

end

end A148685.P6287317147142994517

/-! ## A148685.P9886057694731247634

`or(A148684(n), A185245(A302590(n+1)))`
-/

namespace A148685.P9886057694731247634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148684 n) (A185245 (A302590 (n + 1)).toNat)

end

end A148685.P9886057694731247634

/-!
# A148686: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, -1, -1), (1, 1, 0)}.

The programs for A148686, there is no canonical definition to state claims against.
-/

/-! ## A148686.P12992589045770437272

`A194640(A274479(n+1))`
-/

namespace A148686.P12992589045770437272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A274479 (n + 1)).toNat

end

end A148686.P12992589045770437272

/-!
# A148688: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, -1, 0), (1, 0, -1)}.

The programs for A148688, there is no canonical definition to state claims against.
-/

/-! ## A148688.P6677379649343493181

`A247914(A148458(n))`
-/

namespace A148688.P6677379649343493181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A148458 n).toNat

end

end A148688.P6677379649343493181

/-! ## A148688.P16328397220793282272

`A054404(A100447(n))`
-/

namespace A148688.P16328397220793282272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A100447 n).toNat

end

end A148688.P16328397220793282272

/-! ## A148688.P16502673517525075145

`A157271(A149879(n))`
-/

namespace A148688.P16502673517525075145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149879 n).toNat

end

end A148688.P16502673517525075145

/-!
# A148689: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A148689, there is no canonical definition to state claims against.
-/

/-! ## A148689.P960320559999264692

`A401479(A130463(n))`
-/

namespace A148689.P960320559999264692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401479 (A130463 n).toNat

end

end A148689.P960320559999264692

/-! ## A148689.P6236868226577494337

`A378696(A308448(n+1))`
-/

namespace A148689.P6236868226577494337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378696 (A308448 (n + 1)).toNat

end

end A148689.P6236868226577494337

/-! ## A148689.P14956842438500275370

`∑{#}[A088218(n), A356310(#)]`
-/

namespace A148689.P14956842438500275370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A356310 k

end

end A148689.P14956842438500275370

/-!
# A148692: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A148692, there is no canonical definition to state claims against.
-/

/-! ## A148692.P14225269463573694525

`A201204(n)-A102683(A001794(n))`
-/

namespace A148692.P14225269463573694525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 n - A102683 (A001794 n).toNat

end

end A148692.P14225269463573694525

/-! ## A148692.P10973913266310717925

`A201204(n)-A062977(A129277(n))`
-/

namespace A148692.P10973913266310717925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 n - A062977 (A129277 n).toNat

end

end A148692.P10973913266310717925

/-! ## A148692.P9139989093868795943

`A201204(n)-A083896(A143382(n))`
-/

namespace A148692.P9139989093868795943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 n - A083896 (A143382 n).toNat

end

end A148692.P9139989093868795943

/-! ## A148692.P17186202430600841538

`A201204(n)-A226557(A026713(n))`
-/

namespace A148692.P17186202430600841538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 n - A226557 (A026713 n).toNat

end

end A148692.P17186202430600841538

/-!
# A148693: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A148693, there is no canonical definition to state claims against.
-/

/-! ## A148693.P11401733757284925947

`A023193(A150375(n))`
-/

namespace A148693.P11401733757284925947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150375 n).toNat

end

end A148693.P11401733757284925947

/-! ## A148693.P14577952984401925156

`A082226(A240904(n))`
-/

namespace A148693.P14577952984401925156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A240904 n).toNat

end

end A148693.P14577952984401925156

/-!
# A148695: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (0, 1, 1), (1, 0, -1)}.

The programs for A148695, there is no canonical definition to state claims against.
-/

/-! ## A148695.P4391530579807592819

`A148698(A073788(n))`
-/

namespace A148695.P4391530579807592819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148698 (A073788 n).toNat

end

end A148695.P4391530579807592819

/-!
# A148699: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A148699, there is no canonical definition to state claims against.
-/

/-! ## A148699.P7474152969586552282

`A241151(2*A346220(n))`
-/

namespace A148699.P7474152969586552282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241151 (2 * A346220 n).toNat

end

end A148699.P7474152969586552282

/-! ## A148699.P17827683686243081172

`or(1, A054846(A086624(n)))`
-/

namespace A148699.P17827683686243081172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054846 (A086624 n).toNat)

end

end A148699.P17827683686243081172

/-! ## A148699.P16196801896505050933

`or(1, A157271(A071755(n)))`
-/

namespace A148699.P16196801896505050933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157271 (A071755 n).toNat)

end

end A148699.P16196801896505050933

