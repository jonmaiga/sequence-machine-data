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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A331701: Prime powers (A025475) that can be represented as a sum of two prime powers.

The programs for A331701, there is no canonical definition to state claims against.
-/

/-! ## A331701.P16932569506328692575

`filter[A300331(n+1), A268340(#)]`
-/

namespace A331701.P16932569506328692575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268340 (f1 j).toNat = 1) n)

end

end A331701.P16932569506328692575

/-! ## A331701.P5709272716789358981

`∩[A025475(n+1), A300331(n+1)]`
-/

namespace A331701.P5709272716789358981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331701.P5709272716789358981

/-! ## A331701.P8620241002176901833

`∩[A046447(n+1), A300331(n+1)]`
-/

namespace A331701.P8620241002176901833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331701.P8620241002176901833

/-! ## A331701.P17599379806874560792

`∩[A096603(n+1), A265731(n+1)]`
-/

namespace A331701.P17599379806874560792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331701.P17599379806874560792

/-! ## A331701.P14909789139268006912

`∩[A088949(n+1), A300331(n+1)]`
-/

namespace A331701.P14909789139268006912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331701.P14909789139268006912

/-!
# A331702: Number of distinct intersections among all circles that can be constructed on vertices of an n-sided regular polygon, using only a compass.

The programs for A331702, there is no canonical definition to state claims against.
-/

/-! ## A331702.P7168329470036466356

`(A359047(n+1)+1)%A359046(n+1)`
-/

namespace A331702.P7168329470036466356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359047 (n + 1) + 1) (A359046 (n + 1))

end

end A331702.P7168329470036466356

/-! ## A331702.P7334440869724409980

`∑{p}[n+1, #*val(n+1, #)]*A237413(7*4^n-1)`
-/

namespace A331702.P7334440869724409980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) * A237413 (7 * 4 ^ n - 1)

end

end A331702.P7334440869724409980

/-!
# A331704: Number of nonnegative integer matrices with n distinct columns and any number of distinct nonzero rows with column sums 2 and columns in decreasing lexicographic order.

The programs for A331704, there is no canonical definition to state claims against.
-/

/-! ## A331704.P13010775373962020622

`A331570(∑[n+2]+3)`
-/

namespace A331704.P13010775373962020622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331570 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A331704.P13010775373962020622

/-! ## A331704.P13023107605251619774

`and(-1, A331570(A340266(n+1)))`
-/

namespace A331704.P13023107605251619774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331570 (A340266 (n + 1)).toNat)

end

end A331704.P13023107605251619774

/-! ## A331704.P8363560930393913395

`A331570(A340266(n+1))%A224766(n)`
-/

namespace A331704.P8363560930393913395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331570 (A340266 (n + 1)).toNat) (A224766 n)

end

end A331704.P8363560930393913395

/-! ## A331704.P13563226572970944894

`lcm(A033999(n), A331570(A340266(n+1)))`
-/

namespace A331704.P13563226572970944894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A331570 (A340266 (n + 1)).toNat)

end

end A331704.P13563226572970944894

/-!
# A331705: Number of nonnegative integer matrices with n distinct columns and any number of distinct nonzero rows with column sums 3 and columns in decreasing lexicographic order.

The programs for A331705, there is no canonical definition to state claims against.
-/

/-! ## A331705.P10552935930392112218

`A331570(A167614(n+2))`
-/

namespace A331705.P10552935930392112218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331570 (A167614 (n + 2)).toNat

end

end A331705.P10552935930392112218

/-! ## A331705.P10240038413121640601

`A331570(A141214(n)+6)`
-/

namespace A331705.P10240038413121640601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331570 (A141214 n + 6).toNat

end

end A331705.P10240038413121640601

/-! ## A331705.P16317194738934134323

`A331570(A052905(n)+8)`
-/

namespace A331705.P16317194738934134323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331570 (A052905 n + 8).toNat

end

end A331705.P16317194738934134323

/-! ## A331705.P286871198434165853

`A331570(A055999(n)+9)`
-/

namespace A331705.P286871198434165853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331570 (A055999 n + 9).toNat

end

end A331705.P286871198434165853

/-! ## A331705.P12563482976664229233

`A331570(eq[3, A002262(n)])`
-/

namespace A331705.P12563482976664229233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331705.P12563482976664229233

/-!
# A331706: Number of nonnegative integer matrices with 2 distinct columns and any number of distinct nonzero rows with column sums n and columns in decreasing lexicographic order.

The programs for A331706, there is no canonical definition to state claims against.
-/

/-! ## A331706.P11217722482405049019

`(A331646(n)-A032020(n))/2`
-/

namespace A331706.P11217722482405049019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331646 n - A032020 n : ℚ) / 2

end

end A331706.P11217722482405049019

/-! ## A331706.P8817402862421909381

`A331711(n)-A032020(n)`
-/

namespace A331706.P8817402862421909381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331711 n - A032020 n

end

end A331706.P8817402862421909381

/-! ## A331706.P11325955432605232226

`A331646(n)-A331711(n)`
-/

namespace A331706.P11325955432605232226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331646 n - A331711 n

end

end A331706.P11325955432605232226

/-! ## A331706.P3976259879557478738

`A331711(n)-(A216695(n)+1)`
-/

namespace A331706.P3976259879557478738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331711 n - (A216695 n + 1)

end

end A331706.P3976259879557478738

/-! ## A331706.P7689986707645590294

`A331711(n)-(2*A032058(n)-1)`
-/

namespace A331706.P7689986707645590294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331711 n - (2 * A032058 n - 1)

end

end A331706.P7689986707645590294

/-!
# A331707: Number of nonnegative integer matrices with 3 distinct columns and any number of distinct nonzero rows with column sums n and columns in decreasing lexicographic order.

The programs for A331707, there is no canonical definition to state claims against.
-/

/-! ## A331707.P5871598376235066655

`A331712(n)-A331646(n)`
-/

namespace A331707.P5871598376235066655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331712 n - A331646 n

end

end A331707.P5871598376235066655

/-! ## A331707.P11506820031013222055

`A331712(n)-(A331711(n)+A331706(n))`
-/

namespace A331707.P11506820031013222055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331712 n - (A331711 n + A331706 n)

end

end A331707.P11506820031013222055

/-! ## A331707.P6668203641552044042

`A331712(n)-(A032020(n)+2*A331706(n))`
-/

namespace A331707.P6668203641552044042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331712 n - (A032020 n + 2 * A331706 n)

end

end A331707.P6668203641552044042

/-! ## A331707.P17074966505375877377

`A331570(∑[n+3]+n+3)`
-/

namespace A331707.P17074966505375877377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331570 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A331707.P17074966505375877377

/-! ## A331707.P13280470305754919712

`A331572(∑[n+3]+n+3)-A331646(n)`
-/

namespace A331707.P13280470305754919712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)) - A331646 n

end

end A331707.P13280470305754919712

/-!
# A331708: Number of nonnegative integer matrices with distinct nonzero rows, total sum n, distinct columns with equals sums and columns in decreasing lexicographic order.

The programs for A331708, there is no canonical definition to state claims against.
-/

/-! ## A331708.P14357711545709839024

`∑{d}[n+1, A331570(C((n+1)/#+#+1, 2)+#)]`
-/

namespace A331708.P14357711545709839024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A331570 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ) + 1)).toNat 2 + d)

end

end A331708.P14357711545709839024

/-!
# A331709: Number of nonnegative integer matrices with n columns and any number of distinct nonzero rows with column sums 2 and columns in nonincreasing lexicographic order.

The programs for A331709, there is no canonical definition to state claims against.
-/

/-! ## A331709.P10453679524425612195

`A331572(∑[n+2]+3)`
-/

namespace A331709.P10453679524425612195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A331709.P10453679524425612195

/-! ## A331709.P16439934355170540891

`or(A193243(n), A331572(A340266(n+1)))`
-/

namespace A331709.P16439934355170540891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193243 n) (A331572 (A340266 (n + 1)).toNat)

end

end A331709.P16439934355170540891

/-! ## A331709.P140277099659642453

`A331572(A340266(n+1))%A262638(n+1)`
-/

namespace A331709.P140277099659642453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331572 (A340266 (n + 1)).toNat) (A262638 (n + 1))

end

end A331709.P140277099659642453

/-! ## A331709.P3444865898562278487

`A331572(A340266(n+1))+A193243(3*n+4)`
-/

namespace A331709.P3444865898562278487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (A340266 (n + 1)).toNat + A193243 (3 * n + 4)

end

end A331709.P3444865898562278487

/-! ## A331709.P1807068927328688407

`A331572(A340266(n+1))+A002262(A112367(n))`
-/

namespace A331709.P1807068927328688407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (A340266 (n + 1)).toNat + A002262 (A112367 n).toNat

end

end A331709.P1807068927328688407

/-!
# A331710: Number of nonnegative integer matrices with n columns and any number of distinct nonzero rows with column sums 3 and columns in nonincreasing lexicographic order.

The programs for A331710, there is no canonical definition to state claims against.
-/

/-! ## A331710.P15926061386778366784

`A331572(A167614(n+2))`
-/

namespace A331710.P15926061386778366784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (A167614 (n + 2)).toNat

end

end A331710.P15926061386778366784

/-! ## A331710.P15473421853716789233

`A331572(A141214(n)+6)`
-/

namespace A331710.P15473421853716789233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (A141214 n + 6).toNat

end

end A331710.P15473421853716789233

/-! ## A331710.P4340876231921378655

`A331572(A052905(n)+8)`
-/

namespace A331710.P4340876231921378655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (A052905 n + 8).toNat

end

end A331710.P4340876231921378655

/-! ## A331710.P11933440098982823856

`A331572(A055999(n)+9)`
-/

namespace A331710.P11933440098982823856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (A055999 n + 9).toNat

end

end A331710.P11933440098982823856

/-! ## A331710.P6996685203881370803

`A331572(eq[2, A141169(n)])`
-/

namespace A331710.P6996685203881370803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331710.P6996685203881370803

/-!
# A331711: Number of nonnegative integer matrices with 2 columns and any number of distinct nonzero rows with column sums n and columns in nonincreasing lexicographic order.

The programs for A331711, there is no canonical definition to state claims against.
-/

/-! ## A331711.P14857416767858034329

`(A331646(n)+A032020(n))/2`
-/

namespace A331711.P14857416767858034329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331646 n + A032020 n : ℚ) / 2

end

end A331711.P14857416767858034329

/-! ## A331711.P2184079955059234594

`A331706(n)+A032020(n)`
-/

namespace A331711.P2184079955059234594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331706 n + A032020 n

end

end A331711.P2184079955059234594

/-! ## A331711.P5421411516769816024

`A331646(n)-A331706(n)`
-/

namespace A331711.P5421411516769816024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331646 n - A331706 n

end

end A331711.P5421411516769816024

/-! ## A331711.P8974736405988912299

`A216695(n)+A331706(n)+1`
-/

namespace A331711.P8974736405988912299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 n + (A331706 n + 1)

end

end A331711.P8974736405988912299

/-! ## A331711.P920150028101432336

`A331706(n)+2*A032058(n)-1`
-/

namespace A331711.P920150028101432336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331706 n + (2 * A032058 n - 1)

end

end A331711.P920150028101432336

/-!
# A331712: Number of nonnegative integer matrices with 3 columns and any number of distinct nonzero rows with column sums n and columns in nonincreasing lexicographic order.

The programs for A331712, there is no canonical definition to state claims against.
-/

/-! ## A331712.P1562137417895156402

`A331707(n)+A331646(n)`
-/

namespace A331712.P1562137417895156402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331707 n + A331646 n

end

end A331712.P1562137417895156402

/-! ## A331712.P17728333923675029704

`A331706(n)+A331711(n)+A331707(n)`
-/

namespace A331712.P17728333923675029704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331706 n + (A331711 n + A331707 n)

end

end A331712.P17728333923675029704

/-! ## A331712.P1679689902811046444

`A331707(n)+A032020(n)+2*A331706(n)`
-/

namespace A331712.P1679689902811046444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331707 n + (A032020 n + 2 * A331706 n)

end

end A331712.P1679689902811046444

/-! ## A331712.P15841593113782687568

`A331707(n)+A331706(n)+A331706(n)+A004273(A032058(n))`
-/

namespace A331712.P15841593113782687568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331707 n + (A331706 n + (A331706 n + A004273 (A032058 n).toNat))

end

end A331712.P15841593113782687568

/-! ## A331712.P8852658595445975679

`A331572(∑[n+3]+n+3)`
-/

namespace A331712.P8852658595445975679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A331712.P8852658595445975679

/-!
# A331713: Number of nonnegative integer matrices with pairwise distinct nonzero rows, the total sum of elements equal n, the same sum of elements in each column, and the columns coming in nonincreasing lexicographic order.

The programs for A331713, there is no canonical definition to state claims against.
-/

/-! ## A331713.P1414704398692187073

`∑{d}[n+1, A331572(C((n+1)/#+#+1, 2)+#)]`
-/

namespace A331713.P1414704398692187073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A331572 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ) + 1)).toNat 2 + d)

end

end A331713.P1414704398692187073

/-! ## A331713.P17766030153084324416

`A287896(A027618(n))`
-/

namespace A331713.P17766030153084324416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A027618 n).toNat

end

end A331713.P17766030153084324416

/-!
# A331714: Number of non-isomorphic set-systems with 3 sets each with n elements.

The programs for A331714, there is no canonical definition to state claims against.
-/

/-! ## A331714.P7554872740243548569

`∑[∑[C(ceil(n/2)+2, 2)]]`
-/

namespace A331714.P7554872740243548569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(n : ℚ) / 2⌉ + 2).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331714.P7554872740243548569

/-! ## A331714.P3971979562257408189

`∑[∑[∑[(∑[n]+n)%(n+3)]+1]]`
-/

namespace A331714.P3971979562257408189
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j + n) % (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331714.P3971979562257408189

/-! ## A331714.P13451266215923384379

`∑[∑[a(n-2)+ceil(n/2)+1]]` with `a(0)=1, a(1)=3`
-/

namespace A331714.P13451266215923384379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + (⌈(n : ℚ) / 2⌉ + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331714.P13451266215923384379

/-! ## A331714.P18269463129632272423

`∑[∑[∑[(n%2)^n*∑[(n%2)^n]]]]`
-/

namespace A331714.P18269463129632272423
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n * (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331714.P18269463129632272423

/-! ## A331714.P12374346109339079974

`∑[∑[∑[gcd(xor(1, n²), ∑[n])]]+ceil(n/2)]`
-/

namespace A331714.P12374346109339079974
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331714.P12374346109339079974

/-!
# A331715: Number of non-isomorphic set-systems with 4 sets each with n elements.

The programs for A331715, there is no canonical definition to state claims against.
-/

/-! ## A331715.P11655591417783376400

`record[A331508(∑[n+3]-2)]`
-/

namespace A331715.P11655591417783376400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331715.P11655591417783376400

/-! ## A331715.P1686683620669170127

`A331508(A052905(n+3))`
-/

namespace A331715.P1686683620669170127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A052905 (n + 3)).toNat

end

end A331715.P1686683620669170127

/-! ## A331715.P2073575315076721920

`A331508(A056119(n)+16)`
-/

namespace A331715.P2073575315076721920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A056119 n + 16).toNat

end

end A331715.P2073575315076721920

/-! ## A331715.P4884771858243223101

`A331508(A055999(n+3)+1)`
-/

namespace A331715.P4884771858243223101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (A055999 (n + 3) + 1).toNat

end

end A331715.P4884771858243223101

/-! ## A331715.P9456971291160214485

`A331508(lt[A035469(n+1), A346607(n+1)]+n+2)`
-/

namespace A331715.P9456971291160214485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331508 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (n + 2))

end

end A331715.P9456971291160214485

/-!
# A331716: Number of nonequivalent binary matrices with n distinct columns and any number of distinct nonzero rows with 3 ones in every column up to permutation of rows and columns.

The programs for A331716, there is no canonical definition to state claims against.
-/

/-! ## A331716.P11465803586932332013

`A331509(∑[n+3]+6)`
-/

namespace A331716.P11465803586932332013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331509 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A331716.P11465803586932332013

/-! ## A331716.P17777775953429759363

`A073757(A005867(n))-A002088(n)`
-/

namespace A331716.P17777775953429759363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (A005867 n).toNat - A002088 n

end

end A331716.P17777775953429759363

/-! ## A331716.P9732151220015618578

`A061468(A005867(n))-A117285(n+1)`
-/

namespace A331716.P9732151220015618578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (A005867 n).toNat - A117285 (n + 1)

end

end A331716.P9732151220015618578

/-!
# A331717: Number of nonequivalent n-column binary matrices with 2 ones in every column and any number of distinct nonzero rows up to permutation of rows and columns.

The programs for A331717, there is no canonical definition to state claims against.
-/

/-! ## A331717.P14638663865526499207

`A331510(∑[n+2]+3)`
-/

namespace A331717.P14638663865526499207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A331717.P14638663865526499207

/-! ## A331717.P679912894344736461

`A331510(A340266(n+1))+A025437(n)`
-/

namespace A331717.P679912894344736461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (A340266 (n + 1)).toNat + A025437 n

end

end A331717.P679912894344736461

/-! ## A331717.P15910730857623195896

`A331510(A340266(n+1))+A025442(n)`
-/

namespace A331717.P15910730857623195896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (A340266 (n + 1)).toNat + A025442 n

end

end A331717.P15910730857623195896

/-! ## A331717.P15463449022960302465

`A331510(A340266(n+1))+A054899(n)`
-/

namespace A331717.P15463449022960302465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (A340266 (n + 1)).toNat + A054899 n

end

end A331717.P15463449022960302465

/-! ## A331717.P17133930951990085190

`lcm(A003106(n), A331510(A340266(n+1)))`
-/

namespace A331717.P17133930951990085190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003106 n) (A331510 (A340266 (n + 1)).toNat)

end

end A331717.P17133930951990085190

/-!
# A331718: Number of nonequivalent n-column binary matrices with 3 ones in every column and any number of distinct nonzero rows up to permutation of rows and columns.

The programs for A331718, there is no canonical definition to state claims against.
-/

/-! ## A331718.P2857867481225876189

`A331510(∑[a(n-1)+1])` with `a(0)=10, a(1)=3, a(2)=5`
-/

namespace A331718.P2857867481225876189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 3, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331718.P2857867481225876189

/-! ## A331718.P8153751553777241556

`A331510(A167614(n+2))`
-/

namespace A331718.P8153751553777241556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (A167614 (n + 2)).toNat

end

end A331718.P8153751553777241556

/-! ## A331718.P6933570206970446095

`A331510(A141214(n)+6)`
-/

namespace A331718.P6933570206970446095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (A141214 n + 6).toNat

end

end A331718.P6933570206970446095

/-! ## A331718.P5665046641515449577

`A331510(A052905(n)+8)`
-/

namespace A331718.P5665046641515449577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (A052905 n + 8).toNat

end

end A331718.P5665046641515449577

/-!
# A331719: Number of nonequivalent 5-column binary matrices with n ones in every column and any number of distinct nonzero rows up to permutation of rows and columns.

The programs for A331719, there is no canonical definition to state claims against.
-/

/-! ## A331719.P9442371065926200116

`A331510(A055999(n+3))`
-/

namespace A331719.P9442371065926200116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (A055999 (n + 3)).toNat

end

end A331719.P9442371065926200116

/-! ## A331719.P13622927405230948486

`A331510(eq[5, A025581(n)])`
-/

namespace A331719.P13622927405230948486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331719.P13622927405230948486

/-!
# A331720: Number of nonequivalent binary matrices with 4 columns and any number of nonzero rows with n ones in every column up to permutation of rows and columns.

The programs for A331720, there is no canonical definition to state claims against.
-/

/-! ## A331720.P16970568188853490981

`A331461(A052905(n+2))`
-/

namespace A331720.P16970568188853490981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (A052905 (n + 2)).toNat

end

end A331720.P16970568188853490981

/-! ## A331720.P16956625268997650674

`A331461(eq[4, A025581(n)])`
-/

namespace A331720.P16956625268997650674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331720.P16956625268997650674

/-! ## A331720.P5936914452716045536

`A331461(eq[16, A130321(n)])`
-/

namespace A331720.P5936914452716045536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331720.P5936914452716045536

/-! ## A331720.P11008852528968464836

`A331461(Δ[A055831(n+4)])`
-/

namespace A331720.P11008852528968464836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (f1 (n + 1) - f1 n).toNat

end

end A331720.P11008852528968464836

/-!
# A331721: Number of nonequivalent n-column nonnegative integer matrices with column sums 4 and any number of nonzero rows up to permutation of rows and columns.

The programs for A331721, there is no canonical definition to state claims against.
-/

/-! ## A331721.P1275178293758259854

`A331485(eq[4, A002262(n)])`
-/

namespace A331721.P1275178293758259854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331721.P1275178293758259854

/-! ## A331721.P760150094136722698

`A331485(eq[16, A059268(n)])`
-/

namespace A331721.P760150094136722698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331721.P760150094136722698

/-! ## A331721.P12441239450593165008

`A331485(A141214(n+1)+7)`
-/

namespace A331721.P12441239450593165008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (A141214 (n + 1) + 7).toNat

end

end A331721.P12441239450593165008

/-! ## A331721.P2927152502910354861

`A331485(eq[5, A002260(n+1)])`
-/

namespace A331721.P2927152502910354861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331721.P2927152502910354861

/-! ## A331721.P2591071169424953592

`A331485(eq[9, A158405(n+1)])`
-/

namespace A331721.P2591071169424953592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331721.P2591071169424953592

/-!
# A331722: Number of nonequivalent 2-column nonnegative integer matrices with column sums n and any number of nonzero rows up to permutation of rows and columns.

The programs for A331722, there is no canonical definition to state claims against.
-/

/-! ## A331722.P9158232484824224215

`A331485(∑[n+3])`
-/

namespace A331722.P9158232484824224215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331722.P9158232484824224215

/-! ## A331722.P18029260919438758925

`record[A331485(A069981(n))]`
-/

namespace A331722.P18029260919438758925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331722.P18029260919438758925

/-! ## A331722.P17618003710770198904

`record[gcd(A242249(n+2), A331485(n))]`
-/

namespace A331722.P17618003710770198904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242249 (n + 2)) (A331485 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331722.P17618003710770198904

/-! ## A331722.P11428536537042016277

`record[root(A331485(n+1), A219727(n+3))]`
-/

namespace A331722.P11428536537042016277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A331485 (n + 1) : ℝ) ^ (1 / (A219727 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331722.P11428536537042016277

/-! ## A331722.P14747340256999446979

`lcm(A033999(n), A331485(A141214(n)))`
-/

namespace A331722.P14747340256999446979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A331485 (A141214 n).toNat)

end

end A331722.P14747340256999446979

/-!
# A331723: Number of nonequivalent 3-column nonnegative integer matrices with column sums n and any number of nonzero rows up to permutation of rows and columns.

The programs for A331723, there is no canonical definition to state claims against.
-/

/-! ## A331723.P14161229337877371367

`A331485(∑[n+4]+2)`
-/

namespace A331723.P14161229337877371367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A331723.P14161229337877371367

/-! ## A331723.P9405297934637663524

`record[gcd(A331161(n+4), A331485(n))]`
-/

namespace A331723.P9405297934637663524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331161 (n + 4)) (A331485 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331723.P9405297934637663524

/-!
# A331725: E.g.f.: exp(x/(1 - x)) / (1 + x).

The programs for A331725, the canonical program `A331725.P16801487907309998401` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331725 has offset 0).

The definition of A331725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331725.P527020178532339456

`∑{#}[n, (-1)^#*A206703(C(n+1, 2)+#)]`
-/

namespace A331725.P527020178532339456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A206703 (Nat.choose (n + 1) 2 + k)

end

end A331725.P527020178532339456

namespace A331725

/-- `∑{#}[n, (-1)^#*A206703(C(n+1, 2)+#)]` -/
def P527020178532339456.Spec : Prop :=
  ∀ n, P527020178532339456.a n = A331725 n

end A331725

/-! ## A331725.P16801487907309998401

`∑{#}[n, (-1)^#*C(n, #)*#!*A000262(n-#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331725

/-- `∑{#}[n, (-1)^#*C(n, #)*#!*A000262(n-#)]` -/
def P16801487907309998401.Spec : Prop :=
  ∀ n, P16801487907309998401.a n = A331725 n

theorem P16801487907309998401.correct : P16801487907309998401.Spec := by
  intro n
  simp only [A331725]

end A331725

/-! ## A331725.P13177130353248100315

`A000262(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A331725.P13177130353248100315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000262 n - (n : ℤ) * a (n - 1)

end

end A331725.P13177130353248100315

namespace A331725

/-- `A000262(n)-n*a(n-1)` -/
def P13177130353248100315.Spec : Prop :=
  ∀ n, P13177130353248100315.a n = A331725 n

end A331725

/-! ## A331725.P3181648292962973781

`abs(A293125(n))-n*a(n-1)` with `a(0)=1`
-/

namespace A331725.P3181648292962973781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A293125 n| - (n : ℤ) * a (n - 1)

end

end A331725.P3181648292962973781

namespace A331725

/-- `abs(A293125(n))-n*a(n-1)` -/
def P3181648292962973781.Spec : Prop :=
  ∀ n, P3181648292962973781.a n = A331725 n

end A331725

/-! ## A331725.P16142387682049063902

`A059110(∑[n])-n*a(n-1)` with `a(0)=1`
-/

namespace A331725.P16142387682049063902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059110 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ) * a (n - 1)

end

end A331725.P16142387682049063902

namespace A331725

/-- `A059110(∑[n])-n*a(n-1)` -/
def P16142387682049063902.Spec : Prop :=
  ∀ n, P16142387682049063902.a n = A331725 n

end A331725

/-! ## A331725.P16959031960579318217

`A129652(∑[n])-n*a(n-1)` with `a(0)=1`
-/

namespace A331725.P16959031960579318217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129652 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ) * a (n - 1)

end

end A331725.P16959031960579318217

namespace A331725

/-- `A129652(∑[n])-n*a(n-1)` -/
def P16959031960579318217.Spec : Prop :=
  ∀ n, P16959031960579318217.a n = A331725 n

end A331725

/-! ## A331725.P2259819045202144180

`A216294(∑[n])-n*a(n-1)` with `a(0)=1`
-/

namespace A331725.P2259819045202144180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A216294 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ) * a (n - 1)

end

end A331725.P2259819045202144180

namespace A331725

/-- `A216294(∑[n])-n*a(n-1)` -/
def P2259819045202144180.Spec : Prop :=
  ∀ n, P2259819045202144180.a n = A331725 n

end A331725

/-! ## A331725.P3949299189108950707

`A376863(C(n, 2))-n*a(n-1)` with `a(0)=1`
-/

namespace A331725.P3949299189108950707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A376863 (Nat.choose n 2) - (n : ℤ) * a (n - 1)

end

end A331725.P3949299189108950707

namespace A331725

/-- `A376863(C(n, 2))-n*a(n-1)` -/
def P3949299189108950707.Spec : Prop :=
  ∀ n, P3949299189108950707.a n = A331725 n

end A331725

/-! ## A331725.P309236989421935120

`A253286(∑[n+1]+1)-n*a(n-1)` with `a(0)=1`
-/

namespace A331725.P309236989421935120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253286 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n : ℤ) * a (n - 1)

end

end A331725.P309236989421935120

namespace A331725

/-- `A253286(∑[n+1]+1)-n*a(n-1)` -/
def P309236989421935120.Spec : Prop :=
  ∀ n, P309236989421935120.a n = A331725 n

end A331725

/-! ## A331725.P11045687490727982769

`A002720(n)-2*A102289(n)`
-/

namespace A331725.P11045687490727982769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - 2 * A102289 n

end

end A331725.P11045687490727982769

namespace A331725

/-- `A002720(n)-2*A102289(n)` -/
def P11045687490727982769.Spec : Prop :=
  ∀ n, P11045687490727982769.a n = A331725 n

end A331725

/-!
# A331726: Expansion of e.g.f. -LambertW(-x/(1 - x)) / (1 - x).

The programs for A331726, the canonical program `A331726.P13714901163845700631` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331726 has offset 0).

The definition of A331726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331726.P13714901163845700631

`∑{#}[n-1, C(n, #)²*#!*(n-#)^(n-#-1)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331726

/-- `∑{#}[n-1, C(n, #)²*#!*(n-#)^(n-#-1)]` -/
def P13714901163845700631.Spec : Prop :=
  ∀ n, P13714901163845700631.a n = (A331726 n : ℚ)

end A331726

/-! ## A331726.P11454969735612968253

`n*A323772(n)`
-/

namespace A331726.P11454969735612968253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A323772 n

end

end A331726.P11454969735612968253

namespace A331726

/-- `n*A323772(n)` -/
def P11454969735612968253.Spec : Prop :=
  ∀ n, P11454969735612968253.a n = A331726 n

end A331726

/-! ## A331726.P954950619166987547

`A052871(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A331726.P954950619166987547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052871 n + (n : ℤ) * a (n - 1)

end

end A331726.P954950619166987547

namespace A331726

/-- `A052871(n)+n*a(n-1)` -/
def P954950619166987547.Spec : Prop :=
  ∀ n, P954950619166987547.a n = A331726 n

end A331726

/-! ## A331726.P9451128884259264440

`A323772(n+1)-A352410(n)`
-/

namespace A331726.P9451128884259264440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323772 (n + 1) - A352410 n

end

end A331726.P9451128884259264440

namespace A331726

/-- `A323772(n+1)-A352410(n)` -/
def P9451128884259264440.Spec : Prop :=
  ∀ n, P9451128884259264440.a n = A331726 n

end A331726

/-! ## A331726.P2298508400175740673

`A323772(round(sqrt((n+1)²+1)))%A352410(n)`
-/

namespace A331726.P2298508400175740673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323772 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 2 + 1 : ℝ))).toNat) (A352410 n)

end

end A331726.P2298508400175740673

namespace A331726

/-- `A323772(round(sqrt((n+1)²+1)))%A352410(n)` -/
def P2298508400175740673.Spec : Prop :=
  ∀ n, P2298508400175740673.a n = A331726 n

end A331726

/-!
# A331727: E.g.f.: -LambertW(-x/(1 + x)) / (1 + x).

The programs for A331727, the canonical program `A331727.P13700421824892445744` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331727 has offset 0).

The definition of A331727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331727.P13700421824892445744

`∑{#}[n-1, (-1)^#*C(n, #)²*#!*(n-#)^(n-#-1)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331727

/-- `∑{#}[n-1, (-1)^#*C(n, #)²*#!*(n-#)^(n-#-1)]` -/
def P13700421824892445744.Spec : Prop :=
  ∀ n, P13700421824892445744.a n = (A331727 n : ℚ)

end A331727

/-! ## A331727.P8706313275346807242

`A060356(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A331727.P8706313275346807242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A060356 n - (n : ℤ) * a (n - 1)

end

end A331727.P8706313275346807242

namespace A331727

/-- `A060356(n)-n*a(n-1)` -/
def P8706313275346807242.Spec : Prop :=
  ∀ n, P8706313275346807242.a n = A331727 n

end A331727

/-! ## A331727.P14310187467885920868

`n*(A108919(n)-a(n-1))` with `a(0)=0`
-/

namespace A331727.P14310187467885920868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A108919 n - a (n - 1))

end

end A331727.P14310187467885920868

namespace A331727

/-- `n*(A108919(n)-a(n-1))` -/
def P14310187467885920868.Spec : Prop :=
  ∀ n, P14310187467885920868.a n = A331727 n

end A331727

/-! ## A331727.P3081484635654542099

`n*(A005512(n+1)-A108919(n+1))`
-/

namespace A331727.P3081484635654542099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005512 (n + 1) - A108919 (n + 1))

end

end A331727.P3081484635654542099

namespace A331727

/-- `n*(A005512(n+1)-A108919(n+1))` -/
def P3081484635654542099.Spec : Prop :=
  ∀ n, P3081484635654542099.a n = A331727 n

end A331727

/-! ## A331727.P879218751696123463

`A335945(n)-n*a(n-1)-A231602(∑[n]+1)/(n+1)` with `a(0)=0`
-/

namespace A331727.P879218751696123463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A335945 n : ℚ) - (n : ℚ) * a (n - 1) - (A231602 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A331727.P879218751696123463

namespace A331727

/-- `A335945(n)-n*a(n-1)-A231602(∑[n]+1)/(n+1)` -/
def P879218751696123463.Spec : Prop :=
  ∀ n, P879218751696123463.a n = (A331727 n : ℚ)

end A331727

/-!
# A331728: Negabinary-Niven numbers: numbers divisible by the sum of digits in their negabinary representation (A027615).

The programs for A331728, there is no canonical definition to state claims against.
-/

/-! ## A331728.P15494124112428442031

`record[gcd(A157271(n+1), A316886(n+1))]`
-/

namespace A331728.P15494124112428442031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157271 (n + 1)) (A316886 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331728.P15494124112428442031

/-! ## A331728.P11310939125566440982

`lt[A177427(lcm(12, n)/12), ∑[2*n]]`
-/

namespace A331728.P11310939125566440982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177427 (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A331728.P11310939125566440982

/-! ## A331728.P6749757845573400229

`record[gcd(A092942(n+1), A196302(n+2))]`
-/

namespace A331728.P6749757845573400229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092942 (n + 1)) (A196302 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331728.P6749757845573400229

/-!
# A331729: Number of Ulam numbers u (A002858) between powers of 2, 2^n < u <= 2^(n+1).

The programs for A331729, there is no canonical definition to state claims against.
-/

/-! ## A331729.P16878033241688694216

`runs[ceil(log2(A002858(n+2)))]`
-/

namespace A331729.P16878033241688694216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A002858 (n + 2) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A331729.P16878033241688694216

/-! ## A331729.P9256849256298381427

`A349465(A253062(n+4)+3)`
-/

namespace A331729.P9256849256298381427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349465 (A253062 (n + 4) + 3).toNat

end

end A331729.P9256849256298381427

/-! ## A331729.P5309575305660870738

`or(∏{e}[n+1, #+1], A260803(A029571(n)))`
-/

namespace A331729.P5309575305660870738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A260803 (A029571 n).toNat)

end

end A331729.P5309575305660870738

/-! ## A331729.P9619560110240595297

`A001877(A014417(n))+A001037(n)`
-/

namespace A331729.P9619560110240595297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A014417 n).toNat + A001037 n

end

end A331729.P9619560110240595297

/-! ## A331729.P5670145200329099855

`A072528(A007097(n))+A011893(n)`
-/

namespace A331729.P5670145200329099855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072528 (A007097 n).toNat + A011893 n

end

end A331729.P5670145200329099855

/-!
# A331730: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = A331595(n) for all other n, except for odd primes p, f(p) = 0.

The programs for A331730, there is no canonical definition to state claims against.
-/

/-! ## A331730.P937925319192496476

`A130130(n)+A064989(A331595(n+1))`
-/

namespace A331730.P937925319192496476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A064989 (A331595 (n + 1)).toNat

end

end A331730.P937925319192496476

/-! ## A331730.P16590223822207627854

`A130130(A243071(n+1))+A064989(A331731(n+1))`
-/

namespace A331730.P16590223822207627854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A243071 (n + 1)).toNat + A064989 (A331731 (n + 1)).toNat

end

end A331730.P16590223822207627854

/-! ## A331730.P13562829355374597187

`A130130(n)+A064989(A241909(n+1)/A331599(n+1))`
-/

namespace A331730.P13562829355374597187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A064989 (SequenceMachineLib.roundAway ((A241909 (n + 1) : ℚ) / (A331599 (n + 1) : ℚ))).toNat

end

end A331730.P13562829355374597187

/-! ## A331730.P11262056452948705992

`A302039(A101296(n+1)+A079616(2*(n+1))%A079606(n+3))`
-/

namespace A331730.P11262056452948705992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A101296 (n + 1) + Int.tmod (A079616 (2 * (n + 1))) (A079606 (n + 3))).toNat

end

end A331730.P11262056452948705992

/-! ## A331730.P14871755819741060050

`A001222(A076984(n+1))+A185274(A173304(2*n))+∑{e}[n+1, #]+1`
-/

namespace A331730.P14871755819741060050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076984 (n + 1)).toNat + (A185274 (A173304 (2 * n)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ))

end

end A331730.P14871755819741060050

/-!
# A331731: Odd part of A331595(n), where A331595(n) = gcd(A122111(n), A241909(n)).

The programs for A331731, there is no canonical definition to state claims against.
-/

/-! ## A331731.P3930728708567675895

`A000265(A331595(n+1))`
-/

namespace A331731.P3930728708567675895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A331595 (n + 1)).toNat

end

end A331731.P3930728708567675895

/-! ## A331731.P16087313278823969064

`gcd(A122111(n+1), A331732(n+1))`
-/

namespace A331731.P16087313278823969064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122111 (n + 1)) (A331732 (n + 1))

end

end A331731.P16087313278823969064

/-! ## A331731.P7551158819097300395

`gcd(A322865(n+1), A331595(n+1))`
-/

namespace A331731.P7551158819097300395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322865 (n + 1)) (A331595 (n + 1))

end

end A331731.P7551158819097300395

/-! ## A331731.P18405739314375360609

`gcd(A241909(n+1), A322865(n+1))`
-/

namespace A331731.P18405739314375360609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241909 (n + 1)) (A322865 (n + 1))

end

end A331731.P18405739314375360609

/-! ## A331731.P18298561515860221989

`gcd(A217858(n+1), A331595(n+1))`
-/

namespace A331731.P18298561515860221989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217858 (n + 1)) (A331595 (n + 1))

end

end A331731.P18298561515860221989

/-! ## A331731.P8059341874853894486

`gcd(A224085(n), A331595(n+1))`
-/

namespace A331731.P8059341874853894486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224085 n) (A331595 (n + 1))

end

end A331731.P8059341874853894486

/-! ## A331731.P12430991193019863342

`gcd(A055634(n), A331595(n+1))`
-/

namespace A331731.P12430991193019863342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 n) (A331595 (n + 1))

end

end A331731.P12430991193019863342

/-! ## A331731.P2682949697489559065

`(2*A243506(A052126(n+1))-1)/A000265(A331598(n+1))`
-/

namespace A331731.P2682949697489559065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A243506 (A052126 (n + 1)).toNat - 1 : ℚ) / (A000265 (A331598 (n + 1)).toNat : ℚ)

end

end A331731.P2682949697489559065

/-! ## A331731.P13975544174214282985

`gcd(A046983(n), A331595(n+1))`
-/

namespace A331731.P13975544174214282985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046983 n) (A331595 (n + 1))

end

end A331731.P13975544174214282985

/-!
# A331732: Odd part of A241909(n).

The programs for A331732, there is no canonical definition to state claims against.
-/

/-! ## A331732.P7790037900023820778

`A000265(A241909(n+1))`
-/

namespace A331732.P7790037900023820778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A241909 (n + 1)).toNat

end

end A331732.P7790037900023820778

/-! ## A331732.P17195475035772216885

`A241909(A348717(n+1)-A010051(n+1))`
-/

namespace A331732.P17195475035772216885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A348717 (n + 1) - A010051 (n + 1)).toNat

end

end A331732.P17195475035772216885

/-! ## A331732.P1543262729550727772

`A241909(A348717(n+1)/(A010051(n+1)+1))`
-/

namespace A331732.P1543262729550727772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (SequenceMachineLib.roundAway ((A348717 (n + 1) : ℚ) / (A010051 (n + 1) + 1 : ℚ))).toNat

end

end A331732.P1543262729550727772

/-! ## A331732.P5283854704153032296

`A241909(n+1)/A011782(A286477(n+1))`
-/

namespace A331732.P5283854704153032296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (n + 1) : ℚ) / (A011782 (A286477 (n + 1)).toNat : ℚ)

end

end A331732.P5283854704153032296

/-! ## A331732.P17073807514893126029

`lcm(A048656(n+1), A241909(n+1))/A048656(n+1)`
-/

namespace A331732.P17073807514893126029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048656 (n + 1)) (A241909 (n + 1)) : ℚ) / (A048656 (n + 1) : ℚ)

end

end A331732.P17073807514893126029

/-! ## A331732.P3204507959810730239

`A279356(A348717(n+1)-A010051(n+1))`
-/

namespace A331732.P3204507959810730239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279356 (A348717 (n + 1) - A010051 (n + 1)).toNat

end

end A331732.P3204507959810730239

/-! ## A331732.P10651291349300384265

`A279356(A348717(n+1)/(A010051(n+1)+1))`
-/

namespace A331732.P10651291349300384265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279356 (SequenceMachineLib.roundAway ((A348717 (n + 1) : ℚ) / (A010051 (n + 1) + 1 : ℚ))).toNat

end

end A331732.P10651291349300384265

/-! ## A331732.P16701333130970720210

`A241909(n+1)/gcd(A000079(n), A241909(n+1))`
-/

namespace A331732.P16701333130970720210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A241909 (n + 1)) : ℚ)

end

end A331732.P16701333130970720210

/-! ## A331732.P6822196389797974585

`gcd(∏[A331731(n+1)], A241909(n+1))`
-/

namespace A331732.P6822196389797974585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A241909 (n + 1))

end

end A331732.P6822196389797974585

/-! ## A331732.P15104868125496961127

`A322865(A241916(n+1))`
-/

namespace A331732.P15104868125496961127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (A241916 (n + 1)).toNat

end

end A331732.P15104868125496961127

/-!
# A331733: a(n) = sigma(A225546(n)), where sigma is the sum of divisors.

The programs for A331733, there is no canonical definition to state claims against.
-/

/-! ## A331733.P7694861888699499449

`A000203(A225546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331733.P7694861888699499449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A225546 (n + 1)).toNat

end

end A331733.P7694861888699499449

/-! ## A331733.P9895796536603966215

`A323173(A336321(n+1))`
-/

namespace A331733.P9895796536603966215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323173 (A336321 (n + 1)).toNat

end

end A331733.P9895796536603966215

/-! ## A331733.P3300822163884156049

`2*A225546(n+1)-A331734(n+1)`
-/

namespace A331733.P3300822163884156049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225546 (n + 1) - A331734 (n + 1)

end

end A331733.P3300822163884156049

/-! ## A331733.P11664997018452185362

`2*A122111(A336321(n+1))-A331734(n+1)`
-/

namespace A331733.P11664997018452185362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122111 (A336321 (n + 1)).toNat - A331734 (n + 1)

end

end A331733.P11664997018452185362

/-! ## A331733.P15825490406065255271

`∑{d}[A225546(n+1), #]`
-/

namespace A331733.P15825490406065255271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A331733.P15825490406065255271

/-!
# A331734: a(n) = A033879(A225546(n)).

The programs for A331734, there is no canonical definition to state claims against.
-/

/-! ## A331734.P12761629317703433405

`A323174(A336321(n+1))`
-/

namespace A331734.P12761629317703433405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323174 (A336321 (n + 1)).toNat

end

end A331734.P12761629317703433405

/-! ## A331734.P7586267554266681780

`2*A225546(n+1)-A331733(n+1)`
-/

namespace A331734.P7586267554266681780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225546 (n + 1) - A331733 (n + 1)

end

end A331734.P7586267554266681780

/-!
# A331735: a(n) = A009194(A225546(n)) = gcd(A225546(n), sigma(A225546(n))).

The programs for A331735, there is no canonical definition to state claims against.
-/

/-! ## A331735.P3593160515863892652

`gcd(A308328(n+1), A331734(n+1))`
-/

namespace A331735.P3593160515863892652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A308328 (n + 1)) (A331734 (n + 1))

end

end A331735.P3593160515863892652

/-! ## A331735.P8781392315739292062

`gcd(A225546(n+1), A331733(n+1))`
-/

namespace A331735.P8781392315739292062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225546 (n + 1)) (A331733 (n + 1))

end

end A331735.P8781392315739292062

/-! ## A331735.P7182394726956554680

`gcd(-A331734(n+1), A122111(A336321(n+1)))`
-/

namespace A331735.P7182394726956554680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A331734 (n + 1)) (A122111 (A336321 (n + 1)).toNat)

end

end A331735.P7182394726956554680

/-!
# A331736: The largest odd divisor of A225546(n).

The programs for A331736, there is no canonical definition to state claims against.
-/

/-! ## A331736.P8302199787045884365

`A225546(A008833(n+1))`
-/

namespace A331736.P8302199787045884365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A008833 (n + 1)).toNat

end

end A331736.P8302199787045884365

/-! ## A331736.P2648252637479463663

`A334866(A156552(∏{p}[n+1, #^val(n+1, #²)]²))`
-/

namespace A331736.P2648252637479463663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334866 (A156552 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)).toNat

end

end A331736.P2648252637479463663

/-! ## A331736.P2087159445425918342

`A334860(A243071(∏{p}[n+1, #^val(n+1, #²)]²))`
-/

namespace A331736.P2087159445425918342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334860 (A243071 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)).toNat

end

end A331736.P2087159445425918342

/-! ## A331736.P3408949082928231328

`A322865(gcd(A336321(n+1), A349125(n+1)))`
-/

namespace A331736.P3408949082928231328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (Int.gcd (A336321 (n + 1)) (A349125 (n + 1)))

end

end A331736.P3408949082928231328

/-! ## A331736.P11755620953811343142

`A003961(A225546(∏{p}[n+1, #^val(n+1, #²)]))`
-/

namespace A331736.P11755620953811343142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A225546 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

end

end A331736.P11755620953811343142

/-! ## A331736.P14386673832460861377

`A003961(A225546(A000188(n+1)))`
-/

namespace A331736.P14386673832460861377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A225546 (A000188 (n + 1)).toNat).toNat

end

end A331736.P14386673832460861377

/-!
# A331737: Multiplicative with a(p^e) = p^A000265(e), where A000265(x) gives the odd part of x.

The programs for A331737, the canonical program `A331737.P13668168951917771966` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331737 has offset 1).

The definition of A331737 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331738, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331737.P13668168951917771966

`(n+1)/A331738(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A331737

/-- `(n+1)/A331738(n+1)` -/
def P13668168951917771966.Spec : Prop :=
  ∀ n, P13668168951917771966.a n = (A331737 (n + 1) : ℚ)

end A331737

/-! ## A331737.P12785147049460586786

`A331738(A338782(n+1))*A350389(n+1)`
-/

namespace A331737.P12785147049460586786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (A338782 (n + 1)).toNat * A350389 (n + 1)

end

end A331737.P12785147049460586786

namespace A331737

/-- `A331738(A338782(n+1))*A350389(n+1)` -/
def P12785147049460586786.Spec : Prop :=
  ∀ n, P12785147049460586786.a n = A331737 (n + 1)

end A331737

/-! ## A331737.P14546701889147649669

`(n+1)*A331738(n+1)^A008683(A338018(n+2))`
-/

namespace A331737.P14546701889147649669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A331738 (n + 1) : ℚ) ^ (A008683 (A338018 (n + 2)).toNat : ℤ)

end

end A331737.P14546701889147649669

namespace A331737

/-- `(n+1)*A331738(n+1)^A008683(A338018(n+2))` -/
def P14546701889147649669.Spec : Prop :=
  ∀ n, P14546701889147649669.a n = (A331737 (n + 1) : ℚ)

end A331737

/-! ## A331737.P10718565587827736313

`(n+1)*A331738(n+1)^A008683(A006450(n+1))`
-/

namespace A331737.P10718565587827736313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A331738 (n + 1) : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)

end

end A331737.P10718565587827736313

namespace A331737

/-- `(n+1)*A331738(n+1)^A008683(A006450(n+1))` -/
def P10718565587827736313.Spec : Prop :=
  ∀ n, P10718565587827736313.a n = (A331737 (n + 1) : ℚ)

end A331737

/-! ## A331737.P11446244330403618944

`A219158(A331738(n+1)+A000217(n))`
-/

namespace A331737.P11446244330403618944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A331738 (n + 1) + A000217 n).toNat

end

end A331737.P11446244330403618944

namespace A331737

/-- `A219158(A331738(n+1)+A000217(n))` -/
def P11446244330403618944.Spec : Prop :=
  ∀ n, P11446244330403618944.a n = A331737 (n + 1)

end A331737

/-! ## A331737.P7684343078286612578

`A126988(A331738(n+1)+A000217(n))`
-/

namespace A331737.P7684343078286612578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A331738 (n + 1) + A000217 n).toNat

end

end A331737.P7684343078286612578

namespace A331737

/-- `A126988(A331738(n+1)+A000217(n))` -/
def P7684343078286612578.Spec : Prop :=
  ∀ n, P7684343078286612578.a n = A331737 (n + 1)

end A331737

/-! ## A331737.P18436754706403476138

`A056622(A338782(n+1)*A350389(n+1))`
-/

namespace A331737.P18436754706403476138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A338782 (n + 1) * A350389 (n + 1)).toNat

end

end A331737.P18436754706403476138

namespace A331737

/-- `A056622(A338782(n+1)*A350389(n+1))` -/
def P18436754706403476138.Spec : Prop :=
  ∀ n, P18436754706403476138.a n = A331737 (n + 1)

end A331737

/-! ## A331737.P6484374061392988564

`A003963(A301315(A225395(A064988(n+1))))`
-/

namespace A331737.P6484374061392988564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A301315 (A225395 (A064988 (n + 1)).toNat).toNat).toNat

end

end A331737.P6484374061392988564

namespace A331737

/-- `A003963(A301315(A225395(A064988(n+1))))` -/
def P6484374061392988564.Spec : Prop :=
  ∀ n, P6484374061392988564.a n = A331737 (n + 1)

end A331737

/-! ## A331737.P1596287106280828797

`sqrt(A338782((n+1)²))`
-/

namespace A331737.P1596287106280828797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A338782 ((n + 1) ^ 2) : ℝ)

end

end A331737.P1596287106280828797

namespace A331737

/-- `sqrt(A338782((n+1)²))` -/
def P1596287106280828797.Spec : Prop :=
  ∀ n, P1596287106280828797.a n = (A331737 (n + 1) : ℝ)

end A331737

/-! ## A331737.P15808483927010107564

`root(A338782((n+1)^2), 2)`
-/

namespace A331737.P15808483927010107564
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A338782 ((n + 1) ^ 2) : ℝ) ^ (1 / (2 : ℝ))

end

end A331737.P15808483927010107564

namespace A331737

/-- `root(A338782((n+1)^2), 2)` -/
def P15808483927010107564.Spec : Prop :=
  ∀ n, P15808483927010107564.a n = (A331737 (n + 1) : ℝ)

end A331737

/-! ## A331737.P10993793634089782385

`A000188(A338782(∑[A005408(n)]))`
-/

namespace A331737.P10993793634089782385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A338782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A331737.P10993793634089782385

namespace A331737

/-- `A000188(A338782(∑[A005408(n)]))` -/
def P10993793634089782385.Spec : Prop :=
  ∀ n, P10993793634089782385.a n = A331737 (n + 1)

end A331737

/-! ## A331737.P3234623156405334380

`A338782(A000188(A338782((n+1)*(n+1))))`
-/

namespace A331737.P3234623156405334380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (A000188 (A338782 ((n + 1) * (n + 1))).toNat).toNat

end

end A331737.P3234623156405334380

namespace A331737

/-- `A338782(A000188(A338782((n+1)*(n+1))))` -/
def P3234623156405334380.Spec : Prop :=
  ∀ n, P3234623156405334380.a n = A331737 (n + 1)

end A331737

/-!
# A331738: Multiplicative with a(p^e) = p^(e-A000265(e)), where A000265(x) gives the odd part of x.

The programs for A331738, the canonical program `A331738.P12324963354578380825` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331738 has offset 1).

The definition of A331738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331738.P6209362859714216355

`(n+1)/A331737(n+1)`
-/

namespace A331738.P6209362859714216355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A331737 (n + 1) : ℚ)

end

end A331738.P6209362859714216355

namespace A331738

/-- `(n+1)/A331737(n+1)` -/
def P6209362859714216355.Spec : Prop :=
  ∀ n, P6209362859714216355.a n = (A331738 (n + 1) : ℚ)

end A331738

/-! ## A331738.P12324963354578380825

`A071974(n+1)*a(A071974(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A331738

/-- `A071974(n+1)*a(A071974(n+1)-1)` -/
def P12324963354578380825.Spec : Prop :=
  ∀ n, P12324963354578380825.a n = A331738 (n + 1)

theorem P12324963354578380825.correct : P12324963354578380825.Spec := by
  intro n
  simp only [A331738, Nat.add_sub_cancel]

end A331738

/-! ## A331738.P16926832182940291662

`A071974(n+1)²/A071974(A338782(n+1))`
-/

namespace A331738.P16926832182940291662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071974 (n + 1) ^ 2 : ℚ) / (A071974 (A338782 (n + 1)).toNat : ℚ)

end

end A331738.P16926832182940291662

namespace A331738

/-- `A071974(n+1)²/A071974(A338782(n+1))` -/
def P16926832182940291662.Spec : Prop :=
  ∀ n, P16926832182940291662.a n = (A331738 (n + 1) : ℚ)

end A331738

/-! ## A331738.P12891009155787919124

`A270419(A356191(n+1)/A270419(n+1))`
-/

namespace A331738.P12891009155787919124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (SequenceMachineLib.roundAway ((A356191 (n + 1) : ℚ) / (A270419 (n + 1) : ℚ))).toNat

end

end A331738.P12891009155787919124

namespace A331738

/-- `A270419(A356191(n+1)/A270419(n+1))` -/
def P12891009155787919124.Spec : Prop :=
  ∀ n, P12891009155787919124.a n = A331738 (n + 1)

end A331738

/-! ## A331738.P789965727779347663

`A219158(A331737(n+1)+A000217(n))`
-/

namespace A331738.P789965727779347663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A331737 (n + 1) + A000217 n).toNat

end

end A331738.P789965727779347663

namespace A331738

/-- `A219158(A331737(n+1)+A000217(n))` -/
def P789965727779347663.Spec : Prop :=
  ∀ n, P789965727779347663.a n = A331738 (n + 1)

end A331738

/-! ## A331738.P5557063267465698611

`A234575(A331737(n+1)+∑[n])`
-/

namespace A331738.P5557063267465698611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A331737 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A331738.P5557063267465698611

namespace A331738

/-- `A234575(A331737(n+1)+∑[n])` -/
def P5557063267465698611.Spec : Prop :=
  ∀ n, P5557063267465698611.a n = A331738 (n + 1)

end A331738

/-! ## A331738.P4641302145519280271

`A051537(A331737(n+1)+A000217(n))`
-/

namespace A331738.P4641302145519280271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A331737 (n + 1) + A000217 n).toNat

end

end A331738.P4641302145519280271

namespace A331738

/-- `A051537(A331737(n+1)+A000217(n))` -/
def P4641302145519280271.Spec : Prop :=
  ∀ n, P4641302145519280271.a n = A331738 (n + 1)

end A331738

/-! ## A331738.P4853683437550101574

`(n+1)/sqrt(A338782((n+1)²))`
-/

namespace A331738.P4853683437550101574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A338782 ((n + 1) ^ 2) : ℝ)

end

end A331738.P4853683437550101574

namespace A331738

/-- `(n+1)/sqrt(A338782((n+1)²))` -/
def P4853683437550101574.Spec : Prop :=
  ∀ n, P4853683437550101574.a n = (A331738 (n + 1) : ℝ)

end A331738

/-! ## A331738.P10700271195501586684

`A338782((n+1)/root(A338782((n+1)²), 2))`
-/

namespace A331738.P10700271195501586684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (SequenceMachineLib.roundAway ((n + 1 : ℝ) / (A338782 ((n + 1) ^ 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A331738.P10700271195501586684

namespace A331738

/-- `A338782((n+1)/root(A338782((n+1)²), 2))` -/
def P10700271195501586684.Spec : Prop :=
  ∀ n, P10700271195501586684.a n = A331738 (n + 1)

end A331738

/-!
# A331739: a(n) is n minus its largest odd divisor.

The programs for A331739, the canonical program `A331739.P457850794578440847` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331739 has offset 1).

The definition of A331739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331739.P457850794578440847

`n+1-A000265(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331739

/-- `n+1-A000265(n+1)` -/
def P457850794578440847.Spec : Prop :=
  ∀ n, P457850794578440847.a n = A331739 (n + 1)

theorem P457850794578440847.correct : P457850794578440847.Spec := by
  intro n
  simp only [A331739, Nat.add_sub_cancel]

end A331739

/-! ## A331739.P1267251857226826665

`n-floor(n/2^val(n+1, 2))`
-/

namespace A331739.P1267251857226826665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋

end

end A331739.P1267251857226826665

namespace A331739

/-- `n-floor(n/2^val(n+1, 2))` -/
def P1267251857226826665.Spec : Prop :=
  ∀ n, P1267251857226826665.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P17009900902438645642

`n-floor(n/(or(n, n+1)-n))`
-/

namespace A331739.P17009900902438645642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋

end

end A331739.P17009900902438645642

namespace A331739

/-- `n-floor(n/(or(n, n+1)-n))` -/
def P17009900902438645642.Spec : Prop :=
  ∀ n, P17009900902438645642.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P690784274814582779

`n-floor(n/and(n+1, -(n+1)))`
-/

namespace A331739.P690784274814582779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋

end

end A331739.P690784274814582779

namespace A331739

/-- `n-floor(n/and(n+1, -(n+1)))` -/
def P690784274814582779.Spec : Prop :=
  ∀ n, P690784274814582779.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P8824279758609309438

`n-floor(n/ceil(xor(n, n+1)/2))`
-/

namespace A331739.P8824279758609309438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ)⌋

end

end A331739.P8824279758609309438

namespace A331739

/-- `n-floor(n/ceil(xor(n, n+1)/2))` -/
def P8824279758609309438.Spec : Prop :=
  ∀ n, P8824279758609309438.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P11743727105164551800

`n-2*floor(n/(xor(n, n+1)+1))`
-/

namespace A331739.P11743727105164551800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A331739.P11743727105164551800

namespace A331739

/-- `n-2*floor(n/(xor(n, n+1)+1))` -/
def P11743727105164551800.Spec : Prop :=
  ∀ n, P11743727105164551800.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P7629725467069208133

`1-(n+1)/2^val(n+1, 2)+n`
-/

namespace A331739.P7629725467069208133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n : ℚ)

end

end A331739.P7629725467069208133

namespace A331739

/-- `1-(n+1)/2^val(n+1, 2)+n` -/
def P7629725467069208133.Spec : Prop :=
  ∀ n, P7629725467069208133.a n = (A331739 (n + 1) : ℚ)

end A331739

/-! ## A331739.P16485692546518649611

`n-lcm(n+1, and(n, n+1))/(n+1)`
-/

namespace A331739.P16485692546518649611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.lcm (n + 1) (Nat.land n (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A331739.P16485692546518649611

namespace A331739

/-- `n-lcm(n+1, and(n, n+1))/(n+1)` -/
def P16485692546518649611.Spec : Prop :=
  ∀ n, P16485692546518649611.a n = (A331739 (n + 1) : ℚ)

end A331739

/-! ## A331739.P6738089202829642953

`n+1-(n+1)/and(n+1, -(n+1))`
-/

namespace A331739.P6738089202829642953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A331739.P6738089202829642953

namespace A331739

/-- `n+1-(n+1)/and(n+1, -(n+1))` -/
def P6738089202829642953.Spec : Prop :=
  ∀ n, P6738089202829642953.a n = (A331739 (n + 1) : ℚ)

end A331739

/-! ## A331739.P16152120435809857184

`(n+1)/or(n+1, -(n+1))+n+1`
-/

namespace A331739.P16152120435809857184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + (n + 1 : ℚ)

end

end A331739.P16152120435809857184

namespace A331739

/-- `(n+1)/or(n+1, -(n+1))+n+1` -/
def P16152120435809857184.Spec : Prop :=
  ∀ n, P16152120435809857184.a n = (A331739 (n + 1) : ℚ)

end A331739

/-! ## A331739.P3064027138827260254

`(n+1)/(and(n, n+1)-(n+1))+n+1`
-/

namespace A331739.P3064027138827260254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.land n (n + 1) : ℤ) - (n + 1 : ℤ) : ℚ) + (n + 1 : ℚ)

end

end A331739.P3064027138827260254

namespace A331739

/-- `(n+1)/(and(n, n+1)-(n+1))+n+1` -/
def P3064027138827260254.Spec : Prop :=
  ∀ n, P3064027138827260254.a n = (A331739 (n + 1) : ℚ)

end A331739

/-! ## A331739.P6521801171087844904

`n-A153733(n)`
-/

namespace A331739.P6521801171087844904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A153733 n

end

end A331739.P6521801171087844904

namespace A331739

/-- `n-A153733(n)` -/
def P6521801171087844904.Spec : Prop :=
  ∀ n, P6521801171087844904.a n = A331739 (n + 1)

theorem P6521801171087844904.correct : P6521801171087844904.Spec := by
  intro n
  simp only [A331739, Nat.add_sub_cancel, A331739.P6521801171087844904.a, A331739.P457850794578440847.a, A000265, A000265.P16482698636471710744.a, A153733, A153733.P10755713114946739736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331739

/-! ## A331739.P11780255201109657776

`n-2*A025480(n)`
-/

namespace A331739.P11780255201109657776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A025480 n

end

end A331739.P11780255201109657776

namespace A331739

/-- `n-2*A025480(n)` -/
def P11780255201109657776.Spec : Prop :=
  ∀ n, P11780255201109657776.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P12230339088959623200

`∑[Δ[A129527(n)]-1]`
-/

namespace A331739.P12230339088959623200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331739.P12230339088959623200

namespace A331739

/-- `∑[Δ[A129527(n)]-1]` -/
def P12230339088959623200.Spec : Prop :=
  ∀ n, P12230339088959623200.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P15751994144232697143

`A129527(n+1)-(n+1)`
-/

namespace A331739.P15751994144232697143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (n + 1) - (n + 1 : ℤ)

end

end A331739.P15751994144232697143

namespace A331739

/-- `A129527(n+1)-(n+1)` -/
def P15751994144232697143.Spec : Prop :=
  ∀ n, P15751994144232697143.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P995011534158445873

`n-2*A110962(2*n)`
-/

namespace A331739.P995011534158445873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A110962 (2 * n)

end

end A331739.P995011534158445873

namespace A331739

/-- `n-2*A110962(2*n)` -/
def P995011534158445873.Spec : Prop :=
  ∀ n, P995011534158445873.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P11802874795701619337

`A384055(n+1)%(n+1)`
-/

namespace A331739.P11802874795701619337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384055 (n + 1)) (n + 1 : ℤ)

end

end A331739.P11802874795701619337

namespace A331739

/-- `A384055(n+1)%(n+1)` -/
def P11802874795701619337.Spec : Prop :=
  ∀ n, P11802874795701619337.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P6629631595380289058

`n-floor(n/A006519(n+1))`
-/

namespace A331739.P6629631595380289058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A006519 (n + 1) : ℚ)⌋

end

end A331739.P6629631595380289058

namespace A331739

/-- `n-floor(n/A006519(n+1))` -/
def P6629631595380289058.Spec : Prop :=
  ∀ n, P6629631595380289058.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P16494114393841870438

`n+1-A171435(2*(n+1))`
-/

namespace A331739.P16494114393841870438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A171435 (2 * (n + 1))

end

end A331739.P16494114393841870438

namespace A331739

/-- `n+1-A171435(2*(n+1))` -/
def P16494114393841870438.Spec : Prop :=
  ∀ n, P16494114393841870438.a n = A331739 (n + 1)

end A331739

/-! ## A331739.P15758678009676833031

`1-A302034(2*(n+1))+n`
-/

namespace A331739.P15758678009676833031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A302034 (2 * (n + 1)) + (n : ℤ)

end

end A331739.P15758678009676833031

namespace A331739

/-- `1-A302034(2*(n+1))+n` -/
def P15758678009676833031.Spec : Prop :=
  ∀ n, P15758678009676833031.a n = A331739 (n + 1)

end A331739

/-!
# A331740: Number of prime factors in A225546(n), counted with multiplicity.

The programs for A331740, the canonical program `A331740.P9260061976321167483` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331740 has offset 1).

The definition of A331740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331740.P9493194412234419591

`A001222(A225546(n+1))`
-/

namespace A331740.P9493194412234419591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225546 (n + 1)).toNat

end

end A331740.P9493194412234419591

namespace A331740

/-- `A001222(A225546(n+1))` -/
def P9493194412234419591.Spec : Prop :=
  ∀ n, P9493194412234419591.a n = A331740 (n + 1)

end A331740

/-! ## A331740.P9260061976321167483

`A048675(A375240(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A331740

/-- `A048675(A375240(n+1))` -/
def P9260061976321167483.Spec : Prop :=
  ∀ n, P9260061976321167483.a n = A331740 (n + 1)

theorem P9260061976321167483.correct : P9260061976321167483.Spec := by
  intro n
  simp only [A331740, Nat.add_sub_cancel]

end A331740

/-! ## A331740.P16598566586558663196

`A334871(n+1)-A299090(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A331740.P16598566586558663196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (n + 1) - A299090 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A331740.P16598566586558663196

namespace A331740

/-- `A334871(n+1)-A299090(∏{p}[n+1, #^val(n+1, #²)])` -/
def P16598566586558663196.Spec : Prop :=
  ∀ n, P16598566586558663196.a n = A331740 (n + 1)

end A331740

/-! ## A331740.P773233518919236899

`∑{p}[A160102(n+1), A087207(A302023(#))]`
-/

namespace A331740.P773233518919236899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 (A302023 p).toNat

end

end A331740.P773233518919236899

namespace A331740

/-- `∑{p}[A160102(n+1), A087207(A302023(#))]` -/
def P773233518919236899.Spec : Prop :=
  ∀ n, P773233518919236899.a n = A331740 (n + 1)

end A331740

/-! ## A331740.P16284670474476212246

`A334871(n+1)-A299090(A000188(n+1))`
-/

namespace A331740.P16284670474476212246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (n + 1) - A299090 (A000188 (n + 1)).toNat

end

end A331740.P16284670474476212246

namespace A331740

/-- `A334871(n+1)-A299090(A000188(n+1))` -/
def P16284670474476212246.Spec : Prop :=
  ∀ n, P16284670474476212246.a n = A331740 (n + 1)

theorem P16284670474476212246.correct : P16284670474476212246.Spec := by
  intro n
  simp only [A331740, Nat.add_sub_cancel, A331740.P16284670474476212246.a, A331740.P9260061976321167483.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A299090, A299090.P6964279361835886871.a, A334871, A334871.P12161263468435973650.a, A375240, A375240.P16828847594714467939.a, A007913, A007913.P8131970495124731496.a, A029837, A029837.P1050578713049589.a, A051903, A051903.P10704508922429453281.f1, A051903.P10704508922429453281.a, A297108, A297108.P15990807296291497671.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A049084, A049084.P10934933317972537770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331740

/-! ## A331740.P7348219324883054109

`A334871(n+1)-A299090(sqrt(A008833(n+1)))`
-/

namespace A331740.P7348219324883054109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (n + 1) - A299090 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A331740.P7348219324883054109

namespace A331740

/-- `A334871(n+1)-A299090(sqrt(A008833(n+1)))` -/
def P7348219324883054109.Spec : Prop :=
  ∀ n, P7348219324883054109.a n = A331740 (n + 1)

end A331740

/-! ## A331740.P1009840743884161107

`A048675(A007913(n+1))+a(A000188(n+1)-1)` with `a(0)=0`
-/

namespace A331740.P1009840743884161107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048675 (A007913 (n + 1)).toNat + a (A000188 (n + 1) - 1).toNat

end

end A331740.P1009840743884161107

namespace A331740

/-- `A048675(A007913(n+1))+a(A000188(n+1)-1)` -/
def P1009840743884161107.Spec : Prop :=
  ∀ n, P1009840743884161107.a n = A331740 (n + 1)

end A331740

/-! ## A331740.P14353646167156034498

`A248663(n+1)+A001222(A331736(n+1))`
-/

namespace A331740.P14353646167156034498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (n + 1) + A001222 (A331736 (n + 1)).toNat

end

end A331740.P14353646167156034498

namespace A331740

/-- `A248663(n+1)+A001222(A331736(n+1))` -/
def P14353646167156034498.Spec : Prop :=
  ∀ n, P14353646167156034498.a n = A331740 (n + 1)

end A331740

/-! ## A331740.P2008523658086418629

`A334109(A055491(n+1))+A334109(n+1)`
-/

namespace A331740.P2008523658086418629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334109 (A055491 (n + 1)).toNat + A334109 (n + 1)

end

end A331740.P2008523658086418629

namespace A331740

/-- `A334109(A055491(n+1))+A334109(n+1)` -/
def P2008523658086418629.Spec : Prop :=
  ∀ n, P2008523658086418629.a n = A331740 (n + 1)

end A331740

/-! ## A331740.P12058164629479863664

`A334109(A007913(n+1)²)+A334109(n+1)`
-/

namespace A331740.P12058164629479863664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334109 (A007913 (n + 1) ^ 2).toNat + A334109 (n + 1)

end

end A331740.P12058164629479863664

namespace A331740

/-- `A334109(A007913(n+1)²)+A334109(n+1)` -/
def P12058164629479863664.Spec : Prop :=
  ∀ n, P12058164629479863664.a n = A331740 (n + 1)

end A331740

/-!
# A331741: Squares s such that A331733(s) = sigma(A225546(n)) is congruent to 2 modulo 4.

The programs for A331741, there is no canonical definition to state claims against.
-/

/-! ## A331741.P16006807818057008598

`record[A282779(A188134(n+1))²*A062378(n+1)]`
-/

namespace A331741.P16006807818057008598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282779 (A188134 (n + 1)).toNat ^ 2 * A062378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331741.P16006807818057008598

/-! ## A331741.P8938380132975682054

`filter[A017114(n), A105565(#)]`
-/

namespace A331741.P8938380132975682054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105565 (f1 j).toNat = 1) n)

end

end A331741.P8938380132975682054

/-! ## A331741.P17648498361601951455

`filter[A017114(n), A286064(#)]`
-/

namespace A331741.P17648498361601951455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286064 (f1 j).toNat = 1) n)

end

end A331741.P17648498361601951455

/-! ## A331741.P17807605481039315530

`filter[A174994(2*n), A105565(#)]`
-/

namespace A331741.P17807605481039315530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174994 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105565 (f1 j).toNat = 1) n)

end

end A331741.P17807605481039315530

/-! ## A331741.P13987598523989372424

`filter[A174994(2*n), A286064(#)]`
-/

namespace A331741.P13987598523989372424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174994 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286064 (f1 j).toNat = 1) n)

end

end A331741.P13987598523989372424

/-!
# A331742: Lexicographically earliest infinite sequence such that a(i) = a(j) => A323901(i) = A323901(j) for all i, j.

The programs for A331742, there is no canonical definition to state claims against.
-/

/-! ## A331742.P8411024171134665054

`A304124(A323901(n))%7`
-/

namespace A331742.P8411024171134665054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304124 (A323901 n).toNat) 7

end

end A331742.P8411024171134665054

/-! ## A331742.P6929334342666693147

`A337909(A323901(n)%A198534(n+1))`
-/

namespace A331742.P6929334342666693147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337909 (Int.tmod (A323901 n) (A198534 (n + 1))).toNat

end

end A331742.P6929334342666693147

/-! ## A331742.P14978712061707057670

`A065033(and(A106609(n), A235533(n+1)))`
-/

namespace A331742.P14978712061707057670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.land (A106609 n) (A235533 (n + 1))).toNat

end

end A331742.P14978712061707057670

/-! ## A331742.P14050299920307971468

`A163511(A323901(n)-A000265(A000079(n)))`
-/

namespace A331742.P14050299920307971468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A323901 n - A000265 (A000079 n).toNat).toNat

end

end A331742.P14050299920307971468

/-! ## A331742.P281353292074522594

`A347643(A341154(lcm(32, n)/32))`
-/

namespace A331742.P281353292074522594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (A341154 (SequenceMachineLib.roundAway ((Nat.lcm 32 n : ℚ) / 32)).toNat).toNat

end

end A331742.P281353292074522594

/-!
# A331744: Lexicographically earliest infinite sequence such that a(i) = a(j) => A009194(i) = A009194(j) and A323901(i) = A323901(j) for all i, j.

The programs for A331744, there is no canonical definition to state claims against.
-/

/-! ## A331744.P3936762932766792345

`gcd(A000217(A000171(n+1)), A215781(n))`
-/

namespace A331744.P3936762932766792345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A000171 (n + 1)).toNat) (A215781 n)

end

end A331744.P3936762932766792345

/-! ## A331744.P2653162338995370570

`A286449(lt[A098361(n), A097292(n+1)])`
-/

namespace A331744.P2653162338995370570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286449 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331744.P2653162338995370570

/-! ## A331744.P9487354239811014329

`gcd(A111978(A002808(3*n+5)), A127039(n+5))`
-/

namespace A331744.P9487354239811014329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111978 (A002808 (3 * n + 5)).toNat) (A127039 (n + 5))

end

end A331744.P9487354239811014329

/-!
# A331746: Lexicographically earliest infinite sequence such that a(i) = a(j) => A009194(i) = A009194(j) and A331166(i) = A331166(j) for all i, j.

The programs for A331746, there is no canonical definition to state claims against.
-/

/-! ## A331746.P5813670170838817789

`∑[Δ[A331300(n)]%A253075(n)]`
-/

namespace A331746.P5813670170838817789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A253075 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331746.P5813670170838817789

/-! ## A331746.P12477525715440277236

`A331300(n+1)-A035214(A253075(n))`
-/

namespace A331746.P12477525715440277236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331300 (n + 1) - A035214 (A253075 n).toNat

end

end A331746.P12477525715440277236

/-! ## A331746.P13652981176721635043

`A331300(n+1)-A144215(A000124(n+1))`
-/

namespace A331746.P13652981176721635043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331300 (n + 1) - A144215 (A000124 (n + 1)).toNat

end

end A331746.P13652981176721635043

/-! ## A331746.P17726763108629240066

`A331300(n+1)-A057427(A343237(n))`
-/

namespace A331746.P17726763108629240066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331300 (n + 1) - A057427 (A343237 n).toNat

end

end A331746.P17726763108629240066

/-! ## A331746.P1301038641246125953

`A331300(n+1)-A181801(A376891(n+1))`
-/

namespace A331746.P1301038641246125953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331300 (n + 1) - A181801 (A376891 (n + 1)).toNat

end

end A331746.P1301038641246125953

/-!
# A331748: a(n) = A002487(n) XOR A002487(A163511(n)).

The programs for A331748, the canonical program `A331748.P790098222198747257` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331748 has offset 0).

The definition of A331748 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331748.P790098222198747257

`xor(A002487(A163511(n)), A002487(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A331748

/-- `xor(A002487(A163511(n)), A002487(n))` -/
def P790098222198747257.Spec : Prop :=
  ∀ n, P790098222198747257.a n = A331748 n

theorem P790098222198747257.correct : P790098222198747257.Spec := by
  intro n
  simp only [A331748]

end A331748

/-! ## A331748.P6062302688156964046

`xor(A002487(n), A323901(n))`
-/

namespace A331748.P6062302688156964046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 n) (A323901 n)

end

end A331748.P6062302688156964046

namespace A331748

/-- `xor(A002487(n), A323901(n))` -/
def P6062302688156964046.Spec : Prop :=
  ∀ n, P6062302688156964046.a n = A331748 n

end A331748

/-! ## A331748.P11407926447900534473

`xor(n-A284013(n), A323901(n))`
-/

namespace A331748.P11407926447900534473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A284013 n) (A323901 n)

end

end A331748.P11407926447900534473

namespace A331748

/-- `xor(n-A284013(n), A323901(n))` -/
def P11407926447900534473.Spec : Prop :=
  ∀ n, P11407926447900534473.a n = A331748 n

end A331748

/-! ## A331748.P8635974227953719423

`xor(∑{d}[n, A317839(#)], A323901(n))`
-/

namespace A331748.P8635974227953719423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ d ∈ Nat.divisors (f1 n), A317839 d) (A323901 n)

end

end A331748.P8635974227953719423

namespace A331748

/-- `xor(∑{d}[n, A317839(#)], A323901(n))` -/
def P8635974227953719423.Spec : Prop :=
  ∀ n, P8635974227953719423.a n = A331748 n

end A331748

/-! ## A331748.P11795312844281367992

`xor(A323901(n), A324337(A003188(n)))`
-/

namespace A331748.P11795312844281367992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323901 n) (A324337 (A003188 n).toNat)

end

end A331748.P11795312844281367992

namespace A331748

/-- `xor(A323901(n), A324337(A003188(n)))` -/
def P11795312844281367992.Spec : Prop :=
  ∀ n, P11795312844281367992.a n = A331748 n

end A331748

/-! ## A331748.P4400392929897885321

`xor(A331749(n)+A002487(n), A002487(n))`
-/

namespace A331748.P4400392929897885321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A331749 n + A002487 n) (A002487 n)

end

end A331748.P4400392929897885321

namespace A331748

/-- `xor(A331749(n)+A002487(n), A002487(n))` -/
def P4400392929897885321.Spec : Prop :=
  ∀ n, P4400392929897885321.a n = A331748 n

theorem P4400392929897885321.correct : P4400392929897885321.Spec := by
  intro n
  simp only [A331748, Nat.add_sub_cancel, A331748.P4400392929897885321.a, A331748.P790098222198747257.a, A002487, A002487.P14011177000981426228.a, A163511, A163511.P5635496813650871695.a, A331749, A331749.P3262571390583388432.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P8520361847049590329.a, A003557, A003557.P6364735403900941810.a, A057335, A057335.P1378643245781663048.a, A145341, A145341.P17834554394848515737.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A030101, A030101.P16184294017372777612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331748

/-! ## A331748.P7953786802003320359

`xor(A323901(n)-A331749(n), A323901(n))`
-/

namespace A331748.P7953786802003320359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323901 n - A331749 n) (A323901 n)

end

end A331748.P7953786802003320359

namespace A331748

/-- `xor(A323901(n)-A331749(n), A323901(n))` -/
def P7953786802003320359.Spec : Prop :=
  ∀ n, P7953786802003320359.a n = A331748 n

end A331748

/-! ## A331748.P13468999704132450507

`xor(A283976(2*n), A323901(n))`
-/

namespace A331748.P13468999704132450507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283976 (2 * n)) (A323901 n)

end

end A331748.P13468999704132450507

namespace A331748

/-- `xor(A283976(2*n), A323901(n))` -/
def P13468999704132450507.Spec : Prop :=
  ∀ n, P13468999704132450507.a n = A331748 n

end A331748

/-! ## A331748.P14210620344052363598

`xor(A295515(2*n+1), A323901(n))`
-/

namespace A331748.P14210620344052363598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A295515 (2 * n + 1)) (A323901 n)

end

end A331748.P14210620344052363598

namespace A331748

/-- `xor(A295515(2*n+1), A323901(n))` -/
def P14210620344052363598.Spec : Prop :=
  ∀ n, P14210620344052363598.a n = A331748 n

end A331748

/-! ## A331748.P7866589914541895324

`xor(A323901(n), A323902(A005940(n+1)))`
-/

namespace A331748.P7866589914541895324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323901 n) (A323902 (A005940 (n + 1)).toNat)

end

end A331748.P7866589914541895324

namespace A331748

/-- `xor(A323901(n), A323902(A005940(n+1)))` -/
def P7866589914541895324.Spec : Prop :=
  ∀ n, P7866589914541895324.a n = A331748 n

end A331748

/-!
# A331749: a(n) = A002487(A163511(n)) - A002487(n).

The programs for A331749, the canonical program `A331749.P3262571390583388432` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331749 has offset 0).

The definition of A331749 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331749.P14804332273281725842

`A323901(n)-A002487(n)`
-/

namespace A331749.P14804332273281725842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n - A002487 n

end

end A331749.P14804332273281725842

namespace A331749

/-- `A323901(n)-A002487(n)` -/
def P14804332273281725842.Spec : Prop :=
  ∀ n, P14804332273281725842.a n = A331749 n

end A331749

/-! ## A331749.P3262571390583388432

`A002487(A163511(n))-A002487(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A331749

/-- `A002487(A163511(n))-A002487(n)` -/
def P3262571390583388432.Spec : Prop :=
  ∀ n, P3262571390583388432.a n = A331749 n

theorem P3262571390583388432.correct : P3262571390583388432.Spec := by
  intro n
  simp only [A331749]

end A331749

/-! ## A331749.P5886950321788434637

`A284013(n)+A323901(n)-n`
-/

namespace A331749.P5886950321788434637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284013 n + (A323901 n - (n : ℤ))

end

end A331749.P5886950321788434637

namespace A331749

/-- `A284013(n)+A323901(n)-n` -/
def P5886950321788434637.Spec : Prop :=
  ∀ n, P5886950321788434637.a n = A331749 n

theorem P5886950321788434637.correct : P5886950321788434637.Spec := by
  intro n
  simp only [A331749, Nat.add_sub_cancel, A331749.P5886950321788434637.a, A331749.P3262571390583388432.a, A002487, A002487.P14011177000981426228.a, A163511, A163511.P5635496813650871695.a, A284013, A284013.P1136611558935881771.a, A323901, A323901.P12439125084005686553.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P8520361847049590329.a, A003557, A003557.P6364735403900941810.a, A057335, A057335.P1378643245781663048.a, A145341, A145341.P17834554394848515737.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A030101, A030101.P16184294017372777612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331749

/-! ## A331749.P11976357049272278733

`A323901(n)-A324337(xor(n, floor(n/2)))`
-/

namespace A331749.P11976357049272278733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n - A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A331749.P11976357049272278733

namespace A331749

/-- `A323901(n)-A324337(xor(n, floor(n/2)))` -/
def P11976357049272278733.Spec : Prop :=
  ∀ n, P11976357049272278733.a n = A331749 n

end A331749

/-! ## A331749.P12177035851917273877

`A323901(n)-A324337(A003188(n))`
-/

namespace A331749.P12177035851917273877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n - A324337 (A003188 n).toNat

end

end A331749.P12177035851917273877

namespace A331749

/-- `A323901(n)-A324337(A003188(n))` -/
def P12177035851917273877.Spec : Prop :=
  ∀ n, P12177035851917273877.a n = A331749 n

end A331749

/-! ## A331749.P8027424875965800082

`xor(A002487(n), A331748(n))-A002487(n)`
-/

namespace A331749.P8027424875965800082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 n) (A331748 n) - A002487 n

end

end A331749.P8027424875965800082

namespace A331749

/-- `xor(A002487(n), A331748(n))-A002487(n)` -/
def P8027424875965800082.Spec : Prop :=
  ∀ n, P8027424875965800082.a n = A331749 n

end A331749

/-! ## A331749.P9869892194740173044

`A323901(n)-xor(A323901(n), A331748(n))`
-/

namespace A331749.P9869892194740173044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n - Int.xor (A323901 n) (A331748 n)

end

end A331749.P9869892194740173044

namespace A331749

/-- `A323901(n)-xor(A323901(n), A331748(n))` -/
def P9869892194740173044.Spec : Prop :=
  ∀ n, P9869892194740173044.a n = A331749 n

end A331749

/-! ## A331749.P11146620906909565152

`A323901(n)-A283976(2*n)`
-/

namespace A331749.P11146620906909565152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n - A283976 (2 * n)

end

end A331749.P11146620906909565152

namespace A331749

/-- `A323901(n)-A283976(2*n)` -/
def P11146620906909565152.Spec : Prop :=
  ∀ n, P11146620906909565152.a n = A331749 n

end A331749

/-! ## A331749.P170893652885630362

`A323901(n)-A283977(2*n)`
-/

namespace A331749.P170893652885630362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n - A283977 (2 * n)

end

end A331749.P170893652885630362

namespace A331749

/-- `A323901(n)-A283977(2*n)` -/
def P170893652885630362.Spec : Prop :=
  ∀ n, P170893652885630362.a n = A331749 n

end A331749

/-! ## A331749.P17497984102481350506

`A323901(n)-A295515(2*n+1)`
-/

namespace A331749.P17497984102481350506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n - A295515 (2 * n + 1)

end

end A331749.P17497984102481350506

namespace A331749

/-- `A323901(n)-A295515(2*n+1)` -/
def P17497984102481350506.Spec : Prop :=
  ∀ n, P17497984102481350506.a n = A331749 n

end A331749

/-! ## A331749.P13959418530924175441

`xor(A283976(2*n), A331748(n))-A283976(2*n)`
-/

namespace A331749.P13959418530924175441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283976 (2 * n)) (A331748 n) - A283976 (2 * n)

end

end A331749.P13959418530924175441

namespace A331749

/-- `xor(A283976(2*n), A331748(n))-A283976(2*n)` -/
def P13959418530924175441.Spec : Prop :=
  ∀ n, P13959418530924175441.a n = A331749 n

end A331749

/-! ## A331749.P2110971865369524417

`xor(A295515(2*n+1), A331748(n))-A295515(2*n+1)`
-/

namespace A331749.P2110971865369524417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A295515 (2 * n + 1)) (A331748 n) - A295515 (2 * n + 1)

end

end A331749.P2110971865369524417

namespace A331749

/-- `xor(A295515(2*n+1), A331748(n))-A295515(2*n+1)` -/
def P2110971865369524417.Spec : Prop :=
  ∀ n, P2110971865369524417.a n = A331749 n

end A331749

/-! ## A331749.P4506307740134540878

`A323901(n)-A323902(A005940(n+1))`
-/

namespace A331749.P4506307740134540878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n - A323902 (A005940 (n + 1)).toNat

end

end A331749.P4506307740134540878

namespace A331749

/-- `A323901(n)-A323902(A005940(n+1))` -/
def P4506307740134540878.Spec : Prop :=
  ∀ n, P4506307740134540878.a n = A331749 n

end A331749

/-!
# A331750: a(n) = A048675(sigma(n)).

The programs for A331750, the canonical program `A331750.P157088168861994408` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331750 has offset 1).

The definition of A331750 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331750.P157088168861994408

`A048675(A000203(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A331750

/-- `A048675(A000203(n+1))` -/
def P157088168861994408.Spec : Prop :=
  ∀ n, P157088168861994408.a n = A331750 (n + 1)

theorem P157088168861994408.correct : P157088168861994408.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel]

end A331750

/-! ## A331750.P14113213990692956859

`A332221(n+1)-A347876(n+1)`
-/

namespace A331750.P14113213990692956859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332221 (n + 1) - A347876 (n + 1)

end

end A331750.P14113213990692956859

namespace A331750

/-- `A332221(n+1)-A347876(n+1)` -/
def P14113213990692956859.Spec : Prop :=
  ∀ n, P14113213990692956859.a n = A331750 (n + 1)

theorem P14113213990692956859.correct : P14113213990692956859.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P14113213990692956859.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A332221, A332221.P10236177898118334507.a, A347876, A347876.P12593403235840957228.a, A156552, A156552.P4268073137713085227.a, A297108, A297108.P15990807296291497671.a, A323905, A323905.P339970777162455812.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A049084, A049084.P10934933317972537770.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P13095917788794276522

`A332221(n+1)-A323905(A000203(n+1))`
-/

namespace A331750.P13095917788794276522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332221 (n + 1) - A323905 (A000203 (n + 1)).toNat

end

end A331750.P13095917788794276522

namespace A331750

/-- `A332221(n+1)-A323905(A000203(n+1))` -/
def P13095917788794276522.Spec : Prop :=
  ∀ n, P13095917788794276522.a n = A331750 (n + 1)

theorem P13095917788794276522.correct : P13095917788794276522.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P13095917788794276522.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A323905, A323905.P339970777162455812.a, A332221, A332221.P10236177898118334507.a, A156552, A156552.P4268073137713085227.a, A297108, A297108.P15990807296291497671.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A049084, A049084.P10934933317972537770.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P13075063630477795963

`A048675(∑{d}[n+1, #])`
-/

namespace A331750.P13075063630477795963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A331750.P13075063630477795963

namespace A331750

/-- `A048675(∑{d}[n+1, #])` -/
def P13075063630477795963.Spec : Prop :=
  ∀ n, P13075063630477795963.a n = A331750 (n + 1)

end A331750

/-! ## A331750.P6028096200496793571

`A048675(A039653(n+1)+1)`
-/

namespace A331750.P6028096200496793571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A039653 (n + 1) + 1).toNat

end

end A331750.P6028096200496793571

namespace A331750

/-- `A048675(A039653(n+1)+1)` -/
def P6028096200496793571.Spec : Prop :=
  ∀ n, P6028096200496793571.a n = A331750 (n + 1)

end A331750

/-! ## A331750.P12756772447092187059

`A048675(A326065(2*(n+1)))`
-/

namespace A331750.P12756772447092187059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A326065 (2 * (n + 1))).toNat

end

end A331750.P12756772447092187059

namespace A331750

/-- `A048675(A326065(2*(n+1)))` -/
def P12756772447092187059.Spec : Prop :=
  ∀ n, P12756772447092187059.a n = A331750 (n + 1)

end A331750

/-! ## A331750.P9017089036650164270

`A048675(A001065(n+1)+1+n)`
-/

namespace A331750.P9017089036650164270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A331750.P9017089036650164270

namespace A331750

/-- `A048675(A001065(n+1)+1+n)` -/
def P9017089036650164270.Spec : Prop :=
  ∀ n, P9017089036650164270.a n = A331750 (n + 1)

theorem P9017089036650164270.correct : P9017089036650164270.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P9017089036650164270.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A297108, A297108.P15990807296291497671.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A049084, A049084.P10934933317972537770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P7746492095750311823

`A048675(A064987(n+1)/(n+1))`
-/

namespace A331750.P7746492095750311823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A331750.P7746492095750311823

namespace A331750

/-- `A048675(A064987(n+1)/(n+1))` -/
def P7746492095750311823.Spec : Prop :=
  ∀ n, P7746492095750311823.a n = A331750 (n + 1)

end A331750

/-! ## A331750.P6972756396569382774

`A048675(A318677(n+1)+A318676(n+1))`
-/

namespace A331750.P6972756396569382774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A318677 (n + 1) + A318676 (n + 1)).toNat

end

end A331750.P6972756396569382774

namespace A331750

/-- `A048675(A318677(n+1)+A318676(n+1))` -/
def P6972756396569382774.Spec : Prop :=
  ∀ n, P6972756396569382774.a n = A331750 (n + 1)

theorem P6972756396569382774.correct : P6972756396569382774.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P6972756396569382774.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A318676, A318676.P13641687183144923031.a, A318677, A318677.P9620612550096439051.a, A061020, A061020.P12638060660583157143.f1, A061020.P12638060660583157143.a, A297108, A297108.P15990807296291497671.a, A007913, A007913.P8131970495124731496.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A049084, A049084.P10934933317972537770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P2411808902617357157

`A048675(A326040(n+1)+A326039(n+1))`
-/

namespace A331750.P2411808902617357157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A326040 (n + 1) + A326039 (n + 1)).toNat

end

end A331750.P2411808902617357157

namespace A331750

/-- `A048675(A326040(n+1)+A326039(n+1))` -/
def P2411808902617357157.Spec : Prop :=
  ∀ n, P2411808902617357157.a n = A331750 (n + 1)

theorem P2411808902617357157.correct : P2411808902617357157.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P2411808902617357157.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A326039, A326039.P7430383325439106472.a, A326040, A326040.P7505067728848820017.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A297108, A297108.P15990807296291497671.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A049084, A049084.P10934933317972537770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P15041475994901829646

`A048675(A326066(n+1)+A326065(n+1))`
-/

namespace A331750.P15041475994901829646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A326066 (n + 1) + A326065 (n + 1)).toNat

end

end A331750.P15041475994901829646

namespace A331750

/-- `A048675(A326066(n+1)+A326065(n+1))` -/
def P15041475994901829646.Spec : Prop :=
  ∀ n, P15041475994901829646.a n = A331750 (n + 1)

end A331750

/-! ## A331750.P13113426494936010158

`A048675(A326136(n+1)+A326135(n+1))`
-/

namespace A331750.P13113426494936010158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A326136 (n + 1) + A326135 (n + 1)).toNat

end

end A331750.P13113426494936010158

namespace A331750

/-- `A048675(A326136(n+1)+A326135(n+1))` -/
def P13113426494936010158.Spec : Prop :=
  ∀ n, P13113426494936010158.a n = A331750 (n + 1)

theorem P13113426494936010158.correct : P13113426494936010158.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P13113426494936010158.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A326135, A326135.P4293370758287404225.f1, A326135.P4293370758287404225.a, A326136, A326136.P18410941739685931692.a, A006530, A006530.P13372528560459906635.a, A297108, A297108.P15990807296291497671.a, A070229, A070229.P5792893597916963980.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A028815, A028815.P810525423351225743.a, A049084, A049084.P10934933317972537770.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P14797817832880341943

`A048675(A327670(n+1)+A327669(n+1))`
-/

namespace A331750.P14797817832880341943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A327670 (n + 1) + A327669 (n + 1)).toNat

end

end A331750.P14797817832880341943

namespace A331750

/-- `A048675(A327670(n+1)+A327669(n+1))` -/
def P14797817832880341943.Spec : Prop :=
  ∀ n, P14797817832880341943.a n = A331750 (n + 1)

theorem P14797817832880341943.correct : P14797817832880341943.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P14797817832880341943.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A327669, A327669.P18256832601895895184.f1, A327669.P18256832601895895184.a, A327670, A327670.P15983329548232447165.a, A092248, A092248.P6012556233968533590.a, A297108, A297108.P15990807296291497671.a, A131577, A131577.P3998309598604981540.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A049084, A049084.P10934933317972537770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P6908605695624332633

`A048675(A082895(n+1)-A082901(n+1))`
-/

namespace A331750.P6908605695624332633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A082895 (n + 1) - A082901 (n + 1)).toNat

end

end A331750.P6908605695624332633

namespace A331750

/-- `A048675(A082895(n+1)-A082901(n+1))` -/
def P6908605695624332633.Spec : Prop :=
  ∀ n, P6908605695624332633.a n = A331750 (n + 1)

theorem P6908605695624332633.correct : P6908605695624332633.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P6908605695624332633.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A082895, A082895.P17846742454117809356.a, A082901, A082901.P13729791713076633821.a, A297108, A297108.P15990807296291497671.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A049084, A049084.P10934933317972537770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P4648008758795868204

`A048675(A005187(n+1)-A294898(n+1))`
-/

namespace A331750.P4648008758795868204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A005187 (n + 1) - A294898 (n + 1)).toNat

end

end A331750.P4648008758795868204

namespace A331750

/-- `A048675(A005187(n+1)-A294898(n+1))` -/
def P4648008758795868204.Spec : Prop :=
  ∀ n, P4648008758795868204.a n = A331750 (n + 1)

theorem P4648008758795868204.correct : P4648008758795868204.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P4648008758795868204.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A294898, A294898.P11311681912968614755.a, A297108, A297108.P15990807296291497671.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A049084, A049084.P10934933317972537770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P4931884338863551421

`A156552(A000203(n+1))-A347876(n+1)`
-/

namespace A331750.P4931884338863551421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A000203 (n + 1)).toNat - A347876 (n + 1)

end

end A331750.P4931884338863551421

namespace A331750

/-- `A156552(A000203(n+1))-A347876(n+1)` -/
def P4931884338863551421.Spec : Prop :=
  ∀ n, P4931884338863551421.a n = A331750 (n + 1)

theorem P4931884338863551421.correct : P4931884338863551421.Spec := by
  intro n
  simp only [A331750, Nat.add_sub_cancel, A331750.P4931884338863551421.a, A331750.P157088168861994408.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A156552, A156552.P4268073137713085227.a, A347876, A347876.P12593403235840957228.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A297108, A297108.P15990807296291497671.a, A323905, A323905.P339970777162455812.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A364557, A364557.P16113127302810243144.a, A049084, A049084.P10934933317972537770.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331750

/-! ## A331750.P6831630517880777828

`A048675(A323243(A005940(n+2)))`
-/

namespace A331750.P6831630517880777828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A323243 (A005940 (n + 2)).toNat).toNat

end

end A331750.P6831630517880777828

namespace A331750

/-- `A048675(A323243(A005940(n+2)))` -/
def P6831630517880777828.Spec : Prop :=
  ∀ n, P6831630517880777828.a n = A331750 (n + 1)

end A331750

/-!
# A331751: Numbers k such that A048675(sigma(k)) is equal to A048675(2*k).

The programs for A331751, there is no canonical definition to state claims against.
-/

/-! ## A331751.P8624137740470361255

`A156549(A156560(n+1)+A000404(3*n+2))`
-/

namespace A331751.P8624137740470361255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156549 (A156560 (n + 1) + A000404 (3 * n + 2)).toNat

end

end A331751.P8624137740470361255

/-!
# A331754: A290131/2.

The programs for A331754, there is no canonical definition to state claims against.
-/

/-! ## A331754.P5966053248862761595

`A290131(1+n)/2`
-/

namespace A331754.P5966053248862761595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290131 (1 + n) : ℚ) / 2

end

end A331754.P5966053248862761595

/-! ## A331754.P2713854513371822401

`A306302(n)/2-n`
-/

namespace A331754.P2713854513371822401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306302 n : ℚ) / 2 - (n : ℚ)

end

end A331754.P2713854513371822401

/-! ## A331754.P11515697582148658277

`A332612(n+1)+n²`
-/

namespace A331754.P11515697582148658277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332612 (n + 1) + (n ^ 2 : ℤ)

end

end A331754.P11515697582148658277

/-! ## A331754.P6256659077956608417

`(A115005(n+1)-n)/2`
-/

namespace A331754.P6256659077956608417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115005 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A331754.P6256659077956608417

/-! ## A331754.P2351027870373539812

`A001489(n)+A306302(n)/2`
-/

namespace A331754.P2351027870373539812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 n : ℚ) + (A306302 n : ℚ) / 2

end

end A331754.P2351027870373539812

/-! ## A331754.P8181793249192088154

`A332612(n+1)+A002378(n)-n`
-/

namespace A331754.P8181793249192088154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332612 (n + 1) + A002378 n - (n : ℤ)

end

end A331754.P8181793249192088154

/-! ## A331754.P2088400312013069096

`A331756(n)-n`
-/

namespace A331754.P2088400312013069096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331756 n - (n : ℤ)

end

end A331754.P2088400312013069096

/-! ## A331754.P15394092621259630454

`A355902(n)-2*n`
-/

namespace A331754.P15394092621259630454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355902 n - (2 * n : ℤ)

end

end A331754.P15394092621259630454

/-! ## A331754.P14369179878996015787

`A306302(n)-A355902(n)`
-/

namespace A331754.P14369179878996015787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 n - A355902 n

end

end A331754.P14369179878996015787

/-! ## A331754.P6839052864426094585

`A141255(n+1)-(A355902(n)+A290131(n+1))`
-/

namespace A331754.P6839052864426094585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 1) - (A355902 n + A290131 (n + 1))

end

end A331754.P6839052864426094585

/-!
# A331755: Number of vertices in a regular drawing of the complete bipartite graph K_{n,n}.

The programs for A331755, there is no canonical definition to state claims against.
-/

/-! ## A331755.P2604917027028156708

`A159065(n+1)+2*(n+1)`
-/

namespace A331755.P2604917027028156708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (n + 1) + (2 * (n + 1) : ℤ)

end

end A331755.P2604917027028156708

/-! ## A331755.P14393187711092523016

`A290132(n+1)-A290131(n+1)+1`
-/

namespace A331755.P14393187711092523016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (n + 1) - A290131 (n + 1) + 1

end

end A331755.P14393187711092523016

/-! ## A331755.P1201123924797524143

`A317108(n+1)+A159065(n+1)`
-/

namespace A331755.P1201123924797524143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317108 (n + 1) + A159065 (n + 1)

end

end A331755.P1201123924797524143

/-! ## A331755.P10357427157796591486

`A317440(n+1)+A159065(n+1)`
-/

namespace A331755.P10357427157796591486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + A159065 (n + 1)

end

end A331755.P10357427157796591486

/-! ## A331755.P7460350615290457360

`A144396(n+1)+A159065(n+1)-1`
-/

namespace A331755.P7460350615290457360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + (A159065 (n + 1) - 1)

end

end A331755.P7460350615290457360

/-! ## A331755.P16132520261757700349

`A020725(n+1)+A159065(n+1)+n`
-/

namespace A331755.P16132520261757700349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) + (A159065 (n + 1) + (n : ℤ))

end

end A331755.P16132520261757700349

/-! ## A331755.P12161549396461078279

`n+1+A264974(A264974(n+1))+A159065(n+1)`
-/

namespace A331755.P12161549396461078279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A264974 (A264974 (n + 1)).toNat + A159065 (n + 1))

end

end A331755.P12161549396461078279

/-! ## A331755.P17731935021882906065

`A233583(n+2)+A018808(n+1)/2`
-/

namespace A331755.P17731935021882906065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 2) : ℚ) + (A018808 (n + 1) : ℚ) / 2

end

end A331755.P17731935021882906065

/-!
# A331756: a(n) = A306302(n)/2.

The programs for A331756, there is no canonical definition to state claims against.
-/

/-! ## A331756.P16251982654856880413

`A306302(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331756.P16251982654856880413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306302 n : ℚ) / 2

end

end A331756.P16251982654856880413

/-! ## A331756.P1043783588404884796

`A331754(n+1)+n`
-/

namespace A331756.P1043783588404884796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331754 (n + 1) + (n : ℤ)

end

end A331756.P1043783588404884796

/-! ## A331756.P14614409358326268028

`∑[n]+A344993(n)/4`
-/

namespace A331756.P14614409358326268028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A344993 n : ℚ) / 4

end

end A331756.P14614409358326268028

/-! ## A331756.P14143675717279120389

`(A115005(n+1)+n)/2`
-/

namespace A331756.P14143675717279120389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115005 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A331756.P14143675717279120389

/-! ## A331756.P748430585544348132

`A290131(n+1)/2+n`
-/

namespace A331756.P748430585544348132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290131 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A331756.P748430585544348132

/-! ## A331756.P1279820816811162396

`A332612(n+1)+n²+n`
-/

namespace A331756.P1279820816811162396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332612 (n + 1) + (n ^ 2 + n : ℤ)

end

end A331756.P1279820816811162396

/-! ## A331756.P17690300903558128891

`A344993(n)/2-A332612(n+1)`
-/

namespace A331756.P17690300903558128891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344993 n : ℚ) / 2 - (A332612 (n + 1) : ℚ)

end

end A331756.P17690300903558128891

/-! ## A331756.P3005285701837220343

`A355902(n)-n`
-/

namespace A331756.P3005285701837220343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355902 n - (n : ℤ)

end

end A331756.P3005285701837220343

/-!
# A331757: Number of edges in a figure made up of a row of n adjacent congruent rectangles upon drawing diagonals of all possible rectangles.

The programs for A331757, there is no canonical definition to state claims against.
-/

/-! ## A331757.P14029165986250632297

`(2*(n+1)+2+3*A324042(n+1)+4*A324043(n+1))/2`
-/

namespace A331757.P14029165986250632297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) + 2 : ℤ) + 3 * A324042 (n + 1) + 4 * A324043 (n + 1) : ℚ) / 2

end

end A331757.P14029165986250632297

/-! ## A331757.P11805684124655899281

`A290132(n+2)+2*(n+1)`
-/

namespace A331757.P11805684124655899281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (n + 2) + (2 * (n + 1) : ℤ)

end

end A331757.P11805684124655899281

/-! ## A331757.P2764755642136048244

`∑[Δ[A290132(1+n)]+2]+1`
-/

namespace A331757.P2764755642136048244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A331757.P2764755642136048244

/-! ## A331757.P7114993017802520315

`A317440(n+1)+A290132(n+2)`
-/

namespace A331757.P7114993017802520315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + A290132 (n + 2)

end

end A331757.P7114993017802520315

/-! ## A331757.P5112238778071727435

`A005408(n+1)+A290132(n+2)-1`
-/

namespace A331757.P5112238778071727435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) + (A290132 (n + 2) - 1)

end

end A331757.P5112238778071727435

/-! ## A331757.P8978734781717113836

`A000027(n+2)+A290132(n+2)+n`
-/

namespace A331757.P8978734781717113836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 2) + (A290132 (n + 2) + (n : ℤ))

end

end A331757.P8978734781717113836

/-! ## A331757.P8927245390991143681

`A331755(n+1)+A290132(n+2)-A159065(n+1)`
-/

namespace A331757.P8927245390991143681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331755 (n + 1) + (A290132 (n + 2) - A159065 (n + 1))

end

end A331757.P8927245390991143681

/-! ## A331757.P9678976578149430678

`A306302(n+1)+A331755(n+2)-1`
-/

namespace A331757.P9678976578149430678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 (n + 1) + (A331755 (n + 2) - 1)

end

end A331757.P9678976578149430678

/-! ## A331757.P8700461586047472016

`A115005(n+2)+A331755(n+2)+n`
-/

namespace A331757.P8700461586047472016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (n + 2) + (A331755 (n + 2) + (n : ℤ))

end

end A331757.P8700461586047472016

/-! ## A331757.P15273850804080167272

`A333276(n+1)/2+n+2`
-/

namespace A331757.P15273850804080167272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333276 (n + 1) : ℚ) / 2 + (n + 2 : ℚ)

end

end A331757.P15273850804080167272

/-!
# A331758: A331757(n)/2.

The programs for A331758, there is no canonical definition to state claims against.
-/

/-! ## A331758.P7006308677128996191

`A331757(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331758.P7006308677128996191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331757 (n + 1) : ℚ) / 2

end

end A331758.P7006308677128996191

/-! ## A331758.P1072226015068005304

`A332360(n+2)/2-1`
-/

namespace A331758.P1072226015068005304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332360 (n + 2) : ℚ) / 2 - 1

end

end A331758.P1072226015068005304

/-! ## A331758.P7177362968385838353

`A290132(n+2)/2+1+n`
-/

namespace A331758.P7177362968385838353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290132 (n + 2) : ℚ) / 2 + 1 + (n : ℚ)

end

end A331758.P7177362968385838353

/-! ## A331758.P12570272802166853062

`(A333276(n+1)/2+n+2)/2`
-/

namespace A331758.P12570272802166853062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A333276 (n + 1) : ℚ) / 2 + (n + 2 : ℚ)) / 2

end

end A331758.P12570272802166853062

/-! ## A331758.P14280114154957087570

`record[A331757(A331742(n))/2]`
-/

namespace A331758.P14280114154957087570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331757 (A331742 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331758.P14280114154957087570

/-!
# A331759: a(n) = A115004(2n+1).

The programs for A331759, there is no canonical definition to state claims against.
-/

/-! ## A331759.P15072601019719939891

`A115004(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331759.P15072601019719939891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115004 (2 * n + 1)

end

end A331759.P15072601019719939891

/-! ## A331759.P7197809041541949991

`A290131(2*(n+1))-(2*n+1)²`
-/

namespace A331759.P7197809041541949991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (2 * (n + 1)) - ((2 * n + 1) ^ 2 : ℤ)

end

end A331759.P7197809041541949991

/-! ## A331759.P2459301820274793417

`(2*n+1)²+2*A332612(2*(n+1))`
-/

namespace A331759.P2459301820274793417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + 2 * A332612 (2 * (n + 1))

end

end A331759.P2459301820274793417

/-! ## A331759.P2123957969654150833

`A088658(2*(n+1))/4`
-/

namespace A331759.P2123957969654150833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088658 (2 * (n + 1)) : ℚ) / 4

end

end A331759.P2123957969654150833

/-! ## A331759.P8881720778520382440

`A332612(2*(n+1))+A331754(2*(n+1))`
-/

namespace A331759.P8881720778520382440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332612 (2 * (n + 1)) + A331754 (2 * (n + 1))

end

end A331759.P8881720778520382440

/-! ## A331759.P15106101637182191121

`A115004(record[xor(1, n)])`
-/

namespace A331759.P15106101637182191121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115004 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A331759.P15106101637182191121

/-! ## A331759.P11983975360203152381

`record[gcd(A115004(n+1), n%2)]`
-/

namespace A331759.P11983975360203152381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115004 (n + 1)) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331759.P11983975360203152381

/-! ## A331759.P2043711200526404590

`record[A115004(A000265(n+1))]`
-/

namespace A331759.P2043711200526404590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115004 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331759.P2043711200526404590

/-! ## A331759.P3410937148268139254

`record[A115004(A006369(n+1))]`
-/

namespace A331759.P3410937148268139254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115004 (A006369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331759.P3410937148268139254

/-! ## A331759.P3663848779970990242

`record[lcm(A115004(n+1), A166698(n+1))]`
-/

namespace A331759.P3663848779970990242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115004 (n + 1)) (A166698 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331759.P3663848779970990242

/-! ## A331759.P8139310264611395048

`A159065(2*(n+1))+A088658(n+1)`
-/

namespace A331759.P8139310264611395048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (2 * (n + 1)) + A088658 (n + 1)

end

end A331759.P8139310264611395048

/-! ## A331759.P6558991468282547371

`A331761(2*n+1)+A159065(2*(n+1))`
-/

namespace A331759.P6558991468282547371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331761 (2 * n + 1) + A159065 (2 * (n + 1))

end

end A331759.P6558991468282547371

/-!
# A331760: a(n) = A115004(2n)/4.

The programs for A331760, there is no canonical definition to state claims against.
-/

/-! ## A331760.P16972615050827154555

`A115004(2*(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331760.P16972615050827154555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115004 (2 * (n + 1)) : ℚ) / 4

end

end A331760.P16972615050827154555

/-! ## A331760.P11211724675074800719

`A331761(A004766(n+1))/16`
-/

namespace A331760.P11211724675074800719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331761 (A004766 (n + 1)).toNat : ℚ) / 16

end

end A331760.P11211724675074800719

/-! ## A331760.P4044725978160906303

`A331761(A016813(n+1))/16`
-/

namespace A331760.P4044725978160906303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331761 (A016813 (n + 1)).toNat : ℚ) / 16

end

end A331760.P4044725978160906303

/-! ## A331760.P15647808880396871580

`floor(A331761(A004766(ϕ²-(ϕ-n)))/16)`
-/

namespace A331760.P15647808880396871580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331761 (A004766 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat : ℚ) / 16⌋

end

end A331760.P15647808880396871580

/-! ## A331760.P8831098099171435188

`A088658(2*n+3)/16`
-/

namespace A331760.P8831098099171435188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088658 (2 * n + 3) : ℚ) / 16

end

end A331760.P8831098099171435188

/-! ## A331760.P10488151885993214237

`A320541(A253145(2*n+1))/4`
-/

namespace A331760.P10488151885993214237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320541 (A253145 (2 * n + 1)).toNat : ℚ) / 4

end

end A331760.P10488151885993214237

/-!
# A331761: a(n) = Sum_{i=1..n, j=1..n, gcd(i,j)=2} (n+1-i)*(n+1-j).

The programs for A331761, there is no canonical definition to state claims against.
-/

/-! ## A331761.P4048481126392410343

`A324042(n+1)/2-∑[2*(n+1)]`
-/

namespace A331761.P4048481126392410343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324042 (n + 1) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A331761.P4048481126392410343

/-! ## A331761.P9032205831610887650

`A177719(n+2)/2-n*(n+2)`
-/

namespace A331761.P9032205831610887650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177719 (n + 2) : ℚ) / 2 - (n * (n + 2) : ℚ)

end

end A331761.P9032205831610887650

/-! ## A331761.P3763740037300289846

`floor(A177719(n+2)/2-A005563(n))`
-/

namespace A331761.P3763740037300289846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177719 (n + 2) : ℚ) / 2 - (A005563 n : ℚ)⌋

end

end A331761.P3763740037300289846

/-! ## A331761.P1240933314264251326

`A177719(n+2)/2-n²-A005843(n)`
-/

namespace A331761.P1240933314264251326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177719 (n + 2) : ℚ) / 2 - (n ^ 2 : ℚ) - (A005843 n : ℚ)

end

end A331761.P1240933314264251326

/-! ## A331761.P12165177676367928375

`A115004(n+1)-A159065(n+2)`
-/

namespace A331761.P12165177676367928375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115004 (n + 1) - A159065 (n + 2)

end

end A331761.P12165177676367928375

/-! ## A331761.P15925733083285989043

`A115004(n+1)%A159065(A020725(n+1))`
-/

namespace A331761.P15925733083285989043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115004 (n + 1)) (A159065 (A020725 (n + 1)).toNat)

end

end A331761.P15925733083285989043

/-! ## A331761.P15264178665682483263

`A331754(n+2)+A332612(n+2)-A159065(n+2)`
-/

namespace A331761.P15264178665682483263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331754 (n + 2) + (A332612 (n + 2) - A159065 (n + 2))

end

end A331761.P15264178665682483263

/-!
# A331762: Triangle read by rows: T(n,k) (1 <= k <= n) = Sum_{i=1..n, j=1..k, gcd(i,j)=2} (n+1-i)*(k+1-j).

The programs for A331762, there is no canonical definition to state claims against.
-/

/-! ## A331762.P6624815342681079537

`A335683(A245300(n)+1)`
-/

namespace A331762.P6624815342681079537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335683 (A245300 n + 1).toNat

end

end A331762.P6624815342681079537

/-!
# A331763: Number of vertices formed by drawing the lines connecting any two of the 2*(n+2) perimeter points of a 3 X (n+1) rectangular grid of points (or equally, a 2 X n grid of squares).

The programs for A331763, there is no canonical definition to state claims against.
-/

/-! ## A331763.P17116934571615618014

`A331767(n+1)+2*(n+3)`
-/

namespace A331763.P17116934571615618014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331767 (n + 1) + (2 * (n + 3) : ℤ)

end

end A331763.P17116934571615618014

/-! ## A331763.P3058843609875979904

`A005408(n+2)+A331767(n+1)+1`
-/

namespace A331763.P3058843609875979904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 2) + (A331767 (n + 1) + 1)

end

end A331763.P3058843609875979904

/-! ## A331763.P10548990014762534872

`A331765(n+1)+1-A331766(n+1)`
-/

namespace A331763.P10548990014762534872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331765 (n + 1) + (1 - A331766 (n + 1))

end

end A331763.P10548990014762534872

/-! ## A331763.P15320573340040973811

`A144396(n+1)+A331767(n+1)+3`
-/

namespace A331763.P15320573340040973811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + (A331767 (n + 1) + 3)

end

end A331763.P15320573340040973811

/-! ## A331763.P6781635240434577757

`A317108(n+1)+A331767(n+1)+4`
-/

namespace A331763.P6781635240434577757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317108 (n + 1) + (A331767 (n + 1) + 4)

end

end A331763.P6781635240434577757

/-! ## A331763.P344773735046106556

`A317440(n+1)+A331767(n+1)+4`
-/

namespace A331763.P344773735046106556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + (A331767 (n + 1) + 4)

end

end A331763.P344773735046106556

/-! ## A331763.P14647246494451496636

`A331755(n+2)+2*A335687(n+1)`
-/

namespace A331763.P14647246494451496636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331755 (n + 2) + 2 * A335687 (n + 1)

end

end A331763.P14647246494451496636

/-! ## A331763.P14425877133660808692

`n+1+A331767(n+1)+A020710(n)`
-/

namespace A331763.P14425877133660808692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A331767 (n + 1) + A020710 n)

end

end A331763.P14425877133660808692

/-!
# A331764: a(n) = ((p-1)^3 - (p-1)^2)/4 where p is the n-th prime.

The programs for A331764, the canonical program `A331764.P18266675436946841029` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331764 has offset 1).

The definition of A331764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331764.P18266675436946841029

`(A000040(n+1)-2)*(A000040(n+1)-1)²/4`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331764

/-- `(A000040(n+1)-2)*(A000040(n+1)-1)²/4` -/
def P18266675436946841029.Spec : Prop :=
  ∀ n, P18266675436946841029.a n = (A331764 (n + 1) : ℚ)

end A331764

/-! ## A331764.P14210564113298360622

`A102781(n+1)²*A040976(n+1)`
-/

namespace A331764.P14210564113298360622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) ^ 2 * A040976 (n + 1)

end

end A331764.P14210564113298360622

namespace A331764

/-- `A102781(n+1)²*A040976(n+1)` -/
def P14210564113298360622.Spec : Prop :=
  ∀ n, P14210564113298360622.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P13451678963047828369

`A130290(n+1)²*A040976(n+1)`
-/

namespace A331764.P13451678963047828369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) ^ 2 * A040976 (n + 1)

end

end A331764.P13451678963047828369

namespace A331764

/-- `A130290(n+1)²*A040976(n+1)` -/
def P13451678963047828369.Spec : Prop :=
  ∀ n, P13451678963047828369.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P18101575962656000144

`(A006093(n+1)-1)*A102781(n+1)²`
-/

namespace A331764.P18101575962656000144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) - 1) * A102781 (n + 1) ^ 2

end

end A331764.P18101575962656000144

namespace A331764

/-- `(A006093(n+1)-1)*A102781(n+1)²` -/
def P18101575962656000144.Spec : Prop :=
  ∀ n, P18101575962656000144.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P12813096765081810102

`(A006093(n+1)-1)*A130290(n+1)²`
-/

namespace A331764.P12813096765081810102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) - 1) * A130290 (n + 1) ^ 2

end

end A331764.P12813096765081810102

namespace A331764

/-- `(A006093(n+1)-1)*A130290(n+1)²` -/
def P12813096765081810102.Spec : Prop :=
  ∀ n, P12813096765081810102.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P12929474462527831262

`(1-A111333(n+1))²*A040976(n+1)`
-/

namespace A331764.P12929474462527831262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A111333 (n + 1)) ^ 2 * A040976 (n + 1)

end

end A331764.P12929474462527831262

namespace A331764

/-- `(1-A111333(n+1))²*A040976(n+1)` -/
def P12929474462527831262.Spec : Prop :=
  ∀ n, P12929474462527831262.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P3846353285950405157

`(A000040(n+1)-2)*A102781(n+1)²`
-/

namespace A331764.P3846353285950405157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 2) * A102781 (n + 1) ^ 2

end

end A331764.P3846353285950405157

namespace A331764

/-- `(A000040(n+1)-2)*A102781(n+1)²` -/
def P3846353285950405157.Spec : Prop :=
  ∀ n, P3846353285950405157.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P5049434838561092989

`(A006005(n+1)-2)*A102781(n+1)²`
-/

namespace A331764.P5049434838561092989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) - 2) * A102781 (n + 1) ^ 2

end

end A331764.P5049434838561092989

namespace A331764

/-- `(A006005(n+1)-2)*A102781(n+1)²` -/
def P5049434838561092989.Spec : Prop :=
  ∀ n, P5049434838561092989.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P12481537583614742069

`(A000040(n+1)-2)*A130290(n+1)²`
-/

namespace A331764.P12481537583614742069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 2) * A130290 (n + 1) ^ 2

end

end A331764.P12481537583614742069

namespace A331764

/-- `(A000040(n+1)-2)*A130290(n+1)²` -/
def P12481537583614742069.Spec : Prop :=
  ∀ n, P12481537583614742069.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P5628010023062459268

`(A006093(n+1)/2)²*A040976(n+1)`
-/

namespace A331764.P5628010023062459268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006093 (n + 1) : ℚ) / 2) ^ 2 * (A040976 (n + 1) : ℚ)

end

end A331764.P5628010023062459268

namespace A331764

/-- `(A006093(n+1)/2)²*A040976(n+1)` -/
def P5628010023062459268.Spec : Prop :=
  ∀ n, P5628010023062459268.a n = (A331764 (n + 1) : ℚ)

end A331764

/-! ## A331764.P1501263854684525595

`record[(A006530(2*n+1)-2)*n²]`
-/

namespace A331764.P1501263854684525595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006530 (2 * n + 1) - 2) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331764.P1501263854684525595

namespace A331764

/-- `record[(A006530(2*n+1)-2)*n²]` -/
def P1501263854684525595.Spec : Prop :=
  ∀ n, P1501263854684525595.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P15823640620484347890

`record[(A020639(2*n+1)-2)*n²]`
-/

namespace A331764.P15823640620484347890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * n + 1) - 2) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331764.P15823640620484347890

namespace A331764

/-- `record[(A020639(2*n+1)-2)*n²]` -/
def P15823640620484347890.Spec : Prop :=
  ∀ n, P15823640620484347890.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P7714206624710812441

`record[A000010(n+1)²]/4*A040976(n+1)`
-/

namespace A331764.P7714206624710812441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4 * (A040976 (n + 1) : ℚ)

end

end A331764.P7714206624710812441

namespace A331764

/-- `record[A000010(n+1)²]/4*A040976(n+1)` -/
def P7714206624710812441.Spec : Prop :=
  ∀ n, P7714206624710812441.a n = (A331764 (n + 1) : ℚ)

end A331764

/-! ## A331764.P16900355847781087473

`record[abs(n²*A054586(n))]`
-/

namespace A331764.P16900355847781087473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A054586 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331764.P16900355847781087473

namespace A331764

/-- `record[abs(n²*A054586(n))]` -/
def P16900355847781087473.Spec : Prop :=
  ∀ n, P16900355847781087473.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P14260736411718952620

`record[n*A349448(n+2)²]`
-/

namespace A331764.P14260736411718952620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A349448 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331764.P14260736411718952620

namespace A331764

/-- `record[n*A349448(n+2)²]` -/
def P14260736411718952620.Spec : Prop :=
  ∀ n, P14260736411718952620.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P5450066186575853640

`record[n*C(A057063(n+1), 2)]`
-/

namespace A331764.P5450066186575853640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (A057063 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331764.P5450066186575853640

namespace A331764

/-- `record[n*C(A057063(n+1), 2)]` -/
def P5450066186575853640.Spec : Prop :=
  ∀ n, (P5450066186575853640.a n : ℤ) = A331764 (n + 1)

end A331764

/-! ## A331764.P8132014434809397304

`record[n²*A348259(2*n+1)]`
-/

namespace A331764.P8132014434809397304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A348259 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331764.P8132014434809397304

namespace A331764

/-- `record[n²*A348259(2*n+1)]` -/
def P8132014434809397304.Spec : Prop :=
  ∀ n, P8132014434809397304.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P502012435701917169

`A015237(A102781(n+1))`
-/

namespace A331764.P502012435701917169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 (A102781 (n + 1)).toNat

end

end A331764.P502012435701917169

namespace A331764

/-- `A015237(A102781(n+1))` -/
def P502012435701917169.Spec : Prop :=
  ∀ n, P502012435701917169.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P15844110928789499731

`record[n*A104512(n+2)²]`
-/

namespace A331764.P15844110928789499731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104512 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331764.P15844110928789499731

namespace A331764

/-- `record[n*A104512(n+2)²]` -/
def P15844110928789499731.Spec : Prop :=
  ∀ n, P15844110928789499731.a n = A331764 (n + 1)

end A331764

/-! ## A331764.P15345717209009357539

`record[n²*A003966(2*n+1)]`
-/

namespace A331764.P15345717209009357539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A003966 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331764.P15345717209009357539

namespace A331764

/-- `record[n²*A003966(2*n+1)]` -/
def P15345717209009357539.Spec : Prop :=
  ∀ n, P15345717209009357539.a n = A331764 (n + 1)

end A331764

/-!
# A331765: Number of edges formed by drawing the lines connecting any two of the 2*(n+2) perimeter points of a 3 X (n+1) rectangular grid of points (or equally, a 2 X n grid of squares).

The programs for A331765, there is no canonical definition to state claims against.
-/

/-! ## A331765.P6550851748984767967

`A331763(n+1)+A331766(n+1)-1`
-/

namespace A331765.P6550851748984767967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331763 (n + 1) + (A331766 (n + 1) - 1)

end

end A331765.P6550851748984767967

/-! ## A331765.P13998884625815022136

`A331454(∑[n]+2)`
-/

namespace A331765.P13998884625815022136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331454 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A331765.P13998884625815022136

/-! ## A331765.P80138359298873917

`record[A331454(A024000(n)+A008805(n))]`
-/

namespace A331765.P80138359298873917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331454 (A024000 n + A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331765.P80138359298873917

/-! ## A331765.P5952257704004756257

`record[A331454(A008805(n)-A023443(n))]`
-/

namespace A331765.P5952257704004756257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331454 (A008805 n - A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331765.P5952257704004756257

/-! ## A331765.P5434999998145394573

`A331763(n+1)+record[A331452(n+2)/A013609(n)]-1`
-/

namespace A331765.P5434999998145394573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331452 (n + 2) : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331763 (n + 1) : ℚ) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)

end

end A331765.P5434999998145394573

/-!
# A331766: Number of regions formed by drawing the lines connecting any two of the 2*(n+2) perimeter points of a 3 X (n+1) rectangular grid of points (or equally, a 2 X n grid of squares).

The programs for A331766, there is no canonical definition to state claims against.
-/

/-! ## A331766.P11001342935617952603

`A331765(n+1)+1-A331763(n+1)`
-/

namespace A331766.P11001342935617952603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331765 (n + 1) + (1 - A331763 (n + 1))

end

end A331766.P11001342935617952603

/-! ## A331766.P14066527130428651989

`A331765(n+1)+1-(A331767(n+1)+2*(n+3))`
-/

namespace A331766.P14066527130428651989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331765 (n + 1) + 1 - (A331767 (n + 1) + (2 * (n + 3) : ℤ))

end

end A331766.P14066527130428651989

/-! ## A331766.P663482800564547992

`A331765(n+1)+1-(A331755(n+2)+2*A335687(n+1))`
-/

namespace A331766.P663482800564547992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331765 (n + 1) + 1 - (A331755 (n + 2) + 2 * A335687 (n + 1))

end

end A331766.P663482800564547992

/-! ## A331766.P16679854332884763118

`A331452(∑[n]+2)`
-/

namespace A331766.P16679854332884763118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331452 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A331766.P16679854332884763118

/-! ## A331766.P16295171073177562622

`record[A010054(n)*A331452(n+2)]`
-/

namespace A331766.P16295171073177562622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A331452 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331766.P16295171073177562622

/-!
# A331767: Number of interior vertices formed by drawing the lines connecting any two of the 2*(n+2) perimeter points of a 3 X (n+1) square grid.

The programs for A331767, there is no canonical definition to state claims against.
-/

/-! ## A331767.P13514725832690796676

`A331763(n+1)-2*(n+3)`
-/

namespace A331767.P13514725832690796676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331763 (n + 1) - (2 * (n + 3) : ℤ)

end

end A331767.P13514725832690796676

/-! ## A331767.P1226409593491797196

`A331763(Δ[n²]-n)-6-n-n`
-/

namespace A331767.P1226409593491797196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331763 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 6 - (n : ℤ) - (n : ℤ)

end

end A331767.P1226409593491797196

/-! ## A331767.P10102729128704155979

`A331763(n+1)+1-A020742(n)`
-/

namespace A331767.P10102729128704155979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331763 (n + 1) + 1 - A020742 n

end

end A331767.P10102729128704155979

/-! ## A331767.P14047372003587304402

`A331763(n+1)-6-A005843(n)`
-/

namespace A331767.P14047372003587304402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331763 (n + 1) - 6 - A005843 n

end

end A331767.P14047372003587304402

/-! ## A331767.P12183950014136497042

`abs(A331763(n+1)-A317108(n+3))`
-/

namespace A331767.P12183950014136497042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331763 (n + 1) - A317108 (n + 3)|

end

end A331767.P12183950014136497042

/-! ## A331767.P4561979578253754717

`A331763(n+1)-3-A144396(n+1)`
-/

namespace A331767.P4561979578253754717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331763 (n + 1) - 3 - A144396 (n + 1)

end

end A331767.P4561979578253754717

/-! ## A331767.P6447439809300234917

`A331763(n+1)+2-A317440(n+4)`
-/

namespace A331767.P6447439809300234917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331763 (n + 1) + 2 - A317440 (n + 4)

end

end A331767.P6447439809300234917

/-!
# A331768: El Gradechi's hybrid coefficients alpha^{4,4}_{2n}.

The programs for A331768, the canonical program `A331768.P238044851699842190` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331768 has offset 0).

The definition of A331768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331768.P12416513064592751767

`480*C(3+2*n, 3)`
-/

namespace A331768.P12416513064592751767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  480 * Nat.choose (3 + 2 * n) 3

end

end A331768.P12416513064592751767

namespace A331768

/-- `480*C(3+2*n, 3)` -/
def P12416513064592751767.Spec : Prop :=
  ∀ n, (P12416513064592751767.a n : ℤ) = A331768 n

end A331768

/-! ## A331768.P238044851699842190

`480*A000447(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331768

/-- `480*A000447(n+1)` -/
def P238044851699842190.Spec : Prop :=
  ∀ n, P238044851699842190.a n = A331768 n

theorem P238044851699842190.correct : P238044851699842190.Spec := by
  intro n
  simp only [A331768]

end A331768

/-! ## A331768.P9120458013076694058

`∑[30*A017114(n)]`
-/

namespace A331768.P9120458013076694058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A017114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331768.P9120458013076694058

namespace A331768

/-- `∑[30*A017114(n)]` -/
def P9120458013076694058.Spec : Prop :=
  ∀ n, P9120458013076694058.a n = A331768 n

end A331768

/-! ## A331768.P8534814123160401449

`∑[24*A195322(2*n+1)]`
-/

namespace A331768.P8534814123160401449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A195322 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331768.P8534814123160401449

namespace A331768

/-- `∑[24*A195322(2*n+1)]` -/
def P8534814123160401449.Spec : Prop :=
  ∀ n, P8534814123160401449.a n = A331768 n

end A331768

/-! ## A331768.P17943612875980162376

`6*10*A130809(2*n+3)`
-/

namespace A331768.P17943612875980162376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (10 * A130809 (2 * n + 3))

end

end A331768.P17943612875980162376

namespace A331768

/-- `6*10*A130809(2*n+3)` -/
def P17943612875980162376.Spec : Prop :=
  ∀ n, P17943612875980162376.a n = A331768 n

end A331768

/-! ## A331768.P14921524955977981768

`A069072(n)*A306414(A126241(2*(n+2)))`
-/

namespace A331768.P14921524955977981768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069072 n * A306414 (A126241 (2 * (n + 2))).toNat

end

end A331768.P14921524955977981768

namespace A331768

/-- `A069072(n)*A306414(A126241(2*(n+2)))` -/
def P14921524955977981768.Spec : Prop :=
  ∀ n, P14921524955977981768.a n = A331768 n

end A331768

/-! ## A331768.P16130508774092008516

`Δ[Δ[A121672(2*n)]]`
-/

namespace A331768.P16130508774092008516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121672 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331768.P16130508774092008516

namespace A331768

/-- `Δ[Δ[A121672(2*n)]]` -/
def P16130508774092008516.Spec : Prop :=
  ∀ n, P16130508774092008516.a n = A331768 n

end A331768

/-! ## A331768.P7074174094131484603

`∑[A244636(A008586(2*n+1))]`
-/

namespace A331768.P7074174094131484603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244636 (A008586 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331768.P7074174094131484603

namespace A331768

/-- `∑[A244636(A008586(2*n+1))]` -/
def P7074174094131484603.Spec : Prop :=
  ∀ n, P7074174094131484603.a n = A331768 n

end A331768

/-!
# A331769: El Gradechi's hybrid coefficients alpha^{4,6}_n.

The programs for A331769, the canonical program `A331769.P6080783052469252440` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331769 has offset 0).

The definition of A331769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331769.P6080783052469252440

`(-1)^n*240*C(n+5, 5)-504*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331769

/-- `(-1)^n*240*C(n+5, 5)-504*C(n+3, 3)` -/
def P6080783052469252440.Spec : Prop :=
  ∀ n, P6080783052469252440.a n = A331769 n

theorem P6080783052469252440.correct : P6080783052469252440.Spec := by
  intro n
  simp only [A331769]

end A331769

/-!
# A331771: a(n) = Sum_{-n<i<n, -n<j<n, gcd{i,j}=1} (n-|i|)*(n-|j|).

The programs for A331771, there is no canonical definition to state claims against.
-/

/-! ## A331771.P11124664456809080984

`4*A115005(n+1)`
-/

namespace A331771.P11124664456809080984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A115005 (n + 1)

end

end A331771.P11124664456809080984

/-! ## A331771.P3334611663485626463

`A114146(n+1)-2`
-/

namespace A331771.P3334611663485626463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114146 (n + 1) - 2

end

end A331771.P3334611663485626463

/-! ## A331771.P6068419772152369341

`2*A141255(n+1)`
-/

namespace A331771.P6068419772152369341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141255 (n + 1)

end

end A331771.P6068419772152369341

/-! ## A331771.P12912539982571113863

`4*(A306302(n)-n)`
-/

namespace A331771.P12912539982571113863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A306302 n - (n : ℤ))

end

end A331771.P12912539982571113863

/-! ## A331771.P221200979614396906

`2*(A114043(n+1)-1)`
-/

namespace A331771.P221200979614396906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A114043 (n + 1) - 1)

end

end A331771.P221200979614396906

/-! ## A331771.P15785313144808176170

`A177719(2*(n+1))/2`
-/

namespace A331771.P15785313144808176170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177719 (2 * (n + 1)) : ℚ) / 2

end

end A331771.P15785313144808176170

/-! ## A331771.P16136892725445160152

`4*(A290131(n+1)+n)`
-/

namespace A331771.P16136892725445160152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A290131 (n + 1) + (n : ℤ))

end

end A331771.P16136892725445160152

/-! ## A331771.P5852129555450010218

`A331761(2*n+1)+4*(n²+n)`
-/

namespace A331771.P5852129555450010218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331761 (2 * n + 1) + (4 * (n ^ 2 + n) : ℤ)

end

end A331771.P5852129555450010218

/-! ## A331771.P11852904152734363360

`A088658(n+1)+A033996(n)`
-/

namespace A331771.P11852904152734363360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088658 (n + 1) + A033996 n

end

end A331771.P11852904152734363360

/-! ## A331771.P4482302587064247381

`2*(A344993(n)+A001105(n))`
-/

namespace A331771.P4482302587064247381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A344993 n + A001105 n)

end

end A331771.P4482302587064247381

/-! ## A331771.P7559204699542599435

`A088658(n+1)+2*A046092(n)`
-/

namespace A331771.P7559204699542599435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088658 (n + 1) + 2 * A046092 n

end

end A331771.P7559204699542599435

/-! ## A331771.P2453247630397053702

`A000290(2*n+1)+A331761(2*n+1)-1`
-/

namespace A331771.P2453247630397053702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 1) + (A331761 (2 * n + 1) - 1)

end

end A331771.P2453247630397053702

/-! ## A331771.P14346762399963203777

`2*xor(A057427(A005408(n)), A114043(n+1))`
-/

namespace A331771.P14346762399963203777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (A057427 (A005408 n).toNat) (A114043 (n + 1))

end

end A331771.P14346762399963203777

/-! ## A331771.P3398216202644223011

`2*xor(A057427(A016777(n)), A114043(n+1))`
-/

namespace A331771.P3398216202644223011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (A057427 (A016777 n).toNat) (A114043 (n + 1))

end

end A331771.P3398216202644223011

/-! ## A331771.P1534044213563582128

`A141255(n+1)+A306302(n)+A290131(n+1)`
-/

namespace A331771.P1534044213563582128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 1) + (A306302 n + A290131 (n + 1))

end

end A331771.P1534044213563582128

/-! ## A331771.P16609429056141226941

`A115005(n+1)+A141255(n+1)+A115005(n+1)`
-/

namespace A331771.P16609429056141226941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (n + 1) + (A141255 (n + 1) + A115005 (n + 1))

end

end A331771.P16609429056141226941

/-! ## A331771.P14691757716389972245

`A114043(n+1)+A114043(n+1)-A040000(A028310(n))`
-/

namespace A331771.P14691757716389972245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 1) + (A114043 (n + 1) - A040000 (A028310 n).toNat)

end

end A331771.P14691757716389972245

/-! ## A331771.P6932000047806346374

`2*A331773(2*(n+1))`
-/

namespace A331771.P6932000047806346374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331773 (2 * (n + 1))

end

end A331771.P6932000047806346374

/-! ## A331771.P706007423654534938

`A331772(2*(n+1))/4`
-/

namespace A331771.P706007423654534938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331772 (2 * (n + 1)) : ℚ) / 4

end

end A331771.P706007423654534938

/-! ## A331771.P13527116094680846320

`A290132(2*(n+1))-(A331755(2*(n+1))+A159065(2*(n+1)))`
-/

namespace A331771.P13527116094680846320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (2 * (n + 1)) - (A331755 (2 * (n + 1)) + A159065 (2 * (n + 1)))

end

end A331771.P13527116094680846320

/-!
# A331772: a(n) = Sum_{-n<i<n, -n<j<n, gcd{i,j}=2} (n-|i|)*(n-|j|).

The programs for A331772, there is no canonical definition to state claims against.
-/

/-! ## A331772.P15634538671770606751

`2*A177719(n+1)`
-/

namespace A331772.P15634538671770606751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177719 (n + 1)

end

end A331772.P15634538671770606751

/-! ## A331772.P12889181870408743613

`8*A331773(n+1)`
-/

namespace A331772.P12889181870408743613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A331773 (n + 1)

end

end A331772.P12889181870408743613

/-! ## A331772.P12215137349872169170

`8*A177719(n-log2(1/2))/4`
-/

namespace A331772.P12215137349872169170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A177719 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 4)

end

end A331772.P12215137349872169170

/-! ## A331772.P17001400459269954509

`2*(A141255(n+1)-A018808(n+1))`
-/

namespace A331772.P17001400459269954509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141255 (n + 1) - A018808 (n + 1))

end

end A331772.P17001400459269954509

/-! ## A331772.P15000496961710894149

`2*A331771(n+1)%A290132(n+1)`
-/

namespace A331772.P15000496961710894149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A331771 (n + 1)) (A290132 (n + 1))

end

end A331772.P15000496961710894149

/-! ## A331772.P3311283883849846874

`A332352(∑[n+1])`
-/

namespace A331772.P3311283883849846874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332352 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331772.P3311283883849846874

/-! ## A331772.P17813266615128624072

`2*A332353(∑[n+1])`
-/

namespace A331772.P17813266615128624072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332353 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331772.P17813266615128624072

/-!
# A331773: a(n) = Sum_{-n<i<n, -n<j<n, gcd{i,j}=2} (n-|i|)*(n-|j|)/8.

The programs for A331773, there is no canonical definition to state claims against.
-/

/-! ## A331773.P1330171864554214121

`A177719(n+1)/4`
-/

namespace A331773.P1330171864554214121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177719 (n + 1) : ℚ) / 4

end

end A331773.P1330171864554214121

/-! ## A331773.P17758713399384690817

`A331772(n+1)/8`
-/

namespace A331773.P17758713399384690817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331772 (n + 1) : ℚ) / 8

end

end A331773.P17758713399384690817

/-! ## A331773.P10802853575418846968

`floor(A177719(n-log2(1/2))/4)`
-/

namespace A331773.P10802853575418846968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177719 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 4⌋

end

end A331773.P10802853575418846968

/-! ## A331773.P6595550218535832152

`(A141255(n+1)-A018808(n+1))/4`
-/

namespace A331773.P6595550218535832152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141255 (n + 1) - A018808 (n + 1) : ℚ) / 4

end

end A331773.P6595550218535832152

/-! ## A331773.P1340023509166664034

`A141255(n+1)%A290132(n+1)/2`
-/

namespace A331773.P1340023509166664034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A141255 (n + 1)) (A290132 (n + 1)) : ℚ) / 2

end

end A331773.P1340023509166664034

/-! ## A331773.P6525564161997890473

`A331771(n+1)%A290132(n+1)/4`
-/

namespace A331773.P6525564161997890473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A331771 (n + 1)) (A290132 (n + 1)) : ℚ) / 4

end

end A331773.P6525564161997890473

/-! ## A331773.P991703738797307021

`A332353(∑[n+1])/4`
-/

namespace A331773.P991703738797307021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332353 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A331773.P991703738797307021

/-! ## A331773.P17263046002473770069

`A332352(∑[n+1])/8`
-/

namespace A331773.P17263046002473770069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332352 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 8

end

end A331773.P17263046002473770069

/-!
# A331774: a(n) = Sum_{-n<i<n, -n<j<n, gcd{i,j}=3} (n-|i|)*(n-|j|).

The programs for A331774, there is no canonical definition to state claims against.
-/

/-! ## A331774.P7702323871399624720

`2*A177720(n+1)`
-/

namespace A331774.P7702323871399624720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177720 (n + 1)

end

end A331774.P7702323871399624720

/-! ## A331774.P8165322304775476436

`4*A331775(n+1)`
-/

namespace A331774.P8165322304775476436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A331775 (n + 1)

end

end A331774.P8165322304775476436

/-! ## A331774.P11047759178583903808

`4*A177720(Δ[n²]-n)/2`
-/

namespace A331774.P11047759178583903808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A177720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A331774.P11047759178583903808

/-! ## A331774.P12481607192160553792

`A177720(n+1)/tan(acot(A040000(n)))`
-/

namespace A331774.P12481607192160553792
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A177720 (n + 1) : ℝ) / Real.tan (SequenceMachineLib.acot (A040000 n : ℝ))

end

end A331774.P12481607192160553792

/-! ## A331774.P8079838190199603489

`A331775(n+1)/(1/A040000(n))²`
-/

namespace A331774.P8079838190199603489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331775 (n + 1) : ℚ) / (1 / (A040000 n : ℚ)) ^ 2

end

end A331774.P8079838190199603489

/-!
# A331775: a(n) = Sum_{-n<i<n, -n<j<n, gcd{i,j}=3} (n-|i|)*(n-|j|)/4.

The programs for A331775, there is no canonical definition to state claims against.
-/

/-! ## A331775.P8048695353611058613

`A177720(n+1)/2`
-/

namespace A331775.P8048695353611058613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177720 (n + 1) : ℚ) / 2

end

end A331775.P8048695353611058613

/-! ## A331775.P12322792592495118805

`A331774(n+1)/4`
-/

namespace A331775.P12322792592495118805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331774 (n + 1) : ℚ) / 4

end

end A331775.P12322792592495118805

/-! ## A331775.P4985376081441541561

`floor(A177720(Δ[n²]-n)/2)`
-/

namespace A331775.P4985376081441541561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A331775.P4985376081441541561

/-! ## A331775.P4337343261890401652

`A014682(A177720(n+1))`
-/

namespace A331775.P4337343261890401652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177720 (n + 1)).toNat

end

end A331775.P4337343261890401652

/-! ## A331775.P15473422066177955065

`tan(acot(A040000(n)))*A177720(n+1)`
-/

namespace A331775.P15473422066177955065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (A040000 n : ℝ)) * (A177720 (n + 1) : ℝ)

end

end A331775.P15473422066177955065

/-!
# A331776: Number of regions in a "frame" of size n X n (see Comments for definition).

The programs for A331776, there is no canonical definition to state claims against.
-/

/-! ## A331776.P7297201758461910953

`4*(A332595(n+1)+2*A332596(n+1))`
-/

namespace A331776.P7297201758461910953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A332595 (n + 1) + 2 * A332596 (n + 1))

end

end A331776.P7297201758461910953

/-! ## A331776.P9319566330906579618

`4*A332594(n+1)`
-/

namespace A331776.P9319566330906579618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A332594 (n + 1)

end

end A331776.P9319566330906579618

/-! ## A331776.P18187552261899882754

`4*(A332595(n+1)+A005843(A332596(n+1)))`
-/

namespace A331776.P18187552261899882754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A332595 (n + 1) + A005843 (A332596 (n + 1)).toNat)

end

end A331776.P18187552261899882754

/-! ## A331776.P9979570104310992303

`4*(A005843(A332596(n+1))+A177719(n+2)+A008574(n))`
-/

namespace A331776.P9979570104310992303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A005843 (A332596 (n + 1)).toNat + (A177719 (n + 2) + A008574 n))

end

end A331776.P9979570104310992303

/-! ## A331776.P9519231320738634587

`A008574(A332594(n+1))`
-/

namespace A331776.P9519231320738634587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A332594 (n + 1)).toNat

end

end A331776.P9519231320738634587

/-!
# A331779: Coefficients arising from a 4-dissection of the Rogers-Ramanujan functions.

The programs for A331779, there is no canonical definition to state claims against.
-/

/-! ## A331779.P8252354375257239220

`A260452(n+1)-A188291(A283250(n))`
-/

namespace A331779.P8252354375257239220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (n + 1) - A188291 (A283250 n).toNat

end

end A331779.P8252354375257239220

/-!
# A331780: One-half of the number of lines through at least 2 points of an n X n grid of points.

The programs for A331780, there is no canonical definition to state claims against.
-/

/-! ## A331780.P18260445452408340360

`A018808(n)/2`
-/

namespace A331780.P18260445452408340360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018808 n : ℚ) / 2

end

end A331780.P18260445452408340360

/-! ## A331780.P7012778245459927924

`floor((A119438(n)-n²)/2)`
-/

namespace A331780.P7012778245459927924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A119438 n - (n ^ 2 : ℤ) : ℚ) / 2⌋

end

end A331780.P7012778245459927924

/-! ## A331780.P16777886722175131731

`(A119438(2*n-n)-(n²+1))/2`
-/

namespace A331780.P16777886722175131731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119438 (2 * n - n) - (n ^ 2 + 1 : ℤ) : ℚ) / 2

end

end A331780.P16777886722175131731

/-! ## A331780.P12719815737755749806

`abs(A002522(n)-A119438(n))/2`
-/

namespace A331780.P12719815737755749806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A002522 n - A119438 n| : ℚ) / 2

end

end A331780.P12719815737755749806

/-! ## A331780.P18310389074744921474

`(A225606(n)+A018809(n))/2`
-/

namespace A331780.P18310389074744921474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225606 n + A018809 n : ℚ) / 2

end

end A331780.P18310389074744921474

/-! ## A331780.P18394810111368622057

`A295707((1-n)²+n²)/2`
-/

namespace A331780.P18394810111368622057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295707 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat : ℚ) / 2

end

end A331780.P18394810111368622057

/-! ## A331780.P3794153241854548144

`ceil(A295707(1-(n-C(2*n, 2)))/2)`
-/

namespace A331780.P3794153241854548144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295707 (1 - ((n : ℤ) - (Nat.choose (2 * n) 2 : ℤ))).toNat : ℚ) / 2⌉

end

end A331780.P3794153241854548144

/-!
# A331781: Triangle read by rows: T(m,n) = Sum_{0<i<m, 0<j<n, gcd{i,j}=1} 1, where m >= n >= 1.

The programs for A331781, there is no canonical definition to state claims against.
-/

/-! ## A331781.P15451900346876256858

`floor(abs(γ-A049695(A245300(n))))`
-/

namespace A331781.P15451900346876256858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.eulerMascheroniConstant - (A049695 (A245300 n).toNat : ℝ)|⌋

end

end A331781.P15451900346876256858

/-! ## A331781.P9439013052820477525

`A049695(A245300(n^floor(atan(n))))-1`
-/

namespace A331781.P9439013052820477525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 (A245300 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat).toNat - 1

end

end A331781.P9439013052820477525

/-! ## A331781.P4070720529375593220

`A049695(A245300(round(sqrt(n²+1))))-1`
-/

namespace A331781.P4070720529375593220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 (A245300 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat - 1

end

end A331781.P4070720529375593220

/-! ## A331781.P9635537715101507002

`A057428(n)+A049695(A245300(n))`
-/

namespace A331781.P9635537715101507002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A049695 (A245300 n).toNat

end

end A331781.P9635537715101507002

/-! ## A331781.P4987456780199255727

`abs(A057427(n)-A049695(A245300(n)))`
-/

namespace A331781.P4987456780199255727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n - A049695 (A245300 n).toNat|

end

end A331781.P4987456780199255727

/-! ## A331781.P10936070863952104666

`A000007(n)+A049695(A245300(n))-1`
-/

namespace A331781.P10936070863952104666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A049695 (A245300 n).toNat - 1)

end

end A331781.P10936070863952104666

/-! ## A331781.P12431580489326478320

`(A049695(A245300(n))-1)%A018252(n+1)`
-/

namespace A331781.P12431580489326478320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049695 (A245300 n).toNat - 1) (A018252 (n + 1))

end

end A331781.P12431580489326478320

/-! ## A331781.P18081867767204414480

`abs(A000040(n+1)%2-A049695(A245300(n)))`
-/

namespace A331781.P18081867767204414480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000040 (n + 1)) 2 - A049695 (A245300 n).toNat|

end

end A331781.P18081867767204414480

/-! ## A331781.P3258098997842400595

`abs(A006530(n²+2)%2-A049695(A245300(n)))`
-/

namespace A331781.P3258098997842400595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A006530 (n ^ 2 + 2)) 2 - A049695 (A245300 n).toNat|

end

end A331781.P3258098997842400595

/-! ## A331781.P6530190738822771132

`A000010(2*(n+1))%2+A049695(A245300(n))-1`
-/

namespace A331781.P6530190738822771132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (2 * (n + 1))) 2 + (A049695 (A245300 n).toNat - 1)

end

end A331781.P6530190738822771132

/-!
# A331782: Total number of vertices in graph formed by the straight line segments connecting the edges of an equilateral triangle with the n-1 points resulting from a subdivision of the sides into n equal pieces, counting coinciding intersection points only once.

The programs for A331782, there is no canonical definition to state claims against.
-/

/-! ## A331782.P8315485362130705936

`A091908(n+1)+3*(n+1)`
-/

namespace A331782.P8315485362130705936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1) + (3 * (n + 1) : ℤ)

end

end A331782.P8315485362130705936

/-! ## A331782.P1330844526138476323

`A332376(n+1)+1-A092098(n+1)`
-/

namespace A331782.P1330844526138476323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332376 (n + 1) + (1 - A092098 (n + 1))

end

end A331782.P1330844526138476323

/-! ## A331782.P11553414465025395458

`A092098(n+1)+2-A331423(n+1)`
-/

namespace A331782.P11553414465025395458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092098 (n + 1) + (2 - A331423 (n + 1))

end

end A331782.P11553414465025395458

/-! ## A331782.P772000486439875231

`A005408(n+1)+A091908(n+1)+n`
-/

namespace A331782.P772000486439875231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) + (A091908 (n + 1) + (n : ℤ))

end

end A331782.P772000486439875231

/-! ## A331782.P1334394893416873701

`A008574(n+1)+A091908(n+1)-(n+1)`
-/

namespace A331782.P1334394893416873701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) + (A091908 (n + 1) - (n + 1 : ℤ))

end

end A331782.P1334394893416873701

/-!
# A331783: Number of locally disjoint rooted semi-identity trees with n unlabeled vertices.

The programs for A331783, there is no canonical definition to state claims against.
-/

/-! ## A331783.P14796357712513536358

`A292460(n)+Δ[A251629(C(n, 8))]`
-/

namespace A331783.P14796357712513536358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251629 (Nat.choose n 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n + (f1 (n + 1) - f1 n)

end

end A331783.P14796357712513536358

/-! ## A331783.P6858874985061610033

`A329672(A087036(n))-A000129(n)`
-/

namespace A331783.P6858874985061610033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329672 (A087036 n).toNat - A000129 n

end

end A331783.P6858874985061610033

/-! ## A331783.P14689872929206798180

`A329672(A087051(n))-A000129(n)`
-/

namespace A331783.P14689872929206798180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329672 (A087051 n).toNat - A000129 n

end

end A331783.P14689872929206798180

/-! ## A331783.P11298405861412733682

`A292460(n)+Δ[A036632(A120126(n))]`
-/

namespace A331783.P11298405861412733682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036632 (A120126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n + (f1 (n + 1) - f1 n)

end

end A331783.P11298405861412733682

/-! ## A331783.P13092037919178384868

`A329672(A227549(n+1))-A000129(n)`
-/

namespace A331783.P13092037919178384868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329672 (A227549 (n + 1)).toNat - A000129 n

end

end A331783.P13092037919178384868

/-!
# A331784: Lexicographically earliest sequence of positive integers that have at most one prime index already in the sequence, counting multiplicity.

The programs for A331784, there is no canonical definition to state claims against.
-/

/-! ## A331784.P15366255763707864973

`lt[A379311(n+1)^(A353501(n)+2), 2]+1`
-/

namespace A331784.P15366255763707864973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379311 (n + 1) : ℚ) ^ (A353501 n + 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A331784.P15366255763707864973

/-! ## A331784.P1853601341014055034

`record[A298536(n+1)%A317719(A316521(n+1))]`
-/

namespace A331784.P1853601341014055034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298536 (n + 1)) (A317719 (A316521 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331784.P1853601341014055034

/-! ## A331784.P7685583231657137389

`record[A298536(n+1)%A298540(n+7)]`
-/

namespace A331784.P7685583231657137389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298536 (n + 1)) (A298540 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331784.P7685583231657137389

/-! ## A331784.P7193949317827830478

`A298536(A046100(n+1)%A298536(3*n+5))`
-/

namespace A331784.P7193949317827830478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298536 (Int.tmod (A046100 (n + 1)) (A298536 (3 * n + 5))).toNat

end

end A331784.P7193949317827830478

/-! ## A331784.P15856618975492894729

`eq[ceil(2/(n+1)), A010875(A323523(n))]`
-/

namespace A331784.P15856618975492894729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A323523 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331784.P15856618975492894729

/-!
# A331785: Lexicographically earliest sequence containing 1 and all positive integers with exactly one prime index already in the sequence, counting multiplicity.

The programs for A331785, there is no canonical definition to state claims against.
-/

/-! ## A331785.P16455535314572378375

`record[A348610(n+1)-A097795(n+1)]`
-/

namespace A331785.P16455535314572378375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (n + 1) - A097795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331785.P16455535314572378375

/-! ## A331785.P5274931751071933727

`record[or(A321368(3*n+1), A321393(n+2))]`
-/

namespace A331785.P5274931751071933727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A321368 (3 * n + 1)) (A321393 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331785.P5274931751071933727

/-! ## A331785.P2676773197379470578

`∑[A319646(2*(n+2))%A075324(2*(n+2))]`
-/

namespace A331785.P2676773197379470578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319646 (2 * (n + 2))) (A075324 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331785.P2676773197379470578

/-! ## A331785.P12538623308411356460

`eq[A001222(A081118(n+1)), A348447(n)]`
-/

namespace A331785.P12538623308411356460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A081118 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331785.P12538623308411356460

/-! ## A331785.P914794506580645522

`lt[A000009(n), A052410(A001694(n+1))]`
-/

namespace A331785.P914794506580645522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A001694 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331785.P914794506580645522

/-!
# A331786: a(n) is the largest m such that there exists N such that none of S(N), S(N+1), ..., S(N+m-1) is divisible by n, where S(N) is the sum of digits of N.

The programs for A331786, the canonical program `A331786.P9966342584364042783` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331786 has offset 1).

The definition of A331786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 894 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331786.P12290304912589215757

`A331788(1+n)-1`
-/

namespace A331786.P12290304912589215757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331788 (1 + n) - 1

end

end A331786.P12290304912589215757

namespace A331786

/-- `A331788(1+n)-1` -/
def P12290304912589215757.Spec : Prop :=
  ∀ n, P12290304912589215757.a n = A331786 (n + 1)

end A331786

/-! ## A331786.P8528110055299001044

`xor(1, A331788(n+1))`
-/

namespace A331786.P8528110055299001044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A331788 (n + 1))

end

end A331786.P8528110055299001044

namespace A331786

/-- `xor(1, A331788(n+1))` -/
def P8528110055299001044.Spec : Prop :=
  ∀ n, P8528110055299001044.a n = A331786 (n + 1)

end A331786

/-! ## A331786.P9966342584364042783

`a(n-1)+10*a(n-9)-10*a(n-10)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=6, a(4)=8, a(5)=8, a(6)=12, a(7)=14, a(8)=8, a(9)=18`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331786

/-- `a(n-1)+10*a(n-9)-10*a(n-10)` -/
def P9966342584364042783.Spec : Prop :=
  ∀ n, P9966342584364042783.a n = A331786 (n + 1)

theorem P9966342584364042783.correct : P9966342584364042783.Spec := by
  intro n
  simp only [A331786, Nat.add_sub_cancel]

end A331786

/-! ## A331786.P5337731548874044895

`ogf((2x+4x^3+2x^4+4x^6+2x^7-6x^8+10x^9)/(1-x-10x^9+10x^10))`
-/

namespace A331786.P5337731548874044895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 0, 4, 2, 0, 4, 2, -6, 10] [1, -1, 0, 0, 0, 0, 0, 0, 0, -10, 10] n

end

end A331786.P5337731548874044895

namespace A331786

/-- `ogf((2x+4x^3+2x^4+4x^6+2x^7-6x^8+10x^9)/(1-x-10x^9+10x^10))` -/
def P5337731548874044895.Spec : Prop :=
  ∀ n, P5337731548874044895.a n = A331786 (n + 1)

end A331786

/-! ## A331786.P7679284927716226637

`and(A158525(n+4), A331788(n+1))`
-/

namespace A331786.P7679284927716226637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158525 (n + 4)) (A331788 (n + 1))

end

end A331786.P7679284927716226637

namespace A331786

/-- `and(A158525(n+4), A331788(n+1))` -/
def P7679284927716226637.Spec : Prop :=
  ∀ n, P7679284927716226637.a n = A331786 (n + 1)

end A331786

/-! ## A331786.P5778594809176565179

`and(A002446(n), A331788(n+1))`
-/

namespace A331786.P5778594809176565179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A331788 (n + 1))

end

end A331786.P5778594809176565179

namespace A331786

/-- `and(A002446(n), A331788(n+1))` -/
def P5778594809176565179.Spec : Prop :=
  ∀ n, P5778594809176565179.a n = A331786 (n + 1)

end A331786

/-! ## A331786.P8232939889419207218

`and(A005367(n), A331788(n+1))`
-/

namespace A331786.P8232939889419207218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005367 n) (A331788 (n + 1))

end

end A331786.P8232939889419207218

namespace A331786

/-- `and(A005367(n), A331788(n+1))` -/
def P8232939889419207218.Spec : Prop :=
  ∀ n, P8232939889419207218.a n = A331786 (n + 1)

end A331786

/-! ## A331786.P16078689085598255114

`and(A286778(n), A331788(n+1))`
-/

namespace A331786.P16078689085598255114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286778 n) (A331788 (n + 1))

end

end A331786.P16078689085598255114

namespace A331786

/-- `and(A286778(n), A331788(n+1))` -/
def P16078689085598255114.Spec : Prop :=
  ∀ n, P16078689085598255114.a n = A331786 (n + 1)

end A331786

/-! ## A331786.P15778653701667837809

`and(A143960(n+1), A331788(n+1))`
-/

namespace A331786.P15778653701667837809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143960 (n + 1)) (A331788 (n + 1))

end

end A331786.P15778653701667837809

namespace A331786

/-- `and(A143960(n+1), A331788(n+1))` -/
def P15778653701667837809.Spec : Prop :=
  ∀ n, P15778653701667837809.a n = A331786 (n + 1)

end A331786

/-! ## A331786.P8106971954647893386

`and(A170940(n+1), A331788(n+1))`
-/

namespace A331786.P8106971954647893386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170940 (n + 1)) (A331788 (n + 1))

end

end A331786.P8106971954647893386

namespace A331786

/-- `and(A170940(n+1), A331788(n+1))` -/
def P8106971954647893386.Spec : Prop :=
  ∀ n, P8106971954647893386.a n = A331786 (n + 1)

end A331786

/-!
# A331787: T(b,n) is the largest m such that there exists N such that none of S(N), S(N+1), ..., S(N+m-1) is divisible by n, where S(N) is the sum of digits of N in base b. Square array read by ascending antidiagonals.

The programs for A331787, there is no canonical definition to state claims against.
-/

/-! ## A331787.P3240168590083085335

`A331789(n+2)-1`
-/

namespace A331787.P3240168590083085335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331789 (n + 2) - 1

end

end A331787.P3240168590083085335

/-! ## A331787.P15181858668173261662

`abs(A331789(n+2)+or(-1, A000041(n)))`
-/

namespace A331787.P15181858668173261662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331789 (n + 2) + Int.lor (-1) (A000041 n)|

end

end A331787.P15181858668173261662

/-! ## A331787.P17887622519390209551

`abs(A331789(n+2)+A008683(A020483(n)))`
-/

namespace A331787.P17887622519390209551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331789 (n + 2) + A008683 (A020483 n).toNat|

end

end A331787.P17887622519390209551

/-! ## A331787.P5541405266670462727

`abs(A331789(n+2)+A008683(A110581(n+1)))`
-/

namespace A331787.P5541405266670462727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331789 (n + 2) + A008683 (A110581 (n + 1)).toNat|

end

end A331787.P5541405266670462727

/-! ## A331787.P9709821245430578510

`(A331789(n+2)+A331786(n+1))%A331788(n+1)`
-/

namespace A331787.P9709821245430578510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331789 (n + 2) + A331786 (n + 1)) (A331788 (n + 1))

end

end A331787.P9709821245430578510

/-! ## A331787.P3172721987764304669

`A023443(A331789(n+2))`
-/

namespace A331787.P3172721987764304669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331789 (n + 2)).toNat

end

end A331787.P3172721987764304669

/-! ## A331787.P9211490853781727590

`lcm(A024000(A331789(n+2)), A033999(n))`
-/

namespace A331787.P9211490853781727590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024000 (A331789 (n + 2)).toNat) (A033999 n)

end

end A331787.P9211490853781727590

/-!
# A331788: a(n) is the smallest m such that for any N, at least one of S(N), S(N+1), ..., S(N+m-1) is divisible by n, where S(N) is the sum of digits of N.

The programs for A331788, the canonical program `A331788.P17157103669528982093` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331788 has offset 1).

The definition of A331788 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331786, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331788.P17157103669528982093

`A331786(n+1)+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A331788

/-- `A331786(n+1)+1` -/
def P17157103669528982093.Spec : Prop :=
  ∀ n, P17157103669528982093.a n = A331788 (n + 1)

theorem P17157103669528982093.correct : P17157103669528982093.Spec := by
  intro n
  simp only [A331788, Nat.add_sub_cancel]

end A331788

/-! ## A331788.P6623292116418755475

`or(1, A331786(Δ[n²]-n))`
-/

namespace A331788.P6623292116418755475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331786 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A331788.P6623292116418755475

namespace A331788

/-- `or(1, A331786(Δ[n²]-n))` -/
def P6623292116418755475.Spec : Prop :=
  ∀ n, P6623292116418755475.a n = A331788 (n + 1)

end A331788

/-! ## A331788.P8077261453744400822

`a(n-1)+10*a(n-9)-10*a(n-10)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=7, a(4)=9, a(5)=9, a(6)=13, a(7)=15, a(8)=9, a(9)=19`
-/

namespace A331788.P8077261453744400822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 7, 9, 9, 13, 15, 9, 19] fun n a =>
  a (n - 1) + 10 * a (n - 9) - 10 * a (n - 10)

end

end A331788.P8077261453744400822

namespace A331788

/-- `a(n-1)+10*a(n-9)-10*a(n-10)` -/
def P8077261453744400822.Spec : Prop :=
  ∀ n, P8077261453744400822.a n = A331788 (n + 1)

end A331788

/-! ## A331788.P284814128991207224

`ogf((1+2x+4x^3+2x^4+4x^6+2x^7-6x^8)/(1-x-10x^9+10x^10))`
-/

namespace A331788.P284814128991207224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 4, 2, 0, 4, 2, -6] [1, -1, 0, 0, 0, 0, 0, 0, 0, -10, 10] n

end

end A331788.P284814128991207224

namespace A331788

/-- `ogf((1+2x+4x^3+2x^4+4x^6+2x^7-6x^8)/(1-x-10x^9+10x^10))` -/
def P284814128991207224.Spec : Prop :=
  ∀ n, P284814128991207224.a n = A331788 (n + 1)

end A331788

/-! ## A331788.P12343913322117588005

`A331789(A000217(n+8)+n+2)`
-/

namespace A331788.P12343913322117588005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331789 (A000217 (n + 8) + (n : ℤ) + 2).toNat

end

end A331788.P12343913322117588005

namespace A331788

/-- `A331789(A000217(n+8)+n+2)` -/
def P12343913322117588005.Spec : Prop :=
  ∀ n, P12343913322117588005.a n = A331788 (n + 1)

end A331788

/-! ## A331788.P4766849189035438216

`A331787(A000217(n+8)+n+2)+1`
-/

namespace A331788.P4766849189035438216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331787 (A000217 (n + 8) + (n : ℤ) + 2).toNat + 1

end

end A331788.P4766849189035438216

namespace A331788

/-- `A331787(A000217(n+8)+n+2)+1` -/
def P4766849189035438216.Spec : Prop :=
  ∀ n, P4766849189035438216.a n = A331788 (n + 1)

end A331788

/-!
# A331789: T(b,n) is the smallest m such that for any N, at least one of S(N), S(N+1), ..., S(N+m-1) is divisible by n, where S(N) is the sum of digits of N in base b. Square array read by ascending antidiagonals.

The programs for A331789, there is no canonical definition to state claims against.
-/

/-! ## A331789.P5604697711005903726

`A331787(n+2)+1`
-/

namespace A331789.P5604697711005903726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331787 (n + 2) + 1

end

end A331789.P5604697711005903726

/-! ## A331789.P829098729687556089

`or(A287125(A056449(n)), A307078(n))`
-/

namespace A331789.P829098729687556089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287125 (A056449 n).toNat) (A307078 n)

end

end A331789.P829098729687556089

/-! ## A331789.P3621097548709975426

`or(A000035(A139748(n)), A307078(n))`
-/

namespace A331789.P3621097548709975426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A139748 n).toNat) (A307078 n)

end

end A331789.P3621097548709975426

/-! ## A331789.P16066402920913180894

`or(A181153(A035327(n)), A307078(n))`
-/

namespace A331789.P16066402920913180894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181153 (A035327 n).toNat) (A307078 n)

end

end A331789.P16066402920913180894

/-! ## A331789.P7998804022105407755

`A059841(A270929(2*(n+2)))+2*T(n-1,k-1)` with `a(0)=1`
-/

namespace A331789.P7998804022105407755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059841 (A270929 (2 * (n + 2))).toNat + 2 * SequenceMachineLib.triUpLeft a n

end

end A331789.P7998804022105407755

/-!
# A331791: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 2/(1 - 2*k*x + ((k-2)*x)^2 + (1 - k*x) * sqrt(1 - 2*k*x + ((k-2)*x)^2)).

The programs for A331791, there is no canonical definition to state claims against.
-/

/-! ## A331791.P7269000055418644992

`A323182(n)-A000122(A140504(n))`
-/

namespace A331791.P7269000055418644992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 n - A000122 (A140504 n).toNat

end

end A331791.P7269000055418644992

/-! ## A331791.P1367669004809979058

`A183014(A000124(n))*A323182(n)`
-/

namespace A331791.P1367669004809979058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183014 (A000124 n).toNat * A323182 n

end

end A331791.P1367669004809979058

/-! ## A331791.P16186558691968688266

`A323163(A323197(2*n+1))*A323182(n)`
-/

namespace A331791.P16186558691968688266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323163 (A323197 (2 * n + 1)).toNat * A323182 n

end

end A331791.P16186558691968688266

/-! ## A331791.P1600698277264026930

`A323182(n)-A193870(A101427(3*n+4))`
-/

namespace A331791.P1600698277264026930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 n - A193870 (A101427 (3 * n + 4)).toNat

end

end A331791.P1600698277264026930

/-! ## A331791.P6349762667994696424

`A228161(A061579(n))-A000122(A140504(n))`
-/

namespace A331791.P6349762667994696424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A061579 n).toNat - A000122 (A140504 n).toNat

end

end A331791.P6349762667994696424

/-!
# A331792: Expansion of ((1 - 4*x)/sqrt(1 - 8*x + 4*x^2) - 1)/(6*x^2).

The programs for A331792, the canonical program `A331792.P1275125220568158347` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331792 has offset 0).

The definition of A331792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331792.P17729751302258346790

`∑{#}[n, 3^#*C(n+1, #)*C(n+1, #+1)]`
-/

namespace A331792.P17729751302258346790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (n + 1) k * Nat.choose (n + 1) (k + 1)

end

end A331792.P17729751302258346790

namespace A331792

/-- `∑{#}[n, 3^#*C(n+1, #)*C(n+1, #+1)]` -/
def P17729751302258346790.Spec : Prop :=
  ∀ n, (P17729751302258346790.a n : ℤ) = A331792 n

end A331792

/-! ## A331792.P1275125220568158347

`2/(n+2)*A331515(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A331792

/-- `2/(n+2)*A331515(n)` -/
def P1275125220568158347.Spec : Prop :=
  ∀ n, P1275125220568158347.a n = (A331792 n : ℚ)

end A331792

/-! ## A331792.P15602666982524156929

`(n+1)*A007564(n+1)`
-/

namespace A331792.P15602666982524156929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007564 (n + 1)

end

end A331792.P15602666982524156929

namespace A331792

/-- `(n+1)*A007564(n+1)` -/
def P15602666982524156929.Spec : Prop :=
  ∀ n, P15602666982524156929.a n = A331792 n

end A331792

/-! ## A331792.P6549792418178443966

`A098663(n+1)-A069835(n+1)`
-/

namespace A331792.P6549792418178443966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098663 (n + 1) - A069835 (n + 1)

end

end A331792.P6549792418178443966

namespace A331792

/-- `A098663(n+1)-A069835(n+1)` -/
def P6549792418178443966.Spec : Prop :=
  ∀ n, P6549792418178443966.a n = A331792 n

end A331792

/-! ## A331792.P3285466873393651822

`record[A299989(n²+1)]`
-/

namespace A331792.P3285466873393651822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331792.P3285466873393651822

namespace A331792

/-- `record[A299989(n²+1)]` -/
def P3285466873393651822.Spec : Prop :=
  ∀ n, P3285466873393651822.a n = A331792 n

end A331792

/-! ## A331792.P729278499443543418

`A299989((n+2)²+1)`
-/

namespace A331792.P729278499443543418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 ((n + 2) ^ 2 + 1)

end

end A331792.P729278499443543418

namespace A331792

/-- `A299989((n+2)²+1)` -/
def P729278499443543418.Spec : Prop :=
  ∀ n, P729278499443543418.a n = A331792 n

end A331792

/-! ## A331792.P13984985160961584399

`A299989((n+3)*(n+1))/3`
-/

namespace A331792.P13984985160961584399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299989 ((n + 3) * (n + 1)) : ℚ) / 3

end

end A331792.P13984985160961584399

namespace A331792

/-- `A299989((n+3)*(n+1))/3` -/
def P13984985160961584399.Spec : Prop :=
  ∀ n, P13984985160961584399.a n = (A331792 n : ℚ)

end A331792

/-! ## A331792.P5711916194092322595

`A152842(A132209(n+1))`
-/

namespace A331792.P5711916194092322595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A132209 (n + 1)).toNat

end

end A331792.P5711916194092322595

namespace A331792

/-- `A152842(A132209(n+1))` -/
def P5711916194092322595.Spec : Prop :=
  ∀ n, P5711916194092322595.a n = A331792 n

end A331792

/-! ## A331792.P2947032927421930895

`A152842(A142463(n+1))`
-/

namespace A331792.P2947032927421930895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A142463 (n + 1)).toNat

end

end A331792.P2947032927421930895

namespace A331792

/-- `A152842(A142463(n+1))` -/
def P2947032927421930895.Spec : Prop :=
  ∀ n, P2947032927421930895.a n = A331792 n

end A331792

/-!
# A331793: Expansion of ((1 - 5*x)/sqrt(1 - 10*x + 9*x^2) - 1)/(8*x^2).

The programs for A331793, the canonical program `A331793.P14389572807940730688` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331793 has offset 0).

The definition of A331793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331793.P7497546336315762364

`∑{#}[n, 4^#*C(n+1, #)*C(n+1, #+1)]`
-/

namespace A331793.P7497546336315762364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 4 ^ k * Nat.choose (n + 1) k * Nat.choose (n + 1) (k + 1)

end

end A331793.P7497546336315762364

namespace A331793

/-- `∑{#}[n, 4^#*C(n+1, #)*C(n+1, #+1)]` -/
def P7497546336315762364.Spec : Prop :=
  ∀ n, (P7497546336315762364.a n : ℤ) = A331793 n

end A331793

/-! ## A331793.P14389572807940730688

`2/(n+2)*A331516(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A331793

/-- `2/(n+2)*A331516(n)` -/
def P14389572807940730688.Spec : Prop :=
  ∀ n, P14389572807940730688.a n = (A331793 n : ℚ)

end A331793

/-! ## A331793.P448725916727404420

`(n+1)*A059231(n+1)`
-/

namespace A331793.P448725916727404420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059231 (n + 1)

end

end A331793.P448725916727404420

namespace A331793

/-- `(n+1)*A059231(n+1)` -/
def P448725916727404420.Spec : Prop :=
  ∀ n, P448725916727404420.a n = A331793 n

end A331793

/-! ## A331793.P12544503356770375994

`(n+1)*A127846(n+1)`
-/

namespace A331793.P12544503356770375994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127846 (n + 1)

end

end A331793.P12544503356770375994

namespace A331793

/-- `(n+1)*A127846(n+1)` -/
def P12544503356770375994.Spec : Prop :=
  ∀ n, P12544503356770375994.a n = A331793 n

end A331793

/-! ## A331793.P2490992675105311047

`(n+1)*A059450(∑[n+2])`
-/

namespace A331793.P2490992675105311047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059450 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331793.P2490992675105311047

namespace A331793

/-- `(n+1)*A059450(∑[n+2])` -/
def P2490992675105311047.Spec : Prop :=
  ∀ n, P2490992675105311047.a n = A331793 n

end A331793

/-! ## A331793.P5053547063086988560

`(n+1)/2*A086871(n+1)`
-/

namespace A331793.P5053547063086988560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A086871 (n + 1) : ℚ)

end

end A331793.P5053547063086988560

namespace A331793

/-- `(n+1)/2*A086871(n+1)` -/
def P5053547063086988560.Spec : Prop :=
  ∀ n, P5053547063086988560.a n = (A331793 n : ℚ)

end A331793

/-! ## A331793.P4364185243080528685

`record[A103221(n)*A127846(A103221(n))]`
-/

namespace A331793.P4364185243080528685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n * A127846 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331793.P4364185243080528685

namespace A331793

/-- `record[A103221(n)*A127846(A103221(n))]` -/
def P4364185243080528685.Spec : Prop :=
  ∀ n, P4364185243080528685.a n = A331793 n

end A331793

/-! ## A331793.P2468354092913578720

`record[A059231(A286558(n))*A286558(n)]`
-/

namespace A331793.P2468354092913578720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 (A286558 n).toNat * A286558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331793.P2468354092913578720

namespace A331793

/-- `record[A059231(A286558(n))*A286558(n)]` -/
def P2468354092913578720.Spec : Prop :=
  ∀ n, P2468354092913578720.a n = A331793 n

end A331793

/-! ## A331793.P10632665181520209780

`A098665(n+1)-A084771(n+1)`
-/

namespace A331793.P10632665181520209780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098665 (n + 1) - A084771 (n + 1)

end

end A331793.P10632665181520209780

namespace A331793

/-- `A098665(n+1)-A084771(n+1)` -/
def P10632665181520209780.Spec : Prop :=
  ∀ n, P10632665181520209780.a n = A331793 n

end A331793

/-! ## A331793.P7749063208457975054

`(n+1)*A243631(A052905(n+3))`
-/

namespace A331793.P7749063208457975054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A243631 (A052905 (n + 3)).toNat

end

end A331793.P7749063208457975054

namespace A331793

/-- `(n+1)*A243631(A052905(n+3))` -/
def P7749063208457975054.Spec : Prop :=
  ∀ n, P7749063208457975054.a n = A331793 n

end A331793

/-!
# A331794: a(n) = Sum_{k=0..n} n^k * binomial(n+1,k) * binomial(n+1,k+1).

The programs for A331794, the canonical program `A331794.P16010137079523581433` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331794 has offset 0).

The definition of A331794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, n^#*C(n+1, #)*C(n+1, #+1)]` (program `A331794.P16010137079523581433`, by `A331794.P16010137079523581433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331794.P16010137079523581433

`∑{#}[n, n^#*C(n+1, #)*C(n+1, #+1)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331794

/-- `∑{#}[n, n^#*C(n+1, #)*C(n+1, #+1)]` -/
def P16010137079523581433.Spec : Prop :=
  ∀ n, (P16010137079523581433.a n : ℤ) = A331794 n

theorem P16010137079523581433.correct : P16010137079523581433.Spec := by
  intro n
  simp only [A331794]

end A331794

/-! ## A331794.P2132477796204864400

`∑{#}[n, C(n+1, #)*C(n+1, #+1)*n^#]`
-/

namespace A331794.P2132477796204864400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 1) k * Nat.choose (n + 1) (k + 1) * n ^ k

end

end A331794.P2132477796204864400

namespace A331794

/-- `∑{#}[n, C(n+1, #)*C(n+1, #+1)*n^#]` -/
def P2132477796204864400.Spec : Prop :=
  ∀ n, (P2132477796204864400.a n : ℤ) = A331794 n

end A331794

/-! ## A331794.P12486157871133409003

`(n+1)*A099169(n+1)`
-/

namespace A331794.P12486157871133409003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099169 (n + 1)

end

end A331794.P12486157871133409003

namespace A331794

/-- `(n+1)*A099169(n+1)` -/
def P12486157871133409003.Spec : Prop :=
  ∀ n, P12486157871133409003.a n = A331794 n

end A331794

/-! ## A331794.P18140302982406613854

`A331791(∑[record[2*(n+2)/gcd(4, n)]])`
-/

namespace A331794.P18140302982406613854
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℚ) / (Nat.gcd 4 n : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331791 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A331794.P18140302982406613854

namespace A331794

/-- `A331791(∑[record[2*(n+2)/gcd(4, n)]])` -/
def P18140302982406613854.Spec : Prop :=
  ∀ n, P18140302982406613854.a n = A331794 n

end A331794

/-! ## A331794.P1131942603054982730

`A331791(A056220(n+1))`
-/

namespace A331794.P1131942603054982730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331791 (A056220 (n + 1)).toNat

end

end A331794.P1131942603054982730

namespace A331794

/-- `A331791(A056220(n+1))` -/
def P1131942603054982730.Spec : Prop :=
  ∀ n, P1131942603054982730.a n = A331794 n

end A331794

/-!
# A331795: a(n) = Sum_{k=0..n} (-n)^k * binomial(n+1,k) * binomial(n+1,k+1).

The programs for A331795, the canonical program `A331795.P2192917315204009077` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331795 has offset 0).

The definition of A331795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-n)^#*C(n+1, #)*C(n+1, #+1)]` (program `A331795.P2192917315204009077`, by `A331795.P2192917315204009077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331795.P2192917315204009077

`∑{#}[n, (-n)^#*C(n+1, #)*C(n+1, #+1)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331795

/-- `∑{#}[n, (-n)^#*C(n+1, #)*C(n+1, #+1)]` -/
def P2192917315204009077.Spec : Prop :=
  ∀ n, P2192917315204009077.a n = A331795 n

theorem P2192917315204009077.correct : P2192917315204009077.Spec := by
  intro n
  simp only [A331795]

end A331795

/-!
# A331796: E.g.f.: (exp(x) - 1) * exp(1 - exp(x)) / (2 - exp(x)).

The programs for A331796, there is no canonical definition to state claims against.
-/

/-! ## A331796.P4909046901336232516

`∑{#}[n-1, C(n, #+1)*A000670(#+1)*A000587(n-(#+1))]`
-/

namespace A331796.P4909046901336232516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n (k + 1) : ℤ) * A000670 (k + 1) * A000587 (n - (k + 1))

end

end A331796.P4909046901336232516

/-! ## A331796.P16548313750375951485

`A064898(n)-A000587(n)`
-/

namespace A331796.P16548313750375951485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064898 n - A000587 n

end

end A331796.P16548313750375951485

/-! ## A331796.P6881594113242985621

`A064898(n)-A293015(A000096(n))`
-/

namespace A331796.P6881594113242985621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064898 n - A293015 (A000096 n).toNat

end

end A331796.P6881594113242985621

/-! ## A331796.P2451803784740485947

`A064898(n)-A292861(A034856(n+1))`
-/

namespace A331796.P2451803784740485947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064898 n - A292861 (A034856 (n + 1)).toNat

end

end A331796.P2451803784740485947

/-! ## A331796.P1821828919690537744

`A064898(n)-A293015(A347553(n+3))`
-/

namespace A331796.P1821828919690537744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064898 n - A293015 (A347553 (n + 3)).toNat

end

end A331796.P1821828919690537744

/-! ## A331796.P5464400976030082082

`A064898(n)-A247108(A000217(n))`
-/

namespace A331796.P5464400976030082082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064898 n - A247108 (A000217 n).toNat

end

end A331796.P5464400976030082082

/-!
# A331797: E.g.f.: (exp(x) - 1) * exp(exp(x) - 1) / (2 - exp(x)).

The programs for A331797, the canonical program `A331797.P12651720161191429270` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331797 has offset 0).

The definition of A331797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331797.P12651720161191429270

`∑{#}[n-1, C(n, #+1)*A000670(#+1)*A000110(n-(#+1))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A331797

/-- `∑{#}[n-1, C(n, #+1)*A000670(#+1)*A000110(n-(#+1))]` -/
def P12651720161191429270.Spec : Prop :=
  ∀ n, P12651720161191429270.a n = A331797 n

theorem P12651720161191429270.correct : P12651720161191429270.Spec := by
  intro n
  simp only [A331797]

end A331797

/-! ## A331797.P8281261557698584577

`A059099(n)-A000110(n)`
-/

namespace A331797.P8281261557698584577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059099 n - A000110 n

end

end A331797.P8281261557698584577

namespace A331797

/-- `A059099(n)-A000110(n)` -/
def P8281261557698584577.Spec : Prop :=
  ∀ n, P8281261557698584577.a n = A331797 n

end A331797

/-! ## A331797.P5927071248163708468

`A059099(n)-abs(A292935(n))`
-/

namespace A331797.P5927071248163708468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059099 n - |A292935 n|

end

end A331797.P5927071248163708468

namespace A331797

/-- `A059099(n)-abs(A292935(n))` -/
def P5927071248163708468.Spec : Prop :=
  ∀ n, P5927071248163708468.a n = A331797 n

end A331797

/-! ## A331797.P10452595496081767640

`A059099(n)-A011971(∑[n])`
-/

namespace A331797.P10452595496081767640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059099 n - A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331797.P10452595496081767640

namespace A331797

/-- `A059099(n)-A011971(∑[n])` -/
def P10452595496081767640.Spec : Prop :=
  ∀ n, P10452595496081767640.a n = A331797 n

end A331797

/-! ## A331797.P14118219365953116632

`A059099(n)-A049020(∑[n])`
-/

namespace A331797.P14118219365953116632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059099 n - A049020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331797.P14118219365953116632

namespace A331797

/-- `A059099(n)-A049020(∑[n])` -/
def P14118219365953116632.Spec : Prop :=
  ∀ n, P14118219365953116632.a n = A331797 n

end A331797

/-! ## A331797.P9581596199581675919

`A059099(n)-Δ[A005001(n)]`
-/

namespace A331797.P9581596199581675919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059099 n - (f1 (n + 1) - f1 n)

end

end A331797.P9581596199581675919

namespace A331797

/-- `A059099(n)-Δ[A005001(n)]` -/
def P9581596199581675919.Spec : Prop :=
  ∀ n, P9581596199581675919.a n = A331797 n

end A331797

/-!
# A331798: E.g.f.: -log(1 - x) / ((1 - x) * (1 + log(1 - x))).

The programs for A331798, there is no canonical definition to state claims against.
-/

/-! ## A331798.P938836853636979553

`A003713(n+1)-n!`
-/

namespace A331798.P938836853636979553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 (n + 1) - (Nat.factorial n : ℤ)

end

end A331798.P938836853636979553

/-! ## A331798.P7807856019484426163

`A003713(n+1)-A000142(n)`
-/

namespace A331798.P7807856019484426163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 (n + 1) - A000142 n

end

end A331798.P7807856019484426163

/-! ## A331798.P7468555986275021039

`A003713(n+1)-Δ[A003422(n)]`
-/

namespace A331798.P7468555986275021039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 (n + 1) - (f1 (n + 1) - f1 n)

end

end A331798.P7468555986275021039

/-! ## A331798.P13232155712578451372

`A003713(n+1)-A104150(n+1)`
-/

namespace A331798.P13232155712578451372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 (n + 1) - A104150 (n + 1)

end

end A331798.P13232155712578451372

/-! ## A331798.P18111949522092693576

`A003713(n+1)-A132393(A000124(n+1))`
-/

namespace A331798.P18111949522092693576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 (n + 1) - A132393 (A000124 (n + 1)).toNat

end

end A331798.P18111949522092693576

/-! ## A331798.P15263653733468181361

`abs(A325872(A000124(n+1)))-A104150(n+1)`
-/

namespace A331798.P15263653733468181361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A000124 (n + 1)).toNat| - A104150 (n + 1)

end

end A331798.P15263653733468181361

/-! ## A331798.P2244317501986182822

`A052824(n+1)+A089064(n+1)-A104150(n+1)`
-/

namespace A331798.P2244317501986182822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052824 (n + 1) + (A089064 (n + 1) - A104150 (n + 1))

end

end A331798.P2244317501986182822

/-! ## A331798.P13627754736955427743

`A111933(∑[n+2])-A000142(n)`
-/

namespace A331798.P13627754736955427743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (∑ j ∈ Finset.range (n + 1), f1 j) - A000142 n

end

end A331798.P13627754736955427743

/-! ## A331798.P2162491037694030513

`A052828(n+1)-2*A104150(n+1)`
-/

namespace A331798.P2162491037694030513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052828 (n + 1) - 2 * A104150 (n + 1)

end

end A331798.P2162491037694030513

/-!
# A331799: Normalized volume of the Caracol flow polytope. Also equal to the number of "unified diagrams" of the Caracol graph (see Section 4.3 and Section 5 in Benedetti et al. reference).

The programs for A331799, the canonical program `A331799.P814032599533264784` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331799 has offset 1).

The definition of A331799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331799.P814032599533264784

`1/(n+1)*C(2*(n+1)-2, n)*(n+2)^n`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331799

/-- `1/(n+1)*C(2*(n+1)-2, n)*(n+2)^n` -/
def P814032599533264784.Spec : Prop :=
  ∀ n, P814032599533264784.a n = (A331799 (n + 1) : ℚ)

end A331799

/-! ## A331799.P16197214336801617304

`A000108(n)*A000272(n+2)`
-/

namespace A331799.P16197214336801617304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000272 (n + 2)

end

end A331799.P16197214336801617304

namespace A331799

/-- `A000108(n)*A000272(n+2)` -/
def P16197214336801617304.Spec : Prop :=
  ∀ n, P16197214336801617304.a n = A331799 (n + 1)

end A331799

/-! ## A331799.P7240965247968292282

`C(2*n, n)/(n+1)*(n+2)^n`
-/

namespace A331799.P7240965247968292282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * ((n + 2) ^ n : ℚ)

end

end A331799.P7240965247968292282

namespace A331799

/-- `C(2*n, n)/(n+1)*(n+2)^n` -/
def P7240965247968292282.Spec : Prop :=
  ∀ n, P7240965247968292282.a n = (A331799 (n + 1) : ℚ)

end A331799

/-! ## A331799.P6542393815593852899

`(n+2)^n*A000108(n)`
-/

namespace A331799.P6542393815593852899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ n : ℤ) * A000108 n

end

end A331799.P6542393815593852899

namespace A331799

/-- `(n+2)^n*A000108(n)` -/
def P6542393815593852899.Spec : Prop :=
  ∀ n, P6542393815593852899.a n = A331799 (n + 1)

end A331799

/-! ## A331799.P16553668909584982884

`abs(A168491(n))*(n+2)^n`
-/

namespace A331799.P16553668909584982884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * ((n + 2) ^ n : ℤ)

end

end A331799.P16553668909584982884

namespace A331799

/-- `abs(A168491(n))*(n+2)^n` -/
def P16553668909584982884.Spec : Prop :=
  ∀ n, P16553668909584982884.a n = A331799 (n + 1)

end A331799

