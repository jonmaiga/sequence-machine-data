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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A301600: a(n) = Primorial(n) / Product_{k prime<n} k.

The programs for A301600, there is no canonical definition to state claims against.
-/

/-! ## A301600.P2026837623401126456

`A002110(n)/A066838(A007918(n))`
-/

namespace A301600.P2026837623401126456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A066838 (A007918 n).toNat : ℚ)

end

end A301600.P2026837623401126456

/-! ## A301600.P2727339669855846657

`A002110(n)/A034386(A113638(n))`
-/

namespace A301600.P2727339669855846657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A034386 (A113638 n).toNat : ℚ)

end

end A301600.P2727339669855846657

/-! ## A301600.P7637235292090115153

`A002110(n)/A300951(A004273(n))`
-/

namespace A301600.P7637235292090115153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A300951 (A004273 n).toNat : ℚ)

end

end A301600.P7637235292090115153

/-! ## A301600.P9444141099338565881

`A002110(n)/A300951(A004275(n))`
-/

namespace A301600.P9444141099338565881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A300951 (A004275 n).toNat : ℚ)

end

end A301600.P9444141099338565881

/-! ## A301600.P13953928166391929986

`A002110(n)/A300951(A163985(n))`
-/

namespace A301600.P13953928166391929986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A300951 (A163985 n).toNat : ℚ)

end

end A301600.P13953928166391929986

/-!
# A301601: Numbers k such that k^6 can be written as a sum of 11 positive 6th powers.

The programs for A301601, there is no canonical definition to state claims against.
-/

/-! ## A301601.P1365218882559769768

`lt[A222232(n), A227362(A332286(n))]`
-/

namespace A301601.P1365218882559769768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A332286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A301601.P1365218882559769768

/-!
# A301602: Number of n X n 0..1 arrays with every element equal to 0, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301602, there is no canonical definition to state claims against.
-/

/-! ## A301602.P7732081652450092985

`A301608(∑[4*n]+1)`
-/

namespace A301602.P7732081652450092985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301602.P7732081652450092985

/-! ## A301602.P4920981527521024568

`and(-1, A301608(A001844(n)))`
-/

namespace A301602.P4920981527521024568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A301608 (A001844 n).toNat)

end

end A301602.P4920981527521024568

/-! ## A301602.P16312228137777746704

`A326631(n)+A301608(A001844(n))`
-/

namespace A301602.P16312228137777746704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326631 n + A301608 (A001844 n).toNat

end

end A301602.P16312228137777746704

/-! ## A301602.P7373063521616393447

`lcm(A261494(n), A301608(A001844(n)))`
-/

namespace A301602.P7373063521616393447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A261494 n) (A301608 (A001844 n).toNat)

end

end A301602.P7373063521616393447

/-! ## A301602.P1110189883454082345

`C(A301608(A001844(n)), A014598(n))`
-/

namespace A301602.P1110189883454082345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A301608 (A001844 n).toNat).toNat (A014598 n).toNat

end

end A301602.P1110189883454082345

/-!
# A301603: Number of nX3 0..1 arrays with every element equal to 0, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301603, there is no canonical definition to state claims against.
-/

/-! ## A301603.P6203776601954757724

`A301608(∑[n+2]+4)`
-/

namespace A301603.P6203776601954757724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301603.P6203776601954757724

/-! ## A301603.P12201127309847824034

`A301608(A167614(n+1))+char[24]`
-/

namespace A301603.P12201127309847824034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301603.P12201127309847824034

/-! ## A301603.P869557472941683004

`gcd(A111332(n), A301608(A167614(n+1)))`
-/

namespace A301603.P869557472941683004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111332 n) (A301608 (A167614 (n + 1)).toNat)

end

end A301603.P869557472941683004

/-! ## A301603.P2608768759312515775

`C(A301608(A167614(n+1)), A014598(n))`
-/

namespace A301603.P2608768759312515775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A301608 (A167614 (n + 1)).toNat).toNat (A014598 n).toNat

end

end A301603.P2608768759312515775

/-! ## A301603.P9937527924720320959

`A301608(A167614(n+1))%A000229(n+1)`
-/

namespace A301603.P9937527924720320959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301608 (A167614 (n + 1)).toNat) (A000229 (n + 1))

end

end A301603.P9937527924720320959

/-!
# A301604: Number of nX4 0..1 arrays with every element equal to 0, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301604, there is no canonical definition to state claims against.
-/

/-! ## A301604.P10864714114380006341

`A301608(∑[n+3]+7)`
-/

namespace A301604.P10864714114380006341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A301604.P10864714114380006341

/-! ## A301604.P17432102007836890287

`or(char[1], A301608(A055999(n)+10))`
-/

namespace A301604.P17432102007836890287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A301608 (A055999 n + 10).toNat)

end

end A301604.P17432102007836890287

/-! ## A301604.P2070260012107265069

`A301608(A055999(n)+10)%A000045((n+2)²)`
-/

namespace A301604.P2070260012107265069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301608 (A055999 n + 10).toNat) (A000045 ((n + 2) ^ 2))

end

end A301604.P2070260012107265069

/-! ## A301604.P12796111583826644961

`A301608(A055999(n)+10)+char[27]*A000032(n)`
-/

namespace A301604.P12796111583826644961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A000032 n

end

end A301604.P12796111583826644961

/-! ## A301604.P525038371566661075

`A007318(C(n+2, 2))*A301608(A055999(n)+10)`
-/

namespace A301604.P525038371566661075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A301608 (A055999 n + 10).toNat

end

end A301604.P525038371566661075

/-!
# A301605: Number of nX5 0..1 arrays with every element equal to 0, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301605, there is no canonical definition to state claims against.
-/

/-! ## A301605.P15786909576089168814

`A301608(A374005(n+1))`
-/

namespace A301605.P15786909576089168814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A374005 (n + 1)).toNat

end

end A301605.P15786909576089168814

/-! ## A301605.P5104846588097213634

`A301608(A167499(n+3))`
-/

namespace A301605.P5104846588097213634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A167499 (n + 3)).toNat

end

end A301605.P5104846588097213634

/-! ## A301605.P4141967523626580071

`A301608(A155212(n)+13)`
-/

namespace A301605.P4141967523626580071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A155212 n + 13).toNat

end

end A301605.P4141967523626580071

/-! ## A301605.P647566823698612867

`A301608(A056000(n)+15)`
-/

namespace A301605.P647566823698612867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A056000 n + 15).toNat

end

end A301605.P647566823698612867

/-! ## A301605.P10959157098432947142

`A301608(eq[7, A066657(n)])`
-/

namespace A301605.P10959157098432947142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301605.P10959157098432947142

/-!
# A301606: Number of nX6 0..1 arrays with every element equal to 0, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301606, there is no canonical definition to state claims against.
-/

/-! ## A301606.P9609973548592145312

`A301608(A374007(n+1))`
-/

namespace A301606.P9609973548592145312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A374007 (n + 1)).toNat

end

end A301606.P9609973548592145312

/-! ## A301606.P4998518313271565262

`A301608(A056115(n)+21)`
-/

namespace A301606.P4998518313271565262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A056115 n + 21).toNat

end

end A301606.P4998518313271565262

/-! ## A301606.P17707854840111472566

`A301608(A167499(n+4)+1)`
-/

namespace A301606.P17707854840111472566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A167499 (n + 4) + 1).toNat

end

end A301606.P17707854840111472566

/-! ## A301606.P7858010902972118245

`A301608(A000124(n+5)+5)`
-/

namespace A301606.P7858010902972118245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A000124 (n + 5) + 5).toNat

end

end A301606.P7858010902972118245

/-! ## A301606.P7405842451865147979

`A301608(A000096(n+4)+7)`
-/

namespace A301606.P7405842451865147979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A000096 (n + 4) + 7).toNat

end

end A301606.P7405842451865147979

/-!
# A301607: Number of nX7 0..1 arrays with every element equal to 0, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301607, there is no canonical definition to state claims against.
-/

/-! ## A301607.P1833517557179644731

`A301608(A374008(n+1))`
-/

namespace A301607.P1833517557179644731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A374008 (n + 1)).toNat

end

end A301607.P1833517557179644731

/-! ## A301607.P14494186352117063490

`A301608(A167487(n+5))`
-/

namespace A301607.P14494186352117063490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A167487 (n + 5)).toNat

end

end A301607.P14494186352117063490

/-! ## A301607.P12018289595595416978

`A301608(eq[11, A066657(n)])`
-/

namespace A301607.P12018289595595416978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301607.P12018289595595416978

/-! ## A301607.P12862015740516085706

`A301608(A167499(n+5)+2)`
-/

namespace A301607.P12862015740516085706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A167499 (n + 5) + 2).toNat

end

end A301607.P12862015740516085706

/-! ## A301607.P14341803731738112983

`A301608(A000124(n+6)+6)`
-/

namespace A301607.P14341803731738112983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (A000124 (n + 6) + 6).toNat

end

end A301607.P14341803731738112983

/-!
# A301608: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301608, there is no canonical definition to state claims against.
-/

/-! ## A301608.P13978764848732701094

`A317871(n+1)+A056624(A157209(n))`
-/

namespace A301608.P13978764848732701094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (n + 1) + A056624 (A157209 n).toNat

end

end A301608.P13978764848732701094

/-! ## A301608.P11896639442312935427

`A298187(A008621(n))+A317871(n+1)+A111332(n)!`
-/

namespace A301608.P11896639442312935427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298187 (A008621 n).toNat + (A317871 (n + 1) + (Nat.factorial (A111332 n).toNat : ℤ))

end

end A301608.P11896639442312935427

/-! ## A301608.P6637529814559115573

`A318091(A008621(n))+A318091(n+1)-A111332(n)!`
-/

namespace A301608.P6637529814559115573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A008621 n).toNat + (A318091 (n + 1) - (Nat.factorial (A111332 n).toNat : ℤ))

end

end A301608.P6637529814559115573

/-! ## A301608.P627063449654489687

`A298187(A008621(n))+(A317871(n+1)+1)%A344366(2*n+1)`
-/

namespace A301608.P627063449654489687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298187 (A008621 n).toNat + Int.tmod (A317871 (n + 1) + 1) (A344366 (2 * n + 1))

end

end A301608.P627063449654489687

/-! ## A301608.P6521564097372734741

`A382654(A296974(n+1))`
-/

namespace A301608.P6521564097372734741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382654 (A296974 (n + 1)).toNat

end

end A301608.P6521564097372734741

/-!
# A301609: Number of n X n 0..1 arrays with every element equal to 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301609, there is no canonical definition to state claims against.
-/

/-! ## A301609.P7389082390817470203

`A301615(∑[4*n]+1)`
-/

namespace A301609.P7389082390817470203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301609.P7389082390817470203

/-! ## A301609.P13895935810241801959

`record[A003982(n)*A301615(n+1)]`
-/

namespace A301609.P13895935810241801959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301609.P13895935810241801959

/-! ## A301609.P17354165441645600682

`A343103(n)+A301615(A001844(n))`
-/

namespace A301609.P17354165441645600682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343103 n + A301615 (A001844 n).toNat

end

end A301609.P17354165441645600682

/-! ## A301609.P9751455244288350945

`A057427(n)*A301615(A001844(n))`
-/

namespace A301609.P9751455244288350945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A301615 (A001844 n).toNat

end

end A301609.P9751455244288350945

/-! ## A301609.P11736830530999537862

`lcm(A000196(n), A301615(A001844(n)))`
-/

namespace A301609.P11736830530999537862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000196 n) (A301615 (A001844 n).toNat)

end

end A301609.P11736830530999537862

/-!
# A301610: Number of nX3 0..1 arrays with every element equal to 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301610, there is no canonical definition to state claims against.
-/

/-! ## A301610.P16140816311628087252

`A301615(∑[n+2]+4)`
-/

namespace A301610.P16140816311628087252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301610.P16140816311628087252

/-! ## A301610.P5882401727464590961

`gcd(floor(acot(n)), A301615(A167614(n+1)))`
-/

namespace A301610.P5882401727464590961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A301615 (A167614 (n + 1)).toNat)

end

end A301610.P5882401727464590961

/-! ## A301610.P1640260313821940160

`record[A301615(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A301610.P1640260313821940160
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301610.P1640260313821940160

/-! ## A301610.P4141655383141124703

`A301615(A167614(n+1))+A025469(n)`
-/

namespace A301610.P4141655383141124703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A167614 (n + 1)).toNat + A025469 n

end

end A301610.P4141655383141124703

/-! ## A301610.P4543391429688262232

`A301615(A167614(n+1))+A185238(n)`
-/

namespace A301610.P4543391429688262232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A167614 (n + 1)).toNat + A185238 n

end

end A301610.P4543391429688262232

/-!
# A301611: Number of nX4 0..1 arrays with every element equal to 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301611, there is no canonical definition to state claims against.
-/

/-! ## A301611.P17611937477559565715

`A301615(A374004(n+1))`
-/

namespace A301611.P17611937477559565715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A374004 (n + 1)).toNat

end

end A301611.P17611937477559565715

/-! ## A301611.P13491236696019125912

`A301615(A141214(n)+7)`
-/

namespace A301611.P13491236696019125912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A141214 n + 7).toNat

end

end A301611.P13491236696019125912

/-! ## A301611.P1056504218277307633

`A301615(A052905(n)+9)`
-/

namespace A301611.P1056504218277307633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A052905 n + 9).toNat

end

end A301611.P1056504218277307633

/-! ## A301611.P8856692945932954246

`A301615(A055999(n)+10)`
-/

namespace A301611.P8856692945932954246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A055999 n + 10).toNat

end

end A301611.P8856692945932954246

/-! ## A301611.P1368163247862964690

`A301615(A167614(n+2)+1)`
-/

namespace A301611.P1368163247862964690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A167614 (n + 2) + 1).toNat

end

end A301611.P1368163247862964690

/-!
# A301612: Number of nX5 0..1 arrays with every element equal to 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301612, there is no canonical definition to state claims against.
-/

/-! ## A301612.P6130293250113207663

`A301615(A374005(n+1))`
-/

namespace A301612.P6130293250113207663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A374005 (n + 1)).toNat

end

end A301612.P6130293250113207663

/-! ## A301612.P1870023318941411030

`A301615(A167499(n+3))`
-/

namespace A301612.P1870023318941411030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A167499 (n + 3)).toNat

end

end A301612.P1870023318941411030

/-! ## A301612.P8081773339723890779

`A301615(A155212(n)+13)`
-/

namespace A301612.P8081773339723890779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A155212 n + 13).toNat

end

end A301612.P8081773339723890779

/-! ## A301612.P5731665875142500981

`A301615(Δ[A264443(n)])`
-/

namespace A301612.P5731665875142500981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (f1 (n + 1) - f1 n).toNat

end

end A301612.P5731665875142500981

/-! ## A301612.P60675100514837845

`A301615(eq[4, A193592(n)])`
-/

namespace A301612.P60675100514837845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301612.P60675100514837845

/-!
# A301613: Number of nX6 0..1 arrays with every element equal to 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301613, there is no canonical definition to state claims against.
-/

/-! ## A301613.P1412217059027553350

`A301615(A374007(n+1))`
-/

namespace A301613.P1412217059027553350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A374007 (n + 1)).toNat

end

end A301613.P1412217059027553350

/-! ## A301613.P8211671815337897606

`A301615(A052905(n+3))`
-/

namespace A301613.P8211671815337897606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A052905 (n + 3)).toNat

end

end A301613.P8211671815337897606

/-! ## A301613.P16966873364935623171

`A301615(eq[3, A219347(n)])`
-/

namespace A301613.P16966873364935623171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301613.P16966873364935623171

/-! ## A301613.P9206395443264468221

`A301615(eq[5, A193592(n)])`
-/

namespace A301613.P9206395443264468221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301613.P9206395443264468221

/-! ## A301613.P2787405229653129142

`A301615(eq[8, A258709(n)])`
-/

namespace A301613.P2787405229653129142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301613.P2787405229653129142

/-!
# A301614: Number of nX7 0..1 arrays with every element equal to 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301614, there is no canonical definition to state claims against.
-/

/-! ## A301614.P9185262295744716987

`A301615(A374008(n+1))`
-/

namespace A301614.P9185262295744716987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A374008 (n + 1)).toNat

end

end A301614.P9185262295744716987

/-! ## A301614.P8516820472059643608

`A301615(eq[8, A131818(n+1)])`
-/

namespace A301614.P8516820472059643608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301614.P8516820472059643608

/-! ## A301614.P12512754593483237756

`A301615(A000124(n+7)-(n+1))`
-/

namespace A301614.P12512754593483237756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A301614.P12512754593483237756

/-! ## A301614.P11246896019330211714

`A301615(eq[4, A219347(n)])`
-/

namespace A301614.P11246896019330211714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301614.P11246896019330211714

/-! ## A301614.P17815648769457496852

`A301615(eq[6, A193592(n)])`
-/

namespace A301614.P17815648769457496852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301614.P17815648769457496852

/-!
# A301615: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2 or 3 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301615, there is no canonical definition to state claims against.
-/

/-! ## A301615.P16220751056421166953

`A180771(n+1)-A014707(A022171(n))`
-/

namespace A301615.P16220751056421166953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (n + 1) - A014707 (A022171 n).toNat

end

end A301615.P16220751056421166953

/-! ## A301615.P6999465901795422695

`A180771(n+1)-A025469(A022345(n))`
-/

namespace A301615.P6999465901795422695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (n + 1) - A025469 (A022345 n).toNat

end

end A301615.P6999465901795422695

/-! ## A301615.P1064086672593927603

`A180771(n+1)-A055641(A022112(n))`
-/

namespace A301615.P1064086672593927603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (n + 1) - A055641 (A022112 n).toNat

end

end A301615.P1064086672593927603

/-! ## A301615.P2889759185874192083

`A180771(n+1)-A102683(A000579(n))`
-/

namespace A301615.P2889759185874192083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (n + 1) - A102683 (A000579 n).toNat

end

end A301615.P2889759185874192083

/-! ## A301615.P16896441616618119812

`A180771(n+1)-A007814(A157156(n))`
-/

namespace A301615.P16896441616618119812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (n + 1) - A007814 (A157156 n).toNat

end

end A301615.P16896441616618119812

/-!
# A301616: a(n) = Product_{k=1..n} (k^2+(n-k+1)^2).

The programs for A301616, there is no canonical definition to state claims against.
-/

/-! ## A301616.P1283030682383636418

`A302661(n)²+A302662(n)²`
-/

namespace A301616.P1283030682383636418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302661 n ^ 2 + A302662 n ^ 2

end

end A301616.P1283030682383636418

/-! ## A301616.P13129151579543418398

`A227464(n+1)/∑[A011782(n)]*A227464(n+1)`
-/

namespace A301616.P13129151579543418398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227464 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A227464 (n + 1) : ℚ)

end

end A301616.P13129151579543418398

/-! ## A301616.P16468807620931708958

`A323540(n+1)/((n+1)²*(n+1)²)`
-/

namespace A301616.P16468807620931708958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323540 (n + 1) : ℚ) / ((n + 1) ^ 2 * (n + 1) ^ 2 : ℚ)

end

end A301616.P16468807620931708958

/-! ## A301616.P16419508678789583598

`A227464(n+1)²/A000079(n)`
-/

namespace A301616.P16419508678789583598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227464 (n + 1) ^ 2 : ℚ) / (A000079 n : ℚ)

end

end A301616.P16419508678789583598

/-!
# A301617: Numbers not divisible by 2, 3 or 5 (A007775) with digital root 1.

The programs for A301617, the canonical program `A301617.P1757613208103695544` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301617 has offset 1).

The definition of A301617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301617.P17909739839138666923

`ogf((1+18x+18x^2+36x^3+17x^4)/(1-x-x^4+x^5))`
-/

namespace A301617.P17909739839138666923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 18, 18, 36, 17] [1, -1, 0, 0, -1, 1] n

end

end A301617.P17909739839138666923

namespace A301617

/-- `ogf((1+18x+18x^2+36x^3+17x^4)/(1-x-x^4+x^5))` -/
def P17909739839138666923.Spec : Prop :=
  ∀ n, P17909739839138666923.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P1757613208103695544

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=19, a(2)=37, a(3)=73, a(4)=91`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301617

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P1757613208103695544.Spec : Prop :=
  ∀ n, P1757613208103695544.a n = A301617 (n + 1)

theorem P1757613208103695544.correct : P1757613208103695544.Spec := by
  intro n
  simp only [A301617, Nat.add_sub_cancel]

end A301617

/-! ## A301617.P11124541671346640201

`record[10*(n+1)/gcd(10, n)-n]`
-/

namespace A301617.P11124541671346640201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((n + 1 : ℚ) / (Nat.gcd 10 n : ℚ)) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301617.P11124541671346640201

namespace A301617

/-- `record[10*(n+1)/gcd(10, n)-n]` -/
def P11124541671346640201.Spec : Prop :=
  ∀ n, P11124541671346640201.a n = (A301617 (n + 1) : ℚ)

end A301617

/-! ## A301617.P7087486784457851797

`18*(∑[gcd(1-n, ∑[n])]-1)+1`
-/

namespace A301617.P7087486784457851797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) + 1

end

end A301617.P7087486784457851797

namespace A301617

/-- `18*(∑[gcd(1-n, ∑[n])]-1)+1` -/
def P7087486784457851797.Spec : Prop :=
  ∀ n, P7087486784457851797.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P5239389966543554765

`A301621(n+1)-10`
-/

namespace A301617.P5239389966543554765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1) - 10

end

end A301617.P5239389966543554765

namespace A301617

/-- `A301621(n+1)-10` -/
def P5239389966543554765.Spec : Prop :=
  ∀ n, P5239389966543554765.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P18327218194115302926

`18*comp[A016885(n)]+1`
-/

namespace A301617.P18327218194115302926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A301617.P18327218194115302926

namespace A301617

/-- `18*comp[A016885(n)]+1` -/
def P18327218194115302926.Spec : Prop :=
  ∀ n, (P18327218194115302926.a n : ℤ) = A301617 (n + 1)

end A301617

/-! ## A301617.P8522614867584149729

`18*(A002265(n+1)+n)+1`
-/

namespace A301617.P8522614867584149729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (A002265 (n + 1) + (n : ℤ)) + 1

end

end A301617.P8522614867584149729

namespace A301617

/-- `18*(A002265(n+1)+n)+1` -/
def P8522614867584149729.Spec : Prop :=
  ∀ n, P8522614867584149729.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P4787883188017273452

`A301622(n+1)+A301622(n+2)-A301628(n+2)`
-/

namespace A301617.P4787883188017273452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1) + (A301622 (n + 2) - A301628 (n + 2))

end

end A301617.P4787883188017273452

namespace A301617

/-- `A301622(n+1)+A301622(n+2)-A301628(n+2)` -/
def P4787883188017273452.Spec : Prop :=
  ∀ n, P4787883188017273452.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P3845665099037319027

`A161705(A032769(n+1))`
-/

namespace A301617.P3845665099037319027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A032769 (n + 1)).toNat

end

end A301617.P3845665099037319027

namespace A301617

/-- `A161705(A032769(n+1))` -/
def P3845665099037319027.Spec : Prop :=
  ∀ n, P3845665099037319027.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P9918505241127813001

`A161705(A002265(n+1)+n)`
-/

namespace A301617.P9918505241127813001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A002265 (n + 1) + (n : ℤ)).toNat

end

end A301617.P9918505241127813001

namespace A301617

/-- `A161705(A002265(n+1)+n)` -/
def P9918505241127813001.Spec : Prop :=
  ∀ n, P9918505241127813001.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P8175228860289218702

`A017173(A045572(2*(n+1))-A045572(n+2))`
-/

namespace A301617.P8175228860289218702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A045572 (2 * (n + 1)) - A045572 (n + 2)).toNat

end

end A301617.P8175228860289218702

namespace A301617

/-- `A017173(A045572(2*(n+1))-A045572(n+2))` -/
def P8175228860289218702.Spec : Prop :=
  ∀ n, P8175228860289218702.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P9392041609874774720

`A017185(A047269(n+1)+n)-1`
-/

namespace A301617.P9392041609874774720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (A047269 (n + 1) + (n : ℤ)).toNat - 1

end

end A301617.P9392041609874774720

namespace A301617

/-- `A017185(A047269(n+1)+n)-1` -/
def P9392041609874774720.Spec : Prop :=
  ∀ n, P9392041609874774720.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P2455260215864210456

`A301622(3*n+1)+1-A301622(2*n+1)`
-/

namespace A301617.P2455260215864210456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (3 * n + 1) + (1 - A301622 (2 * n + 1))

end

end A301617.P2455260215864210456

namespace A301617

/-- `A301622(3*n+1)+1-A301622(2*n+1)` -/
def P2455260215864210456.Spec : Prop :=
  ∀ n, P2455260215864210456.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P12753269997061427053

`A301623(3*n+1)+1-A301623(2*n+1)`
-/

namespace A301617.P12753269997061427053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (3 * n + 1) + (1 - A301623 (2 * n + 1))

end

end A301617.P12753269997061427053

namespace A301617

/-- `A301623(3*n+1)+1-A301623(2*n+1)` -/
def P12753269997061427053.Spec : Prop :=
  ∀ n, P12753269997061427053.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P8396938035760898768

`filter[A161705(n), A011558(#)]`
-/

namespace A301617.P8396938035760898768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301617.P8396938035760898768

namespace A301617

/-- `filter[A161705(n), A011558(#)]` -/
def P8396938035760898768.Spec : Prop :=
  ∀ n, P8396938035760898768.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P2181530815671709582

`filter[A017173(n), A162289(#)]`
-/

namespace A301617.P2181530815671709582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301617.P2181530815671709582

namespace A301617

/-- `filter[A017173(n), A162289(#)]` -/
def P2181530815671709582.Spec : Prop :=
  ∀ n, P2181530815671709582.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P8438761477998935532

`filter[A161705(n), A162289(#)]`
-/

namespace A301617.P8438761477998935532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301617.P8438761477998935532

namespace A301617

/-- `filter[A161705(n), A162289(#)]` -/
def P8438761477998935532.Spec : Prop :=
  ∀ n, P8438761477998935532.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P8722220798442219459

`filter[A118510(n+1), A162289(#)]`
-/

namespace A301617.P8722220798442219459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301617.P8722220798442219459

namespace A301617

/-- `filter[A118510(n+1), A162289(#)]` -/
def P8722220798442219459.Spec : Prop :=
  ∀ n, P8722220798442219459.a n = A301617 (n + 1)

end A301617

/-! ## A301617.P3307620031901372025

`filter[A017173(2*n), A011558(#)]`
-/

namespace A301617.P3307620031901372025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301617.P3307620031901372025

namespace A301617

/-- `filter[A017173(2*n), A011558(#)]` -/
def P3307620031901372025.Spec : Prop :=
  ∀ n, P3307620031901372025.a n = A301617 (n + 1)

end A301617

/-!
# A301619: Primes congruent to 65 (mod 192).

The programs for A301619, there is no canonical definition to state claims against.
-/

/-! ## A301619.P13016955264520524431

`∩[A142403(n+1), A142925(n+1)]`
-/

namespace A301619.P13016955264520524431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P13016955264520524431

/-! ## A301619.P13618802953822187600

`∩[A107181(n+1), A142925(n+1)]`
-/

namespace A301619.P13618802953822187600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P13618802953822187600

/-! ## A301619.P18331333440228570734

`p?[xor(33, 8*12*n)]`
-/

namespace A301619.P18331333440228570734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 33 (8 * (12 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A301619.P18331333440228570734

/-! ## A301619.P2941327106626815585

`p?[3*64*n+65]`
-/

namespace A301619.P2941327106626815585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (64 * n) + 65

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A301619.P2941327106626815585

/-! ## A301619.P9558466553458087535

`record[p?[A158071(A038502(n+1))]]`
-/

namespace A301619.P9558466553458087535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (A038502 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301619.P9558466553458087535

/-! ## A301619.P15586755697631603179

`∩[A107181(n+1), A158071(n+1)]`
-/

namespace A301619.P15586755697631603179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P15586755697631603179

/-! ## A301619.P1620876065393942066

`∩[A142403(n+1), A158071(n+1)]`
-/

namespace A301619.P1620876065393942066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P1620876065393942066

/-! ## A301619.P11556208827562480885

`∩[A040117(n+1), A142925(n+1)]`
-/

namespace A301619.P11556208827562480885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P11556208827562480885

/-! ## A301619.P3002757143959761984

`∩[A040117(n+1), A158071(n+1)]`
-/

namespace A301619.P3002757143959761984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P3002757143959761984

/-! ## A301619.P11953336320234180575

`∩[A106949(n+1), A142925(n+1)]`
-/

namespace A301619.P11953336320234180575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P11953336320234180575

/-! ## A301619.P7876797726424772705

`∩[A106949(n+1), A158071(n+1)]`
-/

namespace A301619.P7876797726424772705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P7876797726424772705

/-! ## A301619.P3778336692164863848

`∩[A142925(n+1), A243183(n+1)]`
-/

namespace A301619.P3778336692164863848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P3778336692164863848

/-! ## A301619.P14726868789731282088

`∩[A158071(n+1), A243183(n+1)]`
-/

namespace A301619.P14726868789731282088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P14726868789731282088

/-! ## A301619.P802100967231894211

`∩[A142925(n+1), A290402(n+1)]`
-/

namespace A301619.P802100967231894211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P802100967231894211

/-! ## A301619.P2876157694640692352

`∩[A158071(n+1), A290402(n+1)]`
-/

namespace A301619.P2876157694640692352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P2876157694640692352

/-! ## A301619.P1029470677247371960

`∩[A142925(n+1), A256397(n+1)]`
-/

namespace A301619.P1029470677247371960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P1029470677247371960

/-! ## A301619.P18212875099425312809

`∩[A158071(n+1), A256397(n+1)]`
-/

namespace A301619.P18212875099425312809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P18212875099425312809

/-! ## A301619.P13340363837031315361

`∩[A040117(n+1), A151984(n+1)]`
-/

namespace A301619.P13340363837031315361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P13340363837031315361

/-! ## A301619.P1506765874548354698

`∩[A106949(n+1), A151984(n+1)]`
-/

namespace A301619.P1506765874548354698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P1506765874548354698

/-! ## A301619.P9868141093844191927

`∩[A107181(n+1), A151984(n+1)]`
-/

namespace A301619.P9868141093844191927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301619.P9868141093844191927

/-!
# A301620: a(n) is the total number of top arches with exactly one covering arch for semi-meanders with n top arches.

The programs for A301620, there is no canonical definition to state claims against.
-/

/-! ## A301620.P2603968777373652690

`2*A259702(n+3)`
-/

namespace A301620.P2603968777373652690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259702 (n + 3)

end

end A301620.P2603968777373652690

/-! ## A301620.P2172580945768952522

`A000682(n+3)-2*A000682(n+2)`
-/

namespace A301620.P2172580945768952522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 3) - 2 * A000682 (n + 2)

end

end A301620.P2172580945768952522

/-! ## A301620.P8213420543630950369

`Δ[A000682(n+2)]-A000682(n+2)`
-/

namespace A301620.P8213420543630950369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000682 (n + 2)

end

end A301620.P8213420543630950369

/-! ## A301620.P2714096987178409760

`2*A000560(n+2)%A000682(n+2)`
-/

namespace A301620.P2714096987178409760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A000560 (n + 2)) (A000682 (n + 2))

end

end A301620.P2714096987178409760

/-! ## A301620.P5270257321584995976

`Δ[Δ[A330269(n+2)]-A330269(n+2)]`
-/

namespace A301620.P5270257321584995976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330269 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A330269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301620.P5270257321584995976

/-!
# A301621: Numbers not divisible by 2, 3 or 5 (A007775) with digital root 2.

The programs for A301621, the canonical program `A301621.P5059103771669864762` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301621 has offset 1).

The definition of A301621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301621.P15583291845643024835

`ogf((11+18x+18x^2+36x^3+7x^4)/(1-x-x^4+x^5))`
-/

namespace A301621.P15583291845643024835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 18, 18, 36, 7] [1, -1, 0, 0, -1, 1] n

end

end A301621.P15583291845643024835

namespace A301621

/-- `ogf((11+18x+18x^2+36x^3+7x^4)/(1-x-x^4+x^5))` -/
def P15583291845643024835.Spec : Prop :=
  ∀ n, P15583291845643024835.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P5059103771669864762

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=11, a(1)=29, a(2)=47, a(3)=83, a(4)=101`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301621

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P5059103771669864762.Spec : Prop :=
  ∀ n, P5059103771669864762.a n = A301621 (n + 1)

theorem P5059103771669864762.correct : P5059103771669864762.Spec := by
  intro n
  simp only [A301621, Nat.add_sub_cancel]

end A301621

/-! ## A301621.P15002471206621432226

`record[10*(n+1)/gcd(10, n)-n]+10`
-/

namespace A301621.P15002471206621432226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((n + 1 : ℚ) / (Nat.gcd 10 n : ℚ)) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 10

end

end A301621.P15002471206621432226

namespace A301621

/-- `record[10*(n+1)/gcd(10, n)-n]+10` -/
def P15002471206621432226.Spec : Prop :=
  ∀ n, P15002471206621432226.a n = (A301621 (n + 1) : ℚ)

end A301621

/-! ## A301621.P144456409970306311

`A301617(n+1)+10`
-/

namespace A301621.P144456409970306311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1) + 10

end

end A301621.P144456409970306311

namespace A301621

/-- `A301617(n+1)+10` -/
def P144456409970306311.Spec : Prop :=
  ∀ n, P144456409970306311.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P1471768737152909304

`A301623(n+1)+A301623(n+2)-A295869(n+2)`
-/

namespace A301621.P1471768737152909304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1) + (A301623 (n + 2) - A295869 (n + 2))

end

end A301621.P1471768737152909304

namespace A301621

/-- `A301623(n+1)+A301623(n+2)-A295869(n+2)` -/
def P1471768737152909304.Spec : Prop :=
  ∀ n, P1471768737152909304.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P8703287338317233440

`∩[2*n+1, 5*(2*n+1)-dr(n+3)]`
-/

namespace A301621.P8703287338317233440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (2 * n + 1) : ℤ) - (SequenceMachineLib.digitalRoot (n + 3 : ℤ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301621.P8703287338317233440

namespace A301621

/-- `∩[2*n+1, 5*(2*n+1)-dr(n+3)]` -/
def P8703287338317233440.Spec : Prop :=
  ∀ n, (P8703287338317233440.a n : ℤ) = A301621 (n + 1)

end A301621

/-! ## A301621.P1307859147204548047

`A017185(or(1, A047218(n+1)))`
-/

namespace A301621.P1307859147204548047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (Int.lor 1 (A047218 (n + 1))).toNat

end

end A301621.P1307859147204548047

namespace A301621

/-- `A017185(or(1, A047218(n+1)))` -/
def P1307859147204548047.Spec : Prop :=
  ∀ n, P1307859147204548047.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P11182567606970118205

`A017185(A047269(n+1)+1+n)`
-/

namespace A301621.P11182567606970118205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (A047269 (n + 1) + 1 + (n : ℤ)).toNat

end

end A301621.P11182567606970118205

namespace A301621

/-- `A017185(A047269(n+1)+1+n)` -/
def P11182567606970118205.Spec : Prop :=
  ∀ n, P11182567606970118205.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P4346320594252287226

`filter[A017185(n), A162289(#)]`
-/

namespace A301621.P4346320594252287226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301621.P4346320594252287226

namespace A301621

/-- `filter[A017185(n), A162289(#)]` -/
def P4346320594252287226.Spec : Prop :=
  ∀ n, P4346320594252287226.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P8907595201156429488

`filter[A017185(2*n+1), A011558(#)]`
-/

namespace A301621.P8907595201156429488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301621.P8907595201156429488

namespace A301621

/-- `filter[A017185(2*n+1), A011558(#)]` -/
def P8907595201156429488.Spec : Prop :=
  ∀ n, P8907595201156429488.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P12624770674548047652

`filter[A138893(2*n+1), A011558(#)]`
-/

namespace A301621.P12624770674548047652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138893 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301621.P12624770674548047652

namespace A301621

/-- `filter[A138893(2*n+1), A011558(#)]` -/
def P12624770674548047652.Spec : Prop :=
  ∀ n, P12624770674548047652.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P6803079427948214528

`filter[A138893(2*n+1), A162289(#)]`
-/

namespace A301621.P6803079427948214528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138893 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301621.P6803079427948214528

namespace A301621

/-- `filter[A138893(2*n+1), A162289(#)]` -/
def P6803079427948214528.Spec : Prop :=
  ∀ n, P6803079427948214528.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P15274364003514238050

`filter[A373730(2*n+1), A011558(#)]`
-/

namespace A301621.P15274364003514238050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373730 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301621.P15274364003514238050

namespace A301621

/-- `filter[A373730(2*n+1), A011558(#)]` -/
def P15274364003514238050.Spec : Prop :=
  ∀ n, P15274364003514238050.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P2669911240496130355

`filter[A373730(2*n+1), A162289(#)]`
-/

namespace A301621.P2669911240496130355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373730 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301621.P2669911240496130355

namespace A301621

/-- `filter[A373730(2*n+1), A162289(#)]` -/
def P2669911240496130355.Spec : Prop :=
  ∀ n, P2669911240496130355.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P17350357856898032840

`A168413(or(2, A002081(n)))`
-/

namespace A301621.P17350357856898032840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (Int.lor 2 (A002081 n)).toNat

end

end A301621.P17350357856898032840

namespace A301621

/-- `A168413(or(2, A002081(n)))` -/
def P17350357856898032840.Spec : Prop :=
  ∀ n, P17350357856898032840.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P6710204274887507181

`A168413(or(2, A016861(n)))`
-/

namespace A301621.P6710204274887507181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (Int.lor 2 (A016861 n)).toNat

end

end A301621.P6710204274887507181

namespace A301621

/-- `A168413(or(2, A016861(n)))` -/
def P6710204274887507181.Spec : Prop :=
  ∀ n, P6710204274887507181.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P13164909266937150819

`A168413(or(2, A146951(n)))`
-/

namespace A301621.P13164909266937150819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (Int.lor 2 (A146951 n)).toNat

end

end A301621.P13164909266937150819

namespace A301621

/-- `A168413(or(2, A146951(n)))` -/
def P13164909266937150819.Spec : Prop :=
  ∀ n, P13164909266937150819.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P11504008914901093813

`filter[A193910(n+1), A162289(#)]`
-/

namespace A301621.P11504008914901093813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301621.P11504008914901093813

namespace A301621

/-- `filter[A193910(n+1), A162289(#)]` -/
def P11504008914901093813.Spec : Prop :=
  ∀ n, P11504008914901093813.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P6680198392664035882

`filter[A168413(2*n+1), A162289(#)]`
-/

namespace A301621.P6680198392664035882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301621.P6680198392664035882

namespace A301621

/-- `filter[A168413(2*n+1), A162289(#)]` -/
def P6680198392664035882.Spec : Prop :=
  ∀ n, P6680198392664035882.a n = A301621 (n + 1)

end A301621

/-! ## A301621.P1335697918566817586

`filter[A063289(2*n+3), A162289(#)]`
-/

namespace A301621.P1335697918566817586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301621.P1335697918566817586

namespace A301621

/-- `filter[A063289(2*n+3), A162289(#)]` -/
def P1335697918566817586.Spec : Prop :=
  ∀ n, P1335697918566817586.a n = A301621 (n + 1)

end A301621

/-!
# A301622: Numbers not divisible by 2, 3 or 5 (A007775) with digital root 4.

The programs for A301622, the canonical program `A301622.P651356834085764473` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301622 has offset 1).

The definition of A301622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301622.P16711926223819093722

`ogf((13+18x+18x^2+18x^3+23x^4)/(1-x-x^4+x^5))`
-/

namespace A301622.P16711926223819093722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, 18, 18, 18, 23] [1, -1, 0, 0, -1, 1] n

end

end A301622.P16711926223819093722

namespace A301622

/-- `ogf((13+18x+18x^2+18x^3+23x^4)/(1-x-x^4+x^5))` -/
def P16711926223819093722.Spec : Prop :=
  ∀ n, P16711926223819093722.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P651356834085764473

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=13, a(1)=31, a(2)=49, a(3)=67, a(4)=103`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301622

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P651356834085764473.Spec : Prop :=
  ∀ n, P651356834085764473.a n = A301622 (n + 1)

theorem P651356834085764473.correct : P651356834085764473.Spec := by
  intro n
  simp only [A301622, Nat.add_sub_cancel]

end A301622

/-! ## A301622.P17628069786018932368

`18*comp[5*n]-5`
-/

namespace A301622.P17628069786018932368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 5

end

end A301622.P17628069786018932368

namespace A301622

/-- `18*comp[5*n]-5` -/
def P17628069786018932368.Spec : Prop :=
  ∀ n, P17628069786018932368.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P16248768877489939637

`∩[2*n+1, 5*(2*n+1)-dr(n+1)]`
-/

namespace A301622.P16248768877489939637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (2 * n + 1) : ℤ) - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301622.P16248768877489939637

namespace A301622

/-- `∩[2*n+1, 5*(2*n+1)-dr(n+1)]` -/
def P16248768877489939637.Spec : Prop :=
  ∀ n, (P16248768877489939637.a n : ℤ) = A301622 (n + 1)

end A301622

/-! ## A301622.P9782124945069527587

`A063121(A217562(n+1))`
-/

namespace A301622.P9782124945069527587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063121 (A217562 (n + 1)).toNat

end

end A301622.P9782124945069527587

namespace A301622

/-- `A063121(A217562(n+1))` -/
def P9782124945069527587.Spec : Prop :=
  ∀ n, P9782124945069527587.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P17494494828204496095

`A143988(A047247(n+1)+n)`
-/

namespace A301622.P17494494828204496095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (A047247 (n + 1) + (n : ℤ)).toNat

end

end A301622.P17494494828204496095

namespace A301622

/-- `A143988(A047247(n+1)+n)` -/
def P17494494828204496095.Spec : Prop :=
  ∀ n, P17494494828204496095.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P548132527324222773

`A143988(2*(A008621(n)+n))`
-/

namespace A301622.P548132527324222773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * (A008621 n + (n : ℤ))).toNat

end

end A301622.P548132527324222773

namespace A301622

/-- `A143988(2*(A008621(n)+n))` -/
def P548132527324222773.Spec : Prop :=
  ∀ n, P548132527324222773.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P1964319161547245320

`A143988(A047227(n+1)+1+n)`
-/

namespace A301622.P1964319161547245320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (A047227 (n + 1) + 1 + (n : ℤ)).toNat

end

end A301622.P1964319161547245320

namespace A301622

/-- `A143988(A047227(n+1)+1+n)` -/
def P1964319161547245320.Spec : Prop :=
  ∀ n, P1964319161547245320.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P6449364230468483937

`filter[A017209(n), A162289(#)]`
-/

namespace A301622.P6449364230468483937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301622.P6449364230468483937

namespace A301622

/-- `filter[A017209(n), A162289(#)]` -/
def P6449364230468483937.Spec : Prop :=
  ∀ n, P6449364230468483937.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P14630067530653177526

`filter[A063121(n+1), A162289(#)]`
-/

namespace A301622.P14630067530653177526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301622.P14630067530653177526

namespace A301622

/-- `filter[A063121(n+1), A162289(#)]` -/
def P14630067530653177526.Spec : Prop :=
  ∀ n, P14630067530653177526.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P17425955225881384134

`filter[A063305(n+3), A011558(#)]`
-/

namespace A301622.P17425955225881384134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301622.P17425955225881384134

namespace A301622

/-- `filter[A063305(n+3), A011558(#)]` -/
def P17425955225881384134.Spec : Prop :=
  ∀ n, P17425955225881384134.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P11130224858770157425

`filter[A063305(n+3), A162289(#)]`
-/

namespace A301622.P11130224858770157425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301622.P11130224858770157425

namespace A301622

/-- `filter[A063305(n+3), A162289(#)]` -/
def P11130224858770157425.Spec : Prop :=
  ∀ n, P11130224858770157425.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P2737544136465941050

`filter[A017209(2*n+1), A011558(#)]`
-/

namespace A301622.P2737544136465941050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301622.P2737544136465941050

namespace A301622

/-- `filter[A017209(2*n+1), A011558(#)]` -/
def P2737544136465941050.Spec : Prop :=
  ∀ n, P2737544136465941050.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P3880942893647177705

`filter[A063121(2*(n+1)), A011558(#)]`
-/

namespace A301622.P3880942893647177705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063121 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301622.P3880942893647177705

namespace A301622

/-- `filter[A063121(2*(n+1)), A011558(#)]` -/
def P3880942893647177705.Spec : Prop :=
  ∀ n, P3880942893647177705.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P15882116098992491388

`filter[A143988(2*(n+1)), A011558(#)]`
-/

namespace A301622.P15882116098992491388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301622.P15882116098992491388

namespace A301622

/-- `filter[A143988(2*(n+1)), A011558(#)]` -/
def P15882116098992491388.Spec : Prop :=
  ∀ n, P15882116098992491388.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P11695986691763086939

`filter[A143988(2*(n+1)), A162289(#)]`
-/

namespace A301622.P11695986691763086939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301622.P11695986691763086939

namespace A301622

/-- `filter[A143988(2*(n+1)), A162289(#)]` -/
def P11695986691763086939.Spec : Prop :=
  ∀ n, P11695986691763086939.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P17585437897050910253

`A016921(3*floor(5*n/4)+2)`
-/

namespace A301622.P17585437897050910253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (3 * ⌊5 * ((n : ℚ) / 4)⌋ + 2).toNat

end

end A301622.P17585437897050910253

namespace A301622

/-- `A016921(3*floor(5*n/4)+2)` -/
def P17585437897050910253.Spec : Prop :=
  ∀ n, P17585437897050910253.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P8490352245022505623

`filter[A056991(2*(n+1)), A162289(#)]`
-/

namespace A301622.P8490352245022505623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301622.P8490352245022505623

namespace A301622

/-- `filter[A056991(2*(n+1)), A162289(#)]` -/
def P8490352245022505623.Spec : Prop :=
  ∀ n, P8490352245022505623.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P1030549500516750788

`A263941(or(3, 5*n))`
-/

namespace A301622.P1030549500516750788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263941 (Nat.lor 3 (5 * n))

end

end A301622.P1030549500516750788

namespace A301622

/-- `A263941(or(3, 5*n))` -/
def P1030549500516750788.Spec : Prop :=
  ∀ n, P1030549500516750788.a n = A301622 (n + 1)

end A301622

/-! ## A301622.P16246236922559595009

`A143988(2*A008621(5*n))`
-/

namespace A301622.P16246236922559595009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * A008621 (5 * n)).toNat

end

end A301622.P16246236922559595009

namespace A301622

/-- `A143988(2*A008621(5*n))` -/
def P16246236922559595009.Spec : Prop :=
  ∀ n, P16246236922559595009.a n = A301622 (n + 1)

end A301622

/-!
# A301623: Numbers not divisible by 2, 3 or 5 (A007775) with digital root 5.

The programs for A301623, the canonical program `A301623.P10441684539218266097` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301623 has offset 1).

The definition of A301623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301623.P9983126462960409458

`ogf((23+18x+18x^2+18x^3+13x^4)/(1-x-x^4+x^5))`
-/

namespace A301623.P9983126462960409458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [23, 18, 18, 18, 13] [1, -1, 0, 0, -1, 1] n

end

end A301623.P9983126462960409458

namespace A301623

/-- `ogf((23+18x+18x^2+18x^3+13x^4)/(1-x-x^4+x^5))` -/
def P9983126462960409458.Spec : Prop :=
  ∀ n, P9983126462960409458.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P10441684539218266097

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=23, a(1)=41, a(2)=59, a(3)=77, a(4)=113`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301623

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P10441684539218266097.Spec : Prop :=
  ∀ n, P10441684539218266097.a n = A301623 (n + 1)

theorem P10441684539218266097.correct : P10441684539218266097.Spec := by
  intro n
  simp only [A301623, Nat.add_sub_cancel]

end A301623

/-! ## A301623.P14749656280441576180

`3*6*comp[5*n]+5`
-/

namespace A301623.P14749656280441576180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (6 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 5

end

end A301623.P14749656280441576180

namespace A301623

/-- `3*6*comp[5*n]+5` -/
def P14749656280441576180.Spec : Prop :=
  ∀ n, (P14749656280441576180.a n : ℤ) = A301623 (n + 1)

end A301623

/-! ## A301623.P6474930127081381737

`A242215(A047201(n+1))`
-/

namespace A301623.P6474930127081381737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (A047201 (n + 1)).toNat

end

end A301623.P6474930127081381737

namespace A301623

/-- `A242215(A047201(n+1))` -/
def P6474930127081381737.Spec : Prop :=
  ∀ n, P6474930127081381737.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P8433010967370152431

`A017221(2*comp[5*n])`
-/

namespace A301623.P8433010967370152431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A301623.P8433010967370152431

namespace A301623

/-- `A017221(2*comp[5*n])` -/
def P8433010967370152431.Spec : Prop :=
  ∀ n, P8433010967370152431.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P5911016083208485592

`A143988(A217562(n+1)+1)`
-/

namespace A301623.P5911016083208485592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (A217562 (n + 1) + 1).toNat

end

end A301623.P5911016083208485592

namespace A301623

/-- `A143988(A217562(n+1)+1)` -/
def P5911016083208485592.Spec : Prop :=
  ∀ n, P5911016083208485592.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P16746183891429830628

`A143988(A047247(n+1)+1+n)`
-/

namespace A301623.P16746183891429830628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (A047247 (n + 1) + 1 + (n : ℤ)).toNat

end

end A301623.P16746183891429830628

namespace A301623

/-- `A143988(A047247(n+1)+1+n)` -/
def P16746183891429830628.Spec : Prop :=
  ∀ n, P16746183891429830628.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P5580933349971760621

`A143988(A047227(n+1)+2+n)`
-/

namespace A301623.P5580933349971760621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (A047227 (n + 1) + 2 + (n : ℤ)).toNat

end

end A301623.P5580933349971760621

namespace A301623

/-- `A143988(A047227(n+1)+2+n)` -/
def P5580933349971760621.Spec : Prop :=
  ∀ n, P5580933349971760621.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P14309295274728436034

`filter[A017221(n), A162289(#)]`
-/

namespace A301623.P14309295274728436034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301623.P14309295274728436034

namespace A301623

/-- `filter[A017221(n), A162289(#)]` -/
def P14309295274728436034.Spec : Prop :=
  ∀ n, P14309295274728436034.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P5775837452478511429

`filter[A242215(n), A011558(#)]`
-/

namespace A301623.P5775837452478511429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301623.P5775837452478511429

namespace A301623

/-- `filter[A242215(n), A011558(#)]` -/
def P5775837452478511429.Spec : Prop :=
  ∀ n, P5775837452478511429.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P17124759641585733104

`filter[A242215(n), A162289(#)]`
-/

namespace A301623.P17124759641585733104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301623.P17124759641585733104

namespace A301623

/-- `filter[A242215(n), A162289(#)]` -/
def P17124759641585733104.Spec : Prop :=
  ∀ n, P17124759641585733104.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P6341957973039389016

`filter[A225539(n+1), A162289(#)]`
-/

namespace A301623.P6341957973039389016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301623.P6341957973039389016

namespace A301623

/-- `filter[A225539(n+1), A162289(#)]` -/
def P6341957973039389016.Spec : Prop :=
  ∀ n, P6341957973039389016.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P11847435459827606174

`filter[A017221(2*n), A011558(#)]`
-/

namespace A301623.P11847435459827606174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301623.P11847435459827606174

namespace A301623

/-- `filter[A017221(2*n), A011558(#)]` -/
def P11847435459827606174.Spec : Prop :=
  ∀ n, P11847435459827606174.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P8679038821020779752

`filter[A260658(2*n), A011558(#)]`
-/

namespace A301623.P8679038821020779752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260658 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301623.P8679038821020779752

namespace A301623

/-- `filter[A260658(2*n), A011558(#)]` -/
def P8679038821020779752.Spec : Prop :=
  ∀ n, P8679038821020779752.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P7453152915399624902

`filter[A260658(2*n), A162289(#)]`
-/

namespace A301623.P7453152915399624902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260658 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301623.P7453152915399624902

namespace A301623

/-- `filter[A260658(2*n), A162289(#)]` -/
def P7453152915399624902.Spec : Prop :=
  ∀ n, P7453152915399624902.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P171325217709397537

`filter[A143988(2*n+1), A011558(#)]`
-/

namespace A301623.P171325217709397537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301623.P171325217709397537

namespace A301623

/-- `filter[A143988(2*n+1), A011558(#)]` -/
def P171325217709397537.Spec : Prop :=
  ∀ n, P171325217709397537.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P1614548428375405561

`filter[A225539(2*n+1), A011558(#)]`
-/

namespace A301623.P1614548428375405561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301623.P1614548428375405561

namespace A301623

/-- `filter[A225539(2*n+1), A011558(#)]` -/
def P1614548428375405561.Spec : Prop :=
  ∀ n, P1614548428375405561.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P1172570398448689744

`filter[A143988(2*n+1), A162289(#)]`
-/

namespace A301623.P1172570398448689744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301623.P1172570398448689744

namespace A301623

/-- `filter[A143988(2*n+1), A162289(#)]` -/
def P1172570398448689744.Spec : Prop :=
  ∀ n, P1172570398448689744.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P8806418950282099931

`A016969(3*(n+floor((n+4)/4)))`
-/

namespace A301623.P8806418950282099931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (3 * ((n : ℤ) + ⌊(n + 4 : ℚ) / 4⌋)).toNat

end

end A301623.P8806418950282099931

namespace A301623

/-- `A016969(3*(n+floor((n+4)/4)))` -/
def P8806418950282099931.Spec : Prop :=
  ∀ n, P8806418950282099931.a n = A301623 (n + 1)

end A301623

/-! ## A301623.P15565372787753572319

`filter[A016969(3*n), A011558(#)]`
-/

namespace A301623.P15565372787753572319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301623.P15565372787753572319

namespace A301623

/-- `filter[A016969(3*n), A011558(#)]` -/
def P15565372787753572319.Spec : Prop :=
  ∀ n, P15565372787753572319.a n = A301623 (n + 1)

end A301623

/-!
# A301625: G.f. A(x) satisfies: A(x) = Product_{k>=1} ((1 + x^k*A(x)^k)/(1 - x^k*A(x)^k))^k.

The programs for A301625, there is no canonical definition to state claims against.
-/

/-! ## A301625.P13037588800659764

`∑[A080036(4*A056986(n+1))]`
-/

namespace A301625.P13037588800659764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (4 * A056986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301625.P13037588800659764

/-! ## A301625.P13323143843951358645

`A002264(A316766(2*n+3)+1)`
-/

namespace A301625.P13323143843951358645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A316766 (2 * n + 3) + 1).toNat

end

end A301625.P13323143843951358645

/-!
# A301627: G.f. A(x) satisfies: A(x) = 1/(1 - x*A(x)/(1 - x^2*A(x)^2/(1 - x^3*A(x)^3/(1 - x^4*A(x)^4/(1 - ...))))), a continued fraction.

The programs for A301627, there is no canonical definition to state claims against.
-/

/-! ## A301627.P5397442645257579835

`A027925(round((4-6/(n+1))*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A301627.P5397442645257579835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A027925 (SequenceMachineLib.roundAway ((4 - 6 / (n + 1 : ℚ)) * (a (n - 1) : ℚ))).toNat

end

end A301627.P5397442645257579835

/-! ## A301627.P12868882369353718378

`A050924(A304976(n))+A049124(n)`
-/

namespace A301627.P12868882369353718378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050924 (A304976 n).toNat + A049124 n

end

end A301627.P12868882369353718378

/-! ## A301627.P12385063827474471844

`A325182(A324418(n+1))+A049124(n)`
-/

namespace A301627.P12385063827474471844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325182 (A324418 (n + 1)).toNat + A049124 n

end

end A301627.P12385063827474471844

/-!
# A301628: Numbers not divisible by 2, 3 or 5 (A007775) with digital root 7.

The programs for A301628, the canonical program `A301628.P8909278897397288311` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301628 has offset 1).

The definition of A301628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301628.P11262350439333533769

`ogf((7+36x+18x^2+18x^3+11x^4)/(1-x-x^4+x^5))`
-/

namespace A301628.P11262350439333533769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 36, 18, 18, 11] [1, -1, 0, 0, -1, 1] n

end

end A301628.P11262350439333533769

namespace A301628

/-- `ogf((7+36x+18x^2+18x^3+11x^4)/(1-x-x^4+x^5))` -/
def P11262350439333533769.Spec : Prop :=
  ∀ n, P11262350439333533769.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P8909278897397288311

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=7, a(1)=43, a(2)=61, a(3)=79, a(4)=97`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301628

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P8909278897397288311.Spec : Prop :=
  ∀ n, P8909278897397288311.a n = A301628 (n + 1)

theorem P8909278897397288311.correct : P8909278897397288311.Spec := by
  intro n
  simp only [A301628, Nat.add_sub_cancel]

end A301628

/-! ## A301628.P14960023287682713939

`9*2*comp[5*n+1]+7`
-/

namespace A301628.P14960023287682713939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 7

end

end A301628.P14960023287682713939

namespace A301628

/-- `9*2*comp[5*n+1]+7` -/
def P14960023287682713939.Spec : Prop :=
  ∀ n, (P14960023287682713939.a n : ℤ) = A301628 (n + 1)

end A301628

/-! ## A301628.P16829590623152215665

`filter[A017245(n), (#^4)%10]`
-/

namespace A301628.P16829590623152215665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j ^ 4) 10 = 1) n)

end

end A301628.P16829590623152215665

namespace A301628

/-- `filter[A017245(n), (#^4)%10]` -/
def P16829590623152215665.Spec : Prop :=
  ∀ n, P16829590623152215665.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P6746568018054641382

`filter[A017245(n), A162289(#)]`
-/

namespace A301628.P6746568018054641382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301628.P6746568018054641382

namespace A301628

/-- `filter[A017245(n), A162289(#)]` -/
def P6746568018054641382.Spec : Prop :=
  ∀ n, P6746568018054641382.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P10657654272695877380

`filter[A017245(2*n), A011558(#)]`
-/

namespace A301628.P10657654272695877380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301628.P10657654272695877380

namespace A301628

/-- `filter[A017245(2*n), A011558(#)]` -/
def P10657654272695877380.Spec : Prop :=
  ∀ n, P10657654272695877380.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P16139944773757225384

`filter[A309231(2*n+1), A011558(#)]`
-/

namespace A301628.P16139944773757225384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309231 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301628.P16139944773757225384

namespace A301628

/-- `filter[A309231(2*n+1), A011558(#)]` -/
def P16139944773757225384.Spec : Prop :=
  ∀ n, P16139944773757225384.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P15279635303782687264

`filter[A326664(2*n+1), A011558(#)]`
-/

namespace A301628.P15279635303782687264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326664 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A301628.P15279635303782687264

namespace A301628

/-- `filter[A326664(2*n+1), A011558(#)]` -/
def P15279635303782687264.Spec : Prop :=
  ∀ n, P15279635303782687264.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P279070895948835963

`filter[A309231(2*n+1), A162289(#)]`
-/

namespace A301628.P279070895948835963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309231 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301628.P279070895948835963

namespace A301628

/-- `filter[A309231(2*n+1), A162289(#)]` -/
def P279070895948835963.Spec : Prop :=
  ∀ n, P279070895948835963.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P10977213308887270204

`filter[A326664(2*n+1), A162289(#)]`
-/

namespace A301628.P10977213308887270204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326664 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301628.P10977213308887270204

namespace A301628

/-- `filter[A326664(2*n+1), A162289(#)]` -/
def P10977213308887270204.Spec : Prop :=
  ∀ n, P10977213308887270204.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P6284918343788300119

`A016921(3*comp[5*n+1]+1)`
-/

namespace A301628.P6284918343788300119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A301628.P6284918343788300119

namespace A301628

/-- `A016921(3*comp[5*n+1]+1)` -/
def P6284918343788300119.Spec : Prop :=
  ∀ n, P6284918343788300119.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P7916494969156135180

`filter[A125758(2*(n+1)), A162289(#)]`
-/

namespace A301628.P7916494969156135180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301628.P7916494969156135180

namespace A301628

/-- `filter[A125758(2*(n+1)), A162289(#)]` -/
def P7916494969156135180.Spec : Prop :=
  ∀ n, P7916494969156135180.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P1502335417037396399

`filter[A168411(2*n+1), A162289(#)]`
-/

namespace A301628.P1502335417037396399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168411 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301628.P1502335417037396399

namespace A301628

/-- `filter[A168411(2*n+1), A162289(#)]` -/
def P1502335417037396399.Spec : Prop :=
  ∀ n, P1502335417037396399.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P2016667265406711505

`filter[A301451(2*(n+1)), A162289(#)]`
-/

namespace A301628.P2016667265406711505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A301628.P2016667265406711505

namespace A301628

/-- `filter[A301451(2*(n+1)), A162289(#)]` -/
def P2016667265406711505.Spec : Prop :=
  ∀ n, P2016667265406711505.a n = A301628 (n + 1)

end A301628

/-! ## A301628.P12528439711082993783

`∩[A017245(n), A070884(n)]`
-/

namespace A301628.P12528439711082993783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301628.P12528439711082993783

namespace A301628

/-- `∩[A017245(n), A070884(n)]` -/
def P12528439711082993783.Spec : Prop :=
  ∀ n, (P12528439711082993783.a n : ℤ) = A301628 (n + 1)

end A301628

/-! ## A301628.P16771798029706035867

`∩[A017221(n)+2, A070884(n)]`
-/

namespace A301628.P16771798029706035867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301628.P16771798029706035867

namespace A301628

/-- `∩[A017221(n)+2, A070884(n)]` -/
def P16771798029706035867.Spec : Prop :=
  ∀ n, (P16771798029706035867.a n : ℤ) = A301628 (n + 1)

end A301628

/-! ## A301628.P16966502779638507226

`∩[A017257(n)-1, A070884(n)]`
-/

namespace A301628.P16966502779638507226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301628.P16966502779638507226

namespace A301628

/-- `∩[A017257(n)-1, A070884(n)]` -/
def P16966502779638507226.Spec : Prop :=
  ∀ n, (P16966502779638507226.a n : ℤ) = A301628 (n + 1)

end A301628

/-! ## A301628.P431278960317888354

`∩[A070884(n), A242215(n)+2]`
-/

namespace A301628.P431278960317888354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301628.P431278960317888354

namespace A301628

/-- `∩[A070884(n), A242215(n)+2]` -/
def P431278960317888354.Spec : Prop :=
  ∀ n, (P431278960317888354.a n : ℤ) = A301628 (n + 1)

end A301628

/-! ## A301628.P1710069147589690488

`∩[A193910(n+1)+1, A070884(n)]`
-/

namespace A301628.P1710069147589690488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301628.P1710069147589690488

namespace A301628

/-- `∩[A193910(n+1)+1, A070884(n)]` -/
def P1710069147589690488.Spec : Prop :=
  ∀ n, (P1710069147589690488.a n : ℤ) = A301628 (n + 1)

end A301628

/-! ## A301628.P7357043443573679204

`∩[A225539(n+1)+2, A070884(n)]`
-/

namespace A301628.P7357043443573679204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301628.P7357043443573679204

namespace A301628

/-- `∩[A225539(n+1)+2, A070884(n)]` -/
def P7357043443573679204.Spec : Prop :=
  ∀ n, (P7357043443573679204.a n : ℤ) = A301628 (n + 1)

end A301628

/-!
# A301630: a(n) = distance of n-th prime to nearest prime power p^k, k=0 and k >= 2 (A025475).

The programs for A301630, there is no canonical definition to state claims against.
-/

/-! ## A301630.P9475697753888550888

`A061670(A000040(n+1))`
-/

namespace A301630.P9475697753888550888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (A000040 (n + 1)).toNat

end

end A301630.P9475697753888550888

/-! ## A301630.P15914880186352494152

`A061670(A008578(n+2))`
-/

namespace A301630.P15914880186352494152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (A008578 (n + 2)).toNat

end

end A301630.P15914880186352494152

/-! ## A301630.P10453673455115356976

`A061670(A182986(n+2))`
-/

namespace A301630.P10453673455115356976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (A182986 (n + 2)).toNat

end

end A301630.P10453673455115356976

/-! ## A301630.P18409794613114489983

`A061670(eq[1, A003415(n)])`
-/

namespace A301630.P18409794613114489983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301630.P18409794613114489983

/-! ## A301630.P8155956715783011854

`A061670(eq[1, A032741(n)])`
-/

namespace A301630.P8155956715783011854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301630.P8155956715783011854

/-! ## A301630.P7214693163042911527

`A061670(record[A006530(n+2)])`
-/

namespace A301630.P7214693163042911527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A301630.P7214693163042911527

/-! ## A301630.P4963178578810487680

`A061670(record[A014963(n+2)])`
-/

namespace A301630.P4963178578810487680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A301630.P4963178578810487680

/-! ## A301630.P17996625937401371199

`A061670(record[A020639(n+2)])`
-/

namespace A301630.P17996625937401371199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A301630.P17996625937401371199

/-! ## A301630.P6414181928723838651

`A061670(A338224(A246655(n+1)))`
-/

namespace A301630.P6414181928723838651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (A338224 (A246655 (n + 1)).toNat).toNat

end

end A301630.P6414181928723838651

/-!
# A301631: Numerator of population variance of n-th row of Pascal's triangle.

The programs for A301631, the canonical program `A301631.P6121766463098486196` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301631 has offset 0).

The definition of A301631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301631.P6121766463098486196

`A000108(n)*A000265(n+1)²-A075101(n+1)²/4`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A301631

/-- `A000108(n)*A000265(n+1)²-A075101(n+1)²/4` -/
def P6121766463098486196.Spec : Prop :=
  ∀ n, P6121766463098486196.a n = (A301631 n : ℚ)

end A301631

/-! ## A301631.P9398737975774709899

`A000108(n)*A000265((n+1)²)-A075101(n+1)²/4`
-/

namespace A301631.P9398737975774709899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n * A000265 ((n + 1) ^ 2) : ℚ) - (A075101 (n + 1) ^ 2 : ℚ) / 4

end

end A301631.P9398737975774709899

namespace A301631

/-- `A000108(n)*A000265((n+1)²)-A075101(n+1)²/4` -/
def P9398737975774709899.Spec : Prop :=
  ∀ n, P9398737975774709899.a n = (A301631 n : ℚ)

end A301631

/-! ## A301631.P7848595426494631471

`A191309(Δ[n²])/4^val(n+1, 2)`
-/

namespace A301631.P7848595426494631471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191309 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A301631.P7848595426494631471

namespace A301631

/-- `A191309(Δ[n²])/4^val(n+1, 2)` -/
def P7848595426494631471.Spec : Prop :=
  ∀ n, P7848595426494631471.a n = (A301631 n : ℚ)

end A301631

/-! ## A301631.P7750521846148738586

`A191309(2*n+1)/(A135481(n)+1)²`
-/

namespace A301631.P7750521846148738586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191309 (2 * n + 1) : ℚ) / ((A135481 n + 1) ^ 2 : ℚ)

end

end A301631.P7750521846148738586

namespace A301631

/-- `A191309(2*n+1)/(A135481(n)+1)²` -/
def P7750521846148738586.Spec : Prop :=
  ∀ n, P7750521846148738586.a n = (A301631 n : ℚ)

end A301631

/-! ## A301631.P13833335423695740949

`A191309(n+1+n)/A006519(n+1)²`
-/

namespace A301631.P13833335423695740949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191309 (n + 1 + n) : ℚ) / (A006519 (n + 1) ^ 2 : ℚ)

end

end A301631.P13833335423695740949

namespace A301631

/-- `A191309(n+1+n)/A006519(n+1)²` -/
def P13833335423695740949.Spec : Prop :=
  ∀ n, P13833335423695740949.a n = (A301631 n : ℚ)

end A301631

/-! ## A301631.P2891194706859521204

`A191309(2*n+1)/(A171977(n+1)/2)²`
-/

namespace A301631.P2891194706859521204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191309 (2 * n + 1) : ℚ) / ((A171977 (n + 1) : ℚ) / 2) ^ 2

end

end A301631.P2891194706859521204

namespace A301631

/-- `A191309(2*n+1)/(A171977(n+1)/2)²` -/
def P2891194706859521204.Spec : Prop :=
  ∀ n, P2891194706859521204.a n = (A301631 n : ℚ)

end A301631

/-! ## A301631.P14221769712601072101

`A191309(2*n+1)/A006519((n+1)²)`
-/

namespace A301631.P14221769712601072101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191309 (2 * n + 1) : ℚ) / (A006519 ((n + 1) ^ 2) : ℚ)

end

end A301631.P14221769712601072101

namespace A301631

/-- `A191309(2*n+1)/A006519((n+1)²)` -/
def P14221769712601072101.Spec : Prop :=
  ∀ n, P14221769712601072101.a n = (A301631 n : ℚ)

end A301631

/-!
# A301632: Numbers k such that 3^k + k + 1 is a prime.

The programs for A301632, there is no canonical definition to state claims against.
-/

/-! ## A301632.P3306814169404458226

`A370658(n+1)-1`
-/

namespace A301632.P3306814169404458226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370658 (n + 1) - 1

end

end A301632.P3306814169404458226

/-! ## A301632.P5898617924155705341

`eq[A013598(n), A331737(n+1)]`
-/

namespace A301632.P5898617924155705341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A301632.P5898617924155705341

/-! ## A301632.P7090630951279857741

`∑[A276150(n)*A328771(A002110(n))]`
-/

namespace A301632.P7090630951279857741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n * A328771 (A002110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301632.P7090630951279857741

/-!
# A301633: Numbers k such that 4^(2*k) + 2*k + 1 is a prime.

The programs for A301633, there is no canonical definition to state claims against.
-/

/-! ## A301633.P12115708457192670270

`floor(A370659(n+1)/2)`
-/

namespace A301633.P12115708457192670270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A370659 (n + 1) : ℚ) / 2⌋

end

end A301633.P12115708457192670270

/-! ## A301633.P6491413189635647531

`(A370659(n+1)-A318462(A370653(n)+1))/2`
-/

namespace A301633.P6491413189635647531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370659 (n + 1) - A318462 (A370653 n + 1).toNat : ℚ) / 2

end

end A301633.P6491413189635647531

/-! ## A301633.P3081119017883875053

`A025480(A370659(n+1)-1)`
-/

namespace A301633.P3081119017883875053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A370659 (n + 1) - 1).toNat

end

end A301633.P3081119017883875053

/-!
# A301634: Numbers k such that 2^k + 2*k + 1 is prime.

The programs for A301634, there is no canonical definition to state claims against.
-/

/-! ## A301634.P17248724756810581421

`A192764(n+1)-1`
-/

namespace A301634.P17248724756810581421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192764 (n + 1) - 1

end

end A301634.P17248724756810581421

/-!
# A301636: Square array T(n, k) read by antidiagonals upwards, n >= 0 and k >= 0: T(n, k) = square of the distance from n + k*i to nearest square of a Gaussian integer (where i denotes the root of -1 with positive imaginary part).

The programs for A301636, there is no canonical definition to state claims against.
-/

/-! ## A301636.P17319416469676825150

`A211647(A125053(n))%A100196(n+1)`
-/

namespace A301636.P17319416469676825150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211647 (A125053 n).toNat) (A100196 (n + 1))

end

end A301636.P17319416469676825150

/-! ## A301636.P8035595726236948978

`abs(Δ[A174886(A220222(n))])`
-/

namespace A301636.P8035595726236948978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174886 (A220222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A301636.P8035595726236948978

/-! ## A301636.P16228277751011805663

`A008595(A051461(n))%A086161(n)`
-/

namespace A301636.P16228277751011805663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008595 (A051461 n).toNat) (A086161 n)

end

end A301636.P16228277751011805663

/-!
# A301639: a(n) = square of the distance from n to nearest cube of a Gaussian integer.

The programs for A301639, there is no canonical definition to state claims against.
-/

/-! ## A301639.P5753577639168232853

`A301626(∑[n])`
-/

namespace A301639.P5753577639168232853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301639.P5753577639168232853

/-! ## A301639.P10495081782982772903

`and(-1, A301626(A000217(n)))`
-/

namespace A301639.P10495081782982772903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A301626 (A000217 n).toNat)

end

end A301639.P10495081782982772903

/-! ## A301639.P10684971499984066896

`or(char[2], A301626(A000096(n)))`
-/

namespace A301639.P10684971499984066896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A301626 (A000096 n).toNat)

end

end A301639.P10684971499984066896

/-! ## A301639.P12242232535642968755

`A004442(xor(1, A301626(A000096(n))))`
-/

namespace A301639.P12242232535642968755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor 1 (A301626 (A000096 n).toNat)).toNat

end

end A301639.P12242232535642968755

/-! ## A301639.P13350892667817943853

`A057427(n)*A301626(A000096(n))`
-/

namespace A301639.P13350892667817943853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A301626 (A000096 n).toNat

end

end A301639.P13350892667817943853

/-! ## A301639.P5333327045737508024

`A301626(A000096(n))%A000070(n)`
-/

namespace A301639.P5333327045737508024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301626 (A000096 n).toNat) (A000070 n)

end

end A301639.P5333327045737508024

/-! ## A301639.P8094733456048168877

`A301626(A000217(n))%A000070(n)`
-/

namespace A301639.P8094733456048168877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301626 (A000217 n).toNat) (A000070 n)

end

end A301639.P8094733456048168877

/-! ## A301639.P5158639991582310135

`A301626(A000217(n))+A053188(n²)`
-/

namespace A301639.P5158639991582310135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301626 (A000217 n).toNat + A053188 (n ^ 2)

end

end A301639.P5158639991582310135

/-!
# A301646: Numbers k at which A062776(k) reaches a record high.

The programs for A301646, there is no canonical definition to state claims against.
-/

/-! ## A301646.P2294290781807004166

`A004275(lt[lcm(n+2, n²+2)/(n+2), A315067(n)])`
-/

namespace A301646.P2294290781807004166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (n ^ 2 + 2) : ℚ) / (n + 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A301646.P2294290781807004166

/-! ## A301646.P2095995286101039943

`A004275(lt[A306367(n), A250120(n)])`
-/

namespace A301646.P2095995286101039943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A301646.P2095995286101039943

/-! ## A301646.P16217545507882888533

`A004275(lt[A306367(n), A315067(n)])`
-/

namespace A301646.P16217545507882888533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A301646.P16217545507882888533

/-! ## A301646.P13679524315700241939

`lt[A001840(n+1), A065056(A344349(n+1))]`
-/

namespace A301646.P13679524315700241939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (A344349 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A301646.P13679524315700241939

/-! ## A301646.P8915294206057272575

`lt[((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])², A341016(n+1)]+1`
-/

namespace A301646.P8915294206057272575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n + 1

end

end A301646.P8915294206057272575

/-!
# A301647: a(n) = n^3 - (n mod 2).

The programs for A301647, the canonical program `A301647.P13721159424983545998` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301647 has offset 1).

The definition of A301647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-(n+1)%2` (program `A301647.P13721159424983545998`, by `A301647.P13721159424983545998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301647.P13721159424983545998

`(n+1)^3-(n+1)%2`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301647

/-- `(n+1)^3-(n+1)%2` -/
def P13721159424983545998.Spec : Prop :=
  ∀ n, P13721159424983545998.a n = A301647 (n + 1)

theorem P13721159424983545998.correct : P13721159424983545998.Spec := by
  intro n
  simp only [A301647, Nat.add_sub_cancel]

end A301647

/-! ## A301647.P11254036388825203508

`ogf((8x+2x^2+2x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A301647.P11254036388825203508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 2, 2] [1, -3, 2, 2, -3, 1] n

end

end A301647.P11254036388825203508

namespace A301647

/-- `ogf((8x+2x^2+2x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P11254036388825203508.Spec : Prop :=
  ∀ n, P11254036388825203508.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P5451712966824517981

`(2*(n+1)^3+(-1)^(n+1)-1)/2`
-/

namespace A301647.P5451712966824517981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 : ℤ) + (-1) ^ (n + 1) - 1 : ℚ) / 2

end

end A301647.P5451712966824517981

namespace A301647

/-- `(2*(n+1)^3+(-1)^(n+1)-1)/2` -/
def P5451712966824517981.Spec : Prop :=
  ∀ n, P5451712966824517981.a n = (A301647 (n + 1) : ℚ)

end A301647

/-! ## A301647.P10865850802853492928

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=8, a(2)=26, a(3)=64, a(4)=124`
-/

namespace A301647.P10865850802853492928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 26, 64, 124] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A301647.P10865850802853492928

namespace A301647

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P10865850802853492928.Spec : Prop :=
  ∀ n, P10865850802853492928.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P2872239510385681448

`2*A036487(n+1)`
-/

namespace A301647.P2872239510385681448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036487 (n + 1)

end

end A301647.P2872239510385681448

namespace A301647

/-- `2*A036487(n+1)` -/
def P2872239510385681448.Spec : Prop :=
  ∀ n, P2872239510385681448.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P3415067494804051590

`and(-2, (n+1)^3)`
-/

namespace A301647.P3415067494804051590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((n + 1) ^ 3 : ℤ)

end

end A301647.P3415067494804051590

namespace A301647

/-- `and(-2, (n+1)^3)` -/
def P3415067494804051590.Spec : Prop :=
  ∀ n, P3415067494804051590.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P34278034925462019

`or(1, Δ[∑[n]²])-1`
-/

namespace A301647.P34278034925462019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - 1

end

end A301647.P34278034925462019

namespace A301647

/-- `or(1, Δ[∑[n]²])-1` -/
def P34278034925462019.Spec : Prop :=
  ∀ n, P34278034925462019.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P5959073141290564354

`∑[abs(Δ[or(1, n^3)])]`
-/

namespace A301647.P5959073141290564354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301647.P5959073141290564354

namespace A301647

/-- `∑[abs(Δ[or(1, n^3)])]` -/
def P5959073141290564354.Spec : Prop :=
  ∀ n, P5959073141290564354.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P9018003011216179462

`xor(1, or(1, (n+1)^3))`
-/

namespace A301647.P9018003011216179462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 ((n + 1) ^ 3))

end

end A301647.P9018003011216179462

namespace A301647

/-- `xor(1, or(1, (n+1)^3))` -/
def P9018003011216179462.Spec : Prop :=
  ∀ n, (P9018003011216179462.a n : ℤ) = A301647 (n + 1)

end A301647

/-! ## A301647.P16347916677447372897

`abs(or(1, (n+1)^3)-1)`
-/

namespace A301647.P16347916677447372897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 ((n + 1) ^ 3) : ℤ) - 1|

end

end A301647.P16347916677447372897

namespace A301647

/-- `abs(or(1, (n+1)^3)-1)` -/
def P16347916677447372897.Spec : Prop :=
  ∀ n, P16347916677447372897.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P17877419431084678871

`(n+1)^3-log2(gcd(2, n))`
-/

namespace A301647.P17877419431084678871
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A301647.P17877419431084678871

namespace A301647

/-- `(n+1)^3-log2(gcd(2, n))` -/
def P17877419431084678871.Spec : Prop :=
  ∀ n, P17877419431084678871.a n = (A301647 (n + 1) : ℝ)

end A301647

/-! ## A301647.P3786244062855351483

`(n+1)^3-char[lcm(2, n)]`
-/

namespace A301647.P3786244062855351483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301647.P3786244062855351483

namespace A301647

/-- `(n+1)^3-char[lcm(2, n)]` -/
def P3786244062855351483.Spec : Prop :=
  ∀ n, P3786244062855351483.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P13607954653378449132

`xor((n+1)^3, char[2*n])`
-/

namespace A301647.P13607954653378449132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((n + 1) ^ 3) (if ∃ j, f1 j = n then 1 else 0)

end

end A301647.P13607954653378449132

namespace A301647

/-- `xor((n+1)^3, char[2*n])` -/
def P13607954653378449132.Spec : Prop :=
  ∀ n, (P13607954653378449132.a n : ℤ) = A301647 (n + 1)

end A301647

/-! ## A301647.P11961020628746109557

`Δ[∑[n]²]-and(1, n+1)`
-/

namespace A301647.P11961020628746109557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.land 1 (n + 1) : ℤ)

end

end A301647.P11961020628746109557

namespace A301647

/-- `Δ[∑[n]²]-and(1, n+1)` -/
def P11961020628746109557.Spec : Prop :=
  ∀ n, P11961020628746109557.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P11133332265871018967

`Δ[∑[n]²]-and(1, n-1)²`
-/

namespace A301647.P11133332265871018967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - Int.land 1 ((n : ℤ) - 1) ^ 2

end

end A301647.P11133332265871018967

namespace A301647

/-- `Δ[∑[n]²]-and(1, n-1)²` -/
def P11133332265871018967.Spec : Prop :=
  ∀ n, P11133332265871018967.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P8264189594244069600

`abs(and(1, n+1)-(n+1)^3)`
-/

namespace A301647.P8264189594244069600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.land 1 (n + 1) : ℤ) - ((n + 1) ^ 3 : ℤ)|

end

end A301647.P8264189594244069600

namespace A301647

/-- `abs(and(1, n+1)-(n+1)^3)` -/
def P8264189594244069600.Spec : Prop :=
  ∀ n, P8264189594244069600.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P9793536633206206603

`(n+1)^3-val(n²+2, 2)`
-/

namespace A301647.P9793536633206206603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (SequenceMachineLib.valuation (n ^ 2 + 2) 2 : ℤ)

end

end A301647.P9793536633206206603

namespace A301647

/-- `(n+1)^3-val(n²+2, 2)` -/
def P9793536633206206603.Spec : Prop :=
  ∀ n, P9793536633206206603.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P14346275213130741738

`(n+1)^3-sqrt(and(1, n+1))`
-/

namespace A301647.P14346275213130741738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℝ) - Real.sqrt (Nat.land 1 (n + 1) : ℝ)

end

end A301647.P14346275213130741738

namespace A301647

/-- `(n+1)^3-sqrt(and(1, n+1))` -/
def P14346275213130741738.Spec : Prop :=
  ∀ n, P14346275213130741738.a n = (A301647 (n + 1) : ℝ)

end A301647

/-! ## A301647.P17078495289500138116

`(n+1)^3-dr(and(1, n+1))`
-/

namespace A301647.P17078495289500138116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (SequenceMachineLib.digitalRoot (Nat.land 1 (n + 1) : ℤ) : ℤ)

end

end A301647.P17078495289500138116

namespace A301647

/-- `(n+1)^3-dr(and(1, n+1))` -/
def P17078495289500138116.Spec : Prop :=
  ∀ n, P17078495289500138116.a n = A301647 (n + 1)

end A301647

/-! ## A301647.P9083400298907932961

`floor(xor(1, (n+1)^4)/(n+1))`
-/

namespace A301647.P9083400298907932961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 ((n + 1) ^ 4) : ℚ) / (n + 1 : ℚ)⌋

end

end A301647.P9083400298907932961

namespace A301647

/-- `floor(xor(1, (n+1)^4)/(n+1))` -/
def P9083400298907932961.Spec : Prop :=
  ∀ n, P9083400298907932961.a n = A301647 (n + 1)

end A301647

/-!
# A301648: Number of longest cycles in the n X n grid graph.

The programs for A301648, there is no canonical definition to state claims against.
-/

/-! ## A301648.P8675753816964639211

`A038042(a(n-1))` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6`
-/

namespace A301648.P8675753816964639211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 6] fun n a =>
  A038042 (a (n - 1)).toNat

end

end A301648.P8675753816964639211

/-!
# A301649: Number of longest cycles in the n X n knight graph.

The programs for A301649, there is no canonical definition to state claims against.
-/

/-! ## A301649.P3177682436645091285

`A127788(8^n)`
-/

namespace A301649.P3177682436645091285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127788 (8 ^ n)

end

end A301649.P3177682436645091285

/-!
# A301652: Triangle read by rows: row n gives the digits of n in factorial base in reversed order.

The programs for A301652, there is no canonical definition to state claims against.
-/

/-! ## A301652.P2642084294054972949

`A001221(gcd(A035476(2*n+1), A225554(2*(n+2))))`
-/

namespace A301652.P2642084294054972949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A035476 (2 * n + 1)) (A225554 (2 * (n + 2))))

end

end A301652.P2642084294054972949

/-! ## A301652.P2084431107358130802

`A104807(2*n+5)%A299229(A027336(2*n+3))`
-/

namespace A301652.P2084431107358130802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104807 (2 * n + 5)) (A299229 (A027336 (2 * n + 3)).toNat)

end

end A301652.P2084431107358130802

/-! ## A301652.P2989627646684012074

`A264628(or(A107435(n+1), A307692(n+1)))`
-/

namespace A301652.P2989627646684012074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (Int.lor (A107435 (n + 1)) (A307692 (n + 1))).toNat

end

end A301652.P2989627646684012074

/-! ## A301652.P3459214434716780826

`and(A008683(3*n+2), A124010(A355311(n+1)))`
-/

namespace A301652.P3459214434716780826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (3 * n + 2)) (A124010 (A355311 (n + 1)).toNat)

end

end A301652.P3459214434716780826

/-! ## A301652.P11384846499334926763

`(A270831(2*n+5)%A299981(3*n+4))%A005086(n+1)`
-/

namespace A301652.P11384846499334926763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A270831 (2 * n + 5)) (A299981 (3 * n + 4))) (A005086 (n + 1))

end

end A301652.P11384846499334926763

/-!
# A301653: Expansion of x*(1 + 2*x)/((1 - x)*(1 + x)*(1 - x - x^2)).

The programs for A301653, the canonical program `A301653.P18243183182147642949` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301653 has offset 0).

The definition of A301653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2)/(1-x-2x^2+x^3+x^4))` (program `A301653.P18243183182147642949`, by `A301653.P18243183182147642949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301653.P18243183182147642949

`ogf((x+2x^2)/(1-x-2x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301653

/-- `ogf((x+2x^2)/(1-x-2x^2+x^3+x^4))` -/
def P18243183182147642949.Spec : Prop :=
  ∀ n, P18243183182147642949.a n = A301653 n

theorem P18243183182147642949.correct : P18243183182147642949.Spec := by
  intro n
  simp only [A301653]

end A301653

/-! ## A301653.P10232956267561238567

`A000032(n+1)-(3-(-1)^n)/2`
-/

namespace A301653.P10232956267561238567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) - (3 - (-1) ^ n : ℚ) / 2

end

end A301653.P10232956267561238567

namespace A301653

/-- `A000032(n+1)-(3-(-1)^n)/2` -/
def P10232956267561238567.Spec : Prop :=
  ∀ n, P10232956267561238567.a n = (A301653 n : ℚ)

end A301653

/-! ## A301653.P5557316737628316501

`A000045(n)+A000045(n+2)+((-1)^n-3)/2`
-/

namespace A301653.P5557316737628316501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n + A000045 (n + 2) : ℚ) + ((-1) ^ n - 3 : ℚ) / 2

end

end A301653.P5557316737628316501

namespace A301653

/-- `A000045(n)+A000045(n+2)+((-1)^n-3)/2` -/
def P5557316737628316501.Spec : Prop :=
  ∀ n, P5557316737628316501.a n = (A301653 n : ℚ)

end A301653

/-! ## A301653.P1426035941153454701

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A301653.P1426035941153454701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A301653.P1426035941153454701

namespace A301653

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P1426035941153454701.Spec : Prop :=
  ∀ n, P1426035941153454701.a n = A301653 n

end A301653

/-! ## A301653.P7074996371681330350

`round(a(n-2)+ϕ^n)` with `a(0)=0, a(1)=1`
-/

namespace A301653.P7074996371681330350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) + Real.goldenRatio ^ n)

end

end A301653.P7074996371681330350

namespace A301653

/-- `round(a(n-2)+ϕ^n)` -/
def P7074996371681330350.Spec : Prop :=
  ∀ n, P7074996371681330350.a n = A301653 n

end A301653

/-! ## A301653.P14201903306463653142

`∑[a(n-3)+2*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A301653.P14201903306463653142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301653.P14201903306463653142

namespace A301653

/-- `∑[a(n-3)+2*a(n-2)]` -/
def P14201903306463653142.Spec : Prop :=
  ∀ n, (P14201903306463653142.a n : ℤ) = A301653 n

end A301653

/-! ## A301653.P11418550795962835460

`gcd(2, n)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A301653.P11418550795962835460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd 2 n + (a (n - 1) + a (n - 2))

end

end A301653.P11418550795962835460

namespace A301653

/-- `gcd(2, n)+a(n-1)+a(n-2)` -/
def P11418550795962835460.Spec : Prop :=
  ∀ n, (P11418550795962835460.a n : ℤ) = A301653 n

end A301653

/-! ## A301653.P14029631882910055568

`2*a(n-2)+a(n-3)+3` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A301653.P14029631882910055568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  2 * a (n - 2) + (a (n - 3) + 3)

end

end A301653.P14029631882910055568

namespace A301653

/-- `2*a(n-2)+a(n-3)+3` -/
def P14029631882910055568.Spec : Prop :=
  ∀ n, (P14029631882910055568.a n : ℤ) = A301653 n

end A301653

/-! ## A301653.P15084968705648330061

`∑[a(n-1)+a(n-2)+(-1)^n]` with `a(0)=0, a(1)=1`
-/

namespace A301653.P15084968705648330061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301653.P15084968705648330061

namespace A301653

/-- `∑[a(n-1)+a(n-2)+(-1)^n]` -/
def P15084968705648330061.Spec : Prop :=
  ∀ n, P15084968705648330061.a n = A301653 n

end A301653

/-! ## A301653.P6542950452324815635

`2-n%2+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A301653.P6542950452324815635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - ((n % 2 : ℕ) : ℤ) + (a (n - 1) + a (n - 2))

end

end A301653.P6542950452324815635

namespace A301653

/-- `2-n%2+a(n-1)+a(n-2)` -/
def P6542950452324815635.Spec : Prop :=
  ∀ n, P6542950452324815635.a n = A301653 n

end A301653

/-! ## A301653.P3560983718525794504

`a(n-2)+3+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A301653.P3560983718525794504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 2) + 3 + (a (n - 2) + a (n - 3))

end

end A301653.P3560983718525794504

namespace A301653

/-- `a(n-2)+3+a(n-2)+a(n-3)` -/
def P3560983718525794504.Spec : Prop :=
  ∀ n, (P3560983718525794504.a n : ℤ) = A301653 n

end A301653

/-! ## A301653.P13538499024760337032

`∑[A181716(n)]`
-/

namespace A301653.P13538499024760337032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301653.P13538499024760337032

namespace A301653

/-- `∑[A181716(n)]` -/
def P13538499024760337032.Spec : Prop :=
  ∀ n, P13538499024760337032.a n = A301653 n

end A301653

/-! ## A301653.P9057765269867394679

`A014217(n+1)-1`
-/

namespace A301653.P9057765269867394679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1) - 1

end

end A301653.P9057765269867394679

namespace A301653

/-- `A014217(n+1)-1` -/
def P9057765269867394679.Spec : Prop :=
  ∀ n, P9057765269867394679.a n = A301653 n

end A301653

/-! ## A301653.P9237668085025408370

`A062724(n+1)-2`
-/

namespace A301653.P9237668085025408370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 (n + 1) - 2

end

end A301653.P9237668085025408370

namespace A301653

/-- `A062724(n+1)-2` -/
def P9237668085025408370.Spec : Prop :=
  ∀ n, P9237668085025408370.a n = A301653 n

end A301653

/-! ## A301653.P13691189877473706287

`A169986(n+1)-2`
-/

namespace A301653.P13691189877473706287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 (n + 1) - 2

end

end A301653.P13691189877473706287

namespace A301653

/-- `A169986(n+1)-2` -/
def P13691189877473706287.Spec : Prop :=
  ∀ n, P13691189877473706287.a n = A301653 n

end A301653

/-! ## A301653.P17353171696456860567

`A001610(n)-and(1, n)`
-/

namespace A301653.P17353171696456860567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - (Nat.land 1 n : ℤ)

end

end A301653.P17353171696456860567

namespace A301653

/-- `A001610(n)-and(1, n)` -/
def P17353171696456860567.Spec : Prop :=
  ∀ n, P17353171696456860567.a n = A301653 n

end A301653

/-! ## A301653.P6073465467018178903

`∑[abs(1-A061084(n))]`
-/

namespace A301653.P6073465467018178903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A061084 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301653.P6073465467018178903

namespace A301653

/-- `∑[abs(1-A061084(n))]` -/
def P6073465467018178903.Spec : Prop :=
  ∀ n, P6073465467018178903.a n = A301653 n

end A301653

/-! ## A301653.P13606876605724347423

`A192660(2*(n+1))-1`
-/

namespace A301653.P13606876605724347423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192660 (2 * (n + 1)) - 1

end

end A301653.P13606876605724347423

namespace A301653

/-- `A192660(2*(n+1))-1` -/
def P13606876605724347423.Spec : Prop :=
  ∀ n, P13606876605724347423.a n = A301653 n

end A301653

/-! ## A301653.P8966189269036198132

`a(n-2)+A000032(n)` with `a(0)=0, a(1)=1`
-/

namespace A301653.P8966189269036198132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A000032 n

end

end A301653.P8966189269036198132

namespace A301653

/-- `a(n-2)+A000032(n)` -/
def P8966189269036198132.Spec : Prop :=
  ∀ n, P8966189269036198132.a n = A301653 n

end A301653

/-! ## A301653.P15478991003553045164

`∑[A000032(2*n-n)-a(n-1)]` with `a(0)=0`
-/

namespace A301653.P15478991003553045164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000032 (2 * n - n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301653.P15478991003553045164

namespace A301653

/-- `∑[A000032(2*n-n)-a(n-1)]` -/
def P15478991003553045164.Spec : Prop :=
  ∀ n, P15478991003553045164.a n = A301653 n

end A301653

/-!
# A301654: Circumference of the n-triangular honeycomb acute knight graph.

The programs for A301654, the canonical program `A301654.P9720281239243748431` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301654 has offset 1).

The definition of A301654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301654.P15517912073017158413

`floor((n+3)*n/6)`
-/

namespace A301654.P15517912073017158413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3) * n : ℚ) / 6⌋

end

end A301654.P15517912073017158413

namespace A301654

/-- `floor((n+3)*n/6)` -/
def P15517912073017158413.Spec : Prop :=
  ∀ n, P15517912073017158413.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P7635988324421725335

`ogf((x^2+x^3-x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A301654.P7635988324421725335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, -1] [1, -2, 1, -1, 2, -1] n

end

end A301654.P7635988324421725335

namespace A301654

/-- `ogf((x^2+x^3-x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P7635988324421725335.Spec : Prop :=
  ∀ n, P7635988324421725335.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P9720281239243748431

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301654

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P9720281239243748431.Spec : Prop :=
  ∀ n, P9720281239243748431.a n = A301654 (n + 1)

theorem P9720281239243748431.correct : P9720281239243748431.Spec := by
  intro n
  simp only [A301654, Nat.add_sub_cancel]

end A301654

/-! ## A301654.P7461465394786187723

`a(n-3)+n` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A301654.P7461465394786187723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + n

end

end A301654.P7461465394786187723

namespace A301654

/-- `a(n-3)+n` -/
def P7461465394786187723.Spec : Prop :=
  ∀ n, (P7461465394786187723.a n : ℤ) = A301654 (n + 1)

end A301654

/-! ## A301654.P5960489525514864031

`∑[∑[(-1)^(n%3)]]-1`
-/

namespace A301654.P5960489525514864031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A301654.P5960489525514864031

namespace A301654

/-- `∑[∑[(-1)^(n%3)]]-1` -/
def P5960489525514864031.Spec : Prop :=
  ∀ n, P5960489525514864031.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P16899758899759629251

`ceil(C(n+2, 2)/3)-1`
-/

namespace A301654.P16899758899759629251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) / 3⌉ - 1

end

end A301654.P16899758899759629251

namespace A301654

/-- `ceil(C(n+2, 2)/3)-1` -/
def P16899758899759629251.Spec : Prop :=
  ∀ n, P16899758899759629251.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P8800731567424015503

`round((C(n+2, 2)-2)/3)`
-/

namespace A301654.P8800731567424015503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (n + 2) 2 : ℤ) - 2 : ℚ) / 3)

end

end A301654.P8800731567424015503

namespace A301654

/-- `round((C(n+2, 2)-2)/3)` -/
def P8800731567424015503.Spec : Prop :=
  ∀ n, P8800731567424015503.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P14091925175540028095

`round(∑[(n+1)/3]-cos(1))`
-/

namespace A301654.P14091925175540028095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.cos (1 : ℝ))

end

end A301654.P14091925175540028095

namespace A301654

/-- `round(∑[(n+1)/3]-cos(1))` -/
def P14091925175540028095.Spec : Prop :=
  ∀ n, P14091925175540028095.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P12258110784544261343

`round((tan(2)+∑[n+1])/3)`
-/

namespace A301654.P12258110784544261343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3)

end

end A301654.P12258110784544261343

namespace A301654

/-- `round((tan(2)+∑[n+1])/3)` -/
def P12258110784544261343.Spec : Prop :=
  ∀ n, P12258110784544261343.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P6653626319800026319

`round((∑[n+1]-asin(1))/3)`
-/

namespace A301654.P6653626319800026319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.arcsin (1 : ℝ)) / 3)

end

end A301654.P6653626319800026319

namespace A301654

/-- `round((∑[n+1]-asin(1))/3)` -/
def P6653626319800026319.Spec : Prop :=
  ∀ n, P6653626319800026319.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P13957566107473887981

`round(∑[(n+1)/3]-atan(1))`
-/

namespace A301654.P13957566107473887981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.arctan (1 : ℝ))

end

end A301654.P13957566107473887981

namespace A301654

/-- `round(∑[(n+1)/3]-atan(1))` -/
def P13957566107473887981.Spec : Prop :=
  ∀ n, P13957566107473887981.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P15167290951177817848

`ceil(∑[(n+1)/3]-atan(2))`
-/

namespace A301654.P15167290951177817848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.arctan (2 : ℝ)⌉

end

end A301654.P15167290951177817848

namespace A301654

/-- `ceil(∑[(n+1)/3]-atan(2))` -/
def P15167290951177817848.Spec : Prop :=
  ∀ n, P15167290951177817848.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P10831227993640763786

`ceil(∑[(n+1)/3]-sinh(1))`
-/

namespace A301654.P10831227993640763786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.sinh (1 : ℝ)⌉

end

end A301654.P10831227993640763786

namespace A301654

/-- `ceil(∑[(n+1)/3]-sinh(1))` -/
def P10831227993640763786.Spec : Prop :=
  ∀ n, P10831227993640763786.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P4099573224766849885

`round((∑[n+1]-cosh(1))/3)`
-/

namespace A301654.P4099573224766849885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cosh (1 : ℝ)) / 3)

end

end A301654.P4099573224766849885

namespace A301654

/-- `round((∑[n+1]-cosh(1))/3)` -/
def P4099573224766849885.Spec : Prop :=
  ∀ n, P4099573224766849885.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P13003736895922897503

`ceil((∑[n+1]-cosh(2))/3)`
-/

namespace A301654.P13003736895922897503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cosh (2 : ℝ)) / 3⌉

end

end A301654.P13003736895922897503

namespace A301654

/-- `ceil((∑[n+1]-cosh(2))/3)` -/
def P13003736895922897503.Spec : Prop :=
  ∀ n, P13003736895922897503.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P17990890230751954083

`round(∑[(n+1)/3]-tanh(1))`
-/

namespace A301654.P17990890230751954083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.tanh (1 : ℝ))

end

end A301654.P17990890230751954083

namespace A301654

/-- `round(∑[(n+1)/3]-tanh(1))` -/
def P17990890230751954083.Spec : Prop :=
  ∀ n, P17990890230751954083.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P1434701444948019072

`round(∑[(n+1)/3]-cot(1))`
-/

namespace A301654.P1434701444948019072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.cot (1 : ℝ))

end

end A301654.P1434701444948019072

namespace A301654

/-- `round(∑[(n+1)/3]-cot(1))` -/
def P1434701444948019072.Spec : Prop :=
  ∀ n, P1434701444948019072.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P156768773361522367

`round(∑[(n+1)/3]-acot(1))`
-/

namespace A301654.P156768773361522367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - SequenceMachineLib.acot (1 : ℝ))

end

end A301654.P156768773361522367

namespace A301654

/-- `round(∑[(n+1)/3]-acot(1))` -/
def P156768773361522367.Spec : Prop :=
  ∀ n, P156768773361522367.a n = A301654 (n + 1)

end A301654

/-! ## A301654.P8349531507376890558

`∑[∑[gcd(3, ∑[n])]%(n+1)]`
-/

namespace A301654.P8349531507376890558
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301654.P8349531507376890558

namespace A301654

/-- `∑[∑[gcd(3, ∑[n])]%(n+1)]` -/
def P8349531507376890558.Spec : Prop :=
  ∀ n, (P8349531507376890558.a n : ℤ) = A301654 (n + 1)

end A301654

/-! ## A301654.P7415823090878253407

`n-floor(-a(n-3))` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A301654.P7415823090878253407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (n : ℤ) - (-a (n - 3))

end

end A301654.P7415823090878253407

namespace A301654

/-- `n-floor(-a(n-3))` -/
def P7415823090878253407.Spec : Prop :=
  ∀ n, P7415823090878253407.a n = A301654 (n + 1)

end A301654

/-!
# A301655: a(n) = [x^n] 1/(1 - Sum_{k>=1} k^n*x^k).

The programs for A301655, there is no canonical definition to state claims against.
-/

/-! ## A301655.P4573699248221293222

`A320251(∑[4*n])`
-/

namespace A301655.P4573699248221293222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320251 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301655.P4573699248221293222

/-! ## A301655.P1421974747973641165

`A320251(A046092(n))+char[6]`
-/

namespace A301655.P1421974747973641165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320251 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301655.P1421974747973641165

/-!
# A301656: Number of n X n 0..1 arrays with every element equal to 0, 1 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301656, there is no canonical definition to state claims against.
-/

/-! ## A301656.P10436909140257194746

`A301662(∑[4*n]+1)`
-/

namespace A301656.P10436909140257194746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301656.P10436909140257194746

/-! ## A301656.P10763096104102360341

`record[A003982(n)*A301662(n+1)]`
-/

namespace A301656.P10763096104102360341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301656.P10763096104102360341

/-! ## A301656.P16791841344338946610

`record[gcd(A037012(n), A301662(n+1))]`
-/

namespace A301656.P16791841344338946610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A301662 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301656.P16791841344338946610

/-! ## A301656.P10546687975594565180

`record[A203994(n+1)*A301662(n+1)]`
-/

namespace A301656.P10546687975594565180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A301662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301656.P10546687975594565180

/-! ## A301656.P9393409666432895767

`or(A166926(n), A301662(A001844(n)))`
-/

namespace A301656.P9393409666432895767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166926 n) (A301662 (A001844 n).toNat)

end

end A301656.P9393409666432895767

/-!
# A301657: Number of nX3 0..1 arrays with every element equal to 0, 1 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301657, the canonical program `A301657.P3574502693626326285` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301657 has offset 1).

The definition of A301657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301657.P6309765991939683539

`ogf((-3+2x+2x^2+3x^3)/(-1+2x-x^4))`
-/

namespace A301657.P6309765991939683539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -2, -3] [1, -2, 0, 0, 1] n

end

end A301657.P6309765991939683539

namespace A301657

/-- `ogf((-3+2x+2x^2+3x^3)/(-1+2x-x^4))` -/
def P6309765991939683539.Spec : Prop :=
  ∀ n, P6309765991939683539.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P3574502693626326285

`2*a(n-1)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301657

/-- `2*a(n-1)-a(n-4)` -/
def P3574502693626326285.Spec : Prop :=
  ∀ n, P3574502693626326285.a n = A301657 (n + 1)

theorem P3574502693626326285.correct : P3574502693626326285.Spec := by
  intro n
  simp only [A301657, Nat.add_sub_cancel]

end A301657

/-! ## A301657.P10018342624606982831

`∑[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=3, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A301657.P10018342624606982831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301657.P10018342624606982831

namespace A301657

/-- `∑[a(n-1)+a(n-2)+a(n-3)]` -/
def P10018342624606982831.Spec : Prop :=
  ∀ n, (P10018342624606982831.a n : ℤ) = A301657 (n + 1)

end A301657

/-! ## A301657.P16080565703255382239

`A089068(n+1)+3`
-/

namespace A301657.P16080565703255382239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (n + 1) + 3

end

end A301657.P16080565703255382239

namespace A301657

/-- `A089068(n+1)+3` -/
def P16080565703255382239.Spec : Prop :=
  ∀ n, P16080565703255382239.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P4668904929801314167

`2+A000073(n+3)`
-/

namespace A301657.P4668904929801314167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000073 (n + 3)

end

end A301657.P4668904929801314167

namespace A301657

/-- `2+A000073(n+3)` -/
def P4668904929801314167.Spec : Prop :=
  ∀ n, P4668904929801314167.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P17836699454167482450

`∑[A001590(n+2)]+3`
-/

namespace A301657.P17836699454167482450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A301657.P17836699454167482450

namespace A301657

/-- `∑[A001590(n+2)]+3` -/
def P17836699454167482450.Spec : Prop :=
  ∀ n, P17836699454167482450.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P12463345977183916289

`A213816(2*n+3)+2`
-/

namespace A301657.P12463345977183916289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * n + 3) + 2

end

end A301657.P12463345977183916289

namespace A301657

/-- `A213816(2*n+3)+2` -/
def P12463345977183916289.Spec : Prop :=
  ∀ n, P12463345977183916289.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P1330067977282799580

`A214727(n)+A354784(n)+2`
-/

namespace A301657.P1330067977282799580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + (A354784 n + 2)

end

end A301657.P1330067977282799580

namespace A301657

/-- `A214727(n)+A354784(n)+2` -/
def P1330067977282799580.Spec : Prop :=
  ∀ n, P1330067977282799580.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P34647716729165707

`A354080(n)+2-A020992(n)`
-/

namespace A301657.P34647716729165707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 n + (2 - A020992 n)

end

end A301657.P34647716729165707

namespace A301657

/-- `A354080(n)+2-A020992(n)` -/
def P34647716729165707.Spec : Prop :=
  ∀ n, P34647716729165707.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P13442492050737014293

`abs(Δ[A077902(n)])+2`
-/

namespace A301657.P13442492050737014293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 2

end

end A301657.P13442492050737014293

namespace A301657

/-- `abs(Δ[A077902(n)])+2` -/
def P13442492050737014293.Spec : Prop :=
  ∀ n, P13442492050737014293.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P4198586985718813801

`Δ[A008937(n+1)]+2`
-/

namespace A301657.P4198586985718813801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A301657.P4198586985718813801

namespace A301657

/-- `Δ[A008937(n+1)]+2` -/
def P4198586985718813801.Spec : Prop :=
  ∀ n, P4198586985718813801.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P2691649715743913074

`Δ[A192804(n+3)]+2`
-/

namespace A301657.P2691649715743913074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A301657.P2691649715743913074

namespace A301657

/-- `Δ[A192804(n+3)]+2` -/
def P2691649715743913074.Spec : Prop :=
  ∀ n, P2691649715743913074.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P5396863288075812262

`Δ[A317200(n+3)]+2`
-/

namespace A301657.P5396863288075812262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317200 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A301657.P5396863288075812262

namespace A301657

/-- `Δ[A317200(n+3)]+2` -/
def P5396863288075812262.Spec : Prop :=
  ∀ n, P5396863288075812262.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P9395051125819249208

`A288599(n+1)/2+1`
-/

namespace A301657.P9395051125819249208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288599 (n + 1) : ℚ) / 2 + 1

end

end A301657.P9395051125819249208

namespace A301657

/-- `A288599(n+1)/2+1` -/
def P9395051125819249208.Spec : Prop :=
  ∀ n, P9395051125819249208.a n = (A301657 (n + 1) : ℚ)

end A301657

/-! ## A301657.P4110734174844605580

`A135491(n+1)/2+2`
-/

namespace A301657.P4110734174844605580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135491 (n + 1) : ℚ) / 2 + 2

end

end A301657.P4110734174844605580

namespace A301657

/-- `A135491(n+1)/2+2` -/
def P4110734174844605580.Spec : Prop :=
  ∀ n, P4110734174844605580.a n = (A301657 (n + 1) : ℚ)

end A301657

/-! ## A301657.P5152587152742008339

`Δ[Δ[A062544(n)]]+2`
-/

namespace A301657.P5152587152742008339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A301657.P5152587152742008339

namespace A301657

/-- `Δ[Δ[A062544(n)]]+2` -/
def P5152587152742008339.Spec : Prop :=
  ∀ n, P5152587152742008339.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P2602780165898405816

`Δ[Δ[A007800(n+1)]]+2`
-/

namespace A301657.P2602780165898405816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A301657.P2602780165898405816

namespace A301657

/-- `Δ[Δ[A007800(n+1)]]+2` -/
def P2602780165898405816.Spec : Prop :=
  ∀ n, P2602780165898405816.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P2882518152083129278

`Δ[Δ[A221949(n+1)]]+2`
-/

namespace A301657.P2882518152083129278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A301657.P2882518152083129278

namespace A301657

/-- `Δ[Δ[A221949(n+1)]]+2` -/
def P2882518152083129278.Spec : Prop :=
  ∀ n, P2882518152083129278.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P13513508554027148856

`record[Δ[A308189(n+1)]+2]`
-/

namespace A301657.P13513508554027148856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301657.P13513508554027148856

namespace A301657

/-- `record[Δ[A308189(n+1)]+2]` -/
def P13513508554027148856.Spec : Prop :=
  ∀ n, P13513508554027148856.a n = A301657 (n + 1)

end A301657

/-! ## A301657.P11201496580950979516

`A337281(n+3)/(n+3)+2`
-/

namespace A301657.P11201496580950979516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337281 (n + 3) : ℚ) / (n + 3 : ℚ) + 2

end

end A301657.P11201496580950979516

namespace A301657

/-- `A337281(n+3)/(n+3)+2` -/
def P11201496580950979516.Spec : Prop :=
  ∀ n, P11201496580950979516.a n = (A301657 (n + 1) : ℚ)

end A301657

/-!
# A301658: Number of nX4 0..1 arrays with every element equal to 0, 1 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301658, the canonical program `A301658.P6373140149868759706` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301658 has offset 1).

The definition of A301658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301658.P6373140149868759706

`A240513(n+1)+3`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A301658

/-- `A240513(n+1)+3` -/
def P6373140149868759706.Spec : Prop :=
  ∀ n, P6373140149868759706.a n = A301658 (n + 1)

theorem P6373140149868759706.correct : P6373140149868759706.Spec := by
  intro n
  simp only [A301658, Nat.add_sub_cancel]

end A301658

/-! ## A301658.P17731951020573545582

`A105309(n+1)+4`
-/

namespace A301658.P17731951020573545582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105309 (n + 1) + 4

end

end A301658.P17731951020573545582

namespace A301658

/-- `A105309(n+1)+4` -/
def P17731951020573545582.Spec : Prop :=
  ∀ n, P17731951020573545582.a n = A301658 (n + 1)

end A301658

/-! ## A301658.P11373413571399874492

`2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=5, a(1)=6, a(2)=9, a(3)=13, a(4)=24`
-/

namespace A301658.P11373413571399874492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 9, 13, 24] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A301658.P11373413571399874492

namespace A301658

/-- `2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)+a(n-5)` -/
def P11373413571399874492.Spec : Prop :=
  ∀ n, P11373413571399874492.a n = A301658 (n + 1)

end A301658

/-! ## A301658.P14690316338809058142

`abs(A242510(n+1)+1-A092886(n+1))+3`
-/

namespace A301658.P14690316338809058142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242510 (n + 1) + (1 - A092886 (n + 1))| + 3

end

end A301658.P14690316338809058142

namespace A301658

/-- `abs(A242510(n+1)+1-A092886(n+1))+3` -/
def P14690316338809058142.Spec : Prop :=
  ∀ n, P14690316338809058142.a n = A301658 (n + 1)

end A301658

/-! ## A301658.P9150693598296152708

`A131818(A167614(n+1))+A242510(n+1)+1-A092886(n+1)`
-/

namespace A301658.P9150693598296152708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A167614 (n + 1)).toNat + (A242510 (n + 1) + (1 - A092886 (n + 1)))

end

end A301658.P9150693598296152708

namespace A301658

/-- `A131818(A167614(n+1))+A242510(n+1)+1-A092886(n+1)` -/
def P9150693598296152708.Spec : Prop :=
  ∀ n, P9150693598296152708.a n = A301658 (n + 1)

end A301658

/-! ## A301658.P12889663230834555404

`A193592(A027379(n+2))+A242510(n+1)+1-A092886(n+1)`
-/

namespace A301658.P12889663230834555404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A027379 (n + 2)).toNat + (A242510 (n + 1) + (1 - A092886 (n + 1)))

end

end A301658.P12889663230834555404

namespace A301658

/-- `A193592(A027379(n+2))+A242510(n+1)+1-A092886(n+1)` -/
def P12889663230834555404.Spec : Prop :=
  ∀ n, P12889663230834555404.a n = A301658 (n + 1)

end A301658

/-! ## A301658.P14545062724774905568

`A002262(A167614(2*(n+9)))+A242510(n+1)+1-A092886(n+1)`
-/

namespace A301658.P14545062724774905568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A167614 (2 * (n + 9))).toNat + (A242510 (n + 1) + (1 - A092886 (n + 1)))

end

end A301658.P14545062724774905568

namespace A301658

/-- `A002262(A167614(2*(n+9)))+A242510(n+1)+1-A092886(n+1)` -/
def P14545062724774905568.Spec : Prop :=
  ∀ n, P14545062724774905568.a n = A301658 (n + 1)

end A301658

/-!
# A301659: Number of nX5 0..1 arrays with every element equal to 0, 1 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301659, there is no canonical definition to state claims against.
-/

/-! ## A301659.P763321788048209458

`A301662(A374005(n+1))`
-/

namespace A301659.P763321788048209458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A374005 (n + 1)).toNat

end

end A301659.P763321788048209458

/-! ## A301659.P13279841284856380483

`A301662(A167499(n+3))`
-/

namespace A301659.P13279841284856380483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A167499 (n + 3)).toNat

end

end A301659.P13279841284856380483

/-! ## A301659.P8445638360518294321

`A301662(A000124(n+4)+4)`
-/

namespace A301659.P8445638360518294321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A000124 (n + 4) + 4).toNat

end

end A301659.P8445638360518294321

/-! ## A301659.P16821670240386406899

`A301662(A000217(n+4)+5)`
-/

namespace A301659.P16821670240386406899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A000217 (n + 4) + 5).toNat

end

end A301659.P16821670240386406899

/-! ## A301659.P17888729446427380661

`A301662(A052905(n+1)+10)`
-/

namespace A301659.P17888729446427380661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A052905 (n + 1) + 10).toNat

end

end A301659.P17888729446427380661

/-!
# A301660: Number of nX6 0..1 arrays with every element equal to 0, 1 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301660, there is no canonical definition to state claims against.
-/

/-! ## A301660.P17901450556720092415

`A301662(A374007(n+1))`
-/

namespace A301660.P17901450556720092415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A374007 (n + 1)).toNat

end

end A301660.P17901450556720092415

/-! ## A301660.P1204045669889725372

`A301662(A167499(n+4)+1)`
-/

namespace A301660.P1204045669889725372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A167499 (n + 4) + 1).toNat

end

end A301660.P1204045669889725372

/-! ## A301660.P2645312597000059681

`A301662(A000217(n+5)+6)`
-/

namespace A301660.P2645312597000059681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A000217 (n + 5) + 6).toNat

end

end A301660.P2645312597000059681

/-! ## A301660.P11515822224963963459

`A301662(Δ[A023545(n+1)]+10)`
-/

namespace A301660.P11515822224963963459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (f1 (n + 1) - f1 n + 10).toNat

end

end A301660.P11515822224963963459

/-! ## A301660.P1317701002765958675

`A301662(n+10+A000124(n+4))`
-/

namespace A301660.P1317701002765958675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 ((n + 10 : ℤ) + A000124 (n + 4)).toNat

end

end A301660.P1317701002765958675

/-!
# A301661: Number of nX7 0..1 arrays with every element equal to 0, 1 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301661, there is no canonical definition to state claims against.
-/

/-! ## A301661.P3883410741442683279

`A301662(A374008(n+1))`
-/

namespace A301661.P3883410741442683279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A374008 (n + 1)).toNat

end

end A301661.P3883410741442683279

/-! ## A301661.P1721457551925493638

`A301662(A000217(n+6)+7)`
-/

namespace A301661.P1721457551925493638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A000217 (n + 6) + 7).toNat

end

end A301661.P1721457551925493638

/-! ## A301661.P14592389879619012247

`A301662(n+12+A000124(n+5))`
-/

namespace A301661.P14592389879619012247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 ((n + 12 : ℤ) + A000124 (n + 5)).toNat

end

end A301661.P14592389879619012247

/-! ## A301661.P13719942343504034963

`A301662(A055999(n+4))`
-/

namespace A301661.P13719942343504034963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (A055999 (n + 4)).toNat

end

end A301661.P13719942343504034963

/-! ## A301661.P810881264718359498

`A301662(Δ[A023551(n+2)])`
-/

namespace A301661.P810881264718359498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301662 (f1 (n + 1) - f1 n).toNat

end

end A301661.P810881264718359498

/-!
# A301662: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301662, there is no canonical definition to state claims against.
-/

/-! ## A301662.P16076644051206784079

`A117707(A078391(n))+A003056(n)`
-/

namespace A301662.P16076644051206784079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A078391 n).toNat + A003056 n

end

end A301662.P16076644051206784079

/-! ## A301662.P9596614505419230559

`A117707(A078391(n))+A117707(n)`
-/

namespace A301662.P9596614505419230559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A078391 n).toNat + A117707 n

end

end A301662.P9596614505419230559

/-! ## A301662.P16134967447577608773

`A163352(A078391(n))+A163352(n)`
-/

namespace A301662.P16134967447577608773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A078391 n).toNat + A163352 n

end

end A301662.P16134967447577608773

/-! ## A301662.P14897414755645205537

`∑{e}[A036561(n)*A036561(A078391(n)), #]`
-/

namespace A301662.P14897414755645205537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A036561 (A078391 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A301662.P14897414755645205537

/-!
# A301663: Number of n X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301663, there is no canonical definition to state claims against.
-/

/-! ## A301663.P16059530942616191518

`A301669(∑[4*n]+1)`
-/

namespace A301663.P16059530942616191518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301663.P16059530942616191518

/-! ## A301663.P12323216778733300233

`record[A301669(A330613(n+1))]`
-/

namespace A301663.P12323216778733300233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301663.P12323216778733300233

/-! ## A301663.P11811070921042293474

`A326688(n)+A301669(A001844(n))`
-/

namespace A301663.P11811070921042293474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A301669 (A001844 n).toNat

end

end A301663.P11811070921042293474

/-! ## A301663.P5818785129347651010

`A016266(n)*A301669(A001844(n))`
-/

namespace A301663.P5818785129347651010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A301669 (A001844 n).toNat

end

end A301663.P5818785129347651010

/-! ## A301663.P15939713478255063944

`A016272(n)*A301669(A001844(n))`
-/

namespace A301663.P15939713478255063944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 n * A301669 (A001844 n).toNat

end

end A301663.P15939713478255063944

/-!
# A301664: Number of nX3 0..1 arrays with every element equal to 1, 2 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301664, there is no canonical definition to state claims against.
-/

/-! ## A301664.P6599250453265244154

`A301669(∑[n+2]+4)`
-/

namespace A301664.P6599250453265244154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301664.P6599250453265244154

/-! ## A301664.P7273146222779952243

`A326688(n)+A301669(A167614(n+1))`
-/

namespace A301664.P7273146222779952243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A301669 (A167614 (n + 1)).toNat

end

end A301664.P7273146222779952243

/-! ## A301664.P10312852878488560838

`A016266(n)*A301669(A167614(n+1))`
-/

namespace A301664.P10312852878488560838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A301669 (A167614 (n + 1)).toNat

end

end A301664.P10312852878488560838

/-! ## A301664.P5257860171695470403

`A016272(n)*A301669(A167614(n+1))`
-/

namespace A301664.P5257860171695470403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 n * A301669 (A167614 (n + 1)).toNat

end

end A301664.P5257860171695470403

/-! ## A301664.P6047305873987302559

`gcd(A151933(n), A301669(A167614(n+1)))`
-/

namespace A301664.P6047305873987302559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A301669 (A167614 (n + 1)).toNat)

end

end A301664.P6047305873987302559

/-!
# A301665: Number of nX4 0..1 arrays with every element equal to 1, 2 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301665, there is no canonical definition to state claims against.
-/

/-! ## A301665.P9757515365628693721

`A301669(A141214(n)+7)`
-/

namespace A301665.P9757515365628693721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A141214 n + 7).toNat

end

end A301665.P9757515365628693721

/-! ## A301665.P10849970556123082232

`A301669(A052905(n)+9)`
-/

namespace A301665.P10849970556123082232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A052905 n + 9).toNat

end

end A301665.P10849970556123082232

/-! ## A301665.P7761989771298627362

`A301669(A055999(n)+10)`
-/

namespace A301665.P7761989771298627362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A055999 n + 10).toNat

end

end A301665.P7761989771298627362

/-! ## A301665.P7822937975084462142

`A301669(A167614(n+2)+1)`
-/

namespace A301665.P7822937975084462142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A167614 (n + 2) + 1).toNat

end

end A301665.P7822937975084462142

/-! ## A301665.P14011078057799772471

`A301669(A166136(n+2)-2)`
-/

namespace A301665.P14011078057799772471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A166136 (n + 2) - 2).toNat

end

end A301665.P14011078057799772471

/-!
# A301666: Number of nX5 0..1 arrays with every element equal to 1, 2 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301666, there is no canonical definition to state claims against.
-/

/-! ## A301666.P447803489496569285

`A301669(A167499(n+3))`
-/

namespace A301666.P447803489496569285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A167499 (n + 3)).toNat

end

end A301666.P447803489496569285

/-! ## A301666.P1981286388238165498

`A301669(A000124(n+4)+4)`
-/

namespace A301666.P1981286388238165498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A000124 (n + 4) + 4).toNat

end

end A301666.P1981286388238165498

/-! ## A301666.P13224477847926652947

`A301669(A000217(n+4)+5)`
-/

namespace A301666.P13224477847926652947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A000217 (n + 4) + 5).toNat

end

end A301666.P13224477847926652947

/-! ## A301666.P10950987636323012427

`A301669(A141214(n+1)+8)`
-/

namespace A301666.P10950987636323012427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A141214 (n + 1) + 8).toNat

end

end A301666.P10950987636323012427

/-! ## A301666.P5630013318811062720

`A301669(A374005(n+1))`
-/

namespace A301666.P5630013318811062720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A374005 (n + 1)).toNat

end

end A301666.P5630013318811062720

/-!
# A301667: Number of nX6 0..1 arrays with every element equal to 1, 2 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301667, there is no canonical definition to state claims against.
-/

/-! ## A301667.P2569904193439079239

`A301669(A166136(n+4))`
-/

namespace A301667.P2569904193439079239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A166136 (n + 4)).toNat

end

end A301667.P2569904193439079239

/-! ## A301667.P7443292920141598039

`A301669(A141214(n+2)+9)`
-/

namespace A301667.P7443292920141598039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A141214 (n + 2) + 9).toNat

end

end A301667.P7443292920141598039

/-! ## A301667.P17888373346599962723

`A301669(eq[7, A131818(n+1)])`
-/

namespace A301667.P17888373346599962723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301667.P17888373346599962723

/-! ## A301667.P16984268387246636793

`A301669(A374007(n+1))`
-/

namespace A301667.P16984268387246636793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A374007 (n + 1)).toNat

end

end A301667.P16984268387246636793

/-! ## A301667.P18345903077318742477

`A301669(eq[3, A219347(n)])`
-/

namespace A301667.P18345903077318742477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301667.P18345903077318742477

/-!
# A301668: Number of nX7 0..1 arrays with every element equal to 1, 2 or 4 horizontally or vertically adjacent elements, with upper left element zero.

The programs for A301668, there is no canonical definition to state claims against.
-/

/-! ## A301668.P18113392019487166409

`A301669(A056119(n)+28)`
-/

namespace A301668.P18113392019487166409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A056119 n + 28).toNat

end

end A301668.P18113392019487166409

/-! ## A301668.P7496036615809278744

`A301669(eq[11, A066657(n)])`
-/

namespace A301668.P7496036615809278744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301668.P7496036615809278744

/-! ## A301668.P14629771469619831353

`A301669(A000217(n+6)+7)`
-/

namespace A301668.P14629771469619831353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A000217 (n + 6) + 7).toNat

end

end A301668.P14629771469619831353

/-! ## A301668.P12283705050028158082

`A301669(eq[8, A131818(n+1)])`
-/

namespace A301668.P12283705050028158082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301668.P12283705050028158082

/-! ## A301668.P9459804060223944674

`A301669(A374008(n+1))`
-/

namespace A301668.P9459804060223944674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (A374008 (n + 1)).toNat

end

end A301668.P9459804060223944674

/-!
# A301670: Coordination sequence for node of type V1 in "krr" 2-D tiling (or net).

The programs for A301670, the canonical program `A301670.P109821357532827801` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301670 has offset 0).

The definition of A301670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301670.P109821357532827801

`A008579(n)+A313416(n)-A008706(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A301670

/-- `A008579(n)+A313416(n)-A008706(n)` -/
def P109821357532827801.Spec : Prop :=
  ∀ n, P109821357532827801.a n = A301670 n

theorem P109821357532827801.correct : P109821357532827801.Spec := by
  intro n
  simp only [A301670]

end A301670

/-! ## A301670.P15538207147536656869

`A250122(2*n)+A313416(n)-A008706(n)`
-/

namespace A301670.P15538207147536656869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 (2 * n) + (A313416 n - A008706 n)

end

end A301670.P15538207147536656869

namespace A301670

/-- `A250122(2*n)+A313416(n)-A008706(n)` -/
def P15538207147536656869.Spec : Prop :=
  ∀ n, P15538207147536656869.a n = A301670 n

end A301670

/-! ## A301670.P6763942416742451724

`2*A312914(n)-A310391(n)`
-/

namespace A301670.P6763942416742451724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312914 n - A310391 n

end

end A301670.P6763942416742451724

namespace A301670

/-- `2*A312914(n)-A310391(n)` -/
def P6763942416742451724.Spec : Prop :=
  ∀ n, P6763942416742451724.a n = A301670 n

end A301670

/-! ## A301670.P137920598582591099

`A237514(n+1)+A023416(A113863(n))`
-/

namespace A301670.P137920598582591099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237514 (n + 1) + A023416 (A113863 n).toNat

end

end A301670.P137920598582591099

namespace A301670

/-- `A237514(n+1)+A023416(A113863(n))` -/
def P137920598582591099.Spec : Prop :=
  ∀ n, P137920598582591099.a n = A301670 n

end A301670

/-! ## A301670.P4624741849162693772

`A311356(n)-A325967(4^n+1)`
-/

namespace A301670.P4624741849162693772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 n - A325967 (4 ^ n + 1)

end

end A301670.P4624741849162693772

namespace A301670

/-- `A311356(n)-A325967(4^n+1)` -/
def P4624741849162693772.Spec : Prop :=
  ∀ n, P4624741849162693772.a n = A301670 n

end A301670

/-!
# A301671: Partial sums of A301670.

The programs for A301671, the canonical program `A301671.P6958428925330083920` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301671 has offset 0).

The definition of A301671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301671.P6958428925330083920

`ogf((1+5x+12x^2+19x^3+22x^4+21x^5+16x^6+5x^7+x^8-2x^9)/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301671

/-- `ogf((1+5x+12x^2+19x^3+22x^4+21x^5+16x^6+5x^7+x^8-2x^9)/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))` -/
def P6958428925330083920.Spec : Prop :=
  ∀ n, P6958428925330083920.a n = A301671 n

theorem P6958428925330083920.correct : P6958428925330083920.Spec := by
  intro n
  simp only [A301671]

end A301671

/-! ## A301671.P18213465038880259880

`∑[A301670(n)]`
-/

namespace A301671.P18213465038880259880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301671.P18213465038880259880

namespace A301671

/-- `∑[A301670(n)]` -/
def P18213465038880259880.Spec : Prop :=
  ∀ n, P18213465038880259880.a n = A301671 n

end A301671

/-! ## A301671.P5904148698762986273

`A301670(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301671.P5904148698762986273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301670 n + a (A023443 n).toNat

end

end A301671.P5904148698762986273

namespace A301671

/-- `A301670(n)+a(A023443(n))` -/
def P5904148698762986273.Spec : Prop :=
  ∀ n, P5904148698762986273.a n = A301671 n

end A301671

/-! ## A301671.P5652599521679667632

`∑[A008579(n)+A313416(n)-A008706(n)]`
-/

namespace A301671.P5652599521679667632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + (A313416 n - A008706 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301671.P5652599521679667632

namespace A301671

/-- `∑[A008579(n)+A313416(n)-A008706(n)]` -/
def P5652599521679667632.Spec : Prop :=
  ∀ n, P5652599521679667632.a n = A301671 n

end A301671

/-! ## A301671.P13203593899484806922

`A008580(n)+∑[A313416(n)-A008706(n)]`
-/

namespace A301671.P13203593899484806922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313416 n - A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008580 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301671.P13203593899484806922

namespace A301671

/-- `A008580(n)+∑[A313416(n)-A008706(n)]` -/
def P13203593899484806922.Spec : Prop :=
  ∀ n, P13203593899484806922.a n = A301671 n

end A301671

/-! ## A301671.P14406447636900039220

`∑[A250122(A005843(n))+A313416(n)-A008706(n)]`
-/

namespace A301671.P14406447636900039220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 (A005843 n).toNat + (A313416 n - A008706 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301671.P14406447636900039220

namespace A301671

/-- `∑[A250122(A005843(n))+A313416(n)-A008706(n)]` -/
def P14406447636900039220.Spec : Prop :=
  ∀ n, P14406447636900039220.a n = A301671 n

end A301671

/-!
# A301672: Coordination sequence for node of type V2 in "krr" 2-D tiling (or net).

The programs for A301672, the canonical program `A301672.P11730082666054359426` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301672 has offset 0).

The definition of A301672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2611 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301672.P11730082666054359426

`ceil(abs(1-8*n)/3)+∑[and(2, n)!]-1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301672

/-- `ceil(abs(1-8*n)/3)+∑[and(2, n)!]-1` -/
def P11730082666054359426.Spec : Prop :=
  ∀ n, P11730082666054359426.a n = A301672 n

theorem P11730082666054359426.correct : P11730082666054359426.Spec := by
  intro n
  simp only [A301672]

end A301672

/-! ## A301672.P14182212042541254111

`A301293(n)-floor((n+1)/3)`
-/

namespace A301672.P14182212042541254111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - ⌊(n + 1 : ℚ) / 3⌋

end

end A301672.P14182212042541254111

namespace A301672

/-- `A301293(n)-floor((n+1)/3)` -/
def P14182212042541254111.Spec : Prop :=
  ∀ n, P14182212042541254111.a n = A301672 n

end A301672

/-! ## A301672.P8911786207502360877

`A301298(n)+∑[char[or(2, n)]]-n`
-/

namespace A301672.P8911786207502360877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A301672.P8911786207502360877

namespace A301672

/-- `A301298(n)+∑[char[or(2, n)]]-n` -/
def P8911786207502360877.Spec : Prop :=
  ∀ n, P8911786207502360877.a n = A301672 n

end A301672

/-! ## A301672.P1627597799423217303

`A301298(n)-A004525(n)`
-/

namespace A301672.P1627597799423217303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A004525 n

end

end A301672.P1627597799423217303

namespace A301672

/-- `A301298(n)-A004525(n)` -/
def P1627597799423217303.Spec : Prop :=
  ∀ n, P1627597799423217303.a n = A301672 n

end A301672

/-! ## A301672.P10429341393699694176

`A301298(n)-Δ[A054925(n)]`
-/

namespace A301672.P10429341393699694176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - (f1 (n + 1) - f1 n)

end

end A301672.P10429341393699694176

namespace A301672

/-- `A301298(n)-Δ[A054925(n)]` -/
def P10429341393699694176.Spec : Prop :=
  ∀ n, P10429341393699694176.a n = A301672 n

end A301672

/-! ## A301672.P6656652694925142234

`A047273(n+1)+A008576(n)`
-/

namespace A301672.P6656652694925142234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + A008576 n

end

end A301672.P6656652694925142234

namespace A301672

/-- `A047273(n+1)+A008576(n)` -/
def P6656652694925142234.Spec : Prop :=
  ∀ n, P6656652694925142234.a n = A301672 n

end A301672

/-! ## A301672.P1649215476286479651

`A301729(n)+A047622(n+1)`
-/

namespace A301672.P1649215476286479651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 n + A047622 (n + 1)

end

end A301672.P1649215476286479651

namespace A301672

/-- `A301729(n)+A047622(n+1)` -/
def P1649215476286479651.Spec : Prop :=
  ∀ n, P1649215476286479651.a n = A301672 n

end A301672

/-! ## A301672.P17851928594185921403

`A008576(n)+A004525(3*n)`
-/

namespace A301672.P17851928594185921403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + A004525 (3 * n)

end

end A301672.P17851928594185921403

namespace A301672

/-- `A008576(n)+A004525(3*n)` -/
def P17851928594185921403.Spec : Prop :=
  ∀ n, P17851928594185921403.a n = A301672 n

end A301672

/-! ## A301672.P14584954900832252381

`A004396(n)+A301293(n)-n`
-/

namespace A301672.P14584954900832252381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A301293 n - (n : ℤ))

end

end A301672.P14584954900832252381

namespace A301672

/-- `A004396(n)+A301293(n)-n` -/
def P14584954900832252381.Spec : Prop :=
  ∀ n, P14584954900832252381.a n = A301672 n

end A301672

/-! ## A301672.P3151260552184675873

`A134667(n)+A310511(n)-n`
-/

namespace A301672.P3151260552184675873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A310511 n - (n : ℤ))

end

end A301672.P3151260552184675873

namespace A301672

/-- `A134667(n)+A310511(n)-n` -/
def P3151260552184675873.Spec : Prop :=
  ∀ n, P3151260552184675873.a n = A301672 n

end A301672

/-! ## A301672.P8480020783974381546

`A008576(n)+∑[A021913(n)]+n`
-/

namespace A301672.P8480020783974381546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A301672.P8480020783974381546

namespace A301672

/-- `A008576(n)+∑[A021913(n)]+n` -/
def P8480020783974381546.Spec : Prop :=
  ∀ n, P8480020783974381546.a n = A301672 n

end A301672

/-! ## A301672.P4220359096733423664

`A008576(n)+Δ[A011848(n)]+n`
-/

namespace A301672.P4220359096733423664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A301672.P4220359096733423664

namespace A301672

/-- `A008576(n)+Δ[A011848(n)]+n` -/
def P4220359096733423664.Spec : Prop :=
  ∀ n, P4220359096733423664.a n = A301672 n

end A301672

/-! ## A301672.P8160421572093752469

`A107750(2*n+1)+A004525(3*n)`
-/

namespace A301672.P8160421572093752469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (2 * n + 1) + A004525 (3 * n)

end

end A301672.P8160421572093752469

namespace A301672

/-- `A107750(2*n+1)+A004525(3*n)` -/
def P8160421572093752469.Spec : Prop :=
  ∀ n, P8160421572093752469.a n = A301672 n

end A301672

/-! ## A301672.P16944221844107143692

`(abs(Δ[A032765(n)]-10*n)+1)/2-A004525(n)`
-/

namespace A301672.P16944221844107143692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|f1 (n + 1) - f1 n - (10 * n : ℤ)| + 1 : ℚ) / 2 - (A004525 n : ℚ)

end

end A301672.P16944221844107143692

namespace A301672

/-- `(abs(Δ[A032765(n)]-10*n)+1)/2-A004525(n)` -/
def P16944221844107143692.Spec : Prop :=
  ∀ n, P16944221844107143692.a n = (A301672 n : ℚ)

end A301672

/-! ## A301672.P8696703397046571793

`A008706(n)-A004524(A316316(n))/2`
-/

namespace A301672.P8696703397046571793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008706 n : ℚ) - (A004524 (A316316 n).toNat : ℚ) / 2

end

end A301672.P8696703397046571793

namespace A301672

/-- `A008706(n)-A004524(A316316(n))/2` -/
def P8696703397046571793.Spec : Prop :=
  ∀ n, P8696703397046571793.a n = (A301672 n : ℚ)

end A301672

/-! ## A301672.P10881501682529049268

`A004396(n)+A008574(n)-A004525(n)`
-/

namespace A301672.P10881501682529049268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A008574 n - A004525 n)

end

end A301672.P10881501682529049268

namespace A301672

/-- `A004396(n)+A008574(n)-A004525(n)` -/
def P10881501682529049268.Spec : Prop :=
  ∀ n, P10881501682529049268.a n = A301672 n

end A301672

/-! ## A301672.P1491009954863890245

`A005843(n)+A008576(n)-A004525(n)`
-/

namespace A301672.P1491009954863890245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A008576 n - A004525 n)

end

end A301672.P1491009954863890245

namespace A301672

/-- `A005843(n)+A008576(n)-A004525(n)` -/
def P1491009954863890245.Spec : Prop :=
  ∀ n, P1491009954863890245.a n = A301672 n

end A301672

/-! ## A301672.P7540530011184392698

`A047203(comp[4*n])+A004277(n)+n-A004525(n)`
-/

namespace A301672.P7540530011184392698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A004277 n + (n : ℤ) - A004525 n

end

end A301672.P7540530011184392698

namespace A301672

/-- `A047203(comp[4*n])+A004277(n)+n-A004525(n)` -/
def P7540530011184392698.Spec : Prop :=
  ∀ n, P7540530011184392698.a n = A301672 n

end A301672

/-! ## A301672.P17690949169961586492

`A340709(2*n+1)+record[A001057(n)+n]-A004525(n)`
-/

namespace A301672.P17690949169961586492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340709 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004525 n

end

end A301672.P17690949169961586492

namespace A301672

/-- `A340709(2*n+1)+record[A001057(n)+n]-A004525(n)` -/
def P17690949169961586492.Spec : Prop :=
  ∀ n, P17690949169961586492.a n = A301672 n

end A301672

/-! ## A301672.P5821294721342366153

`A313862(n)-n`
-/

namespace A301672.P5821294721342366153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313862 n - (n : ℤ)

end

end A301672.P5821294721342366153

namespace A301672

/-- `A313862(n)-n` -/
def P5821294721342366153.Spec : Prop :=
  ∀ n, P5821294721342366153.a n = A301672 n

theorem P5821294721342366153.correct : P5821294721342366153.Spec := by
  intro n
  simp only [A301672, Nat.add_sub_cancel, A301672.P5821294721342366153.a, A301672.P11730082666054359426.f1, A301672.P11730082666054359426.a, A313862, A313862.P12592315473871548845.f1, A313862.P12592315473871548845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A301672

/-!
# A301673: Partial sums of A301672.

The programs for A301673, the canonical program `A301673.P12744755956916628729` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301673 has offset 0).

The definition of A301673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301673.P12744755956916628729

`ceil(C(5*n+3, 2)/6)`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301673

/-- `ceil(C(5*n+3, 2)/6)` -/
def P12744755956916628729.Spec : Prop :=
  ∀ n, P12744755956916628729.a n = A301673 n

theorem P12744755956916628729.correct : P12744755956916628729.Spec := by
  intro n
  simp only [A301673]

end A301673

/-! ## A301673.P1465522553924279215

`∑[A301672(n)]`
-/

namespace A301673.P1465522553924279215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301673.P1465522553924279215

namespace A301673

/-- `∑[A301672(n)]` -/
def P1465522553924279215.Spec : Prop :=
  ∀ n, P1465522553924279215.a n = A301673 n

end A301673

/-! ## A301673.P4823538752178909795

`ceil(A061793(n)/6)`
-/

namespace A301673.P4823538752178909795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061793 n : ℚ) / 6⌉

end

end A301673.P4823538752178909795

namespace A301673

/-- `ceil(A061793(n)/6)` -/
def P4823538752178909795.Spec : Prop :=
  ∀ n, P4823538752178909795.a n = A301673 n

end A301673

/-! ## A301673.P7277621154195227076

`round(A164015(n)/6)`
-/

namespace A301673.P7277621154195227076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A164015 n : ℚ) / 6)

end

end A301673.P7277621154195227076

namespace A301673

/-- `round(A164015(n)/6)` -/
def P7277621154195227076.Spec : Prop :=
  ∀ n, P7277621154195227076.a n = A301673 n

end A301673

/-! ## A301673.P4471156974205410888

`ceil(A177059(n)/12)`
-/

namespace A301673.P4471156974205410888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177059 n : ℚ) / 12⌉

end

end A301673.P4471156974205410888

namespace A301673

/-- `ceil(A177059(n)/12)` -/
def P4471156974205410888.Spec : Prop :=
  ∀ n, P4471156974205410888.a n = A301673 n

end A301673

/-! ## A301673.P238311926307326315

`ceil(A152161(n)/48)`
-/

namespace A301673.P238311926307326315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152161 n : ℚ) / 48⌉

end

end A301673.P238311926307326315

namespace A301673

/-- `ceil(A152161(n)/48)` -/
def P238311926307326315.Spec : Prop :=
  ∀ n, P238311926307326315.a n = A301673 n

end A301673

/-! ## A301673.P13959043595665417342

`A281026(n)+A008577(n)`
-/

namespace A301673.P13959043595665417342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + A008577 n

end

end A301673.P13959043595665417342

namespace A301673

/-- `A281026(n)+A008577(n)` -/
def P13959043595665417342.Spec : Prop :=
  ∀ n, P13959043595665417342.a n = A301673 n

end A301673

/-! ## A301673.P7128293973508083371

`A231559(n)+A212978(n)`
-/

namespace A301673.P7128293973508083371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + A212978 n

end

end A301673.P7128293973508083371

namespace A301673

/-- `A231559(n)+A212978(n)` -/
def P7128293973508083371.Spec : Prop :=
  ∀ n, P7128293973508083371.a n = A301673 n

end A301673

/-! ## A301673.P16610697157954752846

`∑[A301293(n)-∑[A022003(n)]]`
-/

namespace A301673.P16610697157954752846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301673.P16610697157954752846

namespace A301673

/-- `∑[A301293(n)-∑[A022003(n)]]` -/
def P16610697157954752846.Spec : Prop :=
  ∀ n, P16610697157954752846.a n = A301673 n

end A301673

/-! ## A301673.P5906828230975970683

`ceil(A234043(n)/A005476(n+1))`
-/

namespace A301673.P5906828230975970683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A234043 n : ℚ) / (A005476 (n + 1) : ℚ)⌉

end

end A301673.P5906828230975970683

namespace A301673

/-- `ceil(A234043(n)/A005476(n+1))` -/
def P5906828230975970683.Spec : Prop :=
  ∀ n, P5906828230975970683.a n = A301673 n

end A301673

/-! ## A301673.P17835576312468012666

`∑[A313862(n)-n]`
-/

namespace A301673.P17835576312468012666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313862 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301673.P17835576312468012666

namespace A301673

/-- `∑[A313862(n)-n]` -/
def P17835576312468012666.Spec : Prop :=
  ∀ n, P17835576312468012666.a n = A301673 n

end A301673

/-! ## A301673.P3735354215688946769

`∑[A315538(n)-(A004525(n)+n)]`
-/

namespace A301673.P3735354215688946769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - (A004525 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301673.P3735354215688946769

namespace A301673

/-- `∑[A315538(n)-(A004525(n)+n)]` -/
def P3735354215688946769.Spec : Prop :=
  ∀ n, P3735354215688946769.a n = A301673 n

end A301673

/-! ## A301673.P5010202647329739046

`A253012(4*n+n+1)`
-/

namespace A301673.P5010202647329739046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 (4 * n + (n + 1))

end

end A301673.P5010202647329739046

namespace A301673

/-- `A253012(4*n+n+1)` -/
def P5010202647329739046.Spec : Prop :=
  ∀ n, P5010202647329739046.a n = A301673 n

end A301673

/-! ## A301673.P16622588080750286224

`A000933(5*n+6)`
-/

namespace A301673.P16622588080750286224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (5 * n + 6)

end

end A301673.P16622588080750286224

namespace A301673

/-- `A000933(5*n+6)` -/
def P16622588080750286224.Spec : Prop :=
  ∀ n, P16622588080750286224.a n = A301673 n

end A301673

/-! ## A301673.P3037309522538625499

`A008615(∑[n])+∑[4*n]+1`
-/

namespace A301673.P3037309522538625499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A301673.P3037309522538625499

namespace A301673

/-- `A008615(∑[n])+∑[4*n]+1` -/
def P3037309522538625499.Spec : Prop :=
  ∀ n, P3037309522538625499.a n = A301673 n

end A301673

/-! ## A301673.P9144621638625178868

`A211703(∑[2*n]+1)`
-/

namespace A301673.P9144621638625178868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301673.P9144621638625178868

namespace A301673

/-- `A211703(∑[2*n]+1)` -/
def P9144621638625178868.Spec : Prop :=
  ∀ n, P9144621638625178868.a n = A301673 n

end A301673

/-!
# A301674: Coordination sequence for node of type V1 in "krs" 2-D tiling (or net).

The programs for A301674, the canonical program `A301674.P12695064570512242198` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301674 has offset 0).

The definition of A301674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301674.P12695064570512242198

`ogf((1+5x+12x^2+20x^3+20x^4+18x^5+5x^6+x^7-2x^8)/(1+x-2x^3-2x^4+x^6+x^7))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301674

/-- `ogf((1+5x+12x^2+20x^3+20x^4+18x^5+5x^6+x^7-2x^8)/(1+x-2x^3-2x^4+x^6+x^7))` -/
def P12695064570512242198.Spec : Prop :=
  ∀ n, P12695064570512242198.a n = A301674 n

theorem P12695064570512242198.correct : P12695064570512242198.Spec := by
  intro n
  simp only [A301674]

end A301674

/-! ## A301674.P12060980078719106304

`A296910(n)+2*A087509(n)`
-/

namespace A301674.P12060980078719106304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + 2 * A087509 n

end

end A301674.P12060980078719106304

namespace A301674

/-- `A296910(n)+2*A087509(n)` -/
def P12060980078719106304.Spec : Prop :=
  ∀ n, P12060980078719106304.a n = A301674 n

end A301674

/-! ## A301674.P1764813622814094084

`A296910(n)+A005843(A087509(n))`
-/

namespace A301674.P1764813622814094084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A005843 (A087509 n).toNat

end

end A301674.P1764813622814094084

namespace A301674

/-- `A296910(n)+A005843(A087509(n))` -/
def P1764813622814094084.Spec : Prop :=
  ∀ n, P1764813622814094084.a n = A301674 n

end A301674

/-! ## A301674.P17093838224941687355

`A139544(A265283(n))+2*A087509(n)`
-/

namespace A301674.P17093838224941687355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (A265283 n).toNat + 2 * A087509 n

end

end A301674.P17093838224941687355

namespace A301674

/-- `A139544(A265283(n))+2*A087509(n)` -/
def P17093838224941687355.Spec : Prop :=
  ∀ n, P17093838224941687355.a n = A301674 n

end A301674

/-! ## A301674.P7071853345448197886

`A006369(n)+A296910(n)-A004396(n)`
-/

namespace A301674.P7071853345448197886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n + (A296910 n - A004396 n)

end

end A301674.P7071853345448197886

namespace A301674

/-- `A006369(n)+A296910(n)-A004396(n)` -/
def P7071853345448197886.Spec : Prop :=
  ∀ n, P7071853345448197886.a n = A301674 n

end A301674

/-! ## A301674.P11188680299282592020

`A296910(n)+A301298(n)-A301686(n)`
-/

namespace A301674.P11188680299282592020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + (A301298 n - A301686 n)

end

end A301674.P11188680299282592020

namespace A301674

/-- `A296910(n)+A301298(n)-A301686(n)` -/
def P11188680299282592020.Spec : Prop :=
  ∀ n, P11188680299282592020.a n = A301674 n

end A301674

/-! ## A301674.P7645821501891287139

`A139544(A265283(n))+A005843(A087509(n))`
-/

namespace A301674.P7645821501891287139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (A265283 n).toNat + A005843 (A087509 n).toNat

end

end A301674.P7645821501891287139

namespace A301674

/-- `A139544(A265283(n))+A005843(A087509(n))` -/
def P7645821501891287139.Spec : Prop :=
  ∀ n, P7645821501891287139.a n = A301674 n

end A301674

/-! ## A301674.P705140200869894867

`2*A312729(n)-A312801(n)`
-/

namespace A301674.P705140200869894867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312729 n - A312801 n

end

end A301674.P705140200869894867

namespace A301674

/-- `2*A312729(n)-A312801(n)` -/
def P705140200869894867.Spec : Prop :=
  ∀ n, P705140200869894867.a n = A301674 n

end A301674

/-! ## A301674.P1448941354456229289

`A005843(A312729(n))-A312801(n)`
-/

namespace A301674.P1448941354456229289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312729 n).toNat - A312801 n

end

end A301674.P1448941354456229289

namespace A301674

/-- `A005843(A312729(n))-A312801(n)` -/
def P1448941354456229289.Spec : Prop :=
  ∀ n, P1448941354456229289.a n = A301674 n

end A301674

/-! ## A301674.P4484758770474865110

`A008458(n)+A296910(n)-A315361(n)`
-/

namespace A301674.P4484758770474865110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A296910 n - A315361 n)

end

end A301674.P4484758770474865110

namespace A301674

/-- `A008458(n)+A296910(n)-A315361(n)` -/
def P4484758770474865110.Spec : Prop :=
  ∀ n, P4484758770474865110.a n = A301674 n

end A301674

/-!
# A301675: Partial sums of A301674.

The programs for A301675, the canonical program `A301675.P6765283848545573258` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301675 has offset 0).

The definition of A301675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301675.P6765283848545573258

`∑[A301674(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A301675

/-- `∑[A301674(n)]` -/
def P6765283848545573258.Spec : Prop :=
  ∀ n, P6765283848545573258.a n = A301675 n

theorem P6765283848545573258.correct : P6765283848545573258.Spec := by
  intro n
  simp only [A301675]

end A301675

/-! ## A301675.P17903612932532163239

`A301674(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301675.P17903612932532163239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301674 n + a (A023443 n).toNat

end

end A301675.P17903612932532163239

namespace A301675

/-- `A301674(n)+a(A023443(n))` -/
def P17903612932532163239.Spec : Prop :=
  ∀ n, P17903612932532163239.a n = A301675 n

end A301675

/-! ## A301675.P6224624662151445672

`∑[A296910(n)+2*A087509(n)]`
-/

namespace A301675.P6224624662151445672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + 2 * A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301675.P6224624662151445672

namespace A301675

/-- `∑[A296910(n)+2*A087509(n)]` -/
def P6224624662151445672.Spec : Prop :=
  ∀ n, P6224624662151445672.a n = A301675 n

end A301675

/-! ## A301675.P15029995133823105526

`a(n-1)+A057427(n)*A301674(n)` with `a(0)=1`
-/

namespace A301675.P15029995133823105526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A301674 n

end

end A301675.P15029995133823105526

namespace A301675

/-- `a(n-1)+A057427(n)*A301674(n)` -/
def P15029995133823105526.Spec : Prop :=
  ∀ n, P15029995133823105526.a n = A301675 n

end A301675

/-! ## A301675.P4064808317037674303

`a(n-1)-A057428(n)*A301674(n)` with `a(0)=1`
-/

namespace A301675.P4064808317037674303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 n * A301674 n

end

end A301675.P4064808317037674303

namespace A301675

/-- `a(n-1)-A057428(n)*A301674(n)` -/
def P4064808317037674303.Spec : Prop :=
  ∀ n, P4064808317037674303.a n = A301675 n

end A301675

/-! ## A301675.P13598623248370003551

`∑[A296910(n)+A005843(A087509(n))]`
-/

namespace A301675.P13598623248370003551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A005843 (A087509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301675.P13598623248370003551

namespace A301675

/-- `∑[A296910(n)+A005843(A087509(n))]` -/
def P13598623248370003551.Spec : Prop :=
  ∀ n, P13598623248370003551.a n = A301675 n

end A301675

/-! ## A301675.P1503540530404773221

`∑[A296910(n)+A301298(n)-A301686(n)]`
-/

namespace A301675.P1503540530404773221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + (A301298 n - A301686 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301675.P1503540530404773221

namespace A301675

/-- `∑[A296910(n)+A301298(n)-A301686(n)]` -/
def P1503540530404773221.Spec : Prop :=
  ∀ n, P1503540530404773221.a n = A301675 n

end A301675

/-!
# A301676: Coordination sequence for node of type V2 in "krs" 2-D tiling (or net).

The programs for A301676, the canonical program `A301676.P9311701802383811655` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301676 has offset 0).

The definition of A301676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301676.P9311701802383811655

`ogf((1+4x+8x^2+11x^3+10x^4+6x^5+2x^6-x^7-x^8)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301676

/-- `ogf((1+4x+8x^2+11x^3+10x^4+6x^5+2x^6-x^7-x^8)/(1-2x^3+x^6))` -/
def P9311701802383811655.Spec : Prop :=
  ∀ n, P9311701802383811655.a n = A301676 n

theorem P9311701802383811655.correct : P9311701802383811655.Spec := by
  intro n
  simp only [A301676]

end A301676

/-! ## A301676.P12949450043224111641

`A301722(n)-A186101(n)`
-/

namespace A301676.P12949450043224111641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A186101 n

end

end A301676.P12949450043224111641

namespace A301676

/-- `A301722(n)-A186101(n)` -/
def P12949450043224111641.Spec : Prop :=
  ∀ n, P12949450043224111641.a n = A301676 n

end A301676

/-! ## A301676.P1758390239584408273

`A301722(n)-abs(A255368(n))`
-/

namespace A301676.P1758390239584408273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - |A255368 n|

end

end A301676.P1758390239584408273

namespace A301676

/-- `A301722(n)-abs(A255368(n))` -/
def P1758390239584408273.Spec : Prop :=
  ∀ n, P1758390239584408273.a n = A301676 n

end A301676

/-! ## A301676.P5837137872588070735

`A301722(n)-A002264(A066393(n))`
-/

namespace A301676.P5837137872588070735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A002264 (A066393 n).toNat

end

end A301676.P5837137872588070735

namespace A301676

/-- `A301722(n)-A002264(A066393(n))` -/
def P5837137872588070735.Spec : Prop :=
  ∀ n, P5837137872588070735.a n = A301676 n

end A301676

/-! ## A301676.P5427308808660879276

`A301722(n)-(A087509(n)+A004396(n))`
-/

namespace A301676.P5427308808660879276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - (A087509 n + A004396 n)

end

end A301676.P5427308808660879276

namespace A301676

/-- `A301722(n)-(A087509(n)+A004396(n))` -/
def P5427308808660879276.Spec : Prop :=
  ∀ n, P5427308808660879276.a n = A301676 n

end A301676

/-! ## A301676.P7737097725415102343

`A298786(n)+A301722(n)-A301688(n)`
-/

namespace A301676.P7737097725415102343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + (A301722 n - A301688 n)

end

end A301676.P7737097725415102343

namespace A301676

/-- `A298786(n)+A301722(n)-A301688(n)` -/
def P7737097725415102343.Spec : Prop :=
  ∀ n, P7737097725415102343.a n = A301676 n

end A301676

/-!
# A301677: Partial sums of A301676.

The programs for A301677, the canonical program `A301677.P2251903067479057057` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301677 has offset 0).

The definition of A301677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301677.P2251903067479057057

`∑[A301676(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A301677

/-- `∑[A301676(n)]` -/
def P2251903067479057057.Spec : Prop :=
  ∀ n, P2251903067479057057.a n = A301677 n

theorem P2251903067479057057.correct : P2251903067479057057.Spec := by
  intro n
  simp only [A301677]

end A301677

/-! ## A301677.P5203763594575931389

`A301676(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301677.P5203763594575931389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301676 n + a (A023443 n).toNat

end

end A301677.P5203763594575931389

namespace A301677

/-- `A301676(n)+a(A023443(n))` -/
def P5203763594575931389.Spec : Prop :=
  ∀ n, P5203763594575931389.a n = A301677 n

end A301677

/-! ## A301677.P17234873357421807435

`A301676(A005843(n)-n)+a(n-1)` with `a(0)=1`
-/

namespace A301677.P17234873357421807435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301676 (A005843 n - (n : ℤ)).toNat + a (n - 1)

end

end A301677.P17234873357421807435

namespace A301677

/-- `A301676(A005843(n)-n)+a(n-1)` -/
def P17234873357421807435.Spec : Prop :=
  ∀ n, P17234873357421807435.a n = A301677 n

end A301677

/-! ## A301677.P9866216919581403060

`∑[A301722(n)-A186101(n)]`
-/

namespace A301677.P9866216919581403060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A186101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301677.P9866216919581403060

namespace A301677

/-- `∑[A301722(n)-A186101(n)]` -/
def P9866216919581403060.Spec : Prop :=
  ∀ n, P9866216919581403060.a n = A301677 n

end A301677

/-! ## A301677.P15405815740437170205

`∑[A301722(n)-A002264(A066393(n))]`
-/

namespace A301677.P15405815740437170205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A002264 (A066393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301677.P15405815740437170205

namespace A301677

/-- `∑[A301722(n)-A002264(A066393(n))]` -/
def P15405815740437170205.Spec : Prop :=
  ∀ n, P15405815740437170205.a n = A301677 n

end A301677

/-!
# A301678: Coordination sequence for node of type V1 in "krn" 2-D tiling (or net).

The programs for A301678, the canonical program `A301678.P11503654653203202357` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301678 has offset 0).

The definition of A301678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301678.P11503654653203202357

`ogf((1+4x+6x^2+8x^3+11x^4+10x^5+11x^6+10x^7+6x^8+4x^9+3x^10-2x^12)/(1-x+x^2-x^3-x^7+x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301678

/-- `ogf((1+4x+6x^2+8x^3+11x^4+10x^5+11x^6+10x^7+6x^8+4x^9+3x^10-2x^12)/(1-x+x^2-x^3-x^7+x^8-x^9+x^10))` -/
def P11503654653203202357.Spec : Prop :=
  ∀ n, P11503654653203202357.a n = A301678 n

theorem P11503654653203202357.correct : P11503654653203202357.Spec := by
  intro n
  simp only [A301678]

end A301678

/-! ## A301678.P13799985826604095255

`2*A314050(n)-A314279(n)`
-/

namespace A301678.P13799985826604095255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314050 n - A314279 n

end

end A301678.P13799985826604095255

namespace A301678

/-- `2*A314050(n)-A314279(n)` -/
def P13799985826604095255.Spec : Prop :=
  ∀ n, P13799985826604095255.a n = A301678 n

end A301678

/-! ## A301678.P17032144796566150827

`A005843(A314050(n))-A314279(n)`
-/

namespace A301678.P17032144796566150827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314050 n).toNat - A314279 n

end

end A301678.P17032144796566150827

namespace A301678

/-- `A005843(A314050(n))-A314279(n)` -/
def P17032144796566150827.Spec : Prop :=
  ∀ n, P17032144796566150827.a n = A301678 n

end A301678

/-! ## A301678.P7316871705299160653

`∑[A001221(3^n-a(n-1)+1)+3]` with `a(0)=1`
-/

namespace A301678.P7316871705299160653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001221 ((3 ^ n : ℤ) - f1 (n - 1) + 1).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301678.P7316871705299160653

namespace A301678

/-- `∑[A001221(3^n-a(n-1)+1)+3]` -/
def P7316871705299160653.Spec : Prop :=
  ∀ n, P7316871705299160653.a n = A301678 n

end A301678

/-! ## A301678.P11063742223080236035

`∑[A064547(A141799(n+1))+3]-2`
-/

namespace A301678.P11063742223080236035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A141799 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A301678.P11063742223080236035

namespace A301678

/-- `∑[A064547(A141799(n+1))+3]-2` -/
def P11063742223080236035.Spec : Prop :=
  ∀ n, P11063742223080236035.a n = A301678 n

end A301678

/-!
# A301679: Partial sums of A301678.

The programs for A301679, the canonical program `A301679.P12295568643901170622` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301679 has offset 0).

The definition of A301679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301679.P12295568643901170622

`∑[A301678(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A301679

/-- `∑[A301678(n)]` -/
def P12295568643901170622.Spec : Prop :=
  ∀ n, P12295568643901170622.a n = A301679 n

theorem P12295568643901170622.correct : P12295568643901170622.Spec := by
  intro n
  simp only [A301679]

end A301679

/-! ## A301679.P12104906040159838823

`A301678(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301679.P12104906040159838823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301678 n + a (A023443 n).toNat

end

end A301679.P12104906040159838823

namespace A301679

/-- `A301678(n)+a(A023443(n))` -/
def P12104906040159838823.Spec : Prop :=
  ∀ n, P12104906040159838823.a n = A301679 n

end A301679

/-! ## A301679.P10716490667821934823

`∑[2*A314050(n)-A314279(n)]`
-/

namespace A301679.P10716490667821934823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314050 n - A314279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301679.P10716490667821934823

namespace A301679

/-- `∑[2*A314050(n)-A314279(n)]` -/
def P10716490667821934823.Spec : Prop :=
  ∀ n, P10716490667821934823.a n = A301679 n

end A301679

/-! ## A301679.P18414383692308359051

`A301678(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A301679.P18414383692308359051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301678 n + a (A028310 n - 1).toNat

end

end A301679.P18414383692308359051

namespace A301679

/-- `A301678(n)+a(A028310(n)-1)` -/
def P18414383692308359051.Spec : Prop :=
  ∀ n, P18414383692308359051.a n = A301679 n

end A301679

/-! ## A301679.P15916731517999284701

`a(n-1)+A301678(n)%A301678(n+1)` with `a(0)=1`
-/

namespace A301679.P15916731517999284701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A301678 n) (A301678 (n + 1))

end

end A301679.P15916731517999284701

namespace A301679

/-- `a(n-1)+A301678(n)%A301678(n+1)` -/
def P15916731517999284701.Spec : Prop :=
  ∀ n, P15916731517999284701.a n = A301679 n

end A301679

/-! ## A301679.P16262062401754476963

`A301678(n)+(A001221(A006881(n+1))-1)*a(n-1)` with `a(0)=1`
-/

namespace A301679.P16262062401754476963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301678 n + (A001221 (A006881 (n + 1)).toNat - 1) * a (n - 1)

end

end A301679.P16262062401754476963

namespace A301679

/-- `A301678(n)+(A001221(A006881(n+1))-1)*a(n-1)` -/
def P16262062401754476963.Spec : Prop :=
  ∀ n, P16262062401754476963.a n = A301679 n

end A301679

/-! ## A301679.P12448876207584709190

`A326178(A301678(n)+a(n-1))-1` with `a(0)=1`
-/

namespace A301679.P12448876207584709190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A326178 (A301678 n + a (n - 1)).toNat - 1

end

end A301679.P12448876207584709190

namespace A301679

/-- `A326178(A301678(n)+a(n-1))-1` -/
def P12448876207584709190.Spec : Prop :=
  ∀ n, P12448876207584709190.a n = A301679 n

end A301679

/-!
# A301680: Coordination sequence for node of type V2 in "krn" 2-D tiling (or net).

The programs for A301680, the canonical program `A301680.P14414013463033163471` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301680 has offset 0).

The definition of A301680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301680.P14414013463033163471

`ogf((1+3x+5x^2+6x^3+5x^4+6x^5+6x^6+3x^7+x^8+x^9-x^11)/(1-x-x^7+x^8))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301680

/-- `ogf((1+3x+5x^2+6x^3+5x^4+6x^5+6x^6+3x^7+x^8+x^9-x^11)/(1-x-x^7+x^8))` -/
def P14414013463033163471.Spec : Prop :=
  ∀ n, P14414013463033163471.a n = A301680 n

theorem P14414013463033163471.correct : P14414013463033163471.Spec := by
  intro n
  simp only [A301680]

end A301680

/-! ## A301680.P14799534742576707918

`A310503(n)-A063524(A004526(n))`
-/

namespace A301680.P14799534742576707918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A063524 (A004526 n).toNat

end

end A301680.P14799534742576707918

namespace A301680

/-- `A310503(n)-A063524(A004526(n))` -/
def P14799534742576707918.Spec : Prop :=
  ∀ n, P14799534742576707918.a n = A301680 n

end A301680

/-! ## A301680.P11364550992695576449

`A310503(n)-A014707(A053644(n))`
-/

namespace A301680.P11364550992695576449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A014707 (A053644 n).toNat

end

end A301680.P11364550992695576449

namespace A301680

/-- `A310503(n)-A014707(A053644(n))` -/
def P11364550992695576449.Spec : Prop :=
  ∀ n, P11364550992695576449.a n = A301680 n

end A301680

/-! ## A301680.P7223721665189976876

`A310503(n)-A063524(A029923(n))`
-/

namespace A301680.P7223721665189976876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A063524 (A029923 n).toNat

end

end A301680.P7223721665189976876

namespace A301680

/-- `A310503(n)-A063524(A029923(n))` -/
def P7223721665189976876.Spec : Prop :=
  ∀ n, P7223721665189976876.a n = A301680 n

end A301680

/-! ## A301680.P15584827654931550637

`A310503(n)-A064911(A062383(n))`
-/

namespace A301680.P15584827654931550637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A064911 (A062383 n).toNat

end

end A301680.P15584827654931550637

namespace A301680

/-- `A310503(n)-A064911(A062383(n))` -/
def P15584827654931550637.Spec : Prop :=
  ∀ n, P15584827654931550637.a n = A301680 n

end A301680

/-! ## A301680.P5569152561200875418

`A310503(n)-A084928(A070939(n))`
-/

namespace A301680.P5569152561200875418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A084928 (A070939 n).toNat

end

end A301680.P5569152561200875418

namespace A301680

/-- `A310503(n)-A084928(A070939(n))` -/
def P5569152561200875418.Spec : Prop :=
  ∀ n, P5569152561200875418.a n = A301680 n

end A301680

/-! ## A301680.P3496076902745330270

`A310503(n)+A159075(A259301(n+1))`
-/

namespace A301680.P3496076902745330270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n + A159075 (A259301 (n + 1)).toNat

end

end A301680.P3496076902745330270

namespace A301680

/-- `A310503(n)+A159075(A259301(n+1))` -/
def P3496076902745330270.Spec : Prop :=
  ∀ n, P3496076902745330270.a n = A301680 n

end A301680

/-! ## A301680.P13195223899765771287

`A310503(n)+A159075(A285727(n+1))`
-/

namespace A301680.P13195223899765771287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n + A159075 (A285727 (n + 1)).toNat

end

end A301680.P13195223899765771287

namespace A301680

/-- `A310503(n)+A159075(A285727(n+1))` -/
def P13195223899765771287.Spec : Prop :=
  ∀ n, P13195223899765771287.a n = A301680 n

end A301680

/-! ## A301680.P114428961625134338

`A310503(n)-A000007(A199121(n))`
-/

namespace A301680.P114428961625134338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A000007 (A199121 n).toNat

end

end A301680.P114428961625134338

namespace A301680

/-- `A310503(n)-A000007(A199121(n))` -/
def P114428961625134338.Spec : Prop :=
  ∀ n, P114428961625134338.a n = A301680 n

end A301680

/-! ## A301680.P5162879206718630635

`A310503(n)-A063524(A111660(n))`
-/

namespace A301680.P5162879206718630635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A063524 (A111660 n).toNat

end

end A301680.P5162879206718630635

namespace A301680

/-- `A310503(n)-A063524(A111660(n))` -/
def P5162879206718630635.Spec : Prop :=
  ∀ n, P5162879206718630635.a n = A301680 n

end A301680

/-!
# A301681: Partial sums of A301680.

The programs for A301681, the canonical program `A301681.P1118080530732374064` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301681 has offset 0).

The definition of A301681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301681.P1118080530732374064

`ogf((1+3x+5x^2+6x^3+5x^4+6x^5+6x^6+3x^7+x^8+x^9-x^11)/(1-2x+x^2-x^7+2x^8-x^9))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301681

/-- `ogf((1+3x+5x^2+6x^3+5x^4+6x^5+6x^6+3x^7+x^8+x^9-x^11)/(1-2x+x^2-x^7+2x^8-x^9))` -/
def P1118080530732374064.Spec : Prop :=
  ∀ n, P1118080530732374064.a n = A301681 n

theorem P1118080530732374064.correct : P1118080530732374064.Spec := by
  intro n
  simp only [A301681]

end A301681

/-! ## A301681.P13351959432488104399

`∑[A301680(n)]`
-/

namespace A301681.P13351959432488104399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P13351959432488104399

namespace A301681

/-- `∑[A301680(n)]` -/
def P13351959432488104399.Spec : Prop :=
  ∀ n, P13351959432488104399.a n = A301681 n

end A301681

/-! ## A301681.P17160660068544185573

`A301680(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301681.P17160660068544185573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301680 n + a (A023443 n).toNat

end

end A301681.P17160660068544185573

namespace A301681

/-- `A301680(n)+a(A023443(n))` -/
def P17160660068544185573.Spec : Prop :=
  ∀ n, P17160660068544185573.a n = A301681 n

end A301681

/-! ## A301681.P12187603186063708556

`∑[A310503(n)-A063524(A004526(n))]`
-/

namespace A301681.P12187603186063708556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A063524 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P12187603186063708556

namespace A301681

/-- `∑[A310503(n)-A063524(A004526(n))]` -/
def P12187603186063708556.Spec : Prop :=
  ∀ n, P12187603186063708556.a n = A301681 n

end A301681

/-! ## A301681.P1327863169058938989

`∑[A310503(n)-A014707(A053644(n))]`
-/

namespace A301681.P1327863169058938989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A014707 (A053644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P1327863169058938989

namespace A301681

/-- `∑[A310503(n)-A014707(A053644(n))]` -/
def P1327863169058938989.Spec : Prop :=
  ∀ n, P1327863169058938989.a n = A301681 n

end A301681

/-! ## A301681.P16971713818197785342

`∑[A310503(n)-A063524(A029923(n))]`
-/

namespace A301681.P16971713818197785342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A063524 (A029923 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P16971713818197785342

namespace A301681

/-- `∑[A310503(n)-A063524(A029923(n))]` -/
def P16971713818197785342.Spec : Prop :=
  ∀ n, P16971713818197785342.a n = A301681 n

end A301681

/-! ## A301681.P12748143258680947224

`∑[A310503(n)-A064911(A062383(n))]`
-/

namespace A301681.P12748143258680947224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A064911 (A062383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P12748143258680947224

namespace A301681

/-- `∑[A310503(n)-A064911(A062383(n))]` -/
def P12748143258680947224.Spec : Prop :=
  ∀ n, P12748143258680947224.a n = A301681 n

end A301681

/-! ## A301681.P15963489020811387970

`∑[A310503(n)-A063524(A285727(n+1))]`
-/

namespace A301681.P15963489020811387970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A063524 (A285727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P15963489020811387970

namespace A301681

/-- `∑[A310503(n)-A063524(A285727(n+1))]` -/
def P15963489020811387970.Spec : Prop :=
  ∀ n, P15963489020811387970.a n = A301681 n

end A301681

/-! ## A301681.P2635840512927232890

`∑[A310503(n)-A000007(A199121(n))]`
-/

namespace A301681.P2635840512927232890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A000007 (A199121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P2635840512927232890

namespace A301681

/-- `∑[A310503(n)-A000007(A199121(n))]` -/
def P2635840512927232890.Spec : Prop :=
  ∀ n, P2635840512927232890.a n = A301681 n

end A301681

/-! ## A301681.P3850903946699462789

`∑[A310503(n)-A178333(A111660(n))]`
-/

namespace A301681.P3850903946699462789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A178333 (A111660 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301681.P3850903946699462789

namespace A301681

/-- `∑[A310503(n)-A178333(A111660(n))]` -/
def P3850903946699462789.Spec : Prop :=
  ∀ n, P3850903946699462789.a n = A301681 n

end A301681

/-!
# A301682: Coordination sequence for node of type V1 in "krg" 2-D tiling (or net).

The programs for A301682, the canonical program `A301682.P7092180004668091410` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301682 has offset 0).

The definition of A301682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301682.P7092180004668091410

`ogf((1+6x+6x^2+16x^3+6x^4+6x^5+x^6)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301682

/-- `ogf((1+6x+6x^2+16x^3+6x^4+6x^5+x^6)/(1-2x^3+x^6))` -/
def P7092180004668091410.Spec : Prop :=
  ∀ n, P7092180004668091410.a n = A301682 n

theorem P7092180004668091410.correct : P7092180004668091410.Spec := by
  intro n
  simp only [A301682]

end A301682

/-! ## A301682.P9416316502144073437

`A008458(n-A087509(n))`
-/

namespace A301682.P9416316502144073437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) - A087509 n).toNat

end

end A301682.P9416316502144073437

namespace A301682

/-- `A008458(n-A087509(n))` -/
def P9416316502144073437.Spec : Prop :=
  ∀ n, P9416316502144073437.a n = A301682 n

end A301682

/-! ## A301682.P1096602669687034105

`A008458(n-Δ[A008133(n)])`
-/

namespace A301682.P1096602669687034105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A301682.P1096602669687034105

namespace A301682

/-- `A008458(n-Δ[A008133(n)])` -/
def P1096602669687034105.Spec : Prop :=
  ∀ n, P1096602669687034105.a n = A301682 n

end A301682

/-! ## A301682.P268542884370986644

`A008486(2*(n-A087509(n)))`
-/

namespace A301682.P268542884370986644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * ((n : ℤ) - A087509 n)).toNat

end

end A301682.P268542884370986644

namespace A301682

/-- `A008486(2*(n-A087509(n)))` -/
def P268542884370986644.Spec : Prop :=
  ∀ n, P268542884370986644.a n = A301682 n

end A301682

/-! ## A301682.P7575817407779357658

`A066393(A066393(∑[(n+1)%3])-3)`
-/

namespace A301682.P7575817407779357658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066393 (A066393 (∑ j ∈ Finset.range (n + 1), f1 j) - 3).toNat

end

end A301682.P7575817407779357658

namespace A301682

/-- `A066393(A066393(∑[(n+1)%3])-3)` -/
def P7575817407779357658.Spec : Prop :=
  ∀ n, P7575817407779357658.a n = A301682 n

end A301682

/-! ## A301682.P10949488293884972845

`A074305(n)+A022998(A008576(n))`
-/

namespace A301682.P10949488293884972845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074305 n + A022998 (A008576 n).toNat

end

end A301682.P10949488293884972845

namespace A301682

/-- `A074305(n)+A022998(A008576(n))` -/
def P10949488293884972845.Spec : Prop :=
  ∀ n, P10949488293884972845.a n = A301682 n

end A301682

/-! ## A301682.P17612804320104662157

`A008486(A301686(n)-A008576(n))`
-/

namespace A301682.P17612804320104662157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A301686 n - A008576 n).toNat

end

end A301682.P17612804320104662157

namespace A301682

/-- `A008486(A301686(n)-A008576(n))` -/
def P17612804320104662157.Spec : Prop :=
  ∀ n, P17612804320104662157.a n = A301682 n

end A301682

/-! ## A301682.P9282738020577365817

`A008458(A008706(n)-A301688(n))`
-/

namespace A301682.P9282738020577365817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008706 n - A301688 n).toNat

end

end A301682.P9282738020577365817

namespace A301682

/-- `A008458(A008706(n)-A301688(n))` -/
def P9282738020577365817.Spec : Prop :=
  ∀ n, P9282738020577365817.a n = A301682 n

end A301682

/-! ## A301682.P8508180658674970575

`A008486(A004396(n)*A052901(n))`
-/

namespace A301682.P8508180658674970575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004396 n * A052901 n).toNat

end

end A301682.P8508180658674970575

namespace A301682

/-- `A008486(A004396(n)*A052901(n))` -/
def P8508180658674970575.Spec : Prop :=
  ∀ n, P8508180658674970575.a n = A301682 n

end A301682

/-! ## A301682.P10769348693271592473

`A008486(A004396(n)*A082204(n))`
-/

namespace A301682.P10769348693271592473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004396 n * A082204 n).toNat

end

end A301682.P10769348693271592473

namespace A301682

/-- `A008486(A004396(n)*A082204(n))` -/
def P10769348693271592473.Spec : Prop :=
  ∀ n, P10769348693271592473.a n = A301682 n

end A301682

/-! ## A301682.P13809061333641164226

`A008458(A008587(n)%A301688(n))`
-/

namespace A301682.P13809061333641164226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A008587 n) (A301688 n)).toNat

end

end A301682.P13809061333641164226

namespace A301682

/-- `A008458(A008587(n)%A301688(n))` -/
def P13809061333641164226.Spec : Prop :=
  ∀ n, P13809061333641164226.a n = A301682 n

end A301682

/-! ## A301682.P17206853509407004883

`A008458(A008458(n)-(A301688(n)+n))`
-/

namespace A301682.P17206853509407004883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n - (A301688 n + (n : ℤ))).toNat

end

end A301682.P17206853509407004883

namespace A301682

/-- `A008458(A008458(n)-(A301688(n)+n))` -/
def P17206853509407004883.Spec : Prop :=
  ∀ n, P17206853509407004883.a n = A301682 n

end A301682

/-! ## A301682.P17831310246870562469

`A008458(A008458(n)-n-A301688(n))`
-/

namespace A301682.P17831310246870562469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n - (n : ℤ) - A301688 n).toNat

end

end A301682.P17831310246870562469

namespace A301682

/-- `A008458(A008458(n)-n-A301688(n))` -/
def P17831310246870562469.Spec : Prop :=
  ∀ n, P17831310246870562469.a n = A301682 n

end A301682

/-! ## A301682.P2644775929108276411

`A006368(A301686(n)-A006369(n))`
-/

namespace A301682.P2644775929108276411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A301686 n - A006369 n).toNat

end

end A301682.P2644775929108276411

namespace A301682

/-- `A006368(A301686(n)-A006369(n))` -/
def P2644775929108276411.Spec : Prop :=
  ∀ n, P2644775929108276411.a n = A301682 n

end A301682

/-! ## A301682.P16537315690330632159

`A026430(A301686(n)-A006369(n))`
-/

namespace A301682.P16537315690330632159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A301686 n - A006369 n).toNat

end

end A301682.P16537315690330632159

namespace A301682

/-- `A026430(A301686(n)-A006369(n))` -/
def P16537315690330632159.Spec : Prop :=
  ∀ n, P16537315690330632159.a n = A301682 n

end A301682

/-! ## A301682.P863642587893961212

`A315847(n)-A087509(n)`
-/

namespace A301682.P863642587893961212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315847 n - A087509 n

end

end A301682.P863642587893961212

namespace A301682

/-- `A315847(n)-A087509(n)` -/
def P863642587893961212.Spec : Prop :=
  ∀ n, P863642587893961212.a n = A301682 n

theorem P863642587893961212.correct : P863642587893961212.Spec := by
  intro n
  simp only [A301682, Nat.add_sub_cancel, A301682.P863642587893961212.a, A301682.P7092180004668091410.a, A087509, A087509.P15221340614789788857.a, A315847, A315847.P3242230208927172562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A301682

/-! ## A301682.P7594868648130487528

`A315847(n)-Δ[A008133(n)]`
-/

namespace A301682.P7594868648130487528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315847 n - (f1 (n + 1) - f1 n)

end

end A301682.P7594868648130487528

namespace A301682

/-- `A315847(n)-Δ[A008133(n)]` -/
def P7594868648130487528.Spec : Prop :=
  ∀ n, P7594868648130487528.a n = A301682 n

end A301682

/-! ## A301682.P9345406806425886728

`A006368(A315943(n)-2*n)`
-/

namespace A301682.P9345406806425886728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315943 n - (2 * n : ℤ)).toNat

end

end A301682.P9345406806425886728

namespace A301682

/-- `A006368(A315943(n)-2*n)` -/
def P9345406806425886728.Spec : Prop :=
  ∀ n, P9345406806425886728.a n = A301682 n

end A301682

/-! ## A301682.P17035699324983331398

`A315943(n)-2*A087509(n)`
-/

namespace A301682.P17035699324983331398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n - 2 * A087509 n

end

end A301682.P17035699324983331398

namespace A301682

/-- `A315943(n)-2*A087509(n)` -/
def P17035699324983331398.Spec : Prop :=
  ∀ n, P17035699324983331398.a n = A301682 n

theorem P17035699324983331398.correct : P17035699324983331398.Spec := by
  intro n
  simp only [A301682, Nat.add_sub_cancel, A301682.P17035699324983331398.a, A301682.P7092180004668091410.a, A087509, A087509.P15221340614789788857.a, A315943, A315943.P3704534385650621552.a, A315847, A315847.P3242230208927172562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A301682

/-! ## A301682.P10264869833708729441

`A006368(A315943(n)-n-n)`
-/

namespace A301682.P10264869833708729441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315943 n - (n : ℤ) - (n : ℤ)).toNat

end

end A301682.P10264869833708729441

namespace A301682

/-- `A006368(A315943(n)-n-n)` -/
def P10264869833708729441.Spec : Prop :=
  ∀ n, P10264869833708729441.a n = A301682 n

end A301682

/-!
# A301683: Partial sums of A301682.

The programs for A301683, the canonical program `A301683.P7495434760816574312` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301683 has offset 0).

The definition of A301683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301683.P5139238028141997532

`ogf((1+6x+6x^2+16x^3+6x^4+6x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A301683.P5139238028141997532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 6, 16, 6, 6, 1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A301683.P5139238028141997532

namespace A301683

/-- `ogf((1+6x+6x^2+16x^3+6x^4+6x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P5139238028141997532.Spec : Prop :=
  ∀ n, P5139238028141997532.a n = A301683 n

end A301683

/-! ## A301683.P7495434760816574312

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=7, a(2)=13, a(3)=31, a(4)=49, a(5)=67, a(6)=103`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301683

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P7495434760816574312.Spec : Prop :=
  ∀ n, P7495434760816574312.a n = A301683 n

theorem P7495434760816574312.correct : P7495434760816574312.Spec := by
  intro n
  simp only [A301683]

end A301683

/-! ## A301683.P5370619274346767673

`∑[A301682(n)]`
-/

namespace A301683.P5370619274346767673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301683.P5370619274346767673

namespace A301683

/-- `∑[A301682(n)]` -/
def P5370619274346767673.Spec : Prop :=
  ∀ n, P5370619274346767673.a n = A301683 n

end A301683

/-! ## A301683.P3112938086922714838

`∑[A008458(n-A087509(n))]`
-/

namespace A301683.P3112938086922714838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) - A087509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301683.P3112938086922714838

namespace A301683

/-- `∑[A008458(n-A087509(n))]` -/
def P3112938086922714838.Spec : Prop :=
  ∀ n, P3112938086922714838.a n = A301683 n

end A301683

/-! ## A301683.P13469606920038154024

`A301682(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301683.P13469606920038154024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301682 n + a (A023443 n).toNat

end

end A301683.P13469606920038154024

namespace A301683

/-- `A301682(n)+a(A023443(n))` -/
def P13469606920038154024.Spec : Prop :=
  ∀ n, P13469606920038154024.a n = A301683 n

end A301683

/-! ## A301683.P7248750101122878885

`Δ[A213391(2*n)-A213391(n)]`
-/

namespace A301683.P7248750101122878885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 (2 * n) - A213391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301683.P7248750101122878885

namespace A301683

/-- `Δ[A213391(2*n)-A213391(n)]` -/
def P7248750101122878885.Spec : Prop :=
  ∀ n, P7248750101122878885.a n = A301683 n

end A301683

/-! ## A301683.P2785684232436444423

`∑[A074305(n)+A022998(A008576(n))]`
-/

namespace A301683.P2785684232436444423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074305 n + A022998 (A008576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301683.P2785684232436444423

namespace A301683

/-- `∑[A074305(n)+A022998(A008576(n))]` -/
def P2785684232436444423.Spec : Prop :=
  ∀ n, P2785684232436444423.a n = A301683 n

end A301683

/-! ## A301683.P10151570037114592361

`∑[A006368(A301686(n)-A006369(n))]`
-/

namespace A301683.P10151570037114592361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A301686 n - A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301683.P10151570037114592361

namespace A301683

/-- `∑[A006368(A301686(n)-A006369(n))]` -/
def P10151570037114592361.Spec : Prop :=
  ∀ n, P10151570037114592361.a n = A301683 n

end A301683

/-! ## A301683.P421577081342416131

`∑[A008486(A004396(n)*A052901(n))]`
-/

namespace A301683.P421577081342416131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004396 n * A052901 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301683.P421577081342416131

namespace A301683

/-- `∑[A008486(A004396(n)*A052901(n))]` -/
def P421577081342416131.Spec : Prop :=
  ∀ n, P421577081342416131.a n = A301683 n

end A301683

/-! ## A301683.P5433805737275867350

`∑[A008486(A004396(n)*A082204(n))]`
-/

namespace A301683.P5433805737275867350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004396 n * A082204 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301683.P5433805737275867350

namespace A301683

/-- `∑[A008486(A004396(n)*A082204(n))]` -/
def P5433805737275867350.Spec : Prop :=
  ∀ n, P5433805737275867350.a n = A301683 n

end A301683

/-! ## A301683.P2555685142434970418

`∑[2*A301720(n)-A008458(n)]`
-/

namespace A301683.P2555685142434970418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301720 n - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301683.P2555685142434970418

namespace A301683

/-- `∑[2*A301720(n)-A008458(n)]` -/
def P2555685142434970418.Spec : Prop :=
  ∀ n, P2555685142434970418.a n = A301683 n

end A301683

/-! ## A301683.P2984437223361578950

`∑[A315828(A047222(n+1))]`
-/

namespace A301683.P2984437223361578950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315828 (A047222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301683.P2984437223361578950

namespace A301683

/-- `∑[A315828(A047222(n+1))]` -/
def P2984437223361578950.Spec : Prop :=
  ∀ n, P2984437223361578950.a n = A301683 n

end A301683

/-! ## A301683.P13340602257660988468

`∑[A005843(A301720(n))-A008458(n)]`
-/

namespace A301683.P13340602257660988468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A301720 n).toNat - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301683.P13340602257660988468

namespace A301683

/-- `∑[A005843(A301720(n))-A008458(n)]` -/
def P13340602257660988468.Spec : Prop :=
  ∀ n, P13340602257660988468.a n = A301683 n

end A301683

/-! ## A301683.P781934847717076374

`A016921(∑[n]-A008133(n+1))`
-/

namespace A301683.P781934847717076374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008133 (n + 1)).toNat

end

end A301683.P781934847717076374

namespace A301683

/-- `A016921(∑[n]-A008133(n+1))` -/
def P781934847717076374.Spec : Prop :=
  ∀ n, P781934847717076374.a n = A301683 n

end A301683

/-!
# A301684: Coordination sequence for node of type V2 in "krg" 2-D tiling (or net).

The programs for A301684, the canonical program `A301684.P6749569034287366648` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301684 has offset 0).

The definition of A301684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301684.P6749569034287366648

`ogf((1+3x+4x^2+3x^3+3x^4+2x^6-2x^8)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301684

/-- `ogf((1+3x+4x^2+3x^3+3x^4+2x^6-2x^8)/(1-x-x^3+x^4))` -/
def P6749569034287366648.Spec : Prop :=
  ∀ n, P6749569034287366648.a n = A301684 n

theorem P6749569034287366648.correct : P6749569034287366648.Spec := by
  intro n
  simp only [A301684]

end A301684

/-! ## A301684.P17894265376524551027

`A358138(A321566(n))+A311535(n)`
-/

namespace A301684.P17894265376524551027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358138 (A321566 n).toNat + A311535 n

end

end A301684.P17894265376524551027

namespace A301684

/-- `A358138(A321566(n))+A311535(n)` -/
def P17894265376524551027.Spec : Prop :=
  ∀ n, P17894265376524551027.a n = A301684 n

end A301684

/-! ## A301684.P14427502344722609749

`A008574(n)+2*A087116(A001372(n))`
-/

namespace A301684.P14427502344722609749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A087116 (A001372 n).toNat

end

end A301684.P14427502344722609749

namespace A301684

/-- `A008574(n)+2*A087116(A001372(n))` -/
def P14427502344722609749.Spec : Prop :=
  ∀ n, P14427502344722609749.a n = A301684 n

end A301684

/-! ## A301684.P8282123557817527655

`A311482(n)+A001222(A243786(n+1))`
-/

namespace A301684.P8282123557817527655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311482 n + A001222 (A243786 (n + 1)).toNat

end

end A301684.P8282123557817527655

namespace A301684

/-- `A311482(n)+A001222(A243786(n+1))` -/
def P8282123557817527655.Spec : Prop :=
  ∀ n, P8282123557817527655.a n = A301684 n

end A301684

/-! ## A301684.P17898830857129339198

`A313617(n)-A001221(A002001(n))`
-/

namespace A301684.P17898830857129339198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313617 n - A001221 (A002001 n).toNat

end

end A301684.P17898830857129339198

namespace A301684

/-- `A313617(n)-A001221(A002001(n))` -/
def P17898830857129339198.Spec : Prop :=
  ∀ n, P17898830857129339198.a n = A301684 n

end A301684

/-!
# A301685: Partial sums of A301684.

The programs for A301685, the canonical program `A301685.P2251024389165437265` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301685 has offset 0).

The definition of A301685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301685.P2314346456165567130

`ogf((1+3x+4x^2+3x^3+3x^4+2x^6-2x^8)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A301685.P2314346456165567130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 3, 3, 0, 2, 0, -2] [1, -2, 1, -1, 2, -1] n

end

end A301685.P2314346456165567130

namespace A301685

/-- `ogf((1+3x+4x^2+3x^3+3x^4+2x^6-2x^8)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P2314346456165567130.Spec : Prop :=
  ∀ n, P2314346456165567130.a n = A301685 n

end A301685

/-! ## A301685.P2251024389165437265

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=25, a(4)=43, a(5)=65, a(6)=93, a(7)=127, a(8)=163`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301685

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P2251024389165437265.Spec : Prop :=
  ∀ n, P2251024389165437265.a n = A301685 n

theorem P2251024389165437265.correct : P2251024389165437265.Spec := by
  intro n
  simp only [A301685]

end A301685

/-! ## A301685.P5671605937487281636

`∑[A301684(n)]`
-/

namespace A301685.P5671605937487281636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301685.P5671605937487281636

namespace A301685

/-- `∑[A301684(n)]` -/
def P5671605937487281636.Spec : Prop :=
  ∀ n, P5671605937487281636.a n = A301685 n

end A301685

/-! ## A301685.P4989972315202309267

`A301684(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301685.P4989972315202309267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301684 n + a (A023443 n).toNat

end

end A301685.P4989972315202309267

namespace A301685

/-- `A301684(n)+a(A023443(n))` -/
def P4989972315202309267.Spec : Prop :=
  ∀ n, P4989972315202309267.a n = A301685 n

end A301685

/-! ## A301685.P16924683836663100573

`A301684(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A301685.P16924683836663100573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301684 n + a (A004273 n - (n : ℤ)).toNat

end

end A301685.P16924683836663100573

namespace A301685

/-- `A301684(n)+a(A004273(n)-n)` -/
def P16924683836663100573.Spec : Prop :=
  ∀ n, P16924683836663100573.a n = A301685 n

end A301685

/-! ## A301685.P10076598012422726417

`a(n-1)+A301684(n)%A017041(n)` with `a(0)=1`
-/

namespace A301685.P10076598012422726417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A301684 n) (A017041 n)

end

end A301685.P10076598012422726417

namespace A301685

/-- `a(n-1)+A301684(n)%A017041(n)` -/
def P10076598012422726417.Spec : Prop :=
  ∀ n, P10076598012422726417.a n = A301685 n

end A301685

/-! ## A301685.P4656916645192428730

`A000027(A301684(n)+a(n-1))` with `a(0)=1`
-/

namespace A301685.P4656916645192428730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A301684 n + a (n - 1)).toNat

end

end A301685.P4656916645192428730

namespace A301685

/-- `A000027(A301684(n)+a(n-1))` -/
def P4656916645192428730.Spec : Prop :=
  ∀ n, P4656916645192428730.a n = A301685 n

end A301685

/-! ## A301685.P12684288355592771348

`A301684(n)+(A335447(p?[17*n-5])+1)*a(n-1)` with `a(0)=1`
-/

namespace A301685.P12684288355592771348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301684 n + (A335447 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1) * a (n - 1)

end

end A301685.P12684288355592771348

namespace A301685

/-- `A301684(n)+(A335447(p?[17*n-5])+1)*a(n-1)` -/
def P12684288355592771348.Spec : Prop :=
  ∀ n, P12684288355592771348.a n = A301685 n

end A301685

/-!
# A301686: Coordination sequence for node of type V1 in "krh" 2-D tiling (or net).

The programs for A301686, the canonical program `A301686.P2242756782112576335` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301686 has offset 0).

The definition of A301686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301686.P2242756782112576335

`ogf((1+5x+7x^2+12x^3+7x^4+5x^5+x^6)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301686

/-- `ogf((1+5x+7x^2+12x^3+7x^4+5x^5+x^6)/(1-2x^3+x^6))` -/
def P2242756782112576335.Spec : Prop :=
  ∀ n, P2242756782112576335.a n = A301686 n

theorem P2242756782112576335.correct : P2242756782112576335.Spec := by
  intro n
  simp only [A301686]

end A301686

/-! ## A301686.P6137233588435718106

`A301694(n)-round((lcm(3, n)+n)/3)`
-/

namespace A301686.P6137233588435718106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3)

end

end A301686.P6137233588435718106

namespace A301686

/-- `A301694(n)-round((lcm(3, n)+n)/3)` -/
def P6137233588435718106.Spec : Prop :=
  ∀ n, P6137233588435718106.a n = A301686 n

end A301686

/-! ## A301686.P2967559958520388304

`A301694(n)-A006369(n)`
-/

namespace A301686.P2967559958520388304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A006369 n

end

end A301686.P2967559958520388304

namespace A301686

/-- `A301694(n)-A006369(n)` -/
def P2967559958520388304.Spec : Prop :=
  ∀ n, P2967559958520388304.a n = A301686 n

end A301686

/-! ## A301686.P8507218022111170085

`A298784(n)+A022998(A004396(n))`
-/

namespace A301686.P8507218022111170085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + A022998 (A004396 n).toNat

end

end A301686.P8507218022111170085

namespace A301686

/-- `A298784(n)+A022998(A004396(n))` -/
def P8507218022111170085.Spec : Prop :=
  ∀ n, P8507218022111170085.a n = A301686 n

end A301686

/-! ## A301686.P8221455387285007537

`A008486(A047222(n+1))-A051176(n)`
-/

namespace A301686.P8221455387285007537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047222 (n + 1)).toNat - A051176 n

end

end A301686.P8221455387285007537

namespace A301686

/-- `A008486(A047222(n+1))-A051176(n)` -/
def P8221455387285007537.Spec : Prop :=
  ∀ n, P8221455387285007537.a n = A301686 n

end A301686

/-! ## A301686.P9141241431624525134

`A301694(n)-A026741(A042965(n+1))`
-/

namespace A301686.P9141241431624525134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A026741 (A042965 (n + 1)).toNat

end

end A301686.P9141241431624525134

namespace A301686

/-- `A301694(n)-A026741(A042965(n+1))` -/
def P9141241431624525134.Spec : Prop :=
  ∀ n, P9141241431624525134.a n = A301686 n

end A301686

/-! ## A301686.P5713067460952848699

`A022998(A008576(n)-A006369(n))+A006369(n)`
-/

namespace A301686.P5713067460952848699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A008576 n - A006369 n).toNat + A006369 n

end

end A301686.P5713067460952848699

namespace A301686

/-- `A022998(A008576(n)-A006369(n))+A006369(n)` -/
def P5713067460952848699.Spec : Prop :=
  ∀ n, P5713067460952848699.a n = A301686 n

end A301686

/-! ## A301686.P4615634665910846675

`A296910(n)+A301298(n)-A301674(n)`
-/

namespace A301686.P4615634665910846675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + (A301298 n - A301674 n)

end

end A301686.P4615634665910846675

namespace A301686

/-- `A296910(n)+A301298(n)-A301674(n)` -/
def P4615634665910846675.Spec : Prop :=
  ∀ n, P4615634665910846675.a n = A301686 n

end A301686

/-! ## A301686.P5847025461512738003

`A315907(n)-A102899(n)`
-/

namespace A301686.P5847025461512738003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315907 n - A102899 n

end

end A301686.P5847025461512738003

namespace A301686

/-- `A315907(n)-A102899(n)` -/
def P5847025461512738003.Spec : Prop :=
  ∀ n, P5847025461512738003.a n = A301686 n

end A301686

/-! ## A301686.P6596293546627897124

`A004396(n)+A004396(A301720(n))`
-/

namespace A301686.P6596293546627897124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A301720 n).toNat

end

end A301686.P6596293546627897124

namespace A301686

/-- `A004396(n)+A004396(A301720(n))` -/
def P6596293546627897124.Spec : Prop :=
  ∀ n, P6596293546627897124.a n = A301686 n

end A301686

/-! ## A301686.P11113353198088419202

`A004396(A301720(n)+n)`
-/

namespace A301686.P11113353198088419202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301720 n + (n : ℤ)).toNat

end

end A301686.P11113353198088419202

namespace A301686

/-- `A004396(A301720(n)+n)` -/
def P11113353198088419202.Spec : Prop :=
  ∀ n, P11113353198088419202.a n = A301686 n

end A301686

/-! ## A301686.P3951269165266579876

`A274616(A301720(n)+n)`
-/

namespace A301686.P3951269165266579876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A301720 n + (n : ℤ)).toNat

end

end A301686.P3951269165266579876

namespace A301686

/-- `A274616(A301720(n)+n)` -/
def P3951269165266579876.Spec : Prop :=
  ∀ n, P3951269165266579876.a n = A301686 n

end A301686

/-! ## A301686.P3866135034246359224

`A313524(2*n)+A219529(n+1)-A219529(2*n+1)`
-/

namespace A301686.P3866135034246359224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313524 (2 * n) + (A219529 (n + 1) - A219529 (2 * n + 1))

end

end A301686.P3866135034246359224

namespace A301686

/-- `A313524(2*n)+A219529(n+1)-A219529(2*n+1)` -/
def P3866135034246359224.Spec : Prop :=
  ∀ n, P3866135034246359224.a n = A301686 n

end A301686

/-! ## A301686.P11551598180433864846

`A004525(A314617(2*n))`
-/

namespace A301686.P11551598180433864846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314617 (2 * n)).toNat

end

end A301686.P11551598180433864846

namespace A301686

/-- `A004525(A314617(2*n))` -/
def P11551598180433864846.Spec : Prop :=
  ∀ n, P11551598180433864846.a n = A301686 n

end A301686

/-! ## A301686.P13989571700466379798

`A004525(A315954(2*n))`
-/

namespace A301686.P13989571700466379798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315954 (2 * n)).toNat

end

end A301686.P13989571700466379798

namespace A301686

/-- `A004525(A315954(2*n))` -/
def P13989571700466379798.Spec : Prop :=
  ∀ n, P13989571700466379798.a n = A301686 n

end A301686

/-!
# A301687: Partial sums of A301686.

The programs for A301687, the canonical program `A301687.P15822228386954195510` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301687 has offset 0).

The definition of A301687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301687.P18024666124381553967

`ogf((1+5x+7x^2+12x^3+7x^4+5x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A301687.P18024666124381553967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 7, 12, 7, 5, 1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A301687.P18024666124381553967

namespace A301687

/-- `ogf((1+5x+7x^2+12x^3+7x^4+5x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P18024666124381553967.Spec : Prop :=
  ∀ n, P18024666124381553967.a n = A301687 n

end A301687

/-! ## A301687.P15822228386954195510

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=6, a(2)=13, a(3)=27, a(4)=44, a(5)=63, a(6)=91`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301687

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P15822228386954195510.Spec : Prop :=
  ∀ n, P15822228386954195510.a n = A301687 n

theorem P15822228386954195510.correct : P15822228386954195510.Spec := by
  intro n
  simp only [A301687]

end A301687

/-! ## A301687.P3279406074755580777

`∑[A301686(n)]`
-/

namespace A301687.P3279406074755580777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301687.P3279406074755580777

namespace A301687

/-- `∑[A301686(n)]` -/
def P3279406074755580777.Spec : Prop :=
  ∀ n, P3279406074755580777.a n = A301687 n

end A301687

/-! ## A301687.P3600511469877917780

`A301686(or(n, char[1]))+a(n-1)` with `a(0)=1`
-/

namespace A301687.P3600511469877917780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301686 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A301687.P3600511469877917780

namespace A301687

/-- `A301686(or(n, char[1]))+a(n-1)` -/
def P3600511469877917780.Spec : Prop :=
  ∀ n, P3600511469877917780.a n = A301687 n

end A301687

/-! ## A301687.P8587516815858599479

`∑[A301694(n)-round((lcm(3, n)+n)/3)]`
-/

namespace A301687.P8587516815858599479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301687.P8587516815858599479

namespace A301687

/-- `∑[A301694(n)-round((lcm(3, n)+n)/3)]` -/
def P8587516815858599479.Spec : Prop :=
  ∀ n, P8587516815858599479.a n = A301687 n

end A301687

/-! ## A301687.P17683618980332029015

`∑[A301694(n)-A006369(n)]`
-/

namespace A301687.P17683618980332029015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301687.P17683618980332029015

namespace A301687

/-- `∑[A301694(n)-A006369(n)]` -/
def P17683618980332029015.Spec : Prop :=
  ∀ n, P17683618980332029015.a n = A301687 n

end A301687

/-! ## A301687.P12652239381221195015

`A301686(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301687.P12652239381221195015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301686 n + a (A023443 n).toNat

end

end A301687.P12652239381221195015

namespace A301687

/-- `A301686(n)+a(A023443(n))` -/
def P12652239381221195015.Spec : Prop :=
  ∀ n, P12652239381221195015.a n = A301687 n

end A301687

/-! ## A301687.P5204453232229495632

`Δ[A087509(n)]+∑[A301688(n)]`
-/

namespace A301687.P5204453232229495632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A301687.P5204453232229495632

namespace A301687

/-- `Δ[A087509(n)]+∑[A301688(n)]` -/
def P5204453232229495632.Spec : Prop :=
  ∀ n, P5204453232229495632.a n = A301687 n

end A301687

/-! ## A301687.P8321957702306452900

`∑[A301694(n)-A026741(A042965(n+1))]`
-/

namespace A301687.P8321957702306452900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A026741 (A042965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301687.P8321957702306452900

namespace A301687

/-- `∑[A301694(n)-A026741(A042965(n+1))]` -/
def P8321957702306452900.Spec : Prop :=
  ∀ n, P8321957702306452900.a n = A301687 n

end A301687

/-! ## A301687.P9458179594437838454

`∑[A004396(n)+A004396(A301720(n))]`
-/

namespace A301687.P9458179594437838454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A301720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301687.P9458179594437838454

namespace A301687

/-- `∑[A004396(n)+A004396(A301720(n))]` -/
def P9458179594437838454.Spec : Prop :=
  ∀ n, P9458179594437838454.a n = A301687 n

end A301687

/-! ## A301687.P8578188796084550964

`∑[A004396(A301720(n)+n)]`
-/

namespace A301687.P8578188796084550964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301720 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301687.P8578188796084550964

namespace A301687

/-- `∑[A004396(A301720(n)+n)]` -/
def P8578188796084550964.Spec : Prop :=
  ∀ n, P8578188796084550964.a n = A301687 n

end A301687

/-! ## A301687.P9283886936801025401

`∑[A274616(A301720(n)+n)]`
-/

namespace A301687.P9283886936801025401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A301720 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301687.P9283886936801025401

namespace A301687

/-- `∑[A274616(A301720(n)+n)]` -/
def P9283886936801025401.Spec : Prop :=
  ∀ n, P9283886936801025401.a n = A301687 n

end A301687

/-!
# A301688: Coordination sequence for node of type V2 in "krh" 2-D tiling (or net).

The programs for A301688, the canonical program `A301688.P2599924838453583834` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301688 has offset 0).

The definition of A301688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301688.P2599924838453583834

`ogf((1+4x+9x^2+10x^3+9x^4+4x^5+x^6)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301688

/-- `ogf((1+4x+9x^2+10x^3+9x^4+4x^5+x^6)/(1-2x^3+x^6))` -/
def P2599924838453583834.Spec : Prop :=
  ∀ n, P2599924838453583834.a n = A301688 n

theorem P2599924838453583834.correct : P2599924838453583834.Spec := by
  intro n
  simp only [A301688]

end A301688

/-! ## A301688.P11995470963021366681

`A008574(n)+A087509(n)`
-/

namespace A301688.P11995470963021366681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A087509 n

end

end A301688.P11995470963021366681

namespace A301688

/-- `A008574(n)+A087509(n)` -/
def P11995470963021366681.Spec : Prop :=
  ∀ n, P11995470963021366681.a n = A301688 n

end A301688

/-! ## A301688.P601025844377880815

`A298788(n)+A091684(n)`
-/

namespace A301688.P601025844377880815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298788 n + A091684 n

end

end A301688.P601025844377880815

namespace A301688

/-- `A298788(n)+A091684(n)` -/
def P601025844377880815.Spec : Prop :=
  ∀ n, P601025844377880815.a n = A301688 n

end A301688

/-! ## A301688.P12407046417789906890

`A298786(n)+A186101(n)`
-/

namespace A301688.P12407046417789906890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A186101 n

end

end A301688.P12407046417789906890

namespace A301688

/-- `A298786(n)+A186101(n)` -/
def P12407046417789906890.Spec : Prop :=
  ∀ n, P12407046417789906890.a n = A301688 n

end A301688

/-! ## A301688.P16114656976407974551

`A298024(n)-A186731(n)`
-/

namespace A301688.P16114656976407974551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A186731 n

end

end A301688.P16114656976407974551

namespace A301688

/-- `A298024(n)-A186731(n)` -/
def P16114656976407974551.Spec : Prop :=
  ∀ n, P16114656976407974551.a n = A301688 n

end A301688

/-! ## A301688.P3690548304773700309

`A008574(n)+Δ[A008133(n)]`
-/

namespace A301688.P3690548304773700309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A301688.P3690548304773700309

namespace A301688

/-- `A008574(n)+Δ[A008133(n)]` -/
def P3690548304773700309.Spec : Prop :=
  ∀ n, P3690548304773700309.a n = A301688 n

end A301688

/-! ## A301688.P17461277899632585295

`A008486(n)+A087509(n)+n`
-/

namespace A301688.P17461277899632585295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A087509 n + (n : ℤ))

end

end A301688.P17461277899632585295

namespace A301688

/-- `A008486(n)+A087509(n)+n` -/
def P17461277899632585295.Spec : Prop :=
  ∀ n, P17461277899632585295.a n = A301688 n

end A301688

/-! ## A301688.P15161249101233506425

`A008706(n)+A087509(n)-n`
-/

namespace A301688.P15161249101233506425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A087509 n - (n : ℤ))

end

end A301688.P15161249101233506425

namespace A301688

/-- `A008706(n)+A087509(n)-n` -/
def P15161249101233506425.Spec : Prop :=
  ∀ n, P15161249101233506425.a n = A301688 n

end A301688

/-! ## A301688.P1693811738361957380

`Δ[A008133(n)]+A008486(n)+n`
-/

namespace A301688.P1693811738361957380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A008486 n + (n : ℤ))

end

end A301688.P1693811738361957380

namespace A301688

/-- `Δ[A008133(n)]+A008486(n)+n` -/
def P1693811738361957380.Spec : Prop :=
  ∀ n, P1693811738361957380.a n = A301688 n

end A301688

/-! ## A301688.P13263490230902217884

`Δ[A008133(n)]+A008706(n)-n`
-/

namespace A301688.P13263490230902217884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A008706 n - (n : ℤ))

end

end A301688.P13263490230902217884

namespace A301688

/-- `Δ[A008133(n)]+A008706(n)-n` -/
def P13263490230902217884.Spec : Prop :=
  ∀ n, P13263490230902217884.a n = A301688 n

end A301688

/-! ## A301688.P4071619415930045317

`A008574(n)+(n+1)%A138189(n)`
-/

namespace A301688.P4071619415930045317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + Int.tmod (n + 1 : ℤ) (A138189 n)

end

end A301688.P4071619415930045317

namespace A301688

/-- `A008574(n)+(n+1)%A138189(n)` -/
def P4071619415930045317.Spec : Prop :=
  ∀ n, P4071619415930045317.a n = A301688 n

end A301688

/-! ## A301688.P2970770144428840745

`A008458(n)+A087509(n)-A005843(n)`
-/

namespace A301688.P2970770144428840745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A087509 n - A005843 n)

end

end A301688.P2970770144428840745

namespace A301688

/-- `A008458(n)+A087509(n)-A005843(n)` -/
def P2970770144428840745.Spec : Prop :=
  ∀ n, P2970770144428840745.a n = A301688 n

end A301688

/-! ## A301688.P6424464685301087524

`A008574(n)+Δ[A002264(n+1)*A002264(n)]`
-/

namespace A301688.P6424464685301087524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) * A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A301688.P6424464685301087524

namespace A301688

/-- `A008574(n)+Δ[A002264(n+1)*A002264(n)]` -/
def P6424464685301087524.Spec : Prop :=
  ∀ n, P6424464685301087524.a n = A301688 n

end A301688

/-! ## A301688.P6235183406968732033

`2*A008706(n)-A315563(n)`
-/

namespace A301688.P6235183406968732033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315563 n

end

end A301688.P6235183406968732033

namespace A301688

/-- `2*A008706(n)-A315563(n)` -/
def P6235183406968732033.Spec : Prop :=
  ∀ n, P6235183406968732033.a n = A301688 n

end A301688

/-! ## A301688.P3179282837055094011

`A008458(n)+A008574(n)-A315563(n)`
-/

namespace A301688.P3179282837055094011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315563 n)

end

end A301688.P3179282837055094011

namespace A301688

/-- `A008458(n)+A008574(n)-A315563(n)` -/
def P3179282837055094011.Spec : Prop :=
  ∀ n, P3179282837055094011.a n = A301688 n

end A301688

/-! ## A301688.P16848956752455082773

`A313230(2*n)+A219529(n+1)-A219529(2*n+1)`
-/

namespace A301688.P16848956752455082773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313230 (2 * n) + (A219529 (n + 1) - A219529 (2 * n + 1))

end

end A301688.P16848956752455082773

namespace A301688

/-- `A313230(2*n)+A219529(n+1)-A219529(2*n+1)` -/
def P16848956752455082773.Spec : Prop :=
  ∀ n, P16848956752455082773.a n = A301688 n

end A301688

/-! ## A301688.P16936044301499362191

`A004277(2*n)+A219529(2*n)-A315419(2*n)`
-/

namespace A301688.P16936044301499362191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (A219529 (2 * n) - A315419 (2 * n))

end

end A301688.P16936044301499362191

namespace A301688

/-- `A004277(2*n)+A219529(2*n)-A315419(2*n)` -/
def P16936044301499362191.Spec : Prop :=
  ∀ n, P16936044301499362191.a n = A301688 n

end A301688

/-!
# A301689: Partial sums of A301688.

The programs for A301689, the canonical program `A301689.P15939208229630308906` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301689 has offset 0).

The definition of A301689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301689.P6370285594284254536

`ogf((1+4x+9x^2+10x^3+9x^4+4x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A301689.P6370285594284254536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 9, 10, 9, 4, 1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A301689.P6370285594284254536

namespace A301689

/-- `ogf((1+4x+9x^2+10x^3+9x^4+4x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P6370285594284254536.Spec : Prop :=
  ∀ n, P6370285594284254536.a n = A301689 n

end A301689

/-! ## A301689.P15939208229630308906

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=26, a(4)=43, a(5)=65, a(6)=89`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301689

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P15939208229630308906.Spec : Prop :=
  ∀ n, P15939208229630308906.a n = A301689 n

theorem P15939208229630308906.correct : P15939208229630308906.Spec := by
  intro n
  simp only [A301689]

end A301689

/-! ## A301689.P961026457371270680

`∑[A301688(n)]`
-/

namespace A301689.P961026457371270680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301689.P961026457371270680

namespace A301689

/-- `∑[A301688(n)]` -/
def P961026457371270680.Spec : Prop :=
  ∀ n, P961026457371270680.a n = A301689 n

end A301689

/-! ## A301689.P14461435499801045597

`A298790(n)+∑[n*n²%3]`
-/

namespace A301689.P14461435499801045597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298790 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A301689.P14461435499801045597

namespace A301689

/-- `A298790(n)+∑[n*n²%3]` -/
def P14461435499801045597.Spec : Prop :=
  ∀ n, P14461435499801045597.a n = A301689 n

end A301689

/-! ## A301689.P3269467531602188355

`∑[A087509(n)]+(n+1)²+n²`
-/

namespace A301689.P3269467531602188355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 + n ^ 2 : ℤ)

end

end A301689.P3269467531602188355

namespace A301689

/-- `∑[A087509(n)]+(n+1)²+n²` -/
def P3269467531602188355.Spec : Prop :=
  ∀ n, P3269467531602188355.a n = A301689 n

end A301689

/-! ## A301689.P6669339261849922773

`(n+1)²+A008133(n+1)+n²`
-/

namespace A301689.P6669339261849922773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A008133 (n + 1) + (n ^ 2 : ℤ))

end

end A301689.P6669339261849922773

namespace A301689

/-- `(n+1)²+A008133(n+1)+n²` -/
def P6669339261849922773.Spec : Prop :=
  ∀ n, P6669339261849922773.a n = A301689 n

end A301689

/-! ## A301689.P16278580131180993357

`A001844(n)+∑[A087509(n)]`
-/

namespace A301689.P16278580131180993357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301689.P16278580131180993357

namespace A301689

/-- `A001844(n)+∑[A087509(n)]` -/
def P16278580131180993357.Spec : Prop :=
  ∀ n, P16278580131180993357.a n = A301689 n

end A301689

/-! ## A301689.P7617003155403005019

`∑[A087509(n)+A008574(n)]`
-/

namespace A301689.P7617003155403005019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301689.P7617003155403005019

namespace A301689

/-- `∑[A087509(n)+A008574(n)]` -/
def P7617003155403005019.Spec : Prop :=
  ∀ n, P7617003155403005019.a n = A301689 n

end A301689

/-! ## A301689.P16928042471783554193

`∑[A298788(n)+A091684(n)]`
-/

namespace A301689.P16928042471783554193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298788 n + A091684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301689.P16928042471783554193

namespace A301689

/-- `∑[A298788(n)+A091684(n)]` -/
def P16928042471783554193.Spec : Prop :=
  ∀ n, P16928042471783554193.a n = A301689 n

end A301689

/-! ## A301689.P2809886513521288386

`A301687(n)-Δ[A087509(n)]`
-/

namespace A301689.P2809886513521288386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301687 n - (f1 (n + 1) - f1 n)

end

end A301689.P2809886513521288386

namespace A301689

/-- `A301687(n)-Δ[A087509(n)]` -/
def P2809886513521288386.Spec : Prop :=
  ∀ n, P2809886513521288386.a n = A301689 n

end A301689

/-! ## A301689.P2852463822545325809

`A008133(n+1)+A001844(n)`
-/

namespace A301689.P2852463822545325809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (n + 1) + A001844 n

end

end A301689.P2852463822545325809

namespace A301689

/-- `A008133(n+1)+A001844(n)` -/
def P2852463822545325809.Spec : Prop :=
  ∀ n, P2852463822545325809.a n = A301689 n

end A301689

/-! ## A301689.P44154747049518761

`∑[A008574(n)+Δ[A008133(n)]]`
-/

namespace A301689.P44154747049518761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301689.P44154747049518761

namespace A301689

/-- `∑[A008574(n)+Δ[A008133(n)]]` -/
def P44154747049518761.Spec : Prop :=
  ∀ n, P44154747049518761.a n = A301689 n

end A301689

/-! ## A301689.P5870962823529689379

`A008133(n+1)+∑[A008574(n)]`
-/

namespace A301689.P5870962823529689379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301689.P5870962823529689379

namespace A301689

/-- `A008133(n+1)+∑[A008574(n)]` -/
def P5870962823529689379.Spec : Prop :=
  ∀ n, P5870962823529689379.a n = A301689 n

end A301689

/-! ## A301689.P8095130210160104190

`A008133(n+1)+Δ[A005900(n)]`
-/

namespace A301689.P8095130210160104190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (n + 1) + (f1 (n + 1) - f1 n)

end

end A301689.P8095130210160104190

namespace A301689

/-- `A008133(n+1)+Δ[A005900(n)]` -/
def P8095130210160104190.Spec : Prop :=
  ∀ n, P8095130210160104190.a n = A301689 n

end A301689

/-! ## A301689.P11111158010732856030

`∑[A008486(n)+A087509(n)+n]`
-/

namespace A301689.P11111158010732856030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A087509 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301689.P11111158010732856030

namespace A301689

/-- `∑[A008486(n)+A087509(n)+n]` -/
def P11111158010732856030.Spec : Prop :=
  ∀ n, P11111158010732856030.a n = A301689 n

end A301689

/-! ## A301689.P17161713853426165733

`Δ[n^3]-(A002378(n)-A008133(n+1))`
-/

namespace A301689.P17161713853426165733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (A002378 n - A008133 (n + 1))

end

end A301689.P17161713853426165733

namespace A301689

/-- `Δ[n^3]-(A002378(n)-A008133(n+1))` -/
def P17161713853426165733.Spec : Prop :=
  ∀ n, P17161713853426165733.a n = A301689 n

end A301689

/-! ## A301689.P10655293777069019464

`A008133(n+1)+A000290(n+1)+A000290(n)`
-/

namespace A301689.P10655293777069019464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (n + 1) + A000290 (n + 1) + A000290 n

end

end A301689.P10655293777069019464

namespace A301689

/-- `A008133(n+1)+A000290(n+1)+A000290(n)` -/
def P10655293777069019464.Spec : Prop :=
  ∀ n, P10655293777069019464.a n = A301689 n

end A301689

/-! ## A301689.P1163167266911843398

`A298791(n)+A004523(∑[n])`
-/

namespace A301689.P1163167266911843398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298791 n + A004523 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301689.P1163167266911843398

namespace A301689

/-- `A298791(n)+A004523(∑[n])` -/
def P1163167266911843398.Spec : Prop :=
  ∀ n, P1163167266911843398.a n = A301689 n

end A301689

/-!
# A301690: Coordination sequence for node of type V1 in "krf" 2-D tiling (or net).

The programs for A301690, the canonical program `A301690.P13699844621476903251` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301690 has offset 0).

The definition of A301690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301690.P13699844621476903251

`ogf((1+6x+6x^2+9x^3+12x^4+16x^5+12x^6+9x^7+6x^8+6x^9+x^10)/(1-2x^5+x^10))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301690

/-- `ogf((1+6x+6x^2+9x^3+12x^4+16x^5+12x^6+9x^7+6x^8+6x^9+x^10)/(1-2x^5+x^10))` -/
def P13699844621476903251.Spec : Prop :=
  ∀ n, P13699844621476903251.a n = A301690 n

theorem P13699844621476903251.correct : P13699844621476903251.Spec := by
  intro n
  simp only [A301690]

end A301690

/-! ## A301690.P1630092406018096562

`A006368(A315832(n)-A047448(n+1))`
-/

namespace A301690.P1630092406018096562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315832 n - A047448 (n + 1)).toNat

end

end A301690.P1630092406018096562

namespace A301690

/-- `A006368(A315832(n)-A047448(n+1))` -/
def P1630092406018096562.Spec : Prop :=
  ∀ n, P1630092406018096562.a n = A301690 n

end A301690

/-! ## A301690.P15493806682649282431

`A032766(A315832(n)-A047448(n+1))`
-/

namespace A301690.P15493806682649282431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A315832 n - A047448 (n + 1)).toNat

end

end A301690.P15493806682649282431

namespace A301690

/-- `A032766(A315832(n)-A047448(n+1))` -/
def P15493806682649282431.Spec : Prop :=
  ∀ n, P15493806682649282431.a n = A301690 n

end A301690

/-! ## A301690.P11802367906605824957

`2*A315832(n)-A315874(n)`
-/

namespace A301690.P11802367906605824957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315832 n - A315874 n

end

end A301690.P11802367906605824957

namespace A301690

/-- `2*A315832(n)-A315874(n)` -/
def P11802367906605824957.Spec : Prop :=
  ∀ n, P11802367906605824957.a n = A301690 n

end A301690

/-! ## A301690.P15401491125256790396

`A315874(n)-A005843(A315874(n)-A315832(n))`
-/

namespace A301690.P15401491125256790396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315874 n - A005843 (A315874 n - A315832 n).toNat

end

end A301690.P15401491125256790396

namespace A301690

/-- `A315874(n)-A005843(A315874(n)-A315832(n))` -/
def P15401491125256790396.Spec : Prop :=
  ∀ n, P15401491125256790396.a n = A301690 n

end A301690

/-! ## A301690.P45564090425134716

`A004277(A315832(n))-A315874(n)`
-/

namespace A301690.P45564090425134716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315832 n).toNat - A315874 n

end

end A301690.P45564090425134716

namespace A301690

/-- `A004277(A315832(n))-A315874(n)` -/
def P45564090425134716.Spec : Prop :=
  ∀ n, P45564090425134716.a n = A301690 n

end A301690

/-! ## A301690.P503031602068527065

`A315959(n)-A265188(n+1)+n`
-/

namespace A301690.P503031602068527065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315959 n - A265188 (n + 1) + (n : ℤ)

end

end A301690.P503031602068527065

namespace A301690

/-- `A315959(n)-A265188(n+1)+n` -/
def P503031602068527065.Spec : Prop :=
  ∀ n, P503031602068527065.a n = A301690 n

end A301690

/-! ## A301690.P13739035767818057160

`A315213(n)+A315874(n)-A008458(n)`
-/

namespace A301690.P13739035767818057160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n + (A315874 n - A008458 n)

end

end A301690.P13739035767818057160

namespace A301690

/-- `A315213(n)+A315874(n)-A008458(n)` -/
def P13739035767818057160.Spec : Prop :=
  ∀ n, P13739035767818057160.a n = A301690 n

end A301690

/-! ## A301690.P10134426609593690162

`A004525(3*(A315832(n)-A047448(n+1)))`
-/

namespace A301690.P10134426609593690162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * (A315832 n - A047448 (n + 1))).toNat

end

end A301690.P10134426609593690162

namespace A301690

/-- `A004525(3*(A315832(n)-A047448(n+1)))` -/
def P10134426609593690162.Spec : Prop :=
  ∀ n, P10134426609593690162.a n = A301690 n

end A301690

/-!
# A301691: Partial sums of A301690.

The programs for A301691, the canonical program `A301691.P13536912189379203676` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301691 has offset 0).

The definition of A301691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301691.P13536912189379203676

`ogf((1+6x+6x^2+9x^3+12x^4+16x^5+12x^6+9x^7+6x^8+6x^9+x^10)/(1-x-2x^5+2x^6+x^10-x^11))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301691

/-- `ogf((1+6x+6x^2+9x^3+12x^4+16x^5+12x^6+9x^7+6x^8+6x^9+x^10)/(1-x-2x^5+2x^6+x^10-x^11))` -/
def P13536912189379203676.Spec : Prop :=
  ∀ n, P13536912189379203676.a n = A301691 n

theorem P13536912189379203676.correct : P13536912189379203676.Spec := by
  intro n
  simp only [A301691]

end A301691

/-! ## A301691.P10328658122602155112

`∑[A006368(A315832(n)-A047448(n+1))]`
-/

namespace A301691.P10328658122602155112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315832 n - A047448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301691.P10328658122602155112

namespace A301691

/-- `∑[A006368(A315832(n)-A047448(n+1))]` -/
def P10328658122602155112.Spec : Prop :=
  ∀ n, P10328658122602155112.a n = A301691 n

end A301691

/-! ## A301691.P17398436842673999712

`∑[A301690(n)]`
-/

namespace A301691.P17398436842673999712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301691.P17398436842673999712

namespace A301691

/-- `∑[A301690(n)]` -/
def P17398436842673999712.Spec : Prop :=
  ∀ n, P17398436842673999712.a n = A301691 n

end A301691

/-! ## A301691.P6557693447876193528

`A301690(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301691.P6557693447876193528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301690 n + a (A023443 n).toNat

end

end A301691.P6557693447876193528

namespace A301691

/-- `A301690(n)+a(A023443(n))` -/
def P6557693447876193528.Spec : Prop :=
  ∀ n, P6557693447876193528.a n = A301691 n

end A301691

/-! ## A301691.P4311496172579561599

`A301690(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A301691.P4311496172579561599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301690 n + a (A004273 n - (n : ℤ)).toNat

end

end A301691.P4311496172579561599

namespace A301691

/-- `A301690(n)+a(A004273(n)-n)` -/
def P4311496172579561599.Spec : Prop :=
  ∀ n, P4311496172579561599.a n = A301691 n

end A301691

/-! ## A301691.P16018021047372384219

`A301690(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A301691.P16018021047372384219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301690 (A004526 (2 * n)).toNat + a (n - 1)

end

end A301691.P16018021047372384219

namespace A301691

/-- `A301690(A004526(2*n))+a(n-1)` -/
def P16018021047372384219.Spec : Prop :=
  ∀ n, P16018021047372384219.a n = A301691 n

end A301691

/-! ## A301691.P11564140522565599491

`∑[2*A315832(n)-A315874(n)]`
-/

namespace A301691.P11564140522565599491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315832 n - A315874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301691.P11564140522565599491

namespace A301691

/-- `∑[2*A315832(n)-A315874(n)]` -/
def P11564140522565599491.Spec : Prop :=
  ∀ n, P11564140522565599491.a n = A301691 n

end A301691

/-! ## A301691.P11442843349536174630

`∑[A005843(A315832(n))-A315874(n)]`
-/

namespace A301691.P11442843349536174630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315832 n).toNat - A315874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301691.P11442843349536174630

namespace A301691

/-- `∑[A005843(A315832(n))-A315874(n)]` -/
def P11442843349536174630.Spec : Prop :=
  ∀ n, P11442843349536174630.a n = A301691 n

end A301691

/-! ## A301691.P4303805272102013212

`∑[A315959(n)-A265188(n+1)+n]`
-/

namespace A301691.P4303805272102013212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315959 n - A265188 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301691.P4303805272102013212

namespace A301691

/-- `∑[A315959(n)-A265188(n+1)+n]` -/
def P4303805272102013212.Spec : Prop :=
  ∀ n, P4303805272102013212.a n = A301691 n

end A301691

/-!
# A301692: Coordination sequence for node of type V2 in "krf" 2-D tiling (or net).

The programs for A301692, the canonical program `A301692.P17475277274338166617` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301692 has offset 0).

The definition of A301692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301692.P17475277274338166617

`ogf((1+4x+7x^2+9x^3+12x^4+14x^5+13x^6+11x^7+8x^8+5x^9+3x^10-2x^12-x^13)/(1-2x^5+x^10))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301692

/-- `ogf((1+4x+7x^2+9x^3+12x^4+14x^5+13x^6+11x^7+8x^8+5x^9+3x^10-2x^12-x^13)/(1-2x^5+x^10))` -/
def P17475277274338166617.Spec : Prop :=
  ∀ n, P17475277274338166617.a n = A301692 n

theorem P17475277274338166617.correct : P17475277274338166617.Spec := by
  intro n
  simp only [A301692]

end A301692

/-! ## A301692.P7101746773263655137

`A310949(n)+A162781(A027379(n))`
-/

namespace A301692.P7101746773263655137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310949 n + A162781 (A027379 n).toNat

end

end A301692.P7101746773263655137

namespace A301692

/-- `A310949(n)+A162781(A027379(n))` -/
def P7101746773263655137.Spec : Prop :=
  ∀ n, P7101746773263655137.a n = A301692 n

end A301692

/-!
# A301693: Partial sums of A301692.

The programs for A301693, the canonical program `A301693.P5593668716469473714` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301693 has offset 0).

The definition of A301693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301693.P5593668716469473714

`ogf((1+4x+7x^2+9x^3+12x^4+14x^5+13x^6+11x^7+8x^8+5x^9+3x^10-2x^12-x^13)/(1-x-2x^5+2x^6+x^10-x^11))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301693

/-- `ogf((1+4x+7x^2+9x^3+12x^4+14x^5+13x^6+11x^7+8x^8+5x^9+3x^10-2x^12-x^13)/(1-x-2x^5+2x^6+x^10-x^11))` -/
def P5593668716469473714.Spec : Prop :=
  ∀ n, P5593668716469473714.a n = A301693 n

theorem P5593668716469473714.correct : P5593668716469473714.Spec := by
  intro n
  simp only [A301693]

end A301693

/-! ## A301693.P7309338326256117138

`∑[A301692(n)]`
-/

namespace A301693.P7309338326256117138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301693.P7309338326256117138

namespace A301693

/-- `∑[A301692(n)]` -/
def P7309338326256117138.Spec : Prop :=
  ∀ n, P7309338326256117138.a n = A301693 n

end A301693

/-! ## A301693.P16457067458782256056

`A301692(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301693.P16457067458782256056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301692 n + a (A023443 n).toNat

end

end A301693.P16457067458782256056

namespace A301693

/-- `A301692(n)+a(A023443(n))` -/
def P16457067458782256056.Spec : Prop :=
  ∀ n, P16457067458782256056.a n = A301693 n

end A301693

/-! ## A301693.P12024542140103668262

`A301692(n)+a(A289207(n+1))` with `a(0)=1`
-/

namespace A301693.P12024542140103668262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301692 n + a (A289207 (n + 1)).toNat

end

end A301693.P12024542140103668262

namespace A301693

/-- `A301692(n)+a(A289207(n+1))` -/
def P12024542140103668262.Spec : Prop :=
  ∀ n, P12024542140103668262.a n = A301693 n

end A301693

/-! ## A301693.P4952954932129654993

`A301692(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A301693.P4952954932129654993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301692 n + a (A028310 n - 1).toNat

end

end A301693.P4952954932129654993

namespace A301693

/-- `A301692(n)+a(A028310(n)-1)` -/
def P4952954932129654993.Spec : Prop :=
  ∀ n, P4952954932129654993.a n = A301693 n

end A301693

/-! ## A301693.P7585612921428161997

`A301692(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A301693.P7585612921428161997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301692 n + a ((n : ℤ) - A057427 n).toNat

end

end A301693.P7585612921428161997

namespace A301693

/-- `A301692(n)+a(n-A057427(n))` -/
def P7585612921428161997.Spec : Prop :=
  ∀ n, P7585612921428161997.a n = A301693 n

end A301693

/-! ## A301693.P13843517191094393208

`A301692(n)+a(n-A253641(A053743(n)))` with `a(0)=1`
-/

namespace A301693.P13843517191094393208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301692 n + a ((n : ℤ) - A253641 (A053743 n).toNat).toNat

end

end A301693.P13843517191094393208

namespace A301693

/-- `A301692(n)+a(n-A253641(A053743(n)))` -/
def P13843517191094393208.Spec : Prop :=
  ∀ n, P13843517191094393208.a n = A301693 n

end A301693

/-!
# A301694: Expansion of (1 + 5*x + 4*x^2 + 5*x^3 + x^4)/((1 - x)*(1 - x^3)).

The programs for A301694, the canonical program `A301694.P12690927840647688650` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301694 has offset 0).

The definition of A301694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x+4x^2+5x^3+x^4)/(1-x-x^3+x^4))` (program `A301694.P12690927840647688650`, by `A301694.P12690927840647688650.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301694.P12690927840647688650

`ogf((1+5x+4x^2+5x^3+x^4)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301694

/-- `ogf((1+5x+4x^2+5x^3+x^4)/(1-x-x^3+x^4))` -/
def P12690927840647688650.Spec : Prop :=
  ∀ n, P12690927840647688650.a n = A301694 n

theorem P12690927840647688650.correct : P12690927840647688650.Spec := by
  intro n
  simp only [A301694]

end A301694

/-! ## A301694.P7672974030280358101

`a(n-3)+16` with `a(0)=1, a(1)=6, a(2)=10, a(3)=16`
-/

namespace A301694.P7672974030280358101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 10, 16] fun n a =>
  a (n - 3) + 16

end

end A301694.P7672974030280358101

namespace A301694

/-- `a(n-3)+16` -/
def P7672974030280358101.Spec : Prop :=
  ∀ n, (P7672974030280358101.a n : ℤ) = A301694 n

end A301694

/-! ## A301694.P2065161876841234535

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=5, a(2)=4, a(3)=6, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A301694.P2065161876841234535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 4, 6, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301694.P2065161876841234535

namespace A301694

/-- `∑[floor(a(n-3))]` -/
def P2065161876841234535.Spec : Prop :=
  ∀ n, (P2065161876841234535.a n : ℤ) = A301694 n

end A301694

/-! ## A301694.P545848152371841910

`∑[a(n-3)%7]` with `a(0)=1, a(1)=5, a(2)=4, a(3)=6, a(4)=6`
-/

namespace A301694.P545848152371841910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 4, 6, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301694.P545848152371841910

namespace A301694

/-- `∑[a(n-3)%7]` -/
def P545848152371841910.Spec : Prop :=
  ∀ n, (P545848152371841910.a n : ℤ) = A301694 n

end A301694

/-! ## A301694.P17308503437464927949

`A298784(n)+2*n`
-/

namespace A301694.P17308503437464927949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + (2 * n : ℤ)

end

end A301694.P17308503437464927949

namespace A301694

/-- `A298784(n)+2*n` -/
def P17308503437464927949.Spec : Prop :=
  ∀ n, P17308503437464927949.a n = A301694 n

end A301694

/-! ## A301694.P5703756743689584699

`ceil(abs(1-8*n)/3)*A040000(n)`
-/

namespace A301694.P5703756743689584699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉ * A040000 n

end

end A301694.P5703756743689584699

namespace A301694

/-- `ceil(abs(1-8*n)/3)*A040000(n)` -/
def P5703756743689584699.Spec : Prop :=
  ∀ n, P5703756743689584699.a n = A301694 n

end A301694

/-! ## A301694.P16364581290592383026

`ceil(abs(1-8*n)/3)*A040001(2*n)`
-/

namespace A301694.P16364581290592383026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉ * A040001 (2 * n)

end

end A301694.P16364581290592383026

namespace A301694

/-- `ceil(abs(1-8*n)/3)*A040001(2*n)` -/
def P16364581290592383026.Spec : Prop :=
  ∀ n, P16364581290592383026.a n = A301694 n

end A301694

/-! ## A301694.P18063327077936310351

`A301298(n)+A004396(n)`
-/

namespace A301694.P18063327077936310351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004396 n

end

end A301694.P18063327077936310351

namespace A301694

/-- `A301298(n)+A004396(n)` -/
def P18063327077936310351.Spec : Prop :=
  ∀ n, P18063327077936310351.a n = A301694 n

end A301694

/-! ## A301694.P7666023223624971706

`A219529(n)+A102283(n)`
-/

namespace A301694.P7666023223624971706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A102283 n

end

end A301694.P7666023223624971706

namespace A301694

/-- `A219529(n)+A102283(n)` -/
def P7666023223624971706.Spec : Prop :=
  ∀ n, P7666023223624971706.a n = A301694 n

end A301694

/-! ## A301694.P12166243575793625211

`A047342(n+1)+A008486(n)`
-/

namespace A301694.P12166243575793625211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047342 (n + 1) + A008486 n

end

end A301694.P12166243575793625211

namespace A301694

/-- `A047342(n+1)+A008486(n)` -/
def P12166243575793625211.Spec : Prop :=
  ∀ n, P12166243575793625211.a n = A301694 n

end A301694

/-! ## A301694.P3470595337682375444

`A047622(n+1)+A008576(n)`
-/

namespace A301694.P3470595337682375444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047622 (n + 1) + A008576 n

end

end A301694.P3470595337682375444

namespace A301694

/-- `A047622(n+1)+A008576(n)` -/
def P3470595337682375444.Spec : Prop :=
  ∀ n, P3470595337682375444.a n = A301694 n

end A301694

/-! ## A301694.P12314146340007169379

`A168224(n+1)+A168056(n)`
-/

namespace A301694.P12314146340007169379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168224 (n + 1) + A168056 n

end

end A301694.P12314146340007169379

namespace A301694

/-- `A168224(n+1)+A168056(n)` -/
def P12314146340007169379.Spec : Prop :=
  ∀ n, P12314146340007169379.a n = A301694 n

end A301694

/-! ## A301694.P7469364628751038988

`A316317(n)+A047599(n+1)`
-/

namespace A301694.P7469364628751038988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316317 n + A047599 (n + 1)

end

end A301694.P7469364628751038988

namespace A301694

/-- `A316317(n)+A047599(n+1)` -/
def P7469364628751038988.Spec : Prop :=
  ∀ n, P7469364628751038988.a n = A301694 n

theorem P7469364628751038988.correct : P7469364628751038988.Spec := by
  intro n
  simp only [A301694, Nat.add_sub_cancel, A301694.P7469364628751038988.a, A301694.P12690927840647688650.a, A047599, A047599.P7426491099471878681.a, A316317, A316317.P4616381369030779267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A301694

/-! ## A301694.P789488608382380279

`A022144(n)-A047395(n+1)`
-/

namespace A301694.P789488608382380279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047395 (n + 1)

end

end A301694.P789488608382380279

namespace A301694

/-- `A022144(n)-A047395(n+1)` -/
def P789488608382380279.Spec : Prop :=
  ∀ n, P789488608382380279.a n = A301694 n

end A301694

/-! ## A301694.P3267687511590684692

`A047323(n+1)-A112335(n)`
-/

namespace A301694.P3267687511590684692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047323 (n + 1) - A112335 n

end

end A301694.P3267687511590684692

namespace A301694

/-- `A047323(n+1)-A112335(n)` -/
def P3267687511590684692.Spec : Prop :=
  ∀ n, P3267687511590684692.a n = A301694 n

end A301694

/-! ## A301694.P2261128697529998683

`A219529(n)-A057078(n+1)`
-/

namespace A301694.P2261128697529998683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A057078 (n + 1)

end

end A301694.P2261128697529998683

namespace A301694

/-- `A219529(n)-A057078(n+1)` -/
def P2261128697529998683.Spec : Prop :=
  ∀ n, P2261128697529998683.a n = A301694 n

end A301694

/-! ## A301694.P10127644134933106606

`A008574(n)+2*A004396(n)`
-/

namespace A301694.P10127644134933106606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A004396 n

end

end A301694.P10127644134933106606

namespace A301694

/-- `A008574(n)+2*A004396(n)` -/
def P10127644134933106606.Spec : Prop :=
  ∀ n, P10127644134933106606.a n = A301694 n

end A301694

/-! ## A301694.P9699817308523239944

`A310525(n)+2*A134667(n)`
-/

namespace A301694.P9699817308523239944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n + 2 * A134667 n

end

end A301694.P9699817308523239944

namespace A301694

/-- `A310525(n)+2*A134667(n)` -/
def P9699817308523239944.Spec : Prop :=
  ∀ n, P9699817308523239944.a n = A301694 n

end A301694

/-! ## A301694.P15708805726479630871

`(2-A000007(n))*A008576(n)`
-/

namespace A301694.P15708805726479630871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A008576 n

end

end A301694.P15708805726479630871

namespace A301694

/-- `(2-A000007(n))*A008576(n)` -/
def P15708805726479630871.Spec : Prop :=
  ∀ n, P15708805726479630871.a n = A301694 n

end A301694

/-! ## A301694.P5389907565827761638

`2*A301298(n)-A008574(n)`
-/

namespace A301694.P5389907565827761638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301298 n - A008574 n

end

end A301694.P5389907565827761638

namespace A301694

/-- `2*A301298(n)-A008574(n)` -/
def P5389907565827761638.Spec : Prop :=
  ∀ n, P5389907565827761638.a n = A301694 n

end A301694

/-!
# A301695: Expansion of (1 + 5*x + 4*x^2 + 5*x^3 + x^4)/((1 - x)^2*(1 - x^3)).

The programs for A301695, the canonical program `A301695.P9093549460686791775` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301695 has offset 0).

The definition of A301695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x+4x^2+5x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` (program `A301695.P9093549460686791775`, by `A301695.P9093549460686791775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301695.P9093549460686791775

`ogf((1+5x+4x^2+5x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301695

/-- `ogf((1+5x+4x^2+5x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P9093549460686791775.Spec : Prop :=
  ∀ n, P9093549460686791775.a n = A301695 n

theorem P9093549460686791775.correct : P9093549460686791775.Spec := by
  intro n
  simp only [A301695]

end A301695

/-! ## A301695.P17750293384286539485

`(8*n*(n+1)-2*(n-1)²%3+5)/3`
-/

namespace A301695.P17750293384286539485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * n * (n + 1) : ℤ) - 2 * Int.tmod (((n : ℤ) - 1) ^ 2) 3 + 5 : ℚ) / 3

end

end A301695.P17750293384286539485

namespace A301695

/-- `(8*n*(n+1)-2*(n-1)²%3+5)/3` -/
def P17750293384286539485.Spec : Prop :=
  ∀ n, P17750293384286539485.a n = (A301695 n : ℚ)

end A301695

/-! ## A301695.P7032027268742780306

`ceil((∑[16*n]+3)/3)`
-/

namespace A301695.P7032027268742780306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℚ) / 3⌉

end

end A301695.P7032027268742780306

namespace A301695

/-- `ceil((∑[16*n]+3)/3)` -/
def P7032027268742780306.Spec : Prop :=
  ∀ n, P7032027268742780306.a n = A301695 n

end A301695

/-! ## A301695.P14258686219404584156

`∑[a(n-3)+16]` with `a(0)=1, a(1)=6, a(2)=10, a(3)=16`
-/

namespace A301695.P14258686219404584156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 10, 16] fun n f1 =>
  f1 (n - 3) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301695.P14258686219404584156

namespace A301695

/-- `∑[a(n-3)+16]` -/
def P14258686219404584156.Spec : Prop :=
  ∀ n, (P14258686219404584156.a n : ℤ) = A301695 n

end A301695

/-! ## A301695.P16473930132321235681

`or(1, Δ[round((2*n)^3/9)])`
-/

namespace A301695.P16473930132321235681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n) ^ 3 : ℚ) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A301695.P16473930132321235681

namespace A301695

/-- `or(1, Δ[round((2*n)^3/9)])` -/
def P16473930132321235681.Spec : Prop :=
  ∀ n, P16473930132321235681.a n = A301695 n

end A301695

/-! ## A301695.P9868721636516246825

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=5, a(2)=4, a(3)=6, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A301695.P9868721636516246825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 4, 6, 6] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301695.P9868721636516246825

namespace A301695

/-- `∑[∑[floor(a(n-3))]]` -/
def P9868721636516246825.Spec : Prop :=
  ∀ n, (P9868721636516246825.a n : ℤ) = A301695 n

end A301695

/-! ## A301695.P2607611009382304910

`∑[6*n]+1-∑[∑[and(2, n%3)]]`
-/

namespace A301695.P2607611009382304910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A301695.P2607611009382304910

namespace A301695

/-- `∑[6*n]+1-∑[∑[and(2, n%3)]]` -/
def P2607611009382304910.Spec : Prop :=
  ∀ n, P2607611009382304910.a n = A301695 n

end A301695

/-! ## A301695.P3399231745662882023

`∑[A301694(n)]`
-/

namespace A301695.P3399231745662882023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301695.P3399231745662882023

namespace A301695

/-- `∑[A301694(n)]` -/
def P3399231745662882023.Spec : Prop :=
  ∀ n, P3399231745662882023.a n = A301695 n

end A301695

/-! ## A301695.P12000347677551646496

`2*A211480(n)+1`
-/

namespace A301695.P12000347677551646496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211480 n + 1

end

end A301695.P12000347677551646496

namespace A301695

/-- `2*A211480(n)+1` -/
def P12000347677551646496.Spec : Prop :=
  ∀ n, P12000347677551646496.a n = A301695 n

end A301695

/-! ## A301695.P2864606071835009927

`2*A008577(n)-1`
-/

namespace A301695.P2864606071835009927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008577 n - 1

end

end A301695.P2864606071835009927

namespace A301695

/-- `2*A008577(n)-1` -/
def P2864606071835009927.Spec : Prop :=
  ∀ n, P2864606071835009927.a n = A301695 n

end A301695

/-! ## A301695.P7210129331138868578

`∑[2*A008576(n)]-1`
-/

namespace A301695.P7210129331138868578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A301695.P7210129331138868578

namespace A301695

/-- `∑[2*A008576(n)]-1` -/
def P7210129331138868578.Spec : Prop :=
  ∀ n, P7210129331138868578.a n = A301695 n

end A301695

/-! ## A301695.P12695736565913022181

`A398203(n)+(n+1)²`
-/

namespace A301695.P12695736565913022181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398203 n + ((n + 1) ^ 2 : ℤ)

end

end A301695.P12695736565913022181

namespace A301695

/-- `A398203(n)+(n+1)²` -/
def P12695736565913022181.Spec : Prop :=
  ∀ n, P12695736565913022181.a n = A301695 n

end A301695

/-! ## A301695.P4950571023309967706

`∑[A298784(n)+2*n]`
-/

namespace A301695.P4950571023309967706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301695.P4950571023309967706

namespace A301695

/-- `∑[A298784(n)+2*n]` -/
def P4950571023309967706.Spec : Prop :=
  ∀ n, P4950571023309967706.a n = A301695 n

end A301695

/-! ## A301695.P15512747871098082072

`A298785(n)+∑[2*n]`
-/

namespace A301695.P15512747871098082072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298785 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A301695.P15512747871098082072

namespace A301695

/-- `A298785(n)+∑[2*n]` -/
def P15512747871098082072.Spec : Prop :=
  ∀ n, P15512747871098082072.a n = A301695 n

end A301695

/-! ## A301695.P16707266494476253535

`A211480(n)+A008577(n)`
-/

namespace A301695.P16707266494476253535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211480 n + A008577 n

end

end A301695.P16707266494476253535

namespace A301695

/-- `A211480(n)+A008577(n)` -/
def P16707266494476253535.Spec : Prop :=
  ∀ n, P16707266494476253535.a n = A301695 n

end A301695

/-! ## A301695.P18231321056630253781

`A398855(n)+A028387(n)`
-/

namespace A301695.P18231321056630253781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398855 n + A028387 n

end

end A301695.P18231321056630253781

namespace A301695

/-- `A398855(n)+A028387(n)` -/
def P18231321056630253781.Spec : Prop :=
  ∀ n, P18231321056630253781.a n = A301695 n

end A301695

/-! ## A301695.P17411309434164578971

`A301698(n)+A131719(n)`
-/

namespace A301695.P17411309434164578971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301698 n + A131719 n

end

end A301695.P17411309434164578971

namespace A301695

/-- `A301698(n)+A131719(n)` -/
def P17411309434164578971.Spec : Prop :=
  ∀ n, P17411309434164578971.a n = A301695 n

end A301695

/-! ## A301695.P1021740617592897056

`A397983(n)+A212978(n)`
-/

namespace A301695.P1021740617592897056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397983 n + A212978 n

end

end A301695.P1021740617592897056

namespace A301695

/-- `A397983(n)+A212978(n)` -/
def P1021740617592897056.Spec : Prop :=
  ∀ n, P1021740617592897056.a n = A301695 n

end A301695

/-! ## A301695.P14099902517723707949

`A033951(n)-A397982(n)`
-/

namespace A301695.P14099902517723707949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n - A397982 n

end

end A301695.P14099902517723707949

namespace A301695

/-- `A033951(n)-A397982(n)` -/
def P14099902517723707949.Spec : Prop :=
  ∀ n, P14099902517723707949.a n = A301695 n

end A301695

/-! ## A301695.P11408316825341287118

`A064225(n)-A398856(n)`
-/

namespace A301695.P11408316825341287118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - A398856 n

end

end A301695.P11408316825341287118

namespace A301695

/-- `A064225(n)-A398856(n)` -/
def P11408316825341287118.Spec : Prop :=
  ∀ n, P11408316825341287118.a n = A301695 n

end A301695

/-!
# A301696: Partial sums of A219529.

The programs for A301696, the canonical program `A301696.P17925289025801838682` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301696 has offset 0).

The definition of A301696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301696.P4948078402451432428

`ogf((1+4x+6x^2+4x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A301696.P4948078402451432428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 6, 4, 1] [1, -2, 1, -1, 2, -1] n

end

end A301696.P4948078402451432428

namespace A301696

/-- `ogf((1+4x+6x^2+4x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P4948078402451432428.Spec : Prop :=
  ∀ n, P4948078402451432428.a n = A301696 n

end A301696

/-! ## A301696.P2373336780089302009

`(24*n*(n+1)+8+(n+2)%3-(n+1)%3)/9`
-/

namespace A301696.P2373336780089302009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((24 * n * (n + 1) + 8 + (n + 2) % 3 : ℕ) : ℤ) - (((n + 1) % 3 : ℕ) : ℤ) : ℚ) / 9

end

end A301696.P2373336780089302009

namespace A301696

/-- `(24*n*(n+1)+8+(n+2)%3-(n+1)%3)/9` -/
def P2373336780089302009.Spec : Prop :=
  ∀ n, P2373336780089302009.a n = (A301696 n : ℚ)

end A301696

/-! ## A301696.P17925289025801838682

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=33, a(4)=54`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301696

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P17925289025801838682.Spec : Prop :=
  ∀ n, P17925289025801838682.a n = A301696 n

theorem P17925289025801838682.correct : P17925289025801838682.Spec := by
  intro n
  simp only [A301696]

end A301696

/-! ## A301696.P16838789999137560410

`(A131713(n)+8*A028896(n)+8)/9`
-/

namespace A301696.P16838789999137560410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131713 n + 8 * A028896 n + 8 : ℚ) / 9

end

end A301696.P16838789999137560410

namespace A301696

/-- `(A131713(n)+8*A028896(n)+8)/9` -/
def P16838789999137560410.Spec : Prop :=
  ∀ n, P16838789999137560410.a n = (A301696 n : ℚ)

end A301696

/-! ## A301696.P13025807106847631036

`ceil((∑[16*n]+1)/3)`
-/

namespace A301696.P13025807106847631036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 3⌉

end

end A301696.P13025807106847631036

namespace A301696

/-- `ceil((∑[16*n]+1)/3)` -/
def P13025807106847631036.Spec : Prop :=
  ∀ n, P13025807106847631036.a n = A301696 n

end A301696

/-! ## A301696.P6618619551184518864

`∑[a(n-3)+16]` with `a(0)=1, a(1)=5, a(2)=11, a(3)=16`
-/

namespace A301696.P6618619551184518864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 11, 16] fun n f1 =>
  f1 (n - 3) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301696.P6618619551184518864

namespace A301696

/-- `∑[a(n-3)+16]` -/
def P6618619551184518864.Spec : Prop :=
  ∀ n, (P6618619551184518864.a n : ℤ) = A301696 n

end A301696

/-! ## A301696.P10353297001439974845

`round(lcm(2, (2*n+1)²)/3)`
-/

namespace A301696.P10353297001439974845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 ((2 * n + 1) ^ 2) : ℚ) / 3)

end

end A301696.P10353297001439974845

namespace A301696

/-- `round(lcm(2, (2*n+1)²)/3)` -/
def P10353297001439974845.Spec : Prop :=
  ∀ n, P10353297001439974845.a n = A301696 n

end A301696

/-! ## A301696.P9650422138765050702

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=4, a(2)=6, a(3)=5, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A301696.P9650422138765050702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 5, 5] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301696.P9650422138765050702

namespace A301696

/-- `∑[∑[floor(a(n-3))]]` -/
def P9650422138765050702.Spec : Prop :=
  ∀ n, (P9650422138765050702.a n : ℤ) = A301696 n

end A301696

/-! ## A301696.P1274430262070417993

`record[xor(1, n)²]-round((2*n+1)²/3)`
-/

namespace A301696.P1274430262070417993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 3)

end

end A301696.P1274430262070417993

namespace A301696

/-- `record[xor(1, n)²]-round((2*n+1)²/3)` -/
def P1274430262070417993.Spec : Prop :=
  ∀ n, P1274430262070417993.a n = A301696 n

end A301696

/-! ## A301696.P14560393491553293983

`∑[A219529(n)]`
-/

namespace A301696.P14560393491553293983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301696.P14560393491553293983

namespace A301696

/-- `∑[A219529(n)]` -/
def P14560393491553293983.Spec : Prop :=
  ∀ n, P14560393491553293983.a n = A301696 n

end A301696

/-! ## A301696.P4867636408877770277

`∑[A298786(n)+2*n]`
-/

namespace A301696.P4867636408877770277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301696.P4867636408877770277

namespace A301696

/-- `∑[A298786(n)+2*n]` -/
def P4867636408877770277.Spec : Prop :=
  ∀ n, P4867636408877770277.a n = A301696 n

end A301696

/-! ## A301696.P5963680540668436705

`A298787(n)+∑[2*n]`
-/

namespace A301696.P5963680540668436705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298787 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A301696.P5963680540668436705

namespace A301696

/-- `A298787(n)+∑[2*n]` -/
def P5963680540668436705.Spec : Prop :=
  ∀ n, P5963680540668436705.a n = A301696 n

end A301696

/-! ## A301696.P16932642801184904326

`A299255(n)-a(n-1)` with `a(0)=1`
-/

namespace A301696.P16932642801184904326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299255 n - a (n - 1)

end

end A301696.P16932642801184904326

namespace A301696

/-- `A299255(n)-a(n-1)` -/
def P16932642801184904326.Spec : Prop :=
  ∀ n, P16932642801184904326.a n = A301696 n

end A301696

/-! ## A301696.P11206640385893291853

`round((4*A046092(n)+3)/3)`
-/

namespace A301696.P11206640385893291853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * A046092 n + 3 : ℚ) / 3)

end

end A301696.P11206640385893291853

namespace A301696

/-- `round((4*A046092(n)+3)/3)` -/
def P11206640385893291853.Spec : Prop :=
  ∀ n, P11206640385893291853.a n = A301696 n

end A301696

/-! ## A301696.P5617338294356438208

`A014105(n)+A000969(n)`
-/

namespace A301696.P5617338294356438208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + A000969 n

end

end A301696.P5617338294356438208

namespace A301696

/-- `A014105(n)+A000969(n)` -/
def P5617338294356438208.Spec : Prop :=
  ∀ n, P5617338294356438208.a n = A301696 n

end A301696

/-! ## A301696.P11135464653719609505

`A028895(n)+A008748(n)`
-/

namespace A301696.P11135464653719609505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n + A008748 n

end

end A301696.P11135464653719609505

namespace A301696

/-- `A028895(n)+A008748(n)` -/
def P11135464653719609505.Spec : Prop :=
  ∀ n, P11135464653719609505.a n = A301696 n

end A301696

/-! ## A301696.P15137126039712894962

`A398854(n)+A028387(n)`
-/

namespace A301696.P15137126039712894962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398854 n + A028387 n

end

end A301696.P15137126039712894962

namespace A301696

/-- `A398854(n)+A028387(n)` -/
def P15137126039712894962.Spec : Prop :=
  ∀ n, P15137126039712894962.a n = A301696 n

end A301696

/-! ## A301696.P9024615491906483780

`A397982(n)+A212978(n)`
-/

namespace A301696.P9024615491906483780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397982 n + A212978 n

end

end A301696.P9024615491906483780

namespace A301696

/-- `A397982(n)+A212978(n)` -/
def P9024615491906483780.Spec : Prop :=
  ∀ n, P9024615491906483780.a n = A301696 n

end A301696

/-! ## A301696.P11548503678010631489

`A069894(n)-A008577(n)`
-/

namespace A301696.P11548503678010631489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A008577 n

end

end A301696.P11548503678010631489

namespace A301696

/-- `A069894(n)-A008577(n)` -/
def P11548503678010631489.Spec : Prop :=
  ∀ n, P11548503678010631489.a n = A301696 n

end A301696

/-! ## A301696.P7357373296308742780

`A016754(n)-A211480(n)`
-/

namespace A301696.P7357373296308742780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A211480 n

end

end A301696.P7357373296308742780

namespace A301696

/-- `A016754(n)-A211480(n)` -/
def P7357373296308742780.Spec : Prop :=
  ∀ n, P7357373296308742780.a n = A301696 n

end A301696

/-!
# A301697: Coordination sequence for node of type V2 in "krj" 2-D tiling (or net).

The programs for A301697, the canonical program `A301697.P1262726097170798609` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301697 has offset 0).

The definition of A301697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301697.P1262726097170798609

`ogf((1+3x+2x^2+4x^3+2x^4+3x^5+x^6)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301697

/-- `ogf((1+3x+2x^2+4x^3+2x^4+3x^5+x^6)/(1-2x+2x^2-2x^3+2x^4-2x^5+x^6))` -/
def P1262726097170798609.Spec : Prop :=
  ∀ n, P1262726097170798609.a n = A301697 n

theorem P1262726097170798609.correct : P1262726097170798609.Spec := by
  intro n
  simp only [A301697]

end A301697

/-! ## A301697.P10227817958773989918

`A312065(n)+n`
-/

namespace A301697.P10227817958773989918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + (n : ℤ)

end

end A301697.P10227817958773989918

namespace A301697

/-- `A312065(n)+n` -/
def P10227817958773989918.Spec : Prop :=
  ∀ n, P10227817958773989918.a n = A301697 n

end A301697

/-! ## A301697.P14130087515424846907

`A312950(2*n)+n-5*n`
-/

namespace A301697.P14130087515424846907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 (2 * n) + ((n : ℤ) - (5 * n : ℤ))

end

end A301697.P14130087515424846907

namespace A301697

/-- `A312950(2*n)+n-5*n` -/
def P14130087515424846907.Spec : Prop :=
  ∀ n, P14130087515424846907.a n = A301697 n

end A301697

/-! ## A301697.P5543410661860543939

`A315075(n)-floor((2*n+1)/3)+n`
-/

namespace A301697.P5543410661860543939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n - ⌊(2 * n + 1 : ℚ) / 3⌋ + (n : ℤ)

end

end A301697.P5543410661860543939

namespace A301697

/-- `A315075(n)-floor((2*n+1)/3)+n` -/
def P5543410661860543939.Spec : Prop :=
  ∀ n, P5543410661860543939.a n = A301697 n

end A301697

/-! ## A301697.P11420166962554679005

`A313110(n)+A004396(n)`
-/

namespace A301697.P11420166962554679005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A004396 n

end

end A301697.P11420166962554679005

namespace A301697

/-- `A313110(n)+A004396(n)` -/
def P11420166962554679005.Spec : Prop :=
  ∀ n, P11420166962554679005.a n = A301697 n

end A301697

/-! ## A301697.P11850730430989258032

`A313237(n)+A004525(n)`
-/

namespace A301697.P11850730430989258032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + A004525 n

end

end A301697.P11850730430989258032

namespace A301697

/-- `A313237(n)+A004525(n)` -/
def P11850730430989258032.Spec : Prop :=
  ∀ n, P11850730430989258032.a n = A301697 n

end A301697

/-! ## A301697.P1315203872401809261

`A310525(n)+A134667(n)`
-/

namespace A301697.P1315203872401809261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n + A134667 n

end

end A301697.P1315203872401809261

namespace A301697

/-- `A310525(n)+A134667(n)` -/
def P1315203872401809261.Spec : Prop :=
  ∀ n, P1315203872401809261.a n = A301697 n

end A301697

/-! ## A301697.P11634497825109426606

`A301694(n)-A134667(n)`
-/

namespace A301697.P11634497825109426606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A134667 n

end

end A301697.P11634497825109426606

namespace A301697

/-- `A301694(n)-A134667(n)` -/
def P11634497825109426606.Spec : Prop :=
  ∀ n, P11634497825109426606.a n = A301697 n

end A301697

/-! ## A301697.P16193746211520563660

`A315075(n)+∑[A022003(n)]`
-/

namespace A301697.P16193746211520563660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301697.P16193746211520563660

namespace A301697

/-- `A315075(n)+∑[A022003(n)]` -/
def P16193746211520563660.Spec : Prop :=
  ∀ n, P16193746211520563660.a n = A301697 n

end A301697

/-! ## A301697.P16254472803399489515

`A301298(n)+∑[A131735(n)]`
-/

namespace A301697.P16254472803399489515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301697.P16254472803399489515

namespace A301697

/-- `A301298(n)+∑[A131735(n)]` -/
def P16254472803399489515.Spec : Prop :=
  ∀ n, P16254472803399489515.a n = A301697 n

end A301697

/-! ## A301697.P642678605836789583

`A219529(n)-∑[A131736(n)]`
-/

namespace A301697.P642678605836789583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301697.P642678605836789583

namespace A301697

/-- `A219529(n)-∑[A131736(n)]` -/
def P642678605836789583.Spec : Prop :=
  ∀ n, P642678605836789583.a n = A301697 n

end A301697

/-! ## A301697.P18009038879062514685

`A315075(n)+Δ[A130518(n)]`
-/

namespace A301697.P18009038879062514685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + (f1 (n + 1) - f1 n)

end

end A301697.P18009038879062514685

namespace A301697

/-- `A315075(n)+Δ[A130518(n)]` -/
def P18009038879062514685.Spec : Prop :=
  ∀ n, P18009038879062514685.a n = A301697 n

end A301697

/-! ## A301697.P1971399670732012382

`A047513(n+1)+A008574(n)`
-/

namespace A301697.P1971399670732012382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + A008574 n

end

end A301697.P1971399670732012382

namespace A301697

/-- `A047513(n+1)+A008574(n)` -/
def P1971399670732012382.Spec : Prop :=
  ∀ n, P1971399670732012382.a n = A301697 n

end A301697

/-! ## A301697.P5593191491330876365

`A315075(n)+A002264(n+1)`
-/

namespace A301697.P5593191491330876365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + A002264 (n + 1)

end

end A301697.P5593191491330876365

namespace A301697

/-- `A315075(n)+A002264(n+1)` -/
def P5593191491330876365.Spec : Prop :=
  ∀ n, P5593191491330876365.a n = A301697 n

end A301697

/-! ## A301697.P13510765719256784359

`A311806(n)+A047588(n+1)`
-/

namespace A301697.P13510765719256784359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311806 n + A047588 (n + 1)

end

end A301697.P13510765719256784359

namespace A301697

/-- `A311806(n)+A047588(n+1)` -/
def P13510765719256784359.Spec : Prop :=
  ∀ n, P13510765719256784359.a n = A301697 n

end A301697

/-! ## A301697.P8719091799206503244

`(A312655(n)+A008458(n))/2`
-/

namespace A301697.P8719091799206503244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312655 n + A008458 n : ℚ) / 2

end

end A301697.P8719091799206503244

namespace A301697

/-- `(A312655(n)+A008458(n))/2` -/
def P8719091799206503244.Spec : Prop :=
  ∀ n, P8719091799206503244.a n = (A301697 n : ℚ)

end A301697

/-! ## A301697.P15996040488318128993

`A315075(n)+n-A004396(n)`
-/

namespace A301697.P15996040488318128993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + ((n : ℤ) - A004396 n)

end

end A301697.P15996040488318128993

namespace A301697

/-- `A315075(n)+n-A004396(n)` -/
def P15996040488318128993.Spec : Prop :=
  ∀ n, P15996040488318128993.a n = A301697 n

end A301697

/-! ## A301697.P18141621817594879594

`A314953(n)+n-A004525(n)`
-/

namespace A301697.P18141621817594879594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314953 n + ((n : ℤ) - A004525 n)

end

end A301697.P18141621817594879594

namespace A301697

/-- `A314953(n)+n-A004525(n)` -/
def P18141621817594879594.Spec : Prop :=
  ∀ n, P18141621817594879594.a n = A301697 n

end A301697

/-! ## A301697.P7779990276329169075

`A315471(n)-A128834(n)`
-/

namespace A301697.P7779990276329169075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n - A128834 n

end

end A301697.P7779990276329169075

namespace A301697

/-- `A315471(n)-A128834(n)` -/
def P7779990276329169075.Spec : Prop :=
  ∀ n, P7779990276329169075.a n = A301697 n

end A301697

/-! ## A301697.P12764186102833721044

`A315639(n)-A186809(n)`
-/

namespace A301697.P12764186102833721044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315639 n - A186809 n

end

end A301697.P12764186102833721044

namespace A301697

/-- `A315639(n)-A186809(n)` -/
def P12764186102833721044.Spec : Prop :=
  ∀ n, P12764186102833721044.a n = A301697 n

end A301697

/-!
# A301698: Partial sums of A301697.

The programs for A301698, the canonical program `A301698.P13468750925829000288` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301698 has offset 0).

The definition of A301698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301698.P13468750925829000288

`ogf((1+3x+2x^2+4x^3+2x^4+3x^5+x^6)/(1-3x+4x^2-4x^3+4x^4-4x^5+3x^6-x^7))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301698

/-- `ogf((1+3x+2x^2+4x^3+2x^4+3x^5+x^6)/(1-3x+4x^2-4x^3+4x^4-4x^5+3x^6-x^7))` -/
def P13468750925829000288.Spec : Prop :=
  ∀ n, P13468750925829000288.a n = A301698 n

theorem P13468750925829000288.correct : P13468750925829000288.Spec := by
  intro n
  simp only [A301698]

end A301698

/-! ## A301698.P13066370692126818164

`∑[comp[n*and(2, n)]+4*n-1]+1`
-/

namespace A301698.P13066370692126818164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + ((4 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A301698.P13066370692126818164

namespace A301698

/-- `∑[comp[n*and(2, n)]+4*n-1]+1` -/
def P13066370692126818164.Spec : Prop :=
  ∀ n, P13066370692126818164.a n = A301698 n

end A301698

/-! ## A301698.P7882029233513104764

`∑[A047513(n+1)]+(n+1)²+n²`
-/

namespace A301698.P7882029233513104764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 + n ^ 2 : ℤ)

end

end A301698.P7882029233513104764

namespace A301698

/-- `∑[A047513(n+1)]+(n+1)²+n²` -/
def P7882029233513104764.Spec : Prop :=
  ∀ n, P7882029233513104764.a n = A301698 n

end A301698

/-! ## A301698.P3929998993146173575

`A301695(n)-A131719(n)`
-/

namespace A301698.P3929998993146173575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301695 n - A131719 n

end

end A301698.P3929998993146173575

namespace A301698

/-- `A301695(n)-A131719(n)` -/
def P3929998993146173575.Spec : Prop :=
  ∀ n, P3929998993146173575.a n = A301698 n

end A301698

/-! ## A301698.P7331148076150058144

`∑[A301694(n)-A134667(n)]`
-/

namespace A301698.P7331148076150058144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A134667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P7331148076150058144

namespace A301698

/-- `∑[A301694(n)-A134667(n)]` -/
def P7331148076150058144.Spec : Prop :=
  ∀ n, P7331148076150058144.a n = A301698 n

end A301698

/-! ## A301698.P3692380711906096567

`∑[A301298(n)+∑[A131735(n)]]`
-/

namespace A301698.P3692380711906096567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P3692380711906096567

namespace A301698

/-- `∑[A301298(n)+∑[A131735(n)]]` -/
def P3692380711906096567.Spec : Prop :=
  ∀ n, P3692380711906096567.a n = A301698 n

end A301698

/-! ## A301698.P214686779832929567

`∑[A219529(n)-∑[A131736(n)]]`
-/

namespace A301698.P214686779832929567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P214686779832929567

namespace A301698

/-- `∑[A219529(n)-∑[A131736(n)]]` -/
def P214686779832929567.Spec : Prop :=
  ∀ n, P214686779832929567.a n = A301698 n

end A301698

/-! ## A301698.P4217647868043828402

`A001844(n)+∑[A047513(n+1)]`
-/

namespace A301698.P4217647868043828402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P4217647868043828402

namespace A301698

/-- `A001844(n)+∑[A047513(n+1)]` -/
def P4217647868043828402.Spec : Prop :=
  ∀ n, P4217647868043828402.a n = A301698 n

end A301698

/-! ## A301698.P1349603420225140031

`∑[A047513(n+1)+A008574(n)]`
-/

namespace A301698.P1349603420225140031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P1349603420225140031

namespace A301698

/-- `∑[A047513(n+1)+A008574(n)]` -/
def P1349603420225140031.Spec : Prop :=
  ∀ n, P1349603420225140031.a n = A301698 n

end A301698

/-! ## A301698.P4582240530579323730

`∑[A008706(n)+A002264(A030118(n))]`
-/

namespace A301698.P4582240530579323730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A002264 (A030118 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P4582240530579323730

namespace A301698

/-- `∑[A008706(n)+A002264(A030118(n))]` -/
def P4582240530579323730.Spec : Prop :=
  ∀ n, P4582240530579323730.a n = A301698 n

end A301698

/-! ## A301698.P14141537364959012642

`A289233(2*(n+1))+A000217(2*n)`
-/

namespace A301698.P14141537364959012642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289233 (2 * (n + 1)) + A000217 (2 * n)

end

end A301698.P14141537364959012642

namespace A301698

/-- `A289233(2*(n+1))+A000217(2*n)` -/
def P14141537364959012642.Spec : Prop :=
  ∀ n, P14141537364959012642.a n = A301698 n

end A301698

/-! ## A301698.P1277031292898640607

`∑[A312065(n)+n]`
-/

namespace A301698.P1277031292898640607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P1277031292898640607

namespace A301698

/-- `∑[A312065(n)+n]` -/
def P1277031292898640607.Spec : Prop :=
  ∀ n, P1277031292898640607.a n = A301698 n

end A301698

/-! ## A301698.P14708796520894006742

`∑[A315075(n)+∑[A022003(n)]]`
-/

namespace A301698.P14708796520894006742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P14708796520894006742

namespace A301698

/-- `∑[A315075(n)+∑[A022003(n)]]` -/
def P14708796520894006742.Spec : Prop :=
  ∀ n, P14708796520894006742.a n = A301698 n

end A301698

/-! ## A301698.P1588992358676218131

`∑[A315075(n)+n-A004396(n)]`
-/

namespace A301698.P1588992358676218131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + ((n : ℤ) - A004396 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P1588992358676218131

namespace A301698

/-- `∑[A315075(n)+n-A004396(n)]` -/
def P1588992358676218131.Spec : Prop :=
  ∀ n, P1588992358676218131.a n = A301698 n

end A301698

/-! ## A301698.P1909398126585182552

`∑[A301697(n)]`
-/

namespace A301698.P1909398126585182552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P1909398126585182552

namespace A301698

/-- `∑[A301697(n)]` -/
def P1909398126585182552.Spec : Prop :=
  ∀ n, P1909398126585182552.a n = A301698 n

end A301698

/-! ## A301698.P1209166959916762269

`A301697(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301698.P1209166959916762269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301697 n + a (A023443 n).toNat

end

end A301698.P1209166959916762269

namespace A301698

/-- `A301697(n)+a(A023443(n))` -/
def P1209166959916762269.Spec : Prop :=
  ∀ n, P1209166959916762269.a n = A301698 n

end A301698

/-! ## A301698.P8810139301528999829

`∑[A004396(A022144(n)-A128834(n))]`
-/

namespace A301698.P8810139301528999829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A022144 n - A128834 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301698.P8810139301528999829

namespace A301698

/-- `∑[A004396(A022144(n)-A128834(n))]` -/
def P8810139301528999829.Spec : Prop :=
  ∀ n, P8810139301528999829.a n = A301698 n

end A301698

/-!
# A301699: Generating function = g(g(x)), where g(x) = g.f. of Jacobsthal numbers A001045.

The programs for A301699, the canonical program `A301699.P5059306358195732807` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301699 has offset 0).

The definition of A301699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301699.P7541470008174609204

`ogf((x-x^2-2x^3)/(1-3x-4x^2+6x^3+4x^4))`
-/

namespace A301699.P7541470008174609204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -2] [1, -3, -4, 6, 4] n

end

end A301699.P7541470008174609204

namespace A301699

/-- `ogf((x-x^2-2x^3)/(1-3x-4x^2+6x^3+4x^4))` -/
def P7541470008174609204.Spec : Prop :=
  ∀ n, P7541470008174609204.a n = A301699 n

end A301699

/-! ## A301699.P5059306358195732807

`3*a(n-1)+4*a(n-2)-6*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=8`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301699

/-- `3*a(n-1)+4*a(n-2)-6*a(n-3)-4*a(n-4)` -/
def P5059306358195732807.Spec : Prop :=
  ∀ n, P5059306358195732807.a n = A301699 n

theorem P5059306358195732807.correct : P5059306358195732807.Spec := by
  intro n
  simp only [A301699]

end A301699

/-! ## A301699.P6872020930254277456

`A106434(n)+2*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A301699.P6872020930254277456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A106434 n + 2 * a (n - 2)

end

end A301699.P6872020930254277456

namespace A301699

/-- `A106434(n)+2*a(n-2)` -/
def P6872020930254277456.Spec : Prop :=
  ∀ n, P6872020930254277456.a n = A301699 n

end A301699

/-! ## A301699.P7340274264859447184

`A123087(A247146(n+1)+A106434(n+1))`
-/

namespace A301699.P7340274264859447184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A247146 (n + 1) + A106434 (n + 1)).toNat

end

end A301699.P7340274264859447184

namespace A301699

/-- `A123087(A247146(n+1)+A106434(n+1))` -/
def P7340274264859447184.Spec : Prop :=
  ∀ n, P7340274264859447184.a n = A301699 n

end A301699

