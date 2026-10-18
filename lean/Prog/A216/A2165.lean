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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

/-!
# A216500: Numbers which are simultaneously of the form x^2+y^2, x^2+2y^2, x^2+3y^2, x^2+7y^2, all with x>=0, y>=0.

The programs for A216500, there is no canonical definition to state claims against.
-/

/-! ## A216500.P15186717522325576452

`∪[(n+1)², A216451(n+1)]`
-/

namespace A216500.P15186717522325576452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216500.P15186717522325576452

/-! ## A216500.P11359661534834483091

`∪[A216451(n+1), Δ[A000330(n)]]`
-/

namespace A216500.P11359661534834483091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216451 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216500.P11359661534834483091

/-! ## A216500.P14481691414671654988

`∪[A216451(n+1), A000290(n+1)]`
-/

namespace A216500.P14481691414671654988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216500.P14481691414671654988

/-! ## A216500.P12311450909936151451

`∩[A155564(n+1), A155568(n+2)]`
-/

namespace A216500.P12311450909936151451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155568 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216500.P12311450909936151451

/-! ## A216500.P564758721777075649

`∩[A155568(n+1), A155569(n+2)]`
-/

namespace A216500.P564758721777075649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155569 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216500.P564758721777075649

/-! ## A216500.P17489029954359198343

`∪[A216451(n+1), A002620(2*(n+1))]`
-/

namespace A216500.P17489029954359198343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216500.P17489029954359198343

/-!
# A216501: Let S_k = {x^2+k*y^2: x,y positive integers}. How many out of S_1, S_2, S_3, S_7 does n belong to?

The programs for A216501, there is no canonical definition to state claims against.
-/

/-! ## A216501.P11535929228191911186

`gcd(A209401(n+1), A217463(n+1))`
-/

namespace A216501.P11535929228191911186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209401 (n + 1)) (A217463 (n + 1))

end

end A216501.P11535929228191911186

/-! ## A216501.P8165385108556991342

`gcd(A217869(n+1)-A025441(n+1), A209401(n+1)²)`
-/

namespace A216501.P8165385108556991342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217869 (n + 1) - A025441 (n + 1)) (A209401 (n + 1) ^ 2)

end

end A216501.P8165385108556991342

/-!
# A216503: a(n) = number of positive integers k such that n = x^2 + k*y^2 has a solution with x>0, y>0.

The programs for A216503, there is no canonical definition to state claims against.
-/

/-! ## A216503.P5099816655102883487

`A216505(n+1)-Δ[A000196(n)]`
-/

namespace A216503.P5099816655102883487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (n + 1) - (f1 (n + 1) - f1 n)

end

end A216503.P5099816655102883487

/-! ## A216503.P4503547344589965491

`A216505(n+1)-char[A005563(n)]`
-/

namespace A216503.P4503547344589965491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216503.P4503547344589965491

/-! ## A216503.P4869978713910234462

`A216505(n+1)-A000005(n+1)%2`
-/

namespace A216503.P4869978713910234462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (n + 1) - Int.tmod (A000005 (n + 1)) 2

end

end A216503.P4869978713910234462

/-! ## A216503.P7865842132636982881

`A216505(n+1)-A014707(2*A000005(n+1))`
-/

namespace A216503.P7865842132636982881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (n + 1) - A014707 (2 * A000005 (n + 1)).toNat

end

end A216503.P7865842132636982881

/-! ## A216503.P16111291222397177374

`A216505(n+1)+A000196(n)-A000196(n+1)`
-/

namespace A216503.P16111291222397177374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (n + 1) + (A000196 n - A000196 (n + 1))

end

end A216503.P16111291222397177374

/-!
# A216504: Number of values of k for which n can be written in the form a^2 + k*b^2, a >= 0, b >= 0, k > 0. a(n) = 0 if there are infinitely many such k.

The programs for A216504, there is no canonical definition to state claims against.
-/

/-! ## A216504.P9916163266744779235

`A216673(n+1)-A092573(A347811(n))`
-/

namespace A216504.P9916163266744779235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216673 (n + 1) - A092573 (A347811 n).toNat

end

end A216504.P9916163266744779235

/-! ## A216504.P16563398644107810481

`A216673(n+1)-A157658(A247834(n+1))`
-/

namespace A216504.P16563398644107810481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216673 (n + 1) - A157658 (A247834 (n + 1)).toNat

end

end A216504.P16563398644107810481

/-! ## A216504.P15437187246464406721

`A216673(n+1)-A058348(A088580(n+1)-1)`
-/

namespace A216504.P15437187246464406721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216673 (n + 1) - A058348 (A088580 (n + 1) - 1).toNat

end

end A216504.P15437187246464406721

/-! ## A216504.P18191930605638204337

`A216673(n+1)-A010060(A051767(n+1))`
-/

namespace A216504.P18191930605638204337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216673 (n + 1) - A010060 (A051767 (n + 1)).toNat

end

end A216504.P18191930605638204337

/-!
# A216505: Number of values of k for which n can be written in the form a^2+k*b^2, a > 0, b > 0, k >= 0.

The programs for A216505, there is no canonical definition to state claims against.
-/

/-! ## A216505.P702904823709452680

`A216503(n+1)+Δ[A000196(n)]`
-/

namespace A216505.P702904823709452680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (n + 1) + (f1 (n + 1) - f1 n)

end

end A216505.P702904823709452680

/-! ## A216505.P4254032118965707117

`A216503(n+1)+char[A005563(n)]`
-/

namespace A216505.P4254032118965707117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216505.P4254032118965707117

/-! ## A216505.P13101163909295638622

`A216503(n+1)+A010052(n+1)`
-/

namespace A216505.P13101163909295638622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (n + 1) + A010052 (n + 1)

end

end A216505.P13101163909295638622

/-! ## A216505.P13294395583200035503

`A216503(n+1)+A000005(n+1)%2`
-/

namespace A216505.P13294395583200035503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (n + 1) + Int.tmod (A000005 (n + 1)) 2

end

end A216505.P13294395583200035503

/-! ## A216505.P13094330327541715475

`floor(A216503(n+1)+acot(A216674(n+1)))`
-/

namespace A216505.P13094330327541715475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216503 (n + 1) : ℝ) + SequenceMachineLib.acot (A216674 (n + 1) : ℝ)⌋

end

end A216505.P13094330327541715475

/-! ## A216505.P14529922943954669990

`floor(A216503(n+1)+acot(A217840(n+1)))`
-/

namespace A216505.P14529922943954669990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216503 (n + 1) : ℝ) + SequenceMachineLib.acot (A217840 (n + 1) : ℝ)⌋

end

end A216505.P14529922943954669990

/-! ## A216505.P1663734806869237344

`A216503(n+1)+A000035(A000005(n+1))`
-/

namespace A216505.P1663734806869237344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (n + 1) + A000035 (A000005 (n + 1)).toNat

end

end A216505.P1663734806869237344

/-! ## A216505.P525433596778472150

`A216503(n+1)+A096271(A035116(n+1))`
-/

namespace A216505.P525433596778472150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (n + 1) + A096271 (A035116 (n + 1)).toNat

end

end A216505.P525433596778472150

/-!
# A216506: Least number k such that k*n+1 is a prime dividing n^(2n) - 1.

The programs for A216506, there is no canonical definition to state claims against.
-/

/-! ## A216506.P14644851352584295397

`floor(A216487(n+2)/(n+2))`
-/

namespace A216506.P14644851352584295397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216487 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A216506.P14644851352584295397

/-! ## A216506.P8448351192681353897

`(A216487(n+2)-1)/A020725(n+1)`
-/

namespace A216506.P8448351192681353897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216487 (n + 2) - 1 : ℚ) / (A020725 (n + 1) : ℚ)

end

end A216506.P8448351192681353897

/-! ## A216506.P5886171978024586278

`(A216487(n+2)-char[A025480(n)])/(n+2)`
-/

namespace A216506.P5886171978024586278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216487 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A216506.P5886171978024586278

/-! ## A216506.P15447157736687033786

`(A216487(n+2)-A014963(15*(n+1)))/(n+2)`
-/

namespace A216506.P15447157736687033786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216487 (n + 2) - A014963 (15 * (n + 1)) : ℚ) / (n + 2 : ℚ)

end

end A216506.P15447157736687033786

/-! ## A216506.P9011136389739875003

`A000010(A216487(n+2))/A020725(n+1)`
-/

namespace A216506.P9011136389739875003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A216487 (n + 2)).toNat : ℚ) / (A020725 (n + 1) : ℚ)

end

end A216506.P9011136389739875003

/-!
# A216507: E.g.f. exp( x^2 * exp(x) ).

The programs for A216507, there is no canonical definition to state claims against.
-/

/-! ## A216507.P9771392907015544660

`abs(A292907(n))`
-/

namespace A216507.P9771392907015544660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292907 n|

end

end A216507.P9771392907015544660

/-! ## A216507.P2282018835172654139

`A033999(n)*A292907(n)`
-/

namespace A216507.P2282018835172654139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A292907 n

end

end A216507.P2282018835172654139

/-! ## A216507.P10461153494043699196

`gcd(A000038(n), A292907(n))`
-/

namespace A216507.P10461153494043699196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292907 n)

end

end A216507.P10461153494043699196

/-! ## A216507.P708640380474779869

`lcm(A028310(n), A292907(n))`
-/

namespace A216507.P708640380474779869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A292907 n)

end

end A216507.P708640380474779869

/-! ## A216507.P6466120027961640080

`A292978(∑[n+3])`
-/

namespace A216507.P6466120027961640080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216507.P6466120027961640080

/-! ## A216507.P18442013672899634818

`abs(A292973(∑[n+3]))`
-/

namespace A216507.P18442013672899634818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292973 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A216507.P18442013672899634818

/-! ## A216507.P10049169275044054436

`A292978(A055998(n+1))+A000038(n+1)`
-/

namespace A216507.P10049169275044054436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (A055998 (n + 1)).toNat + A000038 (n + 1)

end

end A216507.P10049169275044054436

/-!
# A216508: a(n) = 13*a(n-1) - 65*a(n-2) + 156*a(n-3) - 182*a(n-4) + 91*a(n-5) - 13*a(n-6), with initial terms 6, 13, 39, 130, 455, 1638.

The programs for A216508, there is no canonical definition to state claims against.
-/

/-! ## A216508.P8185566547819918547

`A010054(A000292(3*n))+(4-2/n)*a(n-1)` with `a(0)=6`
-/

namespace A216508.P8185566547819918547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (A010054 (A000292 (3 * n)).toNat : ℚ) + (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A216508.P8185566547819918547

/-! ## A216508.P7781845922028912522

`or((4-2/n)*a(n-1), A008683(2^n*Δ[n²]))` with `a(0)=6`
-/

namespace A216508.P7781845922028912522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((4 - 2 / (n : ℚ)) * (a (n - 1) : ℚ))) (A008683 ((2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat)

end

end A216508.P7781845922028912522

/-! ## A216508.P3118218518521739694

`(4-2/n)*a(n-1)-A008683(A000244(n))` with `a(0)=6`
-/

namespace A216508.P3118218518521739694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1) - (A008683 (A000244 n).toNat : ℚ)

end

end A216508.P3118218518521739694

/-! ## A216508.P17131623073926184859

`A000027((4-2/n)*a(n-1))` with `a(0)=6, a(1)=13`
-/

namespace A216508.P17131623073926184859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 13] fun n a =>
  A000027 (SequenceMachineLib.roundAway ((4 - 2 / (n : ℚ)) * (a (n - 1) : ℚ))).toNat

end

end A216508.P17131623073926184859

/-! ## A216508.P11407808171835779451

`A010054(A093526(n))+(4-2/n)*a(n-1)` with `a(0)=6`
-/

namespace A216508.P11407808171835779451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (A010054 (A093526 n).toNat : ℚ) + (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A216508.P11407808171835779451

/-!
# A216509: Primes which cannot be written in the form a^2 + 6*b^2.

The programs for A216509, there is no canonical definition to state claims against.
-/

/-! ## A216509.P16573039918408738546

`p?[xor(n, ((n+1)%3)!²)-5]`
-/

namespace A216509.P16573039918408738546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.factorial ((n + 1) % 3) ^ 2) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216509.P16573039918408738546

/-! ## A216509.P13293708204451324919

`p?[∪[ceil(3*n/2), or(3, n)+n]]`
-/

namespace A216509.P13293708204451324919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216509.P13293708204451324919

/-! ## A216509.P16121462219873011551

`p?[or(n+1, a(n-1)%3)+n]` with `a(0)=2`
-/

namespace A216509.P16121462219873011551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.lor (n + 1) (f1 (n - 1) % 3) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216509.P16121462219873011551

/-! ## A216509.P1673644382528825447

`∪[p?[3*n-1], p?[round(8*n/3)]]`
-/

namespace A216509.P1673644382528825447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 3))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A216509.P1673644382528825447

/-! ## A216509.P14361064620182539862

`p?[∪[or(2*n, n%4), ceil(3*n/2)]-3]`
-/

namespace A216509.P14361064620182539862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (n % 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216509.P14361064620182539862

/-! ## A216509.P7770883998986428850

`p?[eq[0, A229723(n)]]`
-/

namespace A216509.P7770883998986428850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229723 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216509.P7770883998986428850

/-! ## A216509.P9284553563554038075

`p?[lt[A046113(n), 1]]`
-/

namespace A216509.P9284553563554038075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216509.P9284553563554038075

/-! ## A216509.P4013106778820299828

`p?[comp[A002481(n+1)]]`
-/

namespace A216509.P4013106778820299828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216509.P4013106778820299828

/-! ## A216509.P2305059660556626168

`eq[A046113(n), A068346(n)]`
-/

namespace A216509.P2305059660556626168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216509.P2305059660556626168

/-! ## A216509.P17377004308465097990

`eq[A046113(n), A072480(n)]`
-/

namespace A216509.P17377004308465097990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216509.P17377004308465097990

/-!
# A216510: Number of positive integer solutions to the equation a^2 + 6*b^2 = n.

The programs for A216510, there is no canonical definition to state claims against.
-/

/-! ## A216510.P10569186232210348473

`A084863(2*(n+1))`
-/

namespace A216510.P10569186232210348473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084863 (2 * (n + 1))

end

end A216510.P10569186232210348473

/-! ## A216510.P12009741757131732285

`floor(A046113(n+1)/4)`
-/

namespace A216510.P12009741757131732285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046113 (n + 1) : ℚ) / 4⌋

end

end A216510.P12009741757131732285

/-! ## A216510.P16819879018408739734

`floor(A108563(2*(n+1))/4)`
-/

namespace A216510.P16819879018408739734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108563 (2 * (n + 1)) : ℚ) / 4⌋

end

end A216510.P16819879018408739734

/-! ## A216510.P510542819109291075

`round(A108563(2*n+2)/5)`
-/

namespace A216510.P510542819109291075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A108563 (2 * n + 2) : ℚ) / 5)

end

end A216510.P510542819109291075

/-! ## A216510.P729528309529096825

`floor(floor(abs(A260309(n+1))/ϕ)/ϕ)`
-/

namespace A216510.P729528309529096825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(|A260309 (n + 1)| : ℝ) / Real.goldenRatio⌋ : ℝ) / Real.goldenRatio⌋

end

end A216510.P729528309529096825

/-! ## A216510.P17106416100700315134

`A002265(A046113(n+1))`
-/

namespace A216510.P17106416100700315134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A046113 (n + 1)).toNat

end

end A216510.P17106416100700315134

/-! ## A216510.P1601176164441495814

`A002265(abs(A260309(n+1)))`
-/

namespace A216510.P1601176164441495814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |A260309 (n + 1)|.toNat

end

end A216510.P1601176164441495814

/-! ## A216510.P7236390655456917143

`A061357(A046113(n+1)+1)`
-/

namespace A216510.P7236390655456917143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A046113 (n + 1) + 1).toNat

end

end A216510.P7236390655456917143

/-! ## A216510.P6538012689981635859

`A000701(A046113(n+1)/2)`
-/

namespace A216510.P6538012689981635859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (SequenceMachineLib.roundAway ((A046113 (n + 1) : ℚ) / 2)).toNat

end

end A216510.P6538012689981635859

/-! ## A216510.P12630326426527877068

`A004526(A046113(n+1)/2)`
-/

namespace A216510.P12630326426527877068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A046113 (n + 1) : ℚ) / 2)).toNat

end

end A216510.P12630326426527877068

/-!
# A216511: Number of positive integer solutions to the equation a^2 + 7*b^2 = n.

The programs for A216511, there is no canonical definition to state claims against.
-/

/-! ## A216511.P5429306412769030062

`floor(A110399(n+1)/2)`
-/

namespace A216511.P5429306412769030062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110399 (n + 1) : ℚ) / 2⌋

end

end A216511.P5429306412769030062

/-! ## A216511.P18217698590429042454

`floor(A033719(n+1)/4)`
-/

namespace A216511.P18217698590429042454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033719 (n + 1) : ℚ) / 4⌋

end

end A216511.P18217698590429042454

/-! ## A216511.P12858466379135367117

`A002265(A033719(n+1))`
-/

namespace A216511.P12858466379135367117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A033719 (n + 1)).toNat

end

end A216511.P12858466379135367117

/-! ## A216511.P6238749869502497872

`A004526(A110399(n+1))`
-/

namespace A216511.P6238749869502497872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110399 (n + 1)).toNat

end

end A216511.P6238749869502497872

/-! ## A216511.P4168201823053597081

`A140106(A110399(n+1)+2)`
-/

namespace A216511.P4168201823053597081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A110399 (n + 1) + 2).toNat

end

end A216511.P4168201823053597081

/-! ## A216511.P4058749379748809489

`A004526(A033719(n+1)/2)`
-/

namespace A216511.P4058749379748809489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A033719 (n + 1) : ℚ) / 2)).toNat

end

end A216511.P4058749379748809489

/-! ## A216511.P249742099692623577

`A110399(n+1)-A216512(n+1)`
-/

namespace A216511.P249742099692623577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (n + 1) - A216512 (n + 1)

end

end A216511.P249742099692623577

/-!
# A216512: Number of nonnegative integer solutions to the equation a^2 + 7*b^2 = n.

The programs for A216512, there is no canonical definition to state claims against.
-/

/-! ## A216512.P2032431962029853048

`ceil(A110399(n+1)/2)`
-/

namespace A216512.P2032431962029853048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110399 (n + 1) : ℚ) / 2⌉

end

end A216512.P2032431962029853048

/-! ## A216512.P6877797773042777501

`ceil(A033719(n+1)/4)`
-/

namespace A216512.P6877797773042777501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033719 (n + 1) : ℚ) / 4⌉

end

end A216512.P6877797773042777501

/-! ## A216512.P16042848922241694878

`A004526(A110399(n+1)+1)`
-/

namespace A216512.P16042848922241694878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110399 (n + 1) + 1).toNat

end

end A216512.P16042848922241694878

/-! ## A216512.P13183128221108517599

`A002265(A033719(n+1)+2)`
-/

namespace A216512.P13183128221108517599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A033719 (n + 1) + 2).toNat

end

end A216512.P13183128221108517599

/-! ## A216512.P17901677098225500289

`A110399(n+1)-A216511(n+1)`
-/

namespace A216512.P17901677098225500289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (n + 1) - A216511 (n + 1)

end

end A216512.P17901677098225500289

/-!
# A216513: Number of nonnegative integer solutions to the equation x^2 + 6*y^2 = n.

The programs for A216513, there is no canonical definition to state claims against.
-/

/-! ## A216513.P8957977010071574473

`ceil(A046113(n)/4)`
-/

namespace A216513.P8957977010071574473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046113 n : ℚ) / 4⌉

end

end A216513.P8957977010071574473

/-! ## A216513.P3024197892521206585

`ceil(abs(A260309(n))/4)`
-/

namespace A216513.P3024197892521206585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|A260309 n| : ℚ) / 4⌉

end

end A216513.P3024197892521206585

/-! ## A216513.P15227384882726371794

`A002265(A046113(n)+3)`
-/

namespace A216513.P15227384882726371794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A046113 n + 3).toNat

end

end A216513.P15227384882726371794

/-! ## A216513.P5191957529487461836

`ceil(A108563(2*n)/4)`
-/

namespace A216513.P5191957529487461836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108563 (2 * n) : ℚ) / 4⌉

end

end A216513.P5191957529487461836

/-! ## A216513.P13170769793997551659

`ceil(A263577(3*n)/4)`
-/

namespace A216513.P13170769793997551659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A263577 (3 * n) : ℚ) / 4⌉

end

end A216513.P13170769793997551659

/-! ## A216513.P10704529417421816657

`ceil(A260309(4*n)/4)`
-/

namespace A216513.P10704529417421816657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A260309 (4 * n) : ℚ) / 4⌉

end

end A216513.P10704529417421816657

/-!
# A216515: Prime numbers n such that 2^n-1 can be written in the form a^2+7*b^2.

The programs for A216515, there is no canonical definition to state claims against.
-/

/-! ## A216515.P8025167609799864231

`p?[A216514(n+1)]`
-/

namespace A216515.P8025167609799864231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216515.P8025167609799864231

/-! ## A216515.P3034465610085402963

`p?[A216516(n+1)]`
-/

namespace A216515.P3034465610085402963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216515.P3034465610085402963

/-! ## A216515.P7601183940412007001

`record[A006530(A216514(n+2))]`
-/

namespace A216515.P7601183940412007001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A216514 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216515.P7601183940412007001

/-! ## A216515.P2302017134946665514

`filter[A216514(n+1), A010051(#)]`
-/

namespace A216515.P2302017134946665514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A216515.P2302017134946665514

/-! ## A216515.P14053129331713550626

`filter[A216516(n+1), A010051(#)]`
-/

namespace A216515.P14053129331713550626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A216515.P14053129331713550626

/-!
# A216516: Odd numbers n such that 2^n-1 can be written in the form a^2+7*b^2.

The programs for A216516, there is no canonical definition to state claims against.
-/

/-! ## A216516.P15127403219132082307

`record[lcm(2, A216514(n+1))/2]`
-/

namespace A216516.P15127403219132082307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A216514 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216516.P15127403219132082307

/-! ## A216516.P6426473137042428966

`record[A000265(A216514(n+1))]`
-/

namespace A216516.P6426473137042428966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A216514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216516.P6426473137042428966

/-! ## A216516.P17678743370508350948

`record[A026741(A216514(n+2))]`
-/

namespace A216516.P17678743370508350948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A216514 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216516.P17678743370508350948

/-! ## A216516.P2502105402186502734

`filter[A216514(n+1), A000035(#)]`
-/

namespace A216516.P2502105402186502734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A216516.P2502105402186502734

/-! ## A216516.P8144816913046670297

`filter[A216514(n+1), A035263(#)]`
-/

namespace A216516.P8144816913046670297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A216516.P8144816913046670297

/-!
# A216518: Prime numbers n such that 2^n-1 is prime and can be written in the form a^2+7*b^2.

The programs for A216518, there is no canonical definition to state claims against.
-/

/-! ## A216518.P4677999890030621565

`A000043(lt[A126043(n+1), 2]+1)`
-/

namespace A216518.P4677999890030621565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126043 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A216518.P4677999890030621565

/-! ## A216518.P18142950488867722056

`A000043(lt[A000043(n+1)%3, 2]+1)`
-/

namespace A216518.P18142950488867722056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A216518.P18142950488867722056

/-! ## A216518.P17823441486480299455

`∩[A007645(n+1), A048737(n+1)]`
-/

namespace A216518.P17823441486480299455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216518.P17823441486480299455

/-! ## A216518.P16289340563121117957

`p?[xor(A019280(n+1), A126046(n+1))]`
-/

namespace A216518.P16289340563121117957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019280 (n + 1)) (A126046 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216518.P16289340563121117957

/-! ## A216518.P16333697784489423590

`p?[xor(A090748(n+1), A126046(n+1))]`
-/

namespace A216518.P16333697784489423590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A090748 (n + 1)) (A126046 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216518.P16333697784489423590

/-!
# A216519: Prime numbers n such that 2^n-1 is a prime that cannot be written in the form a^2+7*b^2.

The programs for A216519, there is no canonical definition to state claims against.
-/

/-! ## A216519.P5564519710842453100

`A000043(lt[1, A126043(n+1)]+1)`
-/

namespace A216519.P5564519710842453100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A216519.P5564519710842453100

/-! ## A216519.P1061416826964665275

`record[sqrt(A000043(n+1)^A126043(n+1))]`
-/

namespace A216519.P1061416826964665275
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A000043 (n + 1) : ℚ) ^ (A126043 (n + 1) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216519.P1061416826964665275

/-! ## A216519.P4349657117698827724

`p?[A153798(n+1)+A126043(n+1)]`
-/

namespace A216519.P4349657117698827724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + A126043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216519.P4349657117698827724

/-! ## A216519.P9228721942945335728

`p?[A153798(n+1)+A000043(n+1)%3]`
-/

namespace A216519.P9228721942945335728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + Int.tmod (A000043 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216519.P9228721942945335728

/-! ## A216519.P18364021838960277996

`p?[A153798(n+1)+A126046(n+1)%3]`
-/

namespace A216519.P18364021838960277996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + Int.tmod (A126046 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216519.P18364021838960277996

/-!
# A216521: Numbers n such that 2^n+1 can be written in the form a^2+7*b^2.

The programs for A216521, there is no canonical definition to state claims against.
-/

/-! ## A216521.P5960168926544979058

`record[lcm(3, A032742(A161329(n+1)))]`
-/

namespace A216521.P5960168926544979058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A032742 (A161329 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216521.P5960168926544979058

/-! ## A216521.P8007364584375846632

`lcm(3, A254764(A062860(n)))`
-/

namespace A216521.P8007364584375846632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A254764 (A062860 n).toNat)

end

end A216521.P8007364584375846632

/-! ## A216521.P239362115531848284

`filter[A208547(n+3), A355449(#)]`
-/

namespace A216521.P239362115531848284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208547 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A216521.P239362115531848284

/-!
# A216522: Integers of the form 2*x + 3*y with nonnegative x and y, with repetitions.

The programs for A216522, the canonical program `A216522.P3465743372947743099` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216522 has offset 0).

The definition of A216522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216522.P3465743372947743099

`floor(sqrt(12*n+4))-2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A216522

/-- `floor(sqrt(12*n+4))-2` -/
def P3465743372947743099.Spec : Prop :=
  ∀ n, P3465743372947743099.a n = A216522 n

theorem P3465743372947743099.correct : P3465743372947743099.Spec := by
  intro n
  simp only [A216522]

end A216522

/-! ## A216522.P5739637643767056933

`∑[char[1]+char[A001399(n)]]`
-/

namespace A216522.P5739637643767056933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216522.P5739637643767056933

namespace A216522

/-- `∑[char[1]+char[A001399(n)]]` -/
def P5739637643767056933.Spec : Prop :=
  ∀ n, (P5739637643767056933.a n : ℤ) = A216522 n

end A216522

/-! ## A216522.P1246640896697263275

`A135708(n+1)%(n+2)`
-/

namespace A216522.P1246640896697263275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135708 (n + 1)) (n + 2 : ℤ)

end

end A216522.P1246640896697263275

namespace A216522

/-- `A135708(n+1)%(n+2)` -/
def P1246640896697263275.Spec : Prop :=
  ∀ n, P1246640896697263275.a n = A216522 n

end A216522

/-! ## A216522.P11570677912779755134

`A087156(∑[char[round(n²/12)]])`
-/

namespace A216522.P11570677912779755134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216522.P11570677912779755134

namespace A216522

/-- `A087156(∑[char[round(n²/12)]])` -/
def P11570677912779755134.Spec : Prop :=
  ∀ n, P11570677912779755134.a n = A216522 n

end A216522

/-! ## A216522.P12082066568866233045

`(comp[A005044(n)]+n)%(n+3)`
-/

namespace A216522.P12082066568866233045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n) % (n + 3)

end

end A216522.P12082066568866233045

namespace A216522

/-- `(comp[A005044(n)]+n)%(n+3)` -/
def P12082066568866233045.Spec : Prop :=
  ∀ n, (P12082066568866233045.a n : ℤ) = A216522 n

end A216522

/-! ## A216522.P7659843412989714941

`∑[char[∑[A008615(n)]]]%(n+1)²`
-/

namespace A216522.P7659843412989714941
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 2

end

end A216522.P7659843412989714941

namespace A216522

/-- `∑[char[∑[A008615(n)]]]%(n+1)²` -/
def P7659843412989714941.Spec : Prop :=
  ∀ n, (P7659843412989714941.a n : ℤ) = A216522 n

end A216522

/-! ## A216522.P4099348922174584205

`A152833(A135711(n+1))`
-/

namespace A216522.P4099348922174584205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152833 (A135711 (n + 1)).toNat

end

end A216522.P4099348922174584205

namespace A216522

/-- `A152833(A135711(n+1))` -/
def P4099348922174584205.Spec : Prop :=
  ∀ n, P4099348922174584205.a n = A216522 n

end A216522

/-! ## A216522.P15930510071381219815

`∑[Δ[A036496(n)]%3]`
-/

namespace A216522.P15930510071381219815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216522.P15930510071381219815

namespace A216522

/-- `∑[Δ[A036496(n)]%3]` -/
def P15930510071381219815.Spec : Prop :=
  ∀ n, P15930510071381219815.a n = A216522 n

end A216522

/-! ## A216522.P6238607781701034431

`abs(3-A036496(n+1))`
-/

namespace A216522.P6238607781701034431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A036496 (n + 1)|

end

end A216522.P6238607781701034431

namespace A216522

/-- `abs(3-A036496(n+1))` -/
def P6238607781701034431.Spec : Prop :=
  ∀ n, P6238607781701034431.a n = A216522 n

end A216522

/-! ## A216522.P8743025003528228816

`A023445(A036496(n+1))`
-/

namespace A216522.P8743025003528228816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A036496 (n + 1)).toNat

end

end A216522.P8743025003528228816

namespace A216522

/-- `A023445(A036496(n+1))` -/
def P8743025003528228816.Spec : Prop :=
  ∀ n, P8743025003528228816.a n = A216522 n

end A216522

/-! ## A216522.P14513037580834800071

`floor(log2(A172126(n+1)))`
-/

namespace A216522.P14513037580834800071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A172126 (n + 1)).toNat

end

end A216522.P14513037580834800071

namespace A216522

/-- `floor(log2(A172126(n+1)))` -/
def P14513037580834800071.Spec : Prop :=
  ∀ n, (P14513037580834800071.a n : ℤ) = A216522 n

end A216522

/-! ## A216522.P8119395420413459907

`abs(2-floor(sqrt(A016969(2*n))))`
-/

namespace A216522.P8119395420413459907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - Int.sqrt (A016969 (2 * n))|

end

end A216522.P8119395420413459907

namespace A216522

/-- `abs(2-floor(sqrt(A016969(2*n))))` -/
def P8119395420413459907.Spec : Prop :=
  ∀ n, P8119395420413459907.a n = A216522 n

end A216522

/-! ## A216522.P10718316572918051956

`floor(2*sqrt(A083479(3*n)))`
-/

namespace A216522.P10718316572918051956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A083479 (3 * n) : ℝ)⌋

end

end A216522.P10718316572918051956

namespace A216522

/-- `floor(2*sqrt(A083479(3*n)))` -/
def P10718316572918051956.Spec : Prop :=
  ∀ n, P10718316572918051956.a n = A216522 n

end A216522

/-! ## A216522.P16220530523359446223

`floor(log2(A175381(3*n+1)))`
-/

namespace A216522.P16220530523359446223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A175381 (3 * n + 1)).toNat

end

end A216522.P16220530523359446223

namespace A216522

/-- `floor(log2(A175381(3*n+1)))` -/
def P16220530523359446223.Spec : Prop :=
  ∀ n, (P16220530523359446223.a n : ℤ) = A216522 n

end A216522

/-! ## A216522.P10805495702236949958

`A004526(A265359(2*n+1+n))`
-/

namespace A216522.P10805495702236949958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A265359 (2 * n + 1 + n)).toNat

end

end A216522.P10805495702236949958

namespace A216522

/-- `A004526(A265359(2*n+1+n))` -/
def P10805495702236949958.Spec : Prop :=
  ∀ n, P10805495702236949958.a n = A216522 n

end A216522

/-! ## A216522.P6095735783887825650

`abs(1-A055086(3*n+1))`
-/

namespace A216522.P6095735783887825650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A055086 (3 * n + 1)|

end

end A216522.P6095735783887825650

namespace A216522

/-- `abs(1-A055086(3*n+1))` -/
def P6095735783887825650.Spec : Prop :=
  ∀ n, P6095735783887825650.a n = A216522 n

end A216522

/-! ## A216522.P10835251533499189044

`abs(2-A060018(3*(n+1)))`
-/

namespace A216522.P10835251533499189044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A060018 (3 * (n + 1))|

end

end A216522.P10835251533499189044

namespace A216522

/-- `abs(2-A060018(3*(n+1)))` -/
def P10835251533499189044.Spec : Prop :=
  ∀ n, P10835251533499189044.a n = A216522 n

end A216522

/-! ## A216522.P9534839309491398657

`A055086(A206224(2*n+1+n))`
-/

namespace A216522.P9534839309491398657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A206224 (2 * n + 1 + n)).toNat

end

end A216522.P9534839309491398657

namespace A216522

/-- `A055086(A206224(2*n+1+n))` -/
def P9534839309491398657.Spec : Prop :=
  ∀ n, P9534839309491398657.a n = A216522 n

end A216522

/-! ## A216522.P12133936922304517072

`A055086(A002620(A055086(2*n+n+1)))`
-/

namespace A216522.P12133936922304517072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A002620 (A055086 (2 * n + (n + 1))).toNat).toNat

end

end A216522.P12133936922304517072

namespace A216522

/-- `A055086(A002620(A055086(2*n+n+1)))` -/
def P12133936922304517072.Spec : Prop :=
  ∀ n, P12133936922304517072.a n = A216522 n

end A216522

/-! ## A216522.P11646930181967866998

`A121149(n+1)%(n+3)`
-/

namespace A216522.P11646930181967866998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121149 (n + 1)) (n + 3 : ℤ)

end

end A216522.P11646930181967866998

namespace A216522

/-- `A121149(n+1)%(n+3)` -/
def P11646930181967866998.Spec : Prop :=
  ∀ n, P11646930181967866998.a n = A216522 n

end A216522

/-!
# A216523: Odd numbers n such that (2^n+1)/3 can be written in the form a^2+7*b^2.

The programs for A216523, there is no canonical definition to state claims against.
-/

/-! ## A216523.P15862159151288548697

`eq[A010155(n), A258820(A318585(n+1))]`
-/

namespace A216523.P15862159151288548697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258820 (A318585 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216523.P15862159151288548697

/-! ## A216523.P12248755078978917371

`∩[or(1, 3*n+1), lt[A060819(n+1), 12]]`
-/

namespace A216523.P12248755078978917371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A216523.P12248755078978917371

/-! ## A216523.P3514161704983985389

`lt[A238827(lcm(4, n+1)/4), n*and(n, n²%3)]`
-/

namespace A216523.P3514161704983985389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238827 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land n (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216523.P3514161704983985389

/-! ## A216523.P15998077919333131207

`lt[A186714(2*n+3), A245481(n+2)%2]`
-/

namespace A216523.P15998077919333131207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186714 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245481 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216523.P15998077919333131207

/-! ## A216523.P16255822953628239062

`A007310(lt[A134434(n), A301688(n)])`
-/

namespace A216523.P16255822953628239062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216523.P16255822953628239062

/-!
# A216524: Prime numbers n such that (2^n+1)/3 can be written in the form a^2+7*b^2.

The programs for A216524, there is no canonical definition to state claims against.
-/

/-! ## A216524.P4741574208008029812

`p?[A216523(n+1)]`
-/

namespace A216524.P4741574208008029812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216524.P4741574208008029812

/-! ## A216524.P15391682499828936309

`p?[record[A216523(A065648(n))]]`
-/

namespace A216524.P15391682499828936309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216523 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216524.P15391682499828936309

/-! ## A216524.P12503462575906459169

`p?[record[A216523(A106466(n))]]`
-/

namespace A216524.P12503462575906459169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216523 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216524.P12503462575906459169

/-! ## A216524.P5626803635435661115

`p?[record[A216523(A133310(n))]]`
-/

namespace A216524.P5626803635435661115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216523 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216524.P5626803635435661115

/-! ## A216524.P554837794518243419

`record[A006530(A216523(n+2))]`
-/

namespace A216524.P554837794518243419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A216523 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216524.P554837794518243419

/-!
# A216525: Numbers n such that (10^n-1)/9 can be written in the form a^2+7*b^2.

The programs for A216525, there is no canonical definition to state claims against.
-/

/-! ## A216525.P1533072880473386252

`A340104(record[A317508(n+1)])`
-/

namespace A216525.P1533072880473386252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216525.P1533072880473386252

/-! ## A216525.P16737624122378899533

`A340104(lcm(A028234(n+1), A351958(n+1)))`
-/

namespace A216525.P16737624122378899533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340104 (Int.lcm (A028234 (n + 1)) (A351958 (n + 1)))

end

end A216525.P16737624122378899533

/-!
# A216526: Prime numbers n such that (10^n-1)/9 can be written in the form a^2+7*b^2.

The programs for A216526, there is no canonical definition to state claims against.
-/

/-! ## A216526.P2021633505058506755

`p?[A216525(n+1)]`
-/

namespace A216526.P2021633505058506755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216526.P2021633505058506755

/-! ## A216526.P17012793089942118437

`p?[record[A216525(A344180(n))]]`
-/

namespace A216526.P17012793089942118437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216525 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216526.P17012793089942118437

/-! ## A216526.P3087949535150857001

`record[A006530(A216525(n+2))]`
-/

namespace A216526.P3087949535150857001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A216525 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216526.P3087949535150857001

/-! ## A216526.P16033485462247575101

`filter[A216525(n+1), A010051(#)]`
-/

namespace A216526.P16033485462247575101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A216526.P16033485462247575101

/-! ## A216526.P8840838085451131835

`filter[A216525(n+1), A323153(#)]`
-/

namespace A216526.P8840838085451131835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A216526.P8840838085451131835

/-!
# A216527: Odd numbers n such that (10^n-1)/9 can be written in the form a^2+7*b^2.

The programs for A216527, there is no canonical definition to state claims against.
-/

/-! ## A216527.P3972079469492849205

`filter[A216525(n+1), A285625(#)]`
-/

namespace A216527.P3972079469492849205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285625 (f1 j).toNat = 1) n)

end

end A216527.P3972079469492849205

/-! ## A216527.P13640531408933061058

`record[A026741(A216525(n+1))%A113797(n+1)]`
-/

namespace A216527.P13640531408933061058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A216525 (n + 1)).toNat) (A113797 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216527.P13640531408933061058

/-! ## A216527.P16944009197439160246

`record[A026741(A216525(n+1)%A216552(n+1))]`
-/

namespace A216527.P16944009197439160246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A216525 (n + 1)) (A216552 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216527.P16944009197439160246

/-! ## A216527.P17731749292987925899

`∩[A007775(n+1), A216525(n+1)]`
-/

namespace A216527.P17731749292987925899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216527.P17731749292987925899

/-! ## A216527.P3909203771729532075

`∩[A093893(n+1), A216525(n+1)]`
-/

namespace A216527.P3909203771729532075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216527.P3909203771729532075

/-!
# A216531: Numbers n such that (10^n + 1)/11 is prime and can be written in the form a^2 + 7*b^2.

The programs for A216531, there is no canonical definition to state claims against.
-/

/-! ## A216531.P15579673516130484476

`A001562(A372689(n+1))`
-/

namespace A216531.P15579673516130484476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001562 (A372689 (n + 1)).toNat

end

end A216531.P15579673516130484476

/-!
# A216532: Prime numbers n such that 10^n+1 can be written in the form a^2+7*b^2.

The programs for A216532, there is no canonical definition to state claims against.
-/

/-! ## A216532.P12424211215509001355

`p?[A216530(n+1)]`
-/

namespace A216532.P12424211215509001355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216532.P12424211215509001355

/-! ## A216532.P8060949675102367159

`p?[record[A216530(A028920(n))]]`
-/

namespace A216532.P8060949675102367159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216530 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216532.P8060949675102367159

/-! ## A216532.P4380250834718316358

`p?[record[A216530(A059126(n))]]`
-/

namespace A216532.P4380250834718316358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216530 (A059126 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216532.P4380250834718316358

/-! ## A216532.P57000467498173365

`p?[record[A216530(A143182(n))]]`
-/

namespace A216532.P57000467498173365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216530 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216532.P57000467498173365

/-! ## A216532.P8342266527560949478

`record[A006530(A216530(n+2))]`
-/

namespace A216532.P8342266527560949478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A216530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216532.P8342266527560949478

/-!
# A216533: Numbers n such that (10^n + 1)/11 is prime, but cannot be written in the form a^2 + 7*b^2.

The programs for A216533, there is no canonical definition to state claims against.
-/

/-! ## A216533.P12282396555716497366

`A001562(∑[C(3, gcd(6, n)+1)+1])`
-/

namespace A216533.P12282396555716497366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.gcd 6 n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001562 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216533.P12282396555716497366

/-!
# A216534: Number of cycles in all partial functions on {1,2,...,n}.

The programs for A216534, there is no canonical definition to state claims against.
-/

/-! ## A216534.P9146667658059423873

`A157962((n+3)^n-(n-1))`
-/

namespace A216534.P9146667658059423873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157962 (((n + 3) ^ n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A216534.P9146667658059423873

/-!
# A216535: Numbers n such that the n-th Fibonacci number is prime and can be written in the form a^2 + 7*b^2.

The programs for A216535, there is no canonical definition to state claims against.
-/

/-! ## A216535.P12330624544048361248

`p?[A001605(n+1)*A037200(n)]`
-/

namespace A216535.P12330624544048361248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1) * A037200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216535.P12330624544048361248

/-! ## A216535.P2012836131956296012

`p?[eq[0, A079677(n)]*A037200(n)]`
-/

namespace A216535.P2012836131956296012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) * A037200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216535.P2012836131956296012

/-!
# A216536: Numbers n such that the n-th Fibonacci number is prime, but cannot be written in the form a^2 + 7*b^2.

The programs for A216536, there is no canonical definition to state claims against.
-/

/-! ## A216536.P646803155776182470

`A092860(A007749(n+1)-1)`
-/

namespace A216536.P646803155776182470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092860 (A007749 (n + 1) - 1).toNat

end

end A216536.P646803155776182470

/-! ## A216536.P15187874413754377873

`A103824(A007749(n+1)+2)`
-/

namespace A216536.P15187874413754377873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103824 (A007749 (n + 1) + 2).toNat

end

end A216536.P15187874413754377873

/-! ## A216536.P10501887777227827619

`A117174(A006992(n+1)+2)`
-/

namespace A216536.P10501887777227827619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117174 (A006992 (n + 1) + 2).toNat

end

end A216536.P10501887777227827619

/-!
# A216537: Numbers n such that the n-th Lucas number is prime and can be written in the form a^2 + 7*b^2.

The programs for A216537, there is no canonical definition to state claims against.
-/

/-! ## A216537.P9958929273986466736

`∩[A001606(n+1), comp[A216538(n+1)]]`
-/

namespace A216537.P9958929273986466736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216538 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A216537.P9958929273986466736

/-!
# A216540: a(n) = 13*a(n-1) - 65*a(n-2) + 156*a(n-3) - 182*a(n-4) + 91*a(n-5) - 13*a(n-6), with initial terms 0, 0, -1, -8, -45, -221.

The programs for A216540, there is no canonical definition to state claims against.
-/

/-! ## A216540.P2399696472882880701

`A099376(n)-A004525(A068551(n))`
-/

namespace A216540.P2399696472882880701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n - A004525 (A068551 n).toNat

end

end A216540.P2399696472882880701

/-! ## A216540.P14917209023788110943

`A285414(4^n+5^n)-(ceil(4^n/3)-∑[floor(3^(n-1))])`
-/

namespace A216540.P14917209023788110943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285414 (4 ^ n + 5 ^ n) - (⌈(4 ^ n : ℚ) / 3⌉ - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216540.P14917209023788110943

/-!
# A216541: Product of Lucas and Catalan numbers: a(n) = A000032(n+1)*A000108(n).

The programs for A216541, the canonical program `A216541.P15065327928894304431` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216541 has offset 0).

The definition of A216541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216541.P15065327928894304431

`A000032(n+1)*A000108(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216541

/-- `A000032(n+1)*A000108(n)` -/
def P15065327928894304431.Spec : Prop :=
  ∀ n, P15065327928894304431.a n = A216541 n

theorem P15065327928894304431.correct : P15065327928894304431.Spec := by
  intro n
  simp only [A216541]

end A216541

/-! ## A216541.P5359889490007175942

`A075193(n)*A168491(n)`
-/

namespace A216541.P5359889490007175942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n * A168491 n

end

end A216541.P5359889490007175942

namespace A216541

/-- `A075193(n)*A168491(n)` -/
def P5359889490007175942.Spec : Prop :=
  ∀ n, P5359889490007175942.a n = A216541 n

end A216541

/-! ## A216541.P2579850641217870538

`A000108(n)*Δ[A014739(n)]`
-/

namespace A216541.P2579850641217870538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A216541.P2579850641217870538

namespace A216541

/-- `A000108(n)*Δ[A014739(n)]` -/
def P2579850641217870538.Spec : Prop :=
  ∀ n, P2579850641217870538.a n = A216541 n

end A216541

/-! ## A216541.P11829612610350349195

`A000108(n)*A000204(n+1)`
-/

namespace A216541.P11829612610350349195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000204 (n + 1)

end

end A216541.P11829612610350349195

namespace A216541

/-- `A000108(n)*A000204(n+1)` -/
def P11829612610350349195.Spec : Prop :=
  ∀ n, P11829612610350349195.a n = A216541 n

end A216541

/-! ## A216541.P12974178098751792345

`abs(A000032(n+1)*A168491(n))`
-/

namespace A216541.P12974178098751792345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000032 (n + 1) * A168491 n|

end

end A216541.P12974178098751792345

namespace A216541

/-- `abs(A000032(n+1)*A168491(n))` -/
def P12974178098751792345.Spec : Prop :=
  ∀ n, P12974178098751792345.a n = A216541 n

end A216541

/-! ## A216541.P1583927415462935242

`A000032(n+1)*A120588(n+1)`
-/

namespace A216541.P1583927415462935242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A120588 (n + 1)

end

end A216541.P1583927415462935242

namespace A216541

/-- `A000032(n+1)*A120588(n+1)` -/
def P1583927415462935242.Spec : Prop :=
  ∀ n, P1583927415462935242.a n = A216541 n

end A216541

/-! ## A216541.P14092203293455958106

`A000032(n+1)*A028303(2*n)`
-/

namespace A216541.P14092203293455958106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A028303 (2 * n)

end

end A216541.P14092203293455958106

namespace A216541

/-- `A000032(n+1)*A028303(2*n)` -/
def P14092203293455958106.Spec : Prop :=
  ∀ n, P14092203293455958106.a n = A216541 n

end A216541

/-! ## A216541.P3310130824353190492

`A000032(n+1)*A028304(2*n)`
-/

namespace A216541.P3310130824353190492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A028304 (2 * n)

end

end A216541.P3310130824353190492

namespace A216541

/-- `A000032(n+1)*A028304(2*n)` -/
def P3310130824353190492.Spec : Prop :=
  ∀ n, P3310130824353190492.a n = A216541 n

end A216541

/-! ## A216541.P12301112740934680783

`A000204(n+1)*A028304(2*n)`
-/

namespace A216541.P12301112740934680783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A028304 (2 * n)

end

end A216541.P12301112740934680783

namespace A216541

/-- `A000204(n+1)*A028304(2*n)` -/
def P12301112740934680783.Spec : Prop :=
  ∀ n, P12301112740934680783.a n = A216541 n

end A216541

/-! ## A216541.P5770150836735051773

`A000032(n+1)*A057977(2*n)`
-/

namespace A216541.P5770150836735051773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A057977 (2 * n)

end

end A216541.P5770150836735051773

namespace A216541

/-- `A000032(n+1)*A057977(2*n)` -/
def P5770150836735051773.Spec : Prop :=
  ∀ n, P5770150836735051773.a n = A216541 n

end A216541

/-! ## A216541.P18142149128124021670

`A000032(n+1)*A126120(2*n)`
-/

namespace A216541.P18142149128124021670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A126120 (2 * n)

end

end A216541.P18142149128124021670

namespace A216541

/-- `A000032(n+1)*A126120(2*n)` -/
def P18142149128124021670.Spec : Prop :=
  ∀ n, P18142149128124021670.a n = A216541 n

end A216541

/-! ## A216541.P1839396092340958848

`A000032(n+1)*A126324(2*n)`
-/

namespace A216541.P1839396092340958848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A126324 (2 * n)

end

end A216541.P1839396092340958848

namespace A216541

/-- `A000032(n+1)*A126324(2*n)` -/
def P1839396092340958848.Spec : Prop :=
  ∀ n, P1839396092340958848.a n = A216541 n

end A216541

/-! ## A216541.P16156941041594770819

`A000108(n)*∑[A000032(abs(1-n))]`
-/

namespace A216541.P16156941041594770819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216541.P16156941041594770819

namespace A216541

/-- `A000108(n)*∑[A000032(abs(1-n))]` -/
def P16156941041594770819.Spec : Prop :=
  ∀ n, P16156941041594770819.a n = A216541 n

end A216541

/-! ## A216541.P4177148252050807746

`A000108(n)*A000032(Δ[n²]-n)`
-/

namespace A216541.P4177148252050807746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A216541.P4177148252050807746

namespace A216541

/-- `A000108(n)*A000032(Δ[n²]-n)` -/
def P4177148252050807746.Spec : Prop :=
  ∀ n, P4177148252050807746.a n = A216541 n

end A216541

/-! ## A216541.P12450433865807353003

`A000032(n+1)*A097331(2*n+1)`
-/

namespace A216541.P12450433865807353003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A097331 (2 * n + 1)

end

end A216541.P12450433865807353003

namespace A216541

/-- `A000032(n+1)*A097331(2*n+1)` -/
def P12450433865807353003.Spec : Prop :=
  ∀ n, P12450433865807353003.a n = A216541 n

end A216541

/-! ## A216541.P14324232709689644818

`A000204(n+1)*A039599(A000217(n))`
-/

namespace A216541.P14324232709689644818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A039599 (A000217 n).toNat

end

end A216541.P14324232709689644818

namespace A216541

/-- `A000204(n+1)*A039599(A000217(n))` -/
def P14324232709689644818.Spec : Prop :=
  ∀ n, P14324232709689644818.a n = A216541 n

end A216541

/-! ## A216541.P8365027032368561306

`(A000045(n+2)+A000045(n))*A000108(n)`
-/

namespace A216541.P8365027032368561306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) + A000045 n) * A000108 n

end

end A216541.P8365027032368561306

namespace A216541

/-- `(A000045(n+2)+A000045(n))*A000108(n)` -/
def P8365027032368561306.Spec : Prop :=
  ∀ n, P8365027032368561306.a n = A216541 n

end A216541

/-! ## A216541.P7077514439588522943

`A225528(n+1)/A000203(n+1)*A000108(n)`
-/

namespace A216541.P7077514439588522943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225528 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A000108 n : ℚ)

end

end A216541.P7077514439588522943

namespace A216541

/-- `A225528(n+1)/A000203(n+1)*A000108(n)` -/
def P7077514439588522943.Spec : Prop :=
  ∀ n, P7077514439588522943.a n = (A216541 n : ℚ)

end A216541

/-! ## A216541.P2985021160534320749

`A226638(n+1)/A000129(n+1)*A000108(n)`
-/

namespace A216541.P2985021160534320749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226638 (n + 1) : ℚ) / (A000129 (n + 1) : ℚ) * (A000108 n : ℚ)

end

end A216541.P2985021160534320749

namespace A216541

/-- `A226638(n+1)/A000129(n+1)*A000108(n)` -/
def P2985021160534320749.Spec : Prop :=
  ∀ n, P2985021160534320749.a n = (A216541 n : ℚ)

end A216541

/-! ## A216541.P14359343652387307522

`A215931(n)/A000045(n+1)`
-/

namespace A216541.P14359343652387307522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215931 n : ℚ) / (A000045 (n + 1) : ℚ)

end

end A216541.P14359343652387307522

namespace A216541

/-- `A215931(n)/A000045(n+1)` -/
def P14359343652387307522.Spec : Prop :=
  ∀ n, P14359343652387307522.a n = (A216541 n : ℚ)

end A216541

/-!
# A216543: Decimal expansion of 4*Sum_{k=1..50000} (-1)^(k-1)/(2k-1).

The programs for A216543, there is no canonical definition to state claims against.
-/

/-! ## A216543.P13647553269864928764

`A000796(n^Δ[A262665(n+1)])`
-/

namespace A216543.P13647553269864928764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat + 1)

end

end A216543.P13647553269864928764

/-! ## A216543.P16636031110169969058

`A000796(n)-A118917(A003477(n))`
-/

namespace A216543.P16636031110169969058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A118917 (A003477 n).toNat

end

end A216543.P16636031110169969058

/-! ## A216543.P14709080693486624491

`Δ[A059582(n)]-A010673(A328922(n))`
-/

namespace A216543.P14709080693486624491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010673 (A328922 n).toNat

end

end A216543.P14709080693486624491

/-! ## A216543.P5999733103842236986

`A000796(n)-A035185(A147576(n+1))`
-/

namespace A216543.P5999733103842236986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A035185 (A147576 (n + 1)).toNat

end

end A216543.P5999733103842236986

/-!
# A216546: Decimal expansion of Sum_{k=1..5000000} (-1)^(k-1)/(2k-1).

The programs for A216546, there is no canonical definition to state claims against.
-/

/-! ## A216546.P14471622005172344256

`gcd(9-A210958(n), A111429(A141412(n)))`
-/

namespace A216546.P14471622005172344256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 - A210958 n) (A111429 (A141412 n).toNat)

end

end A216546.P14471622005172344256

/-!
# A216547: Decimal expansion of 2*Sum_{k=1..5000000} (-1)^(k-1)/(2k-1).

The programs for A216547, there is no canonical definition to state claims against.
-/

/-! ## A216547.P2212392594173301667

`A300077(n)%10-char[7]`
-/

namespace A216547.P2212392594173301667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300077 (n + 1)) 10 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A216547.P2212392594173301667

/-! ## A216547.P16469045725853529164

`A019669(A193243(A261241(n))+n)`
-/

namespace A216547.P16469045725853529164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019669 ((A193243 (A261241 n).toNat + (n : ℤ)).toNat + 1)

end

end A216547.P16469045725853529164

/-! ## A216547.P18413662742051693735

`A019669(n)-A193243(A261241(n))`
-/

namespace A216547.P18413662742051693735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019669 (n + 1) - A193243 (A261241 n).toNat

end

end A216547.P18413662742051693735

/-!
# A216548: Decimal expansion of 4*Sum_{k=1..5000000} (-1)^(k-1)/(2k-1).

The programs for A216548, there is no canonical definition to state claims against.
-/

/-! ## A216548.P16185431688728859205

`A123152(n+1)-A097031(A038754(n))`
-/

namespace A216548.P16185431688728859205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) - A097031 (A038754 n).toNat

end

end A216548.P16185431688728859205

/-! ## A216548.P369619828290481181

`A000796(n)-A055941(A055672(A330627(n+1)))`
-/

namespace A216548.P369619828290481181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A055941 (A055672 (A330627 (n + 1)).toNat).toNat

end

end A216548.P369619828290481181

/-! ## A216548.P6709557346011187879

`A130065(Δ[A004739(A059582(n)²)])`
-/

namespace A216548.P6709557346011187879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A059582 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (f1 (n + 1) - f1 n).toNat

end

end A216548.P6709557346011187879

/-! ## A216548.P3831332097624710880

`A000796(n)-A000122(A128160(n+1))`
-/

namespace A216548.P3831332097624710880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A000122 (A128160 (n + 1)).toNat

end

end A216548.P3831332097624710880

/-!
# A216549: Numbers n such that (10^n-1)/9 is prime, but cannot be written in the form a^2 + 3*b^2.

The programs for A216549, there is no canonical definition to state claims against.
-/

/-! ## A216549.P17753416318972117835

`A004023(comp[∑[2*n]])`
-/

namespace A216549.P17753416318972117835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004023 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A216549.P17753416318972117835

/-!
# A216550: Numbers n such that (2^n+1)/3 is prime and can be written in the form a^2 + 3*b^2.

The programs for A216550, there is no canonical definition to state claims against.
-/

/-! ## A216550.P9240346431887617932

`filter[A000978(n+1), A070563(#)]`
-/

namespace A216550.P9240346431887617932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A216550.P9240346431887617932

/-! ## A216550.P12621086725735085639

`filter[A066263(n+1), A135461(#)]`
-/

namespace A216550.P12621086725735085639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A216550.P12621086725735085639

/-! ## A216550.P3693862429242450580

`filter[A073936(n+1), A135461(#)]`
-/

namespace A216550.P3693862429242450580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A216550.P3693862429242450580

/-! ## A216550.P11175173325411903606

`filter[A000978(n+1), A319691(#)]`
-/

namespace A216550.P11175173325411903606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A216550.P11175173325411903606

/-! ## A216550.P1533752854665846625

`filter[A000978(n+1), A354982(#)]`
-/

namespace A216550.P1533752854665846625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A216550.P1533752854665846625

/-!
# A216551: Numbers n such that (2^n+1)/3 is prime, but cannot be written in the form a^2 + 3*b^2.

The programs for A216551, there is no canonical definition to state claims against.
-/

/-! ## A216551.P4005437189854398709

`record[A140214(A073936(n+1))]`
-/

namespace A216551.P4005437189854398709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140214 (A073936 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216551.P4005437189854398709

/-! ## A216551.P6949816249084506316

`p?[A005074(A000978(n+1))]`
-/

namespace A216551.P6949816249084506316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005074 (A000978 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216551.P6949816249084506316

/-! ## A216551.P3886747619056300805

`record[A170825(A000978(n+2))]`
-/

namespace A216551.P3886747619056300805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170825 (A000978 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216551.P3886747619056300805

/-! ## A216551.P1631794792270158666

`filter[A000978(n+1), A080846(#)]`
-/

namespace A216551.P1631794792270158666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A216551.P1631794792270158666

/-! ## A216551.P9738055702408187190

`filter[A000978(n+1), A131532(#)]`
-/

namespace A216551.P9738055702408187190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131532 (f1 j).toNat = 1) n)

end

end A216551.P9738055702408187190

/-!
# A216552: Numbers n such that the n-th Fibonacci number is prime and can be written in the form a^2 + 3*b^2.

The programs for A216552, there is no canonical definition to state claims against.
-/

/-! ## A216552.P6778313917327465460

`filter[A001605(n+1), A130198(#)]`
-/

namespace A216552.P6778313917327465460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130198 (f1 j).toNat = 1) n)

end

end A216552.P6778313917327465460

/-! ## A216552.P12207709023648781882

`filter[A001605(n+1), A260397(#)]`
-/

namespace A216552.P12207709023648781882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A216552.P12207709023648781882

/-! ## A216552.P15224309716963128727

`eq[-A022307(n), A162285(n)]`
-/

namespace A216552.P15224309716963128727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A022307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216552.P15224309716963128727

/-! ## A216552.P5843043746939731780

`eq[-A038575(n), A162285(n)]`
-/

namespace A216552.P5843043746939731780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216552.P5843043746939731780

/-! ## A216552.P13606322268264033381

`eq[A079677(n), A173858(n+1)]`
-/

namespace A216552.P13606322268264033381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216552.P13606322268264033381

/-!
# A216553: Numbers n such that the n-th Fibonacci number is prime, but cannot be written in the form a^2 + 3*b^2.

The programs for A216553, there is no canonical definition to state claims against.
-/

/-! ## A216553.P7491340720807423760

`filter[A001605(n+1), A260394(#)]`
-/

namespace A216553.P7491340720807423760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j).toNat = 1) n)

end

end A216553.P7491340720807423760

/-! ## A216553.P4914685171097555057

`filter[A001605(n+1), A260445(#)]`
-/

namespace A216553.P4914685171097555057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260445 (f1 j).toNat = 1) n)

end

end A216553.P4914685171097555057

/-! ## A216553.P13027580814192277648

`filter[A080651(n+1), A260445(#)]`
-/

namespace A216553.P13027580814192277648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260445 (f1 j).toNat = 1) n)

end

end A216553.P13027580814192277648

/-! ## A216553.P15970737718740260542

`filter[A083668(n+1), A260394(#)]`
-/

namespace A216553.P15970737718740260542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j).toNat = 1) n)

end

end A216553.P15970737718740260542

/-! ## A216553.P1157275538184834905

`filter[A083668(n+1), A260445(#)]`
-/

namespace A216553.P1157275538184834905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260445 (f1 j).toNat = 1) n)

end

end A216553.P1157275538184834905

/-!
# A216554: Numbers n such that the n-th Lucas number is prime and can be written in the form a^2 + 3*b^2.

The programs for A216554, there is no canonical definition to state claims against.
-/

/-! ## A216554.P10547753573564162668

`filter[A001606(n+2), A131078(#)]`
-/

namespace A216554.P10547753573564162668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A216554.P10547753573564162668

/-! ## A216554.P655099684687361966

`eq[A086599(n), A165211(3*n)]`
-/

namespace A216554.P655099684687361966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216554.P655099684687361966

/-! ## A216554.P18280504811275719545

`eq[A086599(n), A105812(A071047(n))]`
-/

namespace A216554.P18280504811275719545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A071047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216554.P18280504811275719545

/-! ## A216554.P1605248781426859245

`eq[A000034(A110655(n)), A272377(n)]`
-/

namespace A216554.P1605248781426859245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A110655 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216554.P1605248781426859245

/-! ## A216554.P8495900714068212595

`∩[A001606(n+1), A215810(n+1)]`
-/

namespace A216554.P8495900714068212595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216554.P8495900714068212595

/-!
# A216555: Numbers n such that the n-th Lucas number is prime, but cannot be written in the form a^2 + 3*b^2.

The programs for A216555, there is no canonical definition to state claims against.
-/

/-! ## A216555.P147409298146635367

`eq[A086598(n), A118828(n+1)]`
-/

namespace A216555.P147409298146635367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216555.P147409298146635367

/-! ## A216555.P13244703204454004956

`eq[A086599(n), A118828(n+1)]`
-/

namespace A216555.P13244703204454004956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216555.P13244703204454004956

/-! ## A216555.P7688995614385492134

`eq[and(2, A166517(n)), A272377(n)]`
-/

namespace A216555.P7688995614385492134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A166517 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216555.P7688995614385492134

/-! ## A216555.P17123328660905271219

`eq[log2(A272377(n)), A118828(n+1)]`
-/

namespace A216555.P17123328660905271219
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A272377 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A216555.P17123328660905271219

/-! ## A216555.P9048151821118954403

`eq[A219187(n)%3, A272377(n)]`
-/

namespace A216555.P9048151821118954403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219187 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216555.P9048151821118954403

/-!
# A216556: Concatenate decimal digits of n, each increased by 1.

The programs for A216556, there is no canonical definition to state claims against.
-/

/-! ## A216556.P12733436733351408315

`A053392(A051022(n)+10)`
-/

namespace A216556.P12733436733351408315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A051022 n + 10).toNat

end

end A216556.P12733436733351408315

/-!
# A216558: Numbers n such that the n-th Fibonacci number is prime and can be written in the form a^2 + 2*b^2.

The programs for A216558, there is no canonical definition to state claims against.
-/

/-! ## A216558.P7779829599414274335

`eq[A022307(n)², A040857(n)]`
-/

namespace A216558.P7779829599414274335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040857 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216558.P7779829599414274335

/-! ## A216558.P7477270962886527327

`eq[A079677(n), A173864(n+1)]`
-/

namespace A216558.P7477270962886527327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216558.P7477270962886527327

/-! ## A216558.P1305081848619921050

`∩[A001605(n+1), A215818(n+1)]`
-/

namespace A216558.P1305081848619921050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216558.P1305081848619921050

/-! ## A216558.P6237486591990433606

`eq[A038575(n), A087960(A061800(n))]`
-/

namespace A216558.P6237486591990433606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A061800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216558.P6237486591990433606

/-! ## A216558.P7172396334909237267

`eq[A022307(n), A130151(A065033(n))]`
-/

namespace A216558.P7172396334909237267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216558.P7172396334909237267

/-!
# A216559: Numbers n such that the n-th Fibonacci number is prime and can be written in the form a^2 + 5*b^2.

The programs for A216559, there is no canonical definition to state claims against.
-/

/-! ## A216559.P17557139821861019058

`p?[A260222(A083668(n+1))]`
-/

namespace A216559.P17557139821861019058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (A083668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216559.P17557139821861019058

/-! ## A216559.P12640816567947325973

`p?[A260222(p?[A001605(n+1)])]`
-/

namespace A216559.P12640816567947325973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216559.P12640816567947325973

/-! ## A216559.P7792009730764139798

`p?[A260222(p?[A080651(n+1)])]`
-/

namespace A216559.P7792009730764139798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080651 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216559.P7792009730764139798

/-! ## A216559.P4297970503157931482

`p?[A260222(p?[A152012(n+1)])]`
-/

namespace A216559.P4297970503157931482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152012 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216559.P4297970503157931482

/-! ## A216559.P7022381787383809584

`p?[A260222(p?[A069744(n+1)+1])]`
-/

namespace A216559.P7022381787383809584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216559.P7022381787383809584

/-!
# A216560: Numbers n such that the n-th Fibonacci number is prime, but cannot be written in the form a^2 + 2*b^2.

The programs for A216560, there is no canonical definition to state claims against.
-/

/-! ## A216560.P2852489693741587555

`∩[A003630(n+1), A152012(n+1)]`
-/

namespace A216560.P2852489693741587555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216560.P2852489693741587555

/-! ## A216560.P1123987430651204811

`∩[A038875(n+1), A152012(n+1)]`
-/

namespace A216560.P1123987430651204811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216560.P1123987430651204811

/-! ## A216560.P14541523779381474084

`A216570(lt[A247442(n+2), A247420(n+1)])`
-/

namespace A216560.P14541523779381474084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247442 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216570 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216560.P14541523779381474084

/-! ## A216560.P17717694053599139884

`∩[A040102(n+1), A152012(n+1)]`
-/

namespace A216560.P17717694053599139884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216560.P17717694053599139884

/-! ## A216560.P5200112529707745412

`∩[A045318(n+1), A152012(n+1)]`
-/

namespace A216560.P5200112529707745412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216560.P5200112529707745412

/-!
# A216561: Numbers n such that the n-th Fibonacci number is prime, but cannot be written in the form a^2 + 5*b^2.

The programs for A216561, there is no canonical definition to state claims against.
-/

/-! ## A216561.P12066962695059589646

`∩[A001605(n+1), A075776(n+1)]`
-/

namespace A216561.P12066962695059589646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216561.P12066962695059589646

/-! ## A216561.P10150959597378891243

`∩[A069744(n+1)+1, A075776(n+1)]`
-/

namespace A216561.P10150959597378891243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216561.P10150959597378891243

/-! ## A216561.P1239439007001141025

`eq[A038575(n), A131554(A061228(n+1))]`
-/

namespace A216561.P1239439007001141025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131554 (A061228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216561.P1239439007001141025

/-! ## A216561.P10110132585393438851

`A001605(record[A329501(n+1)])`
-/

namespace A216561.P10110132585393438851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216561.P10110132585393438851

/-! ## A216561.P15452699842210277154

`∩[A072556(n+1), A075776(n+1)]`
-/

namespace A216561.P15452699842210277154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216561.P15452699842210277154

/-!
# A216562: Numbers n such that the n-th Lucas number is prime and can be written in the form a^2 + 2*b^2.

The programs for A216562, there is no canonical definition to state claims against.
-/

/-! ## A216562.P9277833295300080347

`eq[A057603(n+2), A194086(n)]`
-/

namespace A216562.P9277833295300080347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057603 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216562.P9277833295300080347

/-!
# A216564: Numbers n such that the n-th Lucas number is prime, but cannot be written in the form a^2 + 2*b^2.

The programs for A216564, there is no canonical definition to state claims against.
-/

/-! ## A216564.P2734300928361863835

`p?[or(2, A216567(n+2))]`
-/

namespace A216564.P2734300928361863835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A216567 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216564.P2734300928361863835

/-! ## A216564.P15281399187036398295

`∩[or(2, A216567(n+1)), A216567(n+1)]`
-/

namespace A216564.P15281399187036398295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A216567 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216564.P15281399187036398295

/-! ## A216564.P9253390412821939199

`filter[A216576(n+2), A319691(#)]`
-/

namespace A216564.P9253390412821939199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216576 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A216564.P9253390412821939199

/-!
# A216565: Numbers n such that the n-th Lucas number is prime, but cannot be written in the form a^2 + 5*b^2.

The programs for A216565, there is no canonical definition to state claims against.
-/

/-! ## A216565.P4441769902047784703

`∩[A001606(n+1), comp[A216563(n+1)]]`
-/

namespace A216565.P4441769902047784703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216563 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A216565.P4441769902047784703

/-! ## A216565.P7216741979764559094

`eq[A008683(A279945(n+1)), A086599(n)]`
-/

namespace A216565.P7216741979764559094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A279945 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216565.P7216741979764559094

/-! ## A216565.P207169427446790357

`eq[A046622(n+1), A050603(A046627(n+1))]`
-/

namespace A216565.P207169427446790357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A046627 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216565.P207169427446790357

/-!
# A216566: Numbers n such that the n-th Lucas number is prime, but cannot be written in the form a^2 + b^2.

The programs for A216566, there is no canonical definition to state claims against.
-/

/-! ## A216566.P7270129960832327384

`filter[A001606(n+1), A131735(#)]`
-/

namespace A216566.P7270129960832327384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131735 (f1 j).toNat = 1) n)

end

end A216566.P7270129960832327384

/-! ## A216566.P18366758770591800865

`filter[A001606(n+1), A214090(#)]`
-/

namespace A216566.P18366758770591800865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A216566.P18366758770591800865

/-! ## A216566.P11785189932809257234

`eq[A086599(n)!, A131735(n)]`
-/

namespace A216566.P11785189932809257234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086599 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216566.P11785189932809257234

/-! ## A216566.P980779779932968899

`eq[A086599(n)!, A214090(n)]`
-/

namespace A216566.P980779779932968899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086599 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216566.P980779779932968899

/-! ## A216566.P17854169515661088972

`eq[A112166(n)+1, A086599(n)]`
-/

namespace A216566.P17854169515661088972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216566.P17854169515661088972

/-!
# A216567: Numbers n such that the n-th Lucas number is prime and can be written in the form a^2 + b^2.

The programs for A216567, there is no canonical definition to state claims against.
-/

/-! ## A216567.P14646572896758123681

`eq[A010892(n), A086599(n)]`
-/

namespace A216567.P14646572896758123681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216567.P14646572896758123681

/-! ## A216567.P5782708816465537470

`∩[A001606(n+1), A124130(n+1)]`
-/

namespace A216567.P5782708816465537470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216567.P5782708816465537470

/-! ## A216567.P4747202673753853906

`∩[A001606(n+1), A034017(n+1)]`
-/

namespace A216567.P4747202673753853906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216567.P4747202673753853906

/-! ## A216567.P506935852921661014

`∩[A001606(n+1), A034021(n+1)]`
-/

namespace A216567.P506935852921661014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216567.P506935852921661014

/-!
# A216568: Smallest k such that prime(n)*k-1 is prime.

The programs for A216568, there is no canonical definition to state claims against.
-/

/-! ## A216568.P6691277873396528550

`(A032448(n+1)+1)/A000040(n+1)`
-/

namespace A216568.P6691277873396528550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032448 (n + 1) + 1 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A216568.P6691277873396528550

/-! ## A216568.P2224500383474935153

`A053989(Δ[A007504(n)])`
-/

namespace A216568.P2224500383474935153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (f1 (n + 1) - f1 n).toNat

end

end A216568.P2224500383474935153

/-! ## A216568.P298615228015709382

`A053989(A000040(n+1))`
-/

namespace A216568.P298615228015709382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A000040 (n + 1)).toNat

end

end A216568.P298615228015709382

/-! ## A216568.P8054234079734896637

`A053989(A008578(n+2))`
-/

namespace A216568.P8054234079734896637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A008578 (n + 2)).toNat

end

end A216568.P8054234079734896637

/-! ## A216568.P3568882842932912160

`A053989(A182986(n+2))`
-/

namespace A216568.P3568882842932912160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A182986 (n + 2)).toNat

end

end A216568.P3568882842932912160

/-! ## A216568.P17031623469081400424

`A053989(eq[1, A003415(n)])`
-/

namespace A216568.P17031623469081400424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216568.P17031623469081400424

/-! ## A216568.P3154956880515480510

`A053989(eq[1, A018783(n)])`
-/

namespace A216568.P3154956880515480510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216568.P3154956880515480510

/-! ## A216568.P1064685613849734623

`A053989(record[A006530(n+2)])`
-/

namespace A216568.P1064685613849734623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216568.P1064685613849734623

/-! ## A216568.P6612633050136568867

`A053989(record[A014963(n+2)])`
-/

namespace A216568.P6612633050136568867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216568.P6612633050136568867

/-! ## A216568.P16006222806768204142

`A053989(record[A020639(n+2)])`
-/

namespace A216568.P16006222806768204142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216568.P16006222806768204142

/-! ## A216568.P4141865077274146174

`A053989(A006093(n+1)+1)`
-/

namespace A216568.P4141865077274146174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A006093 (n + 1) + 1).toNat

end

end A216568.P4141865077274146174

/-! ## A216568.P8776642604760075076

`A053989(A052147(n+1)-2)`
-/

namespace A216568.P8776642604760075076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A052147 (n + 1) - 2).toNat

end

end A216568.P8776642604760075076

/-! ## A216568.P5657624488193482609

`A053989(A100484(n+1)/2)`
-/

namespace A216568.P5657624488193482609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A216568.P5657624488193482609

/-! ## A216568.P16336346137392518755

`A053989(A001747(n+2)/2)`
-/

namespace A216568.P16336346137392518755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A216568.P16336346137392518755

/-! ## A216568.P9854911453999504532

`A053989(eq[1, A053989(n+1)])`
-/

namespace A216568.P9854911453999504532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216568.P9854911453999504532

/-! ## A216568.P2623655175743588413

`A053989(lt[A053989(n+1), 2])`
-/

namespace A216568.P2623655175743588413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A216568.P2623655175743588413

/-! ## A216568.P16066112943122914809

`A053989(A034694(A006093(n+1)))`
-/

namespace A216568.P16066112943122914809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A034694 (A006093 (n + 1)).toNat).toNat

end

end A216568.P16066112943122914809

/-! ## A216568.P17005125802874814721

`A053989(A006530(A100484(n+1)))`
-/

namespace A216568.P17005125802874814721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A006530 (A100484 (n + 1)).toNat).toNat

end

end A216568.P17005125802874814721

/-! ## A216568.P10573069044909366185

`A053989(A006530(A001747(n+2)))`
-/

namespace A216568.P10573069044909366185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A006530 (A001747 (n + 2)).toNat).toNat

end

end A216568.P10573069044909366185

/-! ## A216568.P10557128049407446790

`A053989(A007504(n+1)-A007504(n))`
-/

namespace A216568.P10557128049407446790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A007504 (n + 1) - A007504 n).toNat

end

end A216568.P10557128049407446790

/-!
# A216569: Numbers n such that the n-th Fibonacci number is prime and can be written in the form a^2 + 6*b^2.

The programs for A216569, there is no canonical definition to state claims against.
-/

/-! ## A216569.P12638641876647620864

`∩[A216552(n+1), A216558(n+4)]`
-/

namespace A216569.P12638641876647620864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216558 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216569.P12638641876647620864

/-! ## A216569.P663550260574164048

`filter[A216552(n+1), A241979(#)]`
-/

namespace A216569.P663550260574164048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A241979 (f1 j).toNat = 1) n)

end

end A216569.P663550260574164048

/-!
# A216570: Numbers n such that the n-th Fibonacci number is prime, but cannot be written in the form a^2 + 6*b^2.

The programs for A216570, there is no canonical definition to state claims against.
-/

/-! ## A216570.P7061869978830537859

`∩[A001605(n+1), A004050(n+1)]`
-/

namespace A216570.P7061869978830537859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216570.P7061869978830537859

/-! ## A216570.P5593427854260357061

`∩[A004050(n+1), A069744(n+1)+1]`
-/

namespace A216570.P5593427854260357061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216570.P5593427854260357061

/-! ## A216570.P14502321720117382568

`eq[A008683(A119849(n+1)), A038575(n)]`
-/

namespace A216570.P14502321720117382568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A119849 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216570.P14502321720117382568

/-! ## A216570.P4388956803283487909

`eq[A001222(A119849(n+1)), A079677(n)]`
-/

namespace A216570.P4388956803283487909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A119849 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216570.P4388956803283487909

/-! ## A216570.P7653301864029973541

`A001605(lt[A327717(n), A019554(n+1)])`
-/

namespace A216570.P7653301864029973541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216570.P7653301864029973541

/-!
# A216572: Numbers n such that the n-th Lucas number is prime, but cannot be written in the form a^2 + 6*b^2.

The programs for A216572, there is no canonical definition to state claims against.
-/

/-! ## A216572.P8042483356035951186

`eq[A084846(n+1)², A086599(n)]`
-/

namespace A216572.P8042483356035951186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084846 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216572.P8042483356035951186

/-! ## A216572.P14363239081683756127

`eq[A086599(n), A263243(A000217(n))]`
-/

namespace A216572.P14363239081683756127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263243 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216572.P14363239081683756127

/-! ## A216572.P8068346411992870365

`eq[A086599(n), A267533(A000124(n))]`
-/

namespace A216572.P8068346411992870365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216572.P8068346411992870365

/-! ## A216572.P2136048802075725311

`A001606(lt[A114525(n)², A271315(3*n+4)])`
-/

namespace A216572.P2136048802075725311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216572.P2136048802075725311

/-! ## A216572.P14981671396594495546

`A001606(lt[A275838(n), A270890(2*n+1)])`
-/

namespace A216572.P14981671396594495546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275838 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216572.P14981671396594495546

/-!
# A216573: Numbers k such that Fibonacci(k) is prime and can be written in the form a^2 + 10*b^2.

The programs for A216573, there is no canonical definition to state claims against.
-/

/-! ## A216573.P4040820203648409469

`∩[A216559(n+1), A216558(n+3)]`
-/

namespace A216573.P4040820203648409469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216558 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216573.P4040820203648409469

/-! ## A216573.P2189304634857532166

`A216559(∑[A124832(n+2)!])`
-/

namespace A216573.P2189304634857532166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A124832 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216559 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216573.P2189304634857532166

/-!
# A216574: Numbers n such that the n-th Fibonacci number is prime, but cannot be written in the form a^2 + 10*b^2.

The programs for A216574, there is no canonical definition to state claims against.
-/

/-! ## A216574.P17121989846501613289

`∪[A216560(n+1), A216561(n+1)]`
-/

namespace A216574.P17121989846501613289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216574.P17121989846501613289

/-! ## A216574.P7579990742633940351

`A001605(lt[A217347(n+1), A005235(n+1)])`
-/

namespace A216574.P7579990742633940351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216574.P7579990742633940351

/-! ## A216574.P10507935555713321442

`A303215(A087597(n+2))`
-/

namespace A216574.P10507935555713321442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303215 (A087597 (n + 2)).toNat

end

end A216574.P10507935555713321442

/-! ## A216574.P11722964094083293842

`A001605(∑[A184097(n+1)!])`
-/

namespace A216574.P11722964094083293842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A184097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216574.P11722964094083293842

/-! ## A216574.P15489390045351407228

`eq[A016346(A004525(n)), A079677(n)]`
-/

namespace A216574.P15489390045351407228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016346 (A004525 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216574.P15489390045351407228

/-!
# A216575: Numbers n such that the n-th Lucas number is prime and can be written in the form a^2 + 10*b^2.

The programs for A216575, there is no canonical definition to state claims against.
-/

/-! ## A216575.P3127820055005242419

`p?[and(-3, A216562(n+1))]`
-/

namespace A216575.P3127820055005242419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A216562 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216575.P3127820055005242419

/-! ## A216575.P6968327105961260186

`p?[A059791(n+1)%4*A059791(n+1)]`
-/

namespace A216575.P6968327105961260186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059791 (n + 1)) 4 * A059791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216575.P6968327105961260186

/-! ## A216575.P16020571002855153842

`filter[A059791(n+1), A353812(#)]`
-/

namespace A216575.P16020571002855153842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A216575.P16020571002855153842

/-! ## A216575.P11873183438080232324

`filter[A059791(n+1), A353814(#)]`
-/

namespace A216575.P11873183438080232324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A216575.P11873183438080232324

/-!
# A216576: Numbers n such that n-th Lucas number is prime, but cannot be written in the form a^2 + 10*b^2.

The programs for A216576, there is no canonical definition to state claims against.
-/

/-! ## A216576.P2048437553944335380

`eq[A086599(n), A176563(n)]`
-/

namespace A216576.P2048437553944335380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216576.P2048437553944335380

/-! ## A216576.P3079069166914794475

`eq[A086599(n), A359738(n)]`
-/

namespace A216576.P3079069166914794475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359738 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216576.P3079069166914794475

/-! ## A216576.P10252672704009080576

`eq[A071935(n+1), A086599(n)]`
-/

namespace A216576.P10252672704009080576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216576.P10252672704009080576

/-! ## A216576.P16676120435806483705

`eq[A054249(A046109(n)), A272377(n)]`
-/

namespace A216576.P16676120435806483705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (A046109 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216576.P16676120435806483705

/-! ## A216576.P9210842799596781936

`eq[A020639(A228967(n+1)), A272377(n)]`
-/

namespace A216576.P9210842799596781936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A228967 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216576.P9210842799596781936

/-!
# A216577: Number of nonnegative integer solutions to the equation x^2 + 10*y^2 = n.

The programs for A216577, there is no canonical definition to state claims against.
-/

/-! ## A216577.P5785953087574393295

`ceil(A317641(n)/4)`
-/

namespace A216577.P5785953087574393295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317641 n : ℚ) / 4⌉

end

end A216577.P5785953087574393295

/-! ## A216577.P8611816857520545592

`ceil(A317642(2*n)/4)`
-/

namespace A216577.P8611816857520545592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317642 (2 * n) : ℚ) / 4⌉

end

end A216577.P8611816857520545592

/-! ## A216577.P14020530898036870658

`ceil(A028605(4*n)/4)`
-/

namespace A216577.P14020530898036870658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028605 (4 * n) : ℚ) / 4⌉

end

end A216577.P14020530898036870658

/-! ## A216577.P11578324668626921555

`A053266(A317641(n))`
-/

namespace A216577.P11578324668626921555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 (A317641 n).toNat

end

end A216577.P11578324668626921555

/-! ## A216577.P308519084109686179

`A008624(A317641(n)+1)`
-/

namespace A216577.P308519084109686179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A317641 n + 1).toNat

end

end A216577.P308519084109686179

/-! ## A216577.P10736003349344326345

`A000195(A317641(n)+2)`
-/

namespace A216577.P10736003349344326345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A317641 n + 2).toNat

end

end A216577.P10736003349344326345

/-! ## A216577.P10929429054014984786

`A000700(A317641(n)+2)`
-/

namespace A216577.P10929429054014984786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A317641 n + 2).toNat

end

end A216577.P10929429054014984786

/-! ## A216577.P12301848470409264649

`A053693(A317641(n)+2)`
-/

namespace A216577.P12301848470409264649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053693 (A317641 n + 2).toNat

end

end A216577.P12301848470409264649

/-! ## A216577.P15420536811058620284

`A060426(A317641(n)+2)`
-/

namespace A216577.P15420536811058620284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060426 (A317641 n + 2).toNat

end

end A216577.P15420536811058620284

/-! ## A216577.P9695803688742223224

`A002265(A317641(n)+3)`
-/

namespace A216577.P9695803688742223224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A317641 n + 3).toNat

end

end A216577.P9695803688742223224

/-! ## A216577.P1136635865222326188

`A000045(ceil(sqrt(A317641(n))))`
-/

namespace A216577.P1136635865222326188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.sqrt (A317641 n : ℝ)⌉.toNat

end

end A216577.P1136635865222326188

/-! ## A216577.P1992101089121597514

`A000081(ceil(sqrt(A317641(n))))`
-/

namespace A216577.P1992101089121597514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 ⌈Real.sqrt (A317641 n : ℝ)⌉.toNat

end

end A216577.P1992101089121597514

/-! ## A216577.P11418001487389896139

`A000120(ceil(sqrt(A317641(n))))`
-/

namespace A216577.P11418001487389896139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌈Real.sqrt (A317641 n : ℝ)⌉.toNat

end

end A216577.P11418001487389896139

/-! ## A216577.P3953984008545790460

`A000194(ceil(sqrt(A317641(n))))`
-/

namespace A216577.P3953984008545790460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ⌈Real.sqrt (A317641 n : ℝ)⌉.toNat

end

end A216577.P3953984008545790460

/-! ## A216577.P18110701174579197252

`A003056(ceil(sqrt(A317641(n))))`
-/

namespace A216577.P18110701174579197252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈Real.sqrt (A317641 n : ℝ)⌉.toNat

end

end A216577.P18110701174579197252

/-! ## A216577.P12816665871219098338

`A000194(A317641(n)+2)-1`
-/

namespace A216577.P12816665871219098338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A317641 n + 2).toNat - 1

end

end A216577.P12816665871219098338

/-! ## A216577.P11922272754749593609

`A000700(A317642(2*n)+2)`
-/

namespace A216577.P11922272754749593609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A317642 (2 * n) + 2).toNat

end

end A216577.P11922272754749593609

/-! ## A216577.P16718962032715669791

`val(A000010(A317641(n)+2), 2)`
-/

namespace A216577.P16718962032715669791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A317641 n + 2).toNat).toNat 2

end

end A216577.P16718962032715669791

/-! ## A216577.P7203964219742226600

`A001222(ceil(sqrt(A317641(n)))+1)`
-/

namespace A216577.P7203964219742226600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (⌈Real.sqrt (A317641 n : ℝ)⌉ + 1).toNat

end

end A216577.P7203964219742226600

/-! ## A216577.P4200034162654121950

`A000005(ceil(sqrt(A317641(n)))+1)-1`
-/

namespace A216577.P4200034162654121950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (⌈Real.sqrt (A317641 n : ℝ)⌉ + 1).toNat - 1

end

end A216577.P4200034162654121950

/-!
# A216578: Prime numbers which cannot be written in the form x^2 + 10*y^2.

The programs for A216578, there is no canonical definition to state claims against.
-/

/-! ## A216578.P13214146892400018160

`∪[p?[2*n+1-(n-1)%5], p?[or(5, 6*n)]]`
-/

namespace A216578.P13214146892400018160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (6 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A216578.P13214146892400018160

/-! ## A216578.P5503737120799273068

`p?[eq[0, A317641(n)]]`
-/

namespace A216578.P5503737120799273068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216578.P5503737120799273068

/-! ## A216578.P6966524441892284294

`p?[comp[A020673(n+1)]]`
-/

namespace A216578.P6966524441892284294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216578.P6966524441892284294

/-! ## A216578.P6476701361433369168

`p?[comp[A033201(n+1)]]`
-/

namespace A216578.P6476701361433369168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216578.P6476701361433369168

/-! ## A216578.P9486958769227472869

`p?[or(n, -A317642(2*n))]`
-/

namespace A216578.P9486958769227472869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-A317642 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216578.P9486958769227472869

/-! ## A216578.P18266261841968275784

`eq[A068346(n), A317641(n)]`
-/

namespace A216578.P18266261841968275784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216578.P18266261841968275784

/-! ## A216578.P16150944863871610076

`eq[A072480(n), A317641(n)]`
-/

namespace A216578.P16150944863871610076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216578.P16150944863871610076

/-! ## A216578.P1159392745899345566

`eq[A277894(n), A317641(n)]`
-/

namespace A216578.P1159392745899345566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216578.P1159392745899345566

/-! ## A216578.P5820903283042031041

`eq[A278648(n), A317641(n)]`
-/

namespace A216578.P5820903283042031041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216578.P5820903283042031041

/-! ## A216578.P7018271856940077070

`eq[A317641(n), A338554(n)]`
-/

namespace A216578.P7018271856940077070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216578.P7018271856940077070

/-!
# A216579: Number of positive integer solutions to the equation a^2 + 10*b^2 = n.

The programs for A216579, there is no canonical definition to state claims against.
-/

/-! ## A216579.P11420368678612578855

`A002265(A317641(n+1))`
-/

namespace A216579.P11420368678612578855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A317641 (n + 1)).toNat

end

end A216579.P11420368678612578855

/-! ## A216579.P7004735124912779737

`A004526(A317641(n+1)/2)`
-/

namespace A216579.P7004735124912779737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A317641 (n + 1) : ℚ) / 2)).toNat

end

end A216579.P7004735124912779737

/-! ## A216579.P9658975591445599628

`A056142(floor(A317641(n+1)/4))`
-/

namespace A216579.P9658975591445599628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 ⌊(A317641 (n + 1) : ℚ) / 4⌋.toNat

end

end A216579.P9658975591445599628

/-! ## A216579.P4094630397588868077

`floor(A317641(n+1)/4)%A016777(n)`
-/

namespace A216579.P4094630397588868077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A317641 (n + 1) : ℚ) / 4⌋ (A016777 n)

end

end A216579.P4094630397588868077

/-! ## A216579.P8029569100696983520

`∑{d}[floor(A317641(n+1)/4), A000010(#)]`
-/

namespace A216579.P8029569100696983520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317641 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A216579.P8029569100696983520

/-! ## A216579.P2840895335076209494

`and(A188134(A045326(n+2)), A317641(n+1))/4`
-/

namespace A216579.P2840895335076209494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A188134 (A045326 (n + 2)).toNat) (A317641 (n + 1)) : ℚ) / 4

end

end A216579.P2840895335076209494

/-! ## A216579.P13719688688070116090

`A109925(A317641(n+1)!)`
-/

namespace A216579.P13719688688070116090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (Nat.factorial (A317641 (n + 1)).toNat)

end

end A216579.P13719688688070116090

/-!
# A216580: Numbers which can be written in the form x^2 + 10*y^2, where x > 0 and y > 0.

The programs for A216580, there is no canonical definition to state claims against.
-/

/-! ## A216580.P9059247254760407478

`lt[2, A317641(n)]`
-/

namespace A216580.P9059247254760407478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A216580.P9059247254760407478

/-! ## A216580.P10393917036082613029

`lt[2, A317642(2*n)]`
-/

namespace A216580.P10393917036082613029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317642 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A216580.P10393917036082613029

/-! ## A216580.P8543909992988191708

`lt[0, A216579(n+1)]+1`
-/

namespace A216580.P8543909992988191708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216580.P8543909992988191708

/-! ## A216580.P11291385536999308751

`eq[2, A043562(A317641(n)²)]`
-/

namespace A216580.P11291385536999308751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A317641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216580.P11291385536999308751

/-! ## A216580.P4474673376127867949

`eq[1, A326852(A317641(n)+2)]`
-/

namespace A216580.P4474673376127867949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326852 (A317641 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216580.P4474673376127867949

/-! ## A216580.P15523949681596207941

`∩[A020673(n+1), A155501(n+1)]`
-/

namespace A216580.P15523949681596207941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216580.P15523949681596207941

/-! ## A216580.P16291856539236824839

`∩[A020673(n+1), A279622(n+1)]`
-/

namespace A216580.P16291856539236824839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216580.P16291856539236824839

/-! ## A216580.P4553711094753051230

`eq[A175375(n), A175375(A317641(n))]`
-/

namespace A216580.P4553711094753051230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175375 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175375 (A317641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216580.P4553711094753051230

/-! ## A216580.P5495554311991490747

`eq[2, A000010(A000010(A317641(n)+1))]`
-/

namespace A216580.P5495554311991490747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A317641 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216580.P5495554311991490747

/-! ## A216580.P9054241887792485882

`eq[3, A000005(A000005(A317641(n)+2))]`
-/

namespace A216580.P9054241887792485882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A317641 n + 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216580.P9054241887792485882

/-!
# A216581: Number of distinct connected planar figures that can be formed from n 1x2 rectangles (or dominoes) such that each pair of touching rectangles shares exactly one edge, of length 1, and the adjacency graph of the rectangles is a tree.

The programs for A216581, there is no canonical definition to state claims against.
-/

/-! ## A216581.P12631071070860376866

`abs(A194508(A055995(n)))`
-/

namespace A216581.P12631071070860376866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194508 (A055995 n).toNat|

end

end A216581.P12631071070860376866

/-!
# A216583: Number of unit-conjoined polydominoes of order n.

The programs for A216583, there is no canonical definition to state claims against.
-/

/-! ## A216583.P6567264466862175333

`A228088((n-1)!+n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A216583.P6567264466862175333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A228088 ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * a (n - 1)).toNat

end

end A216583.P6567264466862175333

/-! ## A216583.P4326854272034857320

`A072451(A072371(n))`
-/

namespace A216583.P4326854272034857320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (A072371 n).toNat

end

end A216583.P4326854272034857320

/-!
# A216584: a(n) = A002426(n)*A000984(n); product of central trinomial coefficients and central binomial coefficients.

The programs for A216584, the canonical program `A216584.P10493900783905801092` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216584 has offset 0).

The definition of A216584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216584.P10493900783905801092

`A002426(n)*A000984(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A216584

/-- `A002426(n)*A000984(n)` -/
def P10493900783905801092.Spec : Prop :=
  ∀ n, P10493900783905801092.a n = A216584 n

theorem P10493900783905801092.correct : P10493900783905801092.Spec := by
  intro n
  simp only [A216584]

end A216584

/-! ## A216584.P16080745276071124213

`A002426(n)*A117852(∑[n])`
-/

namespace A216584.P16080745276071124213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A117852 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216584.P16080745276071124213

namespace A216584

/-- `A002426(n)*A117852(∑[n])` -/
def P16080745276071124213.Spec : Prop :=
  ∀ n, P16080745276071124213.a n = A216584 n

end A216584

/-! ## A216584.P17681689503897119858

`A000984(n)*A171128(∑[n])`
-/

namespace A216584.P17681689503897119858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A171128 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216584.P17681689503897119858

namespace A216584

/-- `A000984(n)*A171128(∑[n])` -/
def P17681689503897119858.Spec : Prop :=
  ∀ n, P17681689503897119858.a n = A216584 n

end A216584

/-! ## A216584.P16403517282604656134

`A000984(n)*A220178(∑[n])`
-/

namespace A216584.P16403517282604656134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A220178 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216584.P16403517282604656134

namespace A216584

/-- `A000984(n)*A220178(∑[n])` -/
def P16403517282604656134.Spec : Prop :=
  ∀ n, P16403517282604656134.a n = A216584 n

end A216584

/-! ## A216584.P17993252789547939126

`record[A081668(n)]*A002426(n)`
-/

namespace A216584.P17993252789547939126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002426 n

end

end A216584.P17993252789547939126

namespace A216584

/-- `record[A081668(n)]*A002426(n)` -/
def P17993252789547939126.Spec : Prop :=
  ∀ n, P17993252789547939126.a n = A216584 n

end A216584

/-! ## A216584.P12191636468019327118

`record[A005213(n)*A081668(n)]`
-/

namespace A216584.P12191636468019327118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 n * A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216584.P12191636468019327118

namespace A216584

/-- `record[A005213(n)*A081668(n)]` -/
def P12191636468019327118.Spec : Prop :=
  ∀ n, P12191636468019327118.a n = A216584 n

end A216584

/-! ## A216584.P4844963795484451362

`record[A115255(n)]*A002426(n)`
-/

namespace A216584.P4844963795484451362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002426 n

end

end A216584.P4844963795484451362

namespace A216584

/-- `record[A115255(n)]*A002426(n)` -/
def P4844963795484451362.Spec : Prop :=
  ∀ n, P4844963795484451362.a n = A216584 n

end A216584

/-! ## A216584.P10153356132195476666

`record[A126869(n)]*A002426(n)`
-/

namespace A216584.P10153356132195476666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002426 n

end

end A216584.P10153356132195476666

namespace A216584

/-- `record[A126869(n)]*A002426(n)` -/
def P10153356132195476666.Spec : Prop :=
  ∀ n, P10153356132195476666.a n = A216584 n

end A216584

/-! ## A216584.P18129706476104289796

`A000108(n)*A109188(n+1)`
-/

namespace A216584.P18129706476104289796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A109188 (n + 1)

end

end A216584.P18129706476104289796

namespace A216584

/-- `A000108(n)*A109188(n+1)` -/
def P18129706476104289796.Spec : Prop :=
  ∀ n, P18129706476104289796.a n = A216584 n

end A216584

/-! ## A216584.P956779516180889138

`A001405(2*n)*A002426(n)`
-/

namespace A216584.P956779516180889138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A002426 n

end

end A216584.P956779516180889138

namespace A216584

/-- `A001405(2*n)*A002426(n)` -/
def P956779516180889138.Spec : Prop :=
  ∀ n, P956779516180889138.a n = A216584 n

end A216584

/-!
# A216585: G.f.: exp( Sum_{n>=1} A000984(n)*A002426(n)*x^n/n ), where A000984 is the central binomial coefficients and A002426 is the central trinomial coefficients.

The programs for A216585, there is no canonical definition to state claims against.
-/

/-! ## A216585.P14247734710014029549

`A038572(A026158(n))+A006128(n)`
-/

namespace A216585.P14247734710014029549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A026158 n).toNat + A006128 n

end

end A216585.P14247734710014029549

/-!
# A216586: G.f.: exp( Sum_{n>=1} A002426(n)/2 * A002426(n) * x^n/n ), where A002426 is the central binomial coefficients and A002426 is the central trinomial coefficients.

The programs for A216586, there is no canonical definition to state claims against.
-/

/-! ## A216586.P16003965012885397513

`A097992(A338678(n)+A069008(n))`
-/

namespace A216586.P16003965012885397513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A338678 n + A069008 n).toNat

end

end A216586.P16003965012885397513

/-! ## A216586.P2781447427199669568

`A103221(A338678(n)+A069008(n))`
-/

namespace A216586.P2781447427199669568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A338678 n + A069008 n).toNat

end

end A216586.P2781447427199669568

/-!
# A216588: Number of Hamiltonian cycles in C_4 X C_n.

The programs for A216588, there is no canonical definition to state claims against.
-/

/-! ## A216588.P16689051602595859499

`A270273(A055998(n+4))`
-/

namespace A216588.P16689051602595859499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 (A055998 (n + 4)).toNat

end

end A216588.P16689051602595859499

/-! ## A216588.P15518083928476297136

`A270273(A052905(n+3)+2)`
-/

namespace A216588.P15518083928476297136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 (A052905 (n + 3) + 2).toNat

end

end A216588.P15518083928476297136

/-! ## A216588.P2107840210916297811

`A270273(A000124(n+5)+3)`
-/

namespace A216588.P2107840210916297811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 (A000124 (n + 5) + 3).toNat

end

end A216588.P2107840210916297811

/-! ## A216588.P14641041118011166754

`A270273(eq[6, A004736(n+1)]+3)`
-/

namespace A216588.P14641041118011166754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A216588.P14641041118011166754

/-! ## A216588.P3385109328075141114

`A270273(A046691(comp[20*n]+3)+1)`
-/

namespace A216588.P3385109328075141114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 (A046691 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3) + 1).toNat

end

end A216588.P3385109328075141114

/-!
# A216589: Numbers n which don't have a preimage for A216556, i.e., such that A216587(n)=-1.

The programs for A216589, there is no canonical definition to state claims against.
-/

/-! ## A216589.P15621065811108986385

`comp[A216556(n)]`
-/

namespace A216589.P15621065811108986385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A216589.P15621065811108986385

/-! ## A216589.P14635218501356994947

`comp[A053392(A051022(n)+10)]`
-/

namespace A216589.P14635218501356994947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A051022 n + 10).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A216589.P14635218501356994947

/-! ## A216589.P9760377408745417718

`A352464(n+10)%A110804(n+1)`
-/

namespace A216589.P9760377408745417718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352464 (n + 10)) (A110804 (n + 1))

end

end A216589.P9760377408745417718

/-! ## A216589.P2204995598419698422

`9*A214949(n)+n-A057428(∑{e}[2^n, A161561(#)])`
-/

namespace A216589.P2204995598419698422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A214949 n + (n : ℤ) - A057428 (∑ p ∈ Nat.primeFactors (f1 n), A161561 (Nat.factorization (f1 n) p)).toNat

end

end A216589.P2204995598419698422

/-! ## A216589.P17339626547816831149

`eq[2*n, n*A112348(n)]`
-/

namespace A216589.P17339626547816831149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112348 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216589.P17339626547816831149

/-!
# A216590: Primes p with property that there exists a number d>0 such that numbers p-k*d, k=1...7, are seven primes.

The programs for A216590, there is no canonical definition to state claims against.
-/

/-! ## A216590.P17061905591903468837

`∩[A216468(n+1), A216468(A226808(n+3))]`
-/

namespace A216590.P17061905591903468837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216468 (A226808 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216590.P17061905591903468837

/-!
# A216595: Number of distinct connected planar figures that can be formed from 1 X 2 rectangles (or dominoes) such that each pair of touching rectangles shares exactly one edge, of length 1.

The programs for A216595, there is no canonical definition to state claims against.
-/

/-! ## A216595.P13761921325718124351

`∑[A178503(A187735(n))]`
-/

namespace A216595.P13761921325718124351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (A187735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216595.P13761921325718124351

/-!
# A216596: 

The programs for A216596, there is no canonical definition to state claims against.
-/

/-! ## A216596.P4512311880879001243

`floor(10^n!/9)`
-/

namespace A216596.P4512311880879001243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ Nat.factorial n : ℚ) / 9⌋

end

end A216596.P4512311880879001243

/-!
# A216597: a(n) = 13*a(n-1) - 65*a(n-2) + 156*a(n-3) - 182*a(n-4) + 91*a(n-5) - 13*a(n-6), with initial terms 0, -1, -5, -22, -91, -364.

The programs for A216597, there is no canonical definition to state claims against.
-/

/-! ## A216597.P12108758967220209507

`-A059995(A037667(n+1))`
-/

namespace A216597.P12108758967220209507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A059995 (A037667 (n + 1)).toNat

end

end A216597.P12108758967220209507

/-! ## A216597.P13396404071929399191

`-A059995(A353095(n+1))`
-/

namespace A216597.P13396404071929399191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A059995 (A353095 (n + 1)).toNat

end

end A216597.P13396404071929399191

/-!
# A216598: Number of distinct connected planar figures that can be formed from n 1 X 2 rectangles (or dominoes).

The programs for A216598, there is no canonical definition to state claims against.
-/

/-! ## A216598.P5229283565966705928

`A008624(or(4, A085364(n)))`
-/

namespace A216598.P5229283565966705928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 4 (A085364 n)).toNat

end

end A216598.P5229283565966705928

/-!
# A216599: Number of ways to write n as a product with all factors <= n/3.

The programs for A216599, there is no canonical definition to state claims against.
-/

/-! ## A216599.P5347909124203749182

`Δ[A096276(n)-A133223(n+1)]`
-/

namespace A216599.P5347909124203749182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n - A133223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216599.P5347909124203749182

/-! ## A216599.P11432010199656810961

`A001055(n+1)+A266591(n)-2`
-/

namespace A216599.P11432010199656810961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) + (A266591 n - 2)

end

end A216599.P11432010199656810961

/-! ## A216599.P7473570860069081553

`abs(char[A186422(2*n+3)]+1-A001055(n+1))`
-/

namespace A216599.P7473570860069081553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186422 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) - A001055 (n + 1)|

end

end A216599.P7473570860069081553

/-! ## A216599.P817269143965215170

`A001055(n+1)-A040001(A019427(n))`
-/

namespace A216599.P817269143965215170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A040001 (A019427 n).toNat

end

end A216599.P817269143965215170

/-! ## A216599.P8460737537107260859

`A001055(n+1)-A036453(A093178(n))`
-/

namespace A216599.P8460737537107260859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A036453 (A093178 n).toNat

end

end A216599.P8460737537107260859

/-! ## A216599.P19742917766764838

`A001055(n+1)-A156199(A006257(n))`
-/

namespace A216599.P19742917766764838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A156199 (A006257 n).toNat

end

end A216599.P19742917766764838

/-! ## A216599.P15576850560563848268

`A001055(n+1)-A040001(A051953(n+1))`
-/

namespace A216599.P15576850560563848268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A040001 (A051953 (n + 1)).toNat

end

end A216599.P15576850560563848268

/-! ## A216599.P6155953391703802708

`A028422(n+1)-A028422(A135682(n+1))`
-/

namespace A216599.P6155953391703802708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) - A028422 (A135682 (n + 1)).toNat

end

end A216599.P6155953391703802708

/-! ## A216599.P2619357520142850445

`A001055(n+1)-gcd(A000034(n), A060594(n+1))`
-/

namespace A216599.P2619357520142850445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - (Int.gcd (A000034 n) (A060594 (n + 1)) : ℤ)

end

end A216599.P2619357520142850445

/-! ## A216599.P17818382409258190292

`A001055(n+1)-A040001((1-n)²)`
-/

namespace A216599.P17818382409258190292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A040001 ((1 - (n : ℤ)) ^ 2).toNat

end

end A216599.P17818382409258190292

/-! ## A216599.P16828420006060999370

`A216600(A319525(n+1))`
-/

namespace A216599.P16828420006060999370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216600 (A319525 (n + 1)).toNat

end

end A216599.P16828420006060999370

/-! ## A216599.P16298688948092481375

`A001055(n+1)-A091090(n²)`
-/

namespace A216599.P16298688948092481375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A091090 (n ^ 2)

end

end A216599.P16298688948092481375

