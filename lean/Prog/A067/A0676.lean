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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A067601: a(n) is the number of inequivalent permutations of {0..2n-1}, such that the first differences (modulo 2n) are a permutation of {1..2n-1}.

The programs for A067601, there is no canonical definition to state claims against.
-/

/-! ## A067601.P2484957010175211290

`ceil(A141599(n+1)/2)`
-/

namespace A067601.P2484957010175211290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141599 (n + 1) : ℚ) / 2⌉

end

end A067601.P2484957010175211290

/-! ## A067601.P11117721910979008303

`ceil(A141598(n+1)/(4*(n+1)))`
-/

namespace A067601.P11117721910979008303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141598 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)⌉

end

end A067601.P11117721910979008303

/-! ## A067601.P1603179074092041528

`A141599(n+1)/A297770(2^n)`
-/

namespace A067601.P1603179074092041528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141599 (n + 1) : ℚ) / (A297770 (2 ^ n) : ℚ)

end

end A067601.P1603179074092041528

/-! ## A067601.P15060605489543307706

`A141599(n+1)/A307359(A015844(n+1))`
-/

namespace A067601.P15060605489543307706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141599 (n + 1) : ℚ) / (A307359 (A015844 (n + 1)).toNat : ℚ)

end

end A067601.P15060605489543307706

/-!
# A067602: 5^n reduced modulo 3^n.

The programs for A067602, the canonical program `A067602.P15359371507627435769` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067602 has offset 0).

The definition of A067602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067602.P15359371507627435769

`(5^n)%(3^n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067602

/-- `(5^n)%(3^n)` -/
def P15359371507627435769.Spec : Prop :=
  ∀ n, (P15359371507627435769.a n : ℤ) = A067602 n

theorem P15359371507627435769.correct : P15359371507627435769.Spec := by
  intro n
  simp only [A067602]

end A067602

/-! ## A067602.P201634367770168087

`-(-A000351(n)%A000244(n))`
-/

namespace A067602.P201634367770168087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000351 n) (A000244 n)

end

end A067602.P201634367770168087

namespace A067602

/-- `-(-A000351(n)%A000244(n))` -/
def P201634367770168087.Spec : Prop :=
  ∀ n, P201634367770168087.a n = A067602 n

end A067602

/-! ## A067602.P9252357185394817367

`abs(A000351(n)%Δ[A003462(n)])`
-/

namespace A067602.P9252357185394817367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000351 n) (f1 (n + 1) - f1 n)|

end

end A067602.P9252357185394817367

namespace A067602

/-- `abs(A000351(n)%Δ[A003462(n)])` -/
def P9252357185394817367.Spec : Prop :=
  ∀ n, P9252357185394817367.a n = A067602 n

end A067602

/-! ## A067602.P16309713785047289958

`-(Δ[-A003463(n)]%A000244(n))`
-/

namespace A067602.P16309713785047289958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (f1 (n + 1) - f1 n) (A000244 n)

end

end A067602.P16309713785047289958

namespace A067602

/-- `-(Δ[-A003463(n)]%A000244(n))` -/
def P16309713785047289958.Spec : Prop :=
  ∀ n, P16309713785047289958.a n = A067602 n

end A067602

/-! ## A067602.P8612412020269942264

`A139736(n)/2^n`
-/

namespace A067602.P8612412020269942264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139736 n : ℚ) / (2 ^ n : ℚ)

end

end A067602.P8612412020269942264

namespace A067602

/-- `A139736(n)/2^n` -/
def P8612412020269942264.Spec : Prop :=
  ∀ n, P8612412020269942264.a n = (A067602 n : ℚ)

end A067602

/-! ## A067602.P11011589947404974264

`lcm(A001579(n)%A000244(n), A020985(n))`
-/

namespace A067602.P11011589947404974264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A001579 n) (A000244 n)) (A020985 n)

end

end A067602.P11011589947404974264

namespace A067602

/-- `lcm(A001579(n)%A000244(n), A020985(n))` -/
def P11011589947404974264.Spec : Prop :=
  ∀ n, (P11011589947404974264.a n : ℤ) = A067602 n

end A067602

/-!
# A067603: Least k such that gcd(prime(k)+1, prime(k+1)+1) = 2n.

The programs for A067603, there is no canonical definition to state claims against.
-/

/-! ## A067603.P6579326108467507329

`A000720(A067604(n+1))`
-/

namespace A067603.P6579326108467507329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067604 (n + 1)).toNat

end

end A067603.P6579326108467507329

/-! ## A067603.P14323802493357642823

`A061395(p?[A067604(n+1)])`
-/

namespace A067603.P14323802493357642823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067603.P14323802493357642823

/-! ## A067603.P8630968183172221497

`A061395(or(1, A067604(n+1)))`
-/

namespace A067603.P8630968183172221497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A067604 (n + 1))).toNat

end

end A067603.P8630968183172221497

/-! ## A067603.P9324200939777297987

`∑{d}[A067604(n+1), A061395(#)]`
-/

namespace A067603.P9324200939777297987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A067603.P9324200939777297987

/-! ## A067603.P945488643421370129

`A061395(∏{d}[A067604(n+1), #])`
-/

namespace A067603.P945488643421370129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A067603.P945488643421370129

/-!
# A067604: Smallest prime p of two consecutive primes, p < q, such that gcd(p+1, q+1) = 2n.

The programs for A067604, there is no canonical definition to state claims against.
-/

/-! ## A067604.P17923805027811359545

`A055670(A067603(n+1))-1`
-/

namespace A067604.P17923805027811359545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A067603 (n + 1)).toNat - 1

end

end A067604.P17923805027811359545

/-! ## A067604.P3493520769270140550

`A000040(A067603(n+1))`
-/

namespace A067604.P3493520769270140550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067603 (n + 1)).toNat

end

end A067604.P3493520769270140550

/-! ## A067604.P6854686773198536515

`A008578(A067603(n+1)+1)`
-/

namespace A067604.P6854686773198536515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A067603 (n + 1) + 1).toNat

end

end A067604.P6854686773198536515

/-! ## A067604.P7553360429898007048

`A182986(A067603(n+1)+1)`
-/

namespace A067604.P7553360429898007048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A067603 (n + 1) + 1).toNat

end

end A067604.P7553360429898007048

/-! ## A067604.P6090323318841126040

`A065091(A067603(n+1)-1)`
-/

namespace A067604.P6090323318841126040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A067603 (n + 1) - 1).toNat

end

end A067604.P6090323318841126040

/-!
# A067605: Least k such that gcd(prime(k+1)-1, prime(k)-1) = 2n.

The programs for A067605, there is no canonical definition to state claims against.
-/

/-! ## A067605.P10860147155751366987

`A000720(A058264(n+1))`
-/

namespace A067605.P10860147155751366987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A058264 (n + 1)).toNat

end

end A067605.P10860147155751366987

/-! ## A067605.P7026999500213965826

`A061395(p?[A058264(n+1)])`
-/

namespace A067605.P7026999500213965826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067605.P7026999500213965826

/-! ## A067605.P2988681088350994020

`A066328(p?[A058264(n+1)])`
-/

namespace A067605.P2988681088350994020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067605.P2988681088350994020

/-! ## A067605.P13015120919987640205

`A061395(2*A058264(n+1))`
-/

namespace A067605.P13015120919987640205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A058264 (n + 1)).toNat

end

end A067605.P13015120919987640205

/-! ## A067605.P14188398228281029688

`A061395(lcm(2, A058264(n+1)))`
-/

namespace A067605.P14188398228281029688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A058264 (n + 1)))

end

end A067605.P14188398228281029688

/-!
# A067606: Primes p such that p+7 == 0 (mod phi(p+7)).

The programs for A067606, there is no canonical definition to state claims against.
-/

/-! ## A067606.P1291074729036025952

`p?[A190812(n+1)-6]`
-/

namespace A067606.P1291074729036025952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067606.P1291074729036025952

/-! ## A067606.P10835504149228558904

`p?[A000423(n+1)-7]`
-/

namespace A067606.P10835504149228558904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000423 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067606.P10835504149228558904

/-! ## A067606.P3930403014173840867

`p?[A007694(n+1)-7]`
-/

namespace A067606.P3930403014173840867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067606.P3930403014173840867

/-! ## A067606.P14777824791287175043

`p?[A033845(n+1)-7]`
-/

namespace A067606.P14777824791287175043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067606.P14777824791287175043

/-! ## A067606.P3709308740183741047

`p?[A089341(n+1)-7]`
-/

namespace A067606.P3709308740183741047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089341 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067606.P3709308740183741047

/-!
# A067607: Number of stacks of n pancakes requiring a maximum number of flips to order.

The programs for A067607, there is no canonical definition to state claims against.
-/

/-! ## A067607.P13175422249874292736

`A092113(∑[comp[A235532(n)]])`
-/

namespace A067607.P13175422249874292736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235532 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092113 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067607.P13175422249874292736

/-! ## A067607.P6691500793969344604

`A092113(∑[A058986(n+1)+1])`
-/

namespace A067607.P6691500793969344604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058986 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067607.P6691500793969344604

/-! ## A067607.P12897501446193632015

`A092113(∑[comp[A057672(2*(n+1))]])`
-/

namespace A067607.P12897501446193632015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057672 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092113 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067607.P12897501446193632015

/-! ## A067607.P8069075821849461586

`A092113(eq[A092113(n+1), A285589(n+1)])`
-/

namespace A067607.P8069075821849461586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067607.P8069075821849461586

/-!
# A067608: Number of structural alkanes with combinatorial diameter n.

The programs for A067608, there is no canonical definition to state claims against.
-/

/-! ## A067608.P11295482455304361660

`A286108(A329694(∑[n]))`
-/

namespace A067608.P11295482455304361660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 (A329694 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A067608.P11295482455304361660

/-! ## A067608.P15485499083041914237

`A008620(A121367(∑[∏{p}[n+1, #]]))`
-/

namespace A067608.P15485499083041914237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A121367 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A067608.P15485499083041914237

/-!
# A067609: Number of stereo alkanes with combinatorial diameter n.

The programs for A067609, there is no canonical definition to state claims against.
-/

/-! ## A067609.P3214845045611861544

`A092200(A005672(∑[n]))`
-/

namespace A067609.P3214845045611861544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (A005672 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A067609.P3214845045611861544

/-! ## A067609.P15490393627343183071

`∏{p}[A240216(A240216(2*n+1)), #]`
-/

namespace A067609.P15490393627343183071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240216 (A240216 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A067609.P15490393627343183071

/-!
# A067610: Number of stereo alkanes not containing a certain forbidden substructure with combinatorial diameter n.

The programs for A067610, there is no canonical definition to state claims against.
-/

/-! ## A067610.P14918746801012276499

`A076707(A000110(n))+n-∑{d}[n+1, n²%#]`
-/

namespace A067610.P14918746801012276499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076707 (A000110 n).toNat + ((n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ))

end

end A067610.P14918746801012276499

/-! ## A067610.P8362758548707878072

`A004525(A304642(n)+A200536(n))`
-/

namespace A067610.P8362758548707878072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A304642 n + A200536 n).toNat

end

end A067610.P8362758548707878072

/-!
# A067611: Numbers of the form 6xy +- x +- y, where x, y are positive integers.

The programs for A067611, the canonical program `A067611.P11907712872118763159` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067611 has offset 1).

The definition of A067611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067611.P10871225646937252355

`A054775(n+1)/6`
-/

namespace A067611.P10871225646937252355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054775 (n + 1) : ℚ) / 6

end

end A067611.P10871225646937252355

namespace A067611

/-- `A054775(n+1)/6` -/
def P10871225646937252355.Spec : Prop :=
  ∀ n, P10871225646937252355.a n = (A067611 (n + 1) : ℚ)

theorem P10871225646937252355.correct : P10871225646937252355.Spec := by
  intro n
  simp only [A067611, Nat.add_sub_cancel, A067611.P10871225646937252355.a, A067611.P11907712872118763159.f1, A067611.P11907712872118763159.f2, A067611.P11907712872118763159.a, A054775, A054775.P16087756340691914254.a, A283265, A283265.P16513607417697021488.a, A129950, A129950.P15295767996041627134.a, A010051, A010051.P15078252821583414300.a, A164292, A164292.P14089630238313038939.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A169609, A169609.P8986089567113568057.a, A193056, A193056.P6449544040074946363.a, A353464, A353464.P7528674575556997429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A067611

/-! ## A067611.P4550204174907478962

`comp[A153196(n+1)]+1`
-/

namespace A067611.P4550204174907478962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A067611.P4550204174907478962

namespace A067611

/-- `comp[A153196(n+1)]+1` -/
def P4550204174907478962.Spec : Prop :=
  ∀ n, (P4550204174907478962.a n : ℤ) = A067611 (n + 1)

end A067611

/-! ## A067611.P2633883378664492891

`comp[A002822(n+1)-1]+1`
-/

namespace A067611.P2633883378664492891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A067611.P2633883378664492891

namespace A067611

/-- `comp[A002822(n+1)-1]+1` -/
def P2633883378664492891.Spec : Prop :=
  ∀ n, (P2633883378664492891.a n : ℤ) = A067611 (n + 1)

end A067611

/-! ## A067611.P11907712872118763159

`eq[1, A283265(6*n+5)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A067611

/-- `eq[1, A283265(6*n+5)]+1` -/
def P11907712872118763159.Spec : Prop :=
  ∀ n, (P11907712872118763159.a n : ℤ) = A067611 (n + 1)

theorem P11907712872118763159.correct : P11907712872118763159.Spec := by
  intro n
  simp only [A067611, Nat.add_sub_cancel]

end A067611

/-! ## A067611.P13266544186264240769

`comp[round((p?[A040976(n+1)]-1)/6)]`
-/

namespace A067611.P13266544186264240769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1 : ℚ) / 6)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A067611.P13266544186264240769

namespace A067611

/-- `comp[round((p?[A040976(n+1)]-1)/6)]` -/
def P13266544186264240769.Spec : Prop :=
  ∀ n, (P13266544186264240769.a n : ℤ) = A067611 (n + 1)

end A067611

/-! ## A067611.P8157893878600192070

`∪[A046953(n+1), A107747(n+1)]`
-/

namespace A067611.P8157893878600192070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067611.P8157893878600192070

namespace A067611

/-- `∪[A046953(n+1), A107747(n+1)]` -/
def P8157893878600192070.Spec : Prop :=
  ∀ n, (P8157893878600192070.a n : ℤ) = A067611 (n + 1)

end A067611

/-! ## A067611.P10459956547118730647

`∪[A046953(n+1), A121763(n+1)]`
-/

namespace A067611.P10459956547118730647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067611.P10459956547118730647

namespace A067611

/-- `∪[A046953(n+1), A121763(n+1)]` -/
def P10459956547118730647.Spec : Prop :=
  ∀ n, (P10459956547118730647.a n : ℤ) = A067611 (n + 1)

end A067611

/-! ## A067611.P14059364169795988371

`∪[A046953(n+1), A392113(n+1)]`
-/

namespace A067611.P14059364169795988371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067611.P14059364169795988371

namespace A067611

/-- `∪[A046953(n+1), A392113(n+1)]` -/
def P14059364169795988371.Spec : Prop :=
  ∀ n, (P14059364169795988371.a n : ℤ) = A067611 (n + 1)

end A067611

/-! ## A067611.P13959526157916690243

`lt[A100923(n+1), 1]+1`
-/

namespace A067611.P13959526157916690243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067611.P13959526157916690243

namespace A067611

/-- `lt[A100923(n+1), 1]+1` -/
def P13959526157916690243.Spec : Prop :=
  ∀ n, (P13959526157916690243.a n : ℤ) = A067611 (n + 1)

end A067611

/-! ## A067611.P17908443677953765055

`lt[2, A145193(n+1)]+1`
-/

namespace A067611.P17908443677953765055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067611.P17908443677953765055

namespace A067611

/-- `lt[2, A145193(n+1)]+1` -/
def P17908443677953765055.Spec : Prop :=
  ∀ n, (P17908443677953765055.a n : ℤ) = A067611 (n + 1)

end A067611

/-! ## A067611.P344198156523491345

`lt[7, A182482(n+1)/(n+1)]+1`
-/

namespace A067611.P344198156523491345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182482 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A067611.P344198156523491345

namespace A067611

/-- `lt[7, A182482(n+1)/(n+1)]+1` -/
def P344198156523491345.Spec : Prop :=
  ∀ n, (P344198156523491345.a n : ℤ) = A067611 (n + 1)

end A067611

/-! ## A067611.P5572508639677253582

`eq[A019426(3*n), A292438(3*n)]/2`
-/

namespace A067611.P5572508639677253582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A067611.P5572508639677253582

namespace A067611

/-- `eq[A019426(3*n), A292438(3*n)]/2` -/
def P5572508639677253582.Spec : Prop :=
  ∀ n, P5572508639677253582.a n = (A067611 (n + 1) : ℚ)

end A067611

/-! ## A067611.P322698542087610203

`eq[A019427(3*n), A292438(3*n)]/2`
-/

namespace A067611.P322698542087610203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A067611.P322698542087610203

namespace A067611

/-- `eq[A019427(3*n), A292438(3*n)]/2` -/
def P322698542087610203.Spec : Prop :=
  ∀ n, P322698542087610203.a n = (A067611 (n + 1) : ℚ)

end A067611

/-! ## A067611.P6588789500791903790

`eq[A019428(3*n), A292438(3*n)]/2`
-/

namespace A067611.P6588789500791903790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A067611.P6588789500791903790

namespace A067611

/-- `eq[A019428(3*n), A292438(3*n)]/2` -/
def P6588789500791903790.Spec : Prop :=
  ∀ n, P6588789500791903790.a n = (A067611 (n + 1) : ℚ)

end A067611

/-! ## A067611.P3907459199646993608

`eq[A019429(3*n), A292438(3*n)]/2`
-/

namespace A067611.P3907459199646993608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A067611.P3907459199646993608

namespace A067611

/-- `eq[A019429(3*n), A292438(3*n)]/2` -/
def P3907459199646993608.Spec : Prop :=
  ∀ n, P3907459199646993608.a n = (A067611 (n + 1) : ℚ)

end A067611

/-! ## A067611.P15576384957831561704

`eq[A019430(3*n), A292438(3*n)]/2`
-/

namespace A067611.P15576384957831561704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A067611.P15576384957831561704

namespace A067611

/-- `eq[A019430(3*n), A292438(3*n)]/2` -/
def P15576384957831561704.Spec : Prop :=
  ∀ n, P15576384957831561704.a n = (A067611 (n + 1) : ℚ)

end A067611

/-! ## A067611.P9628070290930011229

`eq[A019431(3*n), A292438(3*n)]/2`
-/

namespace A067611.P9628070290930011229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A067611.P9628070290930011229

namespace A067611

/-- `eq[A019431(3*n), A292438(3*n)]/2` -/
def P9628070290930011229.Spec : Prop :=
  ∀ n, P9628070290930011229.a n = (A067611 (n + 1) : ℚ)

end A067611

/-! ## A067611.P13028284991483650152

`eq[A019432(3*n), A292438(3*n)]/2`
-/

namespace A067611.P13028284991483650152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A067611.P13028284991483650152

namespace A067611

/-- `eq[A019432(3*n), A292438(3*n)]/2` -/
def P13028284991483650152.Spec : Prop :=
  ∀ n, P13028284991483650152.a n = (A067611 (n + 1) : ℚ)

end A067611

/-! ## A067611.P8814169869195931320

`eq[A019433(3*n), A292438(3*n)]/2`
-/

namespace A067611.P8814169869195931320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A067611.P8814169869195931320

namespace A067611

/-- `eq[A019433(3*n), A292438(3*n)]/2` -/
def P8814169869195931320.Spec : Prop :=
  ∀ n, P8814169869195931320.a n = (A067611 (n + 1) : ℚ)

end A067611

/-!
# A067612: Numbers n such that sigma(n) = 3*phi(sigma(n)).

The programs for A067612, the canonical program `A067612.P14760073717960903170` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067612 has offset 1).

The definition of A067612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 678 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067612.P14760073717960903170

`eq[3, A006530(A000203(n+3))]+3`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A067612

/-- `eq[3, A006530(A000203(n+3))]+3` -/
def P14760073717960903170.Spec : Prop :=
  ∀ n, (P14760073717960903170.a n : ℤ) = A067612 (n + 1)

theorem P14760073717960903170.correct : P14760073717960903170.Spec := by
  intro n
  simp only [A067612, Nat.add_sub_cancel]

end A067612

/-! ## A067612.P7267230609974786271

`eq[3, A295314(n+3)]+3`
-/

namespace A067612.P7267230609974786271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295314 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A067612.P7267230609974786271

namespace A067612

/-- `eq[3, A295314(n+3)]+3` -/
def P7267230609974786271.Spec : Prop :=
  ∀ n, (P7267230609974786271.a n : ℤ) = A067612 (n + 1)

end A067612

/-! ## A067612.P15937965838943916613

`filter[A074627(n+1), A354355(#)]`
-/

namespace A067612.P15937965838943916613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A067612.P15937965838943916613

namespace A067612

/-- `filter[A074627(n+1), A354355(#)]` -/
def P15937965838943916613.Spec : Prop :=
  ∀ n, P15937965838943916613.a n = A067612 (n + 1)

end A067612

/-! ## A067612.P5997901372445684566

`filter[A034020(n+2), A354355(#)]`
-/

namespace A067612.P5997901372445684566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A067612.P5997901372445684566

namespace A067612

/-- `filter[A034020(n+2), A354355(#)]` -/
def P5997901372445684566.Spec : Prop :=
  ∀ n, P5997901372445684566.a n = A067612 (n + 1)

end A067612

/-! ## A067612.P5636442883170779658

`∩[A074627(n+1), A354356(n+1)]`
-/

namespace A067612.P5636442883170779658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067612.P5636442883170779658

namespace A067612

/-- `∩[A074627(n+1), A354356(n+1)]` -/
def P5636442883170779658.Spec : Prop :=
  ∀ n, (P5636442883170779658.a n : ℤ) = A067612 (n + 1)

end A067612

/-! ## A067612.P14853071680205145598

`filter[A087943(n+2), A354355(#)]`
-/

namespace A067612.P14853071680205145598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A067612.P14853071680205145598

namespace A067612

/-- `filter[A087943(n+2), A354355(#)]` -/
def P14853071680205145598.Spec : Prop :=
  ∀ n, P14853071680205145598.a n = A067612 (n + 1)

end A067612

/-! ## A067612.P9632437670632503910

`filter[A226946(n+2), A354355(#)]`
-/

namespace A067612.P9632437670632503910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A067612.P9632437670632503910

namespace A067612

/-- `filter[A226946(n+2), A354355(#)]` -/
def P9632437670632503910.Spec : Prop :=
  ∀ n, P9632437670632503910.a n = A067612 (n + 1)

end A067612

/-! ## A067612.P11713233623651914546

`eq[4, ∏{p}[∑{d}[n, #], #]-2]`
-/

namespace A067612.P11713233623651914546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067612.P11713233623651914546

namespace A067612

/-- `eq[4, ∏{p}[∑{d}[n, #], #]-2]` -/
def P11713233623651914546.Spec : Prop :=
  ∀ n, (P11713233623651914546.a n : ℤ) = A067612 (n + 1)

end A067612

/-! ## A067612.P8041745771649297464

`eq[6, ∏{p}[∑{d}[n+1, #], #]]+1`
-/

namespace A067612.P8041745771649297464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067612.P8041745771649297464

namespace A067612

/-- `eq[6, ∏{p}[∑{d}[n+1, #], #]]+1` -/
def P8041745771649297464.Spec : Prop :=
  ∀ n, (P8041745771649297464.a n : ℤ) = A067612 (n + 1)

end A067612

/-! ## A067612.P15568981507792466289

`eq[5, A080649(round(acot(n)+n))]`
-/

namespace A067612.P15568981507792466289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080649 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067612.P15568981507792466289

namespace A067612

/-- `eq[5, A080649(round(acot(n)+n))]` -/
def P15568981507792466289.Spec : Prop :=
  ∀ n, (P15568981507792466289.a n : ℤ) = A067612 (n + 1)

end A067612

/-! ## A067612.P16260514460411622286

`eq[6, A080398(A028310(n))]`
-/

namespace A067612.P16260514460411622286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080398 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067612.P16260514460411622286

namespace A067612

/-- `eq[6, A080398(A028310(n))]` -/
def P16260514460411622286.Spec : Prop :=
  ∀ n, (P16260514460411622286.a n : ℤ) = A067612 (n + 1)

end A067612

/-! ## A067612.P18363209105552765870

`eq[A000203(n+1), A306927(A048250(n+1))]+1`
-/

namespace A067612.P18363209105552765870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (A048250 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067612.P18363209105552765870

namespace A067612

/-- `eq[A000203(n+1), A306927(A048250(n+1))]+1` -/
def P18363209105552765870.Spec : Prop :=
  ∀ n, (P18363209105552765870.a n : ℤ) = A067612 (n + 1)

end A067612

/-! ## A067612.P5223681705903671664

`eq[3, A006530(A008619(A039653(n)))]`
-/

namespace A067612.P5223681705903671664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008619 (A039653 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067612.P5223681705903671664

namespace A067612

/-- `eq[3, A006530(A008619(A039653(n)))]` -/
def P5223681705903671664.Spec : Prop :=
  ∀ n, (P5223681705903671664.a n : ℤ) = A067612 (n + 1)

end A067612

/-! ## A067612.P13227202830011126177

`eq[2, A023900(A000203(A233583(n+1)))]`
-/

namespace A067612.P13227202830011126177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A000203 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067612.P13227202830011126177

namespace A067612

/-- `eq[2, A023900(A000203(A233583(n+1)))]` -/
def P13227202830011126177.Spec : Prop :=
  ∀ n, (P13227202830011126177.a n : ℤ) = A067612 (n + 1)

end A067612

/-!
# A067614: a(n) is the second partial quotient in the simple continued fraction for sqrt(prime(n)).

The programs for A067614, the canonical program `A067614.P13727524300754459105` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067614 has offset 1).

The definition of A067614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067614.P9413405193131135979

`A091453(Δ[A007504(n)])`
-/

namespace A067614.P9413405193131135979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (f1 (n + 1) - f1 n).toNat

end

end A067614.P9413405193131135979

namespace A067614

/-- `A091453(Δ[A007504(n)])` -/
def P9413405193131135979.Spec : Prop :=
  ∀ n, P9413405193131135979.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P13727524300754459105

`A091453(A000040(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067614

/-- `A091453(A000040(n+1))` -/
def P13727524300754459105.Spec : Prop :=
  ∀ n, P13727524300754459105.a n = A067614 (n + 1)

theorem P13727524300754459105.correct : P13727524300754459105.Spec := by
  intro n
  simp only [A067614, Nat.add_sub_cancel]

end A067614

/-! ## A067614.P6926558603726244812

`A013942(A112045(n+1))`
-/

namespace A067614.P6926558603726244812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (A112045 (n + 1)).toNat

end

end A067614.P6926558603726244812

namespace A067614

/-- `A013942(A112045(n+1))` -/
def P6926558603726244812.Spec : Prop :=
  ∀ n, P6926558603726244812.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P13653666381711203243

`A091453(A008578(n+2))`
-/

namespace A067614.P13653666381711203243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A008578 (n + 2)).toNat

end

end A067614.P13653666381711203243

namespace A067614

/-- `A091453(A008578(n+2))` -/
def P13653666381711203243.Spec : Prop :=
  ∀ n, P13653666381711203243.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P14913931029151211497

`A091453(A182986(n+2))`
-/

namespace A067614.P14913931029151211497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A182986 (n + 2)).toNat

end

end A067614.P14913931029151211497

namespace A067614

/-- `A091453(A182986(n+2))` -/
def P14913931029151211497.Spec : Prop :=
  ∀ n, P14913931029151211497.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P14004809943796235699

`A091453(sqrt(A001248(n+1)))`
-/

namespace A067614.P14004809943796235699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A067614.P14004809943796235699

namespace A067614

/-- `A091453(sqrt(A001248(n+1)))` -/
def P14004809943796235699.Spec : Prop :=
  ∀ n, P14004809943796235699.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P2369117977807784098

`A091453(record[A006530(n+2)])`
-/

namespace A067614.P2369117977807784098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067614.P2369117977807784098

namespace A067614

/-- `A091453(record[A006530(n+2)])` -/
def P2369117977807784098.Spec : Prop :=
  ∀ n, P2369117977807784098.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P4595919025285263259

`A091453(record[A020639(n+2)])`
-/

namespace A067614.P4595919025285263259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067614.P4595919025285263259

namespace A067614

/-- `A091453(record[A020639(n+2)])` -/
def P4595919025285263259.Spec : Prop :=
  ∀ n, P4595919025285263259.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P4514842742017238084

`A091453(record[A000010(n+1)+1])`
-/

namespace A067614.P4514842742017238084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067614.P4514842742017238084

namespace A067614

/-- `A091453(record[A000010(n+1)+1])` -/
def P4514842742017238084.Spec : Prop :=
  ∀ n, P4514842742017238084.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P2523480550874948896

`A091453(A007504(n+1)-A007504(n))`
-/

namespace A067614.P2523480550874948896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A007504 (n + 1) - A007504 n).toNat

end

end A067614.P2523480550874948896

namespace A067614

/-- `A091453(A007504(n+1)-A007504(n))` -/
def P2523480550874948896.Spec : Prop :=
  ∀ n, P2523480550874948896.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P13269330116592765054

`A091453(eq[1, A003415(n)])`
-/

namespace A067614.P13269330116592765054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067614.P13269330116592765054

namespace A067614

/-- `A091453(eq[1, A003415(n)])` -/
def P13269330116592765054.Spec : Prop :=
  ∀ n, P13269330116592765054.a n = A067614 (n + 1)

end A067614

/-! ## A067614.P626434082104036741

`A091453(record[A014963(n+2)])`
-/

namespace A067614.P626434082104036741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067614.P626434082104036741

namespace A067614

/-- `A091453(record[A014963(n+2)])` -/
def P626434082104036741.Spec : Prop :=
  ∀ n, P626434082104036741.a n = A067614 (n + 1)

end A067614

/-!
# A067617: Continued fraction for 9 * sum( 1/(10^k -1), k=1..0/0 ).

The programs for A067617, there is no canonical definition to state claims against.
-/

/-! ## A067617.P9812613192512506626

`A350484(4*(a(n-1)+1))` with `a(0)=1, a(1)=9, a(2)=1, a(3)=9, a(4)=1`
-/

namespace A067617.P9812613192512506626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 1, 9, 1] fun n a =>
  A350484 (4 * (a (n - 1) + 1)).toNat

end

end A067617.P9812613192512506626

/-!
# A067618: Number of self-conjugate partitions of n into prime parts.

The programs for A067618, there is no canonical definition to state claims against.
-/

/-! ## A067618.P2366155837410425370

`and(A115384(A110165(n)), A128582(n))`
-/

namespace A067618.P2366155837410425370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115384 (A110165 n).toNat) (A128582 n)

end

end A067618.P2366155837410425370

/-! ## A067618.P16652047359894008434

`and(A004273(A006703(n+3)²), A128582(n))`
-/

namespace A067618.P16652047359894008434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A006703 (n + 3) ^ 2).toNat) (A128582 n)

end

end A067618.P16652047359894008434

/-! ## A067618.P12755881731298607748

`and(A038387(A070228(n)), A112345(n))`
-/

namespace A067618.P12755881731298607748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038387 (A070228 n).toNat) (A112345 n)

end

end A067618.P12755881731298607748

/-! ## A067618.P10267302303235454039

`and(A038387(A070228(n)), A280596(n))`
-/

namespace A067618.P10267302303235454039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038387 (A070228 n).toNat) (A280596 n)

end

end A067618.P10267302303235454039

/-! ## A067618.P13143340887390333495

`and(A056092(A193595(n)), A280596(n))`
-/

namespace A067618.P13143340887390333495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056092 (A193595 n).toNat) (A280596 n)

end

end A067618.P13143340887390333495

/-!
# A067620: a(n) = p^e, where p and e are the rounded means of the prime factors p_i and the exponents e_i, respectively, in the factorization n = p_1^e_1 * ... * p_r^e_r of n into distinct primes p_i. Each mean is rounded to the nearest integer, rounding up if there's a choice.

The programs for A067620, there is no canonical definition to state claims against.
-/

/-! ## A067620.P6783020358427958587

`A185642(n+2)^dr(A305499(A333976(n+2)))`
-/

namespace A067620.P6783020358427958587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185642 (n + 2) ^ SequenceMachineLib.digitalRoot (A305499 (A333976 (n + 2)).toNat)

end

end A067620.P6783020358427958587

/-!
# A067621: Let t = coefficient of x^(2n+1) in expansion of sin(x)/(1-x^2); a(n)=denominator(t)-numerator(t).

The programs for A067621, there is no canonical definition to state claims against.
-/

/-! ## A067621.P9976578570634895761

`A354333(n)-A354332(n)`
-/

namespace A067621.P9976578570634895761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354333 n - A354332 n

end

end A067621.P9976578570634895761

/-! ## A067621.P17209736193363163678

`A354333(A028310(n))%A354332(n)`
-/

namespace A067621.P17209736193363163678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354333 (A028310 n).toNat) (A354332 n)

end

end A067621.P17209736193363163678

/-! ## A067621.P10576173106094259528

`A354333(A118759(n))%A354332(n)`
-/

namespace A067621.P10576173106094259528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354333 (A118759 n).toNat) (A354332 n)

end

end A067621.P10576173106094259528

/-! ## A067621.P12524876981537467393

`gcd(A009445(n), A354333(n))%A354332(n)`
-/

namespace A067621.P12524876981537467393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (A009445 n) (A354333 n) : ℤ) (A354332 n)

end

end A067621.P12524876981537467393

/-!
# A067622: Consider the power series (x + 1)^(1/3) = 1 + x/3-x^2/9 + 5x^3/81 + ...; sequence gives numerators of coefficients.

The programs for A067622, there is no canonical definition to state claims against.
-/

/-! ## A067622.P4997345080304093973

`(-1)^n*A257099(2^n)`
-/

namespace A067622.P4997345080304093973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257099 (2 ^ n)

end

end A067622.P4997345080304093973

/-! ## A067622.P1349725648569277328

`A257099(A000079(n))*A352529(n)`
-/

namespace A067622.P1349725648569277328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257099 (A000079 n).toNat * A352529 n

end

end A067622.P1349725648569277328

/-! ## A067622.P784686034227309285

`A257099(A081631(n))`
-/

namespace A067622.P784686034227309285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257099 (A081631 n).toNat

end

end A067622.P784686034227309285

/-! ## A067622.P8534249921889150259

`A257099(A283507(n+1)+1)`
-/

namespace A067622.P8534249921889150259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257099 (A283507 (n + 1) + 1).toNat

end

end A067622.P8534249921889150259

/-! ## A067622.P239959969659738989

`A257099(lcm(A000079(n), A101432(n)))`
-/

namespace A067622.P239959969659738989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257099 (Int.lcm (A000079 n) (A101432 n))

end

end A067622.P239959969659738989

/-!
# A067623: Consider the power series (x+1)^(1/3)=1+x/3-x^2/9+5x^3/81+...; sequence gives denominators of coefficients.

The programs for A067623, the canonical program `A067623.P12723816654749283554` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067623 has offset 0).

The definition of A067623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067623.P12723816654749283554

`3^n*a(floor(n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067623

/-- `3^n*a(floor(n/3))` -/
def P12723816654749283554.Spec : Prop :=
  ∀ n, (P12723816654749283554.a n : ℤ) = A067623 n

theorem P12723816654749283554.correct : P12723816654749283554.Spec := by
  intro n
  simp only [A067623]

end A067623

/-! ## A067623.P15004001303866912788

`3^A004128(n)`
-/

namespace A067623.P15004001303866912788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004128 n : ℤ)

end

end A067623.P15004001303866912788

namespace A067623

/-- `3^A004128(n)` -/
def P15004001303866912788.Spec : Prop :=
  ∀ n, P15004001303866912788.a n = (A067623 n : ℚ)

end A067623

/-! ## A067623.P17075891666657035395

`∏[gcd(3*n, 3^n)]`
-/

namespace A067623.P17075891666657035395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n) (3 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A067623.P17075891666657035395

namespace A067623

/-- `∏[gcd(3*n, 3^n)]` -/
def P17075891666657035395.Spec : Prop :=
  ∀ n, (P17075891666657035395.a n : ℤ) = A067623 n

end A067623

/-! ## A067623.P17945744046450282932

`3*a(n-1)*gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A067623.P17945744046450282932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) * Nat.gcd n (a (n - 1))

end

end A067623.P17945744046450282932

namespace A067623

/-- `3*a(n-1)*gcd(n, a(n-1))` -/
def P17945744046450282932.Spec : Prop :=
  ∀ n, (P17945744046450282932.a n : ℤ) = A067623 n

end A067623

/-! ## A067623.P3206289531971718684

`A060828(3*n)`
-/

namespace A067623.P3206289531971718684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060828 (3 * n)

end

end A067623.P3206289531971718684

namespace A067623

/-- `A060828(3*n)` -/
def P3206289531971718684.Spec : Prop :=
  ∀ n, P3206289531971718684.a n = A067623 n

end A067623

/-! ## A067623.P1729562556343816742

`sqrt(3)^A346502(n)`
-/

namespace A067623.P1729562556343816742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) ^ (A346502 n : ℤ)

end

end A067623.P1729562556343816742

namespace A067623

/-- `sqrt(3)^A346502(n)` -/
def P1729562556343816742.Spec : Prop :=
  ∀ n, P1729562556343816742.a n = (A067623 n : ℝ)

end A067623

/-! ## A067623.P5133068286619397559

`3^A054861(3*n)`
-/

namespace A067623.P5133068286619397559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A054861 (3 * n) : ℤ)

end

end A067623.P5133068286619397559

namespace A067623

/-- `3^A054861(3*n)` -/
def P5133068286619397559.Spec : Prop :=
  ∀ n, P5133068286619397559.a n = (A067623 n : ℚ)

end A067623

/-! ## A067623.P4249060036311925724

`3^(A054861(n)+n)`
-/

namespace A067623.P4249060036311925724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A054861 n + (n : ℤ) : ℤ)

end

end A067623.P4249060036311925724

namespace A067623

/-- `3^(A054861(n)+n)` -/
def P4249060036311925724.Spec : Prop :=
  ∀ n, P4249060036311925724.a n = (A067623 n : ℚ)

end A067623

/-! ## A067623.P12365938939551530429

`3^(A120514(n+1)-1)`
-/

namespace A067623.P12365938939551530429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A120514 (n + 1) - 1 : ℤ)

end

end A067623.P12365938939551530429

namespace A067623

/-- `3^(A120514(n+1)-1)` -/
def P12365938939551530429.Spec : Prop :=
  ∀ n, P12365938939551530429.a n = (A067623 n : ℚ)

end A067623

/-! ## A067623.P5194069642767387643

`a(n-1)*A074724(n)` with `a(0)=1`
-/

namespace A067623.P5194069642767387643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A074724 n

end

end A067623.P5194069642767387643

namespace A067623

/-- `a(n-1)*A074724(n)` -/
def P5194069642767387643.Spec : Prop :=
  ∀ n, P5194069642767387643.a n = A067623 n

end A067623

/-! ## A067623.P3335747427067852999

`3*a(n-1)*A038500(n)` with `a(0)=1`
-/

namespace A067623.P3335747427067852999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) * A038500 n)

end

end A067623.P3335747427067852999

namespace A067623

/-- `3*a(n-1)*A038500(n)` -/
def P3335747427067852999.Spec : Prop :=
  ∀ n, P3335747427067852999.a n = A067623 n

end A067623

/-! ## A067623.P5169967400500016788

`a(n-1)*A336650(3*n)` with `a(0)=1`
-/

namespace A067623.P5169967400500016788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A336650 (3 * n)

end

end A067623.P5169967400500016788

namespace A067623

/-- `a(n-1)*A336650(3*n)` -/
def P5169967400500016788.Spec : Prop :=
  ∀ n, P5169967400500016788.a n = A067623 n

end A067623

/-! ## A067623.P1082579790258754760

`A000244(A004128(n))`
-/

namespace A067623.P1082579790258754760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004128 n).toNat

end

end A067623.P1082579790258754760

namespace A067623

/-- `A000244(A004128(n))` -/
def P1082579790258754760.Spec : Prop :=
  ∀ n, P1082579790258754760.a n = A067623 n

end A067623

/-! ## A067623.P937933787582899747

`A017913(A346502(n))`
-/

namespace A067623.P937933787582899747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A346502 n).toNat

end

end A067623.P937933787582899747

namespace A067623

/-- `A017913(A346502(n))` -/
def P937933787582899747.Spec : Prop :=
  ∀ n, P937933787582899747.a n = A067623 n

end A067623

/-! ## A067623.P4153651786171730744

`A000244(A054861(3*n))`
-/

namespace A067623.P4153651786171730744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A054861 (3 * n)).toNat

end

end A067623.P4153651786171730744

namespace A067623

/-- `A000244(A054861(3*n))` -/
def P4153651786171730744.Spec : Prop :=
  ∀ n, P4153651786171730744.a n = A067623 n

end A067623

/-! ## A067623.P8419698174630107671

`A017913(A344853(3*n))`
-/

namespace A067623.P8419698174630107671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A344853 (3 * n)).toNat

end

end A067623.P8419698174630107671

namespace A067623

/-- `A017913(A344853(3*n))` -/
def P8419698174630107671.Spec : Prop :=
  ∀ n, P8419698174630107671.a n = A067623 n

end A067623

/-! ## A067623.P7836146801964570036

`A000244(A054861(n)+n)`
-/

namespace A067623.P7836146801964570036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A054861 n + (n : ℤ)).toNat

end

end A067623.P7836146801964570036

namespace A067623

/-- `A000244(A054861(n)+n)` -/
def P7836146801964570036.Spec : Prop :=
  ∀ n, P7836146801964570036.a n = A067623 n

end A067623

/-! ## A067623.P550348892967960074

`A038754(2*A054861(3*n))`
-/

namespace A067623.P550348892967960074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * A054861 (3 * n)).toNat

end

end A067623.P550348892967960074

namespace A067623

/-- `A038754(2*A054861(3*n))` -/
def P550348892967960074.Spec : Prop :=
  ∀ n, P550348892967960074.a n = A067623 n

end A067623

/-! ## A067623.P302095814416821739

`A024023(A054861(n)+n)+1`
-/

namespace A067623.P302095814416821739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (A054861 n + (n : ℤ)).toNat + 1

end

end A067623.P302095814416821739

namespace A067623

/-- `A024023(A054861(n)+n)+1` -/
def P302095814416821739.Spec : Prop :=
  ∀ n, P302095814416821739.a n = A067623 n

end A067623

/-! ## A067623.P15297041637263497059

`A000244(2*n-A089792(n))`
-/

namespace A067623.P15297041637263497059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ((2 * n : ℤ) - A089792 n).toNat

end

end A067623.P15297041637263497059

namespace A067623

/-- `A000244(2*n-A089792(n))` -/
def P15297041637263497059.Spec : Prop :=
  ∀ n, P15297041637263497059.a n = A067623 n

end A067623

/-!
# A067624: a(n) = 2^(2*n)*(2*n)!.

The programs for A067624, the canonical program `A067624.P5275510762540578590` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067624 has offset 0).

The definition of A067624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n)*(2*n)!` (program `A067624.P5275510762540578590`, by `A067624.P5275510762540578590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067624.P5275510762540578590

`2^(2*n)*(2*n)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067624

/-- `2^(2*n)*(2*n)!` -/
def P5275510762540578590.Spec : Prop :=
  ∀ n, (P5275510762540578590.a n : ℤ) = A067624 n

theorem P5275510762540578590.correct : P5275510762540578590.Spec := by
  intro n
  simp only [A067624]

end A067624

/-! ## A067624.P9820133677420400374

`A000165(2*n)`
-/

namespace A067624.P9820133677420400374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (2 * n)

end

end A067624.P9820133677420400374

namespace A067624

/-- `A000165(2*n)` -/
def P9820133677420400374.Spec : Prop :=
  ∀ n, P9820133677420400374.a n = A067624 n

end A067624

/-! ## A067624.P14821685593373439390

`(2*n)!*4^n`
-/

namespace A067624.P14821685593373439390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) * 4 ^ n

end

end A067624.P14821685593373439390

namespace A067624

/-- `(2*n)!*4^n` -/
def P14821685593373439390.Spec : Prop :=
  ∀ n, (P14821685593373439390.a n : ℤ) = A067624 n

end A067624

/-! ## A067624.P11700334991632634888

`record[-(n*a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A067624.P11700334991632634888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  -((n : ℤ) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067624.P11700334991632634888

namespace A067624

/-- `record[-(n*a(n-2))]` -/
def P11700334991632634888.Spec : Prop :=
  ∀ n, P11700334991632634888.a n = A067624 n

end A067624

/-! ## A067624.P15032176664769364552

`record[(1-n)*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A067624.P15032176664769364552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  (1 - (n : ℤ)) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067624.P15032176664769364552

namespace A067624

/-- `record[(1-n)*a(n-2)]` -/
def P15032176664769364552.Spec : Prop :=
  ∀ n, P15032176664769364552.a n = A067624 n

end A067624

/-!
# A067625: Numbers n such that sigma(n) = phi(prime(n)+1).

The programs for A067625, there is no canonical definition to state claims against.
-/

/-! ## A067625.P6622738544725707196

`eq[A000203(n+1), A008331(n+1)]+1`
-/

namespace A067625.P6622738544725707196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067625.P6622738544725707196

/-! ## A067625.P2639897515103806090

`eq[A000203(n+1), A000010(A000040(n+1)+1)]+1`
-/

namespace A067625.P2639897515103806090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067625.P2639897515103806090

/-!
# A067626: a(n) = 2^(2n+1)*(2n+1)!.

The programs for A067626, the canonical program `A067626.P3218770229817333251` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067626 has offset 0).

The definition of A067626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n+1)*(2*n+1)!` (program `A067626.P3218770229817333251`, by `A067626.P3218770229817333251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067626.P3218770229817333251

`2^(2*n+1)*(2*n+1)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067626

/-- `2^(2*n+1)*(2*n+1)!` -/
def P3218770229817333251.Spec : Prop :=
  ∀ n, (P3218770229817333251.a n : ℤ) = A067626 n

theorem P3218770229817333251.correct : P3218770229817333251.Spec := by
  intro n
  simp only [A067626]

end A067626

/-! ## A067626.P14058975372571315984

`record[-∏[-(2*(n+1))]]`
-/

namespace A067626.P14058975372571315984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067626.P14058975372571315984

namespace A067626

/-- `record[-∏[-(2*(n+1))]]` -/
def P14058975372571315984.Spec : Prop :=
  ∀ n, P14058975372571315984.a n = A067626 n

end A067626

/-! ## A067626.P5011048949162280029

`2*(2*n+1)!*4^n`
-/

namespace A067626.P5011048949162280029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (2 * n + 1) * 4 ^ n

end

end A067626.P5011048949162280029

namespace A067626

/-- `2*(2*n+1)!*4^n` -/
def P5011048949162280029.Spec : Prop :=
  ∀ n, (P5011048949162280029.a n : ℤ) = A067626 n

end A067626

/-! ## A067626.P3977871788310617350

`abs(record[-(2*n*a(n-1))])` with `a(0)=2, a(1)=2`
-/

namespace A067626.P3977871788310617350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  -((2 * n : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A067626.P3977871788310617350

namespace A067626

/-- `abs(record[-(2*n*a(n-1))])` -/
def P3977871788310617350.Spec : Prop :=
  ∀ n, P3977871788310617350.a n = A067626 n

end A067626

/-! ## A067626.P6569421687919220819

`2*4^n*record[(lcm(2, n)/2)!]`
-/

namespace A067626.P6569421687919220819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (4 ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A067626.P6569421687919220819

namespace A067626

/-- `2*4^n*record[(lcm(2, n)/2)!]` -/
def P6569421687919220819.Spec : Prop :=
  ∀ n, (P6569421687919220819.a n : ℤ) = A067626 n

end A067626

/-!
# A067627: Triangle T(n,k) = number of conjugacy classes of partitions of n using only k types of piles, read by rows.

The programs for A067627, there is no canonical definition to state claims against.
-/

/-! ## A067627.P8142158151185232426

`∑{e}[A060546(A060177(n+1)), #]`
-/

namespace A067627.P8142158151185232426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A060177 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A067627.P8142158151185232426

/-!
# A067628: Minimal perimeter of polyiamond with n triangles.

The programs for A067628, the canonical program `A067628.P11261685792341375981` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067628 has offset 0).

The definition of A067628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067628.P11261685792341375981

`2*ceil((n+sqrt(6*n))/2)-n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067628

/-- `2*ceil((n+sqrt(6*n))/2)-n` -/
def P11261685792341375981.Spec : Prop :=
  ∀ n, P11261685792341375981.a n = A067628 n

theorem P11261685792341375981.correct : P11261685792341375981.Spec := by
  intro n
  simp only [A067628]

end A067628

/-! ## A067628.P10328563085263879962

`A086520(A017041(n))%A196379(3*n+1)`
-/

namespace A067628.P10328563085263879962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086520 (A017041 n).toNat) (A196379 (3 * n + 1))

end

end A067628.P10328563085263879962

namespace A067628

/-- `A086520(A017041(n))%A196379(3*n+1)` -/
def P10328563085263879962.Spec : Prop :=
  ∀ n, P10328563085263879962.a n = A067628 n

end A067628

/-!
# A067629: The average of the prime factors of n, rounded off to the nearest integer (rounding up if there's a choice), with each factor weighted according to its frequency of occurrence in the prime factorization.

The programs for A067629, the canonical program `A067629.P8919176569597278952` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067629 has offset 2).

The definition of A067629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067629.P8919176569597278952

`round(A001414(n+2)/A001222(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A067629

/-- `round(A001414(n+2)/A001222(n+2))` -/
def P8919176569597278952.Spec : Prop :=
  ∀ n, P8919176569597278952.a n = A067629 (n + 2)

theorem P8919176569597278952.correct : P8919176569597278952.Spec := by
  intro n
  simp only [A067629, Nat.add_sub_cancel]

end A067629

/-! ## A067629.P2493545865609478955

`round(A123528(n+2)/A123529(n+2))`
-/

namespace A067629.P2493545865609478955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123528 (n + 2) : ℚ) / (A123529 (n + 2) : ℚ))

end

end A067629.P2493545865609478955

namespace A067629

/-- `round(A123528(n+2)/A123529(n+2))` -/
def P2493545865609478955.Spec : Prop :=
  ∀ n, P2493545865609478955.a n = A067629 (n + 2)

end A067629

/-! ## A067629.P5736380409478668403

`A076690(A076685(n+2)^A047050(n))`
-/

namespace A067629.P5736380409478668403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076690 (SequenceMachineLib.roundAway ((A076685 (n + 2) : ℚ) ^ (A047050 n : ℤ))).toNat

end

end A067629.P5736380409478668403

namespace A067629

/-- `A076690(A076685(n+2)^A047050(n))` -/
def P5736380409478668403.Spec : Prop :=
  ∀ n, P5736380409478668403.a n = A067629 (n + 2)

end A067629

/-! ## A067629.P9571284964356148344

`A076690(A076710(n+3)+A076685(n+2))`
-/

namespace A067629.P9571284964356148344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076690 (A076710 (n + 3) + A076685 (n + 2)).toNat

end

end A067629.P9571284964356148344

namespace A067629

/-- `A076690(A076710(n+3)+A076685(n+2))` -/
def P9571284964356148344.Spec : Prop :=
  ∀ n, P9571284964356148344.a n = A067629 (n + 2)

end A067629

/-! ## A067629.P6687896691190985502

`A070013(A074736(n+2))`
-/

namespace A067629.P6687896691190985502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070013 (A074736 (n + 2)).toNat

end

end A067629.P6687896691190985502

namespace A067629

/-- `A070013(A074736(n+2))` -/
def P6687896691190985502.Spec : Prop :=
  ∀ n, P6687896691190985502.a n = A067629 (n + 2)

end A067629

/-!
# A067630: a(n) = (4*n)! / 4^n.

The programs for A067630, the canonical program `A067630.P2395894801648612813` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067630 has offset 0).

The definition of A067630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067630.P2395894801648612813

`(64*n^4-96*n^3+44*n²-6*n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067630

/-- `(64*n^4-96*n^3+44*n²-6*n)*a(n-1)` -/
def P2395894801648612813.Spec : Prop :=
  ∀ n, P2395894801648612813.a n = A067630 n

theorem P2395894801648612813.correct : P2395894801648612813.Spec := by
  intro n
  simp only [A067630]

end A067630

/-! ## A067630.P4875725376968378387

`(4*n)!/4^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067630.P4875725376968378387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) : ℚ) / (4 ^ n : ℚ)

end

end A067630.P4875725376968378387

namespace A067630

/-- `(4*n)!/4^n` -/
def P4875725376968378387.Spec : Prop :=
  ∀ n, P4875725376968378387.a n = (A067630 n : ℚ)

end A067630

/-! ## A067630.P11919212318180909451

`record[n!*∏[1-2*n]]`
-/

namespace A067630.P11919212318180909451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067630.P11919212318180909451

namespace A067630

/-- `record[n!*∏[1-2*n]]` -/
def P11919212318180909451.Spec : Prop :=
  ∀ n, P11919212318180909451.a n = A067630 n

end A067630

/-! ## A067630.P7913390569363140648

`record[-(C(2*n, 2)*a(n-1))]` with `a(0)=1`
-/

namespace A067630.P7913390569363140648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -((Nat.choose (2 * n) 2 : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067630.P7913390569363140648

namespace A067630

/-- `record[-(C(2*n, 2)*a(n-1))]` -/
def P7913390569363140648.Spec : Prop :=
  ∀ n, P7913390569363140648.a n = A067630 n

end A067630

/-! ## A067630.P11050093575159717458

`A000680(2*n)`
-/

namespace A067630.P11050093575159717458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 (2 * n)

end

end A067630.P11050093575159717458

namespace A067630

/-- `A000680(2*n)` -/
def P11050093575159717458.Spec : Prop :=
  ∀ n, P11050093575159717458.a n = A067630 n

end A067630

/-!
# A067631: If n is composite then a(n) is the standard deviation of the prime factors of n, rounded off to the nearest integer (rounding up if there's a choice), with each factor counted according to its frequency of occurrence in the prime factorization. If n is 1 or prime then a(n)=0.

The programs for A067631, there is no canonical definition to state claims against.
-/

/-! ## A067631.P7919041820867845145

`A243055(A357977(n+2)²)`
-/

namespace A067631.P7919041820867845145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A357977 (n + 2) ^ 2).toNat

end

end A067631.P7919041820867845145

/-! ## A067631.P6807187024438323057

`A318584(A085307(n+2))`
-/

namespace A067631.P6807187024438323057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318584 (A085307 (n + 2)).toNat

end

end A067631.P6807187024438323057

/-! ## A067631.P3178629660010398206

`A053616(A318465(n+1)^A178921(n+2))`
-/

namespace A067631.P3178629660010398206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (SequenceMachineLib.roundAway ((A318465 (n + 1) : ℚ) ^ (A178921 (n + 2) : ℤ))).toNat

end

end A067631.P3178629660010398206

/-! ## A067631.P7327900141264802083

`A049087(n+2)-A241919(A049087(n+2)!)`
-/

namespace A067631.P7327900141264802083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (n + 2) - A241919 (Nat.factorial (A049087 (n + 2)).toNat)

end

end A067631.P7327900141264802083

/-! ## A067631.P1197503375154470530

`A346699(A317840(2*(n+2))^A243055(n+2))`
-/

namespace A067631.P1197503375154470530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (SequenceMachineLib.roundAway ((A317840 (2 * (n + 2)) : ℚ) ^ (A243055 (n + 2) : ℤ))).toNat

end

end A067631.P1197503375154470530

/-!
# A067633: a(1) = 1; sequence of digits of a(n)^2 is a subsequence of the sequence of digits of a(n+1)^2.

The programs for A067633, there is no canonical definition to state claims against.
-/

/-! ## A067633.P3424518688218249748

`sqrt(A068175(n+1))`
-/

namespace A067633.P3424518688218249748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A068175 (n + 1) : ℝ)

end

end A067633.P3424518688218249748

/-! ## A067633.P3051732697064803890

`or(root(A068175(n+1), 2), A340988(n))`
-/

namespace A067633.P3051732697064803890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A068175 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A340988 (n + 91))

end

end A067633.P3051732697064803890

/-!
# A067634: a(1) = 1; string of digits of a(n)^2 is a substring of the string of digits of a(n+1)^2.

The programs for A067634, the canonical program `A067634.P9839746598993504444` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067634 has offset 1).

The definition of A067634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067634.P9839746598993504444

`10*a(n-1)` with `a(0)=1, a(1)=4, a(2)=13`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067634

/-- `10*a(n-1)` -/
def P9839746598993504444.Spec : Prop :=
  ∀ n, (P9839746598993504444.a n : ℤ) = A067634 (n + 1)

theorem P9839746598993504444.correct : P9839746598993504444.Spec := by
  intro n
  simp only [A067634, Nat.add_sub_cancel]

end A067634

/-! ## A067634.P8823624365286923789

`a(n-1)/tan(acot(10))` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A067634.P8823624365286923789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (10 : ℝ))

end

end A067634.P8823624365286923789

namespace A067634

/-- `a(n-1)/tan(acot(10))` -/
def P8823624365286923789.Spec : Prop :=
  ∀ n, P8823624365286923789.a n = (A067634 (n + 1) : ℝ)

end A067634

/-! ## A067634.P4022816469728369086

`a(n-1)/sin(acot(3))²` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A067634.P4022816469728369086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  a (n - 1) / Real.sin (SequenceMachineLib.acot (3 : ℝ)) ^ 2

end

end A067634.P4022816469728369086

namespace A067634

/-- `a(n-1)/sin(acot(3))²` -/
def P4022816469728369086.Spec : Prop :=
  ∀ n, P4022816469728369086.a n = (A067634 (n + 1) : ℝ)

end A067634

/-! ## A067634.P12636846000558516640

`record[a(n-2)+a(n-2)/(1/3)²]` with `a(0)=1, a(1)=4, a(2)=3, a(3)=1, a(4)=-14, a(5)=13, a(6)=0`
-/

namespace A067634.P12636846000558516640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 3, 1, -14, 13, 0] fun n f1 =>
  f1 (n - 2) + f1 (n - 2) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067634.P12636846000558516640

namespace A067634

/-- `record[a(n-2)+a(n-2)/(1/3)²]` -/
def P12636846000558516640.Spec : Prop :=
  ∀ n, P12636846000558516640.a n = (A067634 (n + 1) : ℚ)

end A067634

/-! ## A067634.P5864367934647475361

`abs(10*a(A023443(n)))` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A067634.P5864367934647475361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  10 * a (A023443 n).toNat

end

end A067634.P5864367934647475361

namespace A067634

/-- `abs(10*a(A023443(n)))` -/
def P5864367934647475361.Spec : Prop :=
  ∀ n, (P5864367934647475361.a n : ℤ) = A067634 (n + 1)

end A067634

/-!
# A067636: Row 1 of table in A067640.

The programs for A067636, the canonical program `A067636.P9941358980440956853` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067636 has offset 0).

The definition of A067636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067636.P9941358980440956853

`(2*n+2)!*(2*n+4)!/(n!*(n+2)!²*(n+3)!)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067636

/-- `(2*n+2)!*(2*n+4)!/(n!*(n+2)!²*(n+3)!)` -/
def P9941358980440956853.Spec : Prop :=
  ∀ n, P9941358980440956853.a n = (A067636 n : ℚ)

end A067636

/-! ## A067636.P18094769952528496264

`A005559(2*(n+1))`
-/

namespace A067636.P18094769952528496264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005559 (2 * (n + 1))

end

end A067636.P18094769952528496264

namespace A067636

/-- `A005559(2*(n+1))` -/
def P18094769952528496264.Spec : Prop :=
  ∀ n, P18094769952528496264.a n = A067636 n

end A067636

/-! ## A067636.P4704757068642656062

`2*A046715(n+1)`
-/

namespace A067636.P4704757068642656062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046715 (n + 1)

end

end A067636.P4704757068642656062

namespace A067636

/-- `2*A046715(n+1)` -/
def P4704757068642656062.Spec : Prop :=
  ∀ n, P4704757068642656062.a n = A067636 n

end A067636

/-! ## A067636.P16603982517683776765

`(n+1)*A005568(n+1)`
-/

namespace A067636.P16603982517683776765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005568 (n + 1)

end

end A067636.P16603982517683776765

namespace A067636

/-- `(n+1)*A005568(n+1)` -/
def P16603982517683776765.Spec : Prop :=
  ∀ n, P16603982517683776765.a n = A067636 n

end A067636

/-! ## A067636.P15132783207242135229

`(n+1)*A052175((n+1)²)`
-/

namespace A067636.P15132783207242135229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052175 ((n + 1) ^ 2)

end

end A067636.P15132783207242135229

namespace A067636

/-- `(n+1)*A052175((n+1)²)` -/
def P15132783207242135229.Spec : Prop :=
  ∀ n, P15132783207242135229.a n = A067636 n

end A067636

/-! ## A067636.P7636511982205706156

`2*(n+1)*A000356(n+1)`
-/

namespace A067636.P7636511982205706156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000356 (n + 1))

end

end A067636.P7636511982205706156

namespace A067636

/-- `2*(n+1)*A000356(n+1)` -/
def P7636511982205706156.Spec : Prop :=
  ∀ n, P7636511982205706156.a n = A067636 n

end A067636

/-! ## A067636.P13892352339905291134

`(n+1)*A005817(2*(n+1))`
-/

namespace A067636.P13892352339905291134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005817 (2 * (n + 1))

end

end A067636.P13892352339905291134

namespace A067636

/-- `(n+1)*A005817(2*(n+1))` -/
def P13892352339905291134.Spec : Prop :=
  ∀ n, P13892352339905291134.a n = A067636 n

end A067636

/-! ## A067636.P11607032548016230266

`(n+1)*A302093(2*(n+1))`
-/

namespace A067636.P11607032548016230266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A302093 (2 * (n + 1))

end

end A067636.P11607032548016230266

namespace A067636

/-- `(n+1)*A302093(2*(n+1))` -/
def P11607032548016230266.Spec : Prop :=
  ∀ n, P11607032548016230266.a n = A067636 n

end A067636

/-! ## A067636.P12305127483708451760

`C(2*(n+1), n)*A000108(n+2)`
-/

namespace A067636.P12305127483708451760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) n : ℤ) * A000108 (n + 2)

end

end A067636.P12305127483708451760

namespace A067636

/-- `C(2*(n+1), n)*A000108(n+2)` -/
def P12305127483708451760.Spec : Prop :=
  ∀ n, P12305127483708451760.a n = A067636 n

end A067636

/-! ## A067636.P4167513094215045496

`A172392(n+1)-A005568(n+1)`
-/

namespace A067636.P4167513094215045496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172392 (n + 1) - A005568 (n + 1)

end

end A067636.P4167513094215045496

namespace A067636

/-- `A172392(n+1)-A005568(n+1)` -/
def P4167513094215045496.Spec : Prop :=
  ∀ n, P4167513094215045496.a n = A067636 n

end A067636

/-!
# A067637: Row 2 of table in A067640.

The programs for A067637, there is no canonical definition to state claims against.
-/

/-! ## A067637.P3713051576034267788

`A067640(∑[n+3])`
-/

namespace A067637.P3713051576034267788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067637.P3713051576034267788

/-! ## A067637.P7585490937875646534

`lcm(2, A067640(A141214(n)))`
-/

namespace A067637.P7585490937875646534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A067640 (A141214 n).toNat)

end

end A067637.P7585490937875646534

/-!
# A067638: Row 3 of table in A067640.

The programs for A067638, there is no canonical definition to state claims against.
-/

/-! ## A067638.P10914135942768782609

`A067640(∑[n+4]+2)`
-/

namespace A067638.P10914135942768782609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067640 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A067638.P10914135942768782609

/-!
# A067641: Column 1 of table in A067640.

The programs for A067641, there is no canonical definition to state claims against.
-/

/-! ## A067641.P13804766507151082498

`A067640(∑[n+1]+1)`
-/

namespace A067641.P13804766507151082498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067640 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A067641.P13804766507151082498

/-! ## A067641.P4470744195425307485

`record[A067640(A056536(n+1))]`
-/

namespace A067641.P4470744195425307485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067640 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067641.P4470744195425307485

/-! ## A067641.P2883244245820562279

`record[A067640(A286235(n+1))]`
-/

namespace A067641.P2883244245820562279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067640 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067641.P2883244245820562279

/-!
# A067642: Column 2 of table in A067640.

The programs for A067642, there is no canonical definition to state claims against.
-/

/-! ## A067642.P6952270887794374536

`A067640(∑[n+2]+3)`
-/

namespace A067642.P6952270887794374536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067640 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A067642.P6952270887794374536

/-!
# A067643: Column 3 of table in A067640.

The programs for A067643, there is no canonical definition to state claims against.
-/

/-! ## A067643.P15413065280701650119

`A067640(∑[n+2]+7+n)`
-/

namespace A067643.P15413065280701650119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067640 (∑ j ∈ Finset.range (n + 1), f1 j + 7 + n)

end

end A067643.P15413065280701650119

/-!
# A067644: Number of prime alternating tangles (or knots) of type Gamma_1 with two connected components.

The programs for A067644, there is no canonical definition to state claims against.
-/

/-! ## A067644.P11436564215223705166

`A067646(n)-2*A067645(n)`
-/

namespace A067644.P11436564215223705166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067646 n - 2 * A067645 n

end

end A067644.P11436564215223705166

/-! ## A067644.P5137680821329510380

`A067646(n)-A005843(A067645(n))`
-/

namespace A067644.P5137680821329510380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067646 n - A005843 (A067645 n).toNat

end

end A067644.P5137680821329510380

/-!
# A067645: Number of prime alternating tangles (or knots) of type Gamma_2 with two connected components.

The programs for A067645, there is no canonical definition to state claims against.
-/

/-! ## A067645.P4594850551423558343

`(A067646(n)-A067644(n))/2`
-/

namespace A067645.P4594850551423558343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067646 n - A067644 n : ℚ) / 2

end

end A067645.P4594850551423558343

/-! ## A067645.P5221258309360874019

`A014682(A067646(n)-A067644(n))`
-/

namespace A067645.P5221258309360874019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A067646 n - A067644 n).toNat

end

end A067645.P5221258309360874019

/-! ## A067645.P1820189681431587498

`A004525(A067646(n)-A067644(n))`
-/

namespace A067645.P1820189681431587498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A067646 n - A067644 n).toNat

end

end A067645.P1820189681431587498

/-! ## A067645.P16373736959263698757

`A004526(A067646(n)-A067644(n))`
-/

namespace A067645.P16373736959263698757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067646 n - A067644 n).toNat

end

end A067645.P16373736959263698757

/-! ## A067645.P18238204005437632460

`A025480(A067646(n)-A067644(n))`
-/

namespace A067645.P18238204005437632460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A067646 n - A067644 n).toNat

end

end A067645.P18238204005437632460

/-!
# A067646: Number of prime alternating tangles (or knots) with two connected components.

The programs for A067646, there is no canonical definition to state claims against.
-/

/-! ## A067646.P6986683641166489855

`A067644(n)+2*A067645(n)`
-/

namespace A067646.P6986683641166489855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067644 n + 2 * A067645 n

end

end A067646.P6986683641166489855

/-! ## A067646.P4971168539031907877

`A067644(n)+A005843(A067645(n))`
-/

namespace A067646.P4971168539031907877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067644 n + A005843 (A067645 n).toNat

end

end A067646.P4971168539031907877

/-! ## A067646.P16661286178896162184

`∑[A357978(n!)]`
-/

namespace A067646.P16661286178896162184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357978 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067646.P16661286178896162184

/-!
# A067647: Number of knot diagrams of type 1PI with n crossings and two outgoing strings.

The programs for A067647, there is no canonical definition to state claims against.
-/

/-! ## A067647.P5600470022972540814

`A058347(n)+A029578(A111543(n))`
-/

namespace A067647.P5600470022972540814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058347 n + A029578 (A111543 n).toNat

end

end A067647.P5600470022972540814

/-! ## A067647.P8256586514158440482

`A249732(n)+A029578(A111543(n))`
-/

namespace A067647.P8256586514158440482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249732 n + A029578 (A111543 n).toNat

end

end A067647.P8256586514158440482

/-!
# A067649: Numerators of power series for sqrt(1+x^2)/sqrt(1-x).

The programs for A067649, there is no canonical definition to state claims against.
-/

/-! ## A067649.P5818988537249011080

`A317847(2^n)`
-/

namespace A067649.P5818988537249011080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317847 (2 ^ n)

end

end A067649.P5818988537249011080

/-! ## A067649.P6942628368747909836

`abs(A317847(A000079(n)))`
-/

namespace A067649.P6942628368747909836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317847 (A000079 n).toNat|

end

end A067649.P6942628368747909836

/-! ## A067649.P17156359938167141407

`abs(A317847(abs(A122803(n))))`
-/

namespace A067649.P17156359938167141407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A317847 |A122803 n|.toNat)|

end

end A067649.P17156359938167141407

/-! ## A067649.P12076403067198358161

`abs(A317847(sqrt(A000302(n))))`
-/

namespace A067649.P12076403067198358161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317847 (SequenceMachineLib.roundAway (Real.sqrt (A000302 n : ℝ))).toNat|

end

end A067649.P12076403067198358161

/-! ## A067649.P4248312189139706047

`abs(A317847(A036561(∑[n])))`
-/

namespace A067649.P4248312189139706047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317847 (A036561 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A067649.P4248312189139706047

/-!
# A067651: Numbers k such that sigma(k) = phi(prime(k)-1).

The programs for A067651, there is no canonical definition to state claims against.
-/

/-! ## A067651.P15584380193059179593

`A000720(A107815(n+1))`
-/

namespace A067651.P15584380193059179593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107815 (n + 1)).toNat

end

end A067651.P15584380193059179593

/-! ## A067651.P2455476887121430330

`A061395(p?[A107815(n+1)])`
-/

namespace A067651.P2455476887121430330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067651.P2455476887121430330

/-! ## A067651.P6496434860962481376

`∑{d}[A107815(n+1), A061395(#)]`
-/

namespace A067651.P6496434860962481376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A067651.P6496434860962481376

/-! ## A067651.P9625404857354669647

`A061395(∏{d}[A107815(n+1), #])`
-/

namespace A067651.P9625404857354669647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A067651.P9625404857354669647

/-! ## A067651.P13407387424353388412

`A061395(∑{p}[A107815(n+1), #])`
-/

namespace A067651.P13407387424353388412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A067651.P13407387424353388412

/-!
# A067652: a(n) = H_n(2,3) = H_(n-1)(2,4) where H_n is the n-th hyperoperator.

The programs for A067652, there is no canonical definition to state claims against.
-/

/-! ## A067652.P8599706823318186450

`4^(a(n-1)-a(n-2))` with `a(0)=4, a(1)=5, a(2)=6, a(3)=8`
-/

namespace A067652.P8599706823318186450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4, 5, 6, 8] fun n a =>
  (4 : ℝ) ^ (a (n - 1) - a (n - 2))

end

end A067652.P8599706823318186450

/-!
# A067653: Denominators of the coefficients in exp(x/(1-x)) power series.

The programs for A067653, there is no canonical definition to state claims against.
-/

/-! ## A067653.P11994975504886154063

`A000142(n)/A000262(n)*A067764(n)`
-/

namespace A067653.P11994975504886154063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000262 n : ℚ) * (A067764 n : ℚ)

end

end A067653.P11994975504886154063

/-! ## A067653.P13916729133671837203

`A000142(n)/gcd(A000142(n), A293125(n))`
-/

namespace A067653.P13916729133671837203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A293125 n) : ℚ)

end

end A067653.P13916729133671837203

/-! ## A067653.P13633635205414981586

`A000142(n)/gcd(A000262(n), A077611(n+1))`
-/

namespace A067653.P13633635205414981586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000262 n) (A077611 (n + 1)) : ℚ)

end

end A067653.P13633635205414981586

/-! ## A067653.P392213404211729401

`A000142(n)/gcd(A000165(n), A000262(n))`
-/

namespace A067653.P392213404211729401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000165 n) (A000262 n) : ℚ)

end

end A067653.P392213404211729401

/-! ## A067653.P3665310044908067995

`lcm(A000142(n), A293125(n))/A000262(n)`
-/

namespace A067653.P3665310044908067995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A293125 n) : ℚ) / (A000262 n : ℚ)

end

end A067653.P3665310044908067995

/-!
# A067654: Numerators of the coefficients in power series expansion of exp(2x/(1-x)).

The programs for A067654, there is no canonical definition to state claims against.
-/

/-! ## A067654.P16562546955776883659

`record[2*A006530(A052897(n))]`
-/

namespace A067654.P16562546955776883659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (A052897 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067654.P16562546955776883659

/-!
# A067655: Denominators of the coefficients in exp(2x/(1-x)) power series.

The programs for A067655, there is no canonical definition to state claims against.
-/

/-! ## A067655.P9557484182667232411

`gcd(A187829(n+1)!, A209430(n+2))`
-/

namespace A067655.P9557484182667232411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A187829 (n + 1)).toNat : ℤ) (A209430 (n + 2))

end

end A067655.P9557484182667232411

/-! ## A067655.P2154261965400290678

`gcd(A160624(n+3), A160624(A187829(n+1)))`
-/

namespace A067655.P2154261965400290678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160624 (n + 3)) (A160624 (A187829 (n + 1)).toNat)

end

end A067655.P2154261965400290678

/-! ## A067655.P2895067836438563012

`gcd(A209430(A187829(n+2)), A209430(n+1))`
-/

namespace A067655.P2895067836438563012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209430 (A187829 (n + 2)).toNat) (A209430 (n + 1))

end

end A067655.P2895067836438563012

/-! ## A067655.P9171836831225297901

`gcd(∏[2*n+1]^7, (n+1)!)`
-/

namespace A067655.P9171836831225297901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 7) (Nat.factorial (n + 1))

end

end A067655.P9171836831225297901

/-! ## A067655.P4902064035151834518

`A209430(C(comp[14*n], n))`
-/

namespace A067655.P4902064035151834518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209430 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n)

end

end A067655.P4902064035151834518

/-!
# A067656: Numbers n such that n!*B(2n) is an integer, where B(2n) are the Bernoulli numbers.

The programs for A067656, the canonical program `A067656.P6610012476319395165` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067656 has offset 1).

The definition of A067656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067656.P6610012476319395165

`A166602(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067656

/-- `A166602(n+2)` -/
def P6610012476319395165.Spec : Prop :=
  ∀ n, P6610012476319395165.a n = A067656 (n + 1)

theorem P6610012476319395165.correct : P6610012476319395165.Spec := by
  intro n
  simp only [A067656, Nat.add_sub_cancel]

end A067656

/-! ## A067656.P1138746997637190599

`A138666(n+2)-1`
-/

namespace A067656.P1138746997637190599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138666 (n + 2) - 1

end

end A067656.P1138746997637190599

namespace A067656

/-- `A138666(n+2)-1` -/
def P1138746997637190599.Spec : Prop :=
  ∀ n, P1138746997637190599.a n = A067656 (n + 1)

end A067656

/-! ## A067656.P2649031690175012151

`lt[2, A251717(n+1)]`
-/

namespace A067656.P2649031690175012151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067656.P2649031690175012151

namespace A067656

/-- `lt[2, A251717(n+1)]` -/
def P2649031690175012151.Spec : Prop :=
  ∀ n, (P2649031690175012151.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P8926723123091414869

`lt[A166333(2*n), n]`
-/

namespace A067656.P8926723123091414869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067656.P8926723123091414869

namespace A067656

/-- `lt[A166333(2*n), n]` -/
def P8926723123091414869.Spec : Prop :=
  ∀ n, (P8926723123091414869.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P11107896368635791019

`lt[1, A040076(n+1)]+1`
-/

namespace A067656.P11107896368635791019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067656.P11107896368635791019

namespace A067656

/-- `lt[1, A040076(n+1)]+1` -/
def P11107896368635791019.Spec : Prop :=
  ∀ n, (P11107896368635791019.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P12097641833527043695

`lt[2, A034693(n+1)]+1`
-/

namespace A067656.P12097641833527043695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067656.P12097641833527043695

namespace A067656

/-- `lt[2, A034693(n+1)]+1` -/
def P12097641833527043695.Spec : Prop :=
  ∀ n, (P12097641833527043695.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P17358741436885421004

`lt[2, A039637(2*n+1)]`
-/

namespace A067656.P17358741436885421004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067656.P17358741436885421004

namespace A067656

/-- `lt[2, A039637(2*n+1)]` -/
def P17358741436885421004.Spec : Prop :=
  ∀ n, (P17358741436885421004.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P17831824420450005404

`lt[A056563(n+4), 1]+3`
-/

namespace A067656.P17831824420450005404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A067656.P17831824420450005404

namespace A067656

/-- `lt[A056563(n+4), 1]+3` -/
def P17831824420450005404.Spec : Prop :=
  ∀ n, (P17831824420450005404.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P12640037499908985009

`lt[A260234(n+2), n]+1`
-/

namespace A067656.P12640037499908985009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260234 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067656.P12640037499908985009

namespace A067656

/-- `lt[A260234(n+2), n]+1` -/
def P12640037499908985009.Spec : Prop :=
  ∀ n, (P12640037499908985009.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P16663664717309338210

`lt[A039635(2*n+1), n]`
-/

namespace A067656.P16663664717309338210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067656.P16663664717309338210

namespace A067656

/-- `lt[A039635(2*n+1), n]` -/
def P16663664717309338210.Spec : Prop :=
  ∀ n, (P16663664717309338210.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P11242141841916991886

`lt[A074399(2*n+1), n]`
-/

namespace A067656.P11242141841916991886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067656.P11242141841916991886

namespace A067656

/-- `lt[A074399(2*n+1), n]` -/
def P11242141841916991886.Spec : Prop :=
  ∀ n, (P11242141841916991886.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P12976713510548421546

`lt[A242931(2*(n+1)), n]`
-/

namespace A067656.P12976713510548421546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067656.P12976713510548421546

namespace A067656

/-- `lt[A242931(2*(n+1)), n]` -/
def P12976713510548421546.Spec : Prop :=
  ∀ n, (P12976713510548421546.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P17525220798690683387

`lt[A093074(comp[2*n]), n+1]`
-/

namespace A067656.P17525220798690683387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A067656.P17525220798690683387

namespace A067656

/-- `lt[A093074(comp[2*n]), n+1]` -/
def P17525220798690683387.Spec : Prop :=
  ∀ n, (P17525220798690683387.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P651548974131986627

`A023443(A138666(n+2))`
-/

namespace A067656.P651548974131986627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A138666 (n + 2)).toNat

end

end A067656.P651548974131986627

namespace A067656

/-- `A023443(A138666(n+2))` -/
def P651548974131986627.Spec : Prop :=
  ∀ n, P651548974131986627.a n = A067656 (n + 1)

end A067656

/-! ## A067656.P5356455558727704164

`lt[1, A040076(A028310(n))]`
-/

namespace A067656.P5356455558727704164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067656.P5356455558727704164

namespace A067656

/-- `lt[1, A040076(A028310(n))]` -/
def P5356455558727704164.Spec : Prop :=
  ∀ n, (P5356455558727704164.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P2955670889855188351

`A020725(lt[1, A040076(n+1)])`
-/

namespace A067656.P2955670889855188351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A067656.P2955670889855188351

namespace A067656

/-- `A020725(lt[1, A040076(n+1)])` -/
def P2955670889855188351.Spec : Prop :=
  ∀ n, P2955670889855188351.a n = A067656 (n + 1)

end A067656

/-! ## A067656.P14750807723501920211

`eq[A000007(n), A056563(n+1)]`
-/

namespace A067656.P14750807723501920211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067656.P14750807723501920211

namespace A067656

/-- `eq[A000007(n), A056563(n+1)]` -/
def P14750807723501920211.Spec : Prop :=
  ∀ n, (P14750807723501920211.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P14637315644646230120

`eq[A000038(n), A056563(n+1)]`
-/

namespace A067656.P14637315644646230120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067656.P14637315644646230120

namespace A067656

/-- `eq[A000038(n), A056563(n+1)]` -/
def P14637315644646230120.Spec : Prop :=
  ∀ n, (P14637315644646230120.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P1434639689224389977

`eq[A029832(n+1), A101808(n)]`
-/

namespace A067656.P1434639689224389977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067656.P1434639689224389977

namespace A067656

/-- `eq[A029832(n+1), A101808(n)]` -/
def P1434639689224389977.Spec : Prop :=
  ∀ n, (P1434639689224389977.a n : ℤ) = A067656 (n + 1)

end A067656

/-! ## A067656.P9593430841052778865

`eq[A049084(n+1), A101808(n)]`
-/

namespace A067656.P9593430841052778865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067656.P9593430841052778865

namespace A067656

/-- `eq[A049084(n+1), A101808(n)]` -/
def P9593430841052778865.Spec : Prop :=
  ∀ n, (P9593430841052778865.a n : ℤ) = A067656 (n + 1)

end A067656

/-!
# A067657: Prime values of A001008, the numerators of the harmonic numbers.

The programs for A067657, there is no canonical definition to state claims against.
-/

/-! ## A067657.P1640754033283102416

`A001008(A056903(n+1))`
-/

namespace A067657.P1640754033283102416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (A056903 (n + 1)).toNat

end

end A067657.P1640754033283102416

/-! ## A067657.P7936033182377740234

`record[A308970(n+2)]`
-/

namespace A067657.P7936033182377740234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308970 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067657.P7936033182377740234

/-! ## A067657.P11631579998397395489

`A175441(A056903(n+1)%A065100(n))`
-/

namespace A067657.P11631579998397395489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175441 (Int.tmod (A056903 (n + 1)) (A065100 n)).toNat

end

end A067657.P11631579998397395489

/-! ## A067657.P16136705847405487976

`or(A000007(n), A175441(A056903(n+1)))`
-/

namespace A067657.P16136705847405487976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A175441 (A056903 (n + 1)).toNat)

end

end A067657.P16136705847405487976

/-! ## A067657.P2749941600662037831

`A175441(A056903(n+1))+A000007(A008486(n))`
-/

namespace A067657.P2749941600662037831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175441 (A056903 (n + 1)).toNat + A000007 (A008486 n).toNat

end

end A067657.P2749941600662037831

/-!
# A067658: Odd integers k such that k = gcd(((k-1)/2)!+1, ((k-1)/2)^((k-1)/2)+1).

The programs for A067658, there is no canonical definition to state claims against.
-/

/-! ## A067658.P8048866062246664048

`A116892(n+2)`
-/

namespace A067658.P8048866062246664048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116892 (n + 2)

end

end A067658.P8048866062246664048

/-! ## A067658.P10423781121677646210

`p?[A116891(n+2)]`
-/

namespace A067658.P10423781121677646210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067658.P10423781121677646210

/-! ## A067658.P3266919929310754869

`record[A116891(n+3)]`
-/

namespace A067658.P3266919929310754869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067658.P3266919929310754869

/-! ## A067658.P11472438424315000476

`2*A116893(n+2)+1`
-/

namespace A067658.P11472438424315000476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116893 (n + 2) + 1

end

end A067658.P11472438424315000476

/-! ## A067658.P17227360690139332749

`A005408(A116893(n+2))`
-/

namespace A067658.P17227360690139332749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A116893 (n + 2)).toNat

end

end A067658.P17227360690139332749

/-! ## A067658.P13601028652476041606

`A000015(2*A116893(n+2))`
-/

namespace A067658.P13601028652476041606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (2 * A116893 (n + 2)).toNat

end

end A067658.P13601028652476041606

/-! ## A067658.P11653814277713091022

`A000015(lcm(2, A116893(n+2)))`
-/

namespace A067658.P11653814277713091022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (Int.lcm 2 (A116893 (n + 2)))

end

end A067658.P11653814277713091022

/-! ## A067658.P2494714578197044761

`filter[A055939(n+1), A072401(#)]`
-/

namespace A067658.P2494714578197044761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A067658.P2494714578197044761

/-! ## A067658.P2616837667705969610

`filter[A055939(n+1), A080679(#)]`
-/

namespace A067658.P2616837667705969610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080679 (f1 j).toNat = 1) n)

end

end A067658.P2616837667705969610

/-! ## A067658.P10853445929783481479

`filter[A067690(n+1), A072401(#)]`
-/

namespace A067658.P10853445929783481479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A067658.P10853445929783481479

/-!
# A067659: Number of partitions of n into distinct parts such that number of parts is odd.

The programs for A067659, there is no canonical definition to state claims against.
-/

/-! ## A067659.P11362241746346660038

`A067661(n)-A010815(n)`
-/

namespace A067659.P11362241746346660038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A010815 n

end

end A067659.P11362241746346660038

/-! ## A067659.P11388119545443328199

`(A000009(n)-A010815(n))/2`
-/

namespace A067659.P11388119545443328199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n - A010815 n : ℚ) / 2

end

end A067659.P11388119545443328199

/-! ## A067659.P4166880244165507974

`A000009(n)-A067661(n)`
-/

namespace A067659.P4166880244165507974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A067661 n

end

end A067659.P4166880244165507974

/-! ## A067659.P2706482599707130551

`A335746(n)-A186741(n)`
-/

namespace A067659.P2706482599707130551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335746 n - A186741 n

end

end A067659.P2706482599707130551

/-! ## A067659.P17254421229781297123

`abs(A081360(n))-A067661(n)`
-/

namespace A067659.P17254421229781297123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A067661 n

end

end A067659.P17254421229781297123

/-! ## A067659.P7796567864419428616

`∑[A087897(n)]-A067661(n)`
-/

namespace A067659.P7796567864419428616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A067661 n

end

end A067659.P7796567864419428616

/-! ## A067659.P8249186699212274766

`A238215(n+1)+A238208(n)`
-/

namespace A067659.P8249186699212274766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 (n + 1) + A238208 n

end

end A067659.P8249186699212274766

/-! ## A067659.P6166657784848344253

`A111133(n)+1-A067661(n)`
-/

namespace A067659.P6166657784848344253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A067661 n)

end

end A067659.P6166657784848344253

/-! ## A067659.P6835750937937432275

`A035457(2*n)-A067661(n)`
-/

namespace A067659.P6835750937937432275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A067661 n

end

end A067659.P6835750937937432275

/-! ## A067659.P1527490704893004077

`A067661(n)-A274719(2*n)`
-/

namespace A067659.P1527490704893004077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A274719 (2 * n)

end

end A067659.P1527490704893004077

/-! ## A067659.P16656000569441939388

`A067661(n)+n-A286956(n)`
-/

namespace A067659.P16656000569441939388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + ((n : ℤ) - A286956 n)

end

end A067659.P16656000569441939388

/-! ## A067659.P14361616321849163006

`A067661(n)-ratio[A057077(n)]*A121373(n)`
-/

namespace A067659.P14361616321849163006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067661 n : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A121373 n : ℚ)

end

end A067659.P14361616321849163006

/-! ## A067659.P4656285164837222034

`A096765(n+1)+A096765(n)-A067661(n)`
-/

namespace A067659.P4656285164837222034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n - A067661 n

end

end A067659.P4656285164837222034

/-! ## A067659.P16170264730884032742

`A067661(n)-A057077(2*n)*A121373(n)`
-/

namespace A067659.P16170264730884032742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - A057077 (2 * n) * A121373 n

end

end A067659.P16170264730884032742

/-! ## A067659.P16764492053692325328

`A067661(n)-A121373(n)/A057077(A005408(n))`
-/

namespace A067659.P16764492053692325328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067661 n : ℚ) - (A121373 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A067659.P16764492053692325328

/-! ## A067659.P8122870405240596498

`A067661(n)-A121373(n)/A057077(A016969(n))`
-/

namespace A067659.P8122870405240596498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067661 n : ℚ) - (A121373 n : ℚ) / (A057077 (A016969 n).toNat : ℚ)

end

end A067659.P8122870405240596498

/-! ## A067659.P1320829730012391794

`A238217(n+2)+A238209(n)`
-/

namespace A067659.P1320829730012391794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238217 (n + 2) + A238209 n

end

end A067659.P1320829730012391794

/-! ## A067659.P5712662013546065586

`A067661(n)+1-A007706(n)`
-/

namespace A067659.P5712662013546065586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + (1 - A007706 n)

end

end A067659.P5712662013546065586

/-!
# A067660: Values of gcd(k!+1,2^k+1) not equal to 1 taking k in increasing order.

The programs for A067660, there is no canonical definition to state claims against.
-/

/-! ## A067660.P18108569938248682042

`∩[A048197(n+1), A304811(n)]`
-/

namespace A067660.P18108569938248682042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304811 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067660.P18108569938248682042

/-! ## A067660.P2076253177470795910

`A278224(A034691(2*n+1))+A053755(n)`
-/

namespace A067660.P2076253177470795910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A034691 (2 * n + 1)).toNat + A053755 n

end

end A067660.P2076253177470795910

/-!
# A067661: Number of partitions of n into distinct parts such that number of parts is even.

The programs for A067661, there is no canonical definition to state claims against.
-/

/-! ## A067661.P17283786971906000789

`(A000009(n)+A010815(n))/2`
-/

namespace A067661.P17283786971906000789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n + A010815 n : ℚ) / 2

end

end A067661.P17283786971906000789

/-! ## A067661.P9189167673956196805

`A238215(n)+A238208(n+1)`
-/

namespace A067661.P9189167673956196805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 n + A238208 (n + 1)

end

end A067661.P9189167673956196805

/-! ## A067661.P1903183089886259386

`A067659(n)+A010815(n)`
-/

namespace A067661.P1903183089886259386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + A010815 n

end

end A067661.P1903183089886259386

/-! ## A067661.P11107734946139234164

`A000009(n)-A067659(n)`
-/

namespace A067661.P11107734946139234164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A067659 n

end

end A067661.P11107734946139234164

/-! ## A067661.P14942172106040266348

`abs(A081360(n))-A067659(n)`
-/

namespace A067661.P14942172106040266348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A067659 n

end

end A067661.P14942172106040266348

/-! ## A067661.P5910806934580683770

`A067659(n)+ratio[A057077(n)]*A121373(n)`
-/

namespace A067661.P5910806934580683770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067659 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A121373 n : ℚ)

end

end A067661.P5910806934580683770

/-! ## A067661.P17635959984888316841

`A096765(n+1)+A096765(n)-A067659(n)`
-/

namespace A067661.P17635959984888316841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n - A067659 n

end

end A067661.P17635959984888316841

/-! ## A067661.P14180756043075584830

`A067659(n)+A057077(2*n)*A121373(n)`
-/

namespace A067661.P14180756043075584830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + A057077 (2 * n) * A121373 n

end

end A067661.P14180756043075584830

/-! ## A067661.P48872859136789173

`A067659(n)+A121373(n)/A057077(A005408(n))`
-/

namespace A067661.P48872859136789173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067659 n : ℚ) + (A121373 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A067661.P48872859136789173

/-! ## A067661.P14008509218853550390

`A067659(n)+A008683(A006093(n+1)+1)^n*A121373(n)`
-/

namespace A067661.P14008509218853550390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + A008683 (A006093 (n + 1) + 1).toNat ^ n * A121373 n

end

end A067661.P14008509218853550390

/-! ## A067661.P8024882116435279943

`A067659(n)+A121373(n)/A057077(A016969(n))`
-/

namespace A067661.P8024882116435279943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067659 n : ℚ) + (A121373 n : ℚ) / (A057077 (A016969 n).toNat : ℚ)

end

end A067661.P8024882116435279943

/-! ## A067661.P16344411988178330912

`A238217(n)+A238209(n+2)`
-/

namespace A067661.P16344411988178330912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238217 n + A238209 (n + 2)

end

end A067661.P16344411988178330912

/-! ## A067661.P17539845471363327051

`A007706(n)+A067659(n)-1`
-/

namespace A067661.P17539845471363327051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 n + (A067659 n - 1)

end

end A067661.P17539845471363327051

/-!
# A067662: Numbers n such that n^2 + 1 and n^4 + 1 are primes.

The programs for A067662, the canonical program `A067662.P12223604919515675796` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067662 has offset 1).

The definition of A067662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067662.P12223604919515675796

`∩[A000068(n+1), A005574(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A067662

/-- `∩[A000068(n+1), A005574(n+1)]` -/
def P12223604919515675796.Spec : Prop :=
  ∀ n, (P12223604919515675796.a n : ℤ) = A067662 (n + 1)

theorem P12223604919515675796.correct : P12223604919515675796.Spec := by
  intro n
  simp only [A067662, Nat.add_sub_cancel]

end A067662

/-! ## A067662.P11203324420516219374

`filter[A000068(n+1), A295405(#)]`
-/

namespace A067662.P11203324420516219374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A067662.P11203324420516219374

namespace A067662

/-- `filter[A000068(n+1), A295405(#)]` -/
def P11203324420516219374.Spec : Prop :=
  ∀ n, P11203324420516219374.a n = A067662 (n + 1)

end A067662

/-! ## A067662.P6613024102090573923

`∩[A000068(n+1), A181436(n+1)]`
-/

namespace A067662.P6613024102090573923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067662.P6613024102090573923

namespace A067662

/-- `∩[A000068(n+1), A181436(n+1)]` -/
def P6613024102090573923.Spec : Prop :=
  ∀ n, (P6613024102090573923.a n : ℤ) = A067662 (n + 1)

end A067662

/-! ## A067662.P16848345300111826879

`record[A247339(A000068(n+1))]`
-/

namespace A067662.P16848345300111826879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A000068 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067662.P16848345300111826879

namespace A067662

/-- `record[A247339(A000068(n+1))]` -/
def P16848345300111826879.Spec : Prop :=
  ∀ n, P16848345300111826879.a n = A067662 (n + 1)

end A067662

/-! ## A067662.P5506117015390973196

`eq[2, A193929(n)+A193330(n)]`
-/

namespace A067662.P5506117015390973196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n + A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067662.P5506117015390973196

namespace A067662

/-- `eq[2, A193929(n)+A193330(n)]` -/
def P5506117015390973196.Spec : Prop :=
  ∀ n, (P5506117015390973196.a n : ℤ) = A067662 (n + 1)

end A067662

/-! ## A067662.P3636604686384591827

`eq[1, A053000(n)*A193929(n)]`
-/

namespace A067662.P3636604686384591827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n * A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067662.P3636604686384591827

namespace A067662

/-- `eq[1, A053000(n)*A193929(n)]` -/
def P3636604686384591827.Spec : Prop :=
  ∀ n, (P3636604686384591827.a n : ℤ) = A067662 (n + 1)

end A067662

/-! ## A067662.P7517128753545774799

`eq[3, A193929(n)+A193432(n)]`
-/

namespace A067662.P7517128753545774799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n + A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067662.P7517128753545774799

namespace A067662

/-- `eq[3, A193929(n)+A193432(n)]` -/
def P7517128753545774799.Spec : Prop :=
  ∀ n, (P7517128753545774799.a n : ℤ) = A067662 (n + 1)

end A067662

/-! ## A067662.P9428265888025921679

`eq[1, A193929(n)*A284376(n)]`
-/

namespace A067662.P9428265888025921679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n * A284376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067662.P9428265888025921679

namespace A067662

/-- `eq[1, A193929(n)*A284376(n)]` -/
def P9428265888025921679.Spec : Prop :=
  ∀ n, (P9428265888025921679.a n : ℤ) = A067662 (n + 1)

end A067662

/-! ## A067662.P2422861091462685518

`eq[2, A193330(n)*A193562(n)]`
-/

namespace A067662.P2422861091462685518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n * A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067662.P2422861091462685518

namespace A067662

/-- `eq[2, A193330(n)*A193562(n)]` -/
def P2422861091462685518.Spec : Prop :=
  ∀ n, (P2422861091462685518.a n : ℤ) = A067662 (n + 1)

end A067662

/-! ## A067662.P16355304470458251260

`record[A247339(n+1)/A270927(n+1)]`
-/

namespace A067662.P16355304470458251260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247339 (n + 1) : ℚ) / (A270927 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067662.P16355304470458251260

namespace A067662

/-- `record[A247339(n+1)/A270927(n+1)]` -/
def P16355304470458251260.Spec : Prop :=
  ∀ n, P16355304470458251260.a n = (A067662 (n + 1) : ℚ)

end A067662

/-! ## A067662.P1954594010162298530

`record[root(A247339(n+1), A193929(n+1))]`
-/

namespace A067662.P1954594010162298530
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247339 (n + 1) : ℝ) ^ (1 / (A193929 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067662.P1954594010162298530

namespace A067662

/-- `record[root(A247339(n+1), A193929(n+1))]` -/
def P1954594010162298530.Spec : Prop :=
  ∀ n, P1954594010162298530.a n = (A067662 (n + 1) : ℝ)

end A067662

/-! ## A067662.P10262392899086437711

`eq[A000040(A053000(n)), A193562(n)]`
-/

namespace A067662.P10262392899086437711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A053000 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067662.P10262392899086437711

namespace A067662

/-- `eq[A000040(A053000(n)), A193562(n)]` -/
def P10262392899086437711.Spec : Prop :=
  ∀ n, (P10262392899086437711.a n : ℤ) = A067662 (n + 1)

end A067662

/-! ## A067662.P12336534421863158395

`eq[A121979(A053000(n)), A193929(n)]`
-/

namespace A067662.P12336534421863158395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121979 (A053000 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067662.P12336534421863158395

namespace A067662

/-- `eq[A121979(A053000(n)), A193929(n)]` -/
def P12336534421863158395.Spec : Prop :=
  ∀ n, (P12336534421863158395.a n : ℤ) = A067662 (n + 1)

end A067662

/-! ## A067662.P5567017711767875350

`eq[A004467(A284376(n)), A193929(n)]`
-/

namespace A067662.P5567017711767875350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004467 (A284376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067662.P5567017711767875350

namespace A067662

/-- `eq[A004467(A284376(n)), A193929(n)]` -/
def P5567017711767875350.Spec : Prop :=
  ∀ n, (P5567017711767875350.a n : ℤ) = A067662 (n + 1)

end A067662

/-!
# A067663: Sequence gives values of gcd(k!+1, k^k-1) when not equal to 1 in order of appearance.

The programs for A067663, there is no canonical definition to state claims against.
-/

/-! ## A067663.P14765946715758758776

`p?[A269098(record[A269065(n+1)])]`
-/

namespace A067663.P14765946715758758776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269098 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067663.P14765946715758758776

/-! ## A067663.P8727382146523003127

`p?[A049777(A080036(n))*A053119(n)]`
-/

namespace A067663.P8727382146523003127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (A080036 n).toNat * A053119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067663.P8727382146523003127

/-! ## A067663.P16301836621725523139

`p?[A343442(n+1)-A000005(A007955(n+1))]`
-/

namespace A067663.P16301836621725523139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343442 (n + 1) - A000005 (A007955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067663.P16301836621725523139

/-!
# A067664: Numbers n such that n^2 + 1 and n^2 + n + 1 are primes.

The programs for A067664, there is no canonical definition to state claims against.
-/

/-! ## A067664.P16975516586050914755

`filter[A002384(n+1), A295405(#)]`
-/

namespace A067664.P16975516586050914755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A067664.P16975516586050914755

/-! ## A067664.P1391525134712692830

`∩[A002384(n+1), A005574(n+1)]`
-/

namespace A067664.P1391525134712692830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067664.P1391525134712692830

/-! ## A067664.P17983417946763620178

`∩[2*A001912(n+1)-A214516(n+1), A055494(n+1)-1]`
-/

namespace A067664.P17983417946763620178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1) - A214516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067664.P17983417946763620178

/-! ## A067664.P16432432888795576191

`record[A247339(A002384(n+1))]`
-/

namespace A067664.P16432432888795576191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A002384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067664.P16432432888795576191

/-! ## A067664.P12058672640807654651

`record[A247339(A055494(n+1)-1)]`
-/

namespace A067664.P12058672640807654651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A055494 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067664.P12058672640807654651

/-! ## A067664.P16189073591730636979

`record[A247339(A089358(n+1)-2)]`
-/

namespace A067664.P16189073591730636979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A089358 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067664.P16189073591730636979

/-! ## A067664.P12405326209708934417

`record[A247339(xor(1, A055494(n+1)))]`
-/

namespace A067664.P12405326209708934417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (Int.xor 1 (A055494 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067664.P12405326209708934417

/-! ## A067664.P13662006294856481889

`record[A247339(floor(A088503(n+1)/2))]`
-/

namespace A067664.P13662006294856481889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 ⌊(A088503 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067664.P13662006294856481889

/-! ## A067664.P13788115136655298684

`record[A247339((sqrt(A110284(n+1))-1)/2)]`
-/

namespace A067664.P13788115136655298684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (SequenceMachineLib.roundAway ((Real.sqrt (A110284 (n + 1) : ℝ) - 1) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067664.P13788115136655298684

/-! ## A067664.P14807696249315115861

`record[A081256(A090693(n+1))-A002496(n+1)]`
-/

namespace A067664.P14807696249315115861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A090693 (n + 1)).toNat - A002496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067664.P14807696249315115861

/-! ## A067664.P12597073987803841033

`record[A247339(A088503(n+1)%A055494(n+1))]`
-/

namespace A067664.P12597073987803841033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (Int.tmod (A088503 (n + 1)) (A055494 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067664.P12597073987803841033

/-!
# A067665: The start of a record-setting run of consecutive integers i with distinct A001222(i).

The programs for A067665, there is no canonical definition to state claims against.
-/

/-! ## A067665.P9474944726921459307

`A068797(n+2)`
-/

namespace A067665.P9474944726921459307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068797 (n + 2)

end

end A067665.P9474944726921459307

/-! ## A067665.P14291312681254383809

`A052410(A068797(comp[n^4]))`
-/

namespace A067665.P14291312681254383809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A068797 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A067665.P14291312681254383809

/-!
# A067666: Sum of squares of prime factors of n (counted with multiplicity).

The programs for A067666, the canonical program `A067666.P12370419235795502873` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067666 has offset 1).

The definition of A067666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067666.P12370419235795502873

`∑{p}[n+1, #²*val(n+1, #)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067666

/-- `∑{p}[n+1, #²*val(n+1, #)]` -/
def P12370419235795502873.Spec : Prop :=
  ∀ n, (P12370419235795502873.a n : ℤ) = A067666 (n + 1)

theorem P12370419235795502873.correct : P12370419235795502873.Spec := by
  intro n
  simp only [A067666, Nat.add_sub_cancel]

end A067666

/-! ## A067666.P16645053306466705596

`∑{p}[n+1, #*#*val(n+1, #)]`
-/

namespace A067666.P16645053306466705596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p * (p * SequenceMachineLib.valuation (n + 1) p)

end

end A067666.P16645053306466705596

namespace A067666

/-- `∑{p}[n+1, #*#*val(n+1, #)]` -/
def P16645053306466705596.Spec : Prop :=
  ∀ n, (P16645053306466705596.a n : ℤ) = A067666 (n + 1)

theorem P16645053306466705596.correct : P16645053306466705596.Spec := by
  intro n
  simp only [A067666, Nat.add_sub_cancel, A067666.P16645053306466705596.f1, A067666.P16645053306466705596.a, A067666.P12370419235795502873.f1, A067666.P12370419235795502873.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067666

/-! ## A067666.P11031991263463624531

`∑{d}[n+1, A120007(#)²]`
-/

namespace A067666.P11031991263463624531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120007 d ^ 2

end

end A067666.P11031991263463624531

namespace A067666

/-- `∑{d}[n+1, A120007(#)²]` -/
def P11031991263463624531.Spec : Prop :=
  ∀ n, P11031991263463624531.a n = A067666 (n + 1)

end A067666

/-! ## A067666.P17088684056115518635

`∑{d}[n+1, A183098(A014963(#))²]`
-/

namespace A067666.P17088684056115518635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A183098 (A014963 d).toNat ^ 2

end

end A067666.P17088684056115518635

namespace A067666

/-- `∑{d}[n+1, A183098(A014963(#))²]` -/
def P17088684056115518635.Spec : Prop :=
  ∀ n, P17088684056115518635.a n = A067666 (n + 1)

end A067666

/-! ## A067666.P15079751072138231459

`2*A341885(n+1)-A001414(n+1)`
-/

namespace A067666.P15079751072138231459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341885 (n + 1) - A001414 (n + 1)

end

end A067666.P15079751072138231459

namespace A067666

/-- `2*A341885(n+1)-A001414(n+1)` -/
def P15079751072138231459.Spec : Prop :=
  ∀ n, P15079751072138231459.a n = A067666 (n + 1)

end A067666

/-! ## A067666.P11557325447395021111

`∑{d}[A087156(n+1), A087156(A014963(#))²]`
-/

namespace A067666.P11557325447395021111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A087156 (A014963 d).toNat ^ 2

end

end A067666.P11557325447395021111

namespace A067666

/-- `∑{d}[A087156(n+1), A087156(A014963(#))²]` -/
def P11557325447395021111.Spec : Prop :=
  ∀ n, P11557325447395021111.a n = A067666 (n + 1)

end A067666

/-! ## A067666.P11882042670783870112

`A289506(A064988(n+1))`
-/

namespace A067666.P11882042670783870112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A064988 (n + 1)).toNat

end

end A067666.P11882042670783870112

namespace A067666

/-- `A289506(A064988(n+1))` -/
def P11882042670783870112.Spec : Prop :=
  ∀ n, P11882042670783870112.a n = A067666 (n + 1)

end A067666

/-! ## A067666.P2980390126530869363

`∑{d}[n+1, A318320(A014963(#)²)²]`
-/

namespace A067666.P2980390126530869363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318320 (A014963 d ^ 2).toNat ^ 2

end

end A067666.P2980390126530869363

namespace A067666

/-- `∑{d}[n+1, A318320(A014963(#)²)²]` -/
def P2980390126530869363.Spec : Prop :=
  ∀ n, P2980390126530869363.a n = A067666 (n + 1)

end A067666

/-! ## A067666.P10065190453278590223

`A005843(A341885(n+1))-A001414(n+1)`
-/

namespace A067666.P10065190453278590223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A341885 (n + 1)).toNat - A001414 (n + 1)

end

end A067666.P10065190453278590223

namespace A067666

/-- `A005843(A341885(n+1))-A001414(n+1)` -/
def P10065190453278590223.Spec : Prop :=
  ∀ n, P10065190453278590223.a n = A067666 (n + 1)

end A067666

/-! ## A067666.P13609539882504948572

`∑{d}[n+1, A051953(A014963(#)²)²]`
-/

namespace A067666.P13609539882504948572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 (A014963 d ^ 2).toNat ^ 2

end

end A067666.P13609539882504948572

namespace A067666

/-- `∑{d}[n+1, A051953(A014963(#)²)²]` -/
def P13609539882504948572.Spec : Prop :=
  ∀ n, P13609539882504948572.a n = A067666 (n + 1)

end A067666

/-! ## A067666.P2221170292401537372

`A341885((n+1)²)-A001414(n+1)`
-/

namespace A067666.P2221170292401537372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341885 ((n + 1) ^ 2) - A001414 (n + 1)

end

end A067666.P2221170292401537372

namespace A067666

/-- `A341885((n+1)²)-A001414(n+1)` -/
def P2221170292401537372.Spec : Prop :=
  ∀ n, P2221170292401537372.a n = A067666 (n + 1)

end A067666

/-!
# A067667: a(n) = (2^n)!/2^(2^n-1).

The programs for A067667, the canonical program `A067667.P17747516719831646261` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067667 has offset 0).

The definition of A067667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067667.P17747516719831646261

`(2^n)!/2^(2^n-1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067667

/-- `(2^n)!/2^(2^n-1)` -/
def P17747516719831646261.Spec : Prop :=
  ∀ n, P17747516719831646261.a n = (A067667 n : ℚ)

end A067667

/-! ## A067667.P5193568383946471707

`C(2^n-1, 2^(n-1)-1)*a(n-1)²` with `a(0)=1`
-/

namespace A067667.P5193568383946471707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((2 ^ n : ℤ) - 1).toNat (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)).toNat * a (n - 1) ^ 2

end

end A067667.P5193568383946471707

namespace A067667

/-- `C(2^n-1, 2^(n-1)-1)*a(n-1)²` -/
def P5193568383946471707.Spec : Prop :=
  ∀ n, (P5193568383946471707.a n : ℤ) = A067667 n

end A067667

/-! ## A067667.P13213627802340601321

`A049606(2^n)`
-/

namespace A067667.P13213627802340601321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 (2 ^ n)

end

end A067667.P13213627802340601321

namespace A067667

/-- `A049606(2^n)` -/
def P13213627802340601321.Spec : Prop :=
  ∀ n, P13213627802340601321.a n = A067667 n

end A067667

/-!
# A067672: Numbers k such that floor((3/2)^(k+2))/floor((3/2)^k) = (3/2)^2.

The programs for A067672, the canonical program `A067672.P58353765302069128` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067672 has offset 1).

The definition of A067672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067672.P5804027857178455959

`∩[A065554(n+1)-1, A065554(n+1)]`
-/

namespace A067672.P5804027857178455959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067672.P5804027857178455959

namespace A067672

/-- `∩[A065554(n+1)-1, A065554(n+1)]` -/
def P5804027857178455959.Spec : Prop :=
  ∀ n, (P5804027857178455959.a n : ℤ) = A067672 (n + 1)

end A067672

/-! ## A067672.P58353765302069128

`A065554(eq[1, A065554(n+2)-A065554(n+1)]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067672

/-- `A065554(eq[1, A065554(n+2)-A065554(n+1)]+1)` -/
def P58353765302069128.Spec : Prop :=
  ∀ n, P58353765302069128.a n = A067672 (n + 1)

theorem P58353765302069128.correct : P58353765302069128.Spec := by
  intro n
  simp only [A067672, Nat.add_sub_cancel]

end A067672

/-! ## A067672.P6409573177661954120

`∩[A065554(n+1), A023443(A065554(n+1))]`
-/

namespace A067672.P6409573177661954120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065554 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067672.P6409573177661954120

namespace A067672

/-- `∩[A065554(n+1), A023443(A065554(n+1))]` -/
def P6409573177661954120.Spec : Prop :=
  ∀ n, (P6409573177661954120.a n : ℤ) = A067672 (n + 1)

end A067672

/-! ## A067672.P6618018147166737904

`eq[9, dr(A170827(n+2))]`
-/

namespace A067672.P6618018147166737904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A170827 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067672.P6618018147166737904

namespace A067672

/-- `eq[9, dr(A170827(n+2))]` -/
def P6618018147166737904.Spec : Prop :=
  ∀ n, (P6618018147166737904.a n : ℤ) = A067672 (n + 1)

end A067672

/-! ## A067672.P4301350025083080537

`∩[A065554(n+1), A233583(A065554(n+3))]`
-/

namespace A067672.P4301350025083080537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A065554 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067672.P4301350025083080537

namespace A067672

/-- `∩[A065554(n+1), A233583(A065554(n+3))]` -/
def P4301350025083080537.Spec : Prop :=
  ∀ n, (P4301350025083080537.a n : ℤ) = A067672 (n + 1)

end A067672

/-!
# A067673: Numbers k such that floor((3/2)^(k+3))/floor((3/2)^k) = (3/2)^3.

The programs for A067673, the canonical program `A067673.P1166334490651037384` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067673 has offset 1).

The definition of A067673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067673.P1166334490651037384

`∩[A067672(n+1)-1, A067672(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A067673

/-- `∩[A067672(n+1)-1, A067672(n+1)]` -/
def P1166334490651037384.Spec : Prop :=
  ∀ n, (P1166334490651037384.a n : ℤ) = A067673 (n + 1)

theorem P1166334490651037384.correct : P1166334490651037384.Spec := by
  intro n
  simp only [A067673, Nat.add_sub_cancel]

end A067673

/-! ## A067673.P14067483336366816748

`∩[A067672(n+1), A233583(A067672(n+1))]`
-/

namespace A067673.P14067483336366816748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A067672 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067673.P14067483336366816748

namespace A067673

/-- `∩[A067672(n+1), A233583(A067672(n+1))]` -/
def P14067483336366816748.Spec : Prop :=
  ∀ n, (P14067483336366816748.a n : ℤ) = A067673 (n + 1)

end A067673

/-!
# A067674: Numbers k such that floor((3/2)^(k+4))/floor((3/2)^k)=(3/2)^4.

The programs for A067674, the canonical program `A067674.P2174303709818007905` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067674 has offset 1).

The definition of A067674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067674.P2174303709818007905

`∩[A067673(n+1)-1, A067673(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067674

/-- `∩[A067673(n+1)-1, A067673(n+1)]` -/
def P2174303709818007905.Spec : Prop :=
  ∀ n, (P2174303709818007905.a n : ℤ) = A067674 (n + 1)

theorem P2174303709818007905.correct : P2174303709818007905.Spec := by
  intro n
  simp only [A067674, Nat.add_sub_cancel]

end A067674

/-! ## A067674.P17740423756664596752

`∩[A067672(n+1)-2, A067672(n+1)]`
-/

namespace A067674.P17740423756664596752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067672 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067674.P17740423756664596752

namespace A067674

/-- `∩[A067672(n+1)-2, A067672(n+1)]` -/
def P17740423756664596752.Spec : Prop :=
  ∀ n, (P17740423756664596752.a n : ℤ) = A067674 (n + 1)

end A067674

/-!
# A067675: Number of fixed convex polyominoes with n cells.

The programs for A067675, there is no canonical definition to state claims against.
-/

/-! ## A067675.P2440235764290934303

`A001815(n)^A174119(n)!+∑[n]+1`
-/

namespace A067675.P2440235764290934303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n ^ Nat.factorial (A174119 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A067675.P2440235764290934303

/-! ## A067675.P12086471324776388136

`A001815(A004890(n+1))+A000124(n)`
-/

namespace A067675.P12086471324776388136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 (A004890 (n + 1)).toNat + A000124 n

end

end A067675.P12086471324776388136

/-! ## A067675.P11935740048896551228

`A001815(A228050(n+1))+A000124(n)`
-/

namespace A067675.P11935740048896551228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 (A228050 (n + 1)).toNat + A000124 n

end

end A067675.P11935740048896551228

/-!
# A067676: Number of fixed directed convex polyominoes with n cells.

The programs for A067676, there is no canonical definition to state claims against.
-/

/-! ## A067676.P10535986567899856660

`A212624(A011782(n))+A004526(A078057(n))`
-/

namespace A067676.P10535986567899856660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212624 (A011782 n).toNat + A004526 (A078057 n).toNat

end

end A067676.P10535986567899856660

/-! ## A067676.P11399252478458525770

`A032539(A150232(n+1))`
-/

namespace A067676.P11399252478458525770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A150232 (n + 1)).toNat

end

end A067676.P11399252478458525770

/-! ## A067676.P16731499421529324436

`A032539(A150233(n+1))`
-/

namespace A067676.P16731499421529324436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A150233 (n + 1)).toNat

end

end A067676.P16731499421529324436

/-!
# A067677: Diagonals of the prime-composite array, B(m,n) which are zeros from the Second Borve Conjecture.

The programs for A067677, there is no canonical definition to state claims against.
-/

/-! ## A067677.P6188935207120342583

`A026238(A063175(n+1))`
-/

namespace A067677.P6188935207120342583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A063175 (n + 1)).toNat

end

end A067677.P6188935207120342583

/-! ## A067677.P14682562177455668581

`A026233(A063175(n+1)-1)`
-/

namespace A067677.P14682562177455668581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A063175 (n + 1) - 1).toNat

end

end A067677.P14682562177455668581

/-! ## A067677.P8448360981702503492

`A062298(A063175(n+1)-1)`
-/

namespace A067677.P8448360981702503492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A063175 (n + 1) - 1).toNat

end

end A067677.P8448360981702503492

/-! ## A067677.P8483895456513774517

`A066246(or(1, A063175(n+1)))`
-/

namespace A067677.P8483895456513774517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (Int.lor 1 (A063175 (n + 1))).toNat

end

end A067677.P8483895456513774517

/-! ## A067677.P1778361022408691247

`A026233(xor(1, A063175(n+1)))`
-/

namespace A067677.P1778361022408691247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (Int.xor 1 (A063175 (n + 1))).toNat

end

end A067677.P1778361022408691247

/-!
# A067680: Numbers k such that sigma(2k + 2) = 4k.

The programs for A067680, there is no canonical definition to state claims against.
-/

/-! ## A067680.P12420967615645360878

`A125246(n+2)/2-1`
-/

namespace A067680.P12420967615645360878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125246 (n + 2) : ℚ) / 2 - 1

end

end A067680.P12420967615645360878

/-! ## A067680.P13987862003750665635

`floor((A125246(comp[A054370(n)])-1)/2)`
-/

namespace A067680.P13987862003750665635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054370 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A125246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1 : ℚ) / 2⌋

end

end A067680.P13987862003750665635

/-! ## A067680.P3280782263002029225

`A014682(A125246(n+2))-1`
-/

namespace A067680.P3280782263002029225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A125246 (n + 2)).toNat - 1

end

end A067680.P3280782263002029225

/-! ## A067680.P903184727386074416

`A332893(A125246(n+2)-2)`
-/

namespace A067680.P903184727386074416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A125246 (n + 2) - 2).toNat

end

end A067680.P903184727386074416

/-!
# A067681: Diagonals and antidiagonals of the prime-composite array, B(m,n) which are zeros from the Third Borve Conjecture.

The programs for A067681, there is no canonical definition to state claims against.
-/

/-! ## A067681.P9581007573972561342

`∩[A014617(n+1), A067677(n+1)]`
-/

namespace A067681.P9581007573972561342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067681.P9581007573972561342

/-! ## A067681.P15838696345871022706

`A026238(A063176(n+1))`
-/

namespace A067681.P15838696345871022706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A063176 (n + 1)).toNat

end

end A067681.P15838696345871022706

/-! ## A067681.P7679368439421255732

`A026233(A063176(n+1)-1)`
-/

namespace A067681.P7679368439421255732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A063176 (n + 1) - 1).toNat

end

end A067681.P7679368439421255732

/-! ## A067681.P4516309494605194607

`A062298(A063176(n+1)-1)`
-/

namespace A067681.P4516309494605194607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A063176 (n + 1) - 1).toNat

end

end A067681.P4516309494605194607

/-! ## A067681.P19032486438193150

`A066246(lcm(3, A063176(n+1)))`
-/

namespace A067681.P19032486438193150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (Int.lcm 3 (A063176 (n + 1)))

end

end A067681.P19032486438193150

/-! ## A067681.P14443317386724628824

`A066246(or(1, A063176(n+1)))`
-/

namespace A067681.P14443317386724628824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (Int.lor 1 (A063176 (n + 1))).toNat

end

end A067681.P14443317386724628824

/-!
# A067682: Floor((11/10)^n) is prime.

The programs for A067682, there is no canonical definition to state claims against.
-/

/-! ## A067682.P17961222956800179848

`eq[1, A001222(A091946(n))]`
-/

namespace A067682.P17961222956800179848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A091946 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067682.P17961222956800179848

/-! ## A067682.P9610215631275189758

`lt[A000007(n), A010051(A091946(n))]`
-/

namespace A067682.P9610215631275189758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A091946 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067682.P9610215631275189758

/-! ## A067682.P5150040420295556035

`eq[A057427(2*(n+2)), A319685(A091946(n))]`
-/

namespace A067682.P5150040420295556035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319685 (A091946 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067682.P5150040420295556035

/-! ## A067682.P3677744859686964633

`eq[A006519(2*n+1), A323902(A091946(n))]`
-/

namespace A067682.P3677744859686964633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (A091946 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067682.P3677744859686964633

/-! ## A067682.P6539968798710416081

`eq[2, A005361(A091946(n)²)]`
-/

namespace A067682.P6539968798710416081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A091946 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067682.P6539968798710416081

/-!
# A067683: Numbers k such that phi(k)*sigma(k) + 1 is prime.

The programs for A067683, there is no canonical definition to state claims against.
-/

/-! ## A067683.P12763795115249800163

`eq[1, A001222(A062354(n+1)+1)]+1`
-/

namespace A067683.P12763795115249800163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062354 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067683.P12763795115249800163

/-! ## A067683.P14107451605064292003

`eq[2, A000005(A062354(n+1)+1)]+1`
-/

namespace A067683.P14107451605064292003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062354 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067683.P14107451605064292003

/-! ## A067683.P17040805262681033552

`eq[1, A001222(A000010(n+1)*∑{d}[n+1, #]+1)]+1`
-/

namespace A067683.P17040805262681033552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) * ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067683.P17040805262681033552

/-! ## A067683.P274504862287998220

`eq[A062354(n+1)+1, A020639(A062354(n+1)+1)]+1`
-/

namespace A067683.P274504862287998220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062354 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067683.P274504862287998220

/-! ## A067683.P6342683491245373917

`lt[n+1, A020639(A000203(n+1)*A000010(n+1)+1)]+1`
-/

namespace A067683.P6342683491245373917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (n + 1) * A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067683.P6342683491245373917

/-! ## A067683.P12063650382342555604

`lt[n, A057237(A000203(n+1)*A000010(n+1)+1)]+1`
-/

namespace A067683.P12063650382342555604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A000203 (n + 1) * A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067683.P12063650382342555604

/-!
# A067684: Numbers n such that sigma(2n+1)=3n.

The programs for A067684, there is no canonical definition to state claims against.
-/

/-! ## A067684.P8155205769645602447

`2*A067685(n+1)`
-/

namespace A067684.P8155205769645602447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067685 (n + 1)

end

end A067684.P8155205769645602447

/-! ## A067684.P754382947105092667

`(A395060(n+1)-1)/2`
-/

namespace A067684.P754382947105092667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395060 (n + 1) - 1 : ℚ) / 2

end

end A067684.P754382947105092667

/-! ## A067684.P9602551943927834226

`A067685(C(n+1, n))+A067685(n+1)`
-/

namespace A067684.P9602551943927834226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067685 (Nat.choose (n + 1) n) + A067685 (n + 1)

end

end A067684.P9602551943927834226

/-! ## A067684.P9376260670095040738

`A067685(n+1)+A067685(Δ[n²]-n)`
-/

namespace A067684.P9376260670095040738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067685 (n + 1) + A067685 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A067684.P9376260670095040738

/-! ## A067684.P9176222934736195491

`A067685(n+1)+A067685(n+1)%A067714(n)`
-/

namespace A067684.P9176222934736195491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067685 (n + 1) + Int.tmod (A067685 (n + 1)) (A067714 n)

end

end A067684.P9176222934736195491

/-!
# A067685: Numbers n such that sigma(4n+1)=6n.

The programs for A067685, there is no canonical definition to state claims against.
-/

/-! ## A067685.P10719672143371407264

`A067684(n+1)/2`
-/

namespace A067685.P10719672143371407264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067684 (n + 1) : ℚ) / 2

end

end A067685.P10719672143371407264

/-! ## A067685.P14089543482188101983

`(A395060(n+1)-1)/4`
-/

namespace A067685.P14089543482188101983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395060 (n + 1) - 1 : ℚ) / 4

end

end A067685.P14089543482188101983

/-! ## A067685.P7753971556407679147

`eq[A000203(4*n+1)-n, 5*n]`
-/

namespace A067685.P7753971556407679147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (4 * n + 1) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A067685.P7753971556407679147

/-! ## A067685.P8024662829040215052

`eq[6*n, A000203(2*n+2*n+1)]`
-/

namespace A067685.P8024662829040215052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067685.P8024662829040215052

/-!
# A067686: a(n) = a(n-1) * a(n-1) - B * a(n-1) + B, a(0) = 1 + B for B = 7.

The programs for A067686, the canonical program `A067686.P4909967033697860206` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067686 has offset 0).

The definition of A067686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067686.P4909967033697860206

`a(n-1)*(a(n-1)-7)+7` with `a(0)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067686

/-- `a(n-1)*(a(n-1)-7)+7` -/
def P4909967033697860206.Spec : Prop :=
  ∀ n, P4909967033697860206.a n = A067686 n

theorem P4909967033697860206.correct : P4909967033697860206.Spec := by
  intro n
  simp only [A067686]

end A067686

/-! ## A067686.P10613402878730059339

`7-(7-a(n-1))*a(n-1)` with `a(0)=8`
-/

namespace A067686.P10613402878730059339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  7 - (7 - a (n - 1)) * a (n - 1)

end

end A067686.P10613402878730059339

namespace A067686

/-- `7-(7-a(n-1))*a(n-1)` -/
def P10613402878730059339.Spec : Prop :=
  ∀ n, P10613402878730059339.a n = A067686 n

theorem P10613402878730059339.correct : P10613402878730059339.Spec := by
  intro n
  simp only [A067686, Nat.add_sub_cancel, A067686.P10613402878730059339.a, A067686.P4909967033697860206.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067686

/-! ## A067686.P8822823498348007558

`(3-a(n-1))²-(a(n-1)+2)` with `a(0)=8`
-/

namespace A067686.P8822823498348007558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  (3 - a (n - 1)) ^ 2 - (a (n - 1) + 2)

end

end A067686.P8822823498348007558

namespace A067686

/-- `(3-a(n-1))²-(a(n-1)+2)` -/
def P8822823498348007558.Spec : Prop :=
  ∀ n, P8822823498348007558.a n = A067686 n

theorem P8822823498348007558.correct : P8822823498348007558.Spec := by
  intro n
  simp only [A067686, Nat.add_sub_cancel, A067686.P8822823498348007558.a, A067686.P4909967033697860206.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067686

/-! ## A067686.P7619767201355034817

`(3-a(n-1))²-2-a(n-1)` with `a(0)=8`
-/

namespace A067686.P7619767201355034817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  (3 - a (n - 1)) ^ 2 - 2 - a (n - 1)

end

end A067686.P7619767201355034817

namespace A067686

/-- `(3-a(n-1))²-2-a(n-1)` -/
def P7619767201355034817.Spec : Prop :=
  ∀ n, P7619767201355034817.a n = A067686 n

theorem P7619767201355034817.correct : P7619767201355034817.Spec := by
  intro n
  simp only [A067686, Nat.add_sub_cancel, A067686.P7619767201355034817.a, A067686.P4909967033697860206.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067686

/-!
# A067687: Expansion of 1/( 1 - x / Product_{n>=1} (1-x^n) ).

The programs for A067687, there is no canonical definition to state claims against.
-/

/-! ## A067687.P11191433613602144656

`A343234(∑[n])`
-/

namespace A067687.P11191433613602144656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343234 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067687.P11191433613602144656

/-! ## A067687.P16641965004365740442

`lcm((-1)^n, A343234(A000217(n)))`
-/

namespace A067687.P16641965004365740442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A343234 (A000217 n).toNat)

end

end A067687.P16641965004365740442

/-! ## A067687.P12000294964165143068

`A343234(A000217(n))+char[A017012(n)]`
-/

namespace A067687.P12000294964165143068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017012 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343234 (A000217 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A067687.P12000294964165143068

/-! ## A067687.P1301375854298461987

`A343234(A000217(n))+A000007(n+2)`
-/

namespace A067687.P1301375854298461987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343234 (A000217 n).toNat + A000007 (n + 2)

end

end A067687.P1301375854298461987

/-! ## A067687.P14278102843193514734

`A001221(A000040(n+1))*A343234(A000217(n))`
-/

namespace A067687.P14278102843193514734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1)).toNat * A343234 (A000217 n).toNat

end

end A067687.P14278102843193514734

/-! ## A067687.P16871351220164359399

`A115722(A124010(n+3))*A343234(A000217(n))`
-/

namespace A067687.P16871351220164359399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A124010 (n + 3)).toNat * A343234 (A000217 n).toNat

end

end A067687.P16871351220164359399

/-! ## A067687.P15709758793821473268

`A001221(A096700(n+1))*A343234(A000217(n))`
-/

namespace A067687.P15709758793821473268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A096700 (n + 1)).toNat * A343234 (A000217 n).toNat

end

end A067687.P15709758793821473268

/-!
# A067688: Composite numbers that are equal to the sum of the r-th powers of its prime factors (counted with multiplicity) for some integer r.

The programs for A067688, there is no canonical definition to state claims against.
-/

/-! ## A067688.P9566589407511866069

`A193551(A088949(n+1))`
-/

namespace A067688.P9566589407511866069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (A088949 (n + 1)).toNat

end

end A067688.P9566589407511866069

/-! ## A067688.P11151631993375446681

`A193551(A134600(n+1))`
-/

namespace A067688.P11151631993375446681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (A134600 (n + 1)).toNat

end

end A067688.P11151631993375446681

/-! ## A067688.P17656419028335225947

`A193551(A134601(n+1))`
-/

namespace A067688.P17656419028335225947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (A134601 (n + 1)).toNat

end

end A067688.P17656419028335225947

/-! ## A067688.P16114476855837607489

`A193551(A134612(n+1))`
-/

namespace A067688.P16114476855837607489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193551 (A134612 (n + 1)).toNat

end

end A067688.P16114476855837607489

/-!
# A067689: Inverse of determinant of n X n matrix whose (i,j)-th element is 1/(i+j).

The programs for A067689, the canonical program `A067689.P2153195530868206036` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067689 has offset 0).

The definition of A067689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067689.P2153195530868206036

`A163085(2*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067689

/-- `A163085(2*n)` -/
def P2153195530868206036.Spec : Prop :=
  ∀ n, P2153195530868206036.a n = A067689 n

theorem P2153195530868206036.correct : P2153195530868206036.Spec := by
  intro n
  simp only [A067689]

end A067689

/-! ## A067689.P14383640809590687821

`A233472(∑[n])`
-/

namespace A067689.P14383640809590687821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233472 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067689.P14383640809590687821

namespace A067689

/-- `A233472(∑[n])` -/
def P14383640809590687821.Spec : Prop :=
  ∀ n, P14383640809590687821.a n = A067689 n

end A067689

/-! ## A067689.P13855687254217971810

`record[A233472(n)]`
-/

namespace A067689.P13855687254217971810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067689.P13855687254217971810

namespace A067689

/-- `record[A233472(n)]` -/
def P13855687254217971810.Spec : Prop :=
  ∀ n, P13855687254217971810.a n = A067689 n

end A067689

/-! ## A067689.P12872953775125749361

`A005249(n)*A056040(2*n)`
-/

namespace A067689.P12872953775125749361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005249 n * A056040 (2 * n)

end

end A067689.P12872953775125749361

namespace A067689

/-- `A005249(n)*A056040(2*n)` -/
def P12872953775125749361.Spec : Prop :=
  ∀ n, P12872953775125749361.a n = A067689 n

end A067689

/-! ## A067689.P5864218264571488101

`A005249(n+1)/A002457(n)`
-/

namespace A067689.P5864218264571488101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005249 (n + 1) : ℚ) / (A002457 n : ℚ)

end

end A067689.P5864218264571488101

namespace A067689

/-- `A005249(n+1)/A002457(n)` -/
def P5864218264571488101.Spec : Prop :=
  ∀ n, P5864218264571488101.a n = (A067689 n : ℚ)

end A067689

/-!
# A067691: a(n) = (a(n-1) + 1)^(n-1) for n > 0, a(0) = 0.

The programs for A067691, the canonical program `A067691.P12742204699060189386` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067691 has offset 0).

The definition of A067691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067691.P12742204699060189386

`(a(n-1)+1)^(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067691

/-- `(a(n-1)+1)^(n-1)` -/
def P12742204699060189386.Spec : Prop :=
  ∀ n, P12742204699060189386.a n = (A067691 n : ℚ)

end A067691

/-!
# A067692: a(n) = Sum_{0 < d <= t <= n, d|n, t|n} d*t.

The programs for A067692, the canonical program `A067692.P5856251294692584807` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067692 has offset 1).

The definition of A067692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067692.P1183380516883964053

`A119616(n+1)+A001157(n+1)`
-/

namespace A067692.P1183380516883964053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119616 (n + 1) + A001157 (n + 1)

end

end A067692.P1183380516883964053

namespace A067692

/-- `A119616(n+1)+A001157(n+1)` -/
def P1183380516883964053.Spec : Prop :=
  ∀ n, P1183380516883964053.a n = A067692 (n + 1)

theorem P1183380516883964053.correct : P1183380516883964053.Spec := by
  intro n
  simp only [A067692, Nat.add_sub_cancel, A067692.P1183380516883964053.a, A067692.P5856251294692584807.f1, A067692.P5856251294692584807.a, A001157, A001157.P6892814788348726787.a, A034676, A034676.P6152504972780352585.f1, A034676.P6152504972780352585.a, A060872, A060872.P4140804828554997717.a, A119616, A119616.P6525625346191770503.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A038548, A038548.P12593795823109361725.a, A254520, A254520.P14622412056457031035.a, A000005, A000005.P16091521709108585461.a, A037213, A037213.P7544062464691828526.a, A056924, A056924.P8846060015044098494.a, A063659, A063659.P17976112420004081821.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A063658, A063658.P15417569516115138274.f1, A063658.P15417569516115138274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067692

/-! ## A067692.P4940644922331557193

`A184387(n+1)+A069153(n+1)`
-/

namespace A067692.P4940644922331557193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) + A069153 (n + 1)

end

end A067692.P4940644922331557193

namespace A067692

/-- `A184387(n+1)+A069153(n+1)` -/
def P4940644922331557193.Spec : Prop :=
  ∀ n, P4940644922331557193.a n = A067692 (n + 1)

end A067692

/-! ## A067692.P16342128966053298557

`A072861(n+1)-A119616(n+1)`
-/

namespace A067692.P16342128966053298557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) - A119616 (n + 1)

end

end A067692.P16342128966053298557

namespace A067692

/-- `A072861(n+1)-A119616(n+1)` -/
def P16342128966053298557.Spec : Prop :=
  ∀ n, P16342128966053298557.a n = A067692 (n + 1)

end A067692

/-! ## A067692.P13045624312451892271

`A000203(n+1)²-A119616(n+1)`
-/

namespace A067692.P13045624312451892271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 - A119616 (n + 1)

end

end A067692.P13045624312451892271

namespace A067692

/-- `A000203(n+1)²-A119616(n+1)` -/
def P13045624312451892271.Spec : Prop :=
  ∀ n, P13045624312451892271.a n = A067692 (n + 1)

end A067692

/-! ## A067692.P40639023075805240

`A001157(n+1)+A066293(n+1)/2`
-/

namespace A067692.P40639023075805240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) + (A066293 (n + 1) : ℚ) / 2

end

end A067692.P40639023075805240

namespace A067692

/-- `A001157(n+1)+A066293(n+1)/2` -/
def P40639023075805240.Spec : Prop :=
  ∀ n, P40639023075805240.a n = (A067692 (n + 1) : ℚ)

end A067692

/-! ## A067692.P1964778598903665918

`(A072861(n+1)+A001157(n+1))/2`
-/

namespace A067692.P1964778598903665918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072861 (n + 1) + A001157 (n + 1) : ℚ) / 2

end

end A067692.P1964778598903665918

namespace A067692

/-- `(A072861(n+1)+A001157(n+1))/2` -/
def P1964778598903665918.Spec : Prop :=
  ∀ n, P1964778598903665918.a n = (A067692 (n + 1) : ℚ)

end A067692

/-! ## A067692.P9050431481424284616

`A072861(n+1)-A066293(n+1)/2`
-/

namespace A067692.P9050431481424284616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072861 (n + 1) : ℚ) - (A066293 (n + 1) : ℚ) / 2

end

end A067692.P9050431481424284616

namespace A067692

/-- `A072861(n+1)-A066293(n+1)/2` -/
def P9050431481424284616.Spec : Prop :=
  ∀ n, P9050431481424284616.a n = (A067692 (n + 1) : ℚ)

end A067692

/-! ## A067692.P13084488267726798801

`(A001157(n+1)+A000203(n+1)²)/2`
-/

namespace A067692.P13084488267726798801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) + A000203 (n + 1) ^ 2 : ℚ) / 2

end

end A067692.P13084488267726798801

namespace A067692

/-- `(A001157(n+1)+A000203(n+1)²)/2` -/
def P13084488267726798801.Spec : Prop :=
  ∀ n, P13084488267726798801.a n = (A067692 (n + 1) : ℚ)

end A067692

/-! ## A067692.P8797781410938646521

`(A001157(n+1)+A143348(n+1)²)/2`
-/

namespace A067692.P8797781410938646521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) + A143348 (n + 1) ^ 2 : ℚ) / 2

end

end A067692.P8797781410938646521

namespace A067692

/-- `(A001157(n+1)+A143348(n+1)²)/2` -/
def P8797781410938646521.Spec : Prop :=
  ∀ n, P8797781410938646521.a n = (A067692 (n + 1) : ℚ)

end A067692

/-! ## A067692.P9739624248358466957

`A000203(n+1)²-A066293(n+1)/2`
-/

namespace A067692.P9739624248358466957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) ^ 2 : ℚ) - (A066293 (n + 1) : ℚ) / 2

end

end A067692.P9739624248358466957

namespace A067692

/-- `A000203(n+1)²-A066293(n+1)/2` -/
def P9739624248358466957.Spec : Prop :=
  ∀ n, P9739624248358466957.a n = (A067692 (n + 1) : ℚ)

end A067692

/-! ## A067692.P5856251294692584807

`∑{d}[n+1, A034676(#)*A060872((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A067692

/-- `∑{d}[n+1, A034676(#)*A060872((n+1)/#)]` -/
def P5856251294692584807.Spec : Prop :=
  ∀ n, P5856251294692584807.a n = A067692 (n + 1)

theorem P5856251294692584807.correct : P5856251294692584807.Spec := by
  intro n
  simp only [A067692, Nat.add_sub_cancel]

end A067692

/-! ## A067692.P160141128093417794

`∑{d}[n+1, A001157(#)*A229347((n+1)/#)]`
-/

namespace A067692.P160141128093417794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A229347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067692.P160141128093417794

namespace A067692

/-- `∑{d}[n+1, A001157(#)*A229347((n+1)/#)]` -/
def P160141128093417794.Spec : Prop :=
  ∀ n, P160141128093417794.a n = A067692 (n + 1)

end A067692

/-! ## A067692.P8770959617972646150

`∑{d}[n+1, A000082(#)*A318676((n+1)/#)]`
-/

namespace A067692.P8770959617972646150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A318676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067692.P8770959617972646150

namespace A067692

/-- `∑{d}[n+1, A000082(#)*A318676((n+1)/#)]` -/
def P8770959617972646150.Spec : Prop :=
  ∀ n, P8770959617972646150.a n = A067692 (n + 1)

end A067692

/-! ## A067692.P16545862734573486071

`∑{d}[n+1, A064987(#)*A318674((n+1)/#)]`
-/

namespace A067692.P16545862734573486071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A318674 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067692.P16545862734573486071

namespace A067692

/-- `∑{d}[n+1, A064987(#)*A318674((n+1)/#)]` -/
def P16545862734573486071.Spec : Prop :=
  ∀ n, P16545862734573486071.a n = A067692 (n + 1)

end A067692

/-! ## A067692.P4530657910685628226

`A069153(n+1)+A000217(A000203(n+1))`
-/

namespace A067692.P4530657910685628226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) + A000217 (A000203 (n + 1)).toNat

end

end A067692.P4530657910685628226

namespace A067692

/-- `A069153(n+1)+A000217(A000203(n+1))` -/
def P4530657910685628226.Spec : Prop :=
  ∀ n, P4530657910685628226.a n = A067692 (n + 1)

end A067692

/-! ## A067692.P11448769057505253355

`A007437(n+1)+A000217(A000203(n+1)-1)`
-/

namespace A067692.P11448769057505253355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) + A000217 (A000203 (n + 1) - 1).toNat

end

end A067692.P11448769057505253355

namespace A067692

/-- `A007437(n+1)+A000217(A000203(n+1)-1)` -/
def P11448769057505253355.Spec : Prop :=
  ∀ n, P11448769057505253355.a n = A067692 (n + 1)

end A067692

/-!
# A067694: Minimum number of distinct parts in a self-conjugate partition of n, or 0 if n=2.

The programs for A067694, there is no canonical definition to state claims against.
-/

/-! ## A067694.P14688132298512297306

`A329747(A029517(n+1)+2)`
-/

namespace A067694.P14688132298512297306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329747 (A029517 (n + 1) + 2).toNat

end

end A067694.P14688132298512297306

/-! ## A067694.P10030156427539440410

`A028832(∑[A048669(A172416(n))])`
-/

namespace A067694.P10030156427539440410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (A172416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067694.P10030156427539440410

/-! ## A067694.P15612751322978285282

`A001221(A237272(n)+A088192(n+1))`
-/

namespace A067694.P15612751322978285282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A237272 n + A088192 (n + 1)).toNat

end

end A067694.P15612751322978285282

/-! ## A067694.P14828651934545661103

`A037800(lcm(A216155(n+1), A355159(n)))`
-/

namespace A067694.P14828651934545661103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Int.lcm (A216155 (n + 1)) (A355159 n))

end

end A067694.P14828651934545661103

/-! ## A067694.P5909996094929931924

`A001221(A000010(A201847(n+2))*A201847(n+4))`
-/

namespace A067694.P5909996094929931924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (A201847 (n + 2)).toNat * A201847 (n + 4)).toNat

end

end A067694.P5909996094929931924

/-!
# A067695: Smallest prime factor with minimum exponent in canonical prime factorization of n, a(1)=1.

The programs for A067695, there is no canonical definition to state claims against.
-/

/-! ## A067695.P3235901399282634693

`A277698(A304776(n+1))`
-/

namespace A067695.P3235901399282634693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (A304776 (n + 1)).toNat

end

end A067695.P3235901399282634693

/-! ## A067695.P15585631502604569333

`A008578(A364191(n+1)+1)`
-/

namespace A067695.P15585631502604569333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A364191 (n + 1) + 1).toNat

end

end A067695.P15585631502604569333

/-! ## A067695.P1405353092185885484

`A158611(A364191(n+1)+2)`
-/

namespace A067695.P1405353092185885484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A364191 (n + 1) + 2).toNat

end

end A067695.P1405353092185885484

/-! ## A067695.P11760261871226455405

`A277698(A007947(n+1)*A062760(n+1))`
-/

namespace A067695.P11760261871226455405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (A007947 (n + 1) * A062760 (n + 1)).toNat

end

end A067695.P11760261871226455405

/-! ## A067695.P4746309719308129112

`A277698(A064549(n+1)/A062759(n+1))`
-/

namespace A067695.P4746309719308129112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A062759 (n + 1) : ℚ))).toNat

end

end A067695.P4746309719308129112

/-!
# A067696: Numbers k such that prime(k) == -1 (mod sigma(k)).

The programs for A067696, there is no canonical definition to state claims against.
-/

/-! ## A067696.P9907028835775628691

`lt[(A000040(n+1)+1)%A000203(n+1), 1]+1`
-/

namespace A067696.P9907028835775628691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) + 1) (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067696.P9907028835775628691

/-! ## A067696.P4946500096265261907

`lt[A000203(A008578(n+2))%A000203(n+1), 1]+1`
-/

namespace A067696.P4946500096265261907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A008578 (n + 2)).toNat) (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067696.P4946500096265261907

/-!
# A067697: Numbers k such that prime(k) == 1 (mod sigma(k)).

The programs for A067697, there is no canonical definition to state claims against.
-/

/-! ## A067697.P15486038648342391649

`lt[A006093(n+1)%A000203(n+1), 2]+1`
-/

namespace A067697.P15486038648342391649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067697.P15486038648342391649

/-! ## A067697.P5509605575106936923

`lt[(A000040(n+1)-1)%A000203(n+1), 1]+1`
-/

namespace A067697.P5509605575106936923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) - 1) (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067697.P5509605575106936923

/-! ## A067697.P2766392693208962974

`eq[A000040(n+1)%A000203(n+1), A057427(n)]+1`
-/

namespace A067697.P2766392693208962974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A000203 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067697.P2766392693208962974

/-!
# A067698: Positive integers such that sigma(n) >= exp(gamma) * n * log(log(n)).

The programs for A067698, there is no canonical definition to state claims against.
-/

/-! ## A067698.P14354116438105447452

`lt[A058209(n+2), 0]+2`
-/

namespace A067698.P14354116438105447452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058209 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A067698.P14354116438105447452

/-! ## A067698.P1120533892400531130

`∪[A189686(n+1), A192884(n+1)]`
-/

namespace A067698.P1120533892400531130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067698.P1120533892400531130

/-! ## A067698.P568063349714187900

`∪[A192884(n+1), A002182(n+2)]`
-/

namespace A067698.P568063349714187900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067698.P568063349714187900

/-! ## A067698.P16067755524869031849

`∪[record[A135974(n+1)], A192884(n+1)]`
-/

namespace A067698.P16067755524869031849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135974 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A067698.P16067755524869031849

/-! ## A067698.P17654020706963569860

`∪[A192884(n+1), record[A139770(n+2)]]`
-/

namespace A067698.P17654020706963569860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192884 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067698.P17654020706963569860

/-!
# A067699: Number of comparisons made in a version of the sorting algorithm QuickSort for an array of size n with n identical elements.

The programs for A067699, the canonical program `A067699.P13286580728195762838` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067699 has offset 1).

The definition of A067699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067699.P13286580728195762838

`2*ceil((n+2)/2)+a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067699

/-- `2*ceil((n+2)/2)+a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1)` -/
def P13286580728195762838.Spec : Prop :=
  ∀ n, P13286580728195762838.a n = A067699 (n + 1)

theorem P13286580728195762838.correct : P13286580728195762838.Spec := by
  intro n
  simp only [A067699, Nat.add_sub_cancel]

end A067699

/-! ## A067699.P15115969029986836626

`A076178(n)+4*n`
-/

namespace A067699.P15115969029986836626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076178 n + (4 * n : ℤ)

end

end A067699.P15115969029986836626

namespace A067699

/-- `A076178(n)+4*n` -/
def P15115969029986836626.Spec : Prop :=
  ∀ n, P15115969029986836626.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P9926062242827390071

`∑[a(and(n, n-1))+2]-2` with `a(0)=2`
-/

namespace A067699.P9926062242827390071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A067699.P9926062242827390071

namespace A067699

/-- `∑[a(and(n, n-1))+2]-2` -/
def P9926062242827390071.Spec : Prop :=
  ∀ n, P9926062242827390071.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P4331417756417018032

`2*(∑[∑[∑{e}[xor(n, -n), 2-#]]]+n)`
-/

namespace A067699.P4331417756417018032
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A067699.P4331417756417018032

namespace A067699

/-- `2*(∑[∑[∑{e}[xor(n, -n), 2-#]]]+n)` -/
def P4331417756417018032.Spec : Prop :=
  ∀ n, P4331417756417018032.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P9235418691118148359

`2*(∑[a(floor(n/2))+n%2]-1)` with `a(0)=1`
-/

namespace A067699.P9235418691118148359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A067699.P9235418691118148359

namespace A067699

/-- `2*(∑[a(floor(n/2))+n%2]-1)` -/
def P9235418691118148359.Spec : Prop :=
  ∀ n, P9235418691118148359.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P4583552823954397858

`2*(A000788(n)+n)`
-/

namespace A067699.P4583552823954397858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000788 n + (n : ℤ))

end

end A067699.P4583552823954397858

namespace A067699

/-- `2*(A000788(n)+n)` -/
def P4583552823954397858.Spec : Prop :=
  ∀ n, P4583552823954397858.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P6072897379784776561

`2*(sqrt(A163095(n))+n)`
-/

namespace A067699.P6072897379784776561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.sqrt (A163095 n : ℝ) + (n : ℝ))

end

end A067699.P6072897379784776561

namespace A067699

/-- `2*(sqrt(A163095(n))+n)` -/
def P6072897379784776561.Spec : Prop :=
  ∀ n, P6072897379784776561.a n = (A067699 (n + 1) : ℝ)

end A067699

/-! ## A067699.P15136406544628554042

`2*(∑[A000120(n)]+n)`
-/

namespace A067699.P15136406544628554042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A067699.P15136406544628554042

namespace A067699

/-- `2*(∑[A000120(n)]+n)` -/
def P15136406544628554042.Spec : Prop :=
  ∀ n, P15136406544628554042.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P14074913570144306372

`2*(A330038(n+1)-1)`
-/

namespace A067699.P14074913570144306372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A330038 (n + 1) - 1)

end

end A067699.P14074913570144306372

namespace A067699

/-- `2*(A330038(n+1)-1)` -/
def P14074913570144306372.Spec : Prop :=
  ∀ n, P14074913570144306372.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P17438773024250769894

`∑[log2(A102376(n))+2]-2`
-/

namespace A067699.P17438773024250769894
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A102376 n : ℝ) + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A067699.P17438773024250769894

namespace A067699

/-- `∑[log2(A102376(n))+2]-2` -/
def P17438773024250769894.Spec : Prop :=
  ∀ n, P17438773024250769894.a n = (A067699 (n + 1) : ℝ)

end A067699

/-! ## A067699.P12677850020569298516

`2*(∑[A063787(n+1)]-1)`
-/

namespace A067699.P12677850020569298516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A067699.P12677850020569298516

namespace A067699

/-- `2*(∑[A063787(n+1)]-1)` -/
def P12677850020569298516.Spec : Prop :=
  ∀ n, P12677850020569298516.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P14794842621857420709

`A301336(n)+A033156(n+1)`
-/

namespace A067699.P14794842621857420709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 n + A033156 (n + 1)

end

end A067699.P14794842621857420709

namespace A067699

/-- `A301336(n)+A033156(n+1)` -/
def P14794842621857420709.Spec : Prop :=
  ∀ n, P14794842621857420709.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P2303868201229800085

`∑[A000005(A071044(2*n+1))]-2`
-/

namespace A067699.P2303868201229800085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071044 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A067699.P2303868201229800085

namespace A067699

/-- `∑[A000005(A071044(2*n+1))]-2` -/
def P2303868201229800085.Spec : Prop :=
  ∀ n, P2303868201229800085.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P12054358150934199517

`∑[A274009(A001316(n))*A274009(2*n)]`
-/

namespace A067699.P12054358150934199517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A001316 n).toNat * A274009 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067699.P12054358150934199517

namespace A067699

/-- `∑[A274009(A001316(n))*A274009(2*n)]` -/
def P12054358150934199517.Spec : Prop :=
  ∀ n, P12054358150934199517.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P8157418139255737950

`∑[A274009(A071044(2*n))*A274009(2*n)]`
-/

namespace A067699.P8157418139255737950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A071044 (2 * n)).toNat * A274009 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067699.P8157418139255737950

namespace A067699

/-- `∑[A274009(A071044(2*n))*A274009(2*n)]` -/
def P8157418139255737950.Spec : Prop :=
  ∀ n, P8157418139255737950.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P10654210300428038877

`A054000(n+1)-A077071(n)`
-/

namespace A067699.P10654210300428038877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (n + 1) - A077071 n

end

end A067699.P10654210300428038877

namespace A067699

/-- `A054000(n+1)-A077071(n)` -/
def P10654210300428038877.Spec : Prop :=
  ∀ n, P10654210300428038877.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P9815827891729755840

`A005843(A000788(n))+A005843(n)`
-/

namespace A067699.P9815827891729755840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000788 n).toNat + A005843 n

end

end A067699.P9815827891729755840

namespace A067699

/-- `A005843(A000788(n))+A005843(n)` -/
def P9815827891729755840.Spec : Prop :=
  ∀ n, P9815827891729755840.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P6822477732469960844

`A005843(A000788(n)+n)`
-/

namespace A067699.P6822477732469960844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000788 n + (n : ℤ)).toNat

end

end A067699.P6822477732469960844

namespace A067699

/-- `A005843(A000788(n)+n)` -/
def P6822477732469960844.Spec : Prop :=
  ∀ n, P6822477732469960844.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P13339649360516757668

`A005843(∑[∑[A088705(n)]]+n)`
-/

namespace A067699.P13339649360516757668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A067699.P13339649360516757668

namespace A067699

/-- `A005843(∑[∑[A088705(n)]]+n)` -/
def P13339649360516757668.Spec : Prop :=
  ∀ n, P13339649360516757668.a n = A067699 (n + 1)

end A067699

/-! ## A067699.P16362085075298613589

`∑[2*val(A100320(n), 2)]`
-/

namespace A067699.P16362085075298613589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.valuation (A100320 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067699.P16362085075298613589

namespace A067699

/-- `∑[2*val(A100320(n), 2)]` -/
def P16362085075298613589.Spec : Prop :=
  ∀ n, (P16362085075298613589.a n : ℤ) = A067699 (n + 1)

end A067699

