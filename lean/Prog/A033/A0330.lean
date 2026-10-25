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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
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
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A033000: If d,e are consecutive digits of n in base 12, then |d-e|>=5.

The programs for A033000, there is no canonical definition to state claims against.
-/

/-! ## A033000.P9997868549585596452

`lt[A000523(A325325(n)), A053832(n)]`
-/

namespace A033000.P9997868549585596452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A325325 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033000.P9997868549585596452

/-! ## A033000.P7053654350450155581

`lt[A282199(A152467(n)), A067497(n)]`
-/

namespace A033000.P7053654350450155581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282199 (A152467 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033000.P7053654350450155581

/-! ## A033000.P2446613128514979011

`lt[A242614(A200675(n)), A096777(n+1)]`
-/

namespace A033000.P2446613128514979011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242614 (A200675 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033000.P2446613128514979011

/-!
# A033001: Every run of digits of n in base 3 has length 2.

The programs for A033001, there is no canonical definition to state claims against.
-/

/-! ## A033001.P12906848718295734650

`4*A043307(n+1)`
-/

namespace A033001.P12906848718295734650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A043307 (n + 1)

end

end A033001.P12906848718295734650

/-! ## A033001.P9010585251263275388

`A338086(A031941(n+1))`
-/

namespace A033001.P9010585251263275388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A031941 (n + 1)).toNat

end

end A033001.P9010585251263275388

/-! ## A033001.P4079034810803407356

`A338086(A043089(n+1))`
-/

namespace A033001.P4079034810803407356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A043089 (n + 1)).toNat

end

end A033001.P4079034810803407356

/-! ## A033001.P7713397121378566668

`A338086(record[(n+1)/A043277(n+1)])`
-/

namespace A033001.P7713397121378566668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A043277 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A033001.P7713397121378566668

/-! ## A033001.P4308201167234727395

`∩[A032991(n+1), A338086(n)]`
-/

namespace A033001.P4308201167234727395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033001.P4308201167234727395

/-! ## A033001.P4675743722964691909

`∩[A032986(n+1), A338086(n)]`
-/

namespace A033001.P4675743722964691909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033001.P4675743722964691909

/-! ## A033001.P8783304607332862455

`∩[2*A032972(n+1), A338086(n)]`
-/

namespace A033001.P8783304607332862455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033001.P8783304607332862455

/-!
# A033002: Every run of digits of n in base 4 has length 2.

The programs for A033002, there is no canonical definition to state claims against.
-/

/-! ## A033002.P5030081818282211554

`5*A043308(n+1)`
-/

namespace A033002.P5030081818282211554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A043308 (n + 1)

end

end A033002.P5030081818282211554

/-! ## A033002.P14071017030657770422

`A048725(A043308(n+1))`
-/

namespace A033002.P14071017030657770422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A043308 (n + 1)).toNat

end

end A033002.P14071017030657770422

/-! ## A033002.P15663355448185333763

`A135042(A043308(n+1)+1)`
-/

namespace A033002.P15663355448185333763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (A043308 (n + 1) + 1).toNat

end

end A033002.P15663355448185333763

/-! ## A033002.P9631542798020520071

`A008706(A043308(n+1)%A062123(n))`
-/

namespace A033002.P9631542798020520071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.tmod (A043308 (n + 1)) (A062123 n)).toNat

end

end A033002.P9631542798020520071

/-! ## A033002.P15054947852706097051

`lcm(A008706(A043308(n+1)), A020985(n))`
-/

namespace A033002.P15054947852706097051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008706 (A043308 (n + 1)).toNat) (A020985 n)

end

end A033002.P15054947852706097051

/-! ## A033002.P4101821822741360085

`A008706(lcm(A043308(n+1), A087960(n)))`
-/

namespace A033002.P4101821822741360085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.lcm (A043308 (n + 1)) (A087960 n))

end

end A033002.P4101821822741360085

/-! ## A033002.P11316656610264591617

`A008706(or(A000007(n), A043308(n+1)))`
-/

namespace A033002.P11316656610264591617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.lor (A000007 n) (A043308 (n + 1))).toNat

end

end A033002.P11316656610264591617

/-! ## A033002.P5261596979564820447

`A007318(C(2, n))+A008706(A043308(n+1))-1`
-/

namespace A033002.P5261596979564820447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + (A008706 (A043308 (n + 1)).toNat - 1)

end

end A033002.P5261596979564820447

/-! ## A033002.P1239064473290276485

`A008706(A043308(n+1))^A000041(abs((-1)^n))`
-/

namespace A033002.P1239064473290276485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008706 (A043308 (n + 1)).toNat : ℚ) ^ (A000041 |(-1) ^ n|.toNat : ℤ)

end

end A033002.P1239064473290276485

/-! ## A033002.P3090949500936791525

`A000045(((-1)^n)²)+A008706(A043308(n+1))-1`
-/

namespace A033002.P3090949500936791525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat + (A008706 (A043308 (n + 1)).toNat - 1)

end

end A033002.P3090949500936791525

/-!
# A033003: Every run of digits of n in base 5 has length 2.

The programs for A033003, there is no canonical definition to state claims against.
-/

/-! ## A033003.P1680981266244499722

`6*A043309(n+1)`
-/

namespace A033003.P1680981266244499722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A043309 (n + 1)

end

end A033003.P1680981266244499722

/-! ## A033003.P17257019355286799695

`6/A043309(n+1)^A008683(A092627(n+1))`
-/

namespace A033003.P17257019355286799695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A043309 (n + 1) : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ)

end

end A033003.P17257019355286799695

/-! ## A033003.P12238729548942111231

`A008458(A043309(n+1))`
-/

namespace A033003.P12238729548942111231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A043309 (n + 1)).toNat

end

end A033003.P12238729548942111231

/-! ## A033003.P15190885691309393176

`A016957(A043309(n+1)-1)+2`
-/

namespace A033003.P15190885691309393176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (A043309 (n + 1) - 1).toNat + 2

end

end A033003.P15190885691309393176

/-! ## A033003.P10447748437032500995

`∩[A033018(n+1), A037981(n+1)]`
-/

namespace A033003.P10447748437032500995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033003.P10447748437032500995

/-!
# A033004: Every run of digits of n in base 6 has length 2.

The programs for A033004, there is no canonical definition to state claims against.
-/

/-! ## A033004.P14634043159775599108

`7*A043310(n+1)`
-/

namespace A033004.P14634043159775599108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A043310 (n + 1)

end

end A033004.P14634043159775599108

/-! ## A033004.P1253722139210440685

`A008589(A043310(n+1))`
-/

namespace A033004.P1253722139210440685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A043310 (n + 1)).toNat

end

end A033004.P1253722139210440685

/-! ## A033004.P6213212852139843238

`A016993(A043310(-xor(n, -1)))-1`
-/

namespace A033004.P6213212852139843238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (-Int.xor (n : ℤ) (-1)).toNat).toNat - 1

end

end A033004.P6213212852139843238

/-! ## A033004.P7567644463768463691

`A016993(A043310(n+1))-A004769(n)%2`
-/

namespace A033004.P7567644463768463691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - Int.tmod (A004769 n) 2

end

end A033004.P7567644463768463691

/-! ## A033004.P886156765345516207

`A016993(A043310(n+1))-gcd(3, A005897(n))`
-/

namespace A033004.P886156765345516207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - (Int.gcd 3 (A005897 n) : ℤ)

end

end A033004.P886156765345516207

/-! ## A033004.P2807301677903847389

`A016993(A043310(n+1))-A007318(C(2, n))`
-/

namespace A033004.P2807301677903847389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A033004.P2807301677903847389

/-! ## A033004.P16177338181715381481

`A016993(A043310(n+1))-A007318(and(1, -n))`
-/

namespace A033004.P16177338181715381481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A007318 (Int.land 1 (-(n : ℤ))).toNat

end

end A033004.P16177338181715381481

/-! ## A033004.P4757332427404746364

`A016993(A043310(n+1))-(A000041(n)%2)!`
-/

namespace A033004.P4757332427404746364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A033004.P4757332427404746364

/-! ## A033004.P5081101276137067719

`A016993(A043310(n+1))-A000040(n+2)%2`
-/

namespace A033004.P5081101276137067719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - Int.tmod (A000040 (n + 2)) 2

end

end A033004.P5081101276137067719

/-! ## A033004.P10165872510002441374

`A016993(A043310(n+1))-A014988(val(n+1, 2))`
-/

namespace A033004.P10165872510002441374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A014988 (SequenceMachineLib.valuation (n + 1) 2)

end

end A033004.P10165872510002441374

/-! ## A033004.P4173499785400474922

`A016993(A043310(n+1))-A014998(val(n+1, 2))`
-/

namespace A033004.P4173499785400474922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A014998 (SequenceMachineLib.valuation (n + 1) 2)

end

end A033004.P4173499785400474922

/-! ## A033004.P16202109713366581555

`A016993(A043310(n+1))-A000041(C(2, n+2))`
-/

namespace A033004.P16202109713366581555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A000041 (Nat.choose 2 (n + 2))

end

end A033004.P16202109713366581555

/-! ## A033004.P16484775444614567827

`A016993(A043310(n+1))-A000041(gcd(n, n+1))`
-/

namespace A033004.P16484775444614567827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A000041 (Nat.gcd n (n + 1))

end

end A033004.P16484775444614567827

/-! ## A033004.P5863348801127508744

`A016993(A043310(n+1))-A007318(((-1)^n+2)²)`
-/

namespace A033004.P5863348801127508744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A007318 (((-1) ^ n + 2) ^ 2).toNat

end

end A033004.P5863348801127508744

/-! ## A033004.P11797075619623534072

`A016993(A043310(n+1))+A008683(A002146(n))`
-/

namespace A033004.P11797075619623534072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat + A008683 (A002146 n).toNat

end

end A033004.P11797075619623534072

/-! ## A033004.P4825783186592933456

`A016993(A043310(n+1))-A014988(A070939(n))`
-/

namespace A033004.P4825783186592933456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A014988 (A070939 n).toNat

end

end A033004.P4825783186592933456

/-! ## A033004.P4846286792772425924

`A016993(A043310(n+1))-A014988(A293390(n))`
-/

namespace A033004.P4846286792772425924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A014988 (A293390 n).toNat

end

end A033004.P4846286792772425924

/-! ## A033004.P6384111244152684050

`A016993(A043310(n+1))-A014988(A051903(n+1))`
-/

namespace A033004.P6384111244152684050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A014988 (A051903 (n + 1)).toNat

end

end A033004.P6384111244152684050

/-! ## A033004.P11990346640942956461

`A016993(A043310(n+1))-A014998(A284600(n+4))`
-/

namespace A033004.P11990346640942956461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A014998 (A284600 (n + 4)).toNat

end

end A033004.P11990346640942956461

/-! ## A033004.P5305950473125195002

`A016993(A043310(n+1))-A014963(A000217(n+11))`
-/

namespace A033004.P5305950473125195002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A043310 (n + 1)).toNat - A014963 (A000217 (n + 11)).toNat

end

end A033004.P5305950473125195002

/-!
# A033005: Every run of digits of n in base 7 has length 2.

The programs for A033005, there is no canonical definition to state claims against.
-/

/-! ## A033005.P14113767260803391593

`8*A043311(n+1)`
-/

namespace A033005.P14113767260803391593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A043311 (n + 1)

end

end A033005.P14113767260803391593

/-! ## A033005.P10695029344828418380

`4*2*A043311(-xor(n, -1))`
-/

namespace A033005.P10695029344828418380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * A043311 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A033005.P10695029344828418380

/-! ## A033005.P4409982134081756970

`A008590(A043311(n+1))`
-/

namespace A033005.P4409982134081756970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A043311 (n + 1)).toNat

end

end A033005.P4409982134081756970

/-! ## A033005.P18145953982889599634

`A022144(A043311(-xor(n, -1)))`
-/

namespace A033005.P18145953982889599634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A043311 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A033005.P18145953982889599634

/-! ## A033005.P4260796395120448640

`A022144(A043311(gcd(n, n+1)+n))`
-/

namespace A033005.P4260796395120448640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A043311 (Nat.gcd n (n + 1) + n)).toNat

end

end A033005.P4260796395120448640

/-! ## A033005.P13275614986004130138

`A022144(A043311(C(n, n+2)+n+1))`
-/

namespace A033005.P13275614986004130138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A043311 (Nat.choose n (n + 2) + n + 1)).toNat

end

end A033005.P13275614986004130138

/-! ## A033005.P9278411687462479373

`∑{d}[A022144(A043311(n+1)), A000010(#)]`
-/

namespace A033005.P9278411687462479373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A043311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A033005.P9278411687462479373

/-! ## A033005.P2190761175544522400

`A022144(A043311(n+1))/abs(A033999(n))`
-/

namespace A033005.P2190761175544522400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A043311 (n + 1)).toNat : ℚ) / (|A033999 n| : ℚ)

end

end A033005.P2190761175544522400

/-! ## A033005.P12443146674659116759

`A022144(A043311(n+1))+A000007(n+1)`
-/

namespace A033005.P12443146674659116759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A043311 (n + 1)).toNat + A000007 (n + 1)

end

end A033005.P12443146674659116759

/-! ## A033005.P5098453929741430610

`A022144(A043311(n+1)%A044334(n+1))`
-/

namespace A033005.P5098453929741430610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.tmod (A043311 (n + 1)) (A044334 (n + 1))).toNat

end

end A033005.P5098453929741430610

/-! ## A033005.P9792652527763265871

`lcm(A022144(A043311(n+1)), A043287(n+1))`
-/

namespace A033005.P9792652527763265871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022144 (A043311 (n + 1)).toNat) (A043287 (n + 1))

end

end A033005.P9792652527763265871

/-! ## A033005.P6350857725980637792

`A022144(A043311(n+1))/A007318(C(2, n))`
-/

namespace A033005.P6350857725980637792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A043311 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A033005.P6350857725980637792

/-! ## A033005.P1583895826282775931

`A022144(A043311(n+1))%A000041(n+38)`
-/

namespace A033005.P1583895826282775931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A043311 (n + 1)).toNat) (A000041 (n + 38))

end

end A033005.P1583895826282775931

/-! ## A033005.P10448358662171098905

`A022144(A043311(n+1))/A000041(and(1, -n))`
-/

namespace A033005.P10448358662171098905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A043311 (n + 1)).toNat : ℚ) / (A000041 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A033005.P10448358662171098905

/-! ## A033005.P9212757208275171286

`A022144(A043311(n+1))+A008683(lcm(9, n+1))`
-/

namespace A033005.P9212757208275171286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A043311 (n + 1)).toNat + A008683 (Nat.lcm 9 (n + 1))

end

end A033005.P9212757208275171286

/-! ## A033005.P1024028829549222424

`A022144(A043311(n+1))+A016289(n+1+n)`
-/

namespace A033005.P1024028829549222424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A043311 (n + 1)).toNat + A016289 (n + 1 + n)

end

end A033005.P1024028829549222424

/-! ## A033005.P3112741835647014501

`A022144(A043311(n+1))+and(2, A005117(n+1)²)`
-/

namespace A033005.P3112741835647014501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A043311 (n + 1)).toNat + Int.land 2 (A005117 (n + 1) ^ 2)

end

end A033005.P3112741835647014501

/-! ## A033005.P9665748188313300987

`A022144(A043311(n+1))/A001221(A014442(n+1))`
-/

namespace A033005.P9665748188313300987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A043311 (n + 1)).toNat : ℚ) / (A001221 (A014442 (n + 1)).toNat : ℚ)

end

end A033005.P9665748188313300987

/-!
# A033006: Every run of digits of n in base 8 has length 2.

The programs for A033006, there is no canonical definition to state claims against.
-/

/-! ## A033006.P7776730699504873123

`9*A043312(n+1)`
-/

namespace A033006.P7776730699504873123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A043312 (n + 1)

end

end A033006.P7776730699504873123

/-! ## A033006.P3814668721316404205

`A043312(A000027(n+1))/(1/3)²`
-/

namespace A033006.P3814668721316404205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043312 (A000027 (n + 1)).toNat : ℚ) / ((1 : ℚ) / 3) ^ 2

end

end A033006.P3814668721316404205

/-! ## A033006.P12810071489377858771

`(A043312(n+1)/(1/3)²)%A344644(n+1)`
-/

namespace A033006.P12810071489377858771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A043312 (n + 1) : ℚ) / ((1 : ℚ) / 3) ^ 2)) (A344644 (n + 1))

end

end A033006.P12810071489377858771

/-! ## A033006.P10334991417973746986

`A043312(A057427(n+1)+n)/(1/3)²`
-/

namespace A033006.P10334991417973746986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043312 (A057427 (n + 1) + (n : ℤ)).toNat : ℚ) / ((1 : ℚ) / 3) ^ 2

end

end A033006.P10334991417973746986

/-! ## A033006.P15479955079723565442

`A043312(A004526(n+3)+A004526(n))/(1/3)²`
-/

namespace A033006.P15479955079723565442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043312 (A004526 (n + 3) + A004526 n).toNat : ℚ) / ((1 : ℚ) / 3) ^ 2

end

end A033006.P15479955079723565442

/-! ## A033006.P15171306607371403931

`A008591(A043312(n+1))`
-/

namespace A033006.P15171306607371403931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A043312 (n + 1)).toNat

end

end A033006.P15171306607371403931

/-! ## A033006.P18027290471286336480

`∩[A033021(n+1), A037993(n+1)]`
-/

namespace A033006.P18027290471286336480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033006.P18027290471286336480

/-!
# A033007: Every run of digits of n in base 9 has length 2.

The programs for A033007, there is no canonical definition to state claims against.
-/

/-! ## A033007.P12223027224516041839

`10*A043313(n+1)`
-/

namespace A033007.P12223027224516041839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A043313 (n + 1)

end

end A033007.P12223027224516041839

/-! ## A033007.P614518680175443580

`A008592(A043313(n+1))`
-/

namespace A033007.P614518680175443580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A043313 (n + 1)).toNat

end

end A033007.P614518680175443580

/-! ## A033007.P3975011253447516032

`A017281(A043313(C(n+1, n)))-1`
-/

namespace A033007.P3975011253447516032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A043313 (Nat.choose (n + 1) n)).toNat - 1

end

end A033007.P3975011253447516032

/-! ## A033007.P2854165691447211296

`A017281(A043313(n%(n+1)+1))-1`
-/

namespace A033007.P2854165691447211296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A043313 (n % (n + 1) + 1)).toNat - 1

end

end A033007.P2854165691447211296

/-! ## A033007.P1851008342550526704

`A017281(A043313(n+1))-A007318(∑[n])`
-/

namespace A033007.P1851008342550526704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A043313 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033007.P1851008342550526704

/-! ## A033007.P15996235058247521763

`A017281(A043313(n+1))-char[A001281(n)]`
-/

namespace A033007.P15996235058247521763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A043313 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033007.P15996235058247521763

/-! ## A033007.P18217593283653111544

`A017281(A043313(n+1))-A002262(∑[n])!`
-/

namespace A033007.P18217593283653111544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A043313 (n + 1)).toNat - (Nat.factorial (A002262 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A033007.P18217593283653111544

/-! ## A033007.P18263634913148055851

`A017281(A043313(n+1))-A000041(val(n+1, 40))`
-/

namespace A033007.P18263634913148055851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A043313 (n + 1)).toNat - A000041 (SequenceMachineLib.valuation (n + 1) 40)

end

end A033007.P18263634913148055851

/-! ## A033007.P16099946494335611130

`A017281(A043313(n+1))-A000108(val(n+1, 40))`
-/

namespace A033007.P16099946494335611130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A043313 (n + 1)).toNat - A000108 (SequenceMachineLib.valuation (n + 1) 40)

end

end A033007.P16099946494335611130

/-! ## A033007.P11423811788619328563

`A017281(A043313(n+1))+A008683(A073102(n+1))`
-/

namespace A033007.P11423811788619328563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A043313 (n + 1)).toNat + A008683 (A073102 (n + 1)).toNat

end

end A033007.P11423811788619328563

/-! ## A033007.P17995310792087966038

`A017281(A043313(n+1))-A014963(A027379(n+6))`
-/

namespace A033007.P17995310792087966038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A043313 (n + 1)).toNat - A014963 (A027379 (n + 6)).toNat

end

end A033007.P17995310792087966038

/-!
# A033008: Every run of digits of n in base 10 has length 2.

The programs for A033008, there is no canonical definition to state claims against.
-/

/-! ## A033008.P16834136272358507673

`11*A043314(n+1)`
-/

namespace A033008.P16834136272358507673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A043314 (n + 1)

end

end A033008.P16834136272358507673

/-! ## A033008.P115213478187213864

`A321536(A043096(n+2))`
-/

namespace A033008.P115213478187213864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 (A043096 (n + 2)).toNat

end

end A033008.P115213478187213864

/-! ## A033008.P2712711694806449182

`A321536(record[A321801(n+1)])`
-/

namespace A033008.P2712711694806449182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033008.P2712711694806449182

/-! ## A033008.P8623329027726998353

`A321536(record[A321802(n+1)])`
-/

namespace A033008.P8623329027726998353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033008.P8623329027726998353

/-! ## A033008.P8871241051477144568

`A321536(eq[A057427(n), A196368(n)])`
-/

namespace A033008.P8871241051477144568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033008.P8871241051477144568

/-! ## A033008.P5525848935392497872

`A321536(lt[A000007(n), A196368(n)])`
-/

namespace A033008.P5525848935392497872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033008.P5525848935392497872

/-! ## A033008.P15413873912700251039

`A321536(lt[1, A321536(n*A196368(n))])`
-/

namespace A033008.P15413873912700251039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 ((n : ℤ) * A196368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A033008.P15413873912700251039

/-! ## A033008.P7962131865677140295

`A338754(A043096(n+1)+Δ[A043096(n+1)])`
-/

namespace A033008.P7962131865677140295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 (A043096 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A033008.P7962131865677140295

/-! ## A033008.P90364357838492567

`A008593(A043314(n+1))`
-/

namespace A033008.P90364357838492567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A043314 (n + 1)).toNat

end

end A033008.P90364357838492567

/-! ## A033008.P10248077481517963829

`∩[A033283(n+1), A338754(n)]`
-/

namespace A033008.P10248077481517963829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033008.P10248077481517963829

/-!
# A033009: Every run of digits of n in base 11 has length 2.

The programs for A033009, there is no canonical definition to state claims against.
-/

/-! ## A033009.P3658714848805440709

`12*A043315(n+1)`
-/

namespace A033009.P3658714848805440709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A043315 (n + 1)

end

end A033009.P3658714848805440709

/-! ## A033009.P7482201927556148785

`A008594(A043315(n+1))`
-/

namespace A033009.P7482201927556148785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A043315 (n + 1)).toNat

end

end A033009.P7482201927556148785

/-! ## A033009.P16343194569464623467

`A008458(A043315(n+1)+A043315(n+1))`
-/

namespace A033009.P16343194569464623467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A043315 (n + 1) + A043315 (n + 1)).toNat

end

end A033009.P16343194569464623467

/-! ## A033009.P5827938185215622714

`(n+1)^2^C(n, 10)*A001164(A299321(n+1))`
-/

namespace A033009.P5827938185215622714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 ^ Nat.choose n 10 : ℤ) * A001164 (A299321 (n + 1)).toNat

end

end A033009.P5827938185215622714

/-! ## A033009.P17776852596284381570

`(n+1)^2^C(n, 10)*A001164(A053381(2*(n+2)))`
-/

namespace A033009.P17776852596284381570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 ^ Nat.choose n 10 : ℤ) * A001164 (A053381 (2 * (n + 2))).toNat

end

end A033009.P17776852596284381570

/-!
# A033010: Numbers each of whose runs of digits in base 12 has length 2.

The programs for A033010, there is no canonical definition to state claims against.
-/

/-! ## A033010.P12097185703937489526

`13*A043316(n+1)`
-/

namespace A033010.P12097185703937489526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A043316 (n + 1)

end

end A033010.P12097185703937489526

/-! ## A033010.P7011267722784429590

`A008595(A043316(n+1))`
-/

namespace A033010.P7011267722784429590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A043316 (n + 1)).toNat

end

end A033010.P7011267722784429590

/-! ## A033010.P7625016816043597810

`A190991(A043316(Δ[n²]-n))-1`
-/

namespace A033010.P7625016816043597810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A043316 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A033010.P7625016816043597810

/-! ## A033010.P6051072817127821619

`record[A190991(A043316(floor(n/(n%2+2))+1))-1]`
-/

namespace A033010.P6051072817127821619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A043316 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033010.P6051072817127821619

/-! ## A033010.P16869982319026788800

`A044838(A044824(n+1)%A101696(2*n+5))`
-/

namespace A033010.P16869982319026788800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044838 (Int.tmod (A044824 (n + 1)) (A101696 (2 * n + 5))).toNat

end

end A033010.P16869982319026788800

/-!
# A033011: Every run of digits of n in base 13 has length 2.

The programs for A033011, there is no canonical definition to state claims against.
-/

/-! ## A033011.P3868128998906378126

`14*A043317(n+1)`
-/

namespace A033011.P3868128998906378126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A043317 (n + 1)

end

end A033011.P3868128998906378126

/-! ## A033011.P247592454640093297

`A008596(A043317(1+n))`
-/

namespace A033011.P247592454640093297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (A043317 (1 + n)).toNat

end

end A033011.P247592454640093297

/-! ## A033011.P2470278270967846708

`A008589(A043317(n+1)+A043317(n+1))`
-/

namespace A033011.P2470278270967846708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A043317 (n + 1) + A043317 (n + 1)).toNat

end

end A033011.P2470278270967846708

/-! ## A033011.P5809139404295544060

`A005843(A017005(A043317(n+1))-2)`
-/

namespace A033011.P5809139404295544060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A017005 (A043317 (n + 1)).toNat - 2).toNat

end

end A033011.P5809139404295544060

/-! ## A033011.P17890243062672749624

`A005843(A017041(A043317(n+1))-5)`
-/

namespace A033011.P17890243062672749624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A017041 (A043317 (n + 1)).toNat - 5).toNat

end

end A033011.P17890243062672749624

/-! ## A033011.P15526662109030427746

`A005843(A043317(n+1)+A008458(A043317(n+1)))`
-/

namespace A033011.P15526662109030427746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043317 (n + 1) + A008458 (A043317 (n + 1)).toNat).toNat

end

end A033011.P15526662109030427746

/-!
# A033012: Every run of digits of n in base 14 has length 2.

The programs for A033012, there is no canonical definition to state claims against.
-/

/-! ## A033012.P17756942576476049942

`15*A043318(n+1)`
-/

namespace A033012.P17756942576476049942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A043318 (n + 1)

end

end A033012.P17756942576476049942

/-! ## A033012.P8070183938328525221

`A008597(A043318(n+1))`
-/

namespace A033012.P8070183938328525221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A043318 (n + 1)).toNat

end

end A033012.P8070183938328525221

/-! ## A033012.P16051755105845635223

`15*A044915(A043319(n+1))%A340908(A126715(n))`
-/

namespace A033012.P16051755105845635223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * Int.tmod (A044915 (A043319 (n + 1)).toNat) (A340908 (A126715 n).toNat)

end

end A033012.P16051755105845635223

/-! ## A033012.P6167054405532454769

`A044840(A077168(n))`
-/

namespace A033012.P6167054405532454769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044840 (A077168 n).toNat

end

end A033012.P6167054405532454769

/-! ## A033012.P203823134790643443

`A044840(n+1)*A345992(2^n)`
-/

namespace A033012.P203823134790643443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044840 (n + 1) * A345992 (2 ^ n)

end

end A033012.P203823134790643443

/-!
# A033013: Every run of digits of n in base 15 has length 2.

The programs for A033013, there is no canonical definition to state claims against.
-/

/-! ## A033013.P2602568237019659240

`16*A043319(n+1)`
-/

namespace A033013.P2602568237019659240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A043319 (n + 1)

end

end A033013.P2602568237019659240

/-! ## A033013.P12955873966642856414

`A008598(A043319(n+1))`
-/

namespace A033013.P12955873966642856414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A043319 (n + 1)).toNat

end

end A033013.P12955873966642856414

/-! ## A033013.P16556847451040213821

`A022144(A043319(n+1)/sqrt(1/4))`
-/

namespace A033013.P16556847451040213821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.roundAway ((A043319 (n + 1) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))).toNat

end

end A033013.P16556847451040213821

/-! ## A033013.P17048153000351942198

`A044841(A044827(n+1)%A128157(3*n+1))`
-/

namespace A033013.P17048153000351942198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044841 (Int.tmod (A044827 (n + 1)) (A128157 (3 * n + 1))).toNat

end

end A033013.P17048153000351942198

/-! ## A033013.P8917855609825850290

`A185246(A304149(n+1))+A044841(A044827(n+1))`
-/

namespace A033013.P8917855609825850290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 (A304149 (n + 1)).toNat + A044841 (A044827 (n + 1)).toNat

end

end A033013.P8917855609825850290

/-!
# A033014: Every run of digits of n in base 16 has length 2.

The programs for A033014, there is no canonical definition to state claims against.
-/

/-! ## A033014.P7927561351984779074

`17*A043320(n+1)`
-/

namespace A033014.P7927561351984779074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A043320 (n + 1)

end

end A033014.P7927561351984779074

/-! ## A033014.P5026241232786524026

`A008599(A043320(n+1))`
-/

namespace A033014.P5026241232786524026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (A043320 (n + 1)).toNat

end

end A033014.P5026241232786524026

/-! ## A033014.P12312495531359216909

`A151978(A043320(n+1)+A043320(n+1)+1)`
-/

namespace A033014.P12312495531359216909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (A043320 (n + 1) + (A043320 (n + 1) + 1)).toNat

end

end A033014.P12312495531359216909

/-! ## A033014.P12907400311392820694

`lcm(A043320(n+1), A345735(A243834(n)))`
-/

namespace A033014.P12907400311392820694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043320 (n + 1)) (A345735 (A243834 n).toNat)

end

end A033014.P12907400311392820694

/-! ## A033014.P17304866114924885697

`record[A044842(n+1)/A043289(A094275(n+1))]`
-/

namespace A033014.P17304866114924885697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044842 (n + 1) : ℚ) / (A043289 (A094275 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033014.P17304866114924885697

/-!
# A033015: Numbers whose base-2 expansion has no run of digits with length < 2.

The programs for A033015, the canonical program `A033015.P17530871968754790428` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033015 has offset 1).

The definition of A033015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033015.P5378545410953934591

`∩[A144795(n+1), A342699(n+1)]`
-/

namespace A033015.P5378545410953934591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033015.P5378545410953934591

namespace A033015

/-- `∩[A144795(n+1), A342699(n+1)]` -/
def P5378545410953934591.Spec : Prop :=
  ∀ n, (P5378545410953934591.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P17530871968754790428

`filter[A048717(n+1), A152822(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A033015

/-- `filter[A048717(n+1), A152822(#)]` -/
def P17530871968754790428.Spec : Prop :=
  ∀ n, P17530871968754790428.a n = A033015 (n + 1)

theorem P17530871968754790428.correct : P17530871968754790428.Spec := by
  intro n
  simp only [A033015, Nat.add_sub_cancel]

end A033015

/-! ## A033015.P5741334509923172636

`∩[A175054(n+1), A048717(n)]`
-/

namespace A033015.P5741334509923172636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033015.P5741334509923172636

namespace A033015

/-- `∩[A175054(n+1), A048717(n)]` -/
def P5741334509923172636.Spec : Prop :=
  ∀ n, (P5741334509923172636.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P8240773569290471316

`∩[A144795(n+1), A175054(n+1)]`
-/

namespace A033015.P8240773569290471316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033015.P8240773569290471316

namespace A033015

/-- `∩[A144795(n+1), A175054(n+1)]` -/
def P8240773569290471316.Spec : Prop :=
  ∀ n, (P8240773569290471316.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P8608598444562870460

`∩[A077459(n+1), A175054(n+1)]`
-/

namespace A033015.P8608598444562870460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033015.P8608598444562870460

namespace A033015

/-- `∩[A077459(n+1), A175054(n+1)]` -/
def P8608598444562870460.Spec : Prop :=
  ∀ n, (P8608598444562870460.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P16745941636942568772

`A175046(A175055(n+1))`
-/

namespace A033015.P16745941636942568772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (A175055 (n + 1)).toNat

end

end A033015.P16745941636942568772

namespace A033015

/-- `A175046(A175055(n+1))` -/
def P16745941636942568772.Spec : Prop :=
  ∀ n, P16745941636942568772.a n = A033015 (n + 1)

end A033015

/-! ## A033015.P1187383647805782231

`record[A318925(n+3)]`
-/

namespace A033015.P1187383647805782231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033015.P1187383647805782231

namespace A033015

/-- `record[A318925(n+3)]` -/
def P1187383647805782231.Spec : Prop :=
  ∀ n, P1187383647805782231.a n = A033015 (n + 1)

end A033015

/-! ## A033015.P6564148443452922333

`lt[n, 2*A318925(n)]`
-/

namespace A033015.P6564148443452922333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033015.P6564148443452922333

namespace A033015

/-- `lt[n, 2*A318925(n)]` -/
def P6564148443452922333.Spec : Prop :=
  ∀ n, (P6564148443452922333.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P528139482090161580

`lt[n, A318925(n+1)]+1`
-/

namespace A033015.P528139482090161580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033015.P528139482090161580

namespace A033015

/-- `lt[n, A318925(n+1)]+1` -/
def P528139482090161580.Spec : Prop :=
  ∀ n, (P528139482090161580.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P11460939205806197177

`∩[A154708(n+1), A048717(n)]`
-/

namespace A033015.P11460939205806197177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033015.P11460939205806197177

namespace A033015

/-- `∩[A154708(n+1), A048717(n)]` -/
def P11460939205806197177.Spec : Prop :=
  ∀ n, (P11460939205806197177.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P7427872452211017167

`A014601(eq[A123108(n), A342697(n)])`
-/

namespace A033015.P7427872452211017167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033015.P7427872452211017167

namespace A033015

/-- `A014601(eq[A123108(n), A342697(n)])` -/
def P7427872452211017167.Spec : Prop :=
  ∀ n, P7427872452211017167.a n = A033015 (n + 1)

end A033015

/-! ## A033015.P5871854009270179109

`A318925(lt[n-A318925(n), A318925(n)])`
-/

namespace A033015.P5871854009270179109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A318925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033015.P5871854009270179109

namespace A033015

/-- `A318925(lt[n-A318925(n), A318925(n)])` -/
def P5871854009270179109.Spec : Prop :=
  ∀ n, P5871854009270179109.a n = A033015 (n + 1)

end A033015

/-! ## A033015.P9484052380371678071

`∩[A024352(n+1), A048717(n)]`
-/

namespace A033015.P9484052380371678071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033015.P9484052380371678071

namespace A033015

/-- `∩[A024352(n+1), A048717(n)]` -/
def P9484052380371678071.Spec : Prop :=
  ∀ n, (P9484052380371678071.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P15272071768595988901

`eq[A028310(n), A318925(n)]`
-/

namespace A033015.P15272071768595988901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033015.P15272071768595988901

namespace A033015

/-- `eq[A028310(n), A318925(n)]` -/
def P15272071768595988901.Spec : Prop :=
  ∀ n, (P15272071768595988901.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P13455951221226058789

`filter[A048717(n+1), A014577(#)]`
-/

namespace A033015.P13455951221226058789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A033015.P13455951221226058789

namespace A033015

/-- `filter[A048717(n+1), A014577(#)]` -/
def P13455951221226058789.Spec : Prop :=
  ∀ n, P13455951221226058789.a n = A033015 (n + 1)

end A033015

/-! ## A033015.P4169905695979393585

`filter[A048717(n+1), A379728(#)]`
-/

namespace A033015.P4169905695979393585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379728 (f1 j).toNat = 1) n)

end

end A033015.P4169905695979393585

namespace A033015

/-- `filter[A048717(n+1), A379728(#)]` -/
def P4169905695979393585.Spec : Prop :=
  ∀ n, P4169905695979393585.a n = A033015 (n + 1)

end A033015

/-! ## A033015.P8484600296136407011

`eq[A191598(n+1), A318925(n)]`
-/

namespace A033015.P8484600296136407011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033015.P8484600296136407011

namespace A033015

/-- `eq[A191598(n+1), A318925(n)]` -/
def P8484600296136407011.Spec : Prop :=
  ∀ n, (P8484600296136407011.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P16048970690506563473

`∩[A263737(n+1), A048717(n)]`
-/

namespace A033015.P16048970690506563473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033015.P16048970690506563473

namespace A033015

/-- `∩[A263737(n+1), A048717(n)]` -/
def P16048970690506563473.Spec : Prop :=
  ∀ n, (P16048970690506563473.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P4379613052256414986

`lt[A055998(n-A318925(n)), n]`
-/

namespace A033015.P4379613052256414986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 ((n : ℤ) - A318925 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033015.P4379613052256414986

namespace A033015

/-- `lt[A055998(n-A318925(n)), n]` -/
def P4379613052256414986.Spec : Prop :=
  ∀ n, (P4379613052256414986.a n : ℤ) = A033015 (n + 1)

end A033015

/-! ## A033015.P8694320826190713874

`lt[A056000(n-A318925(n)), n]`
-/

namespace A033015.P8694320826190713874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 ((n : ℤ) - A318925 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033015.P8694320826190713874

namespace A033015

/-- `lt[A056000(n-A318925(n)), n]` -/
def P8694320826190713874.Spec : Prop :=
  ∀ n, (P8694320826190713874.a n : ℤ) = A033015 (n + 1)

end A033015

/-!
# A033016: Numbers whose base-3 expansion has no run of digits with length < 2.

The programs for A033016, there is no canonical definition to state claims against.
-/

/-! ## A033016.P1512957750298293944

`lt[A321802(A343810(n)), 0]`
-/

namespace A033016.P1512957750298293944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A343810 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033016.P1512957750298293944

/-! ## A033016.P9028415836383553782

`eq[-1, A321802(A007089(n))]`
-/

namespace A033016.P9028415836383553782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A007089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033016.P9028415836383553782

/-!
# A033017: Numbers whose base-4 expansion has no run of digits with length < 2.

The programs for A033017, there is no canonical definition to state claims against.
-/

/-! ## A033017.P14902229273784160649

`record[A289813(A033022(n+1))]`
-/

namespace A033017.P14902229273784160649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A033022 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033017.P14902229273784160649

/-! ## A033017.P2246228565343182601

`eq[1, A321802(A007090(n))+2]`
-/

namespace A033017.P2246228565343182601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A007090 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033017.P2246228565343182601

/-! ## A033017.P12154729800763812538

`eq[1, A321802(A007284(n))+2]`
-/

namespace A033017.P12154729800763812538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A007284 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033017.P12154729800763812538

/-! ## A033017.P6016836608537942184

`eq[-1, A321802(A046030(n+1))]`
-/

namespace A033017.P6016836608537942184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A046030 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033017.P6016836608537942184

/-! ## A033017.P2783378408922419920

`eq[1, A321802(A001743(n+1))²]`
-/

namespace A033017.P2783378408922419920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A001743 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033017.P2783378408922419920

/-!
# A033018: Numbers whose base-5 expansion has no run of digits with length < 2.

The programs for A033018, there is no canonical definition to state claims against.
-/

/-! ## A033018.P5202272628086987486

`lt[A321802(A014263(n+1)), 0]`
-/

namespace A033018.P5202272628086987486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A014263 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033018.P5202272628086987486

/-! ## A033018.P14847297299554610439

`eq[1, A321802(A007091(n))+2]`
-/

namespace A033018.P14847297299554610439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A007091 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033018.P14847297299554610439

/-! ## A033018.P8363343077648422564

`lt[A255690(n), A321538(A007091(n))]`
-/

namespace A033018.P8363343077648422564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033018.P8363343077648422564

/-! ## A033018.P15863094052303740719

`lt[A007091(n), A321538(2*A007091(n))]`
-/

namespace A033018.P15863094052303740719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (2 * A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033018.P15863094052303740719

/-! ## A033018.P11981486590372017587

`lt[A014261(n+1), A321538(A014263(n+1))]`
-/

namespace A033018.P11981486590372017587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033018.P11981486590372017587

/-!
# A033019: Numbers whose base-6 expansion has no run of digits with length < 2.

The programs for A033019, there is no canonical definition to state claims against.
-/

/-! ## A033019.P3161446454269345885

`A265550(A028437(n+1))`
-/

namespace A033019.P3161446454269345885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265550 (A028437 (n + 1)).toNat

end

end A033019.P3161446454269345885

/-! ## A033019.P6916047485392715578

`A265550(A187395(n+1))`
-/

namespace A033019.P6916047485392715578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265550 (A187395 (n + 1)).toNat

end

end A033019.P6916047485392715578

/-! ## A033019.P11389965589356536708

`A048331(A045918(n)-4)`
-/

namespace A033019.P11389965589356536708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048331 (A045918 n - 4).toNat

end

end A033019.P11389965589356536708

/-! ## A033019.P4966876316838029068

`A048331(A047842(n)-4)`
-/

namespace A033019.P4966876316838029068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048331 (A047842 n - 4).toNat

end

end A033019.P4966876316838029068

/-! ## A033019.P17829227773529375046

`A048331(A244112(n)-4)`
-/

namespace A033019.P17829227773529375046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048331 (A244112 n - 4).toNat

end

end A033019.P17829227773529375046

/-!
# A033020: Numbers whose base-7 expansion has no run of digits with length < 2.

The programs for A033020, there is no canonical definition to state claims against.
-/

/-! ## A033020.P11613057943377028591

`∩[A089017(n+1), A048332(n)]`
-/

namespace A033020.P11613057943377028591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048332 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033020.P11613057943377028591

/-! ## A033020.P3803959286653284399

`∩[A048304(n), A188198(n+1)]`
-/

namespace A033020.P3803959286653284399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033020.P3803959286653284399

/-! ## A033020.P5390257774053525257

`∩[A188198(n+1), A048332(n)]`
-/

namespace A033020.P5390257774053525257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048332 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033020.P5390257774053525257

/-! ## A033020.P14706015962147289943

`∩[A029954(n+1), A188198(n+1)]`
-/

namespace A033020.P14706015962147289943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033020.P14706015962147289943

/-! ## A033020.P12905407530847818627

`∩[A032870(n+1), A188198(n+1)]`
-/

namespace A033020.P12905407530847818627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033020.P12905407530847818627

/-!
# A033021: Numbers whose base-8 expansion has no run of digits with length < 2.

The programs for A033021, there is no canonical definition to state claims against.
-/

/-! ## A033021.P7159612414793141690

`A048333(A077168(n)+7)`
-/

namespace A033021.P7159612414793141690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048333 (A077168 n + 7).toNat

end

end A033021.P7159612414793141690

/-! ## A033021.P17443005633092687667

`lt[A050771(A165090(n)), n]`
-/

namespace A033021.P17443005633092687667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050771 (A165090 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033021.P17443005633092687667

/-! ## A033021.P5927605116587119189

`lt[A326148(A165090(n)+1), A165090(n+3)]`
-/

namespace A033021.P5927605116587119189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326148 (A165090 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033021.P5927605116587119189

/-! ## A033021.P12485165419493670673

`eq[A000007(A049987(n+1)), A165090(n)]`
-/

namespace A033021.P12485165419493670673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049987 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033021.P12485165419493670673

/-! ## A033021.P3115398324050832815

`∩[A048333(n), A089017(n+1)]`
-/

namespace A033021.P3115398324050832815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033021.P3115398324050832815

/-!
# A033022: Numbers whose base-9 expansion has no run of digits with length < 2.

The programs for A033022, there is no canonical definition to state claims against.
-/

/-! ## A033022.P7551508006166968550

`eq[1, A321802(A052404(n+1))+2]`
-/

namespace A033022.P7551508006166968550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A052404 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033022.P7551508006166968550

/-! ## A033022.P1908901953998913356

`A048334(A187829(n+1)+8)`
-/

namespace A033022.P1908901953998913356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048334 (A187829 (n + 1) + 8).toNat

end

end A033022.P1908901953998913356

/-! ## A033022.P9425676921463588795

`A048334(n+9)%A241207(n+1)`
-/

namespace A033022.P9425676921463588795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048334 (n + 9)) (A241207 (n + 1))

end

end A033022.P9425676921463588795

/-! ## A033022.P4494106949116811412

`A048334(A020723(n)^A069292(n+1))`
-/

namespace A033022.P4494106949116811412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048334 (SequenceMachineLib.roundAway ((A020723 n : ℚ) ^ (A069292 (n + 1) : ℤ))).toNat

end

end A033022.P4494106949116811412

/-! ## A033022.P12936137594843976231

`A048334(A047842(n)-1)`
-/

namespace A033022.P12936137594843976231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048334 (A047842 n - 1).toNat

end

end A033022.P12936137594843976231

/-!
# A033023: Numbers whose base-10 expansion has no run of digits with length < 2.

The programs for A033023, there is no canonical definition to state claims against.
-/

/-! ## A033023.P9846298994390413109

`lt[A321802(n), 0]`
-/

namespace A033023.P9846298994390413109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033023.P9846298994390413109

/-! ## A033023.P3809294955254994284

`lt[n, 2*A321538(n)]`
-/

namespace A033023.P3809294955254994284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033023.P3809294955254994284

/-! ## A033023.P881607669850324544

`lt[n, A321538(n+1)]+1`
-/

namespace A033023.P881607669850324544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033023.P881607669850324544

/-! ## A033023.P8120813926375897004

`eq[A028310(n), A321538(n)]`
-/

namespace A033023.P8120813926375897004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033023.P8120813926375897004

/-! ## A033023.P16354327028757247742

`record[A321538(A109303(n+1))]`
-/

namespace A033023.P16354327028757247742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (A109303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033023.P16354327028757247742

/-! ## A033023.P2964285404017733158

`record[A321538(A115853(n+1))]`
-/

namespace A033023.P2964285404017733158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (A115853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033023.P2964285404017733158

/-! ## A033023.P7513676296717932782

`record[A321538(A171901(n+1))]`
-/

namespace A033023.P7513676296717932782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (A171901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033023.P7513676296717932782

/-! ## A033023.P8377977853155427734

`eq[A065033(A004273(n)), A321538(n)]`
-/

namespace A033023.P8377977853155427734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004273 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033023.P8377977853155427734

/-!
# A033024: Numbers whose base-11 expansion has no run of digits with length < 2.

The programs for A033024, there is no canonical definition to state claims against.
-/

/-! ## A033024.P12626482039466645827

`A296744(n+1)+A048841(A297274(n+1)%A297327(n+1))`
-/

namespace A033024.P12626482039466645827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296744 (n + 1) + A048841 (Int.tmod (A297274 (n + 1)) (A297327 (n + 1))).toNat

end

end A033024.P12626482039466645827

/-! ## A033024.P2771871694061978438

`A048335(A187829(n+1)+10)`
-/

namespace A033024.P2771871694061978438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048335 (A187829 (n + 1) + 10).toNat

end

end A033024.P2771871694061978438

/-! ## A033024.P12303806895007574777

`A136771(A044822(n+1))+1`
-/

namespace A033024.P12303806895007574777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136771 (A044822 (n + 1)).toNat + 1

end

end A033024.P12303806895007574777

/-! ## A033024.P13049841893591634228

`∩[A206552(n+1), A048335(n)]`
-/

namespace A033024.P13049841893591634228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033024.P13049841893591634228

/-!
# A033025: Numbers whose base-12 expansion has no run of digits with length < 2.

The programs for A033025, there is no canonical definition to state claims against.
-/

/-! ## A033025.P14741582395826346422

`A048336(A187829(n+1)+11)`
-/

namespace A033025.P14741582395826346422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 (A187829 (n + 1) + 11).toNat

end

end A033025.P14741582395826346422

/-! ## A033025.P11770346065120344231

`A048336(A077168(n)+11)`
-/

namespace A033025.P11770346065120344231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 (A077168 n + 11).toNat

end

end A033025.P11770346065120344231

/-!
# A033026: Numbers whose base-13 expansion has no run of digits with length < 2.

The programs for A033026, there is no canonical definition to state claims against.
-/

/-! ## A033026.P13800992725100896909

`A048337(n+13)%A112625(n+2)`
-/

namespace A033026.P13800992725100896909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048337 (n + 13)) (A112625 (n + 2))

end

end A033026.P13800992725100896909

/-! ## A033026.P4641492201637534457

`A048337(n+13)^A007318(A088925(n))`
-/

namespace A033026.P4641492201637534457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048337 (n + 13) : ℚ) ^ (A007318 (A088925 n).toNat : ℤ)

end

end A033026.P4641492201637534457

/-! ## A033026.P6221456456486885532

`A048337(n+13)+A000007(A073682(n+1))`
-/

namespace A033026.P6221456456486885532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048337 (n + 13) + A000007 (A073682 (n + 1)).toNat

end

end A033026.P6221456456486885532

/-! ## A033026.P15250837869448201286

`lcm(A040630(A060854(n+1)), A048337(n+13))`
-/

namespace A033026.P15250837869448201286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040630 (A060854 (n + 1)).toNat) (A048337 (n + 13))

end

end A033026.P15250837869448201286

/-!
# A033027: Numbers whose base-14 expansion has no run of digits with length < 2.

The programs for A033027, there is no canonical definition to state claims against.
-/

/-! ## A033027.P289630489603624886

`A048338(n+14)+A000038(A000930(n))`
-/

namespace A033027.P289630489603624886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048338 (n + 14) + A000038 (A000930 n).toNat

end

end A033027.P289630489603624886

/-! ## A033027.P276388021908975467

`A048338(n+14)+A010051(A017606(n))`
-/

namespace A033027.P276388021908975467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048338 (n + 14) + A010051 (A017606 n).toNat

end

end A033027.P276388021908975467

/-! ## A033027.P4598094105615203177

`A048338(n+14)+A000007(A065077(n))`
-/

namespace A033027.P4598094105615203177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048338 (n + 14) + A000007 (A065077 n).toNat

end

end A033027.P4598094105615203177

/-! ## A033027.P5672820063815562899

`A011776(A036570(n+1))*A048338(n+14)`
-/

namespace A033027.P5672820063815562899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A036570 (n + 1)).toNat * A048338 (n + 14)

end

end A033027.P5672820063815562899

/-! ## A033027.P10159460329882041790

`A048338(n+14)+A037904(A010785(n+11))`
-/

namespace A033027.P10159460329882041790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048338 (n + 14) + A037904 (A010785 (n + 11)).toNat

end

end A033027.P10159460329882041790

/-!
# A033028: Numbers whose base-15 expansion has no run of digits with length < 2.

The programs for A033028, there is no canonical definition to state claims against.
-/

/-! ## A033028.P9668093003270687003

`lt[A043567(n), atan(A173894(n))]`
-/

namespace A033028.P9668093003270687003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A173894 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A033028.P9668093003270687003

/-! ## A033028.P16903517496860584240

`record[A217558(A204591(n))]`
-/

namespace A033028.P16903517496860584240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A204591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033028.P16903517496860584240

/-! ## A033028.P9350532120309139807

`A354535(A206399(n+1))`
-/

namespace A033028.P9350532120309139807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354535 (A206399 (n + 1)).toNat

end

end A033028.P9350532120309139807

/-! ## A033028.P6083868637068567755

`record[A217558(A048311(n)+1)]`
-/

namespace A033028.P6083868637068567755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A048311 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033028.P6083868637068567755

/-!
# A033029: Numbers whose base-16 expansion has no run of digits with length < 2.

The programs for A033029, there is no canonical definition to state claims against.
-/

/-! ## A033029.P2886607155403031177

`A048313(A048340(n+1)%A223157(n+1)+15)`
-/

namespace A033029.P2886607155403031177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048313 (Int.tmod (A048340 (n + 1)) (A223157 (n + 1)) + 15).toNat

end

end A033029.P2886607155403031177

/-! ## A033029.P13286298986702305310

`A048340(A351374(n+2)+14)`
-/

namespace A033029.P13286298986702305310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 (A351374 (n + 2) + 14).toNat

end

end A033029.P13286298986702305310

/-! ## A033029.P5350132925735091393

`A048340(A000005(2^n)+15)`
-/

namespace A033029.P5350132925735091393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 (A000005 (2 ^ n) + 15).toNat

end

end A033029.P5350132925735091393

/-! ## A033029.P14827420234053594203

`record[A291581(n+1)]+16*(n+1)`
-/

namespace A033029.P14827420234053594203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (16 * (n + 1) : ℤ)

end

end A033029.P14827420234053594203

/-!
# A033030: Derangement numbers d(n,3) where d(n,k) = k(n-1)(d(n-1,k) + d(n-2,k)), with d(0,k) = 1 and d(1,k) = 0.

The programs for A033030, the canonical program `A033030.P8659351245456144731` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033030 has offset 0).

The definition of A033030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033030.P8659351245456144731

`3*(n-1)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033030

/-- `3*(n-1)*(a(n-1)+a(n-2))` -/
def P8659351245456144731.Spec : Prop :=
  ∀ n, P8659351245456144731.a n = A033030 n

theorem P8659351245456144731.correct : P8659351245456144731.Spec := by
  intro n
  simp only [A033030]

end A033030

/-! ## A033030.P12256671001543995593

`3*(a(n-1)-floor(-a(n-2)))*(n-1)` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A033030.P12256671001543995593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * ((a (n - 1) - (-a (n - 2))) * ((n : ℤ) - 1))

end

end A033030.P12256671001543995593

namespace A033030

/-- `3*(a(n-1)-floor(-a(n-2)))*(n-1)` -/
def P12256671001543995593.Spec : Prop :=
  ∀ n, P12256671001543995593.a n = A033030 n

end A033030

/-! ## A033030.P10979746018512794397

`3*(a(n-1)-round(-a(n-2)))*(n-1)` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A033030.P10979746018512794397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * ((a (n - 1) - (-a (n - 2))) * ((n : ℤ) - 1))

end

end A033030.P10979746018512794397

namespace A033030

/-- `3*(a(n-1)-round(-a(n-2)))*(n-1)` -/
def P10979746018512794397.Spec : Prop :=
  ∀ n, P10979746018512794397.a n = A033030 n

end A033030

/-! ## A033030.P7788532768922525630

`3*(a(n-1)-(char[1]-a(n-2)))*(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A033030.P7788532768922525630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * ((a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))) * ((n : ℤ) - 1))

end

end A033030.P7788532768922525630

namespace A033030

/-- `3*(a(n-1)-(char[1]-a(n-2)))*(n-1)` -/
def P7788532768922525630.Spec : Prop :=
  ∀ n, P7788532768922525630.a n = A033030 n

end A033030

/-! ## A033030.P1231909346381881067

`3*(1-floor(1-a(n-1)-a(n-2)))*(n-1)` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A033030.P1231909346381881067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * ((1 - (1 - a (n - 1) - a (n - 2))) * ((n : ℤ) - 1))

end

end A033030.P1231909346381881067

namespace A033030

/-- `3*(1-floor(1-a(n-1)-a(n-2)))*(n-1)` -/
def P1231909346381881067.Spec : Prop :=
  ∀ n, P1231909346381881067.a n = A033030 n

end A033030

/-! ## A033030.P17062752637265352454

`A372921(∑[n])`
-/

namespace A033030.P17062752637265352454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033030.P17062752637265352454

namespace A033030

/-- `A372921(∑[n])` -/
def P17062752637265352454.Spec : Prop :=
  ∀ n, P17062752637265352454.a n = A033030 n

end A033030

/-!
# A033031: Squarefree kernels of 3-smooth numbers.

The programs for A033031, there is no canonical definition to state claims against.
-/

/-! ## A033031.P2808311802774165410

`A007947(A003586(n+1))`
-/

namespace A033031.P2808311802774165410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003586 (n + 1)).toNat

end

end A033031.P2808311802774165410

/-! ## A033031.P14518480594219928149

`gcd(6, Δ[A259823(n)])`
-/

namespace A033031.P14518480594219928149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (f1 (n + 1) - f1 n)

end

end A033031.P14518480594219928149

/-! ## A033031.P67958184977955725

`gcd(42, A065119(n+1)/3)`
-/

namespace A033031.P67958184977955725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 42 (SequenceMachineLib.roundAway ((A065119 (n + 1) : ℚ) / 3))

end

end A033031.P67958184977955725

/-! ## A033031.P228705166798702950

`gcd(A002445(n), A003586(n+1))`
-/

namespace A033031.P228705166798702950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 n) (A003586 (n + 1))

end

end A033031.P228705166798702950

/-! ## A033031.P5574544643756717474

`lcm(A086410(n+1), A086411(n+1))`
-/

namespace A033031.P5574544643756717474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A086410 (n + 1)) (A086411 (n + 1))

end

end A033031.P5574544643756717474

/-! ## A033031.P10075664250811502440

`A000792(gcd(n, n+1)*A086418(n+1))`
-/

namespace A033031.P10075664250811502440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 ((Nat.gcd n (n + 1) : ℤ) * A086418 (n + 1)).toNat

end

end A033031.P10075664250811502440

/-! ## A033031.P8451338254304523001

`A003586((A086418(n+1)+n)%(n+1)+1)`
-/

namespace A033031.P8451338254304523001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (Int.tmod (A086418 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A033031.P8451338254304523001

/-! ## A033031.P783250430845270629

`gcd(A025620(n+1), A040006(n))`
-/

namespace A033031.P783250430845270629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025620 (n + 1)) (A040006 n)

end

end A033031.P783250430845270629

/-! ## A033031.P6700377847941318931

`gcd(A025620(n+1)², A006954(n))`
-/

namespace A033031.P6700377847941318931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025620 (n + 1) ^ 2) (A006954 n)

end

end A033031.P6700377847941318931

/-! ## A033031.P14036626081159390620

`filter[A086297(n+1), A065333(#)]`
-/

namespace A033031.P14036626081159390620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A033031.P14036626081159390620

/-! ## A033031.P10946642125661590028

`filter[A086297(n+1), A391183(#)]`
-/

namespace A033031.P10946642125661590028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A033031.P10946642125661590028

/-! ## A033031.P10313266866449347060

`∏{p}[∑[A061987(n)], #]`
-/

namespace A033031.P10313266866449347060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A033031.P10313266866449347060

/-! ## A033031.P18025700123180455428

`∏{p}[A007694(n+2)/2, #]`
-/

namespace A033031.P18025700123180455428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 2) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A033031.P18025700123180455428

/-! ## A033031.P18125402984805324890

`A000045(∑{p}[A003586(n+1), #])+1`
-/

namespace A033031.P18125402984805324890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) + 1

end

end A033031.P18125402984805324890

/-! ## A033031.P10228768016859803510

`A276086(∑{p}[A003586(n+1), #-1])`
-/

namespace A033031.P10228768016859803510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)).toNat

end

end A033031.P10228768016859803510

/-! ## A033031.P2233341393993800252

`A007318(∑{p}[A003586(n+1), 2^#])`
-/

namespace A033031.P2233341393993800252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ p)

end

end A033031.P2233341393993800252

/-! ## A033031.P14976859668802877872

`A006047(∑{p}[A003586(n+1), A006047(#)])`
-/

namespace A033031.P14976859668802877872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006047 p).toNat

end

end A033031.P14976859668802877872

/-! ## A033031.P16962646410976540679

`A007947(A007694(n+2)/2)`
-/

namespace A033031.P16962646410976540679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat

end

end A033031.P16962646410976540679

/-!
# A033032: Numbers all of whose base 6 digits are odd.

The programs for A033032, there is no canonical definition to state claims against.
-/

/-! ## A033032.P8279810348834934717

`∩[A039578(n+1), A248910(n+1)]`
-/

namespace A033032.P8279810348834934717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033032.P8279810348834934717

/-! ## A033032.P7697224869309173590

`record[n^A088705(A309957(n))]`
-/

namespace A033032.P7697224869309173590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A088705 (A309957 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033032.P7697224869309173590

/-! ## A033032.P3194765215055303357

`eq[1, A124625(A309957(n)+1)]`
-/

namespace A033032.P3194765215055303357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A309957 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033032.P3194765215055303357

/-! ## A033032.P2484059507219622009

`eq[1, A040363(2*A309957(n))]`
-/

namespace A033032.P2484059507219622009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040363 (2 * A309957 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033032.P2484059507219622009

/-! ## A033032.P17672971327212730753

`record[A000007(n)+n*A000035(A309957(n))]`
-/

namespace A033032.P17672971327212730753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A000035 (A309957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033032.P17672971327212730753

/-! ## A033032.P7386451580673833373

`record[A056594(n)+n*A000035(A309957(n))]`
-/

namespace A033032.P7386451580673833373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (n : ℤ) * A000035 (A309957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033032.P7386451580673833373

/-! ## A033032.P493924861673075111

`record[(n*A000035(A309957(n)))^A255327(n)]`
-/

namespace A033032.P493924861673075111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000035 (A309957 n).toNat : ℚ) ^ (A255327 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033032.P493924861673075111

/-! ## A033032.P7088754949691160189

`A303789(A033033(n+1))`
-/

namespace A033032.P7088754949691160189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A033033 (n + 1)).toNat

end

end A033032.P7088754949691160189

/-!
# A033033: Numbers all of whose base 7 digits are odd.

The programs for A033033, the canonical program `A033033.P13490663608013405416` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033033 has offset 1).

The definition of A033033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033033.P836644475475747846

`A020658(A033032(n+1))`
-/

namespace A033033.P836644475475747846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A033032 (n + 1)).toNat

end

end A033033.P836644475475747846

namespace A033033

/-- `A020658(A033032(n+1))` -/
def P836644475475747846.Spec : Prop :=
  ∀ n, P836644475475747846.a n = A033033 (n + 1)

end A033033

/-! ## A033033.P15960371479587797525

`A020657(A033032(n+1)+1)`
-/

namespace A033033.P15960371479587797525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A033032 (n + 1) + 1).toNat

end

end A033033.P15960371479587797525

namespace A033033

/-- `A020657(A033032(n+1)+1)` -/
def P15960371479587797525.Spec : Prop :=
  ∀ n, P15960371479587797525.a n = A033033 (n + 1)

end A033033

/-! ## A033033.P13490663608013405416

`record[(n+1)*and(1, A309958(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A033033

/-- `record[(n+1)*and(1, A309958(n+1))]` -/
def P13490663608013405416.Spec : Prop :=
  ∀ n, P13490663608013405416.a n = A033033 (n + 1)

theorem P13490663608013405416.correct : P13490663608013405416.Spec := by
  intro n
  simp only [A033033, Nat.add_sub_cancel]

end A033033

/-! ## A033033.P3438348780136315016

`eq[2, A328579(A309958(n))]`
-/

namespace A033033.P3438348780136315016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A309958 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033033.P3438348780136315016

namespace A033033

/-- `eq[2, A328579(A309958(n))]` -/
def P3438348780136315016.Spec : Prop :=
  ∀ n, (P3438348780136315016.a n : ℤ) = A033033 (n + 1)

end A033033

/-! ## A033033.P2385843786294389997

`eq[2, A020639(A309958(n)+1)]`
-/

namespace A033033.P2385843786294389997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A309958 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033033.P2385843786294389997

namespace A033033

/-- `eq[2, A020639(A309958(n)+1)]` -/
def P2385843786294389997.Spec : Prop :=
  ∀ n, (P2385843786294389997.a n : ℤ) = A033033 (n + 1)

end A033033

/-! ## A033033.P6620213386936636631

`eq[0, A196563(A007093(n))]`
-/

namespace A033033.P6620213386936636631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033033.P6620213386936636631

namespace A033033

/-- `eq[0, A196563(A007093(n))]` -/
def P6620213386936636631.Spec : Prop :=
  ∀ n, (P6620213386936636631.a n : ℤ) = A033033 (n + 1)

end A033033

/-!
# A033034: Numbers all of whose base 8 digits are odd.

The programs for A033034, the canonical program `A033034.P13313601177705697998` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033034 has offset 1).

The definition of A033034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033034.P13313601177705697998

`eq[1, gcd(2, A309959(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033034

/-- `eq[1, gcd(2, A309959(n))]` -/
def P13313601177705697998.Spec : Prop :=
  ∀ n, (P13313601177705697998.a n : ℤ) = A033034 (n + 1)

theorem P13313601177705697998.correct : P13313601177705697998.Spec := by
  intro n
  simp only [A033034, Nat.add_sub_cancel]

end A033034

/-! ## A033034.P195875987962924479

`eq[1, A000035(A309959(n))]`
-/

namespace A033034.P195875987962924479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A309959 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033034.P195875987962924479

namespace A033034

/-- `eq[1, A000035(A309959(n))]` -/
def P195875987962924479.Spec : Prop :=
  ∀ n, (P195875987962924479.a n : ℤ) = A033034 (n + 1)

end A033034

/-! ## A033034.P16317272308968045594

`eq[1, A001511(A309959(n)+2)]`
-/

namespace A033034.P16317272308968045594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A309959 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033034.P16317272308968045594

namespace A033034

/-- `eq[1, A001511(A309959(n)+2)]` -/
def P16317272308968045594.Spec : Prop :=
  ∀ n, (P16317272308968045594.a n : ℤ) = A033034 (n + 1)

end A033034

/-! ## A033034.P415762124441835425

`eq[2, A020639(A309959(n)+1)]`
-/

namespace A033034.P415762124441835425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A309959 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033034.P415762124441835425

namespace A033034

/-- `eq[2, A020639(A309959(n)+1)]` -/
def P415762124441835425.Spec : Prop :=
  ∀ n, (P415762124441835425.a n : ℤ) = A033034 (n + 1)

end A033034

/-! ## A033034.P4480750071925723561

`eq[1, A135521(A309959(n)+3)]`
-/

namespace A033034.P4480750071925723561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135521 (A309959 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033034.P4480750071925723561

namespace A033034

/-- `eq[1, A135521(A309959(n)+3)]` -/
def P4480750071925723561.Spec : Prop :=
  ∀ n, (P4480750071925723561.a n : ℤ) = A033034 (n + 1)

end A033034

/-! ## A033034.P10761395507484460616

`eq[A007814(n+2), A007814(A309959(n)+1+n)]`
-/

namespace A033034.P10761395507484460616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A309959 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033034.P10761395507484460616

namespace A033034

/-- `eq[A007814(n+2), A007814(A309959(n)+1+n)]` -/
def P10761395507484460616.Spec : Prop :=
  ∀ n, (P10761395507484460616.a n : ℤ) = A033034 (n + 1)

end A033034

/-!
# A033035: Numbers such that all base 9 digits are odd.

The programs for A033035, the canonical program `A033035.P7501407559641855011` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033035 has offset 1).

The definition of A033035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033035.P7501407559641855011

`A037477(A033034(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033035

/-- `A037477(A033034(n+1))` -/
def P7501407559641855011.Spec : Prop :=
  ∀ n, P7501407559641855011.a n = A033035 (n + 1)

theorem P7501407559641855011.correct : P7501407559641855011.Spec := by
  intro n
  simp only [A033035, Nat.add_sub_cancel]

end A033035

/-! ## A033035.P847760620084072833

`eq[1, A000035(A309788(n))]`
-/

namespace A033035.P847760620084072833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A309788 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033035.P847760620084072833

namespace A033035

/-- `eq[1, A000035(A309788(n))]` -/
def P847760620084072833.Spec : Prop :=
  ∀ n, (P847760620084072833.a n : ℤ) = A033035 (n + 1)

end A033035

/-! ## A033035.P14756624207221045397

`eq[1, A135560(A309788(n)+2)]`
-/

namespace A033035.P14756624207221045397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A309788 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033035.P14756624207221045397

namespace A033035

/-- `eq[1, A135560(A309788(n)+2)]` -/
def P14756624207221045397.Spec : Prop :=
  ∀ n, (P14756624207221045397.a n : ℤ) = A033035 (n + 1)

end A033035

/-! ## A033035.P16326040119648155749

`eq[A000265(A338882(n)), A309788(n)]`
-/

namespace A033035.P16326040119648155749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A338882 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033035.P16326040119648155749

namespace A033035

/-- `eq[A000265(A338882(n)), A309788(n)]` -/
def P16326040119648155749.Spec : Prop :=
  ∀ n, (P16326040119648155749.a n : ℤ) = A033035 (n + 1)

end A033035

/-! ## A033035.P7901750533666269600

`eq[0, A045843(A007095(n))]`
-/

namespace A033035.P7901750533666269600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033035.P7901750533666269600

namespace A033035

/-- `eq[0, A045843(A007095(n))]` -/
def P7901750533666269600.Spec : Prop :=
  ∀ n, (P7901750533666269600.a n : ℤ) = A033035 (n + 1)

end A033035

/-! ## A033035.P1748984829637817424

`eq[A052383(n+1), A329249(A256289(n))]`
-/

namespace A033035.P1748984829637817424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329249 (A256289 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033035.P1748984829637817424

namespace A033035

/-- `eq[A052383(n+1), A329249(A256289(n))]` -/
def P1748984829637817424.Spec : Prop :=
  ∀ n, (P1748984829637817424.a n : ℤ) = A033035 (n + 1)

end A033035

/-!
# A033036: Numbers all of whose base 11 digits are odd.

The programs for A033036, there is no canonical definition to state claims against.
-/

/-! ## A033036.P13897586039231086228

`A171397(A014261(n+1))`
-/

namespace A033036.P13897586039231086228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A014261 (n + 1)).toNat

end

end A033036.P13897586039231086228

/-! ## A033036.P15241021605603624583

`A171397(eq[0, A045843(n)])`
-/

namespace A033036.P15241021605603624583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033036.P15241021605603624583

/-! ## A033036.P11896506437621659882

`A171397(record[A225985(n+1)])`
-/

namespace A033036.P11896506437621659882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033036.P11896506437621659882

/-! ## A033036.P404022724868751084

`A171397(record[A327539(n+1)])`
-/

namespace A033036.P404022724868751084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033036.P404022724868751084

/-! ## A033036.P3337801788520228752

`A171397(record[gcd(n, A045843(n))])`
-/

namespace A033036.P3337801788520228752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A045843 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A033036.P3337801788520228752

/-! ## A033036.P2876645592725473351

`A171397(record[A059717(2*n+1)])`
-/

namespace A033036.P2876645592725473351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033036.P2876645592725473351

/-! ## A033036.P4512429000522543852

`A171397(eq[A055642(n), A196564(n)])`
-/

namespace A033036.P4512429000522543852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033036.P4512429000522543852

/-!
# A033037: Numbers all of whose base 12 digits are odd.

The programs for A033037, there is no canonical definition to state claims against.
-/

/-! ## A033037.P7194809492511512598

`eq[1, A062756(gcd(2^(n+1), A132264(n+1)))]+1`
-/

namespace A033037.P7194809492511512598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.gcd (2 ^ (n + 1) : ℤ) (A132264 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033037.P7194809492511512598

/-! ## A033037.P8983497164036371601

`lt[A239241(A081753(n)), A000035(n)]`
-/

namespace A033037.P8983497164036371601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 (A081753 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033037.P8983497164036371601

/-! ## A033037.P6715403181252680401

`eq[n%2, A154958(A064459(n))]`
-/

namespace A033037.P6715403181252680401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A064459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033037.P6715403181252680401

/-! ## A033037.P5848920493669916233

`eq[A000035(n), A154958(A064459(n))]`
-/

namespace A033037.P5848920493669916233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A064459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033037.P5848920493669916233

/-! ## A033037.P4167552697454371349

`eq[A010215(n), A145893(A064459(n))]`
-/

namespace A033037.P4167552697454371349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A064459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033037.P4167552697454371349

/-!
# A033038: Numbers all of whose base 13 digits are odd.

The programs for A033038, there is no canonical definition to state claims against.
-/

/-! ## A033038.P8995159380168698726

`eq[n%2, A280141(A090620(n))]`
-/

namespace A033038.P8995159380168698726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280141 (A090620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033038.P8995159380168698726

/-! ## A033038.P17546248795704150517

`eq[A000035(n), A008821(A090620(n))]`
-/

namespace A033038.P17546248795704150517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 (A090620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033038.P17546248795704150517

/-! ## A033038.P1857842362884996719

`A252474(A033037(n+1))`
-/

namespace A033038.P1857842362884996719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A033037 (n + 1)).toNat

end

end A033038.P1857842362884996719

/-! ## A033038.P1043723593568850955

`eq[A059841(n), A103361(A103380(n+1))]`
-/

namespace A033038.P1043723593568850955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103361 (A103380 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033038.P1043723593568850955

/-!
# A033039: Numbers all of whose base 14 digits are odd.

The programs for A033039, there is no canonical definition to state claims against.
-/

/-! ## A033039.P14577270292614852616

`eq[0, A135157(A194511(n+2))]`
-/

namespace A033039.P14577270292614852616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135157 (A194511 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033039.P14577270292614852616

/-! ## A033039.P9340838142801148292

`eq[A073937(A194511(n+2)), A108775(3*n+4)]`
-/

namespace A033039.P9340838142801148292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073937 (A194511 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033039.P9340838142801148292

/-! ## A033039.P3417283272023440407

`lt[n/(n%2+1/2), (lcm(2, n+2)-2)%57]`
-/

namespace A033039.P3417283272023440407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.lcm 2 (n + 2) : ℤ) - 2) 57

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A033039.P3417283272023440407

/-! ## A033039.P13813758921612745214

`∑[A316782(A313436(n)²)]`
-/

namespace A033039.P13813758921612745214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316782 (A313436 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033039.P13813758921612745214

/-! ## A033039.P15229608766111515592

`lt[A045843(A012265(3*n)), 1]`
-/

namespace A033039.P15229608766111515592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (A012265 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033039.P15229608766111515592

/-!
# A033040: Numbers all of whose base 15 digits are odd.

The programs for A033040, there is no canonical definition to state claims against.
-/

/-! ## A033040.P17421323866746530383

`∩[A179892(n+1), A184591(n+1)]`
-/

namespace A033040.P17421323866746530383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033040.P17421323866746530383

/-! ## A033040.P14265992486309037065

`eq[A010673(A297289(n+1)), A151878(2*n+1)]`
-/

namespace A033040.P14265992486309037065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A297289 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033040.P14265992486309037065

/-! ## A033040.P16108200647810402333

`lt[A044827(n+1), xor(1, A043719(n+1))]`
-/

namespace A033040.P16108200647810402333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A043719 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033040.P16108200647810402333

/-! ## A033040.P6051440218505429516

`A060695(A187829(n+1))+A037474(n)`
-/

namespace A033040.P6051440218505429516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060695 (A187829 (n + 1)).toNat + A037474 n

end

end A033040.P6051440218505429516

/-!
# A033041: Numbers all of whose base 16 digits are odd.

The programs for A033041, the canonical program `A033041.P16799287757763172916` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033041 has offset 1).

The definition of A033041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033041.P16799287757763172916

`record[or(n+1, A341691(A341691(n)))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033041

/-- `record[or(n+1, A341691(A341691(n)))]` -/
def P16799287757763172916.Spec : Prop :=
  ∀ n, P16799287757763172916.a n = A033041 (n + 1)

theorem P16799287757763172916.correct : P16799287757763172916.Spec := by
  intro n
  simp only [A033041, Nat.add_sub_cancel]

end A033041

/-! ## A033041.P11964035761995450455

`2*lt[A136400(n), A225665(n)]+1`
-/

namespace A033041.P11964035761995450455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033041.P11964035761995450455

namespace A033041

/-- `2*lt[A136400(n), A225665(n)]+1` -/
def P11964035761995450455.Spec : Prop :=
  ∀ n, (P11964035761995450455.a n : ℤ) = A033041 (n + 1)

end A033041

/-! ## A033041.P6518994379459527176

`A005408(lt[A136400(n), A225665(n)])`
-/

namespace A033041.P6518994379459527176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033041.P6518994379459527176

namespace A033041

/-- `A005408(lt[A136400(n), A225665(n)])` -/
def P6518994379459527176.Spec : Prop :=
  ∀ n, P6518994379459527176.a n = A033041 (n + 1)

end A033041

/-! ## A033041.P10575581391709102282

`A005843(lt[A136400(n), A225665(n)])+1`
-/

namespace A033041.P10575581391709102282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 1

end

end A033041.P10575581391709102282

namespace A033041

/-- `A005843(lt[A136400(n), A225665(n)])+1` -/
def P10575581391709102282.Spec : Prop :=
  ∀ n, P10575581391709102282.a n = A033041 (n + 1)

end A033041

/-! ## A033041.P11751677859107684730

`eq[A000034(3*n+1), A032220(A054900(n))]`
-/

namespace A033041.P11751677859107684730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032220 (A054900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033041.P11751677859107684730

namespace A033041

/-- `eq[A000034(3*n+1), A032220(A054900(n))]` -/
def P11751677859107684730.Spec : Prop :=
  ∀ n, (P11751677859107684730.a n : ℤ) = A033041 (n + 1)

end A033041

/-!
# A033042: Sums of distinct powers of 5.

The programs for A033042, the canonical program `A033042.P13736658482566093996` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033042 has offset 0).

The definition of A033042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033042.P13736658482566093996

`A097251(n)/4`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033042

/-- `A097251(n)/4` -/
def P13736658482566093996.Spec : Prop :=
  ∀ n, P13736658482566093996.a n = (A033042 n : ℚ)

end A033042

/-! ## A033042.P14396777574743964113

`record[n%2*A318265(n+1)]`
-/

namespace A033042.P14396777574743964113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A318265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033042.P14396777574743964113

namespace A033042

/-- `record[n%2*A318265(n+1)]` -/
def P14396777574743964113.Spec : Prop :=
  ∀ n, P14396777574743964113.a n = A033042 n

end A033042

/-! ## A033042.P16448928076832317444

`A037453(A003278(n+1))-1`
-/

namespace A033042.P16448928076832317444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A003278 (n + 1)).toNat - 1

end

end A033042.P16448928076832317444

namespace A033042

/-- `A037453(A003278(n+1))-1` -/
def P16448928076832317444.Spec : Prop :=
  ∀ n, P16448928076832317444.a n = A033042 n

end A033042

/-! ## A033042.P13737887698318208287

`A037453(A005836(n+1)+1)-1`
-/

namespace A033042.P13737887698318208287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A005836 (n + 1) + 1).toNat - 1

end

end A033042.P13737887698318208287

namespace A033042

/-- `A037453(A005836(n+1)+1)-1` -/
def P13737887698318208287.Spec : Prop :=
  ∀ n, P13737887698318208287.a n = A033042 n

end A033042

/-! ## A033042.P7166835940209332950

`record[A318265(n+1)%A084849(n)]`
-/

namespace A033042.P7166835940209332950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318265 (n + 1)) (A084849 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033042.P7166835940209332950

namespace A033042

/-- `record[A318265(n+1)%A084849(n)]` -/
def P7166835940209332950.Spec : Prop :=
  ∀ n, P7166835940209332950.a n = A033042 n

end A033042

/-! ## A033042.P14275874304457045644

`record[A070750(n+1)²*A318265(n+1)]`
-/

namespace A033042.P14275874304457045644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) ^ 2 * A318265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033042.P14275874304457045644

namespace A033042

/-- `record[A070750(n+1)²*A318265(n+1)]` -/
def P14275874304457045644.Spec : Prop :=
  ∀ n, P14275874304457045644.a n = A033042 n

end A033042

/-! ## A033042.P6884678733344061436

`∩[A039572(n+1), A050607(n+1)]`
-/

namespace A033042.P6884678733344061436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033042.P6884678733344061436

namespace A033042

/-- `∩[A039572(n+1), A050607(n+1)]` -/
def P6884678733344061436.Spec : Prop :=
  ∀ n, (P6884678733344061436.a n : ℤ) = A033042 n

end A033042

/-! ## A033042.P16285936962059389419

`A020654(A098871(n))`
-/

namespace A033042.P16285936962059389419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A098871 n).toNat

end

end A033042.P16285936962059389419

namespace A033042

/-- `A020654(A098871(n))` -/
def P16285936962059389419.Spec : Prop :=
  ∀ n, P16285936962059389419.a n = A033042 n

end A033042

/-! ## A033042.P8896322723364037026

`A020654(A000695(n)+1)`
-/

namespace A033042.P8896322723364037026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A000695 n + 1).toNat

end

end A033042.P8896322723364037026

namespace A033042

/-- `A020654(A000695(n)+1)` -/
def P8896322723364037026.Spec : Prop :=
  ∀ n, P8896322723364037026.a n = A033042 n

end A033042

/-! ## A033042.P3520187007999242208

`A020655(A000695(n)+1)-1`
-/

namespace A033042.P3520187007999242208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A000695 n + 1).toNat - 1

end

end A033042.P3520187007999242208

namespace A033042

/-- `A020655(A000695(n)+1)-1` -/
def P3520187007999242208.Spec : Prop :=
  ∀ n, P3520187007999242208.a n = A033042 n

end A033042

/-! ## A033042.P8487547261681113953

`∩[A020654(n+1), A039572(n+1)]`
-/

namespace A033042.P8487547261681113953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033042.P8487547261681113953

namespace A033042

/-- `∩[A020654(n+1), A039572(n+1)]` -/
def P8487547261681113953.Spec : Prop :=
  ∀ n, (P8487547261681113953.a n : ℤ) = A033042 n

end A033042

/-! ## A033042.P1202821070275618298

`∩[A023729(n+1), A039572(n+1)]`
-/

namespace A033042.P1202821070275618298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033042.P1202821070275618298

namespace A033042

/-- `∩[A023729(n+1), A039572(n+1)]` -/
def P1202821070275618298.Spec : Prop :=
  ∀ n, (P1202821070275618298.a n : ℤ) = A033042 n

end A033042

/-! ## A033042.P5750291107284690097

`∩[A023733(n+1), A039572(n+1)]`
-/

namespace A033042.P5750291107284690097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033042.P5750291107284690097

namespace A033042

/-- `∩[A023733(n+1), A039572(n+1)]` -/
def P5750291107284690097.Spec : Prop :=
  ∀ n, (P5750291107284690097.a n : ℤ) = A033042 n

end A033042

/-! ## A033042.P3758727213470559644

`A020654(A023717(A005836(n+1)+1))`
-/

namespace A033042.P3758727213470559644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023717 (A005836 (n + 1) + 1).toNat).toNat

end

end A033042.P3758727213470559644

namespace A033042

/-- `A020654(A023717(A005836(n+1)+1))` -/
def P3758727213470559644.Spec : Prop :=
  ∀ n, P3758727213470559644.a n = A033042 n

end A033042

/-!
# A033043: Sums of distinct powers of 6.

The programs for A033043, there is no canonical definition to state claims against.
-/

/-! ## A033043.P16606961475535764982

`A097252(n)/5`
-/

namespace A033043.P16606961475535764982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097252 n : ℚ) / 5

end

end A033043.P16606961475535764982

/-! ## A033043.P18222050935756259609

`record[A032818(n+1)-A032913(n+1)]`
-/

namespace A033043.P18222050935756259609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032818 (n + 1) - A032913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033043.P18222050935756259609

/-! ## A033043.P7549723123242633644

`record[A032913(n+1)-A032927(n+1)]`
-/

namespace A033043.P7549723123242633644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032913 (n + 1) - A032927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033043.P7549723123242633644

/-! ## A033043.P2185133714836924722

`A037454(record[A060372(n)])`
-/

namespace A033043.P2185133714836924722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033043.P2185133714836924722

/-! ## A033043.P11888059071529782362

`A037454(record[A117966(n)])`
-/

namespace A033043.P11888059071529782362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033043.P11888059071529782362

/-! ## A033043.P9541861927672053238

`A037454(record[A167877(n)])`
-/

namespace A033043.P9541861927672053238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033043.P9541861927672053238

/-! ## A033043.P14210454813574729909

`A037454(record[A244042(n)])`
-/

namespace A033043.P14210454813574729909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033043.P14210454813574729909

/-! ## A033043.P3667336680545197330

`A037454(A005836(n+1))`
-/

namespace A033043.P3667336680545197330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A005836 (n + 1)).toNat

end

end A033043.P3667336680545197330

/-! ## A033043.P8465531946621306613

`A037454(eq[1, A039966(n)])`
-/

namespace A033043.P8465531946621306613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033043.P8465531946621306613

/-! ## A033043.P3562792436592078361

`A037454(eq[n, A060372(n)])`
-/

namespace A033043.P3562792436592078361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033043.P3562792436592078361

/-! ## A033043.P4782743145973805835

`A037454(eq[n, A060374(n)])`
-/

namespace A033043.P4782743145973805835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033043.P4782743145973805835

/-! ## A033043.P17714835055400440188

`A037454(eq[n, A244042(n)])`
-/

namespace A033043.P17714835055400440188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033043.P17714835055400440188

/-! ## A033043.P8183831392426070967

`A037454(record[A333773(n)])`
-/

namespace A033043.P8183831392426070967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033043.P8183831392426070967

/-! ## A033043.P3721266105152245789

`A037454(record[A338241(n)])`
-/

namespace A033043.P3721266105152245789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033043.P3721266105152245789

/-! ## A033043.P13171387556540317484

`A037454(record[A338243(n)])`
-/

namespace A033043.P13171387556540317484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033043.P13171387556540317484

/-! ## A033043.P5711081527774969690

`record[gcd(A037454(2*n), A037454(n))]`
-/

namespace A033043.P5711081527774969690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037454 (2 * n)) (A037454 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033043.P5711081527774969690

/-! ## A033043.P11831855434855681455

`record[A033032(A032924(n+1))-A032927(n+1)]`
-/

namespace A033043.P11831855434855681455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033032 (A032924 (n + 1)).toNat - A032927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033043.P11831855434855681455

/-! ## A033043.P9055450795968647013

`A341907(A133263(n+6)+4)`
-/

namespace A033043.P9055450795968647013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (A133263 (n + 6) + 4).toNat

end

end A033043.P9055450795968647013

/-! ## A033043.P10607674944871717698

`A341907(A000217(n+6)+6)`
-/

namespace A033043.P10607674944871717698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (A000217 (n + 6) + 6).toNat

end

end A033043.P10607674944871717698

/-! ## A033043.P7326248650970184353

`A037460(A000695(n))`
-/

namespace A033043.P7326248650970184353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A000695 n).toNat

end

end A033043.P7326248650970184353

/-!
# A033044: Sums of distinct powers of 7.

The programs for A033044, the canonical program `A033044.P3943471962999109464` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033044 has offset 1).

The definition of A033044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033044.P3943471962999109464

`A097253(n+1)/6`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033044

/-- `A097253(n+1)/6` -/
def P3943471962999109464.Spec : Prop :=
  ∀ n, P3943471962999109464.a n = (A033044 (n + 1) : ℚ)

end A033044

/-! ## A033044.P13440618651006475701

`record[A032819(n+1)-A032914(n+1)]`
-/

namespace A033044.P13440618651006475701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032819 (n + 1) - A032914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033044.P13440618651006475701

namespace A033044

/-- `record[A032819(n+1)-A032914(n+1)]` -/
def P13440618651006475701.Spec : Prop :=
  ∀ n, P13440618651006475701.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P2296909781532812364

`record[A032914(n+1)-A032928(n+1)]`
-/

namespace A033044.P2296909781532812364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032914 (n + 1) - A032928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033044.P2296909781532812364

namespace A033044

/-- `record[A032914(n+1)-A032928(n+1)]` -/
def P2296909781532812364.Spec : Prop :=
  ∀ n, P2296909781532812364.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P1526192878554941318

`A037455(record[A060372(n)])`
-/

namespace A033044.P1526192878554941318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033044.P1526192878554941318

namespace A033044

/-- `A037455(record[A060372(n)])` -/
def P1526192878554941318.Spec : Prop :=
  ∀ n, P1526192878554941318.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P12744603585643412129

`A037455(record[A117966(n)])`
-/

namespace A033044.P12744603585643412129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033044.P12744603585643412129

namespace A033044

/-- `A037455(record[A117966(n)])` -/
def P12744603585643412129.Spec : Prop :=
  ∀ n, P12744603585643412129.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P3241428266061368590

`A037455(record[A167877(n)])`
-/

namespace A033044.P3241428266061368590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033044.P3241428266061368590

namespace A033044

/-- `A037455(record[A167877(n)])` -/
def P3241428266061368590.Spec : Prop :=
  ∀ n, P3241428266061368590.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P17863952356399497788

`A037455(record[A338245(n)])`
-/

namespace A033044.P17863952356399497788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033044.P17863952356399497788

namespace A033044

/-- `A037455(record[A338245(n)])` -/
def P17863952356399497788.Spec : Prop :=
  ∀ n, P17863952356399497788.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P13806892533877254370

`A037455(A005836(n+1))`
-/

namespace A033044.P13806892533877254370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A005836 (n + 1)).toNat

end

end A033044.P13806892533877254370

namespace A033044

/-- `A037455(A005836(n+1))` -/
def P13806892533877254370.Spec : Prop :=
  ∀ n, P13806892533877254370.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P17326924711901615542

`A037455(eq[1, A039966(n)])`
-/

namespace A033044.P17326924711901615542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033044.P17326924711901615542

namespace A033044

/-- `A037455(eq[1, A039966(n)])` -/
def P17326924711901615542.Spec : Prop :=
  ∀ n, P17326924711901615542.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P5730600586043246377

`A037455(eq[1, A117592(n)])`
-/

namespace A033044.P5730600586043246377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033044.P5730600586043246377

namespace A033044

/-- `A037455(eq[1, A117592(n)])` -/
def P5730600586043246377.Spec : Prop :=
  ∀ n, P5730600586043246377.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P970967281262296081

`A037455(eq[n, A060372(n)])`
-/

namespace A033044.P970967281262296081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033044.P970967281262296081

namespace A033044

/-- `A037455(eq[n, A060372(n)])` -/
def P970967281262296081.Spec : Prop :=
  ∀ n, P970967281262296081.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P8502913580084649461

`A037455(eq[n, A117967(n)])`
-/

namespace A033044.P8502913580084649461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033044.P8502913580084649461

namespace A033044

/-- `A037455(eq[n, A117967(n)])` -/
def P8502913580084649461.Spec : Prop :=
  ∀ n, P8502913580084649461.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P5439708322925142065

`A037455(eq[n, A244042(n)])`
-/

namespace A033044.P5439708322925142065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033044.P5439708322925142065

namespace A033044

/-- `A037455(eq[n, A244042(n)])` -/
def P5439708322925142065.Spec : Prop :=
  ∀ n, P5439708322925142065.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P2677557783863027340

`A037455(A005823(n+1)/2)`
-/

namespace A033044.P2677557783863027340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.roundAway ((A005823 (n + 1) : ℚ) / 2)).toNat

end

end A033044.P2677557783863027340

namespace A033044

/-- `A037455(A005823(n+1)/2)` -/
def P2677557783863027340.Spec : Prop :=
  ∀ n, P2677557783863027340.a n = A033044 (n + 1)

end A033044

/-! ## A033044.P11343143426327282588

`A037455(record[A333773(n)])`
-/

namespace A033044.P11343143426327282588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033044.P11343143426327282588

namespace A033044

/-- `A037455(record[A333773(n)])` -/
def P11343143426327282588.Spec : Prop :=
  ∀ n, P11343143426327282588.a n = A033044 (n + 1)

end A033044

/-!
# A033045: Sums of distinct powers of 8.

The programs for A033045, the canonical program `A033045.P626829856934747549` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033045 has offset 0).

The definition of A033045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033045.P626829856934747549

`A097254(n+1)/7`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033045

/-- `A097254(n+1)/7` -/
def P626829856934747549.Spec : Prop :=
  ∀ n, P626829856934747549.a n = (A033045 n : ℚ)

end A033045

/-! ## A033045.P4016073228236933977

`(A147845(n+1)-1)/2`
-/

namespace A033045.P4016073228236933977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147845 (n + 1) - 1 : ℚ) / 2

end

end A033045.P4016073228236933977

namespace A033045

/-- `(A147845(n+1)-1)/2` -/
def P4016073228236933977.Spec : Prop :=
  ∀ n, P4016073228236933977.a n = (A033045 n : ℚ)

end A033045

/-! ## A033045.P3678661359425822644

`∑{d}[A062383(n), and(n, #)^3]`
-/

namespace A033045.P3678661359425822644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land n d ^ 3

end

end A033045.P3678661359425822644

namespace A033045

/-- `∑{d}[A062383(n), and(n, #)^3]` -/
def P3678661359425822644.Spec : Prop :=
  ∀ n, (P3678661359425822644.a n : ℤ) = A033045 n

end A033045

/-! ## A033045.P17375094641844612727

`A152111(A035327(n)+2*n)`
-/

namespace A033045.P17375094641844612727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152111 (A035327 n + (2 * n : ℤ)).toNat

end

end A033045.P17375094641844612727

namespace A033045

/-- `A152111(A035327(n)+2*n)` -/
def P17375094641844612727.Spec : Prop :=
  ∀ n, P17375094641844612727.a n = A033045 n

end A033045

/-! ## A033045.P7685954020590057962

`A152111(A035327(n)+n+n)`
-/

namespace A033045.P7685954020590057962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152111 (A035327 n + (n : ℤ) + (n : ℤ)).toNat

end

end A033045.P7685954020590057962

namespace A033045

/-- `A152111(A035327(n)+n+n)` -/
def P7685954020590057962.Spec : Prop :=
  ∀ n, P7685954020590057962.a n = A033045 n

end A033045

/-! ## A033045.P481582508626646369

`record[A032820(n+1)-A032915(n+1)]`
-/

namespace A033045.P481582508626646369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032820 (n + 1) - A032915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033045.P481582508626646369

namespace A033045

/-- `record[A032820(n+1)-A032915(n+1)]` -/
def P481582508626646369.Spec : Prop :=
  ∀ n, P481582508626646369.a n = A033045 n

end A033045

/-! ## A033045.P5824923828686218793

`record[A032915(n+1)-A032929(n+1)]`
-/

namespace A033045.P5824923828686218793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032915 (n + 1) - A032929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033045.P5824923828686218793

namespace A033045

/-- `record[A032915(n+1)-A032929(n+1)]` -/
def P5824923828686218793.Spec : Prop :=
  ∀ n, P5824923828686218793.a n = A033045 n

end A033045

/-! ## A033045.P15425718070724804119

`A037456(record[A060372(n)])`
-/

namespace A033045.P15425718070724804119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033045.P15425718070724804119

namespace A033045

/-- `A037456(record[A060372(n)])` -/
def P15425718070724804119.Spec : Prop :=
  ∀ n, P15425718070724804119.a n = A033045 n

end A033045

/-! ## A033045.P11979962400539462541

`A037456(record[A117966(n)])`
-/

namespace A033045.P11979962400539462541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033045.P11979962400539462541

namespace A033045

/-- `A037456(record[A117966(n)])` -/
def P11979962400539462541.Spec : Prop :=
  ∀ n, P11979962400539462541.a n = A033045 n

end A033045

/-! ## A033045.P3616806947752846004

`A037456(record[A167877(n)])`
-/

namespace A033045.P3616806947752846004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033045.P3616806947752846004

namespace A033045

/-- `A037456(record[A167877(n)])` -/
def P3616806947752846004.Spec : Prop :=
  ∀ n, P3616806947752846004.a n = A033045 n

end A033045

/-! ## A033045.P451232898791828119

`A037456(A005836(n+1))`
-/

namespace A033045.P451232898791828119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A005836 (n + 1)).toNat

end

end A033045.P451232898791828119

namespace A033045

/-- `A037456(A005836(n+1))` -/
def P451232898791828119.Spec : Prop :=
  ∀ n, P451232898791828119.a n = A033045 n

end A033045

/-! ## A033045.P1721902531867247291

`A037456(eq[1, A039966(n)])`
-/

namespace A033045.P1721902531867247291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033045.P1721902531867247291

namespace A033045

/-- `A037456(eq[1, A039966(n)])` -/
def P1721902531867247291.Spec : Prop :=
  ∀ n, P1721902531867247291.a n = A033045 n

end A033045

/-! ## A033045.P4487062870901184561

`A037456(eq[n, A117967(n)])`
-/

namespace A033045.P4487062870901184561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033045.P4487062870901184561

namespace A033045

/-- `A037456(eq[n, A117967(n)])` -/
def P4487062870901184561.Spec : Prop :=
  ∀ n, P4487062870901184561.a n = A033045 n

end A033045

/-! ## A033045.P7181972928376834166

`A037456(record[A004488(n)/2])`
-/

namespace A033045.P7181972928376834166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004488 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A033045.P7181972928376834166

namespace A033045

/-- `A037456(record[A004488(n)/2])` -/
def P7181972928376834166.Spec : Prop :=
  ∀ n, P7181972928376834166.a n = A033045 n

end A033045

/-! ## A033045.P10110813138940873658

`A037456(record[n-A004488(n)])`
-/

namespace A033045.P10110813138940873658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033045.P10110813138940873658

namespace A033045

/-- `A037456(record[n-A004488(n)])` -/
def P10110813138940873658.Spec : Prop :=
  ∀ n, P10110813138940873658.a n = A033045 n

end A033045

/-! ## A033045.P2929731900303539541

`A037456(A003278(n+1)-1)`
-/

namespace A033045.P2929731900303539541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A003278 (n + 1) - 1).toNat

end

end A033045.P2929731900303539541

namespace A033045

/-- `A037456(A003278(n+1)-1)` -/
def P2929731900303539541.Spec : Prop :=
  ∀ n, P2929731900303539541.a n = A033045 n

end A033045

/-! ## A033045.P7228704436684989000

`A037456(A005823(n+1)/2)`
-/

namespace A033045.P7228704436684989000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (SequenceMachineLib.roundAway ((A005823 (n + 1) : ℚ) / 2)).toNat

end

end A033045.P7228704436684989000

namespace A033045

/-- `A037456(A005823(n+1)/2)` -/
def P7228704436684989000.Spec : Prop :=
  ∀ n, P7228704436684989000.a n = A033045 n

end A033045

/-! ## A033045.P5046660198594483238

`A037456(A033162(n+1)-2)-1`
-/

namespace A033045.P5046660198594483238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A033162 (n + 1) - 2).toNat - 1

end

end A033045.P5046660198594483238

namespace A033045

/-- `A037456(A033162(n+1)-2)-1` -/
def P5046660198594483238.Spec : Prop :=
  ∀ n, P5046660198594483238.a n = A033045 n

end A033045

/-! ## A033045.P108357970146070961

`A037456(A004488(record[A004488(n)]))`
-/

namespace A033045.P108357970146070961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A004488 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A033045.P108357970146070961

namespace A033045

/-- `A037456(A004488(record[A004488(n)]))` -/
def P108357970146070961.Spec : Prop :=
  ∀ n, P108357970146070961.a n = A033045 n

end A033045

/-! ## A033045.P12777000256418181952

`A037456(record[A333773(n)])`
-/

namespace A033045.P12777000256418181952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033045.P12777000256418181952

namespace A033045

/-- `A037456(record[A333773(n)])` -/
def P12777000256418181952.Spec : Prop :=
  ∀ n, P12777000256418181952.a n = A033045 n

end A033045

/-!
# A033046: Sums of distinct powers of 9.

The programs for A033046, the canonical program `A033046.P15485974866274151749` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033046 has offset 0).

The definition of A033046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033046.P15485974866274151749

`A097255(n)/8`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033046

/-- `A097255(n)/8` -/
def P15485974866274151749.Spec : Prop :=
  ∀ n, P15485974866274151749.a n = (A033046 n : ℚ)

end A033046

/-! ## A033046.P18121806993205136139

`A319497(record[A060372(n)])`
-/

namespace A033046.P18121806993205136139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033046.P18121806993205136139

namespace A033046

/-- `A319497(record[A060372(n)])` -/
def P18121806993205136139.Spec : Prop :=
  ∀ n, P18121806993205136139.a n = A033046 n

end A033046

/-! ## A033046.P7841693969108767568

`A319497(record[A117966(n)])`
-/

namespace A033046.P7841693969108767568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033046.P7841693969108767568

namespace A033046

/-- `A319497(record[A117966(n)])` -/
def P7841693969108767568.Spec : Prop :=
  ∀ n, P7841693969108767568.a n = A033046 n

end A033046

/-! ## A033046.P9463657254455439989

`A319497(record[A338246(n)])`
-/

namespace A033046.P9463657254455439989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033046.P9463657254455439989

namespace A033046

/-- `A319497(record[A338246(n)])` -/
def P9463657254455439989.Spec : Prop :=
  ∀ n, P9463657254455439989.a n = A033046 n

end A033046

/-! ## A033046.P14884944875420755681

`A037314(A005836(n+1))`
-/

namespace A033046.P14884944875420755681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A005836 (n + 1)).toNat

end

end A033046.P14884944875420755681

namespace A033046

/-- `A037314(A005836(n+1))` -/
def P14884944875420755681.Spec : Prop :=
  ∀ n, P14884944875420755681.a n = A033046 n

end A033046

/-! ## A033046.P7773964636102852855

`∩[A037314(n), A060140(n)]`
-/

namespace A033046.P7773964636102852855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060140 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033046.P7773964636102852855

namespace A033046

/-- `∩[A037314(n), A060140(n)]` -/
def P7773964636102852855.Spec : Prop :=
  ∀ n, (P7773964636102852855.a n : ℤ) = A033046 n

end A033046

/-! ## A033046.P6824716819374483841

`∩[A037314(n), A319497(n)]`
-/

namespace A033046.P6824716819374483841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033046.P6824716819374483841

namespace A033046

/-- `∩[A037314(n), A319497(n)]` -/
def P6824716819374483841.Spec : Prop :=
  ∀ n, (P6824716819374483841.a n : ℤ) = A033046 n

end A033046

/-! ## A033046.P1910935457831433224

`A319497(record[n*A039966(n)])`
-/

namespace A033046.P1910935457831433224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033046.P1910935457831433224

namespace A033046

/-- `A319497(record[n*A039966(n)])` -/
def P1910935457831433224.Spec : Prop :=
  ∀ n, P1910935457831433224.a n = A033046 n

end A033046

/-! ## A033046.P16875022295418539984

`A037314(A005823(n+1)/2)`
-/

namespace A033046.P16875022295418539984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (SequenceMachineLib.roundAway ((A005823 (n + 1) : ℚ) / 2)).toNat

end

end A033046.P16875022295418539984

namespace A033046

/-- `A037314(A005823(n+1)/2)` -/
def P16875022295418539984.Spec : Prop :=
  ∀ n, P16875022295418539984.a n = A033046 n

end A033046

/-! ## A033046.P16275538299876281609

`record[A342802(n)]`
-/

namespace A033046.P16275538299876281609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033046.P16275538299876281609

namespace A033046

/-- `record[A342802(n)]` -/
def P16275538299876281609.Spec : Prop :=
  ∀ n, P16275538299876281609.a n = A033046 n

end A033046

/-! ## A033046.P3677931236190552434

`A037463(A000695(n))`
-/

namespace A033046.P3677931236190552434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A000695 n).toNat

end

end A033046.P3677931236190552434

namespace A033046

/-- `A037463(A000695(n))` -/
def P3677931236190552434.Spec : Prop :=
  ∀ n, P3677931236190552434.a n = A033046 n

end A033046

/-! ## A033046.P7486121105641761135

`A005836(A098871(n))`
-/

namespace A033046.P7486121105641761135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A098871 n).toNat

end

end A033046.P7486121105641761135

namespace A033046

/-- `A005836(A098871(n))` -/
def P7486121105641761135.Spec : Prop :=
  ∀ n, P7486121105641761135.a n = A033046 n

end A033046

/-! ## A033046.P3745205138806266694

`A005836(A000695(n)+1)`
-/

namespace A033046.P3745205138806266694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A000695 n + 1).toNat

end

end A033046.P3745205138806266694

namespace A033046

/-- `A005836(A000695(n)+1)` -/
def P3745205138806266694.Spec : Prop :=
  ∀ n, P3745205138806266694.a n = A033046 n

end A033046

/-! ## A033046.P9732768790039655469

`A094115(A055247(n+1))`
-/

namespace A033046.P9732768790039655469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094115 (A055247 (n + 1)).toNat

end

end A033046.P9732768790039655469

namespace A033046

/-- `A094115(A055247(n+1))` -/
def P9732768790039655469.Spec : Prop :=
  ∀ n, P9732768790039655469.a n = A033046 n

end A033046

/-! ## A033046.P7683522747250392280

`A094115(A191106(n+1))`
-/

namespace A033046.P7683522747250392280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094115 (A191106 (n + 1)).toNat

end

end A033046.P7683522747250392280

namespace A033046

/-- `A094115(A191106(n+1))` -/
def P7683522747250392280.Spec : Prop :=
  ∀ n, P7683522747250392280.a n = A033046 n

end A033046

/-! ## A033046.P12101793120852817350

`A005836(A062880(n)/2+1)`
-/

namespace A033046.P12101793120852817350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.roundAway ((A062880 n : ℚ) / 2 + 1)).toNat

end

end A033046.P12101793120852817350

namespace A033046

/-- `A005836(A062880(n)/2+1)` -/
def P12101793120852817350.Spec : Prop :=
  ∀ n, P12101793120852817350.a n = A033046 n

end A033046

/-! ## A033046.P707325111196510841

`A005836((A147568(n)-1)/2)`
-/

namespace A033046.P707325111196510841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.roundAway ((A147568 n - 1 : ℚ) / 2)).toNat

end

end A033046.P707325111196510841

namespace A033046

/-- `A005836((A147568(n)-1)/2)` -/
def P707325111196510841.Spec : Prop :=
  ∀ n, P707325111196510841.a n = A033046 n

end A033046

/-! ## A033046.P17958530946932977309

`∩[A082575(n+1), A037314(n)]`
-/

namespace A033046.P17958530946932977309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033046.P17958530946932977309

namespace A033046

/-- `∩[A082575(n+1), A037314(n)]` -/
def P17958530946932977309.Spec : Prop :=
  ∀ n, (P17958530946932977309.a n : ℤ) = A033046 n

end A033046

/-! ## A033046.P10719577319408277797

`record[A005836(n+1)*A151666(n)]`
-/

namespace A033046.P10719577319408277797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) * A151666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033046.P10719577319408277797

namespace A033046

/-- `record[A005836(n+1)*A151666(n)]` -/
def P10719577319408277797.Spec : Prop :=
  ∀ n, P10719577319408277797.a n = A033046 n

end A033046

/-!
# A033047: Sums of distinct powers of 11.

The programs for A033047, there is no canonical definition to state claims against.
-/

/-! ## A033047.P9888031018725434203

`A097257(n)/10`
-/

namespace A033047.P9888031018725434203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097257 n : ℚ) / 10

end

end A033047.P9888031018725434203

/-! ## A033047.P1468285640285402749

`record[A032823(n+1)-A032918(n+1)]`
-/

namespace A033047.P1468285640285402749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032823 (n + 1) - A032918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033047.P1468285640285402749

/-! ## A033047.P16106738743258529984

`record[A032918(n+1)-A032931(n+1)]`
-/

namespace A033047.P16106738743258529984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032918 (n + 1) - A032931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033047.P16106738743258529984

/-! ## A033047.P5171057593279217823

`record[A032918(n+1)-(2*A032811(n+1)-A032835(n+1))]`
-/

namespace A033047.P5171057593279217823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032918 (n + 1) - (2 * A032811 (n + 1) - A032835 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033047.P5171057593279217823

/-! ## A033047.P7694385187049257382

`record[A032918(n+1)%((A032835(n+1)+A032823(n+1))/4)]`
-/

namespace A033047.P7694385187049257382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032918 (n + 1)) (SequenceMachineLib.roundAway ((A032835 (n + 1) + A032823 (n + 1) : ℚ) / 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033047.P7694385187049257382

/-! ## A033047.P11012868843431341837

`A341907(eq[11, A002262(n)])`
-/

namespace A033047.P11012868843431341837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033047.P11012868843431341837

/-! ## A033047.P10289154283587974549

`A341907(eq[12, A002260(n+1)])`
-/

namespace A033047.P10289154283587974549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033047.P10289154283587974549

/-! ## A033047.P921859173539790660

`record[A032823(n+1)-A033036(A032926(n+1))]`
-/

namespace A033047.P921859173539790660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032823 (n + 1) - A033036 (A032926 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033047.P921859173539790660

/-! ## A033047.P7824360678786407950

`record[A033036(A032926(n+1))-A032931(n+1)]`
-/

namespace A033047.P7824360678786407950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033036 (A032926 (n + 1)).toNat - A032931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033047.P7824360678786407950

/-!
# A033048: Sums of distinct powers of 12.

The programs for A033048, the canonical program `A033048.P3932103640337682886` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033048 has offset 0).

The definition of A033048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033048.P8286079174555505423

`A097258(n)/11`
-/

namespace A033048.P8286079174555505423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097258 n : ℚ) / 11

end

end A033048.P8286079174555505423

namespace A033048

/-- `A097258(n)/11` -/
def P8286079174555505423.Spec : Prop :=
  ∀ n, P8286079174555505423.a n = (A033048 n : ℚ)

theorem P8286079174555505423.correct : P8286079174555505423.Spec := by
  intro n
  simp only [A033048, Nat.add_sub_cancel, A033048.P8286079174555505423.a, A033048.P3932103640337682886.a, A097258, A097258.P9869990002715108354.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033048

/-! ## A033048.P3932103640337682886

`n%2+12*a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033048

/-- `n%2+12*a(floor(n/2))` -/
def P3932103640337682886.Spec : Prop :=
  ∀ n, (P3932103640337682886.a n : ℤ) = A033048 n

theorem P3932103640337682886.correct : P3932103640337682886.Spec := by
  intro n
  simp only [A033048]

end A033048

/-! ## A033048.P4736869609610343390

`record[A032824(n+1)-A032919(n+1)]`
-/

namespace A033048.P4736869609610343390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032824 (n + 1) - A032919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033048.P4736869609610343390

namespace A033048

/-- `record[A032824(n+1)-A032919(n+1)]` -/
def P4736869609610343390.Spec : Prop :=
  ∀ n, P4736869609610343390.a n = A033048 n

end A033048

/-! ## A033048.P11176514421632395966

`record[A032919(n+1)-A032932(n+1)]`
-/

namespace A033048.P11176514421632395966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032919 (n + 1) - A032932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033048.P11176514421632395966

namespace A033048

/-- `record[A032919(n+1)-A032932(n+1)]` -/
def P11176514421632395966.Spec : Prop :=
  ∀ n, P11176514421632395966.a n = A033048 n

end A033048

/-! ## A033048.P15893342567161679661

`A341907(eq[12, A002262(n)])`
-/

namespace A033048.P15893342567161679661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033048.P15893342567161679661

namespace A033048

/-- `A341907(eq[12, A002262(n)])` -/
def P15893342567161679661.Spec : Prop :=
  ∀ n, P15893342567161679661.a n = A033048 n

end A033048

/-!
# A033049: Sums of distinct powers of 13.

The programs for A033049, there is no canonical definition to state claims against.
-/

/-! ## A033049.P128324109425615206

`A097259(n)/12`
-/

namespace A033049.P128324109425615206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097259 n : ℚ) / 12

end

end A033049.P128324109425615206

/-! ## A033049.P2229638044011633263

`record[A032825(n+1)-A032920(n+1)]`
-/

namespace A033049.P2229638044011633263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032825 (n + 1) - A032920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033049.P2229638044011633263

/-! ## A033049.P17112946897882540120

`record[A032920(n+1)-A032933(n+1)]`
-/

namespace A033049.P17112946897882540120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032920 (n + 1) - A032933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033049.P17112946897882540120

/-! ## A033049.P8849686015039454918

`record[2*A032933(n+1)-A032813(n+1)]`
-/

namespace A033049.P8849686015039454918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032933 (n + 1) - A032813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033049.P8849686015039454918

/-! ## A033049.P10790689759462613466

`record[(A032825(n+1)-A032933(n+1))/2]`
-/

namespace A033049.P10790689759462613466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032825 (n + 1) - A032933 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033049.P10790689759462613466

/-! ## A033049.P12856310413232748704

`record[A032825(n+1)-(5*A032813(n+1))%A032837(n+1)]`
-/

namespace A033049.P12856310413232748704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032825 (n + 1) - Int.tmod (5 * A032813 (n + 1)) (A032837 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033049.P12856310413232748704

/-!
# A033050: Numbers whose set of base 14 digits is {0,1}.

The programs for A033050, there is no canonical definition to state claims against.
-/

/-! ## A033050.P16285739982718453931

`A097260(n+1)/13`
-/

namespace A033050.P16285739982718453931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097260 (n + 1) : ℚ) / 13

end

end A033050.P16285739982718453931

/-! ## A033050.P11700967325784083295

`record[A032826(n+1)-A032921(n+1)]`
-/

namespace A033050.P11700967325784083295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032826 (n + 1) - A032921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033050.P11700967325784083295

/-! ## A033050.P18262735403183181754

`record[A032921(n+1)-A032934(n+1)]`
-/

namespace A033050.P18262735403183181754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032921 (n + 1) - A032934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033050.P18262735403183181754

/-! ## A033050.P6126893774270504373

`record[A032921(n+1)-(2*A032814(n+1)-A032838(n+1))]`
-/

namespace A033050.P6126893774270504373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032921 (n + 1) - (2 * A032814 (n + 1) - A032838 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033050.P6126893774270504373

/-! ## A033050.P15772218623563871284

`record[A032921(n+1)%((A032838(n+1)+A032826(n+1))/4)]`
-/

namespace A033050.P15772218623563871284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032921 (n + 1)) (SequenceMachineLib.roundAway ((A032838 (n + 1) + A032826 (n + 1) : ℚ) / 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033050.P15772218623563871284

/-!
# A033051: Numbers whose set of base 15 digits is {0,1}.

The programs for A033051, there is no canonical definition to state claims against.
-/

/-! ## A033051.P5703511487290481523

`A097261(n)/14`
-/

namespace A033051.P5703511487290481523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097261 n : ℚ) / 14

end

end A033051.P5703511487290481523

/-! ## A033051.P11662565355563111310

`record[A032827(n+1)-A032922(n+1)]`
-/

namespace A033051.P11662565355563111310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032827 (n + 1) - A032922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033051.P11662565355563111310

/-! ## A033051.P3246518511087587492

`record[A032922(n+1)-A032935(n+1)]`
-/

namespace A033051.P3246518511087587492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032922 (n + 1) - A032935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033051.P3246518511087587492

/-! ## A033051.P908441937244350871

`record[A032922(n+1)-(2*A032815(n+1)-A032839(n+1))]`
-/

namespace A033051.P908441937244350871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032922 (n + 1) - (2 * A032815 (n + 1) - A032839 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033051.P908441937244350871

/-! ## A033051.P11664339185033580016

`record[A032922(n+1)%((A032839(n+1)+A032827(n+1))/4)]`
-/

namespace A033051.P11664339185033580016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032922 (n + 1)) (SequenceMachineLib.roundAway ((A032839 (n + 1) + A032827 (n + 1) : ℚ) / 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033051.P11664339185033580016

/-! ## A033051.P2324255740441047330

`A341907(eq[53, A037126(n+1)])`
-/

namespace A033051.P2324255740441047330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033051.P2324255740441047330

/-!
# A033052: a(1) = 1, a(2n) = 16a(n), a(2n+1) = a(2n)+1.

The programs for A033052, the canonical program `A033052.P18311306593688986534` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033052 has offset 0).

The definition of A033052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033052.P13101937547029941742

`A097262(n)/15`
-/

namespace A033052.P13101937547029941742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097262 n : ℚ) / 15

end

end A033052.P13101937547029941742

namespace A033052

/-- `A097262(n)/15` -/
def P13101937547029941742.Spec : Prop :=
  ∀ n, P13101937547029941742.a n = (A033052 n : ℚ)

theorem P13101937547029941742.correct : P13101937547029941742.Spec := by
  intro n
  simp only [A033052, Nat.add_sub_cancel, A033052.P13101937547029941742.a, A033052.P18311306593688986534.a, A000695, A000695.P14587171459336407380.a, A097262, A097262.P8743241402610439635.a, A145812, A145812.P7040268425871068342.f1, A145812.P7040268425871068342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033052

/-! ## A033052.P18311306593688986534

`A000695(A000695(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033052

/-- `A000695(A000695(n))` -/
def P18311306593688986534.Spec : Prop :=
  ∀ n, P18311306593688986534.a n = A033052 n

theorem P18311306593688986534.correct : P18311306593688986534.Spec := by
  intro n
  simp only [A033052]

end A033052

/-! ## A033052.P16619797162879081525

`∑{d}[A053644(n), and(n, #)²²]`
-/

namespace A033052.P16619797162879081525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (Nat.land n d ^ 2) ^ 2

end

end A033052.P16619797162879081525

namespace A033052

/-- `∑{d}[A053644(n), and(n, #)²²]` -/
def P16619797162879081525.Spec : Prop :=
  ∀ n, (P16619797162879081525.a n : ℤ) = A033052 n

end A033052

/-! ## A033052.P15381606439641256951

`∑{d}[A062383(n), and(n, #)²²]`
-/

namespace A033052.P15381606439641256951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (Nat.land n d ^ 2) ^ 2

end

end A033052.P15381606439641256951

namespace A033052

/-- `∑{d}[A062383(n), and(n, #)²²]` -/
def P15381606439641256951.Spec : Prop :=
  ∀ n, (P15381606439641256951.a n : ℤ) = A033052 n

end A033052

/-! ## A033052.P10287375742883743721

`record[A032828(n+1)-A032923(n+1)]`
-/

namespace A033052.P10287375742883743721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032828 (n + 1) - A032923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033052.P10287375742883743721

namespace A033052

/-- `record[A032828(n+1)-A032923(n+1)]` -/
def P10287375742883743721.Spec : Prop :=
  ∀ n, P10287375742883743721.a n = A033052 n

end A033052

/-! ## A033052.P7121847458858242662

`record[A032923(n+1)-A032936(n+1)]`
-/

namespace A033052.P7121847458858242662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032923 (n + 1) - A032936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033052.P7121847458858242662

namespace A033052

/-- `record[A032923(n+1)-A032936(n+1)]` -/
def P7121847458858242662.Spec : Prop :=
  ∀ n, P7121847458858242662.a n = A033052 n

end A033052

/-! ## A033052.P11527375263840841351

`∑{p}[A019565(n), A048675(#)²²]`
-/

namespace A033052.P11527375263840841351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A048675 p ^ 2) ^ 2

end

end A033052.P11527375263840841351

namespace A033052

/-- `∑{p}[A019565(n), A048675(#)²²]` -/
def P11527375263840841351.Spec : Prop :=
  ∀ n, P11527375263840841351.a n = A033052 n

end A033052

/-! ## A033052.P15511601903858197917

`∑{p}[A019565(n), A156552(#)²²]`
-/

namespace A033052.P15511601903858197917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A156552 p ^ 2) ^ 2

end

end A033052.P15511601903858197917

namespace A033052

/-- `∑{p}[A019565(n), A156552(#)²²]` -/
def P15511601903858197917.Spec : Prop :=
  ∀ n, P15511601903858197917.a n = A033052 n

end A033052

/-! ## A033052.P5022067979918533017

`∑{p}[A019565(n), A248663(#)²²]`
-/

namespace A033052.P5022067979918533017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A248663 p ^ 2) ^ 2

end

end A033052.P5022067979918533017

namespace A033052

/-- `∑{p}[A019565(n), A248663(#)²²]` -/
def P5022067979918533017.Spec : Prop :=
  ∀ n, P5022067979918533017.a n = A033052 n

end A033052

/-! ## A033052.P16758289137136370165

`A062880(A054238(∑[n]))/2`
-/

namespace A033052.P16758289137136370165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) / 2

end

end A033052.P16758289137136370165

namespace A033052

/-- `A062880(A054238(∑[n]))/2` -/
def P16758289137136370165.Spec : Prop :=
  ∀ n, P16758289137136370165.a n = (A033052 n : ℚ)

end A033052

/-! ## A033052.P13788065453737452856

`A098871(A098871(n)-1)-1`
-/

namespace A033052.P13788065453737452856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 (A098871 n - 1).toNat - 1

end

end A033052.P13788065453737452856

namespace A033052

/-- `A098871(A098871(n)-1)-1` -/
def P13788065453737452856.Spec : Prop :=
  ∀ n, P13788065453737452856.a n = A033052 n

theorem P13788065453737452856.correct : P13788065453737452856.Spec := by
  intro n
  simp only [A033052, Nat.add_sub_cancel, A033052.P13788065453737452856.a, A033052.P18311306593688986534.a, A000695, A000695.P14587171459336407380.a, A098871, A098871.P11206898626946488056.a, A145812, A145812.P7040268425871068342.f1, A145812.P7040268425871068342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033052

/-! ## A033052.P13049824540123340507

`A062880(A062880(n)/2)/2`
-/

namespace A033052.P13049824540123340507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 (SequenceMachineLib.roundAway ((A062880 n : ℚ) / 2)).toNat : ℚ) / 2

end

end A033052.P13049824540123340507

namespace A033052

/-- `A062880(A062880(n)/2)/2` -/
def P13049824540123340507.Spec : Prop :=
  ∀ n, P13049824540123340507.a n = (A033052 n : ℚ)

end A033052

/-! ## A033052.P4036308451900726115

`A001196(A001196(n)/3)/3`
-/

namespace A033052.P4036308451900726115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 (SequenceMachineLib.roundAway ((A001196 n : ℚ) / 3)).toNat : ℚ) / 3

end

end A033052.P4036308451900726115

namespace A033052

/-- `A001196(A001196(n)/3)/3` -/
def P4036308451900726115.Spec : Prop :=
  ∀ n, P4036308451900726115.a n = (A033052 n : ℚ)

end A033052

/-!
# A033053: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(i)=1 when i != m mod 2.

The programs for A033053, the canonical program `A033053.P7667902373871781944` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033053 has offset 1).

The definition of A033053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033053.P7667902373871781944

`∑[A079882(n)*A115716(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033053

/-- `∑[A079882(n)*A115716(n)]` -/
def P7667902373871781944.Spec : Prop :=
  ∀ n, P7667902373871781944.a n = A033053 (n + 1)

theorem P7667902373871781944.correct : P7667902373871781944.Spec := by
  intro n
  simp only [A033053, Nat.add_sub_cancel]

end A033053

/-! ## A033053.P3985951645753778307

`or(A032937(n+1), A317407(A028310(n)))`
-/

namespace A033053.P3985951645753778307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032937 (n + 1)) (A317407 (A028310 n).toNat)

end

end A033053.P3985951645753778307

namespace A033053

/-- `or(A032937(n+1), A317407(A028310(n)))` -/
def P3985951645753778307.Spec : Prop :=
  ∀ n, P3985951645753778307.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P4521924014032874886

`∑[Δ[A007378(n+2)]*A115716(n)]`
-/

namespace A033053.P4521924014032874886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033053.P4521924014032874886

namespace A033053

/-- `∑[Δ[A007378(n+2)]*A115716(n)]` -/
def P4521924014032874886.Spec : Prop :=
  ∀ n, P4521924014032874886.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P14494298402091749366

`∩[A032849(n+1), A280873(n)]`
-/

namespace A033053.P14494298402091749366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033053.P14494298402091749366

namespace A033053

/-- `∩[A032849(n+1), A280873(n)]` -/
def P14494298402091749366.Spec : Prop :=
  ∀ n, (P14494298402091749366.a n : ℤ) = A033053 (n + 1)

end A033053

/-! ## A033053.P15830838605865074691

`∩[A003754(n+1), A032849(n+1)]`
-/

namespace A033053.P15830838605865074691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033053.P15830838605865074691

namespace A033053

/-- `∩[A003754(n+1), A032849(n+1)]` -/
def P15830838605865074691.Spec : Prop :=
  ∀ n, (P15830838605865074691.a n : ℤ) = A033053 (n + 1)

end A033053

/-! ## A033053.P7143424985987024454

`∩[A032849(n+1), A107909(n)]`
-/

namespace A033053.P7143424985987024454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033053.P7143424985987024454

namespace A033053

/-- `∩[A032849(n+1), A107909(n)]` -/
def P7143424985987024454.Spec : Prop :=
  ∀ n, (P7143424985987024454.a n : ℤ) = A033053 (n + 1)

end A033053

/-! ## A033053.P7722196531839987860

`∩[A023705(n+1), A032849(n+1)]`
-/

namespace A033053.P7722196531839987860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033053.P7722196531839987860

namespace A033053

/-- `∩[A023705(n+1), A032849(n+1)]` -/
def P7722196531839987860.Spec : Prop :=
  ∀ n, (P7722196531839987860.a n : ℤ) = A033053 (n + 1)

end A033053

/-! ## A033053.P2996555304841931138

`record[A284120(A063946(n+1))]`
-/

namespace A033053.P2996555304841931138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (A063946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033053.P2996555304841931138

namespace A033053

/-- `record[A284120(A063946(n+1))]` -/
def P2996555304841931138.Spec : Prop :=
  ∀ n, P2996555304841931138.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P12000242995458558288

`record[A038572(A317407(n+1))]`
-/

namespace A033053.P12000242995458558288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A317407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033053.P12000242995458558288

namespace A033053

/-- `record[A038572(A317407(n+1))]` -/
def P12000242995458558288.Spec : Prop :=
  ∀ n, P12000242995458558288.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P2166559407511394217

`record[A184617(n+1)+A110654(n)]`
-/

namespace A033053.P2166559407511394217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (n + 1) + A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033053.P2166559407511394217

namespace A033053

/-- `record[A184617(n+1)+A110654(n)]` -/
def P2166559407511394217.Spec : Prop :=
  ∀ n, P2166559407511394217.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P14016196424965448853

`record[A258746(A054429(n+1))]`
-/

namespace A033053.P14016196424965448853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033053.P14016196424965448853

namespace A033053

/-- `record[A258746(A054429(n+1))]` -/
def P14016196424965448853.Spec : Prop :=
  ∀ n, P14016196424965448853.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P1177622628472371013

`a(n-1)+A000975(A007814(a(n-1)+1))+1` with `a(0)=1`
-/

namespace A033053.P1177622628472371013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000975 (A007814 (a (n - 1) + 1).toNat).toNat + 1)

end

end A033053.P1177622628472371013

namespace A033053

/-- `a(n-1)+A000975(A007814(a(n-1)+1))+1` -/
def P1177622628472371013.Spec : Prop :=
  ∀ n, P1177622628472371013.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P17971026274749890854

`record[A335858(A341915(n+1))]`
-/

namespace A033053.P17971026274749890854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A341915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033053.P17971026274749890854

namespace A033053

/-- `record[A335858(A341915(n+1))]` -/
def P17971026274749890854.Spec : Prop :=
  ∀ n, P17971026274749890854.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P743134309532429174

`A330090(A082662(n+2)-1)`
-/

namespace A033053.P743134309532429174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330090 (A082662 (n + 2) - 1).toNat

end

end A033053.P743134309532429174

namespace A033053

/-- `A330090(A082662(n+2)-1)` -/
def P743134309532429174.Spec : Prop :=
  ∀ n, P743134309532429174.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P13701893893615028901

`a(n-1)+A002264(A038712(a(n-1)+1))+1` with `a(0)=1`
-/

namespace A033053.P13701893893615028901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A002264 (A038712 (a (n - 1) + 1).toNat).toNat + 1)

end

end A033053.P13701893893615028901

namespace A033053

/-- `a(n-1)+A002264(A038712(a(n-1)+1))+1` -/
def P13701893893615028901.Spec : Prop :=
  ∀ n, P13701893893615028901.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P2180335989139333483

`A054238(∑[A079882(n)+n])`
-/

namespace A033053.P2180335989139333483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033053.P2180335989139333483

namespace A033053

/-- `A054238(∑[A079882(n)+n])` -/
def P2180335989139333483.Spec : Prop :=
  ∀ n, P2180335989139333483.a n = A033053 (n + 1)

end A033053

/-! ## A033053.P18326639663614238682

`a(n-1)+A008615(A088837(a(n-1)+1))+1` with `a(0)=1`
-/

namespace A033053.P18326639663614238682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008615 (A088837 (a (n - 1) + 1).toNat).toNat + 1)

end

end A033053.P18326639663614238682

namespace A033053

/-- `a(n-1)+A008615(A088837(a(n-1)+1))+1` -/
def P18326639663614238682.Spec : Prop :=
  ∀ n, P18326639663614238682.a n = A033053 (n + 1)

end A033053

/-!
# A033054: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^i has d(i)=1 for m-i odd.

The programs for A033054, there is no canonical definition to state claims against.
-/

/-! ## A033054.P14471927760408621175

`lt[∑[A195830(n+1)], A255066(n)]`
-/

namespace A033054.P14471927760408621175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195830 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A033054.P14471927760408621175

/-!
# A033057: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^i has odd d(m-i) for all odd i.

The programs for A033057, there is no canonical definition to state claims against.
-/

/-! ## A033057.P12245637961539911002

`A036606(A185294(n))+A004271(n)`
-/

namespace A033057.P12245637961539911002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036606 (A185294 n).toNat + A004271 n

end

end A033057.P12245637961539911002

/-! ## A033057.P7502941620066805902

`∑[A307797(A004255(A187183(n+1)))]`
-/

namespace A033057.P7502941620066805902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307797 (A004255 (A187183 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033057.P7502941620066805902

/-! ## A033057.P17791780987648430795

`∑[A280851(A196222(A109611(n+1)))]`
-/

namespace A033057.P17791780987648430795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280851 (A196222 (A109611 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033057.P17791780987648430795

/-! ## A033057.P12125339117733468085

`A004281(n)+5*A206499(A109611(n+1))`
-/

namespace A033057.P12125339117733468085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n + 5 * A206499 (A109611 (n + 1)).toNat

end

end A033057.P12125339117733468085

/-!
# A033058: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^i has odd d(m-i) for all odd i.

The programs for A033058, there is no canonical definition to state claims against.
-/

/-! ## A033058.P8948845833905323267

`lt[A298596(A171596(n)), 1]`
-/

namespace A033058.P8948845833905323267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298596 (A171596 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033058.P8948845833905323267

/-! ## A033058.P2281213398299600624

`lt[A022597(A171596(n)), A000132(n)]`
-/

namespace A033058.P2281213398299600624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 (A171596 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033058.P2281213398299600624

/-! ## A033058.P1335944234211392708

`lt[A184418(A007093(n)), A008486(n)]`
-/

namespace A033058.P1335944234211392708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033058.P1335944234211392708

/-! ## A033058.P6042531489363286543

`lt[A022597(A171596(n)), A008438(n)]`
-/

namespace A033058.P6042531489363286543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 (A171596 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033058.P6042531489363286543

/-! ## A033058.P2126793525468721702

`lt[A022597(A171596(n)), A153176(n)]`
-/

namespace A033058.P2126793525468721702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 (A171596 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033058.P2126793525468721702

/-!
# A033059: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^i has odd d(m-i) for all odd i.

The programs for A033059, there is no canonical definition to state claims against.
-/

/-! ## A033059.P12660902105927662587

`lt[n, a(n-2)+1]+1` with `a(0)=1, a(1)=4, a(2)=27`
-/

namespace A033059.P12660902105927662587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 27] fun n f2 =>
  f2 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033059.P12660902105927662587

/-! ## A033059.P8003212155668583382

`lt[A006803(n), sqrt(n)]`
-/

namespace A033059.P8003212155668583382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006803 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A033059.P8003212155668583382

/-! ## A033059.P608109205921034835

`lt[A006803(n+1), 2]+1`
-/

namespace A033059.P608109205921034835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006803 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A033059.P608109205921034835

/-! ## A033059.P2993987815820191262

`lt[abs(1-n), A040609(n)]+1`
-/

namespace A033059.P2993987815820191262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033059.P2993987815820191262

/-! ## A033059.P12291933303327257260

`(comp[2*n+7]+1)%A075051(n+1)`
-/

namespace A033059.P12291933303327257260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) (A075051 (n + 1))

end

end A033059.P12291933303327257260

/-!
# A033060: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^i has odd d(m-i) for all odd i.

The programs for A033060, there is no canonical definition to state claims against.
-/

/-! ## A033060.P4636878274276122635

`record[abs(1-A113218(n))]`
-/

namespace A033060.P4636878274276122635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A113218 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033060.P4636878274276122635

/-! ## A033060.P14528634468814316115

`record[A113218(n+2)-1]`
-/

namespace A033060.P14528634468814316115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033060.P14528634468814316115

/-! ## A033060.P4318657742811473202

`record[abs(A023443(A113218(n)))]`
-/

namespace A033060.P4318657742811473202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 (A113218 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033060.P4318657742811473202

/-! ## A033060.P11333021550028580431

`A023443(record[A113218(n+2)])`
-/

namespace A033060.P11333021550028580431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033060.P11333021550028580431

/-! ## A033060.P12840203970154698621

`A130734(record[A113218(n+2)])`
-/

namespace A033060.P12840203970154698621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033060.P12840203970154698621

/-!
# A033062: Numbers whose base-11 representation Sum_{i=0..m} d(i)*11^i has odd d(m-i) for all odd i.

The programs for A033062, there is no canonical definition to state claims against.
-/

/-! ## A033062.P5382363407039782503

`lt[A081362(A055649(n)), n]`
-/

namespace A033062.P5382363407039782503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (A055649 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033062.P5382363407039782503

/-! ## A033062.P726910905110883595

`lt[A027656(A055649(n+1)), n+2]+1`
-/

namespace A033062.P726910905110883595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A055649 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A033062.P726910905110883595

/-! ## A033062.P17862357931118515436

`lt[A027656(A055649(n)), A004273(n)]`
-/

namespace A033062.P17862357931118515436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033062.P17862357931118515436

/-! ## A033062.P8137422830955073789

`lt[A027656(A055649(n)), A005843(n)]`
-/

namespace A033062.P8137422830955073789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033062.P8137422830955073789

/-! ## A033062.P16544036624817632633

`lt[A027656(A055649(n)), A062028(n)]`
-/

namespace A033062.P16544036624817632633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033062.P16544036624817632633

/-! ## A033062.P11211677485143278219

`lt[A027656(A055649(n)), A109613(n)]`
-/

namespace A033062.P11211677485143278219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033062.P11211677485143278219

/-! ## A033062.P4798723640241815764

`lt[A142150(A055649(n)), A028901(n)]`
-/

namespace A033062.P4798723640241815764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033062.P4798723640241815764

/-! ## A033062.P7586504926890215568

`lt[A142150(A055649(n)), A028903(n)]`
-/

namespace A033062.P7586504926890215568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033062.P7586504926890215568

/-! ## A033062.P9147189808774877651

`lt[A027656(A055649(n)), A005117(n+1)]`
-/

namespace A033062.P9147189808774877651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033062.P9147189808774877651

/-! ## A033062.P14171469905103241763

`lt[A027656(A055649(n)), A000005(n+1)+n]`
-/

namespace A033062.P14171469905103241763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033062.P14171469905103241763

/-!
# A033063: Numbers whose base-12 representation Sum_{i=0..m} d(i)*12^i has odd d(m-i) for all odd i.

The programs for A033063, there is no canonical definition to state claims against.
-/

/-! ## A033063.P8305354755195862028

`lt[a(n-1)+val(n, 12), sqrt(n^(n%2))]` with `a(0)=1, a(1)=0`
-/

namespace A033063.P8305354755195862028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 12

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n ^ (n % 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A033063.P8305354755195862028

/-! ## A033063.P11740002068163692380

`lt[1, A165470(n)]`
-/

namespace A033063.P11740002068163692380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165470 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033063.P11740002068163692380

/-! ## A033063.P9892366114659628512

`lt[(n-1)^A134451(a(n-1)+2), a(n-1)+8]` with `a(0)=2`
-/

namespace A033063.P9892366114659628512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) ^ (A134451 (SequenceMachineLib.roundAway (f1 (n - 1) + 2)).toNat : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A033063.P9892366114659628512

/-! ## A033063.P14243362380707374029

`lt[A035457(A049872(n)), n]`
-/

namespace A033063.P14243362380707374029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A049872 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033063.P14243362380707374029

/-! ## A033063.P6162317659678966900

`lt[A002265(A350150(n+1)), n]`
-/

namespace A033063.P6162317659678966900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A350150 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033063.P6162317659678966900

/-! ## A033063.P11875088917762124326

`lt[A259774(n), log(A196485(n+1))]`
-/

namespace A033063.P11875088917762124326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259774 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A196485 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A033063.P11875088917762124326

/-! ## A033063.P1406893205588588524

`lt[A002265(A049872(n)), A001281(n)]`
-/

namespace A033063.P1406893205588588524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A049872 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033063.P1406893205588588524

/-! ## A033063.P15851883590008429587

`lt[A002265(A173382(n)), A001281(n)]`
-/

namespace A033063.P15851883590008429587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A173382 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033063.P15851883590008429587

/-! ## A033063.P3904283479641921733

`lt[A131795(n), A131813(A131832(n))]`
-/

namespace A033063.P3904283479641921733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131795 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131813 (A131832 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033063.P3904283479641921733

/-! ## A033063.P1702871945353520837

`lt[A132002(n), A266643(A056000(n))]`
-/

namespace A033063.P1702871945353520837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A056000 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033063.P1702871945353520837

/-!
# A033064: Numbers whose base-13 representation Sum_{i=0..m} d(i)*13^i has odd d(m-i) for all odd i.

The programs for A033064, there is no canonical definition to state claims against.
-/

/-! ## A033064.P1896999121337577240

`lt[A035363(A055648(n)), n]`
-/

namespace A033064.P1896999121337577240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A055648 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033064.P1896999121337577240

/-! ## A033064.P3250417691628083417

`lt[A001057(A055648(n)+1), n+1]`
-/

namespace A033064.P3250417691628083417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A055648 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033064.P3250417691628083417

/-! ## A033064.P4495439045907808627

`lt[A025480(A055648(n)), A005843(n)]`
-/

namespace A033064.P4495439045907808627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033064.P4495439045907808627

/-! ## A033064.P16090014852076179475

`lt[A025480(A055648(n)), A062545(n)]`
-/

namespace A033064.P16090014852076179475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033064.P16090014852076179475

/-! ## A033064.P63405101587422630

`lt[A027656(A055648(n))², A008458(n)]`
-/

namespace A033064.P63405101587422630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A055648 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033064.P63405101587422630

/-! ## A033064.P11541693492824258389

`lt[A266256(A055648(n)+1), A008458(n)]`
-/

namespace A033064.P11541693492824258389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033064.P11541693492824258389

/-! ## A033064.P17928944185797989807

`lt[A266256(A055648(n)+1), A008486(n)]`
-/

namespace A033064.P17928944185797989807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033064.P17928944185797989807

/-! ## A033064.P6092592360610264516

`lt[A266256(A055648(n)+1), A008574(n)]`
-/

namespace A033064.P6092592360610264516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033064.P6092592360610264516

/-! ## A033064.P3159705733152921738

`lt[A266256(A055648(n)+1), A016777(n)]`
-/

namespace A033064.P3159705733152921738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033064.P3159705733152921738

/-! ## A033064.P12879573221519742993

`lt[A266256(A055648(n)+1), A062545(n)]`
-/

namespace A033064.P12879573221519742993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033064.P12879573221519742993

/-!
# A033065: Numbers whose base-14 representation Sum_{i=0..m} d(i)*14^i has odd d(m-i) for all odd i.

The programs for A033065, the canonical program `A033065.P7680621435541464055` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033065 has offset 1).

The definition of A033065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033065.P7680621435541464055

`lt[n, a(n-2)+1]+1` with `a(0)=1, a(1)=7, a(2)=99`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033065

/-- `lt[n, a(n-2)+1]+1` -/
def P7680621435541464055.Spec : Prop :=
  ∀ n, (P7680621435541464055.a n : ℤ) = A033065 (n + 1)

theorem P7680621435541464055.correct : P7680621435541464055.Spec := by
  intro n
  simp only [A033065, Nat.add_sub_cancel]

end A033065

/-! ## A033065.P13906945370489415072

`lt[A024135(gcd(1-n, floor(n/2))), 16]+1`
-/

namespace A033065.P13906945370489415072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024135 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A033065.P13906945370489415072

namespace A033065

/-- `lt[A024135(gcd(1-n, floor(n/2))), 16]+1` -/
def P13906945370489415072.Spec : Prop :=
  ∀ n, (P13906945370489415072.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P13556073714660603961

`lt[floor(n/(n%2+1))²+4, A001359(n+1)]`
-/

namespace A033065.P13556073714660603961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ ^ 2 + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P13556073714660603961

namespace A033065

/-- `lt[floor(n/(n%2+1))²+4, A001359(n+1)]` -/
def P13556073714660603961.Spec : Prop :=
  ∀ n, (P13556073714660603961.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P14871523410327458246

`lt[A142150(A055647(n)), n]`
-/

namespace A033065.P14871523410327458246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A055647 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033065.P14871523410327458246

namespace A033065

/-- `lt[A142150(A055647(n)), n]` -/
def P14871523410327458246.Spec : Prop :=
  ∀ n, (P14871523410327458246.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P15918816349484771189

`lt[A325110(n), A272007(n)]`
-/

namespace A033065.P15918816349484771189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P15918816349484771189

namespace A033065

/-- `lt[A325110(n), A272007(n)]` -/
def P15918816349484771189.Spec : Prop :=
  ∀ n, (P15918816349484771189.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P1057269719089935454

`lt[A027868(A055647(n)), A001281(n)]`
-/

namespace A033065.P1057269719089935454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A055647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P1057269719089935454

namespace A033065

/-- `lt[A027868(A055647(n)), A001281(n)]` -/
def P1057269719089935454.Spec : Prop :=
  ∀ n, (P1057269719089935454.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P12582195680427823371

`lt[A046779(n), A048766(2*A057520(n))]`
-/

namespace A033065.P12582195680427823371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * A057520 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P12582195680427823371

namespace A033065

/-- `lt[A046779(n), A048766(2*A057520(n))]` -/
def P12582195680427823371.Spec : Prop :=
  ∀ n, (P12582195680427823371.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P1403730241240203782

`lt[A046779(n), A048766(A194045(n)/2)]`
-/

namespace A033065.P1403730241240203782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P1403730241240203782

namespace A033065

/-- `lt[A046779(n), A048766(A194045(n)/2)]` -/
def P1403730241240203782.Spec : Prop :=
  ∀ n, (P1403730241240203782.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P9502617293788109454

`lt[A049623(A049641(n)), A049633(n)]`
-/

namespace A033065.P9502617293788109454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049623 (A049641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P9502617293788109454

namespace A033065

/-- `lt[A049623(A049641(n)), A049633(n)]` -/
def P9502617293788109454.Spec : Prop :=
  ∀ n, (P9502617293788109454.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P18266531987908252627

`lt[A049623(A049641(n)), A049634(n)]`
-/

namespace A033065.P18266531987908252627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049623 (A049641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P18266531987908252627

namespace A033065

/-- `lt[A049623(A049641(n)), A049634(n)]` -/
def P18266531987908252627.Spec : Prop :=
  ∀ n, (P18266531987908252627.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P5639104894992109178

`lt[A049623(A049641(n)), A049635(n)]`
-/

namespace A033065.P5639104894992109178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049623 (A049641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P5639104894992109178

namespace A033065

/-- `lt[A049623(A049641(n)), A049635(n)]` -/
def P5639104894992109178.Spec : Prop :=
  ∀ n, (P5639104894992109178.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P14778357916112689316

`lt[A008906(n*gcd(2, n)), A000201(n+1)]`
-/

namespace A033065.P14778357916112689316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008906 (n * Nat.gcd 2 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P14778357916112689316

namespace A033065

/-- `lt[A008906(n*gcd(2, n)), A000201(n+1)]` -/
def P14778357916112689316.Spec : Prop :=
  ∀ n, (P14778357916112689316.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P4706149616427581741

`lt[(n/(n%2+1))²+4, A001359(n+1)]`
-/

namespace A033065.P4706149616427581741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)) ^ 2 + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A033065.P4706149616427581741

namespace A033065

/-- `lt[(n/(n%2+1))²+4, A001359(n+1)]` -/
def P4706149616427581741.Spec : Prop :=
  ∀ n, (P4706149616427581741.a n : ℤ) = A033065 (n + 1)

end A033065

/-! ## A033065.P12847393536740866071

`record[A032742(n+1)%A238984(n)-(2-C(2, n+1))]`
-/

namespace A033065.P12847393536740866071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (n + 1)) (A238984 n) - (2 - (Nat.choose 2 (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033065.P12847393536740866071

namespace A033065

/-- `record[A032742(n+1)%A238984(n)-(2-C(2, n+1))]` -/
def P12847393536740866071.Spec : Prop :=
  ∀ n, P12847393536740866071.a n = A033065 (n + 1)

end A033065

/-! ## A033065.P12630895317825777040

`lt[A035363(n), A000194(A005384(n+1))]`
-/

namespace A033065.P12630895317825777040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A005384 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033065.P12630895317825777040

namespace A033065

/-- `lt[A035363(n), A000194(A005384(n+1))]` -/
def P12630895317825777040.Spec : Prop :=
  ∀ n, (P12630895317825777040.a n : ℤ) = A033065 (n + 1)

end A033065

/-!
# A033066: Numbers whose base-15 representation Sum_{i=0..m} d(i)*15^i has odd d(m-i) for all odd i.

The programs for A033066, there is no canonical definition to state claims against.
-/

/-! ## A033066.P2787881672759058911

`lt[A142150(A055646(n)), n]`
-/

namespace A033066.P2787881672759058911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A055646 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033066.P2787881672759058911

/-! ## A033066.P4378492769536212650

`lt[A152271(A055646(n)+1), n+1]`
-/

namespace A033066.P4378492769536212650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055646 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033066.P4378492769536212650

/-! ## A033066.P10113974407485937679

`lt[A110514(A055646(n)), A005843(n)]`
-/

namespace A033066.P10113974407485937679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P10113974407485937679

/-! ## A033066.P14916107622843351845

`lt[A158416(A055646(n)), A004277(n)]`
-/

namespace A033066.P14916107622843351845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P14916107622843351845

/-! ## A033066.P631653310168211198

`lt[A029306(n), A266593(A055646(n))]`
-/

namespace A033066.P631653310168211198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 (A055646 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P631653310168211198

/-! ## A033066.P2371432239584702471

`lt[A272812(n), A272825(A055646(n))]`
-/

namespace A033066.P2371432239584702471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272825 (A055646 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P2371432239584702471

/-! ## A033066.P17943362376897380303

`lt[A014682(A055646(n)+1), A008586(n)]`
-/

namespace A033066.P17943362376897380303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A055646 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P17943362376897380303

/-! ## A033066.P4584315055091385511

`lt[A046675(A055646(n)), A000005(n+1)]`
-/

namespace A033066.P4584315055091385511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P4584315055091385511

/-! ## A033066.P13578629388998676108

`lt[A046675(A055646(n)), A001222(n+1)]`
-/

namespace A033066.P13578629388998676108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P13578629388998676108

/-! ## A033066.P17530373624087552772

`lt[A046675(A055646(n)), A020639(n+1)]`
-/

namespace A033066.P17530373624087552772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P17530373624087552772

/-! ## A033066.P2317512872259750620

`lt[A158416(A055646(n)), A032965(n+1)]`
-/

namespace A033066.P2317512872259750620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P2317512872259750620

/-! ## A033066.P6616734670445423014

`lt[A158416(A055646(n)), A158416(2*n)]`
-/

namespace A033066.P6616734670445423014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P6616734670445423014

/-! ## A033066.P12167105354605506836

`lt[A158416(A055646(n)), A158416(n)+n]`
-/

namespace A033066.P12167105354605506836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P12167105354605506836

/-! ## A033066.P2177022127657242014

`lt[A272825(n), A272825(A055646(n))+n]`
-/

namespace A033066.P2177022127657242014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272825 (A055646 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P2177022127657242014

/-! ## A033066.P5533600277756990004

`lt[A110514(A055646(n))-n, A110514(n)]`
-/

namespace A033066.P5533600277756990004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A055646 n).toNat - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033066.P5533600277756990004

/-!
# A033067: Numbers whose base-16 representation Sum_{i=0..m} d(i)*16^i has odd d(m-i) for all odd i.

The programs for A033067, the canonical program `A033067.P7820946899976347155` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033067 has offset 1).

The definition of A033067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033067.P11329573152147525024

`lt[log2(n+1)/gcd(2, n)-2, 2]+1`
-/

namespace A033067.P11329573152147525024
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ) / (Nat.gcd 2 n : ℝ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A033067.P11329573152147525024

namespace A033067

/-- `lt[log2(n+1)/gcd(2, n)-2, 2]+1` -/
def P11329573152147525024.Spec : Prop :=
  ∀ n, (P11329573152147525024.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P14587364753887459011

`lt[A139250(gcd(n²-n, and(1, n))+2*n), (2*n)^3]`
-/

namespace A033067.P14587364753887459011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (Int.gcd ((n ^ 2 : ℤ) - (n : ℤ)) (Nat.land 1 n : ℤ) + 2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033067.P14587364753887459011

namespace A033067

/-- `lt[A139250(gcd(n²-n, and(1, n))+2*n), (2*n)^3]` -/
def P14587364753887459011.Spec : Prop :=
  ∀ n, (P14587364753887459011.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P2026669710385999710

`lt[A130472(A055645(n)), n]`
-/

namespace A033067.P2026669710385999710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A055645 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033067.P2026669710385999710

namespace A033067

/-- `lt[A130472(A055645(n)), n]` -/
def P2026669710385999710.Spec : Prop :=
  ∀ n, (P2026669710385999710.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P10136813917246071608

`lt[A035550(n), A160800(n)]`
-/

namespace A033067.P10136813917246071608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P10136813917246071608

namespace A033067

/-- `lt[A035550(n), A160800(n)]` -/
def P10136813917246071608.Spec : Prop :=
  ∀ n, (P10136813917246071608.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P7372196872071716845

`lt[A035550(n), A160802(n)]`
-/

namespace A033067.P7372196872071716845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P7372196872071716845

namespace A033067

/-- `lt[A035550(n), A160802(n)]` -/
def P7372196872071716845.Spec : Prop :=
  ∀ n, (P7372196872071716845.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P11594950667113887687

`lt[A035457(n)², A217558(n)]`
-/

namespace A033067.P11594950667113887687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P11594950667113887687

namespace A033067

/-- `lt[A035457(n)², A217558(n)]` -/
def P11594950667113887687.Spec : Prop :=
  ∀ n, (P11594950667113887687.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P4754488838080029868

`lt[A038608(n), sqrt(A217558(n))]`
-/

namespace A033067.P4754488838080029868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A217558 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A033067.P4754488838080029868

namespace A033067

/-- `lt[A038608(n), sqrt(A217558(n))]` -/
def P4754488838080029868.Spec : Prop :=
  ∀ n, (P4754488838080029868.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P899539900579373613

`lt[A002265(A055645(n)), A001281(n)]`
-/

namespace A033067.P899539900579373613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A055645 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P899539900579373613

namespace A033067

/-- `lt[A002265(A055645(n)), A001281(n)]` -/
def P899539900579373613.Spec : Prop :=
  ∀ n, (P899539900579373613.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P14793562845716202437

`lt[A106507(n), A007494(A106485(n))]`
-/

namespace A033067.P14793562845716202437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A106485 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P14793562845716202437

namespace A033067

/-- `lt[A106507(n), A007494(A106485(n))]` -/
def P14793562845716202437.Spec : Prop :=
  ∀ n, (P14793562845716202437.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P11538372713834194935

`lt[A035457(A008486(n)), A217558(n)]`
-/

namespace A033067.P11538372713834194935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P11538372713834194935

namespace A033067

/-- `lt[A035457(A008486(n)), A217558(n)]` -/
def P11538372713834194935.Spec : Prop :=
  ∀ n, (P11538372713834194935.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P11748129678410354055

`lt[A237420(A055645(n)), A004273(n)]`
-/

namespace A033067.P11748129678410354055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A055645 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P11748129678410354055

namespace A033067

/-- `lt[A237420(A055645(n)), A004273(n)]` -/
def P11748129678410354055.Spec : Prop :=
  ∀ n, (P11748129678410354055.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P13558637610818223766

`lt[A267354(A055645(n)), A005843(n)]`
-/

namespace A033067.P13558637610818223766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (A055645 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P13558637610818223766

namespace A033067

/-- `lt[A267354(A055645(n)), A005843(n)]` -/
def P13558637610818223766.Spec : Prop :=
  ∀ n, (P13558637610818223766.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P1301889624844254275

`lt[A000041(A141310(n)), A217558(n)]`
-/

namespace A033067.P1301889624844254275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A141310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P1301889624844254275

namespace A033067

/-- `lt[A000041(A141310(n)), A217558(n)]` -/
def P1301889624844254275.Spec : Prop :=
  ∀ n, (P1301889624844254275.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P5517601507283671066

`lt[A267354(A055645(n)), A217558(n)]`
-/

namespace A033067.P5517601507283671066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (A055645 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P5517601507283671066

namespace A033067

/-- `lt[A267354(A055645(n)), A217558(n)]` -/
def P5517601507283671066.Spec : Prop :=
  ∀ n, (P5517601507283671066.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P7820946899976347155

`lt[A311356(A267354(n)), A217558(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A033067

/-- `lt[A311356(A267354(n)), A217558(n)]` -/
def P7820946899976347155.Spec : Prop :=
  ∀ n, (P7820946899976347155.a n : ℤ) = A033067 (n + 1)

theorem P7820946899976347155.correct : P7820946899976347155.Spec := by
  intro n
  simp only [A033067, Nat.add_sub_cancel]

end A033067

/-! ## A033067.P12808311727461699855

`eq[A082460(n+1), A118083(A082460(n+1))]`
-/

namespace A033067.P12808311727461699855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118083 (A082460 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033067.P12808311727461699855

namespace A033067

/-- `eq[A082460(n+1), A118083(A082460(n+1))]` -/
def P12808311727461699855.Spec : Prop :=
  ∀ n, (P12808311727461699855.a n : ℤ) = A033067 (n + 1)

end A033067

/-! ## A033067.P14888566773647221408

`lt[(-3)^n, (2*n)^5]`
-/

namespace A033067.P14888566773647221408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033067.P14888566773647221408

namespace A033067

/-- `lt[(-3)^n, (2*n)^5]` -/
def P14888566773647221408.Spec : Prop :=
  ∀ n, (P14888566773647221408.a n : ℤ) = A033067 (n + 1)

end A033067

/-!
# A033068: Numbers with the property that all pairs of consecutive base-3 digits differ by 1.

The programs for A033068, there is no canonical definition to state claims against.
-/

/-! ## A033068.P13151759415304041877

`∩[A122975(n+1), A043089(n)]`
-/

namespace A033068.P13151759415304041877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033068.P13151759415304041877

/-! ## A033068.P13740232711245237506

`∩[A031941(n+1), A122975(n+1)]`
-/

namespace A033068.P13740232711245237506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033068.P13740232711245237506

/-! ## A033068.P704728269070033341

`∩[A122975(n+1), A384314(n+1)]`
-/

namespace A033068.P704728269070033341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033068.P704728269070033341

/-! ## A033068.P15555256513447093999

`∩[A032974(n+1), A043089(n)]`
-/

namespace A033068.P15555256513447093999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033068.P15555256513447093999

/-! ## A033068.P15050277726586128465

`∩[A031941(n+1), A032974(n+1)]`
-/

namespace A033068.P15050277726586128465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033068.P15050277726586128465

/-!
# A033069: Numbers with the property that all pairs of consecutive base-4 digits differ by 1.

The programs for A033069, there is no canonical definition to state claims against.
-/

/-! ## A033069.P8594747508904386004

`∩[A032975(n+1), A179970(n+1)]`
-/

namespace A033069.P8594747508904386004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033069.P8594747508904386004

/-! ## A033069.P15909838013905094133

`∩[A032975(n+1), A043090(n)]`
-/

namespace A033069.P15909838013905094133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033069.P15909838013905094133

/-! ## A033069.P8681903050016655303

`∩[A031942(n+1), A032975(n+1)]`
-/

namespace A033069.P8681903050016655303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033069.P8681903050016655303

/-!
# A033070: Numbers with the property that all pairs of consecutive base-5 digits differ by 1.

The programs for A033070, there is no canonical definition to state claims against.
-/

/-! ## A033070.P16847537702237386501

`∩[A032976(n+1), A043091(n)]`
-/

namespace A033070.P16847537702237386501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033070.P16847537702237386501

/-! ## A033070.P12432526650412283347

`∩[A031943(n+1), A032976(n+1)]`
-/

namespace A033070.P12432526650412283347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033070.P12432526650412283347

/-!
# A033071: Numbers with the property that all pairs of consecutive base-6 digits differ by 1.

The programs for A033071, there is no canonical definition to state claims against.
-/

/-! ## A033071.P6269308824422824050

`∩[A032977(n+1), A043092(n+1)]`
-/

namespace A033071.P6269308824422824050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033071.P6269308824422824050

/-! ## A033071.P8457512859498943459

`eq[A165052(n), A185116(n)]`
-/

namespace A033071.P8457512859498943459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033071.P8457512859498943459

/-! ## A033071.P12163679301021278018

`∑[A239030(A080918(2^n))]`
-/

namespace A033071.P12163679301021278018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A080918 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033071.P12163679301021278018

/-!
# A033072: Numbers with the property that all pairs of consecutive base-7 digits differ by 1.

The programs for A033072, there is no canonical definition to state claims against.
-/

/-! ## A033072.P5052966292310632057

`∩[A032978(n+1), A043093(n)]`
-/

namespace A033072.P5052966292310632057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033072.P5052966292310632057

/-! ## A033072.P1986492957833539770

`eq[A165072(n), A185117(n)]`
-/

namespace A033072.P1986492957833539770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165072 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033072.P1986492957833539770

/-! ## A033072.P8570674742661666869

`eq[6*A185117(n), A165071(n)]`
-/

namespace A033072.P8570674742661666869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A185117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033072.P8570674742661666869

/-! ## A033072.P342475079101899651

`eq[A002265(A165071(n)), A185117(n)]`
-/

namespace A033072.P342475079101899651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165071 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033072.P342475079101899651

/-! ## A033072.P16310017213137835360

`lt[A001281(A130519(n+1)), A001281(n)]`
-/

namespace A033072.P16310017213137835360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A130519 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033072.P16310017213137835360

/-!
# A033073: Numbers with the property that all pairs of consecutive base-8 digits differ by 1.

The programs for A033073, there is no canonical definition to state claims against.
-/

/-! ## A033073.P3560647247259642471

`∩[A032979(n+1), A043094(n)]`
-/

namespace A033073.P3560647247259642471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033073.P3560647247259642471

/-! ## A033073.P4375840736953935894

`eq[A165091(n), A185118(n)]`
-/

namespace A033073.P4375840736953935894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033073.P4375840736953935894

/-! ## A033073.P11666957709438435074

`eq[A002865(A048766(n)), A165091(n)]`
-/

namespace A033073.P11666957709438435074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A048766 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033073.P11666957709438435074

/-! ## A033073.P2499697708481065428

`eq[A017867(A048762(n)), A165091(n)]`
-/

namespace A033073.P2499697708481065428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (A048762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033073.P2499697708481065428

/-! ## A033073.P17664152328000556366

`eq[A002265(A165090(n)), A185118(n)]`
-/

namespace A033073.P17664152328000556366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165090 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033073.P17664152328000556366

/-!
# A033074: Numbers with the property that all pairs of consecutive base-9 digits differ by 1.

The programs for A033074, there is no canonical definition to state claims against.
-/

/-! ## A033074.P17160031838062638407

`∩[A032980(n+1), A043095(n+1)]`
-/

namespace A033074.P17160031838062638407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033074.P17160031838062638407

/-! ## A033074.P1489006605929012176

`eq[A165111(n), A185119(n)]`
-/

namespace A033074.P1489006605929012176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033074.P1489006605929012176

/-! ## A033074.P13790197490664643547

`eq[A165111(n)!, A040790(n)]`
-/

namespace A033074.P13790197490664643547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A165111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033074.P13790197490664643547

/-! ## A033074.P17519321500346281056

`eq[A165111(n)!, A168046(n)]`
-/

namespace A033074.P17519321500346281056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A165111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033074.P17519321500346281056

/-! ## A033074.P199370909342286817

`eq[A165111(n)!, A168184(n)]`
-/

namespace A033074.P199370909342286817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A165111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033074.P199370909342286817

/-!
# A033075: Positive numbers all of whose pairs of consecutive decimal digits differ by 1.

The programs for A033075, there is no canonical definition to state claims against.
-/

/-! ## A033075.P1350924734920095515

`∩[A030141(n+1), A032981(n+1)]`
-/

namespace A033075.P1350924734920095515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033075.P1350924734920095515

/-! ## A033075.P13227642153563698535

`∩[A032981(n+1), A043096(n+1)]`
-/

namespace A033075.P13227642153563698535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033075.P13227642153563698535

/-! ## A033075.P8502784547134464610

`record[A321801(A032981(n+1))]`
-/

namespace A033075.P8502784547134464610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (A032981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033075.P8502784547134464610

/-! ## A033075.P4771652822376432473

`filter[A032981(n+1), A196368(#)]`
-/

namespace A033075.P4771652822376432473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A033075.P4771652822376432473

/-! ## A033075.P13519944877083138684

`filter[A032981(n+1), A228710(#)]`
-/

namespace A033075.P13519944877083138684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A033075.P13519944877083138684

/-! ## A033075.P16469634432161341317

`∩[A032981(n+1), A357142(n+1)]`
-/

namespace A033075.P16469634432161341317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033075.P16469634432161341317

/-!
# A033076: Numbers in which all pairs of consecutive base-5 digits differ by 3.

The programs for A033076, there is no canonical definition to state claims against.
-/

/-! ## A033076.P3215972577470316838

`filter[A032982(n+1), A330887(#)]`
-/

namespace A033076.P3215972577470316838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A330887 (f1 j).toNat = 1) n)

end

end A033076.P3215972577470316838

/-! ## A033076.P2893042953130150403

`A032982(A140642(n)^A128936(n+1))`
-/

namespace A033076.P2893042953130150403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032982 (SequenceMachineLib.roundAway ((A140642 n : ℚ) ^ (A128936 (n + 1) : ℤ))).toNat

end

end A033076.P2893042953130150403

/-! ## A033076.P379189273466589480

`A325368(A342522(A342522(A342520(2*n+1))))`
-/

namespace A033076.P379189273466589480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A342522 (A342522 (A342520 (2 * n + 1)).toNat).toNat).toNat

end

end A033076.P379189273466589480

/-!
# A033077: Numbers in which all pairs of consecutive base-6 digits differ by 3.

The programs for A033077, there is no canonical definition to state claims against.
-/

/-! ## A033077.P12606739813985943971

`∑[gcd(35, A159114(n+6))]`
-/

namespace A033077.P12606739813985943971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 35 (A159114 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033077.P12606739813985943971

/-! ## A033077.P1447957523512824694

`∑[A281680(A080040(n))]`
-/

namespace A033077.P1447957523512824694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A080040 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033077.P1447957523512824694

/-! ## A033077.P9503610375406663352

`∑[dr(A293712(A006721(n)))]`
-/

namespace A033077.P9503610375406663352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A293712 (A006721 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033077.P9503610375406663352

/-! ## A033077.P10481605938197035438

`∑[A200370(∑[A329749(n)])]`
-/

namespace A033077.P10481605938197035438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033077.P10481605938197035438

/-! ## A033077.P257869830086319237

`∑[A281680(Δ[A108898(n)])]`
-/

namespace A033077.P257869830086319237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033077.P257869830086319237

/-!
# A033078: Numbers in which all pairs of consecutive base-7 digits differ by 3.

The programs for A033078, there is no canonical definition to state claims against.
-/

/-! ## A033078.P3867916995975987588

`eq[3*A185117(n), A165072(n)]`
-/

namespace A033078.P3867916995975987588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A185117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033078.P3867916995975987588

/-! ## A033078.P18085734450076808936

`eq[A007814(A353456(3*n+4)), A353461(n+1)]`
-/

namespace A033078.P18085734450076808936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A353456 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033078.P18085734450076808936

/-!
# A033079: Numbers in which all pairs of consecutive base-8 digits differ by 3.

The programs for A033079, there is no canonical definition to state claims against.
-/

/-! ## A033079.P2721953279859705329

`eq[A000196(A095777(n+1)), A165091(n)]`
-/

namespace A033079.P2721953279859705329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A095777 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033079.P2721953279859705329

/-! ## A033079.P15475578043480767076

`record[lcm(A055401(n), A260453(n+1))]`
-/

namespace A033079.P15475578043480767076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055401 n) (A260453 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033079.P15475578043480767076

/-! ## A033079.P1302692544599752863

`lt[A077218(A059329(n)), 12]`
-/

namespace A033079.P1302692544599752863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077218 (A059329 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033079.P1302692544599752863

/-!
# A033080: Numbers in which all pairs of consecutive base-9 digits differ by 3.

The programs for A033080, there is no canonical definition to state claims against.
-/

/-! ## A033080.P10580663076414049912

`eq[3*A185119(n), A165111(n)]`
-/

namespace A033080.P10580663076414049912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A185119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033080.P10580663076414049912

/-! ## A033080.P14561360115837211970

`eq[1, xor(A165111(n), A215887(n))]`
-/

namespace A033080.P14561360115837211970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165111 n) (A215887 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033080.P14561360115837211970

/-! ## A033080.P9031240317931995417

`eq[A008437(A165111(n)), A185119(n)]`
-/

namespace A033080.P9031240317931995417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (A165111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033080.P9031240317931995417

/-! ## A033080.P3681726435490300442

`eq[A004442(A165111(n)), A215887(n)]`
-/

namespace A033080.P3681726435490300442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A165111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033080.P3681726435490300442

/-! ## A033080.P7472153209317531276

`eq[A002266(A165111(n)²), A185119(n)]`
-/

namespace A033080.P7472153209317531276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A165111 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033080.P7472153209317531276

/-!
# A033081: Numbers in which all pairs of consecutive base-10 digits differ by 3.

The programs for A033081, there is no canonical definition to state claims against.
-/

/-! ## A033081.P2148627480642136762

`eq[A151950(n)+1, A004218(n+1)²]`
-/

namespace A033081.P2148627480642136762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033081.P2148627480642136762

/-! ## A033081.P16758433644409273387

`eq[A347689(n)+1, A004218(n+1)²]`
-/

namespace A033081.P16758433644409273387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033081.P16758433644409273387

/-! ## A033081.P14291016052203854048

`eq[A004218(n+1), A097545(A151950(n))]`
-/

namespace A033081.P14291016052203854048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097545 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033081.P14291016052203854048

/-! ## A033081.P10461937610301108841

`eq[A004218(n+1), A097545(A347689(n))]`
-/

namespace A033081.P10461937610301108841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097545 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033081.P10461937610301108841

/-! ## A033081.P676713112828639773

`∩[A061379(n+1), A176526(n+1)]`
-/

namespace A033081.P676713112828639773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033081.P676713112828639773

/-!
# A033082: Numbers in which all pairs of consecutive base-4 digits differ by 2.

The programs for A033082, the canonical program `A033082.P9767311256148004922` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033082 has offset 1).

The definition of A033082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033082.P9767311256148004922

`4*a(n-3)+a(n-6)-4*a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=8, a(5)=13, a(6)=29, a(7)=34, a(8)=55`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033082

/-- `4*a(n-3)+a(n-6)-4*a(n-9)` -/
def P9767311256148004922.Spec : Prop :=
  ∀ n, P9767311256148004922.a n = A033082 (n + 1)

theorem P9767311256148004922.correct : P9767311256148004922.Spec := by
  intro n
  simp only [A033082, Nat.add_sub_cancel]

end A033082

/-! ## A033082.P4642251557121234719

`∩[A032967(n+1), A107909(n)]`
-/

namespace A033082.P4642251557121234719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033082.P4642251557121234719

namespace A033082

/-- `∩[A032967(n+1), A107909(n)]` -/
def P4642251557121234719.Spec : Prop :=
  ∀ n, (P4642251557121234719.a n : ℤ) = A033082 (n + 1)

end A033082

/-! ## A033082.P6361883287145776781

`∩[A032967(n+1), A089190(n+1)]`
-/

namespace A033082.P6361883287145776781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033082.P6361883287145776781

namespace A033082

/-- `∩[A032967(n+1), A089190(n+1)]` -/
def P6361883287145776781.Spec : Prop :=
  ∀ n, (P6361883287145776781.a n : ℤ) = A033082 (n + 1)

end A033082

/-! ## A033082.P13810819248604261833

`record[A349550(A301690(n))]`
-/

namespace A033082.P13810819248604261833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349550 (A301690 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033082.P13810819248604261833

namespace A033082

/-- `record[A349550(A301690(n))]` -/
def P13810819248604261833.Spec : Prop :=
  ∀ n, P13810819248604261833.a n = A033082 (n + 1)

end A033082

/-! ## A033082.P4521476022472425633

`∩[A032967(n+1), A116470(n)]`
-/

namespace A033082.P4521476022472425633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033082.P4521476022472425633

namespace A033082

/-- `∩[A032967(n+1), A116470(n)]` -/
def P4521476022472425633.Spec : Prop :=
  ∀ n, (P4521476022472425633.a n : ℤ) = A033082 (n + 1)

end A033082

/-!
# A033084: Numbers in which all pairs of consecutive base-6 digits differ by 2.

The programs for A033084, there is no canonical definition to state claims against.
-/

/-! ## A033084.P10300587743014921721

`eq[2*A185116(n), A165052(n)]`
-/

namespace A033084.P10300587743014921721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033084.P10300587743014921721

/-! ## A033084.P10861641754071174454

`lt[A217109(n), C(A285503(2*(n+1)), n²%7)]`
-/

namespace A033084.P10861641754071174454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217109 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285503 (2 * (n + 1))).toNat (n ^ 2 % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A033084.P10861641754071174454

/-!
# A033085: Numbers in which all pairs of consecutive base-7 digits differ by 2.

The programs for A033085, there is no canonical definition to state claims against.
-/

/-! ## A033085.P6014112844059029339

`eq[2*A185117(n), A165072(n)]`
-/

namespace A033085.P6014112844059029339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033085.P6014112844059029339

/-! ## A033085.P2171445170602385939

`∑[∑[A095141(A195047(3*n+4))]]`
-/

namespace A033085.P2171445170602385939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095141 (A195047 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033085.P2171445170602385939

/-! ## A033085.P15167243520017736593

`∑[gcd(A038036(2*(n+1)), A336103(n))]`
-/

namespace A033085.P15167243520017736593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038036 (2 * (n + 1))) (A336103 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033085.P15167243520017736593

/-! ## A033085.P3679599559901583938

`∑[A018252(A000120(A102456(n)))]`
-/

namespace A033085.P3679599559901583938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000120 (A102456 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033085.P3679599559901583938

/-! ## A033085.P9333573943833506220

`∑[A000005(A101515(A315277(n)))]`
-/

namespace A033085.P9333573943833506220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A101515 (A315277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033085.P9333573943833506220

/-!
# A033086: Numbers in which all pairs of consecutive base-8 digits differ by 2.

The programs for A033086, there is no canonical definition to state claims against.
-/

/-! ## A033086.P11045570281913774825

`eq[2*A185118(n), A165091(n)]`
-/

namespace A033086.P11045570281913774825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033086.P11045570281913774825

/-! ## A033086.P14727481020051340634

`eq[A005128(A048766(n)), A165091(n)]`
-/

namespace A033086.P14727481020051340634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A048766 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033086.P14727481020051340634

/-! ## A033086.P2461041830035522017

`eq[A022559(A165091(n)), A185118(n)]`
-/

namespace A033086.P2461041830035522017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A165091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033086.P2461041830035522017

/-! ## A033086.P10521438909225910377

`eq[A002265(A165091(n)²), A185118(n)]`
-/

namespace A033086.P10521438909225910377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165091 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033086.P10521438909225910377

/-! ## A033086.P8867013407039302313

`eq[2*A017867(A048762(n)), A165091(n)]`
-/

namespace A033086.P8867013407039302313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017867 (A048762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033086.P8867013407039302313

/-!
# A033087: Numbers in which all pairs of consecutive base-9 digits differ by 2.

The programs for A033087, there is no canonical definition to state claims against.
-/

/-! ## A033087.P18267096944385062838

`eq[A165111(n)+1, A344511(n)]`
-/

namespace A033087.P18267096944385062838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033087.P18267096944385062838

/-! ## A033087.P15520023223513064585

`eq[2*A185119(n), A165111(n)]`
-/

namespace A033087.P15520023223513064585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033087.P15520023223513064585

/-! ## A033087.P4578790048639881182

`eq[16*A185119(n), A165110(n)]`
-/

namespace A033087.P4578790048639881182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A185119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033087.P4578790048639881182

/-! ## A033087.P17099881325147209901

`eq[A002251(A165111(n)), A185119(n)]`
-/

namespace A033087.P17099881325147209901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A165111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033087.P17099881325147209901

/-! ## A033087.P7375459449119988941

`eq[A001222(A165111(n)!), A185119(n)]`
-/

namespace A033087.P7375459449119988941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A165111 n).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033087.P7375459449119988941

/-!
# A033088: Numbers in which all pairs of consecutive digits differ by 2.

The programs for A033088, there is no canonical definition to state claims against.
-/

/-! ## A033088.P16751559467411829059

`eq[abs(A307651(n)), A004218(n+1)]`
-/

namespace A033088.P16751559467411829059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307651 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033088.P16751559467411829059

/-! ## A033088.P5110399484402944459

`eq[A064834(n)!, A004218(n+1)]`
-/

namespace A033088.P5110399484402944459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A064834 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033088.P5110399484402944459

/-! ## A033088.P3097818170450652818

`eq[A151950(n)!, A004218(n+1)]`
-/

namespace A033088.P3097818170450652818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A151950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033088.P3097818170450652818

/-! ## A033088.P2406817763961442574

`eq[A347689(n)!, A004218(n+1)]`
-/

namespace A033088.P2406817763961442574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033088.P2406817763961442574

/-! ## A033088.P13894392620197308228

`eq[A008616(A123895(n)), A064834(n)]`
-/

namespace A033088.P13894392620197308228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A123895 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033088.P13894392620197308228

/-!
# A033089: Incrementally largest terms in the continued fraction for Pi.

The programs for A033089, there is no canonical definition to state claims against.
-/

/-! ## A033089.P17558181100153260861

`abs(2-A007541(n+1))+2`
-/

namespace A033089.P17558181100153260861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A007541 (n + 1)| + 2

end

end A033089.P17558181100153260861

/-! ## A033089.P4725130252452875087

`A007541((n+1)%a(n-1))` with `a(0)=3`
-/

namespace A033089.P4725130252452875087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007541 (Int.tmod (n + 1 : ℤ) (a (n - 1))).toNat

end

end A033089.P4725130252452875087

/-! ## A033089.P3029931806142783171

`A007541(n+1)+A000038(n)`
-/

namespace A033089.P3029931806142783171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007541 (n + 1) + A000038 n

end

end A033089.P3029931806142783171

/-! ## A033089.P13600977631149696594

`or(A007541(n+1), A063667(n))`
-/

namespace A033089.P13600977631149696594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007541 (n + 1)) (A063667 n)

end

end A033089.P13600977631149696594

/-! ## A033089.P16131077126918700714

`A130706(n+1)+A007541(n+1)`
-/

namespace A033089.P16131077126918700714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1) + A007541 (n + 1)

end

end A033089.P16131077126918700714

/-!
# A033090: Indices of incrementally largest terms in the continued fraction for Pi.

The programs for A033090, there is no canonical definition to state claims against.
-/

/-! ## A033090.P11317519488765376666

`A032523(record[A001203(n)])`
-/

namespace A033090.P11317519488765376666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033090.P11317519488765376666

/-! ## A033090.P17191073466277345452

`A032523(A033089(n+1))`
-/

namespace A033090.P17191073466277345452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032523 (A033089 (n + 1)).toNat

end

end A033090.P17191073466277345452

/-!
# A033091: Incrementally largest terms in the continued fraction for Euler's constant gamma (A002852).

The programs for A033091, there is no canonical definition to state claims against.
-/

/-! ## A033091.P11659303063853021355

`record[A002852(n)]`
-/

namespace A033091.P11659303063853021355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033091.P11659303063853021355

/-! ## A033091.P7227415505699497163

`A002852(A224849(n))`
-/

namespace A033091.P7227415505699497163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (A224849 n).toNat

end

end A033091.P7227415505699497163

/-! ## A033091.P9928784916440695394

`A002852(A033092(n)-1)`
-/

namespace A033091.P9928784916440695394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (A033092 n - 1).toNat

end

end A033091.P9928784916440695394

/-! ## A033091.P4264827660864864654

`A002852(A057428(n+1)+A033092(n))`
-/

namespace A033091.P4264827660864864654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (A057428 (n + 1) + A033092 n).toNat

end

end A033091.P4264827660864864654

/-! ## A033091.P1391545568762193553

`A002852(A260196(n+2)+A033092(n))`
-/

namespace A033091.P1391545568762193553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (A260196 (n + 2) + A033092 n).toNat

end

end A033091.P1391545568762193553

/-!
# A033092: Positions of incrementally largest terms in the continued fraction for Euler's constant gamma (A002852).

The programs for A033092, there is no canonical definition to state claims against.
-/

/-! ## A033092.P10103290404098820415

`A224849(n)+1`
-/

namespace A033092.P10103290404098820415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224849 n + 1

end

end A033092.P10103290404098820415

/-! ## A033092.P247838234301073634

`1-(A066035(n)-A224849(n))`
-/

namespace A033092.P247838234301073634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A066035 n - A224849 n)

end

end A033092.P247838234301073634

/-! ## A033092.P531965382693302301

`1-A057428(n)*A224849(n)`
-/

namespace A033092.P531965382693302301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A224849 n

end

end A033092.P531965382693302301

/-! ## A033092.P4997670554917137423

`2-(A007318(∑[n])-A224849(n))`
-/

namespace A033092.P4997670554917137423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A224849 n)

end

end A033092.P4997670554917137423

/-! ## A033092.P548110366760311063

`2-(∏{p}[n, A001221(#)]-A224849(n))`
-/

namespace A033092.P548110366760311063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (∏ p ∈ Nat.primeFactors (f1 n), A001221 p - A224849 n)

end

end A033092.P548110366760311063

/-!
# A033093: Number of 0's when n is written in base b for 2<=b<=n+1.

The programs for A033093, there is no canonical definition to state claims against.
-/

/-! ## A033093.P14576763722158247648

`Δ[A033094(A028310(n))]`
-/

namespace A033093.P14576763722158247648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P14576763722158247648

/-! ## A033093.P6313754227629319633

`Δ[A033094(A004277(n)-n)]`
-/

namespace A033093.P6313754227629319633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P6313754227629319633

/-! ## A033093.P15614123215370641161

`A033094(n+1)-A033094(A028310(n))`
-/

namespace A033093.P15614123215370641161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (n + 1) - A033094 (A028310 n).toNat

end

end A033093.P15614123215370641161

/-! ## A033093.P14953493602982146466

`A033094(n+1)-A033094(abs(A274922(n)))`
-/

namespace A033093.P14953493602982146466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (n + 1) - A033094 |A274922 n|.toNat

end

end A033093.P14953493602982146466

/-! ## A033093.P18258802976180435905

`A033094(n+1)-A033094(A000007(n)+n)`
-/

namespace A033093.P18258802976180435905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (n + 1) - A033094 (A000007 n + (n : ℤ)).toNat

end

end A033093.P18258802976180435905

/-! ## A033093.P13696710222388383014

`A033094(n+1)-A033094(A004277(n)-n)`
-/

namespace A033093.P13696710222388383014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (n + 1) - A033094 (A004277 n - (n : ℤ)).toNat

end

end A033093.P13696710222388383014

/-! ## A033093.P4691243807203414151

`Δ[A033094(abs(A274922(n)))]`
-/

namespace A033093.P4691243807203414151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 |A274922 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P4691243807203414151

/-! ## A033093.P4427129829960272555

`Δ[A033094(A000007(n)+n)]`
-/

namespace A033093.P4427129829960272555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P4427129829960272555

/-! ## A033093.P16881040664234011990

`Δ[A033094(xor(n, A000007(n)))]`
-/

namespace A033093.P16881040664234011990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P16881040664234011990

/-! ## A033093.P3334519287232430665

`Δ[A033094(A004525(A004277(n)))]`
-/

namespace A033093.P3334519287232430665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P3334519287232430665

/-! ## A033093.P15641581217883001686

`Δ[A033094(A008619(A004273(n)))]`
-/

namespace A033093.P15641581217883001686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P15641581217883001686

/-! ## A033093.P9884027946358576060

`A033094(n+1)-A033094(A065033(2*n))`
-/

namespace A033093.P9884027946358576060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (n + 1) - A033094 (A065033 (2 * n)).toNat

end

end A033093.P9884027946358576060

/-! ## A033093.P4401733554547579212

`Δ[A033094(A065033(2*n))]`
-/

namespace A033093.P4401733554547579212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P4401733554547579212

/-! ## A033093.P7788839300165797921

`Δ[A033094(A274922(2*n)-n)]`
-/

namespace A033093.P7788839300165797921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A274922 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P7788839300165797921

/-! ## A033093.P6369104786385335161

`Δ[A033094(A154282(2*n+1)+n)]`
-/

namespace A033093.P6369104786385335161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A154282 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P6369104786385335161

/-! ## A033093.P16015063351193725360

`Δ[A033094(A007318(A000124(n)))]`
-/

namespace A033093.P16015063351193725360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P16015063351193725360

/-! ## A033093.P171202960601481470

`Δ[A033094(A134478(A000217(n)))]`
-/

namespace A033093.P171202960601481470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A134478 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P171202960601481470

/-! ## A033093.P5259025561327376624

`A033094(n+1)-A033094(A137734(n²))`
-/

namespace A033093.P5259025561327376624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (n + 1) - A033094 (A137734 (n ^ 2)).toNat

end

end A033093.P5259025561327376624

/-! ## A033093.P16360260723268121392

`A033094(n+1)-A033094(A137735(n²))`
-/

namespace A033093.P16360260723268121392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (n + 1) - A033094 (A137735 (n ^ 2)).toNat

end

end A033093.P16360260723268121392

/-! ## A033093.P10523592346665616951

`Δ[A033094(A137734(n²))]`
-/

namespace A033093.P10523592346665616951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033094 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033093.P10523592346665616951

/-!
# A033094: Number of 0's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033094, there is no canonical definition to state claims against.
-/

/-! ## A033094.P17245020438523359410

`∑[A033093(n+1)]`
-/

namespace A033094.P17245020438523359410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033094.P17245020438523359410

/-! ## A033094.P12440574849558032355

`A033093(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A033094.P12440574849558032355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033093 (n + 1) + a (A023443 n).toNat

end

end A033094.P12440574849558032355

/-! ## A033094.P11014958883970579726

`A033093(n+1)+a(A004273(n)-n)` with `a(0)=0`
-/

namespace A033094.P11014958883970579726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033093 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A033094.P11014958883970579726

/-! ## A033094.P1304672981232916914

`(A033093(n+1)+a(n-1))%A016754(n)` with `a(0)=0`
-/

namespace A033094.P1304672981232916914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A033093 (n + 1) + a (n - 1)) (A016754 n)

end

end A033094.P1304672981232916914

/-! ## A033094.P9068556173581978356

`a(n-1)+A033093(n+1)%A032715(n)` with `a(0)=0`
-/

namespace A033094.P9068556173581978356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A033093 (n + 1)) (A032715 n)

end

end A033094.P9068556173581978356

/-!
# A033095: Number of 1's when n is written in base b for 2<=b<=n+1.

The programs for A033095, there is no canonical definition to state claims against.
-/

/-! ## A033095.P14462780100265166326

`A028310(Δ[A033096(A028310(n))])`
-/

namespace A033095.P14462780100265166326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033096 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A033095.P14462780100265166326

/-!
# A033096: Number of 1's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033096, there is no canonical definition to state claims against.
-/

/-! ## A033096.P12377040132139910501

`∑[A033095(n+1)]`
-/

namespace A033096.P12377040132139910501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033096.P12377040132139910501

/-! ## A033096.P14885095621164095369

`A033095(Δ[n²]-n)+a(n-1)` with `a(0)=1`
-/

namespace A033096.P14885095621164095369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033095 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A033096.P14885095621164095369

/-! ## A033096.P7540277914146962692

`∑[A000027(A033095(Δ[n²]-n))]`
-/

namespace A033096.P7540277914146962692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033095 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033096.P7540277914146962692

/-! ## A033096.P13262122436961553817

`A033095(A014682(2*(n+1)))+floor(a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A033096.P13262122436961553817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033095 (A014682 (2 * (n + 1))).toNat + a (n - 1)

end

end A033096.P13262122436961553817

/-! ## A033096.P3434345078092816534

`∑[n]+A033265(A002212(n))+1`
-/

namespace A033096.P3434345078092816534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A033265 (A002212 n).toNat + 1)

end

end A033096.P3434345078092816534

/-!
# A033097: Number of 2's when n is written in base b for 2<=b<=n+1.

The programs for A033097, there is no canonical definition to state claims against.
-/

/-! ## A033097.P17657978437816659004

`Δ[A033098(A028310(n))]`
-/

namespace A033097.P17657978437816659004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P17657978437816659004

/-! ## A033097.P8107832430241774273

`Δ[A033098(A004277(n)-n)]`
-/

namespace A033097.P8107832430241774273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P8107832430241774273

/-! ## A033097.P10918187682068871657

`A033098(n+1)-A033098(A028310(n))`
-/

namespace A033097.P10918187682068871657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (n + 1) - A033098 (A028310 n).toNat

end

end A033097.P10918187682068871657

/-! ## A033097.P8685672570599164503

`A033098(n+1)-A033098(abs(A274922(n)))`
-/

namespace A033097.P8685672570599164503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (n + 1) - A033098 |A274922 n|.toNat

end

end A033097.P8685672570599164503

/-! ## A033097.P11002766888545940983

`A033098(n+1)-A033098(A004277(n)-n)`
-/

namespace A033097.P11002766888545940983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (n + 1) - A033098 (A004277 n - (n : ℤ)).toNat

end

end A033097.P11002766888545940983

/-! ## A033097.P7256741165372438451

`Δ[A033098(abs(A274922(n)))]`
-/

namespace A033097.P7256741165372438451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 |A274922 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P7256741165372438451

/-! ## A033097.P12003471841420207498

`Δ[A033098(A004275(n+1)-n)]`
-/

namespace A033097.P12003471841420207498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P12003471841420207498

/-! ## A033097.P14078298127852797025

`Δ[A033098(A008619(A004275(n)))]`
-/

namespace A033097.P14078298127852797025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P14078298127852797025

/-! ## A033097.P156877932849501342

`Δ[A033098(A004525(A004277(n)))]`
-/

namespace A033097.P156877932849501342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P156877932849501342

/-! ## A033097.P15751986720995650395

`Δ[A033098(A008619(A004273(n)))]`
-/

namespace A033097.P15751986720995650395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P15751986720995650395

/-! ## A033097.P1244194557794669654

`A033098(n+1)-A033098(A065033(2*n))`
-/

namespace A033097.P1244194557794669654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (n + 1) - A033098 (A065033 (2 * n)).toNat

end

end A033097.P1244194557794669654

/-! ## A033097.P1635031615373786674

`Δ[A033098(A065033(2*n))]`
-/

namespace A033097.P1635031615373786674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P1635031615373786674

/-! ## A033097.P10957239153474246958

`Δ[A033098(A274922(2*n)-n)]`
-/

namespace A033097.P10957239153474246958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A274922 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P10957239153474246958

/-! ## A033097.P2410205513472549598

`Δ[A033098(A154282(2*n+1)+n)]`
-/

namespace A033097.P2410205513472549598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A154282 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P2410205513472549598

/-! ## A033097.P14753765301125090018

`Δ[A033098(A007318(A000124(n)))]`
-/

namespace A033097.P14753765301125090018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P14753765301125090018

/-! ## A033097.P16454243260112851021

`Δ[A033098(A134478(A000217(n)))]`
-/

namespace A033097.P16454243260112851021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A134478 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P16454243260112851021

/-! ## A033097.P6495437068081613488

`A033098(n+1)-A033098(A137734(n²))`
-/

namespace A033097.P6495437068081613488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (n + 1) - A033098 (A137734 (n ^ 2)).toNat

end

end A033097.P6495437068081613488

/-! ## A033097.P15319951078864059949

`A033098(n+1)-A033098(A137735(n²))`
-/

namespace A033097.P15319951078864059949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (n + 1) - A033098 (A137735 (n ^ 2)).toNat

end

end A033097.P15319951078864059949

/-! ## A033097.P15844624329340260023

`Δ[A033098(A137734(n²))]`
-/

namespace A033097.P15844624329340260023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P15844624329340260023

/-! ## A033097.P5122030206269810400

`Δ[A033098(A137735(n²))]`
-/

namespace A033097.P5122030206269810400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033097.P5122030206269810400

/-!
# A033098: Number of 2's when k is written in base b for all b and k satisfying 2<=b<=n+1, 1<=k<=n.

The programs for A033098, there is no canonical definition to state claims against.
-/

/-! ## A033098.P17160971406316767197

`∑[A033097(n+1)]`
-/

namespace A033098.P17160971406316767197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033098.P17160971406316767197

/-! ## A033098.P1776815367638661014

`A033097(n+1)+a(A000027(n+1)-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A033098.P1776815367638661014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A033097 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A033098.P1776815367638661014

/-!
# A033099: Number of 3's when n is written in base b for 2<=b<=n+1.

The programs for A033099, there is no canonical definition to state claims against.
-/

/-! ## A033099.P8956103662962980995

`Δ[A033100(A028310(n))]`
-/

namespace A033099.P8956103662962980995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P8956103662962980995

/-! ## A033099.P2399285348379182413

`Δ[A033100(A004277(n)-n)]`
-/

namespace A033099.P2399285348379182413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P2399285348379182413

/-! ## A033099.P6202151789093476905

`A033100(n+1)-A033100(A028310(n))`
-/

namespace A033099.P6202151789093476905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (n + 1) - A033100 (A028310 n).toNat

end

end A033099.P6202151789093476905

/-! ## A033099.P7279344793499169992

`A033100(n+1)-A033100(abs(A274922(n)))`
-/

namespace A033099.P7279344793499169992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (n + 1) - A033100 |A274922 n|.toNat

end

end A033099.P7279344793499169992

/-! ## A033099.P3527699896237467968

`A033100(n+1)-A033100(A000007(n)+n)`
-/

namespace A033099.P3527699896237467968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (n + 1) - A033100 (A000007 n + (n : ℤ)).toNat

end

end A033099.P3527699896237467968

/-! ## A033099.P17794241050441891372

`A033100(n+1)-A033100(A004277(n)-n)`
-/

namespace A033099.P17794241050441891372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (n + 1) - A033100 (A004277 n - (n : ℤ)).toNat

end

end A033099.P17794241050441891372

/-! ## A033099.P11331029662797527721

`Δ[A033100(abs(A274922(n)))]`
-/

namespace A033099.P11331029662797527721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 |A274922 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P11331029662797527721

/-! ## A033099.P8345118775596882473

`Δ[A033100(A000007(n)+n)]`
-/

namespace A033099.P8345118775596882473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P8345118775596882473

/-! ## A033099.P16937082075656918128

`Δ[A033100(A008619(A004273(n)))]`
-/

namespace A033099.P16937082075656918128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P16937082075656918128

/-! ## A033099.P10617334597699427850

`Δ[A033100(A026741(A004277(n)))]`
-/

namespace A033099.P10617334597699427850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A026741 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P10617334597699427850

/-! ## A033099.P11519861238383632243

`A033100(n+1)-A033100(A065033(2*n))`
-/

namespace A033099.P11519861238383632243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (n + 1) - A033100 (A065033 (2 * n)).toNat

end

end A033099.P11519861238383632243

/-! ## A033099.P16939449145891494950

`Δ[A033100(A065033(2*n))]`
-/

namespace A033099.P16939449145891494950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P16939449145891494950

/-! ## A033099.P5466052168750951994

`Δ[A033100(A123108(2*n))]`
-/

namespace A033099.P5466052168750951994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P5466052168750951994

/-! ## A033099.P2125104759469969532

`Δ[A033100(A274922(2*n)-n)]`
-/

namespace A033099.P2125104759469969532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A274922 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P2125104759469969532

/-! ## A033099.P340715446324644780

`Δ[A033100(A000267(A002620(n)))]`
-/

namespace A033099.P340715446324644780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A000267 (A002620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P340715446324644780

/-! ## A033099.P2927797125730417257

`Δ[A033100(A007318(A000124(n)))]`
-/

namespace A033099.P2927797125730417257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P2927797125730417257

/-! ## A033099.P7013481157953585311

`A033100(n+1)-A033100(A137734(n²))`
-/

namespace A033099.P7013481157953585311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (n + 1) - A033100 (A137734 (n ^ 2)).toNat

end

end A033099.P7013481157953585311

/-! ## A033099.P14790341569597321431

`A033100(n+1)-A033100(A137735(n²))`
-/

namespace A033099.P14790341569597321431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (n + 1) - A033100 (A137735 (n ^ 2)).toNat

end

end A033099.P14790341569597321431

/-! ## A033099.P6179574975151276972

`Δ[A033100(A137734(n²))]`
-/

namespace A033099.P6179574975151276972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P6179574975151276972

/-! ## A033099.P14685053307772674289

`Δ[A033100(A137735(n²))]`
-/

namespace A033099.P14685053307772674289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033099.P14685053307772674289

