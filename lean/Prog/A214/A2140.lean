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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A214000: Number of twin prime pairs between two consecutive prime triples (p, p+2, p+6).

The programs for A214000, there is no canonical definition to state claims against.
-/

/-! ## A214000.P7435169916070048626

`A081308(n+1)%A003557(A164172(n))`
-/

namespace A214000.P7435169916070048626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081308 (n + 1)) (A003557 (A164172 n).toNat)

end

end A214000.P7435169916070048626

/-! ## A214000.P14876672585429831624

`and(A081308(n+1), A167614(A282120(n)))`
-/

namespace A214000.P14876672585429831624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081308 (n + 1)) (A167614 (A282120 n).toNat)

end

end A214000.P14876672585429831624

/-! ## A214000.P11748974303644837344

`A111271(n+1)%A000005(A153588(n+1))`
-/

namespace A214000.P11748974303644837344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111271 (n + 1)) (A000005 (A153588 (n + 1)).toNat)

end

end A214000.P11748974303644837344

/-!
# A214002: Number of compositions of n into ceiling(n/2) parts with 1 <= each part <=4.

The programs for A214002, there is no canonical definition to state claims against.
-/

/-! ## A214002.P16859949475639760790

`A186332(∑[or(1, n)])`
-/

namespace A214002.P16859949475639760790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186332 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214002.P16859949475639760790

/-! ## A214002.P9916582340407966437

`A213887(∑[or(1, n)+1])`
-/

namespace A214002.P9916582340407966437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214002.P9916582340407966437

/-! ## A214002.P5978539010319914925

`A213887(floor((n+2)²/2))`
-/

namespace A214002.P5978539010319914925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 ⌊((n + 2) ^ 2 : ℚ) / 2⌋.toNat

end

end A214002.P5978539010319914925

/-! ## A214002.P3972359375654551373

`A186332(∑[char[2*n]+n])`
-/

namespace A214002.P3972359375654551373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186332 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214002.P3972359375654551373

/-! ## A214002.P10636813402655928329

`A008287(∑[gcd(n%2, comp[3*n])])`
-/

namespace A214002.P10636813402655928329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n % 2) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214002.P10636813402655928329

/-!
# A214003: Number of degree-n permutations of prime order.

The programs for A214003, there is no canonical definition to state claims against.
-/

/-! ## A214003.P11195420377194974422

`A060181(n+1)-1`
-/

namespace A214003.P11195420377194974422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060181 (n + 1) - 1

end

end A214003.P11195420377194974422

/-! ## A214003.P7407815500975692202

`A181954(n+1)-A186202(n+1)`
-/

namespace A214003.P7407815500975692202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181954 (n + 1) - A186202 (n + 1)

end

end A214003.P7407815500975692202

/-! ## A214003.P2622512588490588113

`A087960(Δ[A032766(n)])+A060181(n+1)`
-/

namespace A214003.P2622512588490588113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (f1 (n + 1) - f1 n).toNat + A060181 (n + 1)

end

end A214003.P2622512588490588113

/-! ## A214003.P2861949888226544694

`A001465(n+1)+A181955(n+1)-A181951(n+1)`
-/

namespace A214003.P2861949888226544694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 (n + 1) + (A181955 (n + 1) - A181951 (n + 1))

end

end A214003.P2861949888226544694

/-! ## A214003.P15124264581504772196

`A181954(n+1)-(A181951(n+1)+A001465(n+1))`
-/

namespace A214003.P15124264581504772196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181954 (n + 1) - (A181951 (n + 1) + A001465 (n + 1))

end

end A214003.P15124264581504772196

/-!
# A214005: Number of n X n nonnegative integer matrices with row and column i=1..n having sum <= i.

The programs for A214005, there is no canonical definition to state claims against.
-/

/-! ## A214005.P9987325978691672532

`A214011(∑[n+1])`
-/

namespace A214005.P9987325978691672532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214005.P9987325978691672532

/-! ## A214005.P17382047610670666432

`record[A214011(A130270(n+1))]`
-/

namespace A214005.P17382047610670666432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214005.P17382047610670666432

/-! ## A214005.P18422009235518201066

`record[A214011(A134546(n+1))]`
-/

namespace A214005.P18422009235518201066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (A134546 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214005.P18422009235518201066

/-! ## A214005.P16119136160220822254

`record[A214011(A135223(n+1))]`
-/

namespace A214005.P16119136160220822254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (A135223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214005.P16119136160220822254

/-!
# A214006: Number of n X n nonnegative integer matrices with row and column i=1..n having sum <= i*2.

The programs for A214006, there is no canonical definition to state claims against.
-/

/-! ## A214006.P9750731075591353700

`A214011(∑[n+2])`
-/

namespace A214006.P9750731075591353700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214006.P9750731075591353700

/-!
# A214007: Number of n X n nonnegative integer matrices with row and column i=1..n having sum <= i*3.

The programs for A214007, there is no canonical definition to state claims against.
-/

/-! ## A214007.P570412968805963507

`A214011(∑[n+3]+1)`
-/

namespace A214007.P570412968805963507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214007.P570412968805963507

/-!
# A214008: 

The programs for A214008, there is no canonical definition to state claims against.
-/

/-! ## A214008.P7204778555945640469

`A214011(A155212(n)+5)`
-/

namespace A214008.P7204778555945640469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (A155212 n + 5).toNat

end

end A214008.P7204778555945640469

/-!
# A214012: Number of 3X3 nonnegative integer matrices with row and column i=1..3 having sum <= i*n.

The programs for A214012, there is no canonical definition to state claims against.
-/

/-! ## A214012.P17861593711045579225

`A214011(∑[n+2]+4)`
-/

namespace A214012.P17861593711045579225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214012.P17861593711045579225

/-! ## A214012.P15895369270926274298

`A214011(A167614(n+1))+A025462(n)`
-/

namespace A214012.P15895369270926274298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (A167614 (n + 1)).toNat + A025462 n

end

end A214012.P15895369270926274298

/-! ## A214012.P7718010137600002325

`A214011(A167614(n+1))+A059995(n)`
-/

namespace A214012.P7718010137600002325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (A167614 (n + 1)).toNat + A059995 n

end

end A214012.P7718010137600002325

/-!
# A214014: 

The programs for A214014, there is no canonical definition to state claims against.
-/

/-! ## A214014.P1690849580338227654

`A214011(A167499(n+3))`
-/

namespace A214014.P1690849580338227654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214011 (A167499 (n + 3)).toNat

end

end A214014.P1690849580338227654

/-!
# A214015: Number of permutations A(n,k) in S_n with longest increasing subsequence of length <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214015, there is no canonical definition to state claims against.
-/

/-! ## A214015.P195402121824855395

`A048766(A000217(A288942(n)²))`
-/

namespace A214015.P195402121824855395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000217 (A288942 n ^ 2).toNat).toNat

end

end A214015.P195402121824855395

/-! ## A214015.P13775432442618529591

`A163352(A294250(n)+A294220(n))`
-/

namespace A214015.P13775432442618529591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A294250 n + A294220 n).toNat

end

end A214015.P13775432442618529591

/-! ## A214015.P6856703445870036116

`A163352(A240608(n)*A294220(n))`
-/

namespace A214015.P6856703445870036116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A240608 n * A294220 n).toNat

end

end A214015.P6856703445870036116

/-! ## A214015.P12966203989735855832

`A089633(A288942(n)^(A128402(n+1)%2))`
-/

namespace A214015.P12966203989735855832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (SequenceMachineLib.roundAway ((A288942 n : ℚ) ^ (Int.tmod (A128402 (n + 1)) 2 : ℤ))).toNat

end

end A214015.P12966203989735855832

/-! ## A214015.P8283650433208338871

`A364663(A267479(n))`
-/

namespace A214015.P8283650433208338871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364663 (A267479 n).toNat

end

end A214015.P8283650433208338871

/-!
# A214016: Poulet numbers (2-pseudoprimes) of the form 7200*n^2 + 8820*n + 2701.

The programs for A214016, there is no canonical definition to state claims against.
-/

/-! ## A214016.P209411838862540273

`∩[A153513(A068106(2*(n+2))), A153513(n+1)]`
-/

namespace A214016.P209411838862540273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153513 (A068106 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214016.P209411838862540273

/-!
# A214017: Poulet numbers (2-pseudoprimes) of the form 144*n^2 + 222*n + 85.

The programs for A214017, there is no canonical definition to state claims against.
-/

/-! ## A214017.P9246980289034359201

`∩[A001107(3*n+2), A001567(n+1)]`
-/

namespace A214017.P9246980289034359201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214017.P9246980289034359201

/-! ## A214017.P5452149372992947853

`∩[A074377(3*(n+1)), A001567(n+1)]`
-/

namespace A214017.P5452149372992947853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214017.P5452149372992947853

/-! ## A214017.P7428661709617500684

`∩[A074377(3*(n+1)), A215326(n+1)]`
-/

namespace A214017.P7428661709617500684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214017.P7428661709617500684

/-! ## A214017.P5256542723342309383

`∩[A074377(3*(n+1)), A321870(n+1)]`
-/

namespace A214017.P5256542723342309383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214017.P5256542723342309383

/-! ## A214017.P819272804328876652

`∩[A011848(3*n+1), A001567(n+1)]`
-/

namespace A214017.P819272804328876652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214017.P819272804328876652

/-!
# A214018: Least k >= 1, such that prime(n) + k has the form 2^m * q, m >= 0, where q >= 2 is prime.

The programs for A214018, there is no canonical definition to state claims against.
-/

/-! ## A214018.P11607438202967467516

`A103961(p?[A193967((n+1)/2^val(n+1, 2))])`
-/

namespace A214018.P11607438202967467516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193967 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214018.P11607438202967467516

/-! ## A214018.P18179137417047978663

`A103961(p?[A193967(A000265(n+1))])`
-/

namespace A214018.P18179137417047978663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193967 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214018.P18179137417047978663

/-! ## A214018.P1059370633089626081

`gcd(A033630(A342989(n+2)), A256417(n+1))`
-/

namespace A214018.P1059370633089626081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033630 (A342989 (n + 2)).toNat) (A256417 (n + 1))

end

end A214018.P1059370633089626081

/-! ## A214018.P17290945750941874042

`gcd(A029518(A057024(n+1)), A275806(3*n+1))`
-/

namespace A214018.P17290945750941874042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029518 (A057024 (n + 1)).toNat) (A275806 (3 * n + 1))

end

end A214018.P17290945750941874042

/-! ## A214018.P5725319333083800414

`A116479(A029652(n+2))`
-/

namespace A214018.P5725319333083800414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116479 (A029652 (n + 2)).toNat

end

end A214018.P5725319333083800414

/-!
# A214020: Number A(n,k) of n X k chess tableaux; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214020, there is no canonical definition to state claims against.
-/

/-! ## A214020.P17174057374241461191

`A115382(A374985(n))`
-/

namespace A214020.P17174057374241461191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115382 (A374985 n).toNat

end

end A214020.P17174057374241461191

/-! ## A214020.P12705114404021925879

`A178725(A299905(n))`
-/

namespace A214020.P12705114404021925879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178725 (A299905 n).toNat

end

end A214020.P12705114404021925879

/-! ## A214020.P7929141286238462073

`A116799(A384123(n))`
-/

namespace A214020.P7929141286238462073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116799 (A384123 n).toNat

end

end A214020.P7929141286238462073

/-! ## A214020.P1198198772096572888

`A257217(A328747(n))`
-/

namespace A214020.P1198198772096572888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257217 (A328747 n).toNat

end

end A214020.P1198198772096572888

/-! ## A214020.P18247455855101379699

`A336939(A384122(n))`
-/

namespace A214020.P18247455855101379699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336939 (A384122 n).toNat

end

end A214020.P18247455855101379699

/-!
# A214021: Number A(n,k) of n X k nonconsecutive tableaux; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214021, there is no canonical definition to state claims against.
-/

/-! ## A214021.P12188986816428717705

`A234954(A293718(n+1))`
-/

namespace A214021.P12188986816428717705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234954 (A293718 (n + 1)).toNat

end

end A214021.P12188986816428717705

/-! ## A214021.P10399115221574537144

`A201910(A195644(n+2)+1)`
-/

namespace A214021.P10399115221574537144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201910 (A195644 (n + 2) + 1).toNat

end

end A214021.P10399115221574537144

/-! ## A214021.P11050502044102422199

`A260683(A287641(n*a(n-1)+1))` with `a(0)=1`
-/

namespace A214021.P11050502044102422199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260683 (A287641 ((n : ℤ) * a (n - 1) + 1).toNat).toNat

end

end A214021.P11050502044102422199

/-! ## A214021.P12875839993911549244

`A260683(A287641(n+1)^a(n-1))` with `a(0)=1`
-/

namespace A214021.P12875839993911549244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260683 (SequenceMachineLib.roundAway ((A287641 (n + 1) : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A214021.P12875839993911549244

/-! ## A214021.P8204894117254225939

`gcd(A275784(n), A329258(A275784(n)))`
-/

namespace A214021.P8204894117254225939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275784 n) (A329258 (A275784 n).toNat)

end

end A214021.P8204894117254225939

/-!
# A214027: The number of zeros in the fundamental Pisano period of the sequence A000129 mod n.

The programs for A214027, there is no canonical definition to state claims against.
-/

/-! ## A214027.P8805741459214456136

`A175181(n+1)/A214028(n+1)`
-/

namespace A214027.P8805741459214456136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175181 (n + 1) : ℚ) / (A214028 (n + 1) : ℚ)

end

end A214027.P8805741459214456136

/-! ## A214027.P703590703524764076

`gcd(A007733(n+1), A301273(A080249(n)))`
-/

namespace A214027.P703590703524764076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007733 (n + 1)) (A301273 (A080249 n).toNat)

end

end A214027.P703590703524764076

/-! ## A214027.P17010985964022400634

`gcd(∏{p}[n+1, 1-#], A271724(A058958(n+2)))`
-/

namespace A214027.P17010985964022400634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) (A271724 (A058958 (n + 2)).toNat)

end

end A214027.P17010985964022400634

/-! ## A214027.P17597691213832812129

`gcd(A007739(n+1), A090738(A001595(n)))`
-/

namespace A214027.P17597691213832812129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007739 (n + 1)) (A090738 (A001595 n).toNat)

end

end A214027.P17597691213832812129

/-! ## A214027.P1861595134316091962

`gcd(A023900(n+1), A167865(A002988(n)))`
-/

namespace A214027.P1861595134316091962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023900 (n + 1)) (A167865 (A002988 n).toNat)

end

end A214027.P1861595134316091962

/-!
# A214028: Entry points for the Pell sequence: smallest k such that n divides A000129(k).

The programs for A214028, there is no canonical definition to state claims against.
-/

/-! ## A214028.P6320813305477413875

`A175181(n+1)/A214027(n+1)`
-/

namespace A214028.P6320813305477413875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175181 (n + 1) : ℚ) / (A214027 (n + 1) : ℚ)

end

end A214028.P6320813305477413875

/-! ## A214028.P12591015390741247031

`A262212(ceil(acot(n)+n))%Δ[n²]+1`
-/

namespace A214028.P12591015390741247031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262212 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A214028.P12591015390741247031

/-! ## A214028.P5881188157152521892

`A214027(A002522(2*n+1))*A298210(n+1)`
-/

namespace A214028.P5881188157152521892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A002522 (2 * n + 1)).toNat * A298210 (n + 1)

end

end A214028.P5881188157152521892

/-! ## A214028.P6680051242961275698

`A321476(∑[n-char[1]]+n+1)`
-/

namespace A214028.P6680051242961275698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321476 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1).toNat

end

end A214028.P6680051242961275698

/-!
# A214029: The union of the disjoint prime sequences A000057 and A106535.

The programs for A214029, there is no canonical definition to state claims against.
-/

/-! ## A214029.P8349874590634742875

`p?[A270839(n+1)]`
-/

namespace A214029.P8349874590634742875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214029.P8349874590634742875

/-! ## A214029.P6429935176878988291

`A079346(floor(atan(n))+n+1)`
-/

namespace A214029.P6429935176878988291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (⌊Real.arctan (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A214029.P6429935176878988291

/-! ## A214029.P12207442991285160659

`A079346(floor(3/acot(n))-comp[2*n+3])`
-/

namespace A214029.P12207442991285160659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A214029.P12207442991285160659

/-! ## A214029.P17696987015256253101

`A079346(C(2, C(3, n²))+n-(abs(1-n)-n))`
-/

namespace A214029.P17696987015256253101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 ((Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n : ℤ) - (|1 - (n : ℤ)| - (n : ℤ))).toNat

end

end A214029.P17696987015256253101

/-! ## A214029.P17181203122978434488

`A079346(A326178(n+1))`
-/

namespace A214029.P17181203122978434488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (A326178 (n + 1)).toNat

end

end A214029.P17181203122978434488

/-! ## A214029.P6612204788641881509

`A348747(A079346(n+2))`
-/

namespace A214029.P6612204788641881509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (A079346 (n + 2)).toNat

end

end A214029.P6612204788641881509

/-! ## A214029.P9830996178279662205

`p?[record[A270839(A133310(n))]]`
-/

namespace A214029.P9830996178279662205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270839 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214029.P9830996178279662205

/-! ## A214029.P3807493253070863642

`record[A072438(A079346(n+1))]`
-/

namespace A214029.P3807493253070863642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A079346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214029.P3807493253070863642

/-! ## A214029.P12854078911714757360

`filter[A079346(n+1), A011558(#)]`
-/

namespace A214029.P12854078911714757360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A214029.P12854078911714757360

/-! ## A214029.P18061664268735966815

`filter[A079346(n+1), A021913(#)]`
-/

namespace A214029.P18061664268735966815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A214029.P18061664268735966815

/-!
# A214031: Fixed points of A214030.

The programs for A214031, there is no canonical definition to state claims against.
-/

/-! ## A214031.P6314881682308343532

`∩[A155488(n+1), A214033(n+1)]`
-/

namespace A214031.P6314881682308343532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214031.P6314881682308343532

/-! ## A214031.P17728864672380863430

`∩[A214033(n+1), A293859(n+2)]`
-/

namespace A214031.P17728864672380863430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214031.P17728864672380863430

/-! ## A214031.P3521730680875071566

`∩[A038888(n+1), A214033(n+1)]`
-/

namespace A214031.P3521730680875071566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214031.P3521730680875071566

/-!
# A214032: Places n where A214030(n) = n-2.

The programs for A214032, there is no canonical definition to state claims against.
-/

/-! ## A214032.P18193037527374670866

`∩[A214033(n+1), A097956(n+2)]`
-/

namespace A214032.P18193037527374670866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097956 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214032.P18193037527374670866

/-! ## A214032.P1153914583861375061

`∩[A214033(n+1), A038887(n+2)]`
-/

namespace A214032.P1153914583861375061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214032.P1153914583861375061

/-! ## A214032.P15784076200669602273

`∩[A214033(n+1), A296925(n+1)]`
-/

namespace A214032.P15784076200669602273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214032.P15784076200669602273

/-!
# A214033: Places n where A214030(n) = n or A214030(n) = n-2.

The programs for A214033, there is no canonical definition to state claims against.
-/

/-! ## A214033.P3891707596096411921

`∪[A214031(n+1), record[A214032(n+1)]]`
-/

namespace A214033.P3891707596096411921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214031 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214033.P3891707596096411921

/-! ## A214033.P8900265354414354757

`∩[A191059(n+1), A357304(n+1)]`
-/

namespace A214033.P8900265354414354757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214033.P8900265354414354757

/-! ## A214033.P6035243455077658298

`A191059(lt[A056040(n), A064173(2*(n+1))])`
-/

namespace A214033.P6035243455077658298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214033.P6035243455077658298

/-!
# A214036: Numbers k such that floor(sqrt(1)) + floor(sqrt(2)) + floor(sqrt(3)) + ... + floor(sqrt(k)) is prime.

The programs for A214036, there is no canonical definition to state claims against.
-/

/-! ## A214036.P4448980693423860310

`eq[1, ∑{e}[A022554(n), #]]`
-/

namespace A214036.P4448980693423860310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214036.P4448980693423860310

/-! ## A214036.P10198590062179965523

`eq[1, ∑{e}[∑[A000196(n)], #]]`
-/

namespace A214036.P10198590062179965523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214036.P10198590062179965523

/-! ## A214036.P11271284727921869405

`eq[0, A007920(A022554(n))]`
-/

namespace A214036.P11271284727921869405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A022554 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214036.P11271284727921869405

/-! ## A214036.P10970727735579411145

`eq[1, A032741(∑[A000196(n)])]`
-/

namespace A214036.P10970727735579411145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214036.P10970727735579411145

/-! ## A214036.P3888552628250097124

`lt[A007920(∑[A000196(n)]), 1]`
-/

namespace A214036.P3888552628250097124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A214036.P3888552628250097124

/-!
# A214039: a(n) = a(n-1) - floor((a(n-2) + a(n-3))/2), with a(n)=n for n < 3.

The programs for A214039, the canonical program `A214039.P5441256475435190187` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214039 has offset 0).

The definition of A214039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-floor((a(n-2)+a(n-3))/2)` (program `A214039.P5441256475435190187`, by `A214039.P5441256475435190187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214039.P5441256475435190187

`a(n-1)-floor((a(n-2)+a(n-3))/2)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214039

/-- `a(n-1)-floor((a(n-2)+a(n-3))/2)` -/
def P5441256475435190187.Spec : Prop :=
  ∀ n, P5441256475435190187.a n = A214039 n

theorem P5441256475435190187.correct : P5441256475435190187.Spec := by
  intro n
  simp only [A214039]

end A214039

/-!
# A214040: a(n)=a(n-1)+floor((a(n-2)+a(n-3))/2), with a(n)=n for n

The programs for A214040, the canonical program `A214040.P7478059747525874263` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214040 has offset 0).

The definition of A214040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor((a(n-2)+a(n-3))/2)` (program `A214040.P7478059747525874263`, by `A214040.P7478059747525874263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214040.P7478059747525874263

`a(n-1)+floor((a(n-2)+a(n-3))/2)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214040

/-- `a(n-1)+floor((a(n-2)+a(n-3))/2)` -/
def P7478059747525874263.Spec : Prop :=
  ∀ n, P7478059747525874263.a n = A214040 n

theorem P7478059747525874263.correct : P7478059747525874263.Spec := by
  intro n
  simp only [A214040]

end A214040

/-! ## A214040.P12511894587109665478

`A135664(A360045(n))`
-/

namespace A214040.P12511894587109665478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A360045 n).toNat

end

end A214040.P12511894587109665478

namespace A214040

/-- `A135664(A360045(n))` -/
def P12511894587109665478.Spec : Prop :=
  ∀ n, P12511894587109665478.a n = A214040 n

end A214040

/-! ## A214040.P5319787430395777036

`A000196(A002525(n)+n)`
-/

namespace A214040.P5319787430395777036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002525 n + (n : ℤ)).toNat

end

end A214040.P5319787430395777036

namespace A214040

/-- `A000196(A002525(n)+n)` -/
def P5319787430395777036.Spec : Prop :=
  ∀ n, P5319787430395777036.a n = A214040 n

end A214040

/-! ## A214040.P18004017329657134757

`A178786(A002525(n)+n)`
-/

namespace A214040.P18004017329657134757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A002525 n + (n : ℤ)).toNat

end

end A214040.P18004017329657134757

namespace A214040

/-- `A178786(A002525(n)+n)` -/
def P18004017329657134757.Spec : Prop :=
  ∀ n, P18004017329657134757.a n = A214040 n

end A214040

/-! ## A214040.P9215637550319972205

`A000194(A275864(n)-1+n)`
-/

namespace A214040.P9215637550319972205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A275864 n - 1 + (n : ℤ)).toNat

end

end A214040.P9215637550319972205

namespace A214040

/-- `A000194(A275864(n)-1+n)` -/
def P9215637550319972205.Spec : Prop :=
  ∀ n, P9215637550319972205.a n = A214040 n

end A214040

/-!
# A214041: a(n) = a(n-1) + floor((a(n-2) + a(n-3))/2), with a(n)=1 for n < 3.

The programs for A214041, the canonical program `A214041.P46081423424227340` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214041 has offset 0).

The definition of A214041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor((a(n-2)+a(n-3))/2)` (program `A214041.P46081423424227340`, by `A214041.P46081423424227340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214041.P46081423424227340

`a(n-1)+floor((a(n-2)+a(n-3))/2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214041

/-- `a(n-1)+floor((a(n-2)+a(n-3))/2)` -/
def P46081423424227340.Spec : Prop :=
  ∀ n, P46081423424227340.a n = A214041 n

theorem P46081423424227340.correct : P46081423424227340.Spec := by
  intro n
  simp only [A214041]

end A214041

/-! ## A214041.P3213688760115381100

`ceil(A000351(n)/A302322(A000217(n+2)-1))`
-/

namespace A214041.P3213688760115381100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000351 n : ℚ) / (A302322 (A000217 (n + 2) - 1).toNat : ℚ)⌉

end

end A214041.P3213688760115381100

namespace A214041

/-- `ceil(A000351(n)/A302322(A000217(n+2)-1))` -/
def P3213688760115381100.Spec : Prop :=
  ∀ n, P3213688760115381100.a n = A214041 n

end A214041

/-! ## A214041.P13815181956401588165

`A293137(∑[A035435(∑[n])])`
-/

namespace A214041.P13815181956401588165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035435 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214041.P13815181956401588165

namespace A214041

/-- `A293137(∑[A035435(∑[n])])` -/
def P13815181956401588165.Spec : Prop :=
  ∀ n, P13815181956401588165.a n = A214041 n

end A214041

/-! ## A214041.P10313198504404759087

`A004525(A001462(∑[A057755(n)]))`
-/

namespace A214041.P10313198504404759087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A214041.P10313198504404759087

namespace A214041

/-- `A004525(A001462(∑[A057755(n)]))` -/
def P10313198504404759087.Spec : Prop :=
  ∀ n, P10313198504404759087.a n = A214041 n

end A214041

/-! ## A214041.P1533275216997603864

`A005041(A119340(n)-A007326(n))`
-/

namespace A214041.P1533275216997603864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A119340 n - A007326 n).toNat

end

end A214041.P1533275216997603864

namespace A214041

/-- `A005041(A119340(n)-A007326(n))` -/
def P1533275216997603864.Spec : Prop :=
  ∀ n, P1533275216997603864.a n = A214041 n

end A214041

/-!
# A214045: Least m>0 such that n! <= 5^m.

The programs for A214045, the canonical program `A214045.P5494443989804266643` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214045 has offset 1).

The definition of A214045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214045.P14368975006675326971

`floor(∑[log(n+1)/log(5)])+1`
-/

namespace A214045.P14368975006675326971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ) / Real.log (5 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A214045.P14368975006675326971

namespace A214045

/-- `floor(∑[log(n+1)/log(5)])+1` -/
def P14368975006675326971.Spec : Prop :=
  ∀ n, P14368975006675326971.a n = A214045 (n + 1)

end A214045

/-! ## A214045.P5494443989804266643

`abs(xor(-1, A127032(n+1)))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214045

/-- `abs(xor(-1, A127032(n+1)))` -/
def P5494443989804266643.Spec : Prop :=
  ∀ n, P5494443989804266643.a n = A214045 (n + 1)

theorem P5494443989804266643.correct : P5494443989804266643.Spec := by
  intro n
  simp only [A214045, Nat.add_sub_cancel]

end A214045

/-! ## A214045.P6755576582018874270

`A000027(A127032(n+1)+1)`
-/

namespace A214045.P6755576582018874270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A127032 (n + 1) + 1).toNat

end

end A214045.P6755576582018874270

namespace A214045

/-- `A000027(A127032(n+1)+1)` -/
def P6755576582018874270.Spec : Prop :=
  ∀ n, P6755576582018874270.a n = A214045 (n + 1)

end A214045

/-! ## A214045.P5322946431833366750

`(A127032(n+1)+1)*A007318(C(2, n))`
-/

namespace A214045.P5322946431833366750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127032 (n + 1) + 1) * A007318 (Nat.choose 2 n)

end

end A214045.P5322946431833366750

namespace A214045

/-- `(A127032(n+1)+1)*A007318(C(2, n))` -/
def P5322946431833366750.Spec : Prop :=
  ∀ n, P5322946431833366750.a n = A214045 (n + 1)

end A214045

/-! ## A214045.P13667919081016896058

`(A127032(n+1)+1)^A000041(C(3, n²))`
-/

namespace A214045.P13667919081016896058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127032 (n + 1) + 1 : ℚ) ^ (A000041 (Nat.choose 3 (n ^ 2)) : ℤ)

end

end A214045.P13667919081016896058

namespace A214045

/-- `(A127032(n+1)+1)^A000041(C(3, n²))` -/
def P13667919081016896058.Spec : Prop :=
  ∀ n, P13667919081016896058.a n = (A214045 (n + 1) : ℚ)

end A214045

/-! ## A214045.P5492307976512336183

`A028310(A127032(n+1)+1)`
-/

namespace A214045.P5492307976512336183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A127032 (n + 1) + 1).toNat

end

end A214045.P5492307976512336183

namespace A214045

/-- `A028310(A127032(n+1)+1)` -/
def P5492307976512336183.Spec : Prop :=
  ∀ n, P5492307976512336183.a n = A214045 (n + 1)

end A214045

/-! ## A214045.P3520734142409494143

`A023443(A127032(n+1)+2)`
-/

namespace A214045.P3520734142409494143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A127032 (n + 1) + 2).toNat

end

end A214045.P3520734142409494143

namespace A214045

/-- `A023443(A127032(n+1)+2)` -/
def P3520734142409494143.Spec : Prop :=
  ∀ n, P3520734142409494143.a n = A214045 (n + 1)

end A214045

/-! ## A214045.P1867012195778355100

`A080513(2*A127032(n+1))`
-/

namespace A214045.P1867012195778355100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A127032 (n + 1)).toNat

end

end A214045.P1867012195778355100

namespace A214045

/-- `A080513(2*A127032(n+1))` -/
def P1867012195778355100.Spec : Prop :=
  ∀ n, P1867012195778355100.a n = A214045 (n + 1)

end A214045

/-! ## A214045.P3438184714897639319

`(A127032(n+1)+1)%∑[A000032(n)]`
-/

namespace A214045.P3438184714897639319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127032 (n + 1) + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214045.P3438184714897639319

namespace A214045

/-- `(A127032(n+1)+1)%∑[A000032(n)]` -/
def P3438184714897639319.Spec : Prop :=
  ∀ n, P3438184714897639319.a n = A214045 (n + 1)

end A214045

/-!
# A214046: Least m>0 such that n! <= m^n.

The programs for A214046, the canonical program `A214046.P3375513513788457765` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214046 has offset 1).

The definition of A214046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214046.P14147866275570001365

`ceil(exp(∑[log(n+1)]/(n+1)))`
-/

namespace A214046.P14147866275570001365
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((∑ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℝ))⌉

end

end A214046.P14147866275570001365

namespace A214046

/-- `ceil(exp(∑[log(n+1)]/(n+1)))` -/
def P14147866275570001365.Spec : Prop :=
  ∀ n, P14147866275570001365.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P9862358100885224124

`∑[char[A065027(n)-1]]`
-/

namespace A214046.P9862358100885224124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214046.P9862358100885224124

namespace A214046

/-- `∑[char[A065027(n)-1]]` -/
def P9862358100885224124.Spec : Prop :=
  ∀ n, (P9862358100885224124.a n : ℤ) = A214046 (n + 1)

end A214046

/-! ## A214046.P11321915716756313477

`round(A061375(n+1)+atan(atan(n)))`
-/

namespace A214046.P11321915716756313477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061375 (n + 1) : ℝ) + Real.arctan (Real.arctan (n : ℝ)))

end

end A214046.P11321915716756313477

namespace A214046

/-- `round(A061375(n+1)+atan(atan(n)))` -/
def P11321915716756313477.Spec : Prop :=
  ∀ n, P11321915716756313477.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P3375513513788457765

`A061375(n+1)+A057427(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214046

/-- `A061375(n+1)+A057427(n)` -/
def P3375513513788457765.Spec : Prop :=
  ∀ n, P3375513513788457765.a n = A214046 (n + 1)

theorem P3375513513788457765.correct : P3375513513788457765.Spec := by
  intro n
  simp only [A214046, Nat.add_sub_cancel]

end A214046

/-! ## A214046.P14851908323726581082

`A061375(n+1)-A057428(n)`
-/

namespace A214046.P14851908323726581082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) - A057428 n

end

end A214046.P14851908323726581082

namespace A214046

/-- `A061375(n+1)-A057428(n)` -/
def P14851908323726581082.Spec : Prop :=
  ∀ n, P14851908323726581082.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P17342304801111424752

`A061375(n+1)+1-A000007(n)`
-/

namespace A214046.P17342304801111424752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) + (1 - A000007 n)

end

end A214046.P17342304801111424752

namespace A214046

/-- `A061375(n+1)+1-A000007(n)` -/
def P17342304801111424752.Spec : Prop :=
  ∀ n, P17342304801111424752.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P15849845874165086256

`A061375(n+1)+A160357(a(n-2))²` with `a(0)=1, a(1)=2`
-/

namespace A214046.P15849845874165086256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A061375 (n + 1) + A160357 (a (n - 2)).toNat ^ 2

end

end A214046.P15849845874165086256

namespace A214046

/-- `A061375(n+1)+A160357(a(n-2))²` -/
def P15849845874165086256.Spec : Prop :=
  ∀ n, P15849845874165086256.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P9804378679630765565

`A061375(n+1)-(∑[n+1]-A134869(n+1))`
-/

namespace A214046.P9804378679630765565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A134869 (n + 1))

end

end A214046.P9804378679630765565

namespace A214046

/-- `A061375(n+1)-(∑[n+1]-A134869(n+1))` -/
def P9804378679630765565.Spec : Prop :=
  ∀ n, P9804378679630765565.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P17109264583148760707

`A061375(n+1)+A000007(A000007(n)*A061375(n+1))`
-/

namespace A214046.P17109264583148760707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) + A000007 (A000007 n * A061375 (n + 1)).toNat

end

end A214046.P17109264583148760707

namespace A214046

/-- `A061375(n+1)+A000007(A000007(n)*A061375(n+1))` -/
def P17109264583148760707.Spec : Prop :=
  ∀ n, P17109264583148760707.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P4265917491772622982

`A061375(n+1)+A057428(A023115(n+1))*A057428(n)`
-/

namespace A214046.P4265917491772622982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) + A057428 (A023115 (n + 1)).toNat * A057428 n

end

end A214046.P4265917491772622982

namespace A214046

/-- `A061375(n+1)+A057428(A023115(n+1))*A057428(n)` -/
def P4265917491772622982.Spec : Prop :=
  ∀ n, P4265917491772622982.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P155073008956120846

`A061375(n+1)+A000007(A000007(n)/A061375(n+1))`
-/

namespace A214046.P155073008956120846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) + A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A061375 (n + 1) : ℚ))).toNat

end

end A214046.P155073008956120846

namespace A214046

/-- `A061375(n+1)+A000007(A000007(n)/A061375(n+1))` -/
def P155073008956120846.Spec : Prop :=
  ∀ n, P155073008956120846.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P2702866059369558180

`A061375(n+1)-A000010(A061397(3*(n+1))+1)+2`
-/

namespace A214046.P2702866059369558180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) - A000010 (A061397 (3 * (n + 1)) + 1).toNat + 2

end

end A214046.P2702866059369558180

namespace A214046

/-- `A061375(n+1)-A000010(A061397(3*(n+1))+1)+2` -/
def P2702866059369558180.Spec : Prop :=
  ∀ n, P2702866059369558180.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P16598106897472334107

`A061375(n+1)+A000007(A000007(n)*A301832(n))`
-/

namespace A214046.P16598106897472334107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) + A000007 (A000007 n * A301832 n).toNat

end

end A214046.P16598106897472334107

namespace A214046

/-- `A061375(n+1)+A000007(A000007(n)*A301832(n))` -/
def P16598106897472334107.Spec : Prop :=
  ∀ n, P16598106897472334107.a n = A214046 (n + 1)

end A214046

/-! ## A214046.P1282542003106921953

`A061375(n+1)+A000007(A000007(n)/A301832(n))`
-/

namespace A214046.P1282542003106921953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 1) + A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A301832 n : ℚ))).toNat

end

end A214046.P1282542003106921953

namespace A214046

/-- `A061375(n+1)+A000007(A000007(n)/A301832(n))` -/
def P1282542003106921953.Spec : Prop :=
  ∀ n, P1282542003106921953.a n = A214046 (n + 1)

end A214046

/-!
# A214047: Least m>0 such that n! <= (3/2)^m.

The programs for A214047, there is no canonical definition to state claims against.
-/

/-! ## A214047.P16672403086076831233

`ceil((A000006(A135712(n))-A000096(n))/2)`
-/

namespace A214047.P16672403086076831233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000006 (A135712 n).toNat - A000096 n : ℚ) / 2⌉

end

end A214047.P16672403086076831233

/-! ## A214047.P11302365813422164521

`A065033(A000006(A135712(n))-A000096(n))`
-/

namespace A214047.P11302365813422164521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000006 (A135712 n).toNat - A000096 n).toNat

end

end A214047.P11302365813422164521

/-! ## A214047.P14051956511086919151

`floor(∑[A103586(A168547(n))/2])`
-/

namespace A214047.P14051956511086919151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103586 (A168547 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A214047.P14051956511086919151

/-! ## A214047.P1945313599712750801

`A008619(∑[A029837(A008412(n))])`
-/

namespace A214047.P1945313599712750801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A008412 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214047.P1945313599712750801

/-! ## A214047.P810924407795804061

`A004526(∑[A103586(A168547(n))])`
-/

namespace A214047.P810924407795804061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 (A168547 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214047.P810924407795804061

/-!
# A214048: Least m>0 such that n! <= r^m, where r = (1+sqrt(5))/2, the golden ratio.

The programs for A214048, there is no canonical definition to state claims against.
-/

/-! ## A214048.P16255079432700230809

`∑[A003434(p?[A332106(n)])]`
-/

namespace A214048.P16255079432700230809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214048.P16255079432700230809

/-! ## A214048.P16372781395646979729

`A227568(A229621(n+1)²)+A118103(n)`
-/

namespace A214048.P16372781395646979729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A229621 (n + 1) ^ 2).toNat + A118103 n

end

end A214048.P16372781395646979729

/-! ## A214048.P6723635379174761429

`∑[ceil(log2(A177225(3*(n+1))))]`
-/

namespace A214048.P6723635379174761429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A177225 (3 * (n + 1)) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214048.P6723635379174761429

/-! ## A214048.P11012281817179694429

`∑[A060607(A000005(A011782(n)))]`
-/

namespace A214048.P11012281817179694429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060607 (A000005 (A011782 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214048.P11012281817179694429

/-! ## A214048.P10346588500870181726

`a(n-1)+A349520(2*(n+1))+A000035(A329324(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A214048.P10346588500870181726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A349520 (2 * (n + 1)) + A000035 (A329324 (n + 1)).toNat)

end

end A214048.P10346588500870181726

/-!
# A214049: Least m>0 such that n! <= m^3.

The programs for A214049, the canonical program `A214049.P18277440888535409140` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214049 has offset 1).

The definition of A214049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214049.P18277440888535409140

`ceil((n+1)!^(1/3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214049

/-- `ceil((n+1)!^(1/3))` -/
def P18277440888535409140.Spec : Prop :=
  ∀ n, P18277440888535409140.a n = A214049 (n + 1)

theorem P18277440888535409140.correct : P18277440888535409140.Spec := by
  intro n
  simp only [A214049, Nat.add_sub_cancel]

end A214049

/-! ## A214049.P8562278391528979466

`ceil(∏[root(n+1, 3)])`
-/

namespace A214049.P8562278391528979466
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A214049.P8562278391528979466

namespace A214049

/-- `ceil(∏[root(n+1, 3)])` -/
def P8562278391528979466.Spec : Prop :=
  ∀ n, P8562278391528979466.a n = A214049 (n + 1)

end A214049

/-! ## A214049.P6349825024405338528

`A214083(n+1)+A043545(2*n)`
-/

namespace A214049.P6349825024405338528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214083 (n + 1) + A043545 (2 * n)

end

end A214049.P6349825024405338528

namespace A214049

/-- `A214083(n+1)+A043545(2*n)` -/
def P6349825024405338528.Spec : Prop :=
  ∀ n, P6349825024405338528.a n = A214049 (n + 1)

end A214049

/-! ## A214049.P8189010928326170314

`A214083(n+1)+A000225(n)%2`
-/

namespace A214049.P8189010928326170314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214083 (n + 1) + Int.tmod (A000225 n) 2

end

end A214049.P8189010928326170314

namespace A214049

/-- `A214083(n+1)+A000225(n)%2` -/
def P8189010928326170314.Spec : Prop :=
  ∀ n, P8189010928326170314.a n = A214049 (n + 1)

end A214049

/-! ## A214049.P3568471260085366008

`A214083(n+1)+Δ[A007504(n)]%2`
-/

namespace A214049.P3568471260085366008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214083 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A214049.P3568471260085366008

namespace A214049

/-- `A214083(n+1)+Δ[A007504(n)]%2` -/
def P3568471260085366008.Spec : Prop :=
  ∀ n, P3568471260085366008.a n = A214049 (n + 1)

end A214049

/-! ## A214049.P2718122062810038653

`A214083(n+1)+A000040(n+1)%2`
-/

namespace A214049.P2718122062810038653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214083 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A214049.P2718122062810038653

namespace A214049

/-- `A214083(n+1)+A000040(n+1)%2` -/
def P2718122062810038653.Spec : Prop :=
  ∀ n, P2718122062810038653.a n = A214049 (n + 1)

end A214049

/-! ## A214049.P11525530824594871654

`2*n+1+A214083(n+1)-A028310(2*n)`
-/

namespace A214049.P11525530824594871654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A214083 (n + 1) - A028310 (2 * n))

end

end A214049.P11525530824594871654

namespace A214049

/-- `2*n+1+A214083(n+1)-A028310(2*n)` -/
def P11525530824594871654.Spec : Prop :=
  ∀ n, P11525530824594871654.a n = A214049 (n + 1)

end A214049

/-! ## A214049.P14580597489587278598

`A055228(n+1)+A214083(n+1)-A055226(n+1)`
-/

namespace A214049.P14580597489587278598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 (n + 1) + (A214083 (n + 1) - A055226 (n + 1))

end

end A214049.P14580597489587278598

namespace A214049

/-- `A055228(n+1)+A214083(n+1)-A055226(n+1)` -/
def P14580597489587278598.Spec : Prop :=
  ∀ n, P14580597489587278598.a n = A214049 (n + 1)

end A214049

/-!
# A214050: Least m>0 such that n! <= F(m), the m-th Fibonacci number, A000045(m).

The programs for A214050, there is no canonical definition to state claims against.
-/

/-! ## A214050.P10498245651664994241

`∑[A260999(A337769(A327139(n+1)))]`
-/

namespace A214050.P10498245651664994241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A337769 (A327139 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214050.P10498245651664994241

/-! ## A214050.P5640196301083383311

`round(∑[log2(A237886(n+1))])`
-/

namespace A214050.P5640196301083383311
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A237886 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214050.P5640196301083383311

/-! ## A214050.P4772808510522625853

`A259899(A246695(n))+n`
-/

namespace A214050.P4772808510522625853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A246695 n).toNat + (n : ℤ)

end

end A214050.P4772808510522625853

/-! ## A214050.P14440763591780192416

`ceil(log(A293153(n+1)))`
-/

namespace A214050.P14440763591780192416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A293153 (n + 1) : ℝ)⌉

end

end A214050.P14440763591780192416

/-! ## A214050.P10741399123093177801

`∑[floor(sqrt(A295771(n)))]+n`
-/

namespace A214050.P10741399123093177801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A295771 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A214050.P10741399123093177801

/-!
# A214051: Least m>0 such that (1+r)^m >= n!, where r = (1+sqrt(5))/2, the golden ratio.

The programs for A214051, there is no canonical definition to state claims against.
-/

/-! ## A214051.P11938157504698181465

`ceil(A214048(n+1)/2)`
-/

namespace A214051.P11938157504698181465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A214048 (n + 1) : ℚ) / 2⌉

end

end A214051.P11938157504698181465

/-! ## A214051.P10580910685347811114

`A065033(A214048(n+1))`
-/

namespace A214051.P10580910685347811114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A214048 (n + 1)).toNat

end

end A214051.P10580910685347811114

/-! ## A214051.P1919943642809300865

`A004526(A214048(n+1)+1)`
-/

namespace A214051.P1919943642809300865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A214048 (n + 1) + 1).toNat

end

end A214051.P1919943642809300865

/-! ## A214051.P15378578186920036204

`A123108(A214048(n+1)+1)`
-/

namespace A214051.P15378578186920036204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A214048 (n + 1) + 1).toNat

end

end A214051.P15378578186920036204

/-! ## A214051.P1613358997566428026

`A008619(A214048(n+1)-1)`
-/

namespace A214051.P1613358997566428026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A214048 (n + 1) - 1).toNat

end

end A214051.P1613358997566428026

/-! ## A214051.P953954225510701654

`A028242(xor(1, A214048(n+1)))`
-/

namespace A214051.P953954225510701654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A214048 (n + 1))).toNat

end

end A214051.P953954225510701654

/-!
# A214052: Least m>0 such that prime(n)+m and n-m have a common divisor > 1.

The programs for A214052, there is no canonical definition to state claims against.
-/

/-! ## A214052.P11605850553395232228

`(n+1)%A227196(A014688(n+1)²)`
-/

namespace A214052.P11605850553395232228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A227196 (A014688 (n + 1) ^ 2).toNat)

end

end A214052.P11605850553395232228

/-! ## A214052.P6295485842186674936

`A249678(A125718(n+1))%A020639(A014688(n+1))`
-/

namespace A214052.P6295485842186674936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249678 (A125718 (n + 1)).toNat) (A020639 (A014688 (n + 1)).toNat)

end

end A214052.P6295485842186674936

/-! ## A214052.P11120111131856313803

`A090106(A090106(n+1))%A020639(A014688(n+1))`
-/

namespace A214052.P11120111131856313803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090106 (A090106 (n + 1)).toNat) (A020639 (A014688 (n + 1)).toNat)

end

end A214052.P11120111131856313803

/-! ## A214052.P16442505004548225713

`A055396(A001248(n+1))%A020639(A014688(n+1))`
-/

namespace A214052.P16442505004548225713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A001248 (n + 1)).toNat) (A020639 (A014688 (n + 1)).toNat)

end

end A214052.P16442505004548225713

/-! ## A214052.P6131068818771369064

`gcd(∑[A326392(2*n+3)], A343954(2*(n+1)))`
-/

namespace A214052.P6131068818771369064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326392 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A343954 (2 * (n + 1)))

end

end A214052.P6131068818771369064

/-!
# A214053: Least m>0 such that floor(n*r)+m and n-m have a common divisor > 1, where r = (1+sqrt(5))/2, the golden ratio.

The programs for A214053, there is no canonical definition to state claims against.
-/

/-! ## A214053.P2468982709810626411

`gcd(n+1, A167546(3*n+5))`
-/

namespace A214053.P2468982709810626411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A167546 (3 * n + 5))

end

end A214053.P2468982709810626411

/-! ## A214053.P12863296492113896490

`gcd(n+1, A130762(A008706(n)))`
-/

namespace A214053.P12863296492113896490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A130762 (A008706 n).toNat)

end

end A214053.P12863296492113896490

/-! ## A214053.P16767255265600068517

`gcd(A222249(A077168(n)), A306436(n))`
-/

namespace A214053.P16767255265600068517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222249 (A077168 n).toNat) (A306436 n)

end

end A214053.P16767255265600068517

/-! ## A214053.P3103603932002501320

`gcd(A096810(A280938(n)), A187829(n+1))`
-/

namespace A214053.P3103603932002501320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096810 (A280938 n).toNat) (A187829 (n + 1))

end

end A214053.P3103603932002501320

/-! ## A214053.P3452064127767202982

`gcd(A031324(A245360(n+1)), A280503(n+1))`
-/

namespace A214053.P3452064127767202982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031324 (A245360 (n + 1)).toNat) (A280503 (n + 1))

end

end A214053.P3452064127767202982

/-!
# A214054: Least m>0 such that n!!+m and n-m have a common divisor > 1.

The programs for A214054, the canonical program `A214054.P9495975754376215366` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214054 has offset 1).

The definition of A214054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214054.P9495975754376215366

`gcd(2, A007912(xor(3, n)+3))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214054

/-- `gcd(2, A007912(xor(3, n)+3))` -/
def P9495975754376215366.Spec : Prop :=
  ∀ n, (P9495975754376215366.a n : ℤ) = A214054 (n + 1)

theorem P9495975754376215366.correct : P9495975754376215366.Spec := by
  intro n
  simp only [A214054, Nat.add_sub_cancel]

end A214054

/-! ## A214054.P6510077802730547055

`A000034(char[A260298(n+2)]+n)`
-/

namespace A214054.P6510077802730547055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260298 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A214054.P6510077802730547055

namespace A214054

/-- `A000034(char[A260298(n+2)]+n)` -/
def P6510077802730547055.Spec : Prop :=
  ∀ n, P6510077802730547055.a n = A214054 (n + 1)

end A214054

/-! ## A214054.P15707622682629961150

`gcd(A000034(n), A138502(A373677(n+1)))`
-/

namespace A214054.P15707622682629961150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000034 n) (A138502 (A373677 (n + 1)).toNat)

end

end A214054.P15707622682629961150

namespace A214054

/-- `gcd(A000034(n), A138502(A373677(n+1)))` -/
def P15707622682629961150.Spec : Prop :=
  ∀ n, (P15707622682629961150.a n : ℤ) = A214054 (n + 1)

end A214054

/-! ## A214054.P12263251928767365021

`gcd(A002522(n), A299922(A004275(n)))`
-/

namespace A214054.P12263251928767365021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002522 n) (A299922 (A004275 n).toNat)

end

end A214054.P12263251928767365021

namespace A214054

/-- `gcd(A002522(n), A299922(A004275(n)))` -/
def P12263251928767365021.Spec : Prop :=
  ∀ n, (P12263251928767365021.a n : ℤ) = A214054 (n + 1)

end A214054

/-! ## A214054.P12013712570102414607

`A267621(A194442(n+4))+A000035(n)`
-/

namespace A214054.P12013712570102414607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 (A194442 (n + 4)).toNat + A000035 n

end

end A214054.P12013712570102414607

namespace A214054

/-- `A267621(A194442(n+4))+A000035(n)` -/
def P12013712570102414607.Spec : Prop :=
  ∀ n, P12013712570102414607.a n = A214054 (n + 1)

end A214054

/-!
# A214055: Least m>0 such that n!+2+m and n-m have a common divisor > 1.

The programs for A214055, there is no canonical definition to state claims against.
-/

/-! ## A214055.P2048087857165470072

`A090369(n+3)-2`
-/

namespace A214055.P2048087857165470072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (n + 3) - 2

end

end A214055.P2048087857165470072

/-! ## A214055.P3740229984032876616

`A292269(2*(n+3))-2`
-/

namespace A214055.P3740229984032876616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * (n + 3)) - 2

end

end A214055.P3740229984032876616

/-! ## A214055.P18103553855255301066

`A090370(2*n+7)-3`
-/

namespace A214055.P18103553855255301066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090370 (2 * n + 7) - 3

end

end A214055.P18103553855255301066

/-! ## A214055.P7204946487820307584

`A280560(2*n+1)+A090369(n+3)`
-/

namespace A214055.P7204946487820307584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + A090369 (n + 3)

end

end A214055.P7204946487820307584

/-! ## A214055.P773575769025031058

`A028872(n+2)%A292269(A020739(n))`
-/

namespace A214055.P773575769025031058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028872 (n + 2)) (A292269 (A020739 n).toNat)

end

end A214055.P773575769025031058

/-!
# A214056: Least m>0 such that 2^n+m and n-m have a common divisor > 1.

The programs for A214056, there is no canonical definition to state claims against.
-/

/-! ## A214056.P365975754173649186

`gcd(gcd(n, n%2)+1, A142150(A033047(n)))`
-/

namespace A214056.P365975754173649186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.gcd n (n % 2) + 1 : ℤ) (A142150 (A033047 n).toNat)

end

end A214056.P365975754173649186

/-! ## A214056.P4128821215901915328

`gcd(A030216(A023105(n)), A141310(n))`
-/

namespace A214056.P4128821215901915328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030216 (A023105 n).toNat) (A141310 n)

end

end A214056.P4128821215901915328

/-! ## A214056.P6495382376377454352

`gcd(A004442(n), A033676(A157324(n+1)))`
-/

namespace A214056.P6495382376377454352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 n) (A033676 (A157324 (n + 1)).toNat)

end

end A214056.P6495382376377454352

/-! ## A214056.P3658517825950523834

`A141310(n)^A358194(A070418(n+1))`
-/

namespace A214056.P3658517825950523834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 n : ℚ) ^ (A358194 (A070418 (n + 1)).toNat : ℤ)

end

end A214056.P3658517825950523834

/-! ## A214056.P15159132714761244340

`gcd(n+1, A049474(A280435(n+1)))`
-/

namespace A214056.P15159132714761244340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A049474 (A280435 (n + 1)).toNat)

end

end A214056.P15159132714761244340

/-!
# A214057: Least m>0 such that 2^n-1+m and n-m have a common divisor > 1.

The programs for A214057, there is no canonical definition to state claims against.
-/

/-! ## A214057.P14277626109472330712

`gcd(n+1, A081350(A074392(n)))`
-/

namespace A214057.P14277626109472330712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A081350 (A074392 n).toNat)

end

end A214057.P14277626109472330712

/-! ## A214057.P10332887911177796123

`A083368(or(2, A000071(n+3)))`
-/

namespace A214057.P10332887911177796123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (Int.lor 2 (A000071 (n + 3))).toNat

end

end A214057.P10332887911177796123

/-! ## A214057.P4623131727327400875

`gcd(A000005(2^n), A131290(n+2))`
-/

namespace A214057.P4623131727327400875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (2 ^ n)) (A131290 (n + 2))

end

end A214057.P4623131727327400875

/-! ## A214057.P17641520006478644923

`gcd(A000005(A036296(n)), A222257(n))`
-/

namespace A214057.P17641520006478644923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A036296 n).toNat) (A222257 n)

end

end A214057.P17641520006478644923

/-! ## A214057.P14202046697585524433

`gcd(A000005(A000079(n)), A098002(n+4))`
-/

namespace A214057.P14202046697585524433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A000079 n).toNat) (A098002 (n + 4))

end

end A214057.P14202046697585524433

/-!
# A214059: Least m>0 such that gcd(n^2+1+m, n-m) > 1.

The programs for A214059, there is no canonical definition to state claims against.
-/

/-! ## A214059.P12582781896193657309

`(n+1)%A014673(A061925(2*n+3))`
-/

namespace A214059.P12582781896193657309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014673 (A061925 (2 * n + 3)).toNat)

end

end A214059.P12582781896193657309

/-! ## A214059.P17559293231837010535

`(n+1)%A020639(A008619(A046092(n+1)))`
-/

namespace A214059.P17559293231837010535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (A008619 (A046092 (n + 1)).toNat).toNat)

end

end A214059.P17559293231837010535

/-! ## A214059.P9784539295493349195

`A271647(A271647(n+1))%A020639(A002061(n+2))`
-/

namespace A214059.P9784539295493349195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271647 (A271647 (n + 1)).toNat) (A020639 (A002061 (n + 2)).toNat)

end

end A214059.P9784539295493349195

/-! ## A214059.P789654032961025893

`(n+1)%A020639(A058031(n+2))`
-/

namespace A214059.P789654032961025893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (A058031 (n + 2)).toNat)

end

end A214059.P789654032961025893

/-!
# A214060: Least m>0 such that gcd(2*n-1+m, n-m) > 1.

The programs for A214060, there is no canonical definition to state claims against.
-/

/-! ## A214060.P11879770402646553011

`A178832(A020639(A016789(n)))+A000035(n)`
-/

namespace A214060.P11879770402646553011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A020639 (A016789 n).toNat).toNat + A000035 n

end

end A214060.P11879770402646553011

/-! ## A214060.P2858884149045871033

`lcm(3, A238161(3*n+2))/3`
-/

namespace A214060.P2858884149045871033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A238161 (3 * n + 2)) : ℚ) / 3

end

end A214060.P2858884149045871033

/-! ## A214060.P10569231863521645351

`gcd((n+1)², A289435((3*n+2)²))`
-/

namespace A214060.P10569231863521645351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A289435 ((3 * n + 2) ^ 2))

end

end A214060.P10569231863521645351

/-! ## A214060.P6043791040421058574

`A382356(A020639(3*n+2)-1)`
-/

namespace A214060.P6043791040421058574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382356 (A020639 (3 * n + 2) - 1).toNat

end

end A214060.P6043791040421058574

/-! ## A214060.P5051084845012563974

`gcd(A125294(3*n+1)+1, n+1)`
-/

namespace A214060.P5051084845012563974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125294 (3 * n + 1) + 1) (n + 1 : ℤ)

end

end A214060.P5051084845012563974

/-!
# A214061: Least m>0 such that gcd(2*n-1+m, 2*n-m) > 1.

The programs for A214061, there is no canonical definition to state claims against.
-/

/-! ## A214061.P11811753110673046698

`A214062(n+1)+1`
-/

namespace A214061.P11811753110673046698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214062 (n + 1) + 1

end

end A214061.P11811753110673046698

/-! ## A214061.P2038587990658637629

`(A125255(n+1)+1)/2`
-/

namespace A214061.P2038587990658637629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125255 (n + 1) + 1 : ℚ) / 2

end

end A214061.P2038587990658637629

/-! ## A214061.P5353520238375337220

`ceil(A020639(record[xor(3, n)])/2)`
-/

namespace A214061.P5353520238375337220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2⌉

end

end A214061.P5353520238375337220

/-! ## A214061.P18270608737934385687

`(A020639(4*n+3)+1)/2`
-/

namespace A214061.P18270608737934385687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (4 * n + 3) + 1 : ℚ) / 2

end

end A214061.P18270608737934385687

/-! ## A214061.P3845633772590151750

`(2*n+1)%A020639(Δ[n*(2*n+1)])+1`
-/

namespace A214061.P3845633772590151750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) + 1

end

end A214061.P3845633772590151750

/-! ## A214061.P4531799439325356205

`A016969(n)%A125255(n+1)`
-/

namespace A214061.P4531799439325356205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A125255 (n + 1))

end

end A214061.P4531799439325356205

/-! ## A214061.P15147003459015455687

`A017365(n)%A125255(n+1)`
-/

namespace A214061.P15147003459015455687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017365 n) (A125255 (n + 1))

end

end A214061.P15147003459015455687

/-! ## A214061.P13866223306509218659

`A060820(n+1)%A125255(n+1)`
-/

namespace A214061.P13866223306509218659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060820 (n + 1)) (A125255 (n + 1))

end

end A214061.P13866223306509218659

/-! ## A214061.P15793881394693742237

`A128473(n+1)%A125255(n+1)`
-/

namespace A214061.P15793881394693742237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128473 (n + 1)) (A125255 (n + 1))

end

end A214061.P15793881394693742237

/-! ## A214061.P3198482904408127204

`A158058(n+1)%A125255(n+1)`
-/

namespace A214061.P3198482904408127204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158058 (n + 1)) (A125255 (n + 1))

end

end A214061.P3198482904408127204

/-! ## A214061.P50823411185051240

`A158544(n+1)%A125255(n+1)`
-/

namespace A214061.P50823411185051240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158544 (n + 1)) (A125255 (n + 1))

end

end A214061.P50823411185051240

/-! ## A214061.P14357691621604142037

`A120454(2*A125255(n+1))`
-/

namespace A214061.P14357691621604142037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (2 * A125255 (n + 1)).toNat

end

end A214061.P14357691621604142037

/-! ## A214061.P5375310514476817523

`A020725(A214062(n+1))`
-/

namespace A214061.P5375310514476817523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A214062 (n + 1)).toNat

end

end A214061.P5375310514476817523

/-! ## A214061.P3963129637204675373

`A195508(Δ[n²])+1`
-/

namespace A214061.P3963129637204675373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A214061.P3963129637204675373

/-! ## A214061.P4570489899710822785

`A005097(A038802(2*n+1))+1`
-/

namespace A214061.P4570489899710822785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A038802 (2 * n + 1)).toNat + 1

end

end A214061.P4570489899710822785

/-! ## A214061.P2162226897655143373

`A000224(A125255(n+1))`
-/

namespace A214061.P2162226897655143373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A125255 (n + 1)).toNat

end

end A214061.P2162226897655143373

/-! ## A214061.P15356728907248440658

`A064916(A125255(n+1)-1)`
-/

namespace A214061.P15356728907248440658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064916 (A125255 (n + 1) - 1).toNat

end

end A214061.P15356728907248440658

/-! ## A214061.P13387285909847328076

`A003602(A090368(2*(n+1)))`
-/

namespace A214061.P13387285909847328076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A090368 (2 * (n + 1))).toNat

end

end A214061.P13387285909847328076

/-! ## A214061.P4020843937971415644

`A180783(A020639(4*n+3))`
-/

namespace A214061.P4020843937971415644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (A020639 (4 * n + 3)).toNat

end

end A214061.P4020843937971415644

/-!
# A214062: Least m>0 such that gcd(2*n+m, 2*n-1-m) > 1.

The programs for A214062, there is no canonical definition to state claims against.
-/

/-! ## A214062.P6597641465213776835

`A214061(n+1)-1`
-/

namespace A214062.P6597641465213776835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214061 (n + 1) - 1

end

end A214062.P6597641465213776835

/-! ## A214062.P4092355931337156101

`floor(A125255(n+1)/2)`
-/

namespace A214062.P4092355931337156101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A125255 (n + 1) : ℚ) / 2⌋

end

end A214062.P4092355931337156101

/-! ## A214062.P3132778717673579876

`A057237(record[xor(3, n)])/2`
-/

namespace A214062.P3132778717673579876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057237 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2

end

end A214062.P3132778717673579876

/-! ## A214062.P11597519192367636439

`floor(A020639(4*n+3)/2)`
-/

namespace A214062.P11597519192367636439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020639 (4 * n + 3) : ℚ) / 2⌋

end

end A214062.P11597519192367636439

/-! ## A214062.P13130308725116434962

`(A020639(record[xor(3, n)])-1)/2`
-/

namespace A214062.P13130308725116434962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 1 : ℚ) / 2

end

end A214062.P13130308725116434962

/-! ## A214062.P16975834788135526916

`floor(cosh(log(A020639(3*(n+1)+n))))`
-/

namespace A214062.P16975834788135526916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (A020639 (3 * (n + 1) + n) : ℝ))⌋

end

end A214062.P16975834788135526916

/-! ## A214062.P6143342715421287516

`(2*n+1)%A020639(Δ[n*(2*n+1)])`
-/

namespace A214062.P6143342715421287516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A214062.P6143342715421287516

/-! ## A214062.P9329188322023848187

`A016957(n)%A125255(n+1)`
-/

namespace A214062.P9329188322023848187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016957 n) (A125255 (n + 1))

end

end A214062.P9329188322023848187

/-! ## A214062.P5639572776879908511

`A017353(n)%A125255(n+1)`
-/

namespace A214062.P5639572776879908511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017353 n) (A125255 (n + 1))

end

end A214062.P5639572776879908511

/-! ## A214062.P15508761648431375307

`A056578(n)%A125255(n+1)`
-/

namespace A214062.P15508761648431375307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056578 n) (A125255 (n + 1))

end

end A214062.P15508761648431375307

/-! ## A214062.P12583090281597904407

`A254473(n)%A125255(n+1)`
-/

namespace A214062.P12583090281597904407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254473 n) (A125255 (n + 1))

end

end A214062.P12583090281597904407

/-! ## A214062.P1536661977660366489

`A280059(n)%A125255(n+1)`
-/

namespace A214062.P1536661977660366489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280059 n) (A125255 (n + 1))

end

end A214062.P1536661977660366489

/-! ## A214062.P17176564945945211549

`A069129(n+1)%A125255(n+1)`
-/

namespace A214062.P17176564945945211549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069129 (n + 1)) (A125255 (n + 1))

end

end A214062.P17176564945945211549

/-! ## A214062.P13956068631700893914

`A157914(n+1)%A125255(n+1)`
-/

namespace A214062.P13956068631700893914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157914 (n + 1)) (A125255 (n + 1))

end

end A214062.P13956068631700893914

/-! ## A214062.P12702303903216770054

`A125255(n+1)%A214061(n+1)`
-/

namespace A214062.P12702303903216770054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125255 (n + 1)) (A214061 (n + 1))

end

end A214062.P12702303903216770054

/-! ## A214062.P4091788409815693377

`A003970(A214061(n+1))`
-/

namespace A214062.P4091788409815693377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A214061 (n + 1)).toNat

end

end A214062.P4091788409815693377

/-! ## A214062.P18186646598848079702

`A195508(Δ[n²])`
-/

namespace A214062.P18186646598848079702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A214062.P18186646598848079702

/-! ## A214062.P9568583379883978585

`floor(A090368(2*(n+1))/2)`
-/

namespace A214062.P9568583379883978585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090368 (2 * (n + 1)) : ℚ) / 2⌋

end

end A214062.P9568583379883978585

/-! ## A214062.P14589785040276426580

`A005097(A038802(2*n+1))`
-/

namespace A214062.P14589785040276426580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A038802 (2 * n + 1)).toNat

end

end A214062.P14589785040276426580

/-! ## A214062.P18302690188068991832

`filter[A195508(2*n+1), A101264(#)]`
-/

namespace A214062.P18302690188068991832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A214062.P18302690188068991832

/-!
# A214063: a(n) is the least m > 0 such that Fibonacci(n)+m and n-m are not relatively prime.

The programs for A214063, there is no canonical definition to state claims against.
-/

/-! ## A214063.P3050105935609287768

`n%A020639(A002062(n+1))+1`
-/

namespace A214063.P3050105935609287768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A020639 (A002062 (n + 1)).toNat) + 1

end

end A214063.P3050105935609287768

/-!
# A214066: a(n) = floor( (3/2)*floor(5*n/2) ).

The programs for A214066, the canonical program `A214066.P10774329679578945254` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214066 has offset 0).

The definition of A214066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3/2*floor(5*n/2))` (program `A214066.P10774329679578945254`, by `A214066.P10774329679578945254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214066.P10774329679578945254

`floor(3/2*floor(5*n/2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214066

/-- `floor(3/2*floor(5*n/2))` -/
def P10774329679578945254.Spec : Prop :=
  ∀ n, P10774329679578945254.a n = A214066 n

theorem P10774329679578945254.correct : P10774329679578945254.Spec := by
  intro n
  simp only [A214066]

end A214066

/-! ## A214066.P4075076983042042515

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=10, a(4)=15`
-/

namespace A214066.P4075076983042042515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 7, 10, 15] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A214066.P4075076983042042515

namespace A214066

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P4075076983042042515.Spec : Prop :=
  ∀ n, P4075076983042042515.a n = A214066 n

end A214066

/-! ## A214066.P12761515530833558765

`a(n-4)+15` with `a(0)=0, a(1)=3, a(2)=7, a(3)=10`
-/

namespace A214066.P12761515530833558765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7, 10] fun n a =>
  a (n - 4) + 15

end

end A214066.P12761515530833558765

namespace A214066

/-- `a(n-4)+15` -/
def P12761515530833558765.Spec : Prop :=
  ∀ n, (P12761515530833558765.a n : ℤ) = A214066 n

end A214066

/-! ## A214066.P5837408430154752550

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=3, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A214066.P5837408430154752550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 3, 5] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214066.P5837408430154752550

namespace A214066

/-- `∑[floor(a(n-4))]` -/
def P5837408430154752550.Spec : Prop :=
  ∀ n, (P5837408430154752550.a n : ℤ) = A214066 n

end A214066

/-! ## A214066.P13476300684399405586

`3*n+∑[log2(gcd(4, n))]-2`
-/

namespace A214066.P13476300684399405586
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 4 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * n : ℝ) + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A214066.P13476300684399405586

namespace A214066

/-- `3*n+∑[log2(gcd(4, n))]-2` -/
def P13476300684399405586.Spec : Prop :=
  ∀ n, P13476300684399405586.a n = (A214066 n : ℝ)

end A214066

/-! ## A214066.P9384245680278211244

`∑[a(n-4)%6]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=3, a(4)=5`
-/

namespace A214066.P9384245680278211244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 3, 5] fun n f1 =>
  f1 (n - 4) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214066.P9384245680278211244

namespace A214066

/-- `∑[a(n-4)%6]` -/
def P9384245680278211244.Spec : Prop :=
  ∀ n, (P9384245680278211244.a n : ℤ) = A214066 n

end A214066

/-! ## A214066.P10442964496363896780

`comp[∑[gcd(3, ∑[n])]-5]+2*n`
-/

namespace A214066.P10442964496363896780
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 * n

end

end A214066.P10442964496363896780

namespace A214066

/-- `comp[∑[gcd(3, ∑[n])]-5]+2*n` -/
def P10442964496363896780.Spec : Prop :=
  ∀ n, (P10442964496363896780.a n : ℤ) = A214066 n

end A214066

/-! ## A214066.P13304778789898157964

`∑[∑[2/a(n-2)]]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=-1`
-/

namespace A214066.P13304778789898157964
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 3, 1, -1] fun n f2 =>
  2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214066.P13304778789898157964

namespace A214066

/-- `∑[∑[2/a(n-2)]]` -/
def P13304778789898157964.Spec : Prop :=
  ∀ n, P13304778789898157964.a n = (A214066 n : ℚ)

end A214066

/-! ## A214066.P12259644564462456377

`∑[∑[ogf((1+3x+4x^2+3x^3+4x^4)/(1+x+x^2+x^3))]]-1`
-/

namespace A214066.P12259644564462456377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 3, 4] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A214066.P12259644564462456377

namespace A214066

/-- `∑[∑[ogf((1+3x+4x^2+3x^3+4x^4)/(1+x+x^2+x^3))]]-1` -/
def P12259644564462456377.Spec : Prop :=
  ∀ n, P12259644564462456377.a n = A214066 n

end A214066

/-! ## A214066.P6721809849193688373

`A187321(n)+3*n`
-/

namespace A214066.P6721809849193688373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 n + (3 * n : ℤ)

end

end A214066.P6721809849193688373

namespace A214066

/-- `A187321(n)+3*n` -/
def P6721809849193688373.Spec : Prop :=
  ∀ n, P6721809849193688373.a n = A214066 n

end A214066

/-! ## A214066.P10948760423267818223

`A047344(n+1)+2*n`
-/

namespace A214066.P10948760423267818223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (n + 1) + (2 * n : ℤ)

end

end A214066.P10948760423267818223

namespace A214066

/-- `A047344(n+1)+2*n` -/
def P10948760423267818223.Spec : Prop :=
  ∀ n, P10948760423267818223.a n = A214066 n

end A214066

/-! ## A214066.P14627580243504911196

`comp[A047323(n+1)]+2*n`
-/

namespace A214066.P14627580243504911196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 * n

end

end A214066.P14627580243504911196

namespace A214066

/-- `comp[A047323(n+1)]+2*n` -/
def P14627580243504911196.Spec : Prop :=
  ∀ n, (P14627580243504911196.a n : ℤ) = A214066 n

end A214066

/-! ## A214066.P8244450946170723204

`A047331(n+1)+2*(n-1)`
-/

namespace A214066.P8244450946170723204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047331 (n + 1) + 2 * ((n : ℤ) - 1)

end

end A214066.P8244450946170723204

namespace A214066

/-- `A047331(n+1)+2*(n-1)` -/
def P8244450946170723204.Spec : Prop :=
  ∀ n, P8244450946170723204.a n = A214066 n

end A214066

/-! ## A214066.P11724303541804327889

`A047380(n+1)+2*n-1`
-/

namespace A214066.P11724303541804327889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047380 (n + 1) + ((2 * n : ℤ) - 1)

end

end A214066.P11724303541804327889

namespace A214066

/-- `A047380(n+1)+2*n-1` -/
def P11724303541804327889.Spec : Prop :=
  ∀ n, P11724303541804327889.a n = A214066 n

end A214066

/-! ## A214066.P16758659635185557655

`A047215(n)+A001068(n)`
-/

namespace A214066.P16758659635185557655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n + A001068 n

end

end A214066.P16758659635185557655

namespace A214066

/-- `A047215(n)+A001068(n)` -/
def P16758659635185557655.Spec : Prop :=
  ∀ n, P16758659635185557655.a n = A214066 n

end A214066

/-! ## A214066.P18020770757077025984

`A214067(n)-A047215(n)`
-/

namespace A214066.P18020770757077025984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214067 n - A047215 n

end

end A214066.P18020770757077025984

namespace A214066

/-- `A214067(n)-A047215(n)` -/
def P18020770757077025984.Spec : Prop :=
  ∀ n, P18020770757077025984.a n = A214066 n

end A214066

/-! ## A214066.P487709273083239913

`∑[A002828(A266258(n))]+n`
-/

namespace A214066.P487709273083239913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A266258 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A214066.P487709273083239913

namespace A214066

/-- `∑[A002828(A266258(n))]+n` -/
def P487709273083239913.Spec : Prop :=
  ∀ n, P487709273083239913.a n = A214066 n

end A214066

/-! ## A214066.P10235708570401431725

`A047355(n+1)+A002265(n)`
-/

namespace A214066.P10235708570401431725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1) + A002265 n

end

end A214066.P10235708570401431725

namespace A214066

/-- `A047355(n+1)+A002265(n)` -/
def P10235708570401431725.Spec : Prop :=
  ∀ n, P10235708570401431725.a n = A214066 n

end A214066

/-!
# A214067: a(n) = [(5/2)*[(5/2)*n]], where [ ] = floor.

The programs for A214067, the canonical program `A214067.P17354337963281903756` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214067 has offset 0).

The definition of A214067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214067.P17354337963281903756

`floor(5/2*floor(5*n/2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214067

/-- `floor(5/2*floor(5*n/2))` -/
def P17354337963281903756.Spec : Prop :=
  ∀ n, P17354337963281903756.a n = A214067 n

theorem P17354337963281903756.correct : P17354337963281903756.Spec := by
  intro n
  simp only [A214067]

end A214067

/-! ## A214067.P16380747685433161633

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=5, a(2)=12, a(3)=17, a(4)=25`
-/

namespace A214067.P16380747685433161633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 12, 17, 25] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A214067.P16380747685433161633

namespace A214067

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P16380747685433161633.Spec : Prop :=
  ∀ n, P16380747685433161633.a n = A214067 n

end A214067

/-! ## A214067.P16285905992890674732

`a(n-4)+25` with `a(0)=0, a(1)=5, a(2)=12, a(3)=17`
-/

namespace A214067.P16285905992890674732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 12, 17] fun n a =>
  a (n - 4) + 25

end

end A214067.P16285905992890674732

namespace A214067

/-- `a(n-4)+25` -/
def P16285905992890674732.Spec : Prop :=
  ∀ n, (P16285905992890674732.a n : ℤ) = A214067 n

end A214067

/-! ## A214067.P18338253971291278210

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=5, a(2)=7, a(3)=5, a(4)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A214067.P18338253971291278210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 7, 5, 8] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214067.P18338253971291278210

namespace A214067

/-- `∑[floor(a(n-4))]` -/
def P18338253971291278210.Spec : Prop :=
  ∀ n, (P18338253971291278210.a n : ℤ) = A214067 n

end A214067

/-! ## A214067.P13472263748912706739

`9*n+1-∑[A176895(n)]`
-/

namespace A214067.P13472263748912706739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214067.P13472263748912706739

namespace A214067

/-- `9*n+1-∑[A176895(n)]` -/
def P13472263748912706739.Spec : Prop :=
  ∀ n, P13472263748912706739.a n = A214067 n

end A214067

/-! ## A214067.P4730443314715222231

`A146763(n)+A001068(n)`
-/

namespace A214067.P4730443314715222231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n + A001068 n

end

end A214067.P4730443314715222231

namespace A214067

/-- `A146763(n)+A001068(n)` -/
def P4730443314715222231.Spec : Prop :=
  ∀ n, P4730443314715222231.a n = A214067 n

end A214067

/-! ## A214067.P6722348001972286842

`A214066(n)+A047215(n)`
-/

namespace A214067.P6722348001972286842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214066 n + A047215 n

end

end A214067.P6722348001972286842

namespace A214067

/-- `A214066(n)+A047215(n)` -/
def P6722348001972286842.Spec : Prop :=
  ∀ n, P6722348001972286842.a n = A214067 n

end A214067

/-! ## A214067.P15186704285464478778

`A047471(n+1)+A174396(n+1)-2`
-/

namespace A214067.P15186704285464478778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1) + (A174396 (n + 1) - 2)

end

end A214067.P15186704285464478778

namespace A214067

/-- `A047471(n+1)+A174396(n+1)-2` -/
def P15186704285464478778.Spec : Prop :=
  ∀ n, P15186704285464478778.a n = A214067 n

end A214067

/-! ## A214067.P5165785770802026492

`A187322(2*A004526(n))+A008587(n)`
-/

namespace A214067.P5165785770802026492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187322 (2 * A004526 n).toNat + A008587 n

end

end A214067.P5165785770802026492

namespace A214067

/-- `A187322(2*A004526(n))+A008587(n)` -/
def P5165785770802026492.Spec : Prop :=
  ∀ n, P5165785770802026492.a n = A214067 n

end A214067

/-! ## A214067.P6643748168090005268

`A047215(n)+A047215(n)+A001068(n)`
-/

namespace A214067.P6643748168090005268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n + (A047215 n + A001068 n)

end

end A214067.P6643748168090005268

namespace A214067

/-- `A047215(n)+A047215(n)+A001068(n)` -/
def P6643748168090005268.Spec : Prop :=
  ∀ n, P6643748168090005268.a n = A214067 n

end A214067

/-! ## A214067.P713501540437833177

`A187322(n-A000035(n))+A008587(n)`
-/

namespace A214067.P713501540437833177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187322 ((n : ℤ) - A000035 n).toNat + A008587 n

end

end A214067.P713501540437833177

namespace A214067

/-- `A187322(n-A000035(n))+A008587(n)` -/
def P713501540437833177.Spec : Prop :=
  ∀ n, P713501540437833177.a n = A214067 n

end A214067

/-! ## A214067.P2294621589888085322

`A004526(A004526(n))+A008588(n)-A000035(n)`
-/

namespace A214067.P2294621589888085322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 n).toNat + (A008588 n - A000035 n)

end

end A214067.P2294621589888085322

namespace A214067

/-- `A004526(A004526(n))+A008588(n)-A000035(n)` -/
def P2294621589888085322.Spec : Prop :=
  ∀ n, P2294621589888085322.a n = A214067 n

end A214067

/-! ## A214067.P6330576370009017596

`A248375(A042948(n))+4*n`
-/

namespace A214067.P6330576370009017596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A042948 n).toNat + (4 * n : ℤ)

end

end A214067.P6330576370009017596

namespace A214067

/-- `A248375(A042948(n))+4*n` -/
def P6330576370009017596.Spec : Prop :=
  ∀ n, P6330576370009017596.a n = A214067 n

end A214067

/-! ## A214067.P14757919520970998669

`A248375(2*n)+A047401(2*n+1)`
-/

namespace A214067.P14757919520970998669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (2 * n) + A047401 (2 * n + 1)

end

end A214067.P14757919520970998669

namespace A214067

/-- `A248375(2*n)+A047401(2*n+1)` -/
def P14757919520970998669.Spec : Prop :=
  ∀ n, P14757919520970998669.a n = A214067 n

end A214067

/-! ## A214067.P12316849263603953296

`2*A047344(2*n+1)-A057353(n+1)`
-/

namespace A214067.P12316849263603953296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047344 (2 * n + 1) - A057353 (n + 1)

end

end A214067.P12316849263603953296

namespace A214067

/-- `2*A047344(2*n+1)-A057353(n+1)` -/
def P12316849263603953296.Spec : Prop :=
  ∀ n, P12316849263603953296.a n = A214067 n

end A214067

/-! ## A214067.P5849349571599123060

`A168183(2*n+1)+A003485(2*n)-2`
-/

namespace A214067.P5849349571599123060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (2 * n + 1) + (A003485 (2 * n) - 2)

end

end A214067.P5849349571599123060

namespace A214067

/-- `A168183(2*n+1)+A003485(2*n)-2` -/
def P5849349571599123060.Spec : Prop :=
  ∀ n, P5849349571599123060.a n = A214067 n

end A214067

/-! ## A214067.P4326532986562842958

`A047338(2*n+1)+A047371(n+1)+n-1`
-/

namespace A214067.P4326532986562842958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047338 (2 * n + 1) + (A047371 (n + 1) + ((n : ℤ) - 1))

end

end A214067.P4326532986562842958

namespace A214067

/-- `A047338(2*n+1)+A047371(n+1)+n-1` -/
def P4326532986562842958.Spec : Prop :=
  ∀ n, P4326532986562842958.a n = A214067 n

end A214067

/-! ## A214067.P7138734359723556137

`A047376(A002265(n)+2*n+1)+n-1`
-/

namespace A214067.P7138734359723556137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047376 (A002265 n + (2 * n + 1 : ℤ)).toNat + (n : ℤ) - 1

end

end A214067.P7138734359723556137

namespace A214067

/-- `A047376(A002265(n)+2*n+1)+n-1` -/
def P7138734359723556137.Spec : Prop :=
  ∀ n, P7138734359723556137.a n = A214067 n

end A214067

/-! ## A214067.P9891779349886068573

`A047215(A047215(n))`
-/

namespace A214067.P9891779349886068573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (A047215 n).toNat

end

end A214067.P9891779349886068573

namespace A214067

/-- `A047215(A047215(n))` -/
def P9891779349886068573.Spec : Prop :=
  ∀ n, P9891779349886068573.a n = A214067 n

end A214067

/-! ## A214067.P13457188538655351767

`A047219(A047219(n+1))-1`
-/

namespace A214067.P13457188538655351767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (A047219 (n + 1)).toNat - 1

end

end A214067.P13457188538655351767

namespace A214067

/-- `A047219(A047219(n+1))-1` -/
def P13457188538655351767.Spec : Prop :=
  ∀ n, P13457188538655351767.a n = A214067 n

end A214067

/-!
# A214068: a(n) = floor((3/2)*floor((3/2)*n)).

The programs for A214068, the canonical program `A214068.P16337325821617498636` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214068 has offset 0).

The definition of A214068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3/2*floor(3/2*n))` (program `A214068.P16337325821617498636`, by `A214068.P16337325821617498636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214068.P16337325821617498636

`floor(3/2*floor(3/2*n))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214068

/-- `floor(3/2*floor(3/2*n))` -/
def P16337325821617498636.Spec : Prop :=
  ∀ n, P16337325821617498636.a n = A214068 n

theorem P16337325821617498636.correct : P16337325821617498636.Spec := by
  intro n
  simp only [A214068]

end A214068

/-! ## A214068.P16497095502440010273

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=9`
-/

namespace A214068.P16497095502440010273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A214068.P16497095502440010273

namespace A214068

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P16497095502440010273.Spec : Prop :=
  ∀ n, P16497095502440010273.a n = A214068 n

end A214068

/-! ## A214068.P10202945739272553319

`a(n-4)+9` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A214068.P10202945739272553319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 6] fun n a =>
  a (n - 4) + 9

end

end A214068.P10202945739272553319

namespace A214068

/-- `a(n-4)+9` -/
def P10202945739272553319.Spec : Prop :=
  ∀ n, (P10202945739272553319.a n : ℤ) = A214068 n

end A214068

/-! ## A214068.P2398684356245626928

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=3`
-/

namespace A214068.P2398684356245626928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214068.P2398684356245626928

namespace A214068

/-- `∑[abs(a(n-4))]` -/
def P2398684356245626928.Spec : Prop :=
  ∀ n, (P2398684356245626928.a n : ℤ) = A214068 n

end A214068

/-! ## A214068.P15353328202398340869

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=3`
-/

namespace A214068.P15353328202398340869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214068.P15353328202398340869

namespace A214068

/-- `∑[dr(a(n-4))]` -/
def P15353328202398340869.Spec : Prop :=
  ∀ n, (P15353328202398340869.a n : ℤ) = A214068 n

end A214068

/-! ## A214068.P6306871623923782802

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A214068.P6306871623923782802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214068.P6306871623923782802

namespace A214068

/-- `∑[floor(a(n-4))]` -/
def P6306871623923782802.Spec : Prop :=
  ∀ n, (P6306871623923782802.a n : ℤ) = A214068 n

end A214068

/-! ## A214068.P436625540153176153

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A214068.P436625540153176153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214068.P436625540153176153

namespace A214068

/-- `∑[ceil(a(n-4))]` -/
def P436625540153176153.Spec : Prop :=
  ∀ n, (P436625540153176153.a n : ℤ) = A214068 n

end A214068

/-! ## A214068.P7642134514453614955

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=3`

`round` is left out, it is the identity on integers.
-/

namespace A214068.P7642134514453614955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214068.P7642134514453614955

namespace A214068

/-- `∑[round(a(n-4))]` -/
def P7642134514453614955.Spec : Prop :=
  ∀ n, (P7642134514453614955.a n : ℤ) = A214068 n

end A214068

/-! ## A214068.P4693807418808290249

`∑[3-a(n-2)%3]` with `a(0)=0, a(1)=1`
-/

namespace A214068.P4693807418808290249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 - Int.tmod (f1 (n - 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214068.P4693807418808290249

namespace A214068

/-- `∑[3-a(n-2)%3]` -/
def P4693807418808290249.Spec : Prop :=
  ∀ n, P4693807418808290249.a n = A214068 n

end A214068

/-! ## A214068.P1434724136424497425

`eq[1, val((1-n)²+n+2, 3)]`
-/

namespace A214068.P1434724136424497425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((1 - (n : ℤ)) ^ 2 + (n + 2 : ℤ)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214068.P1434724136424497425

namespace A214068

/-- `eq[1, val((1-n)²+n+2, 3)]` -/
def P1434724136424497425.Spec : Prop :=
  ∀ n, (P1434724136424497425.a n : ℤ) = A214068 n

end A214068

/-! ## A214068.P11253695585301533690

`∑[2-(a(a(n-2))-a(n-2))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A214068.P11253695585301533690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  2 - (f1 (f1 (n - 2)).toNat - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214068.P11253695585301533690

namespace A214068

/-- `∑[2-(a(a(n-2))-a(n-2))]` -/
def P11253695585301533690.Spec : Prop :=
  ∀ n, P11253695585301533690.a n = A214068 n

end A214068

/-! ## A214068.P8660989794911518984

`A187322(n)+n`
-/

namespace A214068.P8660989794911518984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187322 n + (n : ℤ)

end

end A214068.P8660989794911518984

namespace A214068

/-- `A187322(n)+n` -/
def P8660989794911518984.Spec : Prop :=
  ∀ n, P8660989794911518984.a n = A214068 n

end A214068

/-! ## A214068.P893506892123900193

`4*n-A047297(n+1)`
-/

namespace A214068.P893506892123900193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A047297 (n + 1)

end

end A214068.P893506892123900193

namespace A214068

/-- `4*n-A047297(n+1)` -/
def P893506892123900193.Spec : Prop :=
  ∀ n, P893506892123900193.a n = A214068 n

end A214068

/-! ## A214068.P18315471526894642849

`A060747(n)+A008624(n)`
-/

namespace A214068.P18315471526894642849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + A008624 n

end

end A214068.P18315471526894642849

namespace A214068

/-- `A060747(n)+A008624(n)` -/
def P18315471526894642849.Spec : Prop :=
  ∀ n, P18315471526894642849.a n = A214068 n

end A214068

/-! ## A214068.P14985351067626789630

`A047222(A037915(n))+n`
-/

namespace A214068.P14985351067626789630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (A037915 n).toNat + (n : ℤ)

end

end A214068.P14985351067626789630

namespace A214068

/-- `A047222(A037915(n))+n` -/
def P14985351067626789630.Spec : Prop :=
  ∀ n, P14985351067626789630.a n = A214068 n

end A214068

/-! ## A214068.P11676256173608584129

`A057353(n)+A032766(n)`
-/

namespace A214068.P11676256173608584129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + A032766 n

end

end A214068.P11676256173608584129

namespace A214068

/-- `A057353(n)+A032766(n)` -/
def P11676256173608584129.Spec : Prop :=
  ∀ n, P11676256173608584129.a n = A214068 n

end A214068

/-! ## A214068.P4831872708499867231

`A047215(n)-A110655(n)`
-/

namespace A214068.P4831872708499867231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n - A110655 n

end

end A214068.P4831872708499867231

namespace A214068

/-- `A047215(n)-A110655(n)` -/
def P4831872708499867231.Spec : Prop :=
  ∀ n, P4831872708499867231.a n = A214068 n

end A214068

/-! ## A214068.P4958829381570745310

`A008624(n)-A165747(n)`
-/

namespace A214068.P4958829381570745310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n - A165747 n

end

end A214068.P4958829381570745310

namespace A214068

/-- `A008624(n)-A165747(n)` -/
def P4958829381570745310.Spec : Prop :=
  ∀ n, P4958829381570745310.a n = A214068 n

end A214068

/-! ## A214068.P13039937563941944009

`A187331(n)-A002265(n)`
-/

namespace A214068.P13039937563941944009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n - A002265 n

end

end A214068.P13039937563941944009

namespace A214068

/-- `A187331(n)-A002265(n)` -/
def P13039937563941944009.Spec : Prop :=
  ∀ n, P13039937563941944009.a n = A214068 n

end A214068

/-!
# A214069: Least m>0 such that prime(n)+m and n-m are relatively prime.

The programs for A214069, there is no canonical definition to state claims against.
-/

/-! ## A214069.P13385039557362765577

`A046523(A046523(A027623(n+6))-1)`
-/

namespace A214069.P13385039557362765577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A046523 (A027623 (n + 6)).toNat - 1).toNat

end

end A214069.P13385039557362765577

/-! ## A214069.P7345831272910511722

`gcd(6, A214019(A214053(3*n+2)))`
-/

namespace A214069.P7345831272910511722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A214019 (A214053 (3 * n + 2)).toNat)

end

end A214069.P7345831272910511722

/-! ## A214069.P7188312684850107825

`gcd(A002203(n), A325364(A214053(3*n+2)))`
-/

namespace A214069.P7188312684850107825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002203 n) (A325364 (A214053 (3 * n + 2)).toNat)

end

end A214069.P7188312684850107825

/-! ## A214069.P6900373821904359046

`gcd(A000010(A138962(n+12)), A244424(n+12))`
-/

namespace A214069.P6900373821904359046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A138962 (n + 12)).toNat) (A244424 (n + 12))

end

end A214069.P6900373821904359046

/-! ## A214069.P7564021093716312675

`gcd(A335040(n+1), A335062(A293447(2*n+3)))`
-/

namespace A214069.P7564021093716312675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335040 (n + 1)) (A335062 (A293447 (2 * n + 3)).toNat)

end

end A214069.P7564021093716312675

/-!
# A214070: Decimal expansion of the number whose continued fraction is 1, 2, 4, 8, 16, ...

The programs for A214070, there is no canonical definition to state claims against.
-/

/-! ## A214070.P11083262888357187506

`∏{e}[A090129(n+1), A096641(#)]`
-/

namespace A214070.P11083262888357187506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A096641 (Nat.factorization (f1 n).natAbs p)

end

end A214070.P11083262888357187506

/-!
# A214071: Least m>0 such that 2^n-m and n-m are relatively prime.

The programs for A214071, there is no canonical definition to state claims against.
-/

/-! ## A214071.P13216480461348428056

`A214101(A163511(gcd(n, ∑[2^n])))`
-/

namespace A214071.P13216480461348428056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A163511 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A214071.P13216480461348428056

/-! ## A214071.P6811163712557241307

`A020639(A133476(gcd(n, A126646(n))))`
-/

namespace A214071.P6811163712557241307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A133476 (Int.gcd (n : ℤ) (A126646 n))).toNat

end

end A214071.P6811163712557241307

/-! ## A214071.P7688412859960165573

`gcd(n², A028926(A327405(n+1)))`
-/

namespace A214071.P7688412859960165573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A028926 (A327405 (n + 1)).toNat)

end

end A214071.P7688412859960165573

/-! ## A214071.P4434687839978857357

`gcd(A327530(n+1), A351831(n+1))`
-/

namespace A214071.P4434687839978857357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327530 (n + 1)) (A351831 (n + 1))

end

end A214071.P4434687839978857357

/-! ## A214071.P7274611107010603593

`gcd(A028310(n), A335526(A105746(n+1)))`
-/

namespace A214071.P7274611107010603593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A335526 (A105746 (n + 1)).toNat)

end

end A214071.P7274611107010603593

/-!
# A214072: Least m>0 such that (2*n-1)!!+m and (2*n)!!-m are not relatively prime.

The programs for A214072, there is no canonical definition to state claims against.
-/

/-! ## A214072.P9306017089005463983

`A010155(xor(A010149(n), A010786(n+1)))`
-/

namespace A214072.P9306017089005463983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 (Int.xor (A010149 n) (A010786 (n + 1))).toNat

end

end A214072.P9306017089005463983

/-!
# A214073: Least m>0 such that 2^n-m and n^2-m are relatively prime.

The programs for A214073, there is no canonical definition to state claims against.
-/

/-! ## A214073.P17396323025616533463

`A010883(2*n)*A326060(A295987(n))`
-/

namespace A214073.P17396323025616533463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (2 * n) * A326060 (A295987 n).toNat

end

end A214073.P17396323025616533463

/-! ## A214073.P26915227909173091

`A196967(gcd(4*A109925(n+1), (n+1)²))`
-/

namespace A214073.P26915227909173091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (Int.gcd (4 * A109925 (n + 1)) ((n + 1) ^ 2 : ℤ))

end

end A214073.P26915227909173091

/-! ## A214073.P11495482913500360004

`A326584(A156771(n+1))`
-/

namespace A214073.P11495482913500360004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A156771 (n + 1)).toNat

end

end A214073.P11495482913500360004

/-! ## A214073.P6086234173135184710

`A166123(A166630(n+2))`
-/

namespace A214073.P6086234173135184710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166123 (A166630 (n + 2)).toNat

end

end A214073.P6086234173135184710

/-! ## A214073.P4915784744329172885

`gcd(A106526(n+1), A193231(A000079(n)))`
-/

namespace A214073.P4915784744329172885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106526 (n + 1)) (A193231 (A000079 n).toNat)

end

end A214073.P4915784744329172885

/-!
# A214074: Least m>0 such that 2^n-m and 3^n-m are relatively prime.

The programs for A214074, there is no canonical definition to state claims against.
-/

/-! ## A214074.P13136359273350208348

`A036453(A086892(n+1)%A104675(n))`
-/

namespace A214074.P13136359273350208348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (Int.tmod (A086892 (n + 1)) (A104675 n)).toNat

end

end A214074.P13136359273350208348

/-! ## A214074.P668889954879905502

`ceil(root(A086892(n+1), A086902(n)))`
-/

namespace A214074.P668889954879905502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086892 (n + 1) : ℝ) ^ (1 / (A086902 n : ℝ))⌉

end

end A214074.P668889954879905502

/-! ## A214074.P1255490605132401408

`ceil(root(A086892(n+1), A139363(n+1)))`
-/

namespace A214074.P1255490605132401408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086892 (n + 1) : ℝ) ^ (1 / (A139363 (n + 1) : ℝ))⌉

end

end A214074.P1255490605132401408

/-! ## A214074.P9441135251917852689

`ceil(root(A086892(n+1), A139364(n+1)))`
-/

namespace A214074.P9441135251917852689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086892 (n + 1) : ℝ) ^ (1 / (A139364 (n + 1) : ℝ))⌉

end

end A214074.P9441135251917852689

/-!
# A214075: Triangle read by rows: T(n,k) = floor(A213998(n,k) / A213999(n,k)), 0<=k<=n.

The programs for A214075, there is no canonical definition to state claims against.
-/

/-! ## A214075.P9192384746641534082

`floor(A213998(n)/A213999(n))`
-/

namespace A214075.P9192384746641534082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213998 n : ℚ) / (A213999 n : ℚ)⌋

end

end A214075.P9192384746641534082

/-! ## A214075.P12806703699724590634

`floor(A105954(n)/A166350(n+1))`
-/

namespace A214075.P12806703699724590634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105954 n : ℚ) / (A166350 (n + 1) : ℚ)⌋

end

end A214075.P12806703699724590634

/-! ## A214075.P5628962590138219562

`A163352(A292795(n)+A106800(n))`
-/

namespace A214075.P5628962590138219562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A292795 n + A106800 n).toNat

end

end A214075.P5628962590138219562

/-! ## A214075.P5418619204756790557

`A322267(n)+A270417(A000225(n)+1)`
-/

namespace A214075.P5418619204756790557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322267 n + A270417 (A000225 n + 1).toNat

end

end A214075.P5418619204756790557

/-! ## A214075.P5569584821889395332

`A320080(n+1-A334369(A320079(n+1)))`
-/

namespace A214075.P5569584821889395332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320080 ((n + 1 : ℤ) - A334369 (A320079 (n + 1)).toNat).toNat

end

end A214075.P5569584821889395332

/-!
# A214076: a(n) = ceiling(e^(n/3)).

The programs for A214076, the canonical program `A214076.P10659360572803775800` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214076 has offset 1).

The definition of A214076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214076.P10659360572803775800

`ceil(exp(n+1)^(1/3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214076

/-- `ceil(exp(n+1)^(1/3))` -/
def P10659360572803775800.Spec : Prop :=
  ∀ n, P10659360572803775800.a n = A214076 (n + 1)

theorem P10659360572803775800.correct : P10659360572803775800.Spec := by
  intro n
  simp only [A214076, Nat.add_sub_cancel]

end A214076

/-! ## A214076.P14914835587180256806

`or(A214077(n+1)+1, A000038(n))`
-/

namespace A214076.P14914835587180256806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A214077 (n + 1) + 1) (A000038 n)

end

end A214076.P14914835587180256806

namespace A214076

/-- `or(A214077(n+1)+1, A000038(n))` -/
def P14914835587180256806.Spec : Prop :=
  ∀ n, P14914835587180256806.a n = A214076 (n + 1)

end A214076

/-! ## A214076.P11674180903998879194

`(A214077(n+1)+1)/A054977(n+1)`
-/

namespace A214076.P11674180903998879194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214077 (n + 1) + 1 : ℚ) / (A054977 (n + 1) : ℚ)

end

end A214076.P11674180903998879194

namespace A214076

/-- `(A214077(n+1)+1)/A054977(n+1)` -/
def P11674180903998879194.Spec : Prop :=
  ∀ n, P11674180903998879194.a n = (A214076 (n + 1) : ℚ)

end A214076

/-! ## A214076.P17649815921545092944

`ceil(exp((n+1)/3))%A296265(n)`
-/

namespace A214076.P17649815921545092944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.exp ((n + 1 : ℚ) / 3 : ℝ)⌉ (A296265 n)

end

end A214076.P17649815921545092944

namespace A214076

/-- `ceil(exp((n+1)/3))%A296265(n)` -/
def P17649815921545092944.Spec : Prop :=
  ∀ n, P17649815921545092944.a n = A214076 (n + 1)

end A214076

/-! ## A214076.P4741139915358742938

`floor(and(1, A003261(n+1))+exp((n+1)/3))`
-/

namespace A214076.P4741139915358742938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land 1 (A003261 (n + 1)) : ℝ) + Real.exp ((n + 1 : ℚ) / 3 : ℝ)⌋

end

end A214076.P4741139915358742938

namespace A214076

/-- `floor(and(1, A003261(n+1))+exp((n+1)/3))` -/
def P4741139915358742938.Spec : Prop :=
  ∀ n, P4741139915358742938.a n = A214076 (n + 1)

end A214076

/-! ## A214076.P9222240617487605290

`(A214077(n+1)+1)%A214113(n+1)`
-/

namespace A214076.P9222240617487605290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214077 (n + 1) + 1) (A214113 (n + 1))

end

end A214076.P9222240617487605290

namespace A214076

/-- `(A214077(n+1)+1)%A214113(n+1)` -/
def P9222240617487605290.Spec : Prop :=
  ∀ n, P9222240617487605290.a n = A214076 (n + 1)

end A214076

/-!
# A214077: a(n) = floor(e^(n/3)).

The programs for A214077, the canonical program `A214077.P264520403047168222` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214077 has offset 1).

The definition of A214077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214077.P264520403047168222

`floor(exp(n+1)^(1/3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214077

/-- `floor(exp(n+1)^(1/3))` -/
def P264520403047168222.Spec : Prop :=
  ∀ n, P264520403047168222.a n = A214077 (n + 1)

theorem P264520403047168222.correct : P264520403047168222.Spec := by
  intro n
  simp only [A214077, Nat.add_sub_cancel]

end A214077

/-! ## A214077.P943174614484166143

`A214076(n+1)-1`
-/

namespace A214077.P943174614484166143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214076 (n + 1) - 1

end

end A214077.P943174614484166143

namespace A214077

/-- `A214076(n+1)-1` -/
def P943174614484166143.Spec : Prop :=
  ∀ n, P943174614484166143.a n = A214077 (n + 1)

end A214077

/-! ## A214077.P15239945583832151521

`A260196(n+2)+A214076(n+1)`
-/

namespace A214077.P15239945583832151521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A214076 (n + 1)

end

end A214077.P15239945583832151521

namespace A214077

/-- `A260196(n+2)+A214076(n+1)` -/
def P15239945583832151521.Spec : Prop :=
  ∀ n, P15239945583832151521.a n = A214077 (n + 1)

end A214077

/-! ## A214077.P1930170097942837111

`abs(A214076(n+1)+A008683(A007918(n)))`
-/

namespace A214077.P1930170097942837111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214076 (n + 1) + A008683 (A007918 n).toNat|

end

end A214077.P1930170097942837111

namespace A214077

/-- `abs(A214076(n+1)+A008683(A007918(n)))` -/
def P1930170097942837111.Spec : Prop :=
  ∀ n, P1930170097942837111.a n = A214077 (n + 1)

end A214077

/-! ## A214077.P12315567104269801708

`floor(exp((n+1)/3))%A335161(n)`
-/

namespace A214077.P12315567104269801708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.exp ((n + 1 : ℚ) / 3 : ℝ)⌋ (A335161 n)

end

end A214077.P12315567104269801708

namespace A214077

/-- `floor(exp((n+1)/3))%A335161(n)` -/
def P12315567104269801708.Spec : Prop :=
  ∀ n, P12315567104269801708.a n = A214077 (n + 1)

end A214077

/-! ## A214077.P8811349988461782500

`A000007(A008288(n))+floor(exp((n+1)/3))`
-/

namespace A214077.P8811349988461782500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008288 n).toNat + ⌊Real.exp ((n + 1 : ℚ) / 3 : ℝ)⌋

end

end A214077.P8811349988461782500

namespace A214077

/-- `A000007(A008288(n))+floor(exp((n+1)/3))` -/
def P8811349988461782500.Spec : Prop :=
  ∀ n, P8811349988461782500.a n = A214077 (n + 1)

end A214077

/-! ## A214077.P14284917513701358814

`A000007(A157339(n))+floor(exp((n+1)/3))`
-/

namespace A214077.P14284917513701358814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A157339 n).toNat + ⌊Real.exp ((n + 1 : ℚ) / 3 : ℝ)⌋

end

end A214077.P14284917513701358814

namespace A214077

/-- `A000007(A157339(n))+floor(exp((n+1)/3))` -/
def P14284917513701358814.Spec : Prop :=
  ∀ n, P14284917513701358814.a n = A214077 (n + 1)

end A214077

/-! ## A214077.P11683939617867892659

`floor(exp((n+1)/3))*A049240(A256585(n+1))`
-/

namespace A214077.P11683939617867892659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n + 1 : ℚ) / 3 : ℝ)⌋ * A049240 (A256585 (n + 1)).toNat

end

end A214077.P11683939617867892659

namespace A214077

/-- `floor(exp((n+1)/3))*A049240(A256585(n+1))` -/
def P11683939617867892659.Spec : Prop :=
  ∀ n, P11683939617867892659.a n = A214077 (n + 1)

end A214077

/-!
# A214078: a(n) = (ceiling (sqrt(n)))!.

The programs for A214078, the canonical program `A214078.P987108337410446918` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214078 has offset 0).

The definition of A214078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n))!` (program `A214078.P987108337410446918`, by `A214078.P987108337410446918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214078.P987108337410446918

`ceil(sqrt(n))!`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214078

/-- `ceil(sqrt(n))!` -/
def P987108337410446918.Spec : Prop :=
  ∀ n, (P987108337410446918.a n : ℤ) = A214078 n

theorem P987108337410446918.correct : P987108337410446918.Spec := by
  intro n
  simp only [A214078]

end A214078

/-! ## A214078.P16020929369263673083

`A000142(ceil(sqrt(n)))`
-/

namespace A214078.P16020929369263673083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ⌈Real.sqrt (n : ℝ)⌉.toNat

end

end A214078.P16020929369263673083

namespace A214078

/-- `A000142(ceil(sqrt(n)))` -/
def P16020929369263673083.Spec : Prop :=
  ∀ n, P16020929369263673083.a n = A214078 n

end A214078

/-! ## A214078.P1197281133512234673

`A214080(ceil(sqrt(n))²)`
-/

namespace A214078.P1197281133512234673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (⌈Real.sqrt (n : ℝ)⌉ ^ 2).toNat

end

end A214078.P1197281133512234673

namespace A214078

/-- `A214080(ceil(sqrt(n))²)` -/
def P1197281133512234673.Spec : Prop :=
  ∀ n, P1197281133512234673.a n = A214078 n

end A214078

/-! ## A214078.P2430520742320945961

`A104150(ceil(sqrt(n))+1)`
-/

namespace A214078.P2430520742320945961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (⌈Real.sqrt (n : ℝ)⌉ + 1).toNat

end

end A214078.P2430520742320945961

namespace A214078

/-- `A104150(ceil(sqrt(n))+1)` -/
def P2430520742320945961.Spec : Prop :=
  ∀ n, P2430520742320945961.a n = A214078 n

end A214078

/-! ## A214078.P276544010472662270

`A038507(ceil(sqrt(n)))-1`
-/

namespace A214078.P276544010472662270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 ⌈Real.sqrt (n : ℝ)⌉.toNat - 1

end

end A214078.P276544010472662270

namespace A214078

/-- `A038507(ceil(sqrt(n)))-1` -/
def P276544010472662270.Spec : Prop :=
  ∀ n, P276544010472662270.a n = A214078 n

end A214078

/-! ## A214078.P14790232644740468481

`A081123(2*ceil(sqrt(n)))`
-/

namespace A214078.P14790232644740468481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * ⌈Real.sqrt (n : ℝ)⌉).toNat

end

end A214078.P14790232644740468481

namespace A214078

/-- `A081123(2*ceil(sqrt(n)))` -/
def P14790232644740468481.Spec : Prop :=
  ∀ n, P14790232644740468481.a n = A214078 n

end A214078

/-! ## A214078.P16560202299620474191

`A324225(A232091(n)+1)`
-/

namespace A214078.P16560202299620474191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A232091 n + 1).toNat

end

end A214078.P16560202299620474191

namespace A214078

/-- `A324225(A232091(n)+1)` -/
def P16560202299620474191.Spec : Prop :=
  ∀ n, P16560202299620474191.a n = A214078 n

end A214078

/-! ## A214078.P16603772891756369993

`A324225(A068527(n)+1+n)`
-/

namespace A214078.P16603772891756369993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A068527 n + 1 + (n : ℤ)).toNat

end

end A214078.P16603772891756369993

namespace A214078

/-- `A324225(A068527(n)+1+n)` -/
def P16603772891756369993.Spec : Prop :=
  ∀ n, P16603772891756369993.a n = A214078 n

end A214078

/-! ## A214078.P18357377806128096195

`A322225(ceil(sqrt(n))²)`
-/

namespace A214078.P18357377806128096195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322225 (⌈Real.sqrt (n : ℝ)⌉ ^ 2).toNat

end

end A214078.P18357377806128096195

namespace A214078

/-- `A322225(ceil(sqrt(n))²)` -/
def P18357377806128096195.Spec : Prop :=
  ∀ n, P18357377806128096195.a n = A214078 n

end A214078

/-! ## A214078.P7967133249993684885

`A322235(ceil(sqrt(n))²)`
-/

namespace A214078.P7967133249993684885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (⌈Real.sqrt (n : ℝ)⌉ ^ 2).toNat

end

end A214078.P7967133249993684885

namespace A214078

/-- `A322235(ceil(sqrt(n))²)` -/
def P7967133249993684885.Spec : Prop :=
  ∀ n, P7967133249993684885.a n = A214078 n

end A214078

/-! ## A214078.P8435990267513120627

`A072346(2*ceil(sqrt(n)))`
-/

namespace A214078.P8435990267513120627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 (2 * ⌈Real.sqrt (n : ℝ)⌉).toNat

end

end A214078.P8435990267513120627

namespace A214078

/-- `A072346(2*ceil(sqrt(n)))` -/
def P8435990267513120627.Spec : Prop :=
  ∀ n, P8435990267513120627.a n = A214078 n

end A214078

/-! ## A214078.P10234274135918986734

`A322229(ceil(sqrt(n))²)`
-/

namespace A214078.P10234274135918986734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322229 (⌈Real.sqrt (n : ℝ)⌉ ^ 2).toNat

end

end A214078.P10234274135918986734

namespace A214078

/-- `A322229(ceil(sqrt(n))²)` -/
def P10234274135918986734.Spec : Prop :=
  ∀ n, P10234274135918986734.a n = A214078 n

end A214078

/-! ## A214078.P121555016738699564

`A322891(ceil(sqrt(n))²)`
-/

namespace A214078.P121555016738699564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322891 (⌈Real.sqrt (n : ℝ)⌉ ^ 2).toNat

end

end A214078.P121555016738699564

namespace A214078

/-- `A322891(ceil(sqrt(n))²)` -/
def P121555016738699564.Spec : Prop :=
  ∀ n, P121555016738699564.a n = A214078 n

end A214078

/-! ## A214078.P2635969799376160831

`A214079(A396752(n))`
-/

namespace A214078.P2635969799376160831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214079 (A396752 n).toNat

end

end A214078.P2635969799376160831

namespace A214078

/-- `A214079(A396752(n))` -/
def P2635969799376160831.Spec : Prop :=
  ∀ n, P2635969799376160831.a n = A214078 n

end A214078

/-! ## A214078.P13388382568939414321

`A214079(n*A000196(n))`
-/

namespace A214078.P13388382568939414321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214079 ((n : ℤ) * A000196 n).toNat

end

end A214078.P13388382568939414321

namespace A214078

/-- `A214079(n*A000196(n))` -/
def P13388382568939414321.Spec : Prop :=
  ∀ n, P13388382568939414321.a n = A214078 n

end A214078

/-! ## A214078.P4762582985553275755

`A214079(A000093(n))`
-/

namespace A214078.P4762582985553275755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214079 (A000093 n).toNat

end

end A214078.P4762582985553275755

namespace A214078

/-- `A214079(A000093(n))` -/
def P4762582985553275755.Spec : Prop :=
  ∀ n, P4762582985553275755.a n = A214078 n

end A214078

/-! ## A214078.P5949843133374317711

`A214079(A002821(n))`
-/

namespace A214078.P5949843133374317711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214079 (A002821 n).toNat

end

end A214078.P5949843133374317711

namespace A214078

/-- `A214079(A002821(n))` -/
def P5949843133374317711.Spec : Prop :=
  ∀ n, P5949843133374317711.a n = A214078 n

end A214078

/-! ## A214078.P3489418463550426680

`A214079(A185549(n))`
-/

namespace A214078.P3489418463550426680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214079 (A185549 n).toNat

end

end A214078.P3489418463550426680

namespace A214078

/-- `A214079(A185549(n))` -/
def P3489418463550426680.Spec : Prop :=
  ∀ n, P3489418463550426680.a n = A214078 n

end A214078

/-! ## A214078.P12564473142591310954

`A214079(A166447(n))`
-/

namespace A214078.P12564473142591310954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214079 (A166447 n).toNat

end

end A214078.P12564473142591310954

namespace A214078

/-- `A214079(A166447(n))` -/
def P12564473142591310954.Spec : Prop :=
  ∀ n, P12564473142591310954.a n = A214078 n

end A214078

/-!
# A214079: a(n) = ceiling( n^(1/3) )!.

The programs for A214079, the canonical program `A214079.P10108013939717663940` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214079 has offset 0).

The definition of A214079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214079.P10108013939717663940

`∑[char[n^3+1]]!`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214079

/-- `∑[char[n^3+1]]!` -/
def P10108013939717663940.Spec : Prop :=
  ∀ n, (P10108013939717663940.a n : ℤ) = A214079 n

theorem P10108013939717663940.correct : P10108013939717663940.Spec := by
  intro n
  simp only [A214079]

end A214079

/-! ## A214079.P2698850391967042582

`A000142(∑[char[n^3+1]])`
-/

namespace A214079.P2698850391967042582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214079.P2698850391967042582

namespace A214079

/-- `A000142(∑[char[n^3+1]])` -/
def P2698850391967042582.Spec : Prop :=
  ∀ n, P2698850391967042582.a n = A214079 n

end A214079

/-! ## A214079.P8834699978525017238

`A233543(A000096(∑[char[n^3+1]]))`
-/

namespace A214079.P8834699978525017238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 (A000096 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A214079.P8834699978525017238

namespace A214079

/-- `A233543(A000096(∑[char[n^3+1]]))` -/
def P8834699978525017238.Spec : Prop :=
  ∀ n, P8834699978525017238.a n = A214079 n

end A214079

/-! ## A214079.P4300914967505234087

`A214081(A048763(n))`
-/

namespace A214079.P4300914967505234087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214081 (A048763 n).toNat

end

end A214079.P4300914967505234087

namespace A214079

/-- `A214081(A048763(n))` -/
def P4300914967505234087.Spec : Prop :=
  ∀ n, P4300914967505234087.a n = A214079 n

end A214079

/-! ## A214079.P3301691998493547502

`A328617(∑[char[A000578(n)+1]]!)`
-/

namespace A214079.P3301691998493547502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A214079.P3301691998493547502

namespace A214079

/-- `A328617(∑[char[A000578(n)+1]]!)` -/
def P3301691998493547502.Spec : Prop :=
  ∀ n, P3301691998493547502.a n = A214079 n

end A214079

/-! ## A214079.P2258524537608164933

`A214078(A121536(n+1))`
-/

namespace A214079.P2258524537608164933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A121536 (n + 1)).toNat

end

end A214079.P2258524537608164933

namespace A214079

/-- `A214078(A121536(n+1))` -/
def P2258524537608164933.Spec : Prop :=
  ∀ n, P2258524537608164933.a n = A214079 n

end A214079

/-! ## A214079.P3114403990172232444

`A138902(n*A330236(n+3))`
-/

namespace A214079.P3114403990172232444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 ((n : ℤ) * A330236 (n + 3)).toNat

end

end A214079.P3114403990172232444

namespace A214079

/-- `A138902(n*A330236(n+3))` -/
def P3114403990172232444.Spec : Prop :=
  ∀ n, P3114403990172232444.a n = A214079 n

end A214079

/-! ## A214079.P3551398261833674789

`A138902(∑[A231013(n+1)])`
-/

namespace A214079.P3551398261833674789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214079.P3551398261833674789

namespace A214079

/-- `A138902(∑[A231013(n+1)])` -/
def P3551398261833674789.Spec : Prop :=
  ∀ n, P3551398261833674789.a n = A214079 n

end A214079

/-! ## A214079.P2975025363686186192

`A138902(A029912(n+1)*A044051(n+1))`
-/

namespace A214079.P2975025363686186192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (A029912 (n + 1) * A044051 (n + 1)).toNat

end

end A214079.P2975025363686186192

namespace A214079

/-- `A138902(A029912(n+1)*A044051(n+1))` -/
def P2975025363686186192.Spec : Prop :=
  ∀ n, P2975025363686186192.a n = A214079 n

end A214079

/-! ## A214079.P12085484245693406664

`A214081(A381435(n+1))`
-/

namespace A214079.P12085484245693406664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214081 (A381435 (n + 1)).toNat

end

end A214079.P12085484245693406664

namespace A214079

/-- `A214081(A381435(n+1))` -/
def P12085484245693406664.Spec : Prop :=
  ∀ n, P12085484245693406664.a n = A214079 n

end A214079

/-!
# A214080: a(n) = (floor(sqrt(n)))!

The programs for A214080, the canonical program `A214080.P11622506106704483006` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214080 has offset 0).

The definition of A214080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n))!` (program `A214080.P11622506106704483006`, by `A214080.P11622506106704483006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214080.P11622506106704483006

`floor(sqrt(n))!`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214080

/-- `floor(sqrt(n))!` -/
def P11622506106704483006.Spec : Prop :=
  ∀ n, (P11622506106704483006.a n : ℤ) = A214080 n

theorem P11622506106704483006.correct : P11622506106704483006.Spec := by
  intro n
  simp only [A214080]

end A214080

/-! ## A214080.P8544244692238161218

`A000142(A000196(n))`
-/

namespace A214080.P8544244692238161218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000196 n).toNat

end

end A214080.P8544244692238161218

namespace A214080

/-- `A000142(A000196(n))` -/
def P8544244692238161218.Spec : Prop :=
  ∀ n, P8544244692238161218.a n = A214080 n

end A214080

/-! ## A214080.P14043417186347333164

`∏[n^(char[(n+1)²]/2)]`
-/

namespace A214080.P14043417186347333164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214080.P14043417186347333164

namespace A214080

/-- `∏[n^(char[(n+1)²]/2)]` -/
def P14043417186347333164.Spec : Prop :=
  ∀ n, P14043417186347333164.a n = (A214080 n : ℝ)

end A214080

/-! ## A214080.P14776813037985310086

`A000142(floor(sqrt(n)))`
-/

namespace A214080.P14776813037985310086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Nat.sqrt n)

end

end A214080.P14776813037985310086

namespace A214080

/-- `A000142(floor(sqrt(n)))` -/
def P14776813037985310086.Spec : Prop :=
  ∀ n, P14776813037985310086.a n = A214080 n

end A214080

/-! ## A214080.P14141564857287117834

`A214078(floor(sqrt(n))²)`
-/

namespace A214080.P14141564857287117834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (Nat.sqrt n ^ 2)

end

end A214080.P14141564857287117834

namespace A214080

/-- `A214078(floor(sqrt(n))²)` -/
def P14141564857287117834.Spec : Prop :=
  ∀ n, P14141564857287117834.a n = A214080 n

end A214080

/-! ## A214080.P8486966135565314028

`A104150(∑[char[n²]])`
-/

namespace A214080.P8486966135565314028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214080.P8486966135565314028

namespace A214080

/-- `A104150(∑[char[n²]])` -/
def P8486966135565314028.Spec : Prop :=
  ∀ n, P8486966135565314028.a n = A214080 n

end A214080

/-! ## A214080.P10990612285417731546

`A038507(floor(sqrt(n)))-1`
-/

namespace A214080.P10990612285417731546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (Nat.sqrt n) - 1

end

end A214080.P10990612285417731546

namespace A214080

/-- `A038507(floor(sqrt(n)))-1` -/
def P10990612285417731546.Spec : Prop :=
  ∀ n, P10990612285417731546.a n = A214080 n

end A214080

/-! ## A214080.P1549867200089719786

`A081123(floor(2*sqrt(n)))`
-/

namespace A214080.P1549867200089719786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 ⌊2 * Real.sqrt (n : ℝ)⌋.toNat

end

end A214080.P1549867200089719786

namespace A214080

/-- `A081123(floor(2*sqrt(n)))` -/
def P1549867200089719786.Spec : Prop :=
  ∀ n, P1549867200089719786.a n = A214080 n

end A214080

/-! ## A214080.P5699410441958246408

`a(n-1)*A056926(n)` with `a(0)=1`
-/

namespace A214080.P5699410441958246408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A056926 n

end

end A214080.P5699410441958246408

namespace A214080

/-- `a(n-1)*A056926(n)` -/
def P5699410441958246408.Spec : Prop :=
  ∀ n, P5699410441958246408.a n = A214080 n

end A214080

/-! ## A214080.P1805438112840146503

`A033295(A048761(n+1))`
-/

namespace A214080.P1805438112840146503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033295 (A048761 (n + 1)).toNat

end

end A214080.P1805438112840146503

namespace A214080

/-- `A033295(A048761(n+1))` -/
def P1805438112840146503.Spec : Prop :=
  ∀ n, P1805438112840146503.a n = A214080 n

end A214080

/-! ## A214080.P14313729263620500891

`A284994(A130819(n+1))`
-/

namespace A214080.P14313729263620500891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 (A130819 (n + 1)).toNat

end

end A214080.P14313729263620500891

namespace A214080

/-- `A284994(A130819(n+1))` -/
def P14313729263620500891.Spec : Prop :=
  ∀ n, P14313729263620500891.a n = A214080 n

end A214080

/-! ## A214080.P17901567636256995710

`∏[A056926(n+1)]/A056926(n+1)`
-/

namespace A214080.P17901567636256995710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A056926 (n + 1) : ℚ)

end

end A214080.P17901567636256995710

namespace A214080

/-- `∏[A056926(n+1)]/A056926(n+1)` -/
def P17901567636256995710.Spec : Prop :=
  ∀ n, P17901567636256995710.a n = (A214080 n : ℚ)

end A214080

/-! ## A214080.P4058696187420378415

`A324225(n+1)/A004737(n+1)`
-/

namespace A214080.P4058696187420378415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324225 (n + 1) : ℚ) / (A004737 (n + 1) : ℚ)

end

end A214080.P4058696187420378415

namespace A214080

/-- `A324225(n+1)/A004737(n+1)` -/
def P4058696187420378415.Spec : Prop :=
  ∀ n, P4058696187420378415.a n = (A214080 n : ℚ)

end A214080

/-! ## A214080.P2965181983046974532

`gcd(A324225(n+1), A324225(n+2))`
-/

namespace A214080.P2965181983046974532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324225 (n + 1)) (A324225 (n + 2))

end

end A214080.P2965181983046974532

namespace A214080

/-- `gcd(A324225(n+1), A324225(n+2))` -/
def P2965181983046974532.Spec : Prop :=
  ∀ n, (P2965181983046974532.a n : ℤ) = A214080 n

end A214080

/-! ## A214080.P12544992558153253146

`A214078(n+1)/A003059(n+1)`
-/

namespace A214080.P12544992558153253146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214078 (n + 1) : ℚ) / (A003059 (n + 1) : ℚ)

end

end A214080.P12544992558153253146

namespace A214080

/-- `A214078(n+1)/A003059(n+1)` -/
def P12544992558153253146.Spec : Prop :=
  ∀ n, P12544992558153253146.a n = (A214080 n : ℚ)

end A214080

/-! ## A214080.P10324384836040716238

`A322225(floor(sqrt(n))²)`
-/

namespace A214080.P10324384836040716238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322225 (Nat.sqrt n ^ 2)

end

end A214080.P10324384836040716238

namespace A214080

/-- `A322225(floor(sqrt(n))²)` -/
def P10324384836040716238.Spec : Prop :=
  ∀ n, P10324384836040716238.a n = A214080 n

end A214080

/-! ## A214080.P8905261482766705143

`A322235(floor(sqrt(n))²)`
-/

namespace A214080.P8905261482766705143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322235 (Nat.sqrt n ^ 2)

end

end A214080.P8905261482766705143

namespace A214080

/-- `A322235(floor(sqrt(n))²)` -/
def P8905261482766705143.Spec : Prop :=
  ∀ n, P8905261482766705143.a n = A214080 n

end A214080

/-! ## A214080.P8391787937441295581

`sqrt(A001044(floor(sqrt(n))))`
-/

namespace A214080.P8391787937441295581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001044 (Nat.sqrt n) : ℝ)

end

end A214080.P8391787937441295581

namespace A214080

/-- `sqrt(A001044(floor(sqrt(n))))` -/
def P8391787937441295581.Spec : Prop :=
  ∀ n, P8391787937441295581.a n = (A214080 n : ℝ)

end A214080

/-! ## A214080.P3576131908556809495

`A322229(floor(sqrt(n))²)`
-/

namespace A214080.P3576131908556809495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322229 (Nat.sqrt n ^ 2)

end

end A214080.P3576131908556809495

namespace A214080

/-- `A322229(floor(sqrt(n))²)` -/
def P3576131908556809495.Spec : Prop :=
  ∀ n, P3576131908556809495.a n = A214080 n

end A214080

/-!
# A214081: a(n) = floor( n^(1/3) )!.

The programs for A214081, the canonical program `A214081.P11361497169394466987` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214081 has offset 0).

The definition of A214081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048766, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214081.P11361497169394466987

`A000142(A048766(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214081

/-- `A000142(A048766(n))` -/
def P11361497169394466987.Spec : Prop :=
  ∀ n, P11361497169394466987.a n = A214081 n

theorem P11361497169394466987.correct : P11361497169394466987.Spec := by
  intro n
  simp only [A214081]

end A214081

/-! ## A214081.P15006164634725376863

`floor(n^(1/3))!`
-/

namespace A214081.P15006164634725376863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat

end

end A214081.P15006164634725376863

namespace A214081

/-- `floor(n^(1/3))!` -/
def P15006164634725376863.Spec : Prop :=
  ∀ n, (P15006164634725376863.a n : ℤ) = A214081 n

end A214081

/-! ## A214081.P6171711247979464102

`A000142(floor(n^(1/3)))`
-/

namespace A214081.P6171711247979464102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat

end

end A214081.P6171711247979464102

namespace A214081

/-- `A000142(floor(n^(1/3)))` -/
def P6171711247979464102.Spec : Prop :=
  ∀ n, P6171711247979464102.a n = A214081 n

end A214081

/-! ## A214081.P17656049998847174315

`A052560(floor(n^(1/3)))/3`
-/

namespace A214081.P17656049998847174315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052560 ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat : ℚ) / 3

end

end A214081.P17656049998847174315

namespace A214081

/-- `A052560(floor(n^(1/3)))/3` -/
def P17656049998847174315.Spec : Prop :=
  ∀ n, P17656049998847174315.a n = (A214081 n : ℚ)

end A214081

/-! ## A214081.P7369313870316968276

`A214080(A100196(n))`
-/

namespace A214081.P7369313870316968276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A100196 n).toNat

end

end A214081.P7369313870316968276

namespace A214081

/-- `A214080(A100196(n))` -/
def P7369313870316968276.Spec : Prop :=
  ∀ n, P7369313870316968276.a n = A214081 n

end A214081

/-! ## A214081.P5620940775695618120

`A214078(A048766(n)²)`
-/

namespace A214081.P5620940775695618120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A048766 n ^ 2).toNat

end

end A214081.P5620940775695618120

namespace A214081

/-- `A214078(A048766(n)²)` -/
def P5620940775695618120.Spec : Prop :=
  ∀ n, P5620940775695618120.a n = A214081 n

end A214081

/-! ## A214081.P11597315496072146255

`A214080(A048766(n)²)`
-/

namespace A214081.P11597315496072146255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A048766 n ^ 2).toNat

end

end A214081.P11597315496072146255

namespace A214081

/-- `A214080(A048766(n)²)` -/
def P11597315496072146255.Spec : Prop :=
  ∀ n, P11597315496072146255.a n = A214081 n

end A214081

/-! ## A214081.P10566911633751131568

`gcd(A048766(n)!, A000038(n))`
-/

namespace A214081.P10566911633751131568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A048766 n).toNat : ℤ) (A000038 n)

end

end A214081.P10566911633751131568

namespace A214081

/-- `gcd(A048766(n)!, A000038(n))` -/
def P10566911633751131568.Spec : Prop :=
  ∀ n, (P10566911633751131568.a n : ℤ) = A214081 n

end A214081

/-! ## A214081.P6594605885757990561

`lcm(A048766(n)!, A020985(n))`
-/

namespace A214081.P6594605885757990561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A048766 n).toNat : ℤ) (A020985 n)

end

end A214081.P6594605885757990561

namespace A214081

/-- `lcm(A048766(n)!, A020985(n))` -/
def P6594605885757990561.Spec : Prop :=
  ∀ n, (P6594605885757990561.a n : ℤ) = A214081 n

end A214081

/-! ## A214081.P10434930765488935110

`A214080((1-A134914(n+1))²)`
-/

namespace A214081.P10434930765488935110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 ((1 - A134914 (n + 1)) ^ 2).toNat

end

end A214081.P10434930765488935110

namespace A214081

/-- `A214080((1-A134914(n+1))²)` -/
def P10434930765488935110.Spec : Prop :=
  ∀ n, P10434930765488935110.a n = A214081 n

end A214081

/-! ## A214081.P11547855211572263393

`A119502(A004273(A048766(n)²))`
-/

namespace A214081.P11547855211572263393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A004273 (A048766 n ^ 2).toNat).toNat

end

end A214081.P11547855211572263393

namespace A214081

/-- `A119502(A004273(A048766(n)²))` -/
def P11547855211572263393.Spec : Prop :=
  ∀ n, P11547855211572263393.a n = A214081 n

end A214081

/-! ## A214081.P10882242174269732926

`A214080(A134914(n+1)²)/A134914(n+1)`
-/

namespace A214081.P10882242174269732926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214080 (A134914 (n + 1) ^ 2).toNat : ℚ) / (A134914 (n + 1) : ℚ)

end

end A214081.P10882242174269732926

namespace A214081

/-- `A214080(A134914(n+1)²)/A134914(n+1)` -/
def P10882242174269732926.Spec : Prop :=
  ∀ n, P10882242174269732926.a n = (A214081 n : ℚ)

end A214081

/-! ## A214081.P13336726612012645246

`A214079(n+1)/A134914(n+1)`
-/

namespace A214081.P13336726612012645246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214079 (n + 1) : ℚ) / (A134914 (n + 1) : ℚ)

end

end A214081.P13336726612012645246

namespace A214081

/-- `A214079(n+1)/A134914(n+1)` -/
def P13336726612012645246.Spec : Prop :=
  ∀ n, P13336726612012645246.a n = (A214081 n : ℚ)

end A214081

/-! ## A214081.P9754469178840649801

`A028310(A048766(n)!)`
-/

namespace A214081.P9754469178840649801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.factorial (A048766 n).toNat)

end

end A214081.P9754469178840649801

namespace A214081

/-- `A028310(A048766(n)!)` -/
def P9754469178840649801.Spec : Prop :=
  ∀ n, P9754469178840649801.a n = A214081 n

end A214081

/-! ## A214081.P13435441381723123154

`A048766(n)!%A332647(n)`
-/

namespace A214081.P13435441381723123154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A048766 n).toNat : ℤ) (A332647 n)

end

end A214081.P13435441381723123154

namespace A214081

/-- `A048766(n)!%A332647(n)` -/
def P13435441381723123154.Spec : Prop :=
  ∀ n, P13435441381723123154.a n = A214081 n

end A214081

/-! ## A214081.P8280025602829506745

`A138902(A000433(n))`
-/

namespace A214081.P8280025602829506745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (A000433 n).toNat

end

end A214081.P8280025602829506745

namespace A214081

/-- `A138902(A000433(n))` -/
def P8280025602829506745.Spec : Prop :=
  ∀ n, P8280025602829506745.a n = A214081 n

end A214081

/-! ## A214081.P12670807245170704206

`A351870(A048766(n)!)`
-/

namespace A214081.P12670807245170704206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (Nat.factorial (A048766 n).toNat)

end

end A214081.P12670807245170704206

namespace A214081

/-- `A351870(A048766(n)!)` -/
def P12670807245170704206.Spec : Prop :=
  ∀ n, P12670807245170704206.a n = A214081 n

end A214081

/-! ## A214081.P3001754718164737312

`A033676(A048766(n)!²)`
-/

namespace A214081.P3001754718164737312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Nat.factorial (A048766 n).toNat ^ 2)

end

end A214081.P3001754718164737312

namespace A214081

/-- `A033676(A048766(n)!²)` -/
def P3001754718164737312.Spec : Prop :=
  ∀ n, P3001754718164737312.a n = A214081 n

end A214081

/-!
# A214083: a(n) = floor(n!^(1/3)).

The programs for A214083, the canonical program `A214083.P3810904837420815320` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214083 has offset 0).

The definition of A214083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n!^(1/3))` (program `A214083.P3810904837420815320`, by `A214083.P3810904837420815320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214083.P3810904837420815320

`floor(n!^(1/3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214083

/-- `floor(n!^(1/3))` -/
def P3810904837420815320.Spec : Prop :=
  ∀ n, P3810904837420815320.a n = A214083 n

theorem P3810904837420815320.correct : P3810904837420815320.Spec := by
  intro n
  simp only [A214083]

end A214083

/-! ## A214083.P5268047526508461163

`floor(∏[root(A028310(n), 3)])`
-/

namespace A214083.P5268047526508461163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A214083.P5268047526508461163

namespace A214083

/-- `floor(∏[root(A028310(n), 3)])` -/
def P5268047526508461163.Spec : Prop :=
  ∀ n, P5268047526508461163.a n = A214083 n

end A214083

/-! ## A214083.P4212549067624485532

`A214049(round(acot(n)+n))-1`
-/

namespace A214083.P4212549067624485532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214049 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A214083.P4212549067624485532

namespace A214083

/-- `A214049(round(acot(n)+n))-1` -/
def P4212549067624485532.Spec : Prop :=
  ∀ n, P4212549067624485532.a n = A214083 n

end A214083

/-! ## A214083.P7140977709372093100

`floor(root(n!, 3))`
-/

namespace A214083.P7140977709372093100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A214083.P7140977709372093100

namespace A214083

/-- `floor(root(n!, 3))` -/
def P7140977709372093100.Spec : Prop :=
  ∀ n, P7140977709372093100.a n = A214083 n

theorem P7140977709372093100.correct : P7140977709372093100.Spec := by
  intro n
  simp only [A214083, Nat.add_sub_cancel, A214083.P7140977709372093100.a, A214083.P3810904837420815320.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A214083

/-! ## A214083.P3821149220989411140

`floor(root(∏[(2^n)%2+n], 3))`
-/

namespace A214083.P3821149220989411140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A214083.P3821149220989411140

namespace A214083

/-- `floor(root(∏[(2^n)%2+n], 3))` -/
def P3821149220989411140.Spec : Prop :=
  ∀ n, P3821149220989411140.a n = A214083 n

end A214083

/-! ## A214083.P18365553223573152397

`floor(root(-∏[n-C(2, n+2)], 3))`
-/

namespace A214083.P18365553223573152397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-(∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A214083.P18365553223573152397

namespace A214083

/-- `floor(root(-∏[n-C(2, n+2)], 3))` -/
def P18365553223573152397.Spec : Prop :=
  ∀ n, P18365553223573152397.a n = A214083 n

end A214083

/-! ## A214083.P13371459070617607729

`floor(root(A000142(n), 3))`
-/

namespace A214083.P13371459070617607729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A214083.P13371459070617607729

namespace A214083

/-- `floor(root(A000142(n), 3))` -/
def P13371459070617607729.Spec : Prop :=
  ∀ n, P13371459070617607729.a n = A214083 n

end A214083

/-! ## A214083.P5051503661208821237

`floor(root(A038507(n), 3))`
-/

namespace A214083.P5051503661208821237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038507 n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A214083.P5051503661208821237

namespace A214083

/-- `floor(root(A038507(n), 3))` -/
def P5051503661208821237.Spec : Prop :=
  ∀ n, P5051503661208821237.a n = A214083 n

end A214083

/-! ## A214083.P4259731482994939319

`floor(root(Δ[A003422(n)], 3))`
-/

namespace A214083.P4259731482994939319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A214083.P4259731482994939319

namespace A214083

/-- `floor(root(Δ[A003422(n)], 3))` -/
def P4259731482994939319.Spec : Prop :=
  ∀ n, P4259731482994939319.a n = A214083 n

end A214083

/-! ## A214083.P15573936413401769773

`floor(root(∏[A004277(n)-n], 3))`
-/

namespace A214083.P15573936413401769773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A214083.P15573936413401769773

namespace A214083

/-- `floor(root(∏[A004277(n)-n], 3))` -/
def P15573936413401769773.Spec : Prop :=
  ∀ n, P15573936413401769773.a n = A214083 n

end A214083

/-!
# A214085: a(n) = n^2 * (n^4 - n^2 + n + 1) / 2.

The programs for A214085, the canonical program `A214085.P16831537564671704103` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214085 has offset 0).

The definition of A214085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214085.P16831537564671704103

`n²*(n^4-n²+n+1)/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214085

/-- `n²*(n^4-n²+n+1)/2` -/
def P16831537564671704103.Spec : Prop :=
  ∀ n, P16831537564671704103.a n = (A214085 n : ℚ)

end A214085

/-! ## A214085.P11139657535663243853

`A085743(n)+n²`
-/

namespace A214085.P11139657535663243853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085743 n + (n ^ 2 : ℤ)

end

end A214085.P11139657535663243853

namespace A214085

/-- `A085743(n)+n²` -/
def P11139657535663243853.Spec : Prop :=
  ∀ n, P11139657535663243853.a n = A214085 n

end A214085

/-! ## A214085.P5104536063549655166

`A071232(n)-C(n², 2)`
-/

namespace A214085.P5104536063549655166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n - (Nat.choose (n ^ 2) 2 : ℤ)

end

end A214085.P5104536063549655166

namespace A214085

/-- `A071232(n)-C(n², 2)` -/
def P5104536063549655166.Spec : Prop :=
  ∀ n, P5104536063549655166.a n = A214085 n

end A214085

/-! ## A214085.P17607235296379001087

`lcm(n*∑[n], A100104(n))`
-/

namespace A214085.P17607235296379001087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (A100104 n)

end

end A214085.P17607235296379001087

namespace A214085

/-- `lcm(n*∑[n], A100104(n))` -/
def P17607235296379001087.Spec : Prop :=
  ∀ n, (P17607235296379001087.a n : ℤ) = A214085 n

end A214085

/-! ## A214085.P11448984906099582757

`A002411(n)+n*A321672(n)`
-/

namespace A214085.P11448984906099582757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + (n : ℤ) * A321672 n

end

end A214085.P11448984906099582757

namespace A214085

/-- `A002411(n)+n*A321672(n)` -/
def P11448984906099582757.Spec : Prop :=
  ∀ n, P11448984906099582757.a n = A214085 n

end A214085

/-! ## A214085.P6488326254160382858

`A071232(n)-n*A135503(n)`
-/

namespace A214085.P6488326254160382858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n - (n : ℤ) * A135503 n

end

end A214085.P6488326254160382858

namespace A214085

/-- `A071232(n)-n*A135503(n)` -/
def P6488326254160382858.Spec : Prop :=
  ∀ n, P6488326254160382858.a n = A214085 n

end A214085

/-! ## A214085.P13356346553347213050

`n²+A071232(n)-A037270(n)`
-/

namespace A214085.P13356346553347213050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A071232 n - A037270 n)

end

end A214085.P13356346553347213050

namespace A214085

/-- `n²+A071232(n)-A037270(n)` -/
def P13356346553347213050.Spec : Prop :=
  ∀ n, P13356346553347213050.a n = A214085 n

end A214085

/-! ## A214085.P15960033823551344956

`n²+A167963(n)-A100855(n)`
-/

namespace A214085.P15960033823551344956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A167963 n - A100855 n)

end

end A214085.P15960033823551344956

namespace A214085

/-- `n²+A167963(n)-A100855(n)` -/
def P15960033823551344956.Spec : Prop :=
  ∀ n, P15960033823551344956.a n = A214085 n

end A214085

/-! ## A214085.P15107806389589645074

`n²+A100606(n)*A161680(n)`
-/

namespace A214085.P15107806389589645074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A100606 n * A161680 n

end

end A214085.P15107806389589645074

namespace A214085

/-- `n²+A100606(n)*A161680(n)` -/
def P15107806389589645074.Spec : Prop :=
  ∀ n, P15107806389589645074.a n = A214085 n

end A214085

/-! ## A214085.P8028826552191958844

`A168122(n)-n²*A161680(n)`
-/

namespace A214085.P8028826552191958844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 n - (n ^ 2 : ℤ) * A161680 n

end

end A214085.P8028826552191958844

namespace A214085

/-- `A168122(n)-n²*A161680(n)` -/
def P8028826552191958844.Spec : Prop :=
  ∀ n, P8028826552191958844.a n = A214085 n

end A214085

/-! ## A214085.P13323140342229351856

`A000217(n)+A071232(n)-A027441(n)`
-/

namespace A214085.P13323140342229351856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A071232 n - A027441 n)

end

end A214085.P13323140342229351856

namespace A214085

/-- `A000217(n)+A071232(n)-A027441(n)` -/
def P13323140342229351856.Spec : Prop :=
  ∀ n, P13323140342229351856.a n = A214085 n

end A214085

/-! ## A214085.P1308617753198802218

`A002411(n)+A002411(n)*A045991(n)`
-/

namespace A214085.P1308617753198802218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + A002411 n * A045991 n

end

end A214085.P1308617753198802218

namespace A214085

/-- `A002411(n)+A002411(n)*A045991(n)` -/
def P1308617753198802218.Spec : Prop :=
  ∀ n, P1308617753198802218.a n = A214085 n

end A214085

/-! ## A214085.P16090823469795770252

`A002411(n)+A000578(n)*A135503(n)`
-/

namespace A214085.P16090823469795770252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + A000578 n * A135503 n

end

end A214085.P16090823469795770252

namespace A214085

/-- `A002411(n)+A000578(n)*A135503(n)` -/
def P16090823469795770252.Spec : Prop :=
  ∀ n, P16090823469795770252.a n = A214085 n

end A214085

/-! ## A214085.P7538694206412494075

`A002411(n)+A045991(n²)/2`
-/

namespace A214085.P7538694206412494075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002411 n : ℚ) + (A045991 (n ^ 2) : ℚ) / 2

end

end A214085.P7538694206412494075

namespace A214085

/-- `A002411(n)+A045991(n²)/2` -/
def P7538694206412494075.Spec : Prop :=
  ∀ n, P7538694206412494075.a n = (A214085 n : ℚ)

end A214085

/-!
# A214086: Number of involutions of length n having exactly n inversions.

The programs for A214086, there is no canonical definition to state claims against.
-/

/-! ## A214086.P9454881977696774487

`abs(ceil(3*n/2)-A094862(n+1))`
-/

namespace A214086.P9454881977696774487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈3 * ((n : ℚ) / 2)⌉ - A094862 (n + 1)|

end

end A214086.P9454881977696774487

/-! ## A214086.P125937240778011629

`xor(A072088(A036378(n)), A233280(n))`
-/

namespace A214086.P125937240778011629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072088 (A036378 n).toNat) (A233280 n)

end

end A214086.P125937240778011629

/-! ## A214086.P18226155529589880437

`A352131(lt[A067402(n), A270648(n+1)])`
-/

namespace A214086.P18226155529589880437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214086.P18226155529589880437

/-! ## A214086.P7571763303497973882

`A198318(A289016(3*(n+1))+A256091(n+2))`
-/

namespace A214086.P7571763303497973882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A289016 (3 * (n + 1)) + A256091 (n + 2)).toNat

end

end A214086.P7571763303497973882

/-!
# A214087: Sum of the squares of numbers of nonconsecutive tableaux over all partitions of n.

The programs for A214087, there is no canonical definition to state claims against.
-/

/-! ## A214087.P17296409862459829543

`A061017(or(1, A184818(n)))`
-/

namespace A214087.P17296409862459829543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (Int.lor 1 (A184818 n)).toNat

end

end A214087.P17296409862459829543

/-! ## A214087.P13910469285473469804

`A061017(A352370(abs(1-n)))`
-/

namespace A214087.P13910469285473469804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A352370 |1 - (n : ℤ)|.toNat).toNat

end

end A214087.P13910469285473469804

/-! ## A214087.P647474322468321892

`A126257(n)+A126257(A351144(n))`
-/

namespace A214087.P647474322468321892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 n + A126257 (A351144 n).toNat

end

end A214087.P647474322468321892

/-! ## A214087.P9501588360110500367

`A061017(A184818(n)+A144607(2*n+3))`
-/

namespace A214087.P9501588360110500367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A184818 n + A144607 (2 * n + 3)).toNat

end

end A214087.P9501588360110500367

/-!
# A214088: Number A(n,k) of n X k nonconsecutive chess tableaux; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A214088, there is no canonical definition to state claims against.
-/

/-! ## A214088.P9943327602696265594

`A121802(A140995(n+1))`
-/

namespace A214088.P9943327602696265594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121802 (A140995 (n + 1)).toNat

end

end A214088.P9943327602696265594

/-! ## A214088.P11341312441515573915

`A121802(A141021(n+1))`
-/

namespace A214088.P11341312441515573915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121802 (A141021 (n + 1)).toNat

end

end A214088.P11341312441515573915

/-! ## A214088.P2891315685556823813

`A071005(A245501(n+1))`
-/

namespace A214088.P2891315685556823813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071005 (A245501 (n + 1)).toNat

end

end A214088.P2891315685556823813

/-! ## A214088.P15367780904444638679

`A050073(A293724(n+1))`
-/

namespace A214088.P15367780904444638679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050073 (A293724 (n + 1)).toNat

end

end A214088.P15367780904444638679

/-! ## A214088.P3368356417193820426

`A270742(A143632(n+1))`
-/

namespace A214088.P3368356417193820426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270742 (A143632 (n + 1)).toNat

end

end A214088.P3368356417193820426

/-!
# A214089: Least prime p such that the first n primes divide p^2-1.

The programs for A214089, there is no canonical definition to state claims against.
-/

/-! ## A214089.P4761633333262751431

`p?[2*A118478(n+1)+1]`
-/

namespace A214089.P4761633333262751431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118478 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214089.P4761633333262751431

/-! ## A214089.P8553409549680115255

`A005408(A118478(n+1))`
-/

namespace A214089.P8553409549680115255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A118478 (n + 1)).toNat

end

end A214089.P8553409549680115255

/-! ## A214089.P3371262954747482048

`A004273(A118478(n+1)+1)`
-/

namespace A214089.P3371262954747482048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A118478 (n + 1) + 1).toNat

end

end A214089.P3371262954747482048

/-!
# A214090: Period 6: repeat [0, 0, 1, 0, 1, 1].

The programs for A214090, the canonical program `A214090.P4233967368336879767` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214090 has offset 0).

The definition of A214090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214090.P4233967368336879767

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214090

/-- `a(n-6)` -/
def P4233967368336879767.Spec : Prop :=
  ∀ n, (P4233967368336879767.a n : ℤ) = A214090 n

theorem P4233967368336879767.correct : P4233967368336879767.Spec := by
  intro n
  simp only [A214090]

end A214090

/-!
# A214091: a(n) = 3^n - 2^(n+2).

The programs for A214091, the canonical program `A214091.P12934642212141174810` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214091 has offset 0).

The definition of A214091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-2^(n+2)` (program `A214091.P12934642212141174810`, by `A214091.P12934642212141174810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214091.P12934642212141174810

`3^n-2^(n+2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214091

/-- `3^n-2^(n+2)` -/
def P12934642212141174810.Spec : Prop :=
  ∀ n, P12934642212141174810.a n = A214091 n

theorem P12934642212141174810.correct : P12934642212141174810.Spec := by
  intro n
  simp only [A214091]

end A214091

/-! ## A214091.P13822051474868679608

`ogf((-3+10x)/(1-5x+6x^2))`
-/

namespace A214091.P13822051474868679608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 10] [1, -5, 6] n

end

end A214091.P13822051474868679608

namespace A214091

/-- `ogf((-3+10x)/(1-5x+6x^2))` -/
def P13822051474868679608.Spec : Prop :=
  ∀ n, P13822051474868679608.a n = A214091 n

end A214091

/-! ## A214091.P3368309748506952066

`Δ[A007051(n)-A020737(n)]`
-/

namespace A214091.P3368309748506952066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214091.P3368309748506952066

namespace A214091

/-- `Δ[A007051(n)-A020737(n)]` -/
def P3368309748506952066.Spec : Prop :=
  ∀ n, P3368309748506952066.a n = A214091 n

end A214091

/-! ## A214091.P16984884529420986206

`Δ[A115098(n)-A020707(n)]`
-/

namespace A214091.P16984884529420986206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214091.P16984884529420986206

namespace A214091

/-- `Δ[A115098(n)-A020707(n)]` -/
def P16984884529420986206.Spec : Prop :=
  ∀ n, P16984884529420986206.a n = A214091 n

end A214091

/-! ## A214091.P15830627591592730258

`Δ[A115098(n)-A020737(n)]`
-/

namespace A214091.P15830627591592730258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214091.P15830627591592730258

namespace A214091

/-- `Δ[A115098(n)-A020737(n)]` -/
def P15830627591592730258.Spec : Prop :=
  ∀ n, P15830627591592730258.a n = A214091 n

end A214091

/-! ## A214091.P6865173813084790915

`Δ[A134063(n)-A033484(n)]`
-/

namespace A214091.P6865173813084790915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n - A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214091.P6865173813084790915

namespace A214091

/-- `Δ[A134063(n)-A033484(n)]` -/
def P6865173813084790915.Spec : Prop :=
  ∀ n, P6865173813084790915.a n = A214091 n

end A214091

/-! ## A214091.P12554491510128883196

`Δ[A099754(n)-A153894(n)]`
-/

namespace A214091.P12554491510128883196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n - A153894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214091.P12554491510128883196

namespace A214091

/-- `Δ[A099754(n)-A153894(n)]` -/
def P12554491510128883196.Spec : Prop :=
  ∀ n, P12554491510128883196.a n = A214091 n

end A214091

/-! ## A214091.P3598959619271214966

`Δ[1-A003462(n)-A135913(n)]`
-/

namespace A214091.P3598959619271214966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003462 n - A135913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214091.P3598959619271214966

namespace A214091

/-- `Δ[1-A003462(n)-A135913(n)]` -/
def P3598959619271214966.Spec : Prop :=
  ∀ n, P3598959619271214966.a n = A214091 n

end A214091

/-! ## A214091.P13789529653587956465

`(A000400(n)-A000302(n+1))/A000079(n)`
-/

namespace A214091.P13789529653587956465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 n - A000302 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A214091.P13789529653587956465

namespace A214091

/-- `(A000400(n)-A000302(n+1))/A000079(n)` -/
def P13789529653587956465.Spec : Prop :=
  ∀ n, P13789529653587956465.a n = (A214091 n : ℚ)

end A214091

/-! ## A214091.P16769906971668889741

`(A169604(n)-A164346(n+1))/A007283(n)`
-/

namespace A214091.P16769906971668889741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169604 n - A164346 (n + 1) : ℚ) / (A007283 n : ℚ)

end

end A214091.P16769906971668889741

namespace A214091

/-- `(A169604(n)-A164346(n+1))/A007283(n)` -/
def P16769906971668889741.Spec : Prop :=
  ∀ n, P16769906971668889741.a n = (A214091 n : ℚ)

end A214091

/-!
# A214092: Principal diagonal of the convolution array A213773.

The programs for A214092, the canonical program `A214092.P10654078008587182587` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214092 has offset 1).

The definition of A214092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214092.P4171358968508095168

`(5*(n+1)-15*(n+1)²+12*(n+1)^3)/2`
-/

namespace A214092.P4171358968508095168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (n + 1) : ℤ) - (15 * (n + 1) ^ 2 : ℤ) + (12 * (n + 1) ^ 3 : ℤ) : ℚ) / 2

end

end A214092.P4171358968508095168

namespace A214092

/-- `(5*(n+1)-15*(n+1)²+12*(n+1)^3)/2` -/
def P4171358968508095168.Spec : Prop :=
  ∀ n, P4171358968508095168.a n = (A214092 (n + 1) : ℚ)

theorem P4171358968508095168.correct : P4171358968508095168.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A214092, Nat.add_sub_cancel, A214092.P4171358968508095168.a, A214092.P10654078008587182587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A214092, Nat.add_sub_cancel, A214092.P4171358968508095168.a, A214092.P10654078008587182587.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A214092

/-! ## A214092.P10654078008587182587

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=23, a(2)=102, a(3)=274`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A214092

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10654078008587182587.Spec : Prop :=
  ∀ n, P10654078008587182587.a n = A214092 (n + 1)

theorem P10654078008587182587.correct : P10654078008587182587.Spec := by
  intro n
  simp only [A214092, Nat.add_sub_cancel]

end A214092

/-! ## A214092.P17553493877434206696

`∑[C(6*n+1, 2)+1]`
-/

namespace A214092.P17553493877434206696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214092.P17553493877434206696

namespace A214092

/-- `∑[C(6*n+1, 2)+1]` -/
def P17553493877434206696.Spec : Prop :=
  ∀ n, (P17553493877434206696.a n : ℤ) = A214092 (n + 1)

end A214092

/-! ## A214092.P10292224721330352212

`A011199(n)-∑[n]`
-/

namespace A214092.P10292224721330352212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A214092.P10292224721330352212

namespace A214092

/-- `A011199(n)-∑[n]` -/
def P10292224721330352212.Spec : Prop :=
  ∀ n, P10292224721330352212.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P1320971513776760982

`∑[A144314(n)]+n+1`
-/

namespace A214092.P1320971513776760982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A214092.P1320971513776760982

namespace A214092

/-- `∑[A144314(n)]+n+1` -/
def P1320971513776760982.Spec : Prop :=
  ∀ n, P1320971513776760982.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P14562312262197540228

`3*A051895(n)+n+1`
-/

namespace A214092.P14562312262197540228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A051895 n + (n + 1 : ℤ)

end

end A214092.P14562312262197540228

namespace A214092

/-- `3*A051895(n)+n+1` -/
def P14562312262197540228.Spec : Prop :=
  ∀ n, P14562312262197540228.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P8424081872522556389

`A100150(n+1)-∑[n²]`
-/

namespace A214092.P8424081872522556389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100150 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A214092.P8424081872522556389

namespace A214092

/-- `A100150(n+1)-∑[n²]` -/
def P8424081872522556389.Spec : Prop :=
  ∀ n, P8424081872522556389.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P3745709266756913388

`A100149(n+1)-∑[∑[n]]`
-/

namespace A214092.P3745709266756913388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A214092.P3745709266756913388

namespace A214092

/-- `A100149(n+1)-∑[∑[n]]` -/
def P3745709266756913388.Spec : Prop :=
  ∀ n, P3745709266756913388.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P4180214567666802508

`∑[C(A016969(n)-4, 2)]+1+n`
-/

namespace A214092.P4180214567666802508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016969 n - 4).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A214092.P4180214567666802508

namespace A214092

/-- `∑[C(A016969(n)-4, 2)]+1+n` -/
def P4180214567666802508.Spec : Prop :=
  ∀ n, (P4180214567666802508.a n : ℤ) = A214092 (n + 1)

end A214092

/-! ## A214092.P17475628723932616999

`∑[3*n]*A004767(n)+n+1`
-/

namespace A214092.P17475628723932616999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004767 n + (n + 1 : ℤ)

end

end A214092.P17475628723932616999

namespace A214092

/-- `∑[3*n]*A004767(n)+n+1` -/
def P17475628723932616999.Spec : Prop :=
  ∀ n, P17475628723932616999.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P12031013267329743722

`Δ[A000292(n)]+(6*n+4)*(n²+n)`
-/

namespace A214092.P12031013267329743722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((6 * n + 4) * (n ^ 2 + n) : ℤ)

end

end A214092.P12031013267329743722

namespace A214092

/-- `Δ[A000292(n)]+(6*n+4)*(n²+n)` -/
def P12031013267329743722.Spec : Prop :=
  ∀ n, P12031013267329743722.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P7886395874573563946

`A059270(n)+A027849(n)`
-/

namespace A214092.P7886395874573563946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A027849 n

end

end A214092.P7886395874573563946

namespace A214092

/-- `A059270(n)+A027849(n)` -/
def P7886395874573563946.Spec : Prop :=
  ∀ n, P7886395874573563946.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P215676695062453210

`A220443(n)+A005915(n)`
-/

namespace A214092.P215676695062453210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A005915 n

end

end A214092.P215676695062453210

namespace A214092

/-- `A220443(n)+A005915(n)` -/
def P215676695062453210.Spec : Prop :=
  ∀ n, P215676695062453210.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P6552500579587372559

`A139757(n)+A135713(n)`
-/

namespace A214092.P6552500579587372559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + A135713 n

end

end A214092.P6552500579587372559

namespace A214092

/-- `A139757(n)+A135713(n)` -/
def P6552500579587372559.Spec : Prop :=
  ∀ n, P6552500579587372559.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P8606311457627993904

`A079588(n)-A051895(n)`
-/

namespace A214092.P8606311457627993904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n - A051895 n

end

end A214092.P8606311457627993904

namespace A214092

/-- `A079588(n)-A051895(n)` -/
def P8606311457627993904.Spec : Prop :=
  ∀ n, P8606311457627993904.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P14289549977796240500

`A005904(n)-A302302(n)`
-/

namespace A214092.P14289549977796240500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - A302302 n

end

end A214092.P14289549977796240500

namespace A214092

/-- `A005904(n)-A302302(n)` -/
def P14289549977796240500.Spec : Prop :=
  ∀ n, P14289549977796240500.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P12443476382733815017

`A193218(n+1)+A005449(n)`
-/

namespace A214092.P12443476382733815017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193218 (n + 1) + A005449 n

end

end A214092.P12443476382733815017

namespace A214092

/-- `A193218(n+1)+A005449(n)` -/
def P12443476382733815017.Spec : Prop :=
  ∀ n, P12443476382733815017.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P14301793992101011977

`A169711(n+1)+A045943(n)`
-/

namespace A214092.P14301793992101011977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (n + 1) + A045943 n

end

end A214092.P14301793992101011977

namespace A214092

/-- `A169711(n+1)+A045943(n)` -/
def P14301793992101011977.Spec : Prop :=
  ∀ n, P14301793992101011977.a n = A214092 (n + 1)

end A214092

/-! ## A214092.P14409321648022936703

`A213839(n+1)+A016061(n)`
-/

namespace A214092.P14409321648022936703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213839 (n + 1) + A016061 n

end

end A214092.P14409321648022936703

namespace A214092

/-- `A213839(n+1)+A016061(n)` -/
def P14409321648022936703.Spec : Prop :=
  ∀ n, P14409321648022936703.a n = A214092 (n + 1)

end A214092

/-!
# A214093: Largest prime p such that the greatest prime factor of p^2-1 is prime(n).

The programs for A214093, there is no canonical definition to state claims against.
-/

/-! ## A214093.P15176055467768889804

`A194099(A134925(∑{d}[n+1, #]))`
-/

namespace A214093.P15176055467768889804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194099 (A134925 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A214093.P15176055467768889804

/-!
# A214094: a(0)=0, a(1)=1; a(n)=a(n-1)+a(n-2) if a(n-1)+a(n-2) is not semiprime; otherwise a(n) is the largest prime divisor of a(n-1)+a(n-2).

The programs for A214094, there is no canonical definition to state claims against.
-/

/-! ## A214094.P12798340439905083418

`A254032(n)/A146906(A146930(n+1))`
-/

namespace A214094.P12798340439905083418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254032 n : ℚ) / (A146906 (A146930 (n + 1)).toNat : ℚ)

end

end A214094.P12798340439905083418

/-! ## A214094.P3875238554380574158

`A254032(n^A278657(n))`
-/

namespace A214094.P3875238554380574158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254032 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A214094.P3875238554380574158

/-! ## A214094.P16807271560804712630

`A254032(C(n, A278657(n)))`
-/

namespace A214094.P16807271560804712630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254032 (Nat.choose n (A278657 n).toNat)

end

end A214094.P16807271560804712630

/-! ## A214094.P15870239993867775085

`A254032(n)^A209349(n)!`
-/

namespace A214094.P15870239993867775085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254032 n ^ Nat.factorial (A209349 n).toNat

end

end A214094.P15870239993867775085

/-! ## A214094.P17598604220321794308

`A254032(n)%A254002(n+1)`
-/

namespace A214094.P17598604220321794308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254032 n) (A254002 (n + 1))

end

end A214094.P17598604220321794308

/-!
# A214096: Smallest m such that prime(i) + prime(i-1) < prime(2*i-n) for all i>=m.

The programs for A214096, there is no canonical definition to state claims against.
-/

/-! ## A214096.P3683478188990073142

`A097497(n+1)-A001222(A001764(n))`
-/

namespace A214096.P3683478188990073142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097497 (n + 1) - A001222 (A001764 n).toNat

end

end A214096.P3683478188990073142

/-!
# A214098: Number of 0..2 colorings on an n X 6 array circular in the 6 direction with new values 0..2 introduced in row major order.

The programs for A214098, there is no canonical definition to state claims against.
-/

/-! ## A214098.P18392718178627585760

`A214101(eq[2, A092921(n)])`
-/

namespace A214098.P18392718178627585760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214098.P18392718178627585760

/-! ## A214098.P16445232995042590342

`A214101(eq[4, A193592(n)])`
-/

namespace A214098.P16445232995042590342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214098.P16445232995042590342

/-! ## A214098.P154426446804382115

`A214101(A055999(n+2)+2)`
-/

namespace A214098.P154426446804382115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A055999 (n + 2) + 2).toNat

end

end A214098.P154426446804382115

/-! ## A214098.P17820564444564744924

`A214101(A141214(n+2)-1)`
-/

namespace A214098.P17820564444564744924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A141214 (n + 2) - 1).toNat

end

end A214098.P17820564444564744924

/-! ## A214098.P12172070953312127476

`A214101(A034856(n+4)-2)`
-/

namespace A214098.P12172070953312127476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A034856 (n + 4) - 2).toNat

end

end A214098.P12172070953312127476

/-!
# A214099: Number of 0..2 colorings on an n X 7 array circular in the 7 direction with new values 0..2 introduced in row major order.

The programs for A214099, there is no canonical definition to state claims against.
-/

/-! ## A214099.P7983354293230704547

`A214101(eq[3, A219347(n)])`
-/

namespace A214099.P7983354293230704547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214099.P7983354293230704547

/-! ## A214099.P1034700679598885270

`A214101(eq[5, A193592(n)])`
-/

namespace A214099.P1034700679598885270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214099.P1034700679598885270

/-! ## A214099.P9386330027505752341

`A214101(Δ[Δ[A006504(n+1)]])`
-/

namespace A214099.P9386330027505752341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (f1 (n + 1) - f1 n).toNat

end

end A214099.P9386330027505752341

/-! ## A214099.P17651680315123838479

`A214101(Δ[A023551(n+1)]+1)`
-/

namespace A214099.P17651680315123838479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (f1 (n + 1) - f1 n + 1).toNat

end

end A214099.P17651680315123838479

/-! ## A214099.P4648859160945443670

`A214101(Δ[A141214(n)+A006503(n+2)])`
-/

namespace A214099.P4648859160945443670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n + A006503 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (f1 (n + 1) - f1 n).toNat

end

end A214099.P4648859160945443670

