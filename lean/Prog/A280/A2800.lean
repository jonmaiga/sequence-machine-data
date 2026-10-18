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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A280000: Number of free pure symmetric multifunctions in one symbol with n positions.

The programs for A280000, there is no canonical definition to state claims against.
-/

/-! ## A280000.P8867764041539529767

`A055641(A278428(n+1))+A004148(n)-a(n-1)` with `a(0)=1`
-/

namespace A280000.P8867764041539529767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055641 (A278428 (n + 1)).toNat + A004148 n - a (n - 1)

end

end A280000.P8867764041539529767

/-! ## A280000.P7856912085174406566

`A085022(n^A085094(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A280000.P7856912085174406566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085022 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A085094 (n + 1) : ℤ))).toNat - a (n - 1)

end

end A280000.P7856912085174406566

/-! ## A280000.P9076210692351530438

`A004148(n)-A180198(A303587(n+1))`
-/

namespace A280000.P9076210692351530438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n - A180198 (A303587 (n + 1)).toNat

end

end A280000.P9076210692351530438

/-! ## A280000.P3223175547784031902

`A085022(n)-A180198(A303587(n+1))`
-/

namespace A280000.P3223175547784031902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085022 n - A180198 (A303587 (n + 1)).toNat

end

end A280000.P3223175547784031902

/-! ## A280000.P15094768895998365725

`A114516((n+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A280000.P15094768895998365725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114516 ((n + 1) ^ 2) - a (n - 1)

end

end A280000.P15094768895998365725

/-!
# A280002: Integers n such that A157752 (n) are primes.

The programs for A280002, there is no canonical definition to state claims against.
-/

/-! ## A280002.P336469494995127013

`record[A119842(n+1)]+lcm(2, n)+n`
-/

namespace A280002.P336469494995127013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.lcm 2 n + n : ℤ)

end

end A280002.P336469494995127013

/-!
# A280006: Number of possible connected steric graphs with n nodes of degree less than 5, excluding the ones with all nodes of degree 4 and trees.

The programs for A280006, there is no canonical definition to state claims against.
-/

/-! ## A280006.P6991986756345888772

`round(A360879(n+1)/3)`
-/

namespace A280006.P6991986756345888772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A360879 (n + 1) : ℚ) / 3)

end

end A280006.P6991986756345888772

/-!
# A280007: Balanced single (or balanced isolated) numbers (of order one): single (or isolated) numbers which are the average of the previous single (or isolated) number and the following single (or isolated) number.

The programs for A280007, there is no canonical definition to state claims against.
-/

/-! ## A280007.P9894583328091391151

`A233550(4*a(n-1))` with `a(0)=4`
-/

namespace A280007.P9894583328091391151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A233550 (4 * a (n - 1)).toNat

end

end A280007.P9894583328091391151

/-! ## A280007.P2571338144580498407

`A053320(A155212(n)^A003056(n))`
-/

namespace A280007.P2571338144580498407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053320 (SequenceMachineLib.roundAway ((A155212 n : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A280007.P2571338144580498407

/-!
# A280008: First differences of A002375.

The programs for A280008, there is no canonical definition to state claims against.
-/

/-! ## A280008.P10938950252498374127

`A002375(n+2)-A002375(n+1)`
-/

namespace A280008.P10938950252498374127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 2) - A002375 (n + 1)

end

end A280008.P10938950252498374127

/-! ## A280008.P17826006178870846045

`Δ[A002375(n+1)]`
-/

namespace A280008.P17826006178870846045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280008.P17826006178870846045

/-! ## A280008.P12235752126744088375

`Δ[A045917(n+1)%(floor(n/log2(3))+1)]`
-/

namespace A280008.P12235752126744088375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045917 (n + 1)) (⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280008.P12235752126744088375

/-! ## A280008.P5087410832338336111

`Δ[(A045917(n+1)%A000008(n))%(n+1)]`
-/

namespace A280008.P5087410832338336111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A045917 (n + 1)) (A000008 n)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280008.P5087410832338336111

/-! ## A280008.P14313264375432994224

`Δ[A190353(2*(n+1))]`
-/

namespace A280008.P14313264375432994224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280008.P14313264375432994224

/-! ## A280008.P9940248209045967698

`Δ[ceil(A002372(n+1)/2)]`
-/

namespace A280008.P9940248209045967698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002372 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280008.P9940248209045967698

/-! ## A280008.P6447661322854886983

`Δ[A045917(1-char[1]+n)]`
-/

namespace A280008.P6447661322854886983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280008.P6447661322854886983

/-! ## A280008.P13101927190769486091

`Δ[A110654(A002372(n+1))]`
-/

namespace A280008.P13101927190769486091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002372 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280008.P13101927190769486091

/-! ## A280008.P10985342748100860870

`Δ[A002372(n+1)-A061357(n+1)]`
-/

namespace A280008.P10985342748100860870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - A061357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280008.P10985342748100860870

/-! ## A280008.P621661153055666928

`A190353(2*(n+2))-A190353(2*(n+1))`
-/

namespace A280008.P621661153055666928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * (n + 2)) - A190353 (2 * (n + 1))

end

end A280008.P621661153055666928

/-!
# A280010: Orders of consecutive clusters of non-Chen primes.

The programs for A280010, there is no canonical definition to state claims against.
-/

/-! ## A280010.P5377428679855622418

`A002260(gcd(A063657(n+1), A331028(n+1)))`
-/

namespace A280010.P5377428679855622418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.gcd (A063657 (n + 1)) (A331028 (n + 1)))

end

end A280010.P5377428679855622418

/-! ## A280010.P12649052995829142722

`A278538(gcd(A177862(n), A263883(n)))`
-/

namespace A280010.P12649052995829142722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 (Int.gcd (A177862 n) (A263883 n))

end

end A280010.P12649052995829142722

/-! ## A280010.P13943741526543330668

`A290106(lcm(A254321(n+1), A329600(n+1)))`
-/

namespace A280010.P13943741526543330668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290106 (Int.lcm (A254321 (n + 1)) (A329600 (n + 1)))

end

end A280010.P13943741526543330668

/-! ## A280010.P16321070775969835777

`A005361(A153448(3*n+1)-1)`
-/

namespace A280010.P16321070775969835777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A153448 (3 * n + 1) - 1).toNat

end

end A280010.P16321070775969835777

/-!
# A280011: Let d(1) < d(2) < ... < d(q) be the q distinct prime divisors of an integer m. The sequence lists the numbers m such that d(k) == d(k+2) mod d(k+1) for k = 1,2,...,q-2.

The programs for A280011, there is no canonical definition to state claims against.
-/

/-! ## A280011.P3832006596869715490

`A343340(∑[((n-and(n, 3*n))/2)!])`
-/

namespace A280011.P3832006596869715490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (((n : ℤ) - (Nat.land n (3 * n) : ℤ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280011.P3832006596869715490

/-! ## A280011.P6625269623950179035

`∩[A097379(n+1), A343340(n+1)]`
-/

namespace A280011.P6625269623950179035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280011.P6625269623950179035

/-! ## A280011.P16234148491748229073

`∩[A193988(n+1), A343340(n+1)]`
-/

namespace A280011.P16234148491748229073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280011.P16234148491748229073

/-! ## A280011.P13267637541431787404

`∩[A262828(n+1), A343340(n+1)]`
-/

namespace A280011.P13267637541431787404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280011.P13267637541431787404

/-! ## A280011.P4844898646171978534

`∩[A337244(n+1), A343340(n+1)]`
-/

namespace A280011.P4844898646171978534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280011.P4844898646171978534

/-!
# A280012: a(n) = least positive integer k such that sumdigits(k^2) = n*sumdigits(k).

The programs for A280012, there is no canonical definition to state claims against.
-/

/-! ## A280012.P691995532485558157

`A007090(∑[∏[A081676(n+1)]])`
-/

namespace A280012.P691995532485558157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280012.P691995532485558157

/-! ## A280012.P1059720828257888851

`A007090(∑[∏[A378033(n+1)]])`
-/

namespace A280012.P1059720828257888851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280012.P1059720828257888851

/-! ## A280012.P8668141129643286577

`floor((floor(10^(n^gcd(7, n)-1))-1)/9)+2`
-/

namespace A280012.P8668141129643286577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(10 : ℚ) ^ ((n ^ Nat.gcd 7 n : ℤ) - 1 : ℤ)⌋ - 1 : ℚ) / 9⌋ + 2

end

end A280012.P8668141129643286577

/-!
# A280013: Numbers k such that sum of squarefree divisors of k > sum of squarefree divisors of m for all m < k.

The programs for A280013, there is no canonical definition to state claims against.
-/

/-! ## A280013.P2572625489509370135

`record[A325314(A285614(n+1))]`
-/

namespace A280013.P2572625489509370135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (A285614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280013.P2572625489509370135

/-! ## A280013.P8489986982400483280

`record[A331737(A285614(-xor(n, -1)))]`
-/

namespace A280013.P8489986982400483280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A285614 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280013.P8489986982400483280

/-! ## A280013.P15578554054498801365

`record[A331737(A285614(floor(n/2)+1))]`
-/

namespace A280013.P15578554054498801365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A285614 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280013.P15578554054498801365

/-! ## A280013.P11457768795577132456

`record[A331737(A285614(n+1)%A209725(n+1))]`
-/

namespace A280013.P11457768795577132456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (Int.tmod (A285614 (n + 1)) (A209725 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280013.P11457768795577132456

/-! ## A280013.P1258779695191993074

`filter[A285614(n+1), A307421(#)]`
-/

namespace A280013.P1258779695191993074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A280013.P1258779695191993074

/-! ## A280013.P7993011266285567765

`A063972(record[A348733(n+1)])`
-/

namespace A280013.P7993011266285567765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280013.P7993011266285567765

/-! ## A280013.P7072072178886120313

`A063972(record[A000203(n+1)-A048146(n+1)²])`
-/

namespace A280013.P7072072178886120313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048146 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280013.P7072072178886120313

/-! ## A280013.P8750077057762780300

`A063972(record[A003959(n+1)-A348732(n+1)²])`
-/

namespace A280013.P8750077057762780300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A348732 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280013.P8750077057762780300

/-!
# A280014: Numbers m == +- 2 (mod 10) but not m == 2 (mod 6).

The programs for A280014, the canonical program `A280014.P1757462979713616885` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280014 has offset 1).

The definition of A280014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280014.P1757462979713616885

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=12, a(1)=18, a(2)=22, a(3)=28, a(4)=42`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280014

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P1757462979713616885.Spec : Prop :=
  ∀ n, P1757462979713616885.a n = A280014 (n + 1)

theorem P1757462979713616885.correct : P1757462979713616885.Spec := by
  intro n
  simp only [A280014, Nat.add_sub_cancel]

end A280014

/-! ## A280014.P4943316653425498262

`A063225(A047250(n+2))`
-/

namespace A280014.P4943316653425498262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (A047250 (n + 2)).toNat

end

end A280014.P4943316653425498262

namespace A280014

/-- `A063225(A047250(n+2))` -/
def P4943316653425498262.Spec : Prop :=
  ∀ n, P4943316653425498262.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P7498774305397489318

`filter[A063225(n+1), A380534(#)]`
-/

namespace A280014.P7498774305397489318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A280014.P7498774305397489318

namespace A280014

/-- `filter[A063225(n+1), A380534(#)]` -/
def P7498774305397489318.Spec : Prop :=
  ∀ n, P7498774305397489318.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P14382907437837956753

`filter[A090772(n+1), A380534(#)]`
-/

namespace A280014.P14382907437837956753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A280014.P14382907437837956753

namespace A280014

/-- `filter[A090772(n+1), A380534(#)]` -/
def P14382907437837956753.Spec : Prop :=
  ∀ n, P14382907437837956753.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P16060707099045401299

`∩[A063225(n+1), A380535(n+1)]`
-/

namespace A280014.P16060707099045401299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280014.P16060707099045401299

namespace A280014

/-- `∩[A063225(n+1), A380535(n+1)]` -/
def P16060707099045401299.Spec : Prop :=
  ∀ n, (P16060707099045401299.a n : ℤ) = A280014 (n + 1)

end A280014

/-! ## A280014.P7949081809098808525

`∩[A090772(n+1), A380535(n+1)]`
-/

namespace A280014.P7949081809098808525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280014.P7949081809098808525

namespace A280014

/-- `∩[A090772(n+1), A380535(n+1)]` -/
def P7949081809098808525.Spec : Prop :=
  ∀ n, (P7949081809098808525.a n : ℤ) = A280014 (n + 1)

end A280014

/-! ## A280014.P11998353722825355320

`∩[A047233(n+1), A063225(n+1)]`
-/

namespace A280014.P11998353722825355320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280014.P11998353722825355320

namespace A280014

/-- `∩[A047233(n+1), A063225(n+1)]` -/
def P11998353722825355320.Spec : Prop :=
  ∀ n, (P11998353722825355320.a n : ℤ) = A280014 (n + 1)

end A280014

/-! ## A280014.P10403315087962008893

`∩[A047233(n+1), A090772(n+1)]`
-/

namespace A280014.P10403315087962008893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280014.P10403315087962008893

namespace A280014

/-- `∩[A047233(n+1), A090772(n+1)]` -/
def P10403315087962008893.Spec : Prop :=
  ∀ n, (P10403315087962008893.a n : ℤ) = A280014 (n + 1)

end A280014

/-! ## A280014.P1267757032760335823

`2*(A047203(or(2, n)+2*n)+2)+4`
-/

namespace A280014.P1267757032760335823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047203 (Nat.lor 2 n + 2 * n) + 2) + 4

end

end A280014.P1267757032760335823

namespace A280014

/-- `2*(A047203(or(2, n)+2*n)+2)+4` -/
def P1267757032760335823.Spec : Prop :=
  ∀ n, P1267757032760335823.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P2895949202093678944

`A047221(A072833(n+1))`
-/

namespace A280014.P2895949202093678944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (A072833 (n + 1)).toNat

end

end A280014.P2895949202093678944

namespace A280014

/-- `A047221(A072833(n+1))` -/
def P2895949202093678944.Spec : Prop :=
  ∀ n, P2895949202093678944.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P4070503996902353101

`A235700(2*A047250(n+2))`
-/

namespace A280014.P4070503996902353101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235700 (2 * A047250 (n + 2)).toNat

end

end A280014.P4070503996902353101

namespace A280014

/-- `A235700(2*A047250(n+2))` -/
def P4070503996902353101.Spec : Prop :=
  ∀ n, P4070503996902353101.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P6799976821547667799

`filter[A047221(n+1), A380534(#)]`
-/

namespace A280014.P6799976821547667799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A280014.P6799976821547667799

namespace A280014

/-- `filter[A047221(n+1), A380534(#)]` -/
def P6799976821547667799.Spec : Prop :=
  ∀ n, P6799976821547667799.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P7013879134517891874

`filter[A166539(n+1), A380534(#)]`
-/

namespace A280014.P7013879134517891874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A280014.P7013879134517891874

namespace A280014

/-- `filter[A166539(n+1), A380534(#)]` -/
def P7013879134517891874.Spec : Prop :=
  ∀ n, P7013879134517891874.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P9037622669261343045

`filter[A345019(n+1), A380534(#)]`
-/

namespace A280014.P9037622669261343045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A280014.P9037622669261343045

namespace A280014

/-- `filter[A345019(n+1), A380534(#)]` -/
def P9037622669261343045.Spec : Prop :=
  ∀ n, P9037622669261343045.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P8826406220716798857

`filter[A235700(2*(n+1)), A380534(#)]`
-/

namespace A280014.P8826406220716798857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235700 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380534 (f1 j).toNat = 1) n)

end

end A280014.P8826406220716798857

namespace A280014

/-- `filter[A235700(2*(n+1)), A380534(#)]` -/
def P8826406220716798857.Spec : Prop :=
  ∀ n, P8826406220716798857.a n = A280014 (n + 1)

end A280014

/-! ## A280014.P5768100601123425167

`∩[A047221(n+1), A047233(n+1)]`
-/

namespace A280014.P5768100601123425167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280014.P5768100601123425167

namespace A280014

/-- `∩[A047221(n+1), A047233(n+1)]` -/
def P5768100601123425167.Spec : Prop :=
  ∀ n, (P5768100601123425167.a n : ℤ) = A280014 (n + 1)

end A280014

/-! ## A280014.P4577349548633891813

`∩[A047233(n+1), A345019(n+1)]`
-/

namespace A280014.P4577349548633891813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280014.P4577349548633891813

namespace A280014

/-- `∩[A047233(n+1), A345019(n+1)]` -/
def P4577349548633891813.Spec : Prop :=
  ∀ n, (P4577349548633891813.a n : ℤ) = A280014 (n + 1)

end A280014

/-! ## A280014.P14848473620230100114

`∩[A047221(n+1), A380535(n+1)]`
-/

namespace A280014.P14848473620230100114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280014.P14848473620230100114

namespace A280014

/-- `∩[A047221(n+1), A380535(n+1)]` -/
def P14848473620230100114.Spec : Prop :=
  ∀ n, (P14848473620230100114.a n : ℤ) = A280014 (n + 1)

end A280014

/-! ## A280014.P13371130596964277683

`∩[A345019(n+1), A380535(n+1)]`
-/

namespace A280014.P13371130596964277683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280014.P13371130596964277683

namespace A280014

/-- `∩[A345019(n+1), A380535(n+1)]` -/
def P13371130596964277683.Spec : Prop :=
  ∀ n, (P13371130596964277683.a n : ℤ) = A280014 (n + 1)

end A280014

/-! ## A280014.P5962042494655813278

`∩[6*n+1-A047241(n+2), A047221(n+2)]`
-/

namespace A280014.P5962042494655813278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) - A047241 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280014.P5962042494655813278

namespace A280014

/-- `∩[6*n+1-A047241(n+2), A047221(n+2)]` -/
def P5962042494655813278.Spec : Prop :=
  ∀ n, (P5962042494655813278.a n : ℤ) = A280014 (n + 1)

end A280014

/-!
# A280018: Numbers k such that 34*10^k - 3 is prime.

The programs for A280018, there is no canonical definition to state claims against.
-/

/-! ## A280018.P10181487774674411920

`round(sqrt(A151733(A151733(n))))`
-/

namespace A280018.P10181487774674411920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A151733 (A151733 n).toNat : ℝ))

end

end A280018.P10181487774674411920

/-! ## A280018.P7260395410997688939

`A004526(A087051(n)+A049630(n))`
-/

namespace A280018.P7260395410997688939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A087051 n + A049630 n).toNat

end

end A280018.P7260395410997688939

/-! ## A280018.P17463656294839680537

`A111660(A178063(n)+A007095(n))`
-/

namespace A280018.P17463656294839680537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A178063 n + A007095 n).toNat

end

end A280018.P17463656294839680537

/-! ## A280018.P7758603036921671514

`A357865(A056142(n))+A032766(n)`
-/

namespace A280018.P7758603036921671514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357865 (A056142 n).toNat + A032766 n

end

end A280018.P7758603036921671514

/-! ## A280018.P12162838488161363934

`A238659(n+1)+A010815(A045655(n))`
-/

namespace A280018.P12162838488161363934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238659 (n + 1) + A010815 (A045655 n).toNat

end

end A280018.P12162838488161363934

/-!
# A280020: Number of maximal triangle-free labeled graphs on n vertices.

The programs for A280020, there is no canonical definition to state claims against.
-/

/-! ## A280020.P9344804268409029481

`A080542(or(n, A053525(n)))`
-/

namespace A280020.P9344804268409029481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (Int.lor (n : ℤ) (A053525 n)).toNat

end

end A280020.P9344804268409029481

/-! ## A280020.P10827287208751212726

`A028234(A095121(n)+A028245(n+1))`
-/

namespace A280020.P10827287208751212726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A095121 n + A028245 (n + 1)).toNat

end

end A280020.P10827287208751212726

/-! ## A280020.P3047920542934018338

`A255047(n)+A001281(A028245(n+1))`
-/

namespace A280020.P3047920542934018338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + A001281 (A028245 (n + 1)).toNat

end

end A280020.P3047920542934018338

/-!
# A280021: Expansion of phi_{11, 2}(x) where phi_{r, s}(x) = Sum_{n, m>0} m^r * n^s * x^{m*n}.

The programs for A280021, the canonical program `A280021.P5520287346423813433` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280021 has offset 0).

The definition of A280021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280021.P5520287346423813433

`∑{d}[n, #^9]*n²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280021

/-- `∑{d}[n, #^9]*n²` -/
def P5520287346423813433.Spec : Prop :=
  ∀ n, (P5520287346423813433.a n : ℤ) = A280021 n

theorem P5520287346423813433.correct : P5520287346423813433.Spec := by
  intro n
  simp only [A280021]

end A280021

/-! ## A280021.P12530556312659546133

`n^2*∑{d}[n, #^9]`
-/

namespace A280021.P12530556312659546133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ d ∈ Nat.divisors (f1 n), d ^ 9)

end

end A280021.P12530556312659546133

namespace A280021

/-- `n^2*∑{d}[n, #^9]` -/
def P12530556312659546133.Spec : Prop :=
  ∀ n, (P12530556312659546133.a n : ℤ) = A280021 n

theorem P12530556312659546133.correct : P12530556312659546133.Spec := by
  intro n
  simp only [A280021, Nat.add_sub_cancel, A280021.P12530556312659546133.f1, A280021.P12530556312659546133.a, A280021.P5520287346423813433.f1, A280021.P5520287346423813433.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A280021

/-! ## A280021.P11721026691208439464

`∑{d}[n, n²/#^-9]`
-/

namespace A280021.P11721026691208439464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n ^ 2 : ℚ) / (d : ℚ) ^ (-9 : ℤ)

end

end A280021.P11721026691208439464

namespace A280021

/-- `∑{d}[n, n²/#^-9]` -/
def P11721026691208439464.Spec : Prop :=
  ∀ n, P11721026691208439464.a n = (A280021 n : ℚ)

end A280021

/-! ## A280021.P8108726897670086010

`n*A282254(n)`
-/

namespace A280021.P8108726897670086010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282254 n

end

end A280021.P8108726897670086010

namespace A280021

/-- `n*A282254(n)` -/
def P8108726897670086010.Spec : Prop :=
  ∀ n, P8108726897670086010.a n = A280021 n

end A280021

/-! ## A280021.P1341648705594336018

`n²*A013957(A028310(n))`
-/

namespace A280021.P1341648705594336018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A013957 (A028310 n).toNat

end

end A280021.P1341648705594336018

namespace A280021

/-- `n²*A013957(A028310(n))` -/
def P1341648705594336018.Spec : Prop :=
  ∀ n, P1341648705594336018.a n = A280021 n

end A280021

/-! ## A280021.P5309473233429719223

`n²*A013957(A123108(2*n))`
-/

namespace A280021.P5309473233429719223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A013957 (A123108 (2 * n)).toNat

end

end A280021.P5309473233429719223

namespace A280021

/-- `n²*A013957(A123108(2*n))` -/
def P5309473233429719223.Spec : Prop :=
  ∀ n, P5309473233429719223.a n = A280021 n

end A280021

/-!
# A280022: Expansion of phi_{5, 4}(x) where phi_{r, s}(x) = Sum_{n, m>0} m^r * n^s * x^{m*n}.

The programs for A280022, the canonical program `A280022.P14357542867709837807` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280022 has offset 0).

The definition of A280022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280022.P14357542867709837807

`n^4*∑{d}[n, #]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280022

/-- `n^4*∑{d}[n, #]` -/
def P14357542867709837807.Spec : Prop :=
  ∀ n, (P14357542867709837807.a n : ℤ) = A280022 n

theorem P14357542867709837807.correct : P14357542867709837807.Spec := by
  intro n
  simp only [A280022]

end A280022

/-! ## A280022.P14546368377816374812

`∑{d}[n, n^5/#]`
-/

namespace A280022.P14546368377816374812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n ^ 5 : ℚ) / (d : ℚ)

end

end A280022.P14546368377816374812

namespace A280022

/-- `∑{d}[n, n^5/#]` -/
def P14546368377816374812.Spec : Prop :=
  ∀ n, P14546368377816374812.a n = (A280022 n : ℚ)

end A280022

/-! ## A280022.P8558588858121577068

`n*n*∑{d}[n, #*n²]`
-/

namespace A280022.P8558588858121577068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * (∑ d ∈ Nat.divisors (f1 n), d * n ^ 2))

end

end A280022.P8558588858121577068

namespace A280022

/-- `n*n*∑{d}[n, #*n²]` -/
def P8558588858121577068.Spec : Prop :=
  ∀ n, (P8558588858121577068.a n : ℤ) = A280022 n

end A280022

/-! ## A280022.P819929650177333192

`n*A282211(n)`
-/

namespace A280022.P819929650177333192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282211 n

end

end A280022.P819929650177333192

namespace A280022

/-- `n*A282211(n)` -/
def P819929650177333192.Spec : Prop :=
  ∀ n, P819929650177333192.a n = A280022 n

end A280022

/-! ## A280022.P5572542833026938197

`n²*A282097(n)`
-/

namespace A280022.P5572542833026938197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A282097 n

end

end A280022.P5572542833026938197

namespace A280022

/-- `n²*A282097(n)` -/
def P5572542833026938197.Spec : Prop :=
  ∀ n, P5572542833026938197.a n = A280022 n

end A280022

/-! ## A280022.P4768740945293665995

`(A039653(n)+1)*n²²`
-/

namespace A280022.P4768740945293665995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039653 n + 1) * ((n ^ 2) ^ 2 : ℤ)

end

end A280022.P4768740945293665995

namespace A280022

/-- `(A039653(n)+1)*n²²` -/
def P4768740945293665995.Spec : Prop :=
  ∀ n, P4768740945293665995.a n = A280022 n

end A280022

/-! ## A280022.P11384877861308557876

`n^4*A000203(abs(1-n)+1)`
-/

namespace A280022.P11384877861308557876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) * A000203 (|1 - (n : ℤ)| + 1).toNat

end

end A280022.P11384877861308557876

namespace A280022

/-- `n^4*A000203(abs(1-n)+1)` -/
def P11384877861308557876.Spec : Prop :=
  ∀ n, P11384877861308557876.a n = A280022 n

end A280022

/-! ## A280022.P9790548774359145537

`n²²*A245092(A004273(n))`
-/

namespace A280022.P9790548774359145537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A245092 (A004273 n).toNat

end

end A280022.P9790548774359145537

namespace A280022

/-- `n²²*A245092(A004273(n))` -/
def P9790548774359145537.Spec : Prop :=
  ∀ n, P9790548774359145537.a n = A280022 n

end A280022

/-! ## A280022.P13557245269900041032

`n²/A040132(n)*A282154(n)`
-/

namespace A280022.P13557245269900041032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (A040132 n : ℚ) * (A282154 n : ℚ)

end

end A280022.P13557245269900041032

namespace A280022

/-- `n²/A040132(n)*A282154(n)` -/
def P13557245269900041032.Spec : Prop :=
  ∀ n, P13557245269900041032.a n = (A280022 n : ℚ)

end A280022

/-! ## A280022.P2772784333793432201

`n*A000203(A028310(n))*A000578(n)`
-/

namespace A280022.P2772784333793432201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000203 (A028310 n).toNat * A000578 n)

end

end A280022.P2772784333793432201

namespace A280022

/-- `n*A000203(A028310(n))*A000578(n)` -/
def P2772784333793432201.Spec : Prop :=
  ∀ n, P2772784333793432201.a n = A280022 n

end A280022

/-! ## A280022.P15361275460532406182

`n²²*A319083(A000124(n))`
-/

namespace A280022.P15361275460532406182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A319083 (A000124 n).toNat

end

end A280022.P15361275460532406182

namespace A280022

/-- `n²²*A319083(A000124(n))` -/
def P15361275460532406182.Spec : Prop :=
  ∀ n, P15361275460532406182.a n = A280022 n

end A280022

/-! ## A280022.P14003588291292844348

`n²²*A245093(A034856(n+1))`
-/

namespace A280022.P14003588291292844348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A245093 (A034856 (n + 1)).toNat

end

end A280022.P14003588291292844348

namespace A280022

/-- `n²²*A245093(A034856(n+1))` -/
def P14003588291292844348.Spec : Prop :=
  ∀ n, P14003588291292844348.a n = A280022 n

end A280022

/-! ## A280022.P4422321670643430230

`n²²*A323243(A005940(n+1))`
-/

namespace A280022.P4422321670643430230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A323243 (A005940 (n + 1)).toNat

end

end A280022.P4422321670643430230

namespace A280022

/-- `n²²*A323243(A005940(n+1))` -/
def P4422321670643430230.Spec : Prop :=
  ∀ n, P4422321670643430230.a n = A280022 n

end A280022

/-!
# A280025: Expansion of phi_{7, 4}(x) where phi_{r, s}(x) = Sum_{n, m>0} m^r * n^s * x^{m*n}.

The programs for A280025, the canonical program `A280025.P14944939746828360361` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280025 has offset 0).

The definition of A280025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280025.P14944939746828360361

`n*∑{d}[n, (n*#)^3]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280025

/-- `n*∑{d}[n, (n*#)^3]` -/
def P14944939746828360361.Spec : Prop :=
  ∀ n, (P14944939746828360361.a n : ℤ) = A280025 n

theorem P14944939746828360361.correct : P14944939746828360361.Spec := by
  intro n
  simp only [A280025]

end A280025

/-! ## A280025.P12717442305516762817

`n²*∑{d}[n, #*#²]*n²`
-/

namespace A280025.P12717442305516762817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ d ∈ Nat.divisors (f1 n), d * d ^ 2) * n ^ 2

end

end A280025.P12717442305516762817

namespace A280025

/-- `n²*∑{d}[n, #*#²]*n²` -/
def P12717442305516762817.Spec : Prop :=
  ∀ n, (P12717442305516762817.a n : ℤ) = A280025 n

end A280025

/-! ## A280025.P8561474295508530597

`n*A282213(n)`
-/

namespace A280025.P8561474295508530597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282213 n

end

end A280025.P8561474295508530597

namespace A280025

/-- `n*A282213(n)` -/
def P8561474295508530597.Spec : Prop :=
  ∀ n, P8561474295508530597.a n = A280025 n

end A280025

/-! ## A280025.P3586739696430835149

`n²*A282099(n)`
-/

namespace A280025.P3586739696430835149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A282099 n

end

end A280025.P3586739696430835149

namespace A280025

/-- `n²*A282099(n)` -/
def P3586739696430835149.Spec : Prop :=
  ∀ n, P3586739696430835149.a n = A280025 n

end A280025

/-! ## A280025.P3603357880169594742

`n^3*A281372(n)`
-/

namespace A280025.P3603357880169594742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A281372 n

end

end A280025.P3603357880169594742

namespace A280025

/-- `n^3*A281372(n)` -/
def P3603357880169594742.Spec : Prop :=
  ∀ n, P3603357880169594742.a n = A280025 n

end A280025

/-! ## A280025.P8477780253102548195

`n*A000290(n)*A281372(n)`
-/

namespace A280025.P8477780253102548195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000290 n * A281372 n)

end

end A280025.P8477780253102548195

namespace A280025

/-- `n*A000290(n)*A281372(n)` -/
def P8477780253102548195.Spec : Prop :=
  ∀ n, P8477780253102548195.a n = A280025 n

end A280025

/-! ## A280025.P4494024555388792416

`n*A253909(n)*A281372(n)`
-/

namespace A280025.P4494024555388792416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A253909 n * A281372 n)

end

end A280025.P4494024555388792416

namespace A280025

/-- `n*A253909(n)*A281372(n)` -/
def P4494024555388792416.Spec : Prop :=
  ∀ n, P4494024555388792416.a n = A280025 n

end A280025

/-! ## A280025.P3878160835259046260

`A282099(n)/(1/A028310(n))²`
-/

namespace A280025.P3878160835259046260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282099 n : ℚ) / (1 / (A028310 n : ℚ)) ^ 2

end

end A280025.P3878160835259046260

namespace A280025

/-- `A282099(n)/(1/A028310(n))²` -/
def P3878160835259046260.Spec : Prop :=
  ∀ n, P3878160835259046260.a n = (A280025 n : ℚ)

end A280025

/-!
# A280026: Fill an infinite square array by following a spiral around the origin; in the n-th cell, enter the number of earlier cells that can be seen from that cell.

The programs for A280026, the canonical program `A280026.P12511479644503027020` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280026 has offset 0).

The definition of A280026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280026.P12511479644503027020

`A055086(n)+n%floor(sqrt(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A280026

/-- `A055086(n)+n%floor(sqrt(n+1))` -/
def P12511479644503027020.Spec : Prop :=
  ∀ n, P12511479644503027020.a n = A280026 n

theorem P12511479644503027020.correct : P12511479644503027020.Spec := by
  intro n
  simp only [A280026]

end A280026

/-! ## A280026.P3343778262968190083

`A055087(n)+A055086(n)`
-/

namespace A280026.P3343778262968190083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n + A055086 n

end

end A280026.P3343778262968190083

namespace A280026

/-- `A055087(n)+A055086(n)` -/
def P3343778262968190083.Spec : Prop :=
  ∀ n, P3343778262968190083.a n = A280026 n

end A280026

/-! ## A280026.P9024459023769130903

`A322832(n)+A259361(n)`
-/

namespace A280026.P9024459023769130903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n + A259361 n

end

end A280026.P9024459023769130903

namespace A280026

/-- `A322832(n)+A259361(n)` -/
def P9024459023769130903.Spec : Prop :=
  ∀ n, P9024459023769130903.a n = A280026 n

end A280026

/-! ## A280026.P7991393943785865684

`n-A206224(A206224(n))`
-/

namespace A280026.P7991393943785865684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A206224 (A206224 n).toNat

end

end A280026.P7991393943785865684

namespace A280026

/-- `n-A206224(A206224(n))` -/
def P7991393943785865684.Spec : Prop :=
  ∀ n, P7991393943785865684.a n = A280026 n

end A280026

/-! ## A280026.P312936466209037025

`A000267(n)+A055087(n)-1`
-/

namespace A280026.P312936466209037025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n + (A055087 n - 1)

end

end A280026.P312936466209037025

namespace A280026

/-- `A000267(n)+A055087(n)-1` -/
def P312936466209037025.Spec : Prop :=
  ∀ n, P312936466209037025.a n = A280026 n

end A280026

/-! ## A280026.P4640199973142922937

`A122197(n+1)+A000267(n)-2`
-/

namespace A280026.P4640199973142922937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1) + (A000267 n - 2)

end

end A280026.P4640199973142922937

namespace A280026

/-- `A122197(n+1)+A000267(n)-2` -/
def P4640199973142922937.Spec : Prop :=
  ∀ n, P4640199973142922937.a n = A280026 n

end A280026

/-! ## A280026.P4004455701657784322

`n-A002620(A004526(A265359(n)))`
-/

namespace A280026.P4004455701657784322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002620 (A004526 (A265359 n).toNat).toNat

end

end A280026.P4004455701657784322

namespace A280026

/-- `n-A002620(A004526(A265359(n)))` -/
def P4004455701657784322.Spec : Prop :=
  ∀ n, P4004455701657784322.a n = A280026 n

end A280026

/-! ## A280026.P8303070117773307399

`A055086(n)+n-A002620(A000267(n))`
-/

namespace A280026.P8303070117773307399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + ((n : ℤ) - A002620 (A000267 n).toNat)

end

end A280026.P8303070117773307399

namespace A280026

/-- `A055086(n)+n-A002620(A000267(n))` -/
def P8303070117773307399.Spec : Prop :=
  ∀ n, P8303070117773307399.a n = A280026 n

end A280026

/-! ## A280026.P13752062743371462921

`A055087(n)+n-A028391(A028391(n))`
-/

namespace A280026.P13752062743371462921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n + ((n : ℤ) - A028391 (A028391 n).toNat)

end

end A280026.P13752062743371462921

namespace A280026

/-- `A055087(n)+n-A028391(A028391(n))` -/
def P13752062743371462921.Spec : Prop :=
  ∀ n, P13752062743371462921.a n = A280026 n

end A280026

/-! ## A280026.P17427600003928254347

`A082375(n-A055087(n))+A055087(n)`
-/

namespace A280026.P17427600003928254347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 ((n : ℤ) - A055087 n).toNat + A055087 n

end

end A280026.P17427600003928254347

namespace A280026

/-- `A082375(n-A055087(n))+A055087(n)` -/
def P17427600003928254347.Spec : Prop :=
  ∀ n, P17427600003928254347.a n = A280026 n

end A280026

/-! ## A280026.P1359819026394216857

`A322832(n)+A000196(n-A000196(n))`
-/

namespace A280026.P1359819026394216857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n + A000196 ((n : ℤ) - A000196 n).toNat

end

end A280026.P1359819026394216857

namespace A280026

/-- `A322832(n)+A000196(n-A000196(n))` -/
def P1359819026394216857.Spec : Prop :=
  ∀ n, P1359819026394216857.a n = A280026 n

end A280026

/-! ## A280026.P5302773931483467473

`A322832(n-A322832(n))+A322832(n)`
-/

namespace A280026.P5302773931483467473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 ((n : ℤ) - A322832 n).toNat + A322832 n

end

end A280026.P5302773931483467473

namespace A280026

/-- `A322832(n-A322832(n))+A322832(n)` -/
def P5302773931483467473.Spec : Prop :=
  ∀ n, P5302773931483467473.a n = A280026 n

end A280026

/-! ## A280026.P14985634000737327566

`n-A028391(A028391(n-A055087(n)))`
-/

namespace A280026.P14985634000737327566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A028391 (A028391 ((n : ℤ) - A055087 n).toNat).toNat

end

end A280026.P14985634000737327566

namespace A280026

/-- `n-A028391(A028391(n-A055087(n)))` -/
def P14985634000737327566.Spec : Prop :=
  ∀ n, P14985634000737327566.a n = A280026 n

end A280026

/-! ## A280026.P2507962968280171113

`A003056(A091018(n))+2*A055087(n)`
-/

namespace A280026.P2507962968280171113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A091018 n).toNat + 2 * A055087 n

end

end A280026.P2507962968280171113

namespace A280026

/-- `A003056(A091018(n))+2*A055087(n)` -/
def P2507962968280171113.Spec : Prop :=
  ∀ n, P2507962968280171113.a n = A280026 n

end A280026

/-! ## A280026.P14047515792418120359

`A051162(lt[A007318(n), A007318(n+1)])-2`
-/

namespace A280026.P14047515792418120359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) - 2

end

end A280026.P14047515792418120359

namespace A280026

/-- `A051162(lt[A007318(n), A007318(n+1)])-2` -/
def P14047515792418120359.Spec : Prop :=
  ∀ n, P14047515792418120359.a n = A280026 n

end A280026

/-! ## A280026.P16910086069978119272

`A322832(A063656(2*n)-A322832(n))`
-/

namespace A280026.P16910086069978119272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (A063656 (2 * n) - A322832 n).toNat

end

end A280026.P16910086069978119272

namespace A280026

/-- `A322832(A063656(2*n)-A322832(n))` -/
def P16910086069978119272.Spec : Prop :=
  ∀ n, P16910086069978119272.a n = A280026 n

end A280026

/-! ## A280026.P3590280414627755852

`2*n-eq[1, A267708(2*n)]`
-/

namespace A280026.P3590280414627755852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A280026.P3590280414627755852

namespace A280026

/-- `2*n-eq[1, A267708(2*n)]` -/
def P3590280414627755852.Spec : Prop :=
  ∀ n, P3590280414627755852.a n = A280026 n

end A280026

/-! ## A280026.P5389628524599667453

`A274427(n+1)-A274427(A274427(n+1)-n)`
-/

namespace A280026.P5389628524599667453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274427 (n + 1) - A274427 (A274427 (n + 1) - (n : ℤ)).toNat

end

end A280026.P5389628524599667453

namespace A280026

/-- `A274427(n+1)-A274427(A274427(n+1)-n)` -/
def P5389628524599667453.Spec : Prop :=
  ∀ n, P5389628524599667453.a n = A280026 n

end A280026

/-! ## A280026.P254982765494633355

`A070770(lt[A056559(n), 2])`
-/

namespace A280026.P254982765494633355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A280026.P254982765494633355

namespace A280026

/-- `A070770(lt[A056559(n), 2])` -/
def P254982765494633355.Spec : Prop :=
  ∀ n, P254982765494633355.a n = A280026 n

end A280026

/-!
# A280027: Fill an infinite square array by following a spiral around the origin; in the central cell enter a(0)=1; thereafter, in the n-th cell, enter the sum of the entries of those earlier cells that can be seen from that cell.

The programs for A280027, there is no canonical definition to state claims against.
-/

/-! ## A280027.P1001968795862966331

`A261104(A176361(n)+A000044(n))`
-/

namespace A280027.P1001968795862966331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A176361 n + A000044 n).toNat

end

end A280027.P1001968795862966331

/-! ## A280027.P10751356378987756566

`A261104(A176361(n)+A002620(n))`
-/

namespace A280027.P10751356378987756566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A176361 n + A002620 n).toNat

end

end A280027.P10751356378987756566

/-! ## A280027.P2412060705777239621

`A261104(A286141(n)+A176361(n))`
-/

namespace A280027.P2412060705777239621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A286141 n + A176361 n).toNat

end

end A280027.P2412060705777239621

/-! ## A280027.P5226536626475044966

`A261104(A334741(n)+A176361(n))`
-/

namespace A280027.P5226536626475044966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A334741 n + A176361 n).toNat

end

end A280027.P5226536626475044966

/-! ## A280027.P2777897021076853180

`A261104(or(A002620(n), A176361(n)))`
-/

namespace A280027.P2777897021076853180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (Int.lor (A002620 n) (A176361 n)).toNat

end

end A280027.P2777897021076853180

/-!
# A280028: a(1)=1; thereafter, if n even, a(n) = a(n-1)-st prime, and if n odd, a(n) = a(n-1)-st nonprime.

The programs for A280028, there is no canonical definition to state claims against.
-/

/-! ## A280028.P1093479048400171374

`A237739(A000975(n))`
-/

namespace A280028.P1093479048400171374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A000975 n).toNat

end

end A280028.P1093479048400171374

/-! ## A280028.P8443330374730406094

`A237739(∑[A001045(n)])`
-/

namespace A280028.P8443330374730406094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280028.P8443330374730406094

/-! ## A280028.P12935602334613880121

`A237739(eq[1, A227184(n)])`
-/

namespace A280028.P12935602334613880121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280028.P12935602334613880121

/-! ## A280028.P15414304646838067436

`A237739(eq[1, A284579(n)])`
-/

namespace A280028.P15414304646838067436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280028.P15414304646838067436

/-! ## A280028.P13875239141439141072

`A237739(A051274(∑[2^n]))`
-/

namespace A280028.P13875239141439141072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A051274 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A280028.P13875239141439141072

/-!
# A280029: a(1)=3; thereafter, if n odd, a(n) = a(n-1)-st prime, and if n even, a(n) = a(n-1)-st nonprime.

The programs for A280029, there is no canonical definition to state claims against.
-/

/-! ## A280029.P16414065706398427210

`A237739(A081254(n+2))`
-/

namespace A280029.P16414065706398427210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A081254 (n + 2)).toNat

end

end A280029.P16414065706398427210

/-! ## A280029.P14494948589037966977

`A237739(eq[2, A227184(n)])`
-/

namespace A280029.P14494948589037966977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280029.P14494948589037966977

/-! ## A280029.P1051212920661543728

`A237739(A001045(n+3)+A000975(n))`
-/

namespace A280029.P1051212920661543728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A001045 (n + 3) + A000975 n).toNat

end

end A280029.P1051212920661543728

/-!
# A280030: a(1)=5; thereafter, if n odd, a(n) = a(n-1)-st prime, and if n even, a(n) = a(n-1)-st nonprime.

The programs for A280030, there is no canonical definition to state claims against.
-/

/-! ## A280030.P2139967880834741360

`A237739(eq[3, A227184(n)])`
-/

namespace A280030.P2139967880834741360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280030.P2139967880834741360

/-!
# A280032: Composite numbers n such that the number of digits in n equals the total number of digits in the prime power factorization of n.

The programs for A280032, there is no canonical definition to state claims against.
-/

/-! ## A280032.P5942778577531873858

`filter[A046758(n+1), A066247(#)]`
-/

namespace A280032.P5942778577531873858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A280032.P5942778577531873858

/-! ## A280032.P11186140563635632694

`filter[A046758(n+2), A005171(#)]`
-/

namespace A280032.P11186140563635632694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046758 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A280032.P11186140563635632694

/-! ## A280032.P9588710072248771110

`∩[A046758(n+1), A002808(n+3)]`
-/

namespace A280032.P9588710072248771110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280032.P9588710072248771110

/-! ## A280032.P991028337933033231

`∩[A018252(n+1), A046758(n+3)]`
-/

namespace A280032.P991028337933033231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046758 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280032.P991028337933033231

/-! ## A280032.P12934928776208428024

`∩[record[A112975(n+1)], A046758(n+4)]`
-/

namespace A280032.P12934928776208428024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112975 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046758 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A280032.P12934928776208428024

/-!
# A280033: Irregular triangle read by rows: numbers (2n-1)!*F(n,m) related to Fekete polynomials.

The programs for A280033, there is no canonical definition to state claims against.
-/

/-! ## A280033.P5789429530826217349

`A268481(A337409(n+1)+A324347(n))`
-/

namespace A280033.P5789429530826217349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268481 (A337409 (n + 1) + A324347 n).toNat

end

end A280033.P5789429530826217349

/-! ## A280033.P12772788937227669848

`A268481(A324347(n)^A263144(n))`
-/

namespace A280033.P12772788937227669848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268481 (SequenceMachineLib.roundAway ((A324347 n : ℚ) ^ (A263144 n : ℤ))).toNat

end

end A280033.P12772788937227669848

/-!
# A280035: Denominators of fractions converging to limiting value of Fekete polynomials.

The programs for A280035, there is no canonical definition to state claims against.
-/

/-! ## A280035.P7992221551186587677

`A266913(2*a(floor(n/2))-(-1)^n)` with `a(0)=1`
-/

namespace A280035.P7992221551186587677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266913 (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n).toNat

end

end A280035.P7992221551186587677

/-! ## A280035.P2969239142146971636

`record[A248592(A339491(n+1))]`
-/

namespace A280035.P2969239142146971636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248592 (A339491 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280035.P2969239142146971636

/-!
# A280037: Denominators of fractions converging to limiting value of Galois polynomials.

The programs for A280037, there is no canonical definition to state claims against.
-/

/-! ## A280037.P7185517131631331602

`A023675(A208715(n+1))`
-/

namespace A280037.P7185517131631331602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023675 (A208715 (n + 1)).toNat

end

end A280037.P7185517131631331602

/-!
# A280039: Denominators of fractions converging to limiting value of shifted Fekete polynomials.

The programs for A280039, there is no canonical definition to state claims against.
-/

/-! ## A280039.P976756091716898997

`A126342(A014105(n))/A070667(n+1)`
-/

namespace A280039.P976756091716898997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126342 (A014105 n).toNat : ℚ) / (A070667 (n + 1) : ℚ)

end

end A280039.P976756091716898997

/-!
# A280041: Solutions to the congruence 1^n+2^n+...+n^n == 19 (mod n).

The programs for A280041, there is no canonical definition to state claims against.
-/

/-! ## A280041.P15648833517085472083

`A018343(2*(n+1))/2`
-/

namespace A280041.P15648833517085472083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018343 (2 * (n + 1)) : ℚ) / 2

end

end A280041.P15648833517085472083

/-! ## A280041.P16636916547279938601

`A325393(A301180(n))`
-/

namespace A280041.P16636916547279938601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (A301180 n).toNat

end

end A280041.P16636916547279938601

/-!
# A280042: a(1) = 1, a(n+1) is the numerator of n-th partial fraction of the continued fraction [1; 10, 100, 1000, ..., 10^n].

The programs for A280042, there is no canonical definition to state claims against.
-/

/-! ## A280042.P1421013351904776628

`a(n-2)+10^n*a(n-1)` with `a(0)=1, a(1)=11`
-/

namespace A280042.P1421013351904776628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 2) + 10 ^ n * a (n - 1)

end

end A280042.P1421013351904776628

/-!
# A280046: Image of A053838 under the morphism 0 -> 0000, 1 -> 0100, 2 -> 0110.

The programs for A280046, the canonical program `A280046.P8165045859776700570` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280046 has offset 0).

The definition of A280046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280046.P8165045859776700570

`and(A003188(n), A057215(A004526(3*(n+1))))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280046

/-- `and(A003188(n), A057215(A004526(3*(n+1))))` -/
def P8165045859776700570.Spec : Prop :=
  ∀ n, P8165045859776700570.a n = A280046 n

theorem P8165045859776700570.correct : P8165045859776700570.Spec := by
  intro n
  simp only [A280046]

end A280046

/-! ## A280046.P14677589028768358962

`and(A037800(n), A326849(A227310(n+1)))`
-/

namespace A280046.P14677589028768358962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037800 n) (A326849 (A227310 (n + 1)).toNat)

end

end A280046.P14677589028768358962

namespace A280046

/-- `and(A037800(n), A326849(A227310(n+1)))` -/
def P14677589028768358962.Spec : Prop :=
  ∀ n, P14677589028768358962.a n = A280046 n

end A280046

/-! ## A280046.P10589633566495570622

`A352521(A033950(n+1))%A341765(3*n+5)`
-/

namespace A280046.P10589633566495570622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352521 (A033950 (n + 1)).toNat) (A341765 (3 * n + 5))

end

end A280046.P10589633566495570622

namespace A280046

/-- `A352521(A033950(n+1))%A341765(3*n+5)` -/
def P10589633566495570622.Spec : Prop :=
  ∀ n, P10589633566495570622.a n = A280046 n

end A280046

/-! ## A280046.P2362990992258033632

`A124762(A345992(n+1)+A124778(n))`
-/

namespace A280046.P2362990992258033632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A345992 (n + 1) + A124778 n).toNat

end

end A280046.P2362990992258033632

namespace A280046

/-- `A124762(A345992(n+1)+A124778(n))` -/
def P2362990992258033632.Spec : Prop :=
  ∀ n, P2362990992258033632.a n = A280046 n

end A280046

/-! ## A280046.P1161498647809003295

`A124752(A124778(n)*A345942(n+1))`
-/

namespace A280046.P1161498647809003295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124752 (A124778 n * A345942 (n + 1)).toNat

end

end A280046.P1161498647809003295

namespace A280046

/-- `A124752(A124778(n)*A345942(n+1))` -/
def P1161498647809003295.Spec : Prop :=
  ∀ n, P1161498647809003295.a n = A280046 n

end A280046

/-!
# A280048: The Tower of Hanoi word, with a,b,c,a-bar,b-bar,c-bar encoded as 1,2,3,-1,-2,-3 respectively.

The programs for A280048, the canonical program `A280048.P14757921311873397482` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280048 has offset 0).

The definition of A280048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280048.P14757921311873397482

`A130784(n)*A309873(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A280048

/-- `A130784(n)*A309873(n+1)` -/
def P14757921311873397482.Spec : Prop :=
  ∀ n, P14757921311873397482.a n = A280048 n

theorem P14757921311873397482.correct : P14757921311873397482.Spec := by
  intro n
  simp only [A280048]

end A280048

/-! ## A280048.P3549635924743181718

`(2-A049347(n))*A309873(n+1)`
-/

namespace A280048.P3549635924743181718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A049347 n) * A309873 (n + 1)

end

end A280048.P3549635924743181718

namespace A280048

/-- `(2-A049347(n))*A309873(n+1)` -/
def P3549635924743181718.Spec : Prop :=
  ∀ n, P3549635924743181718.a n = A280048 n

end A280048

/-! ## A280048.P1770846024544417372

`(2-A049347(n))*A049347(A135481(n))`
-/

namespace A280048.P1770846024544417372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A049347 n) * A049347 (A135481 n).toNat

end

end A280048.P1770846024544417372

namespace A280048

/-- `(2-A049347(n))*A049347(A135481(n))` -/
def P1770846024544417372.Spec : Prop :=
  ∀ n, P1770846024544417372.a n = A280048 n

end A280048

/-! ## A280048.P14151511101974057342

`A099636(A099636(a(n-1)²+1)+1)*A309873(n+1)` with `a(0)=1`
-/

namespace A280048.P14151511101974057342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099636 (A099636 (a (n - 1) ^ 2 + 1).toNat + 1).toNat * A309873 (n + 1)

end

end A280048.P14151511101974057342

namespace A280048

/-- `A099636(A099636(a(n-1)²+1)+1)*A309873(n+1)` -/
def P14151511101974057342.Spec : Prop :=
  ∀ n, P14151511101974057342.a n = A280048 n

end A280048

/-! ## A280048.P14260364567008926261

`Δ[A047234(n+1)]*A309873(n+1)`
-/

namespace A280048.P14260364567008926261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A309873 (n + 1)

end

end A280048.P14260364567008926261

namespace A280048

/-- `Δ[A047234(n+1)]*A309873(n+1)` -/
def P14260364567008926261.Spec : Prop :=
  ∀ n, P14260364567008926261.a n = A280048 n

end A280048

/-! ## A280048.P5503039281588487187

`Δ[A047268(n+1)]*A309873(n+1)`
-/

namespace A280048.P5503039281588487187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A309873 (n + 1)

end

end A280048.P5503039281588487187

namespace A280048

/-- `Δ[A047268(n+1)]*A309873(n+1)` -/
def P5503039281588487187.Spec : Prop :=
  ∀ n, P5503039281588487187.a n = A280048 n

end A280048

/-! ## A280048.P10351616986521303560

`A010882(2*n)*A309873(n+1)`
-/

namespace A280048.P10351616986521303560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * n) * A309873 (n + 1)

end

end A280048.P10351616986521303560

namespace A280048

/-- `A010882(2*n)*A309873(n+1)` -/
def P10351616986521303560.Spec : Prop :=
  ∀ n, P10351616986521303560.a n = A280048 n

end A280048

/-! ## A280048.P6570405772120993827

`A106400(2*n+1)*A106400(n+1)*A010882(2*n)`
-/

namespace A280048.P6570405772120993827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (2 * n + 1) * A106400 (n + 1) * A010882 (2 * n)

end

end A280048.P6570405772120993827

namespace A280048

/-- `A106400(2*n+1)*A106400(n+1)*A010882(2*n)` -/
def P6570405772120993827.Spec : Prop :=
  ∀ n, P6570405772120993827.a n = A280048 n

end A280048

/-! ## A280048.P11321805138233074444

`A089045(A038712(n+1))*A130784(n)`
-/

namespace A280048.P11321805138233074444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089045 (A038712 (n + 1)).toNat * A130784 n

end

end A280048.P11321805138233074444

namespace A280048

/-- `A089045(A038712(n+1))*A130784(n)` -/
def P11321805138233074444.Spec : Prop :=
  ∀ n, P11321805138233074444.a n = A280048 n

end A280048

/-! ## A280048.P16588818674835539903

`A130784(n)/A309873(A250246(n+1))`
-/

namespace A280048.P16588818674835539903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130784 n : ℚ) / (A309873 (A250246 (n + 1)).toNat : ℚ)

end

end A280048.P16588818674835539903

namespace A280048

/-- `A130784(n)/A309873(A250246(n+1))` -/
def P16588818674835539903.Spec : Prop :=
  ∀ n, P16588818674835539903.a n = (A280048 n : ℚ)

end A280048

/-!
# A280049: Canonical representation of n as a sum of distinct Jacobsthal numbers J(n) (A001045) (see Comments for details); also binary numbers that end in an even number of zeros.

The programs for A280049, the canonical program `A280049.P1262711397762833047` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280049 has offset 1).

The definition of A280049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280049.P1262711397762833047

`A007088(A003159(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A280049

/-- `A007088(A003159(n+1))` -/
def P1262711397762833047.Spec : Prop :=
  ∀ n, P1262711397762833047.a n = A280049 (n + 1)

theorem P1262711397762833047.correct : P1262711397762833047.Spec := by
  intro n
  simp only [A280049, Nat.add_sub_cancel]

end A280049

/-! ## A280049.P589436349375809562

`A007088(∑[A026465(n+1)])`
-/

namespace A280049.P589436349375809562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280049.P589436349375809562

namespace A280049

/-- `A007088(∑[A026465(n+1)])` -/
def P589436349375809562.Spec : Prop :=
  ∀ n, P589436349375809562.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P3536247114970475627

`A007088(A121539(n+1)+1)`
-/

namespace A280049.P3536247114970475627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A121539 (n + 1) + 1).toNat

end

end A280049.P3536247114970475627

namespace A280049

/-- `A007088(A121539(n+1)+1)` -/
def P3536247114970475627.Spec : Prop :=
  ∀ n, P3536247114970475627.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P9508773100606718032

`A007088(A036554(n+1)/2)`
-/

namespace A280049.P9508773100606718032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A036554 (n + 1) : ℚ) / 2)).toNat

end

end A280049.P9508773100606718032

namespace A280049

/-- `A007088(A036554(n+1)/2)` -/
def P9508773100606718032.Spec : Prop :=
  ∀ n, P9508773100606718032.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P15875644294932907617

`A007088(record[(n+1)*A283988(xor(n, n+1)+1)])`
-/

namespace A280049.P15875644294932907617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A283988 (Nat.xor n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280049.P15875644294932907617

namespace A280049

/-- `A007088(record[(n+1)*A283988(xor(n, n+1)+1)])` -/
def P15875644294932907617.Spec : Prop :=
  ∀ n, P15875644294932907617.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P9660804113204113389

`A265747(A003156(n+1))`
-/

namespace A280049.P9660804113204113389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A003156 (n + 1)).toNat

end

end A280049.P9660804113204113389

namespace A280049

/-- `A265747(A003156(n+1))` -/
def P9660804113204113389.Spec : Prop :=
  ∀ n, P9660804113204113389.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P16684536812807774622

`A265747(A079523(n+1)-n)`
-/

namespace A280049.P16684536812807774622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A079523 (n + 1) - (n : ℤ)).toNat

end

end A280049.P16684536812807774622

namespace A280049

/-- `A265747(A079523(n+1)-n)` -/
def P16684536812807774622.Spec : Prop :=
  ∀ n, P16684536812807774622.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P5476778127208503266

`A265747(A036554(n+1)-(n+1))`
-/

namespace A280049.P5476778127208503266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A036554 (n + 1) - (n + 1 : ℤ)).toNat

end

end A280049.P5476778127208503266

namespace A280049

/-- `A265747(A036554(n+1)-(n+1))` -/
def P5476778127208503266.Spec : Prop :=
  ∀ n, P5476778127208503266.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P14374691633586371655

`A265747(A003157(n+1)-2*(n+1))`
-/

namespace A280049.P14374691633586371655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A003157 (n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A280049.P14374691633586371655

namespace A280049

/-- `A265747(A003157(n+1)-2*(n+1))` -/
def P14374691633586371655.Spec : Prop :=
  ∀ n, P14374691633586371655.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P14138697719014486269

`A265747(A003158(n+1)-(2*n+1))`
-/

namespace A280049.P14138697719014486269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A003158 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A280049.P14138697719014486269

namespace A280049

/-- `A265747(A003158(n+1)-(2*n+1))` -/
def P14138697719014486269.Spec : Prop :=
  ∀ n, P14138697719014486269.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P4379130588634962511

`A185544(A036554(n+1))`
-/

namespace A280049.P4379130588634962511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A036554 (n + 1)).toNat

end

end A280049.P4379130588634962511

namespace A280049

/-- `A185544(A036554(n+1))` -/
def P4379130588634962511.Spec : Prop :=
  ∀ n, P4379130588634962511.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P6569462488337985043

`A185544(A003158(n+1)-n)`
-/

namespace A280049.P6569462488337985043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A003158 (n + 1) - (n : ℤ)).toNat

end

end A280049.P6569462488337985043

namespace A280049

/-- `A185544(A003158(n+1)-n)` -/
def P6569462488337985043.Spec : Prop :=
  ∀ n, P6569462488337985043.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P16599827121204353163

`A265747(A050292(A079523(n+1)))`
-/

namespace A280049.P16599827121204353163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A050292 (A079523 (n + 1)).toNat).toNat

end

end A280049.P16599827121204353163

namespace A280049

/-- `A265747(A050292(A079523(n+1)))` -/
def P16599827121204353163.Spec : Prop :=
  ∀ n, P16599827121204353163.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P8052736235681659154

`A265747(A050292(A003158(n+1)-n))`
-/

namespace A280049.P8052736235681659154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A050292 (A003158 (n + 1) - (n : ℤ)).toNat).toNat

end

end A280049.P8052736235681659154

namespace A280049

/-- `A265747(A050292(A003158(n+1)-n))` -/
def P8052736235681659154.Spec : Prop :=
  ∀ n, P8052736235681659154.a n = A280049 (n + 1)

end A280049

/-! ## A280049.P11254555474853791175

`A265747(A050292(A003157(n+1)-(n+1)))`
-/

namespace A280049.P11254555474853791175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A050292 (A003157 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A280049.P11254555474853791175

namespace A280049

/-- `A265747(A050292(A003157(n+1)-(n+1)))` -/
def P11254555474853791175.Spec : Prop :=
  ∀ n, P11254555474853791175.a n = A280049 (n + 1)

end A280049

/-!
# A280050: a(n) = Sum_{k=2..n} k/lpf(k), where lpf(k) is the least prime dividing k (A020639).

The programs for A280050, there is no canonical definition to state claims against.
-/

/-! ## A280050.P4025288864600686330

`∑[A032742(n+1)]-1`
-/

namespace A280050.P4025288864600686330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A280050.P4025288864600686330

/-! ## A280050.P1895000612911892365

`∑[ceil(n/A020639(n+1))]`
-/

namespace A280050.P1895000612911892365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A020639 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280050.P1895000612911892365

/-! ## A280050.P147996618133181231

`∑[A054576(2*(n+1))]-1`
-/

namespace A280050.P147996618133181231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A280050.P147996618133181231

/-! ## A280050.P16718234728576342289

`∑[A080211(n+1)%(n+1)]`
-/

namespace A280050.P16718234728576342289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080211 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280050.P16718234728576342289

/-! ## A280050.P17587520598792644470

`∑[A220096((n+1)²)/(n+1)]`
-/

namespace A280050.P17587520598792644470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220096 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280050.P17587520598792644470

/-!
# A280052: Let c_n(k) be the sequence defined in A278743; here we give the associated values of b.

The programs for A280052, there is no canonical definition to state claims against.
-/

/-! ## A280052.P2570126892204382169

`A333749(A312526(n)^A080934(n))`
-/

namespace A280052.P2570126892204382169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (SequenceMachineLib.roundAway ((A312526 n : ℚ) ^ (A080934 n : ℤ))).toNat

end

end A280052.P2570126892204382169

/-! ## A280052.P8395934627429467151

`A275117(A143397(n+1))`
-/

namespace A280052.P8395934627429467151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275117 (A143397 (n + 1)).toNat

end

end A280052.P8395934627429467151

/-! ## A280052.P10527272593824533528

`A322169(18*A322222(n))`
-/

namespace A280052.P10527272593824533528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322169 (18 * A322222 n).toNat

end

end A280052.P10527272593824533528

/-! ## A280052.P6951611822639539796

`A274917(xor(A008292(n+1), A026836(n+1)))`
-/

namespace A280052.P6951611822639539796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274917 (Int.xor (A008292 (n + 1)) (A026836 (n + 1))).toNat

end

end A280052.P6951611822639539796

/-! ## A280052.P951435865355015325

`A000005(gcd(A027749(n+1), A272154(n)))`
-/

namespace A280052.P951435865355015325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A027749 (n + 1)) (A272154 n))

end

end A280052.P951435865355015325

/-!
# A280053: "Nachos" sequence based on squares.

The programs for A280053, there is no canonical definition to state claims against.
-/

/-! ## A280053.P14025152430420839418

`A338493(n+1)+A210717(A059328(A210717(n)))`
-/

namespace A280053.P14025152430420839418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (n + 1) + A210717 (A059328 (A210717 n).toNat).toNat

end

end A280053.P14025152430420839418

/-! ## A280053.P6076950059993927455

`A338493(A090110(n+1))`
-/

namespace A280053.P6076950059993927455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (A090110 (n + 1)).toNat

end

end A280053.P6076950059993927455

/-! ## A280053.P7533669993203972667

`A338493(n+1)-A010815((3*(n+1))²)`
-/

namespace A280053.P7533669993203972667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (n + 1) - A010815 ((3 * (n + 1)) ^ 2)

end

end A280053.P7533669993203972667

/-! ## A280053.P5120418903530990355

`gcd(A185255(n), A338493(n+1))`
-/

namespace A280053.P5120418903530990355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185255 n) (A338493 (n + 1))

end

end A280053.P5120418903530990355

/-! ## A280053.P9809251758381966394

`and(A158861(n+1), A338493(n+1))`
-/

namespace A280053.P9809251758381966394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158861 (n + 1)) (A338493 (n + 1))

end

end A280053.P9809251758381966394

/-!
# A280055: Nachos sequence based on 1 plus primes (A008578).

The programs for A280055, there is no canonical definition to state claims against.
-/

/-! ## A280055.P1159665002953649993

`A333226(A018894(A037125(n+1)))`
-/

namespace A280055.P1159665002953649993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (A018894 (A037125 (n + 1)).toNat).toNat

end

end A280055.P1159665002953649993

/-! ## A280055.P8891097973344230625

`∑{e}[A139247(n+1), A037125(#)]`
-/

namespace A280055.P8891097973344230625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A037125 (Nat.factorization (f1 n).natAbs p)

end

end A280055.P8891097973344230625

/-! ## A280055.P9261974262300619054

`A001222(A087136(A037125(n+1)²))`
-/

namespace A280055.P9261974262300619054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087136 (A037125 (n + 1) ^ 2).toNat).toNat

end

end A280055.P9261974262300619054

/-! ## A280055.P4802867545816892593

`∑{e}[A139247(n+1), A001222(A139247(#))]`
-/

namespace A280055.P4802867545816892593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A139247 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A280055.P4802867545816892593

/-! ## A280055.P407602676244494429

`A001221(A053304(A037125(n+1))*A240107(n+1))`
-/

namespace A280055.P407602676244494429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A053304 (A037125 (n + 1)).toNat * A240107 (n + 1)).toNat

end

end A280055.P407602676244494429

/-!
# A280056: Number of 2 X 2 matrices with entries in {0,1,...,n} and even trace with no entries repeated.

The programs for A280056, the canonical program `A280056.P650724906645880656` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280056 has offset 0).

The definition of A280056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280056.P650724906645880656

`((-1)^n+2*n²-1)*(n-1)*(n-2)/4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280056

/-- `((-1)^n+2*n²-1)*(n-1)*(n-2)/4` -/
def P650724906645880656.Spec : Prop :=
  ∀ n, P650724906645880656.a n = (A280056 n : ℚ)

end A280056

/-! ## A280056.P692613905023469307

`-4*(1-n)*A111384(n)`
-/

namespace A280056.P692613905023469307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 * (1 - (n : ℤ)) * A111384 n)

end

end A280056.P692613905023469307

namespace A280056

/-- `-4*(1-n)*A111384(n)` -/
def P692613905023469307.Spec : Prop :=
  ∀ n, P692613905023469307.a n = A280056 n

end A280056

/-! ## A280056.P9347413352410518956

`4*A004275(n)*A111384(n)/2`
-/

namespace A280056.P9347413352410518956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (A004275 n * A111384 n) : ℚ) / 2

end

end A280056.P9347413352410518956

namespace A280056

/-- `4*A004275(n)*A111384(n)/2` -/
def P9347413352410518956.Spec : Prop :=
  ∀ n, P9347413352410518956.a n = (A280056 n : ℚ)

end A280056

/-! ## A280056.P17296742788111274858

`A045833(3*n)+2*A004275(n)*A111384(n)`
-/

namespace A280056.P17296742788111274858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (3 * n) + 2 * (A004275 n * A111384 n)

end

end A280056.P17296742788111274858

namespace A280056

/-- `A045833(3*n)+2*A004275(n)*A111384(n)` -/
def P17296742788111274858.Spec : Prop :=
  ∀ n, P17296742788111274858.a n = A280056 n

end A280056

/-! ## A280056.P2481687642403505905

`A037214(4^A086251(n+1))+2*A004275(n)*A111384(n)`
-/

namespace A280056.P2481687642403505905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A086251 (n + 1) : ℤ))).toNat + 2 * (A004275 n * A111384 n)

end

end A280056.P2481687642403505905

namespace A280056

/-- `A037214(4^A086251(n+1))+2*A004275(n)*A111384(n)` -/
def P2481687642403505905.Spec : Prop :=
  ∀ n, P2481687642403505905.a n = A280056 n

end A280056

/-! ## A280056.P14030990174424623418

`(2*A004275(n)*A111384(n))%A000351(n)`
-/

namespace A280056.P14030990174424623418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A004275 n * A111384 n)) (A000351 n)

end

end A280056.P14030990174424623418

namespace A280056

/-- `(2*A004275(n)*A111384(n))%A000351(n)` -/
def P14030990174424623418.Spec : Prop :=
  ∀ n, P14030990174424623418.a n = A280056 n

end A280056

/-!
# A280057: a(n) = (-1)^n * 4*n/3 if n = 3*k and n!=0, otherwise a(n) = (-1)^n * n except a(0) = 1.

The programs for A280057, the canonical program `A280057.P4993139028131818465` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280057 has offset 0).

The definition of A280057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280057.P4993139028131818465

`(-1)^n*A257174(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A280057

/-- `(-1)^n*A257174(n)` -/
def P4993139028131818465.Spec : Prop :=
  ∀ n, P4993139028131818465.a n = A280057 n

theorem P4993139028131818465.correct : P4993139028131818465.Spec := by
  intro n
  simp only [A280057]

end A280057

/-! ## A280057.P2218649220760486983

`A257174(n)/A033999(n)`
-/

namespace A280057.P2218649220760486983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257174 n : ℚ) / (A033999 n : ℚ)

end

end A280057.P2218649220760486983

namespace A280057

/-- `A257174(n)/A033999(n)` -/
def P2218649220760486983.Spec : Prop :=
  ∀ n, P2218649220760486983.a n = (A280057 n : ℚ)

end A280057

/-! ## A280057.P4286316595723128860

`A257174(n)/A062157(n+1)`
-/

namespace A280057.P4286316595723128860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257174 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A280057.P4286316595723128860

namespace A280057

/-- `A257174(n)/A062157(n+1)` -/
def P4286316595723128860.Spec : Prop :=
  ∀ n, P4286316595723128860.a n = (A280057 n : ℚ)

end A280057

/-! ## A280057.P6538785183688978811

`A257174(n)/A087960(2*n)`
-/

namespace A280057.P6538785183688978811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257174 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A280057.P6538785183688978811

namespace A280057

/-- `A257174(n)/A087960(2*n)` -/
def P6538785183688978811.Spec : Prop :=
  ∀ n, P6538785183688978811.a n = (A280057 n : ℚ)

end A280057

/-! ## A280057.P8289119179468399944

`A257174(n)/A034947(n²+5)`
-/

namespace A280057.P8289119179468399944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257174 n : ℚ) / (A034947 (n ^ 2 + 5) : ℚ)

end

end A280057.P8289119179468399944

namespace A280057

/-- `A257174(n)/A034947(n²+5)` -/
def P8289119179468399944.Spec : Prop :=
  ∀ n, P8289119179468399944.a n = (A280057 n : ℚ)

end A280057

/-!
# A280058: Number of 2 X 2 matrices with entries in {0,1,...,n} with determinant = permanent with no entries repeated.

The programs for A280058, the canonical program `A280058.P16968223727792884466` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280058 has offset 0).

The definition of A280058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280058.P16968223727792884466

`12*C(n, 3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280058

/-- `12*C(n, 3)` -/
def P16968223727792884466.Spec : Prop :=
  ∀ n, (P16968223727792884466.a n : ℤ) = A280058 n

theorem P16968223727792884466.correct : P16968223727792884466.Spec := by
  intro n
  simp only [A280058]

end A280058

/-! ## A280058.P9035454409353469345

`2*n*(n-1)*(n-2)`
-/

namespace A280058.P9035454409353469345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2)))

end

end A280058.P9035454409353469345

namespace A280058

/-- `2*n*(n-1)*(n-2)` -/
def P9035454409353469345.Spec : Prop :=
  ∀ n, P9035454409353469345.a n = A280058 n

end A280058

/-! ## A280058.P15332905584455858338

`∑[∑[a(n-1)+12]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A280058.P15332905584455858338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280058.P15332905584455858338

namespace A280058

/-- `∑[∑[a(n-1)+12]]` -/
def P15332905584455858338.Spec : Prop :=
  ∀ n, (P15332905584455858338.a n : ℤ) = A280058 n

end A280058

/-! ## A280058.P5594311671692262626

`Δ[C((1-n)²-(n-1), 2)]-(n-1)`
-/

namespace A280058.P5594311671692262626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2 - ((n : ℤ) - 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - 1)

end

end A280058.P5594311671692262626

namespace A280058

/-- `Δ[C((1-n)²-(n-1), 2)]-(n-1)` -/
def P5594311671692262626.Spec : Prop :=
  ∀ n, P5594311671692262626.a n = A280058 n

end A280058

/-! ## A280058.P13454825216958620570

`Δ[(2-n)²²-a(n-1)]-(n-1)` with `a(0)=1`
-/

namespace A280058.P13454825216958620570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((2 - (n : ℤ)) ^ 2) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - 1)

end

end A280058.P13454825216958620570

namespace A280058

/-- `Δ[(2-n)²²-a(n-1)]-(n-1)` -/
def P13454825216958620570.Spec : Prop :=
  ∀ n, P13454825216958620570.a n = A280058 n

end A280058

/-! ## A280058.P9411655616075477593

`A007531(n)+A007531(n)`
-/

namespace A280058.P9411655616075477593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + A007531 n

end

end A280058.P9411655616075477593

namespace A280058

/-- `A007531(n)+A007531(n)` -/
def P9411655616075477593.Spec : Prop :=
  ∀ n, P9411655616075477593.a n = A280058 n

end A280058

/-! ## A280058.P14729543986588488698

`A135705(n)+A015245(n)`
-/

namespace A280058.P14729543986588488698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n + A015245 n

end

end A280058.P14729543986588488698

namespace A280058

/-- `A135705(n)+A015245(n)` -/
def P14729543986588488698.Spec : Prop :=
  ∀ n, P14729543986588488698.a n = A280058 n

end A280058

/-! ## A280058.P9918966917004023952

`A140676(n)+A015243(n)`
-/

namespace A280058.P9918966917004023952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140676 n + A015243 n

end

end A280058.P9918966917004023952

namespace A280058

/-- `A140676(n)+A015243(n)` -/
def P9918966917004023952.Spec : Prop :=
  ∀ n, P9918966917004023952.a n = A280058 n

end A280058

/-! ## A280058.P5913202475356351888

`A007588(n)-A051866(n)`
-/

namespace A280058.P5913202475356351888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n - A051866 n

end

end A280058.P5913202475356351888

namespace A280058

/-- `A007588(n)-A051866(n)` -/
def P5913202475356351888.Spec : Prop :=
  ∀ n, P5913202475356351888.a n = A280058 n

end A280058

/-! ## A280058.P6398444682123299576

`A059722(n)-A001107(n)`
-/

namespace A280058.P6398444682123299576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n - A001107 n

end

end A280058.P6398444682123299576

namespace A280058

/-- `A059722(n)-A001107(n)` -/
def P6398444682123299576.Spec : Prop :=
  ∀ n, P6398444682123299576.a n = A280058 n

end A280058

/-! ## A280058.P8570579934823362441

`A015237(n)-A051624(n)`
-/

namespace A280058.P8570579934823362441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - A051624 n

end

end A280058.P8570579934823362441

namespace A280058

/-- `A015237(n)-A051624(n)` -/
def P8570579934823362441.Spec : Prop :=
  ∀ n, P8570579934823362441.a n = A280058 n

end A280058

/-! ## A280058.P2227904310238318677

`A006592(n)-A144138(n)`
-/

namespace A280058.P2227904310238318677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006592 n - A144138 n

end

end A280058.P2227904310238318677

namespace A280058

/-- `A006592(n)-A144138(n)` -/
def P2227904310238318677.Spec : Prop :=
  ∀ n, P2227904310238318677.a n = A280058 n

end A280058

/-! ## A280058.P11413137522103130985

`A061317(n)-A094159(n)`
-/

namespace A280058.P11413137522103130985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 n - A094159 n

end

end A280058.P11413137522103130985

namespace A280058

/-- `A061317(n)-A094159(n)` -/
def P11413137522103130985.Spec : Prop :=
  ∀ n, P11413137522103130985.a n = A280058 n

end A280058

/-! ## A280058.P11697493342248120958

`A033431(n)-A139267(n)`
-/

namespace A280058.P11697493342248120958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A139267 n

end

end A280058.P11697493342248120958

namespace A280058

/-- `A033431(n)-A139267(n)` -/
def P11697493342248120958.Spec : Prop :=
  ∀ n, P11697493342248120958.a n = A280058 n

end A280058

/-!
# A280059: Number of 2 X 2 matrices having all elements in {-n,..,0,..,n} with determinant = permanent.

The programs for A280059, the canonical program `A280059.P842335069521915048` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280059 has offset 0).

The definition of A280059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280059.P842335069521915048

`16*(n+1)^3-28*(n+1)²+16*(n+1)-3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280059

/-- `16*(n+1)^3-28*(n+1)²+16*(n+1)-3` -/
def P842335069521915048.Spec : Prop :=
  ∀ n, P842335069521915048.a n = A280059 n

theorem P842335069521915048.correct : P842335069521915048.Spec := by
  intro n
  simp only [A280059]

end A280059

/-! ## A280059.P16152833900516101296

`record[(2*n+1)*xor(1, n)²]`
-/

namespace A280059.P16152833900516101296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.xor 1 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280059.P16152833900516101296

namespace A280059

/-- `record[(2*n+1)*xor(1, n)²]` -/
def P16152833900516101296.Spec : Prop :=
  ∀ n, (P16152833900516101296.a n : ℤ) = A280059 n

end A280059

/-! ## A280059.P10859814563765159623

`lcm(4*n+1, comp[2*n]²)`
-/

namespace A280059.P10859814563765159623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (4 * n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)

end

end A280059.P10859814563765159623

namespace A280059

/-- `lcm(4*n+1, comp[2*n]²)` -/
def P10859814563765159623.Spec : Prop :=
  ∀ n, (P10859814563765159623.a n : ℤ) = A280059 n

end A280059

/-! ## A280059.P6252036536613207665

`Δ[n²]²*Δ[C(2*n, 2)]`
-/

namespace A280059.P6252036536613207665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A280059.P6252036536613207665

namespace A280059

/-- `Δ[n²]²*Δ[C(2*n, 2)]` -/
def P6252036536613207665.Spec : Prop :=
  ∀ n, P6252036536613207665.a n = A280059 n

end A280059

/-! ## A280059.P14768686666118675860

`record[(2*n+1)*xor(1, n)*xor(1, n)]`
-/

namespace A280059.P14768686666118675860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.xor 1 n * Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280059.P14768686666118675860

namespace A280059

/-- `record[(2*n+1)*xor(1, n)*xor(1, n)]` -/
def P14768686666118675860.Spec : Prop :=
  ∀ n, (P14768686666118675860.a n : ℤ) = A280059 n

end A280059

/-! ## A280059.P10333421064337894279

`Δ[n²]*A014634(n)`
-/

namespace A280059.P10333421064337894279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A014634 n

end

end A280059.P10333421064337894279

namespace A280059

/-- `Δ[n²]*A014634(n)` -/
def P10333421064337894279.Spec : Prop :=
  ∀ n, P10333421064337894279.a n = A280059 n

end A280059

/-! ## A280059.P2767644160690295139

`A016754(n)*A016813(n)`
-/

namespace A280059.P2767644160690295139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A016813 n

end

end A280059.P2767644160690295139

namespace A280059

/-- `A016754(n)*A016813(n)` -/
def P2767644160690295139.Spec : Prop :=
  ∀ n, P2767644160690295139.a n = A280059 n

end A280059

/-! ## A280059.P10490691450399804552

`A014799(n)/A016815(n)`
-/

namespace A280059.P10490691450399804552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014799 n : ℚ) / (A016815 n : ℚ)

end

end A280059.P10490691450399804552

namespace A280059

/-- `A014799(n)/A016815(n)` -/
def P10490691450399804552.Spec : Prop :=
  ∀ n, P10490691450399804552.a n = (A280059 n : ℚ)

end A280059

/-! ## A280059.P7919566296139052233

`A014634(n)²/A016813(n)`
-/

namespace A280059.P7919566296139052233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014634 n ^ 2 : ℚ) / (A016813 n : ℚ)

end

end A280059.P7919566296139052233

namespace A280059

/-- `A014634(n)²/A016813(n)` -/
def P7919566296139052233.Spec : Prop :=
  ∀ n, P7919566296139052233.a n = (A280059 n : ℚ)

end A280059

/-! ## A280059.P4730002003807127823

`A014771(n+1)/A016813(n)`
-/

namespace A280059.P4730002003807127823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014771 (n + 1) : ℚ) / (A016813 n : ℚ)

end

end A280059.P4730002003807127823

namespace A280059

/-- `A014771(n+1)/A016813(n)` -/
def P4730002003807127823.Spec : Prop :=
  ∀ n, P4730002003807127823.a n = (A280059 n : ℚ)

end A280059

/-! ## A280059.P4612125900491875726

`A014634(n)*A109613(2*n)`
-/

namespace A280059.P4612125900491875726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n * A109613 (2 * n)

end

end A280059.P4612125900491875726

namespace A280059

/-- `A014634(n)*A109613(2*n)` -/
def P4612125900491875726.Spec : Prop :=
  ∀ n, P4612125900491875726.a n = A280059 n

end A280059

/-! ## A280059.P3010346690465663467

`A015237(Δ[n²])`
-/

namespace A280059.P3010346690465663467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A280059.P3010346690465663467

namespace A280059

/-- `A015237(Δ[n²])` -/
def P3010346690465663467.Spec : Prop :=
  ∀ n, P3010346690465663467.a n = A280059 n

end A280059

/-! ## A280059.P15086227921425150040

`A192418(2*n+1)/4`
-/

namespace A280059.P15086227921425150040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192418 (2 * n + 1) : ℚ) / 4

end

end A280059.P15086227921425150040

namespace A280059

/-- `A192418(2*n+1)/4` -/
def P15086227921425150040.Spec : Prop :=
  ∀ n, P15086227921425150040.a n = (A280059 n : ℚ)

end A280059

/-! ## A280059.P16594397161063048135

`(2*n+1)*A000384(2*n+1)`
-/

namespace A280059.P16594397161063048135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000384 (2 * n + 1)

end

end A280059.P16594397161063048135

namespace A280059

/-- `(2*n+1)*A000384(2*n+1)` -/
def P16594397161063048135.Spec : Prop :=
  ∀ n, P16594397161063048135.a n = A280059 n

end A280059

/-! ## A280059.P13115399717478279975

`(2*n+1)*A014493(2*n+1)`
-/

namespace A280059.P13115399717478279975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A014493 (2 * n + 1)

end

end A280059.P13115399717478279975

namespace A280059

/-- `(2*n+1)*A014493(2*n+1)` -/
def P13115399717478279975.Spec : Prop :=
  ∀ n, P13115399717478279975.a n = A280059 n

end A280059

/-! ## A280059.P16944797165853283531

`(2*n+1)*A276914(2*n+1)`
-/

namespace A280059.P16944797165853283531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A276914 (2 * n + 1)

end

end A280059.P16944797165853283531

namespace A280059

/-- `(2*n+1)*A276914(2*n+1)` -/
def P16944797165853283531.Spec : Prop :=
  ∀ n, P16944797165853283531.a n = A280059 n

end A280059

/-! ## A280059.P15104075777359798544

`A000290(2*n+1)*A016813(n)`
-/

namespace A280059.P15104075777359798544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 1) * A016813 n

end

end A280059.P15104075777359798544

namespace A280059

/-- `A000290(2*n+1)*A016813(n)` -/
def P15104075777359798544.Spec : Prop :=
  ∀ n, P15104075777359798544.a n = A280059 n

end A280059

/-! ## A280059.P13169009144345594308

`A014634(n)*A022998(2*n+1)`
-/

namespace A280059.P13169009144345594308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n * A022998 (2 * n + 1)

end

end A280059.P13169009144345594308

namespace A280059

/-- `A014634(n)*A022998(2*n+1)` -/
def P13169009144345594308.Spec : Prop :=
  ∀ n, P13169009144345594308.a n = A280059 n

end A280059

/-! ## A280059.P8947998358815673834

`A014634(n)*A026741(2*n+1)`
-/

namespace A280059.P8947998358815673834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n * A026741 (2 * n + 1)

end

end A280059.P8947998358815673834

namespace A280059

/-- `A014634(n)*A026741(2*n+1)` -/
def P8947998358815673834.Spec : Prop :=
  ∀ n, P8947998358815673834.a n = A280059 n

end A280059

/-!
# A280060: Numbers k such that (2*10^k + 49)/3 is prime.

The programs for A280060, there is no canonical definition to state claims against.
-/

/-! ## A280060.P3689372163462101125

`lt[A003963(2*n+5), A088684(A088684(3*n+2))]`
-/

namespace A280060.P3689372163462101125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088684 (A088684 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280060.P3689372163462101125

/-!
# A280062: a(n) = A049502(A000142(n)).

The programs for A280062, there is no canonical definition to state claims against.
-/

/-! ## A280062.P7221944236959290771

`A007953(A002385(2*n+1))*A337634(n)`
-/

namespace A280062.P7221944236959290771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002385 (2 * n + 1)).toNat * A337634 n

end

end A280062.P7221944236959290771

/-!
# A280063: Number of n X n 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280063, there is no canonical definition to state claims against.
-/

/-! ## A280063.P8707541460675282390

`A280069(∑[4*n]+1)`
-/

namespace A280063.P8707541460675282390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280063.P8707541460675282390

/-! ## A280063.P2702569848744072299

`A280069(A001844(n))+char[12]`
-/

namespace A280063.P2702569848744072299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280063.P2702569848744072299

/-! ## A280063.P155409866572602861

`A007318(C(n, 2))*A280069((n+1)²+n²)`
-/

namespace A280063.P155409866572602861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A280069 ((n + 1) ^ 2 + n ^ 2)

end

end A280063.P155409866572602861

/-! ## A280063.P8188426959293773549

`A280069(A001844(n))*A303694(n)`
-/

namespace A280063.P8188426959293773549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A001844 n).toNat * A303694 n

end

end A280063.P8188426959293773549

/-! ## A280063.P11016466719368082160

`A280069(A001844(n))^A178334(n)`
-/

namespace A280063.P11016466719368082160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280069 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A280063.P11016466719368082160

/-!
# A280064: Number of n X 3 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280064, there is no canonical definition to state claims against.
-/

/-! ## A280064.P15021668080792103121

`A280069(∑[n+2]+4)`
-/

namespace A280064.P15021668080792103121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280064.P15021668080792103121

/-! ## A280064.P14550404458685172597

`A280069(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A280064.P14550404458685172597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280069 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A280064.P14550404458685172597

/-! ## A280064.P1756057670850773123

`A280069(A167614(n+1))%A007689(n)`
-/

namespace A280064.P1756057670850773123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280069 (A167614 (n + 1)).toNat) (A007689 n)

end

end A280064.P1756057670850773123

/-! ## A280064.P16814618699122988035

`lcm(A033999(n), A280069(A167614(n+1)))`
-/

namespace A280064.P16814618699122988035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A280069 (A167614 (n + 1)).toNat)

end

end A280064.P16814618699122988035

/-! ## A280064.P7136964358225325113

`or(A000007(n), A280069(A167614(n+1)))`
-/

namespace A280064.P7136964358225325113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A280069 (A167614 (n + 1)).toNat)

end

end A280064.P7136964358225325113

/-!
# A280065: Number of nX4 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280065, there is no canonical definition to state claims against.
-/

/-! ## A280065.P245102597717153728

`A280069(A374004(n+1))`
-/

namespace A280065.P245102597717153728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A374004 (n + 1)).toNat

end

end A280065.P245102597717153728

/-! ## A280065.P3984864955433702486

`A280069(A141214(n)+7)`
-/

namespace A280065.P3984864955433702486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A141214 n + 7).toNat

end

end A280065.P3984864955433702486

/-! ## A280065.P15624064850737177410

`A280069(A052905(n)+9)`
-/

namespace A280065.P15624064850737177410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A052905 n + 9).toNat

end

end A280065.P15624064850737177410

/-! ## A280065.P2898777205508331426

`A280069(A055999(n)+10)`
-/

namespace A280065.P2898777205508331426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A055999 n + 10).toNat

end

end A280065.P2898777205508331426

/-! ## A280065.P12199452432613475202

`A280069(A167614(n+2)+1)`
-/

namespace A280065.P12199452432613475202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A167614 (n + 2) + 1).toNat

end

end A280065.P12199452432613475202

/-!
# A280066: Number of nX5 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280066, there is no canonical definition to state claims against.
-/

/-! ## A280066.P4600765330666026085

`A280069(A374005(n+1))`
-/

namespace A280066.P4600765330666026085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A374005 (n + 1)).toNat

end

end A280066.P4600765330666026085

/-! ## A280066.P15072806693696137344

`A280069(A167499(n+3))`
-/

namespace A280066.P15072806693696137344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A167499 (n + 3)).toNat

end

end A280066.P15072806693696137344

/-! ## A280066.P12159524750878946936

`A280069(A155212(n)+13)`
-/

namespace A280066.P12159524750878946936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A155212 n + 13).toNat

end

end A280066.P12159524750878946936

/-! ## A280066.P9945128619812926534

`A280069(A000096(n+3)+6)`
-/

namespace A280066.P9945128619812926534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A000096 (n + 3) + 6).toNat

end

end A280066.P9945128619812926534

/-! ## A280066.P12677443169499395964

`A280069(A000217(n+4)+5)`
-/

namespace A280066.P12677443169499395964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A000217 (n + 4) + 5).toNat

end

end A280066.P12677443169499395964

/-!
# A280067: Number of nX6 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280067, there is no canonical definition to state claims against.
-/

/-! ## A280067.P8359624220968138202

`A280069(A374007(n+1))`
-/

namespace A280067.P8359624220968138202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A374007 (n + 1)).toNat

end

end A280067.P8359624220968138202

/-! ## A280067.P17573423847999943889

`A280069(A167499(n+4)+1)`
-/

namespace A280067.P17573423847999943889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A167499 (n + 4) + 1).toNat

end

end A280067.P17573423847999943889

/-! ## A280067.P18258808159647231538

`A280069(A000124(n+5)+5)`
-/

namespace A280067.P18258808159647231538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A000124 (n + 5) + 5).toNat

end

end A280067.P18258808159647231538

/-! ## A280067.P9394102585708795652

`A280069(A000096(n+4)+7)`
-/

namespace A280067.P9394102585708795652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A000096 (n + 4) + 7).toNat

end

end A280067.P9394102585708795652

/-! ## A280067.P5612247268671648508

`A280069(A000217(n+5)+6)`
-/

namespace A280067.P5612247268671648508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A000217 (n + 5) + 6).toNat

end

end A280067.P5612247268671648508

/-!
# A280068: Number of nX7 0..1 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280068, there is no canonical definition to state claims against.
-/

/-! ## A280068.P16737718316120460769

`A280069(A374008(n+1))`
-/

namespace A280068.P16737718316120460769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A374008 (n + 1)).toNat

end

end A280068.P16737718316120460769

/-! ## A280068.P10470863395195172759

`A280069(A056119(n)+28)`
-/

namespace A280068.P10470863395195172759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A056119 n + 28).toNat

end

end A280068.P10470863395195172759

/-! ## A280068.P11469788978887574580

`A280069(A167499(n+5)+2)`
-/

namespace A280068.P11469788978887574580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A167499 (n + 5) + 2).toNat

end

end A280068.P11469788978887574580

/-! ## A280068.P5706021625257421882

`A280069(A167614(n+5)+4)`
-/

namespace A280068.P5706021625257421882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A167614 (n + 5) + 4).toNat

end

end A280068.P5706021625257421882

/-! ## A280068.P10115097785620029730

`A280069(A000217(n+6)+7)`
-/

namespace A280068.P10115097785620029730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280069 (A000217 (n + 6) + 7).toNat

end

end A280068.P10115097785620029730

/-!
# A280070: Indices of 10-gonal numbers (A001107) that are also centered 10-gonal numbers (A062786).

The programs for A280070, the canonical program `A280070.P9864589724084629693` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280070 has offset 1).

The definition of A280070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280070.P9864589724084629693

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=1, a(1)=11, a(2)=191`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280070

/-- `19*a(n-1)-19*a(n-2)+a(n-3)` -/
def P9864589724084629693.Spec : Prop :=
  ∀ n, P9864589724084629693.a n = A280070 (n + 1)

theorem P9864589724084629693.correct : P9864589724084629693.Spec := by
  intro n
  simp only [A280070, Nat.add_sub_cancel]

end A280070

/-! ## A280070.P3602948693926140783

`A157093(n)/4`
-/

namespace A280070.P3602948693926140783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157093 n : ℚ) / 4

end

end A280070.P3602948693926140783

namespace A280070

/-- `A157093(n)/4` -/
def P3602948693926140783.Spec : Prop :=
  ∀ n, P3602948693926140783.a n = (A280070 (n + 1) : ℚ)

end A280070

/-! ## A280070.P16577193826365137495

`ceil(A246642(n)/4)`
-/

namespace A280070.P16577193826365137495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A246642 n : ℚ) / 4⌉

end

end A280070.P16577193826365137495

namespace A280070

/-- `ceil(A246642(n)/4)` -/
def P16577193826365137495.Spec : Prop :=
  ∀ n, P16577193826365137495.a n = A280070 (n + 1)

end A280070

/-! ## A280070.P443004466916662721

`10*A049664(n)+1`
-/

namespace A280070.P443004466916662721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A049664 n + 1

end

end A280070.P443004466916662721

namespace A280070

/-- `10*A049664(n)+1` -/
def P443004466916662721.Spec : Prop :=
  ∀ n, P443004466916662721.a n = A280070 (n + 1)

end A280070

/-! ## A280070.P14479087994210766350

`(∑[A004292(n)]+1)/2`
-/

namespace A280070.P14479087994210766350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004292 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A280070.P14479087994210766350

namespace A280070

/-- `(∑[A004292(n)]+1)/2` -/
def P14479087994210766350.Spec : Prop :=
  ∀ n, P14479087994210766350.a n = (A280070 (n + 1) : ℚ)

end A280070

/-! ## A280070.P10429674820984198368

`∑[10*A049660(n)]+1`
-/

namespace A280070.P10429674820984198368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A049660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A280070.P10429674820984198368

namespace A280070

/-- `∑[10*A049660(n)]+1` -/
def P10429674820984198368.Spec : Prop :=
  ∀ n, P10429674820984198368.a n = A280070 (n + 1)

end A280070

/-! ## A280070.P6460221101373502609

`(5*∑[A000045(6*n)]+4)/4`
-/

namespace A280070.P6460221101373502609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (6 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 4 : ℤ) : ℚ) / 4

end

end A280070.P6460221101373502609

namespace A280070

/-- `(5*∑[A000045(6*n)]+4)/4` -/
def P6460221101373502609.Spec : Prop :=
  ∀ n, P6460221101373502609.a n = (A280070 (n + 1) : ℚ)

end A280070

/-! ## A280070.P5470883217016358933

`A246641(n)+∑[A207832(n)]`
-/

namespace A280070.P5470883217016358933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246641 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280070.P5470883217016358933

namespace A280070

/-- `A246641(n)+∑[A207832(n)]` -/
def P5470883217016358933.Spec : Prop :=
  ∀ n, P5470883217016358933.a n = A280070 (n + 1)

end A280070

/-! ## A280070.P2976870580153296462

`A007805(n)-6*A049664(n)`
-/

namespace A280070.P2976870580153296462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007805 n - 6 * A049664 n

end

end A280070.P2976870580153296462

namespace A280070

/-- `A007805(n)-6*A049664(n)` -/
def P2976870580153296462.Spec : Prop :=
  ∀ n, P2976870580153296462.a n = A280070 (n + 1)

end A280070

/-! ## A280070.P12809985869949039826

`∑[A049629(n)]-A119032(n+1)`
-/

namespace A280070.P12809985869949039826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119032 (n + 1)

end

end A280070.P12809985869949039826

namespace A280070

/-- `∑[A049629(n)]-A119032(n+1)` -/
def P12809985869949039826.Spec : Prop :=
  ∀ n, P12809985869949039826.a n = A280070 (n + 1)

end A280070

/-!
# A280071: Indices of 11-gonal numbers (A051682) that are also centered 11-gonal numbers (A060544).

The programs for A280071, the canonical program `A280071.P11206667239535620169` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280071 has offset 1).

The definition of A280071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280071.P11206667239535620169

`21*a(n-1)-21*a(n-2)+a(n-3)` with `a(0)=1, a(1)=12, a(2)=232`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280071

/-- `21*a(n-1)-21*a(n-2)+a(n-3)` -/
def P11206667239535620169.Spec : Prop :=
  ∀ n, P11206667239535620169.a n = A280071 (n + 1)

theorem P11206667239535620169.correct : P11206667239535620169.Spec := by
  intro n
  simp only [A280071, Nat.add_sub_cancel]

end A280071

/-! ## A280071.P3516557045897107608

`∑[11*A075843(n)]+1`
-/

namespace A280071.P3516557045897107608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A075843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A280071.P3516557045897107608

namespace A280071

/-- `∑[11*A075843(n)]+1` -/
def P3516557045897107608.Spec : Prop :=
  ∀ n, P3516557045897107608.a n = A280071 (n + 1)

end A280071

/-! ## A280071.P7453036224157788303

`∑[(11*A075843(n))^A178334(n)]`
-/

namespace A280071.P7453036224157788303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * A075843 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280071.P7453036224157788303

namespace A280071

/-- `∑[(11*A075843(n))^A178334(n)]` -/
def P7453036224157788303.Spec : Prop :=
  ∀ n, P7453036224157788303.a n = (A280071 (n + 1) : ℚ)

end A280071

/-! ## A280071.P522342232862116876

`∑[or(11*A075843(n), A151933(n))]`
-/

namespace A280071.P522342232862116876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (11 * A075843 n) (A151933 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280071.P522342232862116876

namespace A280071

/-- `∑[or(11*A075843(n), A151933(n))]` -/
def P522342232862116876.Spec : Prop :=
  ∀ n, P522342232862116876.a n = A280071 (n + 1)

end A280071

/-! ## A280071.P16493891294218512826

`A016777(n)-(3*n-∑[11*A075843(n)])`
-/

namespace A280071.P16493891294218512826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A075843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - ((3 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280071.P16493891294218512826

namespace A280071

/-- `A016777(n)-(3*n-∑[11*A075843(n)])` -/
def P16493891294218512826.Spec : Prop :=
  ∀ n, P16493891294218512826.a n = A280071 (n + 1)

end A280071

/-! ## A280071.P466256752304000987

`ceil(A131216(n+1)/18)`
-/

namespace A280071.P466256752304000987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131216 (n + 1) : ℚ) / 18⌉

end

end A280071.P466256752304000987

namespace A280071

/-- `ceil(A131216(n+1)/18)` -/
def P466256752304000987.Spec : Prop :=
  ∀ n, P466256752304000987.a n = A280071 (n + 1)

end A280071

/-! ## A280071.P14029228096601752722

`∑[(11*A075843(n))^A178489(n)]`
-/

namespace A280071.P14029228096601752722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * A075843 n : ℚ) ^ (A178489 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280071.P14029228096601752722

namespace A280071

/-- `∑[(11*A075843(n))^A178489(n)]` -/
def P14029228096601752722.Spec : Prop :=
  ∀ n, P14029228096601752722.a n = (A280071 (n + 1) : ℚ)

end A280071

/-!
# A280072: Indices of centered 11-gonal numbers (A060544) that are also 11-gonal numbers (A051682).

The programs for A280072, the canonical program `A280072.P4464898860996871283` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280072 has offset 1).

The definition of A280072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280072.P4464898860996871283

`21*a(n-1)-21*a(n-2)+a(n-3)` with `a(0)=1, a(1)=11, a(2)=210`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280072

/-- `21*a(n-1)-21*a(n-2)+a(n-3)` -/
def P4464898860996871283.Spec : Prop :=
  ∀ n, P4464898860996871283.a n = A280072 (n + 1)

theorem P4464898860996871283.correct : P4464898860996871283.Spec := by
  intro n
  simp only [A280072, Nat.add_sub_cancel]

end A280072

/-! ## A280072.P8969553960057819505

`∑[20*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=10`
-/

namespace A280072.P8969553960057819505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  20 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280072.P8969553960057819505

namespace A280072

/-- `∑[20*a(n-1)-a(n-2)]` -/
def P8969553960057819505.Spec : Prop :=
  ∀ n, P8969553960057819505.a n = A280072 (n + 1)

end A280072

/-! ## A280072.P13250747623018746842

`∑[A001085(n)]`
-/

namespace A280072.P13250747623018746842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280072.P13250747623018746842

namespace A280072

/-- `∑[A001085(n)]` -/
def P13250747623018746842.Spec : Prop :=
  ∀ n, P13250747623018746842.a n = A280072 (n + 1)

end A280072

/-! ## A280072.P15831263109406638856

`∑[A131216(n)-a(n-1)]` with `a(0)=1`
-/

namespace A280072.P15831263109406638856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A131216 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280072.P15831263109406638856

namespace A280072

/-- `∑[A131216(n)-a(n-1)]` -/
def P15831263109406638856.Spec : Prop :=
  ∀ n, P15831263109406638856.a n = A280072 (n + 1)

end A280072

/-! ## A280072.P3555156654549587992

`∑[A090728(n)/2]`
-/

namespace A280072.P3555156654549587992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090728 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280072.P3555156654549587992

namespace A280072

/-- `∑[A090728(n)/2]` -/
def P3555156654549587992.Spec : Prop :=
  ∀ n, P3555156654549587992.a n = (A280072 (n + 1) : ℚ)

end A280072

/-! ## A280072.P14210942526722688592

`ceil(A083043(n+1)/2)`
-/

namespace A280072.P14210942526722688592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083043 (n + 1) : ℚ) / 2⌉

end

end A280072.P14210942526722688592

namespace A280072

/-- `ceil(A083043(n+1)/2)` -/
def P14210942526722688592.Spec : Prop :=
  ∀ n, P14210942526722688592.a n = A280072 (n + 1)

end A280072

/-! ## A280072.P16066387924093310382

`(A041014(2*n)/3+1)/2`
-/

namespace A280072.P16066387924093310382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A041014 (2 * n) : ℚ) / 3 + 1) / 2

end

end A280072.P16066387924093310382

namespace A280072

/-- `(A041014(2*n)/3+1)/2` -/
def P16066387924093310382.Spec : Prop :=
  ∀ n, P16066387924093310382.a n = (A280072 (n + 1) : ℚ)

end A280072

/-! ## A280072.P9204702855818998868

`∑[A041178(2*n+1)-A041178(2*n)]`
-/

namespace A280072.P9204702855818998868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041178 (2 * n + 1) - A041178 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280072.P9204702855818998868

namespace A280072

/-- `∑[A041178(2*n+1)-A041178(2*n)]` -/
def P9204702855818998868.Spec : Prop :=
  ∀ n, P9204702855818998868.a n = A280072 (n + 1)

end A280072

/-!
# A280073: Numerator of Farey fractions sorted according to increasing k, with k = numerator + denominator. Fractions with same k are sorted in order of increasing denominator.

The programs for A280073, the canonical program `A280073.P7299106028929026118` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280073 has offset 1).

The definition of A280073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280073.P7299106028929026118

`A025581(lt[n, A051173(n+1)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A280073

/-- `A025581(lt[n, A051173(n+1)])` -/
def P7299106028929026118.Spec : Prop :=
  ∀ n, P7299106028929026118.a n = A280073 (n + 1)

theorem P7299106028929026118.correct : P7299106028929026118.Spec := by
  intro n
  simp only [A280073, Nat.add_sub_cancel]

end A280073

/-! ## A280073.P1299551420938517472

`A025581(lt[n, A051537(n+1)])`
-/

namespace A280073.P1299551420938517472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280073.P1299551420938517472

namespace A280073

/-- `A025581(lt[n, A051537(n+1)])` -/
def P1299551420938517472.Spec : Prop :=
  ∀ n, P1299551420938517472.a n = A280073 (n + 1)

end A280073

/-! ## A280073.P15301833671331384743

`A025581(lt[n, A338797(n+1)])`
-/

namespace A280073.P15301833671331384743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A280073.P15301833671331384743

namespace A280073

/-- `A025581(lt[n, A338797(n+1)])` -/
def P15301833671331384743.Spec : Prop :=
  ∀ n, P15301833671331384743.a n = A280073 (n + 1)

end A280073

/-! ## A280073.P6563977258996634169

`A025581(record[n%A051173(n+1)])`
-/

namespace A280073.P6563977258996634169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A051173 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280073.P6563977258996634169

namespace A280073

/-- `A025581(record[n%A051173(n+1)])` -/
def P6563977258996634169.Spec : Prop :=
  ∀ n, P6563977258996634169.a n = A280073 (n + 1)

end A280073

/-! ## A280073.P10778769861553272968

`A004736(lt[n, A051173(n+1)]+1)-1`
-/

namespace A280073.P10778769861553272968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A280073.P10778769861553272968

namespace A280073

/-- `A004736(lt[n, A051173(n+1)]+1)-1` -/
def P10778769861553272968.Spec : Prop :=
  ∀ n, P10778769861553272968.a n = A280073 (n + 1)

end A280073

/-! ## A280073.P5231314511096499506

`A004197(eq[A101688(n), A109004(n)])`
-/

namespace A280073.P5231314511096499506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280073.P5231314511096499506

namespace A280073

/-- `A004197(eq[A101688(n), A109004(n)])` -/
def P5231314511096499506.Spec : Prop :=
  ∀ n, P5231314511096499506.a n = A280073 (n + 1)

end A280073

/-! ## A280073.P9361930963425056181

`A025581(eq[A101688(n), A109004(n)])`
-/

namespace A280073.P9361930963425056181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280073.P9361930963425056181

namespace A280073

/-- `A025581(eq[A101688(n), A109004(n)])` -/
def P9361930963425056181.Spec : Prop :=
  ∀ n, P9361930963425056181.a n = A280073 (n + 1)

end A280073

/-! ## A280073.P7147911106055347790

`A025581(eq[A050873(n+1), A288386(n)])`
-/

namespace A280073.P7147911106055347790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280073.P7147911106055347790

namespace A280073

/-- `A025581(eq[A050873(n+1), A288386(n)])` -/
def P7147911106055347790.Spec : Prop :=
  ∀ n, P7147911106055347790.a n = A280073 (n + 1)

end A280073

/-! ## A280073.P9938670525269467093

`A038567(A004273(n))-A280315(n+1)`
-/

namespace A280073.P9938670525269467093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A004273 n).toNat - A280315 (n + 1)

end

end A280073.P9938670525269467093

namespace A280073

/-- `A038567(A004273(n))-A280315(n+1)` -/
def P9938670525269467093.Spec : Prop :=
  ∀ n, P9938670525269467093.a n = A280073 (n + 1)

end A280073

/-!
# A280074: 

The programs for A280074, there is no canonical definition to state claims against.
-/

/-! ## A280074.P2312889547612094943

`∪[A052213(n+1), A333057(n+1)]`
-/

namespace A280074.P2312889547612094943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280074.P2312889547612094943

/-! ## A280074.P15915707506164338063

`eq[A007425(n+2), A007425(n+1)]+1`
-/

namespace A280074.P15915707506164338063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A280074.P15915707506164338063

/-!
# A280075: Partial products of A211776 (Product_{d|n} tau(d)).

The programs for A280075, there is no canonical definition to state claims against.
-/

/-! ## A280075.P7342818916180878780

`∏[A211776(n+1)]`
-/

namespace A280075.P7342818916180878780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280075.P7342818916180878780

/-! ## A280075.P6004486619373476751

`∏[∏{d}[n+1, A000005(#)]]`
-/

namespace A280075.P6004486619373476751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280075.P6004486619373476751

/-! ## A280075.P6620468178757324281

`∏[∏{d}[n+1, A322483(#²)]]`
-/

namespace A280075.P6620468178757324281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A322483 (d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280075.P6620468178757324281

/-! ## A280075.P4871066394392073639

`∏[∏{d}[n+1, A332712(#²)]]`
-/

namespace A280075.P4871066394392073639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A332712 (d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280075.P4871066394392073639

/-! ## A280075.P8229468477984455791

`a(A023443(n))*∏{d}[n+1, A000005(#)]` with `a(0)=1`
-/

namespace A280075.P8229468477984455791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat * (∏ d ∈ Nat.divisors (f1 n), A000005 d)

end

end A280075.P8229468477984455791

/-!
# A280076: Numbers n such that Sum_{d|n} tau(d) = Product_{d|n} tau(d).

The programs for A280076, the canonical program `A280076.P4901522912243900716` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280076 has offset 1).

The definition of A280076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280076.P15313090846106556506

`A008578(n+1)²`
-/

namespace A280076.P15313090846106556506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2

end

end A280076.P15313090846106556506

namespace A280076

/-- `A008578(n+1)²` -/
def P15313090846106556506.Spec : Prop :=
  ∀ n, P15313090846106556506.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P14434106703276778273

`(1-A028815(n))²`
-/

namespace A280076.P14434106703276778273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A028815 n) ^ 2

end

end A280076.P14434106703276778273

namespace A280076

/-- `(1-A028815(n))²` -/
def P14434106703276778273.Spec : Prop :=
  ∀ n, P14434106703276778273.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P8299579277143321349

`record[A259153(n+1)²]`
-/

namespace A280076.P8299579277143321349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280076.P8299579277143321349

namespace A280076

/-- `record[A259153(n+1)²]` -/
def P8299579277143321349.Spec : Prop :=
  ∀ n, P8299579277143321349.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P11399874182313997839

`(A001747(n+1)/2)²`
-/

namespace A280076.P11399874182313997839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001747 (n + 1) : ℚ) / 2) ^ 2

end

end A280076.P11399874182313997839

namespace A280076

/-- `(A001747(n+1)/2)²` -/
def P11399874182313997839.Spec : Prop :=
  ∀ n, P11399874182313997839.a n = (A280076 (n + 1) : ℚ)

end A280076

/-! ## A280076.P4901522912243900716

`(A162177(n+1)+1+n)²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280076

/-- `(A162177(n+1)+1+n)²` -/
def P4901522912243900716.Spec : Prop :=
  ∀ n, P4901522912243900716.a n = A280076 (n + 1)

theorem P4901522912243900716.correct : P4901522912243900716.Spec := by
  intro n
  simp only [A280076, Nat.add_sub_cancel]

end A280076

/-! ## A280076.P1943986573448452173

`(A164931(n+1)/(n+1))²`
-/

namespace A280076.P1943986573448452173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A164931 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A280076.P1943986573448452173

namespace A280076

/-- `(A164931(n+1)/(n+1))²` -/
def P1943986573448452173.Spec : Prop :=
  ∀ n, P1943986573448452173.a n = (A280076 (n + 1) : ℚ)

end A280076

/-! ## A280076.P495687688821375575

`(A090178(n+1)-(n+1))^2`
-/

namespace A280076.P495687688821375575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090178 (n + 1) - (n + 1 : ℤ)) ^ 2

end

end A280076.P495687688821375575

namespace A280076

/-- `(A090178(n+1)-(n+1))^2` -/
def P495687688821375575.Spec : Prop :=
  ∀ n, P495687688821375575.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P14391006987520011803

`A000040(n%a(n-1))²` with `a(0)=1, a(1)=4`
-/

namespace A280076.P14391006987520011803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat ^ 2

end

end A280076.P14391006987520011803

namespace A280076

/-- `A000040(n%a(n-1))²` -/
def P14391006987520011803.Spec : Prop :=
  ∀ n, P14391006987520011803.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P14219381351902204574

`A000040(and(2, a(n-1))+n)²` with `a(0)=1`
-/

namespace A280076.P14219381351902204574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Int.land 2 (a (n - 1)) + (n : ℤ)).toNat ^ 2

end

end A280076.P14219381351902204574

namespace A280076

/-- `A000040(and(2, a(n-1))+n)²` -/
def P14219381351902204574.Spec : Prop :=
  ∀ n, P14219381351902204574.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P566833150275878499

`(and(2, a(n-1))-A000040(n))²` with `a(0)=1`
-/

namespace A280076.P566833150275878499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.land 2 (a (n - 1)) - A000040 n) ^ 2

end

end A280076.P566833150275878499

namespace A280076

/-- `(and(2, a(n-1))-A000040(n))²` -/
def P566833150275878499.Spec : Prop :=
  ∀ n, P566833150275878499.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P16326118031434453364

`A000040(n*a(C(2, n+2)))²` with `a(0)=1`
-/

namespace A280076.P16326118031434453364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 ((n : ℤ) * a (Nat.choose 2 (n + 2))).toNat ^ 2

end

end A280076.P16326118031434453364

namespace A280076

/-- `A000040(n*a(C(2, n+2)))²` -/
def P16326118031434453364.Spec : Prop :=
  ∀ n, P16326118031434453364.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P7144989030738217160

`A000040(n/a(C(2, n+2)))²` with `a(0)=1`
-/

namespace A280076.P7144989030738217160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (SequenceMachineLib.roundAway ((n : ℚ) / (a (Nat.choose 2 (n + 2)) : ℚ))).toNat ^ 2

end

end A280076.P7144989030738217160

namespace A280076

/-- `A000040(n/a(C(2, n+2)))²` -/
def P7144989030738217160.Spec : Prop :=
  ∀ n, P7144989030738217160.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P2711267851915286430

`A000040(n*a(and(1, 2*n)))²` with `a(0)=1`
-/

namespace A280076.P2711267851915286430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 ((n : ℤ) * a (Nat.land 1 (2 * n))).toNat ^ 2

end

end A280076.P2711267851915286430

namespace A280076

/-- `A000040(n*a(and(1, 2*n)))²` -/
def P2711267851915286430.Spec : Prop :=
  ∀ n, P2711267851915286430.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P8592360988319898359

`A000040(lcm(n, gcd(2, a(n-1))))²` with `a(0)=1`
-/

namespace A280076.P8592360988319898359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Nat.lcm n (Int.gcd 2 (a (n - 1)))) ^ 2

end

end A280076.P8592360988319898359

namespace A280076

/-- `A000040(lcm(n, gcd(2, a(n-1))))²` -/
def P8592360988319898359.Spec : Prop :=
  ∀ n, P8592360988319898359.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P14221911037904487829

`A000040(gcd(n, C(2, a(n-1))))²` with `a(0)=1`
-/

namespace A280076.P14221911037904487829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Nat.gcd n (Nat.choose 2 (a (n - 1)).toNat)) ^ 2

end

end A280076.P14221911037904487829

namespace A280076

/-- `A000040(gcd(n, C(2, a(n-1))))²` -/
def P14221911037904487829.Spec : Prop :=
  ∀ n, P14221911037904487829.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P18184950124432183581

`Δ[A000040(n-1)+a(n-1)]²` with `a(0)=1, a(1)=2`
-/

namespace A280076.P18184950124432183581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000040 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A280076.P18184950124432183581

namespace A280076

/-- `Δ[A000040(n-1)+a(n-1)]²` -/
def P18184950124432183581.Spec : Prop :=
  ∀ n, P18184950124432183581.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P17139225333565617823

`∪[A000040(n+1), A206288(n+1)²²]²`
-/

namespace A280076.P17139225333565617823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A206288 (n + 1) ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A280076.P17139225333565617823

namespace A280076

/-- `∪[A000040(n+1), A206288(n+1)²²]²` -/
def P17139225333565617823.Spec : Prop :=
  ∀ n, (P17139225333565617823.a n : ℤ) = A280076 (n + 1)

end A280076

/-! ## A280076.P9494171781428475050

`A158611(n+2)²`
-/

namespace A280076.P9494171781428475050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) ^ 2

end

end A280076.P9494171781428475050

namespace A280076

/-- `A158611(n+2)²` -/
def P9494171781428475050.Spec : Prop :=
  ∀ n, P9494171781428475050.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P8857251041921567573

`A008578(n+1)*A158611(n+2)`
-/

namespace A280076.P8857251041921567573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A158611 (n + 2)

end

end A280076.P8857251041921567573

namespace A280076

/-- `A008578(n+1)*A158611(n+2)` -/
def P8857251041921567573.Spec : Prop :=
  ∀ n, P8857251041921567573.a n = A280076 (n + 1)

end A280076

/-! ## A280076.P11450125462705717392

`record[A028691(n+1)²]`
-/

namespace A280076.P11450125462705717392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028691 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280076.P11450125462705717392

namespace A280076

/-- `record[A028691(n+1)²]` -/
def P11450125462705717392.Spec : Prop :=
  ∀ n, P11450125462705717392.a n = A280076 (n + 1)

end A280076

/-!
# A280077: Partial sums of A007429 (Sum_{d|n} sigma(d)).

The programs for A280077, the canonical program `A280077.P17597455334426451579` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280077 has offset 1).

The definition of A280077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280077.P17597455334426451579

`∑[A007429(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280077

/-- `∑[A007429(n+1)]` -/
def P17597455334426451579.Spec : Prop :=
  ∀ n, P17597455334426451579.a n = A280077 (n + 1)

theorem P17597455334426451579.correct : P17597455334426451579.Spec := by
  intro n
  simp only [A280077, Nat.add_sub_cancel]

end A280077

/-! ## A280077.P1463407564917304687

`∑[∑{d}[n+1, A000203(#)]]`
-/

namespace A280077.P1463407564917304687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000203 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P1463407564917304687

namespace A280077

/-- `∑[∑{d}[n+1, A000203(#)]]` -/
def P1463407564917304687.Spec : Prop :=
  ∀ n, P1463407564917304687.a n = A280077 (n + 1)

end A280077

/-! ## A280077.P15397496703783508588

`∑[∑{d}[n+1, sqrt(A072861(#))]]`
-/

namespace A280077.P15397496703783508588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Real.sqrt (A072861 d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P15397496703783508588

namespace A280077

/-- `∑[∑{d}[n+1, sqrt(A072861(#))]]` -/
def P15397496703783508588.Spec : Prop :=
  ∀ n, P15397496703783508588.a n = (A280077 (n + 1) : ℝ)

end A280077

/-! ## A280077.P9461073344967689175

`∑[A211780(n+1)+1+n]`
-/

namespace A280077.P9461073344967689175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211780 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P9461073344967689175

namespace A280077

/-- `∑[A211780(n+1)+1+n]` -/
def P9461073344967689175.Spec : Prop :=
  ∀ n, P9461073344967689175.a n = A280077 (n + 1)

end A280077

/-! ## A280077.P13815737298705663957

`∑[∑{d}[n+1, A001065(#)+#]]`
-/

namespace A280077.P13815737298705663957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A001065 d + (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P13815737298705663957

namespace A280077

/-- `∑[∑{d}[n+1, A001065(#)+#]]` -/
def P13815737298705663957.Spec : Prop :=
  ∀ n, P13815737298705663957.a n = A280077 (n + 1)

end A280077

/-! ## A280077.P4765769252083901686

`∑[A211779(n+1)+∑{d}[n+1, #]]`
-/

namespace A280077.P4765769252083901686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P4765769252083901686

namespace A280077

/-- `∑[A211779(n+1)+∑{d}[n+1, #]]` -/
def P4765769252083901686.Spec : Prop :=
  ∀ n, P4765769252083901686.a n = A280077 (n + 1)

end A280077

/-! ## A280077.P6514145028645900584

`∑[A318446(n+1)-A318448(n+1)]`
-/

namespace A280077.P6514145028645900584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318446 (n + 1) - A318448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P6514145028645900584

namespace A280077

/-- `∑[A318446(n+1)-A318448(n+1)]` -/
def P6514145028645900584.Spec : Prop :=
  ∀ n, P6514145028645900584.a n = A280077 (n + 1)

end A280077

/-! ## A280077.P2871613096095531871

`A356045(∑[n+2])`
-/

namespace A280077.P2871613096095531871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280077.P2871613096095531871

namespace A280077

/-- `A356045(∑[n+2])` -/
def P2871613096095531871.Spec : Prop :=
  ∀ n, P2871613096095531871.a n = A280077 (n + 1)

end A280077

/-! ## A280077.P15197549533934900267

`∑[A322103(∑[n+2])]`
-/

namespace A280077.P15197549533934900267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322103 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280077.P15197549533934900267

namespace A280077

/-- `∑[A322103(∑[n+2])]` -/
def P15197549533934900267.Spec : Prop :=
  ∀ n, P15197549533934900267.a n = A280077 (n + 1)

end A280077

/-!
# A280078: Partial products of A007429 (Sum_{d|n} sigma(d)).

The programs for A280078, there is no canonical definition to state claims against.
-/

/-! ## A280078.P13605038498592271728

`∏[A007429(n+1)]`
-/

namespace A280078.P13605038498592271728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280078.P13605038498592271728

/-! ## A280078.P9519361220019800602

`∏[A206028(n+1)]`
-/

namespace A280078.P9519361220019800602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280078.P9519361220019800602

/-! ## A280078.P9946072706057766743

`∏[A322103(∑[n+2])]`
-/

namespace A280078.P9946072706057766743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322103 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280078.P9946072706057766743

/-! ## A280078.P5014380871396520570

`∏[∑{d}[n+1, A000203(#)]]`
-/

namespace A280078.P5014380871396520570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000203 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280078.P5014380871396520570

/-! ## A280078.P178128829764303385

`∏[∑{d}[n+1, sqrt(A072861(#))]]`
-/

namespace A280078.P178128829764303385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Real.sqrt (A072861 d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280078.P178128829764303385

/-!
# A280079: Abscissa of points (x,y) of the square lattice such that x >= 0 and 0 <= y <= x, and ranked in order of increasing distance from the origin. Equidistant points are ranked in order of increasing ordinate.

The programs for A280079, there is no canonical definition to state claims against.
-/

/-! ## A280079.P18229623436968684402

`A059906(A283618(n+1))`
-/

namespace A280079.P18229623436968684402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A283618 (n + 1)).toNat

end

end A280079.P18229623436968684402

/-! ## A280079.P14022746883944209793

`xor(A025455(A036600(n)), A283303(n+1))`
-/

namespace A280079.P14022746883944209793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025455 (A036600 n).toNat) (A283303 (n + 1))

end

end A280079.P14022746883944209793

/-! ## A280079.P9560021083953063135

`floor(sqrt(2*n))-A353354(ceil(2^(n-1)))`
-/

namespace A280079.P9560021083953063135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * n) : ℤ) - A353354 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A280079.P9560021083953063135

/-! ## A280079.P15308531289172387235

`floor(sqrt(2*n))-A000035(A187892(n))`
-/

namespace A280079.P15308531289172387235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * n) : ℤ) - A000035 (A187892 n).toNat

end

end A280079.P15308531289172387235

/-! ## A280079.P11565302451544263321

`A172471(n)-A059841(A111314(n))`
-/

namespace A280079.P11565302451544263321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n - A059841 (A111314 n).toNat

end

end A280079.P11565302451544263321

/-!
# A280080: Lower ends of record gaps between prime-indexed primes.

The programs for A280080, there is no canonical definition to state claims against.
-/

/-! ## A280080.P3015477356354320138

`A280081(n+1)-A280082(n+1)`
-/

namespace A280080.P3015477356354320138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280081 (n + 1) - A280082 (n + 1)

end

end A280080.P3015477356354320138

/-! ## A280080.P23541493172010035

`A280081(n+1)-record[A006450(n+2)-A006450(n+1)]`
-/

namespace A280080.P23541493172010035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280081 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280080.P23541493172010035

/-! ## A280080.P2202349427976306871

`A280081(n+1)-record[A073131(n+1)]`
-/

namespace A280080.P2202349427976306871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280081 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280080.P2202349427976306871

/-! ## A280080.P11672413769941216072

`A280081(n+1)-record[Δ[A006450(n+1)]]`
-/

namespace A280080.P11672413769941216072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280081 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280080.P11672413769941216072

/-! ## A280080.P8052424488696025821

`A006450(A132090(A280081(n+1)-(n+1)))`
-/

namespace A280080.P8052424488696025821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A132090 (A280081 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A280080.P8052424488696025821

/-!
# A280081: Upper ends of record gaps between prime-indexed primes.

The programs for A280081, there is no canonical definition to state claims against.
-/

/-! ## A280081.P3511782579312723243

`A280082(n+1)+A280080(n+1)`
-/

namespace A280081.P3511782579312723243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280082 (n + 1) + A280080 (n + 1)

end

end A280081.P3511782579312723243

/-! ## A280081.P1504075595517763182

`A280080(n+1)+record[A006450(n+2)-A006450(n+1)]`
-/

namespace A280081.P1504075595517763182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280080 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280081.P1504075595517763182

/-! ## A280081.P11502408308630909129

`A280080(n+1)+record[A073131(n+1)]`
-/

namespace A280081.P11502408308630909129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280080 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280081.P11502408308630909129

/-! ## A280081.P15289549325659163614

`A280080(n+1)+record[Δ[A006450(n+1)]]`
-/

namespace A280081.P15289549325659163614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280080 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280081.P15289549325659163614

/-! ## A280081.P15051486058769201278

`A280080(n+1)+record[Δ[A262021(n+1)]+1]`
-/

namespace A280081.P15051486058769201278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280080 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280081.P15051486058769201278

/-!
# A280082: Record gaps between prime-indexed primes.

The programs for A280082, there is no canonical definition to state claims against.
-/

/-! ## A280082.P9765176932751346277

`A280081(n+1)-A280080(n+1)`
-/

namespace A280082.P9765176932751346277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280081 (n + 1) - A280080 (n + 1)

end

end A280082.P9765176932751346277

/-! ## A280082.P11679395162480151176

`record[A006450(n+2)-A006450(n+1)]`
-/

namespace A280082.P11679395162480151176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280082.P11679395162480151176

/-! ## A280082.P5961134176808147759

`record[A073131(n+1)]`
-/

namespace A280082.P5961134176808147759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280082.P5961134176808147759

/-! ## A280082.P12440873959874968742

`record[Δ[A006450(n+1)]]`
-/

namespace A280082.P12440873959874968742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280082.P12440873959874968742

/-! ## A280082.P15634948000647720392

`record[Δ[A141138(n+1)]]`
-/

namespace A280082.P15634948000647720392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280082.P15634948000647720392

/-!
# A280083: Numbers k such that (2^k + 1)/(2 - (-1)^k) is a prime.

The programs for A280083, there is no canonical definition to state claims against.
-/

/-! ## A280083.P9471943926668836370

`eq[A000034(n), A054992(A028310(n))]`
-/

namespace A280083.P9471943926668836370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280083.P9471943926668836370

/-! ## A280083.P3199813265183333063

`eq[A000034(n), A046799(A060000(n+1))]`
-/

namespace A280083.P3199813265183333063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280083.P3199813265183333063

/-! ## A280083.P10164689545060840186

`eq[A000034(n), A054992(A233583(n+1))]`
-/

namespace A280083.P10164689545060840186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280083.P10164689545060840186

/-! ## A280083.P5645257950656263284

`record[lcm(2, n)/A000010(A046798(n))]`
-/

namespace A280083.P5645257950656263284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / (A000010 (A046798 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280083.P5645257950656263284

/-! ## A280083.P3146930317147747905

`eq[A000010(A046798(n)), A000034(n)]`
-/

namespace A280083.P3146930317147747905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046798 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280083.P3146930317147747905

/-!
# A280084: 1 together with the Pythagorean primes.

The programs for A280084, the canonical program `A280084.P16125585662034977001` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280084 has offset 1).

The definition of A280084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280084.P3015195056962440038

`lcm(2, A002313(n+1))/2`
-/

namespace A280084.P3015195056962440038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A002313 (n + 1)) : ℚ) / 2

end

end A280084.P3015195056962440038

namespace A280084

/-- `lcm(2, A002313(n+1))/2` -/
def P3015195056962440038.Spec : Prop :=
  ∀ n, P3015195056962440038.a n = (A280084 (n + 1) : ℚ)

end A280084

/-! ## A280084.P16125585662034977001

`A002313(n+1)-A000007(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A280084

/-- `A002313(n+1)-A000007(n)` -/
def P16125585662034977001.Spec : Prop :=
  ∀ n, P16125585662034977001.a n = A280084 (n + 1)

theorem P16125585662034977001.correct : P16125585662034977001.Spec := by
  intro n
  simp only [A280084, Nat.add_sub_cancel]

end A280084

/-! ## A280084.P11071322788619053493

`A002313(n+1)/A054977(n)`
-/

namespace A280084.P11071322788619053493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002313 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A280084.P11071322788619053493

namespace A280084

/-- `A002313(n+1)/A054977(n)` -/
def P11071322788619053493.Spec : Prop :=
  ∀ n, P11071322788619053493.a n = (A280084 (n + 1) : ℚ)

end A280084

/-! ## A280084.P12768051402288609144

`A002144(n*a(A000038(n)))` with `a(0)=1`
-/

namespace A280084.P12768051402288609144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002144 ((n : ℤ) * a (A000038 n).toNat).toNat

end

end A280084.P12768051402288609144

namespace A280084

/-- `A002144(n*a(A000038(n)))` -/
def P12768051402288609144.Spec : Prop :=
  ∀ n, P12768051402288609144.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P14733309392545736223

`A002313(n+1)^abs(A062157(n))`
-/

namespace A280084.P14733309392545736223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002313 (n + 1) : ℚ) ^ (|A062157 n| : ℤ)

end

end A280084.P14733309392545736223

namespace A280084

/-- `A002313(n+1)^abs(A062157(n))` -/
def P14733309392545736223.Spec : Prop :=
  ∀ n, P14733309392545736223.a n = (A280084 (n + 1) : ℚ)

end A280084

/-! ## A280084.P12152834596170776409

`C(A002313(n+1), abs(A057428(n)))`
-/

namespace A280084.P12152834596170776409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002313 (n + 1)).toNat |A057428 n|.toNat

end

end A280084.P12152834596170776409

namespace A280084

/-- `C(A002313(n+1), abs(A057428(n)))` -/
def P12152834596170776409.Spec : Prop :=
  ∀ n, (P12152834596170776409.a n : ℤ) = A280084 (n + 1)

end A280084

/-! ## A280084.P12506810777600329787

`A002313(n+1)-A036987(2*n)`
-/

namespace A280084.P12506810777600329787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A036987 (2 * n)

end

end A280084.P12506810777600329787

namespace A280084

/-- `A002313(n+1)-A036987(2*n)` -/
def P12506810777600329787.Spec : Prop :=
  ∀ n, P12506810777600329787.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P14457664625551315426

`gcd(A002313(n+1), A034954(n+1))`
-/

namespace A280084.P14457664625551315426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002313 (n + 1)) (A034954 (n + 1))

end

end A280084.P14457664625551315426

namespace A280084

/-- `gcd(A002313(n+1), A034954(n+1))` -/
def P14457664625551315426.Spec : Prop :=
  ∀ n, (P14457664625551315426.a n : ℤ) = A280084 (n + 1)

end A280084

/-! ## A280084.P5941395653255802821

`A002313(n+1)-A295405(2*n+1)`
-/

namespace A280084.P5941395653255802821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A295405 (2 * n + 1)

end

end A280084.P5941395653255802821

namespace A280084

/-- `A002313(n+1)-A295405(2*n+1)` -/
def P5941395653255802821.Spec : Prop :=
  ∀ n, P5941395653255802821.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P9260942892848991928

`A002313(n+1)-A005153(n+1)%2`
-/

namespace A280084.P9260942892848991928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - Int.tmod (A005153 (n + 1)) 2

end

end A280084.P9260942892848991928

namespace A280084

/-- `A002313(n+1)-A005153(n+1)%2` -/
def P9260942892848991928.Spec : Prop :=
  ∀ n, P9260942892848991928.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P4041660540127754261

`A002313(n+1)-A010052(n+1)*A010052(n)`
-/

namespace A280084.P4041660540127754261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A010052 (n + 1) * A010052 n

end

end A280084.P4041660540127754261

namespace A280084

/-- `A002313(n+1)-A010052(n+1)*A010052(n)` -/
def P4041660540127754261.Spec : Prop :=
  ∀ n, P4041660540127754261.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P311990714357462855

`A002313(n+1)+A045375(n+1)-A007645(n+1)`
-/

namespace A280084.P311990714357462855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) + (A045375 (n + 1) - A007645 (n + 1))

end

end A280084.P311990714357462855

namespace A280084

/-- `A002313(n+1)+A045375(n+1)-A007645(n+1)` -/
def P311990714357462855.Spec : Prop :=
  ∀ n, P311990714357462855.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P9069572937133025347

`A002313(n+1)+A139831(n+1)-A107169(n+1)`
-/

namespace A280084.P9069572937133025347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) + (A139831 (n + 1) - A107169 (n + 1))

end

end A280084.P9069572937133025347

namespace A280084

/-- `A002313(n+1)+A139831(n+1)-A107169(n+1)` -/
def P9069572937133025347.Spec : Prop :=
  ∀ n, P9069572937133025347.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P6008852333657760726

`A002313(n+1)-A008683(n+1)*A304819(n+1)`
-/

namespace A280084.P6008852333657760726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A008683 (n + 1) * A304819 (n + 1)

end

end A280084.P6008852333657760726

namespace A280084

/-- `A002313(n+1)-A008683(n+1)*A304819(n+1)` -/
def P6008852333657760726.Spec : Prop :=
  ∀ n, P6008852333657760726.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P3177539094593441321

`A002313(n+1)+A006005(n+1)-A008578(n+2)`
-/

namespace A280084.P3177539094593441321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) + (A006005 (n + 1) - A008578 (n + 2))

end

end A280084.P3177539094593441321

namespace A280084

/-- `A002313(n+1)+A006005(n+1)-A008578(n+2)` -/
def P3177539094593441321.Spec : Prop :=
  ∀ n, P3177539094593441321.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P15135080334655796626

`A002313(n+1)+A045375(n+1)-A045331(n+2)`
-/

namespace A280084.P15135080334655796626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) + (A045375 (n + 1) - A045331 (n + 2))

end

end A280084.P15135080334655796626

namespace A280084

/-- `A002313(n+1)+A045375(n+1)-A045331(n+2)` -/
def P15135080334655796626.Spec : Prop :=
  ∀ n, P15135080334655796626.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P1359522546348189389

`A002313(n+1)+A151763(n+2)-A267133(n+2)`
-/

namespace A280084.P1359522546348189389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) + (A151763 (n + 2) - A267133 (n + 2))

end

end A280084.P1359522546348189389

namespace A280084

/-- `A002313(n+1)+A151763(n+2)-A267133(n+2)` -/
def P1359522546348189389.Spec : Prop :=
  ∀ n, P1359522546348189389.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P10539434118863765690

`A002313(n+1)-A082519(2*(n+1))`
-/

namespace A280084.P10539434118863765690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A082519 (2 * (n + 1))

end

end A280084.P10539434118863765690

namespace A280084

/-- `A002313(n+1)-A082519(2*(n+1))` -/
def P10539434118863765690.Spec : Prop :=
  ∀ n, P10539434118863765690.a n = A280084 (n + 1)

end A280084

/-! ## A280084.P15996045417235012429

`A002313(n+1)-A080339(2*(n+1))`
-/

namespace A280084.P15996045417235012429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A080339 (2 * (n + 1))

end

end A280084.P15996045417235012429

namespace A280084

/-- `A002313(n+1)-A080339(2*(n+1))` -/
def P15996045417235012429.Spec : Prop :=
  ∀ n, P15996045417235012429.a n = A280084 (n + 1)

end A280084

/-!
# A280085: Partial sums of A206032 (Product_{d|n} sigma(d)).

The programs for A280085, the canonical program `A280085.P11023069278118658947` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280085 has offset 1).

The definition of A280085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280085.P11023069278118658947

`∑[A206032(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280085

/-- `∑[A206032(n+1)]` -/
def P11023069278118658947.Spec : Prop :=
  ∀ n, P11023069278118658947.a n = A280085 (n + 1)

theorem P11023069278118658947.correct : P11023069278118658947.Spec := by
  intro n
  simp only [A280085, Nat.add_sub_cancel]

end A280085

/-! ## A280085.P18153490980855139783

`∑[∏{d}[n+1, A000203(#)]]`
-/

namespace A280085.P18153490980855139783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A000203 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280085.P18153490980855139783

namespace A280085

/-- `∑[∏{d}[n+1, A000203(#)]]` -/
def P18153490980855139783.Spec : Prop :=
  ∀ n, P18153490980855139783.a n = A280085 (n + 1)

end A280085

/-! ## A280085.P14395294730612225398

`∑[∏{d}[n+1, sqrt(A072861(#))]]`
-/

namespace A280085.P14395294730612225398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), Real.sqrt (A072861 d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280085.P14395294730612225398

namespace A280085

/-- `∑[∏{d}[n+1, sqrt(A072861(#))]]` -/
def P14395294730612225398.Spec : Prop :=
  ∀ n, P14395294730612225398.a n = (A280085 (n + 1) : ℝ)

end A280085

/-! ## A280085.P4529048584931313029

`∑[A324987(n+1)/A211776(n+1)]`
-/

namespace A280085.P4529048584931313029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280085.P4529048584931313029

namespace A280085

/-- `∑[A324987(n+1)/A211776(n+1)]` -/
def P4529048584931313029.Spec : Prop :=
  ∀ n, P4529048584931313029.a n = (A280085 (n + 1) : ℚ)

end A280085

/-! ## A280085.P8383785262135531512

`∑[A334491(n+1)/A007955(n+1)*A334805(n+1)]`
-/

namespace A280085.P8383785262135531512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334491 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A334805 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280085.P8383785262135531512

namespace A280085

/-- `∑[A334491(n+1)/A007955(n+1)*A334805(n+1)]` -/
def P8383785262135531512.Spec : Prop :=
  ∀ n, P8383785262135531512.a n = (A280085 (n + 1) : ℚ)

end A280085

/-!
# A280086: Partial products of A206032 (Product_{d|n} sigma(d)).

The programs for A280086, there is no canonical definition to state claims against.
-/

/-! ## A280086.P13715603520138029572

`∏[A206031(n+1)]`
-/

namespace A280086.P13715603520138029572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280086.P13715603520138029572

/-! ## A280086.P7683898649432506428

`∏[A206032(n+1)]`
-/

namespace A280086.P7683898649432506428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280086.P7683898649432506428

/-! ## A280086.P6603201868640242442

`∏[∏{d}[n+1, A000203(#)]]`
-/

namespace A280086.P6603201868640242442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A000203 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280086.P6603201868640242442

/-! ## A280086.P17159170938963672853

`∏[∏{d}[n+1, A097012(#)]]`
-/

namespace A280086.P17159170938963672853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A097012 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280086.P17159170938963672853

/-! ## A280086.P14439711269792834908

`∏[A324980(n+1)/∏{d}[n+1, #]]`
-/

namespace A280086.P14439711269792834908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280086.P14439711269792834908

/-!
# A280087: Numbers n such that Product_{d|n} sigma(d) = Product_{d|n+1} sigma(d).

The programs for A280087, there is no canonical definition to state claims against.
-/

/-! ## A280087.P14894582777915903248

`∩[A002961(n+1), A064348(n+1)]`
-/

namespace A280087.P14894582777915903248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280087.P14894582777915903248

/-! ## A280087.P15727789778351646230

`∩[A054004(n+1), A063964(n+1)]`
-/

namespace A280087.P15727789778351646230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280087.P15727789778351646230

/-! ## A280087.P3712038378639715845

`∩[A054004(n+1), A064125(n+1)]`
-/

namespace A280087.P3712038378639715845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280087.P3712038378639715845

/-! ## A280087.P907998948506561563

`∩[A054004(n+1), A064348(n+1)]`
-/

namespace A280087.P907998948506561563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280087.P907998948506561563

/-! ## A280087.P7703601293157553000

`∩[A054004(n+1), A064729(n+1)]`
-/

namespace A280087.P7703601293157553000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280087.P7703601293157553000

/-!
# A280088: Expansion of Product_{k>=1} 1/(1 - x^k)^(k!!).

The programs for A280088, there is no canonical definition to state claims against.
-/

/-! ## A280088.P917743606737907105

`A190900(ceil(2^(n-1)))-∑[log2(gcd(2, n))]`
-/

namespace A280088.P917743606737907105
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A190900 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280088.P917743606737907105

/-! ## A280088.P5443534991086170655

`n-(1-A326669(a(n-1)+val(n, 2)))` with `a(0)=1`
-/

namespace A280088.P5443534991086170655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (1 - A326669 (a (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ)).toNat)

end

end A280088.P5443534991086170655

/-! ## A280088.P1164394243049848316

`A356081(A384820(n))`
-/

namespace A280088.P1164394243049848316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356081 (A384820 n).toNat

end

end A280088.P1164394243049848316

/-!
# A280089: a(n) = 4*n^3 - 3*n + 1.

The programs for A280089, the canonical program `A280089.P6118679900806487457` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280089 has offset 0).

The definition of A280089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3-3*n+1` (program `A280089.P6118679900806487457`, by `A280089.P6118679900806487457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280089.P7398444898319583861

`(2*n-1)²*(n+1)`
-/

namespace A280089.P7398444898319583861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) ^ 2 * (n + 1 : ℤ)

end

end A280089.P7398444898319583861

namespace A280089

/-- `(2*n-1)²*(n+1)` -/
def P7398444898319583861.Spec : Prop :=
  ∀ n, P7398444898319583861.a n = A280089 n

theorem P7398444898319583861.correct : P7398444898319583861.Spec := by
  intro n
  simp only [A280089, Nat.add_sub_cancel, A280089.P7398444898319583861.a, A280089.P6118679900806487457.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A280089

/-! ## A280089.P6118679900806487457

`4*n^3-3*n+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A280089

/-- `4*n^3-3*n+1` -/
def P6118679900806487457.Spec : Prop :=
  ∀ n, P6118679900806487457.a n = A280089 n

theorem P6118679900806487457.correct : P6118679900806487457.Spec := by
  intro n
  simp only [A280089]

end A280089

/-! ## A280089.P12208017933848363249

`∑[24*C(n, 2)+1]`
-/

namespace A280089.P12208017933848363249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280089.P12208017933848363249

namespace A280089

/-- `∑[24*C(n, 2)+1]` -/
def P12208017933848363249.Spec : Prop :=
  ∀ n, (P12208017933848363249.a n : ℤ) = A280089 n

end A280089

/-! ## A280089.P92879531054359045

`∑[xor(1, 24*C(n, 2))]`
-/

namespace A280089.P92879531054359045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (24 * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280089.P92879531054359045

namespace A280089

/-- `∑[xor(1, 24*C(n, 2))]` -/
def P92879531054359045.Spec : Prop :=
  ∀ n, (P92879531054359045.a n : ℤ) = A280089 n

end A280089

/-! ## A280089.P3516341871529866585

`∑[∑[a(n-1)+24]]` with `a(0)=1, a(1)=0`
-/

namespace A280089.P3516341871529866585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280089.P3516341871529866585

namespace A280089

/-- `∑[∑[a(n-1)+24]]` -/
def P3516341871529866585.Spec : Prop :=
  ∀ n, (P3516341871529866585.a n : ℤ) = A280089 n

end A280089

/-! ## A280089.P14735601334234237305

`∑[lcm(2, (n-1)*12*n)+1]`
-/

namespace A280089.P14735601334234237305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n : ℤ) - 1) * (12 * n : ℤ)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280089.P14735601334234237305

namespace A280089

/-- `∑[lcm(2, (n-1)*12*n)+1]` -/
def P14735601334234237305.Spec : Prop :=
  ∀ n, (P14735601334234237305.a n : ℤ) = A280089 n

end A280089

/-! ## A280089.P11221202327385033682

`lcm((2*n+1)*(2*n+1)*(n-1)+2, n+1)`
-/

namespace A280089.P11221202327385033682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n + 1 : ℤ) * ((2 * n + 1 : ℤ) * ((n : ℤ) - 1)) + 2) (n + 1 : ℤ)

end

end A280089.P11221202327385033682

namespace A280089

/-- `lcm((2*n+1)*(2*n+1)*(n-1)+2, n+1)` -/
def P11221202327385033682.Spec : Prop :=
  ∀ n, (P11221202327385033682.a n : ℤ) = A280089 n

end A280089

/-! ## A280089.P14749108090697796649

`∑[A064200(n)+1]`
-/

namespace A280089.P14749108090697796649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280089.P14749108090697796649

namespace A280089

/-- `∑[A064200(n)+1]` -/
def P14749108090697796649.Spec : Prop :=
  ∀ n, P14749108090697796649.a n = A280089 n

end A280089

/-! ## A280089.P70171011224497008

`(A369922(n)+3)/2`
-/

namespace A280089.P70171011224497008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369922 n + 3 : ℚ) / 2

end

end A280089.P70171011224497008

namespace A280089

/-- `(A369922(n)+3)/2` -/
def P70171011224497008.Spec : Prop :=
  ∀ n, P70171011224497008.a n = (A280089 n : ℚ)

end A280089

/-! ## A280089.P3821771433591279416

`A123198(n)/(n+1)`
-/

namespace A280089.P3821771433591279416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123198 n : ℚ) / (n + 1 : ℚ)

end

end A280089.P3821771433591279416

namespace A280089

/-- `A123198(n)/(n+1)` -/
def P3821771433591279416.Spec : Prop :=
  ∀ n, P3821771433591279416.a n = (A280089 n : ℚ)

end A280089

/-! ## A280089.P13696745214564654363

`∑[A255185(n)+1-n]`
-/

namespace A280089.P13696745214564654363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280089.P13696745214564654363

namespace A280089

/-- `∑[A255185(n)+1-n]` -/
def P13696745214564654363.Spec : Prop :=
  ∀ n, P13696745214564654363.a n = A280089 n

end A280089

/-!
# A280091: Pierce Expansion of tanh(1).

The programs for A280091, there is no canonical definition to state claims against.
-/

/-! ## A280091.P10488630136609069049

`A015948(A054602(n))`
-/

namespace A280091.P10488630136609069049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015948 (A054602 n).toNat

end

end A280091.P10488630136609069049

/-!
# A280097: Sum of the divisors of 24*n - 1.

The programs for A280097, the canonical program `A280097.P6551121283852804075` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280097 has offset 1).

The definition of A280097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280097.P6551121283852804075

`A000203(A183010(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A280097

/-- `A000203(A183010(n+1))` -/
def P6551121283852804075.Spec : Prop :=
  ∀ n, P6551121283852804075.a n = A280097 (n + 1)

theorem P6551121283852804075.correct : P6551121283852804075.Spec := by
  intro n
  simp only [A280097, Nat.add_sub_cancel]

end A280097

/-! ## A280097.P4635894952259603605

`∑{d}[24*n+23, #]`
-/

namespace A280097.P4635894952259603605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A280097.P4635894952259603605

namespace A280097

/-- `∑{d}[24*n+23, #]` -/
def P4635894952259603605.Spec : Prop :=
  ∀ n, (P4635894952259603605.a n : ℤ) = A280097 (n + 1)

end A280097

/-! ## A280097.P11372802935014773894

`24*A280098(n+1)`
-/

namespace A280097.P11372802935014773894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A280098 (n + 1)

end

end A280097.P11372802935014773894

namespace A280097

/-- `24*A280098(n+1)` -/
def P11372802935014773894.Spec : Prop :=
  ∀ n, P11372802935014773894.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P14564234237954291917

`12*A295012(2*(n+1))`
-/

namespace A280097.P14564234237954291917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A295012 (2 * (n + 1))

end

end A280097.P14564234237954291917

namespace A280097

/-- `12*A295012(2*(n+1))` -/
def P14564234237954291917.Spec : Prop :=
  ∀ n, P14564234237954291917.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P10214381221148302294

`24*(A291900(n+1)+1+n)`
-/

namespace A280097.P10214381221148302294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (A291900 (n + 1) + 1 + (n : ℤ))

end

end A280097.P10214381221148302294

namespace A280097

/-- `24*(A291900(n+1)+1+n)` -/
def P10214381221148302294.Spec : Prop :=
  ∀ n, P10214381221148302294.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P18108487200912813676

`A008606(A280098(n+1))`
-/

namespace A280097.P18108487200912813676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A280098 (n + 1)).toNat

end

end A280097.P18108487200912813676

namespace A280097

/-- `A008606(A280098(n+1))` -/
def P18108487200912813676.Spec : Prop :=
  ∀ n, P18108487200912813676.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P15734540628688198796

`A008606(A291900(n+1)+1+n)`
-/

namespace A280097.P15734540628688198796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A291900 (n + 1) + 1 + (n : ℤ)).toNat

end

end A280097.P15734540628688198796

namespace A280097

/-- `A008606(A291900(n+1)+1+n)` -/
def P15734540628688198796.Spec : Prop :=
  ∀ n, P15734540628688198796.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P2976187443902768063

`A000203(24*n+23)`
-/

namespace A280097.P2976187443902768063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (24 * n + 23)

end

end A280097.P2976187443902768063

namespace A280097

/-- `A000203(24*n+23)` -/
def P2976187443902768063.Spec : Prop :=
  ∀ n, P2976187443902768063.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P14896500943757515519

`A239053(6*(n+1))`
-/

namespace A280097.P14896500943757515519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239053 (6 * (n + 1))

end

end A280097.P14896500943757515519

namespace A280097

/-- `A239053(6*(n+1))` -/
def P14896500943757515519.Spec : Prop :=
  ∀ n, P14896500943757515519.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P2390861478680641333

`A008438(12*n+11)`
-/

namespace A280097.P2390861478680641333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (12 * n + 11)

end

end A280097.P2390861478680641333

namespace A280097

/-- `A008438(12*n+11)` -/
def P2390861478680641333.Spec : Prop :=
  ∀ n, P2390861478680641333.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P4535096600387919431

`A366442(8*(n+1))`
-/

namespace A280097.P4535096600387919431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366442 (8 * (n + 1))

end

end A280097.P4535096600387919431

namespace A280097

/-- `A366442(8*(n+1))` -/
def P4535096600387919431.Spec : Prop :=
  ∀ n, P4535096600387919431.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P15045787105339601147

`A144615(A004771(n))`
-/

namespace A280097.P15045787105339601147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 (A004771 n).toNat

end

end A280097.P15045787105339601147

namespace A280097

/-- `A144615(A004771(n))` -/
def P15045787105339601147.Spec : Prop :=
  ∀ n, P15045787105339601147.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P17108554400162140830

`A144615(A133655(n+1))`
-/

namespace A280097.P17108554400162140830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 (A133655 (n + 1)).toNat

end

end A280097.P17108554400162140830

namespace A280097

/-- `A144615(A133655(n+1))` -/
def P17108554400162140830.Spec : Prop :=
  ∀ n, P17108554400162140830.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P2379176124938349698

`A144615(A017257(n)-(n+1))`
-/

namespace A280097.P2379176124938349698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 (A017257 n - (n + 1 : ℤ)).toNat

end

end A280097.P2379176124938349698

namespace A280097

/-- `A144615(A017257(n)-(n+1))` -/
def P2379176124938349698.Spec : Prop :=
  ∀ n, P2379176124938349698.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P17186862363221316854

`A144615(A008458(n+1)+2*n+1)`
-/

namespace A280097.P17186862363221316854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 (A008458 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A280097.P17186862363221316854

namespace A280097

/-- `A144615(A008458(n+1)+2*n+1)` -/
def P17186862363221316854.Spec : Prop :=
  ∀ n, P17186862363221316854.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P10540273449784839480

`A144615(A016789(A016789(n))-(n+1))`
-/

namespace A280097.P10540273449784839480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 (A016789 (A016789 n).toNat - (n + 1 : ℤ)).toNat

end

end A280097.P10540273449784839480

namespace A280097

/-- `A144615(A016789(A016789(n))-(n+1))` -/
def P10540273449784839480.Spec : Prop :=
  ∀ n, P10540273449784839480.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P3492972084100106324

`A185717(3*Δ[n*(2*n+1)]+2)`
-/

namespace A280097.P3492972084100106324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185717 (3 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 2).toNat

end

end A280097.P3492972084100106324

namespace A280097

/-- `A185717(3*Δ[n*(2*n+1)]+2)` -/
def P3492972084100106324.Spec : Prop :=
  ∀ n, P3492972084100106324.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P11108848977195883708

`A185717(A016969(Δ[n²]))%(12*A016957(n+1))`
-/

namespace A280097.P11108848977195883708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185717 (A016969 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat) (12 * A016957 (n + 1))

end

end A280097.P11108848977195883708

namespace A280097

/-- `A185717(A016969(Δ[n²]))%(12*A016957(n+1))` -/
def P11108848977195883708.Spec : Prop :=
  ∀ n, P11108848977195883708.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P3653454588909710101

`A000593(24*n+23)`
-/

namespace A280097.P3653454588909710101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (24 * n + 23)

end

end A280097.P3653454588909710101

namespace A280097

/-- `A000593(24*n+23)` -/
def P3653454588909710101.Spec : Prop :=
  ∀ n, P3653454588909710101.a n = A280097 (n + 1)

end A280097

/-! ## A280097.P685926712178444204

`A002129(22*(n+1)+2*n+1)`
-/

namespace A280097.P685926712178444204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (22 * (n + 1) + (2 * n + 1))

end

end A280097.P685926712178444204

namespace A280097

/-- `A002129(22*(n+1)+2*n+1)` -/
def P685926712178444204.Spec : Prop :=
  ∀ n, P685926712178444204.a n = A280097 (n + 1)

end A280097

/-!
# A280098: The sum of the divisors of 24*n - 1, divided by 24.

The programs for A280098, the canonical program `A280098.P5959995611617743735` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280098 has offset 1).

The definition of A280098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280098.P5959995611617743735

`A280097(n+1)/24`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A280098

/-- `A280097(n+1)/24` -/
def P5959995611617743735.Spec : Prop :=
  ∀ n, P5959995611617743735.a n = (A280098 (n + 1) : ℚ)

end A280098

/-! ## A280098.P14306621320161786759

`A295012(2*(n+1))/2`
-/

namespace A280098.P14306621320161786759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295012 (2 * (n + 1)) : ℚ) / 2

end

end A280098.P14306621320161786759

namespace A280098

/-- `A295012(2*(n+1))/2` -/
def P14306621320161786759.Spec : Prop :=
  ∀ n, P14306621320161786759.a n = (A280098 (n + 1) : ℚ)

end A280098

/-! ## A280098.P15778808819559577786

`A291900(n+1)+1+n`
-/

namespace A280098.P15778808819559577786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291900 (n + 1) + 1 + (n : ℤ)

end

end A280098.P15778808819559577786

namespace A280098

/-- `A291900(n+1)+1+n` -/
def P15778808819559577786.Spec : Prop :=
  ∀ n, P15778808819559577786.a n = A280098 (n + 1)

end A280098

/-! ## A280098.P13612825660795849570

`A000203(24*n+23)/24`
-/

namespace A280098.P13612825660795849570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (24 * n + 23) : ℚ) / 24

end

end A280098.P13612825660795849570

namespace A280098

/-- `A000203(24*n+23)/24` -/
def P13612825660795849570.Spec : Prop :=
  ∀ n, P13612825660795849570.a n = (A280098 (n + 1) : ℚ)

end A280098

/-! ## A280098.P18331757203126272352

`A004525(A295012(2*(n+1)))`
-/

namespace A280098.P18331757203126272352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A295012 (2 * (n + 1))).toNat

end

end A280098.P18331757203126272352

namespace A280098

/-- `A004525(A295012(2*(n+1)))` -/
def P18331757203126272352.Spec : Prop :=
  ∀ n, P18331757203126272352.a n = A280098 (n + 1)

end A280098

/-! ## A280098.P12154600548683852925

`A008619(A295012(2*(n+1))-1)`
-/

namespace A280098.P12154600548683852925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A295012 (2 * (n + 1)) - 1).toNat

end

end A280098.P12154600548683852925

namespace A280098

/-- `A008619(A295012(2*(n+1))-1)` -/
def P12154600548683852925.Spec : Prop :=
  ∀ n, P12154600548683852925.a n = A280098 (n + 1)

end A280098

/-! ## A280098.P17532418000158582142

`A194698(A280097(n+1))`
-/

namespace A280098.P17532418000158582142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A280097 (n + 1)).toNat

end

end A280098.P17532418000158582142

namespace A280098

/-- `A194698(A280097(n+1))` -/
def P17532418000158582142.Spec : Prop :=
  ∀ n, P17532418000158582142.a n = A280098 (n + 1)

end A280098

/-!
# A280099: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 334", based on the 5-celled von Neumann neighborhood.

The programs for A280099, there is no canonical definition to state claims against.
-/

/-! ## A280099.P5710979726706457187

`A007088(A281212(n))`
-/

namespace A280099.P5710979726706457187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281212 n).toNat

end

end A280099.P5710979726706457187

/-! ## A280099.P2757674732044252187

`A007088(∑[A198633(n)]-A283059(n+1))`
-/

namespace A280099.P2757674732044252187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j - A283059 (n + 1)).toNat

end

end A280099.P2757674732044252187

/-! ## A280099.P14298336449629900947

`A007088(A000225(n+2)-A283059(n+1))`
-/

namespace A280099.P14298336449629900947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A283059 (n + 1)).toNat

end

end A280099.P14298336449629900947

/-! ## A280099.P8472163231032771621

`A007088(A255047(n+2)-A283059(n+1))`
-/

namespace A280099.P8472163231032771621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A255047 (n + 2) - A283059 (n + 1)).toNat

end

end A280099.P8472163231032771621

/-! ## A280099.P1353140874498638833

`A007088(A000225(n+2)%A283059(n+1))`
-/

namespace A280099.P1353140874498638833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A000225 (n + 2)) (A283059 (n + 1))).toNat

end

end A280099.P1353140874498638833

