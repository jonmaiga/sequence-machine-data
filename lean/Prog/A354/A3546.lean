import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C026

/-!
# A354600: a(n) = Product_{k=0..9} floor((n+k)/10).

The programs for A354600, there is no canonical definition to state claims against.
-/

/-! ## A354600.P7793157725956596670

`A053644(A275076(n))-A275077(n)`
-/

namespace A354600.P7793157725956596670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A275076 n).toNat - A275077 n

end

end A354600.P7793157725956596670

/-! ## A354600.P13478419214359264832

`A053644(A275077(n+1))-A275077(n)`
-/

namespace A354600.P13478419214359264832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A275077 (n + 1)).toNat - A275077 n

end

end A354600.P13478419214359264832

/-! ## A354600.P4193077382686872578

`A231563(∏[∑[char[10*n]]])`
-/

namespace A354600.P4193077382686872578
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231563 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A354600.P4193077382686872578

/-! ## A354600.P4595507949996144025

`floor(record[A333220(n+1)/32])`
-/

namespace A354600.P4595507949996144025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333220 (n + 1) : ℚ) / 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A354600.P4595507949996144025

/-! ## A354600.P1716113366324667384

`A171942(A127194(n+1))`
-/

namespace A354600.P1716113366324667384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (A127194 (n + 1)).toNat

end

end A354600.P1716113366324667384

/-!
# A354601: Maximal GCD of ten positive integers with sum n.

The programs for A354601, there is no canonical definition to state claims against.
-/

/-! ## A354601.P3859754035003883139

`A124765(or(A130791(n+1), A130791(n+5)))`
-/

namespace A354601.P3859754035003883139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (Int.lor (A130791 (n + 1)) (A130791 (n + 5))).toNat

end

end A354601.P3859754035003883139

/-! ## A354601.P16810084051638602278

`A073093(gcd(A008000(n), A147454(n+1)))`
-/

namespace A354601.P16810084051638602278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (Int.gcd (A008000 n) (A147454 (n + 1)))

end

end A354601.P16810084051638602278

/-! ## A354601.P15139243605352529083

`gcd(A036666(2*(n+2)), A124765(A025048(n)))`
-/

namespace A354601.P15139243605352529083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036666 (2 * (n + 2))) (A124765 (A025048 n).toNat)

end

end A354601.P15139243605352529083

/-! ## A354601.P7210899346272951070

`A327394(A322437(n+1)+A305195(3*n+1))`
-/

namespace A354601.P7210899346272951070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327394 (A322437 (n + 1) + A305195 (3 * n + 1)).toNat

end

end A354601.P7210899346272951070

/-! ## A354601.P1567763585010074201

`A001222(A000040(n+1)*A305195(3*n+1))`
-/

namespace A354601.P1567763585010074201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) * A305195 (3 * n + 1)).toNat

end

end A354601.P1567763585010074201

/-!
# A354602: a(n) is the number of trivial braids on 3 strands with 2*n crossings.

The programs for A354602, there is no canonical definition to state claims against.
-/

/-! ## A354602.P1586351757543616658

`A358653(A030149(n+1))`
-/

namespace A354602.P1586351757543616658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358653 (A030149 (n + 1)).toNat

end

end A354602.P1586351757543616658

/-!
# A354603: Numbers k such that sum of distinct primes dividing k is equal to the sum of proper divisors of k+1.

The programs for A354603, there is no canonical definition to state claims against.
-/

/-! ## A354603.P5477782828725483272

`filter[A223136(n+1), A101040(#)]`
-/

namespace A354603.P5477782828725483272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A354603.P5477782828725483272

/-! ## A354603.P12052377330574209213

`filter[A223136(n+1), A211487(#)]`
-/

namespace A354603.P12052377330574209213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A354603.P12052377330574209213

/-! ## A354603.P18124210747174089341

`filter[A223136(n+1), A353471(#)]`
-/

namespace A354603.P18124210747174089341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A354603.P18124210747174089341

/-! ## A354603.P3618316593448205321

`filter[A223136(n+1), A353788(#)]`
-/

namespace A354603.P3618316593448205321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A354603.P3618316593448205321

/-! ## A354603.P17878389887196552082

`filter[A223136(n+1), A354029(#)]`
-/

namespace A354603.P17878389887196552082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A354603.P17878389887196552082

/-!
# A354604: Midpoints of record gaps between primes: a(n) = (A000101(n) + A002386(n))/2 for n > 1.

The programs for A354604, there is no canonical definition to state claims against.
-/

/-! ## A354604.P14819482423161658351

`(A002386(n+2)+A000101(n+2))/2`
-/

namespace A354604.P14819482423161658351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002386 (n + 2) + A000101 (n + 2) : ℚ) / 2

end

end A354604.P14819482423161658351

/-! ## A354604.P1014532963268834059

`A002386(n+2)+A005250(n+2)/2`
-/

namespace A354604.P1014532963268834059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002386 (n + 2) : ℚ) + (A005250 (n + 2) : ℚ) / 2

end

end A354604.P1014532963268834059

/-! ## A354604.P5206675109416775265

`A000101(n+2)-A005250(n+2)/2`
-/

namespace A354604.P5206675109416775265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000101 (n + 2) : ℚ) - (A005250 (n + 2) : ℚ) / 2

end

end A354604.P5206675109416775265

/-! ## A354604.P7606719308779421298

`A002386(n+2)+record[A014321(n+1)]`
-/

namespace A354604.P7606719308779421298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354604.P7606719308779421298

/-! ## A354604.P1781025598867421819

`(A114058(n+2)+A005250(n+2))/2`
-/

namespace A354604.P1781025598867421819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114058 (n + 2) + A005250 (n + 2) : ℚ) / 2

end

end A354604.P1781025598867421819

/-!
# A354605: Number of vertices among all distinct circles that can be constructed from a point on the origin and n equally spaced points on each of the +x,-x,+y,-y coordinates axes using only a compass.

The programs for A354605, there is no canonical definition to state claims against.
-/

/-! ## A354605.P11171715959444155302

`A356358(n+1)+1-A353782(n+1)`
-/

namespace A354605.P11171715959444155302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356358 (n + 1) + (1 - A353782 (n + 1))

end

end A354605.P11171715959444155302

/-!
# A354606: a(1) = 1; for n > 1, a(n) is number of terms in the first n-1 terms of the sequence that have the same number of divisors as a(n-1).

The programs for A354606, there is no canonical definition to state claims against.
-/

/-! ## A354606.P3558145395330756689

`gcd(A005563(A000079(n)), A362031(n+1))`
-/

namespace A354606.P3558145395330756689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005563 (A000079 n).toNat) (A362031 (n + 1))

end

end A354606.P3558145395330756689

/-! ## A354606.P857574535890900642

`and(A167053(A336617(n)), A362031(n+1))`
-/

namespace A354606.P857574535890900642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167053 (A336617 n).toNat) (A362031 (n + 1))

end

end A354606.P857574535890900642

/-! ## A354606.P1726262946432789313

`A362031(n+1)%A306012(A270890(n+4))`
-/

namespace A354606.P1726262946432789313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362031 (n + 1)) (A306012 (A270890 (n + 4)).toNat)

end

end A354606.P1726262946432789313

/-! ## A354606.P7199353538293837760

`and(A077594(A273169(3*n+4)), A362031(n+1))`
-/

namespace A354606.P7199353538293837760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077594 (A273169 (3 * n + 4)).toNat) (A362031 (n + 1))

end

end A354606.P7199353538293837760

/-! ## A354606.P566013694617027413

`A362031(A122203(∑[n+1]))`
-/

namespace A354606.P566013694617027413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362031 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A354606.P566013694617027413

/-!
# A354607: Triangular array read by rows: T(n,k) is the number of labeled tournaments on [n] that have exactly k irreducible (strongly connected) components, n >= 0, 0 <= k <= n.

The programs for A354607, there is no canonical definition to state claims against.
-/

/-! ## A354607.P17074262471526198637

`A281188(A276588(2*n+3)+A171890(3*n+2))`
-/

namespace A354607.P17074262471526198637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281188 (A276588 (2 * n + 3) + A171890 (3 * n + 2)).toNat

end

end A354607.P17074262471526198637

/-!
# A354608: Number of quadruples (p_1, ..., p_4) of positive integers such that p_{i-1} <= p_i <= n^(i-1).

The programs for A354608, the canonical program `A354608.P15751943801997192011` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354608 has offset 0).

The definition of A354608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354608.P15751943801997192011

`(((((6*n-6)*n+3)*n+4)*n-3)*n+2)*n/6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A354608

/-- `(((((6*n-6)*n+3)*n+4)*n-3)*n+2)*n/6` -/
def P15751943801997192011.Spec : Prop :=
  ∀ n, P15751943801997192011.a n = (A354608 n : ℚ)

end A354608

/-! ## A354608.P9588972948332655473

`A355576(eq[4, A002262(n)])`
-/

namespace A354608.P9588972948332655473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354608.P9588972948332655473

namespace A354608

/-- `A355576(eq[4, A002262(n)])` -/
def P9588972948332655473.Spec : Prop :=
  ∀ n, P9588972948332655473.a n = A354608 n

end A354608

/-! ## A354608.P12985203316661902057

`A355576(eq[16, A059268(n)])`
-/

namespace A354608.P12985203316661902057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354608.P12985203316661902057

namespace A354608

/-- `A355576(eq[16, A059268(n)])` -/
def P12985203316661902057.Spec : Prop :=
  ∀ n, P12985203316661902057.a n = A354608 n

end A354608

/-! ## A354608.P5662516186892524204

`A355576(A141214(n+1)+7)`
-/

namespace A354608.P5662516186892524204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A141214 (n + 1) + 7).toNat

end

end A354608.P5662516186892524204

namespace A354608

/-- `A355576(A141214(n+1)+7)` -/
def P5662516186892524204.Spec : Prop :=
  ∀ n, P5662516186892524204.a n = A354608 n

end A354608

/-! ## A354608.P9148902409183073417

`A355576(A055999(n+1)+10)`
-/

namespace A354608.P9148902409183073417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A055999 (n + 1) + 10).toNat

end

end A354608.P9148902409183073417

namespace A354608

/-- `A355576(A055999(n+1)+10)` -/
def P9148902409183073417.Spec : Prop :=
  ∀ n, P9148902409183073417.a n = A354608 n

end A354608

/-!
# A354609: Carmichael numbers ending in 1.

The programs for A354609, there is no canonical definition to state claims against.
-/

/-! ## A354609.P11304899009930945371

`∩[10*n+1, A002997(n+1)]`
-/

namespace A354609.P11304899009930945371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354609.P11304899009930945371

/-! ## A354609.P5054326569871716707

`∩[A002997(n+1), A017281(n)]`
-/

namespace A354609.P5054326569871716707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354609.P5054326569871716707

/-! ## A354609.P16930342250756295922

`A002997(eq[A126749(n+2), A237593(n+1)])`
-/

namespace A354609.P16930342250756295922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126749 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A354609.P16930342250756295922

/-!
# A354611: Expansion of e.g.f. 1/(2 - (1 - x)^x).

The programs for A354611, there is no canonical definition to state claims against.
-/

/-! ## A354611.P2778005570043904770

`A000038(A001652(n))-A356906(n)`
-/

namespace A354611.P2778005570043904770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A001652 n).toNat - A356906 n

end

end A354611.P2778005570043904770

/-! ## A354611.P17700894353135054150

`A000122(A002457(n))-A356906(n)`
-/

namespace A354611.P17700894353135054150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A002457 n).toNat - A356906 n

end

end A354611.P17700894353135054150

/-!
# A354612: Expansion of e.g.f. exp(f(x) - 1) where f(x) = (1 + x)^x = e.g.f. for A007113.

The programs for A354612, there is no canonical definition to state claims against.
-/

/-! ## A354612.P7826479342260603226

`A008836(A002110(n))*A052830(n)`
-/

namespace A354612.P7826479342260603226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A002110 n).toNat * A052830 n

end

end A354612.P7826479342260603226

/-! ## A354612.P2683681213012325631

`A033999(A039724(n))*A052830(n)`
-/

namespace A354612.P2683681213012325631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A039724 n).toNat * A052830 n

end

end A354612.P2683681213012325631

/-!
# A354613: Expansion of e.g.f. 1/(2 - (1 + x)^x).

The programs for A354613, there is no canonical definition to state claims against.
-/

/-! ## A354613.P4627439323521808969

`n*(A262750(A114040(n)+1)-a(n-1))` with `a(0)=1`
-/

namespace A354613.P4627439323521808969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A262750 (A114040 n + 1).toNat - a (n - 1))

end

end A354613.P4627439323521808969

/-! ## A354613.P13883339137701882259

`A008836(A000312(n))*A355842(n)`
-/

namespace A354613.P13883339137701882259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000312 n).toNat * A355842 n

end

end A354613.P13883339137701882259

/-!
# A354614: Number of distinct substrings of length A342263(n) that appear at least twice in the binary expansion of n.

The programs for A354614, there is no canonical definition to state claims against.
-/

/-! ## A354614.P9550750025797365393

`A169671(floor(A329860(2*n)/2))+1`
-/

namespace A354614.P9550750025797365393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169671 ⌊(A329860 (2 * n) : ℚ) / 2⌋.toNat + 1

end

end A354614.P9550750025797365393

/-! ## A354614.P14334670974340566674

`gcd(A000002(A269380(n+1)), A039953(2*n+1))`
-/

namespace A354614.P14334670974340566674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000002 (A269380 (n + 1)).toNat) (A039953 (2 * n + 1))

end

end A354614.P14334670974340566674

/-! ## A354614.P14005892326591531289

`A043290(A183921(n+2))`
-/

namespace A354614.P14005892326591531289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A183921 (n + 2)).toNat

end

end A354614.P14005892326591531289

/-! ## A354614.P10478795737906914532

`gcd(A185340(n+5), A300410(n+1))`
-/

namespace A354614.P10478795737906914532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185340 (n + 5)) (A300410 (n + 1))

end

end A354614.P10478795737906914532

/-! ## A354614.P15304318493213511142

`gcd(A236104(A161409(n)), A300410(n+1))`
-/

namespace A354614.P15304318493213511142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236104 (A161409 n).toNat) (A300410 (n + 1))

end

end A354614.P15304318493213511142

/-!
# A354616: Numbers such that every bit in its binary expansion is in a substring of length A342263(n) that appears more than once.

The programs for A354616, there is no canonical definition to state claims against.
-/

/-! ## A354616.P15126798663359470222

`lt[A361667(n+1), A001222(A270339(n+1))]`
-/

namespace A354616.P15126798663359470222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A270339 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354616.P15126798663359470222

/-! ## A354616.P5600830216653639014

`lt[A361667(n+1), A219252(A292381(n+2))]`
-/

namespace A354616.P5600830216653639014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219252 (A292381 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354616.P5600830216653639014

/-! ## A354616.P3070927501249144259

`lt[A192583(n+4), A040976(A360648(n+1))]`
-/

namespace A354616.P3070927501249144259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192583 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A360648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354616.P3070927501249144259

/-! ## A354616.P6862633118960639998

`lt[A024940(3*n+4), A286548(A333219(n+1))]`
-/

namespace A354616.P6862633118960639998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354616.P6862633118960639998

/-!
# A354618: a(n) = (sum of the digits of 5^n) - (sum of the digits of 2^n).

The programs for A354618, there is no canonical definition to state claims against.
-/

/-! ## A354618.P15621597538055598640

`A066001(n)-A001370(n)`
-/

namespace A354618.P15621597538055598640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 n - A001370 n

end

end A354618.P15621597538055598640

/-! ## A354618.P12674729081311343090

`A066001(n)-∑{digits}[A028909(n), #]`
-/

namespace A354618.P12674729081311343090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 n - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A354618.P12674729081311343090

/-! ## A354618.P7483300016028721505

`A066001(n)-∑{digits}[A122803(n), #]`
-/

namespace A354618.P7483300016028721505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 n - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A354618.P7483300016028721505

/-! ## A354618.P445822696731131973

`∑{digits}[A000351(n), #]-A001370(n)`
-/

namespace A354618.P445822696731131973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A001370 n

end

end A354618.P445822696731131973

/-! ## A354618.P8184328114520029159

`∑{digits}[A024049(n)+1, #]-A001370(n)`
-/

namespace A354618.P8184328114520029159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A001370 n

end

end A354618.P8184328114520029159

/-! ## A354618.P13861854943587454746

`∑{digits}[A024049(n)+1, #]-∑{digits}[A028909(n), #]`
-/

namespace A354618.P13861854943587454746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A354618.P13861854943587454746

/-!
# A354620: Numbers k such that whenever the sum of three squares is divisible by k, at least two of the squares are congruent mod k.

The programs for A354620, there is no canonical definition to state claims against.
-/

/-! ## A354620.P12789814963228813346

`∑[A367515(A007999(n))]`
-/

namespace A354620.P12789814963228813346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367515 (A007999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354620.P12789814963228813346

/-! ## A354620.P10971400455345175235

`eq[A326625(n), A334946(n+1)]`
-/

namespace A354620.P10971400455345175235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354620.P10971400455345175235

/-! ## A354620.P15281869291726874248

`eq[A007318(A005811(n)), A326625(n)]`
-/

namespace A354620.P15281869291726874248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354620.P15281869291726874248

/-! ## A354620.P17694495396645184424

`eq[A022175(A035386(n)), A326625(n)]`
-/

namespace A354620.P17694495396645184424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022175 (A035386 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354620.P17694495396645184424

/-! ## A354620.P7824759225657748449

`∪[A070939(A030267(n+1)), A246692(n+1)]`
-/

namespace A354620.P7824759225657748449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A030267 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354620.P7824759225657748449

/-!
# A354621: Number of n-tuples (p_1, p_2, ..., p_n) of positive integers such that p_{i-1} <= p_i <= prime(i).

The programs for A354621, there is no canonical definition to state claims against.
-/

/-! ## A354621.P6098037635435099448

`A286626(∏[eq[n, ∏{d}[n, #]]]-1)`
-/

namespace A354621.P6098037635435099448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286626 (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A354621.P6098037635435099448

/-! ## A354621.P7047753745097423746

`A286626(∏[lt[∏{d}[n, #], n+1]]-1)`
-/

namespace A354621.P7047753745097423746
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286626 (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A354621.P7047753745097423746

/-! ## A354621.P17079815689307597459

`A286626(A002110(n)-1)`
-/

namespace A354621.P17079815689307597459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286626 (A002110 n - 1).toNat

end

end A354621.P17079815689307597459

/-!
# A354624: Expansion of e.g.f. (1 - x)^(-x^4).

The programs for A354624, there is no canonical definition to state claims against.
-/

/-! ## A354624.P4937683296855895531

`A355609(A052905(n+2))`
-/

namespace A354624.P4937683296855895531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A052905 (n + 2)).toNat

end

end A354624.P4937683296855895531

/-! ## A354624.P6722117894482819909

`A355609(eq[4, A025581(n)])`
-/

namespace A354624.P6722117894482819909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354624.P6722117894482819909

/-! ## A354624.P6233300574638898666

`A355609(A034856(n+4)-3)`
-/

namespace A354624.P6233300574638898666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A034856 (n + 4) - 3).toNat

end

end A354624.P6233300574638898666

/-! ## A354624.P9878211580313026742

`A355609(A167614(n+2)+Δ[n²])`
-/

namespace A354624.P9878211580313026742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A167614 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A354624.P9878211580313026742

/-! ## A354624.P4528505624971165628

`A355609(A055998(n+2)-A001489(n+3))`
-/

namespace A354624.P4528505624971165628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A055998 (n + 2) - A001489 (n + 3)).toNat

end

end A354624.P4528505624971165628

/-!
# A354625: Expansion of e.g.f. (1 + x)^(x^4).

The programs for A354625, there is no canonical definition to state claims against.
-/

/-! ## A354625.P13524621265851329899

`A355607(A052905(n+2))`
-/

namespace A354625.P13524621265851329899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355607 (A052905 (n + 2)).toNat

end

end A354625.P13524621265851329899

/-! ## A354625.P5659489701573280413

`A355607(eq[4, A025581(n)])`
-/

namespace A354625.P5659489701573280413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354625.P5659489701573280413

/-! ## A354625.P168605058368569755

`A355607(A155212(n+1)+3)`
-/

namespace A354625.P168605058368569755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355607 (A155212 (n + 1) + 3).toNat

end

end A354625.P168605058368569755

/-! ## A354625.P3057065863263066843

`A355607(Δ[A023545(n+1)]-1)`
-/

namespace A354625.P3057065863263066843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355607 (f1 (n + 1) - f1 n - 1).toNat

end

end A354625.P3057065863263066843

/-! ## A354625.P8099461023519279015

`A355607(A167614(n+2)+Δ[n²])`
-/

namespace A354625.P8099461023519279015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355607 (A167614 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A354625.P8099461023519279015

/-!
# A354626: Numbers that can't be written as the sum of a Fibonacci number and the square of a Fibonacci number.

The programs for A354626, the canonical program `A354626.P396020870782513592` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354626 has offset 1).

The definition of A354626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354626.P18170336671430882177

`comp[A395853(n+1)]`
-/

namespace A354626.P18170336671430882177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354626.P18170336671430882177

namespace A354626

/-- `comp[A395853(n+1)]` -/
def P18170336671430882177.Spec : Prop :=
  ∀ n, (P18170336671430882177.a n : ℤ) = A354626 (n + 1)

end A354626

/-! ## A354626.P396020870782513592

`comp[A141169(n)+A141169(A099375(n))²]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A354626

/-- `comp[A141169(n)+A141169(A099375(n))²]` -/
def P396020870782513592.Spec : Prop :=
  ∀ n, (P396020870782513592.a n : ℤ) = A354626 (n + 1)

theorem P396020870782513592.correct : P396020870782513592.Spec := by
  intro n
  simp only [A354626, Nat.add_sub_cancel]

end A354626

/-! ## A354626.P9969446814934813102

`lt[A335465(2*n+3), A131198(A059851(n+2))]`
-/

namespace A354626.P9969446814934813102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 (A059851 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354626.P9969446814934813102

namespace A354626

/-- `lt[A335465(2*n+3), A131198(A059851(n+2))]` -/
def P9969446814934813102.Spec : Prop :=
  ∀ n, (P9969446814934813102.a n : ℤ) = A354626 (n + 1)

end A354626

/-! ## A354626.P7500185604738308454

`A241143(n+4)+A182850(A067078(n+1))`
-/

namespace A354626.P7500185604738308454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241143 (n + 4) + A182850 (A067078 (n + 1)).toNat

end

end A354626.P7500185604738308454

namespace A354626

/-- `A241143(n+4)+A182850(A067078(n+1))` -/
def P7500185604738308454.Spec : Prop :=
  ∀ n, P7500185604738308454.a n = A354626 (n + 1)

end A354626

/-! ## A354626.P11969952146051698161

`A297281(lt[A006776(n+1), A106303(n+1)])`
-/

namespace A354626.P11969952146051698161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297281 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354626.P11969952146051698161

namespace A354626

/-- `A297281(lt[A006776(n+1), A106303(n+1)])` -/
def P11969952146051698161.Spec : Prop :=
  ∀ n, P11969952146051698161.a n = A354626 (n + 1)

end A354626

/-!
# A354645: G.f. A(x) satisfies: -x = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n-1)/2) * A(x)^n.

The programs for A354645, there is no canonical definition to state claims against.
-/

/-! ## A354645.P17120866468410457631

`A248609(ceil(3^(n-1)))-ceil(3^(n-1))`
-/

namespace A354645.P17120866468410457631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248609 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A354645.P17120866468410457631

/-! ## A354645.P18234333150190520697

`A229119(A056952(n+1))`
-/

namespace A354645.P18234333150190520697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229119 (A056952 (n + 1)).toNat

end

end A354645.P18234333150190520697

/-! ## A354645.P18173448645045643939

`Δ[A108150(n+3)]-A001065(n+1)`
-/

namespace A354645.P18173448645045643939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108150 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001065 (n + 1)

end

end A354645.P18173448645045643939

/-!
# A354646: G.f. A(x) satisfies: 1 = Sum_{n=-oo..+oo} (x + x^n)^n * (-2*A(x))^(n*(n-1)/2).

The programs for A354646, there is no canonical definition to state claims against.
-/

/-! ## A354646.P14803475663537726330

`A008348(A132695(n))-A058331(n)`
-/

namespace A354646.P14803475663537726330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 (A132695 n).toNat - A058331 n

end

end A354646.P14803475663537726330

/-!
# A354647: G.f. A(x) satisfies: -x^2 = Sum_{n=-oo..oo} (-1)^n * x^(n*(n+1)/2) * A(x)^(n*(n-1)/2).

The programs for A354647, there is no canonical definition to state claims against.
-/

/-! ## A354647.P7720067188848239549

`A054404(A360282(n)+A050535(n))`
-/

namespace A354647.P7720067188848239549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A360282 n + A050535 n).toNat

end

end A354647.P7720067188848239549

/-! ## A354647.P3334384824084111252

`A108141(A148144(n))-A008618(A000127(n+1))`
-/

namespace A354647.P3334384824084111252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148144 n).toNat - A008618 (A000127 (n + 1)).toNat

end

end A354647.P3334384824084111252

/-! ## A354647.P14392297181527999676

`A024417(A164651(n)+n)-A008618(A000127(n+1))`
-/

namespace A354647.P14392297181527999676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A164651 n + (n : ℤ)).toNat - A008618 (A000127 (n + 1)).toNat

end

end A354647.P14392297181527999676

/-!
# A354650: G.f. A(x,y) satisfies: -y = f(-x,-A(x,y)), where f(x,y) = Sum_{n=-oo..oo} x^(n*(n+1)/2) * y^(n*(n-1)/2) is Ramanujan's theta function.

The programs for A354650, there is no canonical definition to state claims against.
-/

/-! ## A354650.P4775823561465004851

`abs(A354649(n))`
-/

namespace A354650.P4775823561465004851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354649 n|

end

end A354650.P4775823561465004851

/-! ## A354650.P12712953987924258454

`gcd(A000038(n), A354649(n))`
-/

namespace A354650.P12712953987924258454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A354649 n)

end

end A354650.P12712953987924258454

/-! ## A354650.P2804803189847678882

`lcm(A020985(n), A354649(n))`
-/

namespace A354650.P2804803189847678882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A354649 n)

end

end A354650.P2804803189847678882

/-! ## A354650.P9839463349777677990

`lcm(-A354649(n), A033999(n))`
-/

namespace A354650.P9839463349777677990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A354649 n) (A033999 n)

end

end A354650.P9839463349777677990

/-! ## A354650.P3566307584705900853

`lcm((-1)^n, A354649(A028310(n)))`
-/

namespace A354650.P3566307584705900853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A354649 (A028310 n).toNat)

end

end A354650.P3566307584705900853

/-!
# A354651: G.f. A(x) satisfies: 1/(1 - x) = Sum_{n>=1} (-1)^(n-1) * A(x)^(n^2).

The programs for A354651, there is no canonical definition to state claims against.
-/

/-! ## A354651.P5447649302592971394

`A106336(n)+A018794(A037957(n))-A018794(n+1)²`
-/

namespace A354651.P5447649302592971394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106336 n + A018794 (A037957 n).toNat - A018794 (n + 1) ^ 2

end

end A354651.P5447649302592971394

/-! ## A354651.P3035494440933507899

`A185284(A023439(n))+A106336(n)-A018794(n+1)²`
-/

namespace A354651.P3035494440933507899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A023439 n).toNat + A106336 n - A018794 (n + 1) ^ 2

end

end A354651.P3035494440933507899

/-! ## A354651.P14000936262682855345

`A185284(A023440(n))+A106336(n)-A018794(n+1)²`
-/

namespace A354651.P14000936262682855345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A023440 n).toNat + A106336 n - A018794 (n + 1) ^ 2

end

end A354651.P14000936262682855345

/-! ## A354651.P9847349173153347586

`A205567(A023423(n))+A106336(n)-A018794(n+1)²`
-/

namespace A354651.P9847349173153347586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205567 (A023423 n).toNat + A106336 n - A018794 (n + 1) ^ 2

end

end A354651.P9847349173153347586

/-! ## A354651.P7623804324971207496

`A178780(A174316(n))+A106336(n)`
-/

namespace A354651.P7623804324971207496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A174316 n).toNat + A106336 n

end

end A354651.P7623804324971207496

/-!
# A354655: Column 2 of triangle A354650: a(n) = A354650(n,2), for n >= 1.

The programs for A354655, there is no canonical definition to state claims against.
-/

/-! ## A354655.P4298591976861884530

`3*A354657(n+1)`
-/

namespace A354655.P4298591976861884530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A354657 (n + 1)

end

end A354655.P4298591976861884530

/-! ## A354655.P6851443065308776823

`A354650(∑[2*(n+1)]+2)`
-/

namespace A354655.P6851443065308776823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A354655.P6851443065308776823

/-! ## A354655.P16634434887797015392

`xor(1, xor(1, A354650(A003682(n+2))))`
-/

namespace A354655.P16634434887797015392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A354650 (A003682 (n + 2)).toNat))

end

end A354655.P16634434887797015392

/-! ## A354655.P11247142385597687997

`A354650(A014206(n+1))+2-4/2`
-/

namespace A354655.P11247142385597687997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354650 (A014206 (n + 1)).toNat + 2 : ℚ) - (4 : ℚ) / 2

end

end A354655.P11247142385597687997

/-! ## A354655.P13006999963534934940

`A354650(A003682(n+2))-A000038(n)%2`
-/

namespace A354655.P13006999963534934940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 (A003682 (n + 2)).toNat - Int.tmod (A000038 n) 2

end

end A354655.P13006999963534934940

/-! ## A354655.P17208338530176996525

`A001113(C(2, n)!)%2*A354650(A003682(n+2))`
-/

namespace A354655.P17208338530176996525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 (Nat.factorial (Nat.choose 2 n) + 1)) 2 * A354650 (A003682 (n + 2)).toNat

end

end A354655.P17208338530176996525

/-! ## A354655.P11807760620055663291

`A354650(A003682(n+2))-A176246(n+1)%2+1`
-/

namespace A354655.P11807760620055663291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 (A003682 (n + 2)).toNat - Int.tmod (A176246 (n + 1)) 2 + 1

end

end A354655.P11807760620055663291

/-! ## A354655.P5129699120138601594

`A353628(A000523(n+1)+1)*A354650(A014206(n+1))`
-/

namespace A354655.P5129699120138601594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353628 (A000523 (n + 1) + 1).toNat * A354650 (A014206 (n + 1)).toNat

end

end A354655.P5129699120138601594

/-! ## A354655.P14211114813396458939

`A353628(A083898(n+1)+1)*A354650(A014206(n+1))`
-/

namespace A354655.P14211114813396458939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353628 (A083898 (n + 1) + 1).toNat * A354650 (A014206 (n + 1)).toNat

end

end A354655.P14211114813396458939

/-!
# A354656: Column 3 of triangle A354650: a(n) = A354650(n,3), for n >= 1.

The programs for A354656, there is no canonical definition to state claims against.
-/

/-! ## A354656.P17001899475969724902

`A354650(∑[n+3]+C(n, 2)+2)`
-/

namespace A354656.P17001899475969724902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2 + 2)

end

end A354656.P17001899475969724902

/-! ## A354656.P10338290991098672593

`A354650(A027688(n+1))`
-/

namespace A354656.P10338290991098672593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 (A027688 (n + 1)).toNat

end

end A354656.P10338290991098672593

/-! ## A354656.P12481056434288935971

`A354650(A014206(n+1)+1)`
-/

namespace A354656.P12481056434288935971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 (A014206 (n + 1) + 1).toNat

end

end A354656.P12481056434288935971

/-! ## A354656.P13544023837744305641

`A354650(A003682(n+2)+1)`
-/

namespace A354656.P13544023837744305641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 (A003682 (n + 2) + 1).toNat

end

end A354656.P13544023837744305641

/-! ## A354656.P1998072070447784113

`record[gcd(A354650(2*n+3), A355350(n))]`
-/

namespace A354656.P1998072070447784113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A354650 (2 * n + 3)) (A355350 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354656.P1998072070447784113

/-!
# A354657: a(n) = A354655(n)/3, for n >= 1.

The programs for A354657, there is no canonical definition to state claims against.
-/

/-! ## A354657.P7828668183695605261

`A354655(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354657.P7828668183695605261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354655 (n + 1) : ℚ) / 3

end

end A354657.P7828668183695605261

/-! ## A354657.P13778373686140179145

`A354650(∑[2*(n+1)]+2)/3`
-/

namespace A354657.P13778373686140179145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354650 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 3

end

end A354657.P13778373686140179145

/-! ## A354657.P11963148900114131830

`xor(1, xor(1, A354650(A003682(n+2))))/3`
-/

namespace A354657.P11963148900114131830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (Int.xor 1 (A354650 (A003682 (n + 2)).toNat)) : ℚ) / 3

end

end A354657.P11963148900114131830

/-! ## A354657.P17695748954617829163

`(A354650(A014206(n+1))+2-4/2)/3`
-/

namespace A354657.P17695748954617829163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A354650 (A014206 (n + 1)).toNat + 2 : ℚ) - (4 : ℚ) / 2) / 3

end

end A354657.P17695748954617829163

/-! ## A354657.P18096906704214349506

`(A354650(A003682(n+2))-A000038(n)%2)/3`
-/

namespace A354657.P18096906704214349506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354650 (A003682 (n + 2)).toNat - Int.tmod (A000038 n) 2 : ℚ) / 3

end

end A354657.P18096906704214349506

/-! ## A354657.P15196384343754305815

`A001113(C(2, n)!)%2*A354650(A003682(n+2))/3`
-/

namespace A354657.P15196384343754305815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A001113 (Nat.factorial (Nat.choose 2 n) + 1)) 2 * A354650 (A003682 (n + 2)).toNat : ℚ) / 3

end

end A354657.P15196384343754305815

/-!
# A354658: A diagonal of triangle A354650: a(n) = A354650(n,n), for n >= 0.

The programs for A354658, there is no canonical definition to state claims against.
-/

/-! ## A354658.P4465802501684380608

`A354650(n*(n+2))`
-/

namespace A354658.P4465802501684380608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 (n * (n + 2))

end

end A354658.P4465802501684380608

/-! ## A354658.P16491902242710661533

`A355350(∑[4*n])`
-/

namespace A354658.P16491902242710661533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354658.P16491902242710661533

/-! ## A354658.P12726483388329821686

`record[gcd(A354649(n), A355350(2*n))]`
-/

namespace A354658.P12726483388329821686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A354649 n) (A355350 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354658.P12726483388329821686

/-! ## A354658.P15956090333648975295

`gcd(A000038(n), A355350(A046092(n)))`
-/

namespace A354658.P15956090333648975295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A355350 (A046092 n).toNat)

end

end A354658.P15956090333648975295

/-! ## A354658.P15583627792836586059

`A057427(n+4)*A355350(A046092(n))`
-/

namespace A354658.P15583627792836586059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) * A355350 (A046092 n).toNat

end

end A354658.P15583627792836586059

/-! ## A354658.P3403013617417031838

`A355350(A046092(n))%A354659(n+1)`
-/

namespace A354658.P3403013617417031838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355350 (A046092 n).toNat) (A354659 (n + 1))

end

end A354658.P3403013617417031838

/-! ## A354658.P9286531500821958504

`A355350(A046092(n))+A000038(2*(n+2))`
-/

namespace A354658.P9286531500821958504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355350 (A046092 n).toNat + A000038 (2 * (n + 2))

end

end A354658.P9286531500821958504

/-!
# A354659: A diagonal of triangle A354650: a(n) = A354650(n,n+1), for n >= 0.

The programs for A354659, there is no canonical definition to state claims against.
-/

/-! ## A354659.P14922750928096272761

`A354649((n+1)²)`
-/

namespace A354659.P14922750928096272761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354649 ((n + 1) ^ 2)

end

end A354659.P14922750928096272761

/-! ## A354659.P854984178198213196

`A354650((n+1)²)`
-/

namespace A354659.P854984178198213196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 ((n + 1) ^ 2)

end

end A354659.P854984178198213196

/-! ## A354659.P6914268940209730043

`record[A354649((1-n)²)]`
-/

namespace A354659.P6914268940209730043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354649 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354659.P6914268940209730043

/-! ## A354659.P6959301856570801811

`record[A354650(floor((n/2)²))]`
-/

namespace A354659.P6959301856570801811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354659.P6959301856570801811

/-! ## A354659.P12048254606399888111

`abs(A354649(∑[2*n+1]))`
-/

namespace A354659.P12048254606399888111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354649 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A354659.P12048254606399888111

/-!
# A354660: a(n) = A354650(n,2*n), for n >= 0.

The programs for A354660, there is no canonical definition to state claims against.
-/

/-! ## A354660.P3777871728372662578

`A354650(n*(n+3))`
-/

namespace A354660.P3777871728372662578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354650 (n * (n + 3))

end

end A354660.P3777871728372662578

/-! ## A354660.P8436251205361498176

`record[gcd(A354649(2*n), A355350(n+1))]`
-/

namespace A354660.P8436251205361498176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A354649 (2 * n)) (A355350 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354660.P8436251205361498176

/-! ## A354660.P15968938576022099148

`record[gcd(A195152(n), A354649(2*n))]`
-/

namespace A354660.P15968938576022099148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195152 n) (A354649 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354660.P15968938576022099148

/-! ## A354660.P10311461560740931550

`record[gcd(A124550(n), A354650(2*n))]`
-/

namespace A354660.P10311461560740931550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124550 n) (A354650 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354660.P10311461560740931550

/-!
# A354661: G.f. A(x) satisfies: 1 = Sum_{n=-oo..oo} (-x)^(n*(n+1)/2) * A(x)^(n*(n-1)/2), with A(0) = 0.

The programs for A354661, there is no canonical definition to state claims against.
-/

/-! ## A354661.P16831513403336265703

`A104451(A018021(n+1))`
-/

namespace A354661.P16831513403336265703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104451 (A018021 (n + 1)).toNat

end

end A354661.P16831513403336265703

/-! ## A354661.P5591249222552050450

`A319935(A319911(n+1))%46`
-/

namespace A354661.P5591249222552050450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319935 (A319911 (n + 1)).toNat) 46

end

end A354661.P5591249222552050450

/-! ## A354661.P434352718361909142

`A349127(A000045(n-∏{digits}[n, #]+3+n)+1)`
-/

namespace A354661.P434352718361909142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (A000045 ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + 3 + (n : ℤ)).toNat + 1).toNat

end

end A354661.P434352718361909142

/-! ## A354661.P11446884154094791436

`A074206(A001008(n+1)*A077267(n))`
-/

namespace A354661.P11446884154094791436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A001008 (n + 1) * A077267 n).toNat

end

end A354661.P11446884154094791436

/-! ## A354661.P465973974120108777

`A011655(A321419(n))*A215897(n+1)`
-/

namespace A354661.P465973974120108777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A321419 n).toNat * A215897 (n + 1)

end

end A354661.P465973974120108777

/-!
# A354662: G.f. A(x) satisfies: 2 = Sum_{n=-oo..+oo} (-x)^(n*(n+1)/2) * A(x)^(n*(n-1)/2).

The programs for A354662, there is no canonical definition to state claims against.
-/

/-! ## A354662.P11267661395534877867

`A235487((n+1)*A011800(n))`
-/

namespace A354662.P11267661395534877867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 ((n + 1 : ℤ) * A011800 n).toNat

end

end A354662.P11267661395534877867

/-! ## A354662.P15389068764529938766

`(n+1)*A340854(A000110(n))`
-/

namespace A354662.P15389068764529938766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340854 (A000110 n).toNat

end

end A354662.P15389068764529938766

/-!
# A354665: Triangle read by rows, T(n,k) = T(n-1,k) + T(n-1,k-1) - T(n-2,k-1) + T(n-2,k-2) + T(n-3,k-1) - T(n-3,k-3) + delta(n,0)*delta(k,0) - delta(n,1)*delta(k,1), T(n

The programs for A354665, there is no canonical definition to state claims against.
-/

/-! ## A354665.P8742809103274698107

`A128227(2*n)%A130321(A095836(n+1))`
-/

namespace A354665.P8742809103274698107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128227 (2 * n)) (A130321 (A095836 (n + 1)).toNat)

end

end A354665.P8742809103274698107

/-! ## A354665.P8688256868301944177

`A144328(2*(n+1))%A308420(A120258(n))`
-/

namespace A354665.P8688256868301944177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144328 (2 * (n + 1))) (A308420 (A120258 n).toNat)

end

end A354665.P8688256868301944177

/-! ## A354665.P7518356661254304209

`and(A262284(A011782(n)), A287417(2*n+1))`
-/

namespace A354665.P7518356661254304209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262284 (A011782 n).toNat) (A287417 (2 * n + 1))

end

end A354665.P7518356661254304209

/-! ## A354665.P6369677216772842248

`and(A075209(A299561(n+1)), A215703(2*n+1))`
-/

namespace A354665.P6369677216772842248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075209 (A299561 (n + 1)).toNat) (A215703 (2 * n + 1))

end

end A354665.P6369677216772842248

/-! ## A354665.P9681638771398694719

`and(A055642(A287736(2*n+1)), A287417(2*n+1))`
-/

namespace A354665.P9681638771398694719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055642 (A287736 (2 * n + 1)).toNat) (A287417 (2 * n + 1))

end

end A354665.P9681638771398694719

/-!
# A354666: Triangle read by rows, T(n,k) = T(n-1,k) + T(n-2,k-1) + 2*T(n-2,k-2) - T(n-3,k-1) - T(n-3,k-2) + T(n-4,k-1) + T(n-4,k-2) - T(n-4,k-3) - T(n-4,k-4) + delta(n,0)*delta(k,0) - delta(n,2)*(delta(k,1) + delta(k,2)), T(n

The programs for A354666, there is no canonical definition to state claims against.
-/

/-! ## A354666.P1671681020912430062

`A354667(C(n, A363953(n)))`
-/

namespace A354666.P1671681020912430062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354667 (Nat.choose n (A363953 n).toNat)

end

end A354666.P1671681020912430062

/-! ## A354666.P10158123477364802123

`A354667(n*A363953(n)²)`
-/

namespace A354666.P10158123477364802123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354667 ((n : ℤ) * A363953 n ^ 2).toNat

end

end A354666.P10158123477364802123

/-! ## A354666.P17956903779537593714

`C(A354667(n), A354667(A257565(n)))`
-/

namespace A354666.P17956903779537593714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354667 n).toNat (A354667 (A257565 n).toNat).toNat

end

end A354666.P17956903779537593714

/-! ## A354666.P17119055265604446062

`and(A007323(A072285(n)), A059259(n))`
-/

namespace A354666.P17119055265604446062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007323 (A072285 n).toNat) (A059259 n)

end

end A354666.P17119055265604446062

/-! ## A354666.P5486825864588119532

`and(A059259(n), A270831(A294105(n)))`
-/

namespace A354666.P5486825864588119532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059259 n) (A270831 (A294105 n).toNat)

end

end A354666.P5486825864588119532

/-!
# A354667: Triangle read by rows: T(n,k) is the number of tilings of an (n+4*k) X 1 board using k (1,1;5)-combs and n-k squares.

The programs for A354667, there is no canonical definition to state claims against.
-/

/-! ## A354667.P5296059614094878846

`A354666(n)-A079365(A084938(n))`
-/

namespace A354667.P5296059614094878846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354666 n - A079365 (A084938 n).toNat

end

end A354667.P5296059614094878846

/-! ## A354667.P15298789481612061765

`A000030(A059060(n)^A191646(n))`
-/

namespace A354667.P15298789481612061765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A059060 n : ℚ) ^ (A191646 n : ℤ))).toNat

end

end A354667.P15298789481612061765

/-! ## A354667.P5310927811177591364

`and(A316974(A007318(n)), A354665(n))`
-/

namespace A354667.P5310927811177591364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A316974 (A007318 n).toNat) (A354665 n)

end

end A354667.P5310927811177591364

/-! ## A354667.P17258636293049917888

`and(A018252(A342889(n)), A354665(n))`
-/

namespace A354667.P17258636293049917888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018252 (A342889 n).toNat) (A354665 n)

end

end A354667.P17258636293049917888

/-! ## A354667.P6241893670588080280

`A035435(A005642(n+2)%A082985(n))`
-/

namespace A354667.P6241893670588080280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035435 (Int.tmod (A005642 (n + 2)) (A082985 n)).toNat

end

end A354667.P6241893670588080280

/-!
# A354668: Triangle read by rows: T(n,k) is the number of tilings of an (n+2*k) X 1 board using k (1,2;3)-combs and n-k squares.

The programs for A354668, there is no canonical definition to state claims against.
-/

/-! ## A354668.P7234852639875171983

`A281084(A269505(n+1))`
-/

namespace A354668.P7234852639875171983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281084 (A269505 (n + 1)).toNat

end

end A354668.P7234852639875171983

/-! ## A354668.P16842465595808821458

`A092573(A246278(n+2)²)`
-/

namespace A354668.P16842465595808821458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (A246278 (n + 2) ^ 2).toNat

end

end A354668.P16842465595808821458

/-! ## A354668.P13966448092368061667

`A147645(A017992(n+3)+3)`
-/

namespace A354668.P13966448092368061667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (A017992 (n + 3) + 3).toNat

end

end A354668.P13966448092368061667

/-! ## A354668.P16916272066030416206

`A092573(A246278(n+2)^2)`
-/

namespace A354668.P16916272066030416206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (A246278 (n + 2) ^ 2).toNat

end

end A354668.P16916272066030416206

/-! ## A354668.P1981478775188786914

`A049289(A049257(n+2))%3`
-/

namespace A354668.P1981478775188786914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049289 (A049257 (n + 2)).toNat) 3

end

end A354668.P1981478775188786914

/-!
# A354673: Smallest number of unit cells that must be removed from an n X n square board in order to avoid any cycles.

The programs for A354673, the canonical program `A354673.P15005755192682061621` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354673 has offset 1).

The definition of A354673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354673.P15005755192682061621

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=6, a(5)=10, a(6)=13, a(7)=18, a(8)=22, a(9)=28`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A354673

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P15005755192682061621.Spec : Prop :=
  ∀ n, P15005755192682061621.a n = A354673 (n + 1)

theorem P15005755192682061621.correct : P15005755192682061621.Spec := by
  intro n
  simp only [A354673, Nat.add_sub_cancel]

end A354673

/-! ## A354673.P9270641171648132173

`ceil(2*A118002(n)/3)`
-/

namespace A354673.P9270641171648132173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A118002 n : ℚ) / 3⌉

end

end A354673.P9270641171648132173

namespace A354673

/-- `ceil(2*A118002(n)/3)` -/
def P9270641171648132173.Spec : Prop :=
  ∀ n, P9270641171648132173.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P14521061905952780258

`A118002(n)-A004396(A002620(n))`
-/

namespace A354673.P14521061905952780258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118002 n - A004396 (A002620 n).toNat

end

end A354673.P14521061905952780258

namespace A354673

/-- `A118002(n)-A004396(A002620(n))` -/
def P14521061905952780258.Spec : Prop :=
  ∀ n, P14521061905952780258.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P11464342168953090911

`A118002(n)-A004525(A000212(n))`
-/

namespace A354673.P11464342168953090911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118002 n - A004525 (A000212 n).toNat

end

end A354673.P11464342168953090911

namespace A354673

/-- `A118002(n)-A004525(A000212(n))` -/
def P11464342168953090911.Spec : Prop :=
  ∀ n, P11464342168953090911.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P16969304816669035332

`A302405(A118002(n))`
-/

namespace A354673.P16969304816669035332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (A118002 n).toNat

end

end A354673.P16969304816669035332

namespace A354673

/-- `A302405(A118002(n))` -/
def P16969304816669035332.Spec : Prop :=
  ∀ n, P16969304816669035332.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P13590982350361593105

`A004523(A118002(n)+1)`
-/

namespace A354673.P13590982350361593105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A118002 n + 1).toNat

end

end A354673.P13590982350361593105

namespace A354673

/-- `A004523(A118002(n)+1)` -/
def P13590982350361593105.Spec : Prop :=
  ∀ n, P13590982350361593105.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P18388750339107455792

`ceil(A004772(A238531(n)+ceil(n/2))/2)`
-/

namespace A354673.P18388750339107455792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004772 (A238531 n + ⌈(n : ℚ) / 2⌉).toNat : ℚ) / 2⌉

end

end A354673.P18388750339107455792

namespace A354673

/-- `ceil(A004772(A238531(n)+ceil(n/2))/2)` -/
def P18388750339107455792.Spec : Prop :=
  ∀ n, P18388750339107455792.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P17021596979516784525

`A004523(A080476(n+1)-A289207(n))`
-/

namespace A354673.P17021596979516784525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A080476 (n + 1) - A289207 n).toNat

end

end A354673.P17021596979516784525

namespace A354673

/-- `A004523(A080476(n+1)-A289207(n))` -/
def P17021596979516784525.Spec : Prop :=
  ∀ n, P17021596979516784525.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P6798981986657952215

`A004525(A004396(n²))+floor(atan(n))`
-/

namespace A354673.P6798981986657952215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 (n ^ 2)).toNat + ⌊Real.arctan (n : ℝ)⌋

end

end A354673.P6798981986657952215

namespace A354673

/-- `A004525(A004396(n²))+floor(atan(n))` -/
def P6798981986657952215.Spec : Prop :=
  ∀ n, P6798981986657952215.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P15818888698690217405

`floor(2*A267530(n²)/3)`
-/

namespace A354673.P15818888698690217405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A267530 (n ^ 2) : ℚ) / 3⌋

end

end A354673.P15818888698690217405

namespace A354673

/-- `floor(2*A267530(n²)/3)` -/
def P15818888698690217405.Spec : Prop :=
  ∀ n, P15818888698690217405.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P2135213343796845258

`A004523(A267530(n²))`
-/

namespace A354673.P2135213343796845258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A267530 (n ^ 2)).toNat

end

end A354673.P2135213343796845258

namespace A354673

/-- `A004523(A267530(n²))` -/
def P2135213343796845258.Spec : Prop :=
  ∀ n, P2135213343796845258.a n = A354673 (n + 1)

end A354673

/-! ## A354673.P15058962680384265097

`A002264(A359506(n²))`
-/

namespace A354673.P15058962680384265097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A359506 (n ^ 2)).toNat

end

end A354673.P15058962680384265097

namespace A354673

/-- `A002264(A359506(n²))` -/
def P15058962680384265097.Spec : Prop :=
  ∀ n, P15058962680384265097.a n = A354673 (n + 1)

end A354673

/-!
# A354679: First differences of A354575.

The programs for A354679, there is no canonical definition to state claims against.
-/

/-! ## A354679.P9601125700780313606

`Δ[A354575(n+1)]`
-/

namespace A354679.P9601125700780313606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354679.P9601125700780313606

/-! ## A354679.P3583324705055544874

`A354575(n+2)-A354575(n+1)`
-/

namespace A354679.P3583324705055544874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354575 (n + 2) - A354575 (n + 1)

end

end A354679.P3583324705055544874

/-!
# A354680: Terms of A354169 that are not powers of 2, in order of appearance.

The programs for A354680, there is no canonical definition to state claims against.
-/

/-! ## A354680.P18010601760085050237

`A354169(A354798(n+1))`
-/

namespace A354680.P18010601760085050237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 (A354798 (n + 1)).toNat

end

end A354680.P18010601760085050237

/-! ## A354680.P12554980195700127351

`A354169(comp[A354767(n+1)])`
-/

namespace A354680.P12554980195700127351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354767 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A354680.P12554980195700127351

/-! ## A354680.P5525509491383408942

`A354169(eq[1, (1-A355150(n))²])`
-/

namespace A354680.P5525509491383408942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A355150 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354680.P5525509491383408942

/-! ## A354680.P8589349389431417103

`A354169(eq[A010673(n), A355150(n)])`
-/

namespace A354680.P8589349389431417103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A354680.P8589349389431417103

/-! ## A354680.P14854024851348993679

`A354169(eq[A163169(n), A355150(n)])`
-/

namespace A354680.P14854024851348993679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A354680.P14854024851348993679

/-! ## A354680.P5127483104373719747

`A354169(eq[A163894(n), A355150(n)])`
-/

namespace A354680.P5127483104373719747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A354680.P5127483104373719747

/-! ## A354680.P2071869017918411062

`A354169(eq[A266073(n), A355150(n)])`
-/

namespace A354680.P2071869017918411062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A354680.P2071869017918411062

/-! ## A354680.P9018524761316591082

`A354169(lt[A354169(n), A354757(n)+1])`
-/

namespace A354680.P9018524761316591082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354757 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354680.P9018524761316591082

/-! ## A354680.P12398999247892487601

`A354169(lt[A354169(n)-1, A354757(n)])`
-/

namespace A354680.P12398999247892487601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354680.P12398999247892487601

/-!
# A354682: Interprimes that are products of two successive primes.

The programs for A354682, there is no canonical definition to state claims against.
-/

/-! ## A354682.P12212440958663738155

`∩[A078443(n+1), A013636(n)]`
-/

namespace A354682.P12212440958663738155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354682.P12212440958663738155

/-!
# A354685: a(n) = n! * Sum_{k=1..n} (-1)^(n-k) * Stirling1(n,k) * H(k), where H(k) is the k-th harmonic number.

The programs for A354685, there is no canonical definition to state claims against.
-/

/-! ## A354685.P18082944573042541442

`A285712(n^n*∑[n]+1)`
-/

namespace A354685.P18082944573042541442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (n ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A354685.P18082944573042541442

/-!
# A354689: Smallest Euler pseudoprime to base n.

The programs for A354689, there is no canonical definition to state claims against.
-/

/-! ## A354689.P13957750485592503361

`A007535(A244955(3*n+4)*A244981(2*(n+1)))`
-/

namespace A354689.P13957750485592503361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (A244955 (3 * n + 4) * A244981 (2 * (n + 1))).toNat

end

end A354689.P13957750485592503361

/-!
# A354690: Number of unrooted labeled binary trees satisfying a path-length criterion concerning three labeled leaves.

The programs for A354690, there is no canonical definition to state claims against.
-/

/-! ## A354690.P3432013279005184652

`A020911(∑[∏[2*n+1]])`
-/

namespace A354690.P3432013279005184652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020911 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354690.P3432013279005184652

/-!
# A354693: Number of unlabeled prime posets with n elements.

The programs for A354693, there is no canonical definition to state claims against.
-/

/-! ## A354693.P6725547305296094864

`A046904(n+1)`
-/

namespace A354693.P6725547305296094864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046904 (n + 1)

end

end A354693.P6725547305296094864

/-! ## A354693.P1933568967967982124

`A165190(n*A060223(n))`
-/

namespace A354693.P1933568967967982124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 ((n : ℤ) * A060223 n).toNat

end

end A354693.P1933568967967982124

/-! ## A354693.P7688043357711146896

`A393970(A205647(2*(n+1)))-n`
-/

namespace A354693.P7688043357711146896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393970 (A205647 (2 * (n + 1))).toNat - (n : ℤ)

end

end A354693.P7688043357711146896

/-!
# A354695: G.f. A(x) satisfies A(x) = 1 + x * A(x^3/(1 - x)^3) / (1 - x)^3.

The programs for A354695, there is no canonical definition to state claims against.
-/

/-! ## A354695.P3721898708604275582

`or(A214083(n+2), A283314(n))`
-/

namespace A354695.P3721898708604275582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A214083 (n + 2)) (A283314 n)

end

end A354695.P3721898708604275582

/-! ## A354695.P5958681134904890644

`A277192(A144520(n+3)+A124761(n))`
-/

namespace A354695.P5958681134904890644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A144520 (n + 3) + A124761 n).toNat

end

end A354695.P5958681134904890644

/-! ## A354695.P8009096681709576773

`A365740(A365399(A061069(A365738(n))))`
-/

namespace A354695.P8009096681709576773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365740 (A365399 (A061069 (A365738 n).toNat).toNat).toNat

end

end A354695.P8009096681709576773

/-!
# A354696: G.f. A(x) satisfies A(x) = 1 + x * A(x^4/(1 - x)^4) / (1 - x)^4.

The programs for A354696, there is no canonical definition to state claims against.
-/

/-! ## A354696.P11868681632499110047

`A175542(A396151(n))`
-/

namespace A354696.P11868681632499110047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A396151 n).toNat

end

end A354696.P11868681632499110047

/-! ## A354696.P8591288829692244546

`A000749(A063524(∑{d}[n+1, #^5])+n+2)`
-/

namespace A354696.P8591288829692244546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (A063524 (∑ d ∈ Nat.divisors (f1 n), d ^ 5) + (n + 2 : ℤ)).toNat

end

end A354696.P8591288829692244546

/-! ## A354696.P8391063238335648542

`A000749(n+2)+A000007(A003422(n))`
-/

namespace A354696.P8391063238335648542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 2) + A000007 (A003422 n).toNat

end

end A354696.P8391063238335648542

/-! ## A354696.P2717714180537377850

`A010054(A024023(n))+A000749(n+2)`
-/

namespace A354696.P2717714180537377850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A024023 n).toNat + A000749 (n + 2)

end

end A354696.P2717714180537377850

/-! ## A354696.P8331467151799715629

`A019590(A014969(n))+A000749(n+2)`
-/

namespace A354696.P8331467151799715629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A014969 n).toNat + A000749 (n + 2)

end

end A354696.P8331467151799715629

/-!
# A354697: a(n) is the least integer that can be written in two or more ways as the product of the integers in two subsets of its A070824(a(n)) nontrivial divisors, each of size n and with empty intersection.

The programs for A354697, there is no canonical definition to state claims against.
-/

/-! ## A354697.P796095009818968231

`A081457(2*n+5)`
-/

namespace A354697.P796095009818968231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081457 (2 * n + 5)

end

end A354697.P796095009818968231

/-! ## A354697.P2214862057351990495

`sqrt(A081456(2*n+5))`
-/

namespace A354697.P2214862057351990495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081456 (2 * n + 5) : ℝ)

end

end A354697.P2214862057351990495

/-! ## A354697.P3700410490665736300

`record[A081457(A000265(n+5))]`
-/

namespace A354697.P3700410490665736300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081457 (A000265 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354697.P3700410490665736300

/-! ## A354697.P17390190224919820816

`record[A081457(A360005(n+3)+1)]`
-/

namespace A354697.P17390190224919820816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081457 (A360005 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354697.P17390190224919820816

