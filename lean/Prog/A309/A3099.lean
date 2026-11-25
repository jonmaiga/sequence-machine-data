import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A309900: Approximation of the 3-adic integer exp(3) up to 3^n.

The programs for A309900, there is no canonical definition to state claims against.
-/

/-! ## A309900.P8702163942098364181

`958%A028310(A000244(n))`
-/

namespace A309900.P8702163942098364181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 958 (A028310 (A000244 n).toNat)

end

end A309900.P8702163942098364181

/-! ## A309900.P18008026445156454784

`A056107(∑[(n+1)*3^n])%(3^n)`
-/

namespace A309900.P18008026445156454784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056107 (∑ j ∈ Finset.range (n + 1), f1 j)) (3 ^ n : ℤ)

end

end A309900.P18008026445156454784

/-! ## A309900.P1339119561134488573

`A286158(A243955(n+1))%(3^n)`
-/

namespace A309900.P1339119561134488573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286158 (A243955 (n + 1)).toNat) (3 ^ n : ℤ)

end

end A309900.P1339119561134488573

/-!
# A309901: Approximation of the 3-adic integer exp(-3) up to 3^n.

The programs for A309901, there is no canonical definition to state claims against.
-/

/-! ## A309901.P10380899929080467261

`A106775(A066636(n+1))%sqrt(3^∑{e}[4^n, #])`
-/

namespace A309901.P10380899929080467261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106775 (A066636 (n + 1)).toNat) (SequenceMachineLib.roundAway (Real.sqrt (3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℝ)))

end

end A309901.P10380899929080467261

/-! ## A309901.P15650424023144982588

`A044303(A135922(n))%A000244(n)`
-/

namespace A309901.P15650424023144982588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044303 (A135922 n).toNat) (A000244 n)

end

end A309901.P15650424023144982588

/-! ## A309901.P8503322285614118467

`A044303(A266976(n))%A000244(n)`
-/

namespace A309901.P8503322285614118467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044303 (A266976 n).toNat) (A000244 n)

end

end A309901.P8503322285614118467

/-!
# A309902: Approximation of the 5-adic integer exp(5) up to 5^n.

The programs for A309902, there is no canonical definition to state claims against.
-/

/-! ## A309902.P13039136734233981248

`A210370(A065033(5^n))%(5^n)`
-/

namespace A309902.P13039136734233981248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210370 (A065033 (5 ^ n)).toNat) (5 ^ n : ℤ)

end

end A309902.P13039136734233981248

/-! ## A309902.P6765620478785817737

`A136061(A223748(∏[2-n²%3]-1))%(5^n)`
-/

namespace A309902.P6765620478785817737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136061 (A223748 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat).toNat) (5 ^ n : ℤ)

end

end A309902.P6765620478785817737

/-!
# A309903: Approximation of the 5-adic integer exp(-5) up to 5^n.

The programs for A309903, there is no canonical definition to state claims against.
-/

/-! ## A309903.P15517146451014418796

`record[A050300(n+1)%A292884(n+1)]`
-/

namespace A309903.P15517146451014418796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050300 (n + 1)) (A292884 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309903.P15517146451014418796

/-!
# A309904: Approximation of the 7-adic integer exp(7) up to 7^n.

The programs for A309904, there is no canonical definition to state claims against.
-/

/-! ## A309904.P14076178902344080837

`A006501(7^n)%(7^n)`
-/

namespace A309904.P14076178902344080837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006501 (7 ^ n)) (7 ^ n : ℤ)

end

end A309904.P14076178902344080837

/-!
# A309906: a(n) is the smallest number of divisors of p^n - 1 that may possibly occur for arbitrarily large primes p.

The programs for A309906, there is no canonical definition to state claims against.
-/

/-! ## A309906.P1894396619805584278

`A000005(A079612(n+1))*2^A000005(n+1)`
-/

namespace A309906.P1894396619805584278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A079612 (n + 1)).toNat : ℚ) * (2 : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A309906.P1894396619805584278

/-! ## A309906.P19463115651516535

`A000005(A079612(n+1))*A338506(n+1)`
-/

namespace A309906.P19463115651516535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079612 (n + 1)).toNat * A338506 (n + 1)

end

end A309906.P19463115651516535

/-! ## A309906.P11191724378107929750

`A000005(A040000(n)*A075180(n))*A338506(n+1)`
-/

namespace A309906.P11191724378107929750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A040000 n * A075180 n).toNat * A338506 (n + 1)

end

end A309906.P11191724378107929750

/-! ## A309906.P12053982562454351613

`A000005(A036453(n+1)*A075180(n))*A338506(n+1)`
-/

namespace A309906.P12053982562454351613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036453 (n + 1) * A075180 n).toNat * A338506 (n + 1)

end

end A309906.P12053982562454351613

/-! ## A309906.P10999032626306360328

`A000005(A000034(n)*A185633(n+1))*A338506(n+1)`
-/

namespace A309906.P10999032626306360328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000034 n * A185633 (n + 1)).toNat * A338506 (n + 1)

end

end A309906.P10999032626306360328

/-!
# A309907: a(n) is the square of the number consisting of one 1 and n 3's: (133...3)^2.

The programs for A309907, the canonical program `A309907.P13166570784609991471` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309907 has offset 0).

The definition of A309907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309907.P13166570784609991471

`((4*10^n-1)/3)²`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309907

/-- `((4*10^n-1)/3)²` -/
def P13166570784609991471.Spec : Prop :=
  ∀ n, P13166570784609991471.a n = (A309907 n : ℚ)

end A309907

/-! ## A309907.P13998147123482424119

`∑[10*a(n-1)]²` with `a(0)=1, a(1)=12`
-/

namespace A309907.P13998147123482424119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A309907.P13998147123482424119

namespace A309907

/-- `∑[10*a(n-1)]²` -/
def P13998147123482424119.Spec : Prop :=
  ∀ n, (P13998147123482424119.a n : ℤ) = A309907 n

end A309907

/-! ## A309907.P4286895544789976919

`A097166(n)^2`
-/

namespace A309907.P4286895544789976919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n ^ 2

end

end A309907.P4286895544789976919

namespace A309907

/-- `A097166(n)^2` -/
def P4286895544789976919.Spec : Prop :=
  ∀ n, P4286895544789976919.a n = A309907 n

end A309907

/-! ## A309907.P17841447349511866464

`A198970(n)²/9`
-/

namespace A309907.P17841447349511866464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198970 n ^ 2 : ℚ) / 9

end

end A309907.P17841447349511866464

namespace A309907

/-- `A198970(n)²/9` -/
def P17841447349511866464.Spec : Prop :=
  ∀ n, P17841447349511866464.a n = (A309907 n : ℚ)

end A309907

/-! ## A309907.P7030246048078422609

`(A086575(n)+3)²/9`
-/

namespace A309907.P7030246048078422609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A086575 n + 3) ^ 2 : ℚ) / 9

end

end A309907.P7030246048078422609

namespace A309907

/-- `(A086575(n)+3)²/9` -/
def P7030246048078422609.Spec : Prop :=
  ∀ n, P7030246048078422609.a n = (A309907 n : ℚ)

end A309907

/-! ## A309907.P17413435875823055139

`or(1, A073556(n+1)²)`
-/

namespace A309907.P17413435875823055139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073556 (n + 1) ^ 2)

end

end A309907.P17413435875823055139

namespace A309907

/-- `or(1, A073556(n+1)²)` -/
def P17413435875823055139.Spec : Prop :=
  ∀ n, P17413435875823055139.a n = A309907 n

end A309907

/-! ## A309907.P4861987612761984019

`A097169(2*n)*A097169(2*n)`
-/

namespace A309907.P4861987612761984019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097169 (2 * n) * A097169 (2 * n)

end

end A309907.P4861987612761984019

namespace A309907

/-- `A097169(2*n)*A097169(2*n)` -/
def P4861987612761984019.Spec : Prop :=
  ∀ n, P4861987612761984019.a n = A309907 n

end A309907

/-!
# A309910: a(n) = Sum_{k=1..n} (-1)^(n-k) * Stirling1(n,k) * floor(n/k).

The programs for A309910, there is no canonical definition to state claims against.
-/

/-! ## A309910.P5610596700056245077

`A302597(A161707(n))`
-/

namespace A309910.P5610596700056245077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302597 (A161707 n).toNat

end

end A309910.P5610596700056245077

/-!
# A309911: a(n) = Sum_{k=1..n} Stirling2(n,k) * floor(n/k).

The programs for A309911, there is no canonical definition to state claims against.
-/

/-! ## A309911.P8613871173621973884

`A007306(A351772(n))+∑[n]`
-/

namespace A309911.P8613871173621973884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A351772 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309911.P8613871173621973884

/-! ## A309911.P2635155586027225066

`A219642(A014260(3*n+1)-A052517(n))`
-/

namespace A309911.P2635155586027225066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A014260 (3 * n + 1) - A052517 n).toNat

end

end A309911.P2635155586027225066

/-!
# A309912: a(n) = Product_{p prime, p <= n} floor(n/p).

The programs for A309912, there is no canonical definition to state claims against.
-/

/-! ## A309912.P552712162691903711

`∏{p}[A300951(n), floor(n/#)]`
-/

namespace A309912.P552712162691903711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A309912.P552712162691903711

/-! ## A309912.P258600464925823053

`∏{p}[floor(n/2)!, floor(n/#)]`
-/

namespace A309912.P258600464925823053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊(n : ℚ) / (p : ℚ)⌋

end

end A309912.P258600464925823053

/-! ## A309912.P9690026548350500818

`∏{p}[A081123(n), floor(n/#)]`
-/

namespace A309912.P9690026548350500818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A309912.P9690026548350500818

/-! ## A309912.P7534458580620266820

`∏{p}[A000142(floor(n/2)), floor(n/#)]`
-/

namespace A309912.P7534458580620266820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A309912.P7534458580620266820

/-! ## A309912.P14911270120312292044

`∏{p}[A034386(n), floor(n/#)]`
-/

namespace A309912.P14911270120312292044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋

end

end A309912.P14911270120312292044

/-!
# A309913: Distance from n to closest squarefree number that is different from n.

The programs for A309913, there is no canonical definition to state claims against.
-/

/-! ## A309913.P15400836853450238315

`A118914(or(2, A372821(n+1)))`
-/

namespace A309913.P15400836853450238315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (Int.lor 2 (A372821 (n + 1))).toNat

end

end A309913.P15400836853450238315

/-! ## A309913.P673508167633485692

`A223074(n+1)%A048821(n)+1`
-/

namespace A309913.P673508167633485692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223074 (n + 1)) (A048821 n) + 1

end

end A309913.P673508167633485692

/-! ## A309913.P14802400591057482149

`gcd(A037291(n+1), A247888(n+1))`
-/

namespace A309913.P14802400591057482149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037291 (n + 1)) (A247888 (n + 1))

end

end A309913.P14802400591057482149

/-! ## A309913.P1494413014414354590

`gcd(∏{e}[n+1, #], A325757(A007318(n)))`
-/

namespace A309913.P1494413014414354590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A325757 (A007318 n).toNat)

end

end A309913.P1494413014414354590

/-! ## A309913.P16690666336218818777

`A033630(gcd(A068634(n+1), A333218(n+1)))`
-/

namespace A309913.P16690666336218818777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (Int.gcd (A068634 (n + 1)) (A333218 (n + 1)))

end

end A309913.P16690666336218818777

/-!
# A309914: Distance from n to closest triangular number that is different from n.

The programs for A309914, the canonical program `A309914.P9100679592567550452` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309914 has offset 0).

The definition of A309914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309914.P9100679592567550452

`gcd(A053616(n), A158821(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A309914

/-- `gcd(A053616(n), A158821(n))` -/
def P9100679592567550452.Spec : Prop :=
  ∀ n, (P9100679592567550452.a n : ℤ) = A309914 n

theorem P9100679592567550452.correct : P9100679592567550452.Spec := by
  intro n
  simp only [A309914]

end A309914

/-! ## A309914.P45574679037504835

`or(A053616(char[1]+n), A158821(n))`
-/

namespace A309914.P45574679037504835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053616 ((if ∃ j, f1 j = n then 1 else 0) + n)) (A158821 n)

end

end A309914.P45574679037504835

namespace A309914

/-- `or(A053616(char[1]+n), A158821(n))` -/
def P45574679037504835.Spec : Prop :=
  ∀ n, P45574679037504835.a n = A309914 n

end A309914

/-! ## A309914.P5824479902368840978

`or(val(A094615(n)+1, 6), A158821(n))`
-/

namespace A309914.P5824479902368840978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (A094615 n + 1).toNat 6 : ℤ) (A158821 n)

end

end A309914.P5824479902368840978

namespace A309914

/-- `or(val(A094615(n)+1, 6), A158821(n))` -/
def P5824479902368840978.Spec : Prop :=
  ∀ n, P5824479902368840978.a n = A309914 n

end A309914

/-! ## A309914.P2298516005572826111

`or(val(2*A036561(n), 6), A158821(n))`
-/

namespace A309914.P2298516005572826111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (2 * A036561 n).toNat 6 : ℤ) (A158821 n)

end

end A309914.P2298516005572826111

namespace A309914

/-- `or(val(2*A036561(n), 6), A158821(n))` -/
def P2298516005572826111.Spec : Prop :=
  ∀ n, P2298516005572826111.a n = A309914 n

end A309914

/-! ## A309914.P16869446899825092827

`or(floor(A274773(n+1)/2), A158821(n))`
-/

namespace A309914.P16869446899825092827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(A274773 (n + 1) : ℚ) / 2⌋ (A158821 n)

end

end A309914.P16869446899825092827

namespace A309914

/-- `or(floor(A274773(n+1)/2), A158821(n))` -/
def P16869446899825092827.Spec : Prop :=
  ∀ n, P16869446899825092827.a n = A309914 n

end A309914

/-! ## A309914.P11568671062266393644

`A193739(A057944(n)-A053616(n))`
-/

namespace A309914.P11568671062266393644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A057944 n - A053616 n).toNat

end

end A309914.P11568671062266393644

namespace A309914

/-- `A193739(A057944(n)-A053616(n))` -/
def P11568671062266393644.Spec : Prop :=
  ∀ n, P11568671062266393644.a n = A309914 n

end A309914

/-! ## A309914.P3660601353314810206

`or(A053616(n), A145677(A061579(n)))`
-/

namespace A309914.P3660601353314810206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053616 n) (A145677 (A061579 n).toNat)

end

end A309914.P3660601353314810206

namespace A309914

/-- `or(A053616(n), A145677(A061579(n)))` -/
def P3660601353314810206.Spec : Prop :=
  ∀ n, P3660601353314810206.a n = A309914 n

end A309914

/-! ## A309914.P7067527350491538927

`A028310(xor(A053616(n), A158821(n)))`
-/

namespace A309914.P7067527350491538927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A053616 n) (A158821 n)).toNat

end

end A309914.P7067527350491538927

namespace A309914

/-- `A028310(xor(A053616(n), A158821(n)))` -/
def P7067527350491538927.Spec : Prop :=
  ∀ n, P7067527350491538927.a n = A309914 n

end A309914

/-! ## A309914.P5254976532047680185

`or(A004197(A007401(n+1)), A158821(n))`
-/

namespace A309914.P5254976532047680185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004197 (A007401 (n + 1)).toNat) (A158821 n)

end

end A309914.P5254976532047680185

namespace A309914

/-- `or(A004197(A007401(n+1)), A158821(n))` -/
def P5254976532047680185.Spec : Prop :=
  ∀ n, P5254976532047680185.a n = A309914 n

end A309914

/-! ## A309914.P6196012698635061237

`A053616(n)+A010054(n)*A134478(n)`
-/

namespace A309914.P6196012698635061237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n + A010054 n * A134478 n

end

end A309914.P6196012698635061237

namespace A309914

/-- `A053616(n)+A010054(n)*A134478(n)` -/
def P6196012698635061237.Spec : Prop :=
  ∀ n, P6196012698635061237.a n = A309914 n

end A309914

/-! ## A309914.P15890560796250318029

`or(A103451(n)*A158821(n), A053616(n))`
-/

namespace A309914.P15890560796250318029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103451 n * A158821 n) (A053616 n)

end

end A309914.P15890560796250318029

namespace A309914

/-- `or(A103451(n)*A158821(n), A053616(n))` -/
def P15890560796250318029.Spec : Prop :=
  ∀ n, P15890560796250318029.a n = A309914 n

end A309914

/-! ## A309914.P10823592723454550648

`or(A158821(n)^A069322(n), A053616(n))`
-/

namespace A309914.P10823592723454550648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A158821 n : ℚ) ^ (A069322 n : ℤ))) (A053616 n)

end

end A309914.P10823592723454550648

namespace A309914

/-- `or(A158821(n)^A069322(n), A053616(n))` -/
def P10823592723454550648.Spec : Prop :=
  ∀ n, P10823592723454550648.a n = A309914 n

end A309914

/-!
# A309915: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of n and m runs through the set of least numbers whose prime signature is a partition of 2n.

The programs for A309915, there is no canonical definition to state claims against.
-/

/-! ## A309915.P1755354636242325301

`A079025(C(2*n+1, 2)+n)`
-/

namespace A309915.P1755354636242325301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (Nat.choose (2 * n + 1) 2 + n)

end

end A309915.P1755354636242325301

/-! ## A309915.P14971700411816628805

`A079025(∑[4*n])`
-/

namespace A309915.P14971700411816628805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309915.P14971700411816628805

/-! ## A309915.P9990329637620804601

`record[A079025(A240134(1+n))]`
-/

namespace A309915.P9990329637620804601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A240134 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309915.P9990329637620804601

/-! ## A309915.P12147571238017430646

`record[A079025(n*A008619(n))]`
-/

namespace A309915.P12147571238017430646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309915.P12147571238017430646

/-! ## A309915.P1568939884910585650

`record[A079025(n*A028242(n))]`
-/

namespace A309915.P1568939884910585650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309915.P1568939884910585650

/-! ## A309915.P14198042690493168046

`record[A079025((n+1)*(A007494(n+1)-n))]`
-/

namespace A309915.P14198042690493168046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 ((n + 1 : ℤ) * (A007494 (n + 1) - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309915.P14198042690493168046

/-!
# A309916: a(n) = N^(1/4) * log(N) / sqrt(log(log(N))) rounded to nearest integer, with N=2^n. Related to operation count of the deterministic factorization of an integer N using an improved Pollard-Strassen method.

The programs for A309916, there is no canonical definition to state claims against.
-/

/-! ## A309916.P7035373443484928227

`A052335(n+4)`
-/

namespace A309916.P7035373443484928227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052335 (n + 4)

end

end A309916.P7035373443484928227

/-! ## A309916.P6115857166967098670

`A387328(n+4)`
-/

namespace A309916.P6115857166967098670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387328 (n + 4)

end

end A309916.P6115857166967098670

/-! ## A309916.P15964313345246373620

`A003056(A250140(∑[n+1])+3)-1`
-/

namespace A309916.P15964313345246373620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A250140 (∑ j ∈ Finset.range (n + 1), f1 j) + 3).toNat - 1

end

end A309916.P15964313345246373620

/-! ## A309916.P14801222562348499636

`A102352(A100673(n+1))`
-/

namespace A309916.P14801222562348499636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102352 (A100673 (n + 1)).toNat

end

end A309916.P14801222562348499636

/-! ## A309916.P7059255863613892805

`A263846(A399233(n+3))`
-/

namespace A309916.P7059255863613892805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A399233 (n + 3)).toNat

end

end A309916.P7059255863613892805

/-!
# A309917: a(n) = N^(1/4) * log(N) / sqrt(log(log(N))) rounded to nearest integer, with N=10^n. Related to operation count of the deterministic factorization of an integer N using an improved Pollard-Strassen method.

The programs for A309917, there is no canonical definition to state claims against.
-/

/-! ## A309917.P5117226022320255673

`∑[A184416(2^(n+1))]-n`
-/

namespace A309917.P5117226022320255673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A309917.P5117226022320255673

/-! ## A309917.P9242754963151838001

`∑[A000267(Δ[A000346(n)])]`
-/

namespace A309917.P9242754963151838001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309917.P9242754963151838001

/-!
# A309919: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of four and m runs through the set of least numbers whose prime signature is a partition of n.

The programs for A309919, there is no canonical definition to state claims against.
-/

/-! ## A309919.P3315525496366789195

`A079025(∑[n+5]+5)`
-/

namespace A309919.P3315525496366789195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A309919.P3315525496366789195

/-!
# A309920: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of five and m runs through the set of least numbers whose prime signature is a partition of n.

The programs for A309920, there is no canonical definition to state claims against.
-/

/-! ## A309920.P7335153077832130569

`A079025((n+4)²-C(n+2, 2))`
-/

namespace A309920.P7335153077832130569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 ((n + 4) ^ 2 - Nat.choose (n + 2) 2)

end

end A309920.P7335153077832130569

/-!
# A309921: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of six and m runs through the set of least numbers whose prime signature is a partition of n.

The programs for A309921, there is no canonical definition to state claims against.
-/

/-! ## A309921.P13526194382826404234

`A079025(A167499(n+5)+1)`
-/

namespace A309921.P13526194382826404234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A167499 (n + 5) + 1).toNat

end

end A309921.P13526194382826404234

/-!
# A309922: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of seven and m runs through the set of least numbers whose prime signature is a partition of n.

The programs for A309922, there is no canonical definition to state claims against.
-/

/-! ## A309922.P6213294680566708117

`A079025(A155212(n+4))`
-/

namespace A309922.P6213294680566708117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A155212 (n + 4)).toNat

end

end A309922.P6213294680566708117

/-!
# A309923: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of eight and m runs through the set of least numbers whose prime signature is a partition of n.

The programs for A309923, there is no canonical definition to state claims against.
-/

/-! ## A309923.P12396898746363638509

`A079025(A000096(n+7)+9)`
-/

namespace A309923.P12396898746363638509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A000096 (n + 7) + 9).toNat

end

end A309923.P12396898746363638509

/-!
# A309924: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of nine and m runs through the set of least numbers whose prime signature is a partition of n.

The programs for A309924, there is no canonical definition to state claims against.
-/

/-! ## A309924.P6843843809616571089

`A079025(A056000(n+6))`
-/

namespace A309924.P6843843809616571089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A056000 (n + 6)).toNat

end

end A309924.P6843843809616571089

/-!
# A309925: Total number of divisors d of m (counted with multiplicity), such that the prime signature of d is a partition of ten and m runs through the set of least numbers whose prime signature is a partition of n.

The programs for A309925, there is no canonical definition to state claims against.
-/

/-! ## A309925.P18322120268475958676

`A079025(A167487(n+9)+3)`
-/

namespace A309925.P18322120268475958676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (A167487 (n + 9) + 3).toNat

end

end A309925.P18322120268475958676

/-!
# A309931: Triangle read by rows: T(n,k) is the number of compositions of n with k parts and circular differences all equal to 1, 0, or -1.

The programs for A309931, there is no canonical definition to state claims against.
-/

/-! ## A309931.P5295070573225876874

`A048996(∑[A008284(n+1)%A170923(n+1)])`
-/

namespace A309931.P5295070573225876874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008284 (n + 1)) (A170923 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309931.P5295070573225876874

/-! ## A309931.P8890216332287650117

`C(A205387(A205384(n+1)), A048158(n+1))`
-/

namespace A309931.P8890216332287650117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A205387 (A205384 (n + 1)).toNat).toNat (A048158 (n + 1)).toNat

end

end A309931.P8890216332287650117

/-! ## A309931.P4730709567414618244

`lcm(A164306(n+1), A342459(A156953(n)))`
-/

namespace A309931.P4730709567414618244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A164306 (n + 1)) (A342459 (A156953 n).toNat)

end

end A309931.P4730709567414618244

/-! ## A309931.P16079043218626755599

`A164306(n+1)*A164306(A288942(n)!)`
-/

namespace A309931.P16079043218626755599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1) * A164306 (Nat.factorial (A288942 n).toNat)

end

end A309931.P16079043218626755599

/-! ## A309931.P11397919601375861851

`or(A336917(A235648(n+1))², A164306(n+1))`
-/

namespace A309931.P11397919601375861851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A336917 (A235648 (n + 1)).toNat ^ 2) (A164306 (n + 1))

end

end A309931.P11397919601375861851

/-!
# A309934: Primes p such that p+2, (p+1)||p and (p+1)||(p+2) are primes (where || denotes concatenation in base 10).

The programs for A309934, there is no canonical definition to state claims against.
-/

/-! ## A309934.P10799393878883138346

`A235109(1+n)-1`
-/

namespace A309934.P10799393878883138346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235109 (1 + n) - 1

end

end A309934.P10799393878883138346

/-! ## A309934.P3401922210172595574

`-1+A235109(n+1)`
-/

namespace A309934.P3401922210172595574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A235109 (n + 1)

end

end A309934.P3401922210172595574

/-! ## A309934.P10871265784616726774

`A151799(A235109(n+1))`
-/

namespace A309934.P10871265784616726774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A235109 (n + 1)).toNat

end

end A309934.P10871265784616726774

/-! ## A309934.P12421288215287025131

`A078587(A235109(n+1))`
-/

namespace A309934.P12421288215287025131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A235109 (n + 1)).toNat

end

end A309934.P12421288215287025131

/-! ## A309934.P15960925554228717211

`A066182(A235109(n+1))`
-/

namespace A309934.P15960925554228717211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A235109 (n + 1)).toNat

end

end A309934.P15960925554228717211

/-!
# A309935: Primes p such that the base-10 concatenation (p+1)||p is prime.

The programs for A309935, there is no canonical definition to state claims against.
-/

/-! ## A309935.P17453918700478561600

`p?[A054211(n+1)-1]`
-/

namespace A309935.P17453918700478561600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054211 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309935.P17453918700478561600

/-! ## A309935.P2161885468754888988

`p?[A052089(n+1)%A054211(n+1)]`
-/

namespace A309935.P2161885468754888988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052089 (n + 1)) (A054211 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309935.P2161885468754888988

/-! ## A309935.P17457198886377542561

`∩[A049596(n+1), A054211(n+1)-1]`
-/

namespace A309935.P17457198886377542561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054211 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309935.P17457198886377542561

/-! ## A309935.P10426055906869483828

`record[A020639(A054211(n+1)-1)]`
-/

namespace A309935.P10426055906869483828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054211 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309935.P10426055906869483828

/-! ## A309935.P9794631141752831839

`p?[A034809(n+1)-1]`
-/

namespace A309935.P9794631141752831839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309935.P9794631141752831839

/-! ## A309935.P16092751149362493015

`record[A020639(A034809(n+1)-1)]`
-/

namespace A309935.P16092751149362493015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034809 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309935.P16092751149362493015

/-! ## A309935.P16682353953887360611

`∩[A000040(n+1), A034809(n+1)-1]`
-/

namespace A309935.P16682353953887360611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309935.P16682353953887360611

/-! ## A309935.P10078521552321061226

`∩[A006005(n+1), A034809(n+1)-1]`
-/

namespace A309935.P10078521552321061226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309935.P10078521552321061226

/-! ## A309935.P12061010466497163859

`∩[A008578(n+1), A034809(n+1)-1]`
-/

namespace A309935.P12061010466497163859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309935.P12061010466497163859

/-! ## A309935.P5161772339575932172

`∩[A034809(n+1)-1, A065091(n+1)]`
-/

namespace A309935.P5161772339575932172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034809 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309935.P5161772339575932172

/-! ## A309935.P8703575666239218938

`record[A014963(A034809(n+1)-1)]`
-/

namespace A309935.P8703575666239218938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A034809 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309935.P8703575666239218938

/-! ## A309935.P6844852321906362592

`record[A014963(A054211(n+1)-1)]`
-/

namespace A309935.P6844852321906362592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054211 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309935.P6844852321906362592

/-!
# A309936: Irregular triangle read by rows: T(n,k) is the number of unlabeled loopless multigraphs with n edges covering k vertices, n >= 1, 1 <= k <= 2*n.

The programs for A309936, there is no canonical definition to state claims against.
-/

/-! ## A309936.P4027303743174026780

`p?[A336038(n+1)]%A336013(3*n+1)`
-/

namespace A309936.P4027303743174026780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A336013 (3 * n + 1))

end

end A309936.P4027303743174026780

/-! ## A309936.P15880708506719436217

`A267113(A167499(n)*A314151(n))`
-/

namespace A309936.P15880708506719436217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (A167499 n * A314151 n).toNat

end

end A309936.P15880708506719436217

/-! ## A309936.P16552933932571015535

`A231201(n+1)-A123125(A051390(n+1))`
-/

namespace A309936.P16552933932571015535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231201 (n + 1) - A123125 (A051390 (n + 1)).toNat

end

end A309936.P16552933932571015535

/-! ## A309936.P4169092784688919434

`A005047(A325781(n+1))%A000005(n+1)`
-/

namespace A309936.P4169092784688919434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005047 (A325781 (n + 1)).toNat) (A000005 (n + 1))

end

end A309936.P4169092784688919434

/-! ## A309936.P10641289144714896181

`gcd(n, A002958(n+5))%A237270(n+1)`
-/

namespace A309936.P10641289144714896181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (n : ℤ) (A002958 (n + 5)) : ℤ) (A237270 (n + 1))

end

end A309936.P10641289144714896181

/-!
# A309937: Irregular triangle read by rows: T(n,k) is the number of compositions of n with 2k parts and circular differences all equal to 1 or -1, (n >= 3, 1 <= k <= n/3).

The programs for A309937, there is no canonical definition to state claims against.
-/

/-! ## A309937.P12511394641920623852

`and(A088934(n), A195051(A173584(n)))`
-/

namespace A309937.P12511394641920623852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088934 n) (A195051 (A173584 n).toNat)

end

end A309937.P12511394641920623852

/-! ## A309937.P10729423475207096437

`and(A088934(n), A254967(A176642(n)))`
-/

namespace A309937.P10729423475207096437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088934 n) (A254967 (A176642 n).toNat)

end

end A309937.P10729423475207096437

/-! ## A309937.P8680009859155148068

`A008441(A007053(n)+A000124(n+4))`
-/

namespace A309937.P8680009859155148068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A007053 n + A000124 (n + 4)).toNat

end

end A309937.P8680009859155148068

/-! ## A309937.P13475297962482561908

`and(A169865(n+1), A195051(A173584(n)))`
-/

namespace A309937.P13475297962482561908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169865 (n + 1)) (A195051 (A173584 n).toNat)

end

end A309937.P13475297962482561908

/-! ## A309937.P2384866231948475459

`and(A036689(2*n+1), A080748(A300785(n)))`
-/

namespace A309937.P2384866231948475459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036689 (2 * n + 1)) (A080748 (A300785 n).toNat)

end

end A309937.P2384866231948475459

/-!
# A309938: Triangle read by rows: T(n,k) is the number of compositions of n with k parts and differences all equal to 1 or -1.

The programs for A309938, there is no canonical definition to state claims against.
-/

/-! ## A309938.P16688351903690431268

`A160170(A342133(n))%3`
-/

namespace A309938.P16688351903690431268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160170 (A342133 n).toNat) 3

end

end A309938.P16688351903690431268

/-! ## A309938.P4496424375755734292

`A029618(n)%A059832(A008956(n))`
-/

namespace A309938.P4496424375755734292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029618 n) (A059832 (A008956 n).toNat)

end

end A309938.P4496424375755734292

/-! ## A309938.P11663391561292864875

`and(A177702(A000073(n)), A293377(n))`
-/

namespace A309938.P11663391561292864875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177702 (A000073 n).toNat) (A293377 n)

end

end A309938.P11663391561292864875

/-! ## A309938.P17801582926316375684

`A193722(n)%A001221(A340511(3*n+2))`
-/

namespace A309938.P17801582926316375684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193722 n) (A001221 (A340511 (3 * n + 2)).toNat)

end

end A309938.P17801582926316375684

/-! ## A309938.P16506879116738185766

`and(A002260(n+1), A193739(A047920(2*n)))`
-/

namespace A309938.P16506879116738185766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1)) (A193739 (A047920 (2 * n)).toNat)

end

end A309938.P16506879116738185766

/-!
# A309939: Triangle read by rows: T(n,k) is the number of compositions of n with k parts and differences all equal to 1, 0, or -1.

The programs for A309939, there is no canonical definition to state claims against.
-/

/-! ## A309939.P1434040126906264517

`A287417(n)+A079978(A019538(n+1))`
-/

namespace A309939.P1434040126906264517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 n + A079978 (A019538 (n + 1)).toNat

end

end A309939.P1434040126906264517

/-! ## A309939.P366565576867888910

`A068063(A140993(n+1)*A273693(n))-A131531(A019538(n+1))`
-/

namespace A309939.P366565576867888910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A140993 (n + 1) * A273693 n).toNat - A131531 (A019538 (n + 1)).toNat

end

end A309939.P366565576867888910

/-! ## A309939.P12542816893806797182

`A068063(A140993(n+1)*A299038(n))-A131531(A019538(n+1))`
-/

namespace A309939.P12542816893806797182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A140993 (n + 1) * A299038 n).toNat - A131531 (A019538 (n + 1)).toNat

end

end A309939.P12542816893806797182

/-! ## A309939.P9749612037640324742

`C(A002262(n+1), A071178(A105278(n+1)))`
-/

namespace A309939.P9749612037640324742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (n + 1)).toNat (A071178 (A105278 (n + 1)).toNat).toNat

end

end A309939.P9749612037640324742

/-! ## A309939.P7329644241779048071

`A332671(A124739(n+1))+A309931(n+1)`
-/

namespace A309939.P7329644241779048071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A124739 (n + 1)).toNat + A309931 (n + 1)

end

end A309939.P7329644241779048071

/-!
# A309942: Numbers k such that 2^k - 1 and 2^k + 1 have the same number of prime factors, counted with multiplicity.

The programs for A309942, there is no canonical definition to state claims against.
-/

/-! ## A309942.P15625753592502558879

`eq[A046051(n+1), A054992(n+1)]+1`
-/

namespace A309942.P15625753592502558879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309942.P15625753592502558879

/-! ## A309942.P6345369209977977563

`A020725(eq[A046051(n+1), A054992(n+1)])`
-/

namespace A309942.P6345369209977977563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309942.P6345369209977977563

/-! ## A309942.P13394511413697527485

`eq[A046051(n+1), A277892(2*A000040(n+2))]+1`
-/

namespace A309942.P13394511413697527485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (2 * A000040 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309942.P13394511413697527485

/-! ## A309942.P4575251950813505123

`eq[A057957(n+1)-A046051(n+1), A046051(n+1)]+1`
-/

namespace A309942.P4575251950813505123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (n + 1) - A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309942.P4575251950813505123

/-!
# A309944: Numbers m such that if m = p_1^e_1 * ... * p_k^e_k, where p_1 < ... < p_k are primes, then for all i < k, p_i = A000720(p_{i+1}).

The programs for A309944, there is no canonical definition to state claims against.
-/

/-! ## A309944.P10415244179769684281

`A212308(n+2)`
-/

namespace A309944.P10415244179769684281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212308 (n + 2)

end

end A309944.P10415244179769684281

/-! ## A309944.P17571180677318396927

`A104210(∑[A288387(n)!])`
-/

namespace A309944.P17571180677318396927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A288387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309944.P17571180677318396927

/-! ## A309944.P8285549732645749934

`∩[A066312(n+1), A171519(n+1)]`
-/

namespace A309944.P8285549732645749934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309944.P8285549732645749934

/-! ## A309944.P15285971640489359977

`∩[A171519(n+1), A356736(n+1)]`
-/

namespace A309944.P15285971640489359977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309944.P15285971640489359977

/-!
# A309945: a(n) = floor(n - sqrt(2*n-1)).

The programs for A309945, the canonical program `A309945.P16785317945470448647` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309945 has offset 1).

The definition of A309945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n+1-sqrt(2*(n+1)-1))` (program `A309945.P16785317945470448647`, by `A309945.P16785317945470448647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309945.P14596485102733674439

`n-floor(sqrt(2*(n+1)-2))`
-/

namespace A309945.P14596485102733674439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.sqrt ((2 * (n + 1) : ℤ) - 2)

end

end A309945.P14596485102733674439

namespace A309945

/-- `n-floor(sqrt(2*(n+1)-2))` -/
def P14596485102733674439.Spec : Prop :=
  ∀ n, P14596485102733674439.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P16785317945470448647

`floor(n+1-sqrt(2*(n+1)-1))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309945

/-- `floor(n+1-sqrt(2*(n+1)-1))` -/
def P16785317945470448647.Spec : Prop :=
  ∀ n, P16785317945470448647.a n = A309945 (n + 1)

theorem P16785317945470448647.correct : P16785317945470448647.Spec := by
  intro n
  simp only [A309945, Nat.add_sub_cancel]

end A309945

/-! ## A309945.P6654362235570761799

`n-row(n+col(n))`
-/

namespace A309945.P6654362235570761799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.triRow (n + SequenceMachineLib.triCol n) : ℤ)

end

end A309945.P6654362235570761799

namespace A309945

/-- `n-row(n+col(n))` -/
def P6654362235570761799.Spec : Prop :=
  ∀ n, P6654362235570761799.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P17970792775474967954

`n-∑[char[∑[or(1, n)]]]`
-/

namespace A309945.P17970792775474967954
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309945.P17970792775474967954

namespace A309945

/-- `n-∑[char[∑[or(1, n)]]]` -/
def P17970792775474967954.Spec : Prop :=
  ∀ n, P17970792775474967954.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P4929460893833094161

`fp[fp[n-sqrt(2*n)]]`
-/

namespace A309945.P4929460893833094161
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (2 * n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A309945.P4929460893833094161

namespace A309945

/-- `fp[fp[n-sqrt(2*n)]]` -/
def P4929460893833094161.Spec : Prop :=
  ∀ n, (P4929460893833094161.a n : ℤ) = A309945 (n + 1)

end A309945

/-! ## A309945.P18060232259555457861

`∑[xor(1, char[ceil(n²/2)])]`
-/

namespace A309945.P18060232259555457861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309945.P18060232259555457861

namespace A309945

/-- `∑[xor(1, char[ceil(n²/2)])]` -/
def P18060232259555457861.Spec : Prop :=
  ∀ n, (P18060232259555457861.a n : ℤ) = A309945 (n + 1)

end A309945

/-! ## A309945.P13604676154184028297

`fp[comp[fp[sqrt(2*n+1)]]]`
-/

namespace A309945.P13604676154184028297
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n + 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f3 j) 0

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A309945.P13604676154184028297

namespace A309945

/-- `fp[comp[fp[sqrt(2*n+1)]]]` -/
def P13604676154184028297.Spec : Prop :=
  ∀ n, (P13604676154184028297.a n : ℤ) = A309945 (n + 1)

end A309945

/-! ## A309945.P4291253893508287538

`Δ[n²]%comp[∑[and(n, -2)]]`
-/

namespace A309945.P4291253893508287538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A309945.P4291253893508287538

namespace A309945

/-- `Δ[n²]%comp[∑[and(n, -2)]]` -/
def P4291253893508287538.Spec : Prop :=
  ∀ n, P4291253893508287538.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P267703673843511675

`abs(fp[(n+1)²/2]-n)`
-/

namespace A309945.P267703673843511675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0 : ℤ) - (n : ℤ)|

end

end A309945.P267703673843511675

namespace A309945

/-- `abs(fp[(n+1)²/2]-n)` -/
def P267703673843511675.Spec : Prop :=
  ∀ n, P267703673843511675.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P5019794755738127032

`n-ceil(record[sqrt(xor(1, n))])+1`
-/

namespace A309945.P5019794755738127032
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ + 1

end

end A309945.P5019794755738127032

namespace A309945

/-- `n-ceil(record[sqrt(xor(1, n))])+1` -/
def P5019794755738127032.Spec : Prop :=
  ∀ n, P5019794755738127032.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P11190234014917775080

`n-(ceil(record[sqrt(xor(1, n))])-1)`
-/

namespace A309945.P11190234014917775080
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ - 1)

end

end A309945.P11190234014917775080

namespace A309945

/-- `n-(ceil(record[sqrt(xor(1, n))])-1)` -/
def P11190234014917775080.Spec : Prop :=
  ∀ n, P11190234014917775080.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P2270981821156177795

`fp[sqrt(2*(n+1))+n+1]`
-/

namespace A309945.P2270981821156177795
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * (n + 1) : ℝ) + (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A309945.P2270981821156177795

namespace A309945

/-- `fp[sqrt(2*(n+1))+n+1]` -/
def P2270981821156177795.Spec : Prop :=
  ∀ n, (P2270981821156177795.a n : ℤ) = A309945 (n + 1)

end A309945

/-! ## A309945.P13065889826899679288

`∑[(char[ceil(n²/2)]+1)%2]`
-/

namespace A309945.P13065889826899679288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309945.P13065889826899679288

namespace A309945

/-- `∑[(char[ceil(n²/2)]+1)%2]` -/
def P13065889826899679288.Spec : Prop :=
  ∀ n, (P13065889826899679288.a n : ℤ) = A309945 (n + 1)

end A309945

/-! ## A309945.P7792963604145396341

`ceil(n-sqrt(2*n))%(n+1)`
-/

namespace A309945.P7792963604145396341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) - Real.sqrt (2 * n : ℝ)⌉ (n + 1 : ℤ)

end

end A309945.P7792963604145396341

namespace A309945

/-- `ceil(n-sqrt(2*n))%(n+1)` -/
def P7792963604145396341.Spec : Prop :=
  ∀ n, P7792963604145396341.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P394744217640094237

`abs(floor(sqrt(or(1, n)+n-1))-n)`
-/

namespace A309945.P394744217640094237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.sqrt ((Nat.lor 1 n + n : ℤ) - 1) - (n : ℤ)|

end

end A309945.P394744217640094237

namespace A309945

/-- `abs(floor(sqrt(or(1, n)+n-1))-n)` -/
def P394744217640094237.Spec : Prop :=
  ∀ n, P394744217640094237.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P8866885068939058416

`n-fp[a(n-2)+2*n]` with `a(0)=1, a(1)=2`
-/

namespace A309945.P8866885068939058416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.nth (fun j => n < f1 j) 0 : ℤ)

end

end A309945.P8866885068939058416

namespace A309945

/-- `n-fp[a(n-2)+2*n]` -/
def P8866885068939058416.Spec : Prop :=
  ∀ n, P8866885068939058416.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P7698936560198243115

`floor(n/(2-a(n-2)/n))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A309945.P7698936560198243115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  ⌊(n : ℚ) / (2 - (a (n - 2) : ℚ) / (n : ℚ))⌋

end

end A309945.P7698936560198243115

namespace A309945

/-- `floor(n/(2-a(n-2)/n))` -/
def P7698936560198243115.Spec : Prop :=
  ∀ n, P7698936560198243115.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P3459629185548852456

`∑[char[comp[A000982(n)]]]`
-/

namespace A309945.P3459629185548852456
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309945.P3459629185548852456

namespace A309945

/-- `∑[char[comp[A000982(n)]]]` -/
def P3459629185548852456.Spec : Prop :=
  ∀ n, (P3459629185548852456.a n : ℤ) = A309945 (n + 1)

end A309945

/-! ## A309945.P3880822051840165192

`ceil(n-sqrt(A005843(n)))`
-/

namespace A309945.P3880822051840165192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.sqrt (A005843 n : ℝ)⌉

end

end A309945.P3880822051840165192

namespace A309945

/-- `ceil(n-sqrt(A005843(n)))` -/
def P3880822051840165192.Spec : Prop :=
  ∀ n, P3880822051840165192.a n = A309945 (n + 1)

end A309945

/-! ## A309945.P13400044286356068602

`round(n-sqrt(A133280(n)))`
-/

namespace A309945.P13400044286356068602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (A133280 n : ℝ))

end

end A309945.P13400044286356068602

namespace A309945

/-- `round(n-sqrt(A133280(n)))` -/
def P13400044286356068602.Spec : Prop :=
  ∀ n, P13400044286356068602.a n = A309945 (n + 1)

end A309945

/-!
# A309946: a(n) = floor(Pi^n/Zeta(n)).

The programs for A309946, there is no canonical definition to state claims against.
-/

/-! ## A309946.P6275164388714455316

`A247915(A006814(n+1))-A304535(2*n+3)`
-/

namespace A309946.P6275164388714455316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (A006814 (n + 1)).toNat - A304535 (2 * n + 3)

end

end A309946.P6275164388714455316

/-!
# A309947: a(n) = A309891(A025487(n)): For each prime signature, gives the sum of the number of trailing zeros for all bases b >= 2 for some number m with that prime signature. The prime signatures are chosen in order in which they are first seen in the positive integers.

The programs for A309947, there is no canonical definition to state claims against.
-/

/-! ## A309947.P9385302590019810582

`A309891(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309947.P9385302590019810582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (A025487 (n + 1)).toNat

end

end A309947.P9385302590019810582

/-! ## A309947.P11000360856776179936

`A342929(1+n)-1`
-/

namespace A309947.P11000360856776179936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342929 (1 + n) - 1

end

end A309947.P11000360856776179936

/-! ## A309947.P12007777542582650123

`A023443(A342929(1+n))`
-/

namespace A309947.P12007777542582650123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342929 (1 + n)).toNat

end

end A309947.P12007777542582650123

/-! ## A309947.P8942517759982190005

`A289207(A342929(n+1)+1)`
-/

namespace A309947.P8942517759982190005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A342929 (n + 1) + 1).toNat

end

end A309947.P8942517759982190005

/-! ## A309947.P12856205942737851196

`A065423(2*A342929(n+1))`
-/

namespace A309947.P12856205942737851196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A342929 (n + 1)).toNat

end

end A309947.P12856205942737851196

/-! ## A309947.P7867710479532052046

`∑{d}[A025487(n+1), A089723(#)]-1`
-/

namespace A309947.P7867710479532052046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089723 d - 1

end

end A309947.P7867710479532052046

/-!
# A309950: G.f.: Product_{j>=1} (1 + p(x^j)), where p(x) is the g.f. of A000040.

The programs for A309950, there is no canonical definition to state claims against.
-/

/-! ## A309950.P13358704748543379120

`A023193(A006128(2*n)+Δ[A164137(n)])`
-/

namespace A309950.P13358704748543379120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A006128 (2 * n) + (f1 (n + 1) - f1 n)).toNat

end

end A309950.P13358704748543379120

/-! ## A309950.P2108019860395994128

`A240179(2*n+1)-A186719(A297395(3*n+5))`
-/

namespace A309950.P2108019860395994128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240179 (2 * n + 1) - A186719 (A297395 (3 * n + 5)).toNat

end

end A309950.P2108019860395994128

/-! ## A309950.P9493075858021190397

`∑[A116883(A349052(n))]`
-/

namespace A309950.P9493075858021190397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116883 (A349052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309950.P9493075858021190397

/-! ## A309950.P752279119478327327

`row(A022846(A078798(n+1)))-n`
-/

namespace A309950.P752279119478327327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (A022846 (A078798 (n + 1)).toNat).toNat : ℤ) - (n : ℤ)

end

end A309950.P752279119478327327

/-!
# A309951: Irregular triangular array, read by rows: T(n,k) is the sum of the products of multinomial coefficients (n_1 + n_2 + n_3 + ...)!/(n_1! * n_2! * n_3! * ...) taken k at a time, where (n_1, n_2, n_3, ...) runs over all integer partitions of n (n >= 0, 0 <= k <= A000041(n)).

The programs for A309951, there is no canonical definition to state claims against.
-/

/-! ## A309951.P11905737725847492398

`A325305(n)`
-/

namespace A309951.P11905737725847492398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325305 n

end

end A309951.P11905737725847492398

/-!
# A309952: XOR contraction of binary representation of n.

The programs for A309952, the canonical program `A309952.P7635460485295262952` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309952 has offset 0).

The definition of A309952 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292371, A292372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309952.P7635460485295262952

`A292371(n)+A292372(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A309952

/-- `A292371(n)+A292372(n)` -/
def P7635460485295262952.Spec : Prop :=
  ∀ n, P7635460485295262952.a n = A309952 n

theorem P7635460485295262952.correct : P7635460485295262952.Spec := by
  intro n
  simp only [A309952]

end A309952

/-! ## A309952.P3663169593829746196

`A059253(A163905(n))`
-/

namespace A309952.P3663169593829746196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163905 n).toNat

end

end A309952.P3663169593829746196

namespace A309952

/-- `A059253(A163905(n))` -/
def P3663169593829746196.Spec : Prop :=
  ∀ n, P3663169593829746196.a n = A309952 n

end A309952

/-! ## A309952.P10169579174580412951

`A059905(A380110(n))`
-/

namespace A309952.P10169579174580412951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A380110 n).toNat

end

end A309952.P10169579174580412951

namespace A309952

/-- `A059905(A380110(n))` -/
def P10169579174580412951.Spec : Prop :=
  ∀ n, P10169579174580412951.a n = A309952 n

end A309952

/-! ## A309952.P239632321810051408

`xor(A059905(n), A059906(n))`
-/

namespace A309952.P239632321810051408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059905 n) (A059906 n)

end

end A309952.P239632321810051408

namespace A309952

/-- `xor(A059905(n), A059906(n))` -/
def P239632321810051408.Spec : Prop :=
  ∀ n, P239632321810051408.a n = A309952 n

end A309952

/-! ## A309952.P3259227758358637746

`xor(A059905(floor(n/2)), A059905(n))`
-/

namespace A309952.P3259227758358637746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059905 ⌊(n : ℚ) / 2⌋.toNat) (A059905 n)

end

end A309952.P3259227758358637746

namespace A309952

/-- `xor(A059905(floor(n/2)), A059905(n))` -/
def P3259227758358637746.Spec : Prop :=
  ∀ n, P3259227758358637746.a n = A309952 n

end A309952

/-! ## A309952.P8705804557016522838

`or(A059906(and(n, -(2*n+1))), A292371(n))`
-/

namespace A309952.P8705804557016522838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059906 (Int.land (n : ℤ) (-(2 * n + 1 : ℤ))).toNat) (A292371 n)

end

end A309952.P8705804557016522838

namespace A309952

/-- `or(A059906(and(n, -(2*n+1))), A292371(n))` -/
def P8705804557016522838.Spec : Prop :=
  ∀ n, P8705804557016522838.a n = A309952 n

end A309952

/-! ## A309952.P5728980650562343073

`A292371(A004468(n))+A292371(n)`
-/

namespace A309952.P5728980650562343073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A004468 n).toNat + A292371 n

end

end A309952.P5728980650562343073

namespace A309952

/-- `A292371(A004468(n))+A292371(n)` -/
def P5728980650562343073.Spec : Prop :=
  ∀ n, P5728980650562343073.a n = A309952 n

end A309952

/-! ## A309952.P17621518627864262253

`A292372(A006015(n))+A292372(n)`
-/

namespace A309952.P17621518627864262253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A006015 n).toNat + A292372 n

end

end A309952.P17621518627864262253

namespace A309952

/-- `A292372(A006015(n))+A292372(n)` -/
def P17621518627864262253.Spec : Prop :=
  ∀ n, P17621518627864262253.a n = A309952 n

end A309952

/-! ## A309952.P10214426695478112900

`A292371(A057300(n))+A292371(n)`
-/

namespace A309952.P10214426695478112900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A057300 n).toNat + A292371 n

end

end A309952.P10214426695478112900

namespace A309952

/-- `A292371(A057300(n))+A292371(n)` -/
def P10214426695478112900.Spec : Prop :=
  ∀ n, P10214426695478112900.a n = A309952 n

end A309952

/-! ## A309952.P8803042694403232601

`A292372(A057300(n))+A292372(n)`
-/

namespace A309952.P8803042694403232601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A057300 n).toNat + A292372 n

end

end A309952.P8803042694403232601

namespace A309952

/-- `A292372(A057300(n))+A292372(n)` -/
def P8803042694403232601.Spec : Prop :=
  ∀ n, P8803042694403232601.a n = A309952 n

end A309952

/-! ## A309952.P16126718632496470237

`A292372(n)+A059905(A292272(n))`
-/

namespace A309952.P16126718632496470237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n + A059905 (A292272 n).toNat

end

end A309952.P16126718632496470237

namespace A309952

/-- `A292372(n)+A059905(A292272(n))` -/
def P16126718632496470237.Spec : Prop :=
  ∀ n, P16126718632496470237.a n = A309952 n

theorem P16126718632496470237.correct : P16126718632496470237.Spec := by
  intro n
  simp only [A309952, Nat.add_sub_cancel, A309952.P16126718632496470237.a, A309952.P7635460485295262952.a, A059905, A059905.P13127146245597209348.a, A292272, A292272.P5703236082678816393.a, A292371, A292371.P14264639696798853401.a, A292372, A292372.P491273011059708571.f1, A292372.P491273011059708571.a, A048735, A048735.P2863035607821774679.a, A059906, A059906.P1892842096491780914.a, A004526, A004526.P10084182425416171735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A309952

/-! ## A309952.P7709131389988425361

`A292372(A213064(n))+A292372(n)`
-/

namespace A309952.P7709131389988425361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A213064 n).toNat + A292372 n

end

end A309952.P7709131389988425361

namespace A309952

/-- `A292372(A213064(n))+A292372(n)` -/
def P7709131389988425361.Spec : Prop :=
  ∀ n, P7709131389988425361.a n = A309952 n

end A309952

/-! ## A309952.P2881389387344216872

`A292372(A256294(n))+A292372(n)`
-/

namespace A309952.P2881389387344216872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A256294 n).toNat + A292372 n

end

end A309952.P2881389387344216872

namespace A309952

/-- `A292372(A256294(n))+A292372(n)` -/
def P2881389387344216872.Spec : Prop :=
  ∀ n, P2881389387344216872.a n = A309952 n

end A309952

/-! ## A309952.P10911355356169288610

`A292371(n-A000695(A059906(n)))`
-/

namespace A309952.P10911355356169288610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 ((n : ℤ) - A000695 (A059906 n).toNat).toNat

end

end A309952.P10911355356169288610

namespace A309952

/-- `A292371(n-A000695(A059906(n)))` -/
def P10911355356169288610.Spec : Prop :=
  ∀ n, P10911355356169288610.a n = A309952 n

end A309952

/-! ## A309952.P17504199223170091620

`A292372(A010078(n+1))+A292372(n)`
-/

namespace A309952.P17504199223170091620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A010078 (n + 1)).toNat + A292372 n

end

end A309952.P17504199223170091620

namespace A309952

/-- `A292372(A010078(n+1))+A292372(n)` -/
def P17504199223170091620.Spec : Prop :=
  ∀ n, P17504199223170091620.a n = A309952 n

end A309952

/-! ## A309952.P5615523329139328941

`xor(A371442(n), A371459(n))`
-/

namespace A309952.P5615523329139328941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A371442 n) (A371459 n)

end

end A309952.P5615523329139328941

namespace A309952

/-- `xor(A371442(n), A371459(n))` -/
def P5615523329139328941.Spec : Prop :=
  ∀ n, P5615523329139328941.a n = A309952 n

end A309952

/-! ## A309952.P11980114049339027423

`A059905(A003188(n))`
-/

namespace A309952.P11980114049339027423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A003188 n).toNat

end

end A309952.P11980114049339027423

namespace A309952

/-- `A059905(A003188(n))` -/
def P11980114049339027423.Spec : Prop :=
  ∀ n, P11980114049339027423.a n = A309952 n

end A309952

/-! ## A309952.P4448423946324238189

`A003987(A054239(n))`
-/

namespace A309952.P4448423946324238189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A054239 n).toNat

end

end A309952.P4448423946324238189

namespace A309952

/-- `A003987(A054239(n))` -/
def P4448423946324238189.Spec : Prop :=
  ∀ n, P4448423946324238189.a n = A309952 n

end A309952

/-! ## A309952.P9141754008947436523

`A059906(A006015(n))`
-/

namespace A309952.P9141754008947436523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A006015 n).toNat

end

end A309952.P9141754008947436523

namespace A309952

/-- `A059906(A006015(n))` -/
def P9141754008947436523.Spec : Prop :=
  ∀ n, P9141754008947436523.a n = A309952 n

end A309952

/-! ## A309952.P2526662963522543629

`A059906(xor(n, 2*n))`
-/

namespace A309952.P2526662963522543629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Nat.xor n (2 * n))

end

end A309952.P2526662963522543629

namespace A309952

/-- `A059906(xor(n, 2*n))` -/
def P2526662963522543629.Spec : Prop :=
  ∀ n, P2526662963522543629.a n = A309952 n

end A309952

/-!
# A309953: Product of digits of (n written in base 3).

The programs for A309953, the canonical program `A309953.P772234709999834697` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309953 has offset 0).

The definition of A309953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309953.P772234709999834697

`n%3*a(floor(n/3))` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309953

/-- `n%3*a(floor(n/3))` -/
def P772234709999834697.Spec : Prop :=
  ∀ n, (P772234709999834697.a n : ℤ) = A309953 n

theorem P772234709999834697.correct : P772234709999834697.Spec := by
  intro n
  simp only [A309953]

end A309953

/-! ## A309953.P1809353256466897215

`∏{digits}[A007089(n), #]`
-/

namespace A309953.P1809353256466897215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309953.P1809353256466897215

namespace A309953

/-- `∏{digits}[A007089(n), #]` -/
def P1809353256466897215.Spec : Prop :=
  ∀ n, (P1809353256466897215.a n : ℤ) = A309953 n

end A309953

/-! ## A309953.P9621897895730153134

`∏{digits}[A343810(n+1)/4, #]`
-/

namespace A309953.P9621897895730153134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A309953.P9621897895730153134

namespace A309953

/-- `∏{digits}[A343810(n+1)/4, #]` -/
def P9621897895730153134.Spec : Prop :=
  ∀ n, (P9621897895730153134.a n : ℤ) = A309953 n

end A309953

/-! ## A309953.P426022900879305117

`lcm(A117592(n), A290825(n))`
-/

namespace A309953.P426022900879305117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117592 n) (A290825 n)

end

end A309953.P426022900879305117

namespace A309953

/-- `lcm(A117592(n), A290825(n))` -/
def P426022900879305117.Spec : Prop :=
  ∀ n, (P426022900879305117.a n : ℤ) = A309953 n

end A309953

/-! ## A309953.P1339188722218843740

`lcm(A117942(n), A371222(n))`
-/

namespace A309953.P1339188722218843740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117942 n) (A371222 n)

end

end A309953.P1339188722218843740

namespace A309953

/-- `lcm(A117942(n), A371222(n))` -/
def P1339188722218843740.Spec : Prop :=
  ∀ n, (P1339188722218843740.a n : ℤ) = A309953 n

end A309953

/-! ## A309953.P12597740354626014852

`A117592(n*A290825(n))*A290825(n)`
-/

namespace A309953.P12597740354626014852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 ((n : ℤ) * A290825 n).toNat * A290825 n

end

end A309953.P12597740354626014852

namespace A309953

/-- `A117592(n*A290825(n))*A290825(n)` -/
def P12597740354626014852.Spec : Prop :=
  ∀ n, P12597740354626014852.a n = A309953 n

end A309953

/-! ## A309953.P8536413197918941073

`∏{digits}[A024635(2*n)/2, #]`
-/

namespace A309953.P8536413197918941073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024635 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A309953.P8536413197918941073

namespace A309953

/-- `∏{digits}[A024635(2*n)/2, #]` -/
def P8536413197918941073.Spec : Prop :=
  ∀ n, (P8536413197918941073.a n : ℤ) = A309953 n

end A309953

/-! ## A309953.P15211444345523089194

`A309954(A023717(n))`
-/

namespace A309953.P15211444345523089194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A023717 n).toNat

end

end A309953.P15211444345523089194

namespace A309953

/-- `A309954(A023717(n))` -/
def P15211444345523089194.Spec : Prop :=
  ∀ n, P15211444345523089194.a n = A309953 n

end A309953

/-! ## A309953.P17353539145740157764

`∏{digits}[A007090(eq[0, A292373(n)]), #]`
-/

namespace A309953.P17353539145740157764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309953.P17353539145740157764

namespace A309953

/-- `∏{digits}[A007090(eq[0, A292373(n)]), #]` -/
def P17353539145740157764.Spec : Prop :=
  ∀ n, (P17353539145740157764.a n : ℤ) = A309953 n

end A309953

/-! ## A309953.P18326817024320445525

`A309956(eq[n, A309991(n)])`
-/

namespace A309953.P18326817024320445525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309953.P18326817024320445525

namespace A309953

/-- `A309956(eq[n, A309991(n)])` -/
def P18326817024320445525.Spec : Prop :=
  ∀ n, P18326817024320445525.a n = A309953 n

end A309953

/-! ## A309953.P10097132883894248772

`A309957(A037454(n))`
-/

namespace A309953.P10097132883894248772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 (A037454 n).toNat

end

end A309953.P10097132883894248772

namespace A309953

/-- `A309957(A037454(n))` -/
def P10097132883894248772.Spec : Prop :=
  ∀ n, P10097132883894248772.a n = A309953 n

end A309953

/-! ## A309953.P1842453076071001187

`A309958(A037455(n))`
-/

namespace A309953.P1842453076071001187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 (A037455 n).toNat

end

end A309953.P1842453076071001187

namespace A309953

/-- `A309958(A037455(n))` -/
def P1842453076071001187.Spec : Prop :=
  ∀ n, P1842453076071001187.a n = A309953 n

end A309953

/-! ## A309953.P4660838499487279960

`A309959(A037456(n))`
-/

namespace A309953.P4660838499487279960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 (A037456 n).toNat

end

end A309953.P4660838499487279960

namespace A309953

/-- `A309959(A037456(n))` -/
def P4660838499487279960.Spec : Prop :=
  ∀ n, P4660838499487279960.a n = A309953 n

end A309953

/-! ## A309953.P11060642976571852983

`A309788(A037314(n))`
-/

namespace A309953.P11060642976571852983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 (A037314 n).toNat

end

end A309953.P11060642976571852983

namespace A309953

/-- `A309788(A037314(n))` -/
def P11060642976571852983.Spec : Prop :=
  ∀ n, P11060642976571852983.a n = A309953 n

end A309953

/-! ## A309953.P2561108830875869582

`A397256(∑[n]+3)`
-/

namespace A309953.P2561108830875869582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397256 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A309953.P2561108830875869582

namespace A309953

/-- `A397256(∑[n]+3)` -/
def P2561108830875869582.Spec : Prop :=
  ∀ n, P2561108830875869582.a n = A309953 n

end A309953

/-!
# A309954: Product of digits of (n written in base 4).

The programs for A309954, the canonical program `A309954.P15049606844485343321` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309954 has offset 0).

The definition of A309954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309954.P1538539489549312305

`∏{digits}[A007090(n), #]`
-/

namespace A309954.P1538539489549312305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309954.P1538539489549312305

namespace A309954

/-- `∏{digits}[A007090(n), #]` -/
def P1538539489549312305.Spec : Prop :=
  ∀ n, (P1538539489549312305.a n : ℤ) = A309954 n

end A309954

/-! ## A309954.P13197522130195288675

`∏{digits}[A046030(1+n), sqrt(#)]`
-/

namespace A309954.P13197522130195288675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (1 + n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Real.sqrt (x : ℝ)).prod

end

end A309954.P13197522130195288675

namespace A309954

/-- `∏{digits}[A046030(1+n), sqrt(#)]` -/
def P13197522130195288675.Spec : Prop :=
  ∀ n, P13197522130195288675.a n = (A309954 n : ℝ)

end A309954

/-! ## A309954.P15049606844485343321

`∏{digits}[A024644(2*n)/2, #]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A309954

/-- `∏{digits}[A024644(2*n)/2, #]` -/
def P15049606844485343321.Spec : Prop :=
  ∀ n, (P15049606844485343321.a n : ℤ) = A309954 n

theorem P15049606844485343321.correct : P15049606844485343321.Spec := by
  intro n
  simp only [A309954]

end A309954

/-! ## A309954.P2357160340311865852

`A309956(A020654(n+1))`
-/

namespace A309954.P2357160340311865852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 (A020654 (n + 1)).toNat

end

end A309954.P2357160340311865852

namespace A309954

/-- `A309956(A020654(n+1))` -/
def P2357160340311865852.Spec : Prop :=
  ∀ n, P2357160340311865852.a n = A309954 n

end A309954

/-! ## A309954.P12755137587890144326

`A309957(A037460(n))`
-/

namespace A309954.P12755137587890144326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 (A037460 n).toNat

end

end A309954.P12755137587890144326

namespace A309954

/-- `A309957(A037460(n))` -/
def P12755137587890144326.Spec : Prop :=
  ∀ n, P12755137587890144326.a n = A309954 n

end A309954

/-! ## A309954.P1080466748229363525

`A309959(A037462(n))`
-/

namespace A309954.P1080466748229363525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 (A037462 n).toNat

end

end A309954.P1080466748229363525

namespace A309954

/-- `A309959(A037462(n))` -/
def P1080466748229363525.Spec : Prop :=
  ∀ n, P1080466748229363525.a n = A309954 n

end A309954

/-! ## A309954.P8541129081655104518

`A309788(A037463(n))`
-/

namespace A309954.P8541129081655104518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 (A037463 n).toNat

end

end A309954.P8541129081655104518

namespace A309954

/-- `A309788(A037463(n))` -/
def P8541129081655104518.Spec : Prop :=
  ∀ n, P8541129081655104518.a n = A309954 n

end A309954

/-! ## A309954.P586138050144351695

`∏{digits}[lt[A054055(n), 4], #]`
-/

namespace A309954.P586138050144351695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A309954.P586138050144351695

namespace A309954

/-- `∏{digits}[lt[A054055(n), 4], #]` -/
def P586138050144351695.Spec : Prop :=
  ∀ n, (P586138050144351695.a n : ℤ) = A309954 n

end A309954

/-! ## A309954.P3532199497870532351

`A007954(A007090(n))`
-/

namespace A309954.P3532199497870532351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007090 n).toNat

end

end A309954.P3532199497870532351

namespace A309954

/-- `A007954(A007090(n))` -/
def P3532199497870532351.Spec : Prop :=
  ∀ n, P3532199497870532351.a n = A309954 n

end A309954

/-!
# A309956: Product of digits of (n written in base 5).

The programs for A309956, the canonical program `A309956.P1524397468370418570` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309956 has offset 0).

The definition of A309956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309956.P1524397468370418570

`∏{digits}[A007091(n), #]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A309956

/-- `∏{digits}[A007091(n), #]` -/
def P1524397468370418570.Spec : Prop :=
  ∀ n, (P1524397468370418570.a n : ℤ) = A309956 n

theorem P1524397468370418570.correct : P1524397468370418570.Spec := by
  intro n
  simp only [A309956]

end A309956

/-! ## A309956.P10432964521721829123

`∏{digits}[A014263(n+1)/2, #]`
-/

namespace A309956.P10432964521721829123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A309956.P10432964521721829123

namespace A309956

/-- `∏{digits}[A014263(n+1)/2, #]` -/
def P10432964521721829123.Spec : Prop :=
  ∀ n, (P10432964521721829123.a n : ℤ) = A309956 n

end A309956

/-! ## A309956.P9229421259864817158

`A309957(A037465(n))`
-/

namespace A309956.P9229421259864817158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 (A037465 n).toNat

end

end A309956.P9229421259864817158

namespace A309956

/-- `A309957(A037465(n))` -/
def P9229421259864817158.Spec : Prop :=
  ∀ n, P9229421259864817158.a n = A309956 n

end A309956

/-! ## A309956.P12624122284523460655

`A309958(A037466(n))`
-/

namespace A309956.P12624122284523460655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 (A037466 n).toNat

end

end A309956.P12624122284523460655

namespace A309956

/-- `A309958(A037466(n))` -/
def P12624122284523460655.Spec : Prop :=
  ∀ n, P12624122284523460655.a n = A309956 n

end A309956

/-! ## A309956.P13137164026391011109

`A309959(A037467(n))`
-/

namespace A309956.P13137164026391011109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 (A037467 n).toNat

end

end A309956.P13137164026391011109

namespace A309956

/-- `A309959(A037467(n))` -/
def P13137164026391011109.Spec : Prop :=
  ∀ n, P13137164026391011109.a n = A309956 n

end A309956

/-! ## A309956.P12039060378909007400

`A309788(A037468(n))`
-/

namespace A309956.P12039060378909007400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 (A037468 n).toNat

end

end A309956.P12039060378909007400

namespace A309956

/-- `A309788(A037468(n))` -/
def P12039060378909007400.Spec : Prop :=
  ∀ n, P12039060378909007400.a n = A309956 n

end A309956

/-! ## A309956.P5378442966981848668

`A007954(A007091(n))`
-/

namespace A309956.P5378442966981848668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007091 n).toNat

end

end A309956.P5378442966981848668

namespace A309956

/-- `A007954(A007091(n))` -/
def P5378442966981848668.Spec : Prop :=
  ∀ n, P5378442966981848668.a n = A309956 n

end A309956

/-! ## A309956.P5426162778347418252

`A230099(A007091(n))-lt[A054055(n), 5]`
-/

namespace A309956.P5426162778347418252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (A007091 n).toNat - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A309956.P5426162778347418252

namespace A309956

/-- `A230099(A007091(n))-lt[A054055(n), 5]` -/
def P5426162778347418252.Spec : Prop :=
  ∀ n, P5426162778347418252.a n = A309956 n

end A309956

/-! ## A309956.P15716010414157993870

`A230099(A007091(n))-lt[A086066(n), 32]`
-/

namespace A309956.P15716010414157993870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (A007091 n).toNat - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A309956.P15716010414157993870

namespace A309956

/-- `A230099(A007091(n))-lt[A086066(n), 32]` -/
def P15716010414157993870.Spec : Prop :=
  ∀ n, P15716010414157993870.a n = A309956 n

end A309956

/-! ## A309956.P486106689503772341

`A230099(A014263(n+1)/2)-A007091(n)`
-/

namespace A309956.P486106689503772341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat - A007091 n

end

end A309956.P486106689503772341

namespace A309956

/-- `A230099(A014263(n+1)/2)-A007091(n)` -/
def P486106689503772341.Spec : Prop :=
  ∀ n, P486106689503772341.a n = A309956 n

end A309956

/-! ## A309956.P1544430478397073028

`A230099(A007091(n))-lt[A047842(n)%10, 5]`
-/

namespace A309956.P1544430478397073028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (A007091 n).toNat - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A309956.P1544430478397073028

namespace A309956

/-- `A230099(A007091(n))-lt[A047842(n)%10, 5]` -/
def P1544430478397073028.Spec : Prop :=
  ∀ n, P1544430478397073028.a n = A309956 n

end A309956

/-! ## A309956.P2717932902089786101

`A230099(A014263(n+1)-A007091(n))-A007091(n)`
-/

namespace A309956.P2717932902089786101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (A014263 (n + 1) - A007091 n).toNat - A007091 n

end

end A309956.P2717932902089786101

namespace A309956

/-- `A230099(A014263(n+1)-A007091(n))-A007091(n)` -/
def P2717932902089786101.Spec : Prop :=
  ∀ n, P2717932902089786101.a n = A309956 n

end A309956

/-! ## A309956.P17276683196758089936

`∏{digits}[record[A106747(n)], #]`
-/

namespace A309956.P17276683196758089936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309956.P17276683196758089936

namespace A309956

/-- `∏{digits}[record[A106747(n)], #]` -/
def P17276683196758089936.Spec : Prop :=
  ∀ n, (P17276683196758089936.a n : ℤ) = A309956 n

end A309956

/-! ## A309956.P14097713499136939215

`∏{digits}[eq[2*n, A001613(2*n)], #]`
-/

namespace A309956.P14097713499136939215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A309956.P14097713499136939215

namespace A309956

/-- `∏{digits}[eq[2*n, A001613(2*n)], #]` -/
def P14097713499136939215.Spec : Prop :=
  ∀ n, (P14097713499136939215.a n : ℤ) = A309956 n

end A309956

/-! ## A309956.P2029383545087728684

`∏{digits}[A028242(A014263(n+1)+1), #]`
-/

namespace A309956.P2029383545087728684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A014263 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309956.P2029383545087728684

namespace A309956

/-- `∏{digits}[A028242(A014263(n+1)+1), #]` -/
def P2029383545087728684.Spec : Prop :=
  ∀ n, (P2029383545087728684.a n : ℤ) = A309956 n

end A309956

/-! ## A309956.P9568620871217143567

`A230099(eq[n, A167831(n)])-A007091(n)`
-/

namespace A309956.P9568620871217143567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A007091 n

end

end A309956.P9568620871217143567

namespace A309956

/-- `A230099(eq[n, A167831(n)])-A007091(n)` -/
def P9568620871217143567.Spec : Prop :=
  ∀ n, P9568620871217143567.a n = A309956 n

end A309956

/-! ## A309956.P10202217260842955813

`A230099(record[n-A107128(n)])-A007091(n)`
-/

namespace A309956.P10202217260842955813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A007091 n

end

end A309956.P10202217260842955813

namespace A309956

/-- `A230099(record[n-A107128(n)])-A007091(n)` -/
def P10202217260842955813.Spec : Prop :=
  ∀ n, P10202217260842955813.a n = A309956 n

end A309956

/-! ## A309956.P12629954908915988455

`A397256(A167499(n+1))`
-/

namespace A309956.P12629954908915988455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397256 (A167499 (n + 1)).toNat

end

end A309956.P12629954908915988455

namespace A309956

/-- `A397256(A167499(n+1))` -/
def P12629954908915988455.Spec : Prop :=
  ∀ n, P12629954908915988455.a n = A309956 n

end A309956

/-!
# A309957: Product of digits of (n written in base 6).

The programs for A309957, the canonical program `A309957.P17596887210072373156` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309957 has offset 0).

The definition of A309957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309957.P17596887210072373156

`∏{digits}[A007092(n), #]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A309957

/-- `∏{digits}[A007092(n), #]` -/
def P17596887210072373156.Spec : Prop :=
  ∀ n, (P17596887210072373156.a n : ℤ) = A309957 n

theorem P17596887210072373156.correct : P17596887210072373156.Spec := by
  intro n
  simp only [A309957]

end A309957

/-! ## A309957.P5318239449592238381

`A309958(A020657(n+1))`
-/

namespace A309957.P5318239449592238381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 (A020657 (n + 1)).toNat

end

end A309957.P5318239449592238381

namespace A309957

/-- `A309958(A020657(n+1))` -/
def P5318239449592238381.Spec : Prop :=
  ∀ n, P5318239449592238381.a n = A309957 n

end A309957

/-! ## A309957.P10990357285149855871

`A309959(A037471(n))`
-/

namespace A309957.P10990357285149855871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 (A037471 n).toNat

end

end A309957.P10990357285149855871

namespace A309957

/-- `A309959(A037471(n))` -/
def P10990357285149855871.Spec : Prop :=
  ∀ n, P10990357285149855871.a n = A309957 n

end A309957

/-! ## A309957.P5468108256917965978

`A309788(A037472(n))`
-/

namespace A309957.P5468108256917965978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 (A037472 n).toNat

end

end A309957.P5468108256917965978

namespace A309957

/-- `A309788(A037472(n))` -/
def P5468108256917965978.Spec : Prop :=
  ∀ n, P5468108256917965978.a n = A309957 n

end A309957

/-! ## A309957.P8171570195515982512

`∏{digits}[record[n-A106747(n)], #]`
-/

namespace A309957.P8171570195515982512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309957.P8171570195515982512

namespace A309957

/-- `∏{digits}[record[n-A106747(n)], #]` -/
def P8171570195515982512.Spec : Prop :=
  ∀ n, (P8171570195515982512.a n : ℤ) = A309957 n

end A309957

/-! ## A309957.P2049370738800538964

`A007954(A007092(n))`
-/

namespace A309957.P2049370738800538964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007092 n).toNat

end

end A309957.P2049370738800538964

namespace A309957

/-- `A007954(A007092(n))` -/
def P2049370738800538964.Spec : Prop :=
  ∀ n, P2049370738800538964.a n = A309957 n

end A309957

/-! ## A309957.P9651617506519005495

`∏{digits}[eq[A007953(n), A280913(n)], #]`
-/

namespace A309957.P9651617506519005495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A309957.P9651617506519005495

namespace A309957

/-- `∏{digits}[eq[A007953(n), A280913(n)], #]` -/
def P9651617506519005495.Spec : Prop :=
  ∀ n, (P9651617506519005495.a n : ℤ) = A309957 n

end A309957

/-! ## A309957.P4903591629523733541

`∏{digits}[record[A222248(n)], A222248(#)]`
-/

namespace A309957.P4903591629523733541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A222248 x).prod

end

end A309957.P4903591629523733541

namespace A309957

/-- `∏{digits}[record[A222248(n)], A222248(#)]` -/
def P4903591629523733541.Spec : Prop :=
  ∀ n, P4903591629523733541.a n = A309957 n

end A309957

/-! ## A309957.P14357697468301035178

`A397256(A166136(n+2))`
-/

namespace A309957.P14357697468301035178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397256 (A166136 (n + 2)).toNat

end

end A309957.P14357697468301035178

namespace A309957

/-- `A397256(A166136(n+2))` -/
def P14357697468301035178.Spec : Prop :=
  ∀ n, P14357697468301035178.a n = A309957 n

end A309957

/-!
# A309958: Product of digits of (n written in base 7).

The programs for A309958, the canonical program `A309958.P16234445577497498085` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309958 has offset 0).

The definition of A309958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309958.P16234445577497498085

`∏{digits}[A007093(n), #]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A309958

/-- `∏{digits}[A007093(n), #]` -/
def P16234445577497498085.Spec : Prop :=
  ∀ n, (P16234445577497498085.a n : ℤ) = A309958 n

theorem P16234445577497498085.correct : P16234445577497498085.Spec := by
  intro n
  simp only [A309958]

end A309958

/-! ## A309958.P14820184782386165391

`A309959(A037474(n))`
-/

namespace A309958.P14820184782386165391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 (A037474 n).toNat

end

end A309958.P14820184782386165391

namespace A309958

/-- `A309959(A037474(n))` -/
def P14820184782386165391.Spec : Prop :=
  ∀ n, P14820184782386165391.a n = A309958 n

end A309958

/-! ## A309958.P13778344586212741807

`A309788(A037475(n))`
-/

namespace A309958.P13778344586212741807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 (A037475 n).toNat

end

end A309958.P13778344586212741807

namespace A309958

/-- `A309788(A037475(n))` -/
def P13778344586212741807.Spec : Prop :=
  ∀ n, P13778344586212741807.a n = A309958 n

end A309958

/-! ## A309958.P7265255026848623945

`A007954(A007093(n))`
-/

namespace A309958.P7265255026848623945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007093 n).toNat

end

end A309958.P7265255026848623945

namespace A309958

/-- `A007954(A007093(n))` -/
def P7265255026848623945.Spec : Prop :=
  ∀ n, P7265255026848623945.a n = A309958 n

end A309958

/-!
# A309959: Product of digits of (n written in base 8).

The programs for A309959, the canonical program `A309959.P7879829919331343568` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309959 has offset 0).

The definition of A309959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309959.P7879829919331343568

`∏{digits}[A007094(n), #]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A309959

/-- `∏{digits}[A007094(n), #]` -/
def P7879829919331343568.Spec : Prop :=
  ∀ n, (P7879829919331343568.a n : ℤ) = A309959 n

theorem P7879829919331343568.correct : P7879829919331343568.Spec := by
  intro n
  simp only [A309959]

end A309959

/-! ## A309959.P14955747222121706078

`A309788(A037477(n))`
-/

namespace A309959.P14955747222121706078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 (A037477 n).toNat

end

end A309959.P14955747222121706078

namespace A309959

/-- `A309788(A037477(n))` -/
def P14955747222121706078.Spec : Prop :=
  ∀ n, P14955747222121706078.a n = A309959 n

end A309959

/-! ## A309959.P8955208066840059165

`A007954(A007094(n))`
-/

namespace A309959.P8955208066840059165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007094 n).toNat

end

end A309959.P8955208066840059165

namespace A309959

/-- `A007954(A007094(n))` -/
def P8955208066840059165.Spec : Prop :=
  ∀ n, P8955208066840059165.a n = A309959 n

end A309959

/-!
# A309960: Numbers k for which rank of the elliptic curve y^2 = x^3 - 432*k^2 is 0.

The programs for A309960, there is no canonical definition to state claims against.
-/

/-! ## A309960.P2142482001402993730

`lt[-a(A060838(n)), 1]` with `a(0)=1`
-/

namespace A309960.P2142482001402993730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (A060838 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A309960.P2142482001402993730

/-! ## A309960.P8707010867815978427

`eq[0, A060838(1+n)]+1`
-/

namespace A309960.P8707010867815978427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309960.P8707010867815978427

/-! ## A309960.P6754582111572891481

`lt[A060838(n+1), 1]+1`
-/

namespace A309960.P6754582111572891481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A309960.P6754582111572891481

/-! ## A309960.P7948932313051309629

`eq[1, A060956(a(A060838(n)))]` with `a(0)=0`
-/

namespace A309960.P7948932313051309629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A060956 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309960.P7948932313051309629

/-! ## A309960.P15984206556762328260

`eq[2, A000032(a(A060838(n)))]` with `a(0)=0`
-/

namespace A309960.P15984206556762328260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309960.P15984206556762328260

/-! ## A309960.P10726947332614875998

`eq[2, A000040(a(A060838(n)))]` with `a(0)=1`
-/

namespace A309960.P10726947332614875998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309960.P10726947332614875998

/-! ## A309960.P14154437527085375469

`eq[1, A001221(a(A060838(n)))]` with `a(0)=2`
-/

namespace A309960.P14154437527085375469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001221 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309960.P14154437527085375469

/-! ## A309960.P17901422824315957440

`eq[1, A001222(a(A060838(n)))]` with `a(0)=2`
-/

namespace A309960.P17901422824315957440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001222 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309960.P17901422824315957440

/-! ## A309960.P8103491104511776914

`eq[2, A002153(a(A060838(n)))]` with `a(0)=1`
-/

namespace A309960.P8103491104511776914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002153 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309960.P8103491104511776914

/-! ## A309960.P14091864630617841297

`eq[3, A000051(a(A060838(n)))]` with `a(0)=1`
-/

namespace A309960.P14091864630617841297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000051 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309960.P14091864630617841297

/-! ## A309960.P15952060939587098126

`eq[2, A000045(a(A060838(n)))]` with `a(0)=3`
-/

namespace A309960.P15952060939587098126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309960.P15952060939587098126

/-! ## A309960.P7093060254880811519

`eq[2, A000010(a(A060838(n)))]` with `a(0)=4`
-/

namespace A309960.P7093060254880811519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000010 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309960.P7093060254880811519

/-!
# A309961: Numbers k for which rank of the elliptic curve y^2 = x^3 - 432*k^2 is 1.

The programs for A309961, there is no canonical definition to state claims against.
-/

/-! ## A309961.P6648550155107255898

`eq[A060838(A028310(n)), 1]`
-/

namespace A309961.P6648550155107255898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A309961.P6648550155107255898

/-! ## A309961.P14822339555463217210

`eq[1, A060838(A022144(n))]`
-/

namespace A309961.P14822339555463217210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309961.P14822339555463217210

/-! ## A309961.P16031162372015449214

`eq[1, A060838(A234275(n))]`
-/

namespace A309961.P16031162372015449214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309961.P16031162372015449214

/-! ## A309961.P12555538299693048250

`eq[1, A060838(n+1)]+1`
-/

namespace A309961.P12555538299693048250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309961.P12555538299693048250

/-! ## A309961.P15144198028764604379

`eq[1, A060838(A233583(n+1))]`
-/

namespace A309961.P15144198028764604379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309961.P15144198028764604379

/-!
# A309962: Numbers k for which rank of the elliptic curve y^2 = x^3 - 432*k^2 is 2.

The programs for A309962, there is no canonical definition to state claims against.
-/

/-! ## A309962.P14610736986347017609

`eq[2, A060838(n+2)]+2`
-/

namespace A309962.P14610736986347017609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A309962.P14610736986347017609

/-! ## A309962.P15277231576761913718

`eq[n, n-a(A060838(n))]` with `a(0)=2`
-/

namespace A309962.P15277231576761913718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) - f2 (A060838 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309962.P15277231576761913718

/-! ## A309962.P12537610676703458811

`eq[2, A060838(A028310(n))]`
-/

namespace A309962.P12537610676703458811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309962.P12537610676703458811

/-! ## A309962.P1580671659796598718

`A020725(eq[2, A060838(n+1)])`
-/

namespace A309962.P1580671659796598718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309962.P1580671659796598718

/-! ## A309962.P2332236660511925257

`A065475(eq[2, A060838(n+1)])`
-/

namespace A309962.P2332236660511925257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309962.P2332236660511925257

/-! ## A309962.P1257125860099580617

`A153152(eq[2, A060838(n+1)])`
-/

namespace A309962.P1257125860099580617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309962.P1257125860099580617

/-! ## A309962.P7526277964064062039

`eq[2, A060838(A022144(n))]`
-/

namespace A309962.P7526277964064062039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309962.P7526277964064062039

/-! ## A309962.P8715583025204908584

`eq[2, A060838(A234275(n))]`
-/

namespace A309962.P8715583025204908584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309962.P8715583025204908584

/-! ## A309962.P148833431999989971

`eq[2, A060838(A233583(n+1))]`
-/

namespace A309962.P148833431999989971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309962.P148833431999989971

/-!
# A309963: Numbers k for which rank of the elliptic curve y^2 = x^3 - 432*k^2 is 3.

The programs for A309963, there is no canonical definition to state claims against.
-/

/-! ## A309963.P64273235265071779

`eq[3, A060838(A028310(n))]`
-/

namespace A309963.P64273235265071779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309963.P64273235265071779

/-! ## A309963.P12439622316523548197

`A004830(eq[3, A060838(n+1)])`
-/

namespace A309963.P12439622316523548197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309963.P12439622316523548197

/-! ## A309963.P4990024968176979436

`A020725(eq[3, A060838(n+1)])`
-/

namespace A309963.P4990024968176979436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309963.P4990024968176979436

/-! ## A309963.P14268851050992184452

`A065475(eq[3, A060838(n+1)])`
-/

namespace A309963.P14268851050992184452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309963.P14268851050992184452

/-!
# A309965: a(n) is the greatest product of the digits of n in any base b in the range 2..n.

The programs for A309965, there is no canonical definition to state claims against.
-/

/-! ## A309965.P16451938048504900307

`and(A163355(n), A226046(A110016(n+1)))`
-/

namespace A309965.P16451938048504900307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163355 n) (A226046 (A110016 (n + 1)).toNat)

end

end A309965.P16451938048504900307

/-! ## A309965.P18149788557141225018

`∑[A156259(A311461(n+9))]-A156259(n+6)`
-/

namespace A309965.P18149788557141225018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156259 (A311461 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A156259 (n + 6)

end

end A309965.P18149788557141225018

/-! ## A309965.P13822842426037254612

`A250214(A019565(n))+∑[n%2]`
-/

namespace A309965.P13822842426037254612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250214 (A019565 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309965.P13822842426037254612

/-! ## A309965.P12057312275668752360

`A250214(A019565(n))+A110654(n)`
-/

namespace A309965.P12057312275668752360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250214 (A019565 n).toNat + A110654 n

end

end A309965.P12057312275668752360

/-! ## A309965.P9623184991708503593

`A245588(A084184(n))`
-/

namespace A309965.P9623184991708503593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245588 (A084184 n).toNat

end

end A309965.P9623184991708503593

/-!
# A309967: a(1) = a(2) = 1, a(3) = 2, a(4) = 3, a(5) = 8, a(6) = 6, a(7) = a(8) = 4; a(n) = a(n-a(n-1)) + a(n-a(n-4)) for n > 8.

The programs for A309967, the canonical program `A309967.P4630266390996467392` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309967 has offset 1).

The definition of A309967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-4))` (program `A309967.P4630266390996467392`, by `A309967.P4630266390996467392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309967.P4630266390996467392

`a(n-a(n-1))+a(n-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=8, a(5)=6, a(6)=4, a(7)=4`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309967

/-- `a(n-a(n-1))+a(n-a(n-4))` -/
def P4630266390996467392.Spec : Prop :=
  ∀ n, (P4630266390996467392.a n : ℤ) = A309967 (n + 1)

theorem P4630266390996467392.correct : P4630266390996467392.Spec := by
  intro n
  simp only [A309967, Nat.add_sub_cancel]

end A309967

/-!
# A309970: Period 12: repeat [1, 1, 0, 0, -1, -1, -1, -1, 0, 0, 1, 1].

The programs for A309970, the canonical program `A309970.P16229951106746800268` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309970 has offset 0).

The definition of A309970 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A309970.anchor (n : ℕ) : A309970 n = [1, 1, 0, 0, -1, -1, -1, -1, 0, 0, 1, 1].getD (n % 12) 0` in `Proof.A309.A309970`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309970.P10768191138131608536

`ogf((1+x-x^2-x^3)/(1-x^2+x^4))`
-/

namespace A309970.P10768191138131608536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -1] [1, 0, -1, 0, 1] n

end

end A309970.P10768191138131608536

namespace A309970

/-- `ogf((1+x-x^2-x^3)/(1-x^2+x^4))` -/
def P10768191138131608536.Spec : Prop :=
  ∀ n, P10768191138131608536.a n = A309970 n

end A309970

/-! ## A309970.P16229951106746800268

`a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309970

/-- `a(n-2)-a(n-4)` -/
def P16229951106746800268.Spec : Prop :=
  ∀ n, P16229951106746800268.a n = A309970 n

theorem P16229951106746800268.correct : P16229951106746800268.Spec := by
  intro n
  simp only [A309970]

end A309970

/-!
# A309971: a(1) = 1, a(2) = 2; a(n) = round((n-a(n-1))/a(n-2)) for n > 2.

The programs for A309971, the canonical program `A309971.P2204937568760971295` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309971 has offset 1).

The definition of A309971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1-a(n-1))/a(n-2))` (program `A309971.P2204937568760971295`, by `A309971.P2204937568760971295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309971.P2204937568760971295

`round((n+1-a(n-1))/a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309971

/-- `round((n+1-a(n-1))/a(n-2))` -/
def P2204937568760971295.Spec : Prop :=
  ∀ n, P2204937568760971295.a n = A309971 (n + 1)

theorem P2204937568760971295.correct : P2204937568760971295.Spec := by
  intro n
  simp only [A309971, Nat.add_sub_cancel]

end A309971

/-! ## A309971.P16819348113699239155

`A001222(A302940(n+1)+A146616(n+1))`
-/

namespace A309971.P16819348113699239155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A302940 (n + 1) + A146616 (n + 1)).toNat

end

end A309971.P16819348113699239155

namespace A309971

/-- `A001222(A302940(n+1)+A146616(n+1))` -/
def P16819348113699239155.Spec : Prop :=
  ∀ n, P16819348113699239155.a n = A309971 (n + 1)

end A309971

/-! ## A309971.P10508488575808682505

`A101080(A109876(2*n+5)-A109918(n+5))`
-/

namespace A309971.P10508488575808682505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101080 (A109876 (2 * n + 5) - A109918 (n + 5)).toNat

end

end A309971.P10508488575808682505

namespace A309971

/-- `A101080(A109876(2*n+5)-A109918(n+5))` -/
def P10508488575808682505.Spec : Prop :=
  ∀ n, P10508488575808682505.a n = A309971 (n + 1)

end A309971

/-! ## A309971.P2261893465258582181

`A073093(xor(A056578(n), A140681(n)))`
-/

namespace A309971.P2261893465258582181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (Int.xor (A056578 n) (A140681 n)).toNat

end

end A309971.P2261893465258582181

namespace A309971

/-- `A073093(xor(A056578(n), A140681(n)))` -/
def P2261893465258582181.Spec : Prop :=
  ∀ n, P2261893465258582181.a n = A309971 (n + 1)

end A309971

/-! ## A309971.P1919816298290261608

`A371275(A035001(n))`
-/

namespace A309971.P1919816298290261608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371275 (A035001 n).toNat

end

end A309971.P1919816298290261608

namespace A309971

/-- `A371275(A035001(n))` -/
def P1919816298290261608.Spec : Prop :=
  ∀ n, P1919816298290261608.a n = A309971 (n + 1)

end A309971

/-!
# A309972: Product of multinomial coefficients M(n;lambda), where lambda ranges over all partitions of n.

The programs for A309972, there is no canonical definition to state claims against.
-/

/-! ## A309972.P7041004276927069691

`A309951(∑[A052810(n)])`
-/

namespace A309972.P7041004276927069691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309972.P7041004276927069691

/-!
# A309973: Number T(n,k) of colored integer partitions of n using all colors of a k-set such that parts i have distinct color patterns in arbitrary order and each pattern for a part i has i colors in (weakly) increasing order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A309973, there is no canonical definition to state claims against.
-/

/-! ## A309973.P5449008810404273404

`A168324((7*n+9)^A168316(n+1))`
-/

namespace A309973.P5449008810404273404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (SequenceMachineLib.roundAway ((7 * n + 9 : ℚ) ^ (A168316 (n + 1) : ℤ))).toNat

end

end A309973.P5449008810404273404

/-! ## A309973.P7097454739526627219

`A143397(n)+A059841(A018008(n))`
-/

namespace A309973.P7097454739526627219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143397 n + A059841 (A018008 n).toNat

end

end A309973.P7097454739526627219

/-! ## A309973.P3287593396756047319

`lcm(A143397(n), A333382(A167499(n)))`
-/

namespace A309973.P3287593396756047319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143397 n) (A333382 (A167499 n).toNat)

end

end A309973.P3287593396756047319

/-!
# A309974: a(1) = a(2) = a(3) = 1; a(n) = round((2*n-a(n-1)-a(n-2))/a(n-3)) for n > 3.

The programs for A309974, the canonical program `A309974.P8937695662443347931` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309974 has offset 1).

The definition of A309974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((2*(n+1)-a(n-1)-a(n-2))/a(n-3))` (program `A309974.P8937695662443347931`, by `A309974.P8937695662443347931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309974.P8937695662443347931

`round((2*(n+1)-a(n-1)-a(n-2))/a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309974

/-- `round((2*(n+1)-a(n-1)-a(n-2))/a(n-3))` -/
def P8937695662443347931.Spec : Prop :=
  ∀ n, P8937695662443347931.a n = A309974 (n + 1)

theorem P8937695662443347931.correct : P8937695662443347931.Spec := by
  intro n
  simp only [A309974, Nat.add_sub_cancel]

end A309974

/-!
# A309975: Digits of the 5-adic integer exp(-5).

The programs for A309975, there is no canonical definition to state claims against.
-/

/-! ## A309975.P7585631630024434299

`Δ[A309903(n)]/5^n`
-/

namespace A309975.P7585631630024434299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309903 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (5 ^ n : ℚ)

end

end A309975.P7585631630024434299

/-!
# A309978: a(n) is the number of positive integers k such that there exists a nonnegative integer m with k + k^m = n.

The programs for A309978, there is no canonical definition to state claims against.
-/

/-! ## A309978.P6539632495667095659

`or(A092524(2*n+3)%2, A001221(A060374(3*n+1)))`
-/

namespace A309978.P6539632495667095659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A092524 (2 * n + 3)) 2) (A001221 (A060374 (3 * n + 1)).toNat)

end

end A309978.P6539632495667095659

/-! ## A309978.P12733824376555847797

`or(A001221(A038754(n)), A164056(n))`
-/

namespace A309978.P12733824376555847797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A038754 n).toNat) (A164056 n)

end

end A309978.P12733824376555847797

/-! ## A309978.P2236366090396862429

`or(A001221(A038754(n)), A079813(n+1))`
-/

namespace A309978.P2236366090396862429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A038754 n).toNat) (A079813 (n + 1))

end

end A309978.P2236366090396862429

/-! ## A309978.P811877256830014801

`or(A001221(A038754(n)), A130654(n+1))`
-/

namespace A309978.P811877256830014801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A038754 n).toNat) (A130654 (n + 1))

end

end A309978.P811877256830014801

/-! ## A309978.P3379460648662192101

`or(A001221(A166465(n+1)), A089310(n))`
-/

namespace A309978.P3379460648662192101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A166465 (n + 1)).toNat) (A089310 n)

end

end A309978.P3379460648662192101

/-!
# A309980: Number of binary relations on n unlabeled nodes that are neither reflexive nor antireflexive.

The programs for A309980, there is no canonical definition to state claims against.
-/

/-! ## A309980.P13686747077093945936

`A000595(n+1)-2*A000273(n+1)`
-/

namespace A309980.P13686747077093945936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 (n + 1) - 2 * A000273 (n + 1)

end

end A309980.P13686747077093945936

/-! ## A309980.P15919439864431601287

`A329546(A133263(n))-A151810(n)`
-/

namespace A309980.P15919439864431601287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329546 (A133263 n).toNat - A151810 n

end

end A309980.P15919439864431601287

/-! ## A309980.P5424787037369771359

`A057427(n)*A329546(A133263(n))`
-/

namespace A309980.P5424787037369771359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A329546 (A133263 n).toNat

end

end A309980.P5424787037369771359

/-!
# A309981: a(n) is the smallest number k such that the value of n can be deduced given only the values tau(n), tau(n+1), ..., tau(n+k), where tau is the number of divisors function.

The programs for A309981, there is no canonical definition to state claims against.
-/

/-! ## A309981.P10045830452464349198

`A003056(A134451(A003479(n))-A349445(n+1))`
-/

namespace A309981.P10045830452464349198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A134451 (A003479 n).toNat - A349445 (n + 1)).toNat

end

end A309981.P10045830452464349198

/-! ## A309981.P9244780231114221916

`A001221(A083720(n+1)+n)`
-/

namespace A309981.P9244780231114221916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083720 (n + 1) + (n : ℤ)).toNat

end

end A309981.P9244780231114221916

/-! ## A309981.P3936251992392822807

`∑{e}[A277880(n²+1), #%2]`
-/

namespace A309981.P3936251992392822807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277880 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p % 2

end

end A309981.P3936251992392822807

/-! ## A309981.P10613218842450951868

`A297037(A002603(n+1))`
-/

namespace A309981.P10613218842450951868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A002603 (n + 1)).toNat

end

end A309981.P10613218842450951868

/-! ## A309981.P17272429150547696404

`A327342(A168033(n+1))`
-/

namespace A309981.P17272429150547696404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327342 (A168033 (n + 1)).toNat

end

end A309981.P17272429150547696404

/-!
# A309982: Number of counterclockwise n-step spirals on hexagonal lattice where turns of 2*Pi/3 are forbidden.

The programs for A309982, there is no canonical definition to state claims against.
-/

/-! ## A309982.P8749587997663032969

`ceil(A272525(n)/A007277(n+1))`
-/

namespace A309982.P8749587997663032969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A272525 n : ℚ) / (A007277 (n + 1) : ℚ)⌉

end

end A309982.P8749587997663032969

/-! ## A309982.P18426844037610137180

`∑[A036621(n+1)%A048161(ceil(4*3^(n-2)))]`
-/

namespace A309982.P18426844037610137180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036621 (n + 1)) (A048161 ⌈4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309982.P18426844037610137180

/-! ## A309982.P8224835979270675

`∑[A178786(A215694(n))]`
-/

namespace A309982.P8224835979270675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A215694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309982.P8224835979270675

/-! ## A309982.P9607752169164169378

`A023193(A038579(n)+1)`
-/

namespace A309982.P9607752169164169378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A038579 n + 1).toNat

end

end A309982.P9607752169164169378

/-! ## A309982.P9372363499583737762

`A026819(A286814(n)+n)`
-/

namespace A309982.P9372363499583737762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A286814 n + (n : ℤ)).toNat

end

end A309982.P9372363499583737762

/-!
# A309983: Numbers resulting from adding the exponents of 2 associated with the "1" terms of their binary representation and subtracting the exponents of 2 associated with the "0" terms of their binary representation.

The programs for A309983, the canonical program `A309983.P4953267736372356844` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309983 has offset 1).

The definition of A309983 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309983.P4953267736372356844

`2*(A029931(n+1)-A000120(n+1))-A070939(n+1)*(A070939(n+1)-1)/2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A309983

/-- `2*(A029931(n+1)-A000120(n+1))-A070939(n+1)*(A070939(n+1)-1)/2` -/
def P4953267736372356844.Spec : Prop :=
  ∀ n, P4953267736372356844.a n = (A309983 (n + 1) : ℚ)

end A309983

/-! ## A309983.P16748477286153799472

`A393336(n+1)+A037861(n+1)`
-/

namespace A309983.P16748477286153799472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 (n + 1) + A037861 (n + 1)

end

end A309983.P16748477286153799472

namespace A309983

/-- `A393336(n+1)+A037861(n+1)` -/
def P16748477286153799472.Spec : Prop :=
  ∀ n, P16748477286153799472.a n = A309983 (n + 1)

end A309983

/-! ## A309983.P689896502429100471

`A393336(1+n)-A145037(n+1)`
-/

namespace A309983.P689896502429100471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 (1 + n) - A145037 (n + 1)

end

end A309983.P689896502429100471

namespace A309983

/-- `A393336(1+n)-A145037(n+1)` -/
def P689896502429100471.Spec : Prop :=
  ∀ n, P689896502429100471.a n = A309983 (n + 1)

end A309983

/-! ## A309983.P3216736896284015246

`A073642(n+1)-A073642(A035327(n+1))`
-/

namespace A309983.P3216736896284015246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (n + 1) - A073642 (A035327 (n + 1)).toNat

end

end A309983.P3216736896284015246

namespace A309983

/-- `A073642(n+1)-A073642(A035327(n+1))` -/
def P3216736896284015246.Spec : Prop :=
  ∀ n, P3216736896284015246.a n = A309983 (n + 1)

end A309983

/-! ## A309983.P2177321334500514447

`A023416(n+1)+A365968(n)+A023416(n+1)`
-/

namespace A309983.P2177321334500514447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) + (A365968 n + A023416 (n + 1))

end

end A309983.P2177321334500514447

namespace A309983

/-- `A023416(n+1)+A365968(n)+A023416(n+1)` -/
def P2177321334500514447.Spec : Prop :=
  ∀ n, P2177321334500514447.a n = A309983 (n + 1)

end A309983

/-! ## A309983.P18091321062857564279

`A037861(n+1)+A365968(n)+A029837(n+2)`
-/

namespace A309983.P18091321062857564279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (n + 1) + (A365968 n + A029837 (n + 2))

end

end A309983.P18091321062857564279

namespace A309983

/-- `A037861(n+1)+A365968(n)+A029837(n+2)` -/
def P18091321062857564279.Spec : Prop :=
  ∀ n, P18091321062857564279.a n = A309983 (n + 1)

end A309983

/-! ## A309983.P1650654833007296295

`A029837(n+2)+A365968(n)-A145037(n+1)`
-/

namespace A309983.P1650654833007296295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2) + (A365968 n - A145037 (n + 1))

end

end A309983.P1650654833007296295

namespace A309983

/-- `A029837(n+2)+A365968(n)-A145037(n+1)` -/
def P1650654833007296295.Spec : Prop :=
  ∀ n, P1650654833007296295.a n = A309983 (n + 1)

end A309983

/-! ## A309983.P2002041355220387244

`A393336(A008615(3*(n+1)))+A000007(n)`
-/

namespace A309983.P2002041355220387244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 (A008615 (3 * (n + 1))).toNat + A000007 n

end

end A309983.P2002041355220387244

namespace A309983

/-- `A393336(A008615(3*(n+1)))+A000007(n)` -/
def P2002041355220387244.Spec : Prop :=
  ∀ n, P2002041355220387244.a n = A309983 (n + 1)

end A309983

/-!
# A309984: Number of n X n Latin squares with determinant 0, divided by 2.

The programs for A309984, there is no canonical definition to state claims against.
-/

/-! ## A309984.P95704880132892147

`A213543(2*n^n)`
-/

namespace A309984.P95704880132892147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213543 (2 * n ^ n)

end

end A309984.P95704880132892147

/-! ## A309984.P667419684167210103

`A390568(A100918(n+1))`
-/

namespace A309984.P667419684167210103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390568 (A100918 (n + 1)).toNat

end

end A309984.P667419684167210103

/-!
# A309985: Maximum determinant of an n X n Latin square.

The programs for A309985, there is no canonical definition to state claims against.
-/

/-! ## A309985.P3536529499276570679

`A328030(n)`
-/

namespace A309985.P3536529499276570679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328030 n

end

end A309985.P3536529499276570679

/-!
# A309986: Convolution of A270913 and A008485.

The programs for A309986, there is no canonical definition to state claims against.
-/

/-! ## A309986.P494153210680791348

`A071996(or(3, A030192(n)))`
-/

namespace A309986.P494153210680791348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (Int.lor 3 (A030192 n)).toNat

end

end A309986.P494153210680791348

/-! ## A309986.P11349956979656153468

`A371428(n)-A001221(A381387(n))`
-/

namespace A309986.P11349956979656153468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371428 n - A001221 (A381387 n).toNat

end

end A309986.P11349956979656153468

/-!
# A309987: Digits of the 7-adic integer exp(7).

The programs for A309987, there is no canonical definition to state claims against.
-/

/-! ## A309987.P9379611369258970801

`Δ[A309904(n)]%6`
-/

namespace A309987.P9379611369258970801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A309987.P9379611369258970801

/-! ## A309987.P11738594275564034038

`Δ[A309904(n)]/A000420(n)`
-/

namespace A309987.P11738594275564034038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309904 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000420 n : ℚ)

end

end A309987.P11738594275564034038

/-! ## A309987.P5346331346103029286

`ceil(Δ[A309904(n)]/A074602(n))`
-/

namespace A309987.P5346331346103029286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A074602 n : ℚ)⌉

end

end A309987.P5346331346103029286

/-! ## A309987.P3698027721833721832

`(A309904(n+1)-A309904(n))%6`
-/

namespace A309987.P3698027721833721832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309904 (n + 1) - A309904 n) 6

end

end A309987.P3698027721833721832

/-!
# A309988: Digits of the 7-adic integer exp(-7).

The programs for A309988, there is no canonical definition to state claims against.
-/

/-! ## A309988.P7781527643656915711

`Δ[A309905(n)]/A000420(n)`
-/

namespace A309988.P7781527643656915711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309905 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000420 n : ℚ)

end

end A309988.P7781527643656915711

/-! ## A309988.P8500927845887387060

`(A309905(n+1)-A309905(n))/A000420(n)`
-/

namespace A309988.P8500927845887387060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309905 (n + 1) - A309905 n : ℚ) / (A000420 n : ℚ)

end

end A309988.P8500927845887387060

/-!
# A309989: Digits of one of the two 17-adic integers sqrt(-1).

The programs for A309989, there is no canonical definition to state claims against.
-/

/-! ## A309989.P8166092314441352163

`(A286877(n+1)-A286877(n))/17^n`
-/

namespace A309989.P8166092314441352163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286877 (n + 1) - A286877 n : ℚ) / (17 ^ n : ℚ)

end

end A309989.P8166092314441352163

/-! ## A309989.P12173374410413829172

`17-(A309990(n)+A057427(n))`
-/

namespace A309989.P12173374410413829172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - (A309990 n + A057427 n)

end

end A309989.P12173374410413829172

/-! ## A309989.P10115342682465293594

`A057428(n)+17-A309990(n)`
-/

namespace A309989.P10115342682465293594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (17 - A309990 n)

end

end A309989.P10115342682465293594

/-! ## A309989.P17486300076847786148

`17-A309990(n)-A019426(2*n)`
-/

namespace A309989.P17486300076847786148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A309990 n - A019426 (2 * n)

end

end A309989.P17486300076847786148

/-! ## A309989.P12655586531114161613

`17-A309990(n)-xor(1, A000007(n))`
-/

namespace A309989.P12655586531114161613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A309990 n - Int.xor 1 (A000007 n)

end

end A309989.P12655586531114161613

/-! ## A309989.P14372178722947791800

`A322561(n)+A322562(n)-A309990(n)`
-/

namespace A309989.P14372178722947791800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322561 n + (A322562 n - A309990 n)

end

end A309989.P14372178722947791800

/-! ## A309989.P9959978304395617718

`A322565(n)+A322566(n)-A309990(n)`
-/

namespace A309989.P9959978304395617718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322565 n + (A322566 n - A309990 n)

end

end A309989.P9959978304395617718

/-! ## A309989.P53444268785704018

`17-A309990(n)-A039982(A104272(n+1))`
-/

namespace A309989.P53444268785704018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A309990 n - A039982 (A104272 (n + 1)).toNat

end

end A309989.P53444268785704018

/-! ## A309989.P17384843904092999182

`17-A309990(n)-A039982(A007491(n+1))`
-/

namespace A309989.P17384843904092999182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A309990 n - A039982 (A007491 (n + 1)).toNat

end

end A309989.P17384843904092999182

/-!
# A309990: Digits of one of the two 17-adic integers sqrt(-1).

The programs for A309990, there is no canonical definition to state claims against.
-/

/-! ## A309990.P11932083605529989083

`(A286878(n+1)-A286878(n))/17^n`
-/

namespace A309990.P11932083605529989083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286878 (n + 1) - A286878 n : ℚ) / (17 ^ n : ℚ)

end

end A309990.P11932083605529989083

/-! ## A309990.P7283658927891241073

`17-(A309989(n)+A057427(n))`
-/

namespace A309990.P7283658927891241073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - (A309989 n + A057427 n)

end

end A309990.P7283658927891241073

/-! ## A309990.P9246243938563239692

`A057428(n)+17-A309989(n)`
-/

namespace A309990.P9246243938563239692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (17 - A309989 n)

end

end A309990.P9246243938563239692

/-! ## A309990.P13890605623975338468

`A322561(n)+A322562(n)-A309989(n)`
-/

namespace A309990.P13890605623975338468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322561 n + (A322562 n - A309989 n)

end

end A309990.P13890605623975338468

/-! ## A309990.P5448272796654853363

`A322565(n)+A322566(n)-A309989(n)`
-/

namespace A309990.P5448272796654853363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322565 n + (A322566 n - A309989 n)

end

end A309990.P5448272796654853363

/-! ## A309990.P13019909194896526406

`17-A309989(n)-A008683(A100484(n+1))`
-/

namespace A309990.P13019909194896526406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A309989 n - A008683 (A100484 (n + 1)).toNat

end

end A309990.P13019909194896526406

/-! ## A309990.P12267600508382975290

`A322565(2*n)-(A309989(n)-A322566(2*n))`
-/

namespace A309990.P12267600508382975290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322565 (2 * n) - (A309989 n - A322566 (2 * n))

end

end A309990.P12267600508382975290

/-! ## A309990.P10143144353152270087

`17-A309989(n)-char[A304492(n+1)]`
-/

namespace A309990.P10143144353152270087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304492 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A309989 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A309990.P10143144353152270087

/-! ## A309990.P16221665690508199323

`17-A309989(n)-A008683(A077068(n+1))`
-/

namespace A309990.P16221665690508199323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - A309989 n - A008683 (A077068 (n + 1)).toNat

end

end A309990.P16221665690508199323

/-!
# A309991: Balanced quinary (base 5) enumeration (or balanced quinary representation) of integers, write n in quinary, and then replace 3's with (-2)'s and 4's with (-1)'s.

The programs for A309991, there is no canonical definition to state claims against.
-/

/-! ## A309991.P7555161424807072335

`A004515(n)-n`
-/

namespace A309991.P7555161424807072335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n - (n : ℤ)

end

end A309991.P7555161424807072335

/-! ## A309991.P17032962757275993137

`A065257(1+n)-(n+1)`
-/

namespace A309991.P17032962757275993137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065257 (1 + n) - (n + 1 : ℤ)

end

end A309991.P17032962757275993137

/-! ## A309991.P11955384842550507689

`A055115(n)-A065256(n)`
-/

namespace A309991.P11955384842550507689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055115 n - A065256 n

end

end A309991.P11955384842550507689

/-! ## A309991.P2639651963788686460

`A001478(n+1)+A004515(n)+1`
-/

namespace A309991.P2639651963788686460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A004515 n + 1)

end

end A309991.P2639651963788686460

/-! ## A309991.P2777867346090327399

`A022958(n+2)+A004515(n)`
-/

namespace A309991.P2777867346090327399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (n + 2) + A004515 n

end

end A309991.P2777867346090327399

/-! ## A309991.P1300980036121571256

`A023443(A065257(n+1))-n`
-/

namespace A309991.P1300980036121571256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065257 (n + 1)).toNat - (n : ℤ)

end

end A309991.P1300980036121571256

/-! ## A309991.P2831894339682427290

`A065258(A065258(n+1))-A065258(n+1)`
-/

namespace A309991.P2831894339682427290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065258 (A065258 (n + 1)).toNat - A065258 (n + 1)

end

end A309991.P2831894339682427290

/-! ## A309991.P16588318970215563220

`A319047(∑[n+2]-1)`
-/

namespace A309991.P16588318970215563220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A309991.P16588318970215563220

/-!
# A309992: Triangle T(n,k) whose n-th row lists in increasing order the multinomial coefficients M(n;lambda), where lambda ranges over all partitions of n into distinct parts; n >= 0, 1 <= k <= A000009(n), read by rows.

The programs for A309992, there is no canonical definition to state claims against.
-/

/-! ## A309992.P11665820499862302029

`A008480(A328524(n))`
-/

namespace A309992.P11665820499862302029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A328524 n).toNat

end

end A309992.P11665820499862302029

/-! ## A309992.P4577935567711786701

`A124774(A333256(n+1))`
-/

namespace A309992.P4577935567711786701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A333256 (n + 1)).toNat

end

end A309992.P4577935567711786701

/-! ## A309992.P4112395037790269286

`A078760(eq[1, A333144(n)])`
-/

namespace A309992.P4112395037790269286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309992.P4112395037790269286

/-!
# A309993: Triangle read by rows: T(n,k) is the number of permutations of length n composed of exactly k overlapping adjacent runs (for n >= 1 and 1 <= k <= n).

The programs for A309993, there is no canonical definition to state claims against.
-/

/-! ## A309993.P10158958154187568884

`A201637(n)%A228986(A135876(n))`
-/

namespace A309993.P10158958154187568884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201637 n) (A228986 (A135876 n).toNat)

end

end A309993.P10158958154187568884

/-! ## A309993.P2578695440809570402

`and(A130734(A239599(n+1)), A201637(n))`
-/

namespace A309993.P2578695440809570402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130734 (A239599 (n + 1)).toNat) (A201637 n)

end

end A309993.P2578695440809570402

/-! ## A309993.P2544864490515741839

`and(A201637(n), A369251(A219727(3*n)))`
-/

namespace A309993.P2544864490515741839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201637 n) (A369251 (A219727 (3 * n)).toNat)

end

end A309993.P2544864490515741839

/-! ## A309993.P932774657938590954

`A137579(A128936(n))+A108998(n)`
-/

namespace A309993.P932774657938590954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A128936 n).toNat + A108998 n

end

end A309993.P932774657938590954

/-! ## A309993.P16571715808710399288

`A173018(n)*A358105(A144845(n))`
-/

namespace A309993.P16571715808710399288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n * A358105 (A144845 n).toNat

end

end A309993.P16571715808710399288

/-!
# A309994: Number of forests of rooted trees with 2n colored nodes using exactly n colors.

The programs for A309994, there is no canonical definition to state claims against.
-/

/-! ## A309994.P8592568999568148193

`A256064(C(2*n+1, 2)+n+1)`
-/

namespace A309994.P8592568999568148193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256064 (Nat.choose (2 * n + 1) 2 + n + 1)

end

end A309994.P8592568999568148193

/-! ## A309994.P5527910809668879955

`A256064(∑[4*n]+1)`
-/

namespace A309994.P5527910809668879955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256064 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A309994.P5527910809668879955

/-! ## A309994.P9274401897951037664

`record[A003982(n)*A256064(n+1)]`
-/

namespace A309994.P9274401897951037664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A256064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309994.P9274401897951037664

/-! ## A309994.P9954978984785272279

`record[gcd(A008482(n), A256064(n+1))]`
-/

namespace A309994.P9954978984785272279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A256064 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309994.P9954978984785272279

/-!
# A309995: Balanced septenary enumeration (or balanced septenary representation) of integers; write n in septenary and then replace 4's with (-3),s, 5's with (-2)'s, and 6's with (-1)'s.

The programs for A309995, there is no canonical definition to state claims against.
-/

/-! ## A309995.P2932144615373915441

`A004517(n)-n`
-/

namespace A309995.P2932144615373915441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004517 n - (n : ℤ)

end

end A309995.P2932144615373915441

/-! ## A309995.P3252029638076624983

`A024000(1+n)+A004517(n)`
-/

namespace A309995.P3252029638076624983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (1 + n) + A004517 n

end

end A309995.P3252029638076624983

/-! ## A309995.P2806346351457152961

`A022958(2+n)+A004517(n)`
-/

namespace A309995.P2806346351457152961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (2 + n) + A004517 n

end

end A309995.P2806346351457152961

/-! ## A309995.P17275754871308456267

`A023444(A004517(n))+A022958(n)`
-/

namespace A309995.P17275754871308456267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A004517 n).toNat + A022958 n

end

end A309995.P17275754871308456267

/-! ## A309995.P4241724787228493932

`A023482(A004517(n))+A022996(n)`
-/

namespace A309995.P4241724787228493932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023482 (A004517 n).toNat + A022996 n

end

end A309995.P4241724787228493932

/-! ## A309995.P16860762248456059236

`A024000(n)+A023443(A004517(n))`
-/

namespace A309995.P16860762248456059236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A023443 (A004517 n).toNat

end

end A309995.P16860762248456059236

/-! ## A309995.P595709342989226688

`A319047(∑[n+3])`
-/

namespace A309995.P595709342989226688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309995.P595709342989226688

/-!
# A309996: Number of forests of rooted identity trees with 2n colored nodes using exactly n colors.

The programs for A309996, there is no canonical definition to state claims against.
-/

/-! ## A309996.P8524965662009299682

`A256068(C(2*n+1, 2)+n+1)`
-/

namespace A309996.P8524965662009299682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256068 (Nat.choose (2 * n + 1) 2 + n + 1)

end

end A309996.P8524965662009299682

/-! ## A309996.P3046323764997488747

`A256068(1+∑[4*n])`
-/

namespace A309996.P3046323764997488747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256068 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309996.P3046323764997488747

/-!
# A309997: Number of paths from 2 to n of length A307092(n) - 1 via maps of the form x -> x + x^j, where j is a nonnegative integer.

The programs for A309997, there is no canonical definition to state claims against.
-/

/-! ## A309997.P3695801801187163524

`A214027(A002202(row(2^floor(n/2))))`
-/

namespace A309997.P3695801801187163524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A002202 (SequenceMachineLib.triRow (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat)).toNat

end

end A309997.P3695801801187163524

/-! ## A309997.P8422914664968130623

`gcd(A321646(n), A336812(A062068(n+4)))`
-/

namespace A309997.P8422914664968130623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321646 n) (A336812 (A062068 (n + 4)).toNat)

end

end A309997.P8422914664968130623

/-! ## A309997.P1038582891886572731

`A097587(A168374(n+2))`
-/

namespace A309997.P1038582891886572731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097587 (A168374 (n + 2)).toNat

end

end A309997.P1038582891886572731

/-! ## A309997.P5195172369006976084

`A055642(A213362(or(1, n)))`
-/

namespace A309997.P5195172369006976084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A213362 (Nat.lor 1 n)).toNat

end

end A309997.P5195172369006976084

/-!
# A309999: Number of distinct values of multinomial coefficients M(n;lambda) where lambda ranges over all partitions of n into distinct parts.

The programs for A309999, there is no canonical definition to state claims against.
-/

/-! ## A309999.P3708683911857609959

`A347586(n)-Δ[A185284(A162917(n+1))]`
-/

namespace A309999.P3708683911857609959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A162917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347586 n - (f1 (n + 1) - f1 n)

end

end A309999.P3708683911857609959

/-! ## A309999.P10933967514333450653

`A025781(eq[A007318(n), A117707(n)])`
-/

namespace A309999.P10933967514333450653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025781 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309999.P10933967514333450653

/-! ## A309999.P3261154102343943860

`A196199(A184955(n))+A000009(n)`
-/

namespace A309999.P3261154102343943860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A184955 n).toNat + A000009 n

end

end A309999.P3261154102343943860

/-! ## A309999.P3002279783264223993

`A111967(A184955(n))+A111133(n)`
-/

namespace A309999.P3002279783264223993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 (A184955 n).toNat + A111133 n

end

end A309999.P3002279783264223993

/-! ## A309999.P4295220036121658688

`A178798(A341494(n))+A000009(n)`
-/

namespace A309999.P4295220036121658688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A341494 n).toNat + A000009 n

end

end A309999.P4295220036121658688

