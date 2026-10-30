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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A257100: From fourth root of the inverse of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fourth power is 1/zeta; sequence gives numerator of b(n).

The programs for A257100, there is no canonical definition to state claims against.
-/

/-! ## A257100.P8511731999791369016

`∏{e}[n+1, -A000005(#^#!)]`
-/

namespace A257100.P8511731999791369016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-A000005 (Nat.factorization (f1 n) p ^ Nat.factorial (Nat.factorization (f1 n) p)))

end

end A257100.P8511731999791369016

/-! ## A257100.P8358784945944342859

`xor(∏{p}[n+1, -1%#], A353862(∏{e}[n+1, #^#]))`
-/

namespace A257100.P8358784945944342859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ)) (A353862 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ Nat.factorization (f2 n) p))

end

end A257100.P8358784945944342859

/-! ## A257100.P1077285848021182626

`∏{e}[A077559(n+1), A106191(#)]`
-/

namespace A257100.P1077285848021182626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A106191 (Nat.factorization (f1 n).natAbs p)

end

end A257100.P1077285848021182626

/-! ## A257100.P2663943331871957790

`∏{e}[A111680(n+1), A106191(#)]`
-/

namespace A257100.P2663943331871957790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A106191 (Nat.factorization (f1 n).natAbs p)

end

end A257100.P2663943331871957790

/-! ## A257100.P13945220474676971098

`∏{e}[n+1, A227193(A001146(#))]`
-/

namespace A257100.P13945220474676971098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A227193 (A001146 (Nat.factorization (f1 n) p)).toNat

end

end A257100.P13945220474676971098

/-!
# A257101: From fifth root of the inverse of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fifth power is 1/zeta; sequence gives numerator of b(n).

The programs for A257101, there is no canonical definition to state claims against.
-/

/-! ## A257101.P1354919377077869569

`∏{e}[A077559(n+1), -#!]`
-/

namespace A257101.P1354919377077869569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℤ))

end

end A257101.P1354919377077869569

/-! ## A257101.P15976954986458813087

`∏{e}[A111680(n+1), -#!]`
-/

namespace A257101.P15976954986458813087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℤ))

end

end A257101.P15976954986458813087

/-! ## A257101.P8745232121444490818

`∏{e}[A120426(n+1), -#!]`
-/

namespace A257101.P8745232121444490818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℤ))

end

end A257101.P8745232121444490818

/-! ## A257101.P5321921569121623779

`∏{e}[A187829(n+1), -#!]`
-/

namespace A257101.P5321921569121623779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℤ))

end

end A257101.P5321921569121623779

/-! ## A257101.P7136549514467456709

`∏{e}[n+1, -A001222(2^#!)]`
-/

namespace A257101.P7136549514467456709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-A001222 (2 ^ Nat.factorial (Nat.factorization (f1 n) p)))

end

end A257101.P7136549514467456709

/-!
# A257104: Number of Motzkin paths of length n with no peaks at level 3.

The programs for A257104, there is no canonical definition to state claims against.
-/

/-! ## A257104.P12081101136969654792

`A238438(n)+A036639(A036424(n))`
-/

namespace A257104.P12081101136969654792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238438 n + A036639 (A036424 n).toNat

end

end A257104.P12081101136969654792

/-! ## A257104.P9944253471035832607

`A238438(n)+A036639(A036647(n))`
-/

namespace A257104.P9944253471035832607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238438 n + A036639 (A036647 n).toNat

end

end A257104.P9944253471035832607

/-! ## A257104.P4689421041305844133

`A238438(n)+A025465(A048467(n))`
-/

namespace A257104.P4689421041305844133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238438 n + A025465 (A048467 n).toNat

end

end A257104.P4689421041305844133

/-! ## A257104.P8133390841458289302

`A238438(n)+A079978(A000800(n))`
-/

namespace A257104.P8133390841458289302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238438 n + A079978 (A000800 n).toNat

end

end A257104.P8133390841458289302

/-! ## A257104.P690141253629873593

`A238438(n)+A054908(A060693(n))`
-/

namespace A257104.P690141253629873593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238438 n + A054908 (A060693 n).toNat

end

end A257104.P690141253629873593

/-!
# A257106: Denominators of the inverse binomial transform of the Bernoulli numbers with B(1)=2/3.

The programs for A257106, there is no canonical definition to state claims against.
-/

/-! ## A257106.P1956187365788350943

`gcd(A002445(n), A014601(A100616(n)²))`
-/

namespace A257106.P1956187365788350943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 n) (A014601 (A100616 n ^ 2).toNat)

end

end A257106.P1956187365788350943

/-!
# A257108: Smallest prime p such that none of p+1, p+2, ..., p+n are squarefree.

The programs for A257108, there is no canonical definition to state claims against.
-/

/-! ## A257108.P2140921872735259294

`A082315(A088518(n)+A002110(n))`
-/

namespace A257108.P2140921872735259294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A088518 n + A002110 n).toNat

end

end A257108.P2140921872735259294

/-! ## A257108.P442307651340857552

`A057509(A325683(n)+A002110(n))`
-/

namespace A257108.P442307651340857552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A325683 n + A002110 n).toNat

end

end A257108.P442307651340857552

/-!
# A257109: Number of ways to write n = 3*x^2 + y^2 + z^2, where x,y,z are nonnegative integers with gcd(3,x) = 1 and y <= z.

The programs for A257109, there is no canonical definition to state claims against.
-/

/-! ## A257109.P1203968599513411627

`A213731(A112830(n)+A092437(n))`
-/

namespace A257109.P1203968599513411627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213731 (A112830 n + A092437 n).toNat

end

end A257109.P1203968599513411627

/-! ## A257109.P17652797077350867363

`A056980(xor(A171898(n+1), A214384(n+1)))`
-/

namespace A257109.P17652797077350867363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (Int.xor (A171898 (n + 1)) (A214384 (n + 1))).toNat

end

end A257109.P17652797077350867363

/-! ## A257109.P10834295141972366726

`A191935(2*n+1)%A297782(A078598(2*(n+1)))`
-/

namespace A257109.P10834295141972366726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191935 (2 * n + 1)) (A297782 (A078598 (2 * (n + 1))).toNat)

end

end A257109.P10834295141972366726

/-! ## A257109.P5480051072032932203

`A004602(A003179(n)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A257109.P5480051072032932203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A004602 (A003179 n + a (n - 4)).toNat

end

end A257109.P5480051072032932203

/-! ## A257109.P7676339502368085754

`A379679(A334200(3*n+4)+A008292(n+1))`
-/

namespace A257109.P7676339502368085754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (A334200 (3 * n + 4) + A008292 (n + 1)).toNat

end

end A257109.P7676339502368085754

/-!
# A257110: Primes which are not the sums of two consecutive non-Fibonacci numbers.

The programs for A257110, there is no canonical definition to state claims against.
-/

/-! ## A257110.P16248503069781106101

`p?[A256007(n)+1]`
-/

namespace A257110.P16248503069781106101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256007 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257110.P16248503069781106101

/-! ## A257110.P9416372611861342423

`∩[A000040(n+1), A256007(n)+1]`
-/

namespace A257110.P9416372611861342423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256007 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257110.P9416372611861342423

/-! ## A257110.P12032283953316379301

`record[A006530(A046790(2*n+1)*A095903(2*n+1))]`
-/

namespace A257110.P12032283953316379301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046790 (2 * n + 1) * A095903 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257110.P12032283953316379301

/-! ## A257110.P1440614390296163980

`p?[∑[A263139(n)!]]`
-/

namespace A257110.P1440614390296163980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A263139 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A257110.P1440614390296163980

/-! ## A257110.P7278168422371489818

`p?[∑[A345199(A361948(n+1))]]`
-/

namespace A257110.P7278168422371489818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345199 (A361948 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257110.P7278168422371489818

/-!
# A257111: First differences of A257339.

The programs for A257111, there is no canonical definition to state claims against.
-/

/-! ## A257111.P8838248889341712688

`Δ[A257339(n+1)]`
-/

namespace A257111.P8838248889341712688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257111.P8838248889341712688

/-! ## A257111.P12751096539587529172

`Δ[A000027(A257339(-xor(n, -1)))]`
-/

namespace A257111.P12751096539587529172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A257339 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257111.P12751096539587529172

/-! ## A257111.P16268052590942150055

`A257339(n+2)-A257339(n+1)`
-/

namespace A257111.P16268052590942150055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257339 (n + 2) - A257339 (n + 1)

end

end A257111.P16268052590942150055

/-!
# A257113: a(1) = 2, a(2) = 3; thereafter a(n) is the sum of all the previous terms.

The programs for A257113, the canonical program `A257113.P9818257778927645230` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257113 has offset 1).

The definition of A257113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257113.P14769095253933709512

`ogf((2-x-x^2)/(1-2x))`
-/

namespace A257113.P14769095253933709512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -1] [1, -2] n

end

end A257113.P14769095253933709512

namespace A257113

/-- `ogf((2-x-x^2)/(1-2x))` -/
def P14769095253933709512.Spec : Prop :=
  ∀ n, P14769095253933709512.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P9818257778927645230

`ceil(5*2^(n-2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257113

/-- `ceil(5*2^(n-2))` -/
def P9818257778927645230.Spec : Prop :=
  ∀ n, P9818257778927645230.a n = A257113 (n + 1)

theorem P9818257778927645230.correct : P9818257778927645230.Spec := by
  intro n
  simp only [A257113, Nat.add_sub_cancel]

end A257113

/-! ## A257113.P15125580877778720427

`2*a(n-1)` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A257113.P15125580877778720427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  2 * a (n - 1)

end

end A257113.P15125580877778720427

namespace A257113

/-- `2*a(n-1)` -/
def P15125580877778720427.Spec : Prop :=
  ∀ n, (P15125580877778720427.a n : ℤ) = A257113 (n + 1)

end A257113

/-! ## A257113.P8018657829018835257

`a(n-1)+a(n-1)` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A257113.P8018657829018835257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  a (n - 1) + a (n - 1)

end

end A257113.P8018657829018835257

namespace A257113

/-- `a(n-1)+a(n-1)` -/
def P8018657829018835257.Spec : Prop :=
  ∀ n, (P8018657829018835257.a n : ℤ) = A257113 (n + 1)

end A257113

/-! ## A257113.P8255909111245459356

`a(n-1)/(1-1/2)` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A257113.P8255909111245459356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A257113.P8255909111245459356

namespace A257113

/-- `a(n-1)/(1-1/2)` -/
def P8255909111245459356.Spec : Prop :=
  ∀ n, P8255909111245459356.a n = (A257113 (n + 1) : ℚ)

end A257113

/-! ## A257113.P15069997919961259893

`lcm(2^(n-2), a(n-1))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A257113.P15069997919961259893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 1) : ℤ)

end

end A257113.P15069997919961259893

namespace A257113

/-- `lcm(2^(n-2), a(n-1))` -/
def P15069997919961259893.Spec : Prop :=
  ∀ n, (P15069997919961259893.a n : ℤ) = A257113 (n + 1)

end A257113

/-! ## A257113.P2043615339148505599

`a(n-1)-(char[2]-a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A257113.P2043615339148505599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A257113.P2043615339148505599

namespace A257113

/-- `a(n-1)-(char[2]-a(n-1))` -/
def P2043615339148505599.Spec : Prop :=
  ∀ n, P2043615339148505599.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P1397080075380746619

`∑[A084215(abs(1-n))]`
-/

namespace A257113.P1397080075380746619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257113.P1397080075380746619

namespace A257113

/-- `∑[A084215(abs(1-n))]` -/
def P1397080075380746619.Spec : Prop :=
  ∀ n, P1397080075380746619.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P9970513745288891111

`A084215(n)+C(n, n²)`
-/

namespace A257113.P9970513745288891111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n + (Nat.choose n (n ^ 2) : ℤ)

end

end A257113.P9970513745288891111

namespace A257113

/-- `A084215(n)+C(n, n²)` -/
def P9970513745288891111.Spec : Prop :=
  ∀ n, P9970513745288891111.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P7753240041525420110

`A084215(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A257113.P7753240041525420110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A084215 (n - 1) + a (n - 1)

end

end A257113.P7753240041525420110

namespace A257113

/-- `A084215(n-1)+a(n-1)` -/
def P7753240041525420110.Spec : Prop :=
  ∀ n, P7753240041525420110.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P744575690294966171

`A333905(A004280(n+2))`
-/

namespace A257113.P744575690294966171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333905 (A004280 (n + 2)).toNat

end

end A257113.P744575690294966171

namespace A257113

/-- `A333905(A004280(n+2))` -/
def P744575690294966171.Spec : Prop :=
  ∀ n, P744575690294966171.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P3686617100798517699

`A122958(n)+A026622(n)`
-/

namespace A257113.P3686617100798517699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n + A026622 n

end

end A257113.P3686617100798517699

namespace A257113

/-- `A122958(n)+A026622(n)` -/
def P3686617100798517699.Spec : Prop :=
  ∀ n, P3686617100798517699.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P211992778483857776

`A058764(n)-A166444(n)`
-/

namespace A257113.P211992778483857776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n - A166444 n

end

end A257113.P211992778483857776

namespace A257113

/-- `A058764(n)-A166444(n)` -/
def P211992778483857776.Spec : Prop :=
  ∀ n, P211992778483857776.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P18002719716885315386

`A084215(n)+A019590(n+1)`
-/

namespace A257113.P18002719716885315386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n + A019590 (n + 1)

end

end A257113.P18002719716885315386

namespace A257113

/-- `A084215(n)+A019590(n+1)` -/
def P18002719716885315386.Spec : Prop :=
  ∀ n, P18002719716885315386.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P11971404578009872080

`A288382(n+1)+A000325(n)`
-/

namespace A257113.P11971404578009872080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288382 (n + 1) + A000325 n

end

end A257113.P11971404578009872080

namespace A257113

/-- `A288382(n+1)+A000325(n)` -/
def P11971404578009872080.Spec : Prop :=
  ∀ n, P11971404578009872080.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P4302784554391841974

`A266550(n+1)+A094373(n)`
-/

namespace A257113.P4302784554391841974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1) + A094373 n

end

end A257113.P4302784554391841974

namespace A257113

/-- `A266550(n+1)+A094373(n)` -/
def P4302784554391841974.Spec : Prop :=
  ∀ n, P4302784554391841974.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P7628365979595189104

`A098011(n+2)+A011782(n)`
-/

namespace A257113.P7628365979595189104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 2) + A011782 n

end

end A257113.P7628365979595189104

namespace A257113

/-- `A098011(n+2)+A011782(n)` -/
def P7628365979595189104.Spec : Prop :=
  ∀ n, P7628365979595189104.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P3367830057482818298

`A166444(n)+2*A011782(n)`
-/

namespace A257113.P3367830057482818298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + 2 * A011782 n

end

end A257113.P3367830057482818298

namespace A257113

/-- `A166444(n)+2*A011782(n)` -/
def P3367830057482818298.Spec : Prop :=
  ∀ n, P3367830057482818298.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P8827071666120570732

`and(A083329(n), A267604(n))+1`
-/

namespace A257113.P8827071666120570732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083329 n) (A267604 n) + 1

end

end A257113.P8827071666120570732

namespace A257113

/-- `and(A083329(n), A267604(n))+1` -/
def P8827071666120570732.Spec : Prop :=
  ∀ n, P8827071666120570732.a n = A257113 (n + 1)

end A257113

/-! ## A257113.P14460133646171819295

`abs(A110164(n)+∑[A110164(n)])`
-/

namespace A257113.P14460133646171819295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110164 n + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A257113.P14460133646171819295

namespace A257113

/-- `abs(A110164(n)+∑[A110164(n)])` -/
def P14460133646171819295.Spec : Prop :=
  ∀ n, P14460133646171819295.a n = A257113 (n + 1)

end A257113

/-!
# A257114: Number of factorizations of m^n into n factors, where m is a product of exactly 4 distinct primes and each factor is a product of 4 primes (counted with multiplicity).

The programs for A257114, there is no canonical definition to state claims against.
-/

/-! ## A257114.P18059569612524884186

`A257462(A052905(n+2))`
-/

namespace A257114.P18059569612524884186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (A052905 (n + 2)).toNat

end

end A257114.P18059569612524884186

/-! ## A257114.P5004435617948663591

`A257462(eq[4, A025581(n)])`
-/

namespace A257114.P5004435617948663591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257114.P5004435617948663591

/-! ## A257114.P10194075859061500989

`A257462(eq[16, A130321(n)])`
-/

namespace A257114.P10194075859061500989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257114.P10194075859061500989

/-! ## A257114.P16995623805819988091

`A257462(A141214(n+2)-2)`
-/

namespace A257114.P16995623805819988091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (A141214 (n + 2) - 2).toNat

end

end A257114.P16995623805819988091

/-! ## A257114.P7840548496645074257

`A257462(eq[5, A004736(n+1)])`
-/

namespace A257114.P7840548496645074257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257114.P7840548496645074257

/-!
# A257115: Smallest k such that none of k + 1, k + 3,... k + 2n - 1 are squarefree and all of k + 2, k + 4,... k + 2n are squarefree.

The programs for A257115, there is no canonical definition to state claims against.
-/

/-! ## A257115.P13658334774642129845

`A106151(A105748(n)+Δ[n²])`
-/

namespace A257115.P13658334774642129845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A105748 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A257115.P13658334774642129845

/-!
# A257117: Smaller of two consecutive primes each of which is the sum of two squares.

The programs for A257117, there is no canonical definition to state claims against.
-/

/-! ## A257117.P1884143629346803848

`∩[A145990(n+1), A173829(n+1)]`
-/

namespace A257117.P1884143629346803848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257117.P1884143629346803848

/-! ## A257117.P1614712019927461875

`A145990(n+3)%A112087(A007716(n+2))`
-/

namespace A257117.P1614712019927461875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145990 (n + 3)) (A112087 (A007716 (n + 2)).toNat)

end

end A257117.P1614712019927461875

/-!
# A257119: Smallest member of four consecutive prime numbers each of which is the sum of two squares.

The programs for A257119, there is no canonical definition to state claims against.
-/

/-! ## A257119.P7778627431622395038

`∩[A257118(n+1), A341515(A257118(n+1))]`
-/

namespace A257119.P7778627431622395038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341515 (A257118 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257119.P7778627431622395038

/-!
# A257120: Position of first occurrence of n in A256918.

The programs for A257120, there is no canonical definition to state claims against.
-/

/-! ## A257120.P1122188676984410846

`A257475(n+1)-A257478(n+1)`
-/

namespace A257120.P1122188676984410846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257475 (n + 1) - A257478 (n + 1)

end

end A257120.P1122188676984410846

/-! ## A257120.P5110390571676005883

`A257475(n+1)+A196199(A257478(n+1)²)`
-/

namespace A257120.P5110390571676005883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257475 (n + 1) + A196199 (A257478 (n + 1) ^ 2).toNat

end

end A257120.P5110390571676005883

/-!
# A257121: Numbers m with 9*m + 3*r - 1 and 9*m + 3*r + 1 twin prime for some r = 0,1,2.

The programs for A257121, there is no canonical definition to state claims against.
-/

/-! ## A257121.P9026957655821393617

`record[round(A117563(n+1)/3)]`
-/

namespace A257121.P9026957655821393617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A117563 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257121.P9026957655821393617

/-! ## A257121.P10157921464385732318

`record[A004523(A002822(A126759(n)))]`
-/

namespace A257121.P10157921464385732318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A002822 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257121.P10157921464385732318

/-! ## A257121.P8136602244481219282

`record[A002264(A167379(A133310(n)))]`
-/

namespace A257121.P8136602244481219282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A167379 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257121.P8136602244481219282

/-! ## A257121.P16669052221986904441

`record[A002264(A167379(A324346(n)))]`
-/

namespace A257121.P16669052221986904441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A167379 (A324346 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257121.P16669052221986904441

/-! ## A257121.P8993625845866537822

`record[A002264(A167379(A003963(n+1)))]`
-/

namespace A257121.P8993625845866537822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A167379 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257121.P8993625845866537822

/-! ## A257121.P4157054808087543675

`record[A002264(A167379(A225395(n+1)))]`
-/

namespace A257121.P4157054808087543675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A167379 (A225395 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257121.P4157054808087543675

/-! ## A257121.P7847186083608373310

`record[A004523(A008611(A102551(n+1)))]`
-/

namespace A257121.P7847186083608373310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A008611 (A102551 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257121.P7847186083608373310

/-! ## A257121.P12823740625795806328

`A004523(A002822(n+1)%A104735(n+1))`
-/

namespace A257121.P12823740625795806328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (Int.tmod (A002822 (n + 1)) (A104735 (n + 1))).toNat

end

end A257121.P12823740625795806328

/-! ## A257121.P14970077066523177619

`A004523(A002822(n+1))%A335277(n+1)`
-/

namespace A257121.P14970077066523177619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004523 (A002822 (n + 1)).toNat) (A335277 (n + 1))

end

end A257121.P14970077066523177619

/-!
# A257124: Initial members of prime septuplets.

The programs for A257124, there is no canonical definition to state claims against.
-/

/-! ## A257124.P1720241320232629301

`∪[A022009(n+1), A022010(n+1)]`
-/

namespace A257124.P1720241320232629301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257124.P1720241320232629301

/-! ## A257124.P17196164984821319716

`∪[A022010(n+1), 210*A182387(n+1)+11]`
-/

namespace A257124.P17196164984821319716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  210 * A182387 (n + 1) + 11

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257124.P17196164984821319716

/-! ## A257124.P12200166880968918221

`∩[A079304(n+1), A276848(n+1)]`
-/

namespace A257124.P12200166880968918221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257124.P12200166880968918221

/-! ## A257124.P92365637700778814

`∩[A276848(n+1), A383393(n+1)]`
-/

namespace A257124.P92365637700778814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257124.P92365637700778814

/-!
# A257125: Initial members of prime 9-tuplets (or nonuplets).

The programs for A257125, there is no canonical definition to state claims against.
-/

/-! ## A257125.P1293928198042282108

`∩[A049481(n+1), A248199(n+1)]`
-/

namespace A257125.P1293928198042282108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257125.P1293928198042282108

/-!
# A257126: a(n) = A055938(n) - A005187(n).

The programs for A257126, the canonical program `A257126.P1146843161386362051` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257126 has offset 1).

The definition of A257126 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257126.P1146843161386362051

`A055938(n+1)-A005187(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A257126

/-- `A055938(n+1)-A005187(n+1)` -/
def P1146843161386362051.Spec : Prop :=
  ∀ n, P1146843161386362051.a n = A257126 (n + 1)

theorem P1146843161386362051.correct : P1146843161386362051.Spec := by
  intro n
  simp only [A257126, Nat.add_sub_cancel]

end A257126

/-! ## A257126.P12443711515044420949

`A100661(n+1)+n-∑[val(n+1, 2)]`
-/

namespace A257126.P12443711515044420949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (n + 1) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A257126.P12443711515044420949

namespace A257126

/-- `A100661(n+1)+n-∑[val(n+1, 2)]` -/
def P12443711515044420949.Spec : Prop :=
  ∀ n, P12443711515044420949.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P514778129734473985

`comp[a(floor(n/2))+n]-A283208(n)` with `a(0)=0, a(1)=0`
-/

namespace A257126.P514778129734473985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A283208 n

end

end A257126.P514778129734473985

namespace A257126

/-- `comp[a(floor(n/2))+n]-A283208(n)` -/
def P514778129734473985.Spec : Prop :=
  ∀ n, P514778129734473985.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P6469313552513301572

`A100661(n+1)+A048881(n)`
-/

namespace A257126.P6469313552513301572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (n + 1) + A048881 n

end

end A257126.P6469313552513301572

namespace A257126

/-- `A100661(n+1)+A048881(n)` -/
def P6469313552513301572.Spec : Prop :=
  ∀ n, P6469313552513301572.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P14679606199460020832

`comp[A005187(n)]-A005187(n+1)`
-/

namespace A257126.P14679606199460020832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A005187 (n + 1)

end

end A257126.P14679606199460020832

namespace A257126

/-- `comp[A005187(n)]-A005187(n+1)` -/
def P14679606199460020832.Spec : Prop :=
  ∀ n, P14679606199460020832.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P13486926101264959173

`A080468(n+2)+A048881(n)+1`
-/

namespace A257126.P13486926101264959173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (n + 2) + (A048881 n + 1)

end

end A257126.P13486926101264959173

namespace A257126

/-- `A080468(n+2)+A048881(n)+1` -/
def P13486926101264959173.Spec : Prop :=
  ∀ n, P13486926101264959173.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P9387834186540105282

`A055938(n+1)-∑[A001511(n+1)]`
-/

namespace A257126.P9387834186540105282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257126.P9387834186540105282

namespace A257126

/-- `A055938(n+1)-∑[A001511(n+1)]` -/
def P9387834186540105282.Spec : Prop :=
  ∀ n, P9387834186540105282.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P4915596297809364800

`A048881(n)+∑[2*A079559(n)-1]`
-/

namespace A257126.P4915596297809364800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079559 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257126.P4915596297809364800

namespace A257126

/-- `A048881(n)+∑[2*A079559(n)-1]` -/
def P4915596297809364800.Spec : Prop :=
  ∀ n, P4915596297809364800.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P11252611990149986134

`A048881(n)+n+1-2*A234016(n)`
-/

namespace A257126.P11252611990149986134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n + ((n + 1 : ℤ) - 2 * A234016 n)

end

end A257126.P11252611990149986134

namespace A257126

/-- `A048881(n)+n+1-2*A234016(n)` -/
def P11252611990149986134.Spec : Prop :=
  ∀ n, P11252611990149986134.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P6560919312135212067

`A000120(n+1)+A000120(A339451(n))`
-/

namespace A257126.P6560919312135212067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + A000120 (A339451 n).toNat

end

end A257126.P6560919312135212067

namespace A257126

/-- `A000120(n+1)+A000120(A339451(n))` -/
def P6560919312135212067.Spec : Prop :=
  ∀ n, P6560919312135212067.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P2826239368600316514

`A000120(n+1)+A055938(n+1)-A005843(n+1)`
-/

namespace A257126.P2826239368600316514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A055938 (n + 1) - A005843 (n + 1))

end

end A257126.P2826239368600316514

namespace A257126

/-- `A000120(n+1)+A055938(n+1)-A005843(n+1)` -/
def P2826239368600316514.Spec : Prop :=
  ∀ n, P2826239368600316514.a n = A257126 (n + 1)

theorem P2826239368600316514.correct : P2826239368600316514.Spec := by
  intro n
  simp only [A257126, Nat.add_sub_cancel, A257126.P2826239368600316514.a, A257126.P1146843161386362051.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A055938, A055938.P11436454756649086681.a, A045412, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A079559, A079559.P6833565121082423031.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257126

/-! ## A257126.P5380512550445780856

`A055938(n+1)+A155689(n+1)-A020965(n+1)`
-/

namespace A257126.P5380512550445780856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1) + (A155689 (n + 1) - A020965 (n + 1))

end

end A257126.P5380512550445780856

namespace A257126

/-- `A055938(n+1)+A155689(n+1)-A020965(n+1)` -/
def P5380512550445780856.Spec : Prop :=
  ∀ n, P5380512550445780856.a n = A257126 (n + 1)

theorem P5380512550445780856.correct : P5380512550445780856.Spec := by
  intro n
  simp only [A257126, Nat.add_sub_cancel, A257126.P5380512550445780856.a, A257126.P1146843161386362051.a, A005187, A005187.P3874015513960485494.a, A020965, A020965.P8785795445900425784.a, A055938, A055938.P11436454756649086681.a, A155689, A155689.P2139899322435435333.a, A045412, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A049472, A049472.P13396613520496134978.a, A079559, A079559.P6833565121082423031.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A257126

/-! ## A257126.P17662087748277865625

`A046699(n+2)+A046699(n+2)-A113474(n+1)`
-/

namespace A257126.P17662087748277865625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2) + (A046699 (n + 2) - A113474 (n + 1))

end

end A257126.P17662087748277865625

namespace A257126

/-- `A046699(n+2)+A046699(n+2)-A113474(n+1)` -/
def P17662087748277865625.Spec : Prop :=
  ∀ n, P17662087748277865625.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P2604033525690973312

`A007843(n+1)-A113474(n+1)`
-/

namespace A257126.P2604033525690973312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (n + 1) - A113474 (n + 1)

end

end A257126.P2604033525690973312

namespace A257126

/-- `A007843(n+1)-A113474(n+1)` -/
def P2604033525690973312.Spec : Prop :=
  ∀ n, P2604033525690973312.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P10582482563498795071

`A045412(n+1)-A101925(n+1)`
-/

namespace A257126.P10582482563498795071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045412 (n + 1) - A101925 (n + 1)

end

end A257126.P10582482563498795071

namespace A257126

/-- `A045412(n+1)-A101925(n+1)` -/
def P10582482563498795071.Spec : Prop :=
  ∀ n, P10582482563498795071.a n = A257126 (n + 1)

theorem P10582482563498795071.correct : P10582482563498795071.Spec := by
  intro n
  simp only [A257126, Nat.add_sub_cancel, A257126.P10582482563498795071.a, A257126.P1146843161386362051.a, A005187, A005187.P3874015513960485494.a, A045412, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A055938, A055938.P11436454756649086681.a, A101925, A101925.P9724492527127448858.a, A079559, A079559.P6833565121082423031.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257126

/-! ## A257126.P427503049899947641

`A007843(n+1)-(A011371(n+1)+1)`
-/

namespace A257126.P427503049899947641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (n + 1) - (A011371 (n + 1) + 1)

end

end A257126.P427503049899947641

namespace A257126

/-- `A007843(n+1)-(A011371(n+1)+1)` -/
def P427503049899947641.Spec : Prop :=
  ∀ n, P427503049899947641.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P3396174788855414689

`A080578(n+2)-(A005187(n+1)+2)`
-/

namespace A257126.P3396174788855414689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 2) - (A005187 (n + 1) + 2)

end

end A257126.P3396174788855414689

namespace A257126

/-- `A080578(n+2)-(A005187(n+1)+2)` -/
def P3396174788855414689.Spec : Prop :=
  ∀ n, P3396174788855414689.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P11231761783885275590

`A007843(n+1)-A005187(n+1)+n`
-/

namespace A257126.P11231761783885275590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (n + 1) - A005187 (n + 1) + (n : ℤ)

end

end A257126.P11231761783885275590

namespace A257126

/-- `A007843(n+1)-A005187(n+1)+n` -/
def P11231761783885275590.Spec : Prop :=
  ∀ n, P11231761783885275590.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P65243327705627032

`comp[A283208(n)]-A283208(n)`
-/

namespace A257126.P65243327705627032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A283208 n

end

end A257126.P65243327705627032

namespace A257126

/-- `comp[A283208(n)]-A283208(n)` -/
def P65243327705627032.Spec : Prop :=
  ∀ n, P65243327705627032.a n = A257126 (n + 1)

end A257126

/-! ## A257126.P14069292807073354712

`comp[a(floor(n/2))+n]-A011371(2*(n+1))` with `a(0)=0`
-/

namespace A257126.P14069292807073354712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A011371 (2 * (n + 1))

end

end A257126.P14069292807073354712

namespace A257126

/-- `comp[a(floor(n/2))+n]-A011371(2*(n+1))` -/
def P14069292807073354712.Spec : Prop :=
  ∀ n, P14069292807073354712.a n = A257126 (n + 1)

end A257126

/-!
# A257127: Initial members of prime 10-tuplets (or decaplets).

The programs for A257127, there is no canonical definition to state claims against.
-/

/-! ## A257127.P17867166735922917105

`∪[A027569(n+1), A027570(n+1)]`
-/

namespace A257127.P17867166735922917105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257127.P17867166735922917105

/-! ## A257127.P13291822864509621788

`∩[A257125(n+1)-2, A257125(n+1)]`
-/

namespace A257127.P13291822864509621788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257127.P13291822864509621788

/-!
# A257128: a(n) = the smallest number k such that A227362(k) = A009995(n).

The programs for A257128, there is no canonical definition to state claims against.
-/

/-! ## A257128.P18371066968465495673

`A086068(A263327(n+1))`
-/

namespace A257128.P18371066968465495673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A263327 (n + 1)).toNat

end

end A257128.P18371066968465495673

/-! ## A257128.P13577338112264590047

`A328447(A009995(n+1))`
-/

namespace A257128.P13577338112264590047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A009995 (n + 1)).toNat

end

end A257128.P13577338112264590047

/-! ## A257128.P8676598000992697453

`A328447(eq[n, A227362(n)])`
-/

namespace A257128.P8676598000992697453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257128.P8676598000992697453

/-! ## A257128.P10334047536451217038

`A328447(eq[n, A320485(A004186(n))])`
-/

namespace A257128.P10334047536451217038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A004186 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257128.P10334047536451217038

/-! ## A257128.P13274339555303704657

`A328447(eq[n, A355221(A137564(n))])`
-/

namespace A257128.P13274339555303704657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 (A137564 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257128.P13274339555303704657

/-! ## A257128.P11475922559566288956

`A328447(eq[n, A320485(A355221(n))])`
-/

namespace A257128.P11475922559566288956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A355221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257128.P11475922559566288956

/-! ## A257128.P13312794192280187029

`A328447(eq[n, A355221(A320486(n))])`
-/

namespace A257128.P13312794192280187029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 (A320486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257128.P13312794192280187029

/-! ## A257128.P2030022108550942956

`A328447(eq[n, A321802(A355221(n))])`
-/

namespace A257128.P2030022108550942956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A355221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257128.P2030022108550942956

/-!
# A257129: Initial members of prime 11-tuples.

The programs for A257129, there is no canonical definition to state claims against.
-/

/-! ## A257129.P8083285408565087889

`∪[A213646(n+1), A213647(n+1)]`
-/

namespace A257129.P8083285408565087889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257129.P8083285408565087889

/-!
# A257130: Where the difference A055938(n) - A005187(n) obtains record values; positions of records in A257126.

The programs for A257130, there is no canonical definition to state claims against.
-/

/-! ## A257130.P2769808095610499995

`A171429(A265069(n))`
-/

namespace A257130.P2769808095610499995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171429 (A265069 n).toNat

end

end A257130.P2769808095610499995

/-! ## A257130.P396055902467251111

`A276877(A259386(n+1)+1)`
-/

namespace A257130.P396055902467251111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276877 (A259386 (n + 1) + 1).toNat

end

end A257130.P396055902467251111

/-! ## A257130.P15730610894152180420

`record[A114225(2*n)-A025480(n)]`
-/

namespace A257130.P15730610894152180420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114225 (2 * n) - A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257130.P15730610894152180420

/-! ## A257130.P18126232051153908845

`∩[A283473(n+1), A385396(n+1)]`
-/

namespace A257130.P18126232051153908845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257130.P18126232051153908845

/-!
# A257132: a(n) = cpg(n, 3) * cpg(n, 4) * ... * cpg(n, n) where cpg(n, m) is the m-th n-th-order centered polygonal number.

The programs for A257132, there is no canonical definition to state claims against.
-/

/-! ## A257132.P3029185352137870788

`A232608(round(sqrt(n!)))`
-/

namespace A257132.P3029185352137870788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232608 (SequenceMachineLib.roundAway (Real.sqrt (Nat.factorial n : ℝ))).toNat

end

end A257132.P3029185352137870788

/-!
# A257133: a(n) = cpg(3, n) * cpg(4, n) * ... * cpg(n, n) where cpg(m, n) is the n-th m-th-order centered polygonal number.

The programs for A257133, there is no canonical definition to state claims against.
-/

/-! ## A257133.P3908403990516256409

`A238759(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A257133.P3908403990516256409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A238759 (a (n - 1)).toNat

end

end A257133.P3908403990516256409

/-!
# A257142: Triangle read by rows: T(n,m) = Sum_{k=0..n} C(k-1,m-1)*C(k,m-1)*C(n+k-1,n-k)/m.

The programs for A257142, there is no canonical definition to state claims against.
-/

/-! ## A257142.P17834415146747498429

`A089850(or(A125662(n), A157228(n+1)))`
-/

namespace A257142.P17834415146747498429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (Int.lor (A125662 n) (A157228 (n + 1))).toNat

end

end A257142.P17834415146747498429

/-! ## A257142.P14043613689650583757

`A089850(A157228((n+1)²)+A125662(n))`
-/

namespace A257142.P14043613689650583757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A157228 ((n + 1) ^ 2) + A125662 n).toNat

end

end A257142.P14043613689650583757

/-! ## A257142.P18384769945960205272

`A089850(A368413(2*n+1)+A125662(n))`
-/

namespace A257142.P18384769945960205272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A368413 (2 * n + 1) + A125662 n).toNat

end

end A257142.P18384769945960205272

/-!
# A257143: a(2*n) = 3*n if n>0, a(2*n + 1) = 2*n + 1, a(0) = 1.

The programs for A257143, the canonical program `A257143.P16077465447306700189` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257143 has offset 0).

The definition of A257143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257143.P16077465447306700189

`ogf((1+x+x^2+x^3+x^4)/(1-2x^2+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257143

/-- `ogf((1+x+x^2+x^3+x^4)/(1-2x^2+x^4))` -/
def P16077465447306700189.Spec : Prop :=
  ∀ n, P16077465447306700189.a n = A257143 n

theorem P16077465447306700189.correct : P16077465447306700189.Spec := by
  intro n
  simp only [A257143]

end A257143

/-! ## A257143.P14430625001700266998

`3/a(n-1)*C(n, 2)` with `a(0)=1, a(1)=1`
-/

namespace A257143.P14430625001700266998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 / a (n - 1) * (Nat.choose n 2 : ℚ)

end

end A257143.P14430625001700266998

namespace A257143

/-- `3/a(n-1)*C(n, 2)` -/
def P14430625001700266998.Spec : Prop :=
  ∀ n, P14430625001700266998.a n = (A257143 n : ℚ)

end A257143

/-! ## A257143.P13716387702229414557

`floor(C(n, a(n-1))/2+n)` with `a(0)=1`
-/

namespace A257143.P13716387702229414557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋

end

end A257143.P13716387702229414557

namespace A257143

/-- `floor(C(n, a(n-1))/2+n)` -/
def P13716387702229414557.Spec : Prop :=
  ∀ n, P13716387702229414557.a n = A257143 n

end A257143

/-! ## A257143.P13368682523627567564

`a(n-2)/(1-2/n)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A257143.P13368682523627567564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A257143.P13368682523627567564

namespace A257143

/-- `a(n-2)/(1-2/n)` -/
def P13368682523627567564.Spec : Prop :=
  ∀ n, P13368682523627567564.a n = (A257143 n : ℚ)

end A257143

/-! ## A257143.P14144520659833315245

`gcd(2, n)+a(n-2)+1` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A257143.P14144520659833315245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Nat.gcd 2 n + (a (n - 2) + 1)

end

end A257143.P14144520659833315245

namespace A257143

/-- `gcd(2, n)+a(n-2)+1` -/
def P14144520659833315245.Spec : Prop :=
  ∀ n, (P14144520659833315245.a n : ℤ) = A257143 n

end A257143

/-! ## A257143.P14868777029471766762

`a(n-2)+3-n%2` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A257143.P14868777029471766762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 2) + (3 - ((n % 2 : ℕ) : ℤ))

end

end A257143.P14868777029471766762

namespace A257143

/-- `a(n-2)+3-n%2` -/
def P14868777029471766762.Spec : Prop :=
  ∀ n, P14868777029471766762.a n = A257143 n

end A257143

/-! ## A257143.P5518947541648377695

`∑[a(n-2)+(-1)^n]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0`
-/

namespace A257143.P5518947541648377695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0] fun n f1 =>
  f1 (n - 2) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257143.P5518947541648377695

namespace A257143

/-- `∑[a(n-2)+(-1)^n]` -/
def P5518947541648377695.Spec : Prop :=
  ∀ n, P5518947541648377695.a n = A257143 n

end A257143

/-! ## A257143.P12865519238135088443

`floor(cosh(log(n*char[2*n]+2*n+1)))`
-/

namespace A257143.P12865519238135088443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((n * (if ∃ j, f1 j = n then 1 else 0) + (2 * n + 1) : ℕ) : ℝ))⌋

end

end A257143.P12865519238135088443

namespace A257143

/-- `floor(cosh(log(n*char[2*n]+2*n+1)))` -/
def P12865519238135088443.Spec : Prop :=
  ∀ n, P12865519238135088443.a n = A257143 n

end A257143

/-! ## A257143.P13883817154739057500

`floor(2*n+1-lcm(n, n+2)/(n+1))`
-/

namespace A257143.P13883817154739057500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) - (Nat.lcm n (n + 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A257143.P13883817154739057500

namespace A257143

/-- `floor(2*n+1-lcm(n, n+2)/(n+1))` -/
def P13883817154739057500.Spec : Prop :=
  ∀ n, P13883817154739057500.a n = A257143 n

end A257143

/-! ## A257143.P8134114970002858919

`abs(A280167(n))`
-/

namespace A257143.P8134114970002858919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280167 n|

end

end A257143.P8134114970002858919

namespace A257143

/-- `abs(A280167(n))` -/
def P8134114970002858919.Spec : Prop :=
  ∀ n, P8134114970002858919.a n = A257143 n

end A257143

/-! ## A257143.P8944250774417247500

`A184418(n)-n`
-/

namespace A257143.P8944250774417247500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 n - (n : ℤ)

end

end A257143.P8944250774417247500

namespace A257143

/-- `A184418(n)-n` -/
def P8944250774417247500.Spec : Prop :=
  ∀ n, P8944250774417247500.a n = A257143 n

end A257143

/-! ## A257143.P8053328016564398045

`ceil((A257088(n)+n)/2)`
-/

namespace A257143.P8053328016564398045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A257088 n + (n : ℤ) : ℚ) / 2⌉

end

end A257143.P8053328016564398045

namespace A257143

/-- `ceil((A257088(n)+n)/2)` -/
def P8053328016564398045.Spec : Prop :=
  ∀ n, P8053328016564398045.a n = A257143 n

end A257143

/-! ## A257143.P10165779881041609269

`A004277(n)-gcd(n, ∑[n])`
-/

namespace A257143.P10165779881041609269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A257143.P10165779881041609269

namespace A257143

/-- `A004277(n)-gcd(n, ∑[n])` -/
def P10165779881041609269.Spec : Prop :=
  ∀ n, P10165779881041609269.a n = A257143 n

end A257143

/-! ## A257143.P15857227558760524263

`A047209(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A257143.P15857227558760524263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A047209 n - a (n - 1)

end

end A257143.P15857227558760524263

namespace A257143

/-- `A047209(n)-a(n-1)` -/
def P15857227558760524263.Spec : Prop :=
  ∀ n, P15857227558760524263.a n = A257143 n

end A257143

/-! ## A257143.P17664415335076112203

`A134479(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A257143.P17664415335076112203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A134479 (n - 1) : ℚ) / a (n - 1)

end

end A257143.P17664415335076112203

namespace A257143

/-- `A134479(n-1)/a(n-1)` -/
def P17664415335076112203.Spec : Prop :=
  ∀ n, P17664415335076112203.a n = (A257143 n : ℚ)

end A257143

/-! ## A257143.P16469879890814703903

`A267528(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A257143.P16469879890814703903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267528 n - a (n - 1) + (n : ℤ)

end

end A257143.P16469879890814703903

namespace A257143

/-- `A267528(n)-a(n-1)+n` -/
def P16469879890814703903.Spec : Prop :=
  ∀ n, P16469879890814703903.a n = A257143 n

end A257143

/-! ## A257143.P4351076267338655411

`A045943(n-1)/a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A257143.P4351076267338655411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A045943 (n - 1) : ℚ) / a (n - 1)

end

end A257143.P4351076267338655411

namespace A257143

/-- `A045943(n-1)/a(n-1)` -/
def P4351076267338655411.Spec : Prop :=
  ∀ n, P4351076267338655411.a n = (A257143 n : ℚ)

end A257143

/-! ## A257143.P3191297678459273466

`comp[2*(n+1)]+1-A026741(n)`
-/

namespace A257143.P3191297678459273466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - A026741 n

end

end A257143.P3191297678459273466

namespace A257143

/-- `comp[2*(n+1)]+1-A026741(n)` -/
def P3191297678459273466.Spec : Prop :=
  ∀ n, P3191297678459273466.a n = A257143 n

end A257143

/-! ## A257143.P14622632199976573773

`A080512(A028310(n))`
-/

namespace A257143.P14622632199976573773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A028310 n).toNat

end

end A257143.P14622632199976573773

namespace A257143

/-- `A080512(A028310(n))` -/
def P14622632199976573773.Spec : Prop :=
  ∀ n, P14622632199976573773.a n = A257143 n

end A257143

/-! ## A257143.P7811006282966703534

`A080512(A000007(n)+n)`
-/

namespace A257143.P7811006282966703534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A000007 n + (n : ℤ)).toNat

end

end A257143.P7811006282966703534

namespace A257143

/-- `A080512(A000007(n)+n)` -/
def P7811006282966703534.Spec : Prop :=
  ∀ n, P7811006282966703534.a n = A257143 n

end A257143

/-!
# A257144: Numbers n not of the form x+y*x^2 for x>1 and y>0.

The programs for A257144, there is no canonical definition to state claims against.
-/

/-! ## A257144.P4647128811605706017

`lt[A163671(n+1), 3]+1`
-/

namespace A257144.P4647128811605706017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163671 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A257144.P4647128811605706017

/-! ## A257144.P9419989898631121830

`eq[2, A163671(A060000(n+1))]`
-/

namespace A257144.P9419989898631121830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163671 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257144.P9419989898631121830

/-! ## A257144.P7242899382901870869

`record[A103517(n)/A163671(n+1)]`
-/

namespace A257144.P7242899382901870869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A163671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257144.P7242899382901870869

/-! ## A257144.P9326703002381144155

`record[A265283(2*n)/A163671(n+1)]`
-/

namespace A257144.P9326703002381144155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265283 (2 * n) : ℚ) / (A163671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257144.P9326703002381144155

/-! ## A257144.P15595792345976894031

`lt[A163671(n*A304042(a(n-1))), 3]` with `a(0)=3`
-/

namespace A257144.P15595792345976894031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A163671 ((n : ℤ) * A304042 (f1 (n - 1)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A257144.P15595792345976894031

/-! ## A257144.P2789264473668716655

`record[A004277(n)/A163671(A060000(n+1))]`
-/

namespace A257144.P2789264473668716655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (A163671 (A060000 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257144.P2789264473668716655

/-! ## A257144.P12692426360426135700

`A160338(n+1)+eq[n+1, A103517(n)/A163671(n+1)]`
-/

namespace A257144.P12692426360426135700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A163671 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n : ℤ)

end

end A257144.P12692426360426135700

/-! ## A257144.P11037121762013164800

`eq[0, A178498(n+1)]+1`
-/

namespace A257144.P11037121762013164800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257144.P11037121762013164800

/-! ## A257144.P16680991923242963174

`record[A001057(A178498(n+1)+A005408(n))]`
-/

namespace A257144.P16680991923242963174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A178498 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257144.P16680991923242963174

/-!
# A257145: a(n) = 5 * floor( (n+2) / 5) - n with a(0) = 1.

The programs for A257145, the canonical program `A257145.P12255667364261543170` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257145 has offset 0).

The definition of A257145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257145.P12255667364261543170

`ogf((1-2x^2+x^4)/(1+x+x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257145

/-- `ogf((1-2x^2+x^4)/(1+x+x^2+x^3+x^4))` -/
def P12255667364261543170.Spec : Prop :=
  ∀ n, P12255667364261543170.a n = A257145 n

theorem P12255667364261543170.correct : P12255667364261543170.Spec := by
  intro n
  simp only [A257145]

end A257145

/-!
# A257146: Primitive non-solvable numbers: elements of A056866 not divisible by any earlier term.

The programs for A257146, there is no canonical definition to state claims against.
-/

/-! ## A257146.P544716758168381583

`filter[A216480(n+1), A030317(#)]`
-/

namespace A257146.P544716758168381583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030317 (f1 j).toNat = 1) n)

end

end A257146.P544716758168381583

/-!
# A257147: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257147, there is no canonical definition to state claims against.
-/

/-! ## A257147.P6631035840259823695

`A257154(∑[4*n]+1)`
-/

namespace A257147.P6631035840259823695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257147.P6631035840259823695

/-! ## A257147.P5903643406235048724

`record[A003982(n)*A257154(n+1)]`
-/

namespace A257147.P5903643406235048724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A257154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257147.P5903643406235048724

/-! ## A257147.P1437407696763914867

`record[gcd(A049581(n), A257154(n+1))]`
-/

namespace A257147.P1437407696763914867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A257154 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257147.P1437407696763914867

/-! ## A257147.P4865536370348761900

`or(A257154(A001844(n)), A278648(n))`
-/

namespace A257147.P4865536370348761900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257154 (A001844 n).toNat) (A278648 n)

end

end A257147.P4865536370348761900

/-! ## A257147.P16607628874090753781

`or(A257154(A001844(n)), A347440(n+1))`
-/

namespace A257147.P16607628874090753781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257154 (A001844 n).toNat) (A347440 (n + 1))

end

end A257147.P16607628874090753781

/-!
# A257148: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257148, there is no canonical definition to state claims against.
-/

/-! ## A257148.P12289916342911734101

`A257154(∑[n+2])`
-/

namespace A257148.P12289916342911734101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257148.P12289916342911734101

/-! ## A257148.P4965075411261826353

`record[A257154(abs(A201163(n)))]`
-/

namespace A257148.P4965075411261826353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257148.P4965075411261826353

/-! ## A257148.P15594127262579114397

`record[A257154(Δ[A003453(n+5)])]`
-/

namespace A257148.P15594127262579114397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257148.P15594127262579114397

/-! ## A257148.P3562538349561987082

`record[root(A257154(n+2), A004736(n+3))]`
-/

namespace A257148.P3562538349561987082
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257154 (n + 2) : ℝ) ^ (1 / (A004736 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257148.P3562538349561987082

/-! ## A257148.P15630991801800692244

`record[gcd(A238707(n+2), A257154(n+3))]`
-/

namespace A257148.P15630991801800692244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238707 (n + 2)) (A257154 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257148.P15630991801800692244

/-!
# A257149: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257149, there is no canonical definition to state claims against.
-/

/-! ## A257149.P5393149609033886912

`A257154(∑[n+3]+1)`
-/

namespace A257149.P5393149609033886912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257149.P5393149609033886912

/-! ## A257149.P833210471832661437

`A257154(A034856(n+2))+A025439(n)`
-/

namespace A257149.P833210471832661437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A034856 (n + 2)).toNat + A025439 n

end

end A257149.P833210471832661437

/-!
# A257150: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257150, there is no canonical definition to state claims against.
-/

/-! ## A257150.P10650236567440686394

`A257154(A141214(n+1))`
-/

namespace A257150.P10650236567440686394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A141214 (n + 1)).toNat

end

end A257150.P10650236567440686394

/-! ## A257150.P12362558880800458845

`A257154(A055998(n+2))`
-/

namespace A257150.P12362558880800458845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A055998 (n + 2)).toNat

end

end A257150.P12362558880800458845

/-! ## A257150.P8905722016525074505

`A257154(A155212(n)+5)`
-/

namespace A257150.P8905722016525074505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A155212 n + 5).toNat

end

end A257150.P8905722016525074505

/-! ## A257150.P14117585089316681497

`A257154(A056000(n)+7)`
-/

namespace A257150.P14117585089316681497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A056000 n + 7).toNat

end

end A257150.P14117585089316681497

/-! ## A257150.P17081589958173694950

`A257154(eq[5, A001404(n)])`
-/

namespace A257150.P17081589958173694950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257150.P17081589958173694950

/-!
# A257151: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257151, there is no canonical definition to state claims against.
-/

/-! ## A257151.P1618198308287530084

`A257154(eq[4, A193592(n)])`
-/

namespace A257151.P1618198308287530084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257151.P1618198308287530084

/-! ## A257151.P13857257691730546969

`A257154(Δ[A023545(n+1)])`
-/

namespace A257151.P13857257691730546969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (f1 (n + 1) - f1 n).toNat

end

end A257151.P13857257691730546969

/-! ## A257151.P13447905090295181163

`A257154(A155212(n+1)+4)`
-/

namespace A257151.P13447905090295181163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A155212 (n + 1) + 4).toNat

end

end A257151.P13447905090295181163

/-! ## A257151.P12916083679068067696

`A257154(eq[5, A200370(n+1)])`
-/

namespace A257151.P12916083679068067696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257151.P12916083679068067696

/-! ## A257151.P7287849599777953287

`A257154(eq[6, A225084(n+1)])`
-/

namespace A257151.P7287849599777953287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257151.P7287849599777953287

/-!
# A257152: Number of (n+2) X (6+2) 0..1 arrays with every 3 X 3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257152, there is no canonical definition to state claims against.
-/

/-! ## A257152.P9556673525219129362

`A257154(A052905(n+3))`
-/

namespace A257152.P9556673525219129362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A052905 (n + 3)).toNat

end

end A257152.P9556673525219129362

/-! ## A257152.P11596713782176519574

`A257154(eq[3, A219347(n)])`
-/

namespace A257152.P11596713782176519574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257152.P11596713782176519574

/-! ## A257152.P14004524814372863171

`A257154(eq[5, A193592(n)])`
-/

namespace A257152.P14004524814372863171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257152.P14004524814372863171

/-! ## A257152.P13239562959201535979

`A257154(A055998(n+4)-2)`
-/

namespace A257152.P13239562959201535979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A055998 (n + 4) - 2).toNat

end

end A257152.P13239562959201535979

/-! ## A257152.P15064678711246091687

`A257154(A000096(n+5)-4)`
-/

namespace A257152.P15064678711246091687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A000096 (n + 5) - 4).toNat

end

end A257152.P15064678711246091687

/-!
# A257153: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257153, there is no canonical definition to state claims against.
-/

/-! ## A257153.P17965360181119601479

`A257154(A055999(n+4))`
-/

namespace A257153.P17965360181119601479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A055999 (n + 4)).toNat

end

end A257153.P17965360181119601479

/-! ## A257153.P17621575578855678110

`A257154(eq[4, A219347(n)])`
-/

namespace A257153.P17621575578855678110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257153.P17621575578855678110

/-! ## A257153.P15394394518778902252

`A257154(eq[5, A332954(n)])`
-/

namespace A257153.P15394394518778902252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257153.P15394394518778902252

/-! ## A257153.P16689429009906248305

`A257154(eq[6, A193592(n)])`
-/

namespace A257153.P16689429009906248305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257153.P16689429009906248305

/-! ## A257153.P14692951056248529985

`A257154(A052905(n+4)-1)`
-/

namespace A257153.P14692951056248529985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A052905 (n + 4) - 1).toNat

end

end A257153.P14692951056248529985

/-!
# A257155: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257155, there is no canonical definition to state claims against.
-/

/-! ## A257155.P5925966446319826130

`A257154(∑[n+1]+2)`
-/

namespace A257155.P5925966446319826130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257155.P5925966446319826130

/-! ## A257155.P578022476182661986

`record[A257154(A112367(n)+2)]`
-/

namespace A257155.P578022476182661986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257155.P578022476182661986

/-! ## A257155.P14176443764653034856

`record[A010054(n)*A257154(n+2)]`
-/

namespace A257155.P14176443764653034856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A257154 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257155.P14176443764653034856

/-! ## A257155.P4151639087753563897

`record[root(A257154(n+2), A133819(n+1))]`
-/

namespace A257155.P4151639087753563897
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257154 (n + 2) : ℝ) ^ (1 / (A133819 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257155.P4151639087753563897

/-! ## A257155.P13946226698622109945

`record[root(A257154(n+3), A004736(n+1))]`
-/

namespace A257155.P13946226698622109945
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257154 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257155.P13946226698622109945

/-!
# A257156: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257156, there is no canonical definition to state claims against.
-/

/-! ## A257156.P14362487633082684715

`A257154(∑[n+2]+4)`
-/

namespace A257156.P14362487633082684715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A257156.P14362487633082684715

/-! ## A257156.P1080351309797701157

`A257154(A167614(n+1))+A025469(n)`
-/

namespace A257156.P1080351309797701157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A167614 (n + 1)).toNat + A025469 n

end

end A257156.P1080351309797701157

/-! ## A257156.P2844197344366143723

`A257154(A167614(n+1))+A185284(n)`
-/

namespace A257156.P2844197344366143723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A167614 (n + 1)).toNat + A185284 n

end

end A257156.P2844197344366143723

/-! ## A257156.P14437412622474533416

`A257154(A167614(n+1))+A192541(n)`
-/

namespace A257156.P14437412622474533416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A167614 (n + 1)).toNat + A192541 n

end

end A257156.P14437412622474533416

/-! ## A257156.P16776733864713583701

`lcm(A054977(n), A257154(A167614(n+1)))`
-/

namespace A257156.P16776733864713583701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A257154 (A167614 (n + 1)).toNat)

end

end A257156.P16776733864713583701

/-!
# A257157: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257157, there is no canonical definition to state claims against.
-/

/-! ## A257157.P7912810227610491392

`A257154(A141214(n)+7)`
-/

namespace A257157.P7912810227610491392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A141214 n + 7).toNat

end

end A257157.P7912810227610491392

/-! ## A257157.P17406599561492852260

`A257154(A052905(n)+9)`
-/

namespace A257157.P17406599561492852260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A052905 n + 9).toNat

end

end A257157.P17406599561492852260

/-! ## A257157.P3896259401532697881

`A257154(A055999(n)+10)`
-/

namespace A257157.P3896259401532697881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A055999 n + 10).toNat

end

end A257157.P3896259401532697881

/-! ## A257157.P9565619452906943879

`A257154(A167614(n+2)+1)`
-/

namespace A257157.P9565619452906943879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A167614 (n + 2) + 1).toNat

end

end A257157.P9565619452906943879

/-! ## A257157.P11915506281866619794

`A257154(eq[5, A131818(n+1)])`
-/

namespace A257157.P11915506281866619794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257157.P11915506281866619794

/-!
# A257158: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257158, there is no canonical definition to state claims against.
-/

/-! ## A257158.P18347294423260220792

`A257154(∑[n+4]+11)`
-/

namespace A257158.P18347294423260220792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A257158.P18347294423260220792

/-! ## A257158.P18424753734436069671

`A257154(A055998(n+2)+8)+A067255(A002445(2*(n+2)))`
-/

namespace A257158.P18424753734436069671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A055998 (n + 2) + 8).toNat + A067255 (A002445 (2 * (n + 2))).toNat

end

end A257158.P18424753734436069671

/-! ## A257158.P5666300232874275404

`A257154(A055998(n+2)+8)%A171260(A154729(3*n+1))`
-/

namespace A257158.P5666300232874275404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257154 (A055998 (n + 2) + 8).toNat) (A171260 (A154729 (3 * n + 1)).toNat)

end

end A257158.P5666300232874275404

/-!
# A257159: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257159, there is no canonical definition to state claims against.
-/

/-! ## A257159.P7600502956468556968

`A257154(A167499(n+4)+1)`
-/

namespace A257159.P7600502956468556968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A167499 (n + 4) + 1).toNat

end

end A257159.P7600502956468556968

/-! ## A257159.P15060190363484947359

`A257154(A000217(n+5)+6)`
-/

namespace A257159.P15060190363484947359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A000217 (n + 5) + 6).toNat

end

end A257159.P15060190363484947359

/-! ## A257159.P2935465962719418844

`A257154(A056000(n+1)+16)`
-/

namespace A257159.P2935465962719418844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A056000 (n + 1) + 16).toNat

end

end A257159.P2935465962719418844

/-! ## A257159.P13688737616491378936

`A257154(eq[7, A131818(n+1)])`
-/

namespace A257159.P13688737616491378936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257159.P13688737616491378936

/-! ## A257159.P7754137149590302031

`A257154(A055998(n+4)-(n-3))`
-/

namespace A257159.P7754137149590302031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A055998 (n + 4) - ((n : ℤ) - 3)).toNat

end

end A257159.P7754137149590302031

/-!
# A257160: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257160, there is no canonical definition to state claims against.
-/

/-! ## A257160.P458142896396203173

`A257154(eq[11, A066657(n)])`
-/

namespace A257160.P458142896396203173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257160.P458142896396203173

/-! ## A257160.P910667532918016201

`A257154(A000217(n+6)+7)`
-/

namespace A257160.P910667532918016201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A000217 (n + 6) + 7).toNat

end

end A257160.P910667532918016201

/-! ## A257160.P18129168899939898322

`A257154(A155212(n+2)+15)`
-/

namespace A257160.P18129168899939898322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (A155212 (n + 2) + 15).toNat

end

end A257160.P18129168899939898322

/-! ## A257160.P9306311700144982183

`A257154(eq[6, A002262(n)]+1)`
-/

namespace A257160.P9306311700144982183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A257160.P9306311700144982183

/-! ## A257160.P4833952705127562301

`A257154(eq[8, A131818(n+1)])`
-/

namespace A257160.P4833952705127562301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257160.P4833952705127562301

/-!
# A257161: The length of the period under Zagier-reduction of the principal indefinite quadratic binary form of discriminant D(n) = A079896(n).

The programs for A257161, there is no canonical definition to state claims against.
-/

/-! ## A257161.P13567172393540556292

`A317840(n+1)+A083890(A015236(n+2))`
-/

namespace A257161.P13567172393540556292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (n + 1) + A083890 (A015236 (n + 2)).toNat

end

end A257161.P13567172393540556292

/-!
# A257163: Primes of the form 3n^2 + 2.

The programs for A257163, there is no canonical definition to state claims against.
-/

/-! ## A257163.P3455274231264611228

`A027864(n%a(n-1))` with `a(0)=2`
-/

namespace A257163.P3455274231264611228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A027864 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A257163.P3455274231264611228

/-! ## A257163.P3059736909377714347

`∪[A007352(n+1), A027864(n+1)]`
-/

namespace A257163.P3059736909377714347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257163.P3059736909377714347

/-! ## A257163.P9546934040350638227

`A027864(abs(1-n)+1)%A053132(n+5)`
-/

namespace A257163.P9546934040350638227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027864 (|1 - (n : ℤ)| + 1).toNat) (A053132 (n + 5))

end

end A257163.P9546934040350638227

/-! ## A257163.P7592794706381183370

`A027864(A028310(n))-3*A000007(n)`
-/

namespace A257163.P7592794706381183370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027864 (A028310 n).toNat - 3 * A000007 n

end

end A257163.P7592794706381183370

/-! ## A257163.P4990774137730911349

`floor(A027864(A028310(n))/(A057428(n)+2))`
-/

namespace A257163.P4990774137730911349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027864 (A028310 n).toNat : ℚ) / (A057428 n + 2 : ℚ)⌋

end

end A257163.P4990774137730911349

/-! ## A257163.P16937162164949498311

`∩[A395567(n+1), A133146(n)]`
-/

namespace A257163.P16937162164949498311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257163.P16937162164949498311

/-! ## A257163.P3100811759552334578

`p?[3*n²+2]`
-/

namespace A257163.P3100811759552334578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A257163.P3100811759552334578

/-!
# A257164: Period 5 sequence: repeat [0, 2, 4, 1, 3].

The programs for A257164, the canonical program `A257164.P4121062866806671964` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257164 has offset 0).

The definition of A257164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257164.P4121062866806671964

`a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257164

/-- `a(n-5)` -/
def P4121062866806671964.Spec : Prop :=
  ∀ n, (P4121062866806671964.a n : ℤ) = A257164 n

theorem P4121062866806671964.correct : P4121062866806671964.Spec := by
  intro n
  simp only [A257164]

end A257164

/-!
# A257165: a(n+1) = a(n) + smallest nonzero (and unused) integer embedded in a(n) as a contiguous subchain.

The programs for A257165, there is no canonical definition to state claims against.
-/

/-! ## A257165.P234259347722951261

`A257350(A351870(n)+1)`
-/

namespace A257165.P234259347722951261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257350 (A351870 n + 1).toNat

end

end A257165.P234259347722951261

/-! ## A257165.P12937404716315395045

`A257350(∑[n^A339629(n)])`
-/

namespace A257165.P12937404716315395045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A339629 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257350 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A257165.P12937404716315395045

/-! ## A257165.P1324812123511677668

`A257350(∑[A339629(n)!²])`
-/

namespace A257165.P1324812123511677668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A339629 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257165.P1324812123511677668

/-! ## A257165.P7923474222036569718

`A109488(n)!*A257350(n+1)`
-/

namespace A257165.P7923474222036569718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A109488 n).toNat : ℤ) * A257350 (n + 1)

end

end A257165.P7923474222036569718

/-! ## A257165.P71936768215825191

`A257350(n+1)^A339629(n)!`
-/

namespace A257165.P71936768215825191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257350 (n + 1) ^ Nat.factorial (A339629 n).toNat

end

end A257165.P71936768215825191

/-!
# A257170: Expansion of (1 + x) * (1 + x^3) / (1 + x^4) in powers of x.

The programs for A257170, the canonical program `A257170.P4485062065731616265` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257170 has offset 0).

The definition of A257170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^3+x^4)/(1+x^4))` (program `A257170.P4485062065731616265`, by `A257170.P4485062065731616265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257170.P4485062065731616265

`ogf((1+x+x^3+x^4)/(1+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257170

/-- `ogf((1+x+x^3+x^4)/(1+x^4))` -/
def P4485062065731616265.Spec : Prop :=
  ∀ n, P4485062065731616265.a n = A257170 n

theorem P4485062065731616265.correct : P4485062065731616265.Spec := by
  intro n
  simp only [A257170]

end A257170

/-!
# A257171: Sum of numbers on n-th segment of Ulam's spiral.

The programs for A257171, the canonical program `A257171.P6199369511139285860` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257171 has offset 0).

The definition of A257171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257171.P6199369511139285860

`ogf((1+4x+x^2-8x^3+5x^4+9x^5-5x^6-3x^7+2x^8)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257171

/-- `ogf((1+4x+x^2-8x^3+5x^4+9x^5-5x^6-3x^7+2x^8)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P6199369511139285860.Spec : Prop :=
  ∀ n, P6199369511139285860.a n = A257171 n

theorem P6199369511139285860.correct : P6199369511139285860.Spec := by
  intro n
  simp only [A257171]

end A257171

/-! ## A257171.P14186307090277198213

`Δ[A000217(A267531(n)-A004275(n))]`
-/

namespace A257171.P14186307090277198213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A267531 n - A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257171.P14186307090277198213

namespace A257171

/-- `Δ[A000217(A267531(n)-A004275(n))]` -/
def P14186307090277198213.Spec : Prop :=
  ∀ n, P14186307090277198213.a n = A257171 n

end A257171

/-! ## A257171.P1183447133270398902

`Δ[A000217(A064796(n+1)-A109613(n))]`
-/

namespace A257171.P1183447133270398902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A064796 (n + 1) - A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257171.P1183447133270398902

namespace A257171

/-- `Δ[A000217(A064796(n+1)-A109613(n))]` -/
def P1183447133270398902.Spec : Prop :=
  ∀ n, P1183447133270398902.a n = A257171 n

end A257171

/-! ## A257171.P16417538328975364083

`Δ[A000217(A153152(floor(((n+1)/2)²)))]`
-/

namespace A257171.P16417538328975364083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A153152 ⌊((n + 1 : ℚ) / 2) ^ 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257171.P16417538328975364083

namespace A257171

/-- `Δ[A000217(A153152(floor(((n+1)/2)²)))]` -/
def P16417538328975364083.Spec : Prop :=
  ∀ n, P16417538328975364083.a n = A257171 n

end A257171

/-! ## A257171.P15656727684756946676

`Δ[A000124(A153152(A002620(n+1)))]`
-/

namespace A257171.P15656727684756946676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A153152 (A002620 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257171.P15656727684756946676

namespace A257171

/-- `Δ[A000124(A153152(A002620(n+1)))]` -/
def P15656727684756946676.Spec : Prop :=
  ∀ n, P15656727684756946676.a n = A257171 n

end A257171

/-! ## A257171.P15863115700505485545

`Δ[A000124(A267531(n)-A004275(n))]`
-/

namespace A257171.P15863115700505485545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A267531 n - A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257171.P15863115700505485545

namespace A257171

/-- `Δ[A000124(A267531(n)-A004275(n))]` -/
def P15863115700505485545.Spec : Prop :=
  ∀ n, P15863115700505485545.a n = A257171 n

end A257171

/-! ## A257171.P12047754107780774494

`Δ[A000124(A064796(n+1)-A109613(n))]`
-/

namespace A257171.P12047754107780774494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A064796 (n + 1) - A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257171.P12047754107780774494

namespace A257171

/-- `Δ[A000124(A064796(n+1)-A109613(n))]` -/
def P12047754107780774494.Spec : Prop :=
  ∀ n, P12047754107780774494.a n = A257171 n

end A257171

/-! ## A257171.P14000795889844102323

`Δ[A161680(A004116(n+1)-A267528(n))]`
-/

namespace A257171.P14000795889844102323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004116 (n + 1) - A267528 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257171.P14000795889844102323

namespace A257171

/-- `Δ[A161680(A004116(n+1)-A267528(n))]` -/
def P14000795889844102323.Spec : Prop :=
  ∀ n, P14000795889844102323.a n = A257171 n

end A257171

/-!
# A257174: a(n) = 4*n/3 if n = 3*k and n!=0, otherwise a(n) = n except a(0) = 1.

The programs for A257174, the canonical program `A257174.P5072874939289098305` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257174 has offset 0).

The definition of A257174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257174.P4727528353303679509

`ogf((1+x+2x^2+2x^3+2x^4+x^5+x^6)/(1-2x^3+x^6))`
-/

namespace A257174.P4727528353303679509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 2, 2, 1, 1] [1, 0, 0, -2, 0, 0, 1] n

end

end A257174.P4727528353303679509

namespace A257174

/-- `ogf((1+x+2x^2+2x^3+2x^4+x^5+x^6)/(1-2x^3+x^6))` -/
def P4727528353303679509.Spec : Prop :=
  ∀ n, P4727528353303679509.a n = A257174 n

end A257174

/-! ## A257174.P5072874939289098305

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=4, a(5)=5, a(6)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257174

/-- `2*a(n-3)-a(n-6)` -/
def P5072874939289098305.Spec : Prop :=
  ∀ n, P5072874939289098305.a n = A257174 n

theorem P5072874939289098305.correct : P5072874939289098305.Spec := by
  intro n
  simp only [A257174]

end A257174

/-! ## A257174.P3828083968404347308

`(-1)^n*A280057(n)`
-/

namespace A257174.P3828083968404347308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A280057 n

end

end A257174.P3828083968404347308

namespace A257174

/-- `(-1)^n*A280057(n)` -/
def P3828083968404347308.Spec : Prop :=
  ∀ n, P3828083968404347308.a n = A257174 n

end A257174

/-! ## A257174.P6541443895728430555

`n*a(n-3)/(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A257174.P6541443895728430555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  (n : ℚ) * a (n - 3) / ((n : ℤ) - 3 : ℚ)

end

end A257174.P6541443895728430555

namespace A257174

/-- `n*a(n-3)/(n-3)` -/
def P6541443895728430555.Spec : Prop :=
  ∀ n, P6541443895728430555.a n = (A257174 n : ℚ)

end A257174

/-! ## A257174.P10827332979611251732

`abs(A280057(n))`
-/

namespace A257174.P10827332979611251732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280057 n|

end

end A257174.P10827332979611251732

namespace A257174

/-- `abs(A280057(n))` -/
def P10827332979611251732.Spec : Prop :=
  ∀ n, P10827332979611251732.a n = A257174 n

end A257174

/-! ## A257174.P14656891753013363716

`A004277(n)-A186101(n)`
-/

namespace A257174.P14656891753013363716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A186101 n

end

end A257174.P14656891753013363716

namespace A257174

/-- `A004277(n)-A186101(n)` -/
def P14656891753013363716.Spec : Prop :=
  ∀ n, P14656891753013363716.a n = A257174 n

end A257174

/-! ## A257174.P15627356122133839438

`gcd(A000038(n), A280057(n))`
-/

namespace A257174.P15627356122133839438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A280057 n)

end

end A257174.P15627356122133839438

namespace A257174

/-- `gcd(A000038(n), A280057(n))` -/
def P15627356122133839438.Spec : Prop :=
  ∀ n, (P15627356122133839438.a n : ℤ) = A257174 n

end A257174

/-! ## A257174.P5867192405921422574

`lcm(A020985(n), A280057(n))`
-/

namespace A257174.P5867192405921422574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A280057 n)

end

end A257174.P5867192405921422574

namespace A257174

/-- `lcm(A020985(n), A280057(n))` -/
def P5867192405921422574.Spec : Prop :=
  ∀ n, (P5867192405921422574.a n : ℤ) = A257174 n

end A257174

/-! ## A257174.P10858298300233757921

`∑{d}[A280057(n), A000010(#)]`
-/

namespace A257174.P10858298300233757921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A257174.P10858298300233757921

namespace A257174

/-- `∑{d}[A280057(n), A000010(#)]` -/
def P10858298300233757921.Spec : Prop :=
  ∀ n, P10858298300233757921.a n = A257174 n

end A257174

/-! ## A257174.P7075962315421849698

`A319371(n+1)-A087508(n)`
-/

namespace A257174.P7075962315421849698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319371 (n + 1) - A087508 n

end

end A257174.P7075962315421849698

namespace A257174

/-- `A319371(n+1)-A087508(n)` -/
def P7075962315421849698.Spec : Prop :=
  ∀ n, P7075962315421849698.a n = A257174 n

end A257174

/-! ## A257174.P445120562588500420

`A008486(n)-(A186101(n)+n)`
-/

namespace A257174.P445120562588500420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - (A186101 n + (n : ℤ))

end

end A257174.P445120562588500420

namespace A257174

/-- `A008486(n)-(A186101(n)+n)` -/
def P445120562588500420.Spec : Prop :=
  ∀ n, P445120562588500420.a n = A257174 n

end A257174

/-! ## A257174.P8672499199519626874

`A066393(n)-(A051176(n)+A051176(n))`
-/

namespace A257174.P8672499199519626874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066393 n - (A051176 n + A051176 n)

end

end A257174.P8672499199519626874

namespace A257174

/-- `A066393(n)-(A051176(n)+A051176(n))` -/
def P8672499199519626874.Spec : Prop :=
  ∀ n, P8672499199519626874.a n = A257174 n

end A257174

/-! ## A257174.P11362041597166573963

`A257143(A004396(n))+n-A004396(n)`
-/

namespace A257174.P11362041597166573963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (A004396 n).toNat + ((n : ℤ) - A004396 n)

end

end A257174.P11362041597166573963

namespace A257174

/-- `A257143(A004396(n))+n-A004396(n)` -/
def P11362041597166573963.Spec : Prop :=
  ∀ n, P11362041597166573963.a n = A257174 n

end A257174

/-! ## A257174.P2925315205928910377

`A051176(n)-(A109044(n)-A066393(n))`
-/

namespace A257174.P2925315205928910377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n - (A109044 n - A066393 n)

end

end A257174.P2925315205928910377

namespace A257174

/-- `A051176(n)-(A109044(n)-A066393(n))` -/
def P2925315205928910377.Spec : Prop :=
  ∀ n, P2925315205928910377.a n = A257174 n

end A257174

/-! ## A257174.P10260214178975781621

`A307985(A144429(n+1)+2)+n`
-/

namespace A257174.P10260214178975781621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (A144429 (n + 1) + 2).toNat + (n : ℤ)

end

end A257174.P10260214178975781621

namespace A257174

/-- `A307985(A144429(n+1)+2)+n` -/
def P10260214178975781621.Spec : Prop :=
  ∀ n, P10260214178975781621.a n = A257174 n

end A257174

/-! ## A257174.P2262904565433073248

`A008619(n)+record[A186101(n)]-A186101(n)`
-/

namespace A257174.P2262904565433073248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A186101 n)

end

end A257174.P2262904565433073248

namespace A257174

/-- `A008619(n)+record[A186101(n)]-A186101(n)` -/
def P2262904565433073248.Spec : Prop :=
  ∀ n, P2262904565433073248.a n = A257174 n

end A257174

/-! ## A257174.P11087412149836162625

`lcm(2, A280057(2*n))/2`
-/

namespace A257174.P11087412149836162625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A280057 (2 * n)) : ℚ) / 2

end

end A257174.P11087412149836162625

namespace A257174

/-- `lcm(2, A280057(2*n))/2` -/
def P11087412149836162625.Spec : Prop :=
  ∀ n, P11087412149836162625.a n = (A257174 n : ℚ)

end A257174

/-! ## A257174.P14725993669807751990

`A066393(n)-A051176(2*n)`
-/

namespace A257174.P14725993669807751990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066393 n - A051176 (2 * n)

end

end A257174.P14725993669807751990

namespace A257174

/-- `A066393(n)-A051176(2*n)` -/
def P14725993669807751990.Spec : Prop :=
  ∀ n, P14725993669807751990.a n = A257174 n

end A257174

/-! ## A257174.P9140037437959580331

`A280057(2*n)/A040000(n)`
-/

namespace A257174.P9140037437959580331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280057 (2 * n) : ℚ) / (A040000 n : ℚ)

end

end A257174.P9140037437959580331

namespace A257174

/-- `A280057(2*n)/A040000(n)` -/
def P9140037437959580331.Spec : Prop :=
  ∀ n, P9140037437959580331.a n = (A257174 n : ℚ)

end A257174

/-! ## A257174.P11511581166118376578

`A184727(2*n+1)+A000007(n)`
-/

namespace A257174.P11511581166118376578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184727 (2 * n + 1) + A000007 n

end

end A257174.P11511581166118376578

namespace A257174

/-- `A184727(2*n+1)+A000007(n)` -/
def P11511581166118376578.Spec : Prop :=
  ∀ n, P11511581166118376578.a n = A257174 n

end A257174

/-!
# A257175: The smallest m such that the m-th triangular number is greater than or equal to half the n-th triangular number.

The programs for A257175, the canonical program `A257175.P16211347744140440260` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257175 has offset 0).

The definition of A257175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257175.P16211347744140440260

`ceil((sqrt(2*n²+2*n+1)-1)/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257175

/-- `ceil((sqrt(2*n²+2*n+1)-1)/2)` -/
def P16211347744140440260.Spec : Prop :=
  ∀ n, P16211347744140440260.a n = A257175 n

theorem P16211347744140440260.correct : P16211347744140440260.Spec := by
  intro n
  simp only [A257175]

end A257175

/-! ## A257175.P5624925284541307185

`round(sqrt(∑[gcd(n, n)]))`
-/

namespace A257175.P5624925284541307185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A257175.P5624925284541307185

namespace A257175

/-- `round(sqrt(∑[gcd(n, n)]))` -/
def P5624925284541307185.Spec : Prop :=
  ∀ n, P5624925284541307185.a n = A257175 n

end A257175

/-! ## A257175.P14107427423469951856

`round(sqrt(∑[lcm(n, n)]))`
-/

namespace A257175.P14107427423469951856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A257175.P14107427423469951856

namespace A257175

/-- `round(sqrt(∑[lcm(n, n)]))` -/
def P14107427423469951856.Spec : Prop :=
  ∀ n, P14107427423469951856.a n = A257175 n

end A257175

/-! ## A257175.P4761439495204170345

`round(sqrt(∑[or(n, n)]))`
-/

namespace A257175.P4761439495204170345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A257175.P4761439495204170345

namespace A257175

/-- `round(sqrt(∑[or(n, n)]))` -/
def P4761439495204170345.Spec : Prop :=
  ∀ n, P4761439495204170345.a n = A257175 n

end A257175

/-! ## A257175.P6910332816493590379

`round(sqrt(C(n+1, 2)))`
-/

namespace A257175.P6910332816493590379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (n + 1) 2 : ℝ))

end

end A257175.P6910332816493590379

namespace A257175

/-- `round(sqrt(C(n+1, 2)))` -/
def P6910332816493590379.Spec : Prop :=
  ∀ n, P6910332816493590379.a n = A257175 n

end A257175

/-! ## A257175.P14668936211127201237

`round(sqrt(n²-C(n, 2)))`
-/

namespace A257175.P14668936211127201237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) : ℝ))

end

end A257175.P14668936211127201237

namespace A257175

/-- `round(sqrt(n²-C(n, 2)))` -/
def P14668936211127201237.Spec : Prop :=
  ∀ n, P14668936211127201237.a n = A257175 n

end A257175

/-! ## A257175.P1105482776162520097

`round((2*n+1)/sqrt(8))%(n+1)`
-/

namespace A257175.P1105482776162520097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / Real.sqrt (8 : ℝ))) (n + 1 : ℤ)

end

end A257175.P1105482776162520097

namespace A257175

/-- `round((2*n+1)/sqrt(8))%(n+1)` -/
def P1105482776162520097.Spec : Prop :=
  ∀ n, P1105482776162520097.a n = A257175 n

end A257175

/-! ## A257175.P15726822322306587840

`floor((∑[n]+a(n-1))^(1/2))` with `a(0)=0`
-/

namespace A257175.P15726822322306587840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A257175.P15726822322306587840

namespace A257175

/-- `floor((∑[n]+a(n-1))^(1/2))` -/
def P15726822322306587840.Spec : Prop :=
  ∀ n, P15726822322306587840.a n = A257175 n

end A257175

/-! ## A257175.P8854942534061970603

`n-floor(∑[n]/(a(n-1)+n+1))` with `a(0)=0`
-/

namespace A257175.P8854942534061970603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) + (n + 1 : ℤ) : ℚ)⌋

end

end A257175.P8854942534061970603

namespace A257175

/-- `n-floor(∑[n]/(a(n-1)+n+1))` -/
def P8854942534061970603.Spec : Prop :=
  ∀ n, P8854942534061970603.a n = A257175 n

end A257175

/-! ## A257175.P4872893773757689673

`floor(A136119(n+1)/2)`
-/

namespace A257175.P4872893773757689673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136119 (n + 1) : ℚ) / 2⌋

end

end A257175.P4872893773757689673

namespace A257175

/-- `floor(A136119(n+1)/2)` -/
def P4872893773757689673.Spec : Prop :=
  ∀ n, P4872893773757689673.a n = A257175 n

end A257175

/-! ## A257175.P13051752315485176632

`floor(A001954(n)/2-n)`
-/

namespace A257175.P13051752315485176632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001954 n : ℚ) / 2 - (n : ℚ)⌋

end

end A257175.P13051752315485176632

namespace A257175

/-- `floor(A001954(n)/2-n)` -/
def P13051752315485176632.Spec : Prop :=
  ∀ n, P13051752315485176632.a n = A257175 n

end A257175

/-! ## A257175.P11543333207732656627

`floor(sqrt(A081946(n+1)+n))`
-/

namespace A257175.P11543333207732656627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A081946 (n + 1) + (n : ℤ))

end

end A257175.P11543333207732656627

namespace A257175

/-- `floor(sqrt(A081946(n+1)+n))` -/
def P11543333207732656627.Spec : Prop :=
  ∀ n, P11543333207732656627.a n = A257175 n

end A257175

/-! ## A257175.P17873985369485941430

`floor(sqrt(A000217(n)+a(n-1)))` with `a(0)=0`
-/

namespace A257175.P17873985369485941430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.sqrt (A000217 n + a (n - 1))

end

end A257175.P17873985369485941430

namespace A257175

/-- `floor(sqrt(A000217(n)+a(n-1)))` -/
def P17873985369485941430.Spec : Prop :=
  ∀ n, P17873985369485941430.a n = A257175 n

end A257175

/-! ## A257175.P991145751088579844

`A049473(A288213(n+1)+n)`
-/

namespace A257175.P991145751088579844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A288213 (n + 1) + (n : ℤ)).toNat

end

end A257175.P991145751088579844

namespace A257175

/-- `A049473(A288213(n+1)+n)` -/
def P991145751088579844.Spec : Prop :=
  ∀ n, P991145751088579844.a n = A257175 n

end A257175

/-! ## A257175.P14943659554756134229

`n-A183138(A007069(n+1)-n)`
-/

namespace A257175.P14943659554756134229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A183138 (A007069 (n + 1) - (n : ℤ)).toNat

end

end A257175.P14943659554756134229

namespace A257175

/-- `n-A183138(A007069(n+1)-n)` -/
def P14943659554756134229.Spec : Prop :=
  ∀ n, P14943659554756134229.a n = A257175 n

end A257175

/-! ## A257175.P14696044858683478014

`A049474(A004641(n+1)+n)-A004641(n+1)`
-/

namespace A257175.P14696044858683478014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A004641 (n + 1) + (n : ℤ)).toNat - A004641 (n + 1)

end

end A257175.P14696044858683478014

namespace A257175

/-- `A049474(A004641(n+1)+n)-A004641(n+1)` -/
def P14696044858683478014.Spec : Prop :=
  ∀ n, P14696044858683478014.a n = A257175 n

end A257175

/-! ## A257175.P16838395427359013519

`A110654(A001953(n))`
-/

namespace A257175.P16838395427359013519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001953 n).toNat

end

end A257175.P16838395427359013519

namespace A257175

/-- `A110654(A001953(n))` -/
def P16838395427359013519.Spec : Prop :=
  ∀ n, P16838395427359013519.a n = A257175 n

end A257175

/-! ## A257175.P14990453388993034238

`∑[char[A049473(2*n+1)]]`
-/

namespace A257175.P14990453388993034238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257175.P14990453388993034238

namespace A257175

/-- `∑[char[A049473(2*n+1)]]` -/
def P14990453388993034238.Spec : Prop :=
  ∀ n, (P14990453388993034238.a n : ℤ) = A257175 n

end A257175

/-! ## A257175.P14081732928579004152

`A004526(A001953(n)+1)`
-/

namespace A257175.P14081732928579004152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001953 n + 1).toNat

end

end A257175.P14081732928579004152

namespace A257175

/-- `A004526(A001953(n)+1)` -/
def P14081732928579004152.Spec : Prop :=
  ∀ n, P14081732928579004152.a n = A257175 n

end A257175

/-!
# A257177: Number of partitions of n into 2 or 3 primes.

The programs for A257177, there is no canonical definition to state claims against.
-/

/-! ## A257177.P4142469817653528485

`A071335(n+1)-char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A257177.P4142469817653528485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257177.P4142469817653528485

/-! ## A257177.P8752092862325864630

`A071335(n+1)-Δ[A230980(n)]`
-/

namespace A257177.P8752092862325864630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - (f1 (n + 1) - f1 n)

end

end A257177.P8752092862325864630

/-! ## A257177.P2419679152726556137

`A068307(n+1)+A061358(n+1)`
-/

namespace A257177.P2419679152726556137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (n + 1) + A061358 (n + 1)

end

end A257177.P2419679152726556137

/-! ## A257177.P8637592297270924088

`A071335(n+1)-A010051(n+1)`
-/

namespace A257177.P8637592297270924088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - A010051 (n + 1)

end

end A257177.P8637592297270924088

/-! ## A257177.P14329985316376006280

`A071335(n+1)-char[Δ[A166333(n)]]`
-/

namespace A257177.P14329985316376006280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257177.P14329985316376006280

/-! ## A257177.P6970047062786524126

`A071335(n+1)-char[record[A033883(n)]]`
-/

namespace A257177.P6970047062786524126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257177.P6970047062786524126

/-! ## A257177.P16478532499330588713

`A071335(n+1)-char[record[A037225(n)]]`
-/

namespace A257177.P16478532499330588713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257177.P16478532499330588713

/-! ## A257177.P9042646620290414513

`A071335(n+1)-A083339(2*(n+1))`
-/

namespace A257177.P9042646620290414513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - A083339 (2 * (n + 1))

end

end A257177.P9042646620290414513

/-! ## A257177.P4151156246671206776

`A071335(n+1)-char[record[A000010(n+1)]]`
-/

namespace A257177.P4151156246671206776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257177.P4151156246671206776

/-! ## A257177.P17017821247218993136

`A071335(n+1)-char[A000040(n+1)-1]`
-/

namespace A257177.P17017821247218993136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257177.P17017821247218993136

/-!
# A257178: Number of 3-Motzkin paths of length n with no level steps at odd level.

The programs for A257178, there is no canonical definition to state claims against.
-/

/-! ## A257178.P8869073756222257030

`A257290(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A257178.P8869073756222257030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257290 n + 3 * a (n - 1)

end

end A257178.P8869073756222257030

/-! ## A257178.P10518292460221400171

`A222247(A257363(n))`
-/

namespace A257178.P10518292460221400171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A257363 n).toNat

end

end A257178.P10518292460221400171

/-! ## A257178.P9803452232157290253

`A257363(A073788(n))`
-/

namespace A257178.P9803452232157290253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257363 (A073788 n).toNat

end

end A257178.P9803452232157290253

/-!
# A257179: Expansion of (1 + x^5) / ((1 - x) * (1 + x^4)) in powers of x.

The programs for A257179, the canonical program `A257179.P15394281340330029019` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257179 has offset 0).

The definition of A257179 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^5)/(1-x+x^4-x^5))` (program `A257179.P15394281340330029019`, by `A257179.P15394281340330029019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257179.P15394281340330029019

`ogf((1+x^5)/(1-x+x^4-x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257179

/-- `ogf((1+x^5)/(1-x+x^4-x^5))` -/
def P15394281340330029019.Spec : Prop :=
  ∀ n, P15394281340330029019.a n = A257179 n

theorem P15394281340330029019.correct : P15394281340330029019.Spec := by
  intro n
  simp only [A257179]

end A257179

/-!
# A257180: Triangle, read by rows, T(n,k) = t(n-k, k) where t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), and f(x) = x + 3.

The programs for A257180, the canonical program `A257180.P17348762899219033727` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257180 has offset 0).

The definition of A257180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257180.P17348762899219033727

`T(n-1,k)+T(n-1,k-1)+(row(n)+2-col(n))*T(n-1,k-1)+(col(n)+2)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257180

/-- `T(n-1,k)+T(n-1,k-1)+(row(n)+2-col(n))*T(n-1,k-1)+(col(n)+2)*T(n-1,k)` -/
def P17348762899219033727.Spec : Prop :=
  ∀ n, P17348762899219033727.a n = A257180 n

theorem P17348762899219033727.correct : P17348762899219033727.Spec := by
  intro n
  simp only [A257180]

end A257180

/-!
# A257181: Expansion of (1 - x) * (1 + x^4) / (1 + x^5) in powers of x.

The programs for A257181, the canonical program `A257181.P1376294380118690420` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257181 has offset 0).

The definition of A257181 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^4-x^5)/(1+x^5))` (program `A257181.P1376294380118690420`, by `A257181.P1376294380118690420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257181.P1376294380118690420

`ogf((1-x+x^4-x^5)/(1+x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257181

/-- `ogf((1-x+x^4-x^5)/(1+x^5))` -/
def P1376294380118690420.Spec : Prop :=
  ∀ n, P1376294380118690420.a n = A257181 n

theorem P1376294380118690420.correct : P1376294380118690420.Spec := by
  intro n
  simp only [A257181]

end A257181

/-!
# A257182: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257182, there is no canonical definition to state claims against.
-/

/-! ## A257182.P13121965530302177800

`A257189(∑[4*n]+1)`
-/

namespace A257182.P13121965530302177800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257182.P13121965530302177800

/-! ## A257182.P15027067451693539133

`record[gcd(A257189(n+1), A308179(n))]`
-/

namespace A257182.P15027067451693539133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257189 (n + 1)) (A308179 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257182.P15027067451693539133

/-! ## A257182.P10296230216317820911

`A257189(A001844(n))+A185203(n)`
-/

namespace A257182.P10296230216317820911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A001844 n).toNat + A185203 n

end

end A257182.P10296230216317820911

/-! ## A257182.P5772424132682281695

`A139553(n)*A257189(A001844(n))`
-/

namespace A257182.P5772424132682281695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A257189 (A001844 n).toNat

end

end A257182.P5772424132682281695

/-! ## A257182.P17326744204359569641

`lcm(A103957(n), A257189(A001844(n)))`
-/

namespace A257182.P17326744204359569641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103957 n) (A257189 (A001844 n).toNat)

end

end A257182.P17326744204359569641

/-!
# A257183: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257183, there is no canonical definition to state claims against.
-/

/-! ## A257183.P13034569799720571841

`A257189(∑[n+2])`
-/

namespace A257183.P13034569799720571841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257183.P13034569799720571841

/-! ## A257183.P9751685010183662792

`record[A257189(runs[A023533(n)])]`
-/

namespace A257183.P9751685010183662792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257183.P9751685010183662792

/-! ## A257183.P13942508861667122379

`A257189(A034856(n+1)+1)+A025439(n)`
-/

namespace A257183.P13942508861667122379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A034856 (n + 1) + 1).toNat + A025439 n

end

end A257183.P13942508861667122379

/-! ## A257183.P9480820795604938605

`A257189(A000096(n+1))+A007814(2*n+1)`
-/

namespace A257183.P9480820795604938605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A000096 (n + 1)).toNat + A007814 (2 * n + 1)

end

end A257183.P9480820795604938605

/-! ## A257183.P3374324584467228595

`record[A257189(A000096(val(n+1, 2)+1))]`
-/

namespace A257183.P3374324584467228595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257183.P3374324584467228595

/-!
# A257184: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257184, there is no canonical definition to state claims against.
-/

/-! ## A257184.P335463912512863751

`A257189(∑[n+3]+1)`
-/

namespace A257184.P335463912512863751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257184.P335463912512863751

/-! ## A257184.P10267522047348015751

`A257189(A034856(n+2))+A025439(n)`
-/

namespace A257184.P10267522047348015751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A034856 (n + 2)).toNat + A025439 n

end

end A257184.P10267522047348015751

/-! ## A257184.P2180686720101784579

`A257189(A034856(n+2))+A010892(3*n+2)`
-/

namespace A257184.P2180686720101784579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A034856 (n + 2)).toNat + A010892 (3 * n + 2)

end

end A257184.P2180686720101784579

/-!
# A257185: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257185, there is no canonical definition to state claims against.
-/

/-! ## A257185.P15100933865207807040

`A257189(A141214(n+1))`
-/

namespace A257185.P15100933865207807040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A141214 (n + 1)).toNat

end

end A257185.P15100933865207807040

/-! ## A257185.P5585558256458062737

`A257189(A055998(n+2))`
-/

namespace A257185.P5585558256458062737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A055998 (n + 2)).toNat

end

end A257185.P5585558256458062737

/-! ## A257185.P5728623726737596179

`A257189(A155212(n)+5)`
-/

namespace A257185.P5728623726737596179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A155212 n + 5).toNat

end

end A257185.P5728623726737596179

/-! ## A257185.P3642602798983801657

`A257189(A056000(n)+7)`
-/

namespace A257185.P3642602798983801657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A056000 n + 7).toNat

end

end A257185.P3642602798983801657

/-! ## A257185.P15529351698367695731

`A257189(Δ[A006416(n+2)])`
-/

namespace A257185.P15529351698367695731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (f1 (n + 1) - f1 n).toNat

end

end A257185.P15529351698367695731

/-!
# A257186: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257186, there is no canonical definition to state claims against.
-/

/-! ## A257186.P10218482543134211055

`A257189(Δ[A264443(n)])`
-/

namespace A257186.P10218482543134211055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (f1 (n + 1) - f1 n).toNat

end

end A257186.P10218482543134211055

/-! ## A257186.P10574336754453443140

`A257189(eq[2, A092921(n)])`
-/

namespace A257186.P10574336754453443140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257186.P10574336754453443140

/-! ## A257186.P5254674974501282953

`A257189(eq[4, A193592(n)])`
-/

namespace A257186.P5254674974501282953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257186.P5254674974501282953

/-! ## A257186.P12803071985653694735

`A257189(Δ[A023545(n+1)])`
-/

namespace A257186.P12803071985653694735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (f1 (n + 1) - f1 n).toNat

end

end A257186.P12803071985653694735

/-! ## A257186.P13735842789286008104

`A257189(eq[5, A200370(n+1)])`
-/

namespace A257186.P13735842789286008104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257186.P13735842789286008104

/-!
# A257187: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257187, there is no canonical definition to state claims against.
-/

/-! ## A257187.P8744572818286180905

`A257189(eq[3, A219347(n)])`
-/

namespace A257187.P8744572818286180905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257187.P8744572818286180905

/-! ## A257187.P10942249534172221004

`A257189(eq[5, A193592(n)])`
-/

namespace A257187.P10942249534172221004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257187.P10942249534172221004

/-! ## A257187.P13653658492809336153

`A257189(A055998(n+4)-2)`
-/

namespace A257187.P13653658492809336153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A055998 (n + 4) - 2).toNat

end

end A257187.P13653658492809336153

/-! ## A257187.P9245687928719007030

`A257189(eq[6, A200370(n+1)])`
-/

namespace A257187.P9245687928719007030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257187.P9245687928719007030

/-! ## A257187.P2368491677126256910

`A257189(eq[8, A185782(n+1)])`
-/

namespace A257187.P2368491677126256910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257187.P2368491677126256910

/-!
# A257188: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257188, there is no canonical definition to state claims against.
-/

/-! ## A257188.P18145228455158216591

`A257189(eq[4, A219347(n)])`
-/

namespace A257188.P18145228455158216591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257188.P18145228455158216591

/-! ## A257188.P13413413854429766812

`A257189(eq[6, A193592(n)])`
-/

namespace A257188.P13413413854429766812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257188.P13413413854429766812

/-! ## A257188.P4767297726828708383

`A257189(Δ[A026054(n+4)])`
-/

namespace A257188.P4767297726828708383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (f1 (n + 1) - f1 n).toNat

end

end A257188.P4767297726828708383

/-! ## A257188.P263859399591710200

`A257189(eq[7, A200370(n+1)])`
-/

namespace A257188.P263859399591710200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257188.P263859399591710200

/-! ## A257188.P3805118442273435315

`A257189(A026054(n+5)-A026054(n+4))`
-/

namespace A257188.P3805118442273435315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A026054 (n + 5) - A026054 (n + 4)).toNat

end

end A257188.P3805118442273435315

/-!
# A257190: Number of (2+2) X (n+2) 0..1 arrays with every 3 X 3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257190, there is no canonical definition to state claims against.
-/

/-! ## A257190.P13338295360307362255

`A257189(∑[n+1]+2)`
-/

namespace A257190.P13338295360307362255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257190.P13338295360307362255

/-! ## A257190.P137798449021430847

`record[A010054(n)*A257189(n+2)]`
-/

namespace A257190.P137798449021430847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A257189 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257190.P137798449021430847

/-! ## A257190.P4235241308126463569

`record[root(A257189(n+2), A152842(n))]`
-/

namespace A257190.P4235241308126463569
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257189 (n + 2) : ℝ) ^ (1 / (A152842 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257190.P4235241308126463569

/-! ## A257190.P17371163477353296922

`record[root(A257189(n+2), A193632(n))]`
-/

namespace A257190.P17371163477353296922
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257189 (n + 2) : ℝ) ^ (1 / (A193632 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257190.P17371163477353296922

/-! ## A257190.P956143552219382521

`record[gcd(A244125(n), A257189(n+2))]`
-/

namespace A257190.P956143552219382521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244125 n) (A257189 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257190.P956143552219382521

/-!
# A257191: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257191, there is no canonical definition to state claims against.
-/

/-! ## A257191.P6760454069132785217

`A257189(∑[n+2]+4)`
-/

namespace A257191.P6760454069132785217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A257191.P6760454069132785217

/-! ## A257191.P16236699337776043870

`A257189(A167614(n+1))+A011744(n)`
-/

namespace A257191.P16236699337776043870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A167614 (n + 1)).toNat + A011744 n

end

end A257191.P16236699337776043870

/-! ## A257191.P12239082443954701200

`A257189(A167614(n+1))+A178798(n)`
-/

namespace A257191.P12239082443954701200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A167614 (n + 1)).toNat + A178798 n

end

end A257191.P12239082443954701200

/-! ## A257191.P11738347100246449464

`A015720(n)*A257189(A167614(n+1))`
-/

namespace A257191.P11738347100246449464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015720 n * A257189 (A167614 (n + 1)).toNat

end

end A257191.P11738347100246449464

/-! ## A257191.P15031541182227891524

`lcm(A087960(n), A257189(A167614(n+1)))`
-/

namespace A257191.P15031541182227891524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A257189 (A167614 (n + 1)).toNat)

end

end A257191.P15031541182227891524

/-!
# A257192: Number of (4+2) X (n+2) 0..1 arrays with every 3 X 3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257192, there is no canonical definition to state claims against.
-/

/-! ## A257192.P11348214776494542660

`A257189(A141214(n)+7)`
-/

namespace A257192.P11348214776494542660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A141214 n + 7).toNat

end

end A257192.P11348214776494542660

/-! ## A257192.P1091321404857534077

`A257189(A052905(n)+9)`
-/

namespace A257192.P1091321404857534077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A052905 n + 9).toNat

end

end A257192.P1091321404857534077

/-! ## A257192.P4170580309433711052

`A257189(A055999(n)+10)`
-/

namespace A257192.P4170580309433711052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A055999 n + 10).toNat

end

end A257192.P4170580309433711052

/-! ## A257192.P9268818757883306854

`A257189(A167614(n+2)+1)`
-/

namespace A257192.P9268818757883306854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A167614 (n + 2) + 1).toNat

end

end A257192.P9268818757883306854

/-! ## A257192.P7971386692394834822

`A257189(A166136(n+2)-2)`
-/

namespace A257192.P7971386692394834822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A166136 (n + 2) - 2).toNat

end

end A257192.P7971386692394834822

/-!
# A257193: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257193, there is no canonical definition to state claims against.
-/

/-! ## A257193.P7720117502083301946

`A257189(A167499(n+3))`
-/

namespace A257193.P7720117502083301946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A167499 (n + 3)).toNat

end

end A257193.P7720117502083301946

/-! ## A257193.P2729181534468650606

`A257189(A155212(n)+13)`
-/

namespace A257193.P2729181534468650606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A155212 n + 13).toNat

end

end A257193.P2729181534468650606

/-! ## A257193.P86242063410106492

`A257189(A056000(n)+15)`
-/

namespace A257193.P86242063410106492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A056000 n + 15).toNat

end

end A257193.P86242063410106492

/-! ## A257193.P13942753359651011305

`A257189(eq[7, A066657(n)])`
-/

namespace A257193.P13942753359651011305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257193.P13942753359651011305

/-! ## A257193.P373059386256582896

`A257189(A000096(n+3)+6)`
-/

namespace A257193.P373059386256582896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A000096 (n + 3) + 6).toNat

end

end A257193.P373059386256582896

/-!
# A257194: Number of (6+2) X (n+2) 0..1 arrays with every 3 X 3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257194, there is no canonical definition to state claims against.
-/

/-! ## A257194.P7863999923465685890

`A257189(A166136(n+4))`
-/

namespace A257194.P7863999923465685890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A166136 (n + 4)).toNat

end

end A257194.P7863999923465685890

/-! ## A257194.P3814434505055898380

`A257189(Δ[A264443(n)]+10)`
-/

namespace A257194.P3814434505055898380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (f1 (n + 1) - f1 n + 10).toNat

end

end A257194.P3814434505055898380

/-! ## A257194.P13919032987810757525

`A257189(A000217(n+5)+6)`
-/

namespace A257194.P13919032987810757525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A000217 (n + 5) + 6).toNat

end

end A257194.P13919032987810757525

/-! ## A257194.P14896174716957988508

`A257189(A246172(n+1)+20)`
-/

namespace A257194.P14896174716957988508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A246172 (n + 1) + 20).toNat

end

end A257194.P14896174716957988508

/-! ## A257194.P5759756789194490642

`A257189(eq[7, A131818(n+1)])`
-/

namespace A257194.P5759756789194490642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257194.P5759756789194490642

/-!
# A257195: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A257195, there is no canonical definition to state claims against.
-/

/-! ## A257195.P15040177724697671050

`A257189(eq[11, A066657(n)])`
-/

namespace A257195.P15040177724697671050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257195.P15040177724697671050

/-! ## A257195.P3171088921732660181

`A257189(A166136(n+5)+1)`
-/

namespace A257195.P3171088921732660181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A166136 (n + 5) + 1).toNat

end

end A257195.P3171088921732660181

/-! ## A257195.P11291285726232662080

`A257189(A000124(n+6)+6)`
-/

namespace A257195.P11291285726232662080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A000124 (n + 6) + 6).toNat

end

end A257195.P11291285726232662080

/-! ## A257195.P11367407066354128035

`A257189(A055998(n+4)+10)`
-/

namespace A257195.P11367407066354128035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (A055998 (n + 4) + 10).toNat

end

end A257195.P11367407066354128035

/-! ## A257195.P7312033314899752931

`A257189(eq[8, A131818(n+1)])`
-/

namespace A257195.P7312033314899752931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257195.P7312033314899752931

/-!
# A257196: Expansion of (1 + x) * (1 + x^5) / ((1 + x^2) * (1 + x^4)) in powers of x.

The programs for A257196, the canonical program `A257196.P4857990312089132018` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257196 has offset 0).

The definition of A257196 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^5+x^6)/(1+x^2+x^4+x^6))` (program `A257196.P4857990312089132018`, by `A257196.P4857990312089132018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257196.P4857990312089132018

`ogf((1+x+x^5+x^6)/(1+x^2+x^4+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257196

/-- `ogf((1+x+x^5+x^6)/(1+x^2+x^4+x^6))` -/
def P4857990312089132018.Spec : Prop :=
  ∀ n, P4857990312089132018.a n = A257196 n

theorem P4857990312089132018.correct : P4857990312089132018.Spec := by
  intro n
  simp only [A257196]

end A257196

/-!
# A257198: Number of permutations of length n having exactly one descent such that the first element of the permutation is an odd number.

The programs for A257198, the canonical program `A257198.P370772002246394196` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257198 has offset 1).

The definition of A257198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257198.P13633420145952730183

`ogf(2x^2/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A257198.P13633420145952730183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -3, 1, 3, -2] n

end

end A257198.P13633420145952730183

namespace A257198

/-- `ogf(2x^2/(1-3x+x^2+3x^3-2x^4))` -/
def P13633420145952730183.Spec : Prop :=
  ∀ n, P13633420145952730183.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P370772002246394196

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257198

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P370772002246394196.Spec : Prop :=
  ∀ n, P370772002246394196.a n = A257198 (n + 1)

theorem P370772002246394196.correct : P370772002246394196.Spec := by
  intro n
  simp only [A257198, Nat.add_sub_cancel]

end A257198

/-! ## A257198.P11728951784771598109

`A000295(n+1)-A000975(n)`
-/

namespace A257198.P11728951784771598109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1) - A000975 n

end

end A257198.P11728951784771598109

namespace A257198

/-- `A000295(n+1)-A000975(n)` -/
def P11728951784771598109.Spec : Prop :=
  ∀ n, P11728951784771598109.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P18443471303994258129

`2*floor((2*2^(n+1)-3*(n+1)-1)/6)`
-/

namespace A257198.P18443471303994258129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((2 * 2 ^ (n + 1) : ℤ) - (3 * (n + 1) : ℤ) - 1 : ℚ) / 6⌋

end

end A257198.P18443471303994258129

namespace A257198

/-- `2*floor((2*2^(n+1)-3*(n+1)-1)/6)` -/
def P18443471303994258129.Spec : Prop :=
  ∀ n, P18443471303994258129.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P3697037325052359157

`2^n+a(n-2)-2` with `a(0)=0, a(1)=0`
-/

namespace A257198.P3697037325052359157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (2 ^ n : ℤ) + (a (n - 2) - 2)

end

end A257198.P3697037325052359157

namespace A257198

/-- `2^n+a(n-2)-2` -/
def P3697037325052359157.Spec : Prop :=
  ∀ n, P3697037325052359157.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P1882879295304584556

`2^n-(2-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A257198.P1882879295304584556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (2 ^ n : ℤ) - (2 - a (n - 2))

end

end A257198.P1882879295304584556

namespace A257198

/-- `2^n-(2-a(n-2))` -/
def P1882879295304584556.Spec : Prop :=
  ∀ n, P1882879295304584556.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P7828537714406794680

`2*floor(a(n-1)+n/2)` with `a(0)=0`
-/

namespace A257198.P7828537714406794680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ⌊(a (n - 1) : ℚ) + (n : ℚ) / 2⌋

end

end A257198.P7828537714406794680

namespace A257198

/-- `2*floor(a(n-1)+n/2)` -/
def P7828537714406794680.Spec : Prop :=
  ∀ n, P7828537714406794680.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P16744125330987321907

`∑[floor(∑[2*a(n-1)]/3)]` with `a(0)=0, a(1)=2`
-/

namespace A257198.P16744125330987321907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257198.P16744125330987321907

namespace A257198

/-- `∑[floor(∑[2*a(n-1)]/3)]` -/
def P16744125330987321907.Spec : Prop :=
  ∀ n, P16744125330987321907.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P8086684412067463418

`2*a(n-1)-n%2+n` with `a(0)=0`
-/

namespace A257198.P8086684412067463418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - ((n % 2 : ℕ) : ℤ) + (n : ℤ)

end

end A257198.P8086684412067463418

namespace A257198

/-- `2*a(n-1)-n%2+n` -/
def P8086684412067463418.Spec : Prop :=
  ∀ n, P8086684412067463418.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P17533112272462448645

`∑[2*(a(n-1)+and(1, n+1))]` with `a(0)=0`
-/

namespace A257198.P17533112272462448645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * (f1 (n - 1) + Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257198.P17533112272462448645

namespace A257198

/-- `∑[2*(a(n-1)+and(1, n+1))]` -/
def P17533112272462448645.Spec : Prop :=
  ∀ n, (P17533112272462448645.a n : ℤ) = A257198 (n + 1)

end A257198

/-! ## A257198.P13695758974051756613

`∑[2*a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A257198.P13695758974051756613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A257198.P13695758974051756613

namespace A257198

/-- `∑[2*a(n-1)]+a(n-2)` -/
def P13695758974051756613.Spec : Prop :=
  ∀ n, (P13695758974051756613.a n : ℤ) = A257198 (n + 1)

end A257198

/-! ## A257198.P11231593315193311474

`2*(a(n-1)-1)+gcd(2, n)+n` with `a(0)=0`
-/

namespace A257198.P11231593315193311474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) - 1) + (Nat.gcd 2 n + n : ℤ)

end

end A257198.P11231593315193311474

namespace A257198

/-- `2*(a(n-1)-1)+gcd(2, n)+n` -/
def P11231593315193311474.Spec : Prop :=
  ∀ n, P11231593315193311474.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P11874645659943771781

`2*a(n-1)-((n*n)%2-n)` with `a(0)=0`
-/

namespace A257198.P11874645659943771781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - (((n * n % 2 : ℕ) : ℤ) - (n : ℤ))

end

end A257198.P11874645659943771781

namespace A257198

/-- `2*a(n-1)-((n*n)%2-n)` -/
def P11874645659943771781.Spec : Prop :=
  ∀ n, P11874645659943771781.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P4880924676390021587

`∑[∑[2*a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A257198.P4880924676390021587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257198.P4880924676390021587

namespace A257198

/-- `∑[∑[2*a(n-1)]-a(n-1)]` -/
def P4880924676390021587.Spec : Prop :=
  ∀ n, P4880924676390021587.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P4933686581702587542

`a(n-1)+2*(a(n-2)-1+n)` with `a(0)=0, a(1)=0`
-/

namespace A257198.P4933686581702587542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + 2 * (a (n - 2) - 1 + (n : ℤ))

end

end A257198.P4933686581702587542

namespace A257198

/-- `a(n-1)+2*(a(n-2)-1+n)` -/
def P4933686581702587542.Spec : Prop :=
  ∀ n, P4933686581702587542.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P1294643729621425364

`a(n-1)-2*(1-a(n-2)-n)` with `a(0)=0, a(1)=0`
-/

namespace A257198.P1294643729621425364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - 2 * (1 - a (n - 2) - (n : ℤ))

end

end A257198.P1294643729621425364

namespace A257198

/-- `a(n-1)-2*(1-a(n-2)-n)` -/
def P1294643729621425364.Spec : Prop :=
  ∀ n, P1294643729621425364.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P17321175500068454543

`∑[a(n-1)+a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A257198.P17321175500068454543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A257198.P17321175500068454543

namespace A257198

/-- `∑[a(n-1)+a(n-1)]+a(n-2)` -/
def P17321175500068454543.Spec : Prop :=
  ∀ n, (P17321175500068454543.a n : ℤ) = A257198 (n + 1)

end A257198

/-! ## A257198.P9671168052389077425

`a(n-1)+a(n-1)-(n+2)%2+n` with `a(0)=0`
-/

namespace A257198.P9671168052389077425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) - (((n + 2) % 2 : ℕ) : ℤ) + (n : ℤ))

end

end A257198.P9671168052389077425

namespace A257198

/-- `a(n-1)+a(n-1)-(n+2)%2+n` -/
def P9671168052389077425.Spec : Prop :=
  ∀ n, P9671168052389077425.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P4789241013278752083

`A084639(n)-n`
-/

namespace A257198.P4789241013278752083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n - (n : ℤ)

end

end A257198.P4789241013278752083

namespace A257198

/-- `A084639(n)-n` -/
def P4789241013278752083.Spec : Prop :=
  ∀ n, P4789241013278752083.a n = A257198 (n + 1)

end A257198

/-! ## A257198.P13198943960941846369

`∑[A167030(n+1)]`
-/

namespace A257198.P13198943960941846369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257198.P13198943960941846369

namespace A257198

/-- `∑[A167030(n+1)]` -/
def P13198943960941846369.Spec : Prop :=
  ∀ n, P13198943960941846369.a n = A257198 (n + 1)

end A257198

/-!
# A257199: a(n) = n*(n+1)*(n+2)*(n^2+2*n+17)/120.

The programs for A257199, the canonical program `A257199.P6765090371126902553` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257199 has offset 1).

The definition of A257199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257199.P6765090371126902553

`ogf((1-x+x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257199

/-- `ogf((1-x+x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P6765090371126902553.Spec : Prop :=
  ∀ n, P6765090371126902553.a n = A257199 (n + 1)

theorem P6765090371126902553.correct : P6765090371126902553.Spec := by
  intro n
  simp only [A257199, Nat.add_sub_cancel]

end A257199

/-! ## A257199.P37273670153753991

`(n+1)*(n+2)*(n+3)*((n+1)²+2*(n+1)+17)/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257199.P37273670153753991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * ((n + 1) ^ 2 + 2 * (n + 1) + 17) : ℚ) / 120

end

end A257199.P37273670153753991

namespace A257199

/-- `(n+1)*(n+2)*(n+3)*((n+1)²+2*(n+1)+17)/120` -/
def P37273670153753991.Spec : Prop :=
  ∀ n, P37273670153753991.a n = (A257199 (n + 1) : ℚ)

end A257199

/-! ## A257199.P2421630077434291828

`∑[∑[∑[1+C(n+1, 2)]]]`
-/

namespace A257199.P2421630077434291828
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.choose (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257199.P2421630077434291828

namespace A257199

/-- `∑[∑[∑[1+C(n+1, 2)]]]` -/
def P2421630077434291828.Spec : Prop :=
  ∀ n, (P2421630077434291828.a n : ℤ) = A257199 (n + 1)

end A257199

/-! ## A257199.P14235392752736427721

`∑[∑[∑[a(n-1)+n]]]` with `a(0)=1`
-/

namespace A257199.P14235392752736427721
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257199.P14235392752736427721

namespace A257199

/-- `∑[∑[∑[a(n-1)+n]]]` -/
def P14235392752736427721.Spec : Prop :=
  ∀ n, (P14235392752736427721.a n : ℤ) = A257199 (n + 1)

end A257199

/-! ## A257199.P16185889366260054594

`∑[∑[∑[1-∑[a(n-1)-1]]]]` with `a(0)=0`
-/

namespace A257199.P16185889366260054594
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f4 =>
  f4 (n - 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257199.P16185889366260054594

namespace A257199

/-- `∑[∑[∑[1-∑[a(n-1)-1]]]]` -/
def P16185889366260054594.Spec : Prop :=
  ∀ n, P16185889366260054594.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P7887621994659191398

`∑[A223718(n)+n]`
-/

namespace A257199.P7887621994659191398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257199.P7887621994659191398

namespace A257199

/-- `∑[A223718(n)+n]` -/
def P7887621994659191398.Spec : Prop :=
  ∀ n, P7887621994659191398.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P17377040582991138896

`∑[∑[∑[A000124(n)]]]`
-/

namespace A257199.P17377040582991138896
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257199.P17377040582991138896

namespace A257199

/-- `∑[∑[∑[A000124(n)]]]` -/
def P17377040582991138896.Spec : Prop :=
  ∀ n, P17377040582991138896.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P4615988646796903080

`A027658(n)+∑[∑[n]]`
-/

namespace A257199.P4615988646796903080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A257199.P4615988646796903080

namespace A257199

/-- `A027658(n)+∑[∑[n]]` -/
def P4615988646796903080.Spec : Prop :=
  ∀ n, P4615988646796903080.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P10199747995127377042

`A000292(n+1)+C(n+4, 5)`
-/

namespace A257199.P10199747995127377042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (Nat.choose (n + 4) 5 : ℤ)

end

end A257199.P10199747995127377042

namespace A257199

/-- `A000292(n+1)+C(n+4, 5)` -/
def P10199747995127377042.Spec : Prop :=
  ∀ n, P10199747995127377042.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P14742997411545878512

`A271870(n)-A293475(n)`
-/

namespace A257199.P14742997411545878512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271870 n - A293475 n

end

end A257199.P14742997411545878512

namespace A257199

/-- `A271870(n)-A293475(n)` -/
def P14742997411545878512.Spec : Prop :=
  ∀ n, P14742997411545878512.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P16680718553193739159

`A034263(n)-∑[A215862(n)]`
-/

namespace A257199.P16680718553193739159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257199.P16680718553193739159

namespace A257199

/-- `A034263(n)-∑[A215862(n)]` -/
def P16680718553193739159.Spec : Prop :=
  ∀ n, P16680718553193739159.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P7551028854286950614

`A101855(n+1)-A154286(n)`
-/

namespace A257199.P7551028854286950614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101855 (n + 1) - A154286 n

end

end A257199.P7551028854286950614

namespace A257199

/-- `A101855(n+1)-A154286(n)` -/
def P7551028854286950614.Spec : Prop :=
  ∀ n, P7551028854286950614.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P11281036445180041068

`A257890(n)-A051743(n+1)`
-/

namespace A257199.P11281036445180041068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n - A051743 (n + 1)

end

end A257199.P11281036445180041068

namespace A257199

/-- `A257890(n)-A051743(n+1)` -/
def P11281036445180041068.Spec : Prop :=
  ∀ n, P11281036445180041068.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P12784466132725212681

`A005584(n+1)-A278670(n+1)`
-/

namespace A257199.P12784466132725212681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1) - A278670 (n + 1)

end

end A257199.P12784466132725212681

namespace A257199

/-- `A005584(n+1)-A278670(n+1)` -/
def P12784466132725212681.Spec : Prop :=
  ∀ n, P12784466132725212681.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P4671873686561582432

`A000217(n)+A145127(n)+A000292(n)`
-/

namespace A257199.P4671873686561582432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A145127 n + A000292 n)

end

end A257199.P4671873686561582432

namespace A257199

/-- `A000217(n)+A145127(n)+A000292(n)` -/
def P4671873686561582432.Spec : Prop :=
  ∀ n, P4671873686561582432.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P1561897005364829518

`A227085(n+1)-(A000124(n)+A000096(n+1))`
-/

namespace A257199.P1561897005364829518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227085 (n + 1) - (A000124 n + A000096 (n + 1))

end

end A257199.P1561897005364829518

namespace A257199

/-- `A227085(n+1)-(A000124(n)+A000096(n+1))` -/
def P1561897005364829518.Spec : Prop :=
  ∀ n, P1561897005364829518.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P8223746884228804606

`∑[∑[A004006(n+1)]]`
-/

namespace A257199.P8223746884228804606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257199.P8223746884228804606

namespace A257199

/-- `∑[∑[A004006(n+1)]]` -/
def P8223746884228804606.Spec : Prop :=
  ∀ n, P8223746884228804606.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P13759093348513184141

`A027928(n+4)-(n+2)`
-/

namespace A257199.P13759093348513184141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 4) - (n + 2 : ℤ)

end

end A257199.P13759093348513184141

namespace A257199

/-- `A027928(n+4)-(n+2)` -/
def P13759093348513184141.Spec : Prop :=
  ∀ n, P13759093348513184141.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P188229979752898711

`A323228(n+1)-A145126(n)`
-/

namespace A257199.P188229979752898711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323228 (n + 1) - A145126 n

end

end A257199.P188229979752898711

namespace A257199

/-- `A323228(n+1)-A145126(n)` -/
def P188229979752898711.Spec : Prop :=
  ∀ n, P188229979752898711.a n = A257199 (n + 1)

end A257199

/-! ## A257199.P10705533270686205542

`A027660(n+1)-A000217(n+2)`
-/

namespace A257199.P10705533270686205542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027660 (n + 1) - A000217 (n + 2)

end

end A257199.P10705533270686205542

namespace A257199

/-- `A027660(n+1)-A000217(n+2)` -/
def P10705533270686205542.Spec : Prop :=
  ∀ n, P10705533270686205542.a n = A257199 (n + 1)

end A257199

