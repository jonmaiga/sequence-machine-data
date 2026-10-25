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
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A204800: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204800, there is no canonical definition to state claims against.
-/

/-! ## A204800.P6509044992045009994

`A299905(A018006(n))+A253231(n+1)`
-/

namespace A204800.P6509044992045009994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 (A018006 n).toNat + A253231 (n + 1)

end

end A204800.P6509044992045009994

/-! ## A204800.P16128218435779541081

`A299905(A007672(n+1))+A253231(n+1)`
-/

namespace A204800.P16128218435779541081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 (A007672 (n + 1)).toNat + A253231 (n + 1)

end

end A204800.P16128218435779541081

/-!
# A204804: Number of free tree-like convex polyominoes with n cells.

The programs for A204804, there is no canonical definition to state claims against.
-/

/-! ## A204804.P15039427520845765959

`A111654(A150440(n))`
-/

namespace A204804.P15039427520845765959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A150440 n).toNat

end

end A204804.P15039427520845765959

/-! ## A204804.P1564154931043968645

`A232746(A091148(n))`
-/

namespace A204804.P1564154931043968645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A091148 n).toNat

end

end A204804.P1564154931043968645

/-! ## A204804.P9952545894070712398

`A135304(A199694(n))`
-/

namespace A204804.P9952545894070712398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A199694 n).toNat

end

end A204804.P9952545894070712398

/-! ## A204804.P1584616945276907652

`A194303(A262442(n))`
-/

namespace A204804.P1584616945276907652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194303 (A262442 n).toNat

end

end A204804.P1584616945276907652

/-!
# A204808: E.g.f.: 1/(cos(x)*exp(-x) - sin(x)*exp(x)).

The programs for A204808, there is no canonical definition to state claims against.
-/

/-! ## A204808.P11463115630053520502

`A118243(∏{e}[18^n, #])-char[4]`
-/

namespace A204808.P11463115630053520502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118243 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204808.P11463115630053520502

/-!
# A204809: Number of skew-symmetric n X n matrices A = (a_ij) with entries from {-1,0,+1} such that a_wx a_yz + a_wy a_xz + a_wz a_xy = a_wx a_wy a_wz a_xy a_xz a_yz for all distinct w,x,y,z in {1..n}.

The programs for A204809, there is no canonical definition to state claims against.
-/

/-! ## A204809.P11096592221844149216

`A216366(A073307(n+1))`
-/

namespace A204809.P11096592221844149216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216366 (A073307 (n + 1)).toNat

end

end A204809.P11096592221844149216

/-!
# A204810: Langton's ant, symmetrical pattern.

The programs for A204810, there is no canonical definition to state claims against.
-/

/-! ## A204810.P2132407112437877573

`record[and(A154840(n), A280354(n+1))]`
-/

namespace A204810.P2132407112437877573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A154840 n) (A280354 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204810.P2132407112437877573

/-! ## A204810.P18310400144356841277

`lt[A013603(A120857(n+4)), A250120(n)]`
-/

namespace A204810.P18310400144356841277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (A120857 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204810.P18310400144356841277

/-! ## A204810.P478150092802211478

`lt[A013603(A120857(n+4)), A301688(n)]`
-/

namespace A204810.P478150092802211478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (A120857 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204810.P478150092802211478

/-! ## A204810.P17167205185170997548

`A333778(n+1)+A153998(A333687(n+4))`
-/

namespace A204810.P17167205185170997548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333778 (n + 1) + A153998 (A333687 (n + 4)).toNat

end

end A204810.P17167205185170997548

/-!
# A204814: Number of decompositions of 2n into an unordered sum of two Ramanujan primes.

The programs for A204814, there is no canonical definition to state claims against.
-/

/-! ## A204814.P208523066663566755

`A279024(A080533(Δ[floor((n-2)/3)²]+1))`
-/

namespace A204814.P208523066663566755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) / 3⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279024 (A080533 (f1 (n + 1) - f1 n + 1).toNat).toNat

end

end A204814.P208523066663566755

/-! ## A204814.P15203604504979013157

`A000045(A186716(n+2)*A186728(n+8))`
-/

namespace A204814.P15203604504979013157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A186716 (n + 2) * A186728 (n + 8)).toNat

end

end A204814.P15203604504979013157

/-! ## A204814.P3637555902853788742

`(n%A320509(A098859(n+1)))%A007862(n+2)`
-/

namespace A204814.P3637555902853788742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n : ℤ) (A320509 (A098859 (n + 1)).toNat)) (A007862 (n + 2))

end

end A204814.P3637555902853788742

/-! ## A204814.P5383947895422859478

`A008615(gcd(A005131(n), A119046(n+1)))`
-/

namespace A204814.P5383947895422859478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.gcd (A005131 n) (A119046 (n + 1)))

end

end A204814.P5383947895422859478

/-! ## A204814.P602697993526623838

`A286063(A164015(n))`
-/

namespace A204814.P602697993526623838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286063 (A164015 n).toNat

end

end A204814.P602697993526623838

/-!
# A204815: Final nonzero digit of n^n in base 5.

The programs for A204815, the canonical program `A204815.P8666352689272894956` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204815 has offset 0).

The definition of A204815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204815.P8666352689272894956

`(A277543(A000038(n)+n)^n)%5`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204815

/-- `(A277543(A000038(n)+n)^n)%5` -/
def P8666352689272894956.Spec : Prop :=
  ∀ n, P8666352689272894956.a n = A204815 n

theorem P8666352689272894956.correct : P8666352689272894956.Spec := by
  intro n
  simp only [A204815]

end A204815

/-! ## A204815.P6286350962531938337

`A277543(n^and(3, n))`
-/

namespace A204815.P6286350962531938337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n ^ Nat.land 3 n)

end

end A204815.P6286350962531938337

namespace A204815

/-- `A277543(n^and(3, n))` -/
def P6286350962531938337.Spec : Prop :=
  ∀ n, P6286350962531938337.a n = A204815 n

end A204815

/-! ## A204815.P3505292576784544643

`A277543(n^A010873(n))`
-/

namespace A204815.P3505292576784544643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A010873 n : ℤ))).toNat

end

end A204815.P3505292576784544643

namespace A204815

/-- `A277543(n^A010873(n))` -/
def P3505292576784544643.Spec : Prop :=
  ∀ n, P3505292576784544643.a n = A204815 n

end A204815

/-! ## A204815.P8545474773704976164

`gcd(A004151(A105543(n)), A034216(n))`
-/

namespace A204815.P8545474773704976164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004151 (A105543 n).toNat) (A034216 n)

end

end A204815.P8545474773704976164

namespace A204815

/-- `gcd(A004151(A105543(n)), A034216(n))` -/
def P8545474773704976164.Spec : Prop :=
  ∀ n, (P8545474773704976164.a n : ℤ) = A204815 n

end A204815

/-! ## A204815.P4728936052916948583

`gcd(A004184(A105543(n)), A143051(n))`
-/

namespace A204815.P4728936052916948583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004184 (A105543 n).toNat) (A143051 n)

end

end A204815.P4728936052916948583

namespace A204815

/-- `gcd(A004184(A105543(n)), A143051(n))` -/
def P4728936052916948583.Spec : Prop :=
  ∀ n, (P4728936052916948583.a n : ℤ) = A204815 n

end A204815

/-!
# A204816: Final nonzero digit of n^n in base 6.

The programs for A204816, the canonical program `A204816.P3898216723695764510` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204816 has offset 0).

The definition of A204816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204816.P3898216723695764510

`A277544(n^A134451(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A204816

/-- `A277544(n^A134451(n))` -/
def P3898216723695764510.Spec : Prop :=
  ∀ n, P3898216723695764510.a n = A204816 n

theorem P3898216723695764510.correct : P3898216723695764510.Spec := by
  intro n
  simp only [A204816]

end A204816

/-! ## A204816.P8787989107027885433

`A277544(A028310(n^A040001(n)))`
-/

namespace A204816.P8787989107027885433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A028310 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A040001 n : ℤ))).toNat).toNat

end

end A204816.P8787989107027885433

namespace A204816

/-- `A277544(A028310(n^A040001(n)))` -/
def P8787989107027885433.Spec : Prop :=
  ∀ n, P8787989107027885433.a n = A204816 n

end A204816

/-! ## A204816.P11903596616363475636

`A277544(A193739(∑[n])^A040001(n))`
-/

namespace A204816.P11903596616363475636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (SequenceMachineLib.roundAway ((A193739 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A040001 n : ℤ))).toNat

end

end A204816.P11903596616363475636

namespace A204816

/-- `A277544(A193739(∑[n])^A040001(n))` -/
def P11903596616363475636.Spec : Prop :=
  ∀ n, P11903596616363475636.a n = A204816 n

end A204816

/-! ## A204816.P8979972887076752642

`A277544(A028310(n)^Δ[A007494(n)])`
-/

namespace A204816.P8979972887076752642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A204816.P8979972887076752642

namespace A204816

/-- `A277544(A028310(n)^Δ[A007494(n)])` -/
def P8979972887076752642.Spec : Prop :=
  ∀ n, P8979972887076752642.a n = A204816 n

end A204816

/-! ## A204816.P12743455819974005308

`A277544(n^A072491(A195817(n)))`
-/

namespace A204816.P12743455819974005308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A072491 (A195817 n).toNat : ℤ))).toNat

end

end A204816.P12743455819974005308

namespace A204816

/-- `A277544(n^A072491(A195817(n)))` -/
def P12743455819974005308.Spec : Prop :=
  ∀ n, P12743455819974005308.a n = A204816 n

end A204816

/-!
# A204817: Final nonzero digit of n^n in base 7.

The programs for A204817, there is no canonical definition to state claims against.
-/

/-! ## A204817.P9255288243433299619

`A204693(A245552(∑[(n+2)*n²]-n)+n)`
-/

namespace A204817.P9255288243433299619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 (A245552 (∑ j ∈ Finset.range (n + 1), f1 j - n) + (n : ℤ)).toNat

end

end A204817.P9255288243433299619

/-! ## A204817.P11998337747352946339

`A204693(n)^A204688(∑[A011379(n)])`
-/

namespace A204817.P11998337747352946339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204693 n : ℚ) ^ (A204688 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A204817.P11998337747352946339

/-! ## A204817.P9521703060142630915

`A204693(n)+A010060(A002445(n+4))`
-/

namespace A204817.P9521703060142630915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 n + A010060 (A002445 (n + 4)).toNat

end

end A204817.P9521703060142630915

/-! ## A204817.P17728860566245464586

`or(A204690(A204658(2*n+3)), A204693(n))`
-/

namespace A204817.P17728860566245464586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204690 (A204658 (2 * n + 3)).toNat) (A204693 n)

end

end A204817.P17728860566245464586

/-!
# A204820: a(n) = -4*a(n-1)*A001505(n-2), with a(1)=8.

The programs for A204820, the canonical program `A204820.P5997574136943965456` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204820 has offset 1).

The definition of A204820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-4*a(n-1)*A001505(n-1)` (program `A204820.P5997574136943965456`, by `A204820.P5997574136943965456.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204820.P5997574136943965456

`-4*a(n-1)*A001505(n-1)` with `a(0)=8`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204820

/-- `-4*a(n-1)*A001505(n-1)` -/
def P5997574136943965456.Spec : Prop :=
  ∀ n, P5997574136943965456.a n = A204820 (n + 1)

theorem P5997574136943965456.correct : P5997574136943965456.Spec := by
  intro n
  simp only [A204820, Nat.add_sub_cancel]

end A204820

/-! ## A204820.P6896519448387184288

`4*A203778(n+1)`
-/

namespace A204820.P6896519448387184288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A203778 (n + 1)

end

end A204820.P6896519448387184288

namespace A204820

/-- `4*A203778(n+1)` -/
def P6896519448387184288.Spec : Prop :=
  ∀ n, P6896519448387184288.a n = A204820 (n + 1)

end A204820

/-!
# A204821: Number of skew-symmetric n X n matrices A = (a_ij) with entries from {-1,0,+1} such that a_wx a_yz + a_wy a_zx + a_wz a_xy = a_wx a_wy a_wz a_xy a_xz a_yz for all distinct w,x,y,z in {1..n}.

The programs for A204821, there is no canonical definition to state claims against.
-/

/-! ## A204821.P3731878190737284174

`A285760(A379204(n+1)+A001047(n))`
-/

namespace A204821.P3731878190737284174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285760 (A379204 (n + 1) + A001047 n).toNat

end

end A204821.P3731878190737284174

/-!
# A204822: Sum of divisors (A000203) of abundant numbers (A005101).

The programs for A204822, the canonical program `A204822.P986191513022326355` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204822 has offset 1).

The definition of A204822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204822.P986191513022326355

`A000203(A005101(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204822

/-- `A000203(A005101(n+1))` -/
def P986191513022326355.Spec : Prop :=
  ∀ n, P986191513022326355.a n = A204822 (n + 1)

theorem P986191513022326355.correct : P986191513022326355.Spec := by
  intro n
  simp only [A204822, Nat.add_sub_cancel]

end A204822

/-! ## A204822.P13490163344157091369

`A005101(n+1)+A205098(n+1)`
-/

namespace A204822.P13490163344157091369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) + A205098 (n + 1)

end

end A204822.P13490163344157091369

namespace A204822

/-- `A005101(n+1)+A205098(n+1)` -/
def P13490163344157091369.Spec : Prop :=
  ∀ n, P13490163344157091369.a n = A204822 (n + 1)

theorem P13490163344157091369.correct : P13490163344157091369.Spec := by
  intro n
  simp only [A204822, Nat.add_sub_cancel, A204822.P13490163344157091369.a, A204822.P986191513022326355.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A205098, A205098.P10471539786565330894.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204822

/-! ## A204822.P10981250528477377896

`A000203(A224907(n+1)/2)`
-/

namespace A204822.P10981250528477377896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat

end

end A204822.P10981250528477377896

namespace A204822

/-- `A000203(A224907(n+1)/2)` -/
def P10981250528477377896.Spec : Prop :=
  ∀ n, P10981250528477377896.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P13248026442008833449

`A000203(eq[0, A294935(n+1)]+1)`
-/

namespace A204822.P13248026442008833449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204822.P13248026442008833449

namespace A204822

/-- `A000203(eq[0, A294935(n+1)]+1)` -/
def P13248026442008833449.Spec : Prop :=
  ∀ n, P13248026442008833449.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P14431977354052191171

`A000203(eq[1, A060862(n+1)]+1)`
-/

namespace A204822.P14431977354052191171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204822.P14431977354052191171

namespace A204822

/-- `A000203(eq[1, A060862(n+1)]+1)` -/
def P14431977354052191171.Spec : Prop :=
  ∀ n, P14431977354052191171.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P11581223621267425446

`A000203(eq[1, A082551(n+1)]+1)`
-/

namespace A204822.P11581223621267425446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204822.P11581223621267425446

namespace A204822

/-- `A000203(eq[1, A082551(n+1)]+1)` -/
def P11581223621267425446.Spec : Prop :=
  ∀ n, P11581223621267425446.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P9002317905563099263

`A000203(lt[0, A318679(n+1)]+1)`
-/

namespace A204822.P9002317905563099263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A204822.P9002317905563099263

namespace A204822

/-- `A000203(lt[0, A318679(n+1)]+1)` -/
def P9002317905563099263.Spec : Prop :=
  ∀ n, P9002317905563099263.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P15347538532298135404

`A224907(n+1)+A033881(n+1)`
-/

namespace A204822.P15347538532298135404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224907 (n + 1) + A033881 (n + 1)

end

end A204822.P15347538532298135404

namespace A204822

/-- `A224907(n+1)+A033881(n+1)` -/
def P15347538532298135404.Spec : Prop :=
  ∀ n, P15347538532298135404.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P8053637417382734065

`A033881(n+1)+2*A005101(n+1)`
-/

namespace A204822.P8053637417382734065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033881 (n + 1) + 2 * A005101 (n + 1)

end

end A204822.P8053637417382734065

namespace A204822

/-- `A033881(n+1)+2*A005101(n+1)` -/
def P8053637417382734065.Spec : Prop :=
  ∀ n, P8053637417382734065.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P15458243003137485340

`2*A205098(n+1)-A033881(n+1)`
-/

namespace A204822.P15458243003137485340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205098 (n + 1) - A033881 (n + 1)

end

end A204822.P15458243003137485340

namespace A204822

/-- `2*A205098(n+1)-A033881(n+1)` -/
def P15458243003137485340.Spec : Prop :=
  ∀ n, P15458243003137485340.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P17489101823723979213

`A000203(lt[2*(n+1), A000203(n+1)]+1)`
-/

namespace A204822.P17489101823723979213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A204822.P17489101823723979213

namespace A204822

/-- `A000203(lt[2*(n+1), A000203(n+1)]+1)` -/
def P17489101823723979213.Spec : Prop :=
  ∀ n, P17489101823723979213.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P9199121638105651636

`A000203(eq[1, A294937(n+1)]+1)`
-/

namespace A204822.P9199121638105651636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204822.P9199121638105651636

namespace A204822

/-- `A000203(eq[1, A294937(n+1)]+1)` -/
def P9199121638105651636.Spec : Prop :=
  ∀ n, P9199121638105651636.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P17736192067150126019

`A245092(lt[n+1, A245092(n)])`
-/

namespace A204822.P17736192067150126019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A204822.P17736192067150126019

namespace A204822

/-- `A245092(lt[n+1, A245092(n)])` -/
def P17736192067150126019.Spec : Prop :=
  ∀ n, P17736192067150126019.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P11906017846647595237

`A245092(lt[1, A245092(n)-n])`
-/

namespace A204822.P11906017846647595237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A204822.P11906017846647595237

namespace A204822

/-- `A245092(lt[1, A245092(n)-n])` -/
def P11906017846647595237.Spec : Prop :=
  ∀ n, P11906017846647595237.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P6281855431771305093

`A000203(lt[2*n, A039653(n)])`
-/

namespace A204822.P6281855431771305093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A204822.P6281855431771305093

namespace A204822

/-- `A000203(lt[2*n, A039653(n)])` -/
def P6281855431771305093.Spec : Prop :=
  ∀ n, P6281855431771305093.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P15196202267507255663

`A000203(lt[n, A039653(n)/2])`
-/

namespace A204822.P15196202267507255663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A204822.P15196202267507255663

namespace A204822

/-- `A000203(lt[n, A039653(n)/2])` -/
def P15196202267507255663.Spec : Prop :=
  ∀ n, P15196202267507255663.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P18386045485353238274

`A000203(lt[n, A039653(n)-n])`
-/

namespace A204822.P18386045485353238274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A204822.P18386045485353238274

namespace A204822

/-- `A000203(lt[n, A039653(n)-n])` -/
def P18386045485353238274.Spec : Prop :=
  ∀ n, P18386045485353238274.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P5168319668480783645

`A000203(lt[1, A237588(n+1)]+1)`
-/

namespace A204822.P5168319668480783645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A204822.P5168319668480783645

namespace A204822

/-- `A000203(lt[1, A237588(n+1)]+1)` -/
def P5168319668480783645.Spec : Prop :=
  ∀ n, P5168319668480783645.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P5732775908097289335

`A242962(A005101(2*n+1-n))`
-/

namespace A204822.P5732775908097289335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242962 (A005101 (2 * n + 1 - n)).toNat

end

end A204822.P5732775908097289335

namespace A204822

/-- `A242962(A005101(2*n+1-n))` -/
def P5732775908097289335.Spec : Prop :=
  ∀ n, P5732775908097289335.a n = A204822 (n + 1)

end A204822

/-! ## A204822.P8545722071818533000

`A326065(A224907(n+1))`
-/

namespace A204822.P8545722071818533000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A224907 (n + 1)).toNat

end

end A204822.P8545722071818533000

namespace A204822

/-- `A326065(A224907(n+1))` -/
def P8545722071818533000.Spec : Prop :=
  ∀ n, P8545722071818533000.a n = A204822 (n + 1)

end A204822

/-!
# A204823: Sum of divisors (A000203) of deficient numbers (A005100).

The programs for A204823, the canonical program `A204823.P4919634814112807220` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204823 has offset 1).

The definition of A204823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204823.P4919634814112807220

`∑{d}[A005100(n+1), #]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204823

/-- `∑{d}[A005100(n+1), #]` -/
def P4919634814112807220.Spec : Prop :=
  ∀ n, (P4919634814112807220.a n : ℤ) = A204823 (n + 1)

theorem P4919634814112807220.correct : P4919634814112807220.Spec := by
  intro n
  simp only [A204823, Nat.add_sub_cancel]

end A204823

/-! ## A204823.P5071674665221115231

`A000203(A005100(n+1))`
-/

namespace A204823.P5071674665221115231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005100 (n + 1)).toNat

end

end A204823.P5071674665221115231

namespace A204823

/-- `A000203(A005100(n+1))` -/
def P5071674665221115231.Spec : Prop :=
  ∀ n, P5071674665221115231.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P3255275247116330852

`A000203(record[A125746(n+1)])`
-/

namespace A204823.P3255275247116330852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A204823.P3255275247116330852

namespace A204823

/-- `A000203(record[A125746(n+1)])` -/
def P3255275247116330852.Spec : Prop :=
  ∀ n, P3255275247116330852.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P4847568336592114840

`A000203(A225241(n+1)/2)`
-/

namespace A204823.P4847568336592114840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A225241 (n + 1) : ℚ) / 2)).toNat

end

end A204823.P4847568336592114840

namespace A204823

/-- `A000203(A225241(n+1)/2)` -/
def P4847568336592114840.Spec : Prop :=
  ∀ n, P4847568336592114840.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P10038067094909766199

`A000203(record[n-A082551(n+1)])`
-/

namespace A204823.P10038067094909766199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A204823.P10038067094909766199

namespace A204823

/-- `A000203(record[n-A082551(n+1)])` -/
def P10038067094909766199.Spec : Prop :=
  ∀ n, P10038067094909766199.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P1294057569328083090

`A000203(eq[1, A294934(n+1)]+1)`
-/

namespace A204823.P1294057569328083090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204823.P1294057569328083090

namespace A204823

/-- `A000203(eq[1, A294934(n+1)]+1)` -/
def P1294057569328083090.Spec : Prop :=
  ∀ n, P1294057569328083090.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P13095318552051651725

`A000203(lt[A336835(n+1), 1]+1)`
-/

namespace A204823.P13095318552051651725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A204823.P13095318552051651725

namespace A204823

/-- `A000203(lt[A336835(n+1), 1]+1)` -/
def P13095318552051651725.Spec : Prop :=
  ∀ n, P13095318552051651725.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P5266347482605303268

`A000203(lt[A337690(n+1), 1]+1)`
-/

namespace A204823.P5266347482605303268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A204823.P5266347482605303268

namespace A204823

/-- `A000203(lt[A337690(n+1), 1]+1)` -/
def P5266347482605303268.Spec : Prop :=
  ∀ n, P5266347482605303268.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P8825012970592849920

`A000203(lt[A341620(n+1), 1]+1)`
-/

namespace A204823.P8825012970592849920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A204823.P8825012970592849920

namespace A204823

/-- `A000203(lt[A341620(n+1), 1]+1)` -/
def P8825012970592849920.Spec : Prop :=
  ∀ n, P8825012970592849920.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P13267787177767429560

`A205099(n+1)+A005100(n+1)`
-/

namespace A204823.P13267787177767429560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205099 (n + 1) + A005100 (n + 1)

end

end A204823.P13267787177767429560

namespace A204823

/-- `A205099(n+1)+A005100(n+1)` -/
def P13267787177767429560.Spec : Prop :=
  ∀ n, P13267787177767429560.a n = A204823 (n + 1)

theorem P13267787177767429560.correct : P13267787177767429560.Spec := by
  intro n
  simp only [A204823, Nat.add_sub_cancel, A204823.P13267787177767429560.a, A204823.P4919634814112807220.f1, A204823.P4919634814112807220.a, A005100, A005100.P5902118993367235572.f1, A005100.P5902118993367235572.a, A205099, A205099.P16915794968075742101.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204823

/-! ## A204823.P12257076674078199394

`A225241(n+1)-A033884(n+1)`
-/

namespace A204823.P12257076674078199394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1) - A033884 (n + 1)

end

end A204823.P12257076674078199394

namespace A204823

/-- `A225241(n+1)-A033884(n+1)` -/
def P12257076674078199394.Spec : Prop :=
  ∀ n, P12257076674078199394.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P4800146079646608064

`A000203(comp[A023196(n+1)-1]+1)`
-/

namespace A204823.P4800146079646608064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A204823.P4800146079646608064

namespace A204823

/-- `A000203(comp[A023196(n+1)-1]+1)` -/
def P4800146079646608064.Spec : Prop :=
  ∀ n, P4800146079646608064.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P218534419166927457

`A205099(n+1)+record[A125746(n+1)]`
-/

namespace A204823.P218534419166927457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205099 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204823.P218534419166927457

namespace A204823

/-- `A205099(n+1)+record[A125746(n+1)]` -/
def P218534419166927457.Spec : Prop :=
  ∀ n, P218534419166927457.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P10605178322476988529

`A000203(record[(n+1)/A300826(n+1)])`
-/

namespace A204823.P10605178322476988529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A300826 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A204823.P10605178322476988529

namespace A204823

/-- `A000203(record[(n+1)/A300826(n+1)])` -/
def P10605178322476988529.Spec : Prop :=
  ∀ n, P10605178322476988529.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P13838552572013994046

`A033884(n+1)+2*A205099(n+1)`
-/

namespace A204823.P13838552572013994046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033884 (n + 1) + 2 * A205099 (n + 1)

end

end A204823.P13838552572013994046

namespace A204823

/-- `A033884(n+1)+2*A205099(n+1)` -/
def P13838552572013994046.Spec : Prop :=
  ∀ n, P13838552572013994046.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P6455670033591442950

`2*A005100(n+1)-A033884(n+1)`
-/

namespace A204823.P6455670033591442950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005100 (n + 1) - A033884 (n + 1)

end

end A204823.P6455670033591442950

namespace A204823

/-- `2*A005100(n+1)-A033884(n+1)` -/
def P6455670033591442950.Spec : Prop :=
  ∀ n, P6455670033591442950.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P35062249308823643

`A000203(lt[A000203(abs(1-n)+1), 2*n])`
-/

namespace A204823.P35062249308823643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A204823.P35062249308823643

namespace A204823

/-- `A000203(lt[A000203(abs(1-n)+1), 2*n])` -/
def P35062249308823643.Spec : Prop :=
  ∀ n, P35062249308823643.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P16336686890884955031

`A000203(lt[A000203(n+1), 2*(n+1)]+1)`
-/

namespace A204823.P16336686890884955031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A204823.P16336686890884955031

namespace A204823

/-- `A000203(lt[A000203(n+1), 2*(n+1)]+1)` -/
def P16336686890884955031.Spec : Prop :=
  ∀ n, P16336686890884955031.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P5772895361596291581

`A000203(lt[∑{d}[n, #], 2*n])`
-/

namespace A204823.P5772895361596291581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A204823.P5772895361596291581

namespace A204823

/-- `A000203(lt[∑{d}[n, #], 2*n])` -/
def P5772895361596291581.Spec : Prop :=
  ∀ n, P5772895361596291581.a n = A204823 (n + 1)

end A204823

/-! ## A204823.P8910958233938906909

`A000203(lt[A237588(n+1), 1]+1)`
-/

namespace A204823.P8910958233938906909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A204823.P8910958233938906909

namespace A204823

/-- `A000203(lt[A237588(n+1), 1]+1)` -/
def P8910958233938906909.Spec : Prop :=
  ∀ n, P8910958233938906909.a n = A204823 (n + 1)

end A204823

/-!
# A204825: Abundant numbers with even sum of divisors.

The programs for A204825, there is no canonical definition to state claims against.
-/

/-! ## A204825.P17134519675781667731

`record[A224907(n+1)/A020639(A033881(n+1))]`
-/

namespace A204825.P17134519675781667731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (n + 1) : ℚ) / (A020639 (A033881 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204825.P17134519675781667731

/-! ## A204825.P3512336812943417265

`record[A224907(n+1)/A020639(A204822(n+1))]`
-/

namespace A204825.P3512336812943417265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (n + 1) : ℚ) / (A020639 (A204822 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204825.P3512336812943417265

/-! ## A204825.P12150495825525934482

`filter[A028983(n+1), A294937(#)]`
-/

namespace A204825.P12150495825525934482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A204825.P12150495825525934482

/-! ## A204825.P4171761277899863164

`∩[A005101(n+1), A028983(n+1)]`
-/

namespace A204825.P4171761277899863164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204825.P4171761277899863164

/-! ## A204825.P4661687202190380830

`record[A005101(n+1)/A000034(A033881(n+1))]`
-/

namespace A204825.P4661687202190380830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005101 (n + 1) : ℚ) / (A000034 (A033881 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204825.P4661687202190380830

/-! ## A204825.P17504074824164036097

`record[A005101(n+1)/A000034(A204822(n+1))]`
-/

namespace A204825.P17504074824164036097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005101 (n + 1) : ℚ) / (A000034 (A204822 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204825.P17504074824164036097

/-! ## A204825.P16598905380481760695

`A083207(A293754(n+1)+1)`
-/

namespace A204825.P16598905380481760695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (A293754 (n + 1) + 1).toNat

end

end A204825.P16598905380481760695

/-!
# A204826: Deficient numbers with odd sum of divisors.

The programs for A204826, the canonical program `A204826.P13570114763670408631` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204826 has offset 1).

The definition of A204826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204826.P13363775053413769266

`record[A125746(A028982(n+1))]`
-/

namespace A204826.P13363775053413769266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A028982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204826.P13363775053413769266

namespace A204826

/-- `record[A125746(A028982(n+1))]` -/
def P13363775053413769266.Spec : Prop :=
  ∀ n, P13363775053413769266.a n = A204826 (n + 1)

end A204826

/-! ## A204826.P13570114763670408631

`filter[A028982(n+1), A294934(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204826

/-- `filter[A028982(n+1), A294934(#)]` -/
def P13570114763670408631.Spec : Prop :=
  ∀ n, P13570114763670408631.a n = A204826 (n + 1)

theorem P13570114763670408631.correct : P13570114763670408631.Spec := by
  intro n
  simp only [A204826, Nat.add_sub_cancel]

end A204826

/-! ## A204826.P13736015431153893771

`filter[A028982(n+1), A294935(#)]`
-/

namespace A204826.P13736015431153893771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A204826.P13736015431153893771

namespace A204826

/-- `filter[A028982(n+1), A294935(#)]` -/
def P13736015431153893771.Spec : Prop :=
  ∀ n, P13736015431153893771.a n = A204826 (n + 1)

end A204826

/-! ## A204826.P9458412724218379579

`record[A053866(n+1)*A125746(n+1)]`
-/

namespace A204826.P9458412724218379579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * A125746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204826.P9458412724218379579

namespace A204826

/-- `record[A053866(n+1)*A125746(n+1)]` -/
def P9458412724218379579.Spec : Prop :=
  ∀ n, P9458412724218379579.a n = A204826 (n + 1)

end A204826

/-! ## A204826.P6026114944962254331

`record[A125746(n+1)*A244611(n+1)]`
-/

namespace A204826.P6026114944962254331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1) * A244611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204826.P6026114944962254331

namespace A204826

/-- `record[A125746(n+1)*A244611(n+1)]` -/
def P6026114944962254331.Spec : Prop :=
  ∀ n, P6026114944962254331.a n = A204826 (n + 1)

end A204826

/-! ## A204826.P8884235716513738659

`record[A125746(n+1)%A337194(n+1)]`
-/

namespace A204826.P8884235716513738659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125746 (n + 1)) (A337194 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204826.P8884235716513738659

namespace A204826

/-- `record[A125746(n+1)%A337194(n+1)]` -/
def P8884235716513738659.Spec : Prop :=
  ∀ n, P8884235716513738659.a n = A204826 (n + 1)

end A204826

/-! ## A204826.P1100513448348389050

`record[gcd(A125746(n+1), A292377(n+1))]`
-/

namespace A204826.P1100513448348389050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125746 (n + 1)) (A292377 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204826.P1100513448348389050

namespace A204826

/-- `record[gcd(A125746(n+1), A292377(n+1))]` -/
def P1100513448348389050.Spec : Prop :=
  ∀ n, (P1100513448348389050.a n : ℤ) = A204826 (n + 1)

end A204826

/-! ## A204826.P10398733071692990598

`filter[A005100(n+1), A053866(#)]`
-/

namespace A204826.P10398733071692990598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A204826.P10398733071692990598

namespace A204826

/-- `filter[A005100(n+1), A053866(#)]` -/
def P10398733071692990598.Spec : Prop :=
  ∀ n, P10398733071692990598.a n = A204826 (n + 1)

end A204826

/-! ## A204826.P11234142720961238231

`filter[A136447(n+1), A053866(#)]`
-/

namespace A204826.P11234142720961238231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A204826.P11234142720961238231

namespace A204826

/-- `filter[A136447(n+1), A053866(#)]` -/
def P11234142720961238231.Spec : Prop :=
  ∀ n, P11234142720961238231.a n = A204826 (n + 1)

end A204826

/-! ## A204826.P702244418185601597

`filter[A263837(n+1), A053866(#)]`
-/

namespace A204826.P702244418185601597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A204826.P702244418185601597

namespace A204826

/-- `filter[A263837(n+1), A053866(#)]` -/
def P702244418185601597.Spec : Prop :=
  ∀ n, P702244418185601597.a n = A204826 (n + 1)

end A204826

/-! ## A204826.P12603694176977628748

`∩[A005100(n+1), A028982(n+1)]`
-/

namespace A204826.P12603694176977628748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204826.P12603694176977628748

namespace A204826

/-- `∩[A005100(n+1), A028982(n+1)]` -/
def P12603694176977628748.Spec : Prop :=
  ∀ n, (P12603694176977628748.a n : ℤ) = A204826 (n + 1)

end A204826

/-! ## A204826.P9523596634856233952

`∩[A028982(n+1), A136447(n+1)]`
-/

namespace A204826.P9523596634856233952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204826.P9523596634856233952

namespace A204826

/-- `∩[A028982(n+1), A136447(n+1)]` -/
def P9523596634856233952.Spec : Prop :=
  ∀ n, (P9523596634856233952.a n : ℤ) = A204826 (n + 1)

end A204826

/-! ## A204826.P8763354516222779277

`∩[A028982(n+1), A263837(n+1)]`
-/

namespace A204826.P8763354516222779277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204826.P8763354516222779277

namespace A204826

/-- `∩[A028982(n+1), A263837(n+1)]` -/
def P8763354516222779277.Spec : Prop :=
  ∀ n, (P8763354516222779277.a n : ℤ) = A204826 (n + 1)

end A204826

/-! ## A204826.P5578943980924038714

`∩[A028982(n+1), A392650(n+1)]`
-/

namespace A204826.P5578943980924038714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204826.P5578943980924038714

namespace A204826

/-- `∩[A028982(n+1), A392650(n+1)]` -/
def P5578943980924038714.Spec : Prop :=
  ∀ n, (P5578943980924038714.a n : ℤ) = A204826 (n + 1)

end A204826

/-!
# A204827: Deficient numbers with even sum of divisors.

The programs for A204827, the canonical program `A204827.P17698641458636388094` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204827 has offset 1).

The definition of A204827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204827.P17092629451625019285

`eq[A053866(n+1), A341620(n+1)]+1`
-/

namespace A204827.P17092629451625019285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A204827.P17092629451625019285

namespace A204827

/-- `eq[A053866(n+1), A341620(n+1)]+1` -/
def P17092629451625019285.Spec : Prop :=
  ∀ n, (P17092629451625019285.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P7416055143592243617

`lt[A053866(n+1), A294934(n+1)]+1`
-/

namespace A204827.P7416055143592243617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A204827.P7416055143592243617

namespace A204827

/-- `lt[A053866(n+1), A294934(n+1)]+1` -/
def P7416055143592243617.Spec : Prop :=
  ∀ n, (P7416055143592243617.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P8564776733535958934

`record[A125746(A028983(n+1))]`
-/

namespace A204827.P8564776733535958934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A028983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204827.P8564776733535958934

namespace A204827

/-- `record[A125746(A028983(n+1))]` -/
def P8564776733535958934.Spec : Prop :=
  ∀ n, P8564776733535958934.a n = A204827 (n + 1)

end A204827

/-! ## A204827.P997719310306562603

`filter[A028983(n+1), A294934(#)]`
-/

namespace A204827.P997719310306562603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A204827.P997719310306562603

namespace A204827

/-- `filter[A028983(n+1), A294934(#)]` -/
def P997719310306562603.Spec : Prop :=
  ∀ n, P997719310306562603.a n = A204827 (n + 1)

end A204827

/-! ## A204827.P17698641458636388094

`∩[A005100(n+1), A028983(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204827

/-- `∩[A005100(n+1), A028983(n+1)]` -/
def P17698641458636388094.Spec : Prop :=
  ∀ n, (P17698641458636388094.a n : ℤ) = A204827 (n + 1)

theorem P17698641458636388094.correct : P17698641458636388094.Spec := by
  intro n
  simp only [A204827, Nat.add_sub_cancel]

end A204827

/-! ## A204827.P5329113654599746451

`∩[A028983(n+1), A237046(n+1)]`
-/

namespace A204827.P5329113654599746451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204827.P5329113654599746451

namespace A204827

/-- `∩[A028983(n+1), A237046(n+1)]` -/
def P5329113654599746451.Spec : Prop :=
  ∀ n, (P5329113654599746451.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P18028739549010673640

`A020725(eq[A053866(n+1), A341620(n+1)])`
-/

namespace A204827.P18028739549010673640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204827.P18028739549010673640

namespace A204827

/-- `A020725(eq[A053866(n+1), A341620(n+1)])` -/
def P18028739549010673640.Spec : Prop :=
  ∀ n, P18028739549010673640.a n = A204827 (n + 1)

end A204827

/-! ## A204827.P1361954971859334668

`A153152(eq[A053866(n+1), A341620(n+1)])`
-/

namespace A204827.P1361954971859334668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204827.P1361954971859334668

namespace A204827

/-- `A153152(eq[A053866(n+1), A341620(n+1)])` -/
def P1361954971859334668.Spec : Prop :=
  ∀ n, P1361954971859334668.a n = A204827 (n + 1)

end A204827

/-! ## A204827.P802469553904628700

`A153152(lt[A053866(n+1), A294934(n+1)])`
-/

namespace A204827.P802469553904628700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204827.P802469553904628700

namespace A204827

/-- `A153152(lt[A053866(n+1), A294934(n+1)])` -/
def P802469553904628700.Spec : Prop :=
  ∀ n, P802469553904628700.a n = A204827 (n + 1)

end A204827

/-! ## A204827.P11533732065187516284

`lt[A001281(∑{d}[n, #]), n]`
-/

namespace A204827.P11533732065187516284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A204827.P11533732065187516284

namespace A204827

/-- `lt[A001281(∑{d}[n, #]), n]` -/
def P11533732065187516284.Spec : Prop :=
  ∀ n, (P11533732065187516284.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P13113544097851160103

`lt[A026741(∑{d}[n, #]), n]`
-/

namespace A204827.P13113544097851160103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A204827.P13113544097851160103

namespace A204827

/-- `lt[A026741(∑{d}[n, #]), n]` -/
def P13113544097851160103.Spec : Prop :=
  ∀ n, (P13113544097851160103.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P6529261167201661493

`lt[A064680(∑{d}[n, #]), n]`
-/

namespace A204827.P6529261167201661493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A204827.P6529261167201661493

namespace A204827

/-- `lt[A064680(∑{d}[n, #]), n]` -/
def P6529261167201661493.Spec : Prop :=
  ∀ n, (P6529261167201661493.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P16154360743376336919

`lt[A064680(A039653(n)+1), n]`
-/

namespace A204827.P16154360743376336919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A039653 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A204827.P16154360743376336919

namespace A204827

/-- `lt[A064680(A039653(n)+1), n]` -/
def P16154360743376336919.Spec : Prop :=
  ∀ n, (P16154360743376336919.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P8631866598799774652

`lt[A006370(A000203(abs(1-n)+1)), n]`
-/

namespace A204827.P8631866598799774652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A000203 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A204827.P8631866598799774652

namespace A204827

/-- `lt[A006370(A000203(abs(1-n)+1)), n]` -/
def P8631866598799774652.Spec : Prop :=
  ∀ n, (P8631866598799774652.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P5610267422438785319

`lt[A064680(A000203(abs(2-n)+2)), n]`
-/

namespace A204827.P5610267422438785319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A000203 (|2 - (n : ℤ)| + 2).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A204827.P5610267422438785319

namespace A204827

/-- `lt[A064680(A000203(abs(2-n)+2)), n]` -/
def P5610267422438785319.Spec : Prop :=
  ∀ n, (P5610267422438785319.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P8664351730657718930

`lt[A160413(A000203(n+1)+2), n+2]+1`
-/

namespace A204827.P8664351730657718930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A000203 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A204827.P8664351730657718930

namespace A204827

/-- `lt[A160413(A000203(n+1)+2), n+2]+1` -/
def P8664351730657718930.Spec : Prop :=
  ∀ n, (P8664351730657718930.a n : ℤ) = A204827 (n + 1)

end A204827

/-! ## A204827.P1084178226175991433

`lt[1, A324817(A005940(n+1))]`
-/

namespace A204827.P1084178226175991433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324817 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A204827.P1084178226175991433

namespace A204827

/-- `lt[1, A324817(A005940(n+1))]` -/
def P1084178226175991433.Spec : Prop :=
  ∀ n, (P1084178226175991433.a n : ℤ) = A204827 (n + 1)

end A204827

/-!
# A204829: Numbers k with abundancy 2 <= sigma(k)/k < 3.

The programs for A204829, the canonical program `A204829.P4225986207751981540` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204829 has offset 1).

The definition of A204829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204829.P4225986207751981540

`eq[2, floor(A000203(n+1)/(n+1))]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204829

/-- `eq[2, floor(A000203(n+1)/(n+1))]+1` -/
def P4225986207751981540.Spec : Prop :=
  ∀ n, (P4225986207751981540.a n : ℤ) = A204829 (n + 1)

theorem P4225986207751981540.correct : P4225986207751981540.Spec := by
  intro n
  simp only [A204829, Nat.add_sub_cancel]

end A204829

/-! ## A204829.P15753122439162227485

`eq[2, A108775(n+1)]+1`
-/

namespace A204829.P15753122439162227485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A204829.P15753122439162227485

namespace A204829

/-- `eq[2, A108775(n+1)]+1` -/
def P15753122439162227485.Spec : Prop :=
  ∀ n, (P15753122439162227485.a n : ℤ) = A204829 (n + 1)

end A204829

/-! ## A204829.P13263166245319269570

`A153152(eq[2, A108775(n+1)])`
-/

namespace A204829.P13263166245319269570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204829.P13263166245319269570

namespace A204829

/-- `A153152(eq[2, A108775(n+1)])` -/
def P13263166245319269570.Spec : Prop :=
  ∀ n, P13263166245319269570.a n = A204829 (n + 1)

end A204829

/-! ## A204829.P4238501366874733472

`A181569(eq[2, A108775(n+1)])`
-/

namespace A204829.P4238501366874733472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204829.P4238501366874733472

namespace A204829

/-- `A181569(eq[2, A108775(n+1)])` -/
def P4238501366874733472.Spec : Prop :=
  ∀ n, P4238501366874733472.a n = A204829 (n + 1)

end A204829

/-! ## A204829.P1716106225573554669

`eq[A033880(n+1), A054024(n+1)]+1`
-/

namespace A204829.P1716106225573554669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A204829.P1716106225573554669

namespace A204829

/-- `eq[A033880(n+1), A054024(n+1)]+1` -/
def P1716106225573554669.Spec : Prop :=
  ∀ n, (P1716106225573554669.a n : ℤ) = A204829 (n + 1)

end A204829

/-! ## A204829.P10906778300218627606

`eq[2, A108775(A060000(n+1))]`
-/

namespace A204829.P10906778300218627606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204829.P10906778300218627606

namespace A204829

/-- `eq[2, A108775(A060000(n+1))]` -/
def P10906778300218627606.Spec : Prop :=
  ∀ n, (P10906778300218627606.a n : ℤ) = A204829 (n + 1)

end A204829

/-!
# A204830: Numbers k whose divisors can be partitioned into three disjoint sets whose sums are all sigma(k)/3.

The programs for A204830, there is no canonical definition to state claims against.
-/

/-! ## A204830.P4415836378923328303

`A023197(lt[A321378(3*n+1), A083854(n)])`
-/

namespace A204830.P4415836378923328303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023197 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204830.P4415836378923328303

/-! ## A204830.P2131191098584264082

`record[A161871(A023197(n+1))]`
-/

namespace A204830.P2131191098584264082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161871 (A023197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204830.P2131191098584264082

/-!
# A204831: Numbers n whose divisors can be partitioned into four disjoint sets whose sums are all sigma(n)/4.

The programs for A204831, there is no canonical definition to state claims against.
-/

/-! ## A204831.P11547570623068358898

`A023198(A359415(n+1))`
-/

namespace A204831.P11547570623068358898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023198 (A359415 (n + 1)).toNat

end

end A204831.P11547570623068358898

/-! ## A204831.P15517173613063532316

`A023198(∑[A025896(n)!])`
-/

namespace A204831.P15517173613063532316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023198 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204831.P15517173613063532316

/-! ## A204831.P10241485410737107356

`A023198(eq[A000038(n), A122180(n+1)])`
-/

namespace A204831.P10241485410737107356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023198 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204831.P10241485410737107356

/-! ## A204831.P5137144420956884381

`A023198(lt[A286518(n+1), A261954(n)])`
-/

namespace A204831.P5137144420956884381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023198 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204831.P5137144420956884381

/-! ## A204831.P12607178636680796684

`A023198(lt[A286518(n+1), A352867(n+1)])`
-/

namespace A204831.P12607178636680796684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023198 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204831.P12607178636680796684

/-!
# A204832: Number of (n+1)X(n+1) 0..2 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204832, there is no canonical definition to state claims against.
-/

/-! ## A204832.P4901073877008529384

`A204840(∑[4*n]+1)`
-/

namespace A204832.P4901073877008529384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204832.P4901073877008529384

/-! ## A204832.P8149149112345846588

`lcm(2, A204840(A001844(n)))`
-/

namespace A204832.P8149149112345846588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204840 (A001844 n).toNat)

end

end A204832.P8149149112345846588

/-! ## A204832.P7319130011525541961

`record[root(A204840(n+1), A059897(n+1))]`
-/

namespace A204832.P7319130011525541961
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204840 (n + 1) : ℝ) ^ (1 / (A059897 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204832.P7319130011525541961

/-! ## A204832.P660247624064003405

`Δ[A005496(n)]*A204840(A001844(n))`
-/

namespace A204832.P660247624064003405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A204840 (A001844 n).toNat

end

end A204832.P660247624064003405

/-! ## A204832.P2398520050355373517

`A336355(n+1)+A204840(A001844(n))`
-/

namespace A204832.P2398520050355373517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (n + 1) + A204840 (A001844 n).toNat

end

end A204832.P2398520050355373517

/-!
# A204833: Number of (n+1) X 2 0..2 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204833, there is no canonical definition to state claims against.
-/

/-! ## A204833.P9976855117349090462

`A204840(∑[n]+1)`
-/

namespace A204833.P9976855117349090462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204833.P9976855117349090462

/-! ## A204833.P10756523109947896607

`lcm(2, A204840(A000124(n)))`
-/

namespace A204833.P10756523109947896607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204840 (A000124 n).toNat)

end

end A204833.P10756523109947896607

/-! ## A204833.P15340222974508495855

`record[A204840(A056534(n+1))]`
-/

namespace A204833.P15340222974508495855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204833.P15340222974508495855

/-! ## A204833.P13031542607018531847

`record[root(A204840(n+1), A081277(n))]`
-/

namespace A204833.P13031542607018531847
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204840 (n + 1) : ℝ) ^ (1 / (A081277 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204833.P13031542607018531847

/-! ## A204833.P15107087778379672558

`record[gcd(A002262(n), A204840(n+1))]`
-/

namespace A204833.P15107087778379672558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204840 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204833.P15107087778379672558

/-!
# A204834: Number of (n+1)X3 0..2 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204834, there is no canonical definition to state claims against.
-/

/-! ## A204834.P5299146006025784738

`A225021(n+1)-A206466(n+1)`
-/

namespace A204834.P5299146006025784738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225021 (n + 1) - A206466 (n + 1)

end

end A204834.P5299146006025784738

/-! ## A204834.P4915248557782795275

`A225021(n+1)-or(1, A206472(A133263(n+1)))`
-/

namespace A204834.P4915248557782795275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225021 (n + 1) - Int.lor 1 (A206472 (A133263 (n + 1)).toNat)

end

end A204834.P4915248557782795275

/-! ## A204834.P6298410296935319944

`A225021(n+1)-A033999(n)²*A206472(A133263(n+1))`
-/

namespace A204834.P6298410296935319944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225021 (n + 1) - A033999 n ^ 2 * A206472 (A133263 (n + 1)).toNat

end

end A204834.P6298410296935319944

/-! ## A204834.P3592974739852174209

`A204840(∑[n+1]+2)`
-/

namespace A204834.P3592974739852174209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204834.P3592974739852174209

/-! ## A204834.P3940826779699053589

`record[gcd(A002262(n), A204840(n+2))]`
-/

namespace A204834.P3940826779699053589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204840 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204834.P3940826779699053589

/-!
# A204835: Number of (n+1)X4 0..2 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204835, there is no canonical definition to state claims against.
-/

/-! ## A204835.P9098420948015436046

`A204840(∑[n+2]+4)`
-/

namespace A204835.P9098420948015436046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204835.P9098420948015436046

/-! ## A204835.P4808379210098301695

`lcm(2, A204840(A167614(n+1)))`
-/

namespace A204835.P4808379210098301695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204840 (A167614 (n + 1)).toNat)

end

end A204835.P4808379210098301695

/-! ## A204835.P675942855379698357

`or(A000038(n), A204840(A167614(n+1)))`
-/

namespace A204835.P675942855379698357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A204840 (A167614 (n + 1)).toNat)

end

end A204835.P675942855379698357

/-! ## A204835.P18161721375542980160

`A204840(A167614(n+1))+and(2, A000290(n))`
-/

namespace A204835.P18161721375542980160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A167614 (n + 1)).toNat + Int.land 2 (A000290 n)

end

end A204835.P18161721375542980160

/-! ## A204835.P14414393716916872534

`A204840(A167614(n+1))+char[A204831(n+1)]`
-/

namespace A204835.P14414393716916872534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204831 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A204835.P14414393716916872534

/-!
# A204836: Number of (n+1)X5 0..2 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204836, there is no canonical definition to state claims against.
-/

/-! ## A204836.P13534682290892841218

`A204840(A374004(n+1))`
-/

namespace A204836.P13534682290892841218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A374004 (n + 1)).toNat

end

end A204836.P13534682290892841218

/-! ## A204836.P5625541532773132451

`A204840(A141214(n)+7)`
-/

namespace A204836.P5625541532773132451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A141214 n + 7).toNat

end

end A204836.P5625541532773132451

/-! ## A204836.P16232811995542706131

`A204840(A167614(n+2)+1)`
-/

namespace A204836.P16232811995542706131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A167614 (n + 2) + 1).toNat

end

end A204836.P16232811995542706131

/-! ## A204836.P2883622914987202336

`A204840(A167499(n+2)-1)`
-/

namespace A204836.P2883622914987202336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A167499 (n + 2) - 1).toNat

end

end A204836.P2883622914987202336

/-! ## A204836.P16041545380964457453

`A204840(Δ[A264443(n)-n²])`
-/

namespace A204836.P16041545380964457453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (f1 (n + 1) - f1 n).toNat

end

end A204836.P16041545380964457453

/-!
# A204837: Number of (n+1)X6 0..2 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204837, there is no canonical definition to state claims against.
-/

/-! ## A204837.P4489003168382676111

`A204840(A374005(n+1))`
-/

namespace A204837.P4489003168382676111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A374005 (n + 1)).toNat

end

end A204837.P4489003168382676111

/-! ## A204837.P4242553868170278693

`A204840(A167499(n+3))`
-/

namespace A204837.P4242553868170278693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A167499 (n + 3)).toNat

end

end A204837.P4242553868170278693

/-! ## A204837.P18002536524873207785

`A204840(A155212(n)+13)`
-/

namespace A204837.P18002536524873207785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A155212 n + 13).toNat

end

end A204837.P18002536524873207785

/-! ## A204837.P5910417867498462991

`A204840(Δ[A264443(n)])`
-/

namespace A204837.P5910417867498462991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (f1 (n + 1) - f1 n).toNat

end

end A204837.P5910417867498462991

/-! ## A204837.P8382329160510517862

`A204840(eq[4, A193592(n)])`
-/

namespace A204837.P8382329160510517862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204837.P8382329160510517862

/-!
# A204838: Number of (n+1)X7 0..2 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204838, there is no canonical definition to state claims against.
-/

/-! ## A204838.P9341923078783148671

`A204840(A374007(n+1))`
-/

namespace A204838.P9341923078783148671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A374007 (n + 1)).toNat

end

end A204838.P9341923078783148671

/-! ## A204838.P10917008661871922616

`A204840(A056115(n)+21)`
-/

namespace A204838.P10917008661871922616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A056115 n + 21).toNat

end

end A204838.P10917008661871922616

/-! ## A204838.P4969586682637880343

`A204840(A167499(n+4)+1)`
-/

namespace A204838.P4969586682637880343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A167499 (n + 4) + 1).toNat

end

end A204838.P4969586682637880343

/-! ## A204838.P14824651752110816884

`A204840(eq[5, A002262(n)]+1)`
-/

namespace A204838.P14824651752110816884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204838.P14824651752110816884

/-! ## A204838.P5081222717642567298

`A204840(A056119(n)+16)`
-/

namespace A204838.P5081222717642567298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A056119 n + 16).toNat

end

end A204838.P5081222717642567298

/-!
# A204839: Number of (n+1)X8 0..2 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204839, there is no canonical definition to state claims against.
-/

/-! ## A204839.P12145462020332424455

`A204840(A374008(n+1))`
-/

namespace A204839.P12145462020332424455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A374008 (n + 1)).toNat

end

end A204839.P12145462020332424455

/-! ## A204839.P12127585762812213778

`A204840(A000217(n+6)+7)`
-/

namespace A204839.P12127585762812213778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A000217 (n + 6) + 7).toNat

end

end A204839.P12127585762812213778

/-! ## A204839.P3955164819027723066

`A204840(eq[8, A131818(n+1)])`
-/

namespace A204839.P3955164819027723066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204839.P3955164819027723066

/-! ## A204839.P12249402017408633456

`A204840(A055999(n+4))`
-/

namespace A204839.P12249402017408633456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (A055999 (n + 4)).toNat

end

end A204839.P12249402017408633456

/-! ## A204839.P2123189372453020537

`A204840(eq[4, A219347(n)])`
-/

namespace A204839.P2123189372453020537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204839.P2123189372453020537

/-!
# A204840: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204840, there is no canonical definition to state claims against.
-/

/-! ## A204840.P16614373222254414378

`A225027(n+1)-A206472(n+1)`
-/

namespace A204840.P16614373222254414378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (n + 1) - A206472 (n + 1)

end

end A204840.P16614373222254414378

/-!
# A204841: (2n)! - 2^n*n!.

The programs for A204841, the canonical program `A204841.P6567428411253650879` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204841 has offset 0).

The definition of A204841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)!-2^n*n!` (program `A204841.P6567428411253650879`, by `A204841.P6567428411253650879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204841.P6567428411253650879

`(2*n)!-2^n*n!`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204841

/-- `(2*n)!-2^n*n!` -/
def P6567428411253650879.Spec : Prop :=
  ∀ n, P6567428411253650879.a n = A204841 n

theorem P6567428411253650879.correct : P6567428411253650879.Spec := by
  intro n
  simp only [A204841]

end A204841

/-! ## A204841.P11177951287398531469

`A010050(n)-A000165(n)`
-/

namespace A204841.P11177951287398531469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n - A000165 n

end

end A204841.P11177951287398531469

namespace A204841

/-- `A010050(n)-A000165(n)` -/
def P11177951287398531469.Spec : Prop :=
  ∀ n, P11177951287398531469.a n = A204841 n

theorem P11177951287398531469.correct : P11177951287398531469.Spec := by
  intro n
  simp only [A204841, Nat.add_sub_cancel, A204841.P11177951287398531469.a, A204841.P6567428411253650879.a, A000165, A000165.P16837922414982216743.a, A010050, A010050.P16096830225553856271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A204841

/-! ## A204841.P8926101504615451098

`record[and(n, n+1)!]-2^(log2(n!)+n)`
-/

namespace A204841.P8926101504615451098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land n (n + 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) - (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))

end

end A204841.P8926101504615451098

namespace A204841

/-- `record[and(n, n+1)!]-2^(log2(n!)+n)` -/
def P8926101504615451098.Spec : Prop :=
  ∀ n, P8926101504615451098.a n = (A204841 n : ℝ)

end A204841

/-! ## A204841.P11510604982114857982

`(2*n)!-∏[gcd(2*n, (2*n+1)!)]`
-/

namespace A204841.P11510604982114857982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.factorial (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A204841.P11510604982114857982

namespace A204841

/-- `(2*n)!-∏[gcd(2*n, (2*n+1)!)]` -/
def P11510604982114857982.Spec : Prop :=
  ∀ n, P11510604982114857982.a n = A204841 n

end A204841

/-! ## A204841.P9058085671848917594

`record[n!/(-1)^n]-2^(log2(n!)+n)`
-/

namespace A204841.P9058085671848917594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) - (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))

end

end A204841.P9058085671848917594

namespace A204841

/-- `record[n!/(-1)^n]-2^(log2(n!)+n)` -/
def P9058085671848917594.Spec : Prop :=
  ∀ n, P9058085671848917594.a n = (A204841 n : ℝ)

end A204841

/-!
# A204842: Triangle by rows relating to A081696.

The programs for A204842, there is no canonical definition to state claims against.
-/

/-! ## A204842.P16164902078775329108

`(2-char[∑[n]])*A109267(n)`
-/

namespace A204842.P16164902078775329108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A109267 n

end

end A204842.P16164902078775329108

/-! ## A204842.P3362124555874193908

`A109267(n)*A238303(n)`
-/

namespace A204842.P3362124555874193908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 n * A238303 n

end

end A204842.P3362124555874193908

/-!
# A204843: Expansion of x * f(-x^24) + (3 * phi(-x^36) - phi(-x^4)) / 2 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A204843, there is no canonical definition to state claims against.
-/

/-! ## A204843.P8728865550779420977

`A033999(n)*A204853(n)`
-/

namespace A204843.P8728865550779420977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A204853 n

end

end A204843.P8728865550779420977

/-! ## A204843.P4969049376926789792

`A087960(n)*A204853(n)`
-/

namespace A204843.P4969049376926789792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A204853 n

end

end A204843.P4969049376926789792

/-! ## A204843.P13076420701736516904

`A094267(n)*A204853(n)`
-/

namespace A204843.P13076420701736516904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A204853 n

end

end A204843.P13076420701736516904

/-! ## A204843.P296843930796614415

`A101675(n)*A204853(n)`
-/

namespace A204843.P296843930796614415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n * A204853 n

end

end A204843.P296843930796614415

/-! ## A204843.P12591557952394417079

`A115714(n)*A204853(n)`
-/

namespace A204843.P12591557952394417079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 n * A204853 n

end

end A204843.P12591557952394417079

/-! ## A204843.P14419727160845754451

`A115953(n)*A204853(n)`
-/

namespace A204843.P14419727160845754451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115953 n * A204853 n

end

end A204843.P14419727160845754451

/-! ## A204843.P14216844383420704143

`A204853(n)*A214507(n)`
-/

namespace A204843.P14216844383420704143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A214507 n

end

end A204843.P14216844383420704143

/-! ## A204843.P8162306293280863413

`A204853(n)*A219977(n)`
-/

namespace A204843.P8162306293280863413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A219977 n

end

end A204843.P8162306293280863413

/-! ## A204843.P1076233468281500043

`A204853(n)*A242073(n)`
-/

namespace A204843.P1076233468281500043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A242073 n

end

end A204843.P1076233468281500043

/-! ## A204843.P8587068495717519210

`A204853(n)*A339265(n)`
-/

namespace A204843.P8587068495717519210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A339265 n

end

end A204843.P8587068495717519210

/-! ## A204843.P7456059551667086879

`A071935(n+1)*A204853(n)`
-/

namespace A204843.P7456059551667086879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A204853 n

end

end A204843.P7456059551667086879

/-! ## A204843.P2472649855516757878

`A071936(n+1)*A204853(n)`
-/

namespace A204843.P2472649855516757878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (n + 1) * A204853 n

end

end A204843.P2472649855516757878

/-! ## A204843.P17800662856394248478

`A112299(n+1)*A204853(n)`
-/

namespace A204843.P17800662856394248478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A204853 n

end

end A204843.P17800662856394248478

/-! ## A204843.P7688377599213647687

`A204853(n)*A209615(n+1)`
-/

namespace A204843.P7688377599213647687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A209615 (n + 1)

end

end A204843.P7688377599213647687

/-! ## A204843.P15552317855130271408

`A204853(n)*A309873(n+1)`
-/

namespace A204843.P15552317855130271408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A309873 (n + 1)

end

end A204843.P15552317855130271408

/-! ## A204843.P18178445514820622644

`A204853(n)*A326801(n)`
-/

namespace A204843.P18178445514820622644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A326801 n

end

end A204843.P18178445514820622644

/-! ## A204843.P14529349654754724706

`A204853(n)*A326802(n)`
-/

namespace A204843.P14529349654754724706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A326802 n

end

end A204843.P14529349654754724706

/-! ## A204843.P2731901752034287350

`A204853(n)*A304906(n+1)`
-/

namespace A204843.P2731901752034287350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A304906 (n + 1)

end

end A204843.P2731901752034287350

/-! ## A204843.P12562312618603913326

`A204853(n)*A291527(n+1)`
-/

namespace A204843.P12562312618603913326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 n * A291527 (n + 1)

end

end A204843.P12562312618603913326

/-! ## A204843.P13132928216309063839

`A204853(5*5*n)`
-/

namespace A204843.P13132928216309063839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 (5 * (5 * n))

end

end A204843.P13132928216309063839

/-!
# A204845: Irregular triangle read by rows in which row n lists primitive prime factors of the repunit (10^n - 1)/9 (A002275(n)).

The programs for A204845, there is no canonical definition to state claims against.
-/

/-! ## A204845.P7538722070270652108

`or(A001222(a(n-1)), A260597(n))` with `a(0)=1`
-/

namespace A204845.P7538722070270652108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A001222 (a (n - 1)).toNat) (A260597 n)

end

end A204845.P7538722070270652108

/-! ## A204845.P13479281538362758002

`A260597(n*a(A284254(2*n+5)-1))` with `a(0)=1`
-/

namespace A204845.P13479281538362758002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260597 ((n : ℤ) * a (A284254 (2 * n + 5) - 1).toNat).toNat

end

end A204845.P13479281538362758002

/-! ## A204845.P3270280927176230496

`A102380(A225620(n+1)^A347161(n+1))`
-/

namespace A204845.P3270280927176230496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102380 (SequenceMachineLib.roundAway ((A225620 (n + 1) : ℚ) ^ (A347161 (n + 1) : ℤ))).toNat

end

end A204845.P3270280927176230496

/-! ## A204845.P17798495357637026595

`A102380(lt[A015755(n), A360457(3*n+1)])`
-/

namespace A204845.P17798495357637026595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360457 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204845.P17798495357637026595

/-!
# A204847: Primitive cofactor of n-th repunit A002275(n).

The programs for A204847, there is no canonical definition to state claims against.
-/

/-! ## A204847.P1892426637810837167

`A000042(n+1)/A204848(n+1)`
-/

namespace A204847.P1892426637810837167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000042 (n + 1) : ℚ) / (A204848 (n + 1) : ℚ)

end

end A204847.P1892426637810837167

/-! ## A204847.P13527605584034544872

`A002275(n+1)/A204848(n+1)`
-/

namespace A204847.P13527605584034544872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 (n + 1) : ℚ) / (A204848 (n + 1) : ℚ)

end

end A204847.P13527605584034544872

/-! ## A204847.P15594697623476684786

`A094026(A004273(n+1))/A204848(n+1)`
-/

namespace A204847.P15594697623476684786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094026 (A004273 (n + 1)).toNat : ℚ) / (A204848 (n + 1) : ℚ)

end

end A204847.P15594697623476684786

/-! ## A204847.P1744177493600807830

`(A047855(n)+A002283(n))/A204848(n+1)`
-/

namespace A204847.P1744177493600807830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047855 n + A002283 n : ℚ) / (A204848 (n + 1) : ℚ)

end

end A204847.P1744177493600807830

/-! ## A204847.P5345417664661989585

`A019328(n+1)/gcd(A019328(n+1), A326178(n))`
-/

namespace A204847.P5345417664661989585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019328 (n + 1) : ℚ) / (Int.gcd (A019328 (n + 1)) (A326178 n) : ℚ)

end

end A204847.P5345417664661989585

/-!
# A204848: Algebraic cofactor of n-th repunit A002275(n).

The programs for A204848, there is no canonical definition to state claims against.
-/

/-! ## A204848.P2236495035691274161

`∑[A011557(n)]/A204847(n+1)`
-/

namespace A204848.P2236495035691274161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A204847 (n + 1) : ℚ)

end

end A204848.P2236495035691274161

/-! ## A204848.P13025150870183641750

`A000042(n+1)/A204847(n+1)`
-/

namespace A204848.P13025150870183641750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000042 (n + 1) : ℚ) / (A204847 (n + 1) : ℚ)

end

end A204848.P13025150870183641750

/-! ## A204848.P15187760416809853087

`A002275(n+1)/A204847(n+1)`
-/

namespace A204848.P15187760416809853087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 (n + 1) : ℚ) / (A204847 (n + 1) : ℚ)

end

end A204848.P15187760416809853087

/-! ## A204848.P3030739421909984429

`(A105279(n)+1)/A204847(n+1)`
-/

namespace A204848.P3030739421909984429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105279 n + 1 : ℚ) / (A204847 (n + 1) : ℚ)

end

end A204848.P3030739421909984429

/-! ## A204848.P3775683897443862749

`A094026(2*n+1)/A204847(n+1)`
-/

namespace A204848.P3775683897443862749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094026 (2 * n + 1) : ℚ) / (A204847 (n + 1) : ℚ)

end

end A204848.P3775683897443862749

/-!
# A204849: A Motzkin triangle by rows.

The programs for A204849, there is no canonical definition to state claims against.
-/

/-! ## A204849.P3010754706727736802

`A247364(comp[∑[n]])`
-/

namespace A204849.P3010754706727736802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A204849.P3010754706727736802

/-! ## A204849.P17165893853264918295

`A034928(A185782(n+1)+n)`
-/

namespace A204849.P17165893853264918295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034928 (A185782 (n + 1) + (n : ℤ)).toNat

end

end A204849.P17165893853264918295

/-! ## A204849.P2856257743933999323

`A034928(A099375(n)-1+n)`
-/

namespace A204849.P2856257743933999323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034928 (A099375 n - 1 + (n : ℤ)).toNat

end

end A204849.P2856257743933999323

/-! ## A204849.P9397335063953190478

`A034928(n-(1-A099375(n)))`
-/

namespace A204849.P9397335063953190478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034928 ((n : ℤ) - (1 - A099375 n)).toNat

end

end A204849.P9397335063953190478

/-! ## A204849.P9295086018409042641

`or(char[1], A247364(A014132(n+1)))`
-/

namespace A204849.P9295086018409042641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A247364 (A014132 (n + 1)).toNat)

end

end A204849.P9295086018409042641

/-! ## A204849.P8882751678717359905

`lcm((-1)^n, A247364(A080036(n)))`
-/

namespace A204849.P8882751678717359905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A247364 (A080036 n).toNat)

end

end A204849.P8882751678717359905

/-! ## A204849.P12363611277936008588

`A247364(A014132(n+1))%A017258(n)`
-/

namespace A204849.P12363611277936008588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247364 (A014132 (n + 1)).toNat) (A017258 n)

end

end A204849.P12363611277936008588

/-! ## A204849.P5179724026008526804

`gcd(A000038(n), A247364(A014132(n+1)))`
-/

namespace A204849.P5179724026008526804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A247364 (A014132 (n + 1)).toNat)

end

end A204849.P5179724026008526804

/-! ## A204849.P2892789337643154156

`∑{d}[A247364(A014132(n+1)), A000010(#)]`
-/

namespace A204849.P2892789337643154156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A204849.P2892789337643154156

/-! ## A204849.P9444464774375200557

`∏{d}[A247364(A014132(n+1)), A014963(#)]`
-/

namespace A204849.P9444464774375200557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A204849.P9444464774375200557

/-!
# A204850: Expansion of f(x)^3 - 9 * x * f(x^9)^3 in powers of x where f() is a Ramanujan theta function.

The programs for A204850, the canonical program `A204850.P1575492180072976004` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204850 has offset 0).

The definition of A204850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A202394, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204850.P1575492180072976004

`(-1)^n*A202394(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204850

/-- `(-1)^n*A202394(n)` -/
def P1575492180072976004.Spec : Prop :=
  ∀ n, P1575492180072976004.a n = A204850 n

theorem P1575492180072976004.correct : P1575492180072976004.Spec := by
  intro n
  simp only [A204850]

end A204850

/-! ## A204850.P1376486313769255076

`A010816(n)*A057079(n)`
-/

namespace A204850.P1376486313769255076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A057079 n

end

end A204850.P1376486313769255076

namespace A204850

/-- `A010816(n)*A057079(n)` -/
def P1376486313769255076.Spec : Prop :=
  ∀ n, P1376486313769255076.a n = A204850 n

end A204850

/-! ## A204850.P9545921135196822178

`A010816(n)*A132954(n)`
-/

namespace A204850.P9545921135196822178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A132954 n

end

end A204850.P9545921135196822178

namespace A204850

/-- `A010816(n)*A132954(n)` -/
def P9545921135196822178.Spec : Prop :=
  ∀ n, P9545921135196822178.a n = A204850 n

end A204850

/-! ## A204850.P13473891619246970856

`A010816(n)*A133988(n)`
-/

namespace A204850.P13473891619246970856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A133988 n

end

end A204850.P13473891619246970856

namespace A204850

/-- `A010816(n)*A133988(n)` -/
def P13473891619246970856.Spec : Prop :=
  ∀ n, P13473891619246970856.a n = A204850 n

theorem P13473891619246970856.correct : P13473891619246970856.Spec := by
  intro n
  simp only [A204850, Nat.add_sub_cancel, A204850.P13473891619246970856.a, A204850.P1575492180072976004.a, A010816, A010816.P9990213171636561186.a, A133988, A133988.P925296802653209893.a, A202394, A202394.P10766434799180443179.a, A089812, A089812.P10414309515728249856.a, A198954, A198954.P2690440958221023727.a, A374157, A374157.P5715907988378515051.a, A010054, A010054.P18347828677204923252.a, A053187, A053187.P5980113714214141663.a, A131713, A131713.P14902708299758432573.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204850

/-! ## A204850.P1526312214123206415

`A084930(n)*A133988(n)`
-/

namespace A204850.P1526312214123206415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084930 n * A133988 n

end

end A204850.P1526312214123206415

namespace A204850

/-- `A084930(n)*A133988(n)` -/
def P1526312214123206415.Spec : Prop :=
  ∀ n, P1526312214123206415.a n = A204850 n

end A204850

/-! ## A204850.P11942559823195151972

`A089812(n)*A133089(n)`
-/

namespace A204850.P11942559823195151972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n * A133089 n

end

end A204850.P11942559823195151972

namespace A204850

/-- `A089812(n)*A133089(n)` -/
def P11942559823195151972.Spec : Prop :=
  ∀ n, P11942559823195151972.a n = A204850 n

theorem P11942559823195151972.correct : P11942559823195151972.Spec := by
  intro n
  simp only [A204850, Nat.add_sub_cancel, A204850.P11942559823195151972.a, A204850.P1575492180072976004.a, A089812, A089812.P10414309515728249856.a, A133089, A133089.P8798939129705993137.a, A202394, A202394.P10766434799180443179.a, A010054, A010054.P18347828677204923252.a, A010816, A010816.P9990213171636561186.a, A131713, A131713.P14902708299758432573.a, A005369, A005369.P10796159359873341658.a, A198954, A198954.P2690440958221023727.a, A374157, A374157.P5715907988378515051.a, A053187, A053187.P5980113714214141663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A204850

/-! ## A204850.P11526404025285220760

`A131713(n)*A133089(n)`
-/

namespace A204850.P11526404025285220760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A133089 n

end

end A204850.P11526404025285220760

namespace A204850

/-- `A131713(n)*A133089(n)` -/
def P11526404025285220760.Spec : Prop :=
  ∀ n, P11526404025285220760.a n = A204850 n

end A204850

/-! ## A204850.P9177289958507836232

`A202394(n)*A204172(n+1)`
-/

namespace A204850.P9177289958507836232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202394 n * A204172 (n + 1)

end

end A204850.P9177289958507836232

namespace A204850

/-- `A202394(n)*A204172(n+1)` -/
def P9177289958507836232.Spec : Prop :=
  ∀ n, P9177289958507836232.a n = A204850 n

end A204850

/-! ## A204850.P941399849109763553

`A057079(4*n)*A133089(n)`
-/

namespace A204850.P941399849109763553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A133089 n

end

end A204850.P941399849109763553

namespace A204850

/-- `A057079(4*n)*A133089(n)` -/
def P941399849109763553.Spec : Prop :=
  ∀ n, P941399849109763553.a n = A204850 n

end A204850

/-! ## A204850.P14845687384952141123

`(2-A132954(n)²)*A133089(n)`
-/

namespace A204850.P14845687384952141123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A133089 n

end

end A204850.P14845687384952141123

namespace A204850

/-- `(2-A132954(n)²)*A133089(n)` -/
def P14845687384952141123.Spec : Prop :=
  ∀ n, P14845687384952141123.a n = A204850 n

end A204850

/-! ## A204850.P5017858629640457646

`(2-A133988(n)²)*A133089(n)`
-/

namespace A204850.P5017858629640457646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A133988 n ^ 2) * A133089 n

end

end A204850.P5017858629640457646

namespace A204850

/-- `(2-A133988(n)²)*A133089(n)` -/
def P5017858629640457646.Spec : Prop :=
  ∀ n, P5017858629640457646.a n = A204850 n

end A204850

/-! ## A204850.P9224085546703904029

`A187307(n)%3*Δ[A274094(n)]`
-/

namespace A204850.P9224085546703904029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187307 n) 3 * (f1 (n + 1) - f1 n)

end

end A204850.P9224085546703904029

namespace A204850

/-- `A187307(n)%3*Δ[A274094(n)]` -/
def P9224085546703904029.Spec : Prop :=
  ∀ n, P9224085546703904029.a n = A204850 n

end A204850

/-!
# A204851: Triangle by rows relating to A005773.

The programs for A204851, there is no canonical definition to state claims against.
-/

/-! ## A204851.P7783016424611513066

`A239101(char[∑[n+1]]+n)`
-/

namespace A204851.P7783016424611513066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239101 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A204851.P7783016424611513066

/-! ## A204851.P15400940385209822386

`ceil(A239101(n)/A035214(n))`
-/

namespace A204851.P15400940385209822386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A239101 n : ℚ) / (A035214 n : ℚ)⌉

end

end A204851.P15400940385209822386

/-! ## A204851.P11390056582988048769

`A239101(round(sqrt(n²+1)))/A035214(n)`
-/

namespace A204851.P11390056582988048769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239101 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / (A035214 n : ℚ)

end

end A204851.P11390056582988048769

/-! ## A204851.P12301727271402782546

`A239101(n)/A054977(A097805(n))`
-/

namespace A204851.P12301727271402782546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239101 n : ℚ) / (A054977 (A097805 n).toNat : ℚ)

end

end A204851.P12301727271402782546

/-! ## A204851.P16443515292775453587

`A239101(n)/A054977(A216344(n))`
-/

namespace A204851.P16443515292775453587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239101 n : ℚ) / (A054977 (A216344 n).toNat : ℚ)

end

end A204851.P16443515292775453587

/-! ## A204851.P8447261311961882996

`A239101(n)/A054977(A340995(n))`
-/

namespace A204851.P8447261311961882996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239101 n : ℚ) / (A054977 (A340995 n).toNat : ℚ)

end

end A204851.P8447261311961882996

/-! ## A204851.P9472603099241455941

`A239101(n)/A000034(A023758(n+1))`
-/

namespace A204851.P9472603099241455941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239101 n : ℚ) / (A000034 (A023758 (n + 1)).toNat : ℚ)

end

end A204851.P9472603099241455941

/-! ## A204851.P550481718335781230

`(A239101(n)+A000007(n))/A035214(n)`
-/

namespace A204851.P550481718335781230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239101 n + A000007 n : ℚ) / (A035214 n : ℚ)

end

end A204851.P550481718335781230

/-! ## A204851.P1484615994936833972

`A239101(n)/A035214(n)*A000038(n)!`
-/

namespace A204851.P1484615994936833972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239101 n : ℚ) / (A035214 n : ℚ) * (Nat.factorial (A000038 n).toNat : ℚ)

end

end A204851.P1484615994936833972

/-! ## A204851.P865156493163852085

`A239101(n)/A035214(n)*A014963(4*n+2)`
-/

namespace A204851.P865156493163852085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239101 n : ℚ) / (A035214 n : ℚ) * (A014963 (4 * n + 2) : ℚ)

end

end A204851.P865156493163852085

/-!
# A204853: Expansion of (3 * phi(-x^36) - phi(-x^4)) / 2 - x * f(-x^24) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A204853, there is no canonical definition to state claims against.
-/

/-! ## A204853.P15782367901989794075

`(-1)^n*A204843(n)`
-/

namespace A204853.P15782367901989794075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A204843 n

end

end A204853.P15782367901989794075

/-! ## A204853.P16555531089494609640

`A204843(n)*A214507(n)`
-/

namespace A204853.P16555531089494609640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n * A214507 n

end

end A204853.P16555531089494609640

/-! ## A204853.P3942756974113330178

`A204843(n)*A219977(n)`
-/

namespace A204853.P3942756974113330178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n * A219977 n

end

end A204853.P3942756974113330178

/-! ## A204853.P10237502612452999086

`A204843(n)*A242073(n)`
-/

namespace A204853.P10237502612452999086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n * A242073 n

end

end A204853.P10237502612452999086

/-! ## A204853.P785590305029580770

`A204843(n)*A339265(n)`
-/

namespace A204853.P785590305029580770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n * A339265 n

end

end A204853.P785590305029580770

/-! ## A204853.P3316024890645317979

`A204843(n)*A209615(n+1)`
-/

namespace A204853.P3316024890645317979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n * A209615 (n + 1)

end

end A204853.P3316024890645317979

/-! ## A204853.P13845203146861796846

`A204843(n)*A309873(n+1)`
-/

namespace A204853.P13845203146861796846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n * A309873 (n + 1)

end

end A204853.P13845203146861796846

/-! ## A204853.P3555686325144814415

`A204843(n)/A071935(n+1)`
-/

namespace A204853.P3555686325144814415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204843 n : ℚ) / (A071935 (n + 1) : ℚ)

end

end A204853.P3555686325144814415

/-! ## A204853.P13499820150270173284

`A204843(5*5*n)`
-/

namespace A204853.P13499820150270173284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (5 * (5 * n))

end

end A204853.P13499820150270173284

/-! ## A204853.P16991043805784387700

`A204843(n)*A326801(n)`
-/

namespace A204853.P16991043805784387700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n * A326801 n

end

end A204853.P16991043805784387700

/-! ## A204853.P8612913065787043042

`A204843(n)*A326802(n)`
-/

namespace A204853.P8612913065787043042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n * A326802 n

end

end A204853.P8612913065787043042

/-! ## A204853.P8353578959380632631

`A204843(n)/A304906(n+1)`
-/

namespace A204853.P8353578959380632631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204843 n : ℚ) / (A304906 (n + 1) : ℚ)

end

end A204853.P8353578959380632631

/-! ## A204853.P3964733446693886833

`A204843(n)/A094267(n²)`
-/

namespace A204853.P3964733446693886833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204843 n : ℚ) / (A094267 (n ^ 2) : ℚ)

end

end A204853.P3964733446693886833

/-! ## A204853.P9003444457049306153

`A204843(n)/A101675(n²)`
-/

namespace A204853.P9003444457049306153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204843 n : ℚ) / (A101675 (n ^ 2) : ℚ)

end

end A204853.P9003444457049306153

/-!
# A204854: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1 - x^k) / (1 + x^k).

The programs for A204854, the canonical program `A204854.P9665984981395968068` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204854 has offset 0).

The definition of A204854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204854.P13171847919835720309

`-(A002448(n)+a(n-1))` with `a(0)=1`
-/

namespace A204854.P13171847919835720309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(A002448 n + a (n - 1))

end

end A204854.P13171847919835720309

namespace A204854

/-- `-(A002448(n)+a(n-1))` -/
def P13171847919835720309.Spec : Prop :=
  ∀ n, P13171847919835720309.a n = A204854 n

end A204854

/-! ## A204854.P7111778925496976268

`2*A258998(n)-a(n-1)` with `a(0)=1`
-/

namespace A204854.P7111778925496976268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A258998 n - a (n - 1)

end

end A204854.P7111778925496976268

namespace A204854

/-- `2*A258998(n)-a(n-1)` -/
def P7111778925496976268.Spec : Prop :=
  ∀ n, P7111778925496976268.a n = A204854 n

end A204854

/-! ## A204854.P9665984981395968068

`(2-A001650(n+1))*A033999(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204854

/-- `(2-A001650(n+1))*A033999(n)` -/
def P9665984981395968068.Spec : Prop :=
  ∀ n, P9665984981395968068.a n = A204854 n

theorem P9665984981395968068.correct : P9665984981395968068.Spec := by
  intro n
  simp only [A204854]

end A204854

/-! ## A204854.P16725081961043523258

`A002448(A001650(n+1)+n)-a(n-1)` with `a(0)=1`
-/

namespace A204854.P16725081961043523258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002448 (A001650 (n + 1) + (n : ℤ)).toNat - a (n - 1)

end

end A204854.P16725081961043523258

namespace A204854

/-- `A002448(A001650(n+1)+n)-a(n-1)` -/
def P16725081961043523258.Spec : Prop :=
  ∀ n, P16725081961043523258.a n = A204854 n

end A204854

/-! ## A204854.P14888604068520243330

`(A116939(2*n)-1)*A033999(n+1)`
-/

namespace A204854.P14888604068520243330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116939 (2 * n) - 1) * A033999 (n + 1)

end

end A204854.P14888604068520243330

namespace A204854

/-- `(A116939(2*n)-1)*A033999(n+1)` -/
def P14888604068520243330.Spec : Prop :=
  ∀ n, P14888604068520243330.a n = A204854 n

end A204854

/-! ## A204854.P685643842662126266

`-(A089798(2*n)+a(n-1))` with `a(0)=1`
-/

namespace A204854.P685643842662126266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(A089798 (2 * n) + a (n - 1))

end

end A204854.P685643842662126266

namespace A204854

/-- `-(A089798(2*n)+a(n-1))` -/
def P685643842662126266.Spec : Prop :=
  ∀ n, P685643842662126266.a n = A204854 n

end A204854

/-!
# A204855: G.f.: Sum_{n>=0} x^(n*(n+1)/2) / Product_{k=1..n} (1 - (n-k+1)*x^k).

The programs for A204855, there is no canonical definition to state claims against.
-/

/-! ## A204855.P5951646159176651926

`A327146(A132311(n))+A262430(n+2)`
-/

namespace A204855.P5951646159176651926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 (A132311 n).toNat + A262430 (n + 2)

end

end A204855.P5951646159176651926

/-! ## A204855.P1676112833165570060

`A061375(A319766(n)+1)`
-/

namespace A204855.P1676112833165570060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (A319766 n + 1).toNat

end

end A204855.P1676112833165570060

/-! ## A204855.P13463217447517547231

`A262430(A043317(n+2))`
-/

namespace A204855.P13463217447517547231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262430 (A043317 (n + 2)).toNat

end

end A204855.P13463217447517547231

/-! ## A204855.P3044519282279166542

`A262430(A044914(n+2))`
-/

namespace A204855.P3044519282279166542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262430 (A044914 (n + 2)).toNat

end

end A204855.P3044519282279166542

/-! ## A204855.P5514289014093832273

`A262430(A062399(n)+2)`
-/

namespace A204855.P5514289014093832273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262430 (A062399 n + 2).toNat

end

end A204855.P5514289014093832273

/-!
# A204857: G.f.: Sum_{n>=0} n!*x^(n*(n+1)/2) / Product_{k=1..n} (1 - (n-k+1)*x^k).

The programs for A204857, there is no canonical definition to state claims against.
-/

/-! ## A204857.P3564200898650186809

`A383110(A000213(n))`
-/

namespace A204857.P3564200898650186809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (A000213 n).toNat

end

end A204857.P3564200898650186809

/-! ## A204857.P6890713625478164217

`A383110(A074858(n))`
-/

namespace A204857.P6890713625478164217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (A074858 n).toNat

end

end A204857.P6890713625478164217

/-! ## A204857.P9362710002212086669

`A171561(A113405(n)+A025591(n))`
-/

namespace A204857.P9362710002212086669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (A113405 n + A025591 n).toNat

end

end A204857.P9362710002212086669

/-! ## A204857.P8085823694423485725

`or(A051889(A291142(n)), A080000(n))`
-/

namespace A204857.P8085823694423485725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051889 (A291142 n).toNat) (A080000 n)

end

end A204857.P8085823694423485725

/-! ## A204857.P4148052064084336351

`or(A051889(A291142(n)), A143632(n))`
-/

namespace A204857.P4148052064084336351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051889 (A291142 n).toNat) (A143632 n)

end

end A204857.P4148052064084336351

/-!
# A204858: G.f.: Sum_{n>=0} n! * x^(n*(n+1)/2) / Product_{k=1..n} (1 - k*x^k).

The programs for A204858, there is no canonical definition to state claims against.
-/

/-! ## A204858.P15964448464360212417

`A253174(or(5, A033138(n+1)))`
-/

namespace A204858.P15964448464360212417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253174 (Int.lor 5 (A033138 (n + 1))).toNat

end

end A204858.P15964448464360212417

/-! ## A204858.P9267904828540607732

`A345921(A229194(n+1))-A284013(n)`
-/

namespace A204858.P9267904828540607732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (A229194 (n + 1)).toNat - A284013 n

end

end A204858.P9267904828540607732

/-! ## A204858.P17025037171093178532

`A097247(A244470(n+2)-A284013(n))`
-/

namespace A204858.P17025037171093178532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097247 (A244470 (n + 2) - A284013 n).toNat

end

end A204858.P17025037171093178532

/-! ## A204858.P17380663214408857827

`A178832(∑[(2-n)²]+n-2)`
-/

namespace A204858.P17380663214408857827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 2)).toNat

end

end A204858.P17380663214408857827

/-! ## A204858.P1481023776299152037

`A156724(A115993(n))`
-/

namespace A204858.P1481023776299152037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A115993 n).toNat

end

end A204858.P1481023776299152037

/-!
# A204859: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..1 introduced in row major order.

The programs for A204859, there is no canonical definition to state claims against.
-/

/-! ## A204859.P1502329526862194775

`A204867(∑[4*n]+1)`
-/

namespace A204859.P1502329526862194775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204859.P1502329526862194775

/-! ## A204859.P8150554044038446536

`record[A204867(A152271(n²))]`
-/

namespace A204859.P8150554044038446536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204859.P8150554044038446536

/-! ## A204859.P16518717812856845413

`record[A204867(A330613(n+1))]`
-/

namespace A204859.P16518717812856845413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204859.P16518717812856845413

/-! ## A204859.P8922796931787321268

`A204867(A001844(n))+char[8]`
-/

namespace A204859.P8922796931787321268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204859.P8922796931787321268

/-!
# A204860: Number of (n+2) X 3 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..1 introduced in row major order.

The programs for A204860, there is no canonical definition to state claims against.
-/

/-! ## A204860.P12653348408796400398

`A204867(∑[n]+1)`
-/

namespace A204860.P12653348408796400398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204860.P12653348408796400398

/-! ## A204860.P16764300330719187442

`record[A204867(A114091(n+1))]`
-/

namespace A204860.P16764300330719187442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204860.P16764300330719187442

/-! ## A204860.P12577560291430329642

`record[A204867(A286235(n+1))]`
-/

namespace A204860.P12577560291430329642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204860.P12577560291430329642

/-! ## A204860.P7849773170791183926

`A204867(A000124(n))+and(2, n²)`
-/

namespace A204860.P7849773170791183926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A000124 n).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A204860.P7849773170791183926

/-! ## A204860.P11234599928069810964

`record[A010054(n)*A204867(n+1)]`
-/

namespace A204860.P11234599928069810964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204860.P11234599928069810964

/-!
# A204861: Number of (n+2)X4 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..1 introduced in row major order.

The programs for A204861, there is no canonical definition to state claims against.
-/

/-! ## A204861.P14545318359596270214

`A204867(∑[n+1]+2)`
-/

namespace A204861.P14545318359596270214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204861.P14545318359596270214

/-! ## A204861.P5124690732101325990

`record[A204867(A114091(n+1)+1)]`
-/

namespace A204861.P5124690732101325990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204861.P5124690732101325990

/-! ## A204861.P13491926700070009878

`record[A204867(A286235(n+1)+1)]`
-/

namespace A204861.P13491926700070009878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204861.P13491926700070009878

/-! ## A204861.P15822766307855802676

`A204867(A133263(n+1))+char[24]`
-/

namespace A204861.P15822766307855802676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204861.P15822766307855802676

/-! ## A204861.P12743177166047248451

`record[A010054(n)*A204867(n+2)]`
-/

namespace A204861.P12743177166047248451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204867 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204861.P12743177166047248451

/-!
# A204862: Number of (n+2)X5 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..1 introduced in row major order.

The programs for A204862, there is no canonical definition to state claims against.
-/

/-! ## A204862.P9046030014552213273

`A204867(∑[n+2]+4)`
-/

namespace A204862.P9046030014552213273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204862.P9046030014552213273

/-! ## A204862.P584163778425985742

`A204867(A167614(n+1))+char[15]`
-/

namespace A204862.P584163778425985742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204862.P584163778425985742

/-! ## A204862.P14584158447148355061

`A230571(n+1)+A204867(A167614(n+1))`
-/

namespace A204862.P14584158447148355061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (n + 1) + A204867 (A167614 (n + 1)).toNat

end

end A204862.P14584158447148355061

/-! ## A204862.P16547362213910605869

`A204867(A167614(n+1))%A204863(n+1)`
-/

namespace A204862.P16547362213910605869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204867 (A167614 (n + 1)).toNat) (A204863 (n + 1))

end

end A204862.P16547362213910605869

/-! ## A204862.P6585497731034155720

`lcm(A204867(A167614(n+1)), A305936(n+1))`
-/

namespace A204862.P6585497731034155720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204867 (A167614 (n + 1)).toNat) (A305936 (n + 1))

end

end A204862.P6585497731034155720

/-!
# A204863: Number of (n+2)X6 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..1 introduced in row major order.

The programs for A204863, there is no canonical definition to state claims against.
-/

/-! ## A204863.P16893902388391422384

`A204867(C(n+5, 2)-n)`
-/

namespace A204863.P16893902388391422384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (Nat.choose (n + 5) 2 - n)

end

end A204863.P16893902388391422384

/-! ## A204863.P2823183159226291489

`A204867(A374004(n+1))`
-/

namespace A204863.P2823183159226291489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A374004 (n + 1)).toNat

end

end A204863.P2823183159226291489

/-! ## A204863.P5171867046523282877

`A204867(A141214(n)+7)`
-/

namespace A204863.P5171867046523282877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A141214 n + 7).toNat

end

end A204863.P5171867046523282877

/-! ## A204863.P15265063543158225297

`A204867(A052905(n)+9)`
-/

namespace A204863.P15265063543158225297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A052905 n + 9).toNat

end

end A204863.P15265063543158225297

/-! ## A204863.P18118834038476561412

`A204867(A055999(n)+10)`
-/

namespace A204863.P18118834038476561412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A055999 n + 10).toNat

end

end A204863.P18118834038476561412

/-!
# A204864: Number of (n+2)X7 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..1 introduced in row major order.

The programs for A204864, there is no canonical definition to state claims against.
-/

/-! ## A204864.P14715582261856486166

`A204867(∑[n+4]+11)`
-/

namespace A204864.P14715582261856486166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A204864.P14715582261856486166

/-!
# A204865: Number of (n+2) X 8 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..1 introduced in row major order.

The programs for A204865, there is no canonical definition to state claims against.
-/

/-! ## A204865.P7517802524989215165

`A204867(A374007(n+1))`
-/

namespace A204865.P7517802524989215165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A374007 (n + 1)).toNat

end

end A204865.P7517802524989215165

/-! ## A204865.P2855079869187636786

`A204867(A166136(n+4))`
-/

namespace A204865.P2855079869187636786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A166136 (n + 4)).toNat

end

end A204865.P2855079869187636786

/-! ## A204865.P6093512243711061055

`A204867(A056115(n)+21)`
-/

namespace A204865.P6093512243711061055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A056115 n + 21).toNat

end

end A204865.P6093512243711061055

/-! ## A204865.P11298555610787313990

`A204867(A000096(n+4)+7)`
-/

namespace A204865.P11298555610787313990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A000096 (n + 4) + 7).toNat

end

end A204865.P11298555610787313990

/-! ## A204865.P15979118256113954048

`A204867(A000217(n+5)+6)`
-/

namespace A204865.P15979118256113954048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A000217 (n + 5) + 6).toNat

end

end A204865.P15979118256113954048

/-!
# A204866: Number of (n+2)X9 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..1 introduced in row major order.

The programs for A204866, there is no canonical definition to state claims against.
-/

/-! ## A204866.P1618924267467191126

`A204867(A374008(n+1))`
-/

namespace A204866.P1618924267467191126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A374008 (n + 1)).toNat

end

end A204866.P1618924267467191126

/-! ## A204866.P5143463549964600363

`A204867(A302537(n)+27)`
-/

namespace A204866.P5143463549964600363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A302537 n + 27).toNat

end

end A204866.P5143463549964600363

/-! ## A204866.P5457179082720022184

`A204867(eq[11, A066657(n)])`
-/

namespace A204866.P5457179082720022184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204866.P5457179082720022184

/-! ## A204866.P4698688760128560794

`A204867(A167499(n+5)+2)`
-/

namespace A204866.P4698688760128560794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A167499 (n + 5) + 2).toNat

end

end A204866.P4698688760128560794

/-! ## A204866.P37710719378327168

`A204867(A167614(n+5)+4)`
-/

namespace A204866.P37710719378327168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204867 (A167614 (n + 5) + 4).toNat

end

end A204866.P37710719378327168

/-!
# A204868: Number of (n+1)X(n+1) 0..3 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204868, there is no canonical definition to state claims against.
-/

/-! ## A204868.P17180007383670878042

`A204876(∑[4*n]+1)`
-/

namespace A204868.P17180007383670878042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204868.P17180007383670878042

/-! ## A204868.P4025025700616156871

`or(1, A204876(A001844(n)))`
-/

namespace A204868.P4025025700616156871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204876 (A001844 n).toNat)

end

end A204868.P4025025700616156871

/-! ## A204868.P6163318163151028530

`record[A003982(n)*A204876(n+1)]`
-/

namespace A204868.P6163318163151028530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204868.P6163318163151028530

/-! ## A204868.P11585678109176279623

`record[gcd(A003987(n), A204876(n+1))]`
-/

namespace A204868.P11585678109176279623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A204876 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204868.P11585678109176279623

/-! ## A204868.P1647503579014412275

`A204876(A001844(n))+A008683(lcm(4, n+1))`
-/

namespace A204868.P1647503579014412275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A001844 n).toNat + A008683 (Nat.lcm 4 (n + 1))

end

end A204868.P1647503579014412275

/-!
# A204869: Number of (n+1)X2 0..3 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204869, there is no canonical definition to state claims against.
-/

/-! ## A204869.P89027239790324562

`A204876(∑[n]+1)`
-/

namespace A204869.P89027239790324562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204869.P89027239790324562

/-! ## A204869.P8036076394078898169

`or(1, A204876(A000124(n)))`
-/

namespace A204869.P8036076394078898169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204876 (A000124 n).toNat)

end

end A204869.P8036076394078898169

/-! ## A204869.P17569898967780211607

`record[gcd(A002262(n), A204876(n+1))]`
-/

namespace A204869.P17569898967780211607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204876 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204869.P17569898967780211607

/-! ## A204869.P5527080462766439671

`record[A204876(n+1)/A008292(n+1)]`
-/

namespace A204869.P5527080462766439671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204876 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204869.P5527080462766439671

/-! ## A204869.P11046181742366332822

`record[root(A204876(n+1), A002260(n+1))]`
-/

namespace A204869.P11046181742366332822
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204876 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204869.P11046181742366332822

/-!
# A204870: Number of (n+1) X 3 0..3 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204870, there is no canonical definition to state claims against.
-/

/-! ## A204870.P2122109469375660514

`A204876(∑[n+1]+2)`
-/

namespace A204870.P2122109469375660514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204870.P2122109469375660514

/-! ## A204870.P12110052459035247128

`record[gcd(A002262(n), A204876(n+2))]`
-/

namespace A204870.P12110052459035247128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204876 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204870.P12110052459035247128

/-! ## A204870.P5058255411340477332

`or(1, A204876(A000096(n+1)))`
-/

namespace A204870.P5058255411340477332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204876 (A000096 (n + 1)).toNat)

end

end A204870.P5058255411340477332

/-! ## A204870.P7468018066113341893

`record[A204876(Δ[A003453(n+5)])]`
-/

namespace A204870.P7468018066113341893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204870.P7468018066113341893

/-! ## A204870.P11766358664170129214

`record[A204876(A000096(val(n+1, 2)+1))]`
-/

namespace A204870.P11766358664170129214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204870.P11766358664170129214

/-!
# A204871: Number of (n+1) X 4 0..3 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204871, there is no canonical definition to state claims against.
-/

/-! ## A204871.P747942528543925514

`A204876(∑[n+2]+4)`
-/

namespace A204871.P747942528543925514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204871.P747942528543925514

/-! ## A204871.P12641909796285136871

`or(1, A204876(A167614(n+1)))`
-/

namespace A204871.P12641909796285136871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204876 (A167614 (n + 1)).toNat)

end

end A204871.P12641909796285136871

/-! ## A204871.P1824647542462172119

`A204876(A167614(n+1))+A025469(n)`
-/

namespace A204871.P1824647542462172119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A167614 (n + 1)).toNat + A025469 n

end

end A204871.P1824647542462172119

/-! ## A204871.P3242480628395071473

`lcm(A033999(n), A204876(A167614(n+1)))`
-/

namespace A204871.P3242480628395071473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A204876 (A167614 (n + 1)).toNat)

end

end A204871.P3242480628395071473

/-! ## A204871.P5110304289726919451

`A204876(A167614(n+1))+A034547(n+1)`
-/

namespace A204871.P5110304289726919451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A167614 (n + 1)).toNat + A034547 (n + 1)

end

end A204871.P5110304289726919451

/-!
# A204872: Number of (n+1)X5 0..3 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204872, there is no canonical definition to state claims against.
-/

/-! ## A204872.P14357584599891647410

`A204876(A374004(n+1))`
-/

namespace A204872.P14357584599891647410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A374004 (n + 1)).toNat

end

end A204872.P14357584599891647410

/-! ## A204872.P7752321308536640451

`A204876(A052905(n)+9)`
-/

namespace A204872.P7752321308536640451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A052905 n + 9).toNat

end

end A204872.P7752321308536640451

/-! ## A204872.P2659783595251471585

`A204876(A055999(n)+10)`
-/

namespace A204872.P2659783595251471585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A055999 n + 10).toNat

end

end A204872.P2659783595251471585

/-! ## A204872.P8176579717530513601

`A204876(A167614(n+2)+1)`
-/

namespace A204872.P8176579717530513601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A167614 (n + 2) + 1).toNat

end

end A204872.P8176579717530513601

/-! ## A204872.P3342714599631533803

`A204876(eq[5, A131818(n+1)])`
-/

namespace A204872.P3342714599631533803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204872.P3342714599631533803

/-!
# A204873: Number of (n+1)X6 0..3 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204873, there is no canonical definition to state claims against.
-/

/-! ## A204873.P15818229369369312382

`A204876(A374005(n+1))`
-/

namespace A204873.P15818229369369312382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A374005 (n + 1)).toNat

end

end A204873.P15818229369369312382

/-! ## A204873.P13244577728783088095

`A204876(A167499(n+3))`
-/

namespace A204873.P13244577728783088095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A167499 (n + 3)).toNat

end

end A204873.P13244577728783088095

/-! ## A204873.P5972997956402423801

`A204876(eq[6, A131818(n+1)])`
-/

namespace A204873.P5972997956402423801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204873.P5972997956402423801

/-! ## A204873.P7867236078241443477

`A204876(Δ[A264443(n)])`
-/

namespace A204873.P7867236078241443477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (f1 (n + 1) - f1 n).toNat

end

end A204873.P7867236078241443477

/-! ## A204873.P2094654164736110453

`A204876(A046691(n+3))`
-/

namespace A204873.P2094654164736110453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A046691 (n + 3)).toNat

end

end A204873.P2094654164736110453

/-!
# A204874: Number of (n+1)X7 0..3 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204874, there is no canonical definition to state claims against.
-/

/-! ## A204874.P10187230211573081491

`A204876(A374007(n+1))`
-/

namespace A204874.P10187230211573081491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A374007 (n + 1)).toNat

end

end A204874.P10187230211573081491

/-! ## A204874.P17778663359441581060

`A204876(Δ[A264443(n)]+10)`
-/

namespace A204874.P17778663359441581060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (f1 (n + 1) - f1 n + 10).toNat

end

end A204874.P17778663359441581060

/-! ## A204874.P9554425340404049661

`A204876(A246172(n+1)+20)`
-/

namespace A204874.P9554425340404049661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A246172 (n + 1) + 20).toNat

end

end A204874.P9554425340404049661

/-! ## A204874.P476474961554427522

`A204876(A052905(n+3))`
-/

namespace A204874.P476474961554427522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A052905 (n + 3)).toNat

end

end A204874.P476474961554427522

/-! ## A204874.P8809375402927653586

`A204876(eq[5, A193592(n)])`
-/

namespace A204874.P8809375402927653586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204874.P8809375402927653586

/-!
# A204875: Number of (n+1) X 8 0..3 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204875, there is no canonical definition to state claims against.
-/

/-! ## A204875.P1003113228123112778

`A204876(A374008(n+1))`
-/

namespace A204875.P1003113228123112778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A374008 (n + 1)).toNat

end

end A204875.P1003113228123112778

/-! ## A204875.P16711634736393570344

`A204876(eq[8, A131818(n+1)])`
-/

namespace A204875.P16711634736393570344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204875.P16711634736393570344

/-! ## A204875.P14264215799707745489

`A204876(A055999(n+4))`
-/

namespace A204875.P14264215799707745489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (A055999 (n + 4)).toNat

end

end A204875.P14264215799707745489

/-! ## A204875.P18110903489728944458

`A204876(eq[5, A332954(n)])`
-/

namespace A204875.P18110903489728944458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204875.P18110903489728944458

/-! ## A204875.P15475471189038038878

`A204876(eq[6, A193592(n)])`
-/

namespace A204875.P15475471189038038878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204875.P15475471189038038878

/-!
# A204876: T(n,k) = Number of (n+1) X (k+1) 0..3 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204876, there is no canonical definition to state claims against.
-/

/-! ## A204876.P16654341099299054405

`A224975(n+1)-A206255(n+1)`
-/

namespace A204876.P16654341099299054405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (n + 1) - A206255 (n + 1)

end

end A204876.P16654341099299054405

/-!
# A204877: Continued fraction expansion of 3*tanh(1/3).

The programs for A204877, the canonical program `A204877.P8380934504328064057` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204877 has offset 0).

The definition of A204877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204877.P8380934504328064057

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=27, a(3)=5, a(4)=63`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204877

/-- `2*a(n-2)-a(n-4)` -/
def P8380934504328064057.Spec : Prop :=
  ∀ n, P8380934504328064057.a n = A204877 n

theorem P8380934504328064057.correct : P8380934504328064057.Spec := by
  intro n
  simp only [A204877]

end A204877

/-! ## A204877.P14625011310049256560

`a(n-2)+A040314(n)` with `a(0)=0, a(1)=1, a(2)=27`
-/

namespace A204877.P14625011310049256560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 27] fun n a =>
  a (n - 2) + A040314 n

end

end A204877.P14625011310049256560

namespace A204877

/-- `a(n-2)+A040314(n)` -/
def P14625011310049256560.Spec : Prop :=
  ∀ n, P14625011310049256560.a n = A204877 n

end A204877

/-! ## A204877.P7423709000173479181

`gcd(9, n%2)*comp[2*(n+1)]`
-/

namespace A204877.P7423709000173479181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 (n % 2) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A204877.P7423709000173479181

namespace A204877

/-- `gcd(9, n%2)*comp[2*(n+1)]` -/
def P7423709000173479181.Spec : Prop :=
  ∀ n, (P7423709000173479181.a n : ℤ) = A204877 n

end A204877

/-! ## A204877.P8563755603237735085

`A112030(n)²*comp[2*(n+1)]`
-/

namespace A204877.P8563755603237735085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112030 n ^ 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A204877.P8563755603237735085

namespace A204877

/-- `A112030(n)²*comp[2*(n+1)]` -/
def P8563755603237735085.Spec : Prop :=
  ∀ n, P8563755603237735085.a n = A204877 n

end A204877

/-! ## A204877.P1644528589628204891

`A176040(n)²*A004273(n)`
-/

namespace A204877.P1644528589628204891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n ^ 2 * A004273 n

end

end A204877.P1644528589628204891

namespace A204877

/-- `A176040(n)²*A004273(n)` -/
def P1644528589628204891.Spec : Prop :=
  ∀ n, P1644528589628204891.a n = A204877 n

end A204877

/-! ## A204877.P6169413706404123957

`dr(A010170(n))*A004273(n)`
-/

namespace A204877.P6169413706404123957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A010170 n) : ℤ) * A004273 n

end

end A204877.P6169413706404123957

namespace A204877

/-- `dr(A010170(n))*A004273(n)` -/
def P6169413706404123957.Spec : Prop :=
  ∀ n, P6169413706404123957.a n = A204877 n

end A204877

/-! ## A204877.P11106377463589995409

`A004273(n)/2*A040080(n)`
-/

namespace A204877.P11106377463589995409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 n : ℚ) / 2 * (A040080 n : ℚ)

end

end A204877.P11106377463589995409

namespace A204877

/-- `A004273(n)/2*A040080(n)` -/
def P11106377463589995409.Spec : Prop :=
  ∀ n, P11106377463589995409.a n = (A204877 n : ℚ)

end A204877

/-! ## A204877.P1489942811687124296

`(A280560(n)+1)²*A004273(n)`
-/

namespace A204877.P1489942811687124296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280560 n + 1) ^ 2 * A004273 n

end

end A204877.P1489942811687124296

namespace A204877

/-- `(A280560(n)+1)²*A004273(n)` -/
def P1489942811687124296.Spec : Prop :=
  ∀ n, P1489942811687124296.a n = A204877 n

end A204877

/-! ## A204877.P6185012831972641409

`(A033999(n)+2)²*A004273(n)`
-/

namespace A204877.P6185012831972641409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 2) ^ 2 * A004273 n

end

end A204877.P6185012831972641409

namespace A204877

/-- `(A033999(n)+2)²*A004273(n)` -/
def P6185012831972641409.Spec : Prop :=
  ∀ n, P6185012831972641409.a n = A204877 n

end A204877

/-! ## A204877.P5502486711843549135

`(1-A105397(n))²*A004273(n)`
-/

namespace A204877.P5502486711843549135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A105397 n) ^ 2 * A004273 n

end

end A204877.P5502486711843549135

namespace A204877

/-- `(1-A105397(n))²*A004273(n)` -/
def P5502486711843549135.Spec : Prop :=
  ∀ n, P5502486711843549135.a n = A204877 n

end A204877

/-! ## A204877.P3976872206577855652

`(2-A062157(n))²*A004273(n)`
-/

namespace A204877.P3976872206577855652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A062157 n) ^ 2 * A004273 n

end

end A204877.P3976872206577855652

namespace A204877

/-- `(2-A062157(n))²*A004273(n)` -/
def P3976872206577855652.Spec : Prop :=
  ∀ n, P3976872206577855652.a n = A204877 n

end A204877

/-! ## A204877.P15174763701464779572

`(2-A165326(n))²*A004273(n)`
-/

namespace A204877.P15174763701464779572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165326 n) ^ 2 * A004273 n

end

end A204877.P15174763701464779572

namespace A204877

/-- `(2-A165326(n))²*A004273(n)` -/
def P15174763701464779572.Spec : Prop :=
  ∀ n, P15174763701464779572.a n = A204877 n

end A204877

/-! ## A204877.P348511373089451215

`(A004277(n)-1)*A153284(n+1)²`
-/

namespace A204877.P348511373089451215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - 1) * A153284 (n + 1) ^ 2

end

end A204877.P348511373089451215

namespace A204877

/-- `(A004277(n)-1)*A153284(n+1)²` -/
def P348511373089451215.Spec : Prop :=
  ∀ n, P348511373089451215.a n = A204877 n

end A204877

/-! ## A204877.P9826602151840323560

`A010684(n+1)²*A004273(n)`
-/

namespace A204877.P9826602151840323560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1) ^ 2 * A004273 n

end

end A204877.P9826602151840323560

namespace A204877

/-- `A010684(n+1)²*A004273(n)` -/
def P9826602151840323560.Spec : Prop :=
  ∀ n, P9826602151840323560.a n = A204877 n

end A204877

/-! ## A204877.P6258829350381835387

`(A004277(n)-1)*A010690(n+1)`
-/

namespace A204877.P6258829350381835387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - 1) * A010690 (n + 1)

end

end A204877.P6258829350381835387

namespace A204877

/-- `(A004277(n)-1)*A010690(n+1)` -/
def P6258829350381835387.Spec : Prop :=
  ∀ n, P6258829350381835387.a n = A204877 n

end A204877

/-! ## A204877.P12890461930777734000

`comp[A004277(n+1)]*A010690(n+1)`
-/

namespace A204877.P12890461930777734000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A010690 (n + 1)

end

end A204877.P12890461930777734000

namespace A204877

/-- `comp[A004277(n+1)]*A010690(n+1)` -/
def P12890461930777734000.Spec : Prop :=
  ∀ n, P12890461930777734000.a n = A204877 n

end A204877

/-! ## A204877.P2472208693862765982

`A004273(Δ[A032766(n+1)])²*A004273(n)`
-/

namespace A204877.P2472208693862765982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (n + 1) - f1 n).toNat ^ 2 * A004273 n

end

end A204877.P2472208693862765982

namespace A204877

/-- `A004273(Δ[A032766(n+1)])²*A004273(n)` -/
def P2472208693862765982.Spec : Prop :=
  ∀ n, P2472208693862765982.a n = A204877 n

end A204877

/-! ## A204877.P4756598850047452856

`record[n*A010690(n)]/A010690(n)`
-/

namespace A204877.P4756598850047452856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010690 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A010690 n : ℚ)

end

end A204877.P4756598850047452856

namespace A204877

/-- `record[n*A010690(n)]/A010690(n)` -/
def P4756598850047452856.Spec : Prop :=
  ∀ n, P4756598850047452856.a n = (A204877 n : ℚ)

end A204877

/-! ## A204877.P14466192294989503596

`A010690(n+1)*A014681(2*n)`
-/

namespace A204877.P14466192294989503596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (n + 1) * A014681 (2 * n)

end

end A204877.P14466192294989503596

namespace A204877

/-- `A010690(n+1)*A014681(2*n)` -/
def P14466192294989503596.Spec : Prop :=
  ∀ n, P14466192294989503596.a n = A204877 n

end A204877

/-! ## A204877.P15296957562289823529

`Δ[A014681(n)]²*A014681(2*n)`
-/

namespace A204877.P15296957562289823529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A014681 (2 * n)

end

end A204877.P15296957562289823529

namespace A204877

/-- `Δ[A014681(n)]²*A014681(2*n)` -/
def P15296957562289823529.Spec : Prop :=
  ∀ n, P15296957562289823529.a n = A204877 n

end A204877

/-!
# A204878: Numbers that cannot be written as sum of perfect numbers.

The programs for A204878, the canonical program `A204878.P16061919434304455052` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204878 has offset 1).

The definition of A204878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204878.P16061919434304455052

`comp[5*n%28+n]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204878

/-- `comp[5*n%28+n]` -/
def P16061919434304455052.Spec : Prop :=
  ∀ n, (P16061919434304455052.a n : ℤ) = A204878 (n + 1)

theorem P16061919434304455052.correct : P16061919434304455052.Spec := by
  intro n
  simp only [A204878, Nat.add_sub_cancel]

end A204878

/-!
# A204879: Numbers that can be written as sum of perfect numbers.

The programs for A204879, the canonical program `A204879.P17026497277857480127` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204879 has offset 1).

The definition of A204879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204879.P17026497277857480127

`record[A005843(n+3)%A000124(A029297(n+15))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204879

/-- `record[A005843(n+3)%A000124(A029297(n+15))]` -/
def P17026497277857480127.Spec : Prop :=
  ∀ n, P17026497277857480127.a n = A204879 (n + 1)

theorem P17026497277857480127.correct : P17026497277857480127.Spec := by
  intro n
  simp only [A204879, Nat.add_sub_cancel]

end A204879

/-!
# A204880: Number of (n+2) X 3 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..3 introduced in row major order.

The programs for A204880, there is no canonical definition to state claims against.
-/

/-! ## A204880.P2450443224508583314

`A204884(∑[n]+1)`
-/

namespace A204880.P2450443224508583314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204880.P2450443224508583314

/-! ## A204880.P13528866025349631305

`record[A010054(n)*A204884(n+1)]`
-/

namespace A204880.P13528866025349631305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204880.P13528866025349631305

/-! ## A204880.P4877907745528953560

`record[A204884(n+1)/A147565(n)]`
-/

namespace A204880.P4877907745528953560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204884 (n + 1) : ℚ) / (A147565 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204880.P4877907745528953560

/-! ## A204880.P3708859909877390257

`record[gcd(A002262(n), A204884(n+1))]`
-/

namespace A204880.P3708859909877390257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204880.P3708859909877390257

/-! ## A204880.P6347443178685373769

`record[root(A204884(n+1), A008292(n+1))]`
-/

namespace A204880.P6347443178685373769
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204884 (n + 1) : ℝ) ^ (1 / (A008292 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204880.P6347443178685373769

/-!
# A204881: Number of (n+2) X 4 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..3 introduced in row major order.

The programs for A204881, there is no canonical definition to state claims against.
-/

/-! ## A204881.P7508188692921545169

`A204884(∑[n+1]+2)`
-/

namespace A204881.P7508188692921545169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204884 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204881.P7508188692921545169

/-! ## A204881.P3191418672902212940

`record[A010054(n)*A204884(n+2)]`
-/

namespace A204881.P3191418672902212940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204884 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204881.P3191418672902212940

/-! ## A204881.P1825338184464490419

`record[gcd(A002262(n), A204884(n+2))]`
-/

namespace A204881.P1825338184464490419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204884 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204881.P1825338184464490419

/-!
# A204882: Number of (n+2)X5 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..3 introduced in row major order.

The programs for A204882, there is no canonical definition to state claims against.
-/

/-! ## A204882.P13394314326173264528

`A204884(A167614(n+1))`
-/

namespace A204882.P13394314326173264528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204884 (A167614 (n + 1)).toNat

end

end A204882.P13394314326173264528

/-! ## A204882.P12306610020692245214

`A204884(A046691(n)+7)`
-/

namespace A204882.P12306610020692245214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204884 (A046691 n + 7).toNat

end

end A204882.P12306610020692245214

/-!
# A204883: 

The programs for A204883, there is no canonical definition to state claims against.
-/

/-! ## A204883.P8192399972649030817

`A204884(A055998(n+2))`
-/

namespace A204883.P8192399972649030817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204884 (A055998 (n + 2)).toNat

end

end A204883.P8192399972649030817

/-!
# A204885: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204885, there is no canonical definition to state claims against.
-/

/-! ## A204885.P11449528678028360193

`A204889(∑[n]+1)`
-/

namespace A204885.P11449528678028360193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204889 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204885.P11449528678028360193

/-! ## A204885.P2044622939622719944

`record[gcd(A002262(n), A204889(n+1))]`
-/

namespace A204885.P2044622939622719944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204889 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204885.P2044622939622719944

/-! ## A204885.P11499409535125994901

`record[root(A204889(n+1), A008292(n+1))]`
-/

namespace A204885.P11499409535125994901
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204889 (n + 1) : ℝ) ^ (1 / (A008292 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204885.P11499409535125994901

/-! ## A204885.P7237591563231935034

`record[root(A204889(n+1), A091298(n+1))]`
-/

namespace A204885.P7237591563231935034
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204889 (n + 1) : ℝ) ^ (1 / (A091298 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204885.P7237591563231935034

/-! ## A204885.P15833077109038014364

`record[root(A204889(n+1), A276562(n+1))]`
-/

namespace A204885.P15833077109038014364
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204889 (n + 1) : ℝ) ^ (1 / (A276562 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204885.P15833077109038014364

/-!
# A204886: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204886, there is no canonical definition to state claims against.
-/

/-! ## A204886.P4790708646960032233

`A204889(∑[n+1]+2)`
-/

namespace A204886.P4790708646960032233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204889 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204886.P4790708646960032233

/-! ## A204886.P3944836797215672191

`record[gcd(A002262(n), A204889(n+2))]`
-/

namespace A204886.P3944836797215672191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204889 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204886.P3944836797215672191

/-! ## A204886.P3188644232047807305

`record[root(A204889(n+2), A091298(n+1))]`
-/

namespace A204886.P3188644232047807305
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204889 (n + 2) : ℝ) ^ (1 / (A091298 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204886.P3188644232047807305

/-! ## A204886.P1413131208553823826

`record[root(A204889(n+2), A276562(n+1))]`
-/

namespace A204886.P1413131208553823826
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204889 (n + 2) : ℝ) ^ (1 / (A276562 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204886.P1413131208553823826

/-!
# A204887: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204887, there is no canonical definition to state claims against.
-/

/-! ## A204887.P12870287719085875284

`A204889(A167614(n+1))`
-/

namespace A204887.P12870287719085875284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204889 (A167614 (n + 1)).toNat

end

end A204887.P12870287719085875284

/-! ## A204887.P1542797321582979718

`A204889(A046691(n)+7)`
-/

namespace A204887.P1542797321582979718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204889 (A046691 n + 7).toNat

end

end A204887.P1542797321582979718

/-!
# A204888: 

The programs for A204888, there is no canonical definition to state claims against.
-/

/-! ## A204888.P2032080717556344531

`A204889(eq[5, A131818(n+1)])`
-/

namespace A204888.P2032080717556344531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204888.P2032080717556344531

/-!
# A204890: Ordered differences of primes.

The programs for A204890, the canonical program `A204890.P9731393522808832182` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204890 has offset 1).

The definition of A204890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204890.P13360631024616284134

`A389809(n+1)-A037126(n+1)`
-/

namespace A204890.P13360631024616284134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) - A037126 (n + 1)

end

end A204890.P13360631024616284134

namespace A204890

/-- `A389809(n+1)-A037126(n+1)` -/
def P13360631024616284134.Spec : Prop :=
  ∀ n, P13360631024616284134.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P15249034437532365590

`A204914(n+1)/A391357(n+1)`
-/

namespace A204890.P15249034437532365590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204914 (n + 1) : ℚ) / (A391357 (n + 1) : ℚ)

end

end A204890.P15249034437532365590

namespace A204890

/-- `A204914(n+1)/A391357(n+1)` -/
def P15249034437532365590.Spec : Prop :=
  ∀ n, P15249034437532365590.a n = (A204890 (n + 1) : ℚ)

end A204890

/-! ## A204890.P3867359667408892000

`A000040(comp[∑[n]]-n)-A037126(n+1)`
-/

namespace A204890.P3867359667408892000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A037126 (n + 1)

end

end A204890.P3867359667408892000

namespace A204890

/-- `A000040(comp[∑[n]]-n)-A037126(n+1)` -/
def P3867359667408892000.Spec : Prop :=
  ∀ n, P3867359667408892000.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P9731393522808832182

`A065091(A002024(n+1))-A037126(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204890

/-- `A065091(A002024(n+1))-A037126(n+1)` -/
def P9731393522808832182.Spec : Prop :=
  ∀ n, P9731393522808832182.a n = A204890 (n + 1)

theorem P9731393522808832182.correct : P9731393522808832182.Spec := by
  intro n
  simp only [A204890, Nat.add_sub_cancel]

end A204890

/-! ## A204890.P14863382747941941462

`A165712(A005145(n+1))-A037126(n+1)`
-/

namespace A204890.P14863382747941941462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165712 (A005145 (n + 1)).toNat - A037126 (n + 1)

end

end A204890.P14863382747941941462

namespace A204890

/-- `A165712(A005145(n+1))-A037126(n+1)` -/
def P14863382747941941462.Spec : Prop :=
  ∀ n, P14863382747941941462.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P8211814250311219350

`A067747(A111650(n+1)+1)-A037126(n+1)`
-/

namespace A204890.P8211814250311219350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A111650 (n + 1) + 1).toNat - A037126 (n + 1)

end

end A204890.P8211814250311219350

namespace A204890

/-- `A067747(A111650(n+1)+1)-A037126(n+1)` -/
def P8211814250311219350.Spec : Prop :=
  ∀ n, P8211814250311219350.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P1656760760933855524

`A008578(A003057(n+2)+1)-A037126(n+1)`
-/

namespace A204890.P1656760760933855524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A003057 (n + 2) + 1).toNat - A037126 (n + 1)

end

end A204890.P1656760760933855524

namespace A204890

/-- `A008578(A003057(n+2)+1)-A037126(n+1)` -/
def P1656760760933855524.Spec : Prop :=
  ∀ n, P1656760760933855524.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P4084824941098785164

`A065091(A002024(n+1))-A000040(A002260(n+1))`
-/

namespace A204890.P4084824941098785164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A002024 (n + 1)).toNat - A000040 (A002260 (n + 1)).toNat

end

end A204890.P4084824941098785164

namespace A204890

/-- `A065091(A002024(n+1))-A000040(A002260(n+1))` -/
def P4084824941098785164.Spec : Prop :=
  ∀ n, P4084824941098785164.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P12764044490918751304

`A000040(A003057(n+2))-A000040(A002260(n+1))`
-/

namespace A204890.P12764044490918751304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2)).toNat - A000040 (A002260 (n + 1)).toNat

end

end A204890.P12764044490918751304

namespace A204890

/-- `A000040(A003057(n+2))-A000040(A002260(n+1))` -/
def P12764044490918751304.Spec : Prop :=
  ∀ n, P12764044490918751304.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P3041806006794123374

`A090321(A038722(n+1))`
-/

namespace A204890.P3041806006794123374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090321 (A038722 (n + 1)).toNat

end

end A204890.P3041806006794123374

namespace A204890

/-- `A090321(A038722(n+1))` -/
def P3041806006794123374.Spec : Prop :=
  ∀ n, P3041806006794123374.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P11095095858953713844

`A051599(A127739(n+1))-A037126(n+1)`
-/

namespace A204890.P11095095858953713844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051599 (A127739 (n + 1)).toNat - A037126 (n + 1)

end

end A204890.P11095095858953713844

namespace A204890

/-- `A051599(A127739(n+1))-A037126(n+1)` -/
def P11095095858953713844.Spec : Prop :=
  ∀ n, P11095095858953713844.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P12758197550123247659

`A086800(comp[∑[n]])`
-/

namespace A204890.P12758197550123247659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A204890.P12758197550123247659

namespace A204890

/-- `A086800(comp[∑[n]])` -/
def P12758197550123247659.Spec : Prop :=
  ∀ n, P12758197550123247659.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P3747272941573739151

`A086800(∑[A035214(n)])%∑[n+2]`
-/

namespace A204890.P3747272941573739151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A204890.P3747272941573739151

namespace A204890

/-- `A086800(∑[A035214(n)])%∑[n+2]` -/
def P3747272941573739151.Spec : Prop :=
  ∀ n, P3747272941573739151.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P3333421327951712341

`A000027(A086800(∑[A035214(n)]))`
-/

namespace A204890.P3333421327951712341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A086800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A204890.P3333421327951712341

namespace A204890

/-- `A000027(A086800(∑[A035214(n)]))` -/
def P3333421327951712341.Spec : Prop :=
  ∀ n, P3333421327951712341.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P7535571072681169434

`A000027(A086800(A014132(n+1)))`
-/

namespace A204890.P7535571072681169434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A086800 (A014132 (n + 1)).toNat).toNat

end

end A204890.P7535571072681169434

namespace A204890

/-- `A000027(A086800(A014132(n+1)))` -/
def P7535571072681169434.Spec : Prop :=
  ∀ n, P7535571072681169434.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P12299641901551245608

`gcd(A000038(n), A086800(A014132(n+1)))`
-/

namespace A204890.P12299641901551245608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A086800 (A014132 (n + 1)).toNat)

end

end A204890.P12299641901551245608

namespace A204890

/-- `gcd(A000038(n), A086800(A014132(n+1)))` -/
def P12299641901551245608.Spec : Prop :=
  ∀ n, (P12299641901551245608.a n : ℤ) = A204890 (n + 1)

end A204890

/-! ## A204890.P8436943608417376621

`∑{d}[A086800(A014132(n+1)), A000010(#)]`
-/

namespace A204890.P8436943608417376621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A204890.P8436943608417376621

namespace A204890

/-- `∑{d}[A086800(A014132(n+1)), A000010(#)]` -/
def P8436943608417376621.Spec : Prop :=
  ∀ n, P8436943608417376621.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P8201063829616588789

`A005145(A014132(n+1))-A037126(n+1)`
-/

namespace A204890.P8201063829616588789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A014132 (n + 1)).toNat - A037126 (n + 1)

end

end A204890.P8201063829616588789

namespace A204890

/-- `A005145(A014132(n+1))-A037126(n+1)` -/
def P8201063829616588789.Spec : Prop :=
  ∀ n, P8201063829616588789.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P16250390279602619844

`A086800(A014132(n+1)+A000038(n))-A000038(n)`
-/

namespace A204890.P16250390279602619844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (A014132 (n + 1) + A000038 n).toNat - A000038 n

end

end A204890.P16250390279602619844

namespace A204890

/-- `A086800(A014132(n+1)+A000038(n))-A000038(n)` -/
def P16250390279602619844.Spec : Prop :=
  ∀ n, P16250390279602619844.a n = A204890 (n + 1)

end A204890

/-! ## A204890.P3281951075587836694

`A005145(A014132(n+1))+A086800(n+1)-A005145(n+1)`
-/

namespace A204890.P3281951075587836694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A014132 (n + 1)).toNat + (A086800 (n + 1) - A005145 (n + 1))

end

end A204890.P3281951075587836694

namespace A204890

/-- `A005145(A014132(n+1))+A086800(n+1)-A005145(n+1)` -/
def P3281951075587836694.Spec : Prop :=
  ∀ n, P3281951075587836694.a n = A204890 (n + 1)

end A204890

/-!
# A204892: Least k such that n divides s(k)-s(j) for some j in [1,k), where s(k)=prime(k).

The programs for A204892, there is no canonical definition to state claims against.
-/

/-! ## A204892.P2629730155642776579

`A000720(A204894(n+1))`
-/

namespace A204892.P2629730155642776579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A204894 (n + 1)).toNat

end

end A204892.P2629730155642776579

/-! ## A204892.P8324050479833173222

`A061395(2*A204894(n+1))`
-/

namespace A204892.P8324050479833173222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A204894 (n + 1)).toNat

end

end A204892.P8324050479833173222

/-! ## A204892.P13263413986918477736

`A302039(A204894(n+1)+char[1])`
-/

namespace A204892.P13263413986918477736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A204894 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A204892.P13263413986918477736

/-! ## A204892.P4127292424879155715

`A302039(2*A204894(n+1))-1`
-/

namespace A204892.P4127292424879155715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (2 * A204894 (n + 1)).toNat - 1

end

end A204892.P4127292424879155715

/-! ## A204892.P8563048517051310310

`A061395(A204894(n+1)%A062965(n+1))`
-/

namespace A204892.P8563048517051310310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A204894 (n + 1)) (A062965 (n + 1))).toNat

end

end A204892.P8563048517051310310

/-! ## A204892.P10294322332714763288

`A056239(p?[A204894(n+1)])`
-/

namespace A204892.P10294322332714763288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A204892.P10294322332714763288

/-! ## A204892.P8748582466006387524

`∑{d}[A204894(n+1), A056239(#)]`
-/

namespace A204892.P8748582466006387524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A204892.P8748582466006387524

/-! ## A204892.P7997149290501000093

`A056239(∏{d}[A204894(n+1), #])`
-/

namespace A204892.P7997149290501000093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A204892.P7997149290501000093

/-! ## A204892.P1050408492374838180

`A342655(p?[A204894(n+1)])+1`
-/

namespace A204892.P1050408492374838180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A204892.P1050408492374838180

/-! ## A204892.P14608387825843292219

`A033270(A204894(n+1)+1)+1`
-/

namespace A204892.P14608387825843292219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A204894 (n + 1) + 1).toNat + 1

end

end A204892.P14608387825843292219

/-! ## A204892.P972381338075508775

`A082058(∑{d}[A204894(n+1), #]-1)`
-/

namespace A204892.P972381338075508775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (∑ d ∈ Nat.divisors (f1 n).natAbs, d - 1)

end

end A204892.P972381338075508775

/-! ## A204892.P12971988719902609029

`A082058(∑{d}[A204894(n+1), A000010(#)])`
-/

namespace A204892.P12971988719902609029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A204892.P12971988719902609029

/-! ## A204892.P860967770210530564

`A064839(A204894(n+1))%Δ[A014494(n)]`
-/

namespace A204892.P860967770210530564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064839 (A204894 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A204892.P860967770210530564

/-! ## A204892.P3002651530809958498

`A056239(2*A204894(n+1)-A204894(n+1))`
-/

namespace A204892.P3002651530809958498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A204894 (n + 1) - A204894 (n + 1)).toNat

end

end A204892.P3002651530809958498

/-! ## A204892.P16659741152676600882

`A064839(2*A204894(n+1)-A204894(n+1))`
-/

namespace A204892.P16659741152676600882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (2 * A204894 (n + 1) - A204894 (n + 1)).toNat

end

end A204892.P16659741152676600882

/-! ## A204892.P9255229779326412495

`A082058(2*A204894(n+1)-A204894(n+1))`
-/

namespace A204892.P9255229779326412495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (2 * A204894 (n + 1) - A204894 (n + 1)).toNat

end

end A204892.P9255229779326412495

/-! ## A204892.P13928520074250393092

`A056239(2*A204894(n+1))-1`
-/

namespace A204892.P13928520074250393092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A204894 (n + 1)).toNat - 1

end

end A204892.P13928520074250393092

/-! ## A204892.P11308863226747926639

`A102885(2*A204894(n+1)-A204894(n+1))`
-/

namespace A204892.P11308863226747926639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102885 (2 * A204894 (n + 1) - A204894 (n + 1)).toNat

end

end A204892.P11308863226747926639

/-! ## A204892.P12583013035661428542

`A061395(A204894(n+1)²)`
-/

namespace A204892.P12583013035661428542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A204894 (n + 1) ^ 2).toNat

end

end A204892.P12583013035661428542

/-! ## A204892.P13441125054921163003

`A302039(A204894(n+1)²)/2`
-/

namespace A204892.P13441125054921163003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302039 (A204894 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A204892.P13441125054921163003

/-!
# A204893: The index j

The programs for A204893, there is no canonical definition to state claims against.
-/

/-! ## A204893.P13544169307043618321

`A000720(A204895(n+1))`
-/

namespace A204893.P13544169307043618321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A204895 (n + 1)).toNat

end

end A204893.P13544169307043618321

/-! ## A204893.P15287431959115988641

`A061395(A204895(n+1)²)`
-/

namespace A204893.P15287431959115988641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A204895 (n + 1) ^ 2).toNat

end

end A204893.P15287431959115988641

/-! ## A204893.P10109995690976213929

`A003963(2*A204895(n+1))`
-/

namespace A204893.P10109995690976213929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A204895 (n + 1)).toNat

end

end A204893.P10109995690976213929

/-! ## A204893.P1292237753159035110

`A056172(2*A204895(n+1))`
-/

namespace A204893.P1292237753159035110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A204895 (n + 1)).toNat

end

end A204893.P1292237753159035110

/-! ## A204893.P15270034803595701413

`A061395(2*A204895(n+1))`
-/

namespace A204893.P15270034803595701413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A204895 (n + 1)).toNat

end

end A204893.P15270034803595701413

/-! ## A204893.P15556848914349466587

`A204892(A204895(n+1)-1)-1`
-/

namespace A204893.P15556848914349466587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A204895 (n + 1) - 1).toNat - 1

end

end A204893.P15556848914349466587

/-! ## A204893.P12192929765409650129

`A061395(xor(1, A204895(n+1))+1)`
-/

namespace A204893.P12192929765409650129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.xor 1 (A204895 (n + 1)) + 1).toNat

end

end A204893.P12192929765409650129

/-! ## A204893.P5242926164922012477

`A102885(A204894(n+1)%(n+1))`
-/

namespace A204893.P5242926164922012477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102885 (Int.tmod (A204894 (n + 1)) (n + 1 : ℤ)).toNat

end

end A204893.P5242926164922012477

/-! ## A204893.P1688309443676501230

`A056172(A204895(n+1)+A204895(n+1)+1)`
-/

namespace A204893.P1688309443676501230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A204895 (n + 1) + (A204895 (n + 1) + 1)).toNat

end

end A204893.P1688309443676501230

/-! ## A204893.P7545538017922760421

`A026233(A204894(n+1)-A204896(n+1))`
-/

namespace A204893.P7545538017922760421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A204894 (n + 1) - A204896 (n + 1)).toNat

end

end A204893.P7545538017922760421

/-! ## A204893.P14686722660770983974

`A056239(A204894(n+1)-A204896(n+1))`
-/

namespace A204893.P14686722660770983974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A204894 (n + 1) - A204896 (n + 1)).toNat

end

end A204893.P14686722660770983974

/-! ## A204893.P2987706326004006874

`A061395(A204894(n+1)-A204896(n+1))`
-/

namespace A204893.P2987706326004006874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A204894 (n + 1) - A204896 (n + 1)).toNat

end

end A204893.P2987706326004006874

/-! ## A204893.P15940365781460066613

`A302039(A204894(n+1)-A204896(n+1))`
-/

namespace A204893.P15940365781460066613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A204894 (n + 1) - A204896 (n + 1)).toNat

end

end A204893.P15940365781460066613

/-! ## A204893.P11631701026742519240

`A003963(A204895(n+1)²)/A003963(A204895(n+1))`
-/

namespace A204893.P11631701026742519240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (A204895 (n + 1) ^ 2).toNat : ℚ) / (A003963 (A204895 (n + 1)).toNat : ℚ)

end

end A204893.P11631701026742519240

/-! ## A204893.P15912058111029591186

`A002260(A204891(n+1))`
-/

namespace A204893.P15912058111029591186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204891 (n + 1)).toNat

end

end A204893.P15912058111029591186

/-!
# A204894: Least prime p such that n divides p-q for some prime q

The programs for A204894, there is no canonical definition to state claims against.
-/

/-! ## A204894.P3684911808016650988

`A000040(A204892(1+n))`
-/

namespace A204894.P3684911808016650988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204892 (1 + n)).toNat

end

end A204894.P3684911808016650988

/-! ## A204894.P14413651488859461279

`A006005(A204892(n+1))`
-/

namespace A204894.P14413651488859461279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A204892 (n + 1)).toNat

end

end A204894.P14413651488859461279

/-! ## A204894.P13591177380264128825

`A008578(A204892(n+1)+1)`
-/

namespace A204894.P13591177380264128825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A204892 (n + 1) + 1).toNat

end

end A204894.P13591177380264128825

/-! ## A204894.P3040165568986049873

`A065091(A204892(n+1)-1)`
-/

namespace A204894.P3040165568986049873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A204892 (n + 1) - 1).toNat

end

end A204894.P3040165568986049873

/-! ## A204894.P12400758141036785451

`A158611(A204892(n+1)+2)`
-/

namespace A204894.P12400758141036785451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A204892 (n + 1) + 2).toNat

end

end A204894.P12400758141036785451

/-! ## A204894.P4406110566003046330

`A073846(2*A204892(n+1))`
-/

namespace A204894.P4406110566003046330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A204892 (n + 1)).toNat

end

end A204894.P4406110566003046330

/-! ## A204894.P9185379511158754807

`A204896(n+1)+A204895(n+1)`
-/

namespace A204894.P9185379511158754807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204896 (n + 1) + A204895 (n + 1)

end

end A204894.P9185379511158754807

/-! ## A204894.P8752814295056480868

`A389809(A204891(n+1))`
-/

namespace A204894.P8752814295056480868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A204891 (n + 1)).toNat

end

end A204894.P8752814295056480868

/-! ## A204894.P2621066653540354963

`A204895(n+1)+A204890(A204891(n+1))`
-/

namespace A204894.P2621066653540354963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (n + 1) + A204890 (A204891 (n + 1)).toNat

end

end A204894.P2621066653540354963

/-!
# A204895: The prime q such that n divides p-q, where p>q is the least prime for which such a prime q exists.

The programs for A204895, there is no canonical definition to state claims against.
-/

/-! ## A204895.P7929954632827701011

`A000040(A204893(n+1))`
-/

namespace A204895.P7929954632827701011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204893 (n + 1)).toNat

end

end A204895.P7929954632827701011

/-! ## A204895.P4885042555318888278

`A008578(A204893(n+1)+1)`
-/

namespace A204895.P4885042555318888278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A204893 (n + 1) + 1).toNat

end

end A204895.P4885042555318888278

/-! ## A204895.P10431543933572261166

`A015919(A204893(n+1)+1)`
-/

namespace A204895.P10431543933572261166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A204893 (n + 1) + 1).toNat

end

end A204895.P10431543933572261166

/-! ## A204895.P9139833413775927235

`A204894(n+1)-A204896(n+1)`
-/

namespace A204895.P9139833413775927235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1) - A204896 (n + 1)

end

end A204895.P9139833413775927235

/-! ## A204895.P6085251291534297331

`A000040(A204892(n+1))-A204896(n+1)`
-/

namespace A204895.P6085251291534297331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204892 (n + 1)).toNat - A204896 (n + 1)

end

end A204895.P6085251291534297331

/-! ## A204895.P12179017237502917061

`A037126(A204891(n+1))`
-/

namespace A204895.P12179017237502917061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A204891 (n + 1)).toNat

end

end A204895.P12179017237502917061

/-! ## A204895.P9678383242706840770

`A204894(n+1)-A204890(A204891(n+1))`
-/

namespace A204895.P9678383242706840770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1) - A204890 (A204891 (n + 1)).toNat

end

end A204895.P9678383242706840770

/-! ## A204895.P6826200723361909956

`A064413(or(A151933(n), A204893(n+1)))+1`
-/

namespace A204895.P6826200723361909956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (Int.lor (A151933 n) (A204893 (n + 1))).toNat + 1

end

end A204895.P6826200723361909956

/-! ## A204895.P2648961713603236902

`A287636(or(A151933(n), A204893(n+1)))+1`
-/

namespace A204895.P2648961713603236902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287636 (Int.lor (A151933 n) (A204893 (n + 1))).toNat + 1

end

end A204895.P2648961713603236902

/-! ## A204895.P5111621198040832044

`A087242(A204896(n+1))`
-/

namespace A204895.P5111621198040832044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087242 (A204896 (n + 1)).toNat

end

end A204895.P5111621198040832044

/-!
# A204896: p(n)-q(n), where (p(n), q(n)) is the least pair of primes (ordered as in A204890) for which n divides p(n)-q(n).

The programs for A204896, the canonical program `A204896.P7465343658140665975` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204896 has offset 1).

The definition of A204896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204896.P6546338477347839651

`(n+1)*A204897(n+1)`
-/

namespace A204896.P6546338477347839651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204897 (n + 1)

end

end A204896.P6546338477347839651

namespace A204896

/-- `(n+1)*A204897(n+1)` -/
def P6546338477347839651.Spec : Prop :=
  ∀ n, P6546338477347839651.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P9547964924064115372

`(n+1)*(A270003(n+3)-1)`
-/

namespace A204896.P9547964924064115372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A270003 (n + 3) - 1)

end

end A204896.P9547964924064115372

namespace A204896

/-- `(n+1)*(A270003(n+3)-1)` -/
def P9547964924064115372.Spec : Prop :=
  ∀ n, P9547964924064115372.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P14299220236493470149

`lcm(n+1, A010051(n+3)-2)`
-/

namespace A204896.P14299220236493470149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A010051 (n + 3) - 2)

end

end A204896.P14299220236493470149

namespace A204896

/-- `lcm(n+1, A010051(n+3)-2)` -/
def P14299220236493470149.Spec : Prop :=
  ∀ n, (P14299220236493470149.a n : ℤ) = A204896 (n + 1)

end A204896

/-! ## A204896.P7465343658140665975

`(n+1)*ceil(ratio[A033271(n+2)])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204896

/-- `(n+1)*ceil(ratio[A033271(n+2)])` -/
def P7465343658140665975.Spec : Prop :=
  ∀ n, P7465343658140665975.a n = A204896 (n + 1)

theorem P7465343658140665975.correct : P7465343658140665975.Spec := by
  intro n
  simp only [A204896, Nat.add_sub_cancel]

end A204896

/-! ## A204896.P3273774553522557527

`(n+1)*round(ratio[A270003(n+2)])`
-/

namespace A204896.P3273774553522557527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270003 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A204896.P3273774553522557527

namespace A204896

/-- `(n+1)*round(ratio[A270003(n+2)])` -/
def P3273774553522557527.Spec : Prop :=
  ∀ n, P3273774553522557527.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P7834429072464973839

`A204894(n+1)-A204895(n+1)`
-/

namespace A204896.P7834429072464973839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1) - A204895 (n + 1)

end

end A204896.P7834429072464973839

namespace A204896

/-- `A204894(n+1)-A204895(n+1)` -/
def P7834429072464973839.Spec : Prop :=
  ∀ n, P7834429072464973839.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P4970476427738514195

`lcm(A000027(n+1), A204897(n+1))`
-/

namespace A204896.P4970476427738514195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A204897 (n + 1))

end

end A204896.P4970476427738514195

namespace A204896

/-- `lcm(A000027(n+1), A204897(n+1))` -/
def P4970476427738514195.Spec : Prop :=
  ∀ n, (P4970476427738514195.a n : ℤ) = A204896 (n + 1)

end A204896

/-! ## A204896.P2716618989757805215

`lcm(n+1, A000034(A064652(n+2)))`
-/

namespace A204896.P2716618989757805215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000034 (A064652 (n + 2)).toNat)

end

end A204896.P2716618989757805215

namespace A204896

/-- `lcm(n+1, A000034(A064652(n+2)))` -/
def P2716618989757805215.Spec : Prop :=
  ∀ n, (P2716618989757805215.a n : ℤ) = A204896 (n + 1)

end A204896

/-! ## A204896.P17600251143977375863

`(n+1)*gcd(2, A000010(A000005(n+3))+n)`
-/

namespace A204896.P17600251143977375863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 2 (A000010 (A000005 (n + 3)).toNat + (n : ℤ))

end

end A204896.P17600251143977375863

namespace A204896

/-- `(n+1)*gcd(2, A000010(A000005(n+3))+n)` -/
def P17600251143977375863.Spec : Prop :=
  ∀ n, (P17600251143977375863.a n : ℤ) = A204896 (n + 1)

end A204896

/-! ## A204896.P17661141474956308636

`A000040(A204892(n+1))-A204895(n+1)`
-/

namespace A204896.P17661141474956308636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A204892 (n + 1)).toNat - A204895 (n + 1)

end

end A204896.P17661141474956308636

namespace A204896

/-- `A000040(A204892(n+1))-A204895(n+1)` -/
def P17661141474956308636.Spec : Prop :=
  ∀ n, P17661141474956308636.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P4862933549555366403

`(n+1)*A014689(A135679(A014683(n+3)))`
-/

namespace A204896.P4862933549555366403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014689 (A135679 (A014683 (n + 3)).toNat).toNat

end

end A204896.P4862933549555366403

namespace A204896

/-- `(n+1)*A014689(A135679(A014683(n+3)))` -/
def P4862933549555366403.Spec : Prop :=
  ∀ n, P4862933549555366403.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P9773657401416268537

`(n+1)*A014684(A135679(A014684(n+3)))`
-/

namespace A204896.P9773657401416268537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014684 (A135679 (A014684 (n + 3)).toNat).toNat

end

end A204896.P9773657401416268537

namespace A204896

/-- `(n+1)*A014684(A135679(A014684(n+3)))` -/
def P9773657401416268537.Spec : Prop :=
  ∀ n, P9773657401416268537.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P4037344810671147151

`(n+1)*A107286(A328166(A107286(n+3)))`
-/

namespace A204896.P4037344810671147151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A107286 (A328166 (A107286 (n + 3)).toNat).toNat

end

end A204896.P4037344810671147151

namespace A204896

/-- `(n+1)*A107286(A328166(A107286(n+3)))` -/
def P4037344810671147151.Spec : Prop :=
  ∀ n, P4037344810671147151.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P262016051908424538

`A204890(A204891(n+1))`
-/

namespace A204896.P262016051908424538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A204891 (n + 1)).toNat

end

end A204896.P262016051908424538

namespace A204896

/-- `A204890(A204891(n+1))` -/
def P262016051908424538.Spec : Prop :=
  ∀ n, P262016051908424538.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P6467893484705899458

`(A318886(A087242(n+1)+1)+1)*(n+1)`
-/

namespace A204896.P6467893484705899458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A318886 (A087242 (n + 1) + 1).toNat + 1) * (n + 1 : ℤ)

end

end A204896.P6467893484705899458

namespace A204896

/-- `(A318886(A087242(n+1)+1)+1)*(n+1)` -/
def P6467893484705899458.Spec : Prop :=
  ∀ n, P6467893484705899458.a n = A204896 (n + 1)

end A204896

/-! ## A204896.P18233100910134862551

`(n+1)*gcd(2, A008683(A123317(n+1)))`
-/

namespace A204896.P18233100910134862551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 2 (A008683 (A123317 (n + 1)).toNat)

end

end A204896.P18233100910134862551

namespace A204896

/-- `(n+1)*gcd(2, A008683(A123317(n+1)))` -/
def P18233100910134862551.Spec : Prop :=
  ∀ n, (P18233100910134862551.a n : ℤ) = A204896 (n + 1)

end A204896

/-!
# A204897: a(n) = (p(n)-q(n))/n, where (p(n), q(n)) is the least pair of primes for which n divides p(n)-q(n).

The programs for A204897, the canonical program `A204897.P15108590299488774677` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204897 has offset 1).

The definition of A204897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204897.P15108590299488774677

`gcd(2, ∑{e}[n+3, #]!+n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204897

/-- `gcd(2, ∑{e}[n+3, #]!+n)` -/
def P15108590299488774677.Spec : Prop :=
  ∀ n, (P15108590299488774677.a n : ℤ) = A204897 (n + 1)

theorem P15108590299488774677.correct : P15108590299488774677.Spec := by
  intro n
  simp only [A204897, Nat.add_sub_cancel]

end A204897

/-! ## A204897.P7386319690237699518

`2-A370482(n+3)`
-/

namespace A204897.P7386319690237699518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A370482 (n + 3)

end

end A204897.P7386319690237699518

namespace A204897

/-- `2-A370482(n+3)` -/
def P7386319690237699518.Spec : Prop :=
  ∀ n, P7386319690237699518.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P8882745653459944005

`gcd(2, n)-A010051(n+3)`
-/

namespace A204897.P8882745653459944005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - A010051 (n + 3)

end

end A204897.P8882745653459944005

namespace A204897

/-- `gcd(2, n)-A010051(n+3)` -/
def P8882745653459944005.Spec : Prop :=
  ∀ n, P8882745653459944005.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P4390466525495153838

`char[A007921(n+1)-1]+1`
-/

namespace A204897.P4390466525495153838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A204897.P4390466525495153838

namespace A204897

/-- `char[A007921(n+1)-1]+1` -/
def P4390466525495153838.Spec : Prop :=
  ∀ n, (P4390466525495153838.a n : ℤ) = A204897 (n + 1)

end A204897

/-! ## A204897.P13932548784728135603

`floor(A204894(n+1)/(n+2))`
-/

namespace A204897.P13932548784728135603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204894 (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A204897.P13932548784728135603

namespace A204897

/-- `floor(A204894(n+1)/(n+2))` -/
def P13932548784728135603.Spec : Prop :=
  ∀ n, P13932548784728135603.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P2896744860945898819

`and(n+1, A323162(n+4))+1`
-/

namespace A204897.P2896744860945898819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A323162 (n + 4)) + 1

end

end A204897.P2896744860945898819

namespace A204897

/-- `and(n+1, A323162(n+4))+1` -/
def P2896744860945898819.Spec : Prop :=
  ∀ n, P2896744860945898819.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P307476720748991900

`Δ[A210469(round(n/2)+1)]+1`
-/

namespace A204897.P307476720748991900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A204897.P307476720748991900

namespace A204897

/-- `Δ[A210469(round(n/2)+1)]+1` -/
def P307476720748991900.Spec : Prop :=
  ∀ n, P307476720748991900.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P1587148182706680345

`2-A010051(n*char[2*n]+3)`
-/

namespace A204897.P1587148182706680345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010051 (n * (if ∃ j, f1 j = n then 1 else 0) + 3)

end

end A204897.P1587148182706680345

namespace A204897

/-- `2-A010051(n*char[2*n]+3)` -/
def P1587148182706680345.Spec : Prop :=
  ∀ n, P1587148182706680345.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P145570378540106090

`char[2*lt[A060684(n+1), n]]+1`
-/

namespace A204897.P145570378540106090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A204897.P145570378540106090

namespace A204897

/-- `char[2*lt[A060684(n+1), n]]+1` -/
def P145570378540106090.Spec : Prop :=
  ∀ n, (P145570378540106090.a n : ℤ) = A204897 (n + 1)

end A204897

/-! ## A204897.P11470085685429557638

`char[2*lt[2, A000005(2*n+3)]]+1`
-/

namespace A204897.P11470085685429557638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A204897.P11470085685429557638

namespace A204897

/-- `char[2*lt[2, A000005(2*n+3)]]+1` -/
def P11470085685429557638.Spec : Prop :=
  ∀ n, (P11470085685429557638.a n : ℤ) = A204897 (n + 1)

end A204897

/-! ## A204897.P99707644892059025

`A323162((n-1)*char[2*n]+5)+1`
-/

namespace A204897.P99707644892059025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (((n : ℤ) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 5).toNat + 1

end

end A204897.P99707644892059025

namespace A204897

/-- `A323162((n-1)*char[2*n]+5)+1` -/
def P99707644892059025.Spec : Prop :=
  ∀ n, P99707644892059025.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P11214481106429902622

`gcd(C(A000010(n+3), n+2)-2, n²)`
-/

namespace A204897.P11214481106429902622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.choose (A000010 (n + 3)).toNat (n + 2) : ℤ) - 2) (n ^ 2 : ℤ)

end

end A204897.P11214481106429902622

namespace A204897

/-- `gcd(C(A000010(n+3), n+2)-2, n²)` -/
def P11214481106429902622.Spec : Prop :=
  ∀ n, (P11214481106429902622.a n : ℤ) = A204897 (n + 1)

end A204897

/-! ## A204897.P14768552133521987068

`char[comp[A000040(n+1)]-3]+char[2*n]`
-/

namespace A204897.P14768552133521987068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0)

end

end A204897.P14768552133521987068

namespace A204897

/-- `char[comp[A000040(n+1)]-3]+char[2*n]` -/
def P14768552133521987068.Spec : Prop :=
  ∀ n, (P14768552133521987068.a n : ℤ) = A204897 (n + 1)

end A204897

/-! ## A204897.P12237395409895789436

`floor(atan(A001222((n+2)*char[2*n]+1)))+1`
-/

namespace A204897.P12237395409895789436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A001222 ((n + 2) * (if ∃ j, f1 j = n then 1 else 0) + 1) : ℝ)⌋ + 1

end

end A204897.P12237395409895789436

namespace A204897

/-- `floor(atan(A001222((n+2)*char[2*n]+1)))+1` -/
def P12237395409895789436.Spec : Prop :=
  ∀ n, P12237395409895789436.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P4152577098507466263

`A054977(A122170(n+1))`
-/

namespace A204897.P4152577098507466263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A122170 (n + 1)).toNat

end

end A204897.P4152577098507466263

namespace A204897

/-- `A054977(A122170(n+1))` -/
def P4152577098507466263.Spec : Prop :=
  ∀ n, P4152577098507466263.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P15115208623065902949

`A107286(A107286(n+3)+1)`
-/

namespace A204897.P15115208623065902949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A107286 (n + 3) + 1).toNat

end

end A204897.P15115208623065902949

namespace A204897

/-- `A107286(A107286(n+3)+1)` -/
def P15115208623065902949.Spec : Prop :=
  ∀ n, P15115208623065902949.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P14791903604201407173

`2-A101264(A142150(n)+1)`
-/

namespace A204897.P14791903604201407173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A101264 (A142150 n + 1).toNat

end

end A204897.P14791903604201407173

namespace A204897

/-- `2-A101264(A142150(n)+1)` -/
def P14791903604201407173.Spec : Prop :=
  ∀ n, P14791903604201407173.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P3877183033298101525

`A000035(A292597(n+3))+1`
-/

namespace A204897.P3877183033298101525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A292597 (n + 3)).toNat + 1

end

end A204897.P3877183033298101525

namespace A204897

/-- `A000035(A292597(n+3))+1` -/
def P3877183033298101525.Spec : Prop :=
  ∀ n, P3877183033298101525.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P15990123731972578109

`A066247(n+3)+A059841(n)`
-/

namespace A204897.P15990123731972578109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 3) + A059841 n

end

end A204897.P15990123731972578109

namespace A204897

/-- `A066247(n+3)+A059841(n)` -/
def P15990123731972578109.Spec : Prop :=
  ∀ n, P15990123731972578109.a n = A204897 (n + 1)

end A204897

/-! ## A204897.P17006282953322743835

`gcd(A040001(n), A090405(n+1))`
-/

namespace A204897.P17006282953322743835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040001 n) (A090405 (n + 1))

end

end A204897.P17006282953322743835

namespace A204897

/-- `gcd(A040001(n), A090405(n+1))` -/
def P17006282953322743835.Spec : Prop :=
  ∀ n, (P17006282953322743835.a n : ℤ) = A204897 (n + 1)

end A204897

/-!
# A204898: Ordered differences of odd primes.

The programs for A204898, the canonical program `A204898.P8437523405994696174` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204898 has offset 1).

The definition of A204898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204898.P8437523405994696174

`2*A205558(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204898

/-- `2*A205558(n+1)` -/
def P8437523405994696174.Spec : Prop :=
  ∀ n, P8437523405994696174.a n = A204898 (n + 1)

theorem P8437523405994696174.correct : P8437523405994696174.Spec := by
  intro n
  simp only [A204898, Nat.add_sub_cancel]

end A204898

/-! ## A204898.P16334103444727449771

`A004277(A205558(n+1))`
-/

namespace A204898.P16334103444727449771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A205558 (n + 1)).toNat

end

end A204898.P16334103444727449771

namespace A204898

/-- `A004277(A205558(n+1))` -/
def P16334103444727449771.Spec : Prop :=
  ∀ n, P16334103444727449771.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P2906091920302136798

`A004275(A205558(n+1)+1)`
-/

namespace A204898.P2906091920302136798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A205558 (n + 1) + 1).toNat

end

end A204898.P2906091920302136798

namespace A204898

/-- `A004275(A205558(n+1)+1)` -/
def P2906091920302136798.Spec : Prop :=
  ∀ n, P2906091920302136798.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P6239679876856660546

`A005843(A205558(n+1)%(n+2))`
-/

namespace A204898.P6239679876856660546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A205558 (n + 1)) (n + 2 : ℤ)).toNat

end

end A204898.P6239679876856660546

namespace A204898

/-- `A005843(A205558(n+1)%(n+2))` -/
def P6239679876856660546.Spec : Prop :=
  ∀ n, P6239679876856660546.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P4472547518926868153

`A005843(lcm((-1)^n, A205558(n+1)))`
-/

namespace A204898.P4472547518926868153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm ((-1) ^ n) (A205558 (n + 1)))

end

end A204898.P4472547518926868153

namespace A204898

/-- `A005843(lcm((-1)^n, A205558(n+1)))` -/
def P4472547518926868153.Spec : Prop :=
  ∀ n, P4472547518926868153.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P9942589211516042547

`A005843(A205558(n+1))%A017029(n)`
-/

namespace A204898.P9942589211516042547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A205558 (n + 1)).toNat) (A017029 n)

end

end A204898.P9942589211516042547

namespace A204898

/-- `A005843(A205558(n+1))%A017029(n)` -/
def P9942589211516042547.Spec : Prop :=
  ∀ n, P9942589211516042547.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P8624787705025655392

`gcd(A000038(n), A005843(A205558(n+1)))`
-/

namespace A204898.P8624787705025655392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A005843 (A205558 (n + 1)).toNat)

end

end A204898.P8624787705025655392

namespace A204898

/-- `gcd(A000038(n), A005843(A205558(n+1)))` -/
def P8624787705025655392.Spec : Prop :=
  ∀ n, (P8624787705025655392.a n : ℤ) = A204898 (n + 1)

end A204898

/-! ## A204898.P5342347612484889645

`A204896(A205558(n+1)+A205558(n+1))`
-/

namespace A204898.P5342347612484889645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204896 (A205558 (n + 1) + A205558 (n + 1)).toNat

end

end A204898.P5342347612484889645

namespace A204898

/-- `A204896(A205558(n+1)+A205558(n+1))` -/
def P5342347612484889645.Spec : Prop :=
  ∀ n, P5342347612484889645.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P1456359863644297431

`A204890(A080036(n+1))`
-/

namespace A204898.P1456359863644297431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A080036 (n + 1)).toNat

end

end A204898.P1456359863644297431

namespace A204898

/-- `A204890(A080036(n+1))` -/
def P1456359863644297431.Spec : Prop :=
  ∀ n, P1456359863644297431.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P3105041769833412077

`A204890(∑[A035214(n)]+1)`
-/

namespace A204898.P3105041769833412077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A204898.P3105041769833412077

namespace A204898

/-- `A204890(∑[A035214(n)]+1)` -/
def P3105041769833412077.Spec : Prop :=
  ∀ n, P3105041769833412077.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P2187427129704360525

`A204890(A014132(n+1)+1)`
-/

namespace A204898.P2187427129704360525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A014132 (n + 1) + 1).toNat

end

end A204898.P2187427129704360525

namespace A204898

/-- `A204890(A014132(n+1)+1)` -/
def P2187427129704360525.Spec : Prop :=
  ∀ n, P2187427129704360525.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P10058990030023493472

`A204890(A007401(n+1)+2)`
-/

namespace A204898.P10058990030023493472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A007401 (n + 1) + 2).toNat

end

end A204898.P10058990030023493472

namespace A204898

/-- `A204890(A007401(n+1)+2)` -/
def P10058990030023493472.Spec : Prop :=
  ∀ n, P10058990030023493472.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P7659768875624561916

`A204890(A133196(n+1)+n)`
-/

namespace A204898.P7659768875624561916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A133196 (n + 1) + (n : ℤ)).toNat

end

end A204898.P7659768875624561916

namespace A204898

/-- `A204890(A133196(n+1)+n)` -/
def P7659768875624561916.Spec : Prop :=
  ∀ n, P7659768875624561916.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P12767820659538888378

`A204890(A003056(n)+3+n)`
-/

namespace A204898.P12767820659538888378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A003056 n + 3 + (n : ℤ)).toNat

end

end A204898.P12767820659538888378

namespace A204898

/-- `A204890(A003056(n)+3+n)` -/
def P12767820659538888378.Spec : Prop :=
  ∀ n, P12767820659538888378.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P13662647052216801797

`filter[A204890(n+1), A059841(#)]`
-/

namespace A204898.P13662647052216801797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A204898.P13662647052216801797

namespace A204898

/-- `filter[A204890(n+1), A059841(#)]` -/
def P13662647052216801797.Spec : Prop :=
  ∀ n, P13662647052216801797.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P11463743076566580083

`filter[A204890(n+2), A135528(#)]`
-/

namespace A204898.P11463743076566580083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A204898.P11463743076566580083

namespace A204898

/-- `filter[A204890(n+2), A135528(#)]` -/
def P11463743076566580083.Spec : Prop :=
  ∀ n, P11463743076566580083.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P9024162779010610959

`filter[A204890(n+2), A266591(#)]`
-/

namespace A204898.P9024162779010610959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A204898.P9024162779010610959

namespace A204898

/-- `filter[A204890(n+2), A266591(#)]` -/
def P9024162779010610959.Spec : Prop :=
  ∀ n, P9024162779010610959.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P3557642194417302276

`A204890(A002024(n+1)+2+n)`
-/

namespace A204898.P3557642194417302276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A002024 (n + 1) + 2 + (n : ℤ)).toNat

end

end A204898.P3557642194417302276

namespace A204898

/-- `A204890(A002024(n+1)+2+n)` -/
def P3557642194417302276.Spec : Prop :=
  ∀ n, P3557642194417302276.a n = A204898 (n + 1)

end A204898

/-! ## A204898.P9520525750028827416

`A086800(eq[0, A103516(n)]+1)`
-/

namespace A204898.P9520525750028827416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204898.P9520525750028827416

namespace A204898

/-- `A086800(eq[0, A103516(n)]+1)` -/
def P9520525750028827416.Spec : Prop :=
  ∀ n, P9520525750028827416.a n = A204898 (n + 1)

end A204898

/-!
# A204899: Least k such that n divides A204898(k), the k-th difference of two odd primes.

The programs for A204899, there is no canonical definition to state claims against.
-/

/-! ## A204899.P10910166203343144494

`A204891(A109043(n+1))+1-A204892(A109043(n+1))`
-/

namespace A204899.P10910166203343144494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204891 (A109043 (n + 1)).toNat + (1 - A204892 (A109043 (n + 1)).toNat)

end

end A204899.P10910166203343144494

/-! ## A204899.P1028242632252943908

`A204891(A204904(n+1))-A204900(n+1)`
-/

namespace A204899.P1028242632252943908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204891 (A204904 (n + 1)).toNat - A204900 (n + 1)

end

end A204899.P1028242632252943908

/-! ## A204899.P17424904147207281575

`A204891(A204904(n+1))-(A204892(lcm(2, n+1))-1)`
-/

namespace A204899.P17424904147207281575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204891 (A204904 (n + 1)).toNat - (A204892 (Nat.lcm 2 (n + 1)) - 1)

end

end A204899.P17424904147207281575

/-! ## A204899.P17570060944367707275

`A204891(A204904(n+1))-(A204892((n+1)*gcd(2, n))-1)`
-/

namespace A204899.P17570060944367707275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204891 (A204904 (n + 1)).toNat - (A204892 ((n + 1) * Nat.gcd 2 n) - 1)

end

end A204899.P17570060944367707275

/-! ## A204899.P16355506294717109308

`A204891(A204904(n+1))-A033270(A204902(n+1))`
-/

namespace A204899.P16355506294717109308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204891 (A204904 (n + 1)).toNat - A033270 (A204902 (n + 1)).toNat

end

end A204899.P16355506294717109308

/-! ## A204899.P448646226730553168

`A204891(A204904(n+1))-A000720(A204902(n+1)-1)`
-/

namespace A204899.P448646226730553168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204891 (A204904 (n + 1)).toNat - A000720 (A204902 (n + 1) - 1).toNat

end

end A204899.P448646226730553168

