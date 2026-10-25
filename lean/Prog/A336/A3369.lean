import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B006.C002
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
# A336901: Number of digits in the base 10 representation of floor(Bernoulli(2^n)).

The programs for A336901, there is no canonical definition to state claims against.
-/

/-! ## A336901.P8714839720466505816

`A083955(A050052(n+1))%A087522(n)`
-/

namespace A336901.P8714839720466505816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083955 (A050052 (n + 1)).toNat) (A087522 n)

end

end A336901.P8714839720466505816

/-! ## A336901.P1900308012337325180

`A373550(n+1)+A003056(A035040(2*n))`
-/

namespace A336901.P1900308012337325180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373550 (n + 1) + A003056 (A035040 (2 * n)).toNat

end

end A336901.P1900308012337325180

/-! ## A336901.P12166284099930065000

`A324750(A000720(A324750(A276625(2*n+1))+1))`
-/

namespace A336901.P12166284099930065000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 (A000720 (A324750 (A276625 (2 * n + 1)).toNat + 1).toNat).toNat

end

end A336901.P12166284099930065000

/-!
# A336902: Sum of the smallest parts of all compositions of n into distinct parts.

The programs for A336902, there is no canonical definition to state claims against.
-/

/-! ## A336902.P13535524473890256805

`eq[0, A345441(A084630(n))]`
-/

namespace A336902.P13535524473890256805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345441 (A084630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336902.P13535524473890256805

/-! ## A336902.P2625328135684434430

`record[A022307(n*A242618(n))]`
-/

namespace A336902.P2625328135684434430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 ((n : ℤ) * A242618 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336902.P2625328135684434430

/-! ## A336902.P8091237420209488907

`∑[A056595(∑[A038392(n+1)])]`
-/

namespace A336902.P8091237420209488907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336902.P8091237420209488907

/-! ## A336902.P2467301529375338320

`∑[A183093(∑[A038392(n+1)])]`
-/

namespace A336902.P2467301529375338320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336902.P2467301529375338320

/-! ## A336902.P703005082821001154

`∑[A023416(p?[A050057(n+1)])]`
-/

namespace A336902.P703005082821001154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336902.P703005082821001154

/-!
# A336906: Number of n-step self-avoiding walks on the b.c.c. lattice with no non-contiguous adjacencies.

The programs for A336906, there is no canonical definition to state claims against.
-/

/-! ## A336906.P3963125264926138043

`A092533(A297918(n+1)+1+n)`
-/

namespace A336906.P3963125264926138043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A297918 (n + 1) + 1 + (n : ℤ)).toNat

end

end A336906.P3963125264926138043

/-!
# A336907: Number of n-step self-avoiding walks on the f.c.c. lattice with no non-contiguous adjacencies.

The programs for A336907, there is no canonical definition to state claims against.
-/

/-! ## A336907.P11769518481120814921

`12*A226190(a(n-1))` with `a(0)=1`
-/

namespace A336907.P11769518481120814921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  12 * A226190 (a (n - 1)).toNat

end

end A336907.P11769518481120814921

/-!
# A336909: Numbers k > 2 such that omega(k) > log(log(k)) + sqrt(log(log(k))), where omega(k) is the number of distinct primes dividing k (A001221).

The programs for A336909, there is no canonical definition to state claims against.
-/

/-! ## A336909.P9830220058171643145

`lt[A028442(A300980(n)), n]`
-/

namespace A336909.P9830220058171643145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (A300980 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336909.P9830220058171643145

/-! ## A336909.P16470970872371070284

`lt[A007586(A300980(n)), A106249(n)]`
-/

namespace A336909.P16470970872371070284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007586 (A300980 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336909.P16470970872371070284

/-! ## A336909.P4953980715204672370

`lt[A068390(A300980(n)), A250120(n)]`
-/

namespace A336909.P4953980715204672370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068390 (A300980 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336909.P4953980715204672370

/-! ## A336909.P5494077735129354270

`lt[A065721(A300980(n)), A329623(n)]`
-/

namespace A336909.P5494077735129354270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065721 (A300980 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336909.P5494077735129354270

/-! ## A336909.P265746744718926091

`lt[A003359(A300980(n)), A051037(n+1)]`
-/

namespace A336909.P265746744718926091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003359 (A300980 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336909.P265746744718926091

/-!
# A336910: Numbers k > 2 such that omega(k) > log(log(k)) + 2 * sqrt(log(log(k))), where omega(k) is the number of distinct primes dividing k (A001221).

The programs for A336910, there is no canonical definition to state claims against.
-/

/-! ## A336910.P12448954445022185980

`A275733(A020497(n+1)*A240548(2*n+1))`
-/

namespace A336910.P12448954445022185980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A020497 (n + 1) * A240548 (2 * n + 1)).toNat

end

end A336910.P12448954445022185980

/-!
# A336911: Image of n under the x^3+1 map, which is a variation of the 3x+1 (Collatz) map.

The programs for A336911, there is no canonical definition to state claims against.
-/

/-! ## A336911.P13830186383549959988

`A014681(n^A092093(n+1))`
-/

namespace A336911.P13830186383549959988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A092093 (n + 1) : ℤ))).toNat

end

end A336911.P13830186383549959988

/-! ## A336911.P910121602054739369

`A014681(n^A139214(n+1))`
-/

namespace A336911.P910121602054739369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A139214 (n + 1) : ℤ))).toNat

end

end A336911.P910121602054739369

/-!
# A336913: Image of n under the 3^x+1 map, which is a variation of the 3x+1 (Collatz) map.

The programs for A336913, there is no canonical definition to state claims against.
-/

/-! ## A336913.P12034207397191255882

`gcd(A034472(n+1), A097331(A052937(n)))`
-/

namespace A336913.P12034207397191255882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034472 (n + 1)) (A097331 (A052937 n).toNat)

end

end A336913.P12034207397191255882

/-!
# A336915: a(n) is the exponent of the least power of 2 that when multiplied by n, makes the product nondeficient, or -1 if n itself is a power of 2.

The programs for A336915, there is no canonical definition to state claims against.
-/

/-! ## A336915.P4011180198490852300

`A336916(n+1)-1`
-/

namespace A336915.P4011180198490852300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336916 (n + 1) - 1

end

end A336915.P4011180198490852300

/-! ## A336915.P14438494746162982581

`A023443(A336916(n+1))`
-/

namespace A336915.P14438494746162982581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A336916 (n + 1)).toNat

end

end A336915.P14438494746162982581

/-! ## A336915.P476321759648455825

`A023444(A336916(n+1)+1)`
-/

namespace A336915.P476321759648455825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A336916 (n + 1) + 1).toNat

end

end A336915.P476321759648455825

/-! ## A336915.P4495366826707443561

`A023445(A336916(n+1)+2)`
-/

namespace A336915.P4495366826707443561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A336916 (n + 1) + 2).toNat

end

end A336915.P4495366826707443561

/-! ## A336915.P23651115851707459

`A037861(2^A336916(n+1))`
-/

namespace A336915.P23651115851707459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A336916 (n + 1) : ℤ))).toNat

end

end A336915.P23651115851707459

/-! ## A336915.P14597871838078923534

`xor(-A336916(n+1), A115714(A237587(n+1)))`
-/

namespace A336915.P14597871838078923534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A336916 (n + 1)) (A115714 (A237587 (n + 1)).toNat)

end

end A336915.P14597871838078923534

/-! ## A336915.P4627183898311561489

`A341621(A256017(2*(n+1))/2)`
-/

namespace A336915.P4627183898311561489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (SequenceMachineLib.roundAway ((A256017 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A336915.P4627183898311561489

/-! ## A336915.P13822821800569022202

`A341621(A225004(n+1))`
-/

namespace A336915.P13822821800569022202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (A225004 (n + 1)).toNat

end

end A336915.P13822821800569022202

/-!
# A336916: One more than the number of iterations of x -> 2x needed before the result is nondeficient, when starting from x=n; a(n) = 0, when n is a power of 2.

The programs for A336916, there is no canonical definition to state claims against.
-/

/-! ## A336916.P17095026112731710329

`A336915(n+1)+1`
-/

namespace A336916.P17095026112731710329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336915 (n + 1) + 1

end

end A336916.P17095026112731710329

/-! ## A336916.P15240518023281485425

`A341621(A256017(2*(n+1))/2)+1`
-/

namespace A336916.P15240518023281485425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (SequenceMachineLib.roundAway ((A256017 (2 * (n + 1)) : ℚ) / 2)).toNat + 1

end

end A336916.P15240518023281485425

/-! ## A336916.P3423549192846440571

`A254001(A204904(n+1))+char[2*(n+1)]`
-/

namespace A336916.P3423549192846440571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254001 (A204904 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A336916.P3423549192846440571

/-! ## A336916.P13868010766612848950

`A341621(A225004(n+1))+1`
-/

namespace A336916.P13868010766612848950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (A225004 (n + 1)).toNat + 1

end

end A336916.P13868010766612848950

/-! ## A336916.P17501215369062565143

`A294936(A108951(n+1))+A279048(n+1)`
-/

namespace A336916.P17501215369062565143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A108951 (n + 1)).toNat + A279048 (n + 1)

end

end A336916.P17501215369062565143

/-!
# A336917: Number of iterations of x -> A252463(x) needed before the result is deficient, when starting from x=n.

The programs for A336917, there is no canonical definition to state claims against.
-/

/-! ## A336917.P12314556130941839554

`A071178(A376882(n+1))`
-/

namespace A336917.P12314556130941839554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A376882 (n + 1)).toNat

end

end A336917.P12314556130941839554

/-! ## A336917.P18031842175109859284

`A115623(A341620(n+1)^or(1, and(n, -(n+2))))`
-/

namespace A336917.P18031842175109859284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (SequenceMachineLib.roundAway ((A341620 (n + 1) : ℚ) ^ (Int.lor 1 (Int.land (n : ℤ) (-(n + 2 : ℤ))) : ℤ))).toNat

end

end A336917.P18031842175109859284

/-! ## A336917.P6420380707037622542

`and(A089600(n), A301989(n+1))`
-/

namespace A336917.P6420380707037622542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089600 n) (A301989 (n + 1))

end

end A336917.P6420380707037622542

/-! ## A336917.P10431149243524721082

`and(A105034(n), A301989(n+1))`
-/

namespace A336917.P10431149243524721082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105034 n) (A301989 (n + 1))

end

end A336917.P10431149243524721082

/-! ## A336917.P10676990703738884667

`and(A301989(n+1), A390567(n))`
-/

namespace A336917.P10676990703738884667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A301989 (n + 1)) (A390567 n)

end

end A336917.P10676990703738884667

/-!
# A336918: Numbers k such that A000005(k) divides A003973(k); numbers k for which A336839(k) = 1.

The programs for A336918, the canonical program `A336918.P13502289525175997860` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336918 has offset 1).

The definition of A336918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336918.P13502289525175997860

`eq[1, A336839(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336918

/-- `eq[1, A336839(n+1)]+1` -/
def P13502289525175997860.Spec : Prop :=
  ∀ n, (P13502289525175997860.a n : ℤ) = A336918 (n + 1)

theorem P13502289525175997860.correct : P13502289525175997860.Spec := by
  intro n
  simp only [A336918, Nat.add_sub_cancel]

end A336918

/-! ## A336918.P11193310710001023269

`record[A000027(n+1)/A336839(n+1)]`
-/

namespace A336918.P11193310710001023269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A336839 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336918.P11193310710001023269

namespace A336918

/-- `record[A000027(n+1)/A336839(n+1)]` -/
def P11193310710001023269.Spec : Prop :=
  ∀ n, P11193310710001023269.a n = (A336918 (n + 1) : ℚ)

end A336918

/-! ## A336918.P14991067318502293515

`eq[A000005(n+1), A336856(n+1)]+1`
-/

namespace A336918.P14991067318502293515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336918.P14991067318502293515

namespace A336918

/-- `eq[A000005(n+1), A336856(n+1)]+1` -/
def P14991067318502293515.Spec : Prop :=
  ∀ n, (P14991067318502293515.a n : ℤ) = A336918 (n + 1)

end A336918

/-! ## A336918.P3102193350573638487

`eq[char[A336919(n+1)], A000007(n)]`
-/

namespace A336918.P3102193350573638487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336919 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A336918.P3102193350573638487

namespace A336918

/-- `eq[char[A336919(n+1)], A000007(n)]` -/
def P3102193350573638487.Spec : Prop :=
  ∀ n, (P3102193350573638487.a n : ℤ) = A336918 (n + 1)

end A336918

/-! ## A336918.P3114676555936133914

`eq[char[A336919(n+1)], A000038(n)]`
-/

namespace A336918.P3114676555936133914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336919 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A336918.P3114676555936133914

namespace A336918

/-- `eq[char[A336919(n+1)], A000038(n)]` -/
def P3114676555936133914.Spec : Prop :=
  ∀ n, (P3114676555936133914.a n : ℤ) = A336918 (n + 1)

end A336918

/-! ## A336918.P3220557077891319625

`record[A336856(n+1)+A049820(n+1)]`
-/

namespace A336918.P3220557077891319625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336856 (n + 1) + A049820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336918.P3220557077891319625

namespace A336918

/-- `record[A336856(n+1)+A049820(n+1)]` -/
def P3220557077891319625.Spec : Prop :=
  ∀ n, P3220557077891319625.a n = A336918 (n + 1)

end A336918

/-! ## A336918.P9964822792423687289

`record[A020719(n)-A023545(A336839(n+1))]`
-/

namespace A336918.P9964822792423687289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n - A023545 (A336839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336918.P9964822792423687289

namespace A336918

/-- `record[A020719(n)-A023545(A336839(n+1))]` -/
def P9964822792423687289.Spec : Prop :=
  ∀ n, P9964822792423687289.a n = A336918 (n + 1)

end A336918

/-! ## A336918.P5918210788111180426

`record[A008619(n)/A336839(A008619(n))]`
-/

namespace A336918.P5918210788111180426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A336839 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336918.P5918210788111180426

namespace A336918

/-- `record[A008619(n)/A336839(A008619(n))]` -/
def P5918210788111180426.Spec : Prop :=
  ∀ n, P5918210788111180426.a n = (A336918 (n + 1) : ℚ)

end A336918

/-! ## A336918.P4436637072231317630

`record[A027750(n+1)/A336839(A027750(n+1))]`
-/

namespace A336918.P4436637072231317630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027750 (n + 1) : ℚ) / (A336839 (A027750 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336918.P4436637072231317630

namespace A336918

/-- `record[A027750(n+1)/A336839(A027750(n+1))]` -/
def P4436637072231317630.Spec : Prop :=
  ∀ n, P4436637072231317630.a n = (A336918 (n + 1) : ℚ)

end A336918

/-!
# A336919: Numbers k such that A000005(k) does not divide A003973(k); numbers k for which A336839(k) > 1.

The programs for A336919, the canonical program `A336919.P8980509711614269143` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336919 has offset 1).

The definition of A336919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336919.P8980509711614269143

`lt[1, A336839(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336919

/-- `lt[1, A336839(n+1)]+1` -/
def P8980509711614269143.Spec : Prop :=
  ∀ n, (P8980509711614269143.a n : ℤ) = A336919 (n + 1)

theorem P8980509711614269143.correct : P8980509711614269143.Spec := by
  intro n
  simp only [A336919, Nat.add_sub_cancel]

end A336919

/-! ## A336919.P17015206102794382123

`lt[1, A336839(A028310(n))]`
-/

namespace A336919.P17015206102794382123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336919.P17015206102794382123

namespace A336919

/-- `lt[1, A336839(A028310(n))]` -/
def P17015206102794382123.Spec : Prop :=
  ∀ n, (P17015206102794382123.a n : ℤ) = A336919 (n + 1)

end A336919

/-! ## A336919.P5744203334044890204

`A326178(lt[1, A336839(n+1)])`
-/

namespace A336919.P5744203334044890204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A336919.P5744203334044890204

namespace A336919

/-- `A326178(lt[1, A336839(n+1)])` -/
def P5744203334044890204.Spec : Prop :=
  ∀ n, P5744203334044890204.a n = A336919 (n + 1)

end A336919

/-! ## A336919.P15379907147802739524

`eq[char[A336918(n+1)], A000007(n)]`
-/

namespace A336919.P15379907147802739524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336918 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A336919.P15379907147802739524

namespace A336919

/-- `eq[char[A336918(n+1)], A000007(n)]` -/
def P15379907147802739524.Spec : Prop :=
  ∀ n, (P15379907147802739524.a n : ℤ) = A336919 (n + 1)

end A336919

/-! ## A336919.P7897639562194015356

`eq[char[A336918(n+1)], A000038(n)]`
-/

namespace A336919.P7897639562194015356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336918 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A336919.P7897639562194015356

namespace A336919

/-- `eq[char[A336918(n+1)], A000038(n)]` -/
def P7897639562194015356.Spec : Prop :=
  ∀ n, (P7897639562194015356.a n : ℤ) = A336919 (n + 1)

end A336919

/-! ## A336919.P3516930521514153641

`lt[1, A336839(A233583(n+1))]`
-/

namespace A336919.P3516930521514153641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A336919.P3516930521514153641

namespace A336919

/-- `lt[1, A336839(A233583(n+1))]` -/
def P3516930521514153641.Spec : Prop :=
  ∀ n, (P3516930521514153641.a n : ℤ) = A336919 (n + 1)

end A336919

/-!
# A336920: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A329697(n), A331410(n), A336158(n)], for all i, j >= 1.

The programs for A336920, there is no canonical definition to state claims against.
-/

/-! ## A336920.P8893233345591342933

`A075355(A000265(n+1))-A025469(A123346(n))`
-/

namespace A336920.P8893233345591342933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 (A000265 (n + 1)).toNat - A025469 (A123346 n).toNat

end

end A336920.P8893233345591342933

/-! ## A336920.P14308459698888859950

`A108611(A179443((n+1)/2^val(n+1, 2)))`
-/

namespace A336920.P14308459698888859950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A179443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A336920.P14308459698888859950

/-! ## A336920.P3856457516198774218

`A108611(A179443((n+1)/and(n+1, -(n+1))))`
-/

namespace A336920.P3856457516198774218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A179443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat).toNat

end

end A336920.P3856457516198774218

/-! ## A336920.P122985927682914476

`A108611(A179443((n+1)/round(xor(n, n+1)/2)))`
-/

namespace A336920.P122985927682914476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A179443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat).toNat

end

end A336920.P122985927682914476

/-! ## A336920.P7788293389615648778

`A108611(A179443(1/(1-and(n, n+1)/(n+1))))`
-/

namespace A336920.P7788293389615648778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A179443 (SequenceMachineLib.roundAway (1 / (1 - (Nat.land n (n + 1) : ℚ) / (n + 1 : ℚ)))).toNat).toNat

end

end A336920.P7788293389615648778

/-!
# A336921: a(n) = A331410(n) - A087436(n).

The programs for A336921, the canonical program `A336921.P608047927114178291` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336921 has offset 1).

The definition of A336921 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087436, A331410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336921.P14754558899812944677

`A331410(A336467(n+1))`
-/

namespace A336921.P14754558899812944677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A336467 (n + 1)).toNat

end

end A336921.P14754558899812944677

namespace A336921

/-- `A331410(A336467(n+1))` -/
def P14754558899812944677.Spec : Prop :=
  ∀ n, P14754558899812944677.a n = A336921 (n + 1)

end A336921

/-! ## A336921.P608047927114178291

`A331410(n+1)-A087436(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A336921

/-- `A331410(n+1)-A087436(n+1)` -/
def P608047927114178291.Spec : Prop :=
  ∀ n, P608047927114178291.a n = A336921 (n + 1)

theorem P608047927114178291.correct : P608047927114178291.Spec := by
  intro n
  simp only [A336921, Nat.add_sub_cancel]

end A336921

/-! ## A336921.P11310522221361698220

`A336922(n+1)-A046660(A000265(n+1))`
-/

namespace A336921.P11310522221361698220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336922 (n + 1) - A046660 (A000265 (n + 1)).toNat

end

end A336921.P11310522221361698220

namespace A336921

/-- `A336922(n+1)-A046660(A000265(n+1))` -/
def P11310522221361698220.Spec : Prop :=
  ∀ n, P11310522221361698220.a n = A336921 (n + 1)

end A336921

/-! ## A336921.P10404168149227713274

`A331410(A003960(n+1))`
-/

namespace A336921.P10404168149227713274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A003960 (n + 1)).toNat

end

end A336921.P10404168149227713274

namespace A336921

/-- `A331410(A003960(n+1))` -/
def P10404168149227713274.Spec : Prop :=
  ∀ n, P10404168149227713274.a n = A336921 (n + 1)

end A336921

/-! ## A336921.P15392827192624123633

`A336396(n+1)+A335877(n+1)`
-/

namespace A336921.P15392827192624123633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (n + 1) + A335877 (n + 1)

end

end A336921.P15392827192624123633

namespace A336921

/-- `A336396(n+1)+A335877(n+1)` -/
def P15392827192624123633.Spec : Prop :=
  ∀ n, P15392827192624123633.a n = A336921 (n + 1)

theorem P15392827192624123633.correct : P15392827192624123633.Spec := by
  intro n
  simp only [A336921, Nat.add_sub_cancel, A336921.P15392827192624123633.a, A336921.P608047927114178291.a, A087436, A087436.P13287701826401831056.a, A331410, A331410.P1765792121065572382.a, A335877, A335877.P9922726367996187859.a, A336396, A336396.P16969858180878355374.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A329697, A329697.P6355568551452954971.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001511, A001511.P17146462531039486101.a, A061395, A061395.P8431317036300486107.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A122111, A122111.P18124015185857335041.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A003602, A003602.P7612175048291952394.a, A006519, A006519.P10435570611646570274.a, A010684, A010684.P14019262024924378744.a, A029837, A029837.P1050578713049589.a, A048250, A048250.P6137918235727910070.a, A052126, A052126.P1944428405920482243.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A204455, A204455.P9449319865665436464.a, A309243, A309243.P2615360336711731693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336921

/-! ## A336921.P8443962732864053107

`A331410(n+1)-∑{e}[A000265(n+1), #]`
-/

namespace A336921.P8443962732864053107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A336921.P8443962732864053107

namespace A336921

/-- `A331410(n+1)-∑{e}[A000265(n+1), #]` -/
def P8443962732864053107.Spec : Prop :=
  ∀ n, P8443962732864053107.a n = A336921 (n + 1)

end A336921

/-! ## A336921.P6394503587023724069

`A331410(A003959(A000265(n+1)))`
-/

namespace A336921.P6394503587023724069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A003959 (A000265 (n + 1)).toNat).toNat

end

end A336921.P6394503587023724069

namespace A336921

/-- `A331410(A003959(A000265(n+1)))` -/
def P6394503587023724069.Spec : Prop :=
  ∀ n, P6394503587023724069.a n = A336921 (n + 1)

end A336921

/-! ## A336921.P3322637119733470152

`A331410(n+1)-A001222(A336158(n+1))`
-/

namespace A336921.P3322637119733470152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A001222 (A336158 (n + 1)).toNat

end

end A336921.P3322637119733470152

namespace A336921

/-- `A331410(n+1)-A001222(A336158(n+1))` -/
def P3322637119733470152.Spec : Prop :=
  ∀ n, P3322637119733470152.a n = A336921 (n + 1)

end A336921

/-! ## A336921.P1543258214077218814

`A005087(n+1)+A336922(n+1)-A087436(n+1)`
-/

namespace A336921.P1543258214077218814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + (A336922 (n + 1) - A087436 (n + 1))

end

end A336921.P1543258214077218814

namespace A336921

/-- `A005087(n+1)+A336922(n+1)-A087436(n+1)` -/
def P1543258214077218814.Spec : Prop :=
  ∀ n, P1543258214077218814.a n = A336921 (n + 1)

theorem P1543258214077218814.correct : P1543258214077218814.Spec := by
  intro n
  simp only [A336921, Nat.add_sub_cancel, A336921.P1543258214077218814.a, A336921.P608047927114178291.a, A005087, A005087.P16485891650271078461.f1, A005087.P16485891650271078461.a, A087436, A087436.P13287701826401831056.a, A331410, A331410.P1765792121065572382.a, A336922, A336922.P363598391234132890.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001511, A001511.P17146462531039486101.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A003602, A003602.P7612175048291952394.a, A006519, A006519.P10435570611646570274.a, A010684, A010684.P14019262024924378744.a, A029837, A029837.P1050578713049589.a, A048250, A048250.P6137918235727910070.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336921

/-! ## A336921.P14536350480207250462

`A335877(n+1)+A329697(n+1)-A001222((n+1)/and(n+1, -(n+1)))`
-/

namespace A336921.P14536350480207250462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + A329697 (n + 1) - A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A336921.P14536350480207250462

namespace A336921

/-- `A335877(n+1)+A329697(n+1)-A001222((n+1)/and(n+1, -(n+1)))` -/
def P14536350480207250462.Spec : Prop :=
  ∀ n, P14536350480207250462.a n = A336921 (n + 1)

end A336921

/-! ## A336921.P4856203759988177041

`A335877(n+1)+A329697(n+1)-A001222(A336158(n+1))`
-/

namespace A336921.P4856203759988177041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + A329697 (n + 1) - A001222 (A336158 (n + 1)).toNat

end

end A336921.P4856203759988177041

namespace A336921

/-- `A335877(n+1)+A329697(n+1)-A001222(A336158(n+1))` -/
def P4856203759988177041.Spec : Prop :=
  ∀ n, P4856203759988177041.a n = A336921 (n + 1)

end A336921

/-! ## A336921.P3137730900810579243

`A331410(n+1)-val(A181811(n+1), 2)`
-/

namespace A336921.P3137730900810579243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - (SequenceMachineLib.valuation (A181811 (n + 1)).toNat 2 : ℤ)

end

end A336921.P3137730900810579243

namespace A336921

/-- `A331410(n+1)-val(A181811(n+1), 2)` -/
def P3137730900810579243.Spec : Prop :=
  ∀ n, P3137730900810579243.a n = A336921 (n + 1)

end A336921

/-! ## A336921.P13432558055168791455

`A335877(n+1)+A329697(n+1)-val(A181811(n+1), 2)`
-/

namespace A336921.P13432558055168791455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + A329697 (n + 1) - (SequenceMachineLib.valuation (A181811 (n + 1)).toNat 2 : ℤ)

end

end A336921.P13432558055168791455

namespace A336921

/-- `A335877(n+1)+A329697(n+1)-val(A181811(n+1), 2)` -/
def P13432558055168791455.Spec : Prop :=
  ∀ n, P13432558055168791455.a n = A336921 (n + 1)

end A336921

/-!
# A336922: a(n) = A331410(n) - A005087(n).

The programs for A336922, the canonical program `A336922.P363598391234132890` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336922 has offset 1).

The definition of A336922 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005087, A331410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336922.P363598391234132890

`A331410(n+1)-A005087(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A336922

/-- `A331410(n+1)-A005087(n+1)` -/
def P363598391234132890.Spec : Prop :=
  ∀ n, P363598391234132890.a n = A336922 (n + 1)

theorem P363598391234132890.correct : P363598391234132890.Spec := by
  intro n
  simp only [A336922, Nat.add_sub_cancel]

end A336922

/-! ## A336922.P7872800640323654625

`A336921(n+1)+A046660(A000265(n+1))`
-/

namespace A336922.P7872800640323654625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (n + 1) + A046660 (A000265 (n + 1)).toNat

end

end A336922.P7872800640323654625

namespace A336922

/-- `A336921(n+1)+A046660(A000265(n+1))` -/
def P7872800640323654625.Spec : Prop :=
  ∀ n, P7872800640323654625.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P9142967416552525447

`A331410(A159634(n+1))`
-/

namespace A336922.P9142967416552525447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A159634 (n + 1)).toNat

end

end A336922.P9142967416552525447

namespace A336922

/-- `A331410(A159634(n+1))` -/
def P9142967416552525447.Spec : Prop :=
  ∀ n, P9142967416552525447.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P13222857387949128381

`A331410(A253629(n+1))`
-/

namespace A336922.P13222857387949128381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A253629 (n + 1)).toNat

end

end A336922.P13222857387949128381

namespace A336922

/-- `A331410(A253629(n+1))` -/
def P13222857387949128381.Spec : Prop :=
  ∀ n, P13222857387949128381.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P16199601036827840368

`A331410(A347385(n+1))`
-/

namespace A336922.P16199601036827840368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A347385 (n + 1)).toNat

end

end A336922.P16199601036827840368

namespace A336922

/-- `A331410(A347385(n+1))` -/
def P16199601036827840368.Spec : Prop :=
  ∀ n, P16199601036827840368.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P3261792630031373707

`A336469(n+1)+A335877(n+1)`
-/

namespace A336922.P3261792630031373707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (n + 1) + A335877 (n + 1)

end

end A336922.P3261792630031373707

namespace A336922

/-- `A336469(n+1)+A335877(n+1)` -/
def P3261792630031373707.Spec : Prop :=
  ∀ n, P3261792630031373707.a n = A336922 (n + 1)

theorem P3261792630031373707.correct : P3261792630031373707.Spec := by
  intro n
  simp only [A336922, Nat.add_sub_cancel, A336922.P3261792630031373707.a, A336922.P363598391234132890.a, A005087, A005087.P16485891650271078461.f1, A005087.P16485891650271078461.a, A331410, A331410.P1765792121065572382.a, A335877, A335877.P9922726367996187859.a, A336469, A336469.P9620185897901534165.a, A087436, A087436.P13287701826401831056.a, A329697, A329697.P6355568551452954971.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A003602, A003602.P7612175048291952394.a, A010684, A010684.P14019262024924378744.a, A048250, A048250.P6137918235727910070.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A204455, A204455.P9449319865665436464.a, A309243, A309243.P2615360336711731693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336922

/-! ## A336922.P3938757593609263381

`A331410(n+1)+1-A099812(n+1)`
-/

namespace A336922.P3938757593609263381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) + (1 - A099812 (n + 1))

end

end A336922.P3938757593609263381

namespace A336922

/-- `A331410(n+1)+1-A099812(n+1)` -/
def P3938757593609263381.Spec : Prop :=
  ∀ n, P3938757593609263381.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P5046718093817144260

`A331410(n+1)+1-A001221(2*(n+1))`
-/

namespace A336922.P5046718093817144260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) + 1 - A001221 (2 * (n + 1))

end

end A336922.P5046718093817144260

namespace A336922

/-- `A331410(n+1)+1-A001221(2*(n+1))` -/
def P5046718093817144260.Spec : Prop :=
  ∀ n, P5046718093817144260.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P9933968002210447418

`A331410(A001615(A000265(n+1)))`
-/

namespace A336922.P9933968002210447418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A001615 (A000265 (n + 1)).toNat).toNat

end

end A336922.P9933968002210447418

namespace A336922

/-- `A331410(A001615(A000265(n+1)))` -/
def P9933968002210447418.Spec : Prop :=
  ∀ n, P9933968002210447418.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P1121706043920082064

`A331410(n+1)-A001221(A000265(n+1))`
-/

namespace A336922.P1121706043920082064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A001221 (A000265 (n + 1)).toNat

end

end A336922.P1121706043920082064

namespace A336922

/-- `A331410(n+1)-A001221(A000265(n+1))` -/
def P1121706043920082064.Spec : Prop :=
  ∀ n, P1121706043920082064.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P349321019582557385

`A331410(n+1)-A001221(A153733(n)+1)`
-/

namespace A336922.P349321019582557385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A001221 (A153733 n + 1).toNat

end

end A336922.P349321019582557385

namespace A336922

/-- `A331410(n+1)-A001221(A153733(n)+1)` -/
def P349321019582557385.Spec : Prop :=
  ∀ n, P349321019582557385.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P11953453298592558932

`A331410(n+1)-A001221(A336158(n+1))`
-/

namespace A336922.P11953453298592558932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A001221 (A336158 (n + 1)).toNat

end

end A336922.P11953453298592558932

namespace A336922

/-- `A331410(n+1)-A001221(A336158(n+1))` -/
def P11953453298592558932.Spec : Prop :=
  ∀ n, P11953453298592558932.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P10795463745686433458

`A331410(A166466(n+1))-A001221(2*(n+1))`
-/

namespace A336922.P10795463745686433458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A166466 (n + 1)).toNat - A001221 (2 * (n + 1))

end

end A336922.P10795463745686433458

namespace A336922

/-- `A331410(A166466(n+1))-A001221(2*(n+1))` -/
def P10795463745686433458.Spec : Prop :=
  ∀ n, P10795463745686433458.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P18203205503856231716

`A331410(n+1)-A001221(A166466(n+1)/3)`
-/

namespace A336922.P18203205503856231716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A001221 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

end

end A336922.P18203205503856231716

namespace A336922

/-- `A331410(n+1)-A001221(A166466(n+1)/3)` -/
def P18203205503856231716.Spec : Prop :=
  ∀ n, P18203205503856231716.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P16407355629051133216

`A087436(n+1)+A336921(n+1)-A005087(n+1)`
-/

namespace A336922.P16407355629051133216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) + (A336921 (n + 1) - A005087 (n + 1))

end

end A336922.P16407355629051133216

namespace A336922

/-- `A087436(n+1)+A336921(n+1)-A005087(n+1)` -/
def P16407355629051133216.Spec : Prop :=
  ∀ n, P16407355629051133216.a n = A336922 (n + 1)

theorem P16407355629051133216.correct : P16407355629051133216.Spec := by
  intro n
  simp only [A336922, Nat.add_sub_cancel, A336922.P16407355629051133216.a, A336922.P363598391234132890.a, A005087, A005087.P16485891650271078461.f1, A005087.P16485891650271078461.a, A087436, A087436.P13287701826401831056.a, A331410, A331410.P1765792121065572382.a, A336921, A336921.P608047927114178291.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001511, A001511.P17146462531039486101.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A003602, A003602.P7612175048291952394.a, A006519, A006519.P10435570611646570274.a, A010684, A010684.P14019262024924378744.a, A029837, A029837.P1050578713049589.a, A048250, A048250.P6137918235727910070.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336922

/-! ## A336922.P8388683707087652493

`A334097(n+1)-(A334098(n+1)+A005087(n+1))`
-/

namespace A336922.P8388683707087652493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - (A334098 (n + 1) + A005087 (n + 1))

end

end A336922.P8388683707087652493

namespace A336922

/-- `A334097(n+1)-(A334098(n+1)+A005087(n+1))` -/
def P8388683707087652493.Spec : Prop :=
  ∀ n, P8388683707087652493.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P10441228977397952387

`A331410(n+1)+A336469(n+1)-A329697(n+1)`
-/

namespace A336922.P10441228977397952387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) + (A336469 (n + 1) - A329697 (n + 1))

end

end A336922.P10441228977397952387

namespace A336922

/-- `A331410(n+1)+A336469(n+1)-A329697(n+1)` -/
def P10441228977397952387.Spec : Prop :=
  ∀ n, P10441228977397952387.a n = A336922 (n + 1)

theorem P10441228977397952387.correct : P10441228977397952387.Spec := by
  intro n
  simp only [A336922, Nat.add_sub_cancel, A336922.P10441228977397952387.a, A336922.P363598391234132890.a, A005087, A005087.P16485891650271078461.f1, A005087.P16485891650271078461.a, A329697, A329697.P6355568551452954971.a, A331410, A331410.P1765792121065572382.a, A336469, A336469.P9620185897901534165.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A052126, A052126.P1944428405920482243.a, A206787, A206787.P5835391057460083436.a, A309243, A309243.P2615360336711731693.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A003602, A003602.P7612175048291952394.a, A006530, A006530.P13372528560459906635.a, A010684, A010684.P14019262024924378744.a, A048250, A048250.P6137918235727910070.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A171462, A171462.P186066025836437895.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336922

/-! ## A336922.P16712232271766344943

`A331410(n+1)-A001221((n+1)/A006519(n+1))`
-/

namespace A336922.P16712232271766344943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A336922.P16712232271766344943

namespace A336922

/-- `A331410(n+1)-A001221((n+1)/A006519(n+1))` -/
def P16712232271766344943.Spec : Prop :=
  ∀ n, P16712232271766344943.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P17038694294606939284

`A335877(n+1)+A329697(n+1)-(A001221(2*(n+1))-1)`
-/

namespace A336922.P17038694294606939284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + A329697 (n + 1) - (A001221 (2 * (n + 1)) - 1)

end

end A336922.P17038694294606939284

namespace A336922

/-- `A335877(n+1)+A329697(n+1)-(A001221(2*(n+1))-1)` -/
def P17038694294606939284.Spec : Prop :=
  ∀ n, P17038694294606939284.a n = A336922 (n + 1)

end A336922

/-! ## A336922.P14419105759770870158

`A335877(n+1)+A329697(n+1)-A001221(A336158(n+1))`
-/

namespace A336922.P14419105759770870158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + A329697 (n + 1) - A001221 (A336158 (n + 1)).toNat

end

end A336922.P14419105759770870158

namespace A336922

/-- `A335877(n+1)+A329697(n+1)-A001221(A336158(n+1))` -/
def P14419105759770870158.Spec : Prop :=
  ∀ n, P14419105759770870158.a n = A336922 (n + 1)

end A336922

/-!
# A336923: a(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

The programs for A336923, the canonical program `A336923.P12863410329301155014` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336923 has offset 1).

The definition of A336923 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336923.P12863410329301155014

`A209229(A002131(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336923

/-- `A209229(A002131(n+1))` -/
def P12863410329301155014.Spec : Prop :=
  ∀ n, P12863410329301155014.a n = A336923 (n + 1)

theorem P12863410329301155014.correct : P12863410329301155014.Spec := by
  intro n
  simp only [A336923, Nat.add_sub_cancel]

end A336923

/-! ## A336923.P9618817521042075286

`A209229(A054785(n+1))`
-/

namespace A336923.P9618817521042075286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A054785 (n + 1)).toNat

end

end A336923.P9618817521042075286

namespace A336923

/-- `A209229(A054785(n+1))` -/
def P9618817521042075286.Spec : Prop :=
  ∀ n, P9618817521042075286.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P3446988462301955276

`A209229(A062731(n+1)-A000203(n+1))`
-/

namespace A336923.P3446988462301955276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A062731 (n + 1) - A000203 (n + 1)).toNat

end

end A336923.P3446988462301955276

namespace A336923

/-- `A209229(A062731(n+1)-A000203(n+1))` -/
def P3446988462301955276.Spec : Prop :=
  ∀ n, P3446988462301955276.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P6595715485431298721

`∏{p}[∑{d}[(n+1)/and(n+1, -(n+1)), #], val(#, 2)]`
-/

namespace A336923.P6595715485431298721
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2

end

end A336923.P6595715485431298721

namespace A336923

/-- `∏{p}[∑{d}[(n+1)/and(n+1, -(n+1)), #], val(#, 2)]` -/
def P6595715485431298721.Spec : Prop :=
  ∀ n, (P6595715485431298721.a n : ℤ) = A336923 (n + 1)

end A336923

/-! ## A336923.P5446379754567865135

`A347386(n+1)!%2`
-/

namespace A336923.P5446379754567865135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A347386 (n + 1)).toNat % 2

end

end A336923.P5446379754567865135

namespace A336923

/-- `A347386(n+1)!%2` -/
def P5446379754567865135.Spec : Prop :=
  ∀ n, (P5446379754567865135.a n : ℤ) = A336923 (n + 1)

end A336923

/-! ## A336923.P6545359283728472556

`char[A054784(n+1)-1]`
-/

namespace A336923.P6545359283728472556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336923.P6545359283728472556

namespace A336923

/-- `char[A054784(n+1)-1]` -/
def P6545359283728472556.Spec : Prop :=
  ∀ n, (P6545359283728472556.a n : ℤ) = A336923 (n + 1)

end A336923

/-! ## A336923.P9832351298115887503

`char[eq[0, A336922(n+1)]]`
-/

namespace A336923.P9832351298115887503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336922 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A336923.P9832351298115887503

namespace A336923

/-- `char[eq[0, A336922(n+1)]]` -/
def P9832351298115887503.Spec : Prop :=
  ∀ n, (P9832351298115887503.a n : ℤ) = A336923 (n + 1)

end A336923

/-! ## A336923.P15440364544963645053

`char[lt[A336361(n+1), 2]]`
-/

namespace A336923.P15440364544963645053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336361 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A336923.P15440364544963645053

namespace A336923

/-- `char[lt[A336361(n+1), 2]]` -/
def P15440364544963645053.Spec : Prop :=
  ∀ n, (P15440364544963645053.a n : ℤ) = A336923 (n + 1)

end A336923

/-! ## A336923.P8555276467259197788

`C(n+1, A379108(n+1))`
-/

namespace A336923.P8555276467259197788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A379108 (n + 1)).toNat

end

end A336923.P8555276467259197788

namespace A336923

/-- `C(n+1, A379108(n+1))` -/
def P8555276467259197788.Spec : Prop :=
  ∀ n, (P8555276467259197788.a n : ℤ) = A336923 (n + 1)

end A336923

/-! ## A336923.P7566747928980940031

`∑{d}[n+1, #*A379219((n+1)/#)]`
-/

namespace A336923.P7566747928980940031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A379219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336923.P7566747928980940031

namespace A336923

/-- `∑{d}[n+1, #*A379219((n+1)/#)]` -/
def P7566747928980940031.Spec : Prop :=
  ∀ n, P7566747928980940031.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P7426800601224970684

`A036987(∑{d}[n+1, #]/xor(n, n+1)-1)`
-/

namespace A336923.P7426800601224970684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) - 1)).toNat

end

end A336923.P7426800601224970684

namespace A336923

/-- `A036987(∑{d}[n+1, #]/xor(n, n+1)-1)` -/
def P7426800601224970684.Spec : Prop :=
  ∀ n, P7426800601224970684.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P11045201053311018099

`A003958(∑{d}[n+1, #]/xor(n, n+1))%2`
-/

namespace A336923.P11045201053311018099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003958 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ))).toNat) 2

end

end A336923.P11045201053311018099

namespace A336923

/-- `A003958(∑{d}[n+1, #]/xor(n, n+1))%2` -/
def P11045201053311018099.Spec : Prop :=
  ∀ n, P11045201053311018099.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P3014219400492261754

`∏{p}[∑{d}[n+1, #]/xor(n, n+1), A007814(#)]`
-/

namespace A336923.P3014219400492261754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A007814 p

end

end A336923.P3014219400492261754

namespace A336923

/-- `∏{p}[∑{d}[n+1, #]/xor(n, n+1), A007814(#)]` -/
def P3014219400492261754.Spec : Prop :=
  ∀ n, P3014219400492261754.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P12274513610200076454

`∏{p}[∑{d}[n+1, #]/xor(n, n+1), A035363(#)]`
-/

namespace A336923.P12274513610200076454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A035363 p

end

end A336923.P12274513610200076454

namespace A336923

/-- `∏{p}[∑{d}[n+1, #]/xor(n, n+1), A035363(#)]` -/
def P12274513610200076454.Spec : Prop :=
  ∀ n, P12274513610200076454.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P4144006420311417604

`∏{p}[∑{d}[n+1, #]/xor(n, n+1), A053866(#)]`
-/

namespace A336923.P4144006420311417604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A053866 p

end

end A336923.P4144006420311417604

namespace A336923

/-- `∏{p}[∑{d}[n+1, #]/xor(n, n+1), A053866(#)]` -/
def P4144006420311417604.Spec : Prop :=
  ∀ n, P4144006420311417604.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P8973034826430635279

`∏{p}[∑{d}[n+1, #]/xor(n, n+1), A318315(#)]`
-/

namespace A336923.P8973034826430635279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A318315 p

end

end A336923.P8973034826430635279

namespace A336923

/-- `∏{p}[∑{d}[n+1, #]/xor(n, n+1), A318315(#)]` -/
def P8973034826430635279.Spec : Prop :=
  ∀ n, P8973034826430635279.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P1046133422920811792

`∏{p}[∑{d}[(n+1)/and(n+1, -(n+1)), #], A318889(#)]`
-/

namespace A336923.P1046133422920811792
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A318889 p

end

end A336923.P1046133422920811792

namespace A336923

/-- `∏{p}[∑{d}[(n+1)/and(n+1, -(n+1)), #], A318889(#)]` -/
def P1046133422920811792.Spec : Prop :=
  ∀ n, P1046133422920811792.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P14906203205782461567

`A209229(A000593(n+1))`
-/

namespace A336923.P14906203205782461567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A000593 (n + 1)).toNat

end

end A336923.P14906203205782461567

namespace A336923

/-- `A209229(A000593(n+1))` -/
def P14906203205782461567.Spec : Prop :=
  ∀ n, P14906203205782461567.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P6320423915465055358

`A000007(A336922(n+1))`
-/

namespace A336923.P6320423915465055358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A336922 (n + 1)).toNat

end

end A336923.P6320423915465055358

namespace A336923

/-- `A000007(A336922(n+1))` -/
def P6320423915465055358.Spec : Prop :=
  ∀ n, P6320423915465055358.a n = A336923 (n + 1)

end A336923

/-! ## A336923.P3982009221221343370

`A012245(A347240(n+1))`
-/

namespace A336923.P3982009221221343370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (A347240 (n + 1)).toNat

end

end A336923.P3982009221221343370

namespace A336923

/-- `A012245(A347240(n+1))` -/
def P3982009221221343370.Spec : Prop :=
  ∀ n, P3982009221221343370.a n = A336923 (n + 1)

end A336923

/-!
# A336924: a(n) = spf(1+sigma(n)), where spf is the smallest prime factor and sigma is the sum of divisors function.

The programs for A336924, there is no canonical definition to state claims against.
-/

/-! ## A336924.P6774040504650371052

`A020639(A088580(n+1))`
-/

namespace A336924.P6774040504650371052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088580 (n + 1)).toNat

end

end A336924.P6774040504650371052

/-! ## A336924.P9937938916723057429

`A020639(1+A000203(n+1))`
-/

namespace A336924.P9937938916723057429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 + A000203 (n + 1)).toNat

end

end A336924.P9937938916723057429

/-! ## A336924.P8425292884576599025

`A020639(∑{d}[n+1, #]+1)`
-/

namespace A336924.P8425292884576599025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A336924.P8425292884576599025

/-! ## A336924.P17826071522897680195

`A020639(Δ[A160664(n)]+1)`
-/

namespace A336924.P17826071522897680195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n + 1).toNat

end

end A336924.P17826071522897680195

/-! ## A336924.P579195894720058315

`A020639(A039653(n+1)+2)`
-/

namespace A336924.P579195894720058315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A039653 (n + 1) + 2).toNat

end

end A336924.P579195894720058315

/-! ## A336924.P1974919128473206039

`A020639(A155085(n+1)-n)`
-/

namespace A336924.P1974919128473206039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155085 (n + 1) - (n : ℤ)).toNat

end

end A336924.P1974919128473206039

/-! ## A336924.P5784495593762565102

`A020639(abs(A143348(n+1))+1)`
-/

namespace A336924.P5784495593762565102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (|A143348 (n + 1)| + 1).toNat

end

end A336924.P5784495593762565102

/-! ## A336924.P11657255002972771538

`A020639(∑[A340793(n+1)]+1)`
-/

namespace A336924.P11657255002972771538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A336924.P11657255002972771538

/-! ## A336924.P14569175390545930440

`A057237(A000203(n+1)+1)+1`
-/

namespace A336924.P14569175390545930440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A000203 (n + 1) + 1).toNat + 1

end

end A336924.P14569175390545930440

/-! ## A336924.P1444710863602181269

`A020639(A245092(2*n+1)+1)`
-/

namespace A336924.P1444710863602181269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A245092 (2 * n + 1) + 1).toNat

end

end A336924.P1444710863602181269

/-! ## A336924.P12580556584115565334

`A020639(A074400(n+1)/2+1)`
-/

namespace A336924.P12580556584115565334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A336924.P12580556584115565334

/-! ## A336924.P11680139260617853639

`A020639(A001065(n+1)+2+n)`
-/

namespace A336924.P11680139260617853639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001065 (n + 1) + 2 + (n : ℤ)).toNat

end

end A336924.P11680139260617853639

/-! ## A336924.P8360476455419896562

`A020639(A064987(n+1)/(n+1)+1)`
-/

namespace A336924.P8360476455419896562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 1)).toNat

end

end A336924.P8360476455419896562

/-! ## A336924.P16576404978196220569

`A020639(A325965(n+1)+A325966(n+1)+1)`
-/

namespace A336924.P16576404978196220569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A325965 (n + 1) + (A325966 (n + 1) + 1)).toNat

end

end A336924.P16576404978196220569

/-! ## A336924.P17400274220250720285

`A020639(A326065(n+1)+A326066(n+1)+1)`
-/

namespace A336924.P17400274220250720285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A326065 (n + 1) + (A326066 (n + 1) + 1)).toNat

end

end A336924.P17400274220250720285

/-! ## A336924.P9171938732962411430

`A020639(A326065(2*(n+1))+1)`
-/

namespace A336924.P9171938732962411430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A326065 (2 * (n + 1)) + 1).toNat

end

end A336924.P9171938732962411430

/-! ## A336924.P9418200537884754450

`A020639(A262610(2*n+1)+1)`
-/

namespace A336924.P9418200537884754450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A262610 (2 * n + 1) + 1).toNat

end

end A336924.P9418200537884754450

/-!
# A336925: Lexicographically earliest infinite sequence such that a(i) = a(j) => A336147(1+sigma(i)) = A336147(1+sigma(j)), for all i, j >= 1.

The programs for A336925, there is no canonical definition to state claims against.
-/

/-! ## A336925.P18041170712980093513

`A323892(A286603(n+1)%A347391(n+1))`
-/

namespace A336925.P18041170712980093513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323892 (Int.tmod (A286603 (n + 1)) (A347391 (n + 1))).toNat

end

end A336925.P18041170712980093513

/-! ## A336925.P13978417193877167795

`A319567(eq[1, A344606(2*(n+1))])`
-/

namespace A336925.P13978417193877167795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336925.P13978417193877167795

/-! ## A336925.P2978847427418076139

`gcd(A000010(A331449(n)), A049474(n))`
-/

namespace A336925.P2978847427418076139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A331449 n).toNat) (A049474 n)

end

end A336925.P2978847427418076139

/-! ## A336925.P5754096064173501450

`gcd(A243163(A000837(n)), A248227(n+1))`
-/

namespace A336925.P5754096064173501450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243163 (A000837 n).toNat) (A248227 (n + 1))

end

end A336925.P5754096064173501450

/-! ## A336925.P10125492791072684746

`gcd(A156253(n+1), A250219(A084937(n+1)))`
-/

namespace A336925.P10125492791072684746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156253 (n + 1)) (A250219 (A084937 (n + 1)).toNat)

end

end A336925.P10125492791072684746

/-!
# A336926: Lexicographically earliest infinite sequence such that a(i) = a(j) => A335880(1+sigma(i)) = A335880(1+sigma(j)), for all i, j >= 1.

The programs for A336926, there is no canonical definition to state claims against.
-/

/-! ## A336926.P6984393075380621019

`A037834(2*A020992(n+1))+A014707(n)`
-/

namespace A336926.P6984393075380621019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (2 * A020992 (n + 1)).toNat + A014707 n

end

end A336926.P6984393075380621019

/-! ## A336926.P331891006007140595

`A005811(2*A020992(n+1))-A014577(n)`
-/

namespace A336926.P331891006007140595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (2 * A020992 (n + 1)).toNat - A014577 n

end

end A336926.P331891006007140595

/-! ## A336926.P2444236402601039042

`gcd(A124056(n+1), A251740(A124050(n)))`
-/

namespace A336926.P2444236402601039042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124056 (n + 1)) (A251740 (A124050 n).toNat)

end

end A336926.P2444236402601039042

/-! ## A336926.P4542090136655362978

`A124767(A380248(n+1))+A053645(n+1)`
-/

namespace A336926.P4542090136655362978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A380248 (n + 1)).toNat + A053645 (n + 1)

end

end A336926.P4542090136655362978

/-! ## A336926.P11426138635670756677

`A253557(A217409(n+1)+n²-3*floor(n/2)²)`
-/

namespace A336926.P11426138635670756677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (A217409 (n + 1) + ((n ^ 2 : ℤ) - 3 * ⌊(n : ℚ) / 2⌋ ^ 2)).toNat

end

end A336926.P11426138635670756677

/-!
# A336927: Lexicographically earliest infinite sequence such that a(i) = a(j) => A335880(sigma(i)) = A335880(sigma(j)), for all i, j >= 1.

The programs for A336927, there is no canonical definition to state claims against.
-/

/-! ## A336927.P16900368815150432137

`A068063(A337194(n+1)*A337201(n+1))`
-/

namespace A336927.P16900368815150432137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A337194 (n + 1) * A337201 (n + 1)).toNat

end

end A336927.P16900368815150432137

/-! ## A336927.P13463996059306884510

`A005245(A318832(n+1)%∑{d}[A073941(2*n+5), #])`
-/

namespace A336927.P13463996059306884510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (Int.tmod (A318832 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)).toNat

end

end A336927.P13463996059306884510

/-! ## A336927.P915023703916132650

`A286520(3*A337194(n+1))`
-/

namespace A336927.P915023703916132650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286520 (3 * A337194 (n + 1)).toNat

end

end A336927.P915023703916132650

/-! ## A336927.P9610140332948372876

`A286520(lcm(3, A337194(n+1)))`
-/

namespace A336927.P9610140332948372876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286520 (Int.lcm 3 (A337194 (n + 1)))

end

end A336927.P9610140332948372876

/-! ## A336927.P14985713109121639059

`A114729(A366791(∑{d}[n+1, #])²)`
-/

namespace A336927.P14985713109121639059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114729 (A366791 (∑ d ∈ Nat.divisors (f1 n), d) ^ 2).toNat

end

end A336927.P14985713109121639059

/-!
# A336928: a(n) = A329697(sigma(n)), where A329697 is totally additive with a(2) = 0 and a(p) = 1 + a(p-1) for odd primes.

The programs for A336928, the canonical program `A336928.P14852767271506303772` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336928 has offset 1).

The definition of A336928 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336928.P14852767271506303772

`A329697(A000203(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336928

/-- `A329697(A000203(n+1))` -/
def P14852767271506303772.Spec : Prop :=
  ∀ n, P14852767271506303772.a n = A336928 (n + 1)

theorem P14852767271506303772.correct : P14852767271506303772.Spec := by
  intro n
  simp only [A336928, Nat.add_sub_cancel]

end A336928

/-! ## A336928.P3838984533170790701

`A329697(∑{d}[n+1, #])`
-/

namespace A336928.P3838984533170790701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A336928.P3838984533170790701

namespace A336928

/-- `A329697(∑{d}[n+1, #])` -/
def P3838984533170790701.Spec : Prop :=
  ∀ n, P3838984533170790701.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P2462199949170090648

`A329697(Δ[A160664(n)])`
-/

namespace A336928.P2462199949170090648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (f1 (n + 1) - f1 n).toNat

end

end A336928.P2462199949170090648

namespace A336928

/-- `A329697(Δ[A160664(n)])` -/
def P2462199949170090648.Spec : Prop :=
  ∀ n, P2462199949170090648.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P20459073604669932

`A329697(A161942(n+1))`
-/

namespace A336928.P20459073604669932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A161942 (n + 1)).toNat

end

end A336928.P20459073604669932

namespace A336928

/-- `A329697(A161942(n+1))` -/
def P20459073604669932.Spec : Prop :=
  ∀ n, P20459073604669932.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P6253043060609940215

`A329697(sqrt(A072861(n+1)))`
-/

namespace A336928.P6253043060609940215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A336928.P6253043060609940215

namespace A336928

/-- `A329697(sqrt(A072861(n+1)))` -/
def P6253043060609940215.Spec : Prop :=
  ∀ n, P6253043060609940215.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P7022351579346291342

`A329697(A039653(n+1)+1)`
-/

namespace A336928.P7022351579346291342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A039653 (n + 1) + 1).toNat

end

end A336928.P7022351579346291342

namespace A336928

/-- `A329697(A039653(n+1)+1)` -/
def P7022351579346291342.Spec : Prop :=
  ∀ n, P7022351579346291342.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P9379398752170572997

`A329697(A088580(n+1)-1)`
-/

namespace A336928.P9379398752170572997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A088580 (n + 1) - 1).toNat

end

end A336928.P9379398752170572997

namespace A336928

/-- `A329697(A088580(n+1)-1)` -/
def P9379398752170572997.Spec : Prop :=
  ∀ n, P9379398752170572997.a n = A336928 (n + 1)

theorem P9379398752170572997.correct : P9379398752170572997.Spec := by
  intro n
  simp only [A336928, Nat.add_sub_cancel, A336928.P9379398752170572997.a, A336928.P14852767271506303772.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A329697, A329697.P6355568551452954971.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A052126, A052126.P1944428405920482243.a, A309243, A309243.P2615360336711731693.a, A006530, A006530.P13372528560459906635.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336928

/-! ## A336928.P15023068105979705728

`A329697(A337194(n+1)-1)`
-/

namespace A336928.P15023068105979705728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A337194 (n + 1) - 1).toNat

end

end A336928.P15023068105979705728

namespace A336928

/-- `A329697(A337194(n+1)-1)` -/
def P15023068105979705728.Spec : Prop :=
  ∀ n, P15023068105979705728.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P12228791898993527982

`A329697(A074400(n+1)/2)`
-/

namespace A336928.P12228791898993527982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A336928.P12228791898993527982

namespace A336928

/-- `A329697(A074400(n+1)/2)` -/
def P12228791898993527982.Spec : Prop :=
  ∀ n, P12228791898993527982.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P12612174908709358366

`A329697(A005187(n+1)-A294898(n+1))`
-/

namespace A336928.P12612174908709358366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A005187 (n + 1) - A294898 (n + 1)).toNat

end

end A336928.P12612174908709358366

namespace A336928

/-- `A329697(A005187(n+1)-A294898(n+1))` -/
def P12612174908709358366.Spec : Prop :=
  ∀ n, P12612174908709358366.a n = A336928 (n + 1)

theorem P12612174908709358366.correct : P12612174908709358366.Spec := by
  intro n
  simp only [A336928, Nat.add_sub_cancel, A336928.P12612174908709358366.a, A336928.P14852767271506303772.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A294898, A294898.P11311681912968614755.a, A329697, A329697.P6355568551452954971.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A052126, A052126.P1944428405920482243.a, A309243, A309243.P2615360336711731693.a, A006530, A006530.P13372528560459906635.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336928

/-! ## A336928.P8167375026415948850

`A329697(A074400(n+1))`
-/

namespace A336928.P8167375026415948850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A074400 (n + 1)).toNat

end

end A336928.P8167375026415948850

namespace A336928

/-- `A329697(A074400(n+1))` -/
def P8167375026415948850.Spec : Prop :=
  ∀ n, P8167375026415948850.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P5594376455082366104

`A329697(A239050(n+1)/2)`
-/

namespace A336928.P5594376455082366104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A336928.P5594376455082366104

namespace A336928

/-- `A329697(A239050(n+1)/2)` -/
def P5594376455082366104.Spec : Prop :=
  ∀ n, P5594376455082366104.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P2531153209066759563

`A329697(A239050(n+1))`
-/

namespace A336928.P2531153209066759563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A239050 (n + 1)).toNat

end

end A336928.P2531153209066759563

namespace A336928

/-- `A329697(A239050(n+1))` -/
def P2531153209066759563.Spec : Prop :=
  ∀ n, P2531153209066759563.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P4695318030285548152

`A329697(A319528(n+1)/2)`
-/

namespace A336928.P4695318030285548152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat

end

end A336928.P4695318030285548152

namespace A336928

/-- `A329697(A319528(n+1)/2)` -/
def P4695318030285548152.Spec : Prop :=
  ∀ n, P4695318030285548152.a n = A336928 (n + 1)

end A336928

/-! ## A336928.P2460039676409146605

`A329697(A319528(n+1))`
-/

namespace A336928.P2460039676409146605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A319528 (n + 1)).toNat

end

end A336928.P2460039676409146605

namespace A336928

/-- `A329697(A319528(n+1))` -/
def P2460039676409146605.Spec : Prop :=
  ∀ n, P2460039676409146605.a n = A336928 (n + 1)

end A336928

/-!
# A336929: a(n) = A331410(sigma(n)), where A331410 is totally additive with a(2) = 0 and a(p) = 1 + a(p+1) for odd primes.

The programs for A336929, the canonical program `A336929.P9204731604146529055` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336929 has offset 1).

The definition of A336929 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331410, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336929.P9204731604146529055

`A331410(A000203(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A336929

/-- `A331410(A000203(n+1))` -/
def P9204731604146529055.Spec : Prop :=
  ∀ n, P9204731604146529055.a n = A336929 (n + 1)

theorem P9204731604146529055.correct : P9204731604146529055.Spec := by
  intro n
  simp only [A336929, Nat.add_sub_cancel]

end A336929

/-! ## A336929.P8128463811977589221

`A331410(∑{d}[n+1, #])`
-/

namespace A336929.P8128463811977589221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A336929.P8128463811977589221

namespace A336929

/-- `A331410(∑{d}[n+1, #])` -/
def P8128463811977589221.Spec : Prop :=
  ∀ n, P8128463811977589221.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P10632891379217542482

`A331410(A161942(n+1))`
-/

namespace A336929.P10632891379217542482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A161942 (n + 1)).toNat

end

end A336929.P10632891379217542482

namespace A336929

/-- `A331410(A161942(n+1))` -/
def P10632891379217542482.Spec : Prop :=
  ∀ n, P10632891379217542482.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P13091341881975280567

`A331410(A039653(n+1)+1)`
-/

namespace A336929.P13091341881975280567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A039653 (n + 1) + 1).toNat

end

end A336929.P13091341881975280567

namespace A336929

/-- `A331410(A039653(n+1)+1)` -/
def P13091341881975280567.Spec : Prop :=
  ∀ n, P13091341881975280567.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P7330697362265865957

`A331410(A088580(n+1)-1)`
-/

namespace A336929.P7330697362265865957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A088580 (n + 1) - 1).toNat

end

end A336929.P7330697362265865957

namespace A336929

/-- `A331410(A088580(n+1)-1)` -/
def P7330697362265865957.Spec : Prop :=
  ∀ n, P7330697362265865957.a n = A336929 (n + 1)

theorem P7330697362265865957.correct : P7330697362265865957.Spec := by
  intro n
  simp only [A336929, Nat.add_sub_cancel, A336929.P7330697362265865957.a, A336929.P9204731604146529055.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A331410, A331410.P1765792121065572382.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A003602, A003602.P7612175048291952394.a, A010684, A010684.P14019262024924378744.a, A048250, A048250.P6137918235727910070.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336929

/-! ## A336929.P7878790275359136790

`A331410(A074400(n+1)/2)`
-/

namespace A336929.P7878790275359136790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A336929.P7878790275359136790

namespace A336929

/-- `A331410(A074400(n+1)/2)` -/
def P7878790275359136790.Spec : Prop :=
  ∀ n, P7878790275359136790.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P13342306510986594055

`A331410(A001065(n+1)+1+n)`
-/

namespace A336929.P13342306510986594055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A336929.P13342306510986594055

namespace A336929

/-- `A331410(A001065(n+1)+1+n)` -/
def P13342306510986594055.Spec : Prop :=
  ∀ n, P13342306510986594055.a n = A336929 (n + 1)

theorem P13342306510986594055.correct : P13342306510986594055.Spec := by
  intro n
  simp only [A336929, Nat.add_sub_cancel, A336929.P13342306510986594055.a, A336929.P9204731604146529055.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A331410, A331410.P1765792121065572382.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A003602, A003602.P7612175048291952394.a, A010684, A010684.P14019262024924378744.a, A048250, A048250.P6137918235727910070.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336929

/-! ## A336929.P3460277363600394125

`A331410(A155085(n+1)-(n+1))`
-/

namespace A336929.P3460277363600394125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A336929.P3460277363600394125

namespace A336929

/-- `A331410(A155085(n+1)-(n+1))` -/
def P3460277363600394125.Spec : Prop :=
  ∀ n, P3460277363600394125.a n = A336929 (n + 1)

theorem P3460277363600394125.correct : P3460277363600394125.Spec := by
  intro n
  simp only [A336929, Nat.add_sub_cancel, A336929.P3460277363600394125.a, A336929.P9204731604146529055.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P3282672389110014595.a, A331410, A331410.P1765792121065572382.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A003602, A003602.P7612175048291952394.a, A010684, A010684.P14019262024924378744.a, A048250, A048250.P6137918235727910070.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336929

/-! ## A336929.P17919525601328082484

`A331410(A065387(n+1)-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A336929.P17919525601328082484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (SequenceMachineLib.roundAway ((A065387 (n + 1) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A336929.P17919525601328082484

namespace A336929

/-- `A331410(A065387(n+1)-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P17919525601328082484.Spec : Prop :=
  ∀ n, P17919525601328082484.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P3848273212804358177

`A331410(A051612(n+1)+A000010(n+1))`
-/

namespace A336929.P3848273212804358177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A051612 (n + 1) + A000010 (n + 1)).toNat

end

end A336929.P3848273212804358177

namespace A336929

/-- `A331410(A051612(n+1)+A000010(n+1))` -/
def P3848273212804358177.Spec : Prop :=
  ∀ n, P3848273212804358177.a n = A336929 (n + 1)

theorem P3848273212804358177.correct : P3848273212804358177.Spec := by
  intro n
  simp only [A336929, Nat.add_sub_cancel, A336929.P3848273212804358177.a, A336929.P9204731604146529055.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A331410, A331410.P1765792121065572382.a, A003557, A003557.P6364735403900941810.a, A087436, A087436.P13287701826401831056.a, A173557, A173557.P15666735857375843373.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A003602, A003602.P7612175048291952394.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A010684, A010684.P14019262024924378744.a, A048250, A048250.P6137918235727910070.a, A059841, A059841.P2666504972441551157.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A336929

/-! ## A336929.P2370309280899771359

`A331410(A065387(n+1)-A000010(n+1))`
-/

namespace A336929.P2370309280899771359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A065387 (n + 1) - A000010 (n + 1)).toNat

end

end A336929.P2370309280899771359

namespace A336929

/-- `A331410(A065387(n+1)-A000010(n+1))` -/
def P2370309280899771359.Spec : Prop :=
  ∀ n, P2370309280899771359.a n = A336929 (n + 1)

theorem P2370309280899771359.correct : P2370309280899771359.Spec := by
  intro n
  simp only [A336929, Nat.add_sub_cancel, A336929.P2370309280899771359.a, A336929.P9204731604146529055.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065387, A065387.P11284875715279330998.a, A331410, A331410.P1765792121065572382.a, A003557, A003557.P6364735403900941810.a, A087436, A087436.P13287701826401831056.a, A173557, A173557.P15666735857375843373.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001511, A001511.P17146462531039486101.a, A003602, A003602.P7612175048291952394.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A010684, A010684.P14019262024924378744.a, A048250, A048250.P6137918235727910070.a, A059841, A059841.P2666504972441551157.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A336929

/-! ## A336929.P12436140195452877685

`A331410(A039649(n+1)+A051612(n+1)-1)`
-/

namespace A336929.P12436140195452877685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A039649 (n + 1) + (A051612 (n + 1) - 1)).toNat

end

end A336929.P12436140195452877685

namespace A336929

/-- `A331410(A039649(n+1)+A051612(n+1)-1)` -/
def P12436140195452877685.Spec : Prop :=
  ∀ n, P12436140195452877685.a n = A336929 (n + 1)

theorem P12436140195452877685.correct : P12436140195452877685.Spec := by
  intro n
  simp only [A336929, Nat.add_sub_cancel, A336929.P12436140195452877685.a, A336929.P9204731604146529055.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A039649, A039649.P16717312505280968063.a, A051612, A051612.P4135239823752248514.a, A331410, A331410.P1765792121065572382.a, A000010, A000010.P4673923239450215316.a, A087436, A087436.P13287701826401831056.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P2772582252347773295.a, A001222, A001222.P11318177267732088261.a, A003557, A003557.P6364735403900941810.a, A007814, A007814.P13537437864234730737.a, A173557, A173557.P15666735857375843373.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A001221, A001221.P10258181745752134128.a, A001511, A001511.P17146462531039486101.a, A003602, A003602.P7612175048291952394.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A010684, A010684.P14019262024924378744.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A048250, A048250.P6137918235727910070.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A336929

/-! ## A336929.P15679828177486671121

`A331410(A074400(n+1))`
-/

namespace A336929.P15679828177486671121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A074400 (n + 1)).toNat

end

end A336929.P15679828177486671121

namespace A336929

/-- `A331410(A074400(n+1))` -/
def P15679828177486671121.Spec : Prop :=
  ∀ n, P15679828177486671121.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P6266964263114924767

`A331410(A239050(n+1)/2)`
-/

namespace A336929.P6266964263114924767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A336929.P6266964263114924767

namespace A336929

/-- `A331410(A239050(n+1)/2)` -/
def P6266964263114924767.Spec : Prop :=
  ∀ n, P6266964263114924767.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P15881138213654468119

`A331410(A239050(n+1))`
-/

namespace A336929.P15881138213654468119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A239050 (n + 1)).toNat

end

end A336929.P15881138213654468119

namespace A336929

/-- `A331410(A239050(n+1))` -/
def P15881138213654468119.Spec : Prop :=
  ∀ n, P15881138213654468119.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P2202453748311080163

`A331410(A319528(n+1)/2)`
-/

namespace A336929.P2202453748311080163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat

end

end A336929.P2202453748311080163

namespace A336929

/-- `A331410(A319528(n+1)/2)` -/
def P2202453748311080163.Spec : Prop :=
  ∀ n, P2202453748311080163.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P678518391252399873

`A331410(A319528(n+1))`
-/

namespace A336929.P678518391252399873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A319528 (n + 1)).toNat

end

end A336929.P678518391252399873

namespace A336929

/-- `A331410(A319528(n+1))` -/
def P678518391252399873.Spec : Prop :=
  ∀ n, P678518391252399873.a n = A336929 (n + 1)

end A336929

/-! ## A336929.P250231411545293140

`A331410(A227131(n+1)²)/2`
-/

namespace A336929.P250231411545293140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331410 (A227131 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A336929.P250231411545293140

namespace A336929

/-- `A331410(A227131(n+1)²)/2` -/
def P250231411545293140.Spec : Prop :=
  ∀ n, P250231411545293140.a n = (A336929 (n + 1) : ℚ)

end A336929

/-!
# A336930: Numbers k such that the 2-adic valuation of A003973(k), the sum of divisors of the prime shifted k is equal to the 2-adic valuation of the number of divisors of k.

The programs for A336930, the canonical program `A336930.P726697693823606341` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336930 has offset 1).

The definition of A336930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336930.P726697693823606341

`record[gcd(n+1, A336931(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336930

/-- `record[gcd(n+1, A336931(n+1))]` -/
def P726697693823606341.Spec : Prop :=
  ∀ n, (P726697693823606341.a n : ℤ) = A336930 (n + 1)

theorem P726697693823606341.correct : P726697693823606341.Spec := by
  intro n
  simp only [A336930, Nat.add_sub_cancel]

end A336930

/-! ## A336930.P9904675590867222458

`eq[0, A336931(n+1)]+1`
-/

namespace A336930.P9904675590867222458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336930.P9904675590867222458

namespace A336930

/-- `eq[0, A336931(n+1)]+1` -/
def P9904675590867222458.Spec : Prop :=
  ∀ n, (P9904675590867222458.a n : ℤ) = A336930 (n + 1)

end A336930

/-! ## A336930.P3805252567437306107

`eq[A295664(n+1), A336932(n+1)]+1`
-/

namespace A336930.P3805252567437306107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336930.P3805252567437306107

namespace A336930

/-- `eq[A295664(n+1), A336932(n+1)]+1` -/
def P3805252567437306107.Spec : Prop :=
  ∀ n, (P3805252567437306107.a n : ℤ) = A336930 (n + 1)

end A336930

/-! ## A336930.P7708446792365479463

`eq[2, gcd(2, A336837(n+1))]+1`
-/

namespace A336930.P7708446792365479463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A336837 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336930.P7708446792365479463

namespace A336930

/-- `eq[2, gcd(2, A336837(n+1))]+1` -/
def P7708446792365479463.Spec : Prop :=
  ∀ n, (P7708446792365479463.a n : ℤ) = A336930 (n + 1)

end A336930

/-! ## A336930.P18422348201063423936

`lt[0, A336838(n+1)%2]+1`
-/

namespace A336930.P18422348201063423936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336838 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336930.P18422348201063423936

namespace A336930

/-- `lt[0, A336838(n+1)%2]+1` -/
def P18422348201063423936.Spec : Prop :=
  ∀ n, (P18422348201063423936.a n : ℤ) = A336930 (n + 1)

end A336930

/-! ## A336930.P1119067210056271181

`eq[1, A336848(n+1)%2]+1`
-/

namespace A336930.P1119067210056271181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336848 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336930.P1119067210056271181

namespace A336930

/-- `eq[1, A336848(n+1)%2]+1` -/
def P1119067210056271181.Spec : Prop :=
  ∀ n, (P1119067210056271181.a n : ℤ) = A336930 (n + 1)

end A336930

/-! ## A336930.P10261483767126894523

`eq[1, A336838(abs(1-n)+1)%2]`
-/

namespace A336930.P10261483767126894523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336838 (|1 - (n : ℤ)| + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336930.P10261483767126894523

namespace A336930

/-- `eq[1, A336838(abs(1-n)+1)%2]` -/
def P10261483767126894523.Spec : Prop :=
  ∀ n, (P10261483767126894523.a n : ℤ) = A336930 (n + 1)

end A336930

/-! ## A336930.P14049599236339624294

`eq[A000007(n), A336931(A008486(n))]`
-/

namespace A336930.P14049599236339624294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336931 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336930.P14049599236339624294

namespace A336930

/-- `eq[A000007(n), A336931(A008486(n))]` -/
def P14049599236339624294.Spec : Prop :=
  ∀ n, (P14049599236339624294.a n : ℤ) = A336930 (n + 1)

end A336930

/-! ## A336930.P15685349790286796070

`eq[2, A020639(A336838(n+1)+1)]+1`
-/

namespace A336930.P15685349790286796070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A336838 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336930.P15685349790286796070

namespace A336930

/-- `eq[2, A020639(A336838(n+1)+1)]+1` -/
def P15685349790286796070.Spec : Prop :=
  ∀ n, (P15685349790286796070.a n : ℤ) = A336930 (n + 1)

end A336930

/-! ## A336930.P6552893122115752021

`eq[1, A001511(A336838(n+1))]+1`
-/

namespace A336930.P6552893122115752021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A336838 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336930.P6552893122115752021

namespace A336930

/-- `eq[1, A001511(A336838(n+1))]+1` -/
def P6552893122115752021.Spec : Prop :=
  ∀ n, (P6552893122115752021.a n : ℤ) = A336930 (n + 1)

end A336930

/-!
# A336931: Difference between the 2-adic valuation of A003973(n) [= the sum of divisors of the prime shifted n] and the 2-adic valuation of the number of divisors of n.

The programs for A336931, the canonical program `A336931.P13387050893284357146` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336931 has offset 1).

The definition of A336931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336932, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336931.P13387050893284357146

`A336932(n+1)-A295664(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336931

/-- `A336932(n+1)-A295664(n+1)` -/
def P13387050893284357146.Spec : Prop :=
  ∀ n, P13387050893284357146.a n = A336931 (n + 1)

theorem P13387050893284357146.correct : P13387050893284357146.Spec := by
  intro n
  simp only [A336931, Nat.add_sub_cancel]

end A336931

/-! ## A336931.P3140544019837600129

`val(A336838(n+1), 2)`
-/

namespace A336931.P3140544019837600129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336838 (n + 1)).toNat 2

end

end A336931.P3140544019837600129

namespace A336931

/-- `val(A336838(n+1), 2)` -/
def P3140544019837600129.Spec : Prop :=
  ∀ n, (P3140544019837600129.a n : ℤ) = A336931 (n + 1)

end A336931

/-! ## A336931.P15235557240927163422

`val(A336848(n+1), 2)`
-/

namespace A336931.P15235557240927163422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336848 (n + 1)).toNat 2

end

end A336931.P15235557240927163422

namespace A336931

/-- `val(A336848(n+1), 2)` -/
def P15235557240927163422.Spec : Prop :=
  ∀ n, (P15235557240927163422.a n : ℤ) = A336931 (n + 1)

end A336931

/-! ## A336931.P649813702514468807

`A336932(n+1)-A007814(A000005(n+1))`
-/

namespace A336931.P649813702514468807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1) - A007814 (A000005 (n + 1)).toNat

end

end A336931.P649813702514468807

namespace A336931

/-- `A336932(n+1)-A007814(A000005(n+1))` -/
def P649813702514468807.Spec : Prop :=
  ∀ n, P649813702514468807.a n = A336931 (n + 1)

end A336931

/-! ## A336931.P16194076913960407242

`A336932(n+1)-A007814(A336856(n+1))`
-/

namespace A336931.P16194076913960407242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1) - A007814 (A336856 (n + 1)).toNat

end

end A336931.P16194076913960407242

namespace A336931

/-- `A336932(n+1)-A007814(A336856(n+1))` -/
def P16194076913960407242.Spec : Prop :=
  ∀ n, P16194076913960407242.a n = A336931 (n + 1)

end A336931

/-! ## A336931.P17054558829448767025

`A336937(A003961(n+1))-A295664(n+1)`
-/

namespace A336931.P17054558829448767025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (A003961 (n + 1)).toNat - A295664 (n + 1)

end

end A336931.P17054558829448767025

namespace A336931

/-- `A336937(A003961(n+1))-A295664(n+1)` -/
def P17054558829448767025.Spec : Prop :=
  ∀ n, P17054558829448767025.a n = A336931 (n + 1)

end A336931

/-! ## A336931.P13757927602172468192

`val(A057020(A003961(n+1)), 2)`
-/

namespace A336931.P13757927602172468192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057020 (A003961 (n + 1)).toNat).toNat 2

end

end A336931.P13757927602172468192

namespace A336931

/-- `val(A057020(A003961(n+1)), 2)` -/
def P13757927602172468192.Spec : Prop :=
  ∀ n, (P13757927602172468192.a n : ℤ) = A336931 (n + 1)

end A336931

/-! ## A336931.P8889780770752252339

`A007814(A336838(n+1))`
-/

namespace A336931.P8889780770752252339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A336838 (n + 1)).toNat

end

end A336931.P8889780770752252339

namespace A336931

/-- `A007814(A336838(n+1))` -/
def P8889780770752252339.Spec : Prop :=
  ∀ n, P8889780770752252339.a n = A336931 (n + 1)

end A336931

/-! ## A336931.P1150915002056535497

`A007814(A336848(n+1))`
-/

namespace A336931.P1150915002056535497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A336848 (n + 1)).toNat

end

end A336931.P1150915002056535497

namespace A336931

/-- `A007814(A336848(n+1))` -/
def P1150915002056535497.Spec : Prop :=
  ∀ n, P1150915002056535497.a n = A336931 (n + 1)

end A336931

/-! ## A336931.P13268988090869419057

`A007814(A003973(n+1))-A295664(n+1)`
-/

namespace A336931.P13268988090869419057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003973 (n + 1)).toNat - A295664 (n + 1)

end

end A336931.P13268988090869419057

namespace A336931

/-- `A007814(A003973(n+1))-A295664(n+1)` -/
def P13268988090869419057.Spec : Prop :=
  ∀ n, P13268988090869419057.a n = A336931 (n + 1)

end A336931

/-! ## A336931.P14426234851902107819

`A007814(A003973(n+1))-A007814(A000005(n+1))`
-/

namespace A336931.P14426234851902107819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003973 (n + 1)).toNat - A007814 (A000005 (n + 1)).toNat

end

end A336931.P14426234851902107819

namespace A336931

/-- `A007814(A003973(n+1))-A007814(A000005(n+1))` -/
def P14426234851902107819.Spec : Prop :=
  ∀ n, P14426234851902107819.a n = A336931 (n + 1)

end A336931

/-!
# A336932: The 2-adic valuation of A003973(n), the sum of divisors of prime shifted n.

The programs for A336932, the canonical program `A336932.P5144224243810443017` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336932 has offset 1).

The definition of A336932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336932.P5144224243810443017

`A336937(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336932

/-- `A336937(A003961(n+1))` -/
def P5144224243810443017.Spec : Prop :=
  ∀ n, P5144224243810443017.a n = A336932 (n + 1)

theorem P5144224243810443017.correct : P5144224243810443017.Spec := by
  intro n
  simp only [A336932, Nat.add_sub_cancel]

end A336932

/-! ## A336932.P18105434481943754939

`A007814(A003973(n+1))`
-/

namespace A336932.P18105434481943754939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003973 (n + 1)).toNat

end

end A336932.P18105434481943754939

namespace A336932

/-- `A007814(A003973(n+1))` -/
def P18105434481943754939.Spec : Prop :=
  ∀ n, P18105434481943754939.a n = A336932 (n + 1)

end A336932

/-! ## A336932.P17598522969417358495

`val(A341525(n+1), 2)`
-/

namespace A336932.P17598522969417358495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A341525 (n + 1)).toNat 2

end

end A336932.P17598522969417358495

namespace A336932

/-- `val(A341525(n+1), 2)` -/
def P17598522969417358495.Spec : Prop :=
  ∀ n, (P17598522969417358495.a n : ℤ) = A336932 (n + 1)

end A336932

/-! ## A336932.P8110421817252511274

`val(A361467(n+1), 2)`
-/

namespace A336932.P8110421817252511274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A361467 (n + 1)).toNat 2

end

end A336932.P8110421817252511274

namespace A336932

/-- `val(A361467(n+1), 2)` -/
def P8110421817252511274.Spec : Prop :=
  ∀ n, (P8110421817252511274.a n : ℤ) = A336932 (n + 1)

end A336932

/-! ## A336932.P3715276373600371047

`val(A361468(n+1), 2)`
-/

namespace A336932.P3715276373600371047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A361468 (n + 1)).toNat 2

end

end A336932.P3715276373600371047

namespace A336932

/-- `val(A361468(n+1), 2)` -/
def P3715276373600371047.Spec : Prop :=
  ∀ n, (P3715276373600371047.a n : ℤ) = A336932 (n + 1)

end A336932

/-! ## A336932.P13748665895888798445

`A336931(n+1)+A295664(n+1)`
-/

namespace A336932.P13748665895888798445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336931 (n + 1) + A295664 (n + 1)

end

end A336932.P13748665895888798445

namespace A336932

/-- `A336931(n+1)+A295664(n+1)` -/
def P13748665895888798445.Spec : Prop :=
  ∀ n, P13748665895888798445.a n = A336932 (n + 1)

theorem P13748665895888798445.correct : P13748665895888798445.Spec := by
  intro n
  simp only [A336932, Nat.add_sub_cancel, A336932.P13748665895888798445.a, A336932.P5144224243810443017.a, A003961, A003961.P5996473960037614004.a, A295664, A295664.P6712857258460992871.a, A336931, A336931.P13387050893284357146.a, A336937, A336937.P4577035631224528791.a, A000005, A000005.P16091521709108585461.a, A007814, A007814.P13537437864234730737.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A286357, A286357.P14769850405548421969.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001511, A001511.P17146462531039486101.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A252749, A252749.P15054942815197957636.a, A006519, A006519.P10435570611646570274.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336932

/-! ## A336932.P2616029828550954769

`A336931(n+1)+A007814(A000005(n+1))`
-/

namespace A336932.P2616029828550954769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336931 (n + 1) + A007814 (A000005 (n + 1)).toNat

end

end A336932.P2616029828550954769

namespace A336932

/-- `A336931(n+1)+A007814(A000005(n+1))` -/
def P2616029828550954769.Spec : Prop :=
  ∀ n, P2616029828550954769.a n = A336932 (n + 1)

theorem P2616029828550954769.correct : P2616029828550954769.Spec := by
  intro n
  simp only [A336932, Nat.add_sub_cancel, A336932.P2616029828550954769.a, A336932.P5144224243810443017.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A007814, A007814.P13537437864234730737.a, A336931, A336931.P13387050893284357146.a, A336937, A336937.P4577035631224528791.a, A001511, A001511.P17146462531039486101.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A286357, A286357.P14769850405548421969.a, A295664, A295664.P6712857258460992871.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006519, A006519.P10435570611646570274.a, A252749, A252749.P15054942815197957636.a, A171977, A171977.P14092944863121073856.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336932

/-! ## A336932.P3487152553437825300

`val(A000203(A253885(n)+1), 2)`
-/

namespace A336932.P3487152553437825300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (A253885 n + 1).toNat).toNat 2

end

end A336932.P3487152553437825300

namespace A336932

/-- `val(A000203(A253885(n)+1), 2)` -/
def P3487152553437825300.Spec : Prop :=
  ∀ n, (P3487152553437825300.a n : ℤ) = A336932 (n + 1)

end A336932

/-! ## A336932.P4841306435311158578

`val(A000203(2*A048673(n+1)-1), 2)`
-/

namespace A336932.P4841306435311158578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (2 * A048673 (n + 1) - 1).toNat).toNat 2

end

end A336932.P4841306435311158578

namespace A336932

/-- `val(A000203(2*A048673(n+1)-1), 2)` -/
def P4841306435311158578.Spec : Prop :=
  ∀ n, (P4841306435311158578.a n : ℤ) = A336932 (n + 1)

end A336932

/-! ## A336932.P11784801203292147752

`val(A000203(round(A246676(4*n+2)/3)), 2)`
-/

namespace A336932.P11784801203292147752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3)).toNat).toNat 2

end

end A336932.P11784801203292147752

namespace A336932

/-- `val(A000203(round(A246676(4*n+2)/3)), 2)` -/
def P11784801203292147752.Spec : Prop :=
  ∀ n, (P11784801203292147752.a n : ℤ) = A336932 (n + 1)

end A336932

/-! ## A336932.P8606356474851194595

`A336937(A045965(n+1))`
-/

namespace A336932.P8606356474851194595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (A045965 (n + 1)).toNat

end

end A336932.P8606356474851194595

namespace A336932

/-- `A336937(A045965(n+1))` -/
def P8606356474851194595.Spec : Prop :=
  ∀ n, P8606356474851194595.a n = A336932 (n + 1)

end A336932

/-! ## A336932.P10527211597607677220

`A361025(A003961(2*n+1-n))`
-/

namespace A336932.P10527211597607677220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361025 (A003961 (2 * n + 1 - n)).toNat

end

end A336932.P10527211597607677220

namespace A336932

/-- `A361025(A003961(2*n+1-n))` -/
def P10527211597607677220.Spec : Prop :=
  ∀ n, P10527211597607677220.a n = A336932 (n + 1)

end A336932

/-! ## A336932.P14189996003783068277

`val(A000203(A297166(2*(n+1))), 2)`
-/

namespace A336932.P14189996003783068277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (A297166 (2 * (n + 1))).toNat).toNat 2

end

end A336932.P14189996003783068277

namespace A336932

/-- `val(A000203(A297166(2*(n+1))), 2)` -/
def P14189996003783068277.Spec : Prop :=
  ∀ n, (P14189996003783068277.a n : ℤ) = A336932 (n + 1)

end A336932

/-! ## A336932.P13015102942104001352

`val(A064987(A297166(2*n+2)), 2)`
-/

namespace A336932.P13015102942104001352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064987 (A297166 (2 * n + 2)).toNat).toNat 2

end

end A336932.P13015102942104001352

namespace A336932

/-- `val(A064987(A297166(2*n+2)), 2)` -/
def P13015102942104001352.Spec : Prop :=
  ∀ n, (P13015102942104001352.a n : ℤ) = A336932 (n + 1)

end A336932

/-! ## A336932.P13928792297494264106

`A007814(A341525(n+1))`
-/

namespace A336932.P13928792297494264106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A341525 (n + 1)).toNat

end

end A336932.P13928792297494264106

namespace A336932

/-- `A007814(A341525(n+1))` -/
def P13928792297494264106.Spec : Prop :=
  ∀ n, P13928792297494264106.a n = A336932 (n + 1)

end A336932

/-! ## A336932.P6099806820955335394

`A007814(∑{d}[n+1, A003961(#)])`
-/

namespace A336932.P6099806820955335394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ d ∈ Nat.divisors (f1 n), A003961 d).toNat

end

end A336932.P6099806820955335394

namespace A336932

/-- `A007814(∑{d}[n+1, A003961(#)])` -/
def P6099806820955335394.Spec : Prop :=
  ∀ n, P6099806820955335394.a n = A336932 (n + 1)

end A336932

/-! ## A336932.P9548170575301182696

`A007814(∑{d}[A297166(2*(n+1)), #])`
-/

namespace A336932.P9548170575301182696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A336932.P9548170575301182696

namespace A336932

/-- `A007814(∑{d}[A297166(2*(n+1)), #])` -/
def P9548170575301182696.Spec : Prop :=
  ∀ n, P9548170575301182696.a n = A336932 (n + 1)

end A336932

/-! ## A336932.P2676602492163159445

`val(A337360(2*A003961(n+1)), 2)`
-/

namespace A336932.P2676602492163159445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337360 (2 * A003961 (n + 1)).toNat).toNat 2

end

end A336932.P2676602492163159445

namespace A336932

/-- `val(A337360(2*A003961(n+1)), 2)` -/
def P2676602492163159445.Spec : Prop :=
  ∀ n, (P2676602492163159445.a n : ℤ) = A336932 (n + 1)

end A336932

/-! ## A336932.P3488391298321891484

`A336937(A283980(n+1))`
-/

namespace A336932.P3488391298321891484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (A283980 (n + 1)).toNat

end

end A336932.P3488391298321891484

namespace A336932

/-- `A336937(A283980(n+1))` -/
def P3488391298321891484.Spec : Prop :=
  ∀ n, P3488391298321891484.a n = A336932 (n + 1)

end A336932

/-!
# A336933: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007733(i) = A007733(j), for all i, j >= 1.

The programs for A336933, there is no canonical definition to state claims against.
-/

/-! ## A336933.P3685106411512344003

`A278059(floor(n/(xor(n, n+1)+1))+1)%A029968(3*n+5)`
-/

namespace A336933.P3685106411512344003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278059 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat) (A029968 (3 * n + 5))

end

end A336933.P3685106411512344003

/-! ## A336933.P5822967489774489367

`A080342(A206743(A327076(n+1)))+1`
-/

namespace A336933.P5822967489774489367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A206743 (A327076 (n + 1)).toNat).toNat + 1

end

end A336933.P5822967489774489367

/-! ## A336933.P305074469246094365

`A115871(A003602(n+1))%p?[A005919(n)]`
-/

namespace A336933.P305074469246094365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115871 (A003602 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A336933.P305074469246094365

/-! ## A336933.P485009379527342341

`A115871(A336934(n+1)%p?[A005919(n)])`
-/

namespace A336933.P485009379527342341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (Int.tmod (A336934 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A336933.P485009379527342341

/-! ## A336933.P13971441372929054068

`A351453(2*n+2)-A320012(A134116(n+4))`
-/

namespace A336933.P13971441372929054068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351453 (2 * n + 2) - A320012 (A134116 (n + 4)).toNat

end

end A336933.P13971441372929054068

/-!
# A336934: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007733(i) = A007733(j) and A336158(i) = A336158(j), for all i, j >= 1.

The programs for A336934, there is no canonical definition to state claims against.
-/

/-! ## A336934.P6314543912611009832

`A291769(floor(n/(xor(n, n+1)+1)))`
-/

namespace A336934.P6314543912611009832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A336934.P6314543912611009832

/-! ## A336934.P13804534191030438620

`A291769(A025480(n))`
-/

namespace A336934.P13804534191030438620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A025480 n).toNat

end

end A336934.P13804534191030438620

/-! ## A336934.P805621655026559320

`A291769(A153733(n)/2)`
-/

namespace A336934.P805621655026559320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A336934.P805621655026559320

/-! ## A336934.P6837384633113077843

`A291769(A003602(n+1)-1)`
-/

namespace A336934.P6837384633113077843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A003602 (n + 1) - 1).toNat

end

end A336934.P6837384633113077843

/-! ## A336934.P6352994180415664764

`A291769(floor(A000265(n+1)/2))`
-/

namespace A336934.P6352994180415664764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 ⌊(A000265 (n + 1) : ℚ) / 2⌋.toNat

end

end A336934.P6352994180415664764

/-! ## A336934.P16533418398167438858

`A291769((A000265(n+1)-1)/2)`
-/

namespace A336934.P16533418398167438858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (SequenceMachineLib.roundAway ((A000265 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A336934.P16533418398167438858

/-!
# A336935: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007733(i) = A007733(j) and A278222(i) = A278222(j), for all i, j >= 1.

The programs for A336935, there is no canonical definition to state claims against.
-/

/-! ## A336935.P17731662659742430958

`A351035(n+1)%A036270(A349733(n+4))`
-/

namespace A336935.P17731662659742430958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351035 (n + 1)) (A036270 (A349733 (n + 4)).toNat)

end

end A336935.P17731662659742430958

/-! ## A336935.P12594543870890999286

`(floor(n/(xor(n, n+1)+1))+1)%A061157(A008951(n))`
-/

namespace A336935.P12594543870890999286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (A061157 (A008951 n).toNat)

end

end A336935.P12594543870890999286

/-! ## A336935.P4315492347242188948

`A003602(n+1)%A199424(A008732(n))`
-/

namespace A336935.P4315492347242188948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (n + 1)) (A199424 (A008732 n).toNat)

end

end A336935.P4315492347242188948

/-!
# A336936: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A007733(n), A329697(n), A331410(n)], for all i, j >= 1.

The programs for A336936, there is no canonical definition to state claims against.
-/

/-! ## A336936.P18153647429645794369

`A291766(A025480(n)%A024980(n+1))`
-/

namespace A336936.P18153647429645794369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (Int.tmod (A025480 n) (A024980 (n + 1))).toNat

end

end A336936.P18153647429645794369

/-! ## A336936.P12283335937480898131

`A291766(A025480(n))%A153413(n+1)`
-/

namespace A336936.P12283335937480898131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291766 (A025480 n).toNat) (A153413 (n + 1))

end

end A336936.P12283335937480898131

/-! ## A336936.P9887981218551189478

`A291766(A025480(n))+A000007(A161618(n+1))`
-/

namespace A336936.P9887981218551189478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (A025480 n).toNat + A000007 (A161618 (n + 1)).toNat

end

end A336936.P9887981218551189478

/-! ## A336936.P8449601176864575247

`A291766(A025480(n))+A000038(A169867(n+1))`
-/

namespace A336936.P8449601176864575247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (A025480 n).toNat + A000038 (A169867 (n + 1)).toNat

end

end A336936.P8449601176864575247

/-! ## A336936.P12092333570167029219

`A291766(A025480(n))^A008612(A151909(2*n))`
-/

namespace A336936.P12092333570167029219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291766 (A025480 n).toNat : ℚ) ^ (A008612 (A151909 (2 * n)).toNat : ℤ)

end

end A336936.P12092333570167029219

/-!
# A336937: The 2-adic valuation of sigma(n), the sum of divisors of n.

The programs for A336937, the canonical program `A336937.P4577035631224528791` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336937 has offset 1).

The definition of A336937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336937.P4577035631224528791

`A286357(n+1)-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336937

/-- `A286357(n+1)-1` -/
def P4577035631224528791.Spec : Prop :=
  ∀ n, P4577035631224528791.a n = A336937 (n + 1)

theorem P4577035631224528791.correct : P4577035631224528791.Spec := by
  intro n
  simp only [A336937, Nat.add_sub_cancel]

end A336937

/-! ## A336937.P4067387964577644591

`A007814(A000593(n+1))`
-/

namespace A336937.P4067387964577644591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000593 (n + 1)).toNat

end

end A336937.P4067387964577644591

namespace A336937

/-- `A007814(A000593(n+1))` -/
def P4067387964577644591.Spec : Prop :=
  ∀ n, P4067387964577644591.a n = A336937 (n + 1)

end A336937

/-! ## A336937.P9124860480457258292

`A007814(A000203(n+1))`
-/

namespace A336937.P9124860480457258292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000203 (n + 1)).toNat

end

end A336937.P9124860480457258292

namespace A336937

/-- `A007814(A000203(n+1))` -/
def P9124860480457258292.Spec : Prop :=
  ∀ n, P9124860480457258292.a n = A336937 (n + 1)

end A336937

/-! ## A336937.P13575354602091320724

`val(∑{d}[n+1, #], 2)`
-/

namespace A336937.P13575354602091320724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d) 2

end

end A336937.P13575354602091320724

namespace A336937

/-- `val(∑{d}[n+1, #], 2)` -/
def P13575354602091320724.Spec : Prop :=
  ∀ n, (P13575354602091320724.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P6634055595942938658

`val(∑{d}[2*n-(n-1), #]², 4)`
-/

namespace A336937.P6634055595942938658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2) 4

end

end A336937.P6634055595942938658

namespace A336937

/-- `val(∑{d}[2*n-(n-1), #]², 4)` -/
def P6634055595942938658.Spec : Prop :=
  ∀ n, (P6634055595942938658.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P13783775709012086203

`log2(A082903(n+1))`
-/

namespace A336937.P13783775709012086203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A082903 (n + 1) : ℝ)

end

end A336937.P13783775709012086203

namespace A336937

/-- `log2(A082903(n+1))` -/
def P13783775709012086203.Spec : Prop :=
  ∀ n, P13783775709012086203.a n = (A336937 (n + 1) : ℝ)

end A336937

/-! ## A336937.P9761948227503924396

`val(Δ[A160664(n)], 2)`
-/

namespace A336937.P9761948227503924396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A336937.P9761948227503924396

namespace A336937

/-- `val(Δ[A160664(n)], 2)` -/
def P9761948227503924396.Spec : Prop :=
  ∀ n, (P9761948227503924396.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P5155434916408773787

`val(A001158(n+1), 2)`
-/

namespace A336937.P5155434916408773787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001158 (n + 1)).toNat 2

end

end A336937.P5155434916408773787

namespace A336937

/-- `val(A001158(n+1), 2)` -/
def P5155434916408773787.Spec : Prop :=
  ∀ n, (P5155434916408773787.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P6906004330776957538

`val(A001160(n+1), 2)`
-/

namespace A336937.P6906004330776957538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001160 (n + 1)).toNat 2

end

end A336937.P6906004330776957538

namespace A336937

/-- `val(A001160(n+1), 2)` -/
def P6906004330776957538.Spec : Prop :=
  ∀ n, (P6906004330776957538.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P11957037915615254210

`val(A008457(n+1), 2)`
-/

namespace A336937.P11957037915615254210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008457 (n + 1)).toNat 2

end

end A336937.P11957037915615254210

namespace A336937

/-- `val(A008457(n+1), 2)` -/
def P11957037915615254210.Spec : Prop :=
  ∀ n, (P11957037915615254210.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P1308955893692747897

`val(A013955(n+1), 2)`
-/

namespace A336937.P1308955893692747897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013955 (n + 1)).toNat 2

end

end A336937.P1308955893692747897

namespace A336937

/-- `val(A013955(n+1), 2)` -/
def P1308955893692747897.Spec : Prop :=
  ∀ n, (P1308955893692747897.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P7379409822528177329

`val(A013957(n+1), 2)`
-/

namespace A336937.P7379409822528177329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013957 (n + 1)).toNat 2

end

end A336937.P7379409822528177329

namespace A336937

/-- `val(A013957(n+1), 2)` -/
def P7379409822528177329.Spec : Prop :=
  ∀ n, (P7379409822528177329.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P8480574652397367081

`val(A013959(n+1), 2)`
-/

namespace A336937.P8480574652397367081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013959 (n + 1)).toNat 2

end

end A336937.P8480574652397367081

namespace A336937

/-- `val(A013959(n+1), 2)` -/
def P8480574652397367081.Spec : Prop :=
  ∀ n, (P8480574652397367081.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P7500235582773922390

`val(A013961(n+1), 2)`
-/

namespace A336937.P7500235582773922390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013961 (n + 1)).toNat 2

end

end A336937.P7500235582773922390

namespace A336937

/-- `val(A013961(n+1), 2)` -/
def P7500235582773922390.Spec : Prop :=
  ∀ n, (P7500235582773922390.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P17834480080959317321

`val(A013967(n+1), 2)`
-/

namespace A336937.P17834480080959317321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013967 (n + 1)).toNat 2

end

end A336937.P17834480080959317321

namespace A336937

/-- `val(A013967(n+1), 2)` -/
def P17834480080959317321.Spec : Prop :=
  ∀ n, (P17834480080959317321.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P10929870647342091766

`val(A013969(n+1), 2)`
-/

namespace A336937.P10929870647342091766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013969 (n + 1)).toNat 2

end

end A336937.P10929870647342091766

namespace A336937

/-- `val(A013969(n+1), 2)` -/
def P10929870647342091766.Spec : Prop :=
  ∀ n, (P10929870647342091766.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P78852332313272853

`val(A046897(n+1), 2)`
-/

namespace A336937.P78852332313272853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046897 (n + 1)).toNat 2

end

end A336937.P78852332313272853

namespace A336937

/-- `val(A046897(n+1), 2)` -/
def P78852332313272853.Spec : Prop :=
  ∀ n, (P78852332313272853.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P2147654045516502870

`val(A051000(n+1), 2)`
-/

namespace A336937.P2147654045516502870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051000 (n + 1)).toNat 2

end

end A336937.P2147654045516502870

namespace A336937

/-- `val(A051000(n+1), 2)` -/
def P2147654045516502870.Spec : Prop :=
  ∀ n, (P2147654045516502870.a n : ℤ) = A336937 (n + 1)

end A336937

/-! ## A336937.P17768204475346160801

`val(A051002(n+1), 2)`
-/

namespace A336937.P17768204475346160801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051002 (n + 1)).toNat 2

end

end A336937.P17768204475346160801

namespace A336937

/-- `val(A051002(n+1), 2)` -/
def P17768204475346160801.Spec : Prop :=
  ∀ n, (P17768204475346160801.a n : ℤ) = A336937 (n + 1)

end A336937

/-!
# A336938: The maximum values of the sets A(n), where A(0) = {0} and A(n+1) is the union of A(n) and the Collatz orbit of the smallest natural number missing in A(n).

The programs for A336938, there is no canonical definition to state claims against.
-/

/-! ## A336938.P767783663589121627

`4*A107680(A255066(n))`
-/

namespace A336938.P767783663589121627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A107680 (A255066 n).toNat

end

end A336938.P767783663589121627

/-! ## A336938.P3846647007896195678

`A016777(A007955(a(floor(n/ϕ))+1))` with `a(0)=0`
-/

namespace A336938.P3846647007896195678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A016777 (A007955 (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat + 1).toNat).toNat

end

end A336938.P3846647007896195678

/-! ## A336938.P11758029898361734951

`A086419(A086452(round(sqrt(2*n))))`
-/

namespace A336938.P11758029898361734951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086419 (A086452 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat).toNat

end

end A336938.P11758029898361734951

/-! ## A336938.P4328384134815250880

`A100774(round(sqrt(2*n))%A104332(3*(n+1)))`
-/

namespace A336938.P4328384134815250880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100774 (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) (A104332 (3 * (n + 1)))).toNat

end

end A336938.P4328384134815250880

/-! ## A336938.P4866137290130395078

`A100774(A123578(n)%A211125(n+1))`
-/

namespace A336938.P4866137290130395078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100774 (Int.tmod (A123578 n) (A211125 (n + 1))).toNat

end

end A336938.P4866137290130395078

/-!
# A336939: Irregular triangle read by rows where T(n,k) is the number of divisors d of n! with k prime factors (counting multiplicity), such that both d and n!/d have distinct prime multiplicities.

The programs for A336939, there is no canonical definition to state claims against.
-/

/-! ## A336939.P479692918616987357

`and(A297467(A328464(2*n+5)), A336499(n))`
-/

namespace A336939.P479692918616987357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A297467 (A328464 (2 * n + 5)).toNat) (A336499 n)

end

end A336939.P479692918616987357

/-! ## A336939.P6348983723558341683

`A058398(A095688(n+1))%3`
-/

namespace A336939.P6348983723558341683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058398 (A095688 (n + 1)).toNat) 3

end

end A336939.P6348983723558341683

/-! ## A336939.P12970721717205653175

`A125079(A341388(n+8)%A157134(n+2))`
-/

namespace A336939.P12970721717205653175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (Int.tmod (A341388 (n + 8)) (A157134 (n + 2))).toNat

end

end A336939.P12970721717205653175

/-! ## A336939.P16197501575368611581

`A270413(n+1)%p?[A170959(n)]`
-/

namespace A336939.P16197501575368611581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270413 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A336939.P16197501575368611581

/-! ## A336939.P4367239735221024639

`A131963(A167606(n)+A074867(2*n+5))`
-/

namespace A336939.P4367239735221024639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131963 (A167606 n + A074867 (2 * n + 5)).toNat

end

end A336939.P4367239735221024639

/-!
# A336940: Number of odd divisors of n!.

The programs for A336940, the canonical program `A336940.P4983532060712905772` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336940 has offset 0).

The definition of A336940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336940.P11427578608976631855

`A027423(n)-A337257(n)`
-/

namespace A336940.P11427578608976631855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - A337257 n

end

end A336940.P11427578608976631855

namespace A336940

/-- `A027423(n)-A337257(n)` -/
def P11427578608976631855.Spec : Prop :=
  ∀ n, P11427578608976631855.a n = A336940 n

end A336940

/-! ## A336940.P17909173489003468372

`A153823(n)+1-A337257(n)`
-/

namespace A336940.P17909173489003468372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n + (1 - A337257 n)

end

end A336940.P17909173489003468372

namespace A336940

/-- `A153823(n)+1-A337257(n)` -/
def P17909173489003468372.Spec : Prop :=
  ∀ n, P17909173489003468372.a n = A336940 n

end A336940

/-! ## A336940.P4983532060712905772

`A027423(n)/(A011371(n)+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336940

/-- `A027423(n)/(A011371(n)+1)` -/
def P4983532060712905772.Spec : Prop :=
  ∀ n, P4983532060712905772.a n = (A336940 n : ℚ)

end A336940

/-! ## A336940.P638812318729114249

`A101455(2*n)+gcd(A027423(n), A337257(n))`
-/

namespace A336940.P638812318729114249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (2 * n) + (Int.gcd (A027423 n) (A337257 n) : ℤ)

end

end A336940.P638812318729114249

namespace A336940

/-- `A101455(2*n)+gcd(A027423(n), A337257(n))` -/
def P638812318729114249.Spec : Prop :=
  ∀ n, P638812318729114249.a n = A336940 n

end A336940

/-! ## A336940.P18110720023568735092

`2-(A007318(∑[n])-A153823(n))-A337257(n)`
-/

namespace A336940.P18110720023568735092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A153823 n) - A337257 n

end

end A336940.P18110720023568735092

namespace A336940

/-- `2-(A007318(∑[n])-A153823(n))-A337257(n)` -/
def P18110720023568735092.Spec : Prop :=
  ∀ n, P18110720023568735092.a n = A336940 n

end A336940

/-! ## A336940.P470323083966329905

`A153824(n)+1-A153825(n)-A337257(n)`
-/

namespace A336940.P470323083966329905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + (1 - A153825 n) - A337257 n

end

end A336940.P470323083966329905

namespace A336940

/-- `A153824(n)+1-A153825(n)-A337257(n)` -/
def P470323083966329905.Spec : Prop :=
  ∀ n, P470323083966329905.a n = A336940 n

end A336940

/-!
# A336941: Number of strict chains of divisors starting with the superprimorial A006939(n) and ending with 1.

The programs for A336941, there is no canonical definition to state claims against.
-/

/-! ## A336941.P2749101470520201627

`ceil(A337070(n)/2)`
-/

namespace A336941.P2749101470520201627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337070 n : ℚ) / 2⌉

end

end A336941.P2749101470520201627

/-! ## A336941.P3582001639509190822

`A337070(n)/A001221(A337097(n+1))`
-/

namespace A336941.P3582001639509190822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337070 n : ℚ) / (A001221 (A337097 (n + 1)).toNat : ℚ)

end

end A336941.P3582001639509190822

/-! ## A336941.P18027197379458254198

`A337070(n)/A020639(A337077(n+1))`
-/

namespace A336941.P18027197379458254198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337070 n : ℚ) / (A020639 (A337077 (n + 1)).toNat : ℚ)

end

end A336941.P18027197379458254198

/-!
# A336942: Number of strict chains of divisors in A130091 (numbers with distinct prime multiplicities) starting with the superprimorial A006939(n) and ending with 1.

The programs for A336942, there is no canonical definition to state claims against.
-/

/-! ## A336942.P13349764201041315619

`A006257(or(A202476(n), A202518(n)))`
-/

namespace A336942.P13349764201041315619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.lor (A202476 n) (A202518 n)).toNat

end

end A336942.P13349764201041315619

/-!
# A336945: a(n) = binomial(3*n,n)/(2*n + 1) - 2*binomial(3*(n - 1),n - 1)/(2*n - 1) for n > 0 with a(0) = 1.

The programs for A336945, there is no canonical definition to state claims against.
-/

/-! ## A336945.P10352162672136817162

`A107894(n)-A109082(A107887(n))`
-/

namespace A336945.P10352162672136817162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107894 n - A109082 (A107887 n).toNat

end

end A336945.P10352162672136817162

/-! ## A336945.P12977910084018202977

`A236438(n)-A112104(A295193(n+1))`
-/

namespace A336945.P12977910084018202977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236438 n - A112104 (A295193 (n + 1)).toNat

end

end A336945.P12977910084018202977

/-!
# A336946: a(1) = 1; for n > 1, a(n) is the next square spiral number not already used such that a(n) shares a factor with a(n-1) and also with the adjacent number on the inner spiral arm if such a number exists.

The programs for A336946, there is no canonical definition to state claims against.
-/

/-! ## A336946.P1231857045014736120

`A342366(A043318(n+1))`
-/

namespace A336946.P1231857045014736120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342366 (A043318 (n + 1)).toNat

end

end A336946.P1231857045014736120

/-! ## A336946.P12478761218081263196

`A342366(A044915(n+1))`
-/

namespace A336946.P12478761218081263196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342366 (A044915 (n + 1)).toNat

end

end A336946.P12478761218081263196

/-! ## A336946.P14796577174513872838

`A342366(A055647(n+1))`
-/

namespace A336946.P14796577174513872838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342366 (A055647 (n + 1)).toNat

end

end A336946.P14796577174513872838

/-! ## A336946.P2263036723448459257

`A342366(A055648(n)+1)`
-/

namespace A336946.P2263036723448459257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342366 (A055648 n + 1).toNat

end

end A336946.P2263036723448459257

/-! ## A336946.P7106349521973748347

`A342366(A161951(n+1))`
-/

namespace A336946.P7106349521973748347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342366 (A161951 (n + 1)).toNat

end

end A336946.P7106349521973748347

/-!
# A336947: Expansion of e.g.f. 1 / (exp(-2*x) - x).

The programs for A336947, there is no canonical definition to state claims against.
-/

/-! ## A336947.P4327557848197713196

`A336950(n+1)/(n+1)`
-/

namespace A336947.P4327557848197713196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336950 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A336947.P4327557848197713196

/-! ## A336947.P13030113374456514721

`(n+1)^A321800(A059253(n))*A336950(n+1)`
-/

namespace A336947.P13030113374456514721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A321800 (A059253 n).toNat : ℤ) * (A336950 (n + 1) : ℚ)

end

end A336947.P13030113374456514721

/-! ## A336947.P6556381479496549091

`(n+1)^A321800(A348674(n))*A336950(n+1)`
-/

namespace A336947.P6556381479496549091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A321800 (A348674 n).toNat : ℤ) * (A336950 (n + 1) : ℚ)

end

end A336947.P6556381479496549091

/-! ## A336947.P17114972087526162946

`(n+1)^A321800(A002260(n+1))*A336950(n+1)`
-/

namespace A336947.P17114972087526162946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A321800 (A002260 (n + 1)).toNat : ℤ) * (A336950 (n + 1) : ℚ)

end

end A336947.P17114972087526162946

/-! ## A336947.P18374966178742509156

`(n+1)^A321800(A270417(n+2))*A336950(n+1)`
-/

namespace A336947.P18374966178742509156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A321800 (A270417 (n + 2)).toNat : ℤ) * (A336950 (n + 1) : ℚ)

end

end A336947.P18374966178742509156

/-!
# A336948: Expansion of e.g.f. 1 / (exp(-3*x) - x).

The programs for A336948, there is no canonical definition to state claims against.
-/

/-! ## A336948.P14232173392665072967

`A336951(n+1)/(n+1)`
-/

namespace A336948.P14232173392665072967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336951 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A336948.P14232173392665072967

/-!
# A336949: a(n) = n! * [x^n] 1 / (exp(-n*x) - x).

The programs for A336949, there is no canonical definition to state claims against.
-/

/-! ## A336949.P1611109579821571212

`A215366(∑[floor(A354289(n)/2)])`
-/

namespace A336949.P1611109579821571212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A354289 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336949.P1611109579821571212

/-!
# A336950: E.g.f.: 1 / (1 - x * exp(2*x)).

The programs for A336950, there is no canonical definition to state claims against.
-/

/-! ## A336950.P17595875635603691586

`A351790(∑[n+3])`
-/

namespace A336950.P17595875635603691586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351790 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336950.P17595875635603691586

/-! ## A336950.P9379551555812512651

`A337552(n)+A002266(A337592(n))`
-/

namespace A336950.P9379551555812512651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337552 n + A002266 (A337592 n).toNat

end

end A336950.P9379551555812512651

/-!
# A336951: E.g.f.: 1 / (1 - x * exp(3*x)).

The programs for A336951, there is no canonical definition to state claims against.
-/

/-! ## A336951.P1743541902647562333

`A351790(C(n+4, 2)+n)`
-/

namespace A336951.P1743541902647562333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351790 (Nat.choose (n + 4) 2 + n)

end

end A336951.P1743541902647562333

/-! ## A336951.P5933188587566581657

`A351790(∑[n+3]+3+n)`
-/

namespace A336951.P5933188587566581657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351790 (∑ j ∈ Finset.range (n + 1), f1 j + 3 + n)

end

end A336951.P5933188587566581657

/-!
# A336952: E.g.f.: 1 / (1 - x * exp(4*x)).

The programs for A336952, there is no canonical definition to state claims against.
-/

/-! ## A336952.P12531410354280229445

`A351790(∑[n+5]+5)`
-/

namespace A336952.P12531410354280229445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351790 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A336952.P12531410354280229445

/-!
# A336955: a(n) = Sum_{k=0..n} k^k * binomial(n, k)^2.

The programs for A336955, there is no canonical definition to state claims against.
-/

/-! ## A336955.P11692435277080047545

`A080677(A005260(n))`
-/

namespace A336955.P11692435277080047545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (A005260 n).toNat

end

end A336955.P11692435277080047545

/-!
# A336957: The Enots Wolley sequence: the lexicographically earliest infinite sequence {a(n)} of distinct positive numbers such that, for n>2, a(n) has a common factor with a(n-1) but not with a(n-2).

The programs for A336957, there is no canonical definition to state claims against.
-/

/-! ## A336957.P13358302738349119360

`A338051(n+1)+1+n`
-/

namespace A336957.P13358302738349119360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338051 (n + 1) + 1 + (n : ℤ)

end

end A336957.P13358302738349119360

/-! ## A336957.P10143872777398049871

`A338055(n+1)-A002487(A090318(n+1))`
-/

namespace A336957.P10143872777398049871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338055 (n + 1) - A002487 (A090318 (n + 1)).toNat

end

end A336957.P10143872777398049871

/-! ## A336957.P18078828404038430730

`A338055(∑[∑[A015070(n)]])`
-/

namespace A336957.P18078828404038430730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336957.P18078828404038430730

/-! ## A336957.P6092239108488505578

`A338055(A015070(n)!+n)`
-/

namespace A336957.P6092239108488505578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338055 (Nat.factorial (A015070 n).toNat + n)

end

end A336957.P6092239108488505578

/-! ## A336957.P12351908543720392413

`A338055(or(1, A015070(n))+n)`
-/

namespace A336957.P12351908543720392413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338055 (Int.lor 1 (A015070 n) + (n : ℤ)).toNat

end

end A336957.P12351908543720392413

/-!
# A336958: E.g.f.: 1 / (exp(2*x) - x).

The programs for A336958, there is no canonical definition to state claims against.
-/

/-! ## A336958.P9520012484390978432

`A336959(n+1)/(n+1)`
-/

namespace A336958.P9520012484390978432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336959 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A336958.P9520012484390978432

/-!
# A336959: E.g.f.: 1 / (1 - x * exp(-2*x)).

The programs for A336959, there is no canonical definition to state claims against.
-/

/-! ## A336959.P8987867340469285207

`A351791(∑[n+3])`
-/

namespace A336959.P8987867340469285207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351791 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336959.P8987867340469285207

/-! ## A336959.P10736487926505197427

`A137430(A336489(n+2))`
-/

namespace A336959.P10736487926505197427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137430 (A336489 (n + 2)).toNat

end

end A336959.P10736487926505197427

/-!
# A336960: E.g.f.: 1 / (1 - x * (2 + x) * exp(x)).

The programs for A336960, there is no canonical definition to state claims against.
-/

/-! ## A336960.P7901450968092866839

`A007095((n+1)*n^n)+floor((n/2)²)`
-/

namespace A336960.P7901450968092866839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((n + 1) * n ^ n) + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A336960.P7901450968092866839

/-!
# A336961: Expansion of e.g.f. exp(x * (2 + x) * exp(x)).

The programs for A336961, there is no canonical definition to state claims against.
-/

/-! ## A336961.P4350317470860993706

`A204457(A204461(n))+A160552(n)`
-/

namespace A336961.P4350317470860993706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204457 (A204461 n).toNat + A160552 n

end

end A336961.P4350317470860993706

/-!
# A336962: Right-rotate run-lengths of consecutive equal digits in binary representation of n.

The programs for A336962, the canonical program `A336962.P6344770241996837635` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336962 has offset 0).

The definition of A336962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336962.P6344770241996837635

`A003817(n)-A163575(A028310(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336962

/-- `A003817(n)-A163575(A028310(n))` -/
def P6344770241996837635.Spec : Prop :=
  ∀ n, P6344770241996837635.a n = A336962 n

theorem P6344770241996837635.correct : P6344770241996837635.Spec := by
  intro n
  simp only [A336962]

end A336962

/-! ## A336962.P16495109312555493341

`∑[A048298(n)]-A163575(A028310(n))`
-/

namespace A336962.P16495109312555493341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A163575 (A028310 n).toNat

end

end A336962.P16495109312555493341

namespace A336962

/-- `∑[A048298(n)]-A163575(A028310(n))` -/
def P16495109312555493341.Spec : Prop :=
  ∀ n, P16495109312555493341.a n = A336962 n

end A336962

/-! ## A336962.P5692542588730557745

`A062383(n)-(A163575(A028310(n))+1)`
-/

namespace A336962.P5692542588730557745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - (A163575 (A028310 n).toNat + 1)

end

end A336962.P5692542588730557745

namespace A336962

/-- `A062383(n)-(A163575(A028310(n))+1)` -/
def P5692542588730557745.Spec : Prop :=
  ∀ n, P5692542588730557745.a n = A336962 n

end A336962

/-! ## A336962.P7921955102380517372

`A331739(n+1)+A129527(n)-A006257(n)`
-/

namespace A336962.P7921955102380517372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (n + 1) + (A129527 n - A006257 n)

end

end A336962.P7921955102380517372

namespace A336962

/-- `A331739(n+1)+A129527(n)-A006257(n)` -/
def P7921955102380517372.Spec : Prop :=
  ∀ n, P7921955102380517372.a n = A336962 n

end A336962

/-! ## A336962.P12952188760302566363

`A011371(A062383(n))-A163575(A028310(n))`
-/

namespace A336962.P12952188760302566363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A062383 n).toNat - A163575 (A028310 n).toNat

end

end A336962.P12952188760302566363

namespace A336962

/-- `A011371(A062383(n))-A163575(A028310(n))` -/
def P12952188760302566363.Spec : Prop :=
  ∀ n, P12952188760302566363.a n = A336962 n

end A336962

/-! ## A336962.P2481724479554341177

`A003817(n)-A163575(A257088(n))`
-/

namespace A336962.P2481724479554341177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A163575 (A257088 n).toNat

end

end A336962.P2481724479554341177

namespace A336962

/-- `A003817(n)-A163575(A257088(n))` -/
def P2481724479554341177.Spec : Prop :=
  ∀ n, P2481724479554341177.a n = A336962 n

end A336962

/-! ## A336962.P4136931049821069067

`A003817(n)-A163575(A065033(2*n))`
-/

namespace A336962.P4136931049821069067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A163575 (A065033 (2 * n)).toNat

end

end A336962.P4136931049821069067

namespace A336962

/-- `A003817(n)-A163575(A065033(2*n))` -/
def P4136931049821069067.Spec : Prop :=
  ∀ n, P4136931049821069067.a n = A336962 n

end A336962

/-!
# A336963: Left-rotate run-lengths of consecutive equal digits in binary representation of n.

The programs for A336963, the canonical program `A336963.P15058899882861974710` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336963 has offset 0).

The definition of A336963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336963.P15058899882861974710

`A057889(A336962(A057889(n)))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336963

/-- `A057889(A336962(A057889(n)))` -/
def P15058899882861974710.Spec : Prop :=
  ∀ n, P15058899882861974710.a n = A336963 n

theorem P15058899882861974710.correct : P15058899882861974710.Spec := by
  intro n
  simp only [A336963]

end A336963

/-! ## A336963.P13203949507516760221

`A166404(A322464(n)%A054573(n+1))`
-/

namespace A336963.P13203949507516760221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (Int.tmod (A322464 n) (A054573 (n + 1))).toNat

end

end A336963.P13203949507516760221

namespace A336963

/-- `A166404(A322464(n)%A054573(n+1))` -/
def P13203949507516760221.Spec : Prop :=
  ∀ n, P13203949507516760221.a n = A336963 n

end A336963

/-! ## A336963.P13630492273360906219

`A166404(A322464(n)%A187491(n))`
-/

namespace A336963.P13630492273360906219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (Int.tmod (A322464 n) (A187491 (n + 10))).toNat

end

end A336963.P13630492273360906219

namespace A336963

/-- `A166404(A322464(n)%A187491(n))` -/
def P13630492273360906219.Spec : Prop :=
  ∀ n, P13630492273360906219.a n = A336963 n

end A336963

/-!
# A336964: Irregular triangle in which first row is 1, n-th row (n > 1) lists distinct prime numbers in the prime tower factorization of n.

The programs for A336964, there is no canonical definition to state claims against.
-/

/-! ## A336964.P15578559224331890338

`A027748(A050330(2*n+5)*A262360(n+1))`
-/

namespace A336964.P15578559224331890338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A050330 (2 * n + 5) * A262360 (n + 1)).toNat

end

end A336964.P15578559224331890338

/-! ## A336964.P420886571074835887

`A027748(lt[A056856(n+1), ∑[4*n]])`
-/

namespace A336964.P420886571074835887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056856 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A336964.P420886571074835887

/-! ## A336964.P9431985427761634033

`A020639((A136832(n+1)+1)*or(1, n))`
-/

namespace A336964.P9431985427761634033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((A136832 (n + 1) + 1) * (Nat.lor 1 n : ℤ)).toNat

end

end A336964.P9431985427761634033

/-! ## A336964.P17527890780351204132

`A027748(lt[A042583(n), A342957(n)])`
-/

namespace A336964.P17527890780351204132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336964.P17527890780351204132

/-! ## A336964.P2273919227951617105

`A006530(A000079(n)*A273262(n+1))`
-/

namespace A336964.P2273919227951617105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000079 n * A273262 (n + 1)).toNat

end

end A336964.P2273919227951617105

/-!
# A336965: a(n) is the product of the distinct prime numbers appearing in the prime tower factorization of n.

The programs for A336965, there is no canonical definition to state claims against.
-/

/-! ## A336965.P8243208471132262220

`A007947((n+1)*A203639(n+1))`
-/

namespace A336965.P8243208471132262220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 1 : ℤ) * A203639 (n + 1)).toNat

end

end A336965.P8243208471132262220

/-! ## A336965.P10726686936711184528

`A007947((n+1)*A318519(A003557(n+1)))`
-/

namespace A336965.P10726686936711184528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 1 : ℤ) * A318519 (A003557 (n + 1)).toNat).toNat

end

end A336965.P10726686936711184528

/-! ## A336965.P17495750513256993019

`gcd(A000026(n+1), A034386(n+1))`
-/

namespace A336965.P17495750513256993019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000026 (n + 1)) (A034386 (n + 1))

end

end A336965.P17495750513256993019

/-! ## A336965.P5629483038768582104

`A007947((n+1)*A360970(n+1))`
-/

namespace A336965.P5629483038768582104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 1 : ℤ) * A360970 (n + 1)).toNat

end

end A336965.P5629483038768582104

/-! ## A336965.P931393478574622688

`A007947((n+1)/(1/A335852(n+1))²)`
-/

namespace A336965.P931393478574622688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (1 / (A335852 (n + 1) : ℚ)) ^ 2)).toNat

end

end A336965.P931393478574622688

/-! ## A336965.P8661531635991520908

`∏{p}[A188385(n+1)², #]`
-/

namespace A336965.P8661531635991520908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188385 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A336965.P8661531635991520908

/-! ## A336965.P5633598199433460867

`A007947(A007947(n+1)*A008477(n+1))`
-/

namespace A336965.P5633598199433460867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (n + 1) * A008477 (n + 1)).toNat

end

end A336965.P5633598199433460867

/-! ## A336965.P17385655439514075664

`∏{p}[A000026(A069799(n+1)), #]`
-/

namespace A336965.P17385655439514075664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A069799 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A336965.P17385655439514075664

/-! ## A336965.P3201806789368602977

`A156061(A301315(A000026(n+1)))`
-/

namespace A336965.P3201806789368602977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A301315 (A000026 (n + 1)).toNat).toNat

end

end A336965.P3201806789368602977

/-! ## A336965.P3578971707745638886

`A007913(A304776(A000026(n+1)²))`
-/

namespace A336965.P3578971707745638886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A304776 (A000026 (n + 1) ^ 2).toNat).toNat

end

end A336965.P3578971707745638886

/-! ## A336965.P15628317993362359917

`A007947((n+1)*A008477(n+1))`
-/

namespace A336965.P15628317993362359917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 1 : ℤ) * A008477 (n + 1)).toNat

end

end A336965.P15628317993362359917

/-! ## A336965.P13940632185827683987

`∏{p}[∏{p}[n+1, #]*∏{e}[n+1, #], #]%A001037(3*n+1)`
-/

namespace A336965.P13940632185827683987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p) * (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A001037 (3 * n + 1))

end

end A336965.P13940632185827683987

/-! ## A336965.P12303936988932312735

`∏{p}[A361268(n+1), #]`
-/

namespace A336965.P12303936988932312735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361268 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A336965.P12303936988932312735

/-! ## A336965.P8177247499593742026

`∏{p}[∏{p}[n+1, #]*∏{e}[n+1, #], #]%A330781(n+2)`
-/

namespace A336965.P8177247499593742026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p) * (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A330781 (n + 2))

end

end A336965.P8177247499593742026

/-! ## A336965.P15270269181165109278

`A003557(A007948(A000026(n+1)²))`
-/

namespace A336965.P15270269181165109278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A007948 (A000026 (n + 1) ^ 2).toNat).toNat

end

end A336965.P15270269181165109278

/-! ## A336965.P5551117421273155118

`A381201(A144907(A381201(n+1)²))`
-/

namespace A336965.P5551117421273155118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381201 (A144907 (A381201 (n + 1) ^ 2).toNat).toNat

end

end A336965.P5551117421273155118

/-!
# A336969: a(n) = n! * [x^n] 1 / (exp(n*x) - x).

The programs for A336969, there is no canonical definition to state claims against.
-/

/-! ## A336969.P17068612806204934563

`A001057(A346767(n)-A004273(n))`
-/

namespace A336969.P17068612806204934563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A346767 n - A004273 n).toNat

end

end A336969.P17068612806204934563

/-!
# A336970: G.f. A(x) satisfies: A(x) = 1 - x^2 * A(x/(1 - x)) / (1 - x).

The programs for A336970, there is no canonical definition to state claims against.
-/

/-! ## A336970.P14075296007863005600

`A346078(n)-A346079(n)`
-/

namespace A336970.P14075296007863005600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346078 n - A346079 n

end

end A336970.P14075296007863005600

/-!
# A336971: G.f. A(x) satisfies: A(x) = 1 - x^3 * A(x/(1 - x)) / (1 - x).

The programs for A336971, there is no canonical definition to state claims against.
-/

/-! ## A336971.P10423639368894729336

`A055086(A148306(n))-A014968(n)`
-/

namespace A336971.P10423639368894729336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A148306 n).toNat - A014968 n

end

end A336971.P10423639368894729336

/-!
# A336972: Sum of the smallest two side lengths of all distinct integer-sided triangles with perimeter n.

The programs for A336972, there is no canonical definition to state claims against.
-/

/-! ## A336972.P13047369416893325006

`A308089(n+1)-A307966(n+1)`
-/

namespace A336972.P13047369416893325006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - A307966 (n + 1)

end

end A336972.P13047369416893325006

/-! ## A336972.P1087826127932027382

`(n+1)*A005044(n+1)-A307966(n+1)`
-/

namespace A336972.P1087826127932027382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005044 (n + 1) - A307966 (n + 1)

end

end A336972.P1087826127932027382

/-! ## A336972.P5431432567855817481

`A308089(n+1)-(A308159(n+1)+A308108(n+1))`
-/

namespace A336972.P5431432567855817481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (A308159 (n + 1) + A308108 (n + 1))

end

end A336972.P5431432567855817481

/-! ## A336972.P11736680840352316585

`A308089(n+1)-(A308160(n+1)+A308109(n+1))-A008763(A028242(n))`
-/

namespace A336972.P11736680840352316585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (A308160 (n + 1) + A308109 (n + 1)) - A008763 (A028242 n).toNat

end

end A336972.P11736680840352316585

/-! ## A336972.P1787831676576254071

`A336973(n+1)-A008763(A028242(n))`
-/

namespace A336972.P1787831676576254071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) - A008763 (A028242 n).toNat

end

end A336972.P1787831676576254071

/-! ## A336972.P6275251881086950928

`A308096(n+1)+A336973(n+1)-A307966(n+1)`
-/

namespace A336972.P6275251881086950928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (n + 1) + (A336973 (n + 1) - A307966 (n + 1))

end

end A336972.P6275251881086950928

/-! ## A336972.P406262090543062986

`A308096(n+1)+A307686(n+1)`
-/

namespace A336972.P406262090543062986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (n + 1) + A307686 (n + 1)

end

end A336972.P406262090543062986

/-! ## A336972.P1198197451303328986

`A181120(A028242(n))+2*A307686(n+1)`
-/

namespace A336972.P1198197451303328986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (A028242 n).toNat + 2 * A307686 (n + 1)

end

end A336972.P1198197451303328986

/-! ## A336972.P8133162566913741838

`A307686(n+1)+A308160(n+1)+A308109(n+1)`
-/

namespace A336972.P8133162566913741838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + (A308160 (n + 1) + A308109 (n + 1))

end

end A336972.P8133162566913741838

/-! ## A336972.P2458246253385147281

`A307686(n+1)+A308089(n+1)-A336973(n+1)`
-/

namespace A336972.P2458246253385147281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + (A308089 (n + 1) - A336973 (n + 1))

end

end A336972.P2458246253385147281

/-!
# A336973: Sum of the smallest and largest side lengths of all distinct integer-sided triangles with perimeter n.

The programs for A336973, there is no canonical definition to state claims against.
-/

/-! ## A336973.P12377577433053417711

`A336972(n+1)+A008763(A028242(n))`
-/

namespace A336973.P12377577433053417711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336972 (n + 1) + A008763 (A028242 n).toNat

end

end A336973.P12377577433053417711

/-! ## A336973.P3544961876943933748

`A336974(n+1)-A181120(A028242(n))`
-/

namespace A336973.P3544961876943933748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336974 (n + 1) - A181120 (A028242 n).toNat

end

end A336973.P3544961876943933748

/-! ## A336973.P16924119751778017528

`A308089(n+1)-(A308160(n+1)+A308109(n+1))`
-/

namespace A336973.P16924119751778017528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (A308160 (n + 1) + A308109 (n + 1))

end

end A336973.P16924119751778017528

/-! ## A336973.P18064863432553142472

`A307966(n+1)+A308089(n+1)-A336974(n+1)`
-/

namespace A336973.P18064863432553142472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307966 (n + 1) + (A308089 (n + 1) - A336974 (n + 1))

end

end A336973.P18064863432553142472

/-! ## A336973.P824463724275400571

`A308089(n+1)-A308096(n+1)`
-/

namespace A336973.P824463724275400571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - A308096 (n + 1)

end

end A336973.P824463724275400571

/-! ## A336973.P13965891262976889816

`A307966(n+1)+A307686(n+1)`
-/

namespace A336973.P13965891262976889816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307966 (n + 1) + A307686 (n + 1)

end

end A336973.P13965891262976889816

/-! ## A336973.P18012730665693316689

`A307686(n+1)+A308159(n+1)+A308108(n+1)`
-/

namespace A336973.P18012730665693316689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + (A308159 (n + 1) + A308108 (n + 1))

end

end A336973.P18012730665693316689

/-! ## A336973.P1280755611215094832

`A307686(n+1)+A308089(n+1)-A336972(n+1)`
-/

namespace A336973.P1280755611215094832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + (A308089 (n + 1) - A336972 (n + 1))

end

end A336973.P1280755611215094832

/-! ## A336973.P11743536850390219817

`A307686(n+1)+A336974(n+1)-A308096(n+1)`
-/

namespace A336973.P11743536850390219817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + (A336974 (n + 1) - A308096 (n + 1))

end

end A336973.P11743536850390219817

/-!
# A336974: Sum of the largest two side lengths of all distinct integer-sided triangles with perimeter n.

The programs for A336974, there is no canonical definition to state claims against.
-/

/-! ## A336974.P16588602360709175279

`2*A307966(n+1)-A008763(A028242(n))`
-/

namespace A336974.P16588602360709175279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307966 (n + 1) - A008763 (A028242 n).toNat

end

end A336974.P16588602360709175279

/-! ## A336974.P11140212121352049910

`A308089(n+1)-(A308158(n+1)+A308107(n+1))`
-/

namespace A336974.P11140212121352049910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (A308158 (n + 1) + A308107 (n + 1))

end

end A336974.P11140212121352049910

/-! ## A336974.P3904895455960904704

`A307966(n+1)+A308160(n+1)+A308109(n+1)`
-/

namespace A336974.P3904895455960904704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307966 (n + 1) + (A308160 (n + 1) + A308109 (n + 1))

end

end A336974.P3904895455960904704

/-! ## A336974.P1407881622388515683

`A308159(n+1)+A308108(n+1)+A308160(n+1)+A308109(n+1)`
-/

namespace A336974.P1407881622388515683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308159 (n + 1) + A308108 (n + 1) + (A308160 (n + 1) + A308109 (n + 1))

end

end A336974.P1407881622388515683

/-! ## A336974.P7796079651526744546

`A336973(n+1)+A181120(A028242(n))`
-/

namespace A336974.P7796079651526744546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) + A181120 (A028242 n).toNat

end

end A336974.P7796079651526744546

/-! ## A336974.P17384495867980573445

`A308096(n+1)+A307966(n+1)`
-/

namespace A336974.P17384495867980573445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (n + 1) + A307966 (n + 1)

end

end A336974.P17384495867980573445

/-! ## A336974.P5553560694010033446

`A008763(A028242(n))+2*A308096(n+1)`
-/

namespace A336974.P5553560694010033446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A028242 n).toNat + 2 * A308096 (n + 1)

end

end A336974.P5553560694010033446

/-! ## A336974.P10591826377180078955

`A308089(n+1)-A307686(n+1)`
-/

namespace A336974.P10591826377180078955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - A307686 (n + 1)

end

end A336974.P10591826377180078955

/-! ## A336974.P4619199417652241117

`(n+1)*A005044(n+1)-A307686(n+1)`
-/

namespace A336974.P4619199417652241117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005044 (n + 1) - A307686 (n + 1)

end

end A336974.P4619199417652241117

/-! ## A336974.P16909794067893612244

`(n+1)*A211540(A060762(n+2))-A307686(n+1)`
-/

namespace A336974.P16909794067893612244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211540 (A060762 (n + 2)).toNat - A307686 (n + 1)

end

end A336974.P16909794067893612244

/-!
# A336975: Expansion of Product_{k>=1} 1/(1 - x^k * (k + x)).

The programs for A336975, there is no canonical definition to state claims against.
-/

/-! ## A336975.P9609425817953153443

`A000006(∑[A000006(n+1)*A148779(n)])`
-/

namespace A336975.P9609425817953153443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) * A148779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336975.P9609425817953153443

/-! ## A336975.P1596457906036712920

`A087276(A002478(n))`
-/

namespace A336975.P1596457906036712920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087276 (A002478 n).toNat

end

end A336975.P1596457906036712920

/-! ## A336975.P8474268933483198101

`A342791(A186334(n))`
-/

namespace A336975.P8474268933483198101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342791 (A186334 n).toNat

end

end A336975.P8474268933483198101

/-!
# A336976: Expansion of Product_{k>=1} 1/(1 - x^k * (1 + k*x)).

The programs for A336976, there is no canonical definition to state claims against.
-/

/-! ## A336976.P10611701816118319686

`A000523(A059219(n))+A000325(n)`
-/

namespace A336976.P10611701816118319686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A059219 n).toNat + A000325 n

end

end A336976.P10611701816118319686

/-! ## A336976.P16128470106219777597

`A000523(A104429(n))+A000325(n)`
-/

namespace A336976.P16128470106219777597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A104429 n).toNat + A000325 n

end

end A336976.P16128470106219777597

/-! ## A336976.P10491974908698789696

`A070939(A059219(n))+A000295(n)`
-/

namespace A336976.P10491974908698789696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A059219 n).toNat + A000295 n

end

end A336976.P10491974908698789696

/-! ## A336976.P12743664462671179709

`A070939(A104429(n))+A000295(n)`
-/

namespace A336976.P12743664462671179709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A104429 n).toNat + A000295 n

end

end A336976.P12743664462671179709

/-!
# A336979: Expansion of Product_{k>=1} (1 + x^k * (k + x)).

The programs for A336979, there is no canonical definition to state claims against.
-/

/-! ## A336979.P18083615718887334102

`A002264(∑[n])+A000005(n!)`
-/

namespace A336979.P18083615718887334102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j) + A000005 (Nat.factorial n)

end

end A336979.P18083615718887334102

/-! ## A336979.P13975031526848445970

`∑[A079440(n)]+A000005(n!)`
-/

namespace A336979.P13975031526848445970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (Nat.factorial n)

end

end A336979.P13975031526848445970

/-! ## A336979.P13845677478568610563

`∑[∑[A022003(n)]]+A000005(n!)`
-/

namespace A336979.P13845677478568610563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (Nat.factorial n)

end

end A336979.P13845677478568610563

/-! ## A336979.P16910761878035868483

`floor(A000005(A000142(n))+∑[n/3])`
-/

namespace A336979.P16910761878035868483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (A000142 n).toNat : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A336979.P16910761878035868483

/-!
# A336980: Expansion of Product_{k>=1} (1 + x^k * (1 + k*x)).

The programs for A336980, there is no canonical definition to state claims against.
-/

/-! ## A336980.P13817982158248241591

`A338430(A081913(n)+1)+A000041(n)`
-/

namespace A336980.P13817982158248241591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (A081913 n + 1).toNat + A000041 n

end

end A336980.P13817982158248241591

/-! ## A336980.P14960511746491398329

`A272978(A227376(n))`
-/

namespace A336980.P14960511746491398329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272978 (A227376 n).toNat

end

end A336980.P14960511746491398329

/-! ## A336980.P17375092842997799249

`A366160(A193200(n))`
-/

namespace A336980.P17375092842997799249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366160 (A193200 n).toNat

end

end A336980.P17375092842997799249

/-! ## A336980.P6358681201628215838

`A123068(A018066(n)+1)`
-/

namespace A336980.P6358681201628215838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A018066 n + 1).toNat

end

end A336980.P6358681201628215838

/-! ## A336980.P12365896181401367256

`A115180(A239552(n+1))`
-/

namespace A336980.P12365896181401367256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A239552 (n + 1)).toNat

end

end A336980.P12365896181401367256

/-!
# A336983: Bogota numbers that are not Colombian numbers.

The programs for A336983, there is no canonical definition to state claims against.
-/

/-! ## A336983.P6878714031923181362

`∩[A176995(n+1), A336826(n+1)]`
-/

namespace A336983.P6878714031923181362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336983.P6878714031923181362

/-! ## A336983.P5320124418548181380

`∩[lt[0, A096234(n)], A336826(n+1)]`
-/

namespace A336983.P5320124418548181380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A336983.P5320124418548181380

/-! ## A336983.P15009645490065809400

`∩[comp[A163128(n+1)+1+n], A336826(n+2)]`
-/

namespace A336983.P15009645490065809400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A336983.P15009645490065809400

/-! ## A336983.P7121059130250608910

`∩[A176995(n+1), A098736(A336876(n+1))]`
-/

namespace A336983.P7121059130250608910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (A336876 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336983.P7121059130250608910

/-! ## A336983.P1859748684194865062

`∩[A176995(n+1), A336876(n+1)*A336879(n+1)]`
-/

namespace A336983.P1859748684194865062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336876 (n + 1) * A336879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336983.P1859748684194865062

/-!
# A336984: Colombian numbers that are also Bogotá numbers.

The programs for A336984, there is no canonical definition to state claims against.
-/

/-! ## A336984.P2165852727323723866

`∩[A003052(n+1), A336826(n+1)]`
-/

namespace A336984.P2165852727323723866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336984.P2165852727323723866

/-! ## A336984.P11447765883738716850

`∩[A163128(n+1)+1+n, A336826(n+1)]`
-/

namespace A336984.P11447765883738716850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336984.P11447765883738716850

/-! ## A336984.P18264588989422041405

`∩[A336826(n+1), a(n-1)+A163139(n)+1]` with `a(0)=1`
-/

namespace A336984.P18264588989422041405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (A163139 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336984.P18264588989422041405

/-! ## A336984.P8233239483391468034

`∩[A003052(n+1), A336876(n+1)*A336879(n+1)]`
-/

namespace A336984.P8233239483391468034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336876 (n + 1) * A336879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336984.P8233239483391468034

/-! ## A336984.P2890932236426400919

`∩[A163128(n+1)+1+n, A336876(n+1)*A336879(n+1)]`
-/

namespace A336984.P2890932236426400919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336876 (n + 1) * A336879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336984.P2890932236426400919

/-!
# A336985: Colombian numbers that are not Bogotá numbers.

The programs for A336985, there is no canonical definition to state claims against.
-/

/-! ## A336985.P16250976486792819411

`comp[∪[A176995(n+1), A336826(n+1)]]`
-/

namespace A336985.P16250976486792819411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A336985.P16250976486792819411

/-!
# A336986: Numbers that are not Colombian and not Bogotá.

The programs for A336986, there is no canonical definition to state claims against.
-/

/-! ## A336986.P16015795043004204737

`lt[char[n*∏{digits}[n, #]], A230093(n)]`
-/

namespace A336986.P16015795043004204737
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A336986.P16015795043004204737

/-! ## A336986.P3819287264833540132

`lt[char[A098736(n)], A230093(n)]`
-/

namespace A336986.P3819287264833540132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A336986.P3819287264833540132

/-! ## A336986.P7684125156602366880

`lt[char[A336826(n+1)], A230093(n)]`
-/

namespace A336986.P7684125156602366880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A336986.P7684125156602366880

/-! ## A336986.P11508288179697813602

`∩[A176995(n+1), comp[A336983(n+1)]]`
-/

namespace A336986.P11508288179697813602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336983 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336986.P11508288179697813602

/-! ## A336986.P3650556525374136179

`comp[∪[A003052(n+1), A336826(n+1)]]`
-/

namespace A336986.P3650556525374136179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A336986.P3650556525374136179

/-! ## A336986.P17446394385356254828

`comp[∪[A336826(n+1), A336985(n+1)]]`
-/

namespace A336986.P17446394385356254828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336985 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A336986.P17446394385356254828

/-! ## A336986.P8157452765262747137

`comp[∪[A163128(n+1)+1+n, A336826(n+1)]]`
-/

namespace A336986.P8157452765262747137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A336986.P8157452765262747137

/-!
# A336989: Expansion of Product_{k>=1} (1 + x^k / (1 - k*x)).

The programs for A336989, there is no canonical definition to state claims against.
-/

/-! ## A336989.P4519887572684648834

`A080907(A076864(n))`
-/

namespace A336989.P4519887572684648834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A076864 n).toNat

end

end A336989.P4519887572684648834

/-! ## A336989.P7185602958996785086

`A185283(A126348(∑[n]))`
-/

namespace A336989.P7185602958996785086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A126348 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A336989.P7185602958996785086

/-! ## A336989.P10968919752336970048

`A030530(floor(sqrt(A349335(n))))`
-/

namespace A336989.P10968919752336970048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (Int.sqrt (A349335 n)).toNat

end

end A336989.P10968919752336970048

/-! ## A336989.P9835189055794393604

`A030530(ceil(sqrt(A349335(n))))`
-/

namespace A336989.P9835189055794393604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 ⌈Real.sqrt (A349335 n : ℝ)⌉.toNat

end

end A336989.P9835189055794393604

/-!
# A336990: Expansion of Product_{k>=1} 1/(1 - x^k / (1 - k*x)).

The programs for A336990, there is no canonical definition to state claims against.
-/

/-! ## A336990.P7647997107444544059

`A255072(A363812(n+1))`
-/

namespace A336990.P7647997107444544059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A363812 (n + 1)).toNat

end

end A336990.P7647997107444544059

/-! ## A336990.P8069507211637794607

`A050296(A243633(n)+A148356(n))`
-/

namespace A336990.P8069507211637794607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A243633 n + A148356 n).toNat

end

end A336990.P8069507211637794607

/-! ## A336990.P14670171810528431195

`A317997(n+1)-A326642(A026632(n))`
-/

namespace A336990.P14670171810528431195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317997 (n + 1) - A326642 (A026632 n).toNat

end

end A336990.P14670171810528431195

/-!
# A336994: Entries of A336938 without duplicates.

The programs for A336994, there is no canonical definition to state claims against.
-/

/-! ## A336994.P3509018042132197083

`A019426(n)%3*A006885(n+1)`
-/

namespace A336994.P3509018042132197083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019426 n) 3 * A006885 (n + 1)

end

end A336994.P3509018042132197083

/-! ## A336994.P3826527949147127404

`lcm(A006885(n+1)-A000007(n), 4/gcd(2, n))`
-/

namespace A336994.P3826527949147127404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006885 (n + 1) - A000007 n) (SequenceMachineLib.roundAway (4 / (Nat.gcd 2 n : ℚ)))

end

end A336994.P3826527949147127404

/-! ## A336994.P3260956936309117930

`A006885(n+1)-A089798(A000096(n))`
-/

namespace A336994.P3260956936309117930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006885 (n + 1) - A089798 (A000096 n).toNat

end

end A336994.P3260956936309117930

/-! ## A336994.P9608054533050479921

`lcm(4, A006885(n+1))%A006885(n+2)`
-/

namespace A336994.P9608054533050479921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm 4 (A006885 (n + 1)) : ℤ) (A006885 (n + 2))

end

end A336994.P9608054533050479921

/-! ## A336994.P18302724307184453648

`record[A025586(n+1)%A021012(2*n)]`
-/

namespace A336994.P18302724307184453648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025586 (n + 1)) (A021012 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336994.P18302724307184453648

/-!
# A336995: Numbers of the form x^3 + x^2*y + x*y^2 + y^3, where x and y are coprime positive integers.

The programs for A336995, there is no canonical definition to state claims against.
-/

/-! ## A336995.P2193073638699281698

`∩[A096529(n+1), A336607(n+1)]`
-/

namespace A336995.P2193073638699281698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336995.P2193073638699281698

/-!
# A336996: Triangle of coefficients T(n,k) (n >= 0, 0 <= k <= 2*n), read by rows: n-th row is obtained by expanding (2 + x + x^2)^n.

The programs for A336996, there is no canonical definition to state claims against.
-/

/-! ## A336996.P7808706051468769689

`A084600(A020703(n+1)-1)`
-/

namespace A336996.P7808706051468769689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (A020703 (n + 1) - 1).toNat

end

end A336996.P7808706051468769689

/-! ## A336996.P6866067163022275471

`A084600(n-2*A196199(n))`
-/

namespace A336996.P6866067163022275471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 ((n : ℤ) - 2 * A196199 n).toNat

end

end A336996.P6866067163022275471

/-! ## A336996.P11517992971200609585

`A084600(n)/2^A196199(n)`
-/

namespace A336996.P11517992971200609585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084600 n : ℚ) / (2 : ℚ) ^ (A196199 n : ℤ)

end

end A336996.P11517992971200609585

/-! ## A336996.P7884856100995744743

`A084600(n-A196199(n)-A196199(n))`
-/

namespace A336996.P7884856100995744743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 ((n : ℤ) - A196199 n - A196199 n).toNat

end

end A336996.P7884856100995744743

/-! ## A336996.P8196854441800496381

`A084600(A020703(n+2))`
-/

namespace A336996.P8196854441800496381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (A020703 (n + 2)).toNat

end

end A336996.P8196854441800496381

/-! ## A336996.P3583281585730605434

`A084600(∑[-Δ[-A094064(n+1)]])`
-/

namespace A336996.P3583281585730605434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A094064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336996.P3583281585730605434

/-!
# A336997: a(n) = n! * Sum_{d|n} 2^(d - 1) / d!.

The programs for A336997, there is no canonical definition to state claims against.
-/

/-! ## A336997.P9789429690704105570

`A088624(A001127(n))`
-/

namespace A336997.P9789429690704105570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088624 (A001127 n).toNat

end

end A336997.P9789429690704105570

/-!
# A336998: a(n) = n! * Sum_{d|n} 3^(d - 1) / d!.

The programs for A336998, there is no canonical definition to state claims against.
-/

/-! ## A336998.P3244120421950505748

`A079430(A319356(n+1))+A060898(n)`
-/

namespace A336998.P3244120421950505748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079430 (A319356 (n + 1)).toNat + A060898 n

end

end A336998.P3244120421950505748

