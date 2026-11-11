import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A381600: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x)^2 * A(x*A(x)^2)^2).

The programs for A381600, there is no canonical definition to state claims against.
-/

/-! ## A381600.P18015413461773564436

`A381592(∑[n+2]-1)`
-/

namespace A381600.P18015413461773564436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381592 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A381600.P18015413461773564436

/-! ## A381600.P5393672681146772207

`A381592(A034856(n+1))+A185213(n)`
-/

namespace A381600.P5393672681146772207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381592 (A034856 (n + 1)).toNat + A185213 n

end

end A381600.P5393672681146772207

/-! ## A381600.P5981982845764762702

`lcm(A057077(n), A381592(A034856(n+1)))`
-/

namespace A381600.P5981982845764762702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A381592 (A034856 (n + 1)).toNat)

end

end A381600.P5981982845764762702

/-! ## A381600.P10455042398701258913

`gcd(A154955(n+1), A381592(A034856(n+1)))`
-/

namespace A381600.P10455042398701258913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154955 (n + 1)) (A381592 (A034856 (n + 1)).toNat)

end

end A381600.P10455042398701258913

/-! ## A381600.P9810941064744360726

`C(A381592(A034856(n+1)), A095827(n+1))`
-/

namespace A381600.P9810941064744360726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A381592 (A034856 (n + 1)).toNat).toNat (A095827 (n + 1)).toNat

end

end A381600.P9810941064744360726

/-!
# A381601: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x)^3 * A(x*A(x)^3)^3).

The programs for A381601, there is no canonical definition to state claims against.
-/

/-! ## A381601.P7616622833899099656

`A381594(∑[n+2]-1)`
-/

namespace A381601.P7616622833899099656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381594 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A381601.P7616622833899099656

/-! ## A381601.P9325225254602752510

`A381594(A034856(n+1))+A185237(n)`
-/

namespace A381601.P9325225254602752510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381594 (A034856 (n + 1)).toNat + A185237 n

end

end A381601.P9325225254602752510

/-! ## A381601.P3502323850288498972

`A055642(n)*A381594(A034856(n+1))`
-/

namespace A381601.P3502323850288498972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A381594 (A034856 (n + 1)).toNat

end

end A381601.P3502323850288498972

/-!
# A381602: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A120971.

The programs for A381602, there is no canonical definition to state claims against.
-/

/-! ## A381602.P121684679339471183

`A123580(A396994(n+1))`
-/

namespace A381602.P121684679339471183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A396994 (n + 1)).toNat

end

end A381602.P121684679339471183

/-! ## A381602.P15017080647267935492

`A123580(or(A384808(n), A384813(n)))`
-/

namespace A381602.P15017080647267935492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (Int.lor (A384808 n) (A384813 n)).toNat

end

end A381602.P15017080647267935492

/-! ## A381602.P16240128961509733336

`lcm(A381426(A185213(n)), A384944(n))`
-/

namespace A381602.P16240128961509733336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A381426 (A185213 n).toNat) (A384944 n)

end

end A381602.P16240128961509733336

/-!
# A381603: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A120973.

The programs for A381603, there is no canonical definition to state claims against.
-/

/-! ## A381603.P15503960528755336314

`A384621(n)+A057354(A185213(n))`
-/

namespace A381603.P15503960528755336314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384621 n + A057354 (A185213 n).toNat

end

end A381603.P15503960528755336314

/-! ## A381603.P15205535482884334546

`A367964(A384718(n))+A057354(A185213(n))`
-/

namespace A381603.P15205535482884334546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 (A384718 n).toNat + A057354 (A185213 n).toNat

end

end A381603.P15205535482884334546

/-!
# A381604: Least number k such that A381596(k) = n.

The programs for A381604, there is no canonical definition to state claims against.
-/

/-! ## A381604.P1991489242874897144

`∑[∏{e}[A316701(n), (2*n)^#]]-n`
-/

namespace A381604.P1991489242874897144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316701 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (2 * n) ^ Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A381604.P1991489242874897144

/-! ## A381604.P3565801907594268082

`∑[A092689(a(n-1)+2^(n-1))]` with `a(0)=1`
-/

namespace A381604.P3565801907594268082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A092689 (SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381604.P3565801907594268082

/-!
# A381605: Number of distinct prime divisors of n^3+1.

The programs for A381605, the canonical program `A381605.P16693958635226337192` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381605 has offset 1).

The definition of A381605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381605.P388302922632996966

`A001221((n+2)/3^val(n+2, 3))+A001221((n+1)²-(n+1)+1)`
-/

namespace A381605.P388302922632996966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 2) 3 : ℚ))).toNat + A001221 (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 1).toNat

end

end A381605.P388302922632996966

namespace A381605

/-- `A001221((n+2)/3^val(n+2, 3))+A001221((n+1)²-(n+1)+1)` -/
def P388302922632996966.Spec : Prop :=
  ∀ n, P388302922632996966.a n = A381605 (n + 1)

end A381605

/-! ## A381605.P16693958635226337192

`A001221((n+1)^3+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381605

/-- `A001221((n+1)^3+1)` -/
def P16693958635226337192.Spec : Prop :=
  ∀ n, P16693958635226337192.a n = A381605 (n + 1)

theorem P16693958635226337192.correct : P16693958635226337192.Spec := by
  intro n
  simp only [A381605, Nat.add_sub_cancel]

end A381605

/-! ## A381605.P16561913177543222898

`A001221(A130770(n))+A001221(n+2)`
-/

namespace A381605.P16561913177543222898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130770 n).toNat + A001221 (n + 2)

end

end A381605.P16561913177543222898

namespace A381605

/-- `A001221(A130770(n))+A001221(n+2)` -/
def P16561913177543222898.Spec : Prop :=
  ∀ n, P16561913177543222898.a n = A381605 (n + 1)

end A381605

/-! ## A381605.P4695470212650534105

`∑{e}[∏{p}[1+Δ[∑[n]²], #], #]`
-/

namespace A381605.P4695470212650534105
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A381605.P4695470212650534105

namespace A381605

/-- `∑{e}[∏{p}[1+Δ[∑[n]²], #], #]` -/
def P4695470212650534105.Spec : Prop :=
  ∀ n, (P4695470212650534105.a n : ℤ) = A381605 (n + 1)

end A381605

/-! ## A381605.P5859292384065156637

`∑{e}[∏{p}[(n+1)^3+1, #], #]%comp[∑[n]]`
-/

namespace A381605.P5859292384065156637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

end

end A381605.P5859292384065156637

namespace A381605

/-- `∑{e}[∏{p}[(n+1)^3+1, #], #]%comp[∑[n]]` -/
def P5859292384065156637.Spec : Prop :=
  ∀ n, (P5859292384065156637.a n : ℤ) = A381605 (n + 1)

end A381605

/-! ## A381605.P1221836377056622053

`∑{p}[(n+1)^3+1, A001222(#)]`
-/

namespace A381605.P1221836377056622053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A381605.P1221836377056622053

namespace A381605

/-- `∑{p}[(n+1)^3+1, A001222(#)]` -/
def P1221836377056622053.Spec : Prop :=
  ∀ n, P1221836377056622053.a n = A381605 (n + 1)

end A381605

/-! ## A381605.P18192968420530723569

`∑{e}[1+(n+1)²*(n+1), A016042(#)]`
-/

namespace A381605.P18192968420530723569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n + 1) ^ 2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A016042 (Nat.factorization (f1 n) p)

end

end A381605.P18192968420530723569

namespace A381605

/-- `∑{e}[1+(n+1)²*(n+1), A016042(#)]` -/
def P18192968420530723569.Spec : Prop :=
  ∀ n, P18192968420530723569.a n = A381605 (n + 1)

end A381605

/-!
# A381606: a(n) is the smallest prime number greater than n that contains n as a substring of its digits.

The programs for A381606, there is no canonical definition to state claims against.
-/

/-! ## A381606.P995272009328634504

`A385512(A062399(n))`
-/

namespace A381606.P995272009328634504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385512 (A062399 n).toNat

end

end A381606.P995272009328634504

/-! ## A381606.P7852836848928475724

`A385512(A351870(n))`
-/

namespace A381606.P7852836848928475724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385512 (A351870 n).toNat

end

end A381606.P7852836848928475724

/-! ## A381606.P2819337622360922138

`A000265(A011782(n)*A385512(n))`
-/

namespace A381606.P2819337622360922138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A011782 n * A385512 n).toNat

end

end A381606.P2819337622360922138

/-! ## A381606.P17639140028649475835

`A071031(A181153(n))*A385512(n)`
-/

namespace A381606.P17639140028649475835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071031 (A181153 n).toNat * A385512 n

end

end A381606.P17639140028649475835

/-! ## A381606.P16898039564025260260

`or(A063524(A001411(n)), A385512(n))`
-/

namespace A381606.P16898039564025260260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 (A001411 n).toNat) (A385512 n)

end

end A381606.P16898039564025260260

/-!
# A381607: For any nonnegative integer n with ternary expansion Sum_{k >= 0} t_k * 3^k, a(n) = Sum_{k >= 0} t_k * A000045(2*k + 2).

The programs for A381607, there is no canonical definition to state claims against.
-/

/-! ## A381607.P8731045867159612228

`A136409(3*(n+1))-∑[A136441(3*n+4)]`
-/

namespace A381607.P8731045867159612228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136441 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (3 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381607.P8731045867159612228

/-!
# A381608: Nonnegative integers whose ternary expansion does not contain pairs of 2's only separated by (zero or more) 1's, with offset 0.

The programs for A381608, the canonical program `A381608.P6073522075897922791` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381608 has offset 0).

The definition of A381608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381608.P7174762325202167530

`A028898(A381579(n))`
-/

namespace A381608.P7174762325202167530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A381579 n).toNat

end

end A381608.P7174762325202167530

namespace A381608

/-- `A028898(A381579(n))` -/
def P7174762325202167530.Spec : Prop :=
  ∀ n, P7174762325202167530.a n = A381608 n

end A381608

/-! ## A381608.P6073522075897922791

`eq[A005812(n), A053735(n)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A381608

/-- `eq[A005812(n), A053735(n)]` -/
def P6073522075897922791.Spec : Prop :=
  ∀ n, (P6073522075897922791.a n : ℤ) = A381608 n

theorem P6073522075897922791.correct : P6073522075897922791.Spec := by
  intro n
  simp only [A381608]

end A381608

/-! ## A381608.P3361843712925132880

`eq[A061282(n), A061295(n)]`
-/

namespace A381608.P3361843712925132880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381608.P3361843712925132880

namespace A381608

/-- `eq[A061282(n), A061295(n)]` -/
def P3361843712925132880.Spec : Prop :=
  ∀ n, (P3361843712925132880.a n : ℤ) = A381608 n

end A381608

/-! ## A381608.P16217561508825552953

`eq[A089643(n), A134024(n)]`
-/

namespace A381608.P16217561508825552953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381608.P16217561508825552953

namespace A381608

/-- `eq[A089643(n), A134024(n)]` -/
def P16217561508825552953.Spec : Prop :=
  ∀ n, (P16217561508825552953.a n : ℤ) = A381608 n

end A381608

/-! ## A381608.P17748458272728033219

`eq[A000989(n), A134022(n)]`
-/

namespace A381608.P17748458272728033219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381608.P17748458272728033219

namespace A381608

/-- `eq[A000989(n), A134022(n)]` -/
def P17748458272728033219.Spec : Prop :=
  ∀ n, (P17748458272728033219.a n : ℤ) = A381608 n

end A381608

/-! ## A381608.P6296144682514248931

`eq[A065361(n), A343228(n)]`
-/

namespace A381608.P6296144682514248931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381608.P6296144682514248931

namespace A381608

/-- `eq[A065361(n), A343228(n)]` -/
def P6296144682514248931.Spec : Prop :=
  ∀ n, (P6296144682514248931.a n : ℤ) = A381608 n

end A381608

/-! ## A381608.P13681074770875318962

`eq[A305878(n), A379657(n)]`
-/

namespace A381608.P13681074770875318962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381608.P13681074770875318962

namespace A381608

/-- `eq[A305878(n), A379657(n)]` -/
def P13681074770875318962.Spec : Prop :=
  ∀ n, (P13681074770875318962.a n : ℤ) = A381608 n

end A381608

/-!
# A381609: a(n) is the number of occurrences of n in A381607.

The programs for A381609, there is no canonical definition to state claims against.
-/

/-! ## A381609.P1208918321476199371

`A382419(A374767(2*n+5)+A004767(2*n+1))`
-/

namespace A381609.P1208918321476199371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382419 (A374767 (2 * n + 5) + A004767 (2 * n + 1)).toNat

end

end A381609.P1208918321476199371

/-!
# A381610: Irregular table T(n, k), n >= 0, k = 1..A381609(n), read by rows: the n-th row lists the numbers m such that A381607(m) = n.

The programs for A381610, there is no canonical definition to state claims against.
-/

/-! ## A381610.P7694827019666961504

`fo[A381611(n)]`
-/

namespace A381610.P7694827019666961504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A381610.P7694827019666961504

/-! ## A381610.P6256840980393403685

`A381611(A381611(n)%A229107(n+1))`
-/

namespace A381610.P6256840980393403685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381611 (Int.tmod (A381611 n) (A229107 (n + 1))).toNat

end

end A381610.P6256840980393403685

/-! ## A381610.P16858290265111919327

`A381611(A381611(n))%A000040(A008000(n))`
-/

namespace A381610.P16858290265111919327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381611 (A381611 n).toNat) (A000040 (A008000 n).toNat)

end

end A381610.P16858290265111919327

/-! ## A381610.P17841642239581231964

`A381611(A381611(n))%A344977(n+1)`
-/

namespace A381610.P17841642239581231964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381611 (A381611 n).toNat) (A344977 (n + 1))

end

end A381610.P17841642239581231964

/-! ## A381610.P14397306447890386998

`A057427(A102577(n+1))*A381611(A381611(n))`
-/

namespace A381610.P14397306447890386998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A102577 (n + 1)).toNat * A381611 (A381611 n).toNat

end

end A381610.P14397306447890386998

/-! ## A381610.P2875299360442239624

`A057427(A120209(n+1))*A381611(A381611(n))`
-/

namespace A381610.P2875299360442239624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A120209 (n + 1)).toNat * A381611 (A381611 n).toNat

end

end A381610.P2875299360442239624

/-! ## A381610.P11754300041307887475

`A381611(A381611(n))%A327111(n+1)`
-/

namespace A381610.P11754300041307887475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381611 (A381611 n).toNat) (A327111 (n + 1))

end

end A381610.P11754300041307887475

/-! ## A381610.P17233496556897621399

`A381611(A381611(n))+A007814(A349751(n+1))`
-/

namespace A381610.P17233496556897621399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381611 (A381611 n).toNat + A007814 (A349751 (n + 1)).toNat

end

end A381610.P17233496556897621399

/-! ## A381610.P10780443721313870055

`A381611(A381611(n))^A143571(A143594(n+1))`
-/

namespace A381610.P10780443721313870055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381611 (A381611 n).toNat : ℚ) ^ (A143571 (A143594 (n + 1)).toNat : ℤ)

end

end A381610.P10780443721313870055

/-! ## A381610.P8195578755993809765

`A381611(A381611(n)%A381589(n))`
-/

namespace A381610.P8195578755993809765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381611 (Int.tmod (A381611 n) (A381589 (n + 18))).toNat

end

end A381610.P8195578755993809765

/-!
# A381611: Inverse permutation to A381610.

The programs for A381611, there is no canonical definition to state claims against.
-/

/-! ## A381611.P6701642034260862527

`fo[A381610(n)]`
-/

namespace A381611.P6701642034260862527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A381611.P6701642034260862527

/-! ## A381611.P17297897847738812551

`A381610(A381610(n)%A229107(n+1))`
-/

namespace A381611.P17297897847738812551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381610 (Int.tmod (A381610 n) (A229107 (n + 1))).toNat

end

end A381611.P17297897847738812551

/-! ## A381611.P10595170889195837216

`A381610(A381610(n))%A000040(A008000(n))`
-/

namespace A381611.P10595170889195837216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381610 (A381610 n).toNat) (A000040 (A008000 n).toNat)

end

end A381611.P10595170889195837216

/-! ## A381611.P3583542187720052836

`A381610(A381610(n))%A282735(n+2)`
-/

namespace A381611.P3583542187720052836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381610 (A381610 n).toNat) (A282735 (n + 2))

end

end A381611.P3583542187720052836

/-! ## A381611.P7567527502417659939

`A381610(A381610(n))%A327111(n+1)`
-/

namespace A381611.P7567527502417659939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381610 (A381610 n).toNat) (A327111 (n + 1))

end

end A381611.P7567527502417659939

/-! ## A381611.P4879990795657282738

`A381610(A381610(n))^A143571(A143594(n+1))`
-/

namespace A381611.P4879990795657282738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381610 (A381610 n).toNat : ℚ) ^ (A143571 (A143594 (n + 1)).toNat : ℤ)

end

end A381611.P4879990795657282738

/-! ## A381611.P16907303480244277719

`A381610(A381610(n)%A381589(n))`
-/

namespace A381611.P16907303480244277719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381610 (Int.tmod (A381610 n) (A381589 (n + 18))).toNat

end

end A381611.P16907303480244277719

/-! ## A381611.P248816309171923196

`A381610(A381610(n))^A160338(A375375(n+3))`
-/

namespace A381611.P248816309171923196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381610 (A381610 n).toNat : ℚ) ^ (A160338 (A375375 (n + 3)).toNat : ℤ)

end

end A381611.P248816309171923196

/-! ## A381611.P3109788960131341647

`A381610(A381610(n))+C(n, A375711(n+1))`
-/

namespace A381611.P3109788960131341647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381610 (A381610 n).toNat + (Nat.choose n (A375711 (n + 1)).toNat : ℤ)

end

end A381611.P3109788960131341647

/-!
# A381613: If n = Product (p_j^k_j) then a(n) = Product (min(p_j, k_j)), with a(1) = 1.

The programs for A381613, the canonical program `A381613.P15275634750993540822` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381613 has offset 1).

The definition of A381613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381613.P1638014447041410161

`∏{e}[A377518(n+1), #]`
-/

namespace A381613.P1638014447041410161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A381613.P1638014447041410161

namespace A381613

/-- `∏{e}[A377518(n+1), #]` -/
def P1638014447041410161.Spec : Prop :=
  ∀ n, (P1638014447041410161.a n : ℤ) = A381613 (n + 1)

end A381613

/-! ## A381613.P8024983346057955823

`A389456(floor(n/∏{p}[1+n, #])+1)`
-/

namespace A381613.P8024983346057955823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389456 (⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ + 1).toNat

end

end A381613.P8024983346057955823

namespace A381613

/-- `A389456(floor(n/∏{p}[1+n, #])+1)` -/
def P8024983346057955823.Spec : Prop :=
  ∀ n, P8024983346057955823.a n = A381613 (n + 1)

end A381613

/-! ## A381613.P15275634750993540822

`∑{d}[(n+1)/∏{p}[n+1, #], A359550(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A381613

/-- `∑{d}[(n+1)/∏{p}[n+1, #], A359550(#)]` -/
def P15275634750993540822.Spec : Prop :=
  ∀ n, P15275634750993540822.a n = A381613 (n + 1)

theorem P15275634750993540822.correct : P15275634750993540822.Spec := by
  intro n
  simp only [A381613, Nat.add_sub_cancel]

end A381613

/-! ## A381613.P13938414072997004459

`A005361(A377518(n+1))`
-/

namespace A381613.P13938414072997004459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A377518 (n + 1)).toNat

end

end A381613.P13938414072997004459

namespace A381613

/-- `A005361(A377518(n+1))` -/
def P13938414072997004459.Spec : Prop :=
  ∀ n, P13938414072997004459.a n = A381613 (n + 1)

end A381613

/-! ## A381613.P12416802781363350671

`A000026(n+1)/A381614(n+1)`
-/

namespace A381613.P12416802781363350671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) : ℚ) / (A381614 (n + 1) : ℚ)

end

end A381613.P12416802781363350671

namespace A381613

/-- `A000026(n+1)/A381614(n+1)` -/
def P12416802781363350671.Spec : Prop :=
  ∀ n, P12416802781363350671.a n = (A381613 (n + 1) : ℚ)

end A381613

/-! ## A381613.P10764768365468428848

`∏{e}[lcm(A327937(n+1), A365635(n+1)), #]`
-/

namespace A381613.P10764768365468428848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A327937 (n + 1)) (A365635 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A381613.P10764768365468428848

namespace A381613

/-- `∏{e}[lcm(A327937(n+1), A365635(n+1)), #]` -/
def P10764768365468428848.Spec : Prop :=
  ∀ n, (P10764768365468428848.a n : ℤ) = A381613 (n + 1)

end A381613

/-! ## A381613.P4185065286899992222

`∏{e}[(n+1)/A368333(n+1)*A365635(n+1), #]`
-/

namespace A381613.P4185065286899992222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368333 (n + 1) : ℚ) * (A365635 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A381613.P4185065286899992222

namespace A381613

/-- `∏{e}[(n+1)/A368333(n+1)*A365635(n+1), #]` -/
def P4185065286899992222.Spec : Prop :=
  ∀ n, (P4185065286899992222.a n : ℤ) = A381613 (n + 1)

end A381613

/-! ## A381613.P14958854988920494910

`A369008(n+1)*A381588(n+1)/A381614(n+1)`
-/

namespace A381613.P14958854988920494910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369008 (n + 1) * A381588 (n + 1) : ℚ) / (A381614 (n + 1) : ℚ)

end

end A381613.P14958854988920494910

namespace A381613

/-- `A369008(n+1)*A381588(n+1)/A381614(n+1)` -/
def P14958854988920494910.Spec : Prop :=
  ∀ n, P14958854988920494910.a n = (A381613 (n + 1) : ℚ)

end A381613

/-!
# A381614: If n = Product (p_j^k_j) then a(n) = Product (max(p_j, k_j)), with a(1) = 1.

The programs for A381614, the canonical program `A381614.P10204413088920589581` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381614 has offset 1).

The definition of A381614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381614.P10204413088920589581

`A000026(1+n)/A381613(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A381614

/-- `A000026(1+n)/A381613(n+1)` -/
def P10204413088920589581.Spec : Prop :=
  ∀ n, P10204413088920589581.a n = (A381614 (n + 1) : ℚ)

end A381614

/-! ## A381614.P5953928885897677573

`A369008(n+1)*A381588(n+1)/A381613(n+1)`
-/

namespace A381614.P5953928885897677573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369008 (n + 1) * A381588 (n + 1) : ℚ) / (A381613 (n + 1) : ℚ)

end

end A381614.P5953928885897677573

namespace A381614

/-- `A369008(n+1)*A381588(n+1)/A381613(n+1)` -/
def P5953928885897677573.Spec : Prop :=
  ∀ n, P5953928885897677573.a n = (A381614 (n + 1) : ℚ)

end A381614

/-! ## A381614.P7900685451996231920

`A000005(A003557(n+1))*A007947(n+1)/A381613(n+1)`
-/

namespace A381614.P7900685451996231920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A003557 (n + 1)).toNat * A007947 (n + 1) : ℚ) / (A381613 (n + 1) : ℚ)

end

end A381614.P7900685451996231920

namespace A381614

/-- `A000005(A003557(n+1))*A007947(n+1)/A381613(n+1)` -/
def P7900685451996231920.Spec : Prop :=
  ∀ n, P7900685451996231920.a n = (A381614 (n + 1) : ℚ)

end A381614

/-! ## A381614.P2229728239893788716

`A000005(A336551(n+1)+1)*A007947(n+1)/A381613(n+1)`
-/

namespace A381614.P2229728239893788716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A336551 (n + 1) + 1).toNat * A007947 (n + 1) : ℚ) / (A381613 (n + 1) : ℚ)

end

end A381614.P2229728239893788716

namespace A381614

/-- `A000005(A336551(n+1)+1)*A007947(n+1)/A381613(n+1)` -/
def P2229728239893788716.Spec : Prop :=
  ∀ n, P2229728239893788716.a n = (A381614 (n + 1) : ℚ)

end A381614

/-! ## A381614.P14582076458451283370

`A332671(A349356(n+1))+(n+1)/A348037(n+1)`
-/

namespace A381614.P14582076458451283370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332671 (A349356 (n + 1)).toNat : ℚ) + (n + 1 : ℚ) / (A348037 (n + 1) : ℚ)

end

end A381614.P14582076458451283370

namespace A381614

/-- `A332671(A349356(n+1))+(n+1)/A348037(n+1)` -/
def P14582076458451283370.Spec : Prop :=
  ∀ n, P14582076458451283370.a n = (A381614 (n + 1) : ℚ)

end A381614

/-!
# A381615: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x*A(x)^3)^3).

The programs for A381615, there is no canonical definition to state claims against.
-/

/-! ## A381615.P917363341713339312

`∑{d}[A304708(n^3+3), #]`
-/

namespace A381615.P917363341713339312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (n ^ 3 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A381615.P917363341713339312

/-!
# A381617: A sequence constructed by greedily sampling the zeta distribution for parameter value 2 to minimize discrepancy.

The programs for A381617, there is no canonical definition to state claims against.
-/

/-! ## A381617.P9723084204754980308

`A066099(A016910(n)+A003342(n+1))`
-/

namespace A381617.P9723084204754980308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A016910 n + A003342 (n + 1)).toNat

end

end A381617.P9723084204754980308

/-! ## A381617.P536970536766268546

`A036036(A264659(n+1)+A000217(n))`
-/

namespace A381617.P536970536766268546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (A264659 (n + 1) + A000217 n).toNat

end

end A381617.P536970536766268546

/-! ## A381617.P9905684213139997326

`val(A389579(A385573(n+1)+5)+1, 2)+1`
-/

namespace A381617.P9905684213139997326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A389579 (A385573 (n + 1) + 5).toNat + 1).toNat 2 + 1

end

end A381617.P9905684213139997326

/-! ## A381617.P7614728639494103165

`gcd(A027929(n+3), A035493(A323228(n)))`
-/

namespace A381617.P7614728639494103165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027929 (n + 3)) (A035493 (A323228 n).toNat)

end

end A381617.P7614728639494103165

/-! ## A381617.P2680340890419403814

`gcd(A001600(n+1), A272020(A004148(n)))`
-/

namespace A381617.P2680340890419403814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001600 (n + 1)) (A272020 (A004148 n).toNat)

end

end A381617.P2680340890419403814

/-!
# A381618: Reverse the Chung-Graham representation of n while preserving its trailing zeros: a(n) = A381607(A263273(A381608(n))).

The programs for A381618, there is no canonical definition to state claims against.
-/

/-! ## A381618.P365218378957107143

`A381607(A263273(A381608(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A381618.P365218378957107143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381607 (A263273 (A381608 n).toNat).toNat

end

end A381618.P365218378957107143

/-!
# A381622: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and down-under-under dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A381622, there is no canonical definition to state claims against.
-/

/-! ## A381622.P13872505861651601991

`A382354(A066181(1+n))`
-/

namespace A381622.P13872505861651601991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382354 (A066181 (1 + n)).toNat

end

end A381622.P13872505861651601991

/-! ## A381622.P4841621196240141202

`A383845(A372368(n+1)%A087832(3*n+1))`
-/

namespace A381622.P4841621196240141202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383845 (Int.tmod (A372368 (n + 1)) (A087832 (3 * n + 1))).toNat

end

end A381622.P4841621196240141202

/-! ## A381622.P3820057911066391327

`A388711(n)+A001222(A038041(n+1))`
-/

namespace A381622.P3820057911066391327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388711 n + A001222 (A038041 (n + 1)).toNat

end

end A381622.P3820057911066391327

/-! ## A381622.P389767225833781912

`A382048(A376799(n+1)+A080593(n+4))`
-/

namespace A381622.P389767225833781912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382048 (A376799 (n + 1) + A080593 (n + 4)).toNat

end

end A381622.P389767225833781912

/-! ## A381622.P7580340605101675957

`A079866(A290316(n))`
-/

namespace A381622.P7580340605101675957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A290316 n).toNat

end

end A381622.P7580340605101675957

/-!
# A381623: Triangle read by rows: T(n,k) is the number of the k-th eliminated person in the variation of the Josephus elimination process for n people, where the first person is eliminated, then two people are skipped, and then the process repeats.

The programs for A381623, there is no canonical definition to state claims against.
-/

/-! ## A381623.P6161002801569164598

`∑{e}[2+A334324(n+1)*col(n), #]`
-/

namespace A381623.P6161002801569164598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A334324 (n + 1) * (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A381623.P6161002801569164598

/-! ## A381623.P416522587350713054

`A274353(A005705(n)²)`
-/

namespace A381623.P416522587350713054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274353 (A005705 n ^ 2).toNat

end

end A381623.P416522587350713054

/-! ## A381623.P6257479733474724569

`∏{e}[(A002262(n)+1)^n, A000120(#)+1]`
-/

namespace A381623.P6257479733474724569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000120 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A381623.P6257479733474724569

/-! ## A381623.P5951070277296406894

`A274353(A005705(n)*A005705(n))`
-/

namespace A381623.P5951070277296406894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274353 (A005705 n * A005705 n).toNat

end

end A381623.P5951070277296406894

/-! ## A381623.P4234998264492524591

`A285573(A193588(n)^A000120(n))`
-/

namespace A381623.P4234998264492524591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (SequenceMachineLib.roundAway ((A193588 n : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A381623.P4234998264492524591

/-!
# A381624: For any nonnegative integer n with ternary expansion Sum_{k >= 0} t_k * 3^k, a(n) = Sum_{k >= 0} t_k * (2^(k+1) - 1).

The programs for A381624, there is no canonical definition to state claims against.
-/

/-! ## A381624.P668528815761565697

`2*A065361(n)-A007953(A007089(n))`
-/

namespace A381624.P668528815761565697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065361 n - A007953 (A007089 n).toNat

end

end A381624.P668528815761565697

/-!
# A381625: a(n) is the number of occurrences of n in A381624.

The programs for A381625, there is no canonical definition to state claims against.
-/

/-! ## A381625.P4960928213484775952

`runs[char[A381628(2*n)]]`
-/

namespace A381625.P4960928213484775952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381628 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A381625.P4960928213484775952

/-!
# A381627: Irregular table T(n, k), n >= 0, k = 1..A381625(n): the n-th row lists the numbers m such that A381624(m) = n.

The programs for A381627, there is no canonical definition to state claims against.
-/

/-! ## A381627.P7169976160254009060

`fo[A381628(n)]`
-/

namespace A381627.P7169976160254009060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381628 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A381627.P7169976160254009060

/-!
# A381628: Inverse permutation to A381627.

The programs for A381628, there is no canonical definition to state claims against.
-/

/-! ## A381628.P9956936347767243451

`fo[A381627(n)]`
-/

namespace A381628.P9956936347767243451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381627 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A381628.P9956936347767243451

/-!
# A381633: Number of ways to partition the prime indices of n into sets with distinct sums.

The programs for A381633, there is no canonical definition to state claims against.
-/

/-! ## A381633.P17601702156727849240

`A054841(2^A381634(1+n))`
-/

namespace A381633.P17601702156727849240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A381634 (1 + n) : ℤ))).toNat

end

end A381633.P17601702156727849240

/-! ## A381633.P15710202740061659266

`A090882(2^A381634(n+1))`
-/

namespace A381633.P15710202740061659266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090882 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A381634 (n + 1) : ℤ))).toNat

end

end A381633.P15710202740061659266

/-! ## A381633.P16407513175893563455

`A304464(2^A381634(n+1))`
-/

namespace A381633.P16407513175893563455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A381634 (n + 1) : ℤ))).toNat

end

end A381633.P16407513175893563455

/-! ## A381633.P17664309277489751799

`A364818(2^A381634(1+n))`
-/

namespace A381633.P17664309277489751799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364818 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A381634 (1 + n) : ℤ))).toNat

end

end A381633.P17664309277489751799

/-! ## A381633.P7775253974962060502

`A257992(3^A381634(n+1))`
-/

namespace A381633.P7775253974962060502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A381634 (n + 1) : ℤ))).toNat

end

end A381633.P7775253974962060502

/-! ## A381633.P15977628595100676362

`A342001(3^A381634(n+1))`
-/

namespace A381633.P15977628595100676362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A381634 (n + 1) : ℤ))).toNat

end

end A381633.P15977628595100676362

/-! ## A381633.P16371408830716042450

`A000360(4^A381634(1+n))`
-/

namespace A381633.P16371408830716042450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A381634 (1 + n) : ℤ))).toNat

end

end A381633.P16371408830716042450

/-! ## A381633.P13246989293166351778

`A001222(5^A381634(n+1))`
-/

namespace A381633.P13246989293166351778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A381634 (n + 1) : ℤ))).toNat

end

end A381633.P13246989293166351778

/-! ## A381633.P9896899854066166651

`A381634(n+1)%A005030(n)`
-/

namespace A381633.P9896899854066166651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381634 (n + 1)) (A005030 n)

end

end A381633.P9896899854066166651

/-! ## A381633.P2067483637235947018

`and(A216616(n), A381634(n+1))`
-/

namespace A381633.P2067483637235947018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A216616 n) (A381634 (n + 1))

end

end A381633.P2067483637235947018

/-! ## A381633.P7773238884432264219

`and(A018886(n+1), A381634(n+1))`
-/

namespace A381633.P7773238884432264219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A381634 (n + 1))

end

end A381633.P7773238884432264219

/-! ## A381633.P8216964166511316082

`and(A198644(n), A381634(n+1))`
-/

namespace A381633.P8216964166511316082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198644 n) (A381634 (n + 1))

end

end A381633.P8216964166511316082

/-! ## A381633.P9823406822185361179

`A033630(A001359(n+1))*A381634(n+1)`
-/

namespace A381633.P9823406822185361179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A001359 (n + 1)).toNat * A381634 (n + 1)

end

end A381633.P9823406822185361179

/-! ## A381633.P10974224796606416196

`and(A164291(n+2), A381634(n+1))`
-/

namespace A381633.P10974224796606416196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164291 (n + 2)) (A381634 (n + 1))

end

end A381633.P10974224796606416196

/-! ## A381633.P8468500461085564118

`and(A060160(n+1), A381634(n+1))`
-/

namespace A381633.P8468500461085564118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A381634 (n + 1))

end

end A381633.P8468500461085564118

/-! ## A381633.P2738069938348391307

`and(A176953(n), A381634(n+1))`
-/

namespace A381633.P2738069938348391307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176953 n) (A381634 (n + 1))

end

end A381633.P2738069938348391307

/-! ## A381633.P1543412340277342018

`and(A135052(n), A381634(n+1))`
-/

namespace A381633.P1543412340277342018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135052 n) (A381634 (n + 1))

end

end A381633.P1543412340277342018

/-! ## A381633.P2600777503057061116

`and(A381634(n+1), A393533(n+1))`
-/

namespace A381633.P2600777503057061116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A381634 (n + 1)) (A393533 (n + 1))

end

end A381633.P2600777503057061116

/-! ## A381633.P6475553830406747703

`and(A035344(n), A381634(n+1))`
-/

namespace A381633.P6475553830406747703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035344 n) (A381634 (n + 1))

end

end A381633.P6475553830406747703

/-! ## A381633.P15405809735467459924

`A381634(n+1)%A002317(n)`
-/

namespace A381633.P15405809735467459924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381634 (n + 1)) (A002317 n)

end

end A381633.P15405809735467459924

/-!
# A381635: Number of ways to partition the prime indices of n into constant blocks with distinct sums.

The programs for A381635, there is no canonical definition to state claims against.
-/

/-! ## A381635.P1171023866993009403

`A386582(n+1)+A386575(A386573(3*n+2))`
-/

namespace A381635.P1171023866993009403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386582 (n + 1) + A386575 (A386573 (3 * n + 2)).toNat

end

end A381635.P1171023866993009403

/-! ## A381635.P1090403300386903423

`A052848(A270929(n+1)%∏{e}[n+1, #])`
-/

namespace A381635.P1090403300386903423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052848 (Int.tmod (A270929 (n + 1)) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A381635.P1090403300386903423

/-! ## A381635.P16064333183689043052

`A151863(A270929(n+1)%A072411(n+1))`
-/

namespace A381635.P16064333183689043052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 (Int.tmod (A270929 (n + 1)) (A072411 (n + 1))).toNat

end

end A381635.P16064333183689043052

/-! ## A381635.P12749583981576856958

`A328167(A294875(n+1))+A168185(n+1)`
-/

namespace A381635.P12749583981576856958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (A294875 (n + 1)).toNat + A168185 (n + 1)

end

end A381635.P12749583981576856958

/-! ## A381635.P9783936714930879420

`A196564(C(A072720(n), A370813(2*(n+1))))`
-/

namespace A381635.P9783936714930879420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (Nat.choose (A072720 n).toNat (A370813 (2 * (n + 1))).toNat)

end

end A381635.P9783936714930879420

/-!
# A381636: Numbers whose prime indices cannot be partitioned into constant blocks with distinct sums.

The programs for A381636, there is no canonical definition to state claims against.
-/

/-! ## A381636.P2151769447139468398

`eq[0, A381635(n+1)]+1`
-/

namespace A381636.P2151769447139468398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381636.P2151769447139468398

/-! ## A381636.P1749625737223643098

`lt[A381635(abs(1-n)+1), 1]`
-/

namespace A381636.P1749625737223643098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381635 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A381636.P1749625737223643098

/-! ## A381636.P16896892620508422621

`eq[0, A381635(A028310(n))]`
-/

namespace A381636.P16896892620508422621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381636.P16896892620508422621

/-! ## A381636.P6674558935197172916

`A113484(lt[A381635(n+1), 1])`
-/

namespace A381636.P6674558935197172916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381635 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A381636.P6674558935197172916

/-! ## A381636.P16703618812994073212

`A353839(lt[A089392(n+1), A225093(2*n+1)])`
-/

namespace A381636.P16703618812994073212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225093 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353839 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381636.P16703618812994073212

/-!
# A381637: Number of multisets that can be obtained by taking the sum of each block of a multiset partition of the prime indices of n into blocks with distinct sums.

The programs for A381637, there is no canonical definition to state claims against.
-/

/-! ## A381637.P13914496418534002629

`A000009(A056239(n+1)+1-A325799(n+1)-A054977(2*n+3))`
-/

namespace A381637.P13914496418534002629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A056239 (n + 1) + (1 - A325799 (n + 1)) - A054977 (2 * n + 3)).toNat

end

end A381637.P13914496418534002629

/-! ## A381637.P10725852991329600240

`abs(A081360(A304793(n+1)))%A113724(n+1)`
-/

namespace A381637.P10725852991329600240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A081360 (A304793 (n + 1)).toNat| (A113724 (n + 1))

end

end A381637.P10725852991329600240

/-! ## A381637.P16721370898828016366

`A000009(A304793(n+1))%A195939(n+1)`
-/

namespace A381637.P16721370898828016366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (A304793 (n + 1)).toNat) (A195939 (n + 1))

end

end A381637.P16721370898828016366

/-! ## A381637.P17873207176524877171

`A000009(A299701(n+1)-1)%A195939(n+1)`
-/

namespace A381637.P17873207176524877171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (A299701 (n + 1) - 1).toNat) (A195939 (n + 1))

end

end A381637.P17873207176524877171

/-! ## A381637.P14849339081695418783

`A100995(A381871(n+1))+A000009(A304793(n+1))`
-/

namespace A381637.P14849339081695418783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A381871 (n + 1)).toNat + A000009 (A304793 (n + 1)).toNat

end

end A381637.P14849339081695418783

/-! ## A381637.P12797317546077193254

`A000009(A299701(n+1)-A000009(n)^A151934(n))`
-/

namespace A381637.P12797317546077193254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway ((A299701 (n + 1) : ℚ) - (A000009 n : ℚ) ^ (A151934 n : ℤ))).toNat

end

end A381637.P12797317546077193254

/-! ## A381637.P18311288816576797873

`A154272(A381871(n+3))+A000009(A304793(n+1))`
-/

namespace A381637.P18311288816576797873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (A381871 (n + 3)).toNat + A000009 (A304793 (n + 1)).toNat

end

end A381637.P18311288816576797873

/-! ## A381637.P13292686060365937985

`A045778(A332297(n)^A304793(n+1))`
-/

namespace A381637.P13292686060365937985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((A332297 n : ℚ) ^ (A304793 (n + 1) : ℤ))).toNat

end

end A381637.P13292686060365937985

/-!
# A381638: Numerators of Sum_{i=1..omega(n)-1} p_{i}/p_{i+1}, where omega(n) = A001221(n) and p_1 < p_2 < ... p_omega(n) are the distinct prime factors of n; a(1) = 0.

The programs for A381638, there is no canonical definition to state claims against.
-/

/-! ## A381638.P7163754146151356327

`∑{p}[A051119(∏{d}[∏{p}[n+1, #], #]), #]`
-/

namespace A381638.P7163754146151356327
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A381638.P7163754146151356327

/-! ## A381638.P14342489853825190129

`A175834(A035321(n+1))`
-/

namespace A381638.P14342489853825190129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175834 (A035321 (n + 1)).toNat

end

end A381638.P14342489853825190129

/-! ## A381638.P2465798660532869003

`A105307(A166142(n+1))`
-/

namespace A381638.P2465798660532869003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105307 (A166142 (n + 1)).toNat

end

end A381638.P2465798660532869003

/-! ## A381638.P15537250806390884443

`A023645(A290479(n+1))`
-/

namespace A381638.P15537250806390884443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A290479 (n + 1)).toNat

end

end A381638.P15537250806390884443

/-! ## A381638.P17948502334930644098

`A137866(A183092(n+1))`
-/

namespace A381638.P17948502334930644098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137866 (A183092 (n + 1)).toNat

end

end A381638.P17948502334930644098

/-!
# A381639: Denominators of Sum_{i=1..omega(n)-1} p_{i}/p_{i+1}, where omega(n) = A001221(n) and p_1 < p_2 < ... p_omega(n) are the distinct prime factors of n; a(1) = 1.

The programs for A381639, there is no canonical definition to state claims against.
-/

/-! ## A381639.P11543010639731011502

`A028234(∏{p}[1+n, #])`
-/

namespace A381639.P11543010639731011502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381639.P11543010639731011502

/-! ## A381639.P14085355802136226379

`A032742(∏{p}[1+n, #])`
-/

namespace A381639.P14085355802136226379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381639.P14085355802136226379

/-! ## A381639.P12752245212472468380

`A052125(∏{p}[n+1, #])`
-/

namespace A381639.P12752245212472468380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381639.P12752245212472468380

/-! ## A381639.P7214280608522916703

`A089384(∏{p}[n+1, #])`
-/

namespace A381639.P7214280608522916703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381639.P7214280608522916703

/-! ## A381639.P18326370891500779435

`A093803(∏{p}[n+1, #])`
-/

namespace A381639.P18326370891500779435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381639.P18326370891500779435

/-! ## A381639.P12005922683252983545

`A302792(∏{p}[n+1, #])`
-/

namespace A381639.P12005922683252983545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381639.P12005922683252983545

/-! ## A381639.P17968288320119031558

`A028234(A007947(n+1))`
-/

namespace A381639.P17968288320119031558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A007947 (n + 1)).toNat

end

end A381639.P17968288320119031558

/-! ## A381639.P7081511567029776112

`A028234(A144907(n+1))`
-/

namespace A381639.P7081511567029776112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A144907 (n + 1)).toNat

end

end A381639.P7081511567029776112

/-! ## A381639.P17027471195229870181

`A028234(A334085(n+1))`
-/

namespace A381639.P17027471195229870181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A334085 (n + 1)).toNat

end

end A381639.P17027471195229870181

/-! ## A381639.P17488170092939144595

`A028234(A340679(n+1))`
-/

namespace A381639.P17488170092939144595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A340679 (n + 1)).toNat

end

end A381639.P17488170092939144595

/-! ## A381639.P17172847360158738722

`gcd(A028234(n+1), A144845(n))`
-/

namespace A381639.P17172847360158738722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028234 (n + 1)) (A144845 n)

end

end A381639.P17172847360158738722

/-! ## A381639.P17707027633668458039

`A007947(n+1)/A020639(n+1)`
-/

namespace A381639.P17707027633668458039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A381639.P17707027633668458039

/-! ## A381639.P18328204574629608768

`A028234((n+1)/A003557(n+1))`
-/

namespace A381639.P18328204574629608768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A381639.P18328204574629608768

/-! ## A381639.P9174088549558630675

`A032742((n+1)/A003557(n+1))`
-/

namespace A381639.P9174088549558630675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A381639.P9174088549558630675

/-! ## A381639.P14009400444864639493

`A028234(A064549(n+1)/(n+1))`
-/

namespace A381639.P14009400444864639493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A381639.P14009400444864639493

/-! ## A381639.P455980900496625213

`A130064(n+1)/A217434(n+1)`
-/

namespace A381639.P455980900496625213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130064 (n + 1) : ℚ) / (A217434 (n + 1) : ℚ)

end

end A381639.P455980900496625213

/-! ## A381639.P9267577597329382447

`A064549(n+1)/A285109(n+1)`
-/

namespace A381639.P9267577597329382447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A285109 (n + 1) : ℚ)

end

end A381639.P9267577597329382447

/-! ## A381639.P616180261903525875

`A093803(n+1)/A336651(n+1)`
-/

namespace A381639.P616180261903525875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093803 (n + 1) : ℚ) / (A336651 (n + 1) : ℚ)

end

end A381639.P616180261903525875

/-! ## A381639.P16257334504093979254

`A089384(A007947(2*n+1-n))`
-/

namespace A381639.P16257334504093979254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (A007947 (2 * n + 1 - n)).toNat

end

end A381639.P16257334504093979254

/-!
# A381640: Numbers k such that f(k) > f(m) for all m < k, where f(k) = A381638(k)/A381639(k).

The programs for A381640, there is no canonical definition to state claims against.
-/

/-! ## A381640.P1707881832801643619

`record[A007913(A278253(3*n+1))]`
-/

namespace A381640.P1707881832801643619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A278253 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381640.P1707881832801643619

/-! ## A381640.P14556657552170050226

`A356309(A001700(n))/A001222(2*n+3)`
-/

namespace A381640.P14556657552170050226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356309 (A001700 n).toNat : ℚ) / (A001222 (2 * n + 3) : ℚ)

end

end A381640.P14556657552170050226

/-! ## A381640.P12185816721645670852

`A034386(2*n+1)/A359233(sqrt(A002894(n)))`
-/

namespace A381640.P12185816721645670852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * n + 1) : ℚ) / (A359233 (SequenceMachineLib.roundAway (Real.sqrt (A002894 n : ℝ))).toNat : ℚ)

end

end A381640.P12185816721645670852

/-! ## A381640.P5028209336941409316

`A034386(2*n+1)/A359233(A068555(∑[n]))`
-/

namespace A381640.P5028209336941409316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * n + 1) : ℚ) / (A359233 (A068555 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ)

end

end A381640.P5028209336941409316

/-!
# A381641: Numerators of Sum_{i=1..omega(n)-1} (1 - p_{i}/p_{i+1}), where omega(n) = A001221(n) and p_1 < p_2 < ... p_omega(n) are the distinct prime factors of n; a(1) = 0.

The programs for A381641, there is no canonical definition to state claims against.
-/

/-! ## A381641.P11698998015222545552

`A328260(A032742(∏{p}[n+1, #]))-A381638(n+1)`
-/

namespace A381641.P11698998015222545552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (A032742 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat - A381638 (n + 1)

end

end A381641.P11698998015222545552

/-! ## A381641.P11699082501105972373

`A328260(A302792(∏{p}[n+1, #]))-A381638(n+1)`
-/

namespace A381641.P11699082501105972373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (A302792 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat - A381638 (n + 1)

end

end A381641.P11699082501105972373

/-! ## A381641.P16502526395795802178

`A328260(A007947(n+1)/A020639(n+1))-A381638(n+1)`
-/

namespace A381641.P16502526395795802178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ))).toNat - A381638 (n + 1)

end

end A381641.P16502526395795802178

/-! ## A381641.P16590236901354854431

`A328260(A130064(n+1)/A217434(n+1))-A381638(n+1)`
-/

namespace A381641.P16590236901354854431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (SequenceMachineLib.roundAway ((A130064 (n + 1) : ℚ) / (A217434 (n + 1) : ℚ))).toNat - A381638 (n + 1)

end

end A381641.P16590236901354854431

/-! ## A381641.P10665650903787170373

`A143201(n+1)*A323022(A072345(n)+1)-1`
-/

namespace A381641.P10665650903787170373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143201 (n + 1) * A323022 (A072345 n + 1).toNat - 1

end

end A381641.P10665650903787170373

/-!
# A381642: Numbers k such that F(k) > F(m) for all m < k, where F(k) = A381641(k)/A381639(k).

The programs for A381642, there is no canonical definition to state claims against.
-/

/-! ## A381642.P6809752065047317427

`record[A360014(n+1)%A127818(3*n+4)]`
-/

namespace A381642.P6809752065047317427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360014 (n + 1)) (A127818 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381642.P6809752065047317427

/-! ## A381642.P8550625368973304695

`record[∏{p}[A324846(n+1)*A000079(n), #]]`
-/

namespace A381642.P8550625368973304695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324846 (n + 1) * A000079 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381642.P8550625368973304695

/-! ## A381642.P18039173772082140790

`or(A040000(A001047(n)), A312683(n))`
-/

namespace A381642.P18039173772082140790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040000 (A001047 n).toNat) (A312683 n)

end

end A381642.P18039173772082140790

/-! ## A381642.P8836444161450433003

`or(A040000(A003462(n)), A312683(n))`
-/

namespace A381642.P8836444161450433003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040000 (A003462 n).toNat) (A312683 n)

end

end A381642.P8836444161450433003

/-! ## A381642.P91735072080725137

`lcm(A057079(A003462(n)), A285516(n+1))`
-/

namespace A381642.P91735072080725137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057079 (A003462 n).toNat) (A285516 (n + 1))

end

end A381642.P91735072080725137

/-!
# A381643: a(n) = 4^n - (n+6)*3^(n-1) + (n+2)*2^(n-1).

The programs for A381643, the canonical program `A381643.P15251747161541549725` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381643 has offset 0).

The definition of A381643 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A381643.anchor (n : ℕ) : (A381643 n : ℚ) = (4 ^ n : ℚ) - (n + 6 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A381.A381643`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381643.P15251747161541549725

`4^n-(n+6)*3^(n-1)+(n+2)*2^(n-1)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381643

/-- `4^n-(n+6)*3^(n-1)+(n+2)*2^(n-1)` -/
def P15251747161541549725.Spec : Prop :=
  ∀ n, P15251747161541549725.a n = (A381643 n : ℚ)

end A381643

/-! ## A381643.P14877983747414281856

`∑{#}[n-1, C(n, #)*A066810(#)]`
-/

namespace A381643.P14877983747414281856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n k : ℤ) * A066810 k

end

end A381643.P14877983747414281856

namespace A381643

/-- `∑{#}[n-1, C(n, #)*A066810(#)]` -/
def P14877983747414281856.Spec : Prop :=
  ∀ n, P14877983747414281856.a n = A381643 n

end A381643

/-!
# A381645: a(n) is the largest integer with distinct digits whose digital sum is n.

The programs for A381645, there is no canonical definition to state claims against.
-/

/-! ## A381645.P727825506246455872

`record[A320486(5*(2*a(floor(n/2))-(-1)^n+1))]` with `a(0)=0, a(1)=0`
-/

namespace A381645.P727825506246455872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A320486 (5 * (2 * f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381645.P727825506246455872

/-! ## A381645.P16854008701617866081

`A121030(n+1)%A062997(A090566(n+1))`
-/

namespace A381645.P16854008701617866081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121030 (n + 1)) (A062997 (A090566 (n + 1)).toNat)

end

end A381645.P16854008701617866081

/-!
# A381646: a(n) = 4^n - 2*3^(n-1)*(n+3) + 2^(n-2)*(n^2+3*n+4).

The programs for A381646, the canonical program `A381646.P15911829975580760538` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381646 has offset 0).

The definition of A381646 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A381646.anchor (n : ℕ) : (A381646 n : ℚ) = (4 ^ n : ℚ) - 2 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 3 : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n ^ 2 + 3 * n + 4 : ℚ)` in `Proof.A381.A381646`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381646.P15911829975580760538

`4^n-2*3^(n-1)*(n+3)+2^(n-2)*(n²+3*n+4)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381646

/-- `4^n-2*3^(n-1)*(n+3)+2^(n-2)*(n²+3*n+4)` -/
def P15911829975580760538.Spec : Prop :=
  ∀ n, P15911829975580760538.a n = (A381646 n : ℚ)

end A381646

/-! ## A381646.P8643486330716120304

`∑{#}[n-2, C(n, #)*A066810(#)]`
-/

namespace A381646.P8643486330716120304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n k : ℤ) * A066810 k

end

end A381646.P8643486330716120304

namespace A381646

/-- `∑{#}[n-2, C(n, #)*A066810(#)]` -/
def P8643486330716120304.Spec : Prop :=
  ∀ n, P8643486330716120304.a n = A381646 n

end A381646

/-! ## A381646.P1588431276781550192

`∑{#}[n, (-1)^(n-#)*C(n, #)*A385329(#)]`
-/

namespace A381646.P1588431276781550192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A385329 k : ℚ)

end

end A381646.P1588431276781550192

namespace A381646

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A385329(#)]` -/
def P1588431276781550192.Spec : Prop :=
  ∀ n, P1588431276781550192.a n = (A381646 n : ℚ)

end A381646

/-! ## A381646.P17851162784763107386

`A024687(A010051(3*n+2)+A001181(n)+1)`
-/

namespace A381646.P17851162784763107386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024687 (A010051 (3 * n + 2) + A001181 n + 1).toNat

end

end A381646.P17851162784763107386

namespace A381646

/-- `A024687(A010051(3*n+2)+A001181(n)+1)` -/
def P17851162784763107386.Spec : Prop :=
  ∀ n, P17851162784763107386.a n = A381646 n

end A381646

/-!
# A381647: Centered triangular numbers that are deficient.

The programs for A381647, the canonical program `A381647.P5619524931606545096` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381647 has offset 1).

The definition of A381647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381647.P5619524931606545096

`filter[3*n+a(n-1), A294934(#)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381647

/-- `filter[3*n+a(n-1), A294934(#)]` -/
def P5619524931606545096.Spec : Prop :=
  ∀ n, (P5619524931606545096.a n : ℤ) = A381647 (n + 1)

theorem P5619524931606545096.correct : P5619524931606545096.Spec := by
  intro n
  simp only [A381647, Nat.add_sub_cancel]

end A381647

/-! ## A381647.P7613397348278430498

`record[A125746(A005448(n+1))]`
-/

namespace A381647.P7613397348278430498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A005448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381647.P7613397348278430498

namespace A381647

/-- `record[A125746(A005448(n+1))]` -/
def P7613397348278430498.Spec : Prop :=
  ∀ n, P7613397348278430498.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P9510870777763370364

`filter[A005448(1+n), A294934(#)]`
-/

namespace A381647.P9510870777763370364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381647.P9510870777763370364

namespace A381647

/-- `filter[A005448(1+n), A294934(#)]` -/
def P9510870777763370364.Spec : Prop :=
  ∀ n, P9510870777763370364.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P3460377138733533257

`filter[A005448(1+n), A294935(#)]`
-/

namespace A381647.P3460377138733533257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381647.P3460377138733533257

namespace A381647

/-- `filter[A005448(1+n), A294935(#)]` -/
def P3460377138733533257.Spec : Prop :=
  ∀ n, P3460377138733533257.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P11650751497585147830

`record[A125746(A005449(n)+n+1)]`
-/

namespace A381647.P11650751497585147830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A005449 n + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381647.P11650751497585147830

namespace A381647

/-- `record[A125746(A005449(n)+n+1)]` -/
def P11650751497585147830.Spec : Prop :=
  ∀ n, P11650751497585147830.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P4455562807702725218

`filter[A181482(3*n+1), A294934(#)]`
-/

namespace A381647.P4455562807702725218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181482 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381647.P4455562807702725218

namespace A381647

/-- `filter[A181482(3*n+1), A294934(#)]` -/
def P4455562807702725218.Spec : Prop :=
  ∀ n, P4455562807702725218.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P1516989142320291958

`filter[A181482(3*n+1), A294935(#)]`
-/

namespace A381647.P1516989142320291958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181482 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381647.P1516989142320291958

namespace A381647

/-- `filter[A181482(3*n+1), A294935(#)]` -/
def P1516989142320291958.Spec : Prop :=
  ∀ n, P1516989142320291958.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P6896763421186734549

`filter[A222591(3*(n+1)), A294934(#)]`
-/

namespace A381647.P6896763421186734549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222591 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381647.P6896763421186734549

namespace A381647

/-- `filter[A222591(3*(n+1)), A294934(#)]` -/
def P6896763421186734549.Spec : Prop :=
  ∀ n, P6896763421186734549.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P13745998610085933841

`filter[A222591(3*(n+1)), A294935(#)]`
-/

namespace A381647.P13745998610085933841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222591 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381647.P13745998610085933841

namespace A381647

/-- `filter[A222591(3*(n+1)), A294935(#)]` -/
def P13745998610085933841.Spec : Prop :=
  ∀ n, P13745998610085933841.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P10526653534777369486

`filter[A239438(3*n+1), A294934(#)]`
-/

namespace A381647.P10526653534777369486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239438 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381647.P10526653534777369486

namespace A381647

/-- `filter[A239438(3*n+1), A294934(#)]` -/
def P10526653534777369486.Spec : Prop :=
  ∀ n, P10526653534777369486.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P3688825985512555539

`filter[A239438(3*n+1), A294935(#)]`
-/

namespace A381647.P3688825985512555539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239438 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A381647.P3688825985512555539

namespace A381647

/-- `filter[A239438(3*n+1), A294935(#)]` -/
def P3688825985512555539.Spec : Prop :=
  ∀ n, P3688825985512555539.a n = A381647 (n + 1)

end A381647

/-! ## A381647.P16232227288932755300

`record[A125746(A016777(∑[n]-n))]`
-/

namespace A381647.P16232227288932755300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A016777 (∑ j ∈ Finset.range (n + 1), f2 j - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381647.P16232227288932755300

namespace A381647

/-- `record[A125746(A016777(∑[n]-n))]` -/
def P16232227288932755300.Spec : Prop :=
  ∀ n, P16232227288932755300.a n = A381647 (n + 1)

end A381647

/-!
# A381648: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A381649.

The programs for A381648, there is no canonical definition to state claims against.
-/

/-! ## A381648.P10110216266087902480

`A072088(A381592(n))+A058494(A327622(n))`
-/

namespace A381648.P10110216266087902480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A381592 n).toNat + A058494 (A327622 n).toNat

end

end A381648.P10110216266087902480

/-! ## A381648.P16310233592943218024

`A072088(A384718(n))-A211020(A379168(n))`
-/

namespace A381648.P16310233592943218024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A384718 n).toNat - A211020 (A379168 n).toNat

end

end A381648.P16310233592943218024

/-! ## A381648.P13049884032251861445

`A262040(A384718(n)%A002234(2*(n+2)))`
-/

namespace A381648.P13049884032251861445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262040 (Int.tmod (A384718 n) (A002234 (2 * (n + 2)))).toNat

end

end A381648.P13049884032251861445

/-! ## A381648.P5853587495382571031

`A381592(n)+A057354(A185213(n))`
-/

namespace A381648.P5853587495382571031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381592 n + A057354 (A185213 n).toNat

end

end A381648.P5853587495382571031

/-!
# A381649: G.f. A(x) satisfies A(x) = 1 + x * A(x)^2 * A(x*A(x)^3)^3.

The programs for A381649, there is no canonical definition to state claims against.
-/

/-! ## A381649.P13104529020121425010

`A381648(∑[n+1]+n)`
-/

namespace A381649.P13104529020121425010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381648 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A381649.P13104529020121425010

/-!
# A381650: Pentagonal numbers which are products of three distinct primes.

The programs for A381650, there is no canonical definition to state claims against.
-/

/-! ## A381650.P10711839245825635759

`filter[A000326(1+n), A354926(#)]`
-/

namespace A381650.P10711839245825635759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381650.P10711839245825635759

/-! ## A381650.P15702616726441576208

`filter[A027626(3*n), A354926(#)]`
-/

namespace A381650.P15702616726441576208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381650.P15702616726441576208

/-! ## A381650.P15267632313686722539

`filter[A236343(3*n), A354926(#)]`
-/

namespace A381650.P15267632313686722539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236343 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381650.P15267632313686722539

/-! ## A381650.P5236517214111384489

`filter[A001318(1+2*n), A354926(#)]`
-/

namespace A381650.P5236517214111384489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (1 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381650.P5236517214111384489

/-! ## A381650.P10483446415731490131

`filter[A282513(2*n+1), A354926(#)]`
-/

namespace A381650.P10483446415731490131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282513 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381650.P10483446415731490131

/-! ## A381650.P8135027854348207562

`filter[A188623(3*n+1), A354926(#)]`
-/

namespace A381650.P8135027854348207562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188623 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381650.P8135027854348207562

/-! ## A381650.P16556282706019254967

`filter[A211004(3*n+1), A354926(#)]`
-/

namespace A381650.P16556282706019254967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381650.P16556282706019254967

/-! ## A381650.P15794550889513645336

`filter[A287195(3*n+1), A354926(#)]`
-/

namespace A381650.P15794550889513645336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287195 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A381650.P15794550889513645336

/-!
# A381659: Index where n first appears in A381658.

The programs for A381659, there is no canonical definition to state claims against.
-/

/-! ## A381659.P352312417230434658

`fp[A381658(n+1)]+1`
-/

namespace A381659.P352312417230434658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A381659.P352312417230434658

/-!
# A381661: Primes p such that the first period of the decimal expansion of 1 / p contains no digits of p as many times they are contained in p.

The programs for A381661, there is no canonical definition to state claims against.
-/

/-! ## A381661.P4461950593552977870

`A187614(A001104(n+1)+A000720(n+1))`
-/

namespace A381661.P4461950593552977870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187614 (A001104 (n + 1) + A000720 (n + 1)).toNat

end

end A381661.P4461950593552977870

/-!
# A381662: a(n) = A378684(A380200(n)).

The programs for A381662, the canonical program `A381662.P10694874540695759361` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381662 has offset 1).

The definition of A381662 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, A380200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A381662.P10694874540695759361

`A378684(A380200(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A381662

/-- `A378684(A380200(n+1))` -/
def P10694874540695759361.Spec : Prop :=
  ∀ n, P10694874540695759361.a n = A381662 (n + 1)

theorem P10694874540695759361.correct : P10694874540695759361.Spec := by
  intro n
  simp only [A381662, Nat.add_sub_cancel]

end A381662

/-! ## A381662.P4885790310179265989

`A381968(A381968(n+1))`
-/

namespace A381662.P4885790310179265989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A381968 (n + 1)).toNat

end

end A381662.P4885790310179265989

namespace A381662

/-- `A381968(A381968(n+1))` -/
def P4885790310179265989.Spec : Prop :=
  ∀ n, P4885790310179265989.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P1685735762745578727

`A383723(A056023(1+n))`
-/

namespace A381662.P1685735762745578727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A056023 (1 + n)).toNat

end

end A381662.P1685735762745578727

namespace A381662

/-- `A383723(A056023(1+n))` -/
def P1685735762745578727.Spec : Prop :=
  ∀ n, P1685735762745578727.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P1339085125048526561

`A380817(A376214(n+1))`
-/

namespace A381662.P1339085125048526561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A376214 (n + 1)).toNat

end

end A381662.P1339085125048526561

namespace A381662

/-- `A380817(A376214(n+1))` -/
def P1339085125048526561.Spec : Prop :=
  ∀ n, P1339085125048526561.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P3433881515611547553

`A379343(A379342(n+1))`
-/

namespace A381662.P3433881515611547553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A379342 (n + 1)).toNat

end

end A381662.P3433881515611547553

namespace A381662

/-- `A379343(A379342(n+1))` -/
def P3433881515611547553.Spec : Prop :=
  ∀ n, P3433881515611547553.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P9185020699949292737

`A380815(A378684(n+1))`
-/

namespace A381662.P9185020699949292737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A378684 (n + 1)).toNat

end

end A381662.P9185020699949292737

namespace A381662

/-- `A380815(A378684(n+1))` -/
def P9185020699949292737.Spec : Prop :=
  ∀ n, P9185020699949292737.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P3014377518227174175

`A380245(A379343(n+1))`
-/

namespace A381662.P3014377518227174175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A379343 (n + 1)).toNat

end

end A381662.P3014377518227174175

namespace A381662

/-- `A380245(A379343(n+1))` -/
def P3014377518227174175.Spec : Prop :=
  ∀ n, P3014377518227174175.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P13362359557936851283

`A379342(A381663(n+1))`
-/

namespace A381662.P13362359557936851283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A381663 (n + 1)).toNat

end

end A381662.P13362359557936851283

namespace A381662

/-- `A379342(A381663(n+1))` -/
def P13362359557936851283.Spec : Prop :=
  ∀ n, P13362359557936851283.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P8925353277285791524

`A380200(A381664(n+1))`
-/

namespace A381662.P8925353277285791524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A381664 (n + 1)).toNat

end

end A381662.P8925353277285791524

namespace A381662

/-- `A380200(A381664(n+1))` -/
def P8925353277285791524.Spec : Prop :=
  ∀ n, P8925353277285791524.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P6255908630719850919

`A381663(A380245(n+1))`
-/

namespace A381662.P6255908630719850919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A380245 (n + 1)).toNat

end

end A381662.P6255908630719850919

namespace A381662

/-- `A381663(A380245(n+1))` -/
def P6255908630719850919.Spec : Prop :=
  ∀ n, P6255908630719850919.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P14125311399343273706

`A383589(A378762(n+1))`
-/

namespace A381662.P14125311399343273706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A378762 (n + 1)).toNat

end

end A381662.P14125311399343273706

namespace A381662

/-- `A383589(A378762(n+1))` -/
def P14125311399343273706.Spec : Prop :=
  ∀ n, P14125311399343273706.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P7585032473275556149

`A381664(A380815(n+1))`
-/

namespace A381662.P7585032473275556149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A380815 (n + 1)).toNat

end

end A381662.P7585032473275556149

namespace A381662

/-- `A381664(A380815(n+1))` -/
def P7585032473275556149.Spec : Prop :=
  ∀ n, P7585032473275556149.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P3271613877864976563

`A382499(A382499(n+1))`
-/

namespace A381662.P3271613877864976563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A382499 (n + 1)).toNat

end

end A381662.P3271613877864976563

namespace A381662

/-- `A382499(A382499(n+1))` -/
def P3271613877864976563.Spec : Prop :=
  ∀ n, P3271613877864976563.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P8224011242532087218

`A382680(A382679(n+1))`
-/

namespace A381662.P8224011242532087218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A382679 (n + 1)).toNat

end

end A381662.P8224011242532087218

namespace A381662

/-- `A382680(A382679(n+1))` -/
def P8224011242532087218.Spec : Prop :=
  ∀ n, P8224011242532087218.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P12659869651929304097

`A383419(A383419(n+1))`
-/

namespace A381662.P12659869651929304097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A383419 (n + 1)).toNat

end

end A381662.P12659869651929304097

namespace A381662

/-- `A383419(A383419(n+1))` -/
def P12659869651929304097.Spec : Prop :=
  ∀ n, P12659869651929304097.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P10614841517376254543

`A383590(A383590(n+1))`
-/

namespace A381662.P10614841517376254543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A383590 (n + 1)).toNat

end

end A381662.P10614841517376254543

namespace A381662

/-- `A383590(A383590(n+1))` -/
def P10614841517376254543.Spec : Prop :=
  ∀ n, P10614841517376254543.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P4342849312699613572

`A383724(A383722(n+1))`
-/

namespace A381662.P4342849312699613572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A383722 (n + 1)).toNat

end

end A381662.P4342849312699613572

namespace A381662

/-- `A383724(A383722(n+1))` -/
def P4342849312699613572.Spec : Prop :=
  ∀ n, P4342849312699613572.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P15448288279960293859

`A378705(A376214(A378200(n+1)))`
-/

namespace A381662.P15448288279960293859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A376214 (A378200 (n + 1)).toNat).toNat

end

end A381662.P15448288279960293859

namespace A381662

/-- `A378705(A376214(A378200(n+1)))` -/
def P15448288279960293859.Spec : Prop :=
  ∀ n, P15448288279960293859.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P9893381086844764290

`A379343(A378705(A378705(n+1)))`
-/

namespace A381662.P9893381086844764290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A378705 (A378705 (n + 1)).toNat).toNat

end

end A381662.P9893381086844764290

namespace A381662

/-- `A379343(A378705(A378705(n+1)))` -/
def P9893381086844764290.Spec : Prop :=
  ∀ n, P9893381086844764290.a n = A381662 (n + 1)

end A381662

/-! ## A381662.P10700252351878302543

`A378684(A380245(A380817(n+1)))`
-/

namespace A381662.P10700252351878302543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A380245 (A380817 (n + 1)).toNat).toNat

end

end A381662.P10700252351878302543

namespace A381662

/-- `A378684(A380245(A380817(n+1)))` -/
def P10700252351878302543.Spec : Prop :=
  ∀ n, P10700252351878302543.a n = A381662 (n + 1)

end A381662

/-!
# A381663: a(n) = A379342(A380200(n)).

The programs for A381663, the canonical program `A381663.P16788385678913292681` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381663 has offset 1).

The definition of A381663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379342, A380200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A381663.P16788385678913292681

`A379342(A380200(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A381663

/-- `A379342(A380200(n+1))` -/
def P16788385678913292681.Spec : Prop :=
  ∀ n, P16788385678913292681.a n = A381663 (n + 1)

theorem P16788385678913292681.correct : P16788385678913292681.Spec := by
  intro n
  simp only [A381663, Nat.add_sub_cancel]

end A381663

/-! ## A381663.P1760759550516934588

`fo[A380815(n+1)-1]+1`
-/

namespace A381663.P1760759550516934588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A381663.P1760759550516934588

namespace A381663

/-- `fo[A380815(n+1)-1]+1` -/
def P1760759550516934588.Spec : Prop :=
  ∀ n, (P1760759550516934588.a n : ℤ) = A381663 (n + 1)

end A381663

/-! ## A381663.P16011326807106348573

`A056023(A378705(n+1))`
-/

namespace A381663.P16011326807106348573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A378705 (n + 1)).toNat

end

end A381663.P16011326807106348573

namespace A381663

/-- `A056023(A378705(n+1))` -/
def P16011326807106348573.Spec : Prop :=
  ∀ n, P16011326807106348573.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P10309249945135140382

`A376214(A379343(n+1))`
-/

namespace A381663.P10309249945135140382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A379343 (n + 1)).toNat

end

end A381663.P10309249945135140382

namespace A381663

/-- `A376214(A379343(n+1))` -/
def P10309249945135140382.Spec : Prop :=
  ∀ n, P10309249945135140382.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P7250513035557489693

`A381664(A376214(n+1))`
-/

namespace A381663.P7250513035557489693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A376214 (n + 1)).toNat

end

end A381663.P7250513035557489693

namespace A381663

/-- `A381664(A376214(n+1))` -/
def P7250513035557489693.Spec : Prop :=
  ∀ n, P7250513035557489693.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P10980188233023538836

`A380817(A378684(n+1))`
-/

namespace A381663.P10980188233023538836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A378684 (n + 1)).toNat

end

end A381663.P10980188233023538836

namespace A381663

/-- `A380817(A378684(n+1))` -/
def P10980188233023538836.Spec : Prop :=
  ∀ n, P10980188233023538836.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P9516881720917219729

`A380245(A379342(n+1))`
-/

namespace A381663.P9516881720917219729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A379342 (n + 1)).toNat

end

end A381663.P9516881720917219729

namespace A381663

/-- `A380245(A379342(n+1))` -/
def P9516881720917219729.Spec : Prop :=
  ∀ n, P9516881720917219729.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P3450986404058701104

`A379343(A380817(n+1))`
-/

namespace A381663.P3450986404058701104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A380817 (n + 1)).toNat

end

end A381663.P3450986404058701104

namespace A381663

/-- `A379343(A380817(n+1))` -/
def P3450986404058701104.Spec : Prop :=
  ∀ n, P3450986404058701104.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P8147889147025382447

`A378684(A381662(n+1))`
-/

namespace A381663.P8147889147025382447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381662 (n + 1)).toNat

end

end A381663.P8147889147025382447

namespace A381663

/-- `A378684(A381662(n+1))` -/
def P8147889147025382447.Spec : Prop :=
  ∀ n, P8147889147025382447.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P2911752167772814744

`A380200(A380245(n+1))`
-/

namespace A381663.P2911752167772814744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A380245 (n + 1)).toNat

end

end A381663.P2911752167772814744

namespace A381663

/-- `A380200(A380245(n+1))` -/
def P2911752167772814744.Spec : Prop :=
  ∀ n, P2911752167772814744.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P7162452636080155782

`A380815(A380815(n+1))`
-/

namespace A381663.P7162452636080155782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A380815 (n + 1)).toNat

end

end A381663.P7162452636080155782

namespace A381663

/-- `A380815(A380815(n+1))` -/
def P7162452636080155782.Spec : Prop :=
  ∀ n, P7162452636080155782.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P8279971640830924966

`A378705(A383589(n+1))`
-/

namespace A381663.P8279971640830924966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A383589 (n + 1)).toNat

end

end A381663.P8279971640830924966

namespace A381663

/-- `A378705(A383589(n+1))` -/
def P8279971640830924966.Spec : Prop :=
  ∀ n, P8279971640830924966.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P16157936882579832848

`A381662(A381664(n+1))`
-/

namespace A381663.P16157936882579832848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A381664 (n + 1)).toNat

end

end A381663.P16157936882579832848

namespace A381663

/-- `A381662(A381664(n+1))` -/
def P16157936882579832848.Spec : Prop :=
  ∀ n, P16157936882579832848.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P9442950900703283989

`A056023(A381664(A056023(n+1)))`
-/

namespace A381663.P9442950900703283989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A381664 (A056023 (n + 1)).toNat).toNat

end

end A381663.P9442950900703283989

namespace A381663

/-- `A056023(A381664(A056023(n+1)))` -/
def P9442950900703283989.Spec : Prop :=
  ∀ n, P9442950900703283989.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P13322225220046968804

`A380200(A056023(A378200(n+1)))`
-/

namespace A381663.P13322225220046968804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A056023 (A378200 (n + 1)).toNat).toNat

end

end A381663.P13322225220046968804

namespace A381663

/-- `A380200(A056023(A378200(n+1)))` -/
def P13322225220046968804.Spec : Prop :=
  ∀ n, P13322225220046968804.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P13708081653475761188

`A378684(A056023(A383723(n+1)))`
-/

namespace A381663.P13708081653475761188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A056023 (A383723 (n + 1)).toNat).toNat

end

end A381663.P13708081653475761188

namespace A381663

/-- `A378684(A056023(A383723(n+1)))` -/
def P13708081653475761188.Spec : Prop :=
  ∀ n, P13708081653475761188.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P6655121318269428056

`A378200(A380200(A378762(n+1)))`
-/

namespace A381663.P6655121318269428056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A380200 (A378762 (n + 1)).toNat).toNat

end

end A381663.P6655121318269428056

namespace A381663

/-- `A378200(A380200(A378762(n+1)))` -/
def P6655121318269428056.Spec : Prop :=
  ∀ n, P6655121318269428056.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P10789559983543319369

`A378684(A381968(A381968(n+1)))`
-/

namespace A381663.P10789559983543319369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381968 (A381968 (n + 1)).toNat).toNat

end

end A381663.P10789559983543319369

namespace A381663

/-- `A378684(A381968(A381968(n+1)))` -/
def P10789559983543319369.Spec : Prop :=
  ∀ n, P10789559983543319369.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P13734099455582715490

`A378684(A382499(A382499(n+1)))`
-/

namespace A381663.P13734099455582715490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A382499 (A382499 (n + 1)).toNat).toNat

end

end A381663.P13734099455582715490

namespace A381663

/-- `A378684(A382499(A382499(n+1)))` -/
def P13734099455582715490.Spec : Prop :=
  ∀ n, P13734099455582715490.a n = A381663 (n + 1)

end A381663

/-! ## A381663.P5768762915906467241

`A379343(A381968(A382679(n+1)))`
-/

namespace A381663.P5768762915906467241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A381968 (A382679 (n + 1)).toNat).toNat

end

end A381663.P5768762915906467241

namespace A381663

/-- `A379343(A381968(A382679(n+1)))` -/
def P5768762915906467241.Spec : Prop :=
  ∀ n, P5768762915906467241.a n = A381663 (n + 1)

end A381663

/-!
# A381664: a(n) = A380200(A379342(n)).

The programs for A381664, the canonical program `A381664.P17133759747871015799` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381664 has offset 1).

The definition of A381664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381664.P7743488609824625521

`A380200(A379342(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A381664.P7743488609824625521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A379342 (n + 1)).toNat

end

end A381664.P7743488609824625521

namespace A381664

/-- `A380200(A379342(n+1))` -/
def P7743488609824625521.Spec : Prop :=
  ∀ n, P7743488609824625521.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P2597751612222481064

`fo[A380245(n+1)-1]+1`
-/

namespace A381664.P2597751612222481064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A381664.P2597751612222481064

namespace A381664

/-- `fo[A380245(n+1)-1]+1` -/
def P2597751612222481064.Spec : Prop :=
  ∀ n, (P2597751612222481064.a n : ℤ) = A381664 (n + 1)

end A381664

/-! ## A381664.P17133759747871015799

`A210521(A209293(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A381664

/-- `A210521(A209293(n+1))` -/
def P17133759747871015799.Spec : Prop :=
  ∀ n, P17133759747871015799.a n = A381664 (n + 1)

theorem P17133759747871015799.correct : P17133759747871015799.Spec := by
  intro n
  simp only [A381664, Nat.add_sub_cancel]

end A381664

/-! ## A381664.P10408285700233216667

`A378705(A056023(1+n))`
-/

namespace A381664.P10408285700233216667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A056023 (1 + n)).toNat

end

end A381664.P10408285700233216667

namespace A381664

/-- `A378705(A056023(1+n))` -/
def P10408285700233216667.Spec : Prop :=
  ∀ n, P10408285700233216667.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P6231539775279685593

`A376214(A378684(n+1))`
-/

namespace A381664.P6231539775279685593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A378684 (n + 1)).toNat

end

end A381664.P6231539775279685593

namespace A381664

/-- `A376214(A378684(n+1))` -/
def P6231539775279685593.Spec : Prop :=
  ∀ n, P6231539775279685593.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P10352198316809896746

`A381663(A376214(n+1))`
-/

namespace A381664.P10352198316809896746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A376214 (n + 1)).toNat

end

end A381664.P10352198316809896746

namespace A381664

/-- `A381663(A376214(n+1))` -/
def P10352198316809896746.Spec : Prop :=
  ∀ n, P10352198316809896746.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P8275377099220097567

`A378684(A380817(n+1))`
-/

namespace A381664.P8275377099220097567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A380817 (n + 1)).toNat

end

end A381664.P8275377099220097567

namespace A381664

/-- `A378684(A380817(n+1))` -/
def P8275377099220097567.Spec : Prop :=
  ∀ n, P8275377099220097567.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P8672363645195093144

`A379342(A380815(n+1))`
-/

namespace A381664.P8672363645195093144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A380815 (n + 1)).toNat

end

end A381664.P8672363645195093144

namespace A381664

/-- `A379342(A380815(n+1))` -/
def P8672363645195093144.Spec : Prop :=
  ∀ n, P8672363645195093144.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P7706592268556496544

`A380817(A379343(n+1))`
-/

namespace A381664.P7706592268556496544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A379343 (n + 1)).toNat

end

end A381664.P7706592268556496544

namespace A381664

/-- `A380817(A379343(n+1))` -/
def P7706592268556496544.Spec : Prop :=
  ∀ n, P7706592268556496544.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P4735976128539000152

`A380245(A380245(n+1))`
-/

namespace A381664.P4735976128539000152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A380245 (n + 1)).toNat

end

end A381664.P4735976128539000152

namespace A381664

/-- `A380245(A380245(n+1))` -/
def P4735976128539000152.Spec : Prop :=
  ∀ n, P4735976128539000152.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P3822786301525939933

`A379343(A381662(n+1))`
-/

namespace A381664.P3822786301525939933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A381662 (n + 1)).toNat

end

end A381664.P3822786301525939933

namespace A381664

/-- `A379343(A381662(n+1))` -/
def P3822786301525939933.Spec : Prop :=
  ∀ n, P3822786301525939933.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P998554206100903057

`A380815(A380200(n+1))`
-/

namespace A381664.P998554206100903057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A380200 (n + 1)).toNat

end

end A381664.P998554206100903057

namespace A381664

/-- `A380815(A380200(n+1))` -/
def P998554206100903057.Spec : Prop :=
  ∀ n, P998554206100903057.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P7919372331265254948

`A383723(A378705(n+1))`
-/

namespace A381664.P7919372331265254948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A378705 (n + 1)).toNat

end

end A381664.P7919372331265254948

namespace A381664

/-- `A383723(A378705(n+1))` -/
def P7919372331265254948.Spec : Prop :=
  ∀ n, P7919372331265254948.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P5948285657933914899

`A381662(A381663(n+1))`
-/

namespace A381664.P5948285657933914899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A381663 (n + 1)).toNat

end

end A381664.P5948285657933914899

namespace A381664

/-- `A381662(A381663(n+1))` -/
def P5948285657933914899.Spec : Prop :=
  ∀ n, P5948285657933914899.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P15765070657741279092

`A056023(A380815(A378200(n+1)))`
-/

namespace A381664.P15765070657741279092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A380815 (A378200 (n + 1)).toNat).toNat

end

end A381664.P15765070657741279092

namespace A381664

/-- `A056023(A380815(A378200(n+1)))` -/
def P15765070657741279092.Spec : Prop :=
  ∀ n, P15765070657741279092.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P9175794390217714998

`A056023(A378684(A383723(n+1)))`
-/

namespace A381664.P9175794390217714998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A378684 (A383723 (n + 1)).toNat).toNat

end

end A381664.P9175794390217714998

namespace A381664

/-- `A056023(A378684(A383723(n+1)))` -/
def P9175794390217714998.Spec : Prop :=
  ∀ n, P9175794390217714998.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P14224012104221402460

`A378200(A380815(A378762(n+1)))`
-/

namespace A381664.P14224012104221402460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A380815 (A378762 (n + 1)).toNat).toNat

end

end A381664.P14224012104221402460

namespace A381664

/-- `A378200(A380815(A378762(n+1)))` -/
def P14224012104221402460.Spec : Prop :=
  ∀ n, P14224012104221402460.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P7661221659271458493

`A378705(A376214(A383589(n+1)))`
-/

namespace A381664.P7661221659271458493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A376214 (A383589 (n + 1)).toNat).toNat

end

end A381664.P7661221659271458493

namespace A381664

/-- `A378705(A376214(A383589(n+1)))` -/
def P7661221659271458493.Spec : Prop :=
  ∀ n, P7661221659271458493.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P17126981586223916619

`A379343(A381968(A381968(n+1)))`
-/

namespace A381664.P17126981586223916619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A381968 (A381968 (n + 1)).toNat).toNat

end

end A381664.P17126981586223916619

namespace A381664

/-- `A379343(A381968(A381968(n+1)))` -/
def P17126981586223916619.Spec : Prop :=
  ∀ n, P17126981586223916619.a n = A381664 (n + 1)

end A381664

/-! ## A381664.P11761869481577165799

`A378684(A381968(A382679(n+1)))`
-/

namespace A381664.P11761869481577165799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381968 (A382679 (n + 1)).toNat).toNat

end

end A381664.P11761869481577165799

namespace A381664

/-- `A378684(A381968(A382679(n+1)))` -/
def P11761869481577165799.Spec : Prop :=
  ∀ n, P11761869481577165799.a n = A381664 (n + 1)

end A381664

/-!
# A381665: Integers k such that prime(k)!/k^k is an integer.

The programs for A381665, there is no canonical definition to state claims against.
-/

/-! ## A381665.P18171612889581725469

`A011778(n+2)%A083668(A092427(n))`
-/

namespace A381665.P18171612889581725469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011778 (n + 2)) (A083668 (A092427 n).toNat)

end

end A381665.P18171612889581725469

/-! ## A381665.P6016095147687001519

`A011778(n+2)^A326622(A007097(n))`
-/

namespace A381665.P6016095147687001519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011778 (n + 2) : ℚ) ^ (A326622 (A007097 n).toNat : ℤ)

end

end A381665.P6016095147687001519

/-!
# A381667: Triangle read by row: T(n,k) is the number of the k-th eliminated person in the variation of the Josephus elimination process for n people where two people are skipped each step.

The programs for A381667, there is no canonical definition to state claims against.
-/

/-! ## A381667.P11935298970788437357

`A028310(A103964(n+1)%A007953(2*(n+1)))`
-/

namespace A381667.P11935298970788437357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A103964 (n + 1)) (A007953 (2 * (n + 1)))).toNat

end

end A381667.P11935298970788437357

/-!
# A381668: Ternary modular Gray code for n written in base 3.

The programs for A381668, there is no canonical definition to state claims against.
-/

/-! ## A381668.P2661274567498869062

`A007089(A105530(n))`
-/

namespace A381668.P2661274567498869062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A105530 n).toNat

end

end A381668.P2661274567498869062

/-!
# A381670: The function A(x) = x+(1/2)*x^2-(1/16)*x^4... = Sum_{k >= 0} x^k*A381669(k)/a(k) satisfies the functional equation: x*(A(x)+1) = A(A(x)).

The programs for A381670, there is no canonical definition to state claims against.
-/

/-! ## A381670.P11313229633705558811

`A232503(A010051(n+1)+A000296(n))`
-/

namespace A381670.P11313229633705558811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232503 (A010051 (n + 1) + A000296 n).toNat

end

end A381670.P11313229633705558811

/-! ## A381670.P4190243260120767332

`A001316(A269565(2*n+1))^A008615(n)`
-/

namespace A381670.P4190243260120767332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A269565 (2 * n + 1)).toNat : ℚ) ^ (A008615 n : ℤ)

end

end A381670.P4190243260120767332

/-! ## A381670.P9309067626334570988

`gcd(A353906(A018033(n+1)), A353915(n+1))`
-/

namespace A381670.P9309067626334570988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A353906 (A018033 (n + 1)).toNat) (A353915 (n + 1))

end

end A381670.P9309067626334570988

/-!
# A381675: a(n) = p*2^(p - 1)*(p - 1)!, where p = prime(n).

The programs for A381675, there is no canonical definition to state claims against.
-/

/-! ## A381675.P2284779740168698651

`A002866(Δ[A007504(n)])`
-/

namespace A381675.P2284779740168698651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (f1 (n + 1) - f1 n).toNat

end

end A381675.P2284779740168698651

/-! ## A381675.P3771751627203502884

`A002866(record[A162753(n)])`
-/

namespace A381675.P3771751627203502884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A381675.P3771751627203502884

/-! ## A381675.P10679828634200358265

`A002866(A000040(1+n))`
-/

namespace A381675.P10679828634200358265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (A000040 (1 + n)).toNat

end

end A381675.P10679828634200358265

/-! ## A381675.P17545342083373329468

`A002866(eq[1, A003415(n)])`
-/

namespace A381675.P17545342083373329468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A381675.P17545342083373329468

/-! ## A381675.P2138532938381877945

`A006882(A100484(n+1))/2`
-/

namespace A381675.P2138532938381877945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (A100484 (n + 1)).toNat : ℚ) / 2

end

end A381675.P2138532938381877945

/-!
# A381676: a(n) = Sum_{k=0..n} binomial(n,k) * ( binomial(n,k) - binomial(n,k-1) )^2.

The programs for A381676, the canonical program `A381676.P2960917554506901503` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381676 has offset 0).

The definition of A381676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381676.P505734104440411385

`∑{#}[n, 1/(#+1)*C(2*#, #)*C(n, #)*C(#, n-#)]`
-/

namespace A381676.P505734104440411385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 1 / (k + 1 : ℚ) * (Nat.choose (2 * k) k : ℚ) * (Nat.choose n k : ℚ) * (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A381676.P505734104440411385

namespace A381676

/-- `∑{#}[n, 1/(#+1)*C(2*#, #)*C(n, #)*C(#, n-#)]` -/
def P505734104440411385.Spec : Prop :=
  ∀ n, P505734104440411385.a n = (A381676 n : ℚ)

end A381676

/-! ## A381676.P2960917554506901503

`(8*A000172(n)-A000172(n+1))/6`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381676

/-- `(8*A000172(n)-A000172(n+1))/6` -/
def P2960917554506901503.Spec : Prop :=
  ∀ n, P2960917554506901503.a n = (A381676 n : ℚ)

end A381676

/-! ## A381676.P17620626972511514693

`A176097(n)/(n-log2(1/2))²`
-/

namespace A381676.P17620626972511514693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A176097 n : ℝ) / ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A381676.P17620626972511514693

namespace A381676

/-- `A176097(n)/(n-log2(1/2))²` -/
def P17620626972511514693.Spec : Prop :=
  ∀ n, P17620626972511514693.a n = (A381676 n : ℝ)

end A381676

/-! ## A381676.P13890829836297303954

`∑{#}[n, (-1)^(n-#)*C(n, #)*A086618(#)]`
-/

namespace A381676.P13890829836297303954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A086618 k : ℚ)

end

end A381676.P13890829836297303954

namespace A381676

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A086618(#)]` -/
def P13890829836297303954.Spec : Prop :=
  ∀ n, P13890829836297303954.a n = (A381676 n : ℚ)

end A381676

/-!
# A381677: a(n) = floor(a(n-1)*3/2) with a(1) = 5.

The programs for A381677, the canonical program `A381677.P16545137202494766611` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381677 has offset 1).

The definition of A381677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)*3/2)` (program `A381677.P16545137202494766611`, by `A381677.P16545137202494766611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A381677.P16545137202494766611

`floor(a(n-1)*3/2)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381677

/-- `floor(a(n-1)*3/2)` -/
def P16545137202494766611.Spec : Prop :=
  ∀ n, P16545137202494766611.a n = A381677 (n + 1)

theorem P16545137202494766611.correct : P16545137202494766611.Spec := by
  intro n
  simp only [A381677, Nat.add_sub_cancel]

end A381677

/-! ## A381677.P10690238450265664538

`floor(3/2*a(n-1))` with `a(0)=5`
-/

namespace A381677.P10690238450265664538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌋

end

end A381677.P10690238450265664538

namespace A381677

/-- `floor(3/2*a(n-1))` -/
def P10690238450265664538.Spec : Prop :=
  ∀ n, P10690238450265664538.a n = A381677 (n + 1)

end A381677

/-! ## A381677.P5205052424735136309

`floor(a(n-1)/2)+a(n-1)` with `a(0)=5`
-/

namespace A381677.P5205052424735136309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(a (n - 1) : ℚ) / 2⌋ + a (n - 1)

end

end A381677.P5205052424735136309

namespace A381677

/-- `floor(a(n-1)/2)+a(n-1)` -/
def P5205052424735136309.Spec : Prop :=
  ∀ n, P5205052424735136309.a n = A381677 (n + 1)

end A381677

/-! ## A381677.P1954345568607588922

`(a(n-1)+gcd(2, a(n-1)))/2+a(n-1)-1` with `a(0)=5`
-/

namespace A381677.P1954345568607588922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (a (n - 1) + (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) / 2 + (a (n - 1) - 1)

end

end A381677.P1954345568607588922

namespace A381677

/-- `(a(n-1)+gcd(2, a(n-1)))/2+a(n-1)-1` -/
def P1954345568607588922.Spec : Prop :=
  ∀ n, P1954345568607588922.a n = (A381677 (n + 1) : ℚ)

end A381677

/-! ## A381677.P10402393082554264121

`a(n-1)+(a(n-1)+(2-a(n-1))%2)/2` with `a(0)=5`
-/

namespace A381677.P10402393082554264121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) + (Int.tmod (SequenceMachineLib.roundAway (2 - a (n - 1))) 2 : ℚ)) / 2

end

end A381677.P10402393082554264121

namespace A381677

/-- `a(n-1)+(a(n-1)+(2-a(n-1))%2)/2` -/
def P10402393082554264121.Spec : Prop :=
  ∀ n, P10402393082554264121.a n = (A381677 (n + 1) : ℚ)

end A381677

/-! ## A381677.P5840818563345503499

`A112088(n)+a(n-1)` with `a(0)=5`
-/

namespace A381677.P5840818563345503499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A112088 n + a (n - 1)

end

end A381677.P5840818563345503499

namespace A381677

/-- `A112088(n)+a(n-1)` -/
def P5840818563345503499.Spec : Prop :=
  ∀ n, P5840818563345503499.a n = A381677 (n + 1)

end A381677

/-! ## A381677.P18411720343205949554

`∑[A112088(A000007(n)+n)]+3`
-/

namespace A381677.P18411720343205949554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112088 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A381677.P18411720343205949554

namespace A381677

/-- `∑[A112088(A000007(n)+n)]+3` -/
def P18411720343205949554.Spec : Prop :=
  ∀ n, P18411720343205949554.a n = A381677 (n + 1)

end A381677

/-!
# A381680: Euler transform of A115224.

The programs for A381680, there is no canonical definition to state claims against.
-/

/-! ## A381680.P13051346456093345242

`A165404(A282554(n+1))+∏{p}[n+1, #^val(n+1, #²)]²`
-/

namespace A381680.P13051346456093345242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165404 (A282554 (n + 1)).toNat + (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ)

end

end A381680.P13051346456093345242

/-!
# A381681: a(n) is one of two integer components (with A000254) used in computing the inverse second moment of X+n, where X~Poisson(1).

The programs for A381681, there is no canonical definition to state claims against.
-/

/-! ## A381681.P8244864729697518695

`A000166(n-1)+n*a(n-1)` with `a(0)=0`
-/

namespace A381681.P8244864729697518695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000166 (n - 1) + (n : ℤ) * a (n - 1)

end

end A381681.P8244864729697518695

/-! ## A381681.P6312131097166694345

`record[char[2^n]*A000376(n+1)]`
-/

namespace A381681.P6312131097166694345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A000376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381681.P6312131097166694345

/-!
# A381682: Triangle read by rows: T(n,k) = number of collections of up to k+1 disjoint subsets of [n] covering [n], with [0]={}, 0<=k<=n.

The programs for A381682, there is no canonical definition to state claims against.
-/

/-! ## A381682.P15706873714615132716

`A328003(A370382(n))`
-/

namespace A381682.P15706873714615132716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (A370382 n).toNat

end

end A381682.P15706873714615132716

/-! ## A381682.P9009936262297684497

`row(row(A080037(A046860(n+1))))`
-/

namespace A381682.P9009936262297684497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A080037 (A046860 (n + 1)).toNat).toNat)

end

end A381682.P9009936262297684497

/-!
# A381698: Numbers of the form (2^k-1)^2 - 2 that are squarefree.

The programs for A381698, there is no canonical definition to state claims against.
-/

/-! ## A381698.P7247837185970462954

`A093112(A135660(n+4)+A043320(n+1))`
-/

namespace A381698.P7247837185970462954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093112 (A135660 (n + 4) + A043320 (n + 1)).toNat

end

end A381698.P7247837185970462954

/-! ## A381698.P1381456893852044651

`A008865(A000225(comp[n^3]))`
-/

namespace A381698.P1381456893852044651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A381698.P1381456893852044651

/-!
# A381699: a(n) is the least nontrivial multiple of 2*n with the least possible number of even digits.

The programs for A381699, there is no canonical definition to state claims against.
-/

/-! ## A381699.P16169069420396303984

`(A063725(A302242(2*n+5)*A048211(n+1)-n)+4)*(n+1)`
-/

namespace A381699.P16169069420396303984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063725 (A302242 (2 * n + 5) * A048211 (n + 1) - (n : ℤ)).toNat + 4) * (n + 1 : ℤ)

end

end A381699.P16169069420396303984

/-! ## A381699.P16473675930927096653

`A343335(A100800(n+1))`
-/

namespace A381699.P16473675930927096653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343335 (A100800 (n + 1)).toNat

end

end A381699.P16473675930927096653

/-! ## A381699.P13416950270777197389

`A343335(A110725(n+1))`
-/

namespace A381699.P13416950270777197389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343335 (A110725 (n + 1)).toNat

end

end A381699.P13416950270777197389

/-! ## A381699.P15968612493477881329

`A343335(A169919(n+1))`
-/

namespace A381699.P15968612493477881329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343335 (A169919 (n + 1)).toNat

end

end A381699.P15968612493477881329

/-! ## A381699.P6637316810248351525

`A343335(A169921(n+1))`
-/

namespace A381699.P6637316810248351525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343335 (A169921 (n + 1)).toNat

end

end A381699.P6637316810248351525

