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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A045600: Numbers k that divide 7^k + 6^k.

The programs for A045600, there is no canonical definition to state claims against.
-/

/-! ## A045600.P16440812217768936777

`∩[A045597(n+1), A057243(n+1)]`
-/

namespace A045600.P16440812217768936777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045600.P16440812217768936777

/-!
# A045601: Numbers k that divide 8^k + 6^k.

The programs for A045601, there is no canonical definition to state claims against.
-/

/-! ## A045601.P8083928051057973743

`record[gcd(A256262(3*n+5), A263693(2*n+3))]`
-/

namespace A045601.P8083928051057973743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256262 (3 * n + 5)) (A263693 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045601.P8083928051057973743

/-! ## A045601.P11581057454669044721

`eq[A002487(n), A124753(A124738(n+1))]`
-/

namespace A045601.P11581057454669044721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (A124738 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045601.P11581057454669044721

/-! ## A045601.P601324547772305307

`eq[A000120(n), A300649(A089808(n+1))]`
-/

namespace A045601.P601324547772305307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300649 (A089808 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045601.P601324547772305307

/-! ## A045601.P17817307869650223842

`eq[A326732(A367306(n)), A370770(2*(n+1))]`
-/

namespace A045601.P17817307869650223842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326732 (A367306 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370770 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045601.P17817307869650223842

/-! ## A045601.P1440319562637021404

`eq[n-A011371(n), A300649(A089808(n+1))]`
-/

namespace A045601.P1440319562637021404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300649 (A089808 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045601.P1440319562637021404

/-!
# A045602: Numbers k that divide 9^k + 6^k.

The programs for A045602, there is no canonical definition to state claims against.
-/

/-! ## A045602.P14416046981541233446

`∩[A014957(n+1), A362981(n+1)]`
-/

namespace A045602.P14416046981541233446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045602.P14416046981541233446

/-! ## A045602.P4690688911658119470

`record[A014491(A086390(n+1))]`
-/

namespace A045602.P4690688911658119470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A086390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045602.P4690688911658119470

/-! ## A045602.P11021906747892622505

`∩[A014876(n+1), A342191(n+1)]`
-/

namespace A045602.P11021906747892622505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045602.P11021906747892622505

/-! ## A045602.P16401458893892223762

`∩[A014957(n+1), A342191(n+1)]`
-/

namespace A045602.P16401458893892223762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045602.P16401458893892223762

/-! ## A045602.P749630146956358031

`∩[A014876(n+1), A349898(n+1)]`
-/

namespace A045602.P749630146956358031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045602.P749630146956358031

/-!
# A045603: Numbers k that divide 10^k + 6^k.

The programs for A045603, there is no canonical definition to state claims against.
-/

/-! ## A045603.P1283831520127609762

`record[gcd(A017175(n), A018838(n))]`
-/

namespace A045603.P1283831520127609762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017175 n) (A018838 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045603.P1283831520127609762

/-! ## A045603.P7827237396275220226

`eq[A323840(n), A342633(n)]`
-/

namespace A045603.P7827237396275220226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045603.P7827237396275220226

/-! ## A045603.P10421944770888007806

`∩[A045581(n+1), A196730(n+1)]`
-/

namespace A045603.P10421944770888007806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045603.P10421944770888007806

/-! ## A045603.P9830904604197372183

`∩[A045581(n+1), A371291(n+1)]`
-/

namespace A045603.P9830904604197372183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045603.P9830904604197372183

/-! ## A045603.P5516204348980084814

`∩[A196730(n+1), A230771(n+1)]`
-/

namespace A045603.P5516204348980084814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045603.P5516204348980084814

/-!
# A045604: Numbers k that divide 8^k + 7^k.

The programs for A045604, there is no canonical definition to state claims against.
-/

/-! ## A045604.P12131583089794826550

`record[A056926(A231114(n+1))]`
-/

namespace A045604.P12131583089794826550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A231114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045604.P12131583089794826550

/-! ## A045604.P9853915523272272513

`record[A000188(A015965(n+1))]`
-/

namespace A045604.P9853915523272272513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A015965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045604.P9853915523272272513

/-! ## A045604.P11521511232141205380

`A000196(∩[A015965(n+1), n²])`
-/

namespace A045604.P11521511232141205380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A045604.P11521511232141205380

/-! ## A045604.P13129695640183989911

`A105700(A248068(n+1))+A045599(n+1)`
-/

namespace A045604.P13129695640183989911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A248068 (n + 1)).toNat + A045599 (n + 1)

end

end A045604.P13129695640183989911

/-! ## A045604.P3072010773077591654

`record[gcd(A152204(n), A336507(n+1))]`
-/

namespace A045604.P3072010773077591654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152204 n) (A336507 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045604.P3072010773077591654

/-!
# A045605: Numbers k that divide 9^k + 7^k.

The programs for A045605, there is no canonical definition to state claims against.
-/

/-! ## A045605.P16023554982426811953

`record[A051119(A016754(n)+1)]`
-/

namespace A045605.P16023554982426811953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A016754 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045605.P16023554982426811953

/-! ## A045605.P9192661599653853312

`∩[A057291(n+1), A334169(n)]`
-/

namespace A045605.P9192661599653853312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045605.P9192661599653853312

/-!
# A045607: Numbers k that divide 9^k + 8^k.

The programs for A045607, there is no canonical definition to state claims against.
-/

/-! ## A045607.P13055817925642512820

`A003961(A045589(n+1))`
-/

namespace A045607.P13055817925642512820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A045589 (n + 1)).toNat

end

end A045607.P13055817925642512820

/-!
# A045608: Numbers k that divide 10^k + 8^k.

The programs for A045608, there is no canonical definition to state claims against.
-/

/-! ## A045608.P6876334256813884987

`record[gcd(n, A060531(n))]`
-/

namespace A045608.P6876334256813884987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A060531 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045608.P6876334256813884987

/-! ## A045608.P14729911193593148102

`filter[A045583(n+1), A225181(#)]`
-/

namespace A045608.P14729911193593148102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A045608.P14729911193593148102

/-! ## A045608.P4617957537303752130

`∩[A010455(n+1), A045583(n+1)]`
-/

namespace A045608.P4617957537303752130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045608.P4617957537303752130

/-! ## A045608.P529354330883612665

`∩[A045583(n+1), A108549(n+1)]`
-/

namespace A045608.P529354330883612665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045608.P529354330883612665

/-! ## A045608.P18202393442742289800

`∩[A045583(n+1), A124391(n+1)]`
-/

namespace A045608.P18202393442742289800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045608.P18202393442742289800

/-!
# A045610: Number of different energy states of n positive and n negative charges on a string.

The programs for A045610, there is no canonical definition to state claims against.
-/

/-! ## A045610.P11459524554924491493

`A247908(A149175(n))`
-/

namespace A045610.P11459524554924491493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A149175 n).toNat

end

end A045610.P11459524554924491493

/-! ## A045610.P18352998203923327268

`A001462(A161886(n!))`
-/

namespace A045610.P18352998203923327268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A161886 (Nat.factorial n)).toNat

end

end A045610.P18352998203923327268

/-! ## A045610.P12979546347806638917

`A194640(or(1, A339845(n)))`
-/

namespace A045610.P12979546347806638917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (Int.lor 1 (A339845 n)).toNat

end

end A045610.P12979546347806638917

/-!
# A045611: Number of different energy states of n positive and n negative charges on a necklace. Different sets of distances between n points chosen from 2n equally spaced points on a circle.

The programs for A045611, there is no canonical definition to state claims against.
-/

/-! ## A045611.P14179627254030317301

`A193832(∏[A341949(n+6)])`
-/

namespace A045611.P14179627254030317301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341949 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A045611.P14179627254030317301

/-! ## A045611.P12330483518158131316

`A006840(n)-A322392(A000990(n))`
-/

namespace A045611.P12330483518158131316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006840 n - A322392 (A000990 n).toNat

end

end A045611.P12330483518158131316

/-! ## A045611.P292562558083226462

`A006840(n)-A185238(A305889(n))`
-/

namespace A045611.P292562558083226462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006840 n - A185238 (A305889 n).toNat

end

end A045611.P292562558083226462

/-! ## A045611.P18133344207843662277

`A006840(n)-A185238(A038045(n+1))`
-/

namespace A045611.P18133344207843662277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006840 n - A185238 (A038045 (n + 1)).toNat

end

end A045611.P18133344207843662277

/-! ## A045611.P8199264078167509440

`A045633(n)+A115124(n)-A185238(A305889(n))`
-/

namespace A045611.P8199264078167509440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045633 n + (A115124 n - A185238 (A305889 n).toNat)

end

end A045611.P8199264078167509440

/-!
# A045612: Number of different energy states between two stacked necklaces, each of n positive and n negative charges.

The programs for A045612, there is no canonical definition to state claims against.
-/

/-! ## A045612.P8045715265054243704

`A055253(∑[A208821(n+1)])`
-/

namespace A045612.P8045715265054243704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055253 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A045612.P8045715265054243704

/-! ## A045612.P15245180345580759141

`A002632(n+1)+Δ[A028326(n)]`
-/

namespace A045612.P15245180345580759141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002632 (n + 1) + (f1 (n + 1) - f1 n)

end

end A045612.P15245180345580759141

/-!
# A045613: Minimal elements of pairs of "Super Unitary Amicable Numbers", sorted by their minimal elements.

The programs for A045613, there is no canonical definition to state claims against.
-/

/-! ## A045613.P17583279353844010884

`A055033(A045614(n+1))-A045614(n+1)`
-/

namespace A045613.P17583279353844010884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055033 (A045614 (n + 1)).toNat - A045614 (n + 1)

end

end A045613.P17583279353844010884

/-!
# A045614: Maximal elements of pairs of "Super Unitary Amicable Numbers", sorted by their minimal elements.

The programs for A045614, there is no canonical definition to state claims against.
-/

/-! ## A045614.P3736924450156233712

`A055033(A045613(n+1))-A045613(n+1)`
-/

namespace A045614.P3736924450156233712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055033 (A045613 (n + 1)).toNat - A045613 (n + 1)

end

end A045614.P3736924450156233712

/-!
# A045618: Partial sums of A000337(n+4), n >= 0.

The programs for A045618, the canonical program `A045618.P16738991353215400118` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045618 has offset 0).

The definition of A045618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045618.P16738991353215400118

`n+5+(n-1)*2^(n+2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045618

/-- `n+5+(n-1)*2^(n+2)` -/
def P16738991353215400118.Spec : Prop :=
  ∀ n, P16738991353215400118.a n = A045618 n

theorem P16738991353215400118.correct : P16738991353215400118.Spec := by
  intro n
  simp only [A045618]

end A045618

/-! ## A045618.P11671127424225306883

`∑[∑[ogf(1/(1-4x+4x^2))]]`
-/

namespace A045618.P11671127424225306883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P11671127424225306883

namespace A045618

/-- `∑[∑[ogf(1/(1-4x+4x^2))]]` -/
def P11671127424225306883.Spec : Prop :=
  ∀ n, P11671127424225306883.a n = A045618 n

end A045618

/-! ## A045618.P6341808249560695387

`∑[∑[4*(a(n-1)-a(n-2))]]` with `a(0)=1, a(1)=4`
-/

namespace A045618.P6341808249560695387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  4 * (f2 (n - 1) - f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P6341808249560695387

namespace A045618

/-- `∑[∑[4*(a(n-1)-a(n-2))]]` -/
def P6341808249560695387.Spec : Prop :=
  ∀ n, P6341808249560695387.a n = A045618 n

end A045618

/-! ## A045618.P13130468426713561617

`∑[A000337(n+1)]`
-/

namespace A045618.P13130468426713561617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P13130468426713561617

namespace A045618

/-- `∑[A000337(n+1)]` -/
def P13130468426713561617.Spec : Prop :=
  ∀ n, P13130468426713561617.a n = A045618 n

end A045618

/-! ## A045618.P15408077776191609648

`∑[∑[A001787(n+1)]]`
-/

namespace A045618.P15408077776191609648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P15408077776191609648

namespace A045618

/-- `∑[∑[A001787(n+1)]]` -/
def P15408077776191609648.Spec : Prop :=
  ∀ n, P15408077776191609648.a n = A045618 n

end A045618

/-! ## A045618.P11842145019732930276

`∑[∑[A097067(n+2)]]`
-/

namespace A045618.P11842145019732930276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P11842145019732930276

namespace A045618

/-- `∑[∑[A097067(n+2)]]` -/
def P11842145019732930276.Spec : Prop :=
  ∀ n, P11842145019732930276.a n = A045618 n

end A045618

/-! ## A045618.P16383165461448191809

`∑[∑[A139756(n+2)]]`
-/

namespace A045618.P16383165461448191809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P16383165461448191809

namespace A045618

/-- `∑[∑[A139756(n+2)]]` -/
def P16383165461448191809.Spec : Prop :=
  ∀ n, P16383165461448191809.a n = A045618 n

end A045618

/-! ## A045618.P10800552263219905766

`∑[A058922(n+1)+1]`
-/

namespace A045618.P10800552263219905766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P10800552263219905766

namespace A045618

/-- `∑[A058922(n+1)+1]` -/
def P10800552263219905766.Spec : Prop :=
  ∀ n, P10800552263219905766.a n = A045618 n

end A045618

/-! ## A045618.P9837322252678834535

`∑[A048495(n+1)-1]`
-/

namespace A045618.P9837322252678834535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048495 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P9837322252678834535

namespace A045618

/-- `∑[A048495(n+1)-1]` -/
def P9837322252678834535.Spec : Prop :=
  ∀ n, P9837322252678834535.a n = A045618 n

end A045618

/-! ## A045618.P8337862307068081155

`∑[A163383(n+1)+2]`
-/

namespace A045618.P8337862307068081155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163383 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P8337862307068081155

namespace A045618

/-- `∑[A163383(n+1)+2]` -/
def P8337862307068081155.Spec : Prop :=
  ∀ n, P8337862307068081155.a n = A045618 n

end A045618

/-! ## A045618.P4788340132733928146

`∑[A036799(n+1)/2]`
-/

namespace A045618.P4788340132733928146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036799 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P4788340132733928146

namespace A045618

/-- `∑[A036799(n+1)/2]` -/
def P4788340132733928146.Spec : Prop :=
  ∀ n, P4788340132733928146.a n = (A045618 n : ℚ)

end A045618

/-! ## A045618.P18354466562753023178

`∑[A059672(n)+n+1]`
-/

namespace A045618.P18354466562753023178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059672 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P18354466562753023178

namespace A045618

/-- `∑[A059672(n)+n+1]` -/
def P18354466562753023178.Spec : Prop :=
  ∀ n, P18354466562753023178.a n = A045618 n

end A045618

/-! ## A045618.P10642201439264666452

`∑[A188716(n+1)+n]`
-/

namespace A045618.P10642201439264666452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188716 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P10642201439264666452

namespace A045618

/-- `∑[A188716(n+1)+n]` -/
def P10642201439264666452.Spec : Prop :=
  ∀ n, P10642201439264666452.a n = A045618 n

end A045618

/-! ## A045618.P14249172748014003432

`∑[∑[A171647(2*n+1)]]`
-/

namespace A045618.P14249172748014003432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171647 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P14249172748014003432

namespace A045618

/-- `∑[∑[A171647(2*n+1)]]` -/
def P14249172748014003432.Spec : Prop :=
  ∀ n, P14249172748014003432.a n = A045618 n

end A045618

/-! ## A045618.P13338529705209050639

`∑[∑[A239632(2*n+1)]]`
-/

namespace A045618.P13338529705209050639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P13338529705209050639

namespace A045618

/-- `∑[∑[A239632(2*n+1)]]` -/
def P13338529705209050639.Spec : Prop :=
  ∀ n, P13338529705209050639.a n = A045618 n

end A045618

/-! ## A045618.P5893315789804009345

`ogf(1/(1-6x+13x^2-12x^3+4x^4))`
-/

namespace A045618.P5893315789804009345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 13, -12, 4] n

end

end A045618.P5893315789804009345

namespace A045618

/-- `ogf(1/(1-6x+13x^2-12x^3+4x^4))` -/
def P5893315789804009345.Spec : Prop :=
  ∀ n, P5893315789804009345.a n = A045618 n

end A045618

/-! ## A045618.P12824531942092722725

`∑[1-A159964(n+1)]`
-/

namespace A045618.P12824531942092722725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A159964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045618.P12824531942092722725

namespace A045618

/-- `∑[1-A159964(n+1)]` -/
def P12824531942092722725.Spec : Prop :=
  ∀ n, P12824531942092722725.a n = A045618 n

end A045618

/-! ## A045618.P9990085598512727807

`A158681(n+1)/A000079(n+2)`
-/

namespace A045618.P9990085598512727807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158681 (n + 1) : ℚ) / (A000079 (n + 2) : ℚ)

end

end A045618.P9990085598512727807

namespace A045618

/-- `A158681(n+1)/A000079(n+2)` -/
def P9990085598512727807.Spec : Prop :=
  ∀ n, P9990085598512727807.a n = (A045618 n : ℚ)

theorem P9990085598512727807.correct : P9990085598512727807.Spec := by
  intro n
  simp only [A045618, Nat.add_sub_cancel, A045618.P9990085598512727807.a, A045618.P16738991353215400118.a, A000079, A000079.P10855139691139572931.a, A158681, A158681.P2843809987849301361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045618

/-! ## A045618.P2967429987117240135

`A110441(∑[n+1]+1)`
-/

namespace A045618.P2967429987117240135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A045618.P2967429987117240135

namespace A045618

/-- `A110441(∑[n+1]+1)` -/
def P2967429987117240135.Spec : Prop :=
  ∀ n, P2967429987117240135.a n = A045618 n

end A045618

/-!
# A045619: Numbers that are the products of 2 or more consecutive integers.

The programs for A045619, there is no canonical definition to state claims against.
-/

/-! ## A045619.P13053655909925511077

`lt[0, xor(n, A345708(A028310(n)))]`
-/

namespace A045619.P13053655909925511077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A345708 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045619.P13053655909925511077

/-! ## A045619.P7962913035300146536

`lt[A345708(A028310(n)), A000038(n)+n]`
-/

namespace A045619.P7962913035300146536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345708 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045619.P7962913035300146536

/-! ## A045619.P7115349958676317547

`lt[A345708(A000038(n)+n), A000038(n)+n]`
-/

namespace A045619.P7115349958676317547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345708 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045619.P7115349958676317547

/-! ## A045619.P7927642911489099960

`2*eq[A152036(n), A215703(n)]`
-/

namespace A045619.P7927642911489099960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045619.P7927642911489099960

/-! ## A045619.P16548653424786052995

`eq[A008783(n+1), A321649(n+1)]`
-/

namespace A045619.P16548653424786052995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045619.P16548653424786052995

/-!
# A045621: a(n) = 2^n - binomial(n, floor(n/2)).

The programs for A045621, the canonical program `A045621.P8822809560474784251` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045621 has offset 0).

The definition of A045621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-C(n, floor(n/2))` (program `A045621.P8822809560474784251`, by `A045621.P8822809560474784251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045621.P10831047253731492080

`2^n-A001405(n)`
-/

namespace A045621.P10831047253731492080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A001405 n

end

end A045621.P10831047253731492080

namespace A045621

/-- `2^n-A001405(n)` -/
def P10831047253731492080.Spec : Prop :=
  ∀ n, P10831047253731492080.a n = A045621 n

end A045621

/-! ## A045621.P8822809560474784251

`2^n-C(n, floor(n/2))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045621

/-- `2^n-C(n, floor(n/2))` -/
def P8822809560474784251.Spec : Prop :=
  ∀ n, P8822809560474784251.a n = A045621 n

theorem P8822809560474784251.correct : P8822809560474784251.Spec := by
  intro n
  simp only [A045621]

end A045621

/-! ## A045621.P13878295125534708395

`∑[A191391(n)]`
-/

namespace A045621.P13878295125534708395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045621.P13878295125534708395

namespace A045621

/-- `∑[A191391(n)]` -/
def P13878295125534708395.Spec : Prop :=
  ∀ n, P13878295125534708395.a n = A045621 n

end A045621

/-! ## A045621.P15258915854157236828

`2^n-(A014495(n)+1)`
-/

namespace A045621.P15258915854157236828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A014495 n + 1)

end

end A045621.P15258915854157236828

namespace A045621

/-- `2^n-(A014495(n)+1)` -/
def P15258915854157236828.Spec : Prop :=
  ∀ n, P15258915854157236828.a n = A045621 n

theorem P15258915854157236828.correct : P15258915854157236828.Spec := by
  intro n
  simp only [A045621, Nat.add_sub_cancel, A045621.P15258915854157236828.a, A045621.P8822809560474784251.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045621

/-! ## A045621.P8723278273559723805

`2^n-A210736(n+1)`
-/

namespace A045621.P8723278273559723805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A210736 (n + 1)

end

end A045621.P8723278273559723805

namespace A045621

/-- `2^n-A210736(n+1)` -/
def P8723278273559723805.Spec : Prop :=
  ∀ n, P8723278273559723805.a n = A045621 n

end A045621

/-! ## A045621.P13380017369375426808

`a(n-1)+A097331(n)+a(n-1)` with `a(0)=0`
-/

namespace A045621.P13380017369375426808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A097331 n + a (n - 1))

end

end A045621.P13380017369375426808

namespace A045621

/-- `a(n-1)+A097331(n)+a(n-1)` -/
def P13380017369375426808.Spec : Prop :=
  ∀ n, P13380017369375426808.a n = A045621 n

end A045621

/-! ## A045621.P16923513120648302040

`a(n-1)+a(n-1)-A210628(n)` with `a(0)=0`
-/

namespace A045621.P16923513120648302040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) - A210628 n)

end

end A045621.P16923513120648302040

namespace A045621

/-- `a(n-1)+a(n-1)-A210628(n)` -/
def P16923513120648302040.Spec : Prop :=
  ∀ n, P16923513120648302040.a n = A045621 n

end A045621

/-! ## A045621.P16591802912498959669

`A294175(n)+A058622(n)`
-/

namespace A045621.P16591802912498959669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n + A058622 n

end

end A045621.P16591802912498959669

namespace A045621

/-- `A294175(n)+A058622(n)` -/
def P16591802912498959669.Spec : Prop :=
  ∀ n, P16591802912498959669.a n = A045621 n

end A045621

/-! ## A045621.P18000273612523261497

`A000225(n)-A014495(n)`
-/

namespace A045621.P18000273612523261497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A014495 n

end

end A045621.P18000273612523261497

namespace A045621

/-- `A000225(n)-A014495(n)` -/
def P18000273612523261497.Spec : Prop :=
  ∀ n, P18000273612523261497.a n = A045621 n

theorem P18000273612523261497.correct : P18000273612523261497.Spec := by
  intro n
  simp only [A045621, Nat.add_sub_cancel, A045621.P18000273612523261497.a, A045621.P8822809560474784251.a, A000225, A000225.P6535533121115206393.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045621

/-! ## A045621.P14694404869436553307

`A000051(n)-A051920(n)`
-/

namespace A045621.P14694404869436553307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A051920 n

end

end A045621.P14694404869436553307

namespace A045621

/-- `A000051(n)-A051920(n)` -/
def P14694404869436553307.Spec : Prop :=
  ∀ n, P14694404869436553307.a n = A045621 n

theorem P14694404869436553307.correct : P14694404869436553307.Spec := by
  intro n
  simp only [A045621, Nat.add_sub_cancel, A045621.P14694404869436553307.a, A045621.P8822809560474784251.a, A000051, A000051.P14067217022188782580.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045621

/-! ## A045621.P17835991702757153467

`A000918(n)-A201686(n)`
-/

namespace A045621.P17835991702757153467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A201686 n

end

end A045621.P17835991702757153467

namespace A045621

/-- `A000918(n)-A201686(n)` -/
def P17835991702757153467.Spec : Prop :=
  ∀ n, P17835991702757153467.a n = A045621 n

theorem P17835991702757153467.correct : P17835991702757153467.Spec := by
  intro n
  simp only [A045621, Nat.add_sub_cancel, A045621.P17835991702757153467.a, A045621.P8822809560474784251.a, A000918, A000918.P14329454465793069288.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045621

/-! ## A045621.P12323043265530567293

`A140253(n)-A395396(n)`
-/

namespace A045621.P12323043265530567293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n - A395396 n

end

end A045621.P12323043265530567293

namespace A045621

/-- `A140253(n)-A395396(n)` -/
def P12323043265530567293.Spec : Prop :=
  ∀ n, P12323043265530567293.a n = A045621 n

end A045621

/-! ## A045621.P2821855089036302397

`A093387(n+1)+A037952(n)`
-/

namespace A045621.P2821855089036302397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093387 (n + 1) + A037952 n

end

end A045621.P2821855089036302397

namespace A045621

/-- `A093387(n+1)+A037952(n)` -/
def P2821855089036302397.Spec : Prop :=
  ∀ n, P2821855089036302397.a n = A045621 n

end A045621

/-! ## A045621.P956015882149452446

`A000051(n)-(A001405(n)+1)`
-/

namespace A045621.P956015882149452446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A001405 n + 1)

end

end A045621.P956015882149452446

namespace A045621

/-- `A000051(n)-(A001405(n)+1)` -/
def P956015882149452446.Spec : Prop :=
  ∀ n, P956015882149452446.a n = A045621 n

theorem P956015882149452446.correct : P956015882149452446.Spec := by
  intro n
  simp only [A045621, Nat.add_sub_cancel, A045621.P956015882149452446.a, A045621.P8822809560474784251.a, A000051, A000051.P14067217022188782580.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045621

/-! ## A045621.P5164556143446331477

`A000225(n)+1-A001405(n)`
-/

namespace A045621.P5164556143446331477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A001405 n)

end

end A045621.P5164556143446331477

namespace A045621

/-- `A000225(n)+1-A001405(n)` -/
def P5164556143446331477.Spec : Prop :=
  ∀ n, P5164556143446331477.a n = A045621 n

theorem P5164556143446331477.correct : P5164556143446331477.Spec := by
  intro n
  simp only [A045621, Nat.add_sub_cancel, A045621.P5164556143446331477.a, A045621.P8822809560474784251.a, A000225, A000225.P6535533121115206393.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045621

/-! ## A045621.P6422203893681385835

`A058622(n+1)-A126869(n)`
-/

namespace A045621.P6422203893681385835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 1) - A126869 n

end

end A045621.P6422203893681385835

namespace A045621

/-- `A058622(n+1)-A126869(n)` -/
def P6422203893681385835.Spec : Prop :=
  ∀ n, P6422203893681385835.a n = A045621 n

end A045621

/-! ## A045621.P5643483436383803953

`A000918(n)+2-A001405(n)`
-/

namespace A045621.P5643483436383803953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A001405 n)

end

end A045621.P5643483436383803953

namespace A045621

/-- `A000918(n)+2-A001405(n)` -/
def P5643483436383803953.Spec : Prop :=
  ∀ n, P5643483436383803953.a n = A045621 n

theorem P5643483436383803953.correct : P5643483436383803953.Spec := by
  intro n
  simp only [A045621, Nat.add_sub_cancel, A045621.P5643483436383803953.a, A045621.P8822809560474784251.a, A000918, A000918.P14329454465793069288.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045621

/-! ## A045621.P2590771771322476002

`A138364(n)+2*A294175(n)`
-/

namespace A045621.P2590771771322476002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n + 2 * A294175 n

end

end A045621.P2590771771322476002

namespace A045621

/-- `A138364(n)+2*A294175(n)` -/
def P2590771771322476002.Spec : Prop :=
  ∀ n, P2590771771322476002.a n = A045621 n

end A045621

/-! ## A045621.P11870954475422029917

`2*A058622(n)-A138364(n)`
-/

namespace A045621.P11870954475422029917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058622 n - A138364 n

end

end A045621.P11870954475422029917

namespace A045621

/-- `2*A058622(n)-A138364(n)` -/
def P11870954475422029917.Spec : Prop :=
  ∀ n, P11870954475422029917.a n = A045621 n

end A045621

/-! ## A045621.P8128929750308104931

`A000325(n)+n-A001405(n)`
-/

namespace A045621.P8128929750308104931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n + ((n : ℤ) - A001405 n)

end

end A045621.P8128929750308104931

namespace A045621

/-- `A000325(n)+n-A001405(n)` -/
def P8128929750308104931.Spec : Prop :=
  ∀ n, P8128929750308104931.a n = A045621 n

theorem P8128929750308104931.correct : P8128929750308104931.Spec := by
  intro n
  simp only [A045621, Nat.add_sub_cancel, A045621.P8128929750308104931.a, A045621.P8822809560474784251.a, A000325, A000325.P17729744711211405807.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045621

/-!
# A045622: Convolution of A000108 (Catalan numbers) with A045543.

The programs for A045622, the canonical program `A045622.P11433442131743350876` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045622 has offset 1).

The definition of A045622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045622.P11433442131743350876

`A045543(n)+A045543(n)-A045530(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045622

/-- `A045543(n)+A045543(n)-A045530(n)` -/
def P11433442131743350876.Spec : Prop :=
  ∀ n, P11433442131743350876.a n = A045622 (n + 1)

theorem P11433442131743350876.correct : P11433442131743350876.Spec := by
  intro n
  simp only [A045622, Nat.add_sub_cancel]

end A045622

/-! ## A045622.P17335976397533968241

`2*A045543(n)-A045530(n)`
-/

namespace A045622.P17335976397533968241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045543 n - A045530 n

end

end A045622.P17335976397533968241

namespace A045622

/-- `2*A045543(n)-A045530(n)` -/
def P17335976397533968241.Spec : Prop :=
  ∀ n, P17335976397533968241.a n = A045622 (n + 1)

theorem P17335976397533968241.correct : P17335976397533968241.Spec := by
  intro n
  simp only [A045622, Nat.add_sub_cancel, A045622.P17335976397533968241.a, A045622.P11433442131743350876.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A045622

/-! ## A045622.P17137763515245379962

`A046527(eq[6, A002262(n)])`
-/

namespace A045622.P17137763515245379962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045622.P17137763515245379962

namespace A045622

/-- `A046527(eq[6, A002262(n)])` -/
def P17137763515245379962.Spec : Prop :=
  ∀ n, P17137763515245379962.a n = A045622 (n + 1)

end A045622

/-! ## A045622.P11832508640659359390

`A046527(A133263(n+6)+4)`
-/

namespace A045622.P11832508640659359390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A133263 (n + 6) + 4).toNat

end

end A045622.P11832508640659359390

namespace A045622

/-- `A046527(A133263(n+6)+4)` -/
def P11832508640659359390.Spec : Prop :=
  ∀ n, P11832508640659359390.a n = A045622 (n + 1)

end A045622

/-! ## A045622.P16019330343319089912

`A046527(A253145(n+5)+6)`
-/

namespace A045622.P16019330343319089912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A253145 (n + 5) + 6).toNat

end

end A045622.P16019330343319089912

namespace A045622

/-- `A046527(A253145(n+5)+6)` -/
def P16019330343319089912.Spec : Prop :=
  ∀ n, P16019330343319089912.a n = A045622 (n + 1)

end A045622

/-! ## A045622.P17651054027977287402

`A046527(A000217(n+6)+6)`
-/

namespace A045622.P17651054027977287402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (A000217 (n + 6) + 6).toNat

end

end A045622.P17651054027977287402

namespace A045622

/-- `A046527(A000217(n+6)+6)` -/
def P17651054027977287402.Spec : Prop :=
  ∀ n, P17651054027977287402.a n = A045622 (n + 1)

end A045622

/-! ## A045622.P11605383678431126631

`A046527(eq[6, A144328(n+1)])`
-/

namespace A045622.P11605383678431126631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045622.P11605383678431126631

namespace A045622

/-- `A046527(eq[6, A144328(n+1)])` -/
def P11605383678431126631.Spec : Prop :=
  ∀ n, P11605383678431126631.a n = A045622 (n + 1)

end A045622

/-! ## A045622.P17908996483351861203

`A046527(eq[7, A002260(n+1)])`
-/

namespace A045622.P17908996483351861203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045622.P17908996483351861203

namespace A045622

/-- `A046527(eq[7, A002260(n+1)])` -/
def P17908996483351861203.Spec : Prop :=
  ∀ n, P17908996483351861203.a n = A045622 (n + 1)

end A045622

/-! ## A045622.P7641472235594300704

`A046527(eq[8, A245093(n+1)])`
-/

namespace A045622.P7641472235594300704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045622.P7641472235594300704

namespace A045622

/-- `A046527(eq[8, A245093(n+1)])` -/
def P7641472235594300704.Spec : Prop :=
  ∀ n, P7641472235594300704.a n = A045622 (n + 1)

end A045622

/-! ## A045622.P14686029684126833510

`A046527(Δ[A023551(n+1)]+12)`
-/

namespace A045622.P14686029684126833510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 (f1 (n + 1) - f1 n + 12).toNat

end

end A045622.P14686029684126833510

namespace A045622

/-- `A046527(Δ[A023551(n+1)]+12)` -/
def P14686029684126833510.Spec : Prop :=
  ∀ n, P14686029684126833510.a n = A045622 (n + 1)

end A045622

/-!
# A045623: Number of 1's in all compositions of n+1.

The programs for A045623, the canonical program `A045623.P6583215818188714141` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045623 has offset 0).

The definition of A045623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045623.P3872470573745853531

`ceil(1/4*2^n*(n+3))`
-/

namespace A045623.P3872470573745853531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 : ℚ) / 4 * (2 ^ n : ℚ) * (n + 3 : ℚ)⌉

end

end A045623.P3872470573745853531

namespace A045623

/-- `ceil(1/4*2^n*(n+3))` -/
def P3872470573745853531.Spec : Prop :=
  ∀ n, P3872470573745853531.a n = A045623 n

end A045623

/-! ## A045623.P6583215818188714141

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045623

/-- `4*a(n-1)-4*a(n-2)` -/
def P6583215818188714141.Spec : Prop :=
  ∀ n, P6583215818188714141.a n = A045623 n

theorem P6583215818188714141.correct : P6583215818188714141.Spec := by
  intro n
  simp only [A045623]

end A045623

/-! ## A045623.P2746381358926586553

`ogf((1-2x+x^2)/(1-4x+4x^2))`
-/

namespace A045623.P2746381358926586553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -4, 4] n

end

end A045623.P2746381358926586553

namespace A045623

/-- `ogf((1-2x+x^2)/(1-4x+4x^2))` -/
def P2746381358926586553.Spec : Prop :=
  ∀ n, P2746381358926586553.a n = A045623 n

end A045623

/-! ## A045623.P1467987620124793848

`(2/(n+2)+2)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A045623.P1467987620124793848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 / (n + 2 : ℚ) + 2) * a (n - 1)

end

end A045623.P1467987620124793848

namespace A045623

/-- `(2/(n+2)+2)*a(n-1)` -/
def P1467987620124793848.Spec : Prop :=
  ∀ n, P1467987620124793848.a n = (A045623 n : ℚ)

end A045623

/-! ## A045623.P12401641770368232509

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A045623.P12401641770368232509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A045623.P12401641770368232509

namespace A045623

/-- `4*(a(n-1)-a(n-2))` -/
def P12401641770368232509.Spec : Prop :=
  ∀ n, P12401641770368232509.a n = A045623 n

theorem P12401641770368232509.correct : P12401641770368232509.Spec := by
  intro n
  simp only [A045623, Nat.add_sub_cancel, A045623.P12401641770368232509.a, A045623.P6583215818188714141.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A045623

/-! ## A045623.P16238754346839728752

`round(2^(n-2)*C(n+3, n+2))`
-/

namespace A045623.P16238754346839728752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose (n + 3) (n + 2) : ℚ))

end

end A045623.P16238754346839728752

namespace A045623

/-- `round(2^(n-2)*C(n+3, n+2))` -/
def P16238754346839728752.Spec : Prop :=
  ∀ n, P16238754346839728752.a n = A045623 n

end A045623

/-! ## A045623.P2918254862739650761

`a(n-1)+a(n-1)+a(n-1)/(n/2+1)` with `a(0)=1, a(1)=2`
-/

namespace A045623.P2918254862739650761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1) / ((n : ℚ) / 2 + 1))

end

end A045623.P2918254862739650761

namespace A045623

/-- `a(n-1)+a(n-1)+a(n-1)/(n/2+1)` -/
def P2918254862739650761.Spec : Prop :=
  ∀ n, P2918254862739650761.a n = (A045623 n : ℚ)

end A045623

/-! ## A045623.P8167313881994520227

`∑[A045891(n)]`
-/

namespace A045623.P8167313881994520227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045623.P8167313881994520227

namespace A045623

/-- `∑[A045891(n)]` -/
def P8167313881994520227.Spec : Prop :=
  ∀ n, P8167313881994520227.a n = A045623 n

end A045623

/-! ## A045623.P8469121178684846936

`∑[abs(A081037(n))]`
-/

namespace A045623.P8469121178684846936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081037 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045623.P8469121178684846936

namespace A045623

/-- `∑[abs(A081037(n))]` -/
def P8469121178684846936.Spec : Prop :=
  ∀ n, P8469121178684846936.a n = A045623 n

end A045623

/-! ## A045623.P14080709146018490351

`∑[∑[A034007(n)]]`
-/

namespace A045623.P14080709146018490351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045623.P14080709146018490351

namespace A045623

/-- `∑[∑[A034007(n)]]` -/
def P14080709146018490351.Spec : Prop :=
  ∀ n, P14080709146018490351.a n = A045623 n

end A045623

/-! ## A045623.P3936663034508653689

`A139756(n)+2^n`
-/

namespace A045623.P3936663034508653689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + (2 ^ n : ℤ)

end

end A045623.P3936663034508653689

namespace A045623

/-- `A139756(n)+2^n` -/
def P3936663034508653689.Spec : Prop :=
  ∀ n, P3936663034508653689.a n = A045623 n

end A045623

/-! ## A045623.P474920747794932339

`A109975(n+1)-2^n`
-/

namespace A045623.P474920747794932339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 1) - (2 ^ n : ℤ)

end

end A045623.P474920747794932339

namespace A045623

/-- `A109975(n+1)-2^n` -/
def P474920747794932339.Spec : Prop :=
  ∀ n, P474920747794932339.a n = A045623 n

end A045623

/-! ## A045623.P8804599121544733593

`2^(n+1)-A172160(n)`
-/

namespace A045623.P8804599121544733593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A172160 n

end

end A045623.P8804599121544733593

namespace A045623

/-- `2^(n+1)-A172160(n)` -/
def P8804599121544733593.Spec : Prop :=
  ∀ n, P8804599121544733593.a n = A045623 n

end A045623

/-! ## A045623.P5115645539173403480

`A034007(n+2)-2^n`
-/

namespace A045623.P5115645539173403480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 2) - (2 ^ n : ℤ)

end

end A045623.P5115645539173403480

namespace A045623

/-- `A034007(n+2)-2^n` -/
def P5115645539173403480.Spec : Prop :=
  ∀ n, P5115645539173403480.a n = A045623 n

end A045623

/-! ## A045623.P18004370718018408612

`A106472(n)-a(n-1)` with `a(0)=1`
-/

namespace A045623.P18004370718018408612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106472 n - a (n - 1)

end

end A045623.P18004370718018408612

namespace A045623

/-- `A106472(n)-a(n-1)` -/
def P18004370718018408612.Spec : Prop :=
  ∀ n, P18004370718018408612.a n = A045623 n

end A045623

/-! ## A045623.P16670654315266176910

`floor((n+3)/2*A011782(n))`
-/

namespace A045623.P16670654315266176910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 2 * (A011782 n : ℚ)⌋

end

end A045623.P16670654315266176910

namespace A045623

/-- `floor((n+3)/2*A011782(n))` -/
def P16670654315266176910.Spec : Prop :=
  ∀ n, P16670654315266176910.a n = A045623 n

end A045623

/-! ## A045623.P13307449363712889746

`2^(n-2)*A243427(n+1)`
-/

namespace A045623.P13307449363712889746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A243427 (n + 1) : ℚ)

end

end A045623.P13307449363712889746

namespace A045623

/-- `2^(n-2)*A243427(n+1)` -/
def P13307449363712889746.Spec : Prop :=
  ∀ n, P13307449363712889746.a n = (A045623 n : ℚ)

end A045623

/-! ## A045623.P17020558828789775006

`A034008(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A045623.P17020558828789775006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034008 n + 2 * a (n - 1)

end

end A045623.P17020558828789775006

namespace A045623

/-- `A034008(n)+2*a(n-1)` -/
def P17020558828789775006.Spec : Prop :=
  ∀ n, P17020558828789775006.a n = A045623 n

end A045623

/-! ## A045623.P5092100029764637197

`A154222(n)+A000295(n)`
-/

namespace A045623.P5092100029764637197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154222 n + A000295 n

end

end A045623.P5092100029764637197

namespace A045623

/-- `A154222(n)+A000295(n)` -/
def P5092100029764637197.Spec : Prop :=
  ∀ n, P5092100029764637197.a n = A045623 n

end A045623

/-! ## A045623.P6281206166101895097

`A155559(n)+A097067(n)`
-/

namespace A045623.P6281206166101895097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A097067 n

end

end A045623.P6281206166101895097

namespace A045623

/-- `A155559(n)+A097067(n)` -/
def P6281206166101895097.Spec : Prop :=
  ∀ n, P6281206166101895097.a n = A045623 n

end A045623

/-!
# A045624: Row sums of convolution triangle A030526.

The programs for A045624, the canonical program `A045624.P13922327744961361012` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045624 has offset 1).

The definition of A045624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045624.P13922327744961361012

`17*a(n-1)-102*a(n-2)+272*a(n-3)-272*a(n-4)` with `a(0)=1, a(1)=11, a(2)=101, a(3)=851`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045624

/-- `17*a(n-1)-102*a(n-2)+272*a(n-3)-272*a(n-4)` -/
def P13922327744961361012.Spec : Prop :=
  ∀ n, P13922327744961361012.a n = A045624 (n + 1)

theorem P13922327744961361012.correct : P13922327744961361012.Spec := by
  intro n
  simp only [A045624, Nat.add_sub_cancel]

end A045624

/-!
# A045625: Number of n-bead black-white reversible strings with fundamental period n.

The programs for A045625, the canonical program `A045625.P16510546480136589796` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045625 has offset 0).

The definition of A045625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045625.P12722484173013216795

`A056318(A233583(n+1))+char[1]`
-/

namespace A045625.P12722484173013216795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056318 (A233583 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A045625.P12722484173013216795

namespace A045625

/-- `A056318(A233583(n+1))+char[1]` -/
def P12722484173013216795.Spec : Prop :=
  ∀ n, P12722484173013216795.a n = A045625 n

end A045625

/-! ## A045625.P16510546480136589796

`A063524(n)+A056318(A233583(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A045625

/-- `A063524(n)+A056318(A233583(n+1))` -/
def P16510546480136589796.Spec : Prop :=
  ∀ n, P16510546480136589796.a n = A045625 n

theorem P16510546480136589796.correct : P16510546480136589796.Spec := by
  intro n
  simp only [A045625]

end A045625

/-! ## A045625.P3238324110037425241

`abs(A159075(n)-A056318(A233583(n+1)))`
-/

namespace A045625.P3238324110037425241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159075 n - A056318 (A233583 (n + 1)).toNat|

end

end A045625.P3238324110037425241

namespace A045625

/-- `abs(A159075(n)-A056318(A233583(n+1)))` -/
def P3238324110037425241.Spec : Prop :=
  ∀ n, P3238324110037425241.a n = A045625 n

end A045625

/-! ## A045625.P6880563477538188046

`A056318(A233583(n+1))+1-A060576(n)`
-/

namespace A045625.P6880563477538188046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056318 (A233583 (n + 1)).toNat + 1 - A060576 n

end

end A045625.P6880563477538188046

namespace A045625

/-- `A056318(A233583(n+1))+1-A060576(n)` -/
def P6880563477538188046.Spec : Prop :=
  ∀ n, P6880563477538188046.a n = A045625 n

end A045625

/-! ## A045625.P11018375835908370483

`A000041(C(2, n))*A056318(A233583(n+1))`
-/

namespace A045625.P11018375835908370483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A056318 (A233583 (n + 1)).toNat

end

end A045625.P11018375835908370483

namespace A045625

/-- `A000041(C(2, n))*A056318(A233583(n+1))` -/
def P11018375835908370483.Spec : Prop :=
  ∀ n, P11018375835908370483.a n = A045625 n

end A045625

/-! ## A045625.P16707764289914056755

`A284871(floor(acot(n))+∑[n]+n)`
-/

namespace A045625.P16707764289914056755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)).toNat

end

end A045625.P16707764289914056755

namespace A045625

/-- `A284871(floor(acot(n))+∑[n]+n)` -/
def P16707764289914056755.Spec : Prop :=
  ∀ n, P16707764289914056755.a n = A045625 n

end A045625

/-! ## A045625.P18287204446610430735

`A284871(A212342(n+1))`
-/

namespace A045625.P18287204446610430735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A212342 (n + 1)).toNat

end

end A045625.P18287204446610430735

namespace A045625

/-- `A284871(A212342(n+1))` -/
def P18287204446610430735.Spec : Prop :=
  ∀ n, P18287204446610430735.a n = A045625 n

end A045625

/-! ## A045625.P10997280879145675953

`A284871(A027379(n)-n)`
-/

namespace A045625.P10997280879145675953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A027379 n - (n : ℤ)).toNat

end

end A045625.P10997280879145675953

namespace A045625

/-- `A284871(A027379(n)-n)` -/
def P10997280879145675953.Spec : Prop :=
  ∀ n, P10997280879145675953.a n = A045625 n

end A045625

/-! ## A045625.P9751075525331495401

`A284871(A179865(n+1)+n)`
-/

namespace A045625.P9751075525331495401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A179865 (n + 1) + (n : ℤ)).toNat

end

end A045625.P9751075525331495401

namespace A045625

/-- `A284871(A179865(n+1)+n)` -/
def P9751075525331495401.Spec : Prop :=
  ∀ n, P9751075525331495401.a n = A045625 n

end A045625

/-! ## A045625.P742216408219269291

`A284871(A000007(n)+∑[n]+n)`
-/

namespace A045625.P742216408219269291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284871 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)).toNat

end

end A045625.P742216408219269291

namespace A045625

/-- `A284871(A000007(n)+∑[n]+n)` -/
def P742216408219269291.Spec : Prop :=
  ∀ n, P742216408219269291.a n = A045625 n

end A045625

/-!
# A045626: Bends in loxodromic sequence of spheres in which each 5 consecutive spheres are in mutual contact.

The programs for A045626, the canonical program `A045626.P11809376648633099556` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045626 has offset 0).

The definition of A045626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045626.P11809376648633099556

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=-1, a(1)=2, a(2)=3, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045626

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` -/
def P11809376648633099556.Spec : Prop :=
  ∀ n, P11809376648633099556.a n = A045626 n

theorem P11809376648633099556.correct : P11809376648633099556.Spec := by
  intro n
  simp only [A045626]

end A045626

/-! ## A045626.P10386329636400699773

`A100048(n)+A027674(n)`
-/

namespace A045626.P10386329636400699773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100048 n + A027674 n

end

end A045626.P10386329636400699773

namespace A045626

/-- `A100048(n)+A027674(n)` -/
def P10386329636400699773.Spec : Prop :=
  ∀ n, P10386329636400699773.a n = A045626 n

end A045626

/-! ## A045626.P7846566621390293121

`A027674(n)+A112575(n)-A112575(A289207(n))`
-/

namespace A045626.P7846566621390293121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027674 n + (A112575 n - A112575 (A289207 n).toNat)

end

end A045626.P7846566621390293121

namespace A045626

/-- `A027674(n)+A112575(n)-A112575(A289207(n))` -/
def P7846566621390293121.Spec : Prop :=
  ∀ n, P7846566621390293121.a n = A045626 n

end A045626

/-! ## A045626.P6788470185699955926

`A183324(n+1)+A027674(n)-A118870(n)`
-/

namespace A045626.P6788470185699955926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183324 (n + 1) + (A027674 n - A118870 n)

end

end A045626.P6788470185699955926

namespace A045626

/-- `A183324(n+1)+A027674(n)-A118870(n)` -/
def P6788470185699955926.Spec : Prop :=
  ∀ n, P6788470185699955926.a n = A045626 n

end A045626

/-! ## A045626.P13959424146870650829

`A027674(n)+A288380(n)-1-A118870(n)`
-/

namespace A045626.P13959424146870650829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027674 n + (A288380 n - 1 - A118870 n)

end

end A045626.P13959424146870650829

namespace A045626

/-- `A027674(n)+A288380(n)-1-A118870(n)` -/
def P13959424146870650829.Spec : Prop :=
  ∀ n, P13959424146870650829.a n = A045626 n

end A045626

/-! ## A045626.P16435824954939464667

`A100048(n)+Δ[A118870(n)-A321048(n+2)]`
-/

namespace A045626.P16435824954939464667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n - A321048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100048 n + (f1 (n + 1) - f1 n)

end

end A045626.P16435824954939464667

namespace A045626

/-- `A100048(n)+Δ[A118870(n)-A321048(n+2)]` -/
def P16435824954939464667.Spec : Prop :=
  ∀ n, P16435824954939464667.a n = A045626 n

end A045626

/-!
# A045627: Number of 2n-bead black-white reversible strings with n black beads and fundamental period 2n.

The programs for A045627, there is no canonical definition to state claims against.
-/

/-! ## A045627.P13559860659428097955

`A088218(n)-A337322(A152046(n))`
-/

namespace A045627.P13559860659428097955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A337322 (A152046 n).toNat

end

end A045627.P13559860659428097955

/-! ## A045627.P6710390366111446215

`A028310(A088218(n)-A264584(n+1))`
-/

namespace A045627.P6710390366111446215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A088218 n - A264584 (n + 1)).toNat

end

end A045627.P6710390366111446215

/-! ## A045627.P7419319165702605465

`A088218(n)-A285726(A151525(n+1))`
-/

namespace A045627.P7419319165702605465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A285726 (A151525 (n + 1)).toNat

end

end A045627.P7419319165702605465

/-! ## A045627.P14289784146189771298

`A260878(n)-A260123(A130131(n+1))`
-/

namespace A045627.P14289784146189771298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n - A260123 (A130131 (n + 1)).toNat

end

end A045627.P14289784146189771298

/-!
# A045628: Number of 2n-bead black-white reversible necklaces with n black beads and fundamental period 2n.

The programs for A045628, there is no canonical definition to state claims against.
-/

/-! ## A045628.P5992732710462643987

`A005648(n)-A115120(n)`
-/

namespace A045628.P5992732710462643987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005648 n - A115120 n

end

end A045628.P5992732710462643987

/-! ## A045628.P14377952013223183357

`(A045680(n)+A022553(n))/2`
-/

namespace A045628.P14377952013223183357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045680 n + A022553 n : ℚ) / 2

end

end A045628.P14377952013223183357

/-! ## A045628.P7603026779870239113

`A052307(A046092(n))-A115120(n)`
-/

namespace A045628.P7603026779870239113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A046092 n).toNat - A115120 n

end

end A045628.P7603026779870239113

/-! ## A045628.P8371679421624558559

`A052307(A008586(∑[n]))-A115120(n)`
-/

namespace A045628.P8371679421624558559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A115120 n

end

end A045628.P8371679421624558559

/-! ## A045628.P9068412601362711264

`A052307(A106232(n+1))-A115120(n)`
-/

namespace A045628.P9068412601362711264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A106232 (n + 1)).toNat - A115120 n

end

end A045628.P9068412601362711264

/-!
# A045629: Number of 2n-bead black-white complementable necklaces with n black beads.

The programs for A045629, there is no canonical definition to state claims against.
-/

/-! ## A045629.P16172530908155510548

`A115122(n)+A045632(n)`
-/

namespace A045629.P16172530908155510548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115122 n + A045632 n

end

end A045629.P16172530908155510548

/-! ## A045629.P14536211372956243356

`A386388(n)+A000013(n)`
-/

namespace A045629.P14536211372956243356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386388 n + A000013 n

end

end A045629.P14536211372956243356

/-! ## A045629.P14534640186798944009

`∑{d}[A028310(n), A045632(#)]`
-/

namespace A045629.P14534640186798944009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045632 d

end

end A045629.P14534640186798944009

/-! ## A045629.P7958659839089656175

`A006080(n+1)-A059078(n)`
-/

namespace A045629.P7958659839089656175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006080 (n + 1) - A059078 n

end

end A045629.P7958659839089656175

/-! ## A045629.P17977370712742145540

`A000013(n)+A387130(n)+A383904(n)`
-/

namespace A045629.P17977370712742145540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n + (A387130 n + A383904 n)

end

end A045629.P17977370712742145540

/-! ## A045629.P10667608884836252622

`A003239(n)-A386388(n)`
-/

namespace A045629.P10667608884836252622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - A386388 n

end

end A045629.P10667608884836252622

/-! ## A045629.P17620464015582606796

`(A003239(n)+A000013(n))/2`
-/

namespace A045629.P17620464015582606796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 n + A000013 n : ℚ) / 2

end

end A045629.P17620464015582606796

/-! ## A045629.P7929738803290942228

`A003239(n)-(A387130(n)+A383904(n))`
-/

namespace A045629.P7929738803290942228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - (A387130 n + A383904 n)

end

end A045629.P7929738803290942228

/-! ## A045629.P336717434860001527

`A022553(n)+A386946(n)-A386388(n)`
-/

namespace A045629.P336717434860001527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n + (A386946 n - A386388 n)

end

end A045629.P336717434860001527

/-! ## A045629.P6515768618510240364

`∑{d}[A293985(A000124(n)), A045632(#)]`
-/

namespace A045629.P6515768618510240364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045632 d

end

end A045629.P6515768618510240364

/-!
# A045630: Number of 2n-bead black-white complementable strings with n black beads and fundamental period 2n.

The programs for A045630, there is no canonical definition to state claims against.
-/

/-! ## A045630.P6333499742216472794

`ceil(A007727(n)/2)`
-/

namespace A045630.P6333499742216472794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007727 n : ℚ) / 2⌉

end

end A045630.P6333499742216472794

/-! ## A045630.P12534353119936329276

`A022553(n)*A028310(n)`
-/

namespace A045630.P12534353119936329276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n * A028310 n

end

end A045630.P12534353119936329276

/-! ## A045630.P4152264521992334665

`abs(A022553(n)*A274922(n))`
-/

namespace A045630.P4152264521992334665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022553 n * A274922 n|

end

end A045630.P4152264521992334665

/-! ## A045630.P16403954541347243216

`A007727(n)/A036453(n+1)`
-/

namespace A045630.P16403954541347243216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A045630.P16403954541347243216

/-! ## A045630.P14681526766205209382

`A007727(A004277(n)-n)/2`
-/

namespace A045630.P14681526766205209382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A045630.P14681526766205209382

/-! ## A045630.P18075783477460722038

`A022553(n)*A123108(2*n)`
-/

namespace A045630.P18075783477460722038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n * A123108 (2 * n)

end

end A045630.P18075783477460722038

/-! ## A045630.P2953968944974846755

`A000007(n)+n*A022553(n)`
-/

namespace A045630.P2953968944974846755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A022553 n

end

end A045630.P2953968944974846755

/-! ## A045630.P12208090570816844997

`(A004277(n)-n)*A022553(n)`
-/

namespace A045630.P12208090570816844997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - (n : ℤ)) * A022553 n

end

end A045630.P12208090570816844997

/-! ## A045630.P2633403362867386690

`A007727(n)-n*A022553(n)`
-/

namespace A045630.P2633403362867386690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007727 n - (n : ℤ) * A022553 n

end

end A045630.P2633403362867386690

/-! ## A045630.P8255001620994080543

`(record[A005131(n)]-n)*A022553(n)`
-/

namespace A045630.P8255001620994080543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)) * A022553 n

end

end A045630.P8255001620994080543

/-! ## A045630.P1340988113107821130

`A007727(n)/A000032(C(2, n+2))`
-/

namespace A045630.P1340988113107821130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A045630.P1340988113107821130

/-! ## A045630.P15557113070793159326

`A007727(n)/A014963(A001316(n))`
-/

namespace A045630.P15557113070793159326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A045630.P15557113070793159326

/-! ## A045630.P9353884157996788499

`A007727(n)/A020639(A008574(n))`
-/

namespace A045630.P9353884157996788499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A045630.P9353884157996788499

/-! ## A045630.P12333972382914421144

`A007727(n)/A020639(A010063(n))`
-/

namespace A045630.P12333972382914421144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A020639 (A010063 n).toNat : ℚ)

end

end A045630.P12333972382914421144

/-! ## A045630.P10658192431254240390

`A007727(n)/A000005(A008578(n+1))`
-/

namespace A045630.P10658192431254240390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ)

end

end A045630.P10658192431254240390

/-! ## A045630.P1029465458935529399

`A007727(n)/A020639(A001223(n+1))`
-/

namespace A045630.P1029465458935529399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ)

end

end A045630.P1029465458935529399

/-! ## A045630.P16559825976894022303

`A000007(n)+n*A289978(A000124(n))`
-/

namespace A045630.P16559825976894022303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A289978 (A000124 n).toNat

end

end A045630.P16559825976894022303

/-!
# A045631: Number of 2n-bead black-white reversible complementable strings with n black beads and fundamental period 2n.

The programs for A045631, there is no canonical definition to state claims against.
-/

/-! ## A045631.P9705359583426817334

`A008676((2*n+3)*3^(n-1)+4)`
-/

namespace A045631.P9705359583426817334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (SequenceMachineLib.roundAway ((2 * n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 4)).toNat

end

end A045631.P9705359583426817334

/-! ## A045631.P4384189259258816736

`A226190(A149178(n))`
-/

namespace A045631.P4384189259258816736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A149178 n).toNat

end

end A045631.P4384189259258816736

/-! ## A045631.P5036537279023593720

`A337674(A173610(n))`
-/

namespace A045631.P5036537279023593720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337674 (A173610 n).toNat

end

end A045631.P5036537279023593720

/-!
# A045632: Number of 2n-bead black-white complementable necklaces with n black beads and fundamental period 2n.

The programs for A045632, there is no canonical definition to state claims against.
-/

/-! ## A045632.P10782268223769639402

`A383904(n)+A000048(n)`
-/

namespace A045632.P10782268223769639402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383904 n + A000048 n

end

end A045632.P10782268223769639402

/-! ## A045632.P375452827800622876

`A045629(n)-A115122(n)`
-/

namespace A045632.P375452827800622876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045629 n - A115122 n

end

end A045632.P375452827800622876

/-! ## A045632.P14769233480425604895

`A006080(n+1)-(A115122(n)+A059078(n))`
-/

namespace A045632.P14769233480425604895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006080 (n + 1) - (A115122 n + A059078 n)

end

end A045632.P14769233480425604895

/-! ## A045632.P10540199339345555750

`A022553(n)-A383904(n)`
-/

namespace A045632.P10540199339345555750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n - A383904 n

end

end A045632.P10540199339345555750

/-! ## A045632.P470588976060715505

`(A022553(n)+A000048(n))/2`
-/

namespace A045632.P470588976060715505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022553 n + A000048 n : ℚ) / 2

end

end A045632.P470588976060715505

/-! ## A045632.P7161108928322503609

`A003239(n)-(A386946(n)+A383904(n))`
-/

namespace A045632.P7161108928322503609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - (A386946 n + A383904 n)

end

end A045632.P7161108928322503609

/-! ## A045632.P6488324638912247955

`A022553(n)+A387130(n)-A386388(n)`
-/

namespace A045632.P6488324638912247955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n + (A387130 n - A386388 n)

end

end A045632.P6488324638912247955

/-! ## A045632.P1472928939704924330

`(A003239(n)+A000013(n))/2-A115122(n)`
-/

namespace A045632.P1472928939704924330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 n + A000013 n : ℚ) / 2 - (A115122 n : ℚ)

end

end A045632.P1472928939704924330

/-!
# A045633: Number of 2n-bead black-white reversible complementable necklaces with n black beads and fundamental period 2n.

The programs for A045633, there is no canonical definition to state claims against.
-/

/-! ## A045633.P12073483328653903889

`A006840(n)-A115124(n)`
-/

namespace A045633.P12073483328653903889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006840 n - A115124 n

end

end A045633.P12073483328653903889

/-! ## A045633.P3579258451850542059

`A006840(n)-A110705(A298422(n+1))%(n+5)`
-/

namespace A045633.P3579258451850542059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006840 n - Int.tmod (A110705 (A298422 (n + 1)).toNat) (n + 5 : ℤ)

end

end A045633.P3579258451850542059

/-! ## A045633.P14172260382804687526

`∑[A051889(A148107(n)-n)]`
-/

namespace A045633.P14172260382804687526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A148107 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045633.P14172260382804687526

/-! ## A045633.P15726267941166446959

`A324969(n+1)+A105517(A333070(n))`
-/

namespace A045633.P15726267941166446959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) + A105517 (A333070 n).toNat

end

end A045633.P15726267941166446959

/-! ## A045633.P890620931370476092

`A006840(A004881(n+1))-A115122(n)`
-/

namespace A045633.P890620931370476092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006840 (A004881 (n + 1)).toNat - A115122 n

end

end A045633.P890620931370476092

/-!
# A045634: Number of ways in which n can be partitioned as a sum of a square and cube.

The programs for A045634, there is no canonical definition to state claims against.
-/

/-! ## A045634.P218382971182088043

`A316864(A008436(n))+A045706(n)`
-/

namespace A045634.P218382971182088043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A008436 n).toNat + A045706 n

end

end A045634.P218382971182088043

/-! ## A045634.P14716067569529720739

`C(A000925(n), A331838(n+2))`
-/

namespace A045634.P14716067569529720739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000925 n).toNat (A331838 (n + 2)).toNat

end

end A045634.P14716067569529720739

/-! ## A045634.P16594746752812481847

`A045706(n)+A045698(A045680(n))`
-/

namespace A045634.P16594746752812481847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045706 n + A045698 (A045680 n).toNat

end

end A045634.P16594746752812481847

/-! ## A045634.P3238619024188873780

`A045706(n)+A045698(A045685(n))`
-/

namespace A045634.P3238619024188873780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045706 n + A045698 (A045685 n).toNat

end

end A045634.P3238619024188873780

/-! ## A045634.P1353989805639630738

`A266144(A045710(n+5))+A045706(n)`
-/

namespace A045634.P1353989805639630738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266144 (A045710 (n + 5)).toNat + A045706 n

end

end A045634.P1353989805639630738

/-!
# A045635: Catafusenes (see references for precise definition).

The programs for A045635, the canonical program `A045635.P4073587291953969490` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045635 has offset 1).

The definition of A045635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045635.P9484735308987723831

`∑[Δ[A045890(n)]%A045890(n)]`
-/

namespace A045635.P9484735308987723831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A045890 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045635.P9484735308987723831

namespace A045635

/-- `∑[Δ[A045890(n)]%A045890(n)]` -/
def P9484735308987723831.Spec : Prop :=
  ∀ n, P9484735308987723831.a n = A045635 (n + 1)

end A045635

/-! ## A045635.P11266551947050250086

`∑[A045890(n+1)%A045890(n)]`
-/

namespace A045635.P11266551947050250086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045890 (n + 1)) (A045890 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045635.P11266551947050250086

namespace A045635

/-- `∑[A045890(n+1)%A045890(n)]` -/
def P11266551947050250086.Spec : Prop :=
  ∀ n, P11266551947050250086.a n = A045635 (n + 1)

end A045635

/-! ## A045635.P4073587291953969490

`Δ[A045445(n+1)-A039919(n+1)]-A045445(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045635

/-- `Δ[A045445(n+1)-A039919(n+1)]-A045445(n+1)` -/
def P4073587291953969490.Spec : Prop :=
  ∀ n, P4073587291953969490.a n = A045635 (n + 1)

theorem P4073587291953969490.correct : P4073587291953969490.Spec := by
  intro n
  simp only [A045635, Nat.add_sub_cancel]

end A045635

/-! ## A045635.P13699970541058278707

`A057427(A004526(n))*A091965(A133263(n))`
-/

namespace A045635.P13699970541058278707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A004526 n).toNat * A091965 (A133263 n).toNat

end

end A045635.P13699970541058278707

namespace A045635

/-- `A057427(A004526(n))*A091965(A133263(n))` -/
def P13699970541058278707.Spec : Prop :=
  ∀ n, P13699970541058278707.a n = A045635 (n + 1)

end A045635

/-! ## A045635.P1288362536785340478

`A057427(A083920(n))*A091965(A133263(n))`
-/

namespace A045635.P1288362536785340478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A083920 n).toNat * A091965 (A133263 n).toNat

end

end A045635.P1288362536785340478

namespace A045635

/-- `A057427(A083920(n))*A091965(A133263(n))` -/
def P1288362536785340478.Spec : Prop :=
  ∀ n, P1288362536785340478.a n = A045635 (n + 1)

end A045635

/-!
# A045636: Numbers of the form p^2 + q^2, with p and q primes.

The programs for A045636, there is no canonical definition to state claims against.
-/

/-! ## A045636.P14380030799499714372

`comp[A214879(n+1)]`
-/

namespace A045636.P14380030799499714372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045636.P14380030799499714372

/-! ## A045636.P5603783694697850694

`lt[0, A045698(n)]`
-/

namespace A045636.P5603783694697850694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045636.P5603783694697850694

/-! ## A045636.P9028683425504305876

`eq[2, A183214(n)]`
-/

namespace A045636.P9028683425504305876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045636.P9028683425504305876

/-! ## A045636.P10086840068909162943

`∪[A214723(n+1), A357439(n+1)]`
-/

namespace A045636.P10086840068909162943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045636.P10086840068909162943

/-! ## A045636.P5569367946620157218

`∪[A287922(n+1), A357439(n+1)]`
-/

namespace A045636.P5569367946620157218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045636.P5569367946620157218

/-! ## A045636.P11701197944903647026

`∪[2*(4*A227697(n+1)+1), A214723(n+1)]`
-/

namespace A045636.P11701197944903647026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A227697 (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045636.P11701197944903647026

/-! ## A045636.P11096437300948596123

`∪[A079704(n+1), A088909(n+1)]`
-/

namespace A045636.P11096437300948596123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045636.P11096437300948596123

/-! ## A045636.P17043740027085725801

`∪[A088909(n+1), A214723(n+1)]`
-/

namespace A045636.P17043740027085725801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045636.P17043740027085725801

/-!
# A045637: Primes of the form p^2 + 4, where p is prime.

The programs for A045637, there is no canonical definition to state claims against.
-/

/-! ## A045637.P2575675901129095905

`A062324(n+1)²+4`
-/

namespace A045637.P2575675901129095905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1) ^ 2 + 4

end

end A045637.P2575675901129095905

/-! ## A045637.P1019001764179582766

`p?[A007591(n+1)]²+4`
-/

namespace A045637.P1019001764179582766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 4

end

end A045637.P1019001764179582766

/-! ## A045637.P1716717830304869435

`A240130(A287924(n+1))`
-/

namespace A045637.P1716717830304869435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240130 (A287924 (n + 1)).toNat

end

end A045637.P1716717830304869435

/-! ## A045637.P13843570561510914256

`A240130(eq[2, A240131(n+1)]+1)`
-/

namespace A045637.P13843570561510914256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045637.P13843570561510914256

/-! ## A045637.P7925021541801932669

`∩[A005473(n+1), A287922(n+1)]`
-/

namespace A045637.P7925021541801932669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045637.P7925021541801932669

/-! ## A045637.P15372149575352139369

`∩[A098062(n+1), A240130(n+1)]`
-/

namespace A045637.P15372149575352139369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045637.P15372149575352139369

/-! ## A045637.P14616992627508954742

`∩[A098062(n+1), A287922(n+1)]`
-/

namespace A045637.P14616992627508954742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045637.P14616992627508954742

/-! ## A045637.P1738858544314307808

`∩[A240130(n+1), A287922(n+1)]`
-/

namespace A045637.P1738858544314307808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045637.P1738858544314307808

/-! ## A045637.P11618097600135890739

`A098062(eq[1, A001222(A007591(n+1))])`
-/

namespace A045637.P11618097600135890739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045637.P11618097600135890739

/-! ## A045637.P516857765627626060

`A098062(eq[1, A010051(A007591(n+1))])`
-/

namespace A045637.P516857765627626060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045637.P516857765627626060

/-! ## A045637.P3615342732953340084

`A098062(eq[2, A000005(A007591(n+1))])`
-/

namespace A045637.P3615342732953340084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045637.P3615342732953340084

/-! ## A045637.P11852493265068169819

`A013946(A062324(n+1))`
-/

namespace A045637.P11852493265068169819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (A062324 (n + 1)).toNat

end

end A045637.P11852493265068169819

/-! ## A045637.P10722246616102930234

`A087475(p?[A007591(n+1)])`
-/

namespace A045637.P10722246616102930234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045637.P10722246616102930234

/-! ## A045637.P4678456243156396561

`A087475(2*A062324(n+1)-A062324(n+1))`
-/

namespace A045637.P4678456243156396561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (2 * A062324 (n + 1) - A062324 (n + 1)).toNat

end

end A045637.P4678456243156396561

/-! ## A045637.P6226499640878818251

`A000290(A062324(n+1)%A005473(n+1))+4`
-/

namespace A045637.P6226499640878818251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A062324 (n + 1)) (A005473 (n + 1))).toNat + 4

end

end A045637.P6226499640878818251

/-! ## A045637.P5001010676490676239

`A000290(A062324(n+1))+4%A094473(n+1)`
-/

namespace A045637.P5001010676490676239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A062324 (n + 1)).toNat + Int.tmod 4 (A094473 (n + 1))

end

end A045637.P5001010676490676239

/-! ## A045637.P14283266954856450918

`(A000290(A062324(n+1))+4)%A094479(n+1)`
-/

namespace A045637.P14283266954856450918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A062324 (n + 1)).toNat + 4) (A094479 (n + 1))

end

end A045637.P14283266954856450918

/-! ## A045637.P5694281386063629230

`or(A000290(A062324(n+1)), A094473(n+1+n))`
-/

namespace A045637.P5694281386063629230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000290 (A062324 (n + 1)).toNat) (A094473 (n + 1 + n))

end

end A045637.P5694281386063629230

/-! ## A045637.P15583994758811711830

`∩[A005473(n+1), A225533(n+1)]`
-/

namespace A045637.P15583994758811711830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045637.P15583994758811711830

/-! ## A045637.P12914464278660700186

`∩[A098062(n+1), A225533(n+1)]`
-/

namespace A045637.P12914464278660700186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045637.P12914464278660700186

/-!
# A045638: Palindromic and divisible by 3.

The programs for A045638, there is no canonical definition to state claims against.
-/

/-! ## A045638.P3208994329890592229

`A002113(lt[A002113(n+1)%3, 1]+1)`
-/

namespace A045638.P3208994329890592229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A045638.P3208994329890592229

/-! ## A045638.P4861505447360556561

`∩[A002113(n+1), A008585(n)]`
-/

namespace A045638.P4861505447360556561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045638.P4861505447360556561

/-! ## A045638.P4525016481294442109

`filter[A008585(n), A136522(#)]`
-/

namespace A045638.P4525016481294442109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A045638.P4525016481294442109

/-! ## A045638.P7526438474494438447

`eq[A010872(n), A056965(n)]`
-/

namespace A045638.P7526438474494438447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045638.P7526438474494438447

/-! ## A045638.P6811514965862999954

`eq[n, A064429(A004086(n))]`
-/

namespace A045638.P6811514965862999954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045638.P6811514965862999954

/-! ## A045638.P14776115243083984411

`eq[A011655(n), A056965(n)]`
-/

namespace A045638.P14776115243083984411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045638.P14776115243083984411

/-! ## A045638.P16458268808035280587

`eq[n, A020485(A064429(n))]`
-/

namespace A045638.P16458268808035280587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A064429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045638.P16458268808035280587

/-! ## A045638.P12661837361359740774

`eq[n, A064429(A047813(n))]`
-/

namespace A045638.P12661837361359740774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045638.P12661837361359740774

/-! ## A045638.P9259556412706041564

`eq[A004086(n), A109044(n)]`
-/

namespace A045638.P9259556412706041564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045638.P9259556412706041564

/-!
# A045639: Palindromic and divisible by 4.

The programs for A045639, there is no canonical definition to state claims against.
-/

/-! ## A045639.P12892782120253844619

`filter[A029951(n+1), A358680(#)]`
-/

namespace A045639.P12892782120253844619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A045639.P12892782120253844619

/-! ## A045639.P15850725068831686785

`filter[A029951(n+1), A374036(#)]`
-/

namespace A045639.P15850725068831686785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A045639.P15850725068831686785

/-! ## A045639.P14010203960522684871

`filter[A029951(n+1), A374045(#)]`
-/

namespace A045639.P14010203960522684871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A045639.P14010203960522684871

/-! ## A045639.P599429311270867782

`filter[A002113(n+1), A121262(#)]`
-/

namespace A045639.P599429311270867782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A045639.P599429311270867782

/-! ## A045639.P13894301917905055056

`filter[A029951(n+1), A121262(#)]`
-/

namespace A045639.P13894301917905055056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A045639.P13894301917905055056

/-! ## A045639.P13275386350207724403

`filter[A029951(n+1), A152822(#)]`
-/

namespace A045639.P13275386350207724403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A045639.P13275386350207724403

/-! ## A045639.P7370396475592846804

`filter[A029951(n+1), A353494(#)]`
-/

namespace A045639.P7370396475592846804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A045639.P7370396475592846804

/-! ## A045639.P14261129740989084251

`∩[A002113(n+1), A008586(n)]`
-/

namespace A045639.P14261129740989084251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045639.P14261129740989084251

/-! ## A045639.P16931252071242962035

`∩[A029951(n+1), A008586(n)]`
-/

namespace A045639.P16931252071242962035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045639.P16931252071242962035

/-! ## A045639.P9544129699660163410

`∩[A029951(n+1), A374037(n+1)]`
-/

namespace A045639.P9544129699660163410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045639.P9544129699660163410

/-!
# A045641: Palindromes that are divisible by 6.

The programs for A045641, there is no canonical definition to state claims against.
-/

/-! ## A045641.P16904854452524361789

`∩[A029951(n+1), A045638(n+1)]`
-/

namespace A045641.P16904854452524361789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045641.P16904854452524361789

/-! ## A045641.P16855553956588843637

`∩[6*n, A002113(n+1)]`
-/

namespace A045641.P16855553956588843637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045641.P16855553956588843637

/-! ## A045641.P8013239459220250649

`∩[2*n, A045638(n+1)]`
-/

namespace A045641.P8013239459220250649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045641.P8013239459220250649

/-! ## A045641.P17338762719043540863

`∩[A002113(n+1), A385701(n+1)]`
-/

namespace A045641.P17338762719043540863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045641.P17338762719043540863

/-! ## A045641.P15177164611271311543

`∩[A029951(n+1), A385701(n+1)]`
-/

namespace A045641.P15177164611271311543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045641.P15177164611271311543

/-! ## A045641.P15944221434151397298

`∩[A045638(n+1), A385701(n+1)]`
-/

namespace A045641.P15944221434151397298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045641.P15944221434151397298

/-! ## A045641.P2078305910544922705

`filter[A029951(n+1), A079979(#)]`
-/

namespace A045641.P2078305910544922705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A045641.P2078305910544922705

/-! ## A045641.P7734696956924102246

`filter[A029951(n+1), A093719(#)]`
-/

namespace A045641.P7734696956924102246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A045641.P7734696956924102246

/-! ## A045641.P15038036846499675159

`filter[A045638(n+1), A079979(#)]`
-/

namespace A045641.P15038036846499675159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A045641.P15038036846499675159

/-! ## A045641.P14880338749926387214

`∩[A002113(n+1), A008588(n)]`
-/

namespace A045641.P14880338749926387214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045641.P14880338749926387214

/-!
# A045642: Palindromic and divisible by 7.

The programs for A045642, there is no canonical definition to state claims against.
-/

/-! ## A045642.P6164579708055584705

`∩[A002113(n+1), A008589(n)]`
-/

namespace A045642.P6164579708055584705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045642.P6164579708055584705

/-! ## A045642.P3543117835626022341

`filter[A008589(n), A136522(#)]`
-/

namespace A045642.P3543117835626022341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A045642.P3543117835626022341

/-!
# A045643: Palindromic and divisible by 8.

The programs for A045643, there is no canonical definition to state claims against.
-/

/-! ## A045643.P12796510057931542310

`∩[A002113(n+1), A008590(n)]`
-/

namespace A045643.P12796510057931542310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045643.P12796510057931542310

/-! ## A045643.P9587925527392642112

`∩[A029951(n+1), A008590(n)]`
-/

namespace A045643.P9587925527392642112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045643.P9587925527392642112

/-! ## A045643.P7110898657592623882

`∩[A045639(n+1), A008590(n)]`
-/

namespace A045643.P7110898657592623882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045643.P7110898657592623882

/-! ## A045643.P16951989618166198713

`∩[A029951(n+1), A047393(n+1)]`
-/

namespace A045643.P16951989618166198713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045643.P16951989618166198713

/-! ## A045643.P12972733075210891933

`∩[A029951(n+1), A047470(n+1)]`
-/

namespace A045643.P12972733075210891933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045643.P12972733075210891933

/-!
# A045644: Palindromic and divisible by 9.

The programs for A045644, there is no canonical definition to state claims against.
-/

/-! ## A045644.P3681612987646593113

`filter[A045638(n+1), A359430(#)]`
-/

namespace A045644.P3681612987646593113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A045644.P3681612987646593113

/-! ## A045644.P17703510243594985459

`filter[A045638(n+1), A373991(#)]`
-/

namespace A045644.P17703510243594985459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A045644.P17703510243594985459

/-! ## A045644.P3052179839962911479

`filter[A045638(n+1), A374117(#)]`
-/

namespace A045644.P3052179839962911479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A045644.P3052179839962911479

/-! ## A045644.P11028708387814275272

`filter[A045638(n+1), A374121(#)]`
-/

namespace A045644.P11028708387814275272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A045644.P11028708387814275272

/-! ## A045644.P18361835587061605166

`∩[A002113(n+1), A008591(n)]`
-/

namespace A045644.P18361835587061605166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045644.P18361835587061605166

/-! ## A045644.P6604046033201743732

`∩[A045638(n+1), A008591(n)]`
-/

namespace A045644.P6604046033201743732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045644.P6604046033201743732

/-! ## A045644.P1576237749256472816

`∩[A045638(n+1), A374118(n+1)]`
-/

namespace A045644.P1576237749256472816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045644.P1576237749256472816

/-! ## A045644.P4818766524613158095

`∩[A045638(n+1), A242660(n+1)]`
-/

namespace A045644.P4818766524613158095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045644.P4818766524613158095

/-! ## A045644.P4435918416249350463

`∩[A045638(n+1), A090570(n+1)]`
-/

namespace A045644.P4435918416249350463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045644.P4435918416249350463

/-! ## A045644.P8931511984516418185

`∩[A045638(n+1), A120740(n+1)]`
-/

namespace A045644.P8931511984516418185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045644.P8931511984516418185

/-!
# A045646: 

The programs for A045646, there is no canonical definition to state claims against.
-/

/-! ## A045646.P1451957391542397425

`A051885(a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A045646.P1451957391542397425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A051885 (a (n - 1)).toNat

end

end A045646.P1451957391542397425

/-!
# A045648: Number of chiral n-ominoes in (n-1)-space, one cell labeled.

The programs for A045648, there is no canonical definition to state claims against.
-/

/-! ## A045648.P1814840685391931774

`A248890(A046469(n)+1)`
-/

namespace A045648.P1814840685391931774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248890 (A046469 n + 1).toNat

end

end A045648.P1814840685391931774

/-! ## A045648.P8995975331806441794

`A248890(A062399(n+1))`
-/

namespace A045648.P8995975331806441794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248890 (A062399 (n + 1)).toNat

end

end A045648.P8995975331806441794

/-! ## A045648.P12808309037044764916

`A109680(A248890(n+1))`
-/

namespace A045648.P12808309037044764916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A248890 (n + 1)).toNat

end

end A045648.P12808309037044764916

/-! ## A045648.P15472745783329220079

`A248890(A120126(n+1))`
-/

namespace A045648.P15472745783329220079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248890 (A120126 (n + 1)).toNat

end

end A045648.P15472745783329220079

/-! ## A045648.P5904455834201090587

`A248890(A351870(n+1))`
-/

namespace A045648.P5904455834201090587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248890 (A351870 (n + 1)).toNat

end

end A045648.P5904455834201090587

/-!
# A045650: Numbers that cannot be expressed as k + floor(log(k)) where k is an integer.

The programs for A045650, the canonical program `A045650.P11695771284551270980` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045650 has offset 1).

The definition of A045650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045650.P11695771284551270980

`floor(exp(n+1))+n+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045650

/-- `floor(exp(n+1))+n+1` -/
def P11695771284551270980.Spec : Prop :=
  ∀ n, P11695771284551270980.a n = A045650 (n + 1)

theorem P11695771284551270980.correct : P11695771284551270980.Spec := by
  intro n
  simp only [A045650, Nat.add_sub_cancel]

end A045650

/-! ## A045650.P6558339975508768460

`∑[A064780(n)+1]`
-/

namespace A045650.P6558339975508768460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064780 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045650.P6558339975508768460

namespace A045650

/-- `∑[A064780(n)+1]` -/
def P6558339975508768460.Spec : Prop :=
  ∀ n, P6558339975508768460.a n = A045650 (n + 1)

end A045650

/-! ## A045650.P7464383728093166956

`Δ[A117869(n)+∑[n]]`
-/

namespace A045650.P7464383728093166956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117869 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045650.P7464383728093166956

namespace A045650

/-- `Δ[A117869(n)+∑[n]]` -/
def P7464383728093166956.Spec : Prop :=
  ∀ n, P7464383728093166956.a n = A045650 (n + 1)

end A045650

/-! ## A045650.P16894459111579056500

`Δ[∑[A000149(n)]+∑[n]]`
-/

namespace A045650.P16894459111579056500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045650.P16894459111579056500

namespace A045650

/-- `Δ[∑[A000149(n)]+∑[n]]` -/
def P16894459111579056500.Spec : Prop :=
  ∀ n, P16894459111579056500.a n = A045650 (n + 1)

end A045650

/-! ## A045650.P17568804845767577701

`ceil(2*sinh(n+1)+n)`
-/

namespace A045650.P17568804845767577701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sinh (n + 1 : ℝ) + (n : ℝ)⌉

end

end A045650.P17568804845767577701

namespace A045650

/-- `ceil(2*sinh(n+1)+n)` -/
def P17568804845767577701.Spec : Prop :=
  ∀ n, P17568804845767577701.a n = A045650 (n + 1)

end A045650

/-! ## A045650.P14326646450677549103

`floor(2*sinh(n+1)+n+1)`
-/

namespace A045650.P14326646450677549103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sinh (n + 1 : ℝ) + (n + 1 : ℝ)⌋

end

end A045650.P14326646450677549103

namespace A045650

/-- `floor(2*sinh(n+1)+n+1)` -/
def P14326646450677549103.Spec : Prop :=
  ∀ n, P14326646450677549103.a n = A045650 (n + 1)

end A045650

/-! ## A045650.P5389391140230342584

`ceil(sinh(n+1)+sinh(n+1)+n)`
-/

namespace A045650.P5389391140230342584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (n + 1 : ℝ) + (Real.sinh (n + 1 : ℝ) + (n : ℝ))⌉

end

end A045650.P5389391140230342584

namespace A045650

/-- `ceil(sinh(n+1)+sinh(n+1)+n)` -/
def P5389391140230342584.Spec : Prop :=
  ∀ n, P5389391140230342584.a n = A045650 (n + 1)

end A045650

/-! ## A045650.P16150645570222691172

`floor(sinh(n+1)+sinh(n+1)+n+1)`
-/

namespace A045650.P16150645570222691172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (n + 1 : ℝ) + (Real.sinh (n + 1 : ℝ) + (n + 1 : ℝ))⌋

end

end A045650.P16150645570222691172

namespace A045650

/-- `floor(sinh(n+1)+sinh(n+1)+n+1)` -/
def P16150645570222691172.Spec : Prop :=
  ∀ n, P16150645570222691172.a n = A045650 (n + 1)

end A045650

/-!
# A045651: L1-coordination sequence for E_8 lattice in Construction A version of the lattice.

The programs for A045651, there is no canonical definition to state claims against.
-/

/-! ## A045651.P1098647021482973944

`(A035473(n)+A008416(n))/2`
-/

namespace A045651.P1098647021482973944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035473 n + A008416 n : ℚ) / 2

end

end A045651.P1098647021482973944

/-! ## A045651.P11938069887192549421

`A008416(n)+A010369(n)%A008416(n)`
-/

namespace A045651.P11938069887192549421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n + Int.tmod (A010369 n) (A008416 n)

end

end A045651.P11938069887192549421

/-!
# A045652: Schur's numbers (version 2).

The programs for A045652, there is no canonical definition to state claims against.
-/

/-! ## A045652.P7649114270027089526

`ogf(1/(1-4x+3x^2-4x^3-7x^4))`
-/

namespace A045652.P7649114270027089526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 3, -4, -7] n

end

end A045652.P7649114270027089526

/-!
# A045653: Number of 2n-bead balanced binary strings, rotationally equivalent to reverse.

The programs for A045653, there is no canonical definition to state claims against.
-/

/-! ## A045653.P2298977154586029180

`A045658(n)+A045656(n)`
-/

namespace A045653.P2298977154586029180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045658 n + A045656 n

end

end A045653.P2298977154586029180

/-! ## A045653.P9095452302477790543

`A045654(n)+A045658(n)-A045659(n)`
-/

namespace A045653.P9095452302477790543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n + (A045658 n - A045659 n)

end

end A045653.P9095452302477790543

/-! ## A045653.P8912137272715536768

`A045655(n)+A045658(n)-A045660(n)`
-/

namespace A045653.P8912137272715536768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n + (A045658 n - A045660 n)

end

end A045653.P8912137272715536768

/-! ## A045653.P11890025927277685595

`A045658(n)+A045655(n)-∑{d}[n, A045669(#)]`
-/

namespace A045653.P11890025927277685595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045658 n + (A045655 n - ∑ d ∈ Nat.divisors (f1 n), A045669 d)

end

end A045653.P11890025927277685595

/-! ## A045653.P14159071938914510465

`A045658(n)+∑{d}[n, #*A038199(#)]+1-A045660(n)`
-/

namespace A045653.P14159071938914510465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045658 n + (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038199 d + 1 - A045660 n)

end

end A045653.P14159071938914510465

/-!
# A045654: Number of 2n-bead balanced binary strings, rotationally equivalent to complement.

The programs for A045654, the canonical program `A045654.P8899303963465840375` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045654 has offset 0).

The definition of A045654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045654.P7719407899425157775

`A045659(n)+A045656(n)`
-/

namespace A045654.P7719407899425157775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045659 n + A045656 n

end

end A045654.P7719407899425157775

namespace A045654

/-- `A045659(n)+A045656(n)` -/
def P7719407899425157775.Spec : Prop :=
  ∀ n, P7719407899425157775.a n = A045654 n

theorem P7719407899425157775.correct : P7719407899425157775.Spec := by
  intro n
  simp only [A045654, Nat.add_sub_cancel, A045654.P7719407899425157775.a, A045654.P8899303963465840375.a, A045656, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A045659, A045659.P18078101322428764532.a, A051049, A051049.P4107407933189927976.a, A142150, A142150.P17187063318547882225.a, A045655, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A045669, A045669.P14509284177368627786.a, A038199, A038199.P1588479413970294253.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, A000007, A000007.P6599383543502402472.a, A000740, A000740.P14835443835842648949.a, A004277, A004277.P16255821370285667660.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036453, A036453.P17495263989008753229.a, A045683, A045683.P14787099194818843150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045654

/-! ## A045654.P12336983220616181455

`A129342(n)+A000007(n)`
-/

namespace A045654.P12336983220616181455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129342 n + A000007 n

end

end A045654.P12336983220616181455

namespace A045654

/-- `A129342(n)+A000007(n)` -/
def P12336983220616181455.Spec : Prop :=
  ∀ n, P12336983220616181455.a n = A045654 n

end A045654

/-! ## A045654.P8899303963465840375

`A051049(n)+a(A142150(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045654

/-- `A051049(n)+a(A142150(n))` -/
def P8899303963465840375.Spec : Prop :=
  ∀ n, P8899303963465840375.a n = A045654 n

theorem P8899303963465840375.correct : P8899303963465840375.Spec := by
  intro n
  simp only [A045654]

end A045654

/-! ## A045654.P9141162127479913637

`A028310(n)+A129342(n)-n`
-/

namespace A045654.P9141162127479913637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A129342 n - (n : ℤ))

end

end A045654.P9141162127479913637

namespace A045654

/-- `A028310(n)+A129342(n)-n` -/
def P9141162127479913637.Spec : Prop :=
  ∀ n, P9141162127479913637.a n = A045654 n

end A045654

/-! ## A045654.P486647899258167128

`A356170(2*n+1)+A129342(n)`
-/

namespace A045654.P486647899258167128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356170 (2 * n + 1) + A129342 n

end

end A045654.P486647899258167128

namespace A045654

/-- `A356170(2*n+1)+A129342(n)` -/
def P486647899258167128.Spec : Prop :=
  ∀ n, P486647899258167128.a n = A045654 n

end A045654

/-! ## A045654.P15461379366973550423

`A129342(A142150(n))+A000079(n)`
-/

namespace A045654.P15461379366973550423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129342 (A142150 n).toNat + A000079 n

end

end A045654.P15461379366973550423

namespace A045654

/-- `A129342(A142150(n))+A000079(n)` -/
def P15461379366973550423.Spec : Prop :=
  ∀ n, P15461379366973550423.a n = A045654 n

end A045654

/-! ## A045654.P12912448081764403792

`A129342(n)+A007814(A339819(n+1))`
-/

namespace A045654.P12912448081764403792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129342 n + A007814 (A339819 (n + 1)).toNat

end

end A045654.P12912448081764403792

namespace A045654

/-- `A129342(n)+A007814(A339819(n+1))` -/
def P12912448081764403792.Spec : Prop :=
  ∀ n, P12912448081764403792.a n = A045654 n

end A045654

/-! ## A045654.P6163654640627977735

`A129342(n)+A318655(n+2)*A378998(n+1)`
-/

namespace A045654.P6163654640627977735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129342 n + A318655 (n + 2) * A378998 (n + 1)

end

end A045654.P6163654640627977735

namespace A045654

/-- `A129342(n)+A318655(n+2)*A378998(n+1)` -/
def P6163654640627977735.Spec : Prop :=
  ∀ n, P6163654640627977735.a n = A045654 n

end A045654

/-! ## A045654.P9210475579456623702

`A045653(n)+A045659(n)-A045658(n)`
-/

namespace A045654.P9210475579456623702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045653 n + (A045659 n - A045658 n)

end

end A045654.P9210475579456623702

namespace A045654

/-- `A045653(n)+A045659(n)-A045658(n)` -/
def P9210475579456623702.Spec : Prop :=
  ∀ n, P9210475579456623702.a n = A045654 n

end A045654

/-! ## A045654.P1293845062112644851

`A045655(n)+A045659(n)-A045660(n)`
-/

namespace A045654.P1293845062112644851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n + (A045659 n - A045660 n)

end

end A045654.P1293845062112644851

namespace A045654

/-- `A045655(n)+A045659(n)-A045660(n)` -/
def P1293845062112644851.Spec : Prop :=
  ∀ n, P1293845062112644851.a n = A045654 n

theorem P1293845062112644851.correct : P1293845062112644851.Spec := by
  intro n
  simp only [A045654, Nat.add_sub_cancel, A045654.P1293845062112644851.a, A045654.P8899303963465840375.a, A045655, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A045659, A045659.P18078101322428764532.a, A045660, A045660.P14796031568194010525.a, A051049, A051049.P4107407933189927976.a, A142150, A142150.P17187063318547882225.a, A038199, A038199.P1588479413970294253.a, A045656, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A000740, A000740.P14835443835842648949.a, A036453, A036453.P17495263989008753229.a, A045669, A045669.P14509284177368627786.a, A010553, A010553.P11932377395426747626.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036450, A036450.P17654615826854850628.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045654

/-!
# A045655: Number of 2n-bead balanced binary strings, rotationally equivalent to reversed complement.

The programs for A045655, the canonical program `A045655.P11856846088611068955` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045655 has offset 0).

The definition of A045655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045655.P11856846088611068955

`∑{d}[n, #*A038199(#)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A045655

/-- `∑{d}[n, #*A038199(#)]+1` -/
def P11856846088611068955.Spec : Prop :=
  ∀ n, P11856846088611068955.a n = A045655 n

theorem P11856846088611068955.correct : P11856846088611068955.Spec := by
  intro n
  simp only [A045655]

end A045655

/-! ## A045655.P12353140396173755160

`A045660(n)+A045656(n)`
-/

namespace A045655.P12353140396173755160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045660 n + A045656 n

end

end A045655.P12353140396173755160

namespace A045655

/-- `A045660(n)+A045656(n)` -/
def P12353140396173755160.Spec : Prop :=
  ∀ n, P12353140396173755160.a n = A045655 n

theorem P12353140396173755160.correct : P12353140396173755160.Spec := by
  intro n
  simp only [A045655, Nat.add_sub_cancel, A045655.P12353140396173755160.a, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A038199, A038199.P1588479413970294253.a, A045656, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A045660, A045660.P14796031568194010525.a, A000740, A000740.P14835443835842648949.a, A036453, A036453.P17495263989008753229.a, A045669, A045669.P14509284177368627786.a, A010553, A010553.P11932377395426747626.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036450, A036450.P17654615826854850628.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, A000005, A000005.P16091521709108585461.a, A000007, A000007.P6599383543502402472.a, A004277, A004277.P16255821370285667660.a, A008683, A008683.P18254306604665478110.a, A045683, A045683.P14787099194818843150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045655

/-! ## A045655.P10144552632405604207

`A045656(n)+∑{d}[n, A045669(#)]`
-/

namespace A045655.P10144552632405604207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045656 n + ∑ d ∈ Nat.divisors (f1 n), A045669 d

end

end A045655.P10144552632405604207

namespace A045655

/-- `A045656(n)+∑{d}[n, A045669(#)]` -/
def P10144552632405604207.Spec : Prop :=
  ∀ n, P10144552632405604207.a n = A045655 n

theorem P10144552632405604207.correct : P10144552632405604207.Spec := by
  intro n
  simp only [A045655, Nat.add_sub_cancel, A045655.P10144552632405604207.f1, A045655.P10144552632405604207.a, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A038199, A038199.P1588479413970294253.a, A045656, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A045669, A045669.P14509284177368627786.a, A000740, A000740.P14835443835842648949.a, A036453, A036453.P17495263989008753229.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, A000007, A000007.P6599383543502402472.a, A004277, A004277.P16255821370285667660.a, A010553, A010553.P11932377395426747626.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036450, A036450.P17654615826854850628.a, A045683, A045683.P14787099194818843150.a, A000005, A000005.P16091521709108585461.a, A000048, A000048.P16452762028424782785.a, A005843, A005843.P3167286115683555970.a, A008683, A008683.P18254306604665478110.a, A045686, A045686.P11325912773679884789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045655

/-! ## A045655.P4266191127654790092

`A045653(n)+A045660(n)-A045658(n)`
-/

namespace A045655.P4266191127654790092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045653 n + (A045660 n - A045658 n)

end

end A045655.P4266191127654790092

namespace A045655

/-- `A045653(n)+A045660(n)-A045658(n)` -/
def P4266191127654790092.Spec : Prop :=
  ∀ n, P4266191127654790092.a n = A045655 n

end A045655

/-! ## A045655.P9588017031716481589

`A045654(n)+A045660(n)-A045659(n)`
-/

namespace A045655.P9588017031716481589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n + (A045660 n - A045659 n)

end

end A045655.P9588017031716481589

namespace A045655

/-- `A045654(n)+A045660(n)-A045659(n)` -/
def P9588017031716481589.Spec : Prop :=
  ∀ n, P9588017031716481589.a n = A045655 n

theorem P9588017031716481589.correct : P9588017031716481589.Spec := by
  intro n
  simp only [A045655, Nat.add_sub_cancel, A045655.P9588017031716481589.a, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A038199, A038199.P1588479413970294253.a, A045654, A045654.P8899303963465840375.a, A045659, A045659.P18078101322428764532.a, A045660, A045660.P14796031568194010525.a, A000740, A000740.P14835443835842648949.a, A036453, A036453.P17495263989008753229.a, A045656, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A051049, A051049.P4107407933189927976.a, A142150, A142150.P17187063318547882225.a, A010553, A010553.P11932377395426747626.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036450, A036450.P17654615826854850628.a, A045669, A045669.P14509284177368627786.a, A000005, A000005.P16091521709108585461.a, A008683, A008683.P18254306604665478110.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045655

/-!
# A045656: Number of 2n-bead balanced binary strings, rotationally equivalent to reverse, complement and reversed complement.

The programs for A045656, the canonical program `A045656.P5470975865177139039` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045656 has offset 0).

The definition of A045656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045656.P18037912491105810880

`A045654(n)-A045659(n)`
-/

namespace A045656.P18037912491105810880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - A045659 n

end

end A045656.P18037912491105810880

namespace A045656

/-- `A045654(n)-A045659(n)` -/
def P18037912491105810880.Spec : Prop :=
  ∀ n, P18037912491105810880.a n = A045656 n

theorem P18037912491105810880.correct : P18037912491105810880.Spec := by
  intro n
  simp only [A045656, Nat.add_sub_cancel, A045656.P18037912491105810880.a, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A045654, A045654.P8899303963465840375.a, A045655, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A045659, A045659.P18078101322428764532.a, A045669, A045669.P14509284177368627786.a, A038199, A038199.P1588479413970294253.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, A051049, A051049.P4107407933189927976.a, A142150, A142150.P17187063318547882225.a, A000007, A000007.P6599383543502402472.a, A000740, A000740.P14835443835842648949.a, A004277, A004277.P16255821370285667660.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036453, A036453.P17495263989008753229.a, A045683, A045683.P14787099194818843150.a, A000048, A000048.P16452762028424782785.a, A005843, A005843.P3167286115683555970.a, A008683, A008683.P18254306604665478110.a, A010553, A010553.P11932377395426747626.a, A036450, A036450.P17654615826854850628.a, A045686, A045686.P11325912773679884789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045656

/-! ## A045656.P2831976765173518802

`A045653(n)-A045658(n)`
-/

namespace A045656.P2831976765173518802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045653 n - A045658 n

end

end A045656.P2831976765173518802

namespace A045656

/-- `A045653(n)-A045658(n)` -/
def P2831976765173518802.Spec : Prop :=
  ∀ n, P2831976765173518802.a n = A045656 n

end A045656

/-! ## A045656.P3157910802155817805

`A045655(n)-A045660(n)`
-/

namespace A045656.P3157910802155817805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n - A045660 n

end

end A045656.P3157910802155817805

namespace A045656

/-- `A045655(n)-A045660(n)` -/
def P3157910802155817805.Spec : Prop :=
  ∀ n, P3157910802155817805.a n = A045656 n

theorem P3157910802155817805.correct : P3157910802155817805.Spec := by
  intro n
  simp only [A045656, Nat.add_sub_cancel, A045656.P3157910802155817805.a, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A045655, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A045660, A045660.P14796031568194010525.a, A045669, A045669.P14509284177368627786.a, A038199, A038199.P1588479413970294253.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, A000007, A000007.P6599383543502402472.a, A000740, A000740.P14835443835842648949.a, A004277, A004277.P16255821370285667660.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036453, A036453.P17495263989008753229.a, A045683, A045683.P14787099194818843150.a, A000048, A000048.P16452762028424782785.a, A005843, A005843.P3167286115683555970.a, A008683, A008683.P18254306604665478110.a, A010553, A010553.P11932377395426747626.a, A036450, A036450.P17654615826854850628.a, A045686, A045686.P11325912773679884789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045656

/-! ## A045656.P5470975865177139039

`A045655(n)-∑{d}[n, A045669(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045656

/-- `A045655(n)-∑{d}[n, A045669(#)]` -/
def P5470975865177139039.Spec : Prop :=
  ∀ n, P5470975865177139039.a n = A045656 n

theorem P5470975865177139039.correct : P5470975865177139039.Spec := by
  intro n
  simp only [A045656]

end A045656

/-! ## A045656.P15725999790410731243

`∑{d}[n, #*A038199(#)]+1-A045660(n)`
-/

namespace A045656.P15725999790410731243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038199 d + 1 - A045660 n

end

end A045656.P15725999790410731243

namespace A045656

/-- `∑{d}[n, #*A038199(#)]+1-A045660(n)` -/
def P15725999790410731243.Spec : Prop :=
  ∀ n, P15725999790410731243.a n = A045656 n

theorem P15725999790410731243.correct : P15725999790410731243.Spec := by
  intro n
  simp only [A045656, Nat.add_sub_cancel, A045656.P15725999790410731243.f1, A045656.P15725999790410731243.a, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A038199, A038199.P1588479413970294253.a, A045655, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A045660, A045660.P14796031568194010525.a, A045669, A045669.P14509284177368627786.a, A000740, A000740.P14835443835842648949.a, A036453, A036453.P17495263989008753229.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, A000007, A000007.P6599383543502402472.a, A004277, A004277.P16255821370285667660.a, A010553, A010553.P11932377395426747626.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036450, A036450.P17654615826854850628.a, A045683, A045683.P14787099194818843150.a, A000005, A000005.P16091521709108585461.a, A000048, A000048.P16452762028424782785.a, A005843, A005843.P3167286115683555970.a, A008683, A008683.P18254306604665478110.a, A045686, A045686.P11325912773679884789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045656

/-!
# A045657: Number of 2n-bead balanced binary strings, rotationally inequivalent to reverse, complement and reversed complement.

The programs for A045657, there is no canonical definition to state claims against.
-/

/-! ## A045657.P9426572138708143702

`A000984(n)-A045653(n)-A045654(n)-A045655(n)+2*A045656(n)`
-/

namespace A045657.P9426572138708143702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A045653 n - A045654 n - A045655 n + 2 * A045656 n

end

end A045657.P9426572138708143702

/-! ## A045657.P10386809465384310734

`∑{d}[n, A045666(#)]`
-/

namespace A045657.P10386809465384310734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045666 d

end

end A045657.P10386809465384310734

/-!
# A045658: Number of 2n-bead balanced binary strings, rotationally equivalent to reverse, inequivalent to complement and reversed complement.

The programs for A045658, there is no canonical definition to state claims against.
-/

/-! ## A045658.P12844357521295552572

`A045653(n)-A045656(n)`
-/

namespace A045658.P12844357521295552572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045653 n - A045656 n

end

end A045658.P12844357521295552572

/-! ## A045658.P9696611808531835250

`∑{d}[n, A045667(#)]`
-/

namespace A045658.P9696611808531835250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045667 d

end

end A045658.P9696611808531835250

/-! ## A045658.P4221424721353802049

`A045653(n)+A045659(n)-A045654(n)`
-/

namespace A045658.P4221424721353802049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045653 n + (A045659 n - A045654 n)

end

end A045658.P4221424721353802049

/-! ## A045658.P604111949731695819

`A045653(n)+A045660(n)-A045655(n)`
-/

namespace A045658.P604111949731695819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045653 n + (A045660 n - A045655 n)

end

end A045658.P604111949731695819

/-! ## A045658.P15029486655637601713

`A045653(n)-(A045655(n)-∑{d}[n, A045669(#)])`
-/

namespace A045658.P15029486655637601713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045653 n - (A045655 n - ∑ d ∈ Nat.divisors (f1 n), A045669 d)

end

end A045658.P15029486655637601713

/-!
# A045659: Number of 2n-bead balanced binary strings, rotationally equivalent to complement, inequivalent to reverse and reversed complement.

The programs for A045659, the canonical program `A045659.P18078101322428764532` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045659 has offset 0).

The definition of A045659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045659.P18078101322428764532

`A045654(n)-A045656(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045659

/-- `A045654(n)-A045656(n)` -/
def P18078101322428764532.Spec : Prop :=
  ∀ n, P18078101322428764532.a n = A045659 n

theorem P18078101322428764532.correct : P18078101322428764532.Spec := by
  intro n
  simp only [A045659]

end A045659

/-! ## A045659.P10032660761342158188

`∑{d}[n, A045668(#)]`
-/

namespace A045659.P10032660761342158188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045668 d

end

end A045659.P10032660761342158188

namespace A045659

/-- `∑{d}[n, A045668(#)]` -/
def P10032660761342158188.Spec : Prop :=
  ∀ n, P10032660761342158188.a n = A045659 n

end A045659

/-! ## A045659.P5613074135225710083

`A045654(n)+A045658(n)-A045653(n)`
-/

namespace A045659.P5613074135225710083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n + (A045658 n - A045653 n)

end

end A045659.P5613074135225710083

namespace A045659

/-- `A045654(n)+A045658(n)-A045653(n)` -/
def P5613074135225710083.Spec : Prop :=
  ∀ n, P5613074135225710083.a n = A045659 n

end A045659

/-! ## A045659.P8466249230329497720

`A045654(n)+A045660(n)-A045655(n)`
-/

namespace A045659.P8466249230329497720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n + (A045660 n - A045655 n)

end

end A045659.P8466249230329497720

namespace A045659

/-- `A045654(n)+A045660(n)-A045655(n)` -/
def P8466249230329497720.Spec : Prop :=
  ∀ n, P8466249230329497720.a n = A045659 n

theorem P8466249230329497720.correct : P8466249230329497720.Spec := by
  intro n
  simp only [A045659, Nat.add_sub_cancel, A045659.P8466249230329497720.a, A045659.P18078101322428764532.a, A045654, A045654.P8899303963465840375.a, A045655, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A045656, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A045660, A045660.P14796031568194010525.a, A038199, A038199.P1588479413970294253.a, A045669, A045669.P14509284177368627786.a, A051049, A051049.P4107407933189927976.a, A142150, A142150.P17187063318547882225.a, A000740, A000740.P14835443835842648949.a, A036453, A036453.P17495263989008753229.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, A000007, A000007.P6599383543502402472.a, A004277, A004277.P16255821370285667660.a, A010553, A010553.P11932377395426747626.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036450, A036450.P17654615826854850628.a, A045683, A045683.P14787099194818843150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045659

/-! ## A045659.P7891935850758042870

`A045654(n)-(A045655(n)-∑{d}[n, A045669(#)])`
-/

namespace A045659.P7891935850758042870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - (A045655 n - ∑ d ∈ Nat.divisors (f1 n), A045669 d)

end

end A045659.P7891935850758042870

namespace A045659

/-- `A045654(n)-(A045655(n)-∑{d}[n, A045669(#)])` -/
def P7891935850758042870.Spec : Prop :=
  ∀ n, P7891935850758042870.a n = A045659 n

end A045659

/-!
# A045660: Number of 2n-bead balanced binary strings, rotationally equivalent to reversed complement, inequivalent to reverse and complement.

The programs for A045660, the canonical program `A045660.P14796031568194010525` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045660 has offset 0).

The definition of A045660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045655, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045660.P14796031568194010525

`A045655(n)-A045656(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045660

/-- `A045655(n)-A045656(n)` -/
def P14796031568194010525.Spec : Prop :=
  ∀ n, P14796031568194010525.a n = A045660 n

theorem P14796031568194010525.correct : P14796031568194010525.Spec := by
  intro n
  simp only [A045660]

end A045660

/-! ## A045660.P13337138854614058131

`∑{d}[n, A045669(#)]`
-/

namespace A045660.P13337138854614058131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045669 d

end

end A045660.P13337138854614058131

namespace A045660

/-- `∑{d}[n, A045669(#)]` -/
def P13337138854614058131.Spec : Prop :=
  ∀ n, P13337138854614058131.a n = A045660 n

theorem P13337138854614058131.correct : P13337138854614058131.Spec := by
  intro n
  simp only [A045660, Nat.add_sub_cancel, A045660.P13337138854614058131.f1, A045660.P13337138854614058131.a, A045660.P14796031568194010525.a, A045655, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A045656, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A045669, A045669.P14509284177368627786.a, A038199, A038199.P1588479413970294253.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, A000007, A000007.P6599383543502402472.a, A000740, A000740.P14835443835842648949.a, A004277, A004277.P16255821370285667660.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036453, A036453.P17495263989008753229.a, A045683, A045683.P14787099194818843150.a, A000048, A000048.P16452762028424782785.a, A005843, A005843.P3167286115683555970.a, A008683, A008683.P18254306604665478110.a, A010553, A010553.P11932377395426747626.a, A036450, A036450.P17654615826854850628.a, A045686, A045686.P11325912773679884789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045660

/-! ## A045660.P12635131443021937635

`∑{d}[n, #*A038199(#)]+1-A045656(n)`
-/

namespace A045660.P12635131443021937635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038199 d + 1 - A045656 n

end

end A045660.P12635131443021937635

namespace A045660

/-- `∑{d}[n, #*A038199(#)]+1-A045656(n)` -/
def P12635131443021937635.Spec : Prop :=
  ∀ n, P12635131443021937635.a n = A045660 n

end A045660

/-! ## A045660.P17948355507239280067

`A045655(n)+A045658(n)-A045653(n)`
-/

namespace A045660.P17948355507239280067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n + (A045658 n - A045653 n)

end

end A045660.P17948355507239280067

namespace A045660

/-- `A045655(n)+A045658(n)-A045653(n)` -/
def P17948355507239280067.Spec : Prop :=
  ∀ n, P17948355507239280067.a n = A045660 n

end A045660

/-! ## A045660.P7612977692859678243

`A045655(n)+A045659(n)-A045654(n)`
-/

namespace A045660.P7612977692859678243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n + (A045659 n - A045654 n)

end

end A045660.P7612977692859678243

namespace A045660

/-- `A045655(n)+A045659(n)-A045654(n)` -/
def P7612977692859678243.Spec : Prop :=
  ∀ n, P7612977692859678243.a n = A045660 n

theorem P7612977692859678243.correct : P7612977692859678243.Spec := by
  intro n
  simp only [A045660, Nat.add_sub_cancel, A045660.P7612977692859678243.a, A045660.P14796031568194010525.a, A045654, A045654.P8899303963465840375.a, A045655, A045655.P11856846088611068955.f1, A045655.P11856846088611068955.a, A045656, A045656.P5470975865177139039.f1, A045656.P5470975865177139039.a, A045659, A045659.P18078101322428764532.a, A038199, A038199.P1588479413970294253.a, A045669, A045669.P14509284177368627786.a, A051049, A051049.P4107407933189927976.a, A142150, A142150.P17187063318547882225.a, A000740, A000740.P14835443835842648949.a, A036453, A036453.P17495263989008753229.a, A045664, A045664.P10163269847227854319.a, A045665, A045665.P7749227434187305744.a, A000007, A000007.P6599383543502402472.a, A004277, A004277.P16255821370285667660.a, A010553, A010553.P11932377395426747626.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A036450, A036450.P17654615826854850628.a, A045683, A045683.P14787099194818843150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045660

/-!
# A045661: a(n) = Product_{d|n} (n/d + d).

The programs for A045661, the canonical program `A045661.P13832079266207768772` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045661 has offset 1).

The definition of A045661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045661.P13832079266207768772

`∏{d}[n+1, (n+1)/#+#]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045661

/-- `∏{d}[n+1, (n+1)/#+#]` -/
def P13832079266207768772.Spec : Prop :=
  ∀ n, P13832079266207768772.a n = (A045661 (n + 1) : ℚ)

end A045661

/-! ## A045661.P8659902575477231011

`2^∑{d}[n+1, log2((n+1)/#+#)]`
-/

namespace A045661.P8659902575477231011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ) : ℝ))

end

end A045661.P8659902575477231011

namespace A045661

/-- `2^∑{d}[n+1, log2((n+1)/#+#)]` -/
def P8659902575477231011.Spec : Prop :=
  ∀ n, P8659902575477231011.a n = (A045661 (n + 1) : ℝ)

end A045661

/-!
# A045662: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reverse.

The programs for A045662, there is no canonical definition to state claims against.
-/

/-! ## A045662.P18124920693923705048

`A045667(n)+A045665(n)`
-/

namespace A045662.P18124920693923705048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045667 n + A045665 n

end

end A045662.P18124920693923705048

/-! ## A045662.P8588969886981045569

`A004277(n)*A045680(n)`
-/

namespace A045662.P8588969886981045569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A045680 n

end

end A045662.P8588969886981045569

/-! ## A045662.P15558577502602865460

`(A004273(n)+1)*A045680(n)`
-/

namespace A045662.P15558577502602865460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + 1) * A045680 n

end

end A045662.P15558577502602865460

/-! ## A045662.P11016091628671487113

`A045680(n)*A065033(4*n)`
-/

namespace A045662.P11016091628671487113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045680 n * A065033 (4 * n)

end

end A045662.P11016091628671487113

/-! ## A045662.P9300136850751864944

`(A008486(n)-n)*A045680(n)`
-/

namespace A045662.P9300136850751864944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 n - (n : ℤ)) * A045680 n

end

end A045662.P9300136850751864944

/-! ## A045662.P9075653921856198913

`A004396(A008486(n))*A045680(n)`
-/

namespace A045662.P9075653921856198913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008486 n).toNat * A045680 n

end

end A045662.P9075653921856198913

/-! ## A045662.P8140752315499650335

`A004525(A008574(n))*A045680(n)`
-/

namespace A045662.P8140752315499650335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008574 n).toNat * A045680 n

end

end A045662.P8140752315499650335

/-! ## A045662.P11050401649921707037

`(A008574(n)-A005843(n))*A045680(n)`
-/

namespace A045662.P11050401649921707037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n - A005843 n) * A045680 n

end

end A045662.P11050401649921707037

/-! ## A045662.P2378349247569185923

`A045663(n)/A000048(n)*A045680(n)`
-/

namespace A045662.P2378349247569185923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 n : ℚ) / (A000048 n : ℚ) * (A045680 n : ℚ)

end

end A045662.P2378349247569185923

/-! ## A045662.P12544356065030193984

`A045665(n)/A045683(n)*A045680(n)`
-/

namespace A045662.P12544356065030193984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (A045683 n : ℚ) * (A045680 n : ℚ)

end

end A045662.P12544356065030193984

/-! ## A045662.P16110337596885955644

`A007727(n)/A022553(n)*A045680(n)`
-/

namespace A045662.P16110337596885955644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 n : ℚ) / (A022553 n : ℚ) * (A045680 n : ℚ)

end

end A045662.P16110337596885955644

/-!
# A045663: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to complement.

The programs for A045663, the canonical program `A045663.P16332658941745437849` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045663 has offset 0).

The definition of A045663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045663.P6790887549274189523

`A045668(n)+A045665(n)`
-/

namespace A045663.P6790887549274189523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045668 n + A045665 n

end

end A045663.P6790887549274189523

namespace A045663

/-- `A045668(n)+A045665(n)` -/
def P6790887549274189523.Spec : Prop :=
  ∀ n, P6790887549274189523.a n = A045663 n

end A045663

/-! ## A045663.P16332658941745437849

`A000048(n)*A004277(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A045663

/-- `A000048(n)*A004277(n)` -/
def P16332658941745437849.Spec : Prop :=
  ∀ n, P16332658941745437849.a n = A045663 n

theorem P16332658941745437849.correct : P16332658941745437849.Spec := by
  intro n
  simp only [A045663]

end A045663

/-! ## A045663.P6208621396613327707

`(A004273(n)+1)*A000048(n)`
-/

namespace A045663.P6208621396613327707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + 1) * A000048 n

end

end A045663.P6208621396613327707

namespace A045663

/-- `(A004273(n)+1)*A000048(n)` -/
def P6208621396613327707.Spec : Prop :=
  ∀ n, P6208621396613327707.a n = A045663 n

end A045663

/-! ## A045663.P15177951007454693425

`A000048(n)*A028310(2*n)`
-/

namespace A045663.P15177951007454693425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n * A028310 (2 * n)

end

end A045663.P15177951007454693425

namespace A045663

/-- `A000048(n)*A028310(2*n)` -/
def P15177951007454693425.Spec : Prop :=
  ∀ n, P15177951007454693425.a n = A045663 n

end A045663

/-! ## A045663.P6484483622736764960

`(A051755(n+2)-2)*A000048(n)`
-/

namespace A045663.P6484483622736764960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051755 (n + 2) - 2) * A000048 n

end

end A045663.P6484483622736764960

namespace A045663

/-- `(A051755(n+2)-2)*A000048(n)` -/
def P6484483622736764960.Spec : Prop :=
  ∀ n, P6484483622736764960.a n = A045663 n

end A045663

/-! ## A045663.P17965282245719584468

`A185048(2*n+1)*A000048(n)`
-/

namespace A045663.P17965282245719584468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (2 * n + 1) * A000048 n

end

end A045663.P17965282245719584468

namespace A045663

/-- `A185048(2*n+1)*A000048(n)` -/
def P17965282245719584468.Spec : Prop :=
  ∀ n, P17965282245719584468.a n = A045663 n

end A045663

/-! ## A045663.P4292696314558567871

`(4*n+1-A004273(2*n))*A045683(2*n)`
-/

namespace A045663.P4292696314558567871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1 : ℤ) - A004273 (2 * n)) * A045683 (2 * n)

end

end A045663.P4292696314558567871

namespace A045663

/-- `(4*n+1-A004273(2*n))*A045683(2*n)` -/
def P4292696314558567871.Spec : Prop :=
  ∀ n, P4292696314558567871.a n = A045663 n

end A045663

/-! ## A045663.P8605221479637921983

`(4*n+2-A004277(2*n))*A045683(2*n)`
-/

namespace A045663.P8605221479637921983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 2 : ℤ) - A004277 (2 * n)) * A045683 (2 * n)

end

end A045663.P8605221479637921983

namespace A045663

/-- `(4*n+2-A004277(2*n))*A045683(2*n)` -/
def P8605221479637921983.Spec : Prop :=
  ∀ n, P8605221479637921983.a n = A045663 n

end A045663

/-! ## A045663.P11387370905859605014

`A000048(n)*A004525(A008574(n))`
-/

namespace A045663.P11387370905859605014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n * A004525 (A008574 n).toNat

end

end A045663.P11387370905859605014

namespace A045663

/-- `A000048(n)*A004525(A008574(n))` -/
def P11387370905859605014.Spec : Prop :=
  ∀ n, P11387370905859605014.a n = A045663 n

end A045663

/-! ## A045663.P718662932734759317

`A000048(n)/A045683(n)*A045665(n)`
-/

namespace A045663.P718662932734759317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000048 n : ℚ) / (A045683 n : ℚ) * (A045665 n : ℚ)

end

end A045663.P718662932734759317

namespace A045663

/-- `A000048(n)/A045683(n)*A045665(n)` -/
def P718662932734759317.Spec : Prop :=
  ∀ n, P718662932734759317.a n = (A045663 n : ℚ)

end A045663

/-! ## A045663.P1777346722383454961

`A000048(n)*A004525(A111284(n+1)+2)`
-/

namespace A045663.P1777346722383454961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n * A004525 (A111284 (n + 1) + 2).toNat

end

end A045663.P1777346722383454961

namespace A045663

/-- `A000048(n)*A004525(A111284(n+1)+2)` -/
def P1777346722383454961.Spec : Prop :=
  ∀ n, P1777346722383454961.a n = A045663 n

end A045663

/-! ## A045663.P10183070902012097652

`A045683(2*n)*A048669(A048669(2*n+1))`
-/

namespace A045663.P10183070902012097652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 (2 * n) * A048669 (A048669 (2 * n + 1)).toNat

end

end A045663.P10183070902012097652

namespace A045663

/-- `A045683(2*n)*A048669(A048669(2*n+1))` -/
def P10183070902012097652.Spec : Prop :=
  ∀ n, P10183070902012097652.a n = A045663 n

end A045663

/-! ## A045663.P7552905326737726267

`(A004280(2*(n+1))-A004280(2*n+1))*A045683(2*n)`
-/

namespace A045663.P7552905326737726267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004280 (2 * (n + 1)) - A004280 (2 * n + 1)) * A045683 (2 * n)

end

end A045663.P7552905326737726267

namespace A045663

/-- `(A004280(2*(n+1))-A004280(2*n+1))*A045683(2*n)` -/
def P7552905326737726267.Spec : Prop :=
  ∀ n, P7552905326737726267.a n = A045663 n

end A045663

/-! ## A045663.P7204077152496309307

`A000048(n)/A045680(n)*A045662(n)`
-/

namespace A045663.P7204077152496309307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000048 n : ℚ) / (A045680 n : ℚ) * (A045662 n : ℚ)

end

end A045663.P7204077152496309307

namespace A045663

/-- `A000048(n)/A045680(n)*A045662(n)` -/
def P7204077152496309307.Spec : Prop :=
  ∀ n, P7204077152496309307.a n = (A045663 n : ℚ)

end A045663

/-! ## A045663.P6295191702059992728

`A045665(2*n)/A004277(n)`
-/

namespace A045663.P6295191702059992728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 (2 * n) : ℚ) / (A004277 n : ℚ)

end

end A045663.P6295191702059992728

namespace A045663

/-- `A045665(2*n)/A004277(n)` -/
def P6295191702059992728.Spec : Prop :=
  ∀ n, P6295191702059992728.a n = (A045663 n : ℚ)

end A045663

/-! ## A045663.P14778908182583752814

`A045665(2*n)/record[A005131(n)]`
-/

namespace A045663.P14778908182583752814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 (2 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045663.P14778908182583752814

namespace A045663

/-- `A045665(2*n)/record[A005131(n)]` -/
def P14778908182583752814.Spec : Prop :=
  ∀ n, P14778908182583752814.a n = (A045663 n : ℚ)

end A045663

/-! ## A045663.P13649637436562812380

`A045665(2*n)/record[A124625(n)]`
-/

namespace A045663.P13649637436562812380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 (2 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045663.P13649637436562812380

namespace A045663

/-- `A045665(2*n)/record[A124625(n)]` -/
def P13649637436562812380.Spec : Prop :=
  ∀ n, P13649637436562812380.a n = (A045663 n : ℚ)

end A045663

/-! ## A045663.P1557659689657259230

`A045665(2*n)/A065190(2*n+1)`
-/

namespace A045663.P1557659689657259230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 (2 * n) : ℚ) / (A065190 (2 * n + 1) : ℚ)

end

end A045663.P1557659689657259230

namespace A045663

/-- `A045665(2*n)/A065190(2*n+1)` -/
def P1557659689657259230.Spec : Prop :=
  ∀ n, P1557659689657259230.a n = (A045663 n : ℚ)

end A045663

/-! ## A045663.P12940123312692515473

`A045665(2*n)/A004396(A008486(n))`
-/

namespace A045663.P12940123312692515473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 (2 * n) : ℚ) / (A004396 (A008486 n).toNat : ℚ)

end

end A045663.P12940123312692515473

namespace A045663

/-- `A045665(2*n)/A004396(A008486(n))` -/
def P12940123312692515473.Spec : Prop :=
  ∀ n, P12940123312692515473.a n = (A045663 n : ℚ)

end A045663

/-! ## A045663.P4586164955752195401

`A045665(2*n)/A004525(A008574(n))`
-/

namespace A045663.P4586164955752195401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 (2 * n) : ℚ) / (A004525 (A008574 n).toNat : ℚ)

end

end A045663.P4586164955752195401

namespace A045663

/-- `A045665(2*n)/A004525(A008574(n))` -/
def P4586164955752195401.Spec : Prop :=
  ∀ n, P4586164955752195401.a n = (A045663 n : ℚ)

end A045663

/-!
# A045664: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reversed complement.

The programs for A045664, the canonical program `A045664.P10163269847227854319` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045664 has offset 0).

The definition of A045664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045664.P7967288819612522431

`A045669(n)+A045665(n)`
-/

namespace A045664.P7967288819612522431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045669 n + A045665 n

end

end A045664.P7967288819612522431

namespace A045664

/-- `A045669(n)+A045665(n)` -/
def P7967288819612522431.Spec : Prop :=
  ∀ n, P7967288819612522431.a n = A045664 n

theorem P7967288819612522431.correct : P7967288819612522431.Spec := by
  intro n
  simp only [A045664, Nat.add_sub_cancel, A045664.P7967288819612522431.a, A045664.P10163269847227854319.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A045665, A045665.P7749227434187305744.a, A045669, A045669.P14509284177368627786.a, A004277, A004277.P16255821370285667660.a, A008683, A008683.P18254306604665478110.a, A045683, A045683.P14787099194818843150.a, A000048, A000048.P16452762028424782785.a, A005843, A005843.P3167286115683555970.a, A045686, A045686.P11325912773679884789.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056476, A056476.P12632563156965169968.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A233583, A233583.P15026547221992958741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045664

/-! ## A045664.P6931645031386383671

`A001037(n)*A253909(n)`
-/

namespace A045664.P6931645031386383671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n * A253909 n

end

end A045664.P6931645031386383671

namespace A045664

/-- `A001037(n)*A253909(n)` -/
def P6931645031386383671.Spec : Prop :=
  ∀ n, P6931645031386383671.a n = A045664 n

end A045664

/-! ## A045664.P3709848650445043347

`A028310(n)²*A001037(n)`
-/

namespace A045664.P3709848650445043347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2 * A001037 n

end

end A045664.P3709848650445043347

namespace A045664

/-- `A028310(n)²*A001037(n)` -/
def P3709848650445043347.Spec : Prop :=
  ∀ n, P3709848650445043347.a n = A045664 n

end A045664

/-! ## A045664.P10163269847227854319

`A000007(n)+n*A027375(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A045664

/-- `A000007(n)+n*A027375(n)` -/
def P10163269847227854319.Spec : Prop :=
  ∀ n, P10163269847227854319.a n = A045664 n

theorem P10163269847227854319.correct : P10163269847227854319.Spec := by
  intro n
  simp only [A045664]

end A045664

/-! ## A045664.P2135041328436680777

`(A000007(n)+n)²*A001037(n)`
-/

namespace A045664.P2135041328436680777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) ^ 2 * A001037 n

end

end A045664.P2135041328436680777

namespace A045664

/-- `(A000007(n)+n)²*A001037(n)` -/
def P2135041328436680777.Spec : Prop :=
  ∀ n, P2135041328436680777.a n = A045664 n

end A045664

/-! ## A045664.P8975307003679776098

`(n-A004277(n))²*A001037(n)`
-/

namespace A045664.P8975307003679776098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004277 n) ^ 2 * A001037 n

end

end A045664.P8975307003679776098

namespace A045664

/-- `(n-A004277(n))²*A001037(n)` -/
def P8975307003679776098.Spec : Prop :=
  ∀ n, P8975307003679776098.a n = A045664 n

end A045664

/-! ## A045664.P2566763644164643847

`gcd(n, A045662(n))²*A001037(n)`
-/

namespace A045664.P2566763644164643847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A045662 n) ^ 2 : ℤ) * A001037 n

end

end A045664.P2566763644164643847

namespace A045664

/-- `gcd(n, A045662(n))²*A001037(n)` -/
def P2566763644164643847.Spec : Prop :=
  ∀ n, P2566763644164643847.a n = A045664 n

end A045664

/-! ## A045664.P1313180176741816280

`(1-A087156(n+1))²*A001037(n)`
-/

namespace A045664.P1313180176741816280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A087156 (n + 1)) ^ 2 * A001037 n

end

end A045664.P1313180176741816280

namespace A045664

/-- `(1-A087156(n+1))²*A001037(n)` -/
def P1313180176741816280.Spec : Prop :=
  ∀ n, P1313180176741816280.a n = A045664 n

end A045664

/-! ## A045664.P3349504808732921894

`or(n, A010051(n+2))²*A001037(n)`
-/

namespace A045664.P3349504808732921894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A010051 (n + 2)) ^ 2 * A001037 n

end

end A045664.P3349504808732921894

namespace A045664

/-- `or(n, A010051(n+2))²*A001037(n)` -/
def P3349504808732921894.Spec : Prop :=
  ∀ n, P3349504808732921894.a n = A045664 n

end A045664

/-! ## A045664.P2639786669922740724

`A077655(A000040(n+1))+n*A027375(n)`
-/

namespace A045664.P2639786669922740724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (A000040 (n + 1)).toNat + (n : ℤ) * A027375 n

end

end A045664.P2639786669922740724

namespace A045664

/-- `A077655(A000040(n+1))+n*A027375(n)` -/
def P2639786669922740724.Spec : Prop :=
  ∀ n, P2639786669922740724.a n = A045664 n

end A045664

/-! ## A045664.P10054811286109283727

`A028310(n)²*A123223(A000217(n))`
-/

namespace A045664.P10054811286109283727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2 * A123223 (A000217 n).toNat

end

end A045664.P10054811286109283727

namespace A045664

/-- `A028310(n)²*A123223(A000217(n))` -/
def P10054811286109283727.Spec : Prop :=
  ∀ n, P10054811286109283727.a n = A045664 n

end A045664

/-! ## A045664.P3625282377504725020

`A054521(∑[n+1])+n*A027375(n)`
-/

namespace A045664.P3625282377504725020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * A027375 n

end

end A045664.P3625282377504725020

namespace A045664

/-- `A054521(∑[n+1])+n*A027375(n)` -/
def P3625282377504725020.Spec : Prop :=
  ∀ n, P3625282377504725020.a n = A045664 n

end A045664

/-!
# A045665: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reverse, complement and reversed complement.

The programs for A045665, the canonical program `A045665.P7749227434187305744` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045665 has offset 0).

The definition of A045665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045665.P7749227434187305744

`A004277(n)*A045683(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045665

/-- `A004277(n)*A045683(n)` -/
def P7749227434187305744.Spec : Prop :=
  ∀ n, P7749227434187305744.a n = A045665 n

theorem P7749227434187305744.correct : P7749227434187305744.Spec := by
  intro n
  simp only [A045665]

end A045665

/-! ## A045665.P1673535915937704862

`record[A124625(n)]*A045683(n)`
-/

namespace A045665.P1673535915937704862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045683 n

end

end A045665.P1673535915937704862

namespace A045665

/-- `record[A124625(n)]*A045683(n)` -/
def P1673535915937704862.Spec : Prop :=
  ∀ n, P1673535915937704862.a n = A045665 n

end A045665

/-! ## A045665.P11403749544043413477

`(A004273(n)+1)*A045683(n)`
-/

namespace A045665.P11403749544043413477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + 1) * A045683 n

end

end A045665.P11403749544043413477

namespace A045665

/-- `(A004273(n)+1)*A045683(n)` -/
def P11403749544043413477.Spec : Prop :=
  ∀ n, P11403749544043413477.a n = A045665 n

end A045665

/-! ## A045665.P12475526998200681488

`A028310(2*n)*A045683(n)`
-/

namespace A045665.P12475526998200681488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n) * A045683 n

end

end A045665.P12475526998200681488

namespace A045665

/-- `A028310(2*n)*A045683(n)` -/
def P12475526998200681488.Spec : Prop :=
  ∀ n, P12475526998200681488.a n = A045665 n

end A045665

/-! ## A045665.P16760585439738624923

`A045683(n)*A065033(4*n)`
-/

namespace A045665.P16760585439738624923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 n * A065033 (4 * n)

end

end A045665.P16760585439738624923

namespace A045665

/-- `A045683(n)*A065033(4*n)` -/
def P16760585439738624923.Spec : Prop :=
  ∀ n, P16760585439738624923.a n = A045665 n

end A045665

/-! ## A045665.P7278267443675320279

`(A008486(n)-n)*A045683(n)`
-/

namespace A045665.P7278267443675320279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 n - (n : ℤ)) * A045683 n

end

end A045665.P7278267443675320279

namespace A045665

/-- `(A008486(n)-n)*A045683(n)` -/
def P7278267443675320279.Spec : Prop :=
  ∀ n, P7278267443675320279.a n = A045665 n

end A045665

/-! ## A045665.P16727631224731337307

`(A051755(n+2)-2)*A045683(n)`
-/

namespace A045665.P16727631224731337307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051755 (n + 2) - 2) * A045683 n

end

end A045665.P16727631224731337307

namespace A045665

/-- `(A051755(n+2)-2)*A045683(n)` -/
def P16727631224731337307.Spec : Prop :=
  ∀ n, P16727631224731337307.a n = A045665 n

end A045665

/-! ## A045665.P101077412860638124

`A045683(n)*A065190(2*n+1)`
-/

namespace A045665.P101077412860638124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 n * A065190 (2 * n + 1)

end

end A045665.P101077412860638124

namespace A045665

/-- `A045683(n)*A065190(2*n+1)` -/
def P101077412860638124.Spec : Prop :=
  ∀ n, P101077412860638124.a n = A045665 n

end A045665

/-! ## A045665.P8334593406959914178

`A004396(A008486(n))*A045683(n)`
-/

namespace A045665.P8334593406959914178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008486 n).toNat * A045683 n

end

end A045665.P8334593406959914178

namespace A045665

/-- `A004396(A008486(n))*A045683(n)` -/
def P8334593406959914178.Spec : Prop :=
  ∀ n, P8334593406959914178.a n = A045665 n

end A045665

/-! ## A045665.P973433405730402362

`A004525(A008574(n))*A045683(n)`
-/

namespace A045665.P973433405730402362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008574 n).toNat * A045683 n

end

end A045665.P973433405730402362

namespace A045665

/-- `A004525(A008574(n))*A045683(n)` -/
def P973433405730402362.Spec : Prop :=
  ∀ n, P973433405730402362.a n = A045665 n

end A045665

/-! ## A045665.P17022343605047138569

`A045663(n)-A045668(n)`
-/

namespace A045665.P17022343605047138569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 n - A045668 n

end

end A045665.P17022343605047138569

namespace A045665

/-- `A045663(n)-A045668(n)` -/
def P17022343605047138569.Spec : Prop :=
  ∀ n, P17022343605047138569.a n = A045665 n

end A045665

/-! ## A045665.P15641443650222284204

`A045662(n)-A045667(n)`
-/

namespace A045665.P15641443650222284204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045662 n - A045667 n

end

end A045665.P15641443650222284204

namespace A045665

/-- `A045662(n)-A045667(n)` -/
def P15641443650222284204.Spec : Prop :=
  ∀ n, P15641443650222284204.a n = A045665 n

end A045665

/-! ## A045665.P6894027636295957035

`A045662(n)/A045680(n)*A045683(n)`
-/

namespace A045665.P6894027636295957035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (A045680 n : ℚ) * (A045683 n : ℚ)

end

end A045665.P6894027636295957035

namespace A045665

/-- `A045662(n)/A045680(n)*A045683(n)` -/
def P6894027636295957035.Spec : Prop :=
  ∀ n, P6894027636295957035.a n = (A045665 n : ℚ)

end A045665

/-! ## A045665.P17048679544685765058

`A045664(n)-A045669(n)`
-/

namespace A045665.P17048679544685765058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045664 n - A045669 n

end

end A045665.P17048679544685765058

namespace A045665

/-- `A045664(n)-A045669(n)` -/
def P17048679544685765058.Spec : Prop :=
  ∀ n, P17048679544685765058.a n = A045665 n

theorem P17048679544685765058.correct : P17048679544685765058.Spec := by
  intro n
  simp only [A045665, Nat.add_sub_cancel, A045665.P17048679544685765058.a, A045665.P7749227434187305744.a, A004277, A004277.P16255821370285667660.a, A045664, A045664.P10163269847227854319.a, A045669, A045669.P14509284177368627786.a, A045683, A045683.P14787099194818843150.a, A000007, A000007.P6599383543502402472.a, A000048, A000048.P16452762028424782785.a, A005843, A005843.P3167286115683555970.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A045686, A045686.P11325912773679884789.a, A008683, A008683.P18254306604665478110.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056476, A056476.P12632563156965169968.a, A233583, A233583.P15026547221992958741.a, A056295, A056295.P9438402425658344231.a, A056481, A056481.P6036497099892352670.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045665

/-! ## A045665.P2615216179993603317

`(A007318(A000124(n))+n)*A045683(n)`
-/

namespace A045665.P2615216179993603317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (A000124 n).toNat + (n : ℤ)) * A045683 n

end

end A045665.P2615216179993603317

namespace A045665

/-- `(A007318(A000124(n))+n)*A045683(n)` -/
def P2615216179993603317.Spec : Prop :=
  ∀ n, P2615216179993603317.a n = A045665 n

end A045665

/-!
# A045666: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally inequivalent to reverse, complement and reversed complement.

The programs for A045666, there is no canonical definition to state claims against.
-/

/-! ## A045666.P5815635994870433772

`2*n*A045684(n)`
-/

namespace A045666.P5815635994870433772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A045684 n

end

end A045666.P5815635994870433772

/-! ## A045666.P14151761485686558170

`A007727(n)-A045662(n)-A045663(n)-A045664(n)+2*A045665(n)`
-/

namespace A045666.P14151761485686558170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007727 n - A045662 n - A045663 n - A045664 n + 2 * A045665 n

end

end A045666.P14151761485686558170

/-! ## A045666.P9581980577940337531

`A045684(n)*A057543(n)`
-/

namespace A045666.P9581980577940337531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045684 n * A057543 n

end

end A045666.P9581980577940337531

/-! ## A045666.P2735680909076754750

`A045657(A002998(n))`
-/

namespace A045666.P2735680909076754750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045657 (A002998 n).toNat

end

end A045666.P2735680909076754750

/-! ## A045666.P4385565279316937254

`A045657(A039723(n))`
-/

namespace A045666.P4385565279316937254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045657 (A039723 n).toNat

end

end A045666.P4385565279316937254

/-!
# A045667: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reverse, inequivalent to complement and reversed complement.

The programs for A045667, there is no canonical definition to state claims against.
-/

/-! ## A045667.P3303818476933707777

`2*n*A045685(n)`
-/

namespace A045667.P3303818476933707777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A045685 n

end

end A045667.P3303818476933707777

/-! ## A045667.P2022579202576525192

`A045662(n)-A045665(n)`
-/

namespace A045667.P2022579202576525192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045662 n - A045665 n

end

end A045667.P2022579202576525192

/-! ## A045667.P4430122401755404597

`A045685(n)*A057543(n)`
-/

namespace A045667.P4430122401755404597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045685 n * A057543 n

end

end A045667.P4430122401755404597

/-! ## A045667.P12919715434949998290

`2*n*(A045680(n)-A045683(n))`
-/

namespace A045667.P12919715434949998290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (A045680 n - A045683 n))

end

end A045667.P12919715434949998290

/-! ## A045667.P9635090961279369177

`A045662(n)+A045668(n)-A045663(n)`
-/

namespace A045667.P9635090961279369177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045662 n + (A045668 n - A045663 n)

end

end A045667.P9635090961279369177

/-! ## A045667.P10337215820248089893

`A004277(n)*A045680(n)-A045665(n)`
-/

namespace A045667.P10337215820248089893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A045680 n - A045665 n

end

end A045667.P10337215820248089893

/-! ## A045667.P18001000170053466832

`A045662(n)+A045669(n)-A045664(n)`
-/

namespace A045667.P18001000170053466832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045662 n + (A045669 n - A045664 n)

end

end A045667.P18001000170053466832

/-!
# A045668: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to complement, inequivalent to reverse and reversed complement.

The programs for A045668, the canonical program `A045668.P17978729724881212821` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045668 has offset 0).

The definition of A045668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045686, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045668.P17978729724881212821

`2*n*A045686(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045668

/-- `2*n*A045686(n)` -/
def P17978729724881212821.Spec : Prop :=
  ∀ n, P17978729724881212821.a n = A045668 n

theorem P17978729724881212821.correct : P17978729724881212821.Spec := by
  intro n
  simp only [A045668]

end A045668

/-! ## A045668.P18180840380302082946

`A045663(n)-A045665(n)`
-/

namespace A045668.P18180840380302082946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 n - A045665 n

end

end A045668.P18180840380302082946

namespace A045668

/-- `A045663(n)-A045665(n)` -/
def P18180840380302082946.Spec : Prop :=
  ∀ n, P18180840380302082946.a n = A045668 n

end A045668

/-! ## A045668.P15261537468652458655

`A045686(n)*A057543(n)`
-/

namespace A045668.P15261537468652458655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045686 n * A057543 n

end

end A045668.P15261537468652458655

namespace A045668

/-- `A045686(n)*A057543(n)` -/
def P15261537468652458655.Spec : Prop :=
  ∀ n, P15261537468652458655.a n = A045668 n

end A045668

/-! ## A045668.P5659700773084909420

`2*n*(A000048(n)-A045683(n))`
-/

namespace A045668.P5659700773084909420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (A000048 n - A045683 n))

end

end A045668.P5659700773084909420

namespace A045668

/-- `2*n*(A000048(n)-A045683(n))` -/
def P5659700773084909420.Spec : Prop :=
  ∀ n, P5659700773084909420.a n = A045668 n

theorem P5659700773084909420.correct : P5659700773084909420.Spec := by
  intro n
  simp only [A045668, Nat.add_sub_cancel, A045668.P5659700773084909420.a, A045668.P17978729724881212821.a, A000048, A000048.P16452762028424782785.a, A045683, A045683.P14787099194818843150.a, A045686, A045686.P11325912773679884789.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056476, A056476.P12632563156965169968.a, A233583, A233583.P15026547221992958741.a, A008683, A008683.P18254306604665478110.a, A056295, A056295.P9438402425658344231.a, A056481, A056481.P6036497099892352670.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A028310, A028310.P18130301328277559831.a, A056463, A056463.P6786534809649954337.f1, A056463.P6786534809649954337.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045668

/-! ## A045668.P3913701905152447315

`A000048(n)*A004277(n)-A045665(n)`
-/

namespace A045668.P3913701905152447315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n * A004277 n - A045665 n

end

end A045668.P3913701905152447315

namespace A045668

/-- `A000048(n)*A004277(n)-A045665(n)` -/
def P3913701905152447315.Spec : Prop :=
  ∀ n, P3913701905152447315.a n = A045668 n

end A045668

/-! ## A045668.P9237280279047390275

`A045663(n)+A045667(n)-A045662(n)`
-/

namespace A045668.P9237280279047390275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 n + (A045667 n - A045662 n)

end

end A045668.P9237280279047390275

namespace A045668

/-- `A045663(n)+A045667(n)-A045662(n)` -/
def P9237280279047390275.Spec : Prop :=
  ∀ n, P9237280279047390275.a n = A045668 n

end A045668

/-! ## A045668.P16790890402912958598

`A045663(n)+A045669(n)-A045664(n)`
-/

namespace A045668.P16790890402912958598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 n + (A045669 n - A045664 n)

end

end A045668.P16790890402912958598

namespace A045668

/-- `A045663(n)+A045669(n)-A045664(n)` -/
def P16790890402912958598.Spec : Prop :=
  ∀ n, P16790890402912958598.a n = A045668 n

end A045668

/-!
# A045669: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reversed complement, inequivalent to reverse and complement.

The programs for A045669, the canonical program `A045669.P14509284177368627786` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045669 has offset 0).

The definition of A045669 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045664, A045665, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045669.P7587184839863266788

`2*n*A045687(n)`
-/

namespace A045669.P7587184839863266788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A045687 n

end

end A045669.P7587184839863266788

namespace A045669

/-- `2*n*A045687(n)` -/
def P7587184839863266788.Spec : Prop :=
  ∀ n, P7587184839863266788.a n = A045669 n

end A045669

/-! ## A045669.P14509284177368627786

`A045664(n)-A045665(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045669

/-- `A045664(n)-A045665(n)` -/
def P14509284177368627786.Spec : Prop :=
  ∀ n, P14509284177368627786.a n = A045669 n

theorem P14509284177368627786.correct : P14509284177368627786.Spec := by
  intro n
  simp only [A045669]

end A045669

/-! ## A045669.P11896203236521090124

`A045664(n)+A045667(n)-A045662(n)`
-/

namespace A045669.P11896203236521090124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045664 n + (A045667 n - A045662 n)

end

end A045669.P11896203236521090124

namespace A045669

/-- `A045664(n)+A045667(n)-A045662(n)` -/
def P11896203236521090124.Spec : Prop :=
  ∀ n, P11896203236521090124.a n = A045669 n

end A045669

/-! ## A045669.P14752479273937748776

`A045664(n)+A045668(n)-A045663(n)`
-/

namespace A045669.P14752479273937748776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045664 n + (A045668 n - A045663 n)

end

end A045669.P14752479273937748776

namespace A045669

/-- `A045664(n)+A045668(n)-A045663(n)` -/
def P14752479273937748776.Spec : Prop :=
  ∀ n, P14752479273937748776.a n = A045669 n

end A045669

/-! ## A045669.P12520513199099770465

`A045664(n)-A004277(n)*A045683(n)`
-/

namespace A045669.P12520513199099770465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045664 n - A004277 n * A045683 n

end

end A045669.P12520513199099770465

namespace A045669

/-- `A045664(n)-A004277(n)*A045683(n)` -/
def P12520513199099770465.Spec : Prop :=
  ∀ n, P12520513199099770465.a n = A045669 n

end A045669

/-!
# A045670: Digital sum (in base 10) of numbers in base 3 of the alternate number system.

The programs for A045670, the canonical program `A045670.P9055415353420482661` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045670 has offset 1).

The definition of A045670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045670.P9055415353420482661

`A007953(A007932(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045670

/-- `A007953(A007932(n+1))` -/
def P9055415353420482661.Spec : Prop :=
  ∀ n, P9055415353420482661.a n = A045670 (n + 1)

theorem P9055415353420482661.correct : P9055415353420482661.Spec := by
  intro n
  simp only [A045670, Nat.add_sub_cancel]

end A045670

/-! ## A045670.P11551728746190286765

`a(n/gcd(3, n)-1)+1` with `a(0)=1`
-/

namespace A045670.P11551728746190286765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 3 n : ℚ) - 1)).toNat + 1

end

end A045670.P11551728746190286765

namespace A045670

/-- `a(n/gcd(3, n)-1)+1` -/
def P11551728746190286765.Spec : Prop :=
  ∀ n, (P11551728746190286765.a n : ℤ) = A045670 (n + 1)

end A045670

/-! ## A045670.P10417459092710829526

`a(∑[∑[n]-1]%n)+1` with `a(0)=1`
-/

namespace A045670.P10417459092710829526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n : ℤ)).toNat + 1

end

end A045670.P10417459092710829526

namespace A045670

/-- `a(∑[∑[n]-1]%n)+1` -/
def P10417459092710829526.Spec : Prop :=
  ∀ n, (P10417459092710829526.a n : ℤ) = A045670 (n + 1)

end A045670

/-! ## A045670.P3669871363264021963

`∑{digits}[A036435(n+1), sqrt(#)]`
-/

namespace A045670.P3669871363264021963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Real.sqrt (x : ℝ)).sum

end

end A045670.P3669871363264021963

namespace A045670

/-- `∑{digits}[A036435(n+1), sqrt(#)]` -/
def P3669871363264021963.Spec : Prop :=
  ∀ n, P3669871363264021963.a n = (A045670 (n + 1) : ℝ)

end A045670

/-! ## A045670.P10803166785272903853

`a(A051176(n)-1)+1` with `a(0)=1`
-/

namespace A045670.P10803166785272903853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A051176 n - 1).toNat + 1

end

end A045670.P10803166785272903853

namespace A045670

/-- `a(A051176(n)-1)+1` -/
def P10803166785272903853.Spec : Prop :=
  ∀ n, (P10803166785272903853.a n : ℤ) = A045670 (n + 1)

end A045670

/-! ## A045670.P4230375049981516298

`∑[1-val(A338247(n+1)², 3)]`
-/

namespace A045670.P4230375049981516298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A338247 (n + 1) ^ 2).toNat 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045670.P4230375049981516298

namespace A045670

/-- `∑[1-val(A338247(n+1)², 3)]` -/
def P4230375049981516298.Spec : Prop :=
  ∀ n, P4230375049981516298.a n = A045670 (n + 1)

end A045670

/-! ## A045670.P461747864153981642

`A053737(A023705(n+1))`
-/

namespace A045670.P461747864153981642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A023705 (n + 1)).toNat

end

end A045670.P461747864153981642

namespace A045670

/-- `A053737(A023705(n+1))` -/
def P461747864153981642.Spec : Prop :=
  ∀ n, P461747864153981642.a n = A045670 (n + 1)

end A045670

/-! ## A045670.P16741565370046845882

`A001222(∏{digits}[A007932(n+1), A007932(#+1)+1])`
-/

namespace A045670.P16741565370046845882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007932 (x + 1) + 1).prod.toNat

end

end A045670.P16741565370046845882

namespace A045670

/-- `A001222(∏{digits}[A007932(n+1), A007932(#+1)+1])` -/
def P16741565370046845882.Spec : Prop :=
  ∀ n, P16741565370046845882.a n = A045670 (n + 1)

end A045670

/-! ## A045670.P1300234865092896644

`A057536(A036435(n+1))`
-/

namespace A045670.P1300234865092896644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 (A036435 (n + 1)).toNat

end

end A045670.P1300234865092896644

namespace A045670

/-- `A057536(A036435(n+1))` -/
def P1300234865092896644.Spec : Prop :=
  ∀ n, P1300234865092896644.a n = A045670 (n + 1)

end A045670

/-! ## A045670.P10575471733066170160

`A057536(A174813(n+1))`
-/

namespace A045670.P10575471733066170160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 (A174813 (n + 1)).toNat

end

end A045670.P10575471733066170160

namespace A045670

/-- `A057536(A174813(n+1))` -/
def P10575471733066170160.Spec : Prop :=
  ∀ n, P10575471733066170160.a n = A045670 (n + 1)

end A045670

/-!
# A045671: Extension of Beatty sequence; complement of A045672.

The programs for A045671, there is no canonical definition to state claims against.
-/

/-! ## A045671.P7767043693698110213

`comp[A045672(n+1)]`
-/

namespace A045671.P7767043693698110213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045671.P7767043693698110213

/-! ## A045671.P2390113718189149158

`A045672(n)/2-n`
-/

namespace A045671.P2390113718189149158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045672 n : ℚ) / 2 - (n : ℚ)

end

end A045671.P2390113718189149158

/-! ## A045671.P17805747318087283718

`A014682(A045672(n))-n`
-/

namespace A045671.P17805747318087283718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A045672 n).toNat - (n : ℤ)

end

end A045671.P17805747318087283718

/-! ## A045671.P14405620130490070080

`comp[record[A045672(A123108(n))]]`
-/

namespace A045671.P14405620130490070080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045672 (A123108 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045671.P14405620130490070080

/-! ## A045671.P13700724274306116837

`A001489(n)+A045672(n)/2`
-/

namespace A045671.P13700724274306116837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 n : ℚ) + (A045672 n : ℚ) / 2

end

end A045671.P13700724274306116837

/-! ## A045671.P2929321016045658634

`A025480(A045672(n)-2*n)`
-/

namespace A045671.P2929321016045658634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A045672 n - (2 * n : ℤ)).toNat

end

end A045671.P2929321016045658634

/-! ## A045671.P995744651103082690

`A001281(A045672(n)-2*n)`
-/

namespace A045671.P995744651103082690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A045672 n - (2 * n : ℤ)).toNat

end

end A045671.P995744651103082690

/-! ## A045671.P17090925787294457898

`A004526(A045672(n)-2*n)`
-/

namespace A045671.P17090925787294457898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A045672 n - (2 * n : ℤ)).toNat

end

end A045671.P17090925787294457898

/-! ## A045671.P11295923306088461069

`A001281(A045672(n)-n-n)`
-/

namespace A045671.P11295923306088461069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A045672 n - (n : ℤ) - (n : ℤ)).toNat

end

end A045671.P11295923306088461069

/-! ## A045671.P6777882677511102702

`A004526(A045672(n)-n-n)`
-/

namespace A045671.P6777882677511102702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A045672 n - (n : ℤ) - (n : ℤ)).toNat

end

end A045671.P6777882677511102702

/-!
# A045672: Extension of Beatty sequence; complement of A045671 (apart from the initial 0).

The programs for A045672, there is no canonical definition to state claims against.
-/

/-! ## A045672.P3001216544500826851

`2*(A045671(n)+n)`
-/

namespace A045672.P3001216544500826851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045671 n + (n : ℤ))

end

end A045672.P3001216544500826851

/-! ## A045672.P3216476243507224020

`2*(A005843(n)-(n-A045671(n)))`
-/

namespace A045672.P3216476243507224020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005843 n - ((n : ℤ) - A045671 n))

end

end A045672.P3216476243507224020

/-! ## A045672.P6369714849928187467

`A005843(n)+A005843(A045671(n))`
-/

namespace A045672.P6369714849928187467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A005843 (A045671 n).toNat

end

end A045672.P6369714849928187467

/-! ## A045672.P5317830247086158285

`A005408(n)+A005408(A045671(n))-2`
-/

namespace A045672.P5317830247086158285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (A005408 (A045671 n).toNat - 2)

end

end A045672.P5317830247086158285

/-! ## A045672.P1068541506943631634

`A005843(A045671(n)+n)`
-/

namespace A045672.P1068541506943631634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045671 n + (n : ℤ)).toNat

end

end A045672.P1068541506943631634

/-! ## A045672.P13716657111534747893

`A005408(A045671(n)+n)-1`
-/

namespace A045672.P13716657111534747893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A045671 n + (n : ℤ)).toNat - 1

end

end A045672.P13716657111534747893

/-! ## A045672.P13672684516244046654

`A008598(A045671(n)+n)/8`
-/

namespace A045672.P13672684516244046654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008598 (A045671 n + (n : ℤ)).toNat : ℚ) / 8

end

end A045672.P13672684516244046654

/-! ## A045672.P14675055418274068580

`floor(A008574(A045671(n)+n)/2)`
-/

namespace A045672.P14675055418274068580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008574 (A045671 n + (n : ℤ)).toNat : ℚ) / 2⌋

end

end A045672.P14675055418274068580

/-! ## A045672.P1767098481222740793

`(A016813(A045671(n)+n)-1)/2`
-/

namespace A045672.P1767098481222740793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016813 (A045671 n + (n : ℤ)).toNat - 1 : ℚ) / 2

end

end A045672.P1767098481222740793

/-! ## A045672.P14528430178857838471

`A005843(n-A001489(A045671(n)))`
-/

namespace A045672.P14528430178857838471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - A001489 (A045671 n).toNat).toNat

end

end A045672.P14528430178857838471

/-! ## A045672.P12851518168972645003

`A005843(A005843(n)-(n-A045671(n)))`
-/

namespace A045672.P12851518168972645003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 n - ((n : ℤ) - A045671 n)).toNat

end

end A045672.P12851518168972645003

/-! ## A045672.P4262255496056686087

`comp[A045671(n+1)]`
-/

namespace A045672.P4262255496056686087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045672.P4262255496056686087

/-! ## A045672.P16021315843358974040

`A045671(n)+A153733(A016813(n))+A045671(n)`
-/

namespace A045672.P16021315843358974040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045671 n + (A153733 (A016813 n).toNat + A045671 n)

end

end A045672.P16021315843358974040

/-! ## A045672.P10519284579311742868

`record[(n+1)*(1-A285671(n+1))]`
-/

namespace A045672.P10519284579311742868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A285671 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045672.P10519284579311742868

/-! ## A045672.P10569895849655861344

`A123108(A008574(A045671(n)+n))`
-/

namespace A045672.P10569895849655861344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A008574 (A045671 n + (n : ℤ)).toNat).toNat

end

end A045672.P10569895849655861344

/-! ## A045672.P5013635891905849797

`A153733(A016813(A045671(n)+n))`
-/

namespace A045672.P5013635891905849797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A016813 (A045671 n + (n : ℤ)).toNat).toNat

end

end A045672.P5013635891905849797

/-!
# A045673: Curvatures in diagram constructed by inscribing 2 circles of curvature 0 and 1 inside circle of curvature 0, continuing indefinitely to inscribe circles wherever possible.

The programs for A045673, there is no canonical definition to state claims against.
-/

/-! ## A045673.P1554068799075464588

`eq[1, A196169(A065338(n+1))]`
-/

namespace A045673.P1554068799075464588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A065338 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045673.P1554068799075464588

/-! ## A045673.P520788769510982139

`eq[A047224(n), A110500(n+1)]`
-/

namespace A045673.P520788769510982139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045673.P520788769510982139

/-! ## A045673.P4046518977230218007

`eq[A047224(n), A111609(n+1)]`
-/

namespace A045673.P4046518977230218007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045673.P4046518977230218007

/-! ## A045673.P14285378776502910874

`eq[A047224(n), A111610(n+1)]`
-/

namespace A045673.P14285378776502910874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045673.P14285378776502910874

/-! ## A045673.P5768977493654000114

`eq[A055677(n), A110500(n+1)]`
-/

namespace A045673.P5768977493654000114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045673.P5768977493654000114

/-!
# A045674: Number of 2n-bead balanced binary necklaces which are equivalent to their reverse, complement and reversed complement.

The programs for A045674, the canonical program `A045674.P8510068775620534225` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045674 has offset 0).

The definition of A045674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045674.P8510068775620534225

`∑{d}[A028310(n), A045683(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045674

/-- `∑{d}[A028310(n), A045683(#)]` -/
def P8510068775620534225.Spec : Prop :=
  ∀ n, P8510068775620534225.a n = A045674 n

theorem P8510068775620534225.correct : P8510068775620534225.Spec := by
  intro n
  simp only [A045674]

end A045674

/-! ## A045674.P2163196155207567652

`∑{d}[A065033(2*n), A045683(#)]`
-/

namespace A045674.P2163196155207567652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045683 d

end

end A045674.P2163196155207567652

namespace A045674

/-- `∑{d}[A065033(2*n), A045683(#)]` -/
def P2163196155207567652.Spec : Prop :=
  ∀ n, P2163196155207567652.a n = A045674 n

end A045674

/-! ## A045674.P1057587928026767503

`∑{d}[A123108(2*n), A045683(#)]`
-/

namespace A045674.P1057587928026767503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045683 d

end

end A045674.P1057587928026767503

namespace A045674

/-- `∑{d}[A123108(2*n), A045683(#)]` -/
def P1057587928026767503.Spec : Prop :=
  ∀ n, P1057587928026767503.a n = A045674 n

end A045674

/-! ## A045674.P17787504785105399003

`∑{d}[n-A004277(n), A045683(#)]`
-/

namespace A045674.P17787504785105399003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045683 d

end

end A045674.P17787504785105399003

namespace A045674

/-- `∑{d}[n-A004277(n), A045683(#)]` -/
def P17787504785105399003.Spec : Prop :=
  ∀ n, P17787504785105399003.a n = A045674 n

end A045674

/-! ## A045674.P4842381410392787945

`A016116(n)-A045678(A142150(n))`
-/

namespace A045674.P4842381410392787945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n - A045678 (A142150 n).toNat

end

end A045674.P4842381410392787945

namespace A045674

/-- `A016116(n)-A045678(A142150(n))` -/
def P4842381410392787945.Spec : Prop :=
  ∀ n, P4842381410392787945.a n = A045674 n

end A045674

/-! ## A045674.P17642752432673497451

`A000013(n)-A045677(n)`
-/

namespace A045674.P17642752432673497451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A045677 n

end

end A045674.P17642752432673497451

namespace A045674

/-- `A000013(n)-A045677(n)` -/
def P17642752432673497451.Spec : Prop :=
  ∀ n, P17642752432673497451.a n = A045674 n

theorem P17642752432673497451.correct : P17642752432673497451.Spec := by
  intro n
  simp only [A045674, Nat.add_sub_cancel, A045674.P17642752432673497451.a, A045674.P8510068775620534225.f1, A045674.P8510068775620534225.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A028310, A028310.P18130301328277559831.a, A045677, A045677.P7167331430785454104.a, A045683, A045683.P14787099194818843150.a, A000048, A000048.P16452762028424782785.a, A045686, A045686.P11325912773679884789.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P18254306604665478110.a, A056295, A056295.P9438402425658344231.a, A056476, A056476.P12632563156965169968.a, A233583, A233583.P15026547221992958741.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A056481, A056481.P6036497099892352670.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045674

/-! ## A045674.P3462865794875344670

`A128014(n)-A045676(n)`
-/

namespace A045674.P3462865794875344670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 n - A045676 n

end

end A045674.P3462865794875344670

namespace A045674

/-- `A128014(n)-A045676(n)` -/
def P3462865794875344670.Spec : Prop :=
  ∀ n, P3462865794875344670.a n = A045674 n

theorem P3462865794875344670.correct : P3462865794875344670.Spec := by
  intro n
  simp only [A045674, Nat.add_sub_cancel, A045674.P3462865794875344670.a, A045674.P8510068775620534225.f1, A045674.P8510068775620534225.a, A028310, A028310.P18130301328277559831.a, A045676, A045676.P8900542742695811205.a, A045683, A045683.P14787099194818843150.a, A128014, A128014.P14973855882904292349.a, A000048, A000048.P16452762028424782785.a, A000984, A000984.P7946844122574426130.a, A045686, A045686.P11325912773679884789.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056476, A056476.P12632563156965169968.a, A233583, A233583.P15026547221992958741.a, A008683, A008683.P18254306604665478110.a, A056295, A056295.P9438402425658344231.a, A056481, A056481.P6036497099892352670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045674

/-! ## A045674.P4181445230931189318

`A011782(n)-A045678(n)`
-/

namespace A045674.P4181445230931189318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A045678 n

end

end A045674.P4181445230931189318

namespace A045674

/-- `A011782(n)-A045678(n)` -/
def P4181445230931189318.Spec : Prop :=
  ∀ n, P4181445230931189318.a n = A045674 n

theorem P4181445230931189318.correct : P4181445230931189318.Spec := by
  intro n
  simp only [A045674, Nat.add_sub_cancel, A045674.P4181445230931189318.a, A045674.P8510068775620534225.f1, A045674.P8510068775620534225.a, A011782, A011782.P7461078519819856082.a, A028310, A028310.P18130301328277559831.a, A045678, A045678.P6661484353096964123.a, A045683, A045683.P14787099194818843150.a, A000048, A000048.P16452762028424782785.a, A045686, A045686.P11325912773679884789.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056476, A056476.P12632563156965169968.a, A233583, A233583.P15026547221992958741.a, A008683, A008683.P18254306604665478110.a, A056295, A056295.P9438402425658344231.a, A056481, A056481.P6036497099892352670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045674

/-! ## A045674.P2137400158549530481

`∑{d}[A007318(A000124(n)), A045683(#)]`
-/

namespace A045674.P2137400158549530481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045683 d

end

end A045674.P2137400158549530481

namespace A045674

/-- `∑{d}[A007318(A000124(n)), A045683(#)]` -/
def P2137400158549530481.Spec : Prop :=
  ∀ n, P2137400158549530481.a n = A045674 n

end A045674

/-! ## A045674.P7288379527016886890

`∑{d}[A003056(A053439(n)), A045683(#)]`
-/

namespace A045674.P7288379527016886890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045683 d

end

end A045674.P7288379527016886890

namespace A045674

/-- `∑{d}[A003056(A053439(n)), A045683(#)]` -/
def P7288379527016886890.Spec : Prop :=
  ∀ n, P7288379527016886890.a n = A045674 n

end A045674

/-!
# A045675: Number of 2n-bead balanced binary necklaces which are not equivalent to their reverse, complement or reversed complement.

The programs for A045675, there is no canonical definition to state claims against.
-/

/-! ## A045675.P14903086257892432036

`A003239(n)-A128014(n)-A000013(n)-A011782(n)+2*A045674(n)`
-/

namespace A045675.P14903086257892432036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - A128014 n - A000013 n - A011782 n + 2 * A045674 n

end

end A045675.P14903086257892432036

/-! ## A045675.P17746845500227621439

`∑{d}[n, A045684(#)]`
-/

namespace A045675.P17746845500227621439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045684 d

end

end A045675.P17746845500227621439

/-! ## A045675.P3094673057675130723

`A045684(A002998(n))`
-/

namespace A045675.P3094673057675130723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045684 (A002998 n).toNat

end

end A045675.P3094673057675130723

/-! ## A045675.P9572156535010769539

`A045684(A039723(n))`
-/

namespace A045675.P9572156535010769539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045684 (A039723 n).toNat

end

end A045675.P9572156535010769539

/-! ## A045675.P1968645536794754988

`A045684(A046469(n))`
-/

namespace A045675.P1968645536794754988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045684 (A046469 n).toNat

end

end A045675.P1968645536794754988

/-!
# A045676: Number of 2n-bead balanced binary necklaces which are equivalent to their reverse, but not equivalent to their complement and reversed complement.

The programs for A045676, the canonical program `A045676.P8900542742695811205` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045676 has offset 0).

The definition of A045676 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045676.P8900542742695811205

`A128014(n)-A045674(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045676

/-- `A128014(n)-A045674(n)` -/
def P8900542742695811205.Spec : Prop :=
  ∀ n, P8900542742695811205.a n = A045676 n

theorem P8900542742695811205.correct : P8900542742695811205.Spec := by
  intro n
  simp only [A045676]

end A045676

/-! ## A045676.P4397315610934702813

`∑{d}[n, A045685(#)]`
-/

namespace A045676.P4397315610934702813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045685 d

end

end A045676.P4397315610934702813

namespace A045676

/-- `∑{d}[n, A045685(#)]` -/
def P4397315610934702813.Spec : Prop :=
  ∀ n, P4397315610934702813.a n = A045676 n

end A045676

/-! ## A045676.P10402035390737254657

`A000984(floor(n/2))-A045674(n)`
-/

namespace A045676.P10402035390737254657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 ⌊(n : ℚ) / 2⌋.toNat - A045674 n

end

end A045676.P10402035390737254657

namespace A045676

/-- `A000984(floor(n/2))-A045674(n)` -/
def P10402035390737254657.Spec : Prop :=
  ∀ n, P10402035390737254657.a n = A045676 n

end A045676

/-! ## A045676.P2078557350162379046

`A001405(A052928(n))-A045674(n)`
-/

namespace A045676.P2078557350162379046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A052928 n).toNat - A045674 n

end

end A045676.P2078557350162379046

namespace A045676

/-- `A001405(A052928(n))-A045674(n)` -/
def P2078557350162379046.Spec : Prop :=
  ∀ n, P2078557350162379046.a n = A045676 n

end A045676

/-! ## A045676.P10095918651851358074

`A210736(A109613(n))-A045674(n)`
-/

namespace A045676.P10095918651851358074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A109613 n).toNat - A045674 n

end

end A045676.P10095918651851358074

namespace A045676

/-- `A210736(A109613(n))-A045674(n)` -/
def P10095918651851358074.Spec : Prop :=
  ∀ n, P10095918651851358074.a n = A045676 n

end A045676

/-! ## A045676.P7870668504160698007

`A249095(A002378(n))-A045674(n)`
-/

namespace A045676.P7870668504160698007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (A002378 n).toNat - A045674 n

end

end A045676.P7870668504160698007

namespace A045676

/-- `A249095(A002378(n))-A045674(n)` -/
def P7870668504160698007.Spec : Prop :=
  ∀ n, P7870668504160698007.a n = A045676 n

end A045676

/-!
# A045677: Number of 2n-bead balanced binary necklaces which are equivalent to their complement, but not equivalent to their reverse and their reversed complement.

The programs for A045677, the canonical program `A045677.P7167331430785454104` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045677 has offset 0).

The definition of A045677 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A045674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045677.P7167331430785454104

`A000013(n)-A045674(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045677

/-- `A000013(n)-A045674(n)` -/
def P7167331430785454104.Spec : Prop :=
  ∀ n, P7167331430785454104.a n = A045677 n

theorem P7167331430785454104.correct : P7167331430785454104.Spec := by
  intro n
  simp only [A045677]

end A045677

/-! ## A045677.P10216322853624130574

`∑{d}[n, A045686(#)]`
-/

namespace A045677.P10216322853624130574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045686 d

end

end A045677.P10216322853624130574

namespace A045677

/-- `∑{d}[n, A045686(#)]` -/
def P10216322853624130574.Spec : Prop :=
  ∀ n, P10216322853624130574.a n = A045677 n

end A045677

/-! ## A045677.P4907256326418059803

`A000011(n)+A059053(n)-A045674(n)`
-/

namespace A045677.P4907256326418059803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 n + (A059053 n - A045674 n)

end

end A045677.P4907256326418059803

namespace A045677

/-- `A000011(n)+A059053(n)-A045674(n)` -/
def P4907256326418059803.Spec : Prop :=
  ∀ n, P4907256326418059803.a n = A045677 n

end A045677

/-! ## A045677.P587825676255166397

`A000048(n)+A115118(n)-A045674(n)`
-/

namespace A045677.P587825676255166397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n + (A115118 n - A045674 n)

end

end A045677.P587825676255166397

namespace A045677

/-- `A000048(n)+A115118(n)-A045674(n)` -/
def P587825676255166397.Spec : Prop :=
  ∀ n, P587825676255166397.a n = A045677 n

theorem P587825676255166397.correct : P587825676255166397.Spec := by
  intro n
  simp only [A045677, Nat.add_sub_cancel, A045677.P587825676255166397.a, A045677.P7167331430785454104.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000048, A000048.P16452762028424782785.a, A045674, A045674.P8510068775620534225.f1, A045674.P8510068775620534225.a, A115118, A115118.P6546194884082821130.a, A028310, A028310.P18130301328277559831.a, A045683, A045683.P14787099194818843150.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A233583, A233583.P15026547221992958741.a, A008683, A008683.P18254306604665478110.a, A045686, A045686.P11325912773679884789.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A056476, A056476.P12632563156965169968.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045677

/-! ## A045677.P15329495931317574008

`(A000031(n)-A045674(n))%A000016(n)`
-/

namespace A045677.P15329495931317574008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000031 n - A045674 n) (A000016 n)

end

end A045677.P15329495931317574008

namespace A045677

/-- `(A000031(n)-A045674(n))%A000016(n)` -/
def P15329495931317574008.Spec : Prop :=
  ∀ n, P15329495931317574008.a n = A045677 n

end A045677

/-!
# A045678: Number of 2n-bead balanced binary necklaces which are equivalent to their reversed complement, but not equivalent to their reverse and complement.

The programs for A045678, the canonical program `A045678.P6661484353096964123` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045678 has offset 0).

The definition of A045678 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045678.P6661484353096964123

`A011782(n)-A045674(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045678

/-- `A011782(n)-A045674(n)` -/
def P6661484353096964123.Spec : Prop :=
  ∀ n, P6661484353096964123.a n = A045678 n

theorem P6661484353096964123.correct : P6661484353096964123.Spec := by
  intro n
  simp only [A045678]

end A045678

/-! ## A045678.P1659683270027950847

`∑{d}[n, A045687(#)]`
-/

namespace A045678.P1659683270027950847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045687 d

end

end A045678.P1659683270027950847

namespace A045678

/-- `∑{d}[n, A045687(#)]` -/
def P1659683270027950847.Spec : Prop :=
  ∀ n, P1659683270027950847.a n = A045678 n

end A045678

/-! ## A045678.P69414907103713289

`A045677(n)+2*A059078(n)`
-/

namespace A045678.P69414907103713289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045677 n + 2 * A059078 n

end

end A045678.P69414907103713289

namespace A045678

/-- `A045677(n)+2*A059078(n)` -/
def P69414907103713289.Spec : Prop :=
  ∀ n, P69414907103713289.a n = A045678 n

end A045678

/-! ## A045678.P8309577345265250583

`A011782(n)+A045677(n)-A000013(n)`
-/

namespace A045678.P8309577345265250583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A045677 n - A000013 n)

end

end A045678.P8309577345265250583

namespace A045678

/-- `A011782(n)+A045677(n)-A000013(n)` -/
def P8309577345265250583.Spec : Prop :=
  ∀ n, P8309577345265250583.a n = A045678 n

theorem P8309577345265250583.correct : P8309577345265250583.Spec := by
  intro n
  simp only [A045678, Nat.add_sub_cancel, A045678.P8309577345265250583.a, A045678.P6661484353096964123.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A011782, A011782.P7461078519819856082.a, A045674, A045674.P8510068775620534225.f1, A045674.P8510068775620534225.a, A045677, A045677.P7167331430785454104.a, A028310, A028310.P18130301328277559831.a, A045683, A045683.P14787099194818843150.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A000048, A000048.P16452762028424782785.a, A008683, A008683.P18254306604665478110.a, A045686, A045686.P11325912773679884789.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A056476, A056476.P12632563156965169968.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A233583, A233583.P15026547221992958741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045678

/-! ## A045678.P10982459071699757011

`A000079(n)%A045674(2*n)`
-/

namespace A045678.P10982459071699757011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A045674 (2 * n))

end

end A045678.P10982459071699757011

namespace A045678

/-- `A000079(n)%A045674(2*n)` -/
def P10982459071699757011.Spec : Prop :=
  ∀ n, P10982459071699757011.a n = A045678 n

end A045678

/-! ## A045678.P17914430134672564693

`A045674(2*n+1)-A045674(2*n)`
-/

namespace A045678.P17914430134672564693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (2 * n + 1) - A045674 (2 * n)

end

end A045678.P17914430134672564693

namespace A045678

/-- `A045674(2*n+1)-A045674(2*n)` -/
def P17914430134672564693.Spec : Prop :=
  ∀ n, P17914430134672564693.a n = A045678 n

end A045678

/-! ## A045678.P10162710642307159473

`A045676(2*n)-A045676(2*n+1)`
-/

namespace A045678.P10162710642307159473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045676 (2 * n) - A045676 (2 * n + 1)

end

end A045678.P10162710642307159473

namespace A045678

/-- `A045676(2*n)-A045676(2*n+1)` -/
def P10162710642307159473.Spec : Prop :=
  ∀ n, P10162710642307159473.a n = A045678 n

end A045678

/-!
# A045679: Numbers congruent to 0,1,4,9 mod 12 missing from A045673 (conjectured to be finite).

The programs for A045679, there is no canonical definition to state claims against.
-/

/-! ## A045679.P10568493339059226433

`eq[A054014(n+1), A334924(n+1)]`
-/

namespace A045679.P10568493339059226433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045679.P10568493339059226433

/-!
# A045680: Number of 2n-bead balanced binary necklaces of fundamental period 2n equivalent to reverse.

The programs for A045680, there is no canonical definition to state claims against.
-/

/-! ## A045680.P9283191645175142119

`A045685(n)+A045683(n)`
-/

namespace A045680.P9283191645175142119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045685 n + A045683 n

end

end A045680.P9283191645175142119

/-! ## A045680.P2042521057907949581

`A045662(n)/A004277(n)`
-/

namespace A045680.P2042521057907949581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (A004277 n : ℚ)

end

end A045680.P2042521057907949581

/-! ## A045680.P2501401179879408255

`A045662(n)/record[A124625(n)]`
-/

namespace A045680.P2501401179879408255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045680.P2501401179879408255

/-! ## A045680.P16316638748496381616

`A045662(n)/(A004273(n)+1)`
-/

namespace A045680.P16316638748496381616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (A004273 n + 1 : ℚ)

end

end A045680.P16316638748496381616

/-! ## A045680.P9205302291344376963

`A045662(n)/(A008486(n)-n)`
-/

namespace A045680.P9205302291344376963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (A008486 n - (n : ℤ) : ℚ)

end

end A045680.P9205302291344376963

/-! ## A045680.P2131478154789978975

`A045662(n)/A065190(Δ[n²])`
-/

namespace A045680.P2131478154789978975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (A065190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A045680.P2131478154789978975

/-! ## A045680.P87750449371546780

`A045662(n)/record[A234586(n+1)]`
-/

namespace A045680.P87750449371546780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234586 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045680.P87750449371546780

/-! ## A045680.P14273075553943889023

`A045662(n)/A004396(A008486(n))`
-/

namespace A045680.P14273075553943889023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (A004396 (A008486 n).toNat : ℚ)

end

end A045680.P14273075553943889023

/-! ## A045680.P13056086768010272308

`A045662(n)/A110654(A008574(n))`
-/

namespace A045680.P13056086768010272308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (A110654 (A008574 n).toNat : ℚ)

end

end A045680.P13056086768010272308

/-! ## A045680.P16958657205992590511

`A000048(n)/A045663(n)*A045662(n)`
-/

namespace A045680.P16958657205992590511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000048 n : ℚ) / (A045663 n : ℚ) * (A045662 n : ℚ)

end

end A045680.P16958657205992590511

/-! ## A045680.P17951731057671341752

`A045662(n)/A045665(n)*A045683(n)`
-/

namespace A045680.P17951731057671341752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (A045665 n : ℚ) * (A045683 n : ℚ)

end

end A045680.P17951731057671341752

/-! ## A045680.P17246374542787453852

`A045662(n)/gcd(A002939(n), A008574(n))`
-/

namespace A045680.P17246374542787453852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (Int.gcd (A002939 n) (A008574 n) : ℚ)

end

end A045680.P17246374542787453852

/-! ## A045680.P11042271730162498560

`A045662(n)/gcd(A005843(n), A045662(n))`
-/

namespace A045680.P11042271730162498560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045662 n : ℚ) / (Int.gcd (A005843 n) (A045662 n) : ℚ)

end

end A045680.P11042271730162498560

/-! ## A045680.P12197048267127473543

`A022553(n)/A007727(n)*A045662(n)`
-/

namespace A045680.P12197048267127473543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022553 n : ℚ) / (A007727 n : ℚ) * (A045662 n : ℚ)

end

end A045680.P12197048267127473543

/-!
# A045681: Extension of Beatty sequence; complement of A045682.

The programs for A045681, there is no canonical definition to state claims against.
-/

/-! ## A045681.P13464198515834984277

`comp[A045682(n+1)]`
-/

namespace A045681.P13464198515834984277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045681.P13464198515834984277

/-! ## A045681.P11548867137912832424

`comp[record[A045682(A123108(n))]]`
-/

namespace A045681.P11548867137912832424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045682 (A123108 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045681.P11548867137912832424

/-! ## A045681.P2050364474830047812

`(A045682(n)-A008585(n))/2`
-/

namespace A045681.P2050364474830047812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045682 n - A008585 n : ℚ) / 2

end

end A045681.P2050364474830047812

/-! ## A045681.P733434296156328750

`A025480(A045682(n)-A008585(n))`
-/

namespace A045681.P733434296156328750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A045682 n - A008585 n).toNat

end

end A045681.P733434296156328750

/-! ## A045681.P13968621112564729035

`A110654(A045682(n)-A008585(n))`
-/

namespace A045681.P13968621112564729035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A045682 n - A008585 n).toNat

end

end A045681.P13968621112564729035

/-! ## A045681.P16879465337799868039

`A001281(A045682(n)-A008585(n))`
-/

namespace A045681.P16879465337799868039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A045682 n - A008585 n).toNat

end

end A045681.P16879465337799868039

/-! ## A045681.P10383718977011575746

`A004526(A045682(n)-A008585(n))`
-/

namespace A045681.P10383718977011575746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A045682 n - A008585 n).toNat

end

end A045681.P10383718977011575746

/-! ## A045681.P5164519252354987634

`A001281(A045682(n)-n)-n`
-/

namespace A045681.P5164519252354987634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A045682 n - (n : ℤ)).toNat - (n : ℤ)

end

end A045681.P5164519252354987634

/-! ## A045681.P10002041252056452191

`A004526(A045682(n)-n)-n`
-/

namespace A045681.P10002041252056452191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A045682 n - (n : ℤ)).toNat - (n : ℤ)

end

end A045681.P10002041252056452191

/-! ## A045681.P7663653105452519381

`A025480(A045682(n)-n)-n`
-/

namespace A045681.P7663653105452519381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A045682 n - (n : ℤ)).toNat - (n : ℤ)

end

end A045681.P7663653105452519381

/-! ## A045681.P2455578024335869252

`A110654(A045682(n)-n)-n`
-/

namespace A045681.P2455578024335869252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A045682 n - (n : ℤ)).toNat - (n : ℤ)

end

end A045681.P2455578024335869252

/-! ## A045681.P17316206635762268074

`A007494(A045682(n)-n)-A045682(n)`
-/

namespace A045681.P17316206635762268074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A045682 n - (n : ℤ)).toNat - A045682 n

end

end A045681.P17316206635762268074

/-! ## A045681.P6439798566098128286

`A110654(A045682(n))-A007494(n)`
-/

namespace A045681.P6439798566098128286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A045682 n).toNat - A007494 n

end

end A045681.P6439798566098128286

/-! ## A045681.P5673595031155012800

`A172476(A045682(n)+1)-n`
-/

namespace A045681.P5673595031155012800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (A045682 n + 1).toNat - (n : ℤ)

end

end A045681.P5673595031155012800

/-!
# A045682: Extension of Beatty sequence; complement of A045681.

The programs for A045682, there is no canonical definition to state claims against.
-/

/-! ## A045682.P13284983706183686746

`2*A045681(n)+3*n`
-/

namespace A045682.P13284983706183686746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045681 n + (3 * n : ℤ)

end

end A045682.P13284983706183686746

/-! ## A045682.P4908980566645477115

`A008585(n)+2*A045681(n)`
-/

namespace A045682.P4908980566645477115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + 2 * A045681 n

end

end A045682.P4908980566645477115

/-! ## A045682.P1259011634241756948

`A008585(n)+A005843(A045681(n))`
-/

namespace A045682.P1259011634241756948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A005843 (A045681 n).toNat

end

end A045682.P1259011634241756948

/-! ## A045682.P16301434945536813122

`A005843(n)+A005843(A045681(n))+n`
-/

namespace A045682.P16301434945536813122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A045681 n).toNat + (n : ℤ))

end

end A045682.P16301434945536813122

/-! ## A045682.P8171295979301257714

`A005843(A045681(n)+n)+n`
-/

namespace A045682.P8171295979301257714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045681 n + (n : ℤ)).toNat + (n : ℤ)

end

end A045682.P8171295979301257714

/-! ## A045682.P7073904751966423772

`A005408(A045681(n)+n)+n-1`
-/

namespace A045682.P7073904751966423772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A045681 n + (n : ℤ)).toNat + ((n : ℤ) - 1)

end

end A045682.P7073904751966423772

/-! ## A045682.P3230253254089746364

`A023443(n)+A005408(A045681(n)+n)`
-/

namespace A045682.P3230253254089746364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A005408 (A045681 n + (n : ℤ)).toNat

end

end A045682.P3230253254089746364

/-! ## A045682.P16384996258690082740

`A008585(A045681(n)+n)-A045681(n)`
-/

namespace A045682.P16384996258690082740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A045681 n + (n : ℤ)).toNat - A045681 n

end

end A045682.P16384996258690082740

/-! ## A045682.P5959052951512616503

`comp[A045681(n+1)]`
-/

namespace A045682.P5959052951512616503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045682.P5959052951512616503

/-!
# A045683: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reverse, complement and reversed complement.

The programs for A045683, the canonical program `A045683.P14787099194818843150` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045683 has offset 0).

The definition of A045683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045683.P16423000024328045619

`A045665(n)/A004277(n)`
-/

namespace A045683.P16423000024328045619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (A004277 n : ℚ)

end

end A045683.P16423000024328045619

namespace A045683

/-- `A045665(n)/A004277(n)` -/
def P16423000024328045619.Spec : Prop :=
  ∀ n, P16423000024328045619.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P995678201864706050

`A045665(n)/record[A005131(n)]`
-/

namespace A045683.P995678201864706050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045683.P995678201864706050

namespace A045683

/-- `A045665(n)/record[A005131(n)]` -/
def P995678201864706050.Spec : Prop :=
  ∀ n, P995678201864706050.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P7823328064278654185

`A045665(n)/record[A124625(n)]`
-/

namespace A045683.P7823328064278654185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045683.P7823328064278654185

namespace A045683

/-- `A045665(n)/record[A124625(n)]` -/
def P7823328064278654185.Spec : Prop :=
  ∀ n, P7823328064278654185.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P13439746660429204007

`A045665(n)/(A008486(n)-n)`
-/

namespace A045683.P13439746660429204007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (A008486 n - (n : ℤ) : ℚ)

end

end A045683.P13439746660429204007

namespace A045683

/-- `A045665(n)/(A008486(n)-n)` -/
def P13439746660429204007.Spec : Prop :=
  ∀ n, P13439746660429204007.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P1930285791104167400

`A045665(n)/A065190(Δ[n²])`
-/

namespace A045683.P1930285791104167400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (A065190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A045683.P1930285791104167400

namespace A045683

/-- `A045665(n)/A065190(Δ[n²])` -/
def P1930285791104167400.Spec : Prop :=
  ∀ n, P1930285791104167400.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P17083347926648090163

`A045665(n)/A004396(A008486(n))`
-/

namespace A045683.P17083347926648090163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (A004396 (A008486 n).toNat : ℚ)

end

end A045683.P17083347926648090163

namespace A045683

/-- `A045665(n)/A004396(A008486(n))` -/
def P17083347926648090163.Spec : Prop :=
  ∀ n, P17083347926648090163.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P14658011580251402590

`A045665(n)/A004525(A008574(n))`
-/

namespace A045683.P14658011580251402590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (A004525 (A008574 n).toNat : ℚ)

end

end A045683.P14658011580251402590

namespace A045683

/-- `A045665(n)/A004525(A008574(n))` -/
def P14658011580251402590.Spec : Prop :=
  ∀ n, P14658011580251402590.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P8828305859099644581

`A045665(n)/A092533(A016825(n))`
-/

namespace A045683.P8828305859099644581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (A092533 (A016825 n).toNat : ℚ)

end

end A045683.P8828305859099644581

namespace A045683

/-- `A045665(n)/A092533(A016825(n))` -/
def P8828305859099644581.Spec : Prop :=
  ∀ n, P8828305859099644581.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P9793808814704458094

`A045665(n)/gcd(A005843(n), A045665(n))`
-/

namespace A045683.P9793808814704458094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (Int.gcd (A005843 n) (A045665 n) : ℚ)

end

end A045683.P9793808814704458094

namespace A045683

/-- `A045665(n)/gcd(A005843(n), A045665(n))` -/
def P9793808814704458094.Spec : Prop :=
  ∀ n, P9793808814704458094.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P14787099194818843150

`A000048(n)-A045686(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045683

/-- `A000048(n)-A045686(n)` -/
def P14787099194818843150.Spec : Prop :=
  ∀ n, P14787099194818843150.a n = A045683 n

theorem P14787099194818843150.correct : P14787099194818843150.Spec := by
  intro n
  simp only [A045683]

end A045683

/-! ## A045683.P7961753638457444237

`A045680(n)-A045685(n)`
-/

namespace A045683.P7961753638457444237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045680 n - A045685 n

end

end A045683.P7961753638457444237

namespace A045683

/-- `A045680(n)-A045685(n)` -/
def P7961753638457444237.Spec : Prop :=
  ∀ n, P7961753638457444237.a n = A045683 n

end A045683

/-! ## A045683.P12108874915791307221

`A000048(n)/A045663(n)*A045665(n)`
-/

namespace A045683.P12108874915791307221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000048 n : ℚ) / (A045663 n : ℚ) * (A045665 n : ℚ)

end

end A045683.P12108874915791307221

namespace A045683

/-- `A000048(n)/A045663(n)*A045665(n)` -/
def P12108874915791307221.Spec : Prop :=
  ∀ n, P12108874915791307221.a n = (A045683 n : ℚ)

end A045683

/-! ## A045683.P11676603916950097253

`A045665(n)/A045662(n)*A045680(n)`
-/

namespace A045683.P11676603916950097253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045665 n : ℚ) / (A045662 n : ℚ) * (A045680 n : ℚ)

end

end A045683.P11676603916950097253

namespace A045683

/-- `A045665(n)/A045662(n)*A045680(n)` -/
def P11676603916950097253.Spec : Prop :=
  ∀ n, P11676603916950097253.a n = (A045683 n : ℚ)

end A045683

/-!
# A045684: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are inequivalent to their reverse, complement and reversed complement.

The programs for A045684, there is no canonical definition to state claims against.
-/

/-! ## A045684.P12736327346715252389

`A045666(n)/A004277(n)`
-/

namespace A045684.P12736327346715252389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045666 n : ℚ) / (A004277 n : ℚ)

end

end A045684.P12736327346715252389

/-! ## A045684.P12182736677515910527

`A045666(n)/A057543(n)`
-/

namespace A045684.P12182736677515910527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045666 n : ℚ) / (A057543 n : ℚ)

end

end A045684.P12182736677515910527

/-! ## A045684.P16890656994793908843

`A045666(n)/A316571(n+1)`
-/

namespace A045684.P16890656994793908843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045666 n : ℚ) / (A316571 (n + 1) : ℚ)

end

end A045684.P16890656994793908843

/-! ## A045684.P11409770589123348376

`2/A008574(n)*A045666(n)`
-/

namespace A045684.P11409770589123348376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A008574 n : ℚ) * (A045666 n : ℚ)

end

end A045684.P11409770589123348376

/-! ## A045684.P16866977107454100692

`A045666(n)/(A008486(n)-n)`
-/

namespace A045684.P16866977107454100692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045666 n : ℚ) / (A008486 n - (n : ℤ) : ℚ)

end

end A045684.P16866977107454100692

/-! ## A045684.P5442726894514848519

`A045666(n)/(2*A233583(n+1))`
-/

namespace A045684.P5442726894514848519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045666 n : ℚ) / (2 * A233583 (n + 1) : ℚ)

end

end A045684.P5442726894514848519

/-! ## A045684.P14742018239539519365

`A045666(n)/A004396(A008486(n))`
-/

namespace A045684.P14742018239539519365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045666 n : ℚ) / (A004396 (A008486 n).toNat : ℚ)

end

end A045684.P14742018239539519365

/-! ## A045684.P7995209442758269438

`A045666(n)/A004525(A008574(n))`
-/

namespace A045684.P7995209442758269438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045666 n : ℚ) / (A004525 (A008574 n).toNat : ℚ)

end

end A045684.P7995209442758269438

/-! ## A045684.P16050552681914418114

`A022553(n)/A007727(n)*A045666(n)`
-/

namespace A045684.P16050552681914418114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022553 n : ℚ) / (A007727 n : ℚ) * (A045666 n : ℚ)

end

end A045684.P16050552681914418114

/-! ## A045684.P12898686255270582316

`A045666(n)/A045662(n)*A045680(n)`
-/

namespace A045684.P12898686255270582316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045666 n : ℚ) / (A045662 n : ℚ) * (A045680 n : ℚ)

end

end A045684.P12898686255270582316

/-! ## A045684.P14142783064772678614

`A045666(n)/A045665(n)*A045683(n)`
-/

namespace A045684.P14142783064772678614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045666 n : ℚ) / (A045665 n : ℚ) * (A045683 n : ℚ)

end

end A045684.P14142783064772678614

/-!
# A045685: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reverse, but not equivalent to their complement and reversed complement.

The programs for A045685, there is no canonical definition to state claims against.
-/

/-! ## A045685.P5511225083461898169

`A045680(n)-A045683(n)`
-/

namespace A045685.P5511225083461898169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045680 n - A045683 n

end

end A045685.P5511225083461898169

/-! ## A045685.P10043571692547036860

`A045680(n)+A045686(n)-A000048(n)`
-/

namespace A045685.P10043571692547036860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045680 n + (A045686 n - A000048 n)

end

end A045685.P10043571692547036860

/-! ## A045685.P13536624911371591408

`A045680(n)-A045665(n)/A004277(n)`
-/

namespace A045685.P13536624911371591408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045680 n : ℚ) - (A045665 n : ℚ) / (A004277 n : ℚ)

end

end A045685.P13536624911371591408

/-! ## A045685.P14445560291690586373

`A045667(n)/A004277(n)`
-/

namespace A045685.P14445560291690586373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045667 n : ℚ) / (A004277 n : ℚ)

end

end A045685.P14445560291690586373

/-! ## A045685.P8782494987644146601

`A045667(n)/A057543(n)`
-/

namespace A045685.P8782494987644146601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045667 n : ℚ) / (A057543 n : ℚ)

end

end A045685.P8782494987644146601

/-! ## A045685.P8163299250440513908

`A045667(n)/record[A005131(n)]`
-/

namespace A045685.P8163299250440513908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045667 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045685.P8163299250440513908

/-! ## A045685.P9086947216908699833

`A045667(n)/A004275(n+1)`
-/

namespace A045685.P9086947216908699833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045667 n : ℚ) / (A004275 (n + 1) : ℚ)

end

end A045685.P9086947216908699833

/-! ## A045685.P4180635890978851044

`A045667(n)/A316571(n+1)`
-/

namespace A045685.P4180635890978851044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045667 n : ℚ) / (A316571 (n + 1) : ℚ)

end

end A045685.P4180635890978851044

/-! ## A045685.P1462146917355404074

`A045667(n)/(A000007(n)+2*n)`
-/

namespace A045685.P1462146917355404074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045667 n : ℚ) / (A000007 n + (2 * n : ℤ) : ℚ)

end

end A045685.P1462146917355404074

/-! ## A045685.P8503480592591212467

`A045667(n)/A045662(n)*A045680(n)`
-/

namespace A045685.P8503480592591212467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045667 n : ℚ) / (A045662 n : ℚ) * (A045680 n : ℚ)

end

end A045685.P8503480592591212467

/-! ## A045685.P5877829056425818734

`A045667(n)/A045665(n)*A045683(n)`
-/

namespace A045685.P5877829056425818734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045667 n : ℚ) / (A045665 n : ℚ) * (A045683 n : ℚ)

end

end A045685.P5877829056425818734

/-! ## A045685.P17365924453855412227

`A045667(n)/A000267(n²)`
-/

namespace A045685.P17365924453855412227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045667 n : ℚ) / (A000267 (n ^ 2) : ℚ)

end

end A045685.P17365924453855412227

/-!
# A045686: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their complement, but not equivalent to their reverse and their reversed complement.

The programs for A045686, the canonical program `A045686.P11325912773679884789` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045686 has offset 0).

The definition of A045686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045686.P9150356826787310706

`A000048(n)-A045683(n)`
-/

namespace A045686.P9150356826787310706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A045683 n

end

end A045686.P9150356826787310706

namespace A045686

/-- `A000048(n)-A045683(n)` -/
def P9150356826787310706.Spec : Prop :=
  ∀ n, P9150356826787310706.a n = A045686 n

theorem P9150356826787310706.correct : P9150356826787310706.Spec := by
  intro n
  simp only [A045686, Nat.add_sub_cancel, A045686.P9150356826787310706.a, A045686.P11325912773679884789.a, A000048, A000048.P16452762028424782785.a, A045683, A045683.P14787099194818843150.a, A056476, A056476.P12632563156965169968.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056481, A056481.P6036497099892352670.a, A233583, A233583.P15026547221992958741.a, A008683, A008683.P18254306604665478110.a, A028310, A028310.P18130301328277559831.a, A056295, A056295.P9438402425658344231.a, A056463, A056463.P6786534809649954337.f1, A056463.P6786534809649954337.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A056453, A056453.P15792720137673546609.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A045686

/-! ## A045686.P7746664156549522810

`A000048(n)-A045665(n)/A004277(n)`
-/

namespace A045686.P7746664156549522810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000048 n : ℚ) - (A045665 n : ℚ) / (A004277 n : ℚ)

end

end A045686.P7746664156549522810

namespace A045686

/-- `A000048(n)-A045665(n)/A004277(n)` -/
def P7746664156549522810.Spec : Prop :=
  ∀ n, P7746664156549522810.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P11325912773679884789

`A056476(2*n)%A000048(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A045686

/-- `A056476(2*n)%A000048(n)` -/
def P11325912773679884789.Spec : Prop :=
  ∀ n, P11325912773679884789.a n = A045686 n

theorem P11325912773679884789.correct : P11325912773679884789.Spec := by
  intro n
  simp only [A045686]

end A045686

/-! ## A045686.P10598021650157411444

`A045668(n)/record[n*and(1, n)+1]`
-/

namespace A045686.P10598021650157411444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045668 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045686.P10598021650157411444

namespace A045686

/-- `A045668(n)/record[n*and(1, n)+1]` -/
def P10598021650157411444.Spec : Prop :=
  ∀ n, P10598021650157411444.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P5736746693430644975

`A045668(n)/A004277(n)`
-/

namespace A045686.P5736746693430644975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045668 n : ℚ) / (A004277 n : ℚ)

end

end A045686.P5736746693430644975

namespace A045686

/-- `A045668(n)/A004277(n)` -/
def P5736746693430644975.Spec : Prop :=
  ∀ n, P5736746693430644975.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P9443743061083858097

`A045668(n)/A057543(n)`
-/

namespace A045686.P9443743061083858097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045668 n : ℚ) / (A057543 n : ℚ)

end

end A045686.P9443743061083858097

namespace A045686

/-- `A045668(n)/A057543(n)` -/
def P9443743061083858097.Spec : Prop :=
  ∀ n, P9443743061083858097.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P5769479958736500249

`A045668(n)/record[A005131(n)]`
-/

namespace A045686.P5769479958736500249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045668 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045686.P5769479958736500249

namespace A045686

/-- `A045668(n)/record[A005131(n)]` -/
def P5769479958736500249.Spec : Prop :=
  ∀ n, P5769479958736500249.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P11922834581681919528

`A045668(n)/A004275(n+1)`
-/

namespace A045686.P11922834581681919528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045668 n : ℚ) / (A004275 (n + 1) : ℚ)

end

end A045686.P11922834581681919528

namespace A045686

/-- `A045668(n)/A004275(n+1)` -/
def P11922834581681919528.Spec : Prop :=
  ∀ n, P11922834581681919528.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P1517704520272895105

`A045668(n)/A316571(n+1)`
-/

namespace A045686.P1517704520272895105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045668 n : ℚ) / (A316571 (n + 1) : ℚ)

end

end A045686.P1517704520272895105

namespace A045686

/-- `A045668(n)/A316571(n+1)` -/
def P1517704520272895105.Spec : Prop :=
  ∀ n, P1517704520272895105.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P12100055129105369722

`A045668(n)/(A000007(n)+2*n)`
-/

namespace A045686.P12100055129105369722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045668 n : ℚ) / (A000007 n + (2 * n : ℤ) : ℚ)

end

end A045686.P12100055129105369722

namespace A045686

/-- `A045668(n)/(A000007(n)+2*n)` -/
def P12100055129105369722.Spec : Prop :=
  ∀ n, P12100055129105369722.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P7464494101014958143

`A000048(n)/A045663(n)*A045668(n)`
-/

namespace A045686.P7464494101014958143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000048 n : ℚ) / (A045663 n : ℚ) * (A045668 n : ℚ)

end

end A045686.P7464494101014958143

namespace A045686

/-- `A000048(n)/A045663(n)*A045668(n)` -/
def P7464494101014958143.Spec : Prop :=
  ∀ n, P7464494101014958143.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P7347613828746179128

`A045668(n)/A045665(n)*A045683(n)`
-/

namespace A045686.P7347613828746179128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045668 n : ℚ) / (A045665 n : ℚ) * (A045683 n : ℚ)

end

end A045686.P7347613828746179128

namespace A045686

/-- `A045668(n)/A045665(n)*A045683(n)` -/
def P7347613828746179128.Spec : Prop :=
  ∀ n, P7347613828746179128.a n = (A045686 n : ℚ)

end A045686

/-! ## A045686.P2035507538716611126

`A045668(n)/A000267(n²)`
-/

namespace A045686.P2035507538716611126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045668 n : ℚ) / (A000267 (n ^ 2) : ℚ)

end

end A045686.P2035507538716611126

namespace A045686

/-- `A045668(n)/A000267(n²)` -/
def P2035507538716611126.Spec : Prop :=
  ∀ n, P2035507538716611126.a n = (A045686 n : ℚ)

end A045686

/-!
# A045687: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reversed complement, but are not equivalent to their reverse and complement.

The programs for A045687, the canonical program `A045687.P11816481710795598244` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045687 has offset 0).

The definition of A045687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045687.P11816481710795598244

`A045669(n)/A004277(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A045687

/-- `A045669(n)/A004277(n)` -/
def P11816481710795598244.Spec : Prop :=
  ∀ n, P11816481710795598244.a n = (A045687 n : ℚ)

end A045687

/-! ## A045687.P15835012739191852966

`A045669(n)/record[A005131(n)]`
-/

namespace A045687.P15835012739191852966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045687.P15835012739191852966

namespace A045687

/-- `A045669(n)/record[A005131(n)]` -/
def P15835012739191852966.Spec : Prop :=
  ∀ n, P15835012739191852966.a n = (A045687 n : ℚ)

end A045687

/-! ## A045687.P15893690826528510534

`A045669(n)/record[A124625(n)]`
-/

namespace A045687.P15893690826528510534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045687.P15893690826528510534

namespace A045687

/-- `A045669(n)/record[A124625(n)]` -/
def P15893690826528510534.Spec : Prop :=
  ∀ n, P15893690826528510534.a n = (A045687 n : ℚ)

end A045687

/-! ## A045687.P10687973166779312670

`A045669(n)/record[A157128(n)]`
-/

namespace A045687.P10687973166779312670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A045687.P10687973166779312670

namespace A045687

/-- `A045669(n)/record[A157128(n)]` -/
def P10687973166779312670.Spec : Prop :=
  ∀ n, P10687973166779312670.a n = (A045687 n : ℚ)

end A045687

/-! ## A045687.P9590540237627864840

`A045669(n)/A004275(n+1)`
-/

namespace A045687.P9590540237627864840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A004275 (n + 1) : ℚ)

end

end A045687.P9590540237627864840

namespace A045687

/-- `A045669(n)/A004275(n+1)` -/
def P9590540237627864840.Spec : Prop :=
  ∀ n, P9590540237627864840.a n = (A045687 n : ℚ)

end A045687

/-! ## A045687.P9848321721234058063

`A045669(n)/A316571(n+1)`
-/

namespace A045687.P9848321721234058063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A316571 (n + 1) : ℚ)

end

end A045687.P9848321721234058063

namespace A045687

/-- `A045669(n)/A316571(n+1)` -/
def P9848321721234058063.Spec : Prop :=
  ∀ n, P9848321721234058063.a n = (A045687 n : ℚ)

end A045687

/-! ## A045687.P6284067960302606038

`A045669(n)/(A000007(n)+2*n)`
-/

namespace A045687.P6284067960302606038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A000007 n + (2 * n : ℤ) : ℚ)

end

end A045687.P6284067960302606038

namespace A045687

/-- `A045669(n)/(A000007(n)+2*n)` -/
def P6284067960302606038.Spec : Prop :=
  ∀ n, P6284067960302606038.a n = (A045687 n : ℚ)

end A045687

/-! ## A045687.P16680823625417255471

`A045664(n)/A004277(n)-A045683(n)`
-/

namespace A045687.P16680823625417255471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045664 n : ℚ) / (A004277 n : ℚ) - (A045683 n : ℚ)

end

end A045687.P16680823625417255471

namespace A045687

/-- `A045664(n)/A004277(n)-A045683(n)` -/
def P16680823625417255471.Spec : Prop :=
  ∀ n, P16680823625417255471.a n = (A045687 n : ℚ)

end A045687

/-! ## A045687.P1049973413953576832

`A045669(n)/A045665(n)*A045683(n)`
-/

namespace A045687.P1049973413953576832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A045665 n : ℚ) * (A045683 n : ℚ)

end

end A045687.P1049973413953576832

namespace A045687

/-- `A045669(n)/A045665(n)*A045683(n)` -/
def P1049973413953576832.Spec : Prop :=
  ∀ n, P1049973413953576832.a n = (A045687 n : ℚ)

end A045687

/-! ## A045687.P5656058934505159616

`A045669(n)/A000267(n²)`
-/

namespace A045687.P5656058934505159616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A000267 (n ^ 2) : ℚ)

end

end A045687.P5656058934505159616

namespace A045687

/-- `A045669(n)/A000267(n²)` -/
def P5656058934505159616.Spec : Prop :=
  ∀ n, P5656058934505159616.a n = (A045687 n : ℚ)

end A045687

/-!
# A045688: Numerators of expansion of tan(sin(x)) - sin(tan(x)).

The programs for A045688, there is no canonical definition to state claims against.
-/

/-! ## A045688.P16022545131832680358

`A006257(Δ[∏[A273468(n+1)]])`
-/

namespace A045688.P16022545131832680358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (f1 (n + 1) - f1 n).toNat

end

end A045688.P16022545131832680358

/-! ## A045688.P13063940153231602655

`floor(A355124(n)/A355125(n+4))`
-/

namespace A045688.P13063940153231602655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A355124 n : ℚ) / (A355125 (n + 4) : ℚ)⌋

end

end A045688.P13063940153231602655

/-!
# A045689: Denominators of expansion of tan(sin(x)) - sin(tan(x)).

The programs for A045689, there is no canonical definition to state claims against.
-/

/-! ## A045689.P13607952110681623366

`A096722(n)/A146434(A045690(n+1))`
-/

namespace A045689.P13607952110681623366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096722 n : ℚ) / (A146434 (A045690 (n + 1)).toNat : ℚ)

end

end A045689.P13607952110681623366

/-! ## A045689.P1394635444289826182

`A096722(A001096(n))`
-/

namespace A045689.P1394635444289826182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096722 (A001096 n).toNat

end

end A045689.P1394635444289826182

/-!
# A045690: Number of binary words of length n (beginning with 0) whose autocorrelation function is the indicator of a singleton.

The programs for A045690, the canonical program `A045690.P9420012133127931673` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045690 has offset 1).

The definition of A045690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045690.P6793052014851149903

`A342085(2^n)`
-/

namespace A045690.P6793052014851149903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (2 ^ n)

end

end A045690.P6793052014851149903

namespace A045690

/-- `A342085(2^n)` -/
def P6793052014851149903.Spec : Prop :=
  ∀ n, P6793052014851149903.a n = A045690 (n + 1)

end A045690

/-! ## A045690.P9420012133127931673

`∑{d}[n+1, A003000(#-1)*A154269((n+1)/#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045690

/-- `∑{d}[n+1, A003000(#-1)*A154269((n+1)/#)]` -/
def P9420012133127931673.Spec : Prop :=
  ∀ n, P9420012133127931673.a n = A045690 (n + 1)

theorem P9420012133127931673.correct : P9420012133127931673.Spec := by
  intro n
  simp only [A045690, Nat.add_sub_cancel]

end A045690

/-! ## A045690.P14456533945651105446

`A003000(n+1)/2`
-/

namespace A045690.P14456533945651105446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003000 (n + 1) : ℚ) / 2

end

end A045690.P14456533945651105446

namespace A045690

/-- `A003000(n+1)/2` -/
def P14456533945651105446.Spec : Prop :=
  ∀ n, P14456533945651105446.a n = (A045690 (n + 1) : ℚ)

end A045690

/-! ## A045690.P16438882054096093763

`A308528(n+2)/4`
-/

namespace A045690.P16438882054096093763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308528 (n + 2) : ℚ) / 4

end

end A045690.P16438882054096093763

namespace A045690

/-- `A308528(n+2)/4` -/
def P16438882054096093763.Spec : Prop :=
  ∀ n, P16438882054096093763.a n = (A045690 (n + 1) : ℚ)

end A045690

/-! ## A045690.P14861563406816735995

`Δ[∑[A003000(n)]/2]`
-/

namespace A045690.P14861563406816735995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045690.P14861563406816735995

namespace A045690

/-- `Δ[∑[A003000(n)]/2]` -/
def P14861563406816735995.Spec : Prop :=
  ∀ n, P14861563406816735995.a n = (A045690 (n + 1) : ℚ)

end A045690

/-! ## A045690.P5427935541863323906

`2^n-A094537(n+1)`
-/

namespace A045690.P5427935541863323906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A094537 (n + 1)

end

end A045690.P5427935541863323906

namespace A045690

/-- `2^n-A094537(n+1)` -/
def P5427935541863323906.Spec : Prop :=
  ∀ n, P5427935541863323906.a n = A045690 (n + 1)

end A045690

/-! ## A045690.P12226766796267121547

`A003000(n)+A094536(n)-A094537(n+1)`
-/

namespace A045690.P12226766796267121547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 n + (A094536 n - A094537 (n + 1))

end

end A045690.P12226766796267121547

namespace A045690

/-- `A003000(n)+A094536(n)-A094537(n+1)` -/
def P12226766796267121547.Spec : Prop :=
  ∀ n, P12226766796267121547.a n = A045690 (n + 1)

end A045690

/-! ## A045690.P13679046972597822723

`2^n-A094536(n+1)/2`
-/

namespace A045690.P13679046972597822723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (A094536 (n + 1) : ℚ) / 2

end

end A045690.P13679046972597822723

namespace A045690

/-- `2^n-A094536(n+1)/2` -/
def P13679046972597822723.Spec : Prop :=
  ∀ n, P13679046972597822723.a n = (A045690 (n + 1) : ℚ)

end A045690

/-! ## A045690.P5418186201958698096

`(A000079(n+1)-A094536(n+1))/2`
-/

namespace A045690.P5418186201958698096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A094536 (n + 1) : ℚ) / 2

end

end A045690.P5418186201958698096

namespace A045690

/-- `(A000079(n+1)-A094536(n+1))/2` -/
def P5418186201958698096.Spec : Prop :=
  ∀ n, P5418186201958698096.a n = (A045690 (n + 1) : ℚ)

end A045690

/-! ## A045690.P8809283376049774607

`2*A107284(n)-A105284(n)`
-/

namespace A045690.P8809283376049774607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107284 n - A105284 n

end

end A045690.P8809283376049774607

namespace A045690

/-- `2*A107284(n)-A105284(n)` -/
def P8809283376049774607.Spec : Prop :=
  ∀ n, P8809283376049774607.a n = A045690 (n + 1)

end A045690

/-! ## A045690.P2115518992911935063

`A003000(2*n+1)-A105284(n)`
-/

namespace A045690.P2115518992911935063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 (2 * n + 1) - A105284 n

end

end A045690.P2115518992911935063

namespace A045690

/-- `A003000(2*n+1)-A105284(n)` -/
def P2115518992911935063.Spec : Prop :=
  ∀ n, P2115518992911935063.a n = A045690 (n + 1)

end A045690

/-! ## A045690.P18247192304035677094

`A094537(2*(n+1))-A094536(2*n+1)`
-/

namespace A045690.P18247192304035677094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094537 (2 * (n + 1)) - A094536 (2 * n + 1)

end

end A045690.P18247192304035677094

namespace A045690

/-- `A094537(2*(n+1))-A094536(2*n+1)` -/
def P18247192304035677094.Spec : Prop :=
  ∀ n, P18247192304035677094.a n = A045690 (n + 1)

end A045690

/-! ## A045690.P16147522982367060933

`A094537(2*(n+1))-A254128(2*n+1)`
-/

namespace A045690.P16147522982367060933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094537 (2 * (n + 1)) - A254128 (2 * n + 1)

end

end A045690.P16147522982367060933

namespace A045690

/-- `A094537(2*(n+1))-A254128(2*n+1)` -/
def P16147522982367060933.Spec : Prop :=
  ∀ n, P16147522982367060933.a n = A045690 (n + 1)

end A045690

/-!
# A045691: Number of binary words of length n with autocorrelation function 2^(n-1)+1.

The programs for A045691, the canonical program `A045691.P10905984041354244312` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045691 has offset 0).

The definition of A045691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045691.P14708510189417774216

`A019310(n+1)/2`
-/

namespace A045691.P14708510189417774216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019310 (n + 1) : ℚ) / 2

end

end A045691.P14708510189417774216

namespace A045691

/-- `A019310(n+1)/2` -/
def P14708510189417774216.Spec : Prop :=
  ∀ n, P14708510189417774216.a n = (A045691 n : ℚ)

end A045691

/-! ## A045691.P10905984041354244312

`ceil(A019310(Δ[n²]-n)/2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045691

/-- `ceil(A019310(Δ[n²]-n)/2)` -/
def P10905984041354244312.Spec : Prop :=
  ∀ n, P10905984041354244312.a n = A045691 n

theorem P10905984041354244312.correct : P10905984041354244312.Spec := by
  intro n
  simp only [A045691]

end A045691

/-! ## A045691.P1311567669718000659

`floor(A019310(2*n-(n-1))/2)`
-/

namespace A045691.P1311567669718000659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019310 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2⌋

end

end A045691.P1311567669718000659

namespace A045691

/-- `floor(A019310(2*n-(n-1))/2)` -/
def P1311567669718000659.Spec : Prop :=
  ∀ n, P1311567669718000659.a n = A045691 n

end A045691

/-! ## A045691.P5740969279962067128

`2^A008683(A020483(n))*A019310(n+1)`
-/

namespace A045691.P5740969279962067128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A019310 (n + 1) : ℚ)

end

end A045691.P5740969279962067128

namespace A045691

/-- `2^A008683(A020483(n))*A019310(n+1)` -/
def P5740969279962067128.Spec : Prop :=
  ∀ n, P5740969279962067128.a n = (A045691 n : ℚ)

end A045691

/-! ## A045691.P10018439439247597035

`(A019310(2*n-(n-1))/2)%A000244(n)`
-/

namespace A045691.P10018439439247597035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A019310 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2)) (A000244 n)

end

end A045691.P10018439439247597035

namespace A045691

/-- `(A019310(2*n-(n-1))/2)%A000244(n)` -/
def P10018439439247597035.Spec : Prop :=
  ∀ n, P10018439439247597035.a n = A045691 n

end A045691

/-!
# A045692: Number of binary words of length n (beginning 0) with autocorrelation function 2^(n-1)+2.

The programs for A045692, there is no canonical definition to state claims against.
-/

/-! ## A045692.P17760621453737807723

`A019311(n+1)/2-A045693(n+1)`
-/

namespace A045692.P17760621453737807723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019311 (n + 1) : ℚ) / 2 - (A045693 (n + 1) : ℚ)

end

end A045692.P17760621453737807723

/-! ## A045692.P11653692828923501495

`A004525(A019311(n+1)-2*A045693(n+1))`
-/

namespace A045692.P11653692828923501495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A019311 (n + 1) - 2 * A045693 (n + 1)).toNat

end

end A045692.P11653692828923501495

/-! ## A045692.P2157222057599467420

`A004525(A019311(n+1)-A045693(n+1)-A045693(n+1))`
-/

namespace A045692.P2157222057599467420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A019311 (n + 1) - A045693 (n + 1) - A045693 (n + 1)).toNat

end

end A045692.P2157222057599467420

/-! ## A045692.P17721845045795129096

`A004525(A019311(n+1))-A045693(n+1)`
-/

namespace A045692.P17721845045795129096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A019311 (n + 1)).toNat - A045693 (n + 1)

end

end A045692.P17721845045795129096

/-! ## A045692.P3566263985540199803

`∑{e}[A020699(n), A113954(#)]`
-/

namespace A045692.P3566263985540199803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A113954 (Nat.factorization (f1 n).natAbs p)

end

end A045692.P3566263985540199803

/-!
# A045693: Number of binary words of length n (beginning 0) with autocorrelation function 2^(n-1)+3.

The programs for A045693, there is no canonical definition to state claims against.
-/

/-! ## A045693.P6238562028503898997

`A019311(n+1)/2-A045692(n+1)`
-/

namespace A045693.P6238562028503898997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019311 (n + 1) : ℚ) / 2 - (A045692 (n + 1) : ℚ)

end

end A045693.P6238562028503898997

/-! ## A045693.P11124743780085932418

`A004525(A019311(n+1)-2*A045692(n+1))`
-/

namespace A045693.P11124743780085932418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A019311 (n + 1) - 2 * A045692 (n + 1)).toNat

end

end A045693.P11124743780085932418

/-! ## A045693.P12313832958315580971

`A004525(A019311(n+1)-A045692(n+1)-A045692(n+1))`
-/

namespace A045693.P12313832958315580971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A019311 (n + 1) - A045692 (n + 1) - A045692 (n + 1)).toNat

end

end A045693.P12313832958315580971

/-! ## A045693.P15421853783679157649

`A004525(A019311(n+1))-A045692(n+1)`
-/

namespace A045693.P15421853783679157649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A019311 (n + 1)).toNat - A045692 (n + 1)

end

end A045693.P15421853783679157649

/-! ## A045693.P5323925110747933572

`A000073(n)-A056980(A067982(n))`
-/

namespace A045693.P5323925110747933572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n - A056980 (A067982 n).toNat

end

end A045693.P5323925110747933572

/-!
# A045694: Number of ternary words of length n (beginning with 0) with autocorrelation function 2^(n-1).

The programs for A045694, the canonical program `A045694.P7872206853554572603` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045694 has offset 1).

The definition of A045694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045694.P7872206853554572603

`∑{d}[n+1, A019308(#-1)*A154269((n+1)/#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045694

/-- `∑{d}[n+1, A019308(#-1)*A154269((n+1)/#)]` -/
def P7872206853554572603.Spec : Prop :=
  ∀ n, P7872206853554572603.a n = A045694 (n + 1)

theorem P7872206853554572603.correct : P7872206853554572603.Spec := by
  intro n
  simp only [A045694, Nat.add_sub_cancel]

end A045694

/-! ## A045694.P933251685335520444

`A019308(n)+A094538(n)-A094539(n+1)`
-/

namespace A045694.P933251685335520444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019308 n + (A094538 n - A094539 (n + 1))

end

end A045694.P933251685335520444

namespace A045694

/-- `A019308(n)+A094538(n)-A094539(n+1)` -/
def P933251685335520444.Spec : Prop :=
  ∀ n, P933251685335520444.a n = A045694 (n + 1)

end A045694

/-! ## A045694.P5681698786650014072

`Δ[3*a(n-1)-a(floor(n/2))]` with `a(0)=1`
-/

namespace A045694.P5681698786650014072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) - f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045694.P5681698786650014072

namespace A045694

/-- `Δ[3*a(n-1)-a(floor(n/2))]` -/
def P5681698786650014072.Spec : Prop :=
  ∀ n, P5681698786650014072.a n = A045694 (n + 1)

end A045694

/-! ## A045694.P691256262686605880

`A019308(n+1)/3`
-/

namespace A045694.P691256262686605880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019308 (n + 1) : ℚ) / 3

end

end A045694.P691256262686605880

namespace A045694

/-- `A019308(n+1)/3` -/
def P691256262686605880.Spec : Prop :=
  ∀ n, P691256262686605880.a n = (A045694 (n + 1) : ℚ)

end A045694

/-! ## A045694.P16693808695624710056

`3^n-A094539(n+1)`
-/

namespace A045694.P16693808695624710056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A094539 (n + 1)

end

end A045694.P16693808695624710056

namespace A045694

/-- `3^n-A094539(n+1)` -/
def P16693808695624710056.Spec : Prop :=
  ∀ n, P16693808695624710056.a n = A045694 (n + 1)

end A045694

/-! ## A045694.P16242737546195558715

`Δ[A252696(n+1)/3]`
-/

namespace A045694.P16242737546195558715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252696 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045694.P16242737546195558715

namespace A045694

/-- `Δ[A252696(n+1)/3]` -/
def P16242737546195558715.Spec : Prop :=
  ∀ n, P16242737546195558715.a n = (A045694 (n + 1) : ℚ)

end A045694

/-!
# A045695: Number of ternary words of length n (beginning 0) with autocorrelation function 2^(n-1)+1.

The programs for A045695, there is no canonical definition to state claims against.
-/

/-! ## A045695.P7431778135957149404

`A138574(n)-A138567(A026520(n))`
-/

namespace A045695.P7431778135957149404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138574 n - A138567 (A026520 n).toNat

end

end A045695.P7431778135957149404

/-! ## A045695.P12758310377492031738

`A066490(A108852(n)*A119358(n))`
-/

namespace A045695.P12758310377492031738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A108852 n * A119358 n).toNat

end

end A045695.P12758310377492031738

/-! ## A045695.P17227786489774852743

`A230772(A054886(n)*A289846(n))`
-/

namespace A045695.P17227786489774852743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (A054886 n * A289846 n).toNat

end

end A045695.P17227786489774852743

/-!
# A045696: Number of ternary words of length n (beginning 0) with autocorrelation function 2^(n-1)+2.

The programs for A045696, there is no canonical definition to state claims against.
-/

/-! ## A045696.P674308832792940962

`xor(A277194(A091024(n)), A277194(n))`
-/

namespace A045696.P674308832792940962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A277194 (A091024 n).toNat) (A277194 n)

end

end A045696.P674308832792940962

/-! ## A045696.P11426054931636800587

`∑[A160812(A168243(n)-A055951(n))]`
-/

namespace A045696.P11426054931636800587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160812 (A168243 n - A055951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045696.P11426054931636800587

/-! ## A045696.P2045158807507365113

`∑[A265518(A001045(n))]-A265518(n)`
-/

namespace A045696.P2045158807507365113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A001045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A265518 n

end

end A045696.P2045158807507365113

/-!
# A045698: Number of ways n can be written as the sum of two squares of primes.

The programs for A045698, there is no canonical definition to state claims against.
-/

/-! ## A045698.P15016491379221109570

`floor(sqrt(A279372(n)))`
-/

namespace A045698.P15016491379221109570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A279372 n)

end

end A045698.P15016491379221109570

/-! ## A045698.P12534117222905782328

`A057427(n*A279372(n))`
-/

namespace A045698.P12534117222905782328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A279372 n).toNat

end

end A045698.P12534117222905782328

/-! ## A045698.P10752878556728492632

`A167407(n*A279372(n))`
-/

namespace A045698.P10752878556728492632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 ((n : ℤ) * A279372 n).toNat

end

end A045698.P10752878556728492632

/-! ## A045698.P3867768472413209610

`A294619(n*A279372(n))`
-/

namespace A045698.P3867768472413209610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 ((n : ℤ) * A279372 n).toNat

end

end A045698.P3867768472413209610

/-! ## A045698.P18202817233109309671

`A057428(n*A279372(n))²`
-/

namespace A045698.P18202817233109309671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((n : ℤ) * A279372 n).toNat ^ 2

end

end A045698.P18202817233109309671

/-! ## A045698.P17950130104319292993

`ceil(A279372(n)/A000125(n))`
-/

namespace A045698.P17950130104319292993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279372 n : ℚ) / (A000125 n : ℚ)⌉

end

end A045698.P17950130104319292993

/-! ## A045698.P7064514811669985681

`ceil(A279372(n)/A007318(n))`
-/

namespace A045698.P7064514811669985681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279372 n : ℚ) / (A007318 n : ℚ)⌉

end

end A045698.P7064514811669985681

/-! ## A045698.P5627605234475049996

`ceil(A279372(n)/A279342(n))`
-/

namespace A045698.P5627605234475049996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279372 n : ℚ) / (A279342 n : ℚ)⌉

end

end A045698.P5627605234475049996

/-! ## A045698.P15690283087297746691

`A000045(and(n-3, A279372(n)))`
-/

namespace A045698.P15690283087297746691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land ((n : ℤ) - 3) (A279372 n)).toNat

end

end A045698.P15690283087297746691

/-! ## A045698.P562440399584957623

`ceil(A279372(n)/A000005(n+1))`
-/

namespace A045698.P562440399584957623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279372 n : ℚ) / (A000005 (n + 1) : ℚ)⌉

end

end A045698.P562440399584957623

/-!
# A045699: Numbers of the form p^2 + q^3, p,q prime.

The programs for A045699, there is no canonical definition to state claims against.
-/

/-! ## A045699.P16758335958914215767

`lt[0, A045701(n+1)]+1`
-/

namespace A045699.P16758335958914215767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A045699.P16758335958914215767

