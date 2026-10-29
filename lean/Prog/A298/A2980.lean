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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A298000: Solution of the complementary equation a(n) = a(1)*b(n) - a(0)*b(n-1) + 2*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298000, there is no canonical definition to state claims against.
-/

/-! ## A298000.P16607655272537499693

`floor(A297830(n)+atan(n))`
-/

namespace A298000.P16607655272537499693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A297830 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A298000.P16607655272537499693

/-! ## A298000.P5360292099069166469

`A297830(n)+A157928(n)`
-/

namespace A298000.P5360292099069166469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A157928 n

end

end A298000.P5360292099069166469

/-! ## A298000.P8319070489783177658

`A297830(n)+A057427(A004526(n))`
-/

namespace A298000.P8319070489783177658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A057427 (A004526 n).toNat

end

end A298000.P8319070489783177658

/-! ## A298000.P4569113837996312405

`A297830(n)+A057427(A032741(n))`
-/

namespace A298000.P4569113837996312405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A057427 (A032741 n).toNat

end

end A298000.P4569113837996312405

/-! ## A298000.P15161732574775964744

`A297830(n)+A057427(A049472(n))`
-/

namespace A298000.P15161732574775964744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A057427 (A049472 n).toNat

end

end A298000.P15161732574775964744

/-! ## A298000.P9635434016945776650

`A297830(n)+A061395(A060632(n))`
-/

namespace A298000.P9635434016945776650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A061395 (A060632 n).toNat

end

end A298000.P9635434016945776650

/-! ## A298000.P14794970499377806822

`A331282(A062383(n))+A297830(n)`
-/

namespace A298000.P14794970499377806822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A062383 n).toNat + A297830 n

end

end A298000.P14794970499377806822

/-! ## A298000.P10803200366851625408

`A297830(n)+A057427(n-A057427(n))`
-/

namespace A298000.P10803200366851625408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A057427 ((n : ℤ) - A057427 n).toNat

end

end A298000.P10803200366851625408

/-! ## A298000.P9981787295910848188

`A297830(n)+A297999(n)-A297826(n)`
-/

namespace A298000.P9981787295910848188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + (A297999 n - A297826 n)

end

end A298000.P9981787295910848188

/-! ## A298000.P4519301015090114324

`A297830(n)+A298001(n)-A297836(n)`
-/

namespace A298000.P4519301015090114324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + (A298001 n - A297836 n)

end

end A298000.P4519301015090114324

/-! ## A298000.P4880591707684774622

`A297830(n)+A298002(n)-A297837(n)`
-/

namespace A298000.P4880591707684774622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + (A298002 n - A297837 n)

end

end A298000.P4880591707684774622

/-! ## A298000.P7700851871873873300

`A326178(A297830(n))`
-/

namespace A298000.P7700851871873873300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A297830 n).toNat

end

end A298000.P7700851871873873300

/-! ## A298000.P1169978586570741081

`A297830(n)+A115360(A040976(n+1)+3)`
-/

namespace A298000.P1169978586570741081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A115360 (A040976 (n + 1) + 3).toNat

end

end A298000.P1169978586570741081

/-! ## A298000.P1363240393020872969

`A297830(n)+A094373(n)%A016116(n)`
-/

namespace A298000.P1363240393020872969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + Int.tmod (A094373 n) (A016116 n)

end

end A298000.P1363240393020872969

/-! ## A298000.P958112641973661179

`A297830(n)+A057427(n²-n)`
-/

namespace A298000.P958112641973661179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n + A057427 (n ^ 2 - n)

end

end A298000.P958112641973661179

/-!
# A298001: Solution of the complementary equation a(n) = a(1)*b(n) - a(0)*b(n-1) + 3*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298001, there is no canonical definition to state claims against.
-/

/-! ## A298001.P16198546814117712305

`A297836(n)+A157928(n)`
-/

namespace A298001.P16198546814117712305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + A157928 n

end

end A298001.P16198546814117712305

/-! ## A298001.P3420833447679753574

`floor(A297836(n)+n/A089792(n+1))`
-/

namespace A298001.P3420833447679753574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A297836 n : ℚ) + (n : ℚ) / (A089792 (n + 1) : ℚ)⌋

end

end A298001.P3420833447679753574

/-! ## A298001.P2947507890614364628

`A297836(n)+A297999(n)-A297826(n)`
-/

namespace A298001.P2947507890614364628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + (A297999 n - A297826 n)

end

end A298001.P2947507890614364628

/-! ## A298001.P16682345889891931263

`A297836(n)+A298000(n)-A297830(n)`
-/

namespace A298001.P16682345889891931263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + (A298000 n - A297830 n)

end

end A298001.P16682345889891931263

/-! ## A298001.P4969555127501939110

`A297836(n)+A298002(n)-A297837(n)`
-/

namespace A298001.P4969555127501939110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + (A298002 n - A297837 n)

end

end A298001.P4969555127501939110

/-! ## A298001.P10153400989123568624

`round(A297836(n)+A297836(n)/A001952(n+1))`
-/

namespace A298001.P10153400989123568624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A297836 n : ℚ) + (A297836 n : ℚ) / (A001952 (n + 1) : ℚ))

end

end A298001.P10153400989123568624

/-! ## A298001.P144110861735347334

`A326178(A297836(n))`
-/

namespace A298001.P144110861735347334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A297836 n).toNat

end

end A298001.P144110861735347334

/-! ## A298001.P1393401033726382822

`A297836(n)+and(1, p?[A004526(n)])`
-/

namespace A298001.P1393401033726382822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + Int.land 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A298001.P1393401033726382822

/-! ## A298001.P14943992870371304072

`A297836(n)+A115360(A040976(n+1)+3)`
-/

namespace A298001.P14943992870371304072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + A115360 (A040976 (n + 1) + 3).toNat

end

end A298001.P14943992870371304072

/-! ## A298001.P12127931046835100218

`A297836(n)+and(1, A055010(n))`
-/

namespace A298001.P12127931046835100218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n + Int.land 1 (A055010 n)

end

end A298001.P12127931046835100218

/-!
# A298002: Solution of the complementary equation a(n) = a(1)*b(n) - a(0)*b(n-1) + 4*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298002, there is no canonical definition to state claims against.
-/

/-! ## A298002.P8347838268259233787

`A297837(n)+A157928(n)`
-/

namespace A298002.P8347838268259233787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + A157928 n

end

end A298002.P8347838268259233787

/-! ## A298002.P11868223201501933106

`A297837(n)+char[A305801(n+2)]`
-/

namespace A298002.P11868223201501933106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A298002.P11868223201501933106

/-! ## A298002.P16018662742460421245

`A297837(n)+A097098(round(1/(n+1)))`
-/

namespace A298002.P16018662742460421245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + A097098 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat

end

end A298002.P16018662742460421245

/-! ## A298002.P17389373800667987987

`A297837(n)+A295896(C(5, A297837(n)))`
-/

namespace A298002.P17389373800667987987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + A295896 (Nat.choose 5 (A297837 n).toNat)

end

end A298002.P17389373800667987987

/-! ## A298002.P17317114924059061695

`A297837(n)+A297999(n)-A297826(n)`
-/

namespace A298002.P17317114924059061695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + (A297999 n - A297826 n)

end

end A298002.P17317114924059061695

/-! ## A298002.P17023625089779682434

`A297837(n)+A298000(n)-A297830(n)`
-/

namespace A298002.P17023625089779682434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + (A298000 n - A297830 n)

end

end A298002.P17023625089779682434

/-! ## A298002.P5750137874884687736

`A297837(n)+A298001(n)-A297836(n)`
-/

namespace A298002.P5750137874884687736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n + (A298001 n - A297836 n)

end

end A298002.P5750137874884687736

/-! ## A298002.P17227501995565423176

`A297837(n)-A008683(2*A001748(n+1))`
-/

namespace A298002.P17227501995565423176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n - A008683 (2 * A001748 (n + 1)).toNat

end

end A298002.P17227501995565423176

/-! ## A298002.P13883665047244762658

`A011760(A297837(n))`
-/

namespace A298002.P13883665047244762658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A297837 n).toNat

end

end A298002.P13883665047244762658

/-!
# A298003: Solution b( ) of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298003, there is no canonical definition to state claims against.
-/

/-! ## A298003.P8986623063392214381

`comp[A297830(n)-1]+1`
-/

namespace A298003.P8986623063392214381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298003.P8986623063392214381

/-! ## A298003.P4532411356730460609

`A298111(n+1)-1`
-/

namespace A298003.P4532411356730460609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298111 (n + 1) - 1

end

end A298003.P4532411356730460609

/-! ## A298003.P11399255860753207991

`A023443(A298111(n+1))`
-/

namespace A298003.P11399255860753207991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A298111 (n + 1)).toNat

end

end A298003.P11399255860753207991

/-! ## A298003.P16833134649892083218

`lt[char[A297830(n)], A157928(n)]`
-/

namespace A298003.P16833134649892083218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A298003.P16833134649892083218

/-! ## A298003.P17835546893238776086

`eq[char[A297830(n)], A151933(n)]`
-/

namespace A298003.P17835546893238776086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297830 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298003.P17835546893238776086

/-!
# A298004: Solution b( ) of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 3*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298004, there is no canonical definition to state claims against.
-/

/-! ## A298004.P5776899271486368007

`A298112(n+1)-1`
-/

namespace A298004.P5776899271486368007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298112 (n + 1) - 1

end

end A298004.P5776899271486368007

/-! ## A298004.P12092356316381283191

`lt[char[A297836(n)], A157928(n)]`
-/

namespace A298004.P12092356316381283191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A298004.P12092356316381283191

/-! ## A298004.P5103053959841034482

`A023443(A298112(n+1))`
-/

namespace A298004.P5103053959841034482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A298112 (n + 1)).toNat

end

end A298004.P5103053959841034482

/-! ## A298004.P21377823888809226

`A325939(A141856(n+1))+A298112(n+1)`
-/

namespace A298004.P21377823888809226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (A141856 (n + 1)).toNat + A298112 (n + 1)

end

end A298004.P21377823888809226

/-! ## A298004.P469244129370040004

`eq[char[A297836(n)], A151933(n)]`
-/

namespace A298004.P469244129370040004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297836 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298004.P469244129370040004

/-!
# A298005: Solution b( ) of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 4*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298005, there is no canonical definition to state claims against.
-/

/-! ## A298005.P401581329307784068

`comp[A297837(n)-1]+1`
-/

namespace A298005.P401581329307784068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297837 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298005.P401581329307784068

/-! ## A298005.P15735479203148202897

`A298113(n+1)-1`
-/

namespace A298005.P15735479203148202897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298113 (n + 1) - 1

end

end A298005.P15735479203148202897

/-! ## A298005.P15860641006903771059

`A023443(A298113(n+1))`
-/

namespace A298005.P15860641006903771059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A298113 (n + 1)).toNat

end

end A298005.P15860641006903771059

/-! ## A298005.P16639345732605476924

`A213550(C(A298113(n+1), 2))`
-/

namespace A298005.P16639345732605476924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (Nat.choose (A298113 (n + 1)).toNat 2)

end

end A298005.P16639345732605476924

/-! ## A298005.P1202931947442861316

`lt[A098287(n+1), A098290(n)]`
-/

namespace A298005.P1202931947442861316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298005.P1202931947442861316

/-!
# A298006: Solution b( ) of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n - 1, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298006, there is no canonical definition to state claims against.
-/

/-! ## A298006.P5707445885223307083

`eq[char[A297831(n)], A000007(n)]`
-/

namespace A298006.P5707445885223307083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297831 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298006.P5707445885223307083

/-! ## A298006.P12887928324589012516

`eq[char[A297831(n)], A000038(n)]`
-/

namespace A298006.P12887928324589012516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297831 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298006.P12887928324589012516

/-! ## A298006.P10963996336554640950

`eq[char[A297831(n)], A130706(n)]`
-/

namespace A298006.P10963996336554640950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297831 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298006.P10963996336554640950

/-! ## A298006.P6629719072386103761

`eq[char[A297831(n)], A169585(n)]`
-/

namespace A298006.P6629719072386103761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297831 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298006.P6629719072386103761

/-! ## A298006.P8473364233277176675

`eq[char[A297831(n)], A151933(n)]`
-/

namespace A298006.P8473364233277176675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297831 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298006.P8473364233277176675

/-!
# A298007: Solution b( ) of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n - 2, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298007, there is no canonical definition to state claims against.
-/

/-! ## A298007.P12625874783224586647

`eq[char[A297832(n)], A000007(n)]`
-/

namespace A298007.P12625874783224586647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297832 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298007.P12625874783224586647

/-! ## A298007.P5583295102170688182

`eq[char[A297832(n)], A000038(n)]`
-/

namespace A298007.P5583295102170688182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297832 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298007.P5583295102170688182

/-! ## A298007.P13857476223877890696

`eq[char[A297832(n)], A130706(n)]`
-/

namespace A298007.P13857476223877890696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297832 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298007.P13857476223877890696

/-! ## A298007.P3647301876398176440

`eq[char[A297832(n)], A169585(n)]`
-/

namespace A298007.P3647301876398176440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297832 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298007.P3647301876398176440

/-! ## A298007.P17701925974590846785

`eq[char[A297832(n)], A285476(n)]`
-/

namespace A298007.P17701925974590846785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297832 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298007.P17701925974590846785

/-!
# A298008: a(n) = f(n-1,n) + 10*(n-1), where f(a,b) is the number of primes in the range [10*a,10*b].

The programs for A298008, the canonical program `A298008.P6229877649389155224` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298008 has offset 1).

The definition of A298008 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A298008.P6229877649389155224

`A038800(n)+10*n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A298008

/-- `A038800(n)+10*n` -/
def P6229877649389155224.Spec : Prop :=
  ∀ n, P6229877649389155224.a n = A298008 (n + 1)

theorem P6229877649389155224.correct : P6229877649389155224.Spec := by
  intro n
  simp only [A298008, Nat.add_sub_cancel]

end A298008

/-! ## A298008.P5043407767318244578

`A017293(n)+A038800(n)-2`
-/

namespace A298008.P5043407767318244578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n + (A038800 n - 2)

end

end A298008.P5043407767318244578

namespace A298008

/-- `A017293(n)+A038800(n)-2` -/
def P5043407767318244578.Spec : Prop :=
  ∀ n, P5043407767318244578.a n = A298008 (n + 1)

theorem P5043407767318244578.correct : P5043407767318244578.Spec := by
  intro n
  simp only [A298008, Nat.add_sub_cancel, A298008.P5043407767318244578.a, A298008.P6229877649389155224.a, A017293, A017293.P18006279673560884615.a, A038800, A038800.P14492955848077110763.f1, A038800.P14492955848077110763.a, A004273, A004273.P10821491240262963781.a, A099801, A099801.P5122847261811021280.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A298008

/-! ## A298008.P8688547572565561541

`A038800(n)+A017365(n)-8`
-/

namespace A298008.P8688547572565561541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n + A017365 n - 8

end

end A298008.P8688547572565561541

namespace A298008

/-- `A038800(n)+A017365(n)-8` -/
def P8688547572565561541.Spec : Prop :=
  ∀ n, P8688547572565561541.a n = A298008 (n + 1)

theorem P8688547572565561541.correct : P8688547572565561541.Spec := by
  intro n
  simp only [A298008, Nat.add_sub_cancel, A298008.P8688547572565561541.a, A298008.P6229877649389155224.a, A017365, A017365.P3452265278948084008.a, A038800, A038800.P14492955848077110763.f1, A038800.P14492955848077110763.a, A004273, A004273.P10821491240262963781.a, A099801, A099801.P5122847261811021280.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A298008

/-! ## A298008.P10659318635226467325

`A008592(n)+Δ[A000720(A218255(n))]`
-/

namespace A298008.P10659318635226467325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A218255 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + (f1 (n + 1) - f1 n)

end

end A298008.P10659318635226467325

namespace A298008

/-- `A008592(n)+Δ[A000720(A218255(n))]` -/
def P10659318635226467325.Spec : Prop :=
  ∀ n, P10659318635226467325.a n = A298008 (n + 1)

end A298008

/-! ## A298008.P2449071312086224493

`A192977(A065039(n))+10*n`
-/

namespace A298008.P2449071312086224493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A065039 n).toNat + (10 * n : ℤ)

end

end A298008.P2449071312086224493

namespace A298008

/-- `A192977(A065039(n))+10*n` -/
def P2449071312086224493.Spec : Prop :=
  ∀ n, P2449071312086224493.a n = A298008 (n + 1)

end A298008

/-! ## A298008.P14000827739953291904

`A008592(n)+Δ[A000720(A008706(2*n))]`
-/

namespace A298008.P14000827739953291904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + (f1 (n + 1) - f1 n)

end

end A298008.P14000827739953291904

namespace A298008

/-- `A008592(n)+Δ[A000720(A008706(2*n))]` -/
def P14000827739953291904.Spec : Prop :=
  ∀ n, P14000827739953291904.a n = A298008 (n + 1)

end A298008

/-! ## A298008.P15375022686548019146

`A008592(n)+Δ[A099801(A004273(2*n)+n)]`
-/

namespace A298008.P15375022686548019146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A004273 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + (f1 (n + 1) - f1 n)

end

end A298008.P15375022686548019146

namespace A298008

/-- `A008592(n)+Δ[A099801(A004273(2*n)+n)]` -/
def P15375022686548019146.Spec : Prop :=
  ∀ n, P15375022686548019146.a n = A298008 (n + 1)

theorem P15375022686548019146.correct : P15375022686548019146.Spec := by
  intro n
  simp only [A298008, Nat.add_sub_cancel, A298008.P15375022686548019146.f1, A298008.P15375022686548019146.a, A298008.P6229877649389155224.a, A004273, A004273.P10821491240262963781.a, A008592, A008592.P4981059802862696142.a, A038800, A038800.P14492955848077110763.f1, A038800.P14492955848077110763.a, A099801, A099801.P5122847261811021280.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A298008

/-! ## A298008.P20174025657245686

`A008592(n)+Δ[A000720(A301291(2*n)+n)]`
-/

namespace A298008.P20174025657245686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A301291 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + (f1 (n + 1) - f1 n)

end

end A298008.P20174025657245686

namespace A298008

/-- `A008592(n)+Δ[A000720(A301291(2*n)+n)]` -/
def P20174025657245686.Spec : Prop :=
  ∀ n, P20174025657245686.a n = A298008 (n + 1)

end A298008

/-! ## A298008.P8561368633472880086

`A209252(10*n)+10*n`
-/

namespace A298008.P8561368633472880086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 (10 * n) + (10 * n : ℤ)

end

end A298008.P8561368633472880086

namespace A298008

/-- `A209252(10*n)+10*n` -/
def P8561368633472880086.Spec : Prop :=
  ∀ n, P8561368633472880086.a n = A298008 (n + 1)

end A298008

/-! ## A298008.P6317112112852270146

`A028310(A038800(n)+A008592(n))`
-/

namespace A298008.P6317112112852270146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A038800 n + A008592 n).toNat

end

end A298008.P6317112112852270146

namespace A298008

/-- `A028310(A038800(n)+A008592(n))` -/
def P6317112112852270146.Spec : Prop :=
  ∀ n, P6317112112852270146.a n = A298008 (n + 1)

end A298008

/-! ## A298008.P10688466729190364821

`A008592(n)+Δ[A230980(10*n)]`
-/

namespace A298008.P10688466729190364821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + (f1 (n + 1) - f1 n)

end

end A298008.P10688466729190364821

namespace A298008

/-- `A008592(n)+Δ[A230980(10*n)]` -/
def P10688466729190364821.Spec : Prop :=
  ∀ n, P10688466729190364821.a n = A298008 (n + 1)

end A298008

/-!
# A298009: a(n) = f(n-1,n)+(n-1)*k, n>=1, where the function f(a,b) gives the number of prime numbers in the range [a*k,b*k[ with k=10^p. For this sequence we use p=2.

The programs for A298009, the canonical program `A298009.P5562014499968808434` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298009 has offset 1).

The definition of A298009 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A298009.P5562014499968808434

`A038822(n)+100*n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A298009

/-- `A038822(n)+100*n` -/
def P5562014499968808434.Spec : Prop :=
  ∀ n, P5562014499968808434.a n = A298009 (n + 1)

theorem P5562014499968808434.correct : P5562014499968808434.Spec := by
  intro n
  simp only [A298009, Nat.add_sub_cancel]

end A298009

/-! ## A298009.P6448418642152695839

`A102439(2*n)-(A102439(n)-A038822(n))`
-/

namespace A298009.P6448418642152695839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 (2 * n) - (A102439 n - A038822 n)

end

end A298009.P6448418642152695839

namespace A298009

/-- `A102439(2*n)-(A102439(n)-A038822(n))` -/
def P6448418642152695839.Spec : Prop :=
  ∀ n, P6448418642152695839.a n = A298009 (n + 1)

theorem P6448418642152695839.correct : P6448418642152695839.Spec := by
  intro n
  simp only [A298009, Nat.add_sub_cancel, A298009.P6448418642152695839.a, A298009.P5562014499968808434.a, A038822, A038822.P13838086464784480300.a, A102439, A102439.P10344858111576924215.a, A000038, A000038.P13734959004655594922.a, A028505, A028505.P17073343684297780336.a, A000007, A000007.P6599383543502402472.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A298009

/-! ## A298009.P2047464199973577603

`A008607(4*n)+Δ[A028505(A000038(n)+n)*A057427(n)]`
-/

namespace A298009.P2047464199973577603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028505 (A000038 n + (n : ℤ)).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (4 * n) + (f1 (n + 1) - f1 n)

end

end A298009.P2047464199973577603

namespace A298009

/-- `A008607(4*n)+Δ[A028505(A000038(n)+n)*A057427(n)]` -/
def P2047464199973577603.Spec : Prop :=
  ∀ n, P2047464199973577603.a n = A298009 (n + 1)

end A298009

/-! ## A298009.P6748044425580105105

`A008607(4*n)+A028505(n+1)%A028505(A000038(n)+n)`
-/

namespace A298009.P6748044425580105105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (4 * n) + Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

end

end A298009.P6748044425580105105

namespace A298009

/-- `A008607(4*n)+A028505(n+1)%A028505(A000038(n)+n)` -/
def P6748044425580105105.Spec : Prop :=
  ∀ n, P6748044425580105105.a n = A298009 (n + 1)

theorem P6748044425580105105.correct : P6748044425580105105.Spec := by
  intro n
  simp only [A298009, Nat.add_sub_cancel, A298009.P6748044425580105105.a, A298009.P5562014499968808434.a, A000038, A000038.P13734959004655594922.a, A008607, A008607.P4608234580437606002.a, A028505, A028505.P17073343684297780336.a, A038822, A038822.P13838086464784480300.a, A000007, A000007.P6599383543502402472.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A298009

/-! ## A298009.P15341767221397043948

`A008607(A008586(n))+Δ[A000720(A151800(10*10*n))]`
-/

namespace A298009.P15341767221397043948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (10 * (10 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (A008586 n).toNat + (f1 (n + 1) - f1 n)

end

end A298009.P15341767221397043948

namespace A298009

/-- `A008607(A008586(n))+Δ[A000720(A151800(10*10*n))]` -/
def P15341767221397043948.Spec : Prop :=
  ∀ n, P15341767221397043948.a n = A298009 (n + 1)

end A298009

/-! ## A298009.P1952049761578383796

`A008607(A008586(n))+Δ[A000720(A008706(20*n))]`
-/

namespace A298009.P1952049761578383796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (20 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (A008586 n).toNat + (f1 (n + 1) - f1 n)

end

end A298009.P1952049761578383796

namespace A298009

/-- `A008607(A008586(n))+Δ[A000720(A008706(20*n))]` -/
def P1952049761578383796.Spec : Prop :=
  ∀ n, P1952049761578383796.a n = A298009 (n + 1)

end A298009

/-! ## A298009.P6094525440868328079

`A008607(4*n)+Δ[A230980(A008586(25*n))]`
-/

namespace A298009.P6094525440868328079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A008586 (25 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (4 * n) + (f1 (n + 1) - f1 n)

end

end A298009.P6094525440868328079

namespace A298009

/-- `A008607(4*n)+Δ[A230980(A008586(25*n))]` -/
def P6094525440868328079.Spec : Prop :=
  ∀ n, P6094525440868328079.a n = A298009 (n + 1)

end A298009

/-!
# A298010: Numbers n such that x*y*(x+y) = n has at least one solution in coprime integers.

The programs for A298010, there is no canonical definition to state claims against.
-/

/-! ## A298010.P17037212929710513802

`lt[0, A297968(n+1)]+1`
-/

namespace A298010.P17037212929710513802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A298010.P17037212929710513802

/-! ## A298010.P13035062569749970883

`lt[0, A297968(A028310(n))]`
-/

namespace A298010.P13035062569749970883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297968 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A298010.P13035062569749970883

/-! ## A298010.P16324379043893295244

`A020725(lt[0, A297968(n+1)])`
-/

namespace A298010.P16324379043893295244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A298010.P16324379043893295244

/-! ## A298010.P2584608238881539645

`lt[0, A297968(A000007(n)+n)]`
-/

namespace A298010.P2584608238881539645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297968 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A298010.P2584608238881539645

/-! ## A298010.P11212445878114158839

`eq[2, 2%A136124(A297968(n+1)+2)]+1`
-/

namespace A298010.P11212445878114158839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A136124 (A297968 (n + 1) + 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298010.P11212445878114158839

/-!
# A298011: If n = Sum_{i=1..h} 2^b_i with 0 <= b_1 < ... < b_h, then a(n) = Sum_{i=1..h} i * 2^b_i.

The programs for A298011, the canonical program `A298011.P12682259250450599023` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298011 has offset 0).

The definition of A298011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298011.P12682259250450599023

`a(and(n, n-1))+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298011

/-- `a(and(n, n-1))+n` -/
def P12682259250450599023.Spec : Prop :=
  ∀ n, (P12682259250450599023.a n : ℤ) = A298011 n

theorem P12682259250450599023.correct : P12682259250450599023.Spec := by
  intro n
  simp only [A298011]

end A298011

/-! ## A298011.P12221880951004502266

`2*n-(n-a(and(n, n-1)))` with `a(0)=0`
-/

namespace A298011.P12221880951004502266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A298011.P12221880951004502266

namespace A298011

/-- `2*n-(n-a(and(n, n-1)))` -/
def P12221880951004502266.Spec : Prop :=
  ∀ n, P12221880951004502266.a n = A298011 n

end A298011

/-! ## A298011.P14605136303854495919

`a(A129760(n))+n` with `a(0)=0`
-/

namespace A298011.P14605136303854495919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A129760 n).toNat + n

end

end A298011.P14605136303854495919

namespace A298011

/-- `a(A129760(n))+n` -/
def P14605136303854495919.Spec : Prop :=
  ∀ n, (P14605136303854495919.a n : ℤ) = A298011 n

end A298011

/-! ## A298011.P13315041616275739053

`∑{d}[A053644(n), and(n, n*#)]`
-/

namespace A298011.P13315041616275739053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land n (n * d)

end

end A298011.P13315041616275739053

namespace A298011

/-- `∑{d}[A053644(n), and(n, n*#)]` -/
def P13315041616275739053.Spec : Prop :=
  ∀ n, (P13315041616275739053.a n : ℤ) = A298011 n

end A298011

/-! ## A298011.P9557758842779573288

`A245788(n)-A083741(n)`
-/

namespace A298011.P9557758842779573288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n - A083741 n

end

end A298011.P9557758842779573288

namespace A298011

/-- `A245788(n)-A083741(n)` -/
def P9557758842779573288.Spec : Prop :=
  ∀ n, P9557758842779573288.a n = A298011 n

theorem P9557758842779573288.correct : P9557758842779573288.Spec := by
  intro n
  simp only [A298011, Nat.add_sub_cancel, A298011.P9557758842779573288.a, A298011.P12682259250450599023.a, A083741, A083741.P6552315304162526779.a, A245788, A245788.P10796889760857720878.f2, A245788.P10796889760857720878.f1, A245788.P10796889760857720878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A298011

/-! ## A298011.P1980862389489741986

`A003071(n+1)-A187059(n)`
-/

namespace A298011.P1980862389489741986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1) - A187059 n

end

end A298011.P1980862389489741986

namespace A298011

/-- `A003071(n+1)-A187059(n)` -/
def P1980862389489741986.Spec : Prop :=
  ∀ n, P1980862389489741986.a n = A298011 n

end A298011

/-! ## A298011.P2767737451992540492

`n*A000120(n)-A083741(n)`
-/

namespace A298011.P2767737451992540492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 n - A083741 n

end

end A298011.P2767737451992540492

namespace A298011

/-- `n*A000120(n)-A083741(n)` -/
def P2767737451992540492.Spec : Prop :=
  ∀ n, P2767737451992540492.a n = A298011 n

end A298011

/-! ## A298011.P4844592632914870077

`n*A063787(n+1)-A298043(n)`
-/

namespace A298011.P4844592632914870077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063787 (n + 1) - A298043 n

end

end A298011.P4844592632914870077

namespace A298011

/-- `n*A063787(n+1)-A298043(n)` -/
def P4844592632914870077.Spec : Prop :=
  ∀ n, P4844592632914870077.a n = A298011 n

end A298011

/-! ## A298011.P10811289847188938180

`n*A000005(A001316(n))-A298043(n)`
-/

namespace A298011.P10811289847188938180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000005 (A001316 n).toNat - A298043 n

end

end A298011.P10811289847188938180

namespace A298011

/-- `n*A000005(A001316(n))-A298043(n)` -/
def P10811289847188938180.Spec : Prop :=
  ∀ n, P10811289847188938180.a n = A298011 n

end A298011

/-! ## A298011.P13105644665507598463

`n*A000005(A048883(n))-A298043(n)`
-/

namespace A298011.P13105644665507598463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000005 (A048883 n).toNat - A298043 n

end

end A298011.P13105644665507598463

namespace A298011

/-- `n*A000005(A048883(n))-A298043(n)` -/
def P13105644665507598463.Spec : Prop :=
  ∀ n, P13105644665507598463.a n = A298011 n

end A298011

/-!
# A298012: a(0)=a(1)=0; thereafter a(n) = A162973(n)/(n-1).

The programs for A298012, there is no canonical definition to state claims against.
-/

/-! ## A298012.P3230035255055153609

`A264749(A255906(n)-A120921(n))`
-/

namespace A298012.P3230035255055153609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A255906 n - A120921 n).toNat

end

end A298012.P3230035255055153609

/-! ## A298012.P7544068981571893900

`A325468(A001595(n))-A325877(n)`
-/

namespace A298012.P7544068981571893900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325468 (A001595 n).toNat - A325877 n

end

end A298012.P7544068981571893900

/-! ## A298012.P1899049191118289705

`A298606(A328438(n))-A328438(n)`
-/

namespace A298012.P1899049191118289705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298606 (A328438 n).toNat - A328438 n

end

end A298012.P1899049191118289705

/-! ## A298012.P16307945130820613057

`A264749(A255906(n)%A120921(n))`
-/

namespace A298012.P16307945130820613057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (Int.tmod (A255906 n) (A120921 n)).toNat

end

end A298012.P16307945130820613057

/-!
# A298013: Differentiate the g.f. underlying A032188 and evaluate it at x=1.

The programs for A298013, there is no canonical definition to state claims against.
-/

/-! ## A298013.P5927489777427685101

`A247507(∑[4*n])-ceil(∑[3^(n-2)])²`
-/

namespace A298013.P5927489777427685101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247507 (∑ j ∈ Finset.range (n + 1), f1 j) - ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ ^ 2

end

end A298013.P5927489777427685101

/-!
# A298014: Coordination sequence of snub-632 tiling with respect to a trivalent node of type short-short-long.

The programs for A298014, the canonical program `A298014.P15618125582303795762` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298014 has offset 0).

The definition of A298014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298014.P15618125582303795762

`ogf((1+3x+9x^2+13x^3+12x^4+9x^5+8x^6+4x^7-x^8-2x^9-2x^10)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298014

/-- `ogf((1+3x+9x^2+13x^3+12x^4+9x^5+8x^6+4x^7-x^8-2x^9-2x^10)/(1-2x^3+x^6))` -/
def P15618125582303795762.Spec : Prop :=
  ∀ n, P15618125582303795762.a n = A298014 n

theorem P15618125582303795762.correct : P15618125582303795762.Spec := by
  intro n
  simp only [A298014]

end A298014

/-!
# A298015: Coordination sequence of snub-632 tiling with respect to a trivalent node of type short-short-short.

The programs for A298015, the canonical program `A298015.P17069068524955886682` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298015 has offset 0).

The definition of A298015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298015.P17069068524955886682

`ogf((1+3x+6x^2+13x^3+15x^4+6x^5+4x^6+9x^7-3x^10)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298015

/-- `ogf((1+3x+6x^2+13x^3+15x^4+6x^5+4x^6+9x^7-3x^10)/(1-2x^3+x^6))` -/
def P17069068524955886682.Spec : Prop :=
  ∀ n, P17069068524955886682.a n = A298015 n

theorem P17069068524955886682.correct : P17069068524955886682.Spec := by
  intro n
  simp only [A298015]

end A298015

/-!
# A298016: Coordination sequence of snub-632 tiling with respect to a hexavalent node.

The programs for A298016, the canonical program `A298016.P2086914062999148092` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298016 has offset 0).

The definition of A298016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298016.P5640605266619453015

`ogf((1+6x+12x^2+10x^3+12x^4+12x^5+x^6)/(1-2x^3+x^6))`
-/

namespace A298016.P5640605266619453015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 12, 10, 12, 12, 1] [1, 0, 0, -2, 0, 0, 1] n

end

end A298016.P5640605266619453015

namespace A298016

/-- `ogf((1+6x+12x^2+10x^3+12x^4+12x^5+x^6)/(1-2x^3+x^6))` -/
def P5640605266619453015.Spec : Prop :=
  ∀ n, P5640605266619453015.a n = A298016 n

end A298016

/-! ## A298016.P2086914062999148092

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=12, a(3)=12, a(4)=24, a(5)=36, a(6)=24`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298016

/-- `2*a(n-3)-a(n-6)` -/
def P2086914062999148092.Spec : Prop :=
  ∀ n, P2086914062999148092.a n = A298016 n

theorem P2086914062999148092.correct : P2086914062999148092.Spec := by
  intro n
  simp only [A298016]

end A298016

/-! ## A298016.P9731718415171208807

`A008458(A102899(n)+A009947(n))`
-/

namespace A298016.P9731718415171208807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A102899 n + A009947 n).toNat

end

end A298016.P9731718415171208807

namespace A298016

/-- `A008458(A102899(n)+A009947(n))` -/
def P9731718415171208807.Spec : Prop :=
  ∀ n, P9731718415171208807.a n = A298016 n

end A298016

/-! ## A298016.P5585399532311576695

`A008458(A064429(n)-Δ[A087509(n)])`
-/

namespace A298016.P5585399532311576695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A064429 n - (f1 (n + 1) - f1 n)).toNat

end

end A298016.P5585399532311576695

namespace A298016

/-- `A008458(A064429(n)-Δ[A087509(n)])` -/
def P5585399532311576695.Spec : Prop :=
  ∀ n, P5585399532311576695.a n = A298016 n

end A298016

/-! ## A298016.P14199051055718965464

`A008486(2*n)-Δ[A008486(A103627(2*n+1))]`
-/

namespace A298016.P14199051055718965464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A103627 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - (f1 (n + 1) - f1 n)

end

end A298016.P14199051055718965464

namespace A298016

/-- `A008486(2*n)-Δ[A008486(A103627(2*n+1))]` -/
def P14199051055718965464.Spec : Prop :=
  ∀ n, P14199051055718965464.a n = A298016 n

end A298016

/-! ## A298016.P7258912293413323321

`A008486(2*(A102899(n)+A009947(n)))`
-/

namespace A298016.P7258912293413323321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * (A102899 n + A009947 n)).toNat

end

end A298016.P7258912293413323321

namespace A298016

/-- `A008486(2*(A102899(n)+A009947(n)))` -/
def P7258912293413323321.Spec : Prop :=
  ∀ n, P7258912293413323321.a n = A298016 n

end A298016

/-! ## A298016.P17835124376087788011

`A004277(3*(A102899(n)+A009947(n)))`
-/

namespace A298016.P17835124376087788011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * (A102899 n + A009947 n)).toNat

end

end A298016.P17835124376087788011

namespace A298016

/-- `A004277(3*(A102899(n)+A009947(n)))` -/
def P17835124376087788011.Spec : Prop :=
  ∀ n, P17835124376087788011.a n = A298016 n

end A298016

/-! ## A298016.P6774213434223993775

`A028310(6*(A102899(n)+A009947(n)))`
-/

namespace A298016.P6774213434223993775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (6 * (A102899 n + A009947 n)).toNat

end

end A298016.P6774213434223993775

namespace A298016

/-- `A028310(6*(A102899(n)+A009947(n)))` -/
def P6774213434223993775.Spec : Prop :=
  ∀ n, P6774213434223993775.a n = A298016 n

end A298016

/-!
# A298017: Partial sums of A298014.

The programs for A298017, the canonical program `A298017.P940962409495365748` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298017 has offset 0).

The definition of A298017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298017.P940962409495365748

`ogf((1+3x+9x^2+13x^3+12x^4+9x^5+8x^6+4x^7-x^8-2x^9-2x^10)/(1-x-2x^3+2x^4+x^6-x^7))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298017

/-- `ogf((1+3x+9x^2+13x^3+12x^4+9x^5+8x^6+4x^7-x^8-2x^9-2x^10)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P940962409495365748.Spec : Prop :=
  ∀ n, P940962409495365748.a n = A298017 n

theorem P940962409495365748.correct : P940962409495365748.Spec := by
  intro n
  simp only [A298017]

end A298017

/-! ## A298017.P7924241346080533361

`∑[A298014(n)]`
-/

namespace A298017.P7924241346080533361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298017.P7924241346080533361

namespace A298017

/-- `∑[A298014(n)]` -/
def P7924241346080533361.Spec : Prop :=
  ∀ n, P7924241346080533361.a n = A298017 n

end A298017

/-! ## A298017.P4941655331020876114

`A298014(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A298017.P4941655331020876114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298014 n + a (A023443 n).toNat

end

end A298017.P4941655331020876114

namespace A298017

/-- `A298014(n)+a(A023443(n))` -/
def P4941655331020876114.Spec : Prop :=
  ∀ n, P4941655331020876114.a n = A298017 n

end A298017

/-! ## A298017.P3459627002655176148

`A298014(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A298017.P3459627002655176148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298014 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A298017.P3459627002655176148

namespace A298017

/-- `A298014(A000007(n)+n)+a(n-1)` -/
def P3459627002655176148.Spec : Prop :=
  ∀ n, P3459627002655176148.a n = A298017 n

end A298017

/-! ## A298017.P3923616312993496814

`A298014(n%A007310(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A298017.P3923616312993496814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298014 (Int.tmod (n : ℤ) (A007310 (n + 1))).toNat + a (n - 1)

end

end A298017.P3923616312993496814

namespace A298017

/-- `A298014(n%A007310(n+1))+a(n-1)` -/
def P3923616312993496814.Spec : Prop :=
  ∀ n, P3923616312993496814.a n = A298017 n

end A298017

/-! ## A298017.P5752448449440905524

`a(n-1)+A298014(n)%A298029(n+1)` with `a(0)=1`
-/

namespace A298017.P5752448449440905524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A298014 n) (A298029 (n + 1))

end

end A298017.P5752448449440905524

namespace A298017

/-- `a(n-1)+A298014(n)%A298029(n+1)` -/
def P5752448449440905524.Spec : Prop :=
  ∀ n, P5752448449440905524.a n = A298017 n

end A298017

/-! ## A298017.P5357303215091973561

`A298014(n)+a(n-1)%A298026(a(n-1))` with `a(0)=1`
-/

namespace A298017.P5357303215091973561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298014 n + Int.tmod (a (n - 1)) (A298026 (a (n - 1)).toNat)

end

end A298017.P5357303215091973561

namespace A298017

/-- `A298014(n)+a(n-1)%A298026(a(n-1))` -/
def P5357303215091973561.Spec : Prop :=
  ∀ n, P5357303215091973561.a n = A298017 n

end A298017

/-!
# A298018: Partial sums of A298015.

The programs for A298018, the canonical program `A298018.P10463424216671555626` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298018 has offset 0).

The definition of A298018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298018.P10463424216671555626

`ogf((1+3x+6x^2+13x^3+15x^4+6x^5+4x^6+9x^7-3x^10)/(1-x-2x^3+2x^4+x^6-x^7))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298018

/-- `ogf((1+3x+6x^2+13x^3+15x^4+6x^5+4x^6+9x^7-3x^10)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P10463424216671555626.Spec : Prop :=
  ∀ n, P10463424216671555626.a n = A298018 n

theorem P10463424216671555626.correct : P10463424216671555626.Spec := by
  intro n
  simp only [A298018]

end A298018

/-! ## A298018.P1654411289632092350

`∑[A298015(n)]`
-/

namespace A298018.P1654411289632092350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298018.P1654411289632092350

namespace A298018

/-- `∑[A298015(n)]` -/
def P1654411289632092350.Spec : Prop :=
  ∀ n, P1654411289632092350.a n = A298018 n

end A298018

/-!
# A298019: Partial sums of A298016.

The programs for A298019, the canonical program `A298019.P10655291014754152425` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298019 has offset 0).

The definition of A298019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298019.P9618686588143339668

`ogf((1+6x+12x^2+10x^3+12x^4+12x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A298019.P9618686588143339668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 12, 10, 12, 12, 1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A298019.P9618686588143339668

namespace A298019

/-- `ogf((1+6x+12x^2+10x^3+12x^4+12x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P9618686588143339668.Spec : Prop :=
  ∀ n, P9618686588143339668.a n = A298019 n

end A298019

/-! ## A298019.P10655291014754152425

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=7, a(2)=19, a(3)=31, a(4)=55, a(5)=91, a(6)=115`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298019

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P10655291014754152425.Spec : Prop :=
  ∀ n, P10655291014754152425.a n = A298019 n

theorem P10655291014754152425.correct : P10655291014754152425.Spec := by
  intro n
  simp only [A298019]

end A298019

/-! ## A298019.P3540371225807070461

`∑[A298016(n)]`
-/

namespace A298019.P3540371225807070461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298019.P3540371225807070461

namespace A298019

/-- `∑[A298016(n)]` -/
def P3540371225807070461.Spec : Prop :=
  ∀ n, P3540371225807070461.a n = A298019 n

end A298019

/-! ## A298019.P6325487385794757064

`A298016(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A298019.P6325487385794757064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298016 n + a (A023443 n).toNat

end

end A298019.P6325487385794757064

namespace A298019

/-- `A298016(n)+a(A023443(n))` -/
def P6325487385794757064.Spec : Prop :=
  ∀ n, P6325487385794757064.a n = A298019 n

end A298019

/-! ## A298019.P18153720708519185625

`A298016(n%A007310(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A298019.P18153720708519185625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298016 (Int.tmod (n : ℤ) (A007310 (n + 1))).toNat + a (n - 1)

end

end A298019.P18153720708519185625

namespace A298019

/-- `A298016(n%A007310(n+1))+a(n-1)` -/
def P18153720708519185625.Spec : Prop :=
  ∀ n, P18153720708519185625.a n = A298019 n

end A298019

/-! ## A298019.P2576392685535007260

`a(n-1)+A298016(n)+A255308(2*n+1)` with `a(0)=1`
-/

namespace A298019.P2576392685535007260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A298016 n + A255308 (2 * n + 1))

end

end A298019.P2576392685535007260

namespace A298019

/-- `a(n-1)+A298016(n)+A255308(2*n+1)` -/
def P2576392685535007260.Spec : Prop :=
  ∀ n, P2576392685535007260.a n = A298019 n

end A298019

/-! ## A298019.P3288226128582967974

`∑[A008458(A102899(n)+A009947(n))]`
-/

namespace A298019.P3288226128582967974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A102899 n + A009947 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298019.P3288226128582967974

namespace A298019

/-- `∑[A008458(A102899(n)+A009947(n))]` -/
def P3288226128582967974.Spec : Prop :=
  ∀ n, P3288226128582967974.a n = A298019 n

end A298019

/-! ## A298019.P10054119197115946967

`A016921(A008133(n)+∑[A051176(n)])`
-/

namespace A298019.P10054119197115946967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A008133 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298019.P10054119197115946967

namespace A298019

/-- `A016921(A008133(n)+∑[A051176(n)])` -/
def P10054119197115946967.Spec : Prop :=
  ∀ n, P10054119197115946967.a n = A298019 n

end A298019

/-! ## A298019.P15352856456021557729

`A016921(∑[A102899(n)+A009947(n)])`
-/

namespace A298019.P15352856456021557729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 n + A009947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298019.P15352856456021557729

namespace A298019

/-- `A016921(∑[A102899(n)+A009947(n)])` -/
def P15352856456021557729.Spec : Prop :=
  ∀ n, P15352856456021557729.a n = A298019 n

end A298019

/-! ## A298019.P11405748086792705210

`A016777(2*(A008133(n)+∑[A051176(n)]))`
-/

namespace A298019.P11405748086792705210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * (A008133 n + ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A298019.P11405748086792705210

namespace A298019

/-- `A016777(2*(A008133(n)+∑[A051176(n)]))` -/
def P11405748086792705210.Spec : Prop :=
  ∀ n, P11405748086792705210.a n = A298019 n

end A298019

/-!
# A298021: Maximal overhang that can be attained from a stack of blocks of lengths 1,2,...,n (denominators).

The programs for A298021, there is no canonical definition to state claims against.
-/

/-! ## A298021.P1903176753873819260

`A324983(record[A325222(n)])`
-/

namespace A298021.P1903176753873819260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324983 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A298021.P1903176753873819260

/-!
# A298022: Coordination sequence for Dual(3^3.4^2) tiling with respect to a trivalent node.

The programs for A298022, the canonical program `A298022.P3512411309328701878` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298022 has offset 0).

The definition of A298022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298022.P15509848329970421166

`ogf((1+2x+4x^2+4x^3+3x^4+2x^5-2x^8)/(1-x-x^3+x^4))`
-/

namespace A298022.P15509848329970421166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4, 4, 3, 2, 0, 0, -2] [1, -1, 0, -1, 1] n

end

end A298022.P15509848329970421166

namespace A298022

/-- `ogf((1+2x+4x^2+4x^3+3x^4+2x^5-2x^8)/(1-x-x^3+x^4))` -/
def P15509848329970421166.Spec : Prop :=
  ∀ n, P15509848329970421166.a n = A298022 n

end A298022

/-! ## A298022.P3512411309328701878

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=12, a(4)=17, a(5)=23, a(6)=28, a(7)=33, a(8)=37`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298022

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P3512411309328701878.Spec : Prop :=
  ∀ n, P3512411309328701878.a n = A298022 n

theorem P3512411309328701878.correct : P3512411309328701878.Spec := by
  intro n
  simp only [A298022]

end A298022

/-! ## A298022.P12832766302860018442

`A301298(n)-A000038(A058937(n+1))`
-/

namespace A298022.P12832766302860018442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A000038 (A058937 (n + 1)).toNat

end

end A298022.P12832766302860018442

namespace A298022

/-- `A301298(n)-A000038(A058937(n+1))` -/
def P12832766302860018442.Spec : Prop :=
  ∀ n, P12832766302860018442.a n = A298022 n

end A298022

/-! ## A298022.P9815265844841711779

`A301298(n)-A105700(A001172(n))`
-/

namespace A298022.P9815265844841711779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A105700 (A001172 n).toNat

end

end A298022.P9815265844841711779

namespace A298022

/-- `A301298(n)-A105700(A001172(n))` -/
def P9815265844841711779.Spec : Prop :=
  ∀ n, P9815265844841711779.a n = A298022 n

end A298022

/-! ## A298022.P1624012318582648266

`A301298(n)-A000038(A339103(n))`
-/

namespace A298022.P1624012318582648266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A000038 (A339103 n).toNat

end

end A298022.P1624012318582648266

namespace A298022

/-- `A301298(n)-A000038(A339103(n))` -/
def P1624012318582648266.Spec : Prop :=
  ∀ n, P1624012318582648266.a n = A298022 n

end A298022

/-!
# A298023: Partial sums of A298022.

The programs for A298023, the canonical program `A298023.P18441614453144303218` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298023 has offset 0).

The definition of A298023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298023.P16319686634199021163

`ogf((1+2x+4x^2+4x^3+3x^4+2x^5-2x^8)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A298023.P16319686634199021163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4, 4, 3, 2, 0, 0, -2] [1, -2, 1, -1, 2, -1] n

end

end A298023.P16319686634199021163

namespace A298023

/-- `ogf((1+2x+4x^2+4x^3+3x^4+2x^5-2x^8)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P16319686634199021163.Spec : Prop :=
  ∀ n, P16319686634199021163.a n = A298023 n

end A298023

/-! ## A298023.P18441614453144303218

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=23, a(4)=40, a(5)=63, a(6)=91, a(7)=124, a(8)=161`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298023

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P18441614453144303218.Spec : Prop :=
  ∀ n, P18441614453144303218.a n = A298023 n

theorem P18441614453144303218.correct : P18441614453144303218.Spec := by
  intro n
  simp only [A298023]

end A298023

/-! ## A298023.P9876592888937633651

`∑[A298022(n)]`
-/

namespace A298023.P9876592888937633651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298023.P9876592888937633651

namespace A298023

/-- `∑[A298022(n)]` -/
def P9876592888937633651.Spec : Prop :=
  ∀ n, P9876592888937633651.a n = A298023 n

end A298023

/-! ## A298023.P5628339645953213275

`a(n-1)+A298022(n)+A000038(n)` with `a(0)=1`
-/

namespace A298023.P5628339645953213275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A298022 n + A000038 n)

end

end A298023.P5628339645953213275

namespace A298023

/-- `a(n-1)+A298022(n)+A000038(n)` -/
def P5628339645953213275.Spec : Prop :=
  ∀ n, P5628339645953213275.a n = A298023 n

end A298023

/-! ## A298023.P931891633409181761

`A298022(n%A007310(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A298023.P931891633409181761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298022 (Int.tmod (n : ℤ) (A007310 (n + 1))).toNat + a (n - 1)

end

end A298023.P931891633409181761

namespace A298023

/-- `A298022(n%A007310(n+1))+a(n-1)` -/
def P931891633409181761.Spec : Prop :=
  ∀ n, P931891633409181761.a n = A298023 n

end A298023

/-! ## A298023.P3322424162380433781

`a(n-1)+A282655(C(2, n+2))*A298022(n)` with `a(0)=1`
-/

namespace A298023.P3322424162380433781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A282655 (Nat.choose 2 (n + 2)) * A298022 n

end

end A298023.P3322424162380433781

namespace A298023

/-- `a(n-1)+A282655(C(2, n+2))*A298022(n)` -/
def P3322424162380433781.Spec : Prop :=
  ∀ n, P3322424162380433781.a n = A298023 n

end A298023

/-! ## A298023.P13716258366937092679

`a(n-1)+A298022(n)%A298014(n+1)` with `a(0)=1`
-/

namespace A298023.P13716258366937092679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A298022 n) (A298014 (n + 1))

end

end A298023.P13716258366937092679

namespace A298023

/-- `a(n-1)+A298022(n)%A298014(n+1)` -/
def P13716258366937092679.Spec : Prop :=
  ∀ n, P13716258366937092679.a n = A298023 n

end A298023

/-! ## A298023.P12490065477646082524

`a(n-1)+1+A298022(n)+A008683(A123365(n+1))` with `a(0)=1`
-/

namespace A298023.P12490065477646082524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + (A298022 n + A008683 (A123365 (n + 1)).toNat)

end

end A298023.P12490065477646082524

namespace A298023

/-- `a(n-1)+1+A298022(n)+A008683(A123365(n+1))` -/
def P12490065477646082524.Spec : Prop :=
  ∀ n, P12490065477646082524.a n = A298023 n

end A298023

/-! ## A298023.P11326175819277262683

`∑[A301298(n)-A105700(A001172(n))]`
-/

namespace A298023.P11326175819277262683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A105700 (A001172 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298023.P11326175819277262683

namespace A298023

/-- `∑[A301298(n)-A105700(A001172(n))]` -/
def P11326175819277262683.Spec : Prop :=
  ∀ n, P11326175819277262683.a n = A298023 n

end A298023

/-! ## A298023.P10573093467136519198

`(A298022(n)+a(n-1))%A298026(a(n-1))` with `a(0)=1`
-/

namespace A298023.P10573093467136519198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A298022 n + a (n - 1)) (A298026 (a (n - 1)).toNat)

end

end A298023.P10573093467136519198

namespace A298023

/-- `(A298022(n)+a(n-1))%A298026(a(n-1))` -/
def P10573093467136519198.Spec : Prop :=
  ∀ n, P10573093467136519198.a n = A298023 n

end A298023

/-!
# A298024: Expansion of (x^4+3*x^3+6*x^2+3*x+1)/((1-x)*(1-x^3)).

The programs for A298024, the canonical program `A298024.P3777845383164226265` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298024 has offset 0).

The definition of A298024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+6x^2+3x^3+x^4)/(1-x-x^3+x^4))` (program `A298024.P3777845383164226265`, by `A298024.P3777845383164226265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298024.P3777845383164226265

`ogf((1+3x+6x^2+3x^3+x^4)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298024

/-- `ogf((1+3x+6x^2+3x^3+x^4)/(1-x-x^3+x^4))` -/
def P3777845383164226265.Spec : Prop :=
  ∀ n, P3777845383164226265.a n = A298024 n

theorem P3777845383164226265.correct : P3777845383164226265.Spec := by
  intro n
  simp only [A298024]

end A298024

/-! ## A298024.P14623900146486814920

`a(n-3)+14` with `a(0)=1, a(1)=4, a(2)=10, a(3)=14`
-/

namespace A298024.P14623900146486814920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10, 14] fun n a =>
  a (n - 3) + 14

end

end A298024.P14623900146486814920

namespace A298024

/-- `a(n-3)+14` -/
def P14623900146486814920.Spec : Prop :=
  ∀ n, (P14623900146486814920.a n : ℤ) = A298024 n

end A298024

/-! ## A298024.P4009224305944806640

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=6, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A298024.P4009224305944806640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6, 4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298024.P4009224305944806640

namespace A298024

/-- `∑[floor(a(n-3))]` -/
def P4009224305944806640.Spec : Prop :=
  ∀ n, (P4009224305944806640.a n : ℤ) = A298024 n

end A298024

/-! ## A298024.P4714841713856050064

`∑[a(n-3)%7]` with `a(0)=1, a(1)=3, a(2)=6, a(3)=4, a(4)=4`
-/

namespace A298024.P4714841713856050064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6, 4, 4] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298024.P4714841713856050064

namespace A298024

/-- `∑[a(n-3)%7]` -/
def P4714841713856050064.Spec : Prop :=
  ∀ n, (P4714841713856050064.a n : ℤ) = A298024 n

end A298024

/-! ## A298024.P6659298656192467178

`A063238(n)-a(n-1)` with `a(0)=1`
-/

namespace A298024.P6659298656192467178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063238 n - a (n - 1)

end

end A298024.P6659298656192467178

namespace A298024

/-- `A063238(n)-a(n-1)` -/
def P6659298656192467178.Spec : Prop :=
  ∀ n, P6659298656192467178.a n = A298024 n

end A298024

/-! ## A298024.P6608291595869201617

`A219529(n)-round(2*n/3)`
-/

namespace A298024.P6608291595869201617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A298024.P6608291595869201617

namespace A298024

/-- `A219529(n)-round(2*n/3)` -/
def P6608291595869201617.Spec : Prop :=
  ∀ n, P6608291595869201617.a n = A298024 n

end A298024

/-! ## A298024.P3562931473281546732

`A047529(n+1)+comp[2*(n+1)]`
-/

namespace A298024.P3562931473281546732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A298024.P3562931473281546732

namespace A298024

/-- `A047529(n+1)+comp[2*(n+1)]` -/
def P3562931473281546732.Spec : Prop :=
  ∀ n, P3562931473281546732.a n = A298024 n

end A298024

/-! ## A298024.P11062894894505588630

`A136290(n)+A004396(n)`
-/

namespace A298024.P11062894894505588630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n + A004396 n

end

end A298024.P11062894894505588630

namespace A298024

/-- `A136290(n)+A004396(n)` -/
def P11062894894505588630.Spec : Prop :=
  ∀ n, P11062894894505588630.a n = A298024 n

end A298024

/-! ## A298024.P1138378068559147093

`A298788(n)+A006369(n)`
-/

namespace A298024.P1138378068559147093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298788 n + A006369 n

end

end A298024.P1138378068559147093

namespace A298024

/-- `A298788(n)+A006369(n)` -/
def P1138378068559147093.Spec : Prop :=
  ∀ n, P1138378068559147093.a n = A298024 n

end A298024

/-! ## A298024.P14179332720032258018

`A301298(n)-A102283(n)`
-/

namespace A298024.P14179332720032258018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A102283 n

end

end A298024.P14179332720032258018

namespace A298024

/-- `A301298(n)-A102283(n)` -/
def P14179332720032258018.Spec : Prop :=
  ∀ n, P14179332720032258018.a n = A298024 n

end A298024

/-! ## A298024.P13928492041710605979

`A271114(n)-A222657(n)`
-/

namespace A298024.P13928492041710605979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A222657 n

end

end A298024.P13928492041710605979

namespace A298024

/-- `A271114(n)-A222657(n)` -/
def P13928492041710605979.Spec : Prop :=
  ∀ n, P13928492041710605979.a n = A298024 n

end A298024

/-! ## A298024.P10986777607557757809

`A008854(n+1)+A008486(n)`
-/

namespace A298024.P10986777607557757809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1) + A008486 n

end

end A298024.P10986777607557757809

namespace A298024

/-- `A008854(n+1)+A008486(n)` -/
def P10986777607557757809.Spec : Prop :=
  ∀ n, P10986777607557757809.a n = A298024 n

end A298024

/-! ## A298024.P16861724480030631400

`A047395(n+1)+A004277(n)`
-/

namespace A298024.P16861724480030631400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 1) + A004277 n

end

end A298024.P16861724480030631400

namespace A298024

/-- `A047395(n+1)+A004277(n)` -/
def P16861724480030631400.Spec : Prop :=
  ∀ n, P16861724480030631400.a n = A298024 n

end A298024

/-! ## A298024.P7094050972270688486

`A047266(n+1)+A008576(n)`
-/

namespace A298024.P7094050972270688486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1) + A008576 n

end

end A298024.P7094050972270688486

namespace A298024

/-- `A047266(n+1)+A008576(n)` -/
def P7094050972270688486.Spec : Prop :=
  ∀ n, P7094050972270688486.a n = A298024 n

end A298024

/-! ## A298024.P12796577598663648667

`A298786(n)+A042965(n+1)`
-/

namespace A298024.P12796577598663648667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A042965 (n + 1)

end

end A298024.P12796577598663648667

namespace A298024

/-- `A298786(n)+A042965(n+1)` -/
def P12796577598663648667.Spec : Prop :=
  ∀ n, P12796577598663648667.a n = A298024 n

end A298024

/-! ## A298024.P14900516024125624690

`A063222(n+1)-A169609(n)`
-/

namespace A298024.P14900516024125624690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) - A169609 n

end

end A298024.P14900516024125624690

namespace A298024

/-- `A063222(n+1)-A169609(n)` -/
def P14900516024125624690.Spec : Prop :=
  ∀ n, P14900516024125624690.a n = A298024 n

end A298024

/-! ## A298024.P7968805266606679911

`A063089(n+1)-A302402(n)`
-/

namespace A298024.P7968805266606679911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) - A302402 n

end

end A298024.P7968805266606679911

namespace A298024

/-- `A063089(n+1)-A302402(n)` -/
def P7968805266606679911.Spec : Prop :=
  ∀ n, P7968805266606679911.a n = A298024 n

end A298024

/-! ## A298024.P11017115914314258990

`A252994(n)-A063327(n+2)`
-/

namespace A298024.P11017115914314258990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252994 n - A063327 (n + 2)

end

end A298024.P11017115914314258990

namespace A298024

/-- `A252994(n)-A063327(n+2)` -/
def P11017115914314258990.Spec : Prop :=
  ∀ n, P11017115914314258990.a n = A298024 n

end A298024

/-! ## A298024.P16144047993615642766

`A008458(n)-2*A004396(n)`
-/

namespace A298024.P16144047993615642766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004396 n

end

end A298024.P16144047993615642766

namespace A298024

/-- `A008458(n)-2*A004396(n)` -/
def P16144047993615642766.Spec : Prop :=
  ∀ n, P16144047993615642766.a n = A298024 n

end A298024

/-! ## A298024.P17653539248043308846

`2*A219529(n)-A008458(n)`
-/

namespace A298024.P17653539248043308846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219529 n - A008458 n

end

end A298024.P17653539248043308846

namespace A298024

/-- `2*A219529(n)-A008458(n)` -/
def P17653539248043308846.Spec : Prop :=
  ∀ n, P17653539248043308846.a n = A298024 n

end A298024

/-!
# A298025: Partial sums of A298024.

The programs for A298025, the canonical program `A298025.P10579118014990008517` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298025 has offset 0).

The definition of A298025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298025.P15960649667280101671

`ogf((1+3x+6x^2+3x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A298025.P15960649667280101671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 6, 3, 1] [1, -2, 1, -1, 2, -1] n

end

end A298025.P15960649667280101671

namespace A298025

/-- `ogf((1+3x+6x^2+3x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P15960649667280101671.Spec : Prop :=
  ∀ n, P15960649667280101671.a n = A298025 n

end A298025

/-! ## A298025.P10579118014990008517

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=15, a(3)=29, a(4)=47`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298025

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P10579118014990008517.Spec : Prop :=
  ∀ n, P10579118014990008517.a n = A298025 n

theorem P10579118014990008517.correct : P10579118014990008517.Spec := by
  intro n
  simp only [A298025]

end A298025

/-! ## A298025.P10218910389265275058

`ceil((∑[14*n]+1)/3)`
-/

namespace A298025.P10218910389265275058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 3⌉

end

end A298025.P10218910389265275058

namespace A298025

/-- `ceil((∑[14*n]+1)/3)` -/
def P10218910389265275058.Spec : Prop :=
  ∀ n, P10218910389265275058.a n = A298025 n

end A298025

/-! ## A298025.P4438837577663759638

`∑[a(n-3)+14]` with `a(0)=1, a(1)=4, a(2)=10, a(3)=14`
-/

namespace A298025.P4438837577663759638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10, 14] fun n f1 =>
  f1 (n - 3) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298025.P4438837577663759638

namespace A298025

/-- `∑[a(n-3)+14]` -/
def P4438837577663759638.Spec : Prop :=
  ∀ n, (P4438837577663759638.a n : ℤ) = A298025 n

end A298025

/-! ## A298025.P6320000355605020213

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=6, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A298025.P6320000355605020213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6, 4, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298025.P6320000355605020213

namespace A298025

/-- `∑[∑[floor(a(n-3))]]` -/
def P6320000355605020213.Spec : Prop :=
  ∀ n, (P6320000355605020213.a n : ℤ) = A298025 n

end A298025

/-! ## A298025.P10892534140644242781

`∑[∑[gcd(3, n+1)]+n]+n²`
-/

namespace A298025.P10892534140644242781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A298025.P10892534140644242781

namespace A298025

/-- `∑[∑[gcd(3, n+1)]+n]+n²` -/
def P10892534140644242781.Spec : Prop :=
  ∀ n, (P10892534140644242781.a n : ℤ) = A298025 n

end A298025

/-! ## A298025.P12991567495666060395

`∑[A298024(n)]`
-/

namespace A298025.P12991567495666060395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298025.P12991567495666060395

namespace A298025

/-- `∑[A298024(n)]` -/
def P12991567495666060395.Spec : Prop :=
  ∀ n, P12991567495666060395.a n = A298025 n

end A298025

/-! ## A298025.P11928999120828241359

`A397982(n)+(n+1)²`
-/

namespace A298025.P11928999120828241359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397982 n + ((n + 1) ^ 2 : ℤ)

end

end A298025.P11928999120828241359

namespace A298025

/-- `A397982(n)+(n+1)²` -/
def P11928999120828241359.Spec : Prop :=
  ∀ n, P11928999120828241359.a n = A298025 n

end A298025

/-! ## A298025.P4393165852472821281

`∑[A047529(n+1)]+n²`
-/

namespace A298025.P4393165852472821281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A298025.P4393165852472821281

namespace A298025

/-- `∑[A047529(n+1)]+n²` -/
def P4393165852472821281.Spec : Prop :=
  ∀ n, P4393165852472821281.a n = A298025 n

end A298025

/-! ## A298025.P12365680357644284850

`A208994(n)+A046092(n)`
-/

namespace A298025.P12365680357644284850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n + A046092 n

end

end A298025.P12365680357644284850

namespace A298025

/-- `A208994(n)+A046092(n)` -/
def P12365680357644284850.Spec : Prop :=
  ∀ n, P12365680357644284850.a n = A298025 n

end A298025

/-! ## A298025.P2822096727929338255

`A398202(n)+A000969(n)`
-/

namespace A298025.P2822096727929338255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398202 n + A000969 n

end

end A298025.P2822096727929338255

namespace A298025

/-- `A398202(n)+A000969(n)` -/
def P2822096727929338255.Spec : Prop :=
  ∀ n, P2822096727929338255.a n = A298025 n

end A298025

/-! ## A298025.P8781056641806747934

`A069894(n)-A298785(n)`
-/

namespace A298025.P8781056641806747934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A298785 n

end

end A298025.P8781056641806747934

namespace A298025

/-- `A069894(n)-A298785(n)` -/
def P8781056641806747934.Spec : Prop :=
  ∀ n, P8781056641806747934.a n = A298025 n

end A298025

/-! ## A298025.P3931265747858747638

`A033951(n)-A398203(n)`
-/

namespace A298025.P3931265747858747638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n - A398203 n

end

end A298025.P3931265747858747638

namespace A298025

/-- `A033951(n)-A398203(n)` -/
def P3931265747858747638.Spec : Prop :=
  ∀ n, P3931265747858747638.a n = A298025 n

end A298025

/-! ## A298025.P5863628916817155628

`A064225(n)-A398859(n)`
-/

namespace A298025.P5863628916817155628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - A398859 n

end

end A298025.P5863628916817155628

namespace A298025

/-- `A064225(n)-A398859(n)` -/
def P5863628916817155628.Spec : Prop :=
  ∀ n, P5863628916817155628.a n = A298025 n

end A298025

/-! ## A298025.P3838194978030558899

`A084849(n)+A071408(n+1)`
-/

namespace A298025.P3838194978030558899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n + A071408 (n + 1)

end

end A298025.P3838194978030558899

namespace A298025

/-- `A084849(n)+A071408(n+1)` -/
def P3838194978030558899.Spec : Prop :=
  ∀ n, P3838194978030558899.a n = A298025 n

end A298025

/-! ## A298025.P16663482314907830024

`A194275(n)+A005448(n+1)`
-/

namespace A298025.P16663482314907830024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n + A005448 (n + 1)

end

end A298025.P16663482314907830024

namespace A298025

/-- `A194275(n)+A005448(n+1)` -/
def P16663482314907830024.Spec : Prop :=
  ∀ n, P16663482314907830024.a n = A298025 n

end A298025

/-! ## A298025.P12756609854304103928

`A398856(n)+A034856(n+1)`
-/

namespace A298025.P12756609854304103928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398856 n + A034856 (n + 1)

end

end A298025.P12756609854304103928

namespace A298025

/-- `A398856(n)+A034856(n+1)` -/
def P12756609854304103928.Spec : Prop :=
  ∀ n, P12756609854304103928.a n = A298025 n

end A298025

/-! ## A298025.P15952435583633197945

`A054569(n+1)-A398855(n)`
-/

namespace A298025.P15952435583633197945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054569 (n + 1) - A398855 n

end

end A298025.P15952435583633197945

namespace A298025

/-- `A054569(n+1)-A398855(n)` -/
def P15952435583633197945.Spec : Prop :=
  ∀ n, P15952435583633197945.a n = A298025 n

end A298025

/-! ## A298025.P10060286367725184569

`∑[A008458(n)-2*A004396(n)]`
-/

namespace A298025.P10060286367725184569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298025.P10060286367725184569

namespace A298025

/-- `∑[A008458(n)-2*A004396(n)]` -/
def P10060286367725184569.Spec : Prop :=
  ∀ n, P10060286367725184569.a n = A298025 n

end A298025

/-! ## A298025.P11456863837690253214

`∑[2*A219529(n)-A008458(n)]`
-/

namespace A298025.P11456863837690253214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219529 n - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298025.P11456863837690253214

namespace A298025

/-- `∑[2*A219529(n)-A008458(n)]` -/
def P11456863837690253214.Spec : Prop :=
  ∀ n, P11456863837690253214.a n = A298025 n

end A298025

/-!
# A298026: Coordination sequence of Dual(3.6.3.6) tiling with respect to a hexavalent node.

The programs for A298026, the canonical program `A298026.P4783295238360363022` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298026 has offset 0).

The definition of A298026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298026.P13588425147339248535

`ogf((1+6x+4x^2+6x^3+x^4)/(1-2x^2+x^4))`
-/

namespace A298026.P13588425147339248535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 4, 6, 1] [1, 0, -2, 0, 1] n

end

end A298026.P13588425147339248535

namespace A298026

/-- `ogf((1+6x+4x^2+6x^3+x^4)/(1-2x^2+x^4))` -/
def P13588425147339248535.Spec : Prop :=
  ∀ n, P13588425147339248535.a n = A298026 n

end A298026

/-! ## A298026.P4783295238360363022

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=6, a(3)=18, a(4)=12`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298026

/-- `2*a(n-2)-a(n-4)` -/
def P4783295238360363022.Spec : Prop :=
  ∀ n, P4783295238360363022.a n = A298026 n

theorem P4783295238360363022.correct : P4783295238360363022.Spec := by
  intro n
  simp only [A298026]

end A298026

/-! ## A298026.P12716839706699641221

`floor(3/acot(2*gcd(n, ∑[n])))`
-/

namespace A298026.P12716839706699641221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌋

end

end A298026.P12716839706699641221

namespace A298026

/-- `floor(3/acot(2*gcd(n, ∑[n])))` -/
def P12716839706699641221.Spec : Prop :=
  ∀ n, P12716839706699641221.a n = A298026 n

end A298026

/-! ## A298026.P1261784275416109446

`C(2, n+2)+lcm(2, 3*n)`
-/

namespace A298026.P1261784275416109446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + Nat.lcm 2 (3 * n)

end

end A298026.P1261784275416109446

namespace A298026

/-- `C(2, n+2)+lcm(2, 3*n)` -/
def P1261784275416109446.Spec : Prop :=
  ∀ n, (P1261784275416109446.a n : ℤ) = A298026 n

end A298026

/-! ## A298026.P6890304756453970281

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=6, a(2)=6`
-/

namespace A298026.P6890304756453970281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6, 6] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A298026.P6890304756453970281

namespace A298026

/-- `a(n-2)/(1-2/n)` -/
def P6890304756453970281.Spec : Prop :=
  ∀ n, P6890304756453970281.a n = (A298026 n : ℚ)

end A298026

/-! ## A298026.P15622705729255163688

`n*gcd(3*(n+1), a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A298026.P15622705729255163688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  n * Nat.gcd (3 * (n + 1)) (a (n - 1))

end

end A298026.P15622705729255163688

namespace A298026

/-- `n*gcd(3*(n+1), a(n-1))` -/
def P15622705729255163688.Spec : Prop :=
  ∀ n, (P15622705729255163688.a n : ℤ) = A298026 n

end A298026

/-! ## A298026.P9479429512403525414

`gcd(∑[6*n], record[(n+1)*3^(n%2)])`
-/

namespace A298026.P9479429512403525414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A298026.P9479429512403525414

namespace A298026

/-- `gcd(∑[6*n], record[(n+1)*3^(n%2)])` -/
def P9479429512403525414.Spec : Prop :=
  ∀ n, (P9479429512403525414.a n : ℤ) = A298026 n

end A298026

/-! ## A298026.P963230969003425288

`ceil(A298036(n)/2)`
-/

namespace A298026.P963230969003425288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A298036 n : ℚ) / 2⌉

end

end A298026.P963230969003425288

namespace A298026

/-- `ceil(A298036(n)/2)` -/
def P963230969003425288.Spec : Prop :=
  ∀ n, P963230969003425288.a n = A298026 n

end A298026

/-! ## A298026.P17029621295012628074

`A008458(gcd(n, ∑[n]))`
-/

namespace A298026.P17029621295012628074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A298026.P17029621295012628074

namespace A298026

/-- `A008458(gcd(n, ∑[n]))` -/
def P17029621295012628074.Spec : Prop :=
  ∀ n, P17029621295012628074.a n = A298026 n

end A298026

/-! ## A298026.P11200096516517127008

`A008458(lcm(2, n)/2)`
-/

namespace A298026.P11200096516517127008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A298026.P11200096516517127008

namespace A298026

/-- `A008458(lcm(2, n)/2)` -/
def P11200096516517127008.Spec : Prop :=
  ∀ n, P11200096516517127008.a n = A298026 n

end A298026

/-! ## A298026.P10474434324250649789

`A298033(n)-a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A298026.P10474434324250649789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A298033 n - a (n - 1)

end

end A298026.P10474434324250649789

namespace A298026

/-- `A298033(n)-a(n-1)` -/
def P10474434324250649789.Spec : Prop :=
  ∀ n, P10474434324250649789.a n = A298026 n

end A298026

/-! ## A298026.P1322010909323945176

`A008458(A026741(n))`
-/

namespace A298026.P1322010909323945176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A026741 n).toNat

end

end A298026.P1322010909323945176

namespace A298026

/-- `A008458(A026741(n))` -/
def P1322010909323945176.Spec : Prop :=
  ∀ n, P1322010909323945176.a n = A298026 n

end A298026

/-! ## A298026.P9856522540725721213

`A008458(A109043(n)/2)`
-/

namespace A298026.P9856522540725721213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A109043 n : ℚ) / 2)).toNat

end

end A298026.P9856522540725721213

namespace A298026

/-- `A008458(A109043(n)/2)` -/
def P9856522540725721213.Spec : Prop :=
  ∀ n, P9856522540725721213.a n = A298026 n

end A298026

/-! ## A298026.P12871384336840118711

`A382154(n)+A109043(n)`
-/

namespace A298026.P12871384336840118711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382154 n + A109043 n

end

end A298026.P12871384336840118711

namespace A298026

/-- `A382154(n)+A109043(n)` -/
def P12871384336840118711.Spec : Prop :=
  ∀ n, P12871384336840118711.a n = A298026 n

end A298026

/-! ## A298026.P1239790095362451366

`A008458(n-A142150(n))`
-/

namespace A298026.P1239790095362451366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) - A142150 n).toNat

end

end A298026.P1239790095362451366

namespace A298026

/-- `A008458(n-A142150(n))` -/
def P1239790095362451366.Spec : Prop :=
  ∀ n, P1239790095362451366.a n = A298026 n

end A298026

/-! ## A298026.P9626527094720342942

`A000034(n)*A008486(n)`
-/

namespace A298026.P9626527094720342942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A008486 n

end

end A298026.P9626527094720342942

namespace A298026

/-- `A000034(n)*A008486(n)` -/
def P9626527094720342942.Spec : Prop :=
  ∀ n, P9626527094720342942.a n = A298026 n

end A298026

/-! ## A298026.P17766836495166232725

`A008458(n/A040001(n))`
-/

namespace A298026.P17766836495166232725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A298026.P17766836495166232725

namespace A298026

/-- `A008458(n/A040001(n))` -/
def P17766836495166232725.Spec : Prop :=
  ∀ n, P17766836495166232725.a n = A298026 n

end A298026

/-! ## A298026.P16611779181796520999

`gcd(A008458(n), A028896(n))`
-/

namespace A298026.P16611779181796520999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008458 n) (A028896 n)

end

end A298026.P16611779181796520999

namespace A298026

/-- `gcd(A008458(n), A028896(n))` -/
def P16611779181796520999.Spec : Prop :=
  ∀ n, (P16611779181796520999.a n : ℤ) = A298026 n

end A298026

/-! ## A298026.P16169252453787926038

`gcd(A008401(n), A119536(n))`
-/

namespace A298026.P16169252453787926038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008401 n) (A119536 n)

end

end A298026.P16169252453787926038

namespace A298026

/-- `gcd(A008401(n), A119536(n))` -/
def P16169252453787926038.Spec : Prop :=
  ∀ n, (P16169252453787926038.a n : ℤ) = A298026 n

end A298026

/-!
# A298027: Partial sums of A298026.

The programs for A298027, the canonical program `A298027.P18185960904614678095` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298027 has offset 0).

The definition of A298027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298027.P48652880869225507

`ogf((1+6x+4x^2+6x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A298027.P48652880869225507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 4, 6, 1] [1, -1, -2, 2, 1, -1] n

end

end A298027.P48652880869225507

namespace A298027

/-- `ogf((1+6x+4x^2+6x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P48652880869225507.Spec : Prop :=
  ∀ n, P48652880869225507.a n = A298027 n

end A298027

/-! ## A298027.P16871859461985467863

`(4+6*n+9*n²+(3+6*n)*n%2)/4`
-/

namespace A298027.P16871859461985467863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 + 6 * n + 9 * n ^ 2 + (3 + 6 * n) * (n % 2) : ℕ) : ℚ) / 4

end

end A298027.P16871859461985467863

namespace A298027

/-- `(4+6*n+9*n²+(3+6*n)*n%2)/4` -/
def P16871859461985467863.Spec : Prop :=
  ∀ n, P16871859461985467863.a n = (A298027 n : ℚ)

end A298027

/-! ## A298027.P9177106723509768169

`(18*n²+18*n+11-3*(2*n+1)*(-1)^n)/8`
-/

namespace A298027.P9177106723509768169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * n ^ 2 + 18 * n + 11 : ℤ) - (3 * (2 * n + 1) : ℤ) * (-1) ^ n : ℚ) / 8

end

end A298027.P9177106723509768169

namespace A298027

/-- `(18*n²+18*n+11-3*(2*n+1)*(-1)^n)/8` -/
def P9177106723509768169.Spec : Prop :=
  ∀ n, P9177106723509768169.a n = (A298027 n : ℚ)

end A298027

/-! ## A298027.P18185960904614678095

`A016921(A001318(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A298027

/-- `A016921(A001318(n))` -/
def P18185960904614678095.Spec : Prop :=
  ∀ n, P18185960904614678095.a n = A298027 n

theorem P18185960904614678095.correct : P18185960904614678095.Spec := by
  intro n
  simp only [A298027]

end A298027

/-! ## A298027.P913566145552731087

`∑[lcm(2, 3*n)]+1`
-/

namespace A298027.P913566145552731087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298027.P913566145552731087

namespace A298027

/-- `∑[lcm(2, 3*n)]+1` -/
def P913566145552731087.Spec : Prop :=
  ∀ n, (P913566145552731087.a n : ℤ) = A298027 n

end A298027

/-! ## A298027.P14631474051238402692

`∑[6*gcd(n, ∑[n])]+1`
-/

namespace A298027.P14631474051238402692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298027.P14631474051238402692

namespace A298027

/-- `∑[6*gcd(n, ∑[n])]+1` -/
def P14631474051238402692.Spec : Prop :=
  ∀ n, (P14631474051238402692.a n : ℤ) = A298027 n

end A298027

/-! ## A298027.P11220234467375844001

`filter[n²+n+1, #%3]`
-/

namespace A298027.P11220234467375844001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 3 = 1) n)

end

end A298027.P11220234467375844001

namespace A298027

/-- `filter[n²+n+1, #%3]` -/
def P11220234467375844001.Spec : Prop :=
  ∀ n, (P11220234467375844001.a n : ℤ) = A298027 n

end A298027

/-! ## A298027.P3631258394609553587

`filter[n²+n+1, gcd(3, #)]`
-/

namespace A298027.P3631258394609553587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 3 (f1 j) = 1) n)

end

end A298027.P3631258394609553587

namespace A298027

/-- `filter[n²+n+1, gcd(3, #)]` -/
def P3631258394609553587.Spec : Prop :=
  ∀ n, (P3631258394609553587.a n : ℤ) = A298027 n

end A298027

/-! ## A298027.P17902703380674174367

`record[lcm(3, n²+1+n)/3]`
-/

namespace A298027.P17902703380674174367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n ^ 2 + 1 + n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298027.P17902703380674174367

namespace A298027

/-- `record[lcm(3, n²+1+n)/3]` -/
def P17902703380674174367.Spec : Prop :=
  ∀ n, P17902703380674174367.a n = (A298027 n : ℚ)

end A298027

/-! ## A298027.P17457901402440221878

`record[((1-n)²+n)/3^val(n+1, 3)]`
-/

namespace A298027.P17457901402440221878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ) : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298027.P17457901402440221878

namespace A298027

/-- `record[((1-n)²+n)/3^val(n+1, 3)]` -/
def P17457901402440221878.Spec : Prop :=
  ∀ n, P17457901402440221878.a n = (A298027 n : ℚ)

end A298027

/-! ## A298027.P10164532936504832482

`∑[A298026(n)]`
-/

namespace A298027.P10164532936504832482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298027.P10164532936504832482

namespace A298027

/-- `∑[A298026(n)]` -/
def P10164532936504832482.Spec : Prop :=
  ∀ n, P10164532936504832482.a n = A298027 n

end A298027

/-! ## A298027.P5827905774754019837

`ceil(A298037(n)/2)`
-/

namespace A298027.P5827905774754019837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A298037 n : ℚ) / 2⌉

end

end A298027.P5827905774754019837

namespace A298027

/-- `ceil(A298037(n)/2)` -/
def P5827905774754019837.Spec : Prop :=
  ∀ n, P5827905774754019837.a n = A298027 n

end A298027

/-! ## A298027.P3515079060777633113

`3*A152749(n)+1`
-/

namespace A298027.P3515079060777633113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A152749 n + 1

end

end A298027.P3515079060777633113

namespace A298027

/-- `3*A152749(n)+1` -/
def P3515079060777633113.Spec : Prop :=
  ∀ n, P3515079060777633113.a n = A298027 n

end A298027

/-! ## A298027.P13901298907063682942

`∑[A008458(gcd(n, ∑[n]))]`
-/

namespace A298027.P13901298907063682942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298027.P13901298907063682942

namespace A298027

/-- `∑[A008458(gcd(n, ∑[n]))]` -/
def P13901298907063682942.Spec : Prop :=
  ∀ n, P13901298907063682942.a n = A298027 n

end A298027

/-! ## A298027.P939011004716498549

`∑[2*A165351(n)]+1`
-/

namespace A298027.P939011004716498549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298027.P939011004716498549

namespace A298027

/-- `∑[2*A165351(n)]+1` -/
def P939011004716498549.Spec : Prop :=
  ∀ n, P939011004716498549.a n = A298027 n

end A298027

/-! ## A298027.P5050766037493501838

`∑[n]+A132354(n)+1`
-/

namespace A298027.P5050766037493501838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A132354 n + 1)

end

end A298027.P5050766037493501838

namespace A298027

/-- `∑[n]+A132354(n)+1` -/
def P5050766037493501838.Spec : Prop :=
  ∀ n, P5050766037493501838.a n = A298027 n

end A298027

/-! ## A298027.P9217777355530662487

`∑[n*A010704(n)]+1`
-/

namespace A298027.P9217777355530662487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298027.P9217777355530662487

namespace A298027

/-- `∑[n*A010704(n)]+1` -/
def P9217777355530662487.Spec : Prop :=
  ∀ n, P9217777355530662487.a n = A298027 n

end A298027

/-! ## A298027.P3018339263052091229

`2*A117748(n+1)+1`
-/

namespace A298027.P3018339263052091229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117748 (n + 1) + 1

end

end A298027.P3018339263052091229

namespace A298027

/-- `2*A117748(n+1)+1` -/
def P3018339263052091229.Spec : Prop :=
  ∀ n, P3018339263052091229.a n = A298027 n

end A298027

/-! ## A298027.P1993298644413615957

`ceil((A007310(n+1)/2)²)`
-/

namespace A298027.P1993298644413615957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A007310 (n + 1) : ℚ) / 2) ^ 2⌉

end

end A298027.P1993298644413615957

namespace A298027

/-- `ceil((A007310(n+1)/2)²)` -/
def P1993298644413615957.Spec : Prop :=
  ∀ n, P1993298644413615957.a n = A298027 n

end A298027

/-! ## A298027.P1028335239474906007

`A298034(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A298027.P1028335239474906007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298034 n + (1 - a (n - 1))

end

end A298027.P1028335239474906007

namespace A298027

/-- `A298034(n)+1-a(n-1)` -/
def P1028335239474906007.Spec : Prop :=
  ∀ n, P1028335239474906007.a n = A298027 n

end A298027

/-!
# A298028: Coordination sequence of Dual(3.6.3.6) tiling with respect to a trivalent node.

The programs for A298028, the canonical program `A298028.P4365495357852131750` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298028 has offset 0).

The definition of A298028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298028.P4365495357852131750

`ogf((1+3x+10x^2+3x^3+x^4)/(1-2x^2+x^4))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298028

/-- `ogf((1+3x+10x^2+3x^3+x^4)/(1-2x^2+x^4))` -/
def P4365495357852131750.Spec : Prop :=
  ∀ n, P4365495357852131750.a n = A298028 n

theorem P4365495357852131750.correct : P4365495357852131750.Spec := by
  intro n
  simp only [A298028]

end A298028

/-! ## A298028.P11207471940814536080

`n*(a(n-1)%6+3)` with `a(0)=1, a(1)=3`
-/

namespace A298028.P11207471940814536080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  n * (a (n - 1) % 6 + 3)

end

end A298028.P11207471940814536080

namespace A298028

/-- `n*(a(n-1)%6+3)` -/
def P11207471940814536080.Spec : Prop :=
  ∀ n, (P11207471940814536080.a n : ℤ) = A298028 n

end A298028

/-! ## A298028.P13956212466615674730

`n*gcd(6, a(n-1)+3)` with `a(0)=1, a(1)=3`
-/

namespace A298028.P13956212466615674730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  n * Nat.gcd 6 (a (n - 1) + 3)

end

end A298028.P13956212466615674730

namespace A298028

/-- `n*gcd(6, a(n-1)+3)` -/
def P13956212466615674730.Spec : Prop :=
  ∀ n, (P13956212466615674730.a n : ℤ) = A298028 n

end A298028

/-! ## A298028.P4211619695902046835

`6*n/gcd(2, a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A298028.P4211619695902046835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (6 * n : ℚ) / (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A298028.P4211619695902046835

namespace A298028

/-- `6*n/gcd(2, a(n-1))` -/
def P4211619695902046835.Spec : Prop :=
  ∀ n, P4211619695902046835.a n = (A298028 n : ℚ)

end A298028

/-! ## A298028.P15388720820959434495

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=3, a(2)=12`
-/

namespace A298028.P15388720820959434495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A298028.P15388720820959434495

namespace A298028

/-- `a(n-2)/(1-2/n)` -/
def P15388720820959434495.Spec : Prop :=
  ∀ n, P15388720820959434495.a n = (A298028 n : ℚ)

end A298028

/-! ## A298028.P13991737357641219101

`3*n*gcd(n, 2%a(n-1))` with `a(0)=1`
-/

namespace A298028.P13991737357641219101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (n * Nat.gcd n (2 % a (n - 1)))

end

end A298028.P13991737357641219101

namespace A298028

/-- `3*n*gcd(n, 2%a(n-1))` -/
def P13991737357641219101.Spec : Prop :=
  ∀ n, (P13991737357641219101.a n : ℤ) = A298028 n

end A298028

/-! ## A298028.P12470730197053795723

`Δ[floor(n²/(2*n+1)+n)²]`
-/

namespace A298028.P12470730197053795723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / (2 * n + 1 : ℚ) + (n : ℚ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298028.P12470730197053795723

namespace A298028

/-- `Δ[floor(n²/(2*n+1)+n)²]` -/
def P12470730197053795723.Spec : Prop :=
  ∀ n, P12470730197053795723.a n = A298028 n

end A298028

/-! ## A298028.P48212267568911299

`n*gcd(2*a(n-1), 3*n)` with `a(0)=1, a(1)=3`
-/

namespace A298028.P48212267568911299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  n * Nat.gcd (2 * a (n - 1)) (3 * n)

end

end A298028.P48212267568911299

namespace A298028

/-- `n*gcd(2*a(n-1), 3*n)` -/
def P48212267568911299.Spec : Prop :=
  ∀ n, (P48212267568911299.a n : ℤ) = A298028 n

end A298028

/-! ## A298028.P10605829386514597434

`A280166(n)+4*n`
-/

namespace A298028.P10605829386514597434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 n + (4 * n : ℤ)

end

end A298028.P10605829386514597434

namespace A298028

/-- `A280166(n)+4*n` -/
def P10605829386514597434.Spec : Prop :=
  ∀ n, P10605829386514597434.a n = A298028 n

end A298028

/-! ## A298028.P1703837223607678637

`A306771(n)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A298028.P1703837223607678637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A306771 n - a (n - 1)

end

end A298028.P1703837223607678637

namespace A298028

/-- `A306771(n)-a(n-1)` -/
def P1703837223607678637.Spec : Prop :=
  ∀ n, P1703837223607678637.a n = A298028 n

end A298028

/-! ## A298028.P14146096105901301437

`A162940(n-1)/a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A298028.P14146096105901301437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (A162940 (n - 1) : ℚ) / a (n - 1)

end

end A298028.P14146096105901301437

namespace A298028

/-- `A162940(n-1)/a(n-1)` -/
def P14146096105901301437.Spec : Prop :=
  ∀ n, P14146096105901301437.a n = (A298028 n : ℚ)

end A298028

/-! ## A298028.P17422342439790891907

`A165988(C(n, a(n-1))+n)` with `a(0)=1, a(1)=3`
-/

namespace A298028.P17422342439790891907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A165988 (Nat.choose n (a (n - 1)).toNat + n)

end

end A298028.P17422342439790891907

namespace A298028

/-- `A165988(C(n, a(n-1))+n)` -/
def P17422342439790891907.Spec : Prop :=
  ∀ n, P17422342439790891907.a n = A298028 n

end A298028

/-! ## A298028.P13117709142777541810

`gcd(6*n, (5*n-A004277(n))²)`
-/

namespace A298028.P13117709142777541810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 * n : ℤ) (((5 * n : ℤ) - A004277 n) ^ 2)

end

end A298028.P13117709142777541810

namespace A298028

/-- `gcd(6*n, (5*n-A004277(n))²)` -/
def P13117709142777541810.Spec : Prop :=
  ∀ n, (P13117709142777541810.a n : ℤ) = A298028 n

end A298028

/-! ## A298028.P2632312733944586008

`A165988(n)+A000007(n)`
-/

namespace A298028.P2632312733944586008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n + A000007 n

end

end A298028.P2632312733944586008

namespace A298028

/-- `A165988(n)+A000007(n)` -/
def P2632312733944586008.Spec : Prop :=
  ∀ n, P2632312733944586008.a n = A298028 n

end A298028

/-! ## A298028.P4571693136220032735

`A195161(n)+A004277(n)`
-/

namespace A298028.P4571693136220032735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n + A004277 n

end

end A298028.P4571693136220032735

namespace A298028

/-- `A195161(n)+A004277(n)` -/
def P4571693136220032735.Spec : Prop :=
  ∀ n, P4571693136220032735.a n = A298028 n

end A298028

/-! ## A298028.P10758771233848452075

`A195159(n)+A184418(n)`
-/

namespace A298028.P10758771233848452075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n + A184418 n

end

end A298028.P10758771233848452075

namespace A298028

/-- `A195159(n)+A184418(n)` -/
def P10758771233848452075.Spec : Prop :=
  ∀ n, P10758771233848452075.a n = A298028 n

end A298028

/-! ## A298028.P17841588291536438668

`A298038(n)-A165988(n)`
-/

namespace A298028.P17841588291536438668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298038 n - A165988 n

end

end A298028.P17841588291536438668

namespace A298028

/-- `A298038(n)-A165988(n)` -/
def P17841588291536438668.Spec : Prop :=
  ∀ n, P17841588291536438668.a n = A298028 n

end A298028

/-! ## A298028.P14780433123518720426

`A182455(n)-A325689(n)`
-/

namespace A298028.P14780433123518720426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182455 n - A325689 n

end

end A298028.P14780433123518720426

namespace A298028

/-- `A182455(n)-A325689(n)` -/
def P14780433123518720426.Spec : Prop :=
  ∀ n, P14780433123518720426.a n = A298028 n

end A298028

/-! ## A298028.P3407909391890659665

`A008486(n)*A040001(n)`
-/

namespace A298028.P3407909391890659665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A040001 n

end

end A298028.P3407909391890659665

namespace A298028

/-- `A008486(n)*A040001(n)` -/
def P3407909391890659665.Spec : Prop :=
  ∀ n, P3407909391890659665.a n = A298028 n

end A298028

/-! ## A298028.P9470443569072045780

`A122553(n)*A257088(n)`
-/

namespace A298028.P9470443569072045780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A257088 n

end

end A298028.P9470443569072045780

namespace A298028

/-- `A122553(n)*A257088(n)` -/
def P9470443569072045780.Spec : Prop :=
  ∀ n, P9470443569072045780.a n = A298028 n

end A298028

/-!
# A298029: Coordination sequence of Dual(3.4.6.4) tiling with respect to a trivalent node.

The programs for A298029, the canonical program `A298029.P16605270847898998914` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298029 has offset 0).

The definition of A298029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298029.P12338719401213291797

`ogf((1+2x+2x^2+4x^3+3x^4+9x^5-3x^7)/(1-x-x^2+x^3))`
-/

namespace A298029.P12338719401213291797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 4, 3, 9, 0, -3] [1, -1, -1, 1] n

end

end A298029.P12338719401213291797

namespace A298029

/-- `ogf((1+2x+2x^2+4x^3+3x^4+9x^5-3x^7)/(1-x-x^2+x^3))` -/
def P12338719401213291797.Spec : Prop :=
  ∀ n, P12338719401213291797.a n = A298029 n

end A298029

/-! ## A298029.P16605270847898998914

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12, a(4)=18, a(5)=33, a(6)=39, a(7)=51`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298029

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P16605270847898998914.Spec : Prop :=
  ∀ n, P16605270847898998914.a n = A298029 n

theorem P16605270847898998914.correct : P16605270847898998914.Spec := by
  intro n
  simp only [A298029]

end A298029

/-!
# A298030: Partial sums of A298029.

The programs for A298030, the canonical program `A298030.P16220946793311690855` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298030 has offset 0).

The definition of A298030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298030.P2541618500051186096

`ogf((1+2x+2x^2+4x^3+3x^4+9x^5-3x^7)/(1-2x+2x^3-x^4))`
-/

namespace A298030.P2541618500051186096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 4, 3, 9, 0, -3] [1, -2, 0, 2, -1] n

end

end A298030.P2541618500051186096

namespace A298030

/-- `ogf((1+2x+2x^2+4x^3+3x^4+9x^5-3x^7)/(1-2x+2x^3-x^4))` -/
def P2541618500051186096.Spec : Prop :=
  ∀ n, P2541618500051186096.a n = A298030 n

end A298030

/-! ## A298030.P16220946793311690855

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=22, a(4)=40, a(5)=73, a(6)=112, a(7)=163`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298030

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16220946793311690855.Spec : Prop :=
  ∀ n, P16220946793311690855.a n = A298030 n

theorem P16220946793311690855.correct : P16220946793311690855.Spec := by
  intro n
  simp only [A298030]

end A298030

/-! ## A298030.P16170476398906587933

`∑[A298029(n)]`
-/

namespace A298030.P16170476398906587933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298030.P16170476398906587933

namespace A298030

/-- `∑[A298029(n)]` -/
def P16170476398906587933.Spec : Prop :=
  ∀ n, P16170476398906587933.a n = A298030 n

end A298030

/-! ## A298030.P8179507920823307457

`A298029(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A298030.P8179507920823307457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298029 n + a (A023443 n).toNat

end

end A298030.P8179507920823307457

namespace A298030

/-- `A298029(n)+a(A023443(n))` -/
def P8179507920823307457.Spec : Prop :=
  ∀ n, P8179507920823307457.a n = A298030 n

end A298030

/-! ## A298030.P18047921157827810981

`a(n-1)+A298029(n)%A298031(n)` with `a(0)=1`
-/

namespace A298030.P18047921157827810981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A298029 n) (A298031 n)

end

end A298030.P18047921157827810981

namespace A298030

/-- `a(n-1)+A298029(n)%A298031(n)` -/
def P18047921157827810981.Spec : Prop :=
  ∀ n, P18047921157827810981.a n = A298030 n

end A298030

/-! ## A298030.P12164835323567317068

`A298029(n%A007310(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A298030.P12164835323567317068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298029 (Int.tmod (n : ℤ) (A007310 (n + 1))).toNat + a (n - 1)

end

end A298030.P12164835323567317068

namespace A298030

/-- `A298029(n%A007310(n+1))+a(n-1)` -/
def P12164835323567317068.Spec : Prop :=
  ∀ n, P12164835323567317068.a n = A298030 n

end A298030

/-! ## A298030.P8582468391519305866

`A298029(n)+a(A057427(n+1)+n-2)` with `a(0)=1`
-/

namespace A298030.P8582468391519305866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298029 n + a (A057427 (n + 1) + (n : ℤ) - 2).toNat

end

end A298030.P8582468391519305866

namespace A298030

/-- `A298029(n)+a(A057427(n+1)+n-2)` -/
def P8582468391519305866.Spec : Prop :=
  ∀ n, P8582468391519305866.a n = A298030 n

end A298030

/-! ## A298030.P10165452957091755607

`a(n-1)+A298029(n)/A000034(2*n)` with `a(0)=1`
-/

namespace A298030.P10165452957091755607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A298029 n : ℚ) / (A000034 (2 * n) : ℚ)

end

end A298030.P10165452957091755607

namespace A298030

/-- `a(n-1)+A298029(n)/A000034(2*n)` -/
def P10165452957091755607.Spec : Prop :=
  ∀ n, P10165452957091755607.a n = (A298030 n : ℚ)

end A298030

/-!
# A298031: Coordination sequence of Dual(3.4.6.4) tiling with respect to a tetravalent node.

The programs for A298031, the canonical program `A298031.P11708019879285607184` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298031 has offset 0).

The definition of A298031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298031.P16080684984558331535

`ogf((1+3x+5x^2+3x^3+8x^4-2x^6)/(1-x-x^2+x^3))`
-/

namespace A298031.P16080684984558331535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 3, 8, 0, -2] [1, -1, -1, 1] n

end

end A298031.P16080684984558331535

namespace A298031

/-- `ogf((1+3x+5x^2+3x^3+8x^4-2x^6)/(1-x-x^2+x^3))` -/
def P16080684984558331535.Spec : Prop :=
  ∀ n, P16080684984558331535.a n = A298031 n

end A298031

/-! ## A298031.P11708019879285607184

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=16, a(4)=30, a(5)=36, a(6)=48`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298031

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P11708019879285607184.Spec : Prop :=
  ∀ n, P11708019879285607184.a n = A298031 n

theorem P11708019879285607184.correct : P11708019879285607184.Spec := by
  intro n
  simp only [A298031]

end A298031

/-! ## A298031.P13812199613924577361

`A272978(A001748(n+1))-6`
-/

namespace A298031.P13812199613924577361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272978 (A001748 (n + 1)).toNat - 6

end

end A298031.P13812199613924577361

namespace A298031

/-- `A272978(A001748(n+1))-6` -/
def P13812199613924577361.Spec : Prop :=
  ∀ n, P13812199613924577361.a n = A298031 n

end A298031

/-!
# A298032: Partial sums of A298031.

The programs for A298032, the canonical program `A298032.P9156543283851858632` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298032 has offset 0).

The definition of A298032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298032.P13274849244990543120

`ogf((1+3x+5x^2+3x^3+8x^4-2x^6)/(1-2x+2x^3-x^4))`
-/

namespace A298032.P13274849244990543120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 3, 8, 0, -2] [1, -2, 0, 2, -1] n

end

end A298032.P13274849244990543120

namespace A298032

/-- `ogf((1+3x+5x^2+3x^3+8x^4-2x^6)/(1-2x+2x^3-x^4))` -/
def P13274849244990543120.Spec : Prop :=
  ∀ n, P13274849244990543120.a n = A298032 n

end A298032

/-! ## A298032.P9156543283851858632

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=15, a(3)=31, a(4)=61, a(5)=97, a(6)=145`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298032

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P9156543283851858632.Spec : Prop :=
  ∀ n, P9156543283851858632.a n = A298032 n

theorem P9156543283851858632.correct : P9156543283851858632.Spec := by
  intro n
  simp only [A298032]

end A298032

/-! ## A298032.P9605484571904905468

`∑[A298031(n)]`
-/

namespace A298032.P9605484571904905468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298032.P9605484571904905468

namespace A298032

/-- `∑[A298031(n)]` -/
def P9605484571904905468.Spec : Prop :=
  ∀ n, P9605484571904905468.a n = A298032 n

end A298032

/-! ## A298032.P12127676539809566412

`a(n-1)+A298031(n)+A000038(n)` with `a(0)=1, a(1)=5`
-/

namespace A298032.P12127676539809566412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (A298031 n + A000038 n)

end

end A298032.P12127676539809566412

namespace A298032

/-- `a(n-1)+A298031(n)+A000038(n)` -/
def P12127676539809566412.Spec : Prop :=
  ∀ n, P12127676539809566412.a n = A298032 n

end A298032

/-! ## A298032.P7988835936820810721

`a(n-1)+A298031(n)%A298034(n)` with `a(0)=1, a(1)=5`
-/

namespace A298032.P7988835936820810721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + Int.tmod (A298031 n) (A298034 n)

end

end A298032.P7988835936820810721

namespace A298032

/-- `a(n-1)+A298031(n)%A298034(n)` -/
def P7988835936820810721.Spec : Prop :=
  ∀ n, P7988835936820810721.a n = A298032 n

end A298032

/-! ## A298032.P2229202846220027616

`a(n-1)+A298031(n)+A193426(A004016(n)+1)` with `a(0)=1, a(1)=5`
-/

namespace A298032.P2229202846220027616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (A298031 n + A193426 (A004016 n + 1).toNat)

end

end A298032.P2229202846220027616

namespace A298032

/-- `a(n-1)+A298031(n)+A193426(A004016(n)+1)` -/
def P2229202846220027616.Spec : Prop :=
  ∀ n, P2229202846220027616.a n = A298032 n

end A298032

/-! ## A298032.P16577274795543392614

`a(n-1)+A298031(n)+A003982(A000040(n+1))` with `a(0)=1`
-/

namespace A298032.P16577274795543392614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A298031 n + A003982 (A000040 (n + 1)).toNat)

end

end A298032.P16577274795543392614

namespace A298032

/-- `a(n-1)+A298031(n)+A003982(A000040(n+1))` -/
def P16577274795543392614.Spec : Prop :=
  ∀ n, P16577274795543392614.a n = A298032 n

end A298032

/-! ## A298032.P1332449349040282897

`a(n-1)+A298031(n)+A004016(2*n²)` with `a(0)=1, a(1)=5`
-/

namespace A298032.P1332449349040282897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (A298031 n + A004016 (2 * n ^ 2))

end

end A298032.P1332449349040282897

namespace A298032

/-- `a(n-1)+A298031(n)+A004016(2*n²)` -/
def P1332449349040282897.Spec : Prop :=
  ∀ n, P1332449349040282897.a n = A298032 n

end A298032

/-!
# A298033: Coordination sequence of the Dual(3.4.6.4) tiling with respect to a hexavalent node.

The programs for A298033, the canonical program `A298033.P4529416337232328328` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298033 has offset 0).

The definition of A298033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298033.P10495644353900955300

`ogf((1+5x+5x^2+7x^3)/(1-x-x^2+x^3))`
-/

namespace A298033.P10495644353900955300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 5, 7] [1, -1, -1, 1] n

end

end A298033.P10495644353900955300

namespace A298033

/-- `ogf((1+5x+5x^2+7x^3)/(1-x-x^2+x^3))` -/
def P10495644353900955300.Spec : Prop :=
  ∀ n, P10495644353900955300.a n = A298033 n

end A298033

/-! ## A298033.P4529416337232328328

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=12, a(3)=24`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298033

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P4529416337232328328.Spec : Prop :=
  ∀ n, P4529416337232328328.a n = A298033 n

theorem P4529416337232328328.correct : P4529416337232328328.Spec := by
  intro n
  simp only [A298033]

end A298033

/-! ## A298033.P10551753314244036183

`a(n-2)+18` with `a(0)=1, a(1)=6, a(2)=12`
-/

namespace A298033.P10551753314244036183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 12] fun n a =>
  a (n - 2) + 18

end

end A298033.P10551753314244036183

namespace A298033

/-- `a(n-2)+18` -/
def P10551753314244036183.Spec : Prop :=
  ∀ n, (P10551753314244036183.a n : ℤ) = A298033 n

end A298033

/-! ## A298033.P5268250182567567463

`∑[18-a(n-1)]` with `a(0)=1, a(1)=5, a(2)=6`
-/

namespace A298033.P5268250182567567463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6] fun n f1 =>
  18 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298033.P5268250182567567463

namespace A298033

/-- `∑[18-a(n-1)]` -/
def P5268250182567567463.Spec : Prop :=
  ∀ n, P5268250182567567463.a n = A298033 n

end A298033

/-! ## A298033.P12450430612343086635

`record[lcm(1-n, 3^(n%2))]`
-/

namespace A298033.P12450430612343086635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (3 ^ (n % 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298033.P12450430612343086635

namespace A298033

/-- `record[lcm(1-n, 3^(n%2))]` -/
def P12450430612343086635.Spec : Prop :=
  ∀ n, (P12450430612343086635.a n : ℤ) = A298033 n

end A298033

/-! ## A298033.P6498866769965993853

`∑[∑[ogf((1+5x+5x^2+7x^3)/(1+x))]]`
-/

namespace A298033.P6498866769965993853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 5, 7] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298033.P6498866769965993853

namespace A298033

/-- `∑[∑[ogf((1+5x+5x^2+7x^3)/(1+x))]]` -/
def P6498866769965993853.Spec : Prop :=
  ∀ n, P6498866769965993853.a n = A298033 n

end A298033

/-! ## A298033.P5527036581037346862

`record[lcm(n+1, (2*n+1)%4)]`
-/

namespace A298033.P5527036581037346862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((2 * n + 1) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298033.P5527036581037346862

namespace A298033

/-- `record[lcm(n+1, (2*n+1)%4)]` -/
def P5527036581037346862.Spec : Prop :=
  ∀ n, (P5527036581037346862.a n : ℤ) = A298033 n

end A298033

/-! ## A298033.P3799786689915273019

`record[lcm(n-1, and(3, 2*n+1))]`
-/

namespace A298033.P3799786689915273019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (Nat.land 3 (2 * n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298033.P3799786689915273019

namespace A298033

/-- `record[lcm(n-1, and(3, 2*n+1))]` -/
def P3799786689915273019.Spec : Prop :=
  ∀ n, (P3799786689915273019.a n : ℤ) = A298033 n

end A298033

/-! ## A298033.P15039987659310631326

`∑[A000203(a(gcd(2, n+1)))]` with `a(0)=1, a(1)=5`
-/

namespace A298033.P15039987659310631326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  A000203 (f1 (Nat.gcd 2 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298033.P15039987659310631326

namespace A298033

/-- `∑[A000203(a(gcd(2, n+1)))]` -/
def P15039987659310631326.Spec : Prop :=
  ∀ n, P15039987659310631326.a n = A298033 n

end A298033

/-! ## A298033.P6548823083837236484

`A109474(n+1)+A047470(n+1)`
-/

namespace A298033.P6548823083837236484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (n + 1) + A047470 (n + 1)

end

end A298033.P6548823083837236484

namespace A298033

/-- `A109474(n+1)+A047470(n+1)` -/
def P6548823083837236484.Spec : Prop :=
  ∀ n, P6548823083837236484.a n = A298033 n

end A298033

/-! ## A298033.P13988559012960538243

`A008458(comp[3*(n+1)])`
-/

namespace A298033.P13988559012960538243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A298033.P13988559012960538243

namespace A298033

/-- `A008458(comp[3*(n+1)])` -/
def P13988559012960538243.Spec : Prop :=
  ∀ n, P13988559012960538243.a n = A298033 n

end A298033

/-! ## A298033.P16531259650351397223

`record[gcd(6*n, A255177(n))]`
-/

namespace A298033.P16531259650351397223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 * n : ℤ) (A255177 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298033.P16531259650351397223

namespace A298033

/-- `record[gcd(6*n, A255177(n))]` -/
def P16531259650351397223.Spec : Prop :=
  ∀ n, (P16531259650351397223.a n : ℤ) = A298033 n

end A298033

/-! ## A298033.P18310974132253263726

`record[lcm(n+1, A010684(n))]`
-/

namespace A298033.P18310974132253263726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A010684 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298033.P18310974132253263726

namespace A298033

/-- `record[lcm(n+1, A010684(n))]` -/
def P18310974132253263726.Spec : Prop :=
  ∀ n, (P18310974132253263726.a n : ℤ) = A298033 n

end A298033

/-! ## A298033.P1802557363163198388

`record[A165998(A004526(n)+n)]`
-/

namespace A298033.P1802557363163198388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (A004526 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298033.P1802557363163198388

namespace A298033

/-- `record[A165998(A004526(n)+n)]` -/
def P1802557363163198388.Spec : Prop :=
  ∀ n, P1802557363163198388.a n = A298033 n

end A298033

/-! ## A298033.P12836178769700422489

`A008486(2*eq[n, A051176(n)])`
-/

namespace A298033.P12836178769700422489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298033.P12836178769700422489

namespace A298033

/-- `A008486(2*eq[n, A051176(n)])` -/
def P12836178769700422489.Spec : Prop :=
  ∀ n, P12836178769700422489.a n = A298033 n

end A298033

/-! ## A298033.P2115616233538282873

`A008486(2*comp[A008486(n+1)])`
-/

namespace A298033.P2115616233538282873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A298033.P2115616233538282873

namespace A298033

/-- `A008486(2*comp[A008486(n+1)])` -/
def P2115616233538282873.Spec : Prop :=
  ∀ n, P2115616233538282873.a n = A298033 n

end A298033

/-! ## A298033.P603233418951279230

`A008486(A008486(n)-A040001(n))`
-/

namespace A298033.P603233418951279230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008486 n - A040001 n).toNat

end

end A298033.P603233418951279230

namespace A298033

/-- `A008486(A008486(n)-A040001(n))` -/
def P603233418951279230.Spec : Prop :=
  ∀ n, P603233418951279230.a n = A298033 n

end A298033

/-! ## A298033.P1547138728007417356

`A008486(A008486(n)-gcd(2, A008486(n)))`
-/

namespace A298033.P1547138728007417356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008486 n - (Int.gcd 2 (A008486 n) : ℤ)).toNat

end

end A298033.P1547138728007417356

namespace A298033

/-- `A008486(A008486(n)-gcd(2, A008486(n)))` -/
def P1547138728007417356.Spec : Prop :=
  ∀ n, P1547138728007417356.a n = A298033 n

end A298033

/-! ## A298033.P4532529236296310039

`A008486(2*(A008486(n)-A001651(n+1)))`
-/

namespace A298033.P4532529236296310039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * (A008486 n - A001651 (n + 1))).toNat

end

end A298033.P4532529236296310039

namespace A298033

/-- `A008486(2*(A008486(n)-A001651(n+1)))` -/
def P4532529236296310039.Spec : Prop :=
  ∀ n, P4532529236296310039.a n = A298033 n

end A298033

/-! ## A298033.P14087428570044976336

`A008486(A008486(n)-A008458(n)/A298026(n))`
-/

namespace A298033.P14087428570044976336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A008486 n : ℚ) - (A008458 n : ℚ) / (A298026 n : ℚ))).toNat

end

end A298033.P14087428570044976336

namespace A298033

/-- `A008486(A008486(n)-A008458(n)/A298026(n))` -/
def P14087428570044976336.Spec : Prop :=
  ∀ n, P14087428570044976336.a n = A298033 n

end A298033

/-!
# A298034: Partial sums of A298033.

The programs for A298034, the canonical program `A298034.P10391490768856493854` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298034 has offset 0).

The definition of A298034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298034.P11800421291638689411

`ogf((1+5x+5x^2+7x^3)/(1-2x+2x^3-x^4))`
-/

namespace A298034.P11800421291638689411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 5, 7] [1, -2, 0, 2, -1] n

end

end A298034.P11800421291638689411

namespace A298034

/-- `ogf((1+5x+5x^2+7x^3)/(1-2x+2x^3-x^4))` -/
def P11800421291638689411.Spec : Prop :=
  ∀ n, P11800421291638689411.a n = A298034 n

end A298034

/-! ## A298034.P10391490768856493854

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=7, a(2)=19, a(3)=43`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298034

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P10391490768856493854.Spec : Prop :=
  ∀ n, P10391490768856493854.a n = A298034 n

theorem P10391490768856493854.correct : P10391490768856493854.Spec := by
  intro n
  simp only [A298034]

end A298034

/-! ## A298034.P13616805282004103111

`∑[a(n-2)+18]` with `a(0)=1, a(1)=6, a(2)=12`
-/

namespace A298034.P13616805282004103111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 12] fun n f1 =>
  f1 (n - 2) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298034.P13616805282004103111

namespace A298034

/-- `∑[a(n-2)+18]` -/
def P13616805282004103111.Spec : Prop :=
  ∀ n, (P13616805282004103111.a n : ℤ) = A298034 n

end A298034

/-! ## A298034.P12139653383339195304

`2*ceil((3*n/2)²)+1`
-/

namespace A298034.P12139653383339195304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈((3 * n : ℚ) / 2) ^ 2⌉ + 1

end

end A298034.P12139653383339195304

namespace A298034

/-- `2*ceil((3*n/2)²)+1` -/
def P12139653383339195304.Spec : Prop :=
  ∀ n, P12139653383339195304.a n = A298034 n

end A298034

/-! ## A298034.P15861193667234209074

`xor(1, 2*ceil((3*n/2)²))`
-/

namespace A298034.P15861193667234209074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌈((3 * n : ℚ) / 2) ^ 2⌉)

end

end A298034.P15861193667234209074

namespace A298034

/-- `xor(1, 2*ceil((3*n/2)²))` -/
def P15861193667234209074.Spec : Prop :=
  ∀ n, P15861193667234209074.a n = A298034 n

end A298034

/-! ## A298034.P16111970038318369158

`∑[∑[∑[ogf((1+5x+5x^2+7x^3)/(1+x))]]]`
-/

namespace A298034.P16111970038318369158
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 5, 7] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298034.P16111970038318369158

namespace A298034

/-- `∑[∑[∑[ogf((1+5x+5x^2+7x^3)/(1+x))]]]` -/
def P16111970038318369158.Spec : Prop :=
  ∀ n, P16111970038318369158.a n = A298034 n

end A298034

/-! ## A298034.P17086846898754874200

`∑[A298033(n)]`
-/

namespace A298034.P17086846898754874200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298034.P17086846898754874200

namespace A298034

/-- `∑[A298033(n)]` -/
def P17086846898754874200.Spec : Prop :=
  ∀ n, P17086846898754874200.a n = A298034 n

end A298034

/-! ## A298034.P16492149225504675454

`∑[∑[A000203(a(gcd(2, n+1)))]]` with `a(0)=1, a(1)=5`
-/

namespace A298034.P16492149225504675454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  A000203 (f2 (Nat.gcd 2 (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298034.P16492149225504675454

namespace A298034

/-- `∑[∑[A000203(a(gcd(2, n+1)))]]` -/
def P16492149225504675454.Spec : Prop :=
  ∀ n, P16492149225504675454.a n = A298034 n

end A298034

/-! ## A298034.P13836749718813814679

`∑[record[A066393(2*n)]]`
-/

namespace A298034.P13836749718813814679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066393 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298034.P13836749718813814679

namespace A298034

/-- `∑[record[A066393(2*n)]]` -/
def P13836749718813814679.Spec : Prop :=
  ∀ n, P13836749718813814679.a n = A298034 n

end A298034

/-! ## A298034.P13460397243480437231

`or(A000034(n), A000982(3*n))`
-/

namespace A298034.P13460397243480437231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 n) (A000982 (3 * n))

end

end A298034.P13460397243480437231

namespace A298034

/-- `or(A000034(n), A000982(3*n))` -/
def P13460397243480437231.Spec : Prop :=
  ∀ n, P13460397243480437231.a n = A298034 n

end A298034

/-! ## A298034.P15674638488837252970

`∑[A004277(3*comp[3*(n+1)])]`
-/

namespace A298034.P15674638488837252970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298034.P15674638488837252970

namespace A298034

/-- `∑[A004277(3*comp[3*(n+1)])]` -/
def P15674638488837252970.Spec : Prop :=
  ∀ n, P15674638488837252970.a n = A298034 n

end A298034

/-! ## A298034.P12492975657279352681

`∑[record[A004277(A130724(n))]]`
-/

namespace A298034.P12492975657279352681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A130724 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298034.P12492975657279352681

namespace A298034

/-- `∑[record[A004277(A130724(n))]]` -/
def P12492975657279352681.Spec : Prop :=
  ∀ n, P12492975657279352681.a n = A298034 n

end A298034

/-! ## A298034.P1383110062080067664

`A016921(A077043(n))`
-/

namespace A298034.P1383110062080067664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A077043 n).toNat

end

end A298034.P1383110062080067664

namespace A298034

/-- `A016921(A077043(n))` -/
def P1383110062080067664.Spec : Prop :=
  ∀ n, P1383110062080067664.a n = A298034 n

end A298034

/-! ## A298034.P7752943855260039097

`A016921(A331952(n)+1)`
-/

namespace A298034.P7752943855260039097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A331952 n + 1).toNat

end

end A298034.P7752943855260039097

namespace A298034

/-- `A016921(A331952(n)+1)` -/
def P7752943855260039097.Spec : Prop :=
  ∀ n, P7752943855260039097.a n = A298034 n

end A298034

/-! ## A298034.P1859071124785765166

`A016921(A069905(3*n))`
-/

namespace A298034.P1859071124785765166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A069905 (3 * n)).toNat

end

end A298034.P1859071124785765166

namespace A298034

/-- `A016921(A069905(3*n))` -/
def P1859071124785765166.Spec : Prop :=
  ∀ n, P1859071124785765166.a n = A298034 n

end A298034

/-! ## A298034.P16447003808572834550

`A016921(A005044(6*n))`
-/

namespace A298034.P16447003808572834550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A005044 (6 * n)).toNat

end

end A298034.P16447003808572834550

namespace A298034

/-- `A016921(A005044(6*n))` -/
def P16447003808572834550.Spec : Prop :=
  ∀ n, P16447003808572834550.a n = A298034 n

end A298034

/-! ## A298034.P9717337821627215803

`A016921(A001859(n)-n)`
-/

namespace A298034.P9717337821627215803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A001859 n - (n : ℤ)).toNat

end

end A298034.P9717337821627215803

namespace A298034

/-- `A016921(A001859(n)-n)` -/
def P9717337821627215803.Spec : Prop :=
  ∀ n, P9717337821627215803.a n = A298034 n

end A298034

/-! ## A298034.P18173853250669960109

`A016921(n²-A002620(n))`
-/

namespace A298034.P18173853250669960109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 ((n ^ 2 : ℤ) - A002620 n).toNat

end

end A298034.P18173853250669960109

namespace A298034

/-- `A016921(n²-A002620(n))` -/
def P18173853250669960109.Spec : Prop :=
  ∀ n, P18173853250669960109.a n = A298034 n

end A298034

/-! ## A298034.P5585369521196209079

`A016921(∑[comp[A004767(n)-n]])`
-/

namespace A298034.P5585369521196209079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298034.P5585369521196209079

namespace A298034

/-- `A016921(∑[comp[A004767(n)-n]])` -/
def P5585369521196209079.Spec : Prop :=
  ∀ n, P5585369521196209079.a n = A298034 n

end A298034

/-! ## A298034.P13646198178946101465

`A016921(A006578(n+1)-(2*n+1))`
-/

namespace A298034.P13646198178946101465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A006578 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A298034.P13646198178946101465

namespace A298034

/-- `A016921(A006578(n+1)-(2*n+1))` -/
def P13646198178946101465.Spec : Prop :=
  ∀ n, P13646198178946101465.a n = A298034 n

end A298034

/-!
# A298035: Coordination sequence of Dual(3.12.12) tiling with respect to a trivalent node.

The programs for A298035, the canonical program `A298035.P9501168717441895006` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298035 has offset 0).

The definition of A298035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298035.P9501168717441895006

`ogf((1+x+16x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298035

/-- `ogf((1+x+16x^2)/(1-2x+x^2))` -/
def P9501168717441895006.Spec : Prop :=
  ∀ n, P9501168717441895006.a n = A298035 n

theorem P9501168717441895006.correct : P9501168717441895006.Spec := by
  intro n
  simp only [A298035]

end A298035

/-!
# A298036: Coordination sequence of Dual(4.6.12) tiling with respect to a 12-valent node.

The programs for A298036, the canonical program `A298036.P16149590119903334259` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298036 has offset 0).

The definition of A298036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298036.P16149590119903334259

`ogf((1+12x+10x^2+12x^3+x^4)/(1-2x^2+x^4))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298036

/-- `ogf((1+12x+10x^2+12x^3+x^4)/(1-2x^2+x^4))` -/
def P16149590119903334259.Spec : Prop :=
  ∀ n, P16149590119903334259.a n = A298036 n

theorem P16149590119903334259.correct : P16149590119903334259.Spec := by
  intro n
  simp only [A298036]

end A298036

/-! ## A298036.P15963925160101620600

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=12, a(2)=12`
-/

namespace A298036.P15963925160101620600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 12, 12] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A298036.P15963925160101620600

namespace A298036

/-- `a(n-2)/(1-2/n)` -/
def P15963925160101620600.Spec : Prop :=
  ∀ n, P15963925160101620600.a n = (A298036 n : ℚ)

end A298036

/-! ## A298036.P18342635957628696631

`lcm(4, 3*n*gcd(n, 2%a(n-1)))` with `a(0)=1`
-/

namespace A298036.P18342635957628696631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 4 (3 * (n * Nat.gcd n (2 % a (n - 1))))

end

end A298036.P18342635957628696631

namespace A298036

/-- `lcm(4, 3*n*gcd(n, 2%a(n-1)))` -/
def P18342635957628696631.Spec : Prop :=
  ∀ n, (P18342635957628696631.a n : ℤ) = A298036 n

end A298036

/-! ## A298036.P3483342184112803510

`(n%2+1)*A008458(n)`
-/

namespace A298036.P3483342184112803510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A008458 n

end

end A298036.P3483342184112803510

namespace A298036

/-- `(n%2+1)*A008458(n)` -/
def P3483342184112803510.Spec : Prop :=
  ∀ n, P3483342184112803510.a n = A298036 n

end A298036

/-! ## A298036.P5299974316019453420

`A000034(n)*A008458(n)`
-/

namespace A298036.P5299974316019453420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A008458 n

end

end A298036.P5299974316019453420

namespace A298036

/-- `A000034(n)*A008458(n)` -/
def P5299974316019453420.Spec : Prop :=
  ∀ n, P5299974316019453420.a n = A298036 n

end A298036

/-! ## A298036.P12244183074646977360

`A010687(n)*A035877(n)`
-/

namespace A298036.P12244183074646977360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n * A035877 n

end

end A298036.P12244183074646977360

namespace A298036

/-- `A010687(n)*A035877(n)` -/
def P12244183074646977360.Spec : Prop :=
  ∀ n, P12244183074646977360.a n = A298036 n

end A298036

/-! ## A298036.P7325481579479861545

`A010685(n)*A298028(n)`
-/

namespace A298036.P7325481579479861545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A298028 n

end

end A298036.P7325481579479861545

namespace A298036

/-- `A010685(n)*A298028(n)` -/
def P7325481579479861545.Spec : Prop :=
  ∀ n, P7325481579479861545.a n = A298036 n

end A298036

/-! ## A298036.P10220675083681722343

`A008486(n)*A382713(n)`
-/

namespace A298036.P10220675083681722343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A382713 n

end

end A298036.P10220675083681722343

namespace A298036

/-- `A008486(n)*A382713(n)` -/
def P10220675083681722343.Spec : Prop :=
  ∀ n, P10220675083681722343.a n = A298036 n

end A298036

/-! ## A298036.P15601280311900608479

`A122553(n)*A382154(n)`
-/

namespace A298036.P15601280311900608479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A382154 n

end

end A298036.P15601280311900608479

namespace A298036

/-- `A122553(n)*A382154(n)` -/
def P15601280311900608479.Spec : Prop :=
  ∀ n, P15601280311900608479.a n = A298036 n

end A298036

/-! ## A298036.P8876106796527104907

`A008530(n)/A228564(n)`
-/

namespace A298036.P8876106796527104907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008530 n : ℚ) / (A228564 n : ℚ)

end

end A298036.P8876106796527104907

namespace A298036

/-- `A008530(n)/A228564(n)` -/
def P8876106796527104907.Spec : Prop :=
  ∀ n, P8876106796527104907.a n = (A298036 n : ℚ)

end A298036

/-! ## A298036.P4078804574922792658

`gcd(A008530(n), A008594(n))`
-/

namespace A298036.P4078804574922792658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008530 n) (A008594 n)

end

end A298036.P4078804574922792658

namespace A298036

/-- `gcd(A008530(n), A008594(n))` -/
def P4078804574922792658.Spec : Prop :=
  ∀ n, (P4078804574922792658.a n : ℤ) = A298036 n

end A298036

/-! ## A298036.P17724667226924720860

`lcm(A008458(n), A010685(n))`
-/

namespace A298036.P17724667226924720860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008458 n) (A010685 n)

end

end A298036.P17724667226924720860

namespace A298036

/-- `lcm(A008458(n), A010685(n))` -/
def P17724667226924720860.Spec : Prop :=
  ∀ n, (P17724667226924720860.a n : ℤ) = A298036 n

end A298036

/-! ## A298036.P13624295429649259185

`lcm(A051725(n), A298028(n))`
-/

namespace A298036.P13624295429649259185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051725 n) (A298028 n)

end

end A298036.P13624295429649259185

namespace A298036

/-- `lcm(A051725(n), A298028(n))` -/
def P13624295429649259185.Spec : Prop :=
  ∀ n, (P13624295429649259185.a n : ℤ) = A298036 n

end A298036

/-! ## A298036.P5665663434760016377

`lcm(A008486(n), A382154(n))`
-/

namespace A298036.P5665663434760016377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008486 n) (A382154 n)

end

end A298036.P5665663434760016377

namespace A298036

/-- `lcm(A008486(n), A382154(n))` -/
def P5665663434760016377.Spec : Prop :=
  ∀ n, (P5665663434760016377.a n : ℤ) = A298036 n

end A298036

/-! ## A298036.P2498901119899310861

`A008458(n)²/A298028(n)`
-/

namespace A298036.P2498901119899310861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n ^ 2 : ℚ) / (A298028 n : ℚ)

end

end A298036.P2498901119899310861

namespace A298036

/-- `A008458(n)²/A298028(n)` -/
def P2498901119899310861.Spec : Prop :=
  ∀ n, P2498901119899310861.a n = (A298036 n : ℚ)

end A298036

/-! ## A298036.P12134477727389890896

`(A000035(n)+1)*A008458(n)`
-/

namespace A298036.P12134477727389890896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A008458 n

end

end A298036.P12134477727389890896

namespace A298036

/-- `(A000035(n)+1)*A008458(n)` -/
def P12134477727389890896.Spec : Prop :=
  ∀ n, P12134477727389890896.a n = A298036 n

end A298036

/-! ## A298036.P13739372351240772562

`(A008706(n)+n)*A000034(n)`
-/

namespace A298036.P13739372351240772562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008706 n + (n : ℤ)) * A000034 n

end

end A298036.P13739372351240772562

namespace A298036

/-- `(A008706(n)+n)*A000034(n)` -/
def P13739372351240772562.Spec : Prop :=
  ∀ n, P13739372351240772562.a n = A298036 n

end A298036

/-! ## A298036.P3264798903730933787

`gcd(2*A119536(n), A008401(n)²)`
-/

namespace A298036.P3264798903730933787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A119536 n) (A008401 n ^ 2)

end

end A298036.P3264798903730933787

namespace A298036

/-- `gcd(2*A119536(n), A008401(n)²)` -/
def P3264798903730933787.Spec : Prop :=
  ∀ n, (P3264798903730933787.a n : ℤ) = A298036 n

end A298036

/-! ## A298036.P3560200546150497822

`A008458(n)/A008486(n)*A298026(n)`
-/

namespace A298036.P3560200546150497822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A008486 n : ℚ) * (A298026 n : ℚ)

end

end A298036.P3560200546150497822

namespace A298036

/-- `A008458(n)/A008486(n)*A298026(n)` -/
def P3560200546150497822.Spec : Prop :=
  ∀ n, P3560200546150497822.a n = (A298036 n : ℚ)

end A298036

/-!
# A298037: Partial sums of A298036.

The programs for A298037, the canonical program `A298037.P17664442648886644512` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298037 has offset 0).

The definition of A298037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298037.P14775450017104398403

`ogf((1+12x+10x^2+12x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A298037.P14775450017104398403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 10, 12, 1] [1, -1, -2, 2, 1, -1] n

end

end A298037.P14775450017104398403

namespace A298037

/-- `ogf((1+12x+10x^2+12x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P14775450017104398403.Spec : Prop :=
  ∀ n, P14775450017104398403.a n = A298037 n

end A298037

/-! ## A298037.P17664442648886644512

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=13, a(2)=25, a(3)=61, a(4)=85`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298037

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P17664442648886644512.Spec : Prop :=
  ∀ n, P17664442648886644512.a n = A298037 n

theorem P17664442648886644512.correct : P17664442648886644512.Spec := by
  intro n
  simp only [A298037]

end A298037

/-! ## A298037.P18036098869871587816

`A298036(n)+a(n-1)` with `a(0)=1`
-/

namespace A298037.P18036098869871587816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298036 n + a (n - 1)

end

end A298037.P18036098869871587816

namespace A298037

/-- `A298036(n)+a(n-1)` -/
def P18036098869871587816.Spec : Prop :=
  ∀ n, P18036098869871587816.a n = A298037 n

end A298037

/-! ## A298037.P12076917822704730936

`3*∑[2*lcm(2, n)]+1`
-/

namespace A298037.P12076917822704730936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A298037.P12076917822704730936

namespace A298037

/-- `3*∑[2*lcm(2, n)]+1` -/
def P12076917822704730936.Spec : Prop :=
  ∀ n, (P12076917822704730936.a n : ℤ) = A298037 n

end A298037

/-! ## A298037.P2521667228058689255

`4*∑[3*gcd(n, ∑[n])]+1`
-/

namespace A298037.P2521667228058689255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A298037.P2521667228058689255

namespace A298037

/-- `4*∑[3*gcd(n, ∑[n])]+1` -/
def P2521667228058689255.Spec : Prop :=
  ∀ n, (P2521667228058689255.a n : ℤ) = A298037 n

end A298037

/-! ## A298037.P4175700917983340902

`(or(1, 3*n+1)²+1)/2`
-/

namespace A298037.P4175700917983340902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n + 1) ^ 2 + 1 : ℚ) / 2

end

end A298037.P4175700917983340902

namespace A298037

/-- `(or(1, 3*n+1)²+1)/2` -/
def P4175700917983340902.Spec : Prop :=
  ∀ n, P4175700917983340902.a n = (A298037 n : ℚ)

end A298037

/-! ## A298037.P14549449622320818753

`a(n-1)+3*lcm(4, 2*n)` with `a(0)=1`
-/

namespace A298037.P14549449622320818753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * Nat.lcm 4 (2 * n)

end

end A298037.P14549449622320818753

namespace A298037

/-- `a(n-1)+3*lcm(4, 2*n)` -/
def P14549449622320818753.Spec : Prop :=
  ∀ n, (P14549449622320818753.a n : ℤ) = A298037 n

end A298037

/-! ## A298037.P15625170750756177947

`record[lcm(2*n+1, n+2)-(3*n+1)]`
-/

namespace A298037.P15625170750756177947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (n + 2) : ℤ) - (3 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298037.P15625170750756177947

namespace A298037

/-- `record[lcm(2*n+1, n+2)-(3*n+1)]` -/
def P15625170750756177947.Spec : Prop :=
  ∀ n, P15625170750756177947.a n = A298037 n

end A298037

/-! ## A298037.P9031478348567573998

`∑[A298036(n)]`
-/

namespace A298037.P9031478348567573998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298037.P9031478348567573998

namespace A298037

/-- `∑[A298036(n)]` -/
def P9031478348567573998.Spec : Prop :=
  ∀ n, P9031478348567573998.a n = A298037 n

end A298037

/-! ## A298037.P2305266438025727316

`2*A298027(n)-1`
-/

namespace A298037.P2305266438025727316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298027 n - 1

end

end A298037.P2305266438025727316

namespace A298037

/-- `2*A298027(n)-1` -/
def P2305266438025727316.Spec : Prop :=
  ∀ n, P2305266438025727316.a n = A298037 n

end A298037

/-! ## A298037.P17669237980479981796

`3*A319384(n)-2`
-/

namespace A298037.P17669237980479981796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A319384 n - 2

end

end A298037.P17669237980479981796

namespace A298037

/-- `3*A319384(n)-2` -/
def P17669237980479981796.Spec : Prop :=
  ∀ n, P17669237980479981796.a n = A298037 n

end A298037

/-! ## A298037.P16311448252234769355

`ceil(A104777(n+1)/2)`
-/

namespace A298037.P16311448252234769355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104777 (n + 1) : ℚ) / 2⌉

end

end A298037.P16311448252234769355

namespace A298037

/-- `ceil(A104777(n+1)/2)` -/
def P16311448252234769355.Spec : Prop :=
  ∀ n, P16311448252234769355.a n = A298037 n

end A298037

/-! ## A298037.P16222004676158384217

`∑[2*A298026(n)]-1`
-/

namespace A298037.P16222004676158384217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A298037.P16222004676158384217

namespace A298037

/-- `∑[2*A298026(n)]-1` -/
def P16222004676158384217.Spec : Prop :=
  ∀ n, P16222004676158384217.a n = A298037 n

end A298037

/-! ## A298037.P8268462280508360448

`3*A062717(n+1)+1`
-/

namespace A298037.P8268462280508360448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A062717 (n + 1) + 1

end

end A298037.P8268462280508360448

namespace A298037

/-- `3*A062717(n+1)+1` -/
def P8268462280508360448.Spec : Prop :=
  ∀ n, P8268462280508360448.a n = A298037 n

end A298037

/-! ## A298037.P11739093777163403404

`4*A117748(n+1)+1`
-/

namespace A298037.P11739093777163403404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A117748 (n + 1) + 1

end

end A298037.P11739093777163403404

namespace A298037

/-- `4*A117748(n+1)+1` -/
def P11739093777163403404.Spec : Prop :=
  ∀ n, P11739093777163403404.a n = A298037 n

end A298037

/-! ## A298037.P14732505935331821835

`ceil(A007310(n+1)²/2)`
-/

namespace A298037.P14732505935331821835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007310 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A298037.P14732505935331821835

namespace A298037

/-- `ceil(A007310(n+1)²/2)` -/
def P14732505935331821835.Spec : Prop :=
  ∀ n, P14732505935331821835.a n = A298037 n

end A298037

/-! ## A298037.P13863871150196024560

`(lt[3, A020639(n+6)]²+1)/2`
-/

namespace A298037.P13863871150196024560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 + 1 : ℚ) / 2

end

end A298037.P13863871150196024560

namespace A298037

/-- `(lt[3, A020639(n+6)]²+1)/2` -/
def P13863871150196024560.Spec : Prop :=
  ∀ n, P13863871150196024560.a n = (A298037 n : ℚ)

end A298037

/-! ## A298037.P13909896391843918036

`A132356(n)+A001844(n)`
-/

namespace A298037.P13909896391843918036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n + A001844 n

end

end A298037.P13909896391843918036

namespace A298037

/-- `A132356(n)+A001844(n)` -/
def P13909896391843918036.Spec : Prop :=
  ∀ n, P13909896391843918036.a n = A298037 n

end A298037

/-! ## A298037.P13785111715518044088

`A193866(n)+A095894(n)`
-/

namespace A298037.P13785111715518044088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193866 n + A095894 n

end

end A298037.P13785111715518044088

namespace A298037

/-- `A193866(n)+A095894(n)` -/
def P13785111715518044088.Spec : Prop :=
  ∀ n, P13785111715518044088.a n = A298037 n

end A298037

/-! ## A298037.P17879658345945819640

`A001504(n)-A298039(n)`
-/

namespace A298037.P17879658345945819640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n - A298039 n

end

end A298037.P17879658345945819640

namespace A298037

/-- `A001504(n)-A298039(n)` -/
def P17879658345945819640.Spec : Prop :=
  ∀ n, P17879658345945819640.a n = A298037 n

end A298037

/-!
# A298038: Coordination sequence of Dual(4.6.12) tiling with respect to a hexavalent node.

The programs for A298038, the canonical program `A298038.P9043104984525335006` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298038 has offset 0).

The definition of A298038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298038.P314208368823604932

`floor(gcd(2, n)/acot(6*n))`
-/

namespace A298038.P314208368823604932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n : ℝ) / SequenceMachineLib.acot (6 * n : ℝ)⌋

end

end A298038.P314208368823604932

namespace A298038

/-- `floor(gcd(2, n)/acot(6*n))` -/
def P314208368823604932.Spec : Prop :=
  ∀ n, P314208368823604932.a n = A298038 n

end A298038

/-! ## A298038.P3167632376510159450

`6*n*(a(n-1)%4)!` with `a(0)=1`
-/

namespace A298038.P3167632376510159450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * n * Nat.factorial (a (n - 1) % 4)

end

end A298038.P3167632376510159450

namespace A298038

/-- `6*n*(a(n-1)%4)!` -/
def P3167632376510159450.Spec : Prop :=
  ∀ n, (P3167632376510159450.a n : ℤ) = A298038 n

end A298038

/-! ## A298038.P1174221935496936853

`6*n*and(3, a(n-1))!` with `a(0)=1`
-/

namespace A298038.P1174221935496936853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * n * Nat.factorial (Nat.land 3 (a (n - 1)))

end

end A298038.P1174221935496936853

namespace A298038

/-- `6*n*and(3, a(n-1))!` -/
def P1174221935496936853.Spec : Prop :=
  ∀ n, (P1174221935496936853.a n : ℤ) = A298038 n

end A298038

/-! ## A298038.P11862955609592796008

`ogf((1+6x+22x^2+6x^3+x^4)/(1-2x^2+x^4))`
-/

namespace A298038.P11862955609592796008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 22, 6, 1] [1, 0, -2, 0, 1] n

end

end A298038.P11862955609592796008

namespace A298038

/-- `ogf((1+6x+22x^2+6x^3+x^4)/(1-2x^2+x^4))` -/
def P11862955609592796008.Spec : Prop :=
  ∀ n, P11862955609592796008.a n = A298038 n

end A298038

/-! ## A298038.P5122491855607987717

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=6, a(2)=24`
-/

namespace A298038.P5122491855607987717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6, 24] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A298038.P5122491855607987717

namespace A298038

/-- `a(n-2)/(1-2/n)` -/
def P5122491855607987717.Spec : Prop :=
  ∀ n, P5122491855607987717.a n = (A298038 n : ℚ)

end A298038

/-! ## A298038.P4117739396796680002

`(and(2, a(n-1))+2)*3*n` with `a(0)=1`
-/

namespace A298038.P4117739396796680002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 2 (a (n - 1)) + 2) * (3 * n)

end

end A298038.P4117739396796680002

namespace A298038

/-- `(and(2, a(n-1))+2)*3*n` -/
def P4117739396796680002.Spec : Prop :=
  ∀ n, (P4117739396796680002.a n : ℤ) = A298038 n

end A298038

/-! ## A298038.P12169425645483577546

`2*n*or(2, a((n+1)%2))` with `a(0)=1`
-/

namespace A298038.P12169425645483577546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n * Nat.lor 2 (a ((n + 1) % 2))

end

end A298038.P12169425645483577546

namespace A298038

/-- `2*n*or(2, a((n+1)%2))` -/
def P12169425645483577546.Spec : Prop :=
  ∀ n, (P12169425645483577546.a n : ℤ) = A298038 n

end A298038

/-! ## A298038.P10861554290657176976

`2*n*or(2, a(1-n%2))` with `a(0)=1`
-/

namespace A298038.P10861554290657176976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n * Nat.lor 2 (a (1 - n % 2))

end

end A298038.P10861554290657176976

namespace A298038

/-- `2*n*or(2, a(1-n%2))` -/
def P10861554290657176976.Spec : Prop :=
  ∀ n, (P10861554290657176976.a n : ℤ) = A298038 n

end A298038

/-! ## A298038.P13160280561878607801

`n*xor(6, 5*and(2, a(n-1)))` with `a(0)=1`
-/

namespace A298038.P13160280561878607801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.xor 6 (5 * Nat.land 2 (a (n - 1)))

end

end A298038.P13160280561878607801

namespace A298038

/-- `n*xor(6, 5*and(2, a(n-1)))` -/
def P13160280561878607801.Spec : Prop :=
  ∀ n, (P13160280561878607801.a n : ℤ) = A298038 n

end A298038

/-! ## A298038.P9043104984525335006

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=24, a(3)=18, a(4)=48`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298038

/-- `2*a(n-2)-a(n-4)` -/
def P9043104984525335006.Spec : Prop :=
  ∀ n, P9043104984525335006.a n = A298038 n

theorem P9043104984525335006.correct : P9043104984525335006.Spec := by
  intro n
  simp only [A298038]

end A298038

/-! ## A298038.P18200828560569211969

`6*n*A020639(a((n+1)%2))` with `a(0)=1`
-/

namespace A298038.P18200828560569211969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * ((n : ℤ) * A020639 (a ((n + 1) % 2)).toNat)

end

end A298038.P18200828560569211969

namespace A298038

/-- `6*n*A020639(a((n+1)%2))` -/
def P18200828560569211969.Spec : Prop :=
  ∀ n, P18200828560569211969.a n = A298038 n

end A298038

/-! ## A298038.P13264427332346655258

`A317314(n)+A008706(n)`
-/

namespace A298038.P13264427332346655258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 n + A008706 n

end

end A298038.P13264427332346655258

namespace A298038

/-- `A317314(n)+A008706(n)` -/
def P13264427332346655258.Spec : Prop :=
  ∀ n, P13264427332346655258.a n = A298038 n

end A298038

/-! ## A298038.P6740870713097954068

`A298028(n)+A165988(n)`
-/

namespace A298038.P6740870713097954068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n + A165988 n

end

end A298038.P6740870713097954068

namespace A298038

/-- `A298028(n)+A165988(n)` -/
def P6740870713097954068.Spec : Prop :=
  ∀ n, P6740870713097954068.a n = A298038 n

end A298038

/-! ## A298038.P13444230646740636684

`A008458(n)*A040001(n)`
-/

namespace A298038.P13444230646740636684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A040001 n

end

end A298038.P13444230646740636684

namespace A298038

/-- `A008458(n)*A040001(n)` -/
def P13444230646740636684.Spec : Prop :=
  ∀ n, P13444230646740636684.a n = A298038 n

end A298038

/-! ## A298038.P6879972330181562109

`A008458(n)²/A298026(n)`
-/

namespace A298038.P6879972330181562109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n ^ 2 : ℚ) / (A298026 n : ℚ)

end

end A298038.P6879972330181562109

namespace A298038

/-- `A008458(n)²/A298026(n)` -/
def P6879972330181562109.Spec : Prop :=
  ∀ n, P6879972330181562109.a n = (A298038 n : ℚ)

end A298038

/-! ## A298038.P17660666265687394149

`A000007(n)+2*A165988(n)`
-/

namespace A298038.P17660666265687394149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A165988 n

end

end A298038.P17660666265687394149

namespace A298038

/-- `A000007(n)+2*A165988(n)` -/
def P17660666265687394149.Spec : Prop :=
  ∀ n, P17660666265687394149.a n = A298038 n

end A298038

/-! ## A298038.P15054255387472776603

`(A271114(n)-1)*A040001(n)`
-/

namespace A298038.P15054255387472776603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271114 n - 1) * A040001 n

end

end A298038.P15054255387472776603

namespace A298038

/-- `(A271114(n)-1)*A040001(n)` -/
def P15054255387472776603.Spec : Prop :=
  ∀ n, P15054255387472776603.a n = A298038 n

end A298038

/-! ## A298038.P10755676204444704036

`A040001(2*n)*A298028(n)`
-/

namespace A298038.P10755676204444704036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A298028 n

end

end A298038.P10755676204444704036

namespace A298038

/-- `A040001(2*n)*A298028(n)` -/
def P10755676204444704036.Spec : Prop :=
  ∀ n, P10755676204444704036.a n = A298038 n

end A298038

/-! ## A298038.P17316357615943144974

`A008458(n)²/A008458(A026741(n))`
-/

namespace A298038.P17316357615943144974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n ^ 2 : ℚ) / (A008458 (A026741 n).toNat : ℚ)

end

end A298038.P17316357615943144974

namespace A298038

/-- `A008458(n)²/A008458(A026741(n))` -/
def P17316357615943144974.Spec : Prop :=
  ∀ n, P17316357615943144974.a n = (A298038 n : ℚ)

end A298038

/-!
# A298039: Partial sums of A298038.

The programs for A298039, the canonical program `A298039.P16357454878216039796` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298039 has offset 0).

The definition of A298039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298039.P8005393575749609205

`2*comp[3*n]²-1`
-/

namespace A298039.P8005393575749609205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ) - 1

end

end A298039.P8005393575749609205

namespace A298039

/-- `2*comp[3*n]²-1` -/
def P8005393575749609205.Spec : Prop :=
  ∀ n, P8005393575749609205.a n = A298039 n

end A298039

/-! ## A298039.P13624274996338496939

`∑[floor(gcd(2, n)/acot(6*n))]`
-/

namespace A298039.P13624274996338496939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n : ℝ) / SequenceMachineLib.acot (6 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298039.P13624274996338496939

namespace A298039

/-- `∑[floor(gcd(2, n)/acot(6*n))]` -/
def P13624274996338496939.Spec : Prop :=
  ∀ n, P13624274996338496939.a n = A298039 n

end A298039

/-! ## A298039.P16357454878216039796

`∑[6*n*(a(n-1)%4)!]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298039

/-- `∑[6*n*(a(n-1)%4)!]` -/
def P16357454878216039796.Spec : Prop :=
  ∀ n, (P16357454878216039796.a n : ℤ) = A298039 n

theorem P16357454878216039796.correct : P16357454878216039796.Spec := by
  intro n
  simp only [A298039]

end A298039

/-! ## A298039.P5276093691291708963

`∑[(and(2, a(n-1))+2)*3*n]` with `a(0)=1`
-/

namespace A298039.P5276093691291708963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.land 2 (f1 (n - 1)) + 2) * (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298039.P5276093691291708963

namespace A298039

/-- `∑[(and(2, a(n-1))+2)*3*n]` -/
def P5276093691291708963.Spec : Prop :=
  ∀ n, (P5276093691291708963.a n : ℤ) = A298039 n

end A298039

/-! ## A298039.P7683438308378674785

`∑[A298038(n)]`
-/

namespace A298039.P7683438308378674785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298039.P7683438308378674785

namespace A298039

/-- `∑[A298038(n)]` -/
def P7683438308378674785.Spec : Prop :=
  ∀ n, P7683438308378674785.a n = A298039 n

end A298039

/-! ## A298039.P7454593813958133762

`A056220(A001651(n+1))`
-/

namespace A298039.P7454593813958133762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A001651 (n + 1)).toNat

end

end A298039.P7454593813958133762

namespace A298039

/-- `A056220(A001651(n+1))` -/
def P7454593813958133762.Spec : Prop :=
  ∀ n, P7454593813958133762.a n = A298039 n

end A298039

/-! ## A298039.P13973215137992057036

`A056220(A008619(n)+n)`
-/

namespace A298039.P13973215137992057036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A008619 n + (n : ℤ)).toNat

end

end A298039.P13973215137992057036

namespace A298039

/-- `A056220(A008619(n)+n)` -/
def P13973215137992057036.Spec : Prop :=
  ∀ n, P13973215137992057036.a n = A298039 n

end A298039

/-! ## A298039.P11195399037825746217

`A056220(A110654(n+1)+n)`
-/

namespace A298039.P11195399037825746217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A110654 (n + 1) + (n : ℤ)).toNat

end

end A298039.P11195399037825746217

namespace A298039

/-- `A056220(A110654(n+1)+n)` -/
def P11195399037825746217.Spec : Prop :=
  ∀ n, P11195399037825746217.a n = A298039 n

end A298039

/-! ## A298039.P15959467330292961237

`A056220(A084684(n+1)-A084684(n))`
-/

namespace A298039.P15959467330292961237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A084684 (n + 1) - A084684 n).toNat

end

end A298039.P15959467330292961237

namespace A298039

/-- `A056220(A084684(n+1)-A084684(n))` -/
def P15959467330292961237.Spec : Prop :=
  ∀ n, P15959467330292961237.a n = A298039 n

end A298039

/-! ## A298039.P16399522197453508455

`∑[A008458(n*A040001(n))]`
-/

namespace A298039.P16399522197453508455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) * A040001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298039.P16399522197453508455

namespace A298039

/-- `∑[A008458(n*A040001(n))]` -/
def P16399522197453508455.Spec : Prop :=
  ∀ n, P16399522197453508455.a n = A298039 n

end A298039

/-! ## A298039.P14765628872085994765

`∑[A382155(3*n)]`
-/

namespace A298039.P14765628872085994765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382155 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298039.P14765628872085994765

namespace A298039

/-- `∑[A382155(3*n)]` -/
def P14765628872085994765.Spec : Prop :=
  ∀ n, P14765628872085994765.a n = A298039 n

end A298039

/-! ## A298039.P13824907275310566811

`record[A129202(2*n+1)-1]`
-/

namespace A298039.P13824907275310566811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298039.P13824907275310566811

namespace A298039

/-- `record[A129202(2*n+1)-1]` -/
def P13824907275310566811.Spec : Prop :=
  ∀ n, P13824907275310566811.a n = A298039 n

end A298039

/-! ## A298039.P17495489071104025681

`A047838(A047235(n+1))`
-/

namespace A298039.P17495489071104025681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A047235 (n + 1)).toNat

end

end A298039.P17495489071104025681

namespace A298039

/-- `A047838(A047235(n+1))` -/
def P17495489071104025681.Spec : Prop :=
  ∀ n, P17495489071104025681.a n = A298039 n

end A298039

/-! ## A298039.P18297788096214354635

`A074148(A047241(n+1))`
-/

namespace A298039.P18297788096214354635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A047241 (n + 1)).toNat

end

end A298039.P18297788096214354635

namespace A298039

/-- `A074148(A047241(n+1))` -/
def P18297788096214354635.Spec : Prop :=
  ∀ n, P18297788096214354635.a n = A298039 n

end A298039

/-! ## A298039.P6746858365402212711

`A326658(A047238(n+1))`
-/

namespace A298039.P6746858365402212711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (A047238 (n + 1)).toNat

end

end A298039.P6746858365402212711

namespace A298039

/-- `A326658(A047238(n+1))` -/
def P6746858365402212711.Spec : Prop :=
  ∀ n, P6746858365402212711.a n = A298039 n

end A298039

/-! ## A298039.P14497664105873574555

`A105638(A047233(n+2))`
-/

namespace A298039.P14497664105873574555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (A047233 (n + 2)).toNat

end

end A298039.P14497664105873574555

namespace A298039

/-- `A105638(A047233(n+2))` -/
def P14497664105873574555.Spec : Prop :=
  ∀ n, P14497664105873574555.a n = A298039 n

end A298039

/-! ## A298039.P13268215798190165547

`A213037(A293990(2*n))`
-/

namespace A298039.P13268215798190165547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (A293990 (2 * n)).toNat

end

end A298039.P13268215798190165547

namespace A298039

/-- `A213037(A293990(2*n))` -/
def P13268215798190165547.Spec : Prop :=
  ∀ n, P13268215798190165547.a n = A298039 n

end A298039

/-! ## A298039.P16844445327729379994

`A056220(A008619(3*n))`
-/

namespace A298039.P16844445327729379994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A008619 (3 * n)).toNat

end

end A298039.P16844445327729379994

namespace A298039

/-- `A056220(A008619(3*n))` -/
def P16844445327729379994.Spec : Prop :=
  ∀ n, P16844445327729379994.a n = A298039 n

end A298039

/-! ## A298039.P14537035428950153875

`A074148(A109613(3*n))`
-/

namespace A298039.P14537035428950153875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A109613 (3 * n)).toNat

end

end A298039.P14537035428950153875

namespace A298039

/-- `A074148(A109613(3*n))` -/
def P14537035428950153875.Spec : Prop :=
  ∀ n, P14537035428950153875.a n = A298039 n

end A298039

/-! ## A298039.P4175526286994059975

`A047838(A047270(n+1)-1)`
-/

namespace A298039.P4175526286994059975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A047270 (n + 1) - 1).toNat

end

end A298039.P4175526286994059975

namespace A298039

/-- `A047838(A047270(n+1)-1)` -/
def P4175526286994059975.Spec : Prop :=
  ∀ n, P4175526286994059975.a n = A298039 n

end A298039

/-!
# A298040: Coordination sequence of Dual(4.6.12) tiling with respect to a tetravalent node.

The programs for A298040, the canonical program `A298040.P8673523671245777730` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298040 has offset 0).

The definition of A298040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298040.P17239868057700346603

`ogf((1+4x+18x^2+16x^3+x^4-4x^5)/(1-2x^2+x^4))`
-/

namespace A298040.P17239868057700346603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 18, 16, 1, -4] [1, 0, -2, 0, 1] n

end

end A298040.P17239868057700346603

namespace A298040

/-- `ogf((1+4x+18x^2+16x^3+x^4-4x^5)/(1-2x^2+x^4))` -/
def P17239868057700346603.Spec : Prop :=
  ∀ n, P17239868057700346603.a n = A298040 n

end A298040

/-! ## A298040.P6736387906874461084

`(gcd(2, n)+3)*n*gcd(2, a(n-1))` with `a(0)=1`
-/

namespace A298040.P6736387906874461084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.gcd 2 n + 3) * (n * Nat.gcd 2 (a (n - 1)))

end

end A298040.P6736387906874461084

namespace A298040

/-- `(gcd(2, n)+3)*n*gcd(2, a(n-1))` -/
def P6736387906874461084.Spec : Prop :=
  ∀ n, (P6736387906874461084.a n : ℤ) = A298040 n

end A298040

/-! ## A298040.P8673523671245777730

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=20, a(3)=24, a(4)=40, a(5)=40`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298040

/-- `2*a(n-2)-a(n-4)` -/
def P8673523671245777730.Spec : Prop :=
  ∀ n, P8673523671245777730.a n = A298040 n

theorem P8673523671245777730.correct : P8673523671245777730.Spec := by
  intro n
  simp only [A298040]

end A298040

/-! ## A298040.P9693622147274952197

`A151798(n)*A184418(n)`
-/

namespace A298040.P9693622147274952197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n * A184418 n

end

end A298040.P9693622147274952197

namespace A298040

/-- `A151798(n)*A184418(n)` -/
def P9693622147274952197.Spec : Prop :=
  ∀ n, P9693622147274952197.a n = A298040 n

end A298040

/-! ## A298040.P13187643910876753777

`A072996(n)*A382154(n)`
-/

namespace A298040.P13187643910876753777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072996 n * A382154 n

end

end A298040.P13187643910876753777

namespace A298040

/-- `A072996(n)*A382154(n)` -/
def P13187643910876753777.Spec : Prop :=
  ∀ n, P13187643910876753777.a n = A298040 n

end A298040

/-! ## A298040.P9350756040419589520

`2*A237420(n)+A234275(n)`
-/

namespace A298040.P9350756040419589520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237420 n + A234275 n

end

end A298040.P9350756040419589520

namespace A298040

/-- `2*A237420(n)+A234275(n)` -/
def P9350756040419589520.Spec : Prop :=
  ∀ n, P9350756040419589520.a n = A298040 n

end A298040

/-! ## A298040.P6897224028303194520

`A234275(n)+4*A142150(n)`
-/

namespace A298040.P6897224028303194520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n + 4 * A142150 n

end

end A298040.P6897224028303194520

namespace A298040

/-- `A234275(n)+4*A142150(n)` -/
def P6897224028303194520.Spec : Prop :=
  ∀ n, P6897224028303194520.a n = A298040 n

end A298040

/-! ## A298040.P12870487198055537031

`A234275(n)+A005843(A237420(n))`
-/

namespace A298040.P12870487198055537031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n + A005843 (A237420 n).toNat

end

end A298040.P12870487198055537031

namespace A298040

/-- `A234275(n)+A005843(A237420(n))` -/
def P12870487198055537031.Spec : Prop :=
  ∀ n, P12870487198055537031.a n = A298040 n

end A298040

/-! ## A298040.P14194688750389648710

`A008574(A026741(n))*A072996(n)`
-/

namespace A298040.P14194688750389648710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A026741 n).toNat * A072996 n

end

end A298040.P14194688750389648710

namespace A298040

/-- `A008574(A026741(n))*A072996(n)` -/
def P14194688750389648710.Spec : Prop :=
  ∀ n, P14194688750389648710.a n = A298040 n

end A298040

/-! ## A298040.P10665033724909251679

`A184418(n)*A266249(2*n)`
-/

namespace A298040.P10665033724909251679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 n * A266249 (2 * n)

end

end A298040.P10665033724909251679

namespace A298040

/-- `A184418(n)*A266249(2*n)` -/
def P10665033724909251679.Spec : Prop :=
  ∀ n, P10665033724909251679.a n = A298040 n

end A298040

/-! ## A298040.P3370689930606038088

`A184418(n)*A267261(2*n+1)`
-/

namespace A298040.P3370689930606038088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 n * A267261 (2 * n + 1)

end

end A298040.P3370689930606038088

namespace A298040

/-- `A184418(n)*A267261(2*n+1)` -/
def P3370689930606038088.Spec : Prop :=
  ∀ n, P3370689930606038088.a n = A298040 n

end A298040

/-! ## A298040.P15919396392948014566

`A237420(A237420(n)+n)+A234275(n)`
-/

namespace A298040.P15919396392948014566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A237420 n + (n : ℤ)).toNat + A234275 n

end

end A298040.P15919396392948014566

namespace A298040

/-- `A237420(A237420(n)+n)+A234275(n)` -/
def P15919396392948014566.Spec : Prop :=
  ∀ n, P15919396392948014566.a n = A298040 n

end A298040

/-! ## A298040.P10244372807345369554

`A008574(A153152(A184418(n)-1))`
-/

namespace A298040.P10244372807345369554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A153152 (A184418 n - 1).toNat).toNat

end

end A298040.P10244372807345369554

namespace A298040

/-- `A008574(A153152(A184418(n)-1))` -/
def P10244372807345369554.Spec : Prop :=
  ∀ n, P10244372807345369554.a n = A298040 n

end A298040

/-! ## A298040.P13681068232530190475

`A004396(A298026(n))*A072996(n)`
-/

namespace A298040.P13681068232530190475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298026 n).toNat * A072996 n

end

end A298040.P13681068232530190475

namespace A298040

/-- `A004396(A298026(n))*A072996(n)` -/
def P13681068232530190475.Spec : Prop :=
  ∀ n, P13681068232530190475.a n = A298040 n

end A298040

/-! ## A298040.P13916358421755357853

`A315916(2*n+1)+A315916(2*n)-(12*n+6)`
-/

namespace A298040.P13916358421755357853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315916 (2 * n + 1) + (A315916 (2 * n) - (12 * n + 6 : ℤ))

end

end A298040.P13916358421755357853

namespace A298040

/-- `A315916(2*n+1)+A315916(2*n)-(12*n+6)` -/
def P13916358421755357853.Spec : Prop :=
  ∀ n, P13916358421755357853.a n = A298040 n

end A298040

/-! ## A298040.P1174681717171173172

`A006369(A072996(n)*A298026(n))`
-/

namespace A298040.P1174681717171173172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A072996 n * A298026 n).toNat

end

end A298040.P1174681717171173172

namespace A298040

/-- `A006369(A072996(n)*A298026(n))` -/
def P1174681717171173172.Spec : Prop :=
  ∀ n, P1174681717171173172.a n = A298040 n

end A298040

/-!
# A298041: Partial sums of A298040.

The programs for A298041, the canonical program `A298041.P10660905563275577109` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298041 has offset 0).

The definition of A298041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298041.P10660905563275577109

`∑[(gcd(2, n)+3)*n*gcd(2, a(n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298041

/-- `∑[(gcd(2, n)+3)*n*gcd(2, a(n-1))]` -/
def P10660905563275577109.Spec : Prop :=
  ∀ n, (P10660905563275577109.a n : ℤ) = A298041 n

theorem P10660905563275577109.correct : P10660905563275577109.Spec := by
  intro n
  simp only [A298041]

end A298041

/-! ## A298041.P1853925615618863474

`∑[A298040(n)]`
-/

namespace A298041.P1853925615618863474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298041.P1853925615618863474

namespace A298041

/-- `∑[A298040(n)]` -/
def P1853925615618863474.Spec : Prop :=
  ∀ n, P1853925615618863474.a n = A298041 n

end A298041

/-! ## A298041.P555141922045865988

`∑[A151798(n)*A184418(n)]`
-/

namespace A298041.P555141922045865988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n * A184418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298041.P555141922045865988

namespace A298041

/-- `∑[A151798(n)*A184418(n)]` -/
def P555141922045865988.Spec : Prop :=
  ∀ n, P555141922045865988.a n = A298041 n

end A298041

/-! ## A298041.P4766362603534970366

`2*A008580(n)-A001844(Δ[floor(n/2)])`
-/

namespace A298041.P4766362603534970366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008580 n - A001844 (f1 (n + 1) - f1 n).toNat

end

end A298041.P4766362603534970366

namespace A298041

/-- `2*A008580(n)-A001844(Δ[floor(n/2)])` -/
def P4766362603534970366.Spec : Prop :=
  ∀ n, P4766362603534970366.a n = A298041 n

end A298041

/-! ## A298041.P15284377632002796371

`A273405(n)+A266725(n)`
-/

namespace A298041.P15284377632002796371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 n + A266725 n

end

end A298041.P15284377632002796371

namespace A298041

/-- `A273405(n)+A266725(n)` -/
def P15284377632002796371.Spec : Prop :=
  ∀ n, P15284377632002796371.a n = A298041 n

end A298041

/-! ## A298041.P10833520450176307263

`A122709(A000217(n))-A001057(n)`
-/

namespace A298041.P10833520450176307263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 (A000217 n).toNat - A001057 n

end

end A298041.P10833520450176307263

namespace A298041

/-- `A122709(A000217(n))-A001057(n)` -/
def P10833520450176307263.Spec : Prop :=
  ∀ n, P10833520450176307263.a n = A298041 n

end A298041

/-! ## A298041.P7198245486814367146

`A121575(A055998(n))-A001057(n)`
-/

namespace A298041.P7198245486814367146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121575 (A055998 n).toNat - A001057 n

end

end A298041.P7198245486814367146

namespace A298041

/-- `A121575(A055998(n))-A001057(n)` -/
def P7198245486814367146.Spec : Prop :=
  ∀ n, P7198245486814367146.a n = A298041 n

end A298041

/-!
# A298042: (d-1)/2 of the odd edges d of primitive Pythagorean triangles with legs (b=A081872, c=A081859), ordered by semiperimeters.

The programs for A298042, there is no canonical definition to state claims against.
-/

/-! ## A298042.P13300929343680787697

`A057979(A081859(n+1))*A057979(A081872(n+1))`
-/

namespace A298042.P13300929343680787697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A081859 (n + 1)).toNat * A057979 (A081872 (n + 1)).toNat

end

end A298042.P13300929343680787697

/-! ## A298042.P8770210535153179273

`A357866(A180620(n+1))`
-/

namespace A298042.P8770210535153179273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357866 (A180620 (n + 1)).toNat

end

end A298042.P8770210535153179273

/-! ## A298042.P5936871045603430717

`A372825(A180620(n+1)-1)`
-/

namespace A298042.P5936871045603430717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372825 (A180620 (n + 1) - 1).toNat

end

end A298042.P5936871045603430717

/-!
# A298043: If n = Sum_{i=1..h} 2^b_i with b_1 > ... > b_h >= 0, then a(n) = Sum_{i=1..h} i * 2^b_i.

The programs for A298043, the canonical program `A298043.P12078883428185430853` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298043 has offset 0).

The definition of A298043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298043.P2157576645391956487

`2*n-(n-a(n-2^floor(log2(n))))` with `a(0)=0`
-/

namespace A298043.P2157576645391956487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a (n - 2 ^ Nat.log 2 n))

end

end A298043.P2157576645391956487

namespace A298043

/-- `2*n-(n-a(n-2^floor(log2(n))))` -/
def P2157576645391956487.Spec : Prop :=
  ∀ n, P2157576645391956487.a n = A298043 n

end A298043

/-! ## A298043.P13813952427037746024

`A083741(n)+n`
-/

namespace A298043.P13813952427037746024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083741 n + (n : ℤ)

end

end A298043.P13813952427037746024

namespace A298043

/-- `A083741(n)+n` -/
def P13813952427037746024.Spec : Prop :=
  ∀ n, P13813952427037746024.a n = A298043 n

end A298043

/-! ## A298043.P6470869503989699880

`n+a(A053645(n))` with `a(0)=0`
-/

namespace A298043.P6470869503989699880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n + a (A053645 n).toNat

end

end A298043.P6470869503989699880

namespace A298043

/-- `n+a(A053645(n))` -/
def P6470869503989699880.Spec : Prop :=
  ∀ n, (P6470869503989699880.a n : ℤ) = A298043 n

end A298043

/-! ## A298043.P12078883428185430853

`a(n-A053644(n))+n` with `a(0)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A298043

/-- `a(n-A053644(n))+n` -/
def P12078883428185430853.Spec : Prop :=
  ∀ n, (P12078883428185430853.a n : ℤ) = A298043 n

theorem P12078883428185430853.correct : P12078883428185430853.Spec := by
  intro n
  simp only [A298043]

end A298043

/-! ## A298043.P9972806827875317095

`A245788(n)+n-A298011(n)`
-/

namespace A298043.P9972806827875317095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n + ((n : ℤ) - A298011 n)

end

end A298043.P9972806827875317095

namespace A298043

/-- `A245788(n)+n-A298011(n)` -/
def P9972806827875317095.Spec : Prop :=
  ∀ n, P9972806827875317095.a n = A298043 n

end A298043

/-! ## A298043.P4216597415496171164

`∑[n-A011371(or(n, A153151(n)))]`
-/

namespace A298043.P4216597415496171164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (Int.lor (n : ℤ) (A153151 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298043.P4216597415496171164

namespace A298043

/-- `∑[n-A011371(or(n, A153151(n)))]` -/
def P4216597415496171164.Spec : Prop :=
  ∀ n, P4216597415496171164.a n = A298043 n

end A298043

/-! ## A298043.P16375813817281153938

`a(A164089(2*n))+n` with `a(0)=0`
-/

namespace A298043.P16375813817281153938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A164089 (2 * n)).toNat + n

end

end A298043.P16375813817281153938

namespace A298043

/-- `a(A164089(2*n))+n` -/
def P16375813817281153938.Spec : Prop :=
  ∀ n, (P16375813817281153938.a n : ℤ) = A298043 n

end A298043

/-! ## A298043.P7613484465686664918

`A000788(2*n)-A003071(n+1)`
-/

namespace A298043.P7613484465686664918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (2 * n) - A003071 (n + 1)

end

end A298043.P7613484465686664918

namespace A298043

/-- `A000788(2*n)-A003071(n+1)` -/
def P7613484465686664918.Spec : Prop :=
  ∀ n, P7613484465686664918.a n = A298043 n

end A298043

/-! ## A298043.P8593276927547529494

`A175186(n+1)+A011371(n)`
-/

namespace A298043.P8593276927547529494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175186 (n + 1) + A011371 n

end

end A298043.P8593276927547529494

namespace A298043

/-- `A175186(n+1)+A011371(n)` -/
def P8593276927547529494.Spec : Prop :=
  ∀ n, P8593276927547529494.a n = A298043 n

end A298043

/-! ## A298043.P15667888431579984298

`A175186(n+1)+n-A000120(n)`
-/

namespace A298043.P15667888431579984298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175186 (n + 1) + ((n : ℤ) - A000120 n)

end

end A298043.P15667888431579984298

namespace A298043

/-- `A175186(n+1)+n-A000120(n)` -/
def P15667888431579984298.Spec : Prop :=
  ∀ n, P15667888431579984298.a n = A298043 n

end A298043

/-!
# A298049: Number of n X n 0..1 arrays with every element equal to 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298049, there is no canonical definition to state claims against.
-/

/-! ## A298049.P16477154445320697238

`A298055(∑[4*n]+1)`
-/

namespace A298049.P16477154445320697238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298049.P16477154445320697238

/-! ## A298049.P10361949639861246415

`record[A298055(Δ[A235355(n)])]`
-/

namespace A298049.P10361949639861246415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298049.P10361949639861246415

/-! ## A298049.P10852002971461803437

`and(-1, A298055(A001844(n)))`
-/

namespace A298049.P10852002971461803437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298055 (A001844 n).toNat)

end

end A298049.P10852002971461803437

/-! ## A298049.P1201646242263094535

`record[A298055(A286145(n)+1)]`
-/

namespace A298049.P1201646242263094535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A286145 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298049.P1201646242263094535

/-! ## A298049.P13912043912573489289

`record[A003982(n)*A298055(n+1)]`
-/

namespace A298049.P13912043912573489289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298049.P13912043912573489289

/-!
# A298050: Number of nX3 0..1 arrays with every element equal to 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298050, there is no canonical definition to state claims against.
-/

/-! ## A298050.P6030843941918012296

`A298055(∑[n+2]+4)`
-/

namespace A298050.P6030843941918012296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298050.P6030843941918012296

/-! ## A298050.P7844066440495964402

`or(char[1], A298055(A167614(n+1)))`
-/

namespace A298050.P7844066440495964402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298055 (A167614 (n + 1)).toNat)

end

end A298050.P7844066440495964402

/-! ## A298050.P3872490610533347650

`A298055(A167614(n+1))+A185284(n)`
-/

namespace A298050.P3872490610533347650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A167614 (n + 1)).toNat + A185284 n

end

end A298050.P3872490610533347650

/-! ## A298050.P13162963405876989852

`A010894(n)!*A298055(A167614(n+1))`
-/

namespace A298050.P13162963405876989852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010894 (n + 21)).toNat : ℤ) * A298055 (A167614 (n + 1)).toNat

end

end A298050.P13162963405876989852

/-! ## A298050.P13777874431005304199

`A298055(A167614(n+1))%A004813(n+1)`
-/

namespace A298050.P13777874431005304199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298055 (A167614 (n + 1)).toNat) (A004813 (n + 1))

end

end A298050.P13777874431005304199

/-!
# A298051: Number of nX4 0..1 arrays with every element equal to 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298051, there is no canonical definition to state claims against.
-/

/-! ## A298051.P15038096575332165210

`A298055(∑[n+3]+7)`
-/

namespace A298051.P15038096575332165210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298051.P15038096575332165210

/-! ## A298051.P15491955745038832504

`gcd(n, n+1)*A298055(A052905(n)+9)`
-/

namespace A298051.P15491955745038832504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A298055 (A052905 n + 9).toNat

end

end A298051.P15491955745038832504

/-! ## A298051.P2875603304440460704

`A298055(A052905(n)+9)%A207712(n+1)`
-/

namespace A298051.P2875603304440460704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298055 (A052905 n + 9).toNat) (A207712 (n + 1))

end

end A298051.P2875603304440460704

/-! ## A298051.P14355056485051354537

`A298055(A055999(n)+10)%A237040(n+1)`
-/

namespace A298051.P14355056485051354537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298055 (A055999 n + 10).toNat) (A237040 (n + 1))

end

end A298051.P14355056485051354537

/-! ## A298051.P3852350910465962228

`A298055(Δ[A006503(n)]+7)%A165599(n)²`
-/

namespace A298051.P3852350910465962228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298055 (f1 (n + 1) - f1 n + 7).toNat) (A165599 n ^ 2)

end

end A298051.P3852350910465962228

/-!
# A298052: Number of nX5 0..1 arrays with every element equal to 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298052, there is no canonical definition to state claims against.
-/

/-! ## A298052.P13698317915824861013

`A298055(∑[n+4]+11)`
-/

namespace A298052.P13698317915824861013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298052.P13698317915824861013

/-! ## A298052.P16967584083619070527

`A298055(A167499(n+3))%A298053(n+1)`
-/

namespace A298052.P16967584083619070527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298055 (A167499 (n + 3)).toNat) (A298053 (n + 1))

end

end A298052.P16967584083619070527

/-! ## A298052.P7276906866088307559

`A298055(A167499(n+3))+A010894(2*n+1)`
-/

namespace A298052.P7276906866088307559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A167499 (n + 3)).toNat + A010894 (2 * n + 1 + 21)

end

end A298052.P7276906866088307559

/-! ## A298052.P14192797499574156102

`A298055(A167499(n+3))+A010894(n)-A010894(n)²`
-/

namespace A298052.P14192797499574156102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A167499 (n + 3)).toNat + (A010894 (n + 21) - A010894 (n + 21) ^ 2)

end

end A298052.P14192797499574156102

/-! ## A298052.P12495281927883393541

`A298055(Δ[A023545(n+1)])+char[29]`
-/

namespace A298052.P12495281927883393541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298052.P12495281927883393541

/-!
# A298053: Number of nX6 0..1 arrays with every element equal to 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298053, there is no canonical definition to state claims against.
-/

/-! ## A298053.P6816034102181204501

`A298055(A166136(n+4))`
-/

namespace A298053.P6816034102181204501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A166136 (n + 4)).toNat

end

end A298053.P6816034102181204501

/-! ## A298053.P6847712596088613183

`A298055(A000124(n+5)+5)`
-/

namespace A298053.P6847712596088613183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A000124 (n + 5) + 5).toNat

end

end A298053.P6847712596088613183

/-! ## A298053.P2168891009679211061

`A298055(A000096(n+4)+7)`
-/

namespace A298053.P2168891009679211061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A000096 (n + 4) + 7).toNat

end

end A298053.P2168891009679211061

/-! ## A298053.P4832479036710569964

`A298055(A000217(n+5)+6)`
-/

namespace A298053.P4832479036710569964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A000217 (n + 5) + 6).toNat

end

end A298053.P4832479036710569964

/-! ## A298053.P4278123616330710820

`A298055(A141214(n+2)+9)`
-/

namespace A298053.P4278123616330710820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A141214 (n + 2) + 9).toNat

end

end A298053.P4278123616330710820

/-!
# A298054: Number of nX7 0..1 arrays with every element equal to 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298054, there is no canonical definition to state claims against.
-/

/-! ## A298054.P3667712302199663380

`A298055(A167487(n+5))`
-/

namespace A298054.P3667712302199663380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A167487 (n + 5)).toNat

end

end A298054.P3667712302199663380

/-! ## A298054.P8501836063681772719

`A298055(A056119(n)+28)`
-/

namespace A298054.P8501836063681772719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A056119 n + 28).toNat

end

end A298054.P8501836063681772719

/-! ## A298054.P3346220485369471523

`A298055(A077169(n+7)+2)`
-/

namespace A298054.P3346220485369471523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A077169 (n + 7) + 2).toNat

end

end A298054.P3346220485369471523

/-! ## A298054.P18195922930733873281

`A298055(A167614(n+5)+4)`
-/

namespace A298054.P18195922930733873281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A167614 (n + 5) + 4).toNat

end

end A298054.P18195922930733873281

/-! ## A298054.P16959794413735189073

`A298055(A000124(n+6)+6)`
-/

namespace A298054.P16959794413735189073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298055 (A000124 (n + 6) + 6).toNat

end

end A298054.P16959794413735189073

/-!
# A298055: T(n,k) = Number of n X k 0..1 arrays with every element equal to 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298055, there is no canonical definition to state claims against.
-/

/-! ## A298055.P10602536729801222770

`A298888(n+1)+A275966(A094553(n+1))`
-/

namespace A298055.P10602536729801222770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (n + 1) + A275966 (A094553 (n + 1)).toNat

end

end A298055.P10602536729801222770

/-! ## A298055.P11249839175475799201

`A298888(n+1)-A002265(A010894(n))`
-/

namespace A298055.P11249839175475799201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (n + 1) - A002265 (A010894 (n + 21)).toNat

end

end A298055.P11249839175475799201

/-! ## A298055.P1600031491432828067

`A298888(n+1)-and(A010894(n), A155212(n))`
-/

namespace A298055.P1600031491432828067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (n + 1) - Int.land (A010894 (n + 21)) (A155212 n)

end

end A298055.P1600031491432828067

/-! ## A298055.P7726272877835375576

`A298888(n+1)-and(A010894(n), A167499(n))`
-/

namespace A298055.P7726272877835375576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (n + 1) - Int.land (A010894 (n + 21)) (A167499 n)

end

end A298055.P7726272877835375576

/-! ## A298055.P16782148986129965453

`A298888(n+1)-and(A010894(n), A158121(n+3))`
-/

namespace A298055.P16782148986129965453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298888 (n + 1) - Int.land (A010894 (n + 21)) (A158121 (n + 3))

end

end A298055.P16782148986129965453

/-!
# A298056: Number of n X n 0..1 arrays with every element equal to 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298056, there is no canonical definition to state claims against.
-/

/-! ## A298056.P11323977467355570985

`A298063(∑[4*n]+1)`
-/

namespace A298056.P11323977467355570985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298056.P11323977467355570985

/-! ## A298056.P3370877397487764380

`A298063((n+1)²+n²)+char[13]`
-/

namespace A298056.P3370877397487764380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 ((n + 1) ^ 2 + n ^ 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298056.P3370877397487764380

/-! ## A298056.P10335521348095373671

`or(char[3], A298063(A001844(n)))`
-/

namespace A298056.P10335521348095373671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298063 (A001844 n).toNat)

end

end A298056.P10335521348095373671

/-! ## A298056.P3948652215153608882

`C(A298063((n+1)²+n²), A014963(∑[n+1]))`
-/

namespace A298056.P3948652215153608882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A298063 ((n + 1) ^ 2 + n ^ 2)).toNat (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A298056.P3948652215153608882

/-! ## A298056.P969542664606510366

`A057427(n)*A298063(A001844(n))`
-/

namespace A298056.P969542664606510366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A298063 (A001844 n).toNat

end

end A298056.P969542664606510366

/-!
# A298057: Number of n X 2 0..1 arrays with every element equal to 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298057, the canonical program `A298057.P17500410959092159333` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298057 has offset 1).

The definition of A298057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298057.P17500410959092159333

`a(n-1)+a(n-2)+8*a(n-3)-16*a(n-5)` with `a(0)=1, a(1)=4, a(2)=3, a(3)=13, a(4)=32`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298057

/-- `a(n-1)+a(n-2)+8*a(n-3)-16*a(n-5)` -/
def P17500410959092159333.Spec : Prop :=
  ∀ n, P17500410959092159333.a n = A298057 (n + 1)

theorem P17500410959092159333.correct : P17500410959092159333.Spec := by
  intro n
  simp only [A298057, Nat.add_sub_cancel]

end A298057

/-! ## A298057.P12286967326725444117

`ogf((1+3x-2x^2-2x^3-16x^4)/(1-x-x^2-8x^3+16x^5))`
-/

namespace A298057.P12286967326725444117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2, -2, -16] [1, -1, -1, -8, 0, 16] n

end

end A298057.P12286967326725444117

namespace A298057

/-- `ogf((1+3x-2x^2-2x^3-16x^4)/(1-x-x^2-8x^3+16x^5))` -/
def P12286967326725444117.Spec : Prop :=
  ∀ n, P12286967326725444117.a n = A298057 (n + 1)

end A298057

/-! ## A298057.P14093539386722081667

`A298063(∑[n+1]+2)`
-/

namespace A298057.P14093539386722081667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298057.P14093539386722081667

namespace A298057

/-- `A298063(∑[n+1]+2)` -/
def P14093539386722081667.Spec : Prop :=
  ∀ n, P14093539386722081667.a n = A298057 (n + 1)

end A298057

/-! ## A298057.P4244715481759324096

`or(char[2], A298063(A000096(n)+3))`
-/

namespace A298057.P4244715481759324096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298063 (A000096 n + 3).toNat)

end

end A298057.P4244715481759324096

namespace A298057

/-- `or(char[2], A298063(A000096(n)+3))` -/
def P4244715481759324096.Spec : Prop :=
  ∀ n, P4244715481759324096.a n = A298057 (n + 1)

end A298057

/-! ## A298057.P18287467774062560896

`lcm(A033999(n), A298063(A000096(n)+3))`
-/

namespace A298057.P18287467774062560896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A298063 (A000096 n + 3).toNat)

end

end A298057.P18287467774062560896

namespace A298057

/-- `lcm(A033999(n), A298063(A000096(n)+3))` -/
def P18287467774062560896.Spec : Prop :=
  ∀ n, (P18287467774062560896.a n : ℤ) = A298057 (n + 1)

end A298057

/-!
# A298058: Number of nX3 0..1 arrays with every element equal to 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298058, there is no canonical definition to state claims against.
-/

/-! ## A298058.P5508598245744580476

`A298063(∑[n+2]+4)`
-/

namespace A298058.P5508598245744580476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298058.P5508598245744580476

/-! ## A298058.P13757132253096810978

`or(char[1], A298063(A167614(n+1)))`
-/

namespace A298058.P13757132253096810978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298063 (A167614 (n + 1)).toNat)

end

end A298058.P13757132253096810978

/-! ## A298058.P3896750926668382004

`or(char[1], A298063(A000096(n+1)+4))`
-/

namespace A298058.P3896750926668382004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298063 (A000096 (n + 1) + 4).toNat)

end

end A298058.P3896750926668382004

/-! ## A298058.P9529799160159464938

`A298063(A167614(n+1))+A011744(n)`
-/

namespace A298058.P9529799160159464938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A167614 (n + 1)).toNat + A011744 n

end

end A298058.P9529799160159464938

/-! ## A298058.P9766709765242890208

`A298063(A167614(n+1))%A291382(n)`
-/

namespace A298058.P9766709765242890208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298063 (A167614 (n + 1)).toNat) (A291382 n)

end

end A298058.P9766709765242890208

/-!
# A298059: Number of nX4 0..1 arrays with every element equal to 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298059, there is no canonical definition to state claims against.
-/

/-! ## A298059.P15858143430668405908

`A298063(∑[n+3]+7)`
-/

namespace A298059.P15858143430668405908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298059.P15858143430668405908

/-! ## A298059.P10875536495941216557

`A298063(A167499(n+2)-1)+char[19]`
-/

namespace A298059.P10875536495941216557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A167499 (n + 2) - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298059.P10875536495941216557

/-! ## A298059.P2041807936006442026

`A007318(C(2, n))*A298063(A167499(n+2)-1)`
-/

namespace A298059.P2041807936006442026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298063 (A167499 (n + 2) - 1).toNat

end

end A298059.P2041807936006442026

/-! ## A298059.P12053773655966485517

`A000108(C(n, n²))*A298063(A167499(n+2)-1)`
-/

namespace A298059.P12053773655966485517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A298063 (A167499 (n + 2) - 1).toNat

end

end A298059.P12053773655966485517

/-! ## A298059.P2424909787933283807

`A298063(A167499(n+2)-1)%A000041(8*n+4)`
-/

namespace A298059.P2424909787933283807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298063 (A167499 (n + 2) - 1).toNat) (A000041 (8 * n + 4))

end

end A298059.P2424909787933283807

/-!
# A298060: Number of n X 5 0..1 arrays with every element equal to 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298060, there is no canonical definition to state claims against.
-/

/-! ## A298060.P80955591114441011

`A298063(A374005(n+1))`
-/

namespace A298060.P80955591114441011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A374005 (n + 1)).toNat

end

end A298060.P80955591114441011

/-! ## A298060.P419835625511139253

`A298063(A167499(n+3))`
-/

namespace A298060.P419835625511139253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A167499 (n + 3)).toNat

end

end A298060.P419835625511139253

/-! ## A298060.P5882190295413470306

`A298063(A155212(n)+13)`
-/

namespace A298060.P5882190295413470306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A155212 n + 13).toNat

end

end A298060.P5882190295413470306

/-! ## A298060.P5948913556776201228

`A298063(A056000(n)+15)`
-/

namespace A298060.P5948913556776201228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A056000 n + 15).toNat

end

end A298060.P5948913556776201228

/-! ## A298060.P9438826841283464582

`A298063(eq[7, A066657(n)])`
-/

namespace A298060.P9438826841283464582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298060.P9438826841283464582

/-!
# A298061: Number of nX6 0..1 arrays with every element equal to 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298061, there is no canonical definition to state claims against.
-/

/-! ## A298061.P5191937582960819230

`A298063(∑[n+5]+16)`
-/

namespace A298061.P5191937582960819230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298061.P5191937582960819230

/-! ## A298061.P13963403210730156291

`A298063(A000217(n+5)+6)+char[18]`
-/

namespace A298061.P13963403210730156291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298061.P13963403210730156291

/-! ## A298061.P5656513241050821865

`A298063(A000217(n+5)+6)%A000108(n+7)`
-/

namespace A298061.P5656513241050821865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298063 (A000217 (n + 5) + 6).toNat) (A000108 (n + 7))

end

end A298061.P5656513241050821865

/-! ## A298061.P6369334276999522447

`A007318(C(2, n))*A298063(A000217(n+5)+6)`
-/

namespace A298061.P6369334276999522447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298063 (A000217 (n + 5) + 6).toNat

end

end A298061.P6369334276999522447

/-! ## A298061.P812542766079374039

`A298063(A000217(n+5)+6)/A007318(C(n, 2))`
-/

namespace A298061.P812542766079374039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298063 (A000217 (n + 5) + 6).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A298061.P812542766079374039

/-!
# A298062: Number of nX7 0..1 arrays with every element equal to 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298062, there is no canonical definition to state claims against.
-/

/-! ## A298062.P11520787605588500005

`A298063(A374008(n+1))`
-/

namespace A298062.P11520787605588500005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A374008 (n + 1)).toNat

end

end A298062.P11520787605588500005

/-! ## A298062.P673814252198197833

`A298063(A167487(n+5))`
-/

namespace A298062.P673814252198197833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A167487 (n + 5)).toNat

end

end A298062.P673814252198197833

/-! ## A298062.P1604284208241315876

`A298063(A056119(n)+28)`
-/

namespace A298062.P1604284208241315876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A056119 n + 28).toNat

end

end A298062.P1604284208241315876

/-! ## A298062.P11687831279379958728

`A298063(eq[11, A066657(n)])`
-/

namespace A298062.P11687831279379958728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298062.P11687831279379958728

/-! ## A298062.P2602518522614914067

`A298063(A167499(n+5)+2)`
-/

namespace A298062.P2602518522614914067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298063 (A167499 (n + 5) + 2).toNat

end

end A298062.P2602518522614914067

/-!
# A298063: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298063, there is no canonical definition to state claims against.
-/

/-! ## A298063.P9311641611187896839

`A298712(n+1)-A297232(A028334(A188706(n+1)))`
-/

namespace A298063.P9311641611187896839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (n + 1) - A297232 (A028334 (A188706 (n + 1)).toNat).toNat

end

end A298063.P9311641611187896839

/-! ## A298063.P13746301761591188920

`A298712(A281873(n+1))`
-/

namespace A298063.P13746301761591188920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A281873 (n + 1)).toNat

end

end A298063.P13746301761591188920

/-! ## A298063.P3354406354061622353

`A298712(and(n, A127581(n))+1)`
-/

namespace A298063.P3354406354061622353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (Int.land (n : ℤ) (A127581 n) + 1).toNat

end

end A298063.P3354406354061622353

/-! ## A298063.P5263054911841276105

`A298712((n+1)^A025437(n)!)`
-/

namespace A298063.P5263054911841276105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 ((n + 1) ^ Nat.factorial (A025437 n).toNat)

end

end A298063.P5263054911841276105

/-! ## A298063.P2440083249648415346

`and(A097002(n+1), A298712(n+1))`
-/

namespace A298063.P2440083249648415346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097002 (n + 1)) (A298712 (n + 1))

end

end A298063.P2440083249648415346

/-!
# A298064: Number of n X n 0..1 arrays with every element equal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298064, there is no canonical definition to state claims against.
-/

/-! ## A298064.P8240713847640985963

`A298070(∑[4*n]+1)`
-/

namespace A298064.P8240713847640985963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298064.P8240713847640985963

/-! ## A298064.P13102568710545414474

`record[A298070(Δ[A235355(n)])]`
-/

namespace A298064.P13102568710545414474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298064.P13102568710545414474

/-! ## A298064.P1248844118693816948

`record[A298070(A092530(n)+1)]`
-/

namespace A298064.P1248844118693816948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A092530 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298064.P1248844118693816948

/-! ## A298064.P13300403011709079167

`record[A298070(A330613(n+1))]`
-/

namespace A298064.P13300403011709079167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298064.P13300403011709079167

/-! ## A298064.P696112430029576092

`A298070(A001844(n))+char[9]`
-/

namespace A298064.P696112430029576092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298064.P696112430029576092

/-!
# A298065: Number of nX3 0..1 arrays with every element equal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298065, there is no canonical definition to state claims against.
-/

/-! ## A298065.P6813127886829855748

`A298070(∑[n+2]+4)`
-/

namespace A298065.P6813127886829855748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298065.P6813127886829855748

/-! ## A298065.P13480559586869459060

`A298070(A167499(n)+n)%(4^(n+1))`
-/

namespace A298065.P13480559586869459060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298070 (A167499 n + (n : ℤ)).toNat) (4 ^ (n + 1) : ℤ)

end

end A298065.P13480559586869459060

/-! ## A298065.P14234884529839407861

`or(A004198(n), A298070(A055998(n)+6))`
-/

namespace A298065.P14234884529839407861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 n) (A298070 (A055998 n + 6).toNat)

end

end A298065.P14234884529839407861

/-! ## A298065.P2803821701278990931

`A010052(n²)*A298070(A055998(n)+6)`
-/

namespace A298065.P2803821701278990931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A298070 (A055998 n + 6).toNat

end

end A298065.P2803821701278990931

/-! ## A298065.P9488992435690718215

`A298070(A055998(n)+6)%A048876(n+1)`
-/

namespace A298065.P9488992435690718215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298070 (A055998 n + 6).toNat) (A048876 (n + 1))

end

end A298065.P9488992435690718215

/-!
# A298066: Number of nX4 0..1 arrays with every element equal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298066, there is no canonical definition to state claims against.
-/

/-! ## A298066.P8580612405681480566

`A298070(A374004(n+1))`
-/

namespace A298066.P8580612405681480566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A374004 (n + 1)).toNat

end

end A298066.P8580612405681480566

/-! ## A298066.P11257912465936304

`A298070(A052905(n)+9)`
-/

namespace A298066.P11257912465936304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A052905 n + 9).toNat

end

end A298066.P11257912465936304

/-! ## A298066.P13864384498106921474

`A298070(A055999(n)+10)`
-/

namespace A298066.P13864384498106921474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A055999 n + 10).toNat

end

end A298066.P13864384498106921474

/-! ## A298066.P14481073034524598042

`A298070(A167614(n+2)+1)`
-/

namespace A298066.P14481073034524598042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A167614 (n + 2) + 1).toNat

end

end A298066.P14481073034524598042

/-! ## A298066.P8875801533504466089

`A298070(A166136(n+2)-2)`
-/

namespace A298066.P8875801533504466089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A166136 (n + 2) - 2).toNat

end

end A298066.P8875801533504466089

/-!
# A298067: Number of nX5 0..1 arrays with every element equal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298067, there is no canonical definition to state claims against.
-/

/-! ## A298067.P1673259338103429085

`A298070(A374005(n+1))`
-/

namespace A298067.P1673259338103429085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A374005 (n + 1)).toNat

end

end A298067.P1673259338103429085

/-! ## A298067.P5357957169153379360

`A298070(A167499(n+3))`
-/

namespace A298067.P5357957169153379360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A167499 (n + 3)).toNat

end

end A298067.P5357957169153379360

/-! ## A298067.P8356111496679486706

`A298070(A155212(n)+13)`
-/

namespace A298067.P8356111496679486706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A155212 n + 13).toNat

end

end A298067.P8356111496679486706

/-! ## A298067.P13530067418079155222

`A298070(A056000(n)+15)`
-/

namespace A298067.P13530067418079155222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A056000 n + 15).toNat

end

end A298067.P13530067418079155222

/-! ## A298067.P14946439799209028735

`A298070(eq[7, A066657(n)])`
-/

namespace A298067.P14946439799209028735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298067.P14946439799209028735

/-!
# A298068: Number of nX6 0..1 arrays with every element equal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298068, there is no canonical definition to state claims against.
-/

/-! ## A298068.P13818072744128458783

`A298070(A374007(n+1))`
-/

namespace A298068.P13818072744128458783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A374007 (n + 1)).toNat

end

end A298068.P13818072744128458783

/-! ## A298068.P10737121824818600762

`A298070(A166136(n+4))`
-/

namespace A298068.P10737121824818600762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A166136 (n + 4)).toNat

end

end A298068.P10737121824818600762

/-! ## A298068.P15780885958526846552

`A298070(A056115(n)+21)`
-/

namespace A298068.P15780885958526846552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A056115 n + 21).toNat

end

end A298068.P15780885958526846552

/-! ## A298068.P12882974778151186433

`A298070(A000217(n+5)+6)`
-/

namespace A298068.P12882974778151186433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A000217 (n + 5) + 6).toNat

end

end A298068.P12882974778151186433

/-! ## A298068.P16089423310844508005

`A298070(eq[7, A131818(n+1)])`
-/

namespace A298068.P16089423310844508005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298068.P16089423310844508005

/-!
# A298069: Number of nX7 0..1 arrays with every element equal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298069, there is no canonical definition to state claims against.
-/

/-! ## A298069.P15709972266702629141

`A298070(A374008(n+1))`
-/

namespace A298069.P15709972266702629141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A374008 (n + 1)).toNat

end

end A298069.P15709972266702629141

/-! ## A298069.P11396335323385198263

`A298070(A056119(n)+28)`
-/

namespace A298069.P11396335323385198263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (A056119 n + 28).toNat

end

end A298069.P11396335323385198263

/-! ## A298069.P4350538403994939254

`A298070(eq[11, A066657(n)])`
-/

namespace A298069.P4350538403994939254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298069.P4350538403994939254

/-! ## A298069.P2085932468738801374

`A298070(eq[8, A131818(n+1)])`
-/

namespace A298069.P2085932468738801374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298069.P2085932468738801374

/-! ## A298069.P4057928877806864412

`A298070(eq[4, A219347(n)])`
-/

namespace A298069.P4057928877806864412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298070 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298069.P4057928877806864412

/-!
# A298070: T(n,k) is the number of n X k 0..1 arrays with every element equal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298070, there is no canonical definition to state claims against.
-/

/-! ## A298070.P4808429843338770231

`A072088(A298719(n+1))`
-/

namespace A298070.P4808429843338770231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A298719 (n + 1)).toNat

end

end A298070.P4808429843338770231

/-! ## A298070.P5488958052347219575

`A298719(A281873(n+1))`
-/

namespace A298070.P5488958052347219575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A281873 (n + 1)).toNat

end

end A298070.P5488958052347219575

/-! ## A298070.P18111580727334200642

`A000196(A298719(n+1)²)`
-/

namespace A298070.P18111580727334200642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A298719 (n + 1) ^ 2).toNat

end

end A298070.P18111580727334200642

/-! ## A298070.P9007136330340576463

`A018851(A298719(n+1)²)`
-/

namespace A298070.P9007136330340576463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A298719 (n + 1) ^ 2).toNat

end

end A298070.P9007136330340576463

/-! ## A298070.P10344741892726509355

`A037213(A298719(n+1)²)`
-/

namespace A298070.P10344741892726509355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A298719 (n + 1) ^ 2).toNat

end

end A298070.P10344741892726509355

/-!
# A298071: Number of primes between floor(3*n/2) and 2*n (inclusive).

The programs for A298071, there is no canonical definition to state claims against.
-/

/-! ## A298071.P8060814451998503188

`A099802(n+1)-A056172(3*n+1)`
-/

namespace A298071.P8060814451998503188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A056172 (3 * n + 1)

end

end A298071.P8060814451998503188

/-! ## A298071.P4154474975559893834

`A000720(2*(n+1))-A055679(3*n+1)`
-/

namespace A298071.P4154474975559893834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A055679 (3 * n + 1)

end

end A298071.P4154474975559893834

/-! ## A298071.P14882049527462994002

`A000720(2*(n+1))-A056172(3*n+1)`
-/

namespace A298071.P14882049527462994002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A056172 (3 * n + 1)

end

end A298071.P14882049527462994002

/-! ## A298071.P5095020698277763554

`A230980(2*(n+1))-A056172(3*n+1)`
-/

namespace A298071.P5095020698277763554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * (n + 1)) - A056172 (3 * n + 1)

end

end A298071.P5095020698277763554

/-! ## A298071.P730438240775687568

`A230980(2*(n+1))-A230980(ceil(3*n/2))`
-/

namespace A298071.P730438240775687568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * (n + 1)) - A230980 ⌈3 * ((n : ℚ) / 2)⌉.toNat

end

end A298071.P730438240775687568

/-! ## A298071.P1746361195126259989

`A099802(n+1)-A055679(A016777(n))`
-/

namespace A298071.P1746361195126259989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A055679 (A016777 n).toNat

end

end A298071.P1746361195126259989

/-! ## A298071.P9066344429435603857

`A099802(n+1)-A230980(A007494(n))`
-/

namespace A298071.P9066344429435603857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A230980 (A007494 n).toNat

end

end A298071.P9066344429435603857

/-! ## A298071.P9523147088234685204

`A099802(n+1)-A055679(A276283(n))`
-/

namespace A298071.P9523147088234685204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A055679 (A276283 n).toNat

end

end A298071.P9523147088234685204

/-! ## A298071.P18201289256495208536

`A099802(n+1)-A055679(A007310(n+1))`
-/

namespace A298071.P18201289256495208536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A055679 (A007310 (n + 1)).toNat

end

end A298071.P18201289256495208536

/-! ## A298071.P4784413319679064980

`A099802(n+1)-A000720(A294732(n+2))`
-/

namespace A298071.P4784413319679064980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A000720 (A294732 (n + 2)).toNat

end

end A298071.P4784413319679064980

/-!
# A298072: Number of binary strings of length n that are "prefix heavy", meaning that the fraction of "1" bits in any nonempty prefix is at least as great as the fraction of "1" bits in the entire string.

The programs for A298072, there is no canonical definition to state claims against.
-/

/-! ## A298072.P5090159817741421469

`A354581(∑[A090091(floor(n/2))])`
-/

namespace A298072.P5090159817741421469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090091 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298072.P5090159817741421469

/-! ## A298072.P14720402335931426556

`A025427(A145453(n))+A000031(n)`
-/

namespace A298072.P14720402335931426556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A145453 n).toNat + A000031 n

end

end A298072.P14720402335931426556

/-! ## A298072.P13106516549953053453

`A144111(A003271(n))`
-/

namespace A298072.P13106516549953053453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144111 (A003271 n).toNat

end

end A298072.P13106516549953053453

/-! ## A298072.P192428584815143109

`A144111(A385747(n))`
-/

namespace A298072.P192428584815143109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144111 (A385747 n).toNat

end

end A298072.P192428584815143109

/-! ## A298072.P6677919103302013247

`record[A353352(A033001(n+1))]`
-/

namespace A298072.P6677919103302013247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (A033001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298072.P6677919103302013247

/-!
# A298073: The first of three consecutive integers the sum of which is equal to the sum of three consecutive prime numbers.

The programs for A298073, there is no canonical definition to state claims against.
-/

/-! ## A298073.P1727978061545907446

`A075540(n+1)-1`
-/

namespace A298073.P1727978061545907446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1) - 1

end

end A298073.P1727978061545907446

/-! ## A298073.P18008240890509504162

`xor(1, A075540(n+1)%A051795(n+1))`
-/

namespace A298073.P18008240890509504162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod (A075540 (n + 1)) (A051795 (n + 1)))

end

end A298073.P18008240890509504162

/-! ## A298073.P15016538316978374402

`∪[A006562(n+1), A345363(n+1)]-1`
-/

namespace A298073.P15016538316978374402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345363 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A298073.P15016538316978374402

/-! ## A298073.P15712223818576008362

`xor(log2(A020639(2*(n+2))), A075540(n+1))`
-/

namespace A298073.P15712223818576008362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.logb 2 (A020639 (2 * (n + 2)) : ℝ))) (A075540 (n + 1))

end

end A298073.P15712223818576008362

/-! ## A298073.P10539794320002708047

`xor(A057237(A008458(n)), A075540(n+1))`
-/

namespace A298073.P10539794320002708047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057237 (A008458 n).toNat) (A075540 (n + 1))

end

end A298073.P10539794320002708047

/-! ## A298073.P3607989268521076467

`xor(A057237(A008574(n)), A075540(n+1))`
-/

namespace A298073.P3607989268521076467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057237 (A008574 n).toNat) (A075540 (n + 1))

end

end A298073.P3607989268521076467

/-! ## A298073.P10611431314677090575

`xor(A008966(A020639(n+1)), A075540(n+1))`
-/

namespace A298073.P10611431314677090575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008966 (A020639 (n + 1)).toNat) (A075540 (n + 1))

end

end A298073.P10611431314677090575

/-! ## A298073.P14965542885016132213

`xor(A001222(A054643(n+1)), A075540(n+1))`
-/

namespace A298073.P14965542885016132213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A054643 (n + 1)).toNat) (A075540 (n + 1))

end

end A298073.P14965542885016132213

/-! ## A298073.P14697581426674036239

`xor(A001222(A006562(n+1)), A075540(n+1))`
-/

namespace A298073.P14697581426674036239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A006562 (n + 1)).toNat) (A075540 (n + 1))

end

end A298073.P14697581426674036239

/-! ## A298073.P3528884371779896283

`xor(A001222(A122535(n+1)), A075540(n+1))`
-/

namespace A298073.P3528884371779896283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A122535 (n + 1)).toNat) (A075540 (n + 1))

end

end A298073.P3528884371779896283

/-! ## A298073.P11034371457085891510

`xor(A001222(A181424(n+1)), A075540(n+1))`
-/

namespace A298073.P11034371457085891510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A181424 (n + 1)).toNat) (A075540 (n + 1))

end

end A298073.P11034371457085891510

/-! ## A298073.P2890688711276926141

`A075553(A075520(n+1))+A075540(n+1)`
-/

namespace A298073.P2890688711276926141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (A075520 (n + 1)).toNat + A075540 (n + 1)

end

end A298073.P2890688711276926141

/-! ## A298073.P3364624516882148811

`A004442(A075540(n+1))`
-/

namespace A298073.P3364624516882148811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A075540 (n + 1)).toNat

end

end A298073.P3364624516882148811

/-!
# A298075: Primes p whose last digit is the same as that of both its predecessor prime and its successor prime.

The programs for A298075, the canonical program `A298075.P4691434882581935082` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298075 has offset 1).

The definition of A298075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298075.P17743684640689865436

`A151800(A328452(n+1))`
-/

namespace A298075.P17743684640689865436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A328452 (n + 1)).toNat

end

end A298075.P17743684640689865436

namespace A298075

/-- `A151800(A328452(n+1))` -/
def P17743684640689865436.Spec : Prop :=
  ∀ n, P17743684640689865436.a n = A298075 (n + 1)

end A298075

/-! ## A298075.P4691434882581935082

`∩[A290450(n+1), A151800(A290450(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A298075

/-- `∩[A290450(n+1), A151800(A290450(n+1))]` -/
def P4691434882581935082.Spec : Prop :=
  ∀ n, (P4691434882581935082.a n : ℤ) = A298075 (n + 1)

theorem P4691434882581935082.correct : P4691434882581935082.Spec := by
  intro n
  simp only [A298075, Nat.add_sub_cancel]

end A298075

/-! ## A298075.P13065730687494915897

`∑{d}[A328452(n+1), A003972(#)]`
-/

namespace A298075.P13065730687494915897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A298075.P13065730687494915897

namespace A298075

/-- `∑{d}[A328452(n+1), A003972(#)]` -/
def P13065730687494915897.Spec : Prop :=
  ∀ n, P13065730687494915897.a n = A298075 (n + 1)

end A298075

/-! ## A298075.P3043065476565288124

`A003972(A328452(n+1))+A007318(∑[n])`
-/

namespace A298075.P3043065476565288124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (A328452 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298075.P3043065476565288124

namespace A298075

/-- `A003972(A328452(n+1))+A007318(∑[n])` -/
def P3043065476565288124.Spec : Prop :=
  ∀ n, P3043065476565288124.a n = A298075 (n + 1)

end A298075

/-! ## A298075.P4314795416417229583

`A067792(A328452(n+1))`
-/

namespace A298075.P4314795416417229583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A328452 (n + 1)).toNat

end

end A298075.P4314795416417229583

namespace A298075

/-- `A067792(A328452(n+1))` -/
def P4314795416417229583.Spec : Prop :=
  ∀ n, P4314795416417229583.a n = A298075 (n + 1)

end A298075

/-!
# A298077: Oblong numbers that are the sum of 2 successive primes.

The programs for A298077, there is no canonical definition to state claims against.
-/

/-! ## A298077.P4900538684459178380

`A181902(n+2)+A181902(n+2)²`
-/

namespace A298077.P4900538684459178380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181902 (n + 2) + A181902 (n + 2) ^ 2

end

end A298077.P4900538684459178380

/-! ## A298077.P14681293969346785399

`2*A000217(A181902(n+2))`
-/

namespace A298077.P14681293969346785399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A181902 (n + 2)).toNat

end

end A298077.P14681293969346785399

/-! ## A298077.P8157430478371731204

`2*A130178(n+1)`
-/

namespace A298077.P8157430478371731204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130178 (n + 1)

end

end A298077.P8157430478371731204

/-! ## A298077.P13419161845699706631

`A130178(n+1)+A130178((n+1)%A005449(n+1))`
-/

namespace A298077.P13419161845699706631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130178 (n + 1) + A130178 (Int.tmod (n + 1 : ℤ) (A005449 (n + 1))).toNat

end

end A298077.P13419161845699706631

/-! ## A298077.P13057771010562332986

`A002378(A181902(n+2))`
-/

namespace A298077.P13057771010562332986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A181902 (n + 2)).toNat

end

end A298077.P13057771010562332986

/-! ## A298077.P9944929842486880802

`∩[∑[2*n], A001043(n+1)]`
-/

namespace A298077.P9944929842486880802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A298077.P9944929842486880802

/-! ## A298077.P6673994619130675388

`∩[A164653(n+1), n²+n]`
-/

namespace A298077.P6673994619130675388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A298077.P6673994619130675388

/-! ## A298077.P12836265209187359402

`∩[A001043(n+1), A002378(n)]`
-/

namespace A298077.P12836265209187359402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298077.P12836265209187359402

/-! ## A298077.P1107106252097834766

`∩[A002378(n), A164653(n+1)]`
-/

namespace A298077.P1107106252097834766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298077.P1107106252097834766

/-! ## A298077.P11603890653875714008

`∩[A001043(n+1), A226023(n)]`
-/

namespace A298077.P11603890653875714008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298077.P11603890653875714008

/-!
# A298078: a(n) = 7*n^2 - 7*n - 43.

The programs for A298078, the canonical program `A298078.P7741471914778194717` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298078 has offset 1).

The definition of A298078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)²-7*(n+1)-43` (program `A298078.P7741471914778194717`, by `A298078.P7741471914778194717.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298078.P10068086891120734358

`ogf((-43+100x-43x^2)/(1-3x+3x^2-x^3))`
-/

namespace A298078.P10068086891120734358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-43, 100, -43] [1, -3, 3, -1] n

end

end A298078.P10068086891120734358

namespace A298078

/-- `ogf((-43+100x-43x^2)/(1-3x+3x^2-x^3))` -/
def P10068086891120734358.Spec : Prop :=
  ∀ n, P10068086891120734358.a n = A298078 (n + 1)

end A298078

/-! ## A298078.P7741471914778194717

`7*(n+1)²-7*(n+1)-43`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298078

/-- `7*(n+1)²-7*(n+1)-43` -/
def P7741471914778194717.Spec : Prop :=
  ∀ n, P7741471914778194717.a n = A298078 (n + 1)

theorem P7741471914778194717.correct : P7741471914778194717.Spec := by
  intro n
  simp only [A298078, Nat.add_sub_cancel]

end A298078

/-! ## A298078.P14141931504804833877

`Δ[A063521(n)-A304157(n+1)]`
-/

namespace A298078.P14141931504804833877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n - A304157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298078.P14141931504804833877

namespace A298078

/-- `Δ[A063521(n)-A304157(n+1)]` -/
def P14141931504804833877.Spec : Prop :=
  ∀ n, P14141931504804833877.a n = A298078 (n + 1)

end A298078

/-! ## A298078.P16944071539902486208

`Δ[A063521(n)-2*A161709(n)]`
-/

namespace A298078.P16944071539902486208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n - 2 * A161709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298078.P16944071539902486208

namespace A298078

/-- `Δ[A063521(n)-2*A161709(n)]` -/
def P16944071539902486208.Spec : Prop :=
  ∀ n, P16944071539902486208.a n = A298078 (n + 1)

end A298078

/-!
# A298080: Integers m such that both phi(m) and sigma(m) are coprime to tau(m).

The programs for A298080, there is no canonical definition to state claims against.
-/

/-! ## A298080.P2935930284482144479

`∩[A225983(n+1), A330606(n+1)]`
-/

namespace A298080.P2935930284482144479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298080.P2935930284482144479

/-! ## A298080.P8500735692291230851

`∩[A046678(n+1), A225983(n+1)]`
-/

namespace A298080.P8500735692291230851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298080.P8500735692291230851

/-!
# A298081: Number of n X n 0..1 arrays with every element equal to 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298081, there is no canonical definition to state claims against.
-/

/-! ## A298081.P1721765152627162946

`A298087(∑[4*n]+1)`
-/

namespace A298081.P1721765152627162946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298081.P1721765152627162946

/-! ## A298081.P2078843957295506566

`and(-1, A298087(A001844(n)))`
-/

namespace A298081.P2078843957295506566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298087 (A001844 n).toNat)

end

end A298081.P2078843957295506566

/-! ## A298081.P3010351463598144103

`A298087(A001844(n))+A031346(n)`
-/

namespace A298081.P3010351463598144103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A001844 n).toNat + A031346 n

end

end A298081.P3010351463598144103

/-! ## A298081.P1904485180984803057

`A298087(A001844(n))+A059995(n)`
-/

namespace A298081.P1904485180984803057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A001844 n).toNat + A059995 n

end

end A298081.P1904485180984803057

/-! ## A298081.P4129941596651488231

`A298087(A001844(n))+A034560(n+1)`
-/

namespace A298081.P4129941596651488231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A001844 n).toNat + A034560 (n + 1)

end

end A298081.P4129941596651488231

/-!
# A298082: Number of nX3 0..1 arrays with every element equal to 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298082, there is no canonical definition to state claims against.
-/

/-! ## A298082.P2441617867572830018

`A298087(∑[n+2]+4)`
-/

namespace A298082.P2441617867572830018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298082.P2441617867572830018

/-! ## A298082.P6727024975886273379

`A298087(A167614(n+1))+char[20]`
-/

namespace A298082.P6727024975886273379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298082.P6727024975886273379

/-! ## A298082.P8095681776123511222

`A298087(A000217(n+2)+3)+char[20]`
-/

namespace A298082.P8095681776123511222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298082.P8095681776123511222

/-! ## A298082.P14323393894600348046

`A298087(A167614(n+1))%A000302(n)`
-/

namespace A298082.P14323393894600348046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298087 (A167614 (n + 1)).toNat) (A000302 n)

end

end A298082.P14323393894600348046

/-! ## A298082.P10599024631740095015

`A084419(2*n+3)*A298087(A167614(n+1))`
-/

namespace A298082.P10599024631740095015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084419 (2 * n + 3) * A298087 (A167614 (n + 1)).toNat

end

end A298082.P10599024631740095015

/-!
# A298083: Number of nX4 0..1 arrays with every element equal to 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298083, there is no canonical definition to state claims against.
-/

/-! ## A298083.P11946228289294337740

`A298087(∑[n+3]+7)`
-/

namespace A298083.P11946228289294337740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298083.P11946228289294337740

/-! ## A298083.P6994006484025754880

`A298087(A052905(n)+9)+char[21]`
-/

namespace A298083.P6994006484025754880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298083.P6994006484025754880

/-! ## A298083.P11030586191286115081

`A178334(n)*A298087(A052905(n)+9)`
-/

namespace A298083.P11030586191286115081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A298087 (A052905 n + 9).toNat

end

end A298083.P11030586191286115081

/-! ## A298083.P10245365372828595079

`A007318(C(2, n))*A298087(A052905(n)+9)`
-/

namespace A298083.P10245365372828595079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298087 (A052905 n + 9).toNat

end

end A298083.P10245365372828595079

/-! ## A298083.P5419810046583892377

`A000041(C(2, n+2))*A298087(A052905(n)+9)`
-/

namespace A298083.P5419810046583892377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A298087 (A052905 n + 9).toNat

end

end A298083.P5419810046583892377

/-!
# A298084: Number of nX5 0..1 arrays with every element equal to 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298084, there is no canonical definition to state claims against.
-/

/-! ## A298084.P15030657330630787625

`A298087(∑[n+4]+11)`
-/

namespace A298084.P15030657330630787625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298084.P15030657330630787625

/-! ## A298084.P9673615918432164475

`A298087(A000124(n+4)+4)+char[18]`
-/

namespace A298084.P9673615918432164475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A000124 (n + 4) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298084.P9673615918432164475

/-! ## A298084.P18394600114675021320

`A007318(C(n, 2))*A298087(A000124(n+4)+4)`
-/

namespace A298084.P18394600114675021320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A298087 (A000124 (n + 4) + 4).toNat

end

end A298084.P18394600114675021320

/-! ## A298084.P17866398248826981299

`A000041(C(2, n+2))*A298087(A000124(n+4)+4)`
-/

namespace A298084.P17866398248826981299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A298087 (A000124 (n + 4) + 4).toNat

end

end A298084.P17866398248826981299

/-! ## A298084.P4924990754376297555

`A014963(12*n+10)*A298087(A000124(n+4)+4)`
-/

namespace A298084.P4924990754376297555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 10) * A298087 (A000124 (n + 4) + 4).toNat

end

end A298084.P4924990754376297555

/-!
# A298085: Number of n X 6 0..1 arrays with every element equal to 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298085, there is no canonical definition to state claims against.
-/

/-! ## A298085.P6974645038791896954

`A298087(A374007(n+1))`
-/

namespace A298085.P6974645038791896954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A374007 (n + 1)).toNat

end

end A298085.P6974645038791896954

/-! ## A298085.P7319886298531352881

`A298087(A056115(n)+21)`
-/

namespace A298085.P7319886298531352881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A056115 n + 21).toNat

end

end A298085.P7319886298531352881

/-! ## A298085.P3968583857031082028

`A298087(Δ[A264443(n)]+10)`
-/

namespace A298085.P3968583857031082028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (f1 (n + 1) - f1 n + 10).toNat

end

end A298085.P3968583857031082028

/-! ## A298085.P3270486610794635295

`A298087(A167499(n+4)+1)`
-/

namespace A298085.P3270486610794635295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A167499 (n + 4) + 1).toNat

end

end A298085.P3270486610794635295

/-! ## A298085.P14231312506740153905

`A298087(A000124(n+5)+5)`
-/

namespace A298085.P14231312506740153905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A000124 (n + 5) + 5).toNat

end

end A298085.P14231312506740153905

/-!
# A298086: Number of nX7 0..1 arrays with every element equal to 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298086, there is no canonical definition to state claims against.
-/

/-! ## A298086.P8250769857879665653

`A298087(A374008(n+1))`
-/

namespace A298086.P8250769857879665653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A374008 (n + 1)).toNat

end

end A298086.P8250769857879665653

/-! ## A298086.P6854687885315743745

`A298087(A167487(n+5))`
-/

namespace A298086.P6854687885315743745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A167487 (n + 5)).toNat

end

end A298086.P6854687885315743745

/-! ## A298086.P12607229105937684280

`A298087(A056119(n)+28)`
-/

namespace A298086.P12607229105937684280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A056119 n + 28).toNat

end

end A298086.P12607229105937684280

/-! ## A298086.P4582261396612484339

`A298087(eq[11, A066657(n)])`
-/

namespace A298086.P4582261396612484339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298086.P4582261396612484339

/-! ## A298086.P4697996759951668546

`A298087(A167499(n+5)+2)`
-/

namespace A298086.P4697996759951668546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298087 (A167499 (n + 5) + 2).toNat

end

end A298086.P4697996759951668546

/-!
# A298087: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298087, there is no canonical definition to state claims against.
-/

/-! ## A298087.P11564180716699805046

`A297876(n+1)+A079978(A157153(n))`
-/

namespace A298087.P11564180716699805046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (n + 1) + A079978 (A157153 n).toNat

end

end A298087.P11564180716699805046

/-! ## A298087.P16745687654632591667

`A298139(n+1)+A079978(A157153(n))`
-/

namespace A298087.P16745687654632591667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (n + 1) + A079978 (A157153 n).toNat

end

end A298087.P16745687654632591667

/-! ## A298087.P5638521571214317128

`A297876(n+1)+A297876(A257493(n))`
-/

namespace A298087.P5638521571214317128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297876 (n + 1) + A297876 (A257493 n).toNat

end

end A298087.P5638521571214317128

/-! ## A298087.P9871158493584198359

`A298139(n+1)+A298139(A257493(n))`
-/

namespace A298087.P9871158493584198359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (n + 1) + A298139 (A257493 n).toNat

end

end A298087.P9871158493584198359

/-! ## A298087.P17728087495680750390

`or(A016389(A303242(n+1)), A297876(n+1))`
-/

namespace A298087.P17728087495680750390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 (A303242 (n + 1)).toNat) (A297876 (n + 1))

end

end A298087.P17728087495680750390

/-!
# A298088: Number of n X n 0..1 arrays with every element equal to 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298088, there is no canonical definition to state claims against.
-/

/-! ## A298088.P11656934836453981397

`A298093(∑[4*n]+1)`
-/

namespace A298088.P11656934836453981397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298088.P11656934836453981397

/-! ## A298088.P677938236192991315

`xor(1, xor(1, A298093(A001844(n))))`
-/

namespace A298088.P677938236192991315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A298093 (A001844 n).toNat))

end

end A298088.P677938236192991315

/-! ## A298088.P10251349823479836172

`A007318(∑[n])*A298093(A001844(n))`
-/

namespace A298088.P10251349823479836172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A298093 (A001844 n).toNat

end

end A298088.P10251349823479836172

/-! ## A298088.P9951498370020583172

`A298093(A001844(n))+A063524(3*n)`
-/

namespace A298088.P9951498370020583172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A001844 n).toNat + A063524 (3 * n)

end

end A298088.P9951498370020583172

/-! ## A298088.P16099180412886008021

`A298093(A001844(n))/A007318(C(2, n))`
-/

namespace A298088.P16099180412886008021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298093 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A298088.P16099180412886008021

/-!
# A298089: Number of nX4 0..1 arrays with every element equal to 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298089, there is no canonical definition to state claims against.
-/

/-! ## A298089.P17130218063474224666

`A298093(∑[n+3]+7)`
-/

namespace A298089.P17130218063474224666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298089.P17130218063474224666

/-! ## A298089.P16387049537574055826

`or(char[1], A298093(A052905(n)+9))`
-/

namespace A298089.P16387049537574055826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298093 (A052905 n + 9).toNat)

end

end A298089.P16387049537574055826

/-! ## A298089.P7235741947408732243

`or(char[1], A298093(A055998(n+1)+7))`
-/

namespace A298089.P7235741947408732243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298093 (A055998 (n + 1) + 7).toNat)

end

end A298089.P7235741947408732243

/-! ## A298089.P171913982314536328

`A007318(C(n, 2))*A298093(A052905(n)+9)`
-/

namespace A298089.P171913982314536328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A298093 (A052905 n + 9).toNat

end

end A298089.P171913982314536328

/-! ## A298089.P1283958113736918235

`A298093(A052905(n)+9)%A000032(n+32)`
-/

namespace A298089.P1283958113736918235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298093 (A052905 n + 9).toNat) (A000032 (n + 32))

end

end A298089.P1283958113736918235

/-!
# A298090: Number of nX5 0..1 arrays with every element equal to 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298090, there is no canonical definition to state claims against.
-/

/-! ## A298090.P2422825127570508271

`A298093(A167499(n+3))`
-/

namespace A298090.P2422825127570508271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A167499 (n + 3)).toNat

end

end A298090.P2422825127570508271

/-! ## A298090.P16441388943617353308

`A298093(A155212(n)+13)`
-/

namespace A298090.P16441388943617353308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A155212 n + 13).toNat

end

end A298090.P16441388943617353308

/-! ## A298090.P9917476093510477467

`A298093(A056000(n)+15)`
-/

namespace A298090.P9917476093510477467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A056000 n + 15).toNat

end

end A298090.P9917476093510477467

/-! ## A298090.P5725819474745154016

`A298093(A166136(n+3)-1)`
-/

namespace A298090.P5725819474745154016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A166136 (n + 3) - 1).toNat

end

end A298090.P5725819474745154016

/-! ## A298090.P11872916214846953860

`A298093(A000124(n+4)+4)`
-/

namespace A298090.P11872916214846953860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A000124 (n + 4) + 4).toNat

end

end A298090.P11872916214846953860

/-!
# A298091: Number of nX6 0..1 arrays with every element equal to 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298091, there is no canonical definition to state claims against.
-/

/-! ## A298091.P2065288000793879275

`A298093(A166136(n+4))`
-/

namespace A298091.P2065288000793879275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A166136 (n + 4)).toNat

end

end A298091.P2065288000793879275

/-! ## A298091.P2081344186058223841

`A298093(A056115(n)+21)`
-/

namespace A298091.P2081344186058223841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A056115 n + 21).toNat

end

end A298091.P2081344186058223841

/-! ## A298091.P11366922841808125404

`A298093(Δ[A264443(n)]+10)`
-/

namespace A298091.P11366922841808125404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (f1 (n + 1) - f1 n + 10).toNat

end

end A298091.P11366922841808125404

/-! ## A298091.P13110894887450562921

`A298093(A167499(n+4)+1)`
-/

namespace A298091.P13110894887450562921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A167499 (n + 4) + 1).toNat

end

end A298091.P13110894887450562921

/-! ## A298091.P8743448958193274243

`A298093(A000124(n+5)+5)`
-/

namespace A298091.P8743448958193274243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A000124 (n + 5) + 5).toNat

end

end A298091.P8743448958193274243

/-!
# A298092: Number of nX7 0..1 arrays with every element equal to 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298092, there is no canonical definition to state claims against.
-/

/-! ## A298092.P5878761728314129959

`A298093(A056119(n)+28)`
-/

namespace A298092.P5878761728314129959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A056119 n + 28).toNat

end

end A298092.P5878761728314129959

/-! ## A298092.P17971103908275357979

`A298093(A166136(n+5)+1)`
-/

namespace A298092.P17971103908275357979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A166136 (n + 5) + 1).toNat

end

end A298092.P17971103908275357979

/-! ## A298092.P15594926879183477848

`A298093(A167499(n+5)+2)`
-/

namespace A298092.P15594926879183477848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A167499 (n + 5) + 2).toNat

end

end A298092.P15594926879183477848

/-! ## A298092.P10482880476741669747

`A298093(A167614(n+5)+4)`
-/

namespace A298092.P10482880476741669747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A167614 (n + 5) + 4).toNat

end

end A298092.P10482880476741669747

/-! ## A298092.P12949237392709161226

`A298093(A000124(n+6)+6)`
-/

namespace A298092.P12949237392709161226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (A000124 (n + 6) + 6).toNat

end

end A298092.P12949237392709161226

/-!
# A298094: Number of n X n 0..1 arrays with every element equal to 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298094, there is no canonical definition to state claims against.
-/

/-! ## A298094.P11376331867545649880

`A298100(∑[4*n]+1)`
-/

namespace A298094.P11376331867545649880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298094.P11376331867545649880

/-! ## A298094.P2326747797809063859

`and(-1, A298100(A001844(n)))`
-/

namespace A298094.P2326747797809063859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298100 (A001844 n).toNat)

end

end A298094.P2326747797809063859

/-! ## A298094.P8522553881962414460

`A298100(A001844(n))+A035586(n)`
-/

namespace A298094.P8522553881962414460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A001844 n).toNat + A035586 n

end

end A298094.P8522553881962414460

/-! ## A298094.P2315808628035875356

`A298100(A001844(n))+A054899(n)`
-/

namespace A298094.P2315808628035875356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A001844 n).toNat + A054899 n

end

end A298094.P2315808628035875356

/-! ## A298094.P6678934384139180579

`A036370(n)*A298100(A001844(n))`
-/

namespace A298094.P6678934384139180579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 n * A298100 (A001844 n).toNat

end

end A298094.P6678934384139180579

/-!
# A298095: Number of nX3 0..1 arrays with every element equal to 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298095, the canonical program `A298095.P17534803907661982938` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298095 has offset 1).

The definition of A298095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298095.P17534803907661982938

`a(n-1)+2*a(n-2)-a(n-3)+a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A298095

/-- `a(n-1)+2*a(n-2)-a(n-3)+a(n-4)-2*a(n-5)` -/
def P17534803907661982938.Spec : Prop :=
  ∀ n, P17534803907661982938.a n = A298095 (n + 1)

theorem P17534803907661982938.correct : P17534803907661982938.Spec := by
  intro n
  simp only [A298095, Nat.add_sub_cancel]

end A298095

/-! ## A298095.P15847160407900907471

`A298100(∑[n+2]+4)`
-/

namespace A298095.P15847160407900907471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298095.P15847160407900907471

namespace A298095

/-- `A298100(∑[n+2]+4)` -/
def P15847160407900907471.Spec : Prop :=
  ∀ n, P15847160407900907471.a n = A298095 (n + 1)

end A298095

/-! ## A298095.P6562811051264798232

`and(-1, A298100(A167614(n+1)))`
-/

namespace A298095.P6562811051264798232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298100 (A167614 (n + 1)).toNat)

end

end A298095.P6562811051264798232

namespace A298095

/-- `and(-1, A298100(A167614(n+1)))` -/
def P6562811051264798232.Spec : Prop :=
  ∀ n, P6562811051264798232.a n = A298095 (n + 1)

end A298095

/-! ## A298095.P8521944654323197335

`or(char[1], A298100(A000217(n+2)+3))`
-/

namespace A298095.P8521944654323197335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298100 (A000217 (n + 2) + 3).toNat)

end

end A298095.P8521944654323197335

namespace A298095

/-- `or(char[1], A298100(A000217(n+2)+3))` -/
def P8521944654323197335.Spec : Prop :=
  ∀ n, P8521944654323197335.a n = A298095 (n + 1)

end A298095

/-! ## A298095.P661594314675629995

`A298100(A167614(n+1))%A001611(n)`
-/

namespace A298095.P661594314675629995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298100 (A167614 (n + 1)).toNat) (A001611 n)

end

end A298095.P661594314675629995

namespace A298095

/-- `A298100(A167614(n+1))%A001611(n)` -/
def P661594314675629995.Spec : Prop :=
  ∀ n, P661594314675629995.a n = A298095 (n + 1)

end A298095

/-!
# A298096: Number of nX4 0..1 arrays with every element equal to 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298096, there is no canonical definition to state claims against.
-/

/-! ## A298096.P14612220002764041803

`A298100(∑[n+3]+7)`
-/

namespace A298096.P14612220002764041803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298096.P14612220002764041803

/-! ## A298096.P8050195480632390283

`A298100(A052905(n)+9)%A103235(n)`
-/

namespace A298096.P8050195480632390283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298100 (A052905 n + 9).toNat) (A103235 n)

end

end A298096.P8050195480632390283

/-! ## A298096.P16367347170818751889

`or(∑{digits}[n, val(#+6, 8)], A298100(A141214(n+1)))`
-/

namespace A298096.P16367347170818751889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 6) 8).sum : ℕ) : ℤ) (A298100 (A141214 (n + 1)).toNat)

end

end A298096.P16367347170818751889

/-! ## A298096.P9141890370366558698

`A298100(A141214(n+1))%A162666(n)`
-/

namespace A298096.P9141890370366558698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298100 (A141214 (n + 1)).toNat) (A162666 n)

end

end A298096.P9141890370366558698

/-!
# A298097: Number of nX5 0..1 arrays with every element equal to 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298097, there is no canonical definition to state claims against.
-/

/-! ## A298097.P10193882396952434627

`A298100(A374005(n+1))`
-/

namespace A298097.P10193882396952434627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A374005 (n + 1)).toNat

end

end A298097.P10193882396952434627

/-! ## A298097.P10044892510488588196

`A298100(A167499(n+3))`
-/

namespace A298097.P10044892510488588196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A167499 (n + 3)).toNat

end

end A298097.P10044892510488588196

/-! ## A298097.P17220429185803909206

`A298100(A155212(n)+13)`
-/

namespace A298097.P17220429185803909206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A155212 n + 13).toNat

end

end A298097.P17220429185803909206

/-! ## A298097.P9018290050101139472

`A298100(A056000(n)+15)`
-/

namespace A298097.P9018290050101139472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A056000 n + 15).toNat

end

end A298097.P9018290050101139472

/-! ## A298097.P17813629396296637458

`A298100(eq[7, A066657(n)])`
-/

namespace A298097.P17813629396296637458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298097.P17813629396296637458

/-!
# A298098: Number of nX6 0..1 arrays with every element equal to 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298098, there is no canonical definition to state claims against.
-/

/-! ## A298098.P9919319303426419166

`A298100(∑[n+5]+16)`
-/

namespace A298098.P9919319303426419166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298098.P9919319303426419166

/-! ## A298098.P17372774200649809799

`A298100(A052905(n+3))+A011737(n)`
-/

namespace A298098.P17372774200649809799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A052905 (n + 3)).toNat + A011737 n

end

end A298098.P17372774200649809799

/-! ## A298098.P14826105056853633474

`A298100(A052905(n+3))+A185037(n)`
-/

namespace A298098.P14826105056853633474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A052905 (n + 3)).toNat + A185037 n

end

end A298098.P14826105056853633474

/-!
# A298099: Number of nX7 0..1 arrays with every element equal to 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298099, there is no canonical definition to state claims against.
-/

/-! ## A298099.P15972210200245284074

`A298100(A374008(n+1))`
-/

namespace A298099.P15972210200245284074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A374008 (n + 1)).toNat

end

end A298099.P15972210200245284074

/-! ## A298099.P18119741257201078080

`A298100(A056119(n)+28)`
-/

namespace A298099.P18119741257201078080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A056119 n + 28).toNat

end

end A298099.P18119741257201078080

/-! ## A298099.P8014497046146220564

`A298100(eq[11, A066657(n)])`
-/

namespace A298099.P8014497046146220564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298099.P8014497046146220564

/-! ## A298099.P11018150767393125368

`A298100(A167614(n+5)+4)`
-/

namespace A298099.P11018150767393125368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A167614 (n + 5) + 4).toNat

end

end A298099.P11018150767393125368

/-! ## A298099.P764160962284802890

`A298100(A000124(n+6)+6)`
-/

namespace A298099.P764160962284802890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (A000124 (n + 6) + 6).toNat

end

end A298099.P764160962284802890

