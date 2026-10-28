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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A349100: a(n) is the product of the Fibonacci divisors of A129655(n) that do not divide A129655(n-1).

The programs for A349100, there is no canonical definition to state claims against.
-/

/-! ## A349100.P2232638074272991429

`A274163(A206710(n+2))`
-/

namespace A349100.P2232638074272991429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274163 (A206710 (n + 2)).toNat

end

end A349100.P2232638074272991429

/-!
# A349102: Increase the odd part of n to the next greater odd number.

The programs for A349102, the canonical program `A349102.P9361818263425834684` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349102 has offset 1).

The definition of A349102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349102.P9361818263425834684

`n+1+A171977(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A349102

/-- `n+1+A171977(n+1)` -/
def P9361818263425834684.Spec : Prop :=
  ∀ n, P9361818263425834684.a n = A349102 (n + 1)

theorem P9361818263425834684.correct : P9361818263425834684.Spec := by
  intro n
  simp only [A349102, Nat.add_sub_cancel]

end A349102

/-! ## A349102.P12965051451068347823

`xor(n, n+1)+2+n`
-/

namespace A349102.P12965051451068347823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 2 + n

end

end A349102.P12965051451068347823

namespace A349102

/-- `xor(n, n+1)+2+n` -/
def P12965051451068347823.Spec : Prop :=
  ∀ n, (P12965051451068347823.a n : ℤ) = A349102 (n + 1)

end A349102

/-! ## A349102.P10854281732805279823

`2*or(n, n+1)-n+1`
-/

namespace A349102.P10854281732805279823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor n (n + 1) : ℤ) - (n : ℤ) + 1

end

end A349102.P10854281732805279823

namespace A349102

/-- `2*or(n, n+1)-n+1` -/
def P10854281732805279823.Spec : Prop :=
  ∀ n, P10854281732805279823.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P15533188801362995661

`lcm(2, or(n, n+1))-(n-1)`
-/

namespace A349102.P15533188801362995661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.lor n (n + 1)) : ℤ) - ((n : ℤ) - 1)

end

end A349102.P15533188801362995661

namespace A349102

/-- `lcm(2, or(n, n+1))-(n-1)` -/
def P15533188801362995661.Spec : Prop :=
  ∀ n, P15533188801362995661.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P3588844019748259056

`2*and(n, -(n+2))+n+3`
-/

namespace A349102.P3588844019748259056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-(n + 2 : ℤ)) + (n + 3 : ℤ)

end

end A349102.P3588844019748259056

namespace A349102

/-- `2*and(n, -(n+2))+n+3` -/
def P3588844019748259056.Spec : Prop :=
  ∀ n, P3588844019748259056.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P16256702985410735562

`or(n, n+1)-or(n, -(n+2))`
-/

namespace A349102.P16256702985410735562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - Int.lor (n : ℤ) (-(n + 2 : ℤ))

end

end A349102.P16256702985410735562

namespace A349102

/-- `or(n, n+1)-or(n, -(n+2))` -/
def P16256702985410735562.Spec : Prop :=
  ∀ n, P16256702985410735562.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P15308352940161962542

`2*2^val(n+1, 2)+n+1`
-/

namespace A349102.P15308352940161962542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 2 ^ SequenceMachineLib.valuation (n + 1) 2 + (n + 1)

end

end A349102.P15308352940161962542

namespace A349102

/-- `2*2^val(n+1, 2)+n+1` -/
def P15308352940161962542.Spec : Prop :=
  ∀ n, (P15308352940161962542.a n : ℤ) = A349102 (n + 1)

end A349102

/-! ## A349102.P10562819007316115064

`∑[Δ[and(1-2*n, 2*n)]+1]`
-/

namespace A349102.P10562819007316115064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349102.P10562819007316115064

namespace A349102

/-- `∑[Δ[and(1-2*n, 2*n)]+1]` -/
def P10562819007316115064.Spec : Prop :=
  ∀ n, P10562819007316115064.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P16663362333406049116

`2*(n-and(n, n+1))+n+3`
-/

namespace A349102.P16663362333406049116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.land n (n + 1) : ℤ)) + (n + 3 : ℤ)

end

end A349102.P16663362333406049116

namespace A349102

/-- `2*(n-and(n, n+1))+n+3` -/
def P16663362333406049116.Spec : Prop :=
  ∀ n, P16663362333406049116.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P5842125464311876021

`∑{d}[and(n+1, -(n+1)), #]+n+2`
-/

namespace A349102.P5842125464311876021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + (n + 2)

end

end A349102.P5842125464311876021

namespace A349102

/-- `∑{d}[and(n+1, -(n+1)), #]+n+2` -/
def P5842125464311876021.Spec : Prop :=
  ∀ n, (P5842125464311876021.a n : ℤ) = A349102 (n + 1)

end A349102

/-! ## A349102.P13815024103932664946

`∑{d}[or(n+1, -(n+1)), #]+n+2`
-/

namespace A349102.P13815024103932664946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + (n + 2)

end

end A349102.P13815024103932664946

namespace A349102

/-- `∑{d}[or(n+1, -(n+1)), #]+n+2` -/
def P13815024103932664946.Spec : Prop :=
  ∀ n, (P13815024103932664946.a n : ℤ) = A349102 (n + 1)

end A349102

/-! ## A349102.P1181491827307370819

`2*gcd(n+1, and(n, n+1))+n+1`
-/

namespace A349102.P1181491827307370819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd (n + 1) (Nat.land n (n + 1)) + (n + 1)

end

end A349102.P1181491827307370819

namespace A349102

/-- `2*gcd(n+1, and(n, n+1))+n+1` -/
def P1181491827307370819.Spec : Prop :=
  ∀ n, (P1181491827307370819.a n : ℤ) = A349102 (n + 1)

end A349102

/-! ## A349102.P17214703505115695325

`A100710(n+1)+1`
-/

namespace A349102.P17214703505115695325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100710 (n + 1) + 1

end

end A349102.P17214703505115695325

namespace A349102

/-- `A100710(n+1)+1` -/
def P17214703505115695325.Spec : Prop :=
  ∀ n, P17214703505115695325.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P10095121618066590998

`sqrt(A059152(n))+1+n`
-/

namespace A349102.P10095121618066590998
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059152 n : ℝ) + 1 + (n : ℝ)

end

end A349102.P10095121618066590998

namespace A349102

/-- `sqrt(A059152(n))+1+n` -/
def P10095121618066590998.Spec : Prop :=
  ∀ n, P10095121618066590998.a n = (A349102 (n + 1) : ℝ)

end A349102

/-! ## A349102.P6115876680525609086

`A038712(n+1)+2+n`
-/

namespace A349102.P6115876680525609086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) + 2 + (n : ℤ)

end

end A349102.P6115876680525609086

namespace A349102

/-- `A038712(n+1)+2+n` -/
def P6115876680525609086.Spec : Prop :=
  ∀ n, P6115876680525609086.a n = A349102 (n + 1)

theorem P6115876680525609086.correct : P6115876680525609086.Spec := by
  intro n
  simp only [A349102, Nat.add_sub_cancel, A349102.P6115876680525609086.a, A349102.P9361818263425834684.a, A038712, A038712.P3404197303190209645.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349102

/-! ## A349102.P5719990151919687465

`2*A135481(n)+n+3`
-/

namespace A349102.P5719990151919687465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135481 n + (n + 3 : ℤ)

end

end A349102.P5719990151919687465

namespace A349102

/-- `2*A135481(n)+n+3` -/
def P5719990151919687465.Spec : Prop :=
  ∀ n, P5719990151919687465.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P8955520247573589305

`2*A006519(n+1)+n+1`
-/

namespace A349102.P8955520247573589305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006519 (n + 1) + (n + 1 : ℤ)

end

end A349102.P8955520247573589305

namespace A349102

/-- `2*A006519(n+1)+n+1` -/
def P8955520247573589305.Spec : Prop :=
  ∀ n, P8955520247573589305.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P14623047763296216980

`A118830(2*(n+1))+n+1`
-/

namespace A349102.P14623047763296216980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A349102.P14623047763296216980

namespace A349102

/-- `A118830(2*(n+1))+n+1` -/
def P14623047763296216980.Spec : Prop :=
  ∀ n, P14623047763296216980.a n = A349102 (n + 1)

end A349102

/-! ## A349102.P7746128056551350624

`A059159(n+1)/2+n+1`
-/

namespace A349102.P7746128056551350624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059159 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A349102.P7746128056551350624

namespace A349102

/-- `A059159(n+1)/2+n+1` -/
def P7746128056551350624.Spec : Prop :=
  ∀ n, P7746128056551350624.a n = (A349102 (n + 1) : ℚ)

end A349102

/-! ## A349102.P5294671547616349724

`n+1-A118827(2*(n+1))`
-/

namespace A349102.P5294671547616349724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A118827 (2 * (n + 1))

end

end A349102.P5294671547616349724

namespace A349102

/-- `n+1-A118827(2*(n+1))` -/
def P5294671547616349724.Spec : Prop :=
  ∀ n, P5294671547616349724.a n = A349102 (n + 1)

end A349102

/-!
# A349104: Expansion of e.g.f. 1/(1 - (sin(x) + x*cos(x))/2 ).

The programs for A349104, there is no canonical definition to state claims against.
-/

/-! ## A349104.P15324856766511694527

`A345424(Δ[A035929(n)]+n)`
-/

namespace A349104.P15324856766511694527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345424 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A349104.P15324856766511694527

/-! ## A349104.P14761168485122480520

`A345423(A003407(n))+A009766(n)`
-/

namespace A349104.P14761168485122480520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345423 (A003407 n).toNat + A009766 n

end

end A349104.P14761168485122480520

/-! ## A349104.P8190924229666720259

`A345424(2*A191789(2*n)-A191789(2*n+1)+n)`
-/

namespace A349104.P8190924229666720259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345424 (2 * A191789 (2 * n) - A191789 (2 * n + 1) + (n : ℤ)).toNat

end

end A349104.P8190924229666720259

/-!
# A349105: Expansion of e.g.f. 1/(1 - (sinh(x) + x*cosh(x))/2 ).

The programs for A349105, there is no canonical definition to state claims against.
-/

/-! ## A349105.P11482239660142241658

`A115772(a(n-1))+∑[n-2]` with `a(0)=1, a(1)=1`
-/

namespace A349105.P11482239660142241658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A115772 (a (n - 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349105.P11482239660142241658

/-! ## A349105.P3013156570473306656

`A198832(A148253(n))`
-/

namespace A349105.P3013156570473306656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198832 (A148253 n).toNat

end

end A349105.P3013156570473306656

/-!
# A349106: Irregular triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} with cycle descent number equal to k.

The programs for A349106, there is no canonical definition to state claims against.
-/

/-! ## A349106.P883234162719409259

`A362925(lt[A337614(n+1), A337658(n+1)])`
-/

namespace A349106.P883234162719409259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349106.P883234162719409259

/-!
# A349107: a(n) is the permanent of the n X n matrix A(n) that is defined as A[i,j,n] = n - abs((n + 1)/2 - i) - abs((n + 1)/2 - j).

The programs for A349107, there is no canonical definition to state claims against.
-/

/-! ## A349107.P705400590212654

`A118461(∏[n!])`
-/

namespace A349107.P705400590212654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118461 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A349107.P705400590212654

/-!
# A349108: a(n) is the permanent of the n X n matrix A(n) that is defined as A[i,j,n] = (n mod 2) + abs((n + 1)/2 - i) + abs((n + 1)/2 - j).

The programs for A349108, there is no canonical definition to state claims against.
-/

/-! ## A349108.P7384320952990373934

`A073201(A347302(n))`
-/

namespace A349108.P7384320952990373934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073201 (A347302 n).toNat

end

end A349108.P7384320952990373934

/-!
# A349111: Powerful superabundant numbers: numbers m such that psigma(m)/m > psigma(k)/k for all k < m, where psigma(k) is the sum of powerful divisors of k (A183097).

The programs for A349111, there is no canonical definition to state claims against.
-/

/-! ## A349111.P9143436718226385524

`A005934(A052382(n+1)%A344360(n+1))`
-/

namespace A349111.P9143436718226385524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (Int.tmod (A052382 (n + 1)) (A344360 (n + 1))).toNat

end

end A349111.P9143436718226385524

/-! ## A349111.P9028446303283902345

`A005934(∑[A266886(n+1)!])`
-/

namespace A349111.P9028446303283902345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A266886 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349111.P9028446303283902345

/-! ## A349111.P7875822619134707000

`filter[A085629(n+1), A118247(#)]`
-/

namespace A349111.P7875822619134707000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118247 (f1 j).toNat = 1) n)

end

end A349111.P7875822619134707000

/-! ## A349111.P4603325495391701849

`filter[A085629(n+1), A023960(#)]`
-/

namespace A349111.P4603325495391701849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023960 (f1 j).toNat = 1) n)

end

end A349111.P4603325495391701849

/-!
# A349112: Powerful highly abundant numbers: numbers m such that psigma(m) > psigma(k) for all k < m, where psigma(k) is the sum of powerful divisors of k (A183097).

The programs for A349112, there is no canonical definition to state claims against.
-/

/-! ## A349112.P7614574956712010526

`A001694(A064273(2^n))`
-/

namespace A349112.P7614574956712010526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A064273 (2 ^ n)).toNat

end

end A349112.P7614574956712010526

/-! ## A349112.P1815550594677796787

`record[A057521(A334677(n+1))]`
-/

namespace A349112.P1815550594677796787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A334677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349112.P1815550594677796787

/-! ## A349112.P12353259195932406493

`∩[A345918(n+1), A355580(n+1)]`
-/

namespace A349112.P12353259195932406493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349112.P12353259195932406493

/-! ## A349112.P5336834901362264682

`∩[A345918(n+1), A377819(n+1)]`
-/

namespace A349112.P5336834901362264682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349112.P5336834901362264682

/-!
# A349113: a(n) = 8^n * P(3*n, n), where P(n, x) is n-th Legendre polynomial.

The programs for A349113, there is no canonical definition to state claims against.
-/

/-! ## A349113.P3293015407263823871

`A110124(A139276(n))`
-/

namespace A349113.P3293015407263823871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110124 (A139276 n).toNat

end

end A349113.P3293015407263823871

/-!
# A349117: a(n) = Sum_{m=1..n} (Sum_{k=1..m} (Sum_{j=1..k} j^k)).

The programs for A349117, there is no canonical definition to state claims against.
-/

/-! ## A349117.P13984450581087682719

`∑[∑[A031971(n+1)]]`
-/

namespace A349117.P13984450581087682719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349117.P13984450581087682719

/-! ## A349117.P10114486187261559762

`∑[∑[A121706(n+1)+A000312(n+1)]]`
-/

namespace A349117.P10114486187261559762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121706 (n + 1) + A000312 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349117.P10114486187261559762

/-! ## A349117.P3401078973779022452

`∑[∑[A076015(n+2)-A000169(n+2)]]`
-/

namespace A349117.P3401078973779022452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076015 (n + 2) - A000169 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349117.P3401078973779022452

/-! ## A349117.P15566691216582360355

`∑[∑[A000169(n+2)-A191686(n+2)]]`
-/

namespace A349117.P15566691216582360355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 2) - A191686 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349117.P15566691216582360355

/-! ## A349117.P26018391196147448

`∑[∑[A341331(n+1)+2*A121706(n+1)]]`
-/

namespace A349117.P26018391196147448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341331 (n + 1) + 2 * A121706 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349117.P26018391196147448

/-!
# A349118: Row sums of a triangle based on A261327.

The programs for A349118, the canonical program `A349118.P3928268946122988538` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349118 has offset 2).

The definition of A349118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349118.P3928268946122988538

`A261327(n)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A349118

/-- `A261327(n)+a(n-2)` -/
def P3928268946122988538.Spec : Prop :=
  ∀ n, P3928268946122988538.a n = A349118 (n + 2)

theorem P3928268946122988538.correct : P3928268946122988538.Spec := by
  intro n
  simp only [A349118, Nat.add_sub_cancel]

end A349118

/-! ## A349118.P6361286862349703768

`ceil(A177787(n+1)/gcd(2, n)²)`
-/

namespace A349118.P6361286862349703768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177787 (n + 1) : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)⌉

end

end A349118.P6361286862349703768

namespace A349118

/-- `ceil(A177787(n+1)/gcd(2, n)²)` -/
def P6361286862349703768.Spec : Prop :=
  ∀ n, P6361286862349703768.a n = A349118 (n + 2)

end A349118

/-! ## A349118.P10422610065059747362

`ceil(A177787(n+1)/A040005(n))`
-/

namespace A349118.P10422610065059747362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177787 (n + 1) : ℚ) / (A040005 n : ℚ)⌉

end

end A349118.P10422610065059747362

namespace A349118

/-- `ceil(A177787(n+1)/A040005(n))` -/
def P10422610065059747362.Spec : Prop :=
  ∀ n, P10422610065059747362.a n = A349118 (n + 2)

end A349118

/-! ## A349118.P1323036348241366288

`round(Δ[A227161(n)]/gcd(2, n)²)`
-/

namespace A349118.P1323036348241366288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))

end

end A349118.P1323036348241366288

namespace A349118

/-- `round(Δ[A227161(n)]/gcd(2, n)²)` -/
def P1323036348241366288.Spec : Prop :=
  ∀ n, P1323036348241366288.a n = A349118 (n + 2)

end A349118

/-! ## A349118.P15095233511388181196

`ceil(Δ[A318054(n)]/A040005(n))`
-/

namespace A349118.P15095233511388181196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A040005 n : ℚ)⌉

end

end A349118.P15095233511388181196

namespace A349118

/-- `ceil(Δ[A318054(n)]/A040005(n))` -/
def P15095233511388181196.Spec : Prop :=
  ∀ n, P15095233511388181196.a n = A349118 (n + 2)

end A349118

/-! ## A349118.P4062967880813585489

`round(A177787(n+1)/A040005(n))%A322417(n)`
-/

namespace A349118.P4062967880813585489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A177787 (n + 1) : ℚ) / (A040005 n : ℚ))) (A322417 n)

end

end A349118.P4062967880813585489

namespace A349118

/-- `round(A177787(n+1)/A040005(n))%A322417(n)` -/
def P4062967880813585489.Spec : Prop :=
  ∀ n, P4062967880813585489.a n = A349118 (n + 2)

end A349118

/-!
# A349122: Inverse Möbius transform of A349128, where A349128(n) = phi(A064989(n)), A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p, and phi is Euler totient function.

The programs for A349122, the canonical program `A349122.P7843177179375207398` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349122 has offset 1).

The definition of A349122 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349128, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349122.P7843177179375207398

`∑{d}[n+1, A349128(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A349122

/-- `∑{d}[n+1, A349128(#)]` -/
def P7843177179375207398.Spec : Prop :=
  ∀ n, P7843177179375207398.a n = A349122 (n + 1)

theorem P7843177179375207398.correct : P7843177179375207398.Spec := by
  intro n
  simp only [A349122, Nat.add_sub_cancel]

end A349122

/-! ## A349122.P765381630049353955

`(val(n+1, 2)+1)*A064989(n+1)`
-/

namespace A349122.P765381630049353955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A064989 (n + 1)

end

end A349122.P765381630049353955

namespace A349122

/-- `(val(n+1, 2)+1)*A064989(n+1)` -/
def P765381630049353955.Spec : Prop :=
  ∀ n, P765381630049353955.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P9316205843471001693

`(log2(and(n+1, -(n+1)))+1)*A064989((n+1)/(or(n, n+1)-n))`
-/

namespace A349122.P9316205843471001693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 1) * (A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat : ℝ)

end

end A349122.P9316205843471001693

namespace A349122

/-- `(log2(and(n+1, -(n+1)))+1)*A064989((n+1)/(or(n, n+1)-n))` -/
def P9316205843471001693.Spec : Prop :=
  ∀ n, P9316205843471001693.a n = (A349122 (n + 1) : ℝ)

end A349122

/-! ## A349122.P15476512407532814419

`(log2(and(n+1, -(n+1)))+1)*A064989(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A349122.P15476512407532814419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 1) * (A064989 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat : ℝ)

end

end A349122.P15476512407532814419

namespace A349122

/-- `(log2(and(n+1, -(n+1)))+1)*A064989(2*(n+1)/(xor(n, n+1)+1))` -/
def P15476512407532814419.Spec : Prop :=
  ∀ n, P15476512407532814419.a n = (A349122 (n + 1) : ℝ)

end A349122

/-! ## A349122.P2597794684787897468

`A001511(n+1)*A064989(n+1)`
-/

namespace A349122.P2597794684787897468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A064989 (n + 1)

end

end A349122.P2597794684787897468

namespace A349122

/-- `A001511(n+1)*A064989(n+1)` -/
def P2597794684787897468.Spec : Prop :=
  ∀ n, P2597794684787897468.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P2398420283031321736

`(A085058(n)-1)*A064989(n+1)`
-/

namespace A349122.P2398420283031321736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085058 n - 1) * A064989 (n + 1)

end

end A349122.P2398420283031321736

namespace A349122

/-- `(A085058(n)-1)*A064989(n+1)` -/
def P2398420283031321736.Spec : Prop :=
  ∀ n, P2398420283031321736.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P8654727669446561726

`(2-Δ[A000120(n)])*A064989(n+1)`
-/

namespace A349122.P8654727669446561726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A064989 (n + 1)

end

end A349122.P8654727669446561726

namespace A349122

/-- `(2-Δ[A000120(n)])*A064989(n+1)` -/
def P8654727669446561726.Spec : Prop :=
  ∀ n, P8654727669446561726.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P12195086958496605078

`(A007814(n+1)+1)*A064989(n+1)`
-/

namespace A349122.P12195086958496605078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A064989 (n + 1)

end

end A349122.P12195086958496605078

namespace A349122

/-- `(A007814(n+1)+1)*A064989(n+1)` -/
def P12195086958496605078.Spec : Prop :=
  ∀ n, P12195086958496605078.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P12998275684415300425

`(log2(A006519(n+1))+1)*A064989(n+1)`
-/

namespace A349122.P12998275684415300425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A006519 (n + 1) : ℝ) + 1) * (A064989 (n + 1) : ℝ)

end

end A349122.P12998275684415300425

namespace A349122

/-- `(log2(A006519(n+1))+1)*A064989(n+1)` -/
def P12998275684415300425.Spec : Prop :=
  ∀ n, P12998275684415300425.a n = (A349122 (n + 1) : ℝ)

end A349122

/-! ## A349122.P4407437325990879163

`A001222(xor(n, n+1)+1)*A064989(n+1)`
-/

namespace A349122.P4407437325990879163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor n (n + 1) + 1) * A064989 (n + 1)

end

end A349122.P4407437325990879163

namespace A349122

/-- `A001222(xor(n, n+1)+1)*A064989(n+1)` -/
def P4407437325990879163.Spec : Prop :=
  ∀ n, P4407437325990879163.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P5307347197467621014

`∑{d}[n+1, A064989(#)*A209229((n+1)/#)]`
-/

namespace A349122.P5307347197467621014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064989 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349122.P5307347197467621014

namespace A349122

/-- `∑{d}[n+1, A064989(#)*A209229((n+1)/#)]` -/
def P5307347197467621014.Spec : Prop :=
  ∀ n, P5307347197467621014.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P16298886952238636898

`∑{d}[n+1, A001511(#)*A349127((n+1)/#)]`
-/

namespace A349122.P16298886952238636898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A349127 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349122.P16298886952238636898

namespace A349122

/-- `∑{d}[n+1, A001511(#)*A349127((n+1)/#)]` -/
def P16298886952238636898.Spec : Prop :=
  ∀ n, P16298886952238636898.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P5766683112206071183

`∑{d}[n+1, A209635(#)*A326041((n+1)/#)]`
-/

namespace A349122.P5766683112206071183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209635 d * A326041 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349122.P5766683112206071183

namespace A349122

/-- `∑{d}[n+1, A209635(#)*A326041((n+1)/#)]` -/
def P5766683112206071183.Spec : Prop :=
  ∀ n, P5766683112206071183.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P5223502358706391140

`A000005(and(n+1, -(n+1)))*A064989(n+1)`
-/

namespace A349122.P5223502358706391140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat * A064989 (n + 1)

end

end A349122.P5223502358706391140

namespace A349122

/-- `A000005(and(n+1, -(n+1)))*A064989(n+1)` -/
def P5223502358706391140.Spec : Prop :=
  ∀ n, P5223502358706391140.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P2286124329472214697

`(A000005(xor(n, n+1)+1)-1)*A064989(n+1)`
-/

namespace A349122.P2286124329472214697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.xor n (n + 1) + 1) - 1) * A064989 (n + 1)

end

end A349122.P2286124329472214697

namespace A349122

/-- `(A000005(xor(n, n+1)+1)-1)*A064989(n+1)` -/
def P2286124329472214697.Spec : Prop :=
  ∀ n, P2286124329472214697.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P1333770510638224148

`A000005(n+1-and(n, n+1))*A064989(n+1)`
-/

namespace A349122.P1333770510638224148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1 - Nat.land n (n + 1)) * A064989 (n + 1)

end

end A349122.P1333770510638224148

namespace A349122

/-- `A000005(n+1-and(n, n+1))*A064989(n+1)` -/
def P1333770510638224148.Spec : Prop :=
  ∀ n, P1333770510638224148.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P12786946110876392698

`(A001222(or(n, n+1)-n)+1)*A064989(n+1)`
-/

namespace A349122.P12786946110876392698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (Nat.lor n (n + 1) - n) + 1) * A064989 (n + 1)

end

end A349122.P12786946110876392698

namespace A349122

/-- `(A001222(or(n, n+1)-n)+1)*A064989(n+1)` -/
def P12786946110876392698.Spec : Prop :=
  ∀ n, P12786946110876392698.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P16375684830543896760

`A000005(xor(n+1, and(n, n+1)))*A064989(n+1)`
-/

namespace A349122.P16375684830543896760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.xor (n + 1) (Nat.land n (n + 1))) * A064989 (n + 1)

end

end A349122.P16375684830543896760

namespace A349122

/-- `A000005(xor(n+1, and(n, n+1)))*A064989(n+1)` -/
def P16375684830543896760.Spec : Prop :=
  ∀ n, P16375684830543896760.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P16090005397373354233

`∑{d}[n+1, A036987(#-1)*A064989((n+1)/#)]`
-/

namespace A349122.P16090005397373354233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349122.P16090005397373354233

namespace A349122

/-- `∑{d}[n+1, A036987(#-1)*A064989((n+1)/#)]` -/
def P16090005397373354233.Spec : Prop :=
  ∀ n, P16090005397373354233.a n = A349122 (n + 1)

end A349122

/-! ## A349122.P9026681098292433747

`(A005187(n+1)-A005187(n))*A064989(n+1)`
-/

namespace A349122.P9026681098292433747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) - A005187 n) * A064989 (n + 1)

end

end A349122.P9026681098292433747

namespace A349122

/-- `(A005187(n+1)-A005187(n))*A064989(n+1)` -/
def P9026681098292433747.Spec : Prop :=
  ∀ n, P9026681098292433747.a n = A349122 (n + 1)

end A349122

/-!
# A349123: a(n) = Sum_{d|n} A038040(n/d) * A003415(d), where A038040(n) = n*tau(n), and A003415 is the arithmetic derivative of n.

The programs for A349123, the canonical program `A349123.P11110344356280477347` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349123 has offset 1).

The definition of A349123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349123.P12778622426767355153

`∑{d}[n+1, #*A347130((n+1)/#)]`
-/

namespace A349123.P12778622426767355153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A347130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349123.P12778622426767355153

namespace A349123

/-- `∑{d}[n+1, #*A347130((n+1)/#)]` -/
def P12778622426767355153.Spec : Prop :=
  ∀ n, P12778622426767355153.a n = A349123 (n + 1)

end A349123

/-! ## A349123.P5271851196957941617

`A003557(n+1)*A349124(n+1)`
-/

namespace A349123.P5271851196957941617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A349124 (n + 1)

end

end A349123.P5271851196957941617

namespace A349123

/-- `A003557(n+1)*A349124(n+1)` -/
def P5271851196957941617.Spec : Prop :=
  ∀ n, P5271851196957941617.a n = A349123 (n + 1)

end A349123

/-! ## A349123.P12409960004387997580

`∑{d}[n+1, A038040((n+1)/#)*A003415(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349123.P12409960004387997580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003415 d

end

end A349123.P12409960004387997580

namespace A349123

/-- `∑{d}[n+1, A038040((n+1)/#)*A003415(#)]` -/
def P12409960004387997580.Spec : Prop :=
  ∀ n, P12409960004387997580.a n = A349123 (n + 1)

end A349123

/-! ## A349123.P11110344356280477347

`∑{d}[n+1, A018804(#)*A319684((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A349123

/-- `∑{d}[n+1, A018804(#)*A319684((n+1)/#)]` -/
def P11110344356280477347.Spec : Prop :=
  ∀ n, P11110344356280477347.a n = A349123 (n + 1)

theorem P11110344356280477347.correct : P11110344356280477347.Spec := by
  intro n
  simp only [A349123, Nat.add_sub_cancel]

end A349123

/-! ## A349123.P15418098268841914671

`∑{d}[n+1, A000203(#)*A347131((n+1)/#)]`
-/

namespace A349123.P15418098268841914671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A347131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349123.P15418098268841914671

namespace A349123

/-- `∑{d}[n+1, A000203(#)*A347131((n+1)/#)]` -/
def P15418098268841914671.Spec : Prop :=
  ∀ n, P15418098268841914671.a n = A349123 (n + 1)

end A349123

/-! ## A349123.P13018264404888653133

`∑{d}[n+1, A060640(#)*A300251((n+1)/#)]`
-/

namespace A349123.P13018264404888653133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349123.P13018264404888653133

namespace A349123

/-- `∑{d}[n+1, A060640(#)*A300251((n+1)/#)]` -/
def P13018264404888653133.Spec : Prop :=
  ∀ n, P13018264404888653133.a n = A349123 (n + 1)

end A349123

/-! ## A349123.P5669191403704897048

`∑{d}[n+1, A034718(#)*A349394((n+1)/#)]`
-/

namespace A349123.P5669191403704897048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349123.P5669191403704897048

namespace A349123

/-- `∑{d}[n+1, A034718(#)*A349394((n+1)/#)]` -/
def P5669191403704897048.Spec : Prop :=
  ∀ n, P5669191403704897048.a n = A349123 (n + 1)

end A349123

/-! ## A349123.P17253342909327179576

`∑{d}[n+1, A206369(#)*A347132((n+1)/#)]`
-/

namespace A349123.P17253342909327179576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A347132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349123.P17253342909327179576

namespace A349123

/-- `∑{d}[n+1, A206369(#)*A347132((n+1)/#)]` -/
def P17253342909327179576.Spec : Prop :=
  ∀ n, P17253342909327179576.a n = A349123 (n + 1)

end A349123

/-! ## A349123.P14616973467242008247

`∑{d}[n+1, A327251(#)*A400173((n+1)/#)]`
-/

namespace A349123.P14616973467242008247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327251 d * A400173 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349123.P14616973467242008247

namespace A349123

/-- `∑{d}[n+1, A327251(#)*A400173((n+1)/#)]` -/
def P14616973467242008247.Spec : Prop :=
  ∀ n, P14616973467242008247.a n = A349123 (n + 1)

end A349123

/-!
# A349124: a(n) = A349123(n) / A003557(n), where A349123 is the Dirichlet convolution of the arithmetic derivative with n*tau(n).

The programs for A349124, the canonical program `A349124.P9173573936416537419` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349124 has offset 1).

The definition of A349124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349124.P9173573936416537419

`A349123(n+1)/A003557(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A349124

/-- `A349123(n+1)/A003557(n+1)` -/
def P9173573936416537419.Spec : Prop :=
  ∀ n, P9173573936416537419.a n = (A349124 (n + 1) : ℚ)

end A349124

/-! ## A349124.P8118208344855570065

`A349123(n+1)/A052126(A217434(n+1))`
-/

namespace A349124.P8118208344855570065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349123 (n + 1) : ℚ) / (A052126 (A217434 (n + 1)).toNat : ℚ)

end

end A349124.P8118208344855570065

namespace A349124

/-- `A349123(n+1)/A052126(A217434(n+1))` -/
def P8118208344855570065.Spec : Prop :=
  ∀ n, P8118208344855570065.a n = (A349124 (n + 1) : ℚ)

end A349124

/-! ## A349124.P13635670854662699656

`A349123(n+1)/A300719(A087560(n+1))`
-/

namespace A349124.P13635670854662699656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349123 (n + 1) : ℚ) / (A300719 (A087560 (n + 1)).toNat : ℚ)

end

end A349124.P13635670854662699656

namespace A349124

/-- `A349123(n+1)/A300719(A087560(n+1))` -/
def P13635670854662699656.Spec : Prop :=
  ∀ n, P13635670854662699656.a n = (A349124 (n + 1) : ℚ)

end A349124

/-! ## A349124.P4292852609442228358

`A349123(n+1)/A290104(A064988(n+1))`
-/

namespace A349124.P4292852609442228358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349123 (n + 1) : ℚ) / (A290104 (A064988 (n + 1)).toNat : ℚ)

end

end A349124.P4292852609442228358

namespace A349124

/-- `A349123(n+1)/A290104(A064988(n+1))` -/
def P4292852609442228358.Spec : Prop :=
  ∀ n, P4292852609442228358.a n = (A349124 (n + 1) : ℚ)

end A349124

/-! ## A349124.P11674107963024737733

`A349123(n+1)/A300719(A071892(n+1))`
-/

namespace A349124.P11674107963024737733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349123 (n + 1) : ℚ) / (A300719 (A071892 (n + 1)).toNat : ℚ)

end

end A349124.P11674107963024737733

namespace A349124

/-- `A349123(n+1)/A300719(A071892(n+1))` -/
def P11674107963024737733.Spec : Prop :=
  ∀ n, P11674107963024737733.a n = (A349124 (n + 1) : ℚ)

end A349124

/-! ## A349124.P11806177153640336484

`A349123(n+1)/A000188(A102631(n+1))`
-/

namespace A349124.P11806177153640336484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349123 (n + 1) : ℚ) / (A000188 (A102631 (n + 1)).toNat : ℚ)

end

end A349124.P11806177153640336484

namespace A349124

/-- `A349123(n+1)/A000188(A102631(n+1))` -/
def P11806177153640336484.Spec : Prop :=
  ∀ n, P11806177153640336484.a n = (A349124 (n + 1) : ℚ)

end A349124

/-!
# A349125: Dirichlet inverse of A064989, where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p.

The programs for A349125, the canonical program `A349125.P4936637679341869880` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349125 has offset 1).

The definition of A349125 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349125.P17523749806387391409

`A349126(n+1)-A064989(n+1)`
-/

namespace A349125.P17523749806387391409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349126 (n + 1) - A064989 (n + 1)

end

end A349125.P17523749806387391409

namespace A349125

/-- `A349126(n+1)-A064989(n+1)` -/
def P17523749806387391409.Spec : Prop :=
  ∀ n, P17523749806387391409.a n = A349125 (n + 1)

theorem P17523749806387391409.correct : P17523749806387391409.Spec := by
  intro n
  simp only [A349125, Nat.add_sub_cancel, A349125.P17523749806387391409.a, A349125.P4936637679341869880.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A064989, A064989.P13349672914146769936.a, A349126, A349126.P8045301494363547831.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349125

/-! ## A349125.P4936637679341869880

`A008683(n+1)*A064989(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A349125

/-- `A008683(n+1)*A064989(n+1)` -/
def P4936637679341869880.Spec : Prop :=
  ∀ n, P4936637679341869880.a n = A349125 (n + 1)

theorem P4936637679341869880.correct : P4936637679341869880.Spec := by
  intro n
  simp only [A349125, Nat.add_sub_cancel]

end A349125

/-! ## A349125.P11294232956656971870

`A008683(n+1)*A065769(n+1)`
-/

namespace A349125.P11294232956656971870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A065769 (n + 1)

end

end A349125.P11294232956656971870

namespace A349125

/-- `A008683(n+1)*A065769(n+1)` -/
def P11294232956656971870.Spec : Prop :=
  ∀ n, P11294232956656971870.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P14185713749647022380

`abs(A290099(n+1))*A008683(n+1)`
-/

namespace A349125.P14185713749647022380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290099 (n + 1)| * A008683 (n + 1)

end

end A349125.P14185713749647022380

namespace A349125

/-- `abs(A290099(n+1))*A008683(n+1)` -/
def P14185713749647022380.Spec : Prop :=
  ∀ n, P14185713749647022380.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P12259170426553595657

`(A007423(n+1)-1)*A064989(n+1)`
-/

namespace A349125.P12259170426553595657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A064989 (n + 1)

end

end A349125.P12259170426553595657

namespace A349125

/-- `(A007423(n+1)-1)*A064989(n+1)` -/
def P12259170426553595657.Spec : Prop :=
  ∀ n, P12259170426553595657.a n = A349125 (n + 1)

theorem P12259170426553595657.correct : P12259170426553595657.Spec := by
  intro n
  simp only [A349125, Nat.add_sub_cancel, A349125.P12259170426553595657.a, A349125.P4936637679341869880.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A064989, A064989.P13349672914146769936.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349125

/-! ## A349125.P17332402749771747202

`A162512(n+1)%2*A064989(n+1)`
-/

namespace A349125.P17332402749771747202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 * A064989 (n + 1)

end

end A349125.P17332402749771747202

namespace A349125

/-- `A162512(n+1)%2*A064989(n+1)` -/
def P17332402749771747202.Spec : Prop :=
  ∀ n, P17332402749771747202.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P7635140738446149536

`floor(A262804(n+1)/2)*A064989(n+1)`
-/

namespace A349125.P7635140738446149536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262804 (n + 1) : ℚ) / 2⌋ * A064989 (n + 1)

end

end A349125.P7635140738446149536

namespace A349125

/-- `floor(A262804(n+1)/2)*A064989(n+1)` -/
def P7635140738446149536.Spec : Prop :=
  ∀ n, P7635140738446149536.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P12953389418514770395

`∑{d}[n+1, A346234(#)*A349381((n+1)/#)]`
-/

namespace A349125.P12953389418514770395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346234 d * A349381 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349125.P12953389418514770395

namespace A349125

/-- `∑{d}[n+1, A346234(#)*A349381((n+1)/#)]` -/
def P12953389418514770395.Spec : Prop :=
  ∀ n, P12953389418514770395.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P5196576917295193384

`A008683(n+1)*A064216(A003602(n+1))`
-/

namespace A349125.P5196576917295193384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A064216 (A003602 (n + 1)).toNat

end

end A349125.P5196576917295193384

namespace A349125

/-- `A008683(n+1)*A064216(A003602(n+1))` -/
def P5196576917295193384.Spec : Prop :=
  ∀ n, P5196576917295193384.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P9530615406268208024

`(A353747(n+1)-A000010(n+1))*A008683(n+1)`
-/

namespace A349125.P9530615406268208024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353747 (n + 1) - A000010 (n + 1)) * A008683 (n + 1)

end

end A349125.P9530615406268208024

namespace A349125

/-- `(A353747(n+1)-A000010(n+1))*A008683(n+1)` -/
def P9530615406268208024.Spec : Prop :=
  ∀ n, P9530615406268208024.a n = A349125 (n + 1)

theorem P9530615406268208024.correct : P9530615406268208024.Spec := by
  intro n
  simp only [A349125, Nat.add_sub_cancel, A349125.P9530615406268208024.a, A349125.P4936637679341869880.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A064989, A064989.P13349672914146769936.a, A353747, A353747.P3016860989461656940.a, A003557, A003557.P6364735403900941810.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349125

/-! ## A349125.P4199930985481255539

`A064989(n+1)*A353457(n+1)*A353458(n+1)`
-/

namespace A349125.P4199930985481255539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A353457 (n + 1) * A353458 (n + 1)

end

end A349125.P4199930985481255539

namespace A349125

/-- `A064989(n+1)*A353457(n+1)*A353458(n+1)` -/
def P4199930985481255539.Spec : Prop :=
  ∀ n, P4199930985481255539.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P1077244878586322587

`A063441(n+1)/A003959(n+1)*A064989(n+1)`
-/

namespace A349125.P1077244878586322587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063441 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A064989 (n + 1) : ℚ)

end

end A349125.P1077244878586322587

namespace A349125

/-- `A063441(n+1)/A003959(n+1)*A064989(n+1)` -/
def P1077244878586322587.Spec : Prop :=
  ∀ n, P1077244878586322587.a n = (A349125 (n + 1) : ℚ)

end A349125

/-! ## A349125.P1685525794175302704

`A064989(n+1)/A003958(n+1)*A097945(n+1)`
-/

namespace A349125.P1685525794175302704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A097945 (n + 1) : ℚ)

end

end A349125.P1685525794175302704

namespace A349125

/-- `A064989(n+1)/A003958(n+1)*A097945(n+1)` -/
def P1685525794175302704.Spec : Prop :=
  ∀ n, P1685525794175302704.a n = (A349125 (n + 1) : ℚ)

end A349125

/-! ## A349125.P13229908677690599540

`A064989(n+1)/A003961(n+1)*A346234(n+1)`
-/

namespace A349125.P13229908677690599540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A346234 (n + 1) : ℚ)

end

end A349125.P13229908677690599540

namespace A349125

/-- `A064989(n+1)/A003961(n+1)*A346234(n+1)` -/
def P13229908677690599540.Spec : Prop :=
  ∀ n, P13229908677690599540.a n = (A349125 (n + 1) : ℚ)

end A349125

/-! ## A349125.P8871698814867235819

`A055615(n+1)/A319626(n+1)*A319627(n+1)`
-/

namespace A349125.P8871698814867235819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A319626 (n + 1) : ℚ) * (A319627 (n + 1) : ℚ)

end

end A349125.P8871698814867235819

namespace A349125

/-- `A055615(n+1)/A319626(n+1)*A319627(n+1)` -/
def P8871698814867235819.Spec : Prop :=
  ∀ n, P8871698814867235819.a n = (A349125 (n + 1) : ℚ)

end A349125

/-! ## A349125.P2311817363701101862

`A064989(n+1)/A319626(n+1)*A354365(n+1)`
-/

namespace A349125.P2311817363701101862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A319626 (n + 1) : ℚ) * (A354365 (n + 1) : ℚ)

end

end A349125.P2311817363701101862

namespace A349125

/-- `A064989(n+1)/A319626(n+1)*A354365(n+1)` -/
def P2311817363701101862.Spec : Prop :=
  ∀ n, P2311817363701101862.a n = (A349125 (n + 1) : ℚ)

end A349125

/-! ## A349125.P2315740544813215982

`round(A023900(n+1)/A039649(n+1))*A064989(n+1)`
-/

namespace A349125.P2315740544813215982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023900 (n + 1) : ℚ) / (A039649 (n + 1) : ℚ)) * A064989 (n + 1)

end

end A349125.P2315740544813215982

namespace A349125

/-- `round(A023900(n+1)/A039649(n+1))*A064989(n+1)` -/
def P2315740544813215982.Spec : Prop :=
  ∀ n, P2315740544813215982.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P602333434149738232

`round(A347092(n+1)/A347137(n+1))*A064989(n+1)`
-/

namespace A349125.P602333434149738232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A347092 (n + 1) : ℚ) / (A347137 (n + 1) : ℚ)) * A064989 (n + 1)

end

end A349125.P602333434149738232

namespace A349125

/-- `round(A347092(n+1)/A347137(n+1))*A064989(n+1)` -/
def P602333434149738232.Spec : Prop :=
  ∀ n, P602333434149738232.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P12815143843439204643

`((A007814(n+1)+1)*A092673(n+1))%3*A064989(n+1)`
-/

namespace A349125.P12815143843439204643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A007814 (n + 1) + 1) * A092673 (n + 1)) 3 * A064989 (n + 1)

end

end A349125.P12815143843439204643

namespace A349125

/-- `((A007814(n+1)+1)*A092673(n+1))%3*A064989(n+1)` -/
def P12815143843439204643.Spec : Prop :=
  ∀ n, P12815143843439204643.a n = A349125 (n + 1)

end A349125

/-! ## A349125.P8507963366360082872

`A064989(n+1)/A108951(n+1)*A354351(n+1)`
-/

namespace A349125.P8507963366360082872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A108951 (n + 1) : ℚ) * (A354351 (n + 1) : ℚ)

end

end A349125.P8507963366360082872

namespace A349125

/-- `A064989(n+1)/A108951(n+1)*A354351(n+1)` -/
def P8507963366360082872.Spec : Prop :=
  ∀ n, P8507963366360082872.a n = (A349125 (n + 1) : ℚ)

end A349125

/-!
# A349126: Sum of A064989 and its Dirichlet inverse, where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p.

The programs for A349126, the canonical program `A349126.P8045301494363547831` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349126 has offset 1).

The definition of A349126 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A349125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349126.P8045301494363547831

`A064989(n+1)+A349125(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A349126

/-- `A064989(n+1)+A349125(n+1)` -/
def P8045301494363547831.Spec : Prop :=
  ∀ n, P8045301494363547831.a n = A349126 (n + 1)

theorem P8045301494363547831.correct : P8045301494363547831.Spec := by
  intro n
  simp only [A349126, Nat.add_sub_cancel]

end A349126

/-! ## A349126.P7245094057082568813

`A007423(n+1)*A064989(n+1)`
-/

namespace A349126.P7245094057082568813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) * A064989 (n + 1)

end

end A349126.P7245094057082568813

namespace A349126

/-- `A007423(n+1)*A064989(n+1)` -/
def P7245094057082568813.Spec : Prop :=
  ∀ n, P7245094057082568813.a n = A349126 (n + 1)

theorem P7245094057082568813.correct : P7245094057082568813.Spec := by
  intro n
  simp only [A349126, Nat.add_sub_cancel, A349126.P7245094057082568813.a, A349126.P8045301494363547831.a, A007423, A007423.P17981127199039660822.a, A064989, A064989.P13349672914146769936.a, A349125, A349125.P4936637679341869880.a, A008578, A008578.P3639467937083264764.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349126

/-! ## A349126.P12383323303477511568

`(A008683(n+1)+1)*A064989(n+1)`
-/

namespace A349126.P12383323303477511568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 1) * A064989 (n + 1)

end

end A349126.P12383323303477511568

namespace A349126

/-- `(A008683(n+1)+1)*A064989(n+1)` -/
def P12383323303477511568.Spec : Prop :=
  ∀ n, P12383323303477511568.a n = A349126 (n + 1)

theorem P12383323303477511568.correct : P12383323303477511568.Spec := by
  intro n
  simp only [A349126, Nat.add_sub_cancel, A349126.P12383323303477511568.a, A349126.P8045301494363547831.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A064989, A064989.P13349672914146769936.a, A349125, A349125.P4936637679341869880.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349126

/-! ## A349126.P13153153865643976107

`abs((A008683(n+1)+1)*A290099(n+1))`
-/

namespace A349126.P13153153865643976107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A008683 (n + 1) + 1) * A290099 (n + 1)|

end

end A349126.P13153153865643976107

namespace A349126

/-- `abs((A008683(n+1)+1)*A290099(n+1))` -/
def P13153153865643976107.Spec : Prop :=
  ∀ n, P13153153865643976107.a n = A349126 (n + 1)

end A349126

/-! ## A349126.P11408392380084728014

`A061669(n+1)/(n+1)*A064989(n+1)`
-/

namespace A349126.P11408392380084728014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061669 (n + 1) : ℚ) / (n + 1 : ℚ) * (A064989 (n + 1) : ℚ)

end

end A349126.P11408392380084728014

namespace A349126

/-- `A061669(n+1)/(n+1)*A064989(n+1)` -/
def P11408392380084728014.Spec : Prop :=
  ∀ n, P11408392380084728014.a n = (A349126 (n + 1) : ℚ)

theorem P11408392380084728014.correct : P11408392380084728014.Spec := by
  intro n
  simp only [A349126, Nat.add_sub_cancel, A349126.P11408392380084728014.a, A349126.P8045301494363547831.a, A061669, A061669.P9904449998917605232.a, A064989, A064989.P13349672914146769936.a, A349125, A349125.P4936637679341869880.a, A008578, A008578.P3639467937083264764.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349126

/-! ## A349126.P14501009279205267505

`(A008683(n+1)+1)*A064216(A003602(n+1))`
-/

namespace A349126.P14501009279205267505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 1) * A064216 (A003602 (n + 1)).toNat

end

end A349126.P14501009279205267505

namespace A349126

/-- `(A008683(n+1)+1)*A064216(A003602(n+1))` -/
def P14501009279205267505.Spec : Prop :=
  ∀ n, P14501009279205267505.a n = A349126 (n + 1)

end A349126

/-!
# A349127: Möbius transform of A064989, where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p.

The programs for A349127, the canonical program `A349127.P5140744659870694440` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349127 has offset 1).

The definition of A349127 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349127.P5140744659870694440

`∑{d}[n+1, A008683(#)*A064989((n+1)/#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A349127

/-- `∑{d}[n+1, A008683(#)*A064989((n+1)/#)]` -/
def P5140744659870694440.Spec : Prop :=
  ∀ n, P5140744659870694440.a n = A349127 (n + 1)

theorem P5140744659870694440.correct : P5140744659870694440.Spec := by
  intro n
  simp only [A349127, Nat.add_sub_cancel]

end A349127

/-! ## A349127.P17022953117721634848

`log2(gcd(2, n))*A348045(n+1)`
-/

namespace A349127.P17022953117721634848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A348045 (n + 1) : ℝ)

end

end A349127.P17022953117721634848

namespace A349127

/-- `log2(gcd(2, n))*A348045(n+1)` -/
def P17022953117721634848.Spec : Prop :=
  ∀ n, P17022953117721634848.a n = (A349127 (n + 1) : ℝ)

end A349127

/-! ## A349127.P2334235297696402594

`char[2*n]*A347115(n+1)`
-/

namespace A349127.P2334235297696402594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A347115 (n + 1)

end

end A349127.P2334235297696402594

namespace A349127

/-- `char[2*n]*A347115(n+1)` -/
def P2334235297696402594.Spec : Prop :=
  ∀ n, P2334235297696402594.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P9084927508744205679

`char[2*n]*A349128(n+1)`
-/

namespace A349127.P9084927508744205679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A349128 (n + 1)

end

end A349127.P9084927508744205679

namespace A349127

/-- `char[2*n]*A349128(n+1)` -/
def P9084927508744205679.Spec : Prop :=
  ∀ n, P9084927508744205679.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P10682351864646078317

`A348045(n+2-n^(n%2))`
-/

namespace A349127.P10682351864646078317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (n + 2 - n ^ (n % 2))

end

end A349127.P10682351864646078317

namespace A349127

/-- `A348045(n+2-n^(n%2))` -/
def P10682351864646078317.Spec : Prop :=
  ∀ n, P10682351864646078317.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P3038306146124124757

`A348045(A141310(n))`
-/

namespace A349127.P3038306146124124757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (A141310 n).toNat

end

end A349127.P3038306146124124757

namespace A349127

/-- `A348045(A141310(n))` -/
def P3038306146124124757.Spec : Prop :=
  ∀ n, P3038306146124124757.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P14590114383915480252

`A059841(n)*A348045(n+1)`
-/

namespace A349127.P14590114383915480252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A348045 (n + 1)

end

end A349127.P14590114383915480252

namespace A349127

/-- `A059841(n)*A348045(n+1)` -/
def P14590114383915480252.Spec : Prop :=
  ∀ n, P14590114383915480252.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P4164195919042334038

`A266591(n)*A348045(n+1)`
-/

namespace A349127.P4164195919042334038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A348045 (n + 1)

end

end A349127.P4164195919042334038

namespace A349127

/-- `A266591(n)*A348045(n+1)` -/
def P4164195919042334038.Spec : Prop :=
  ∀ n, P4164195919042334038.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P17865392997498118141

`lcm(A056594(n), A347115(n+1))`
-/

namespace A349127.P17865392997498118141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A347115 (n + 1))

end

end A349127.P17865392997498118141

namespace A349127

/-- `lcm(A056594(n), A347115(n+1))` -/
def P17865392997498118141.Spec : Prop :=
  ∀ n, (P17865392997498118141.a n : ℤ) = A349127 (n + 1)

end A349127

/-! ## A349127.P1579551865674319743

`(1-A000035(n))*A348045(n+1)`
-/

namespace A349127.P1579551865674319743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A348045 (n + 1)

end

end A349127.P1579551865674319743

namespace A349127

/-- `(1-A000035(n))*A348045(n+1)` -/
def P1579551865674319743.Spec : Prop :=
  ∀ n, P1579551865674319743.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P17886846408520027929

`lcm(A166698(n+1), A348045(n+1))`
-/

namespace A349127.P17886846408520027929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166698 (n + 1)) (A348045 (n + 1))

end

end A349127.P17886846408520027929

namespace A349127

/-- `lcm(A166698(n+1), A348045(n+1))` -/
def P17886846408520027929.Spec : Prop :=
  ∀ n, (P17886846408520027929.a n : ℤ) = A349127 (n + 1)

end A349127

/-! ## A349127.P13050073894747882236

`A348045(n+1)*A359374(2*(n+1))`
-/

namespace A349127.P13050073894747882236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (n + 1) * A359374 (2 * (n + 1))

end

end A349127.P13050073894747882236

namespace A349127

/-- `A348045(n+1)*A359374(2*(n+1))` -/
def P13050073894747882236.Spec : Prop :=
  ∀ n, P13050073894747882236.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P4298463257438092328

`∑{d}[n+1, A003972(#)*A349382((n+1)/#)]`
-/

namespace A349127.P4298463257438092328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A349382 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349127.P4298463257438092328

namespace A349127

/-- `∑{d}[n+1, A003972(#)*A349382((n+1)/#)]` -/
def P4298463257438092328.Spec : Prop :=
  ∀ n, P4298463257438092328.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P10016818867022827567

`∑{d}[n+1, A092673(#)*A349122((n+1)/#)]`
-/

namespace A349127.P10016818867022827567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A349122 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349127.P10016818867022827567

namespace A349127

/-- `∑{d}[n+1, A092673(#)*A349122((n+1)/#)]` -/
def P10016818867022827567.Spec : Prop :=
  ∀ n, P10016818867022827567.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P17787200247906043802

`∑{d}[n+1, A154955(#)*A349128((n+1)/#)]`
-/

namespace A349127.P17787200247906043802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A349128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349127.P17787200247906043802

namespace A349127

/-- `∑{d}[n+1, A154955(#)*A349128((n+1)/#)]` -/
def P17787200247906043802.Spec : Prop :=
  ∀ n, P17787200247906043802.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P15902049127889208823

`∑{d}[n+1, A326041(#)*A327276((n+1)/#)]`
-/

namespace A349127.P15902049127889208823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326041 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349127.P15902049127889208823

namespace A349127

/-- `∑{d}[n+1, A326041(#)*A327276((n+1)/#)]` -/
def P15902049127889208823.Spec : Prop :=
  ∀ n, P15902049127889208823.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P13704942024428795736

`(1-A000035(n))*A000010(A064989(n+1))`
-/

namespace A349127.P13704942024428795736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A000010 (A064989 (n + 1)).toNat

end

end A349127.P13704942024428795736

namespace A349127

/-- `(1-A000035(n))*A000010(A064989(n+1))` -/
def P13704942024428795736.Spec : Prop :=
  ∀ n, P13704942024428795736.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P7057505814961436872

`A059841(n)*A347115(n+1)*A059841(n)`
-/

namespace A349127.P7057505814961436872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A347115 (n + 1) * A059841 n

end

end A349127.P7057505814961436872

namespace A349127

/-- `A059841(n)*A347115(n+1)*A059841(n)` -/
def P7057505814961436872.Spec : Prop :=
  ∀ n, P7057505814961436872.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P1238257322746177911

`A000035(n+1)*A348045(n+1)`
-/

namespace A349127.P1238257322746177911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A348045 (n + 1)

end

end A349127.P1238257322746177911

namespace A349127

/-- `A000035(n+1)*A348045(n+1)` -/
def P1238257322746177911.Spec : Prop :=
  ∀ n, P1238257322746177911.a n = A349127 (n + 1)

end A349127

/-! ## A349127.P10710790435916170565

`A000035(n+1)*A000010(A064989(n+1))`
-/

namespace A349127.P10710790435916170565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A000010 (A064989 (n + 1)).toNat

end

end A349127.P10710790435916170565

namespace A349127

/-- `A000035(n+1)*A000010(A064989(n+1))` -/
def P10710790435916170565.Spec : Prop :=
  ∀ n, P10710790435916170565.a n = A349127 (n + 1)

end A349127

/-!
# A349128: a(n) = phi(A064989(n)), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p, and phi is Euler totient function.

The programs for A349128, the canonical program `A349128.P12048701012685724267` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349128 has offset 1).

The definition of A349128 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349128.P12048701012685724267

`A000010(A064989(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A349128

/-- `A000010(A064989(n+1))` -/
def P12048701012685724267.Spec : Prop :=
  ∀ n, P12048701012685724267.a n = A349128 (n + 1)

theorem P12048701012685724267.correct : P12048701012685724267.Spec := by
  intro n
  simp only [A349128, Nat.add_sub_cancel]

end A349128

/-! ## A349128.P315843693541796081

`A347115((n+1)/2^val(n+1, 2))`
-/

namespace A349128.P315843693541796081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A349128.P315843693541796081

namespace A349128

/-- `A347115((n+1)/2^val(n+1, 2))` -/
def P315843693541796081.Spec : Prop :=
  ∀ n, P315843693541796081.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P9956553183334764410

`A349127((n+1)/2^val(n+1, 2))`
-/

namespace A349128.P9956553183334764410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A349128.P9956553183334764410

namespace A349128

/-- `A349127((n+1)/2^val(n+1, 2))` -/
def P9956553183334764410.Spec : Prop :=
  ∀ n, P9956553183334764410.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P18062015103507870630

`A348045(floor(n/2^val(n+1, 2))+1)`
-/

namespace A349128.P18062015103507870630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 1).toNat

end

end A349128.P18062015103507870630

namespace A349128

/-- `A348045(floor(n/2^val(n+1, 2))+1)` -/
def P18062015103507870630.Spec : Prop :=
  ∀ n, P18062015103507870630.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P18132479588760690167

`A285702(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A349128.P18132479588760690167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285702 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A349128.P18132479588760690167

namespace A349128

/-- `A285702(floor(n/(xor(n, n+1)+1))+1)` -/
def P18132479588760690167.Spec : Prop :=
  ∀ n, P18132479588760690167.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P15852244388879620941

`A285702(A003602(n+1))`
-/

namespace A349128.P15852244388879620941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285702 (A003602 (n + 1)).toNat

end

end A349128.P15852244388879620941

namespace A349128

/-- `A285702(A003602(n+1))` -/
def P15852244388879620941.Spec : Prop :=
  ∀ n, P15852244388879620941.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P778367580751038336

`A347115(A000265(n+1))`
-/

namespace A349128.P778367580751038336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347115 (A000265 (n + 1)).toNat

end

end A349128.P778367580751038336

namespace A349128

/-- `A347115(A000265(n+1))` -/
def P778367580751038336.Spec : Prop :=
  ∀ n, P778367580751038336.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P8423162387014789913

`A000010(abs(A290099(n+1)))`
-/

namespace A349128.P8423162387014789913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A290099 (n + 1)|.toNat

end

end A349128.P8423162387014789913

namespace A349128

/-- `A000010(abs(A290099(n+1)))` -/
def P8423162387014789913.Spec : Prop :=
  ∀ n, P8423162387014789913.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P997460308058813481

`A348045(A000265(2*(n+1)))`
-/

namespace A349128.P997460308058813481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (A000265 (2 * (n + 1))).toNat

end

end A349128.P997460308058813481

namespace A349128

/-- `A348045(A000265(2*(n+1)))` -/
def P997460308058813481.Spec : Prop :=
  ∀ n, P997460308058813481.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P6452154109501418107

`A349127(A000265(2*n+2))`
-/

namespace A349128.P6452154109501418107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (A000265 (2 * n + 2)).toNat

end

end A349128.P6452154109501418107

namespace A349128

/-- `A349127(A000265(2*n+2))` -/
def P6452154109501418107.Spec : Prop :=
  ∀ n, P6452154109501418107.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P1294277575176626113

`A349127(2*A003602(n+1)-1)`
-/

namespace A349128.P1294277575176626113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (2 * A003602 (n + 1) - 1).toNat

end

end A349128.P1294277575176626113

namespace A349128

/-- `A349127(2*A003602(n+1)-1)` -/
def P1294277575176626113.Spec : Prop :=
  ∀ n, P1294277575176626113.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P10122159266641492144

`A349137(2*A064989(n+1)-1)`
-/

namespace A349128.P10122159266641492144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * A064989 (n + 1) - 1).toNat

end

end A349128.P10122159266641492144

namespace A349128

/-- `A349137(2*A064989(n+1)-1)` -/
def P10122159266641492144.Spec : Prop :=
  ∀ n, P10122159266641492144.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P12383176529871355161

`A000010(A200746(n+1)/(n+1))`
-/

namespace A349128.P12383176529871355161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A200746 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A349128.P12383176529871355161

namespace A349128

/-- `A000010(A200746(n+1)/(n+1))` -/
def P12383176529871355161.Spec : Prop :=
  ∀ n, P12383176529871355161.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P1569025341958101515

`A349127((n+1)/A006519(n+1))`
-/

namespace A349128.P1569025341958101515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A349128.P1569025341958101515

namespace A349128

/-- `A349127((n+1)/A006519(n+1))` -/
def P1569025341958101515.Spec : Prop :=
  ∀ n, P1569025341958101515.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P4812116312388982693

`A039649(abs(1-A064989(n+1))+1)-1`
-/

namespace A349128.P4812116312388982693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (|1 - A064989 (n + 1)| + 1).toNat - 1

end

end A349128.P4812116312388982693

namespace A349128

/-- `A039649(abs(1-A064989(n+1))+1)-1` -/
def P4812116312388982693.Spec : Prop :=
  ∀ n, P4812116312388982693.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P15907740487702597901

`∑{d}[n+1, A064989(#)*A087003((n+1)/#)]`
-/

namespace A349128.P15907740487702597901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064989 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349128.P15907740487702597901

namespace A349128

/-- `∑{d}[n+1, A064989(#)*A087003((n+1)/#)]` -/
def P15907740487702597901.Spec : Prop :=
  ∀ n, P15907740487702597901.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P229471129216225327

`∑{d}[n+1, A008683(#)*A349122((n+1)/#)]`
-/

namespace A349128.P229471129216225327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349122 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349128.P229471129216225327

namespace A349128

/-- `∑{d}[n+1, A008683(#)*A349122((n+1)/#)]` -/
def P229471129216225327.Spec : Prop :=
  ∀ n, P229471129216225327.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P9234882437496672997

`∑{d}[n+1, A209229(#)*A349127((n+1)/#)]`
-/

namespace A349128.P9234882437496672997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209229 d * A349127 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349128.P9234882437496672997

namespace A349128

/-- `∑{d}[n+1, A209229(#)*A349127((n+1)/#)]` -/
def P9234882437496672997.Spec : Prop :=
  ∀ n, P9234882437496672997.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P9464394422276152119

`∑{d}[n+1, A036987(#-1)*A349127((n+1)/#)]`
-/

namespace A349128.P9464394422276152119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A349127 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349128.P9464394422276152119

namespace A349128

/-- `∑{d}[n+1, A036987(#-1)*A349127((n+1)/#)]` -/
def P9464394422276152119.Spec : Prop :=
  ∀ n, P9464394422276152119.a n = A349128 (n + 1)

end A349128

/-! ## A349128.P14233525288401468332

`A064989(n+1)-A319700((n+1)/and(n+1, -(n+1)))`
-/

namespace A349128.P14233525288401468332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) - A319700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A349128.P14233525288401468332

namespace A349128

/-- `A064989(n+1)-A319700((n+1)/and(n+1, -(n+1)))` -/
def P14233525288401468332.Spec : Prop :=
  ∀ n, P14233525288401468332.a n = A349128 (n + 1)

end A349128

/-!
# A349129: a(n) = Sum_{d|n} A003958(d) * A003959(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and A003959 is fully multiplicative with a(p) = (p+1).

The programs for A349129, the canonical program `A349129.P13556310181811753018` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349129 has offset 1).

The definition of A349129 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349129.P13556310181811753018

`∑{d}[n+1, A003958(#)*A003959((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A349129

/-- `∑{d}[n+1, A003958(#)*A003959((n+1)/#)]` -/
def P13556310181811753018.Spec : Prop :=
  ∀ n, P13556310181811753018.a n = A349129 (n + 1)

theorem P13556310181811753018.correct : P13556310181811753018.Spec := by
  intro n
  simp only [A349129, Nat.add_sub_cancel]

end A349129

/-! ## A349129.P16993952994402744877

`∑{d}[n+1, A003966(#)*A003969((n+1)/#)]`
-/

namespace A349129.P16993952994402744877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A003969 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349129.P16993952994402744877

namespace A349129

/-- `∑{d}[n+1, A003966(#)*A003969((n+1)/#)]` -/
def P16993952994402744877.Spec : Prop :=
  ∀ n, P16993952994402744877.a n = A349129 (n + 1)

end A349129

/-! ## A349129.P6540144447788390776

`∑{d}[n+1, A003967(#)*A003968((n+1)/#)]`
-/

namespace A349129.P6540144447788390776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003967 d * A003968 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349129.P6540144447788390776

namespace A349129

/-- `∑{d}[n+1, A003967(#)*A003968((n+1)/#)]` -/
def P6540144447788390776.Spec : Prop :=
  ∀ n, P6540144447788390776.a n = A349129 (n + 1)

end A349129

/-! ## A349129.P998865339957913424

`∑{d}[n+1, A327564(#)*A349130((n+1)/#)]`
-/

namespace A349129.P998865339957913424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327564 d * A349130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349129.P998865339957913424

namespace A349129

/-- `∑{d}[n+1, A327564(#)*A349130((n+1)/#)]` -/
def P998865339957913424.Spec : Prop :=
  ∀ n, P998865339957913424.a n = A349129 (n + 1)

end A349129

/-! ## A349129.P6217676138636662245

`∑{d}[n+1, A349170(#)*A349340((n+1)/#)]`
-/

namespace A349129.P6217676138636662245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349170 d * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349129.P6217676138636662245

namespace A349129

/-- `∑{d}[n+1, A349170(#)*A349340((n+1)/#)]` -/
def P6217676138636662245.Spec : Prop :=
  ∀ n, P6217676138636662245.a n = A349129 (n + 1)

end A349129

/-! ## A349129.P4357870389712930105

`A349170(n+1)-(A349139(n+1)+A348980(n+1))`
-/

namespace A349129.P4357870389712930105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349170 (n + 1) - (A349139 (n + 1) + A348980 (n + 1))

end

end A349129.P4357870389712930105

namespace A349129

/-- `A349170(n+1)-(A349139(n+1)+A348980(n+1))` -/
def P4357870389712930105.Spec : Prop :=
  ∀ n, P4357870389712930105.a n = A349129 (n + 1)

end A349129

/-! ## A349129.P9955808969091330873

`A349130(n+1)+A349140(n+1)-A349139(n+1)`
-/

namespace A349129.P9955808969091330873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349130 (n + 1) + (A349140 (n + 1) - A349139 (n + 1))

end

end A349129.P9955808969091330873

namespace A349129

/-- `A349130(n+1)+A349140(n+1)-A349139(n+1)` -/
def P9955808969091330873.Spec : Prop :=
  ∀ n, P9955808969091330873.a n = A349129 (n + 1)

end A349129

/-!
# A349130: a(n) = Sum_{d|n} d * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1).

The programs for A349130, the canonical program `A349130.P12900436076985490935` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349130 has offset 1).

The definition of A349130 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349130.P15887366113843686184

`∑{d}[n+1, A349131(#)]`
-/

namespace A349130.P15887366113843686184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349131 d

end

end A349130.P15887366113843686184

namespace A349130

/-- `∑{d}[n+1, A349131(#)]` -/
def P15887366113843686184.Spec : Prop :=
  ∀ n, P15887366113843686184.a n = A349130 (n + 1)

end A349130

/-! ## A349130.P12900436076985490935

`∑{d}[n+1, #*A003958((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A349130

/-- `∑{d}[n+1, #*A003958((n+1)/#)]` -/
def P12900436076985490935.Spec : Prop :=
  ∀ n, P12900436076985490935.a n = A349130 (n + 1)

theorem P12900436076985490935.correct : P12900436076985490935.Spec := by
  intro n
  simp only [A349130, Nat.add_sub_cancel]

end A349130

/-! ## A349130.P16374043146752204545

`A038040(n+1)-A348980(n+1)`
-/

namespace A349130.P16374043146752204545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A348980 (n + 1)

end

end A349130.P16374043146752204545

namespace A349130

/-- `A038040(n+1)-A348980(n+1)` -/
def P16374043146752204545.Spec : Prop :=
  ∀ n, P16374043146752204545.a n = A349130 (n + 1)

end A349130

/-! ## A349130.P17195370894400426338

`∑{d}[n+1, A000203(#)*A003966((n+1)/#)]`
-/

namespace A349130.P17195370894400426338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A003966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349130.P17195370894400426338

namespace A349130

/-- `∑{d}[n+1, A000203(#)*A003966((n+1)/#)]` -/
def P17195370894400426338.Spec : Prop :=
  ∀ n, P17195370894400426338.a n = A349130 (n + 1)

end A349130

/-! ## A349130.P5158451548434454720

`∑{d}[n+1, A000010(#)*A003967((n+1)/#)]`
-/

namespace A349130.P5158451548434454720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003967 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349130.P5158451548434454720

namespace A349130

/-- `∑{d}[n+1, A000010(#)*A003967((n+1)/#)]` -/
def P5158451548434454720.Spec : Prop :=
  ∀ n, P5158451548434454720.a n = A349130 (n + 1)

end A349130

/-! ## A349130.P5878248962793732635

`∑{d}[n+1, A000265(#)*A333787((n+1)/#)]`
-/

namespace A349130.P5878248962793732635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A333787 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349130.P5878248962793732635

namespace A349130

/-- `∑{d}[n+1, A000265(#)*A333787((n+1)/#)]` -/
def P5878248962793732635.Spec : Prop :=
  ∀ n, P5878248962793732635.a n = A349130 (n + 1)

end A349130

/-! ## A349130.P9545336947490644165

`∑{d}[n+1, A008836(#)*A349132((n+1)/#)]`
-/

namespace A349130.P9545336947490644165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A349132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349130.P9545336947490644165

namespace A349130

/-- `∑{d}[n+1, A008836(#)*A349132((n+1)/#)]` -/
def P9545336947490644165.Spec : Prop :=
  ∀ n, P9545336947490644165.a n = A349130 (n + 1)

end A349130

/-! ## A349130.P6693520456405739530

`∑{d}[n+1, A038040(#)*A349340((n+1)/#)]`
-/

namespace A349130.P6693520456405739530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349130.P6693520456405739530

namespace A349130

/-- `∑{d}[n+1, A038040(#)*A349340((n+1)/#)]` -/
def P6693520456405739530.Spec : Prop :=
  ∀ n, P6693520456405739530.a n = A349130 (n + 1)

end A349130

/-! ## A349130.P1666922655474398448

`∑{d}[n+1, A349170(#)*A349355((n+1)/#)]`
-/

namespace A349130.P1666922655474398448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349170 d * A349355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349130.P1666922655474398448

namespace A349130

/-- `∑{d}[n+1, A349170(#)*A349355((n+1)/#)]` -/
def P1666922655474398448.Spec : Prop :=
  ∀ n, P1666922655474398448.a n = A349130 (n + 1)

end A349130

/-! ## A349130.P2568975974260601733

`A349170(n+1)-(A349140(n+1)+A348980(n+1))`
-/

namespace A349130.P2568975974260601733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349170 (n + 1) - (A349140 (n + 1) + A348980 (n + 1))

end

end A349130.P2568975974260601733

namespace A349130

/-- `A349170(n+1)-(A349140(n+1)+A348980(n+1))` -/
def P2568975974260601733.Spec : Prop :=
  ∀ n, P2568975974260601733.a n = A349130 (n + 1)

end A349130

/-!
# A349131: a(n) = Sum_{d|n} phi(d) * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and phi is Euler totient function.

The programs for A349131, the canonical program `A349131.P14789906931524733824` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349131 has offset 1).

The definition of A349131 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349131.P8964480584891997283

`A018804(n+1)-A348981(n+1)`
-/

namespace A349131.P8964480584891997283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A348981 (n + 1)

end

end A349131.P8964480584891997283

namespace A349131

/-- `A018804(n+1)-A348981(n+1)` -/
def P8964480584891997283.Spec : Prop :=
  ∀ n, P8964480584891997283.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P14789906931524733824

`∑{d}[n+1, A000010(#)*A003958((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A349131

/-- `∑{d}[n+1, A000010(#)*A003958((n+1)/#)]` -/
def P14789906931524733824.Spec : Prop :=
  ∀ n, P14789906931524733824.a n = A349131 (n + 1)

theorem P14789906931524733824.correct : P14789906931524733824.Spec := by
  intro n
  simp only [A349131, Nat.add_sub_cancel]

end A349131

/-! ## A349131.P12522235566693378607

`∑{d}[n+1, A008683(#)*A349130((n+1)/#)]`
-/

namespace A349131.P12522235566693378607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349131.P12522235566693378607

namespace A349131

/-- `∑{d}[n+1, A008683(#)*A349130((n+1)/#)]` -/
def P12522235566693378607.Spec : Prop :=
  ∀ n, P12522235566693378607.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P14610008194444212954

`∑{#}[n, A003958(gcd(n+1, #))]`
-/

namespace A349131.P14610008194444212954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A003958 (Nat.gcd (n + 1) k)

end

end A349131.P14610008194444212954

namespace A349131

/-- `∑{#}[n, A003958(gcd(n+1, #))]` -/
def P14610008194444212954.Spec : Prop :=
  ∀ n, P14610008194444212954.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P10659176953068730609

`∑{d}[n+1, #*A003966((n+1)/#)]`
-/

namespace A349131.P10659176953068730609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349131.P10659176953068730609

namespace A349131

/-- `∑{d}[n+1, #*A003966((n+1)/#)]` -/
def P10659176953068730609.Spec : Prop :=
  ∀ n, P10659176953068730609.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P1887435469969343675

`Δ[A209981(n)/32]-A348981(n+1)`
-/

namespace A349131.P1887435469969343675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A348981 (n + 1) : ℚ)

end

end A349131.P1887435469969343675

namespace A349131

/-- `Δ[A209981(n)/32]-A348981(n+1)` -/
def P1887435469969343675.Spec : Prop :=
  ∀ n, P1887435469969343675.a n = (A349131 (n + 1) : ℚ)

end A349131

/-! ## A349131.P12713134919077004122

`∑[Δ[A209295(n)]-1]-A348981(n+1)`
-/

namespace A349131.P12713134919077004122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A348981 (n + 1)

end

end A349131.P12713134919077004122

namespace A349131

/-- `∑[Δ[A209295(n)]-1]-A348981(n+1)` -/
def P12713134919077004122.Spec : Prop :=
  ∀ n, P12713134919077004122.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P14195879052994432394

`A006579(n+1)+1+n-A348981(n+1)`
-/

namespace A349131.P14195879052994432394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) + 1 + (n : ℤ) - A348981 (n + 1)

end

end A349131.P14195879052994432394

namespace A349131

/-- `A006579(n+1)+1+n-A348981(n+1)` -/
def P14195879052994432394.Spec : Prop :=
  ∀ n, P14195879052994432394.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P1215974402727025716

`A209295(n+1)-(n+1)-A348981(n+1)`
-/

namespace A349131.P1215974402727025716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 (n + 1) - (n + 1 : ℤ) - A348981 (n + 1)

end

end A349131.P1215974402727025716

namespace A349131

/-- `A209295(n+1)-(n+1)-A348981(n+1)` -/
def P1215974402727025716.Spec : Prop :=
  ∀ n, P1215974402727025716.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P14189164296104871713

`∑{d}[n+1, A018804(#)*A349340((n+1)/#)]`
-/

namespace A349131.P14189164296104871713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349131.P14189164296104871713

namespace A349131

/-- `∑{d}[n+1, A018804(#)*A349340((n+1)/#)]` -/
def P14189164296104871713.Spec : Prop :=
  ∀ n, P14189164296104871713.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P15567704056917906384

`∑{d}[n+1, A158522(#)*A349132((n+1)/#)]`
-/

namespace A349131.P15567704056917906384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A349132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349131.P15567704056917906384

namespace A349131

/-- `∑{d}[n+1, A158522(#)*A349132((n+1)/#)]` -/
def P15567704056917906384.Spec : Prop :=
  ∀ n, P15567704056917906384.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P10452132543488086841

`∑{d}[n+1, A349171(#)*A349355((n+1)/#)]`
-/

namespace A349131.P10452132543488086841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349171 d * A349355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349131.P10452132543488086841

namespace A349131

/-- `∑{d}[n+1, A349171(#)*A349355((n+1)/#)]` -/
def P10452132543488086841.Spec : Prop :=
  ∀ n, P10452132543488086841.a n = A349131 (n + 1)

end A349131

/-! ## A349131.P9595676541271278515

`A349171(n+1)-(A349141(n+1)+A348981(n+1))`
-/

namespace A349131.P9595676541271278515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - (A349141 (n + 1) + A348981 (n + 1))

end

end A349131.P9595676541271278515

namespace A349131

/-- `A349171(n+1)-(A349141(n+1)+A348981(n+1))` -/
def P9595676541271278515.Spec : Prop :=
  ∀ n, P9595676541271278515.a n = A349131 (n + 1)

end A349131

/-!
# A349132: a(n) = Sum_{d|n} psi(d) * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and psi is Dedekind psi function, A001615.

The programs for A349132, the canonical program `A349132.P869711925521774844` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349132 has offset 1).

The definition of A349132 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A348982, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349132.P869711925521774844

`A327251(n+1)-A348982(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A349132

/-- `A327251(n+1)-A348982(n+1)` -/
def P869711925521774844.Spec : Prop :=
  ∀ n, P869711925521774844.a n = A349132 (n + 1)

theorem P869711925521774844.correct : P869711925521774844.Spec := by
  intro n
  simp only [A349132, Nat.add_sub_cancel]

end A349132

/-! ## A349132.P15231744280201077165

`∑{d}[n+1, A001615(#)*A003958((n+1)/#)]`
-/

namespace A349132.P15231744280201077165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A003958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349132.P15231744280201077165

namespace A349132

/-- `∑{d}[n+1, A001615(#)*A003958((n+1)/#)]` -/
def P15231744280201077165.Spec : Prop :=
  ∀ n, P15231744280201077165.a n = A349132 (n + 1)

end A349132

/-! ## A349132.P9529177075591729628

`∑{d}[n+1, A003966(#)*A060648((n+1)/#)]`
-/

namespace A349132.P9529177075591729628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349132.P9529177075591729628

namespace A349132

/-- `∑{d}[n+1, A003966(#)*A060648((n+1)/#)]` -/
def P9529177075591729628.Spec : Prop :=
  ∀ n, P9529177075591729628.a n = A349132 (n + 1)

end A349132

/-! ## A349132.P12102176407103554571

`∑{d}[n+1, A003967(#)*A063659((n+1)/#)]`
-/

namespace A349132.P12102176407103554571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003967 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349132.P12102176407103554571

namespace A349132

/-- `∑{d}[n+1, A003967(#)*A063659((n+1)/#)]` -/
def P12102176407103554571.Spec : Prop :=
  ∀ n, P12102176407103554571.a n = A349132 (n + 1)

end A349132

/-! ## A349132.P15501944202155495589

`∑{d}[n+1, A008966(#)*A349130((n+1)/#)]`
-/

namespace A349132.P15501944202155495589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A349130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349132.P15501944202155495589

namespace A349132

/-- `∑{d}[n+1, A008966(#)*A349130((n+1)/#)]` -/
def P15501944202155495589.Spec : Prop :=
  ∀ n, P15501944202155495589.a n = A349132 (n + 1)

end A349132

/-! ## A349132.P17040443282879910064

`∑{d}[n+1, A034444(#)*A349131((n+1)/#)]`
-/

namespace A349132.P17040443282879910064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A349131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349132.P17040443282879910064

namespace A349132

/-- `∑{d}[n+1, A034444(#)*A349131((n+1)/#)]` -/
def P17040443282879910064.Spec : Prop :=
  ∀ n, P17040443282879910064.a n = A349132 (n + 1)

end A349132

/-! ## A349132.P13332153039365007321

`∑{d}[n+1, A327251(#)*A349340((n+1)/#)]`
-/

namespace A349132.P13332153039365007321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327251 d * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349132.P13332153039365007321

namespace A349132

/-- `∑{d}[n+1, A327251(#)*A349340((n+1)/#)]` -/
def P13332153039365007321.Spec : Prop :=
  ∀ n, P13332153039365007321.a n = A349132 (n + 1)

end A349132

/-! ## A349132.P8073242424402760870

`∑{d}[n+1, A349172(#)*A349355((n+1)/#)]`
-/

namespace A349132.P8073242424402760870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349172 d * A349355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349132.P8073242424402760870

namespace A349132

/-- `∑{d}[n+1, A349172(#)*A349355((n+1)/#)]` -/
def P8073242424402760870.Spec : Prop :=
  ∀ n, P8073242424402760870.a n = A349132 (n + 1)

end A349132

/-! ## A349132.P8775105619232419544

`A349172(n+1)-(A349142(n+1)+A348982(n+1))`
-/

namespace A349132.P8775105619232419544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349172 (n + 1) - (A349142 (n + 1) + A348982 (n + 1))

end

end A349132.P8775105619232419544

namespace A349132

/-- `A349172(n+1)-(A349142(n+1)+A348982(n+1))` -/
def P8775105619232419544.Spec : Prop :=
  ∀ n, P8775105619232419544.a n = A349132 (n + 1)

theorem P8775105619232419544.correct : P8775105619232419544.Spec := by
  intro n
  simp only [A349132, Nat.add_sub_cancel, A349132.P8775105619232419544.a, A349132.P869711925521774844.a, A327251, A327251.P13631091954083186129.f1, A327251.P13631091954083186129.a, A348982, A348982.P3645871020152581300.f1, A348982.P3645871020152581300.a, A349142, A349142.P2043599666543959663.f1, A349142.P2043599666543959663.a, A349172, A349172.P9409775987477653705.a, A001615, A001615.P12078511981713404634.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A322582, A322582.P8560399753878851377.a, A348507, A348507.P8468116905144779811.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003958, A003958.P196685604458257440.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A063659, A063659.P17976112420004081821.a, A014963, A014963.P5975177236000282614.a, A063658, A063658.P2835377320300210005.f1, A063658.P2835377320300210005.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349132

/-!
# A349133: Dirichlet convolution of A003415 with A003958, where A003415 is the arithmetic derivative and A003958 is fully multiplicative with a(p) = (p-1).

The programs for A349133, the canonical program `A349133.P1756529070579348651` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349133 has offset 1).

The definition of A349133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349133.P1756529070579348651

`∑{d}[n+1, A003415(#)*A003958((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349133

/-- `∑{d}[n+1, A003415(#)*A003958((n+1)/#)]` -/
def P1756529070579348651.Spec : Prop :=
  ∀ n, P1756529070579348651.a n = A349133 (n + 1)

theorem P1756529070579348651.correct : P1756529070579348651.Spec := by
  intro n
  simp only [A349133, Nat.add_sub_cancel]

end A349133

/-! ## A349133.P7813051335151461026

`∑{d}[n+1, #*A349619((n+1)/#)]`
-/

namespace A349133.P7813051335151461026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P7813051335151461026

namespace A349133

/-- `∑{d}[n+1, #*A349619((n+1)/#)]` -/
def P7813051335151461026.Spec : Prop :=
  ∀ n, P7813051335151461026.a n = A349133 (n + 1)

end A349133

/-! ## A349133.P357766085414380651

`∑{d}[n+1, A003967(#)*A300251((n+1)/#)]`
-/

namespace A349133.P357766085414380651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003967 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P357766085414380651

namespace A349133

/-- `∑{d}[n+1, A003967(#)*A300251((n+1)/#)]` -/
def P357766085414380651.Spec : Prop :=
  ∀ n, P357766085414380651.a n = A349133 (n + 1)

end A349133

/-! ## A349133.P6777059383475559036

`∑{d}[n+1, A003966(#)*A319684((n+1)/#)]`
-/

namespace A349133.P6777059383475559036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P6777059383475559036

namespace A349133

/-- `∑{d}[n+1, A003966(#)*A319684((n+1)/#)]` -/
def P6777059383475559036.Spec : Prop :=
  ∀ n, P6777059383475559036.a n = A349133 (n + 1)

end A349133

/-! ## A349133.P2141819957526949001

`∑{d}[n+1, A347130(#)*A349340((n+1)/#)]`
-/

namespace A349133.P2141819957526949001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347130 d * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P2141819957526949001

namespace A349133

/-- `∑{d}[n+1, A347130(#)*A349340((n+1)/#)]` -/
def P2141819957526949001.Spec : Prop :=
  ∀ n, P2141819957526949001.a n = A349133 (n + 1)

end A349133

/-! ## A349133.P9132433832070861361

`∑{d}[n+1, A349130(#)*A349394((n+1)/#)]`
-/

namespace A349133.P9132433832070861361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349130 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P9132433832070861361

namespace A349133

/-- `∑{d}[n+1, A349130(#)*A349394((n+1)/#)]` -/
def P9132433832070861361.Spec : Prop :=
  ∀ n, P9132433832070861361.a n = A349133 (n + 1)

end A349133

/-! ## A349133.P11705709460316949214

`∑{d}[n+1, A349173(#)*A349355((n+1)/#)]`
-/

namespace A349133.P11705709460316949214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349173 d * A349355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P11705709460316949214

namespace A349133

/-- `∑{d}[n+1, A349173(#)*A349355((n+1)/#)]` -/
def P11705709460316949214.Spec : Prop :=
  ∀ n, P11705709460316949214.a n = A349133 (n + 1)

end A349133

/-! ## A349133.P8699585136975237782

`∑{d}[n+1, A349129(#)*A349621((n+1)/#)]`
-/

namespace A349133.P8699585136975237782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349129 d * A349621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349133.P8699585136975237782

namespace A349133

/-- `∑{d}[n+1, A349129(#)*A349621((n+1)/#)]` -/
def P8699585136975237782.Spec : Prop :=
  ∀ n, P8699585136975237782.a n = A349133 (n + 1)

end A349133

/-!
# A349134: Dirichlet inverse of Kimberling's paraphrase, A003602.

The programs for A349134, there is no canonical definition to state claims against.
-/

/-! ## A349134.P4695115831361341891

`A349135(n+1)-A003602(n+1)`
-/

namespace A349134.P4695115831361341891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349135 (n + 1) - A003602 (n + 1)

end

end A349134.P4695115831361341891

/-! ## A349134.P3853815695951072410

`A349344(n+1)/(val(n+1, 2)+1)`
-/

namespace A349134.P3853815695951072410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)

end

end A349134.P3853815695951072410

/-! ## A349134.P12150931962197253827

`A349344(n+1)/A000034(n)`
-/

namespace A349134.P12150931962197253827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A349134.P12150931962197253827

/-! ## A349134.P8840232984326002576

`A349344(n+1)/A133186(n)`
-/

namespace A349134.P8840232984326002576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A133186 n : ℚ)

end

end A349134.P8840232984326002576

/-! ## A349134.P15274503809734074411

`A349344(n+1)/A001511(n+1)`
-/

namespace A349134.P15274503809734074411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A349134.P15274503809734074411

/-! ## A349134.P6696098316373354809

`A349344(n+1)/A003484(n+1)`
-/

namespace A349134.P6696098316373354809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A003484 (n + 1) : ℚ)

end

end A349134.P6696098316373354809

/-! ## A349134.P6939485200061624395

`A349344(n+1)/A006519(n+1)`
-/

namespace A349134.P6939485200061624395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A349134.P6939485200061624395

/-! ## A349134.P7376007028109209218

`A349344(n+1)/A056832(n+1)`
-/

namespace A349134.P7376007028109209218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A056832 (n + 1) : ℚ)

end

end A349134.P7376007028109209218

/-! ## A349134.P1859071042933691584

`A349344(n+1)/A068057(n+1)`
-/

namespace A349134.P1859071042933691584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A068057 (n + 1) : ℚ)

end

end A349134.P1859071042933691584

/-! ## A349134.P3784086022192415778

`A349344(n+1)/A078734(n+1)`
-/

namespace A349134.P3784086022192415778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A078734 (n + 1) : ℚ)

end

end A349134.P3784086022192415778

/-! ## A349134.P435404007935280851

`A349344(n+1)/A082388(n+1)`
-/

namespace A349134.P435404007935280851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A082388 (n + 1) : ℚ)

end

end A349134.P435404007935280851

/-! ## A349134.P9376919500145220753

`A349344(n+1)/A089242(n+1)`
-/

namespace A349134.P9376919500145220753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A089242 (n + 1) : ℚ)

end

end A349134.P9376919500145220753

/-! ## A349134.P17780912504274416052

`A349344(n+1)/A105931(n+1)`
-/

namespace A349134.P17780912504274416052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A105931 (n + 1) : ℚ)

end

end A349134.P17780912504274416052

/-! ## A349134.P14849427629146269423

`A349344(n+1)/A138191(n+1)`
-/

namespace A349134.P14849427629146269423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A138191 (n + 1) : ℚ)

end

end A349134.P14849427629146269423

/-! ## A349134.P17904935786174359184

`A349344(n+1)/A235726(n+1)`
-/

namespace A349134.P17904935786174359184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A235726 (n + 1) : ℚ)

end

end A349134.P17904935786174359184

/-! ## A349134.P8897821542968608169

`A349344(n+1)/A236313(n+1)`
-/

namespace A349134.P8897821542968608169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A236313 (n + 1) : ℚ)

end

end A349134.P8897821542968608169

/-! ## A349134.P10744993886728527493

`A349344(n+1)/A265331(n+1)`
-/

namespace A349134.P10744993886728527493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A265331 (n + 1) : ℚ)

end

end A349134.P10744993886728527493

/-! ## A349134.P4297658501959519071

`A349135(n+1)-A110963(2*n+1)`
-/

namespace A349134.P4297658501959519071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349135 (n + 1) - A110963 (2 * n + 1)

end

end A349134.P4297658501959519071

/-! ## A349134.P12633918768558492383

`A349344(n+1)/A002867(val(n+1, 2))`
-/

namespace A349134.P12633918768558492383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A002867 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A349134.P12633918768558492383

/-! ## A349134.P1738664096767276769

`A349344(n+1)/A002874(val(n+1, 2))`
-/

namespace A349134.P1738664096767276769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (A002874 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A349134.P1738664096767276769

/-!
# A349135: Sum of Kimberling's paraphrase, A003602, and its Dirichlet inverse.

The programs for A349135, there is no canonical definition to state claims against.
-/

/-! ## A349135.P2038670829472026361

`A003602(n+1)+A349134(n+1)`
-/

namespace A349135.P2038670829472026361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A349134 (n + 1)

end

end A349135.P2038670829472026361

/-! ## A349135.P6216804172519421122

`A349344(n+1)/(val(n+1, 2)+1)+floor(n/(xor(n, n+1)+1))+1`
-/

namespace A349135.P6216804172519421122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ) + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℚ)

end

end A349135.P6216804172519421122

/-! ## A349135.P14155162507840583377

`A349134(n+1)+A025480(n)+1`
-/

namespace A349135.P14155162507840583377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (n + 1) + (A025480 n + 1)

end

end A349135.P14155162507840583377

/-! ## A349135.P140788790026061366

`A349345(n+1)/A006519(n+1)`
-/

namespace A349135.P140788790026061366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349345 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A349135.P140788790026061366

/-! ## A349135.P17971484374736765866

`A349134(n+1)+A110963(2*n+1)`
-/

namespace A349135.P17971484374736765866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (n + 1) + A110963 (2 * n + 1)

end

end A349135.P17971484374736765866

/-! ## A349135.P17220705894853409900

`A349134(n+1)+A153733(n)/2+1`
-/

namespace A349135.P17220705894853409900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349134 (n + 1) : ℚ) + ((A153733 n : ℚ) / 2 + 1)

end

end A349135.P17220705894853409900

/-! ## A349135.P1971004071038651734

`ceil(A349134(n+1)+A000265(n+1)/2)`
-/

namespace A349135.P1971004071038651734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A349134 (n + 1) : ℚ) + (A000265 (n + 1) : ℚ) / 2⌉

end

end A349135.P1971004071038651734

/-! ## A349135.P9761002409876154893

`A003602(n+1)+A349344(n+1)/(val(n+1, 2)+1)`
-/

namespace A349135.P9761002409876154893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) : ℚ) + (A349344 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)

end

end A349135.P9761002409876154893

/-! ## A349135.P11170210282681463268

`A349344(n+1)/(val(n+1, 2)+1)+A153733(n)/2+1`
-/

namespace A349135.P11170210282681463268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ) + ((A153733 n : ℚ) / 2 + 1)

end

end A349135.P11170210282681463268

/-! ## A349135.P14121440878661981622

`ceil(A000265(n+1)/2)+A349344(n+1)/(val(n+1, 2)+1)`
-/

namespace A349135.P14121440878661981622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A000265 (n + 1) : ℚ) / 2⌉ : ℚ) + (A349344 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)

end

end A349135.P14121440878661981622

/-! ## A349135.P9969127024466549279

`ceil(A166466(n+1)/6)+A349344(n+1)/(val(n+1, 2)+1)`
-/

namespace A349135.P9969127024466549279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A166466 (n + 1) : ℚ) / 6⌉ : ℚ) + (A349344 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)

end

end A349135.P9969127024466549279

/-! ## A349135.P5365687714666758975

`((n+1)/and(n+1, -(n+1))+1)/2+A349344(n+1)/A006519(n+1)`
-/

namespace A349135.P5365687714666758975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 + (A349344 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A349135.P5365687714666758975

/-! ## A349135.P8196106871757327890

`((n+1)/and(n+1, -(n+1))+1)/2+A349344(n+1)/A002867(val(n+1, 2))`
-/

namespace A349135.P8196106871757327890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 + (A349344 (n + 1) : ℚ) / (A002867 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A349135.P8196106871757327890

/-! ## A349135.P14585601884725819438

`((n+1)/and(n+1, -(n+1))+1)/2+A349344(n+1)/A002874(val(n+1, 2))`
-/

namespace A349135.P14585601884725819438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2 + (A349344 (n + 1) : ℚ) / (A002874 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A349135.P14585601884725819438

/-! ## A349135.P8453458497703191440

`A349134(n+1)+A032742(A000265(n+1)+1)`
-/

namespace A349135.P8453458497703191440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (n + 1) + A032742 (A000265 (n + 1) + 1).toNat

end

end A349135.P8453458497703191440

/-! ## A349135.P12793196245949037610

`A349134(n+1)+A078898(A000265(n+1)+1)`
-/

namespace A349135.P12793196245949037610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (n + 1) + A078898 (A000265 (n + 1) + 1).toNat

end

end A349135.P12793196245949037610

/-! ## A349135.P12089740228957212206

`A349134(n+1)+A246277(A000265(n+1)+1)`
-/

namespace A349135.P12089740228957212206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (n + 1) + A246277 (A000265 (n + 1) + 1).toNat

end

end A349135.P12089740228957212206

/-! ## A349135.P18067035921448587438

`A349134(n+1)+A359164(n+1)+A349136(n+1)`
-/

namespace A349135.P18067035921448587438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (n + 1) + (A359164 (n + 1) + A349136 (n + 1))

end

end A349135.P18067035921448587438

/-! ## A349135.P13445885259968972604

`A003602(n+1)+A349344(n+1)/A001511(n+1)`
-/

namespace A349135.P13445885259968972604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) : ℚ) + (A349344 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A349135.P13445885259968972604

/-! ## A349135.P16478000594236233967

`(A349344(n+1)+A109168(n+1))/A006519(n+1)`
-/

namespace A349135.P16478000594236233967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349344 (n + 1) + A109168 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A349135.P16478000594236233967

/-!
# A349136: Möbius transform of Kimberling's paraphrase, A003602.

The programs for A349136, the canonical program `A349136.P665510647861232205` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349136 has offset 1).

The definition of A349136 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349136.P665510647861232205

`∑{d}[n+1, A008683(#)*A003602((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A349136

/-- `∑{d}[n+1, A008683(#)*A003602((n+1)/#)]` -/
def P665510647861232205.Spec : Prop :=
  ∀ n, P665510647861232205.a n = A349136 (n + 1)

theorem P665510647861232205.correct : P665510647861232205.Spec := by
  intro n
  simp only [A349136, Nat.add_sub_cancel]

end A349136

/-! ## A349136.P8851639062583704127

`abs(A349444(2*(n+1)))`
-/

namespace A349136.P8851639062583704127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349444 (2 * (n + 1))|

end

end A349136.P8851639062583704127

namespace A349136

/-- `abs(A349444(2*(n+1)))` -/
def P8851639062583704127.Spec : Prop :=
  ∀ n, P8851639062583704127.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P6336093928431121457

`log2(gcd(2, n))*A055034(n+1)`
-/

namespace A349136.P6336093928431121457
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A055034 (n + 1) : ℝ)

end

end A349136.P6336093928431121457

namespace A349136

/-- `log2(gcd(2, n))*A055034(n+1)` -/
def P6336093928431121457.Spec : Prop :=
  ∀ n, P6336093928431121457.a n = (A349136 (n + 1) : ℝ)

end A349136

/-! ## A349136.P10741050935959696054

`char[2*n]*A349444(n+1)`
-/

namespace A349136.P10741050935959696054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A349444 (n + 1)

end

end A349136.P10741050935959696054

namespace A349136

/-- `char[2*n]*A349444(n+1)` -/
def P10741050935959696054.Spec : Prop :=
  ∀ n, P10741050935959696054.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P16522142081261333149

`∑[A349444(C(n, n%2)+n)]`
-/

namespace A349136.P16522142081261333149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349444 (Nat.choose n (n % 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349136.P16522142081261333149

namespace A349136

/-- `∑[A349444(C(n, n%2)+n)]` -/
def P16522142081261333149.Spec : Prop :=
  ∀ n, P16522142081261333149.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P4292135901971225210

`lcm(2, A319997(2*(n+1)))/2`
-/

namespace A349136.P4292135901971225210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A319997 (2 * (n + 1))) : ℚ) / 2

end

end A349136.P4292135901971225210

namespace A349136

/-- `lcm(2, A319997(2*(n+1)))/2` -/
def P4292135901971225210.Spec : Prop :=
  ∀ n, P4292135901971225210.a n = (A349136 (n + 1) : ℚ)

end A349136

/-! ## A349136.P3384709587991929458

`floor(A000010(n+1)/(a(n-1)²+2))` with `a(0)=1`
-/

namespace A349136.P3384709587991929458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A000010 (n + 1) : ℚ) / (a (n - 1) ^ 2 + 2 : ℚ)⌋

end

end A349136.P3384709587991929458

namespace A349136

/-- `floor(A000010(n+1)/(a(n-1)²+2))` -/
def P3384709587991929458.Spec : Prop :=
  ∀ n, P3384709587991929458.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P11039643832615502980

`A349444(A022998(n+1))`
-/

namespace A349136.P11039643832615502980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349444 (A022998 (n + 1)).toNat

end

end A349136.P11039643832615502980

namespace A349136

/-- `A349444(A022998(n+1))` -/
def P11039643832615502980.Spec : Prop :=
  ∀ n, P11039643832615502980.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P13757251460804811731

`A055034(n+1)*A059841(n)`
-/

namespace A349136.P13757251460804811731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) * A059841 n

end

end A349136.P13757251460804811731

namespace A349136

/-- `A055034(n+1)*A059841(n)` -/
def P13757251460804811731.Spec : Prop :=
  ∀ n, P13757251460804811731.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P10228590187445376286

`lcm(A055034(n+1), A056594(n))`
-/

namespace A349136.P10228590187445376286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055034 (n + 1)) (A056594 n)

end

end A349136.P10228590187445376286

namespace A349136

/-- `lcm(A055034(n+1), A056594(n))` -/
def P10228590187445376286.Spec : Prop :=
  ∀ n, (P10228590187445376286.a n : ℤ) = A349136 (n + 1)

end A349136

/-! ## A349136.P12648163453704509571

`lcm(A131379(n), A349444(n+1))`
-/

namespace A349136.P12648163453704509571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131379 n) (A349444 (n + 1))

end

end A349136.P12648163453704509571

namespace A349136

/-- `lcm(A131379(n), A349444(n+1))` -/
def P12648163453704509571.Spec : Prop :=
  ∀ n, (P12648163453704509571.a n : ℤ) = A349136 (n + 1)

end A349136

/-! ## A349136.P14175660442006277020

`and(A055034(n+1), A105812(n))`
-/

namespace A349136.P14175660442006277020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055034 (n + 1)) (A105812 n)

end

end A349136.P14175660442006277020

namespace A349136

/-- `and(A055034(n+1), A105812(n))` -/
def P14175660442006277020.Spec : Prop :=
  ∀ n, P14175660442006277020.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P2654361035652288939

`A003602(n+1)-A359164(n+1)`
-/

namespace A349136.P2654361035652288939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A359164 (n + 1)

end

end A349136.P2654361035652288939

namespace A349136

/-- `A003602(n+1)-A359164(n+1)` -/
def P2654361035652288939.Spec : Prop :=
  ∀ n, P2654361035652288939.a n = A349136 (n + 1)

theorem P2654361035652288939.correct : P2654361035652288939.Spec := by
  intro n
  simp only [A349136, Nat.add_sub_cancel, A349136.P2654361035652288939.a, A349136.P665510647861232205.f1, A349136.P665510647861232205.a, A003602, A003602.P7612175048291952394.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A359164, A359164.P14566603840914614086.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349136

/-! ## A349136.P7966826486035877891

`A349444(n+1)*A373157(n+1)`
-/

namespace A349136.P7966826486035877891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349444 (n + 1) * A373157 (n + 1)

end

end A349136.P7966826486035877891

namespace A349136

/-- `A349444(n+1)*A373157(n+1)` -/
def P7966826486035877891.Spec : Prop :=
  ∀ n, P7966826486035877891.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P9629750733599912535

`(1-A000035(n))*A055034(n+1)`
-/

namespace A349136.P9629750733599912535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A055034 (n + 1)

end

end A349136.P9629750733599912535

namespace A349136

/-- `(1-A000035(n))*A055034(n+1)` -/
def P9629750733599912535.Spec : Prop :=
  ∀ n, P9629750733599912535.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P10734985140359783232

`(2-A000034(n))*A055034(n+1)`
-/

namespace A349136.P10734985140359783232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 n) * A055034 (n + 1)

end

end A349136.P10734985140359783232

namespace A349136

/-- `(2-A000034(n))*A055034(n+1)` -/
def P10734985140359783232.Spec : Prop :=
  ∀ n, P10734985140359783232.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P11694358160140744710

`(A109613(n)-n)*A055034(n+1)`
-/

namespace A349136.P11694358160140744710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n - (n : ℤ)) * A055034 (n + 1)

end

end A349136.P11694358160140744710

namespace A349136

/-- `(A109613(n)-n)*A055034(n+1)` -/
def P11694358160140744710.Spec : Prop :=
  ∀ n, P11694358160140744710.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P4751292816380001630

`ceil(A000010(n+1)/2*A059841(n))`
-/

namespace A349136.P4751292816380001630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℚ) / 2 * (A059841 n : ℚ)⌉

end

end A349136.P4751292816380001630

namespace A349136

/-- `ceil(A000010(n+1)/2*A059841(n))` -/
def P4751292816380001630.Spec : Prop :=
  ∀ n, P4751292816380001630.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P12712392292087366675

`A349445(n+1)-A349446(2*(n+1))`
-/

namespace A349136.P12712392292087366675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349445 (n + 1) - A349446 (2 * (n + 1))

end

end A349136.P12712392292087366675

namespace A349136

/-- `A349445(n+1)-A349446(2*(n+1))` -/
def P12712392292087366675.Spec : Prop :=
  ∀ n, P12712392292087366675.a n = A349136 (n + 1)

end A349136

/-! ## A349136.P1308804575765704272

`A349448(2*(n+1))-A349444(2*(n+1))`
-/

namespace A349136.P1308804575765704272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349448 (2 * (n + 1)) - A349444 (2 * (n + 1))

end

end A349136.P1308804575765704272

namespace A349136

/-- `A349448(2*(n+1))-A349444(2*(n+1))` -/
def P1308804575765704272.Spec : Prop :=
  ∀ n, P1308804575765704272.a n = A349136 (n + 1)

end A349136

/-!
# A349137: a(n) = phi(A003602(n)), where A003602 is Kimberling's paraphrase of the binary number system, and phi is Euler totient function.

The programs for A349137, the canonical program `A349137.P16019714478779195286` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349137 has offset 1).

The definition of A349137 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349137.P16019714478779195286

`A000010(A003602(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A349137

/-- `A000010(A003602(n+1))` -/
def P16019714478779195286.Spec : Prop :=
  ∀ n, P16019714478779195286.a n = A349137 (n + 1)

theorem P16019714478779195286.correct : P16019714478779195286.Spec := by
  intro n
  simp only [A349137, Nat.add_sub_cancel]

end A349137

/-! ## A349137.P5597709571596280478

`A000010(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A349137.P5597709571596280478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A349137.P5597709571596280478

namespace A349137

/-- `A000010(floor(n/(xor(n, n+1)+1))+1)` -/
def P5597709571596280478.Spec : Prop :=
  ∀ n, P5597709571596280478.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P9345264943196585445

`A000010(ceil((n+1)/(xor(n, n+1)+1)))`
-/

namespace A349137.P9345264943196585445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉.toNat

end

end A349137.P9345264943196585445

namespace A349137

/-- `A000010(ceil((n+1)/(xor(n, n+1)+1)))` -/
def P9345264943196585445.Spec : Prop :=
  ∀ n, P9345264943196585445.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P16642018535490661497

`A000010(round((n+1)/(xor(n, n+1)+1)))`
-/

namespace A349137.P16642018535490661497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A349137.P16642018535490661497

namespace A349137

/-- `A000010(round((n+1)/(xor(n, n+1)+1)))` -/
def P16642018535490661497.Spec : Prop :=
  ∀ n, P16642018535490661497.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P14146573547252285874

`A000010(floor(n/2^val(n+1, 2))/2+1)`
-/

namespace A349137.P14146573547252285874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2 + 1)).toNat

end

end A349137.P14146573547252285874

namespace A349137

/-- `A000010(floor(n/2^val(n+1, 2))/2+1)` -/
def P14146573547252285874.Spec : Prop :=
  ∀ n, P14146573547252285874.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P5619495347152529855

`A000010(((n+1)/2^val(n+1, 2)+1)/2)`
-/

namespace A349137.P5619495347152529855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat

end

end A349137.P5619495347152529855

namespace A349137

/-- `A000010(((n+1)/2^val(n+1, 2)+1)/2)` -/
def P5619495347152529855.Spec : Prop :=
  ∀ n, P5619495347152529855.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P9098691162319501263

`A000010(floor(n/and(n+1, -(n+1)))/2+1)`
-/

namespace A349137.P9098691162319501263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2 + 1)).toNat

end

end A349137.P9098691162319501263

namespace A349137

/-- `A000010(floor(n/and(n+1, -(n+1)))/2+1)` -/
def P9098691162319501263.Spec : Prop :=
  ∀ n, P9098691162319501263.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P8738437741075779811

`A000010(((n+1)/and(n+1, -(n+1))+1)/2)`
-/

namespace A349137.P8738437741075779811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1) / 2)).toNat

end

end A349137.P8738437741075779811

namespace A349137

/-- `A000010(((n+1)/and(n+1, -(n+1))+1)/2)` -/
def P8738437741075779811.Spec : Prop :=
  ∀ n, P8738437741075779811.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P8186484595542096178

`A000010(A025480(n)+1)`
-/

namespace A349137.P8186484595542096178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A025480 n + 1).toNat

end

end A349137.P8186484595542096178

namespace A349137

/-- `A000010(A025480(n)+1)` -/
def P8186484595542096178.Spec : Prop :=
  ∀ n, P8186484595542096178.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P16480862393533510272

`A067541(A000265(n+1))`
-/

namespace A349137.P16480862393533510272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A000265 (n + 1)).toNat

end

end A349137.P16480862393533510272

namespace A349137

/-- `A067541(A000265(n+1))` -/
def P16480862393533510272.Spec : Prop :=
  ∀ n, P16480862393533510272.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P14802705854853107754

`A000010(A101279(n+1)+1)`
-/

namespace A349137.P14802705854853107754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A101279 (n + 1) + 1).toNat

end

end A349137.P14802705854853107754

namespace A349137

/-- `A000010(A101279(n+1)+1)` -/
def P14802705854853107754.Spec : Prop :=
  ∀ n, P14802705854853107754.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P2114432851564761737

`A000010(A103391(n+2)-1)`
-/

namespace A349137.P2114432851564761737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A103391 (n + 2) - 1).toNat

end

end A349137.P2114432851564761737

namespace A349137

/-- `A000010(A103391(n+2)-1)` -/
def P2114432851564761737.Spec : Prop :=
  ∀ n, P2114432851564761737.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P14196755060899963752

`A000010(A110963(2*n+1))`
-/

namespace A349137.P14196755060899963752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A110963 (2 * n + 1)).toNat

end

end A349137.P14196755060899963752

namespace A349137

/-- `A000010(A110963(2*n+1))` -/
def P14196755060899963752.Spec : Prop :=
  ∀ n, P14196755060899963752.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P8969415850395975422

`A000010(A153733(n)/2+1)`
-/

namespace A349137.P8969415850395975422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2 + 1)).toNat

end

end A349137.P8969415850395975422

namespace A349137

/-- `A000010(A153733(n)/2+1)` -/
def P8969415850395975422.Spec : Prop :=
  ∀ n, P8969415850395975422.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P12191433467052770296

`A000010(ceil(A000265(n+1)/2))`
-/

namespace A349137.P12191433467052770296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(A000265 (n + 1) : ℚ) / 2⌉.toNat

end

end A349137.P12191433467052770296

namespace A349137

/-- `A000010(ceil(A000265(n+1)/2))` -/
def P12191433467052770296.Spec : Prop :=
  ∀ n, P12191433467052770296.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P5961108932953267446

`A000010(round(A000265(n+1)/2))`
-/

namespace A349137.P5961108932953267446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) / 2)).toNat

end

end A349137.P5961108932953267446

namespace A349137

/-- `A000010(round(A000265(n+1)/2))` -/
def P5961108932953267446.Spec : Prop :=
  ∀ n, P5961108932953267446.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P17433666774941812498

`A000010(ceil(A166466(n+1)/6))`
-/

namespace A349137.P17433666774941812498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(A166466 (n + 1) : ℚ) / 6⌉.toNat

end

end A349137.P17433666774941812498

namespace A349137

/-- `A000010(ceil(A166466(n+1)/6))` -/
def P17433666774941812498.Spec : Prop :=
  ∀ n, P17433666774941812498.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P15878429830469722740

`A000010((A000265(n+1)+1)/2)`
-/

namespace A349137.P15878429830469722740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000265 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A349137.P15878429830469722740

namespace A349137

/-- `A000010((A000265(n+1)+1)/2)` -/
def P15878429830469722740.Spec : Prop :=
  ∀ n, P15878429830469722740.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P3212209586312801468

`A000010(2-A225381(n+1)+n)`
-/

namespace A349137.P3212209586312801468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 - A225381 (n + 1) + (n : ℤ)).toNat

end

end A349137.P3212209586312801468

namespace A349137

/-- `A000010(2-A225381(n+1)+n)` -/
def P3212209586312801468.Spec : Prop :=
  ∀ n, P3212209586312801468.a n = A349137 (n + 1)

end A349137

/-! ## A349137.P8132325609584656857

`A000010(A028242(floor(n/2^val(n+1, 2))))`
-/

namespace A349137.P8132325609584656857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028242 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat).toNat

end

end A349137.P8132325609584656857

namespace A349137

/-- `A000010(A028242(floor(n/2^val(n+1, 2))))` -/
def P8132325609584656857.Spec : Prop :=
  ∀ n, P8132325609584656857.a n = A349137 (n + 1)

end A349137

/-!
# A349138: Inverse Möbius transform of A349137, where A349137(n) = phi(A003602(n)).

The programs for A349138, the canonical program `A349138.P8801393356759692262` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349138 has offset 1).

The definition of A349138 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349138.P8801393356759692262

`∑{d}[n+1, A349137(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A349138

/-- `∑{d}[n+1, A349137(#)]` -/
def P8801393356759692262.Spec : Prop :=
  ∀ n, P8801393356759692262.a n = A349138 (n + 1)

theorem P8801393356759692262.correct : P8801393356759692262.Spec := by
  intro n
  simp only [A349138, Nat.add_sub_cancel]

end A349138

/-! ## A349138.P16585906615979585309

`∑{d}[n+1, A000010(A003602(#))]`
-/

namespace A349138.P16585906615979585309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A003602 d).toNat

end

end A349138.P16585906615979585309

namespace A349138

/-- `∑{d}[n+1, A000010(A003602(#))]` -/
def P16585906615979585309.Spec : Prop :=
  ∀ n, P16585906615979585309.a n = A349138 (n + 1)

end A349138

/-! ## A349138.P9004459517577726806

`∑{d}[n+1, A067541(A000265(#))]`
-/

namespace A349138.P9004459517577726806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067541 (A000265 d).toNat

end

end A349138.P9004459517577726806

namespace A349138

/-- `∑{d}[n+1, A067541(A000265(#))]` -/
def P9004459517577726806.Spec : Prop :=
  ∀ n, P9004459517577726806.a n = A349138 (n + 1)

end A349138

/-! ## A349138.P18380306166420060380

`A323902(n+1)+A166974(A234840(n))`
-/

namespace A349138.P18380306166420060380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (n + 1) + A166974 (A234840 n).toNat

end

end A349138.P18380306166420060380

namespace A349138

/-- `A323902(n+1)+A166974(A234840(n))` -/
def P18380306166420060380.Spec : Prop :=
  ∀ n, P18380306166420060380.a n = A349138 (n + 1)

end A349138

/-! ## A349138.P14048791132733382213

`A374995(A071943(n)*A157927(n+1))`
-/

namespace A349138.P14048791132733382213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (A071943 n * A157927 (n + 1)).toNat

end

end A349138.P14048791132733382213

namespace A349138

/-- `A374995(A071943(n)*A157927(n+1))` -/
def P14048791132733382213.Spec : Prop :=
  ∀ n, P14048791132733382213.a n = A349138 (n + 1)

end A349138

/-!
# A349139: a(n) = Sum_{d|n} A322582(d) * A348507(n/d), where A322582(n) = n - A003958(n) and A348507(n) = A003959(n) - n.

The programs for A349139, the canonical program `A349139.P9969738646670247629` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349139 has offset 1).

The definition of A349139 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, A348507, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349139.P9969738646670247629

`∑{d}[n+1, A322582(#)*A348507((n+1)/#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A349139

/-- `∑{d}[n+1, A322582(#)*A348507((n+1)/#)]` -/
def P9969738646670247629.Spec : Prop :=
  ∀ n, P9969738646670247629.a n = A349139 (n + 1)

theorem P9969738646670247629.correct : P9969738646670247629.Spec := by
  intro n
  simp only [A349139, Nat.add_sub_cancel]

end A349139

/-! ## A349139.P9007400345339937835

`A349170(n+1)-(A349129(n+1)+A348980(n+1))`
-/

namespace A349139.P9007400345339937835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349170 (n + 1) - (A349129 (n + 1) + A348980 (n + 1))

end

end A349139.P9007400345339937835

namespace A349139

/-- `A349170(n+1)-(A349129(n+1)+A348980(n+1))` -/
def P9007400345339937835.Spec : Prop :=
  ∀ n, P9007400345339937835.a n = A349139 (n + 1)

end A349139

/-! ## A349139.P10129982557953596927

`A349130(n+1)+A349140(n+1)-A349129(n+1)`
-/

namespace A349139.P10129982557953596927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349130 (n + 1) + (A349140 (n + 1) - A349129 (n + 1))

end

end A349139.P10129982557953596927

namespace A349139

/-- `A349130(n+1)+A349140(n+1)-A349129(n+1)` -/
def P10129982557953596927.Spec : Prop :=
  ∀ n, P10129982557953596927.a n = A349139 (n + 1)

end A349139

/-! ## A349139.P129607746356615328

`A335525(A305809(n+1)+1)`
-/

namespace A349139.P129607746356615328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (A305809 (n + 1) + 1).toNat

end

end A349139.P129607746356615328

namespace A349139

/-- `A335525(A305809(n+1)+1)` -/
def P129607746356615328.Spec : Prop :=
  ∀ n, P129607746356615328.a n = A349139 (n + 1)

end A349139

/-! ## A349139.P14801667419970757566

`A305809(n+1)+A185284(A344584(n+1))`
-/

namespace A349139.P14801667419970757566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305809 (n + 1) + A185284 (A344584 (n + 1)).toNat

end

end A349139.P14801667419970757566

namespace A349139

/-- `A305809(n+1)+A185284(A344584(n+1))` -/
def P14801667419970757566.Spec : Prop :=
  ∀ n, P14801667419970757566.a n = A349139 (n + 1)

end A349139

/-!
# A349140: a(n) = Sum_{d|n} d * A348507(n/d), where A348507(n) = A003959(n) - n, where A003959 is fully multiplicative with a(p) = (p+1).

The programs for A349140, the canonical program `A349140.P14032987347697036060` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349140 has offset 1).

The definition of A349140 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348507, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349140.P5073996205864047241

`∑{d}[n+1, A349141(#)]`
-/

namespace A349140.P5073996205864047241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349141 d

end

end A349140.P5073996205864047241

namespace A349140

/-- `∑{d}[n+1, A349141(#)]` -/
def P5073996205864047241.Spec : Prop :=
  ∀ n, P5073996205864047241.a n = A349140 (n + 1)

end A349140

/-! ## A349140.P14032987347697036060

`∑{d}[n+1, #*A348507((n+1)/#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A349140

/-- `∑{d}[n+1, #*A348507((n+1)/#)]` -/
def P14032987347697036060.Spec : Prop :=
  ∀ n, P14032987347697036060.a n = A349140 (n + 1)

theorem P14032987347697036060.correct : P14032987347697036060.Spec := by
  intro n
  simp only [A349140, Nat.add_sub_cancel]

end A349140

/-! ## A349140.P3166425196554783170

`A349170(n+1)-A038040(n+1)`
-/

namespace A349140.P3166425196554783170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349170 (n + 1) - A038040 (n + 1)

end

end A349140.P3166425196554783170

namespace A349140

/-- `A349170(n+1)-A038040(n+1)` -/
def P3166425196554783170.Spec : Prop :=
  ∀ n, P3166425196554783170.a n = A349140 (n + 1)

end A349140

/-! ## A349140.P9877354315925045943

`∑{d}[n+1, A000203(#)*A348971((n+1)/#)]`
-/

namespace A349140.P9877354315925045943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A348971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349140.P9877354315925045943

namespace A349140

/-- `∑{d}[n+1, A000203(#)*A348971((n+1)/#)]` -/
def P9877354315925045943.Spec : Prop :=
  ∀ n, P9877354315925045943.a n = A349140 (n + 1)

end A349140

/-! ## A349140.P5135025778596739111

`∑{d}[n+1, A008836(#)*A349142((n+1)/#)]`
-/

namespace A349140.P5135025778596739111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A349142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349140.P5135025778596739111

namespace A349140

/-- `∑{d}[n+1, A008836(#)*A349142((n+1)/#)]` -/
def P5135025778596739111.Spec : Prop :=
  ∀ n, P5135025778596739111.a n = A349140 (n + 1)

end A349140

/-! ## A349140.P10330730882637474479

`∑{d}[n+1, A055615(#)*A349143((n+1)/#)]`
-/

namespace A349140.P10330730882637474479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349140.P10330730882637474479

namespace A349140

/-- `∑{d}[n+1, A055615(#)*A349143((n+1)/#)]` -/
def P10330730882637474479.Spec : Prop :=
  ∀ n, P10330730882637474479.a n = A349140 (n + 1)

end A349140

/-! ## A349140.P8618631106489767857

`A349170(n+1)-(A349130(n+1)+A348980(n+1))`
-/

namespace A349140.P8618631106489767857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349170 (n + 1) - (A349130 (n + 1) + A348980 (n + 1))

end

end A349140.P8618631106489767857

namespace A349140

/-- `A349170(n+1)-(A349130(n+1)+A348980(n+1))` -/
def P8618631106489767857.Spec : Prop :=
  ∀ n, P8618631106489767857.a n = A349140 (n + 1)

end A349140

/-! ## A349140.P12587752906701640683

`A349129(n+1)+A349139(n+1)-A349130(n+1)`
-/

namespace A349140.P12587752906701640683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349129 (n + 1) + (A349139 (n + 1) - A349130 (n + 1))

end

end A349140.P12587752906701640683

namespace A349140

/-- `A349129(n+1)+A349139(n+1)-A349130(n+1)` -/
def P12587752906701640683.Spec : Prop :=
  ∀ n, P12587752906701640683.a n = A349140 (n + 1)

end A349140

/-!
# A349141: a(n) = Sum_{d|n} phi(n/d) * A348507(d), where A348507(n) = A003959(n) - n, and A003959 is fully multiplicative with a(p) = (p+1).

The programs for A349141, the canonical program `A349141.P14845518915107561647` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349141 has offset 1).

The definition of A349141 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348507, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349141.P15299134233755868230

`A349171(n+1)-A018804(n+1)`
-/

namespace A349141.P15299134233755868230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - A018804 (n + 1)

end

end A349141.P15299134233755868230

namespace A349141

/-- `A349171(n+1)-A018804(n+1)` -/
def P15299134233755868230.Spec : Prop :=
  ∀ n, P15299134233755868230.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P14845518915107561647

`∑{d}[n+1, A000010((n+1)/#)*A348507(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A349141

/-- `∑{d}[n+1, A000010((n+1)/#)*A348507(#)]` -/
def P14845518915107561647.Spec : Prop :=
  ∀ n, P14845518915107561647.a n = A349141 (n + 1)

theorem P14845518915107561647.correct : P14845518915107561647.Spec := by
  intro n
  simp only [A349141, Nat.add_sub_cancel]

end A349141

/-! ## A349141.P14057366009115048787

`∑{d}[n+1, A008683((n+1)/#)*A349140(#)]`
-/

namespace A349141.P14057366009115048787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A349140 d

end

end A349141.P14057366009115048787

namespace A349141

/-- `∑{d}[n+1, A008683((n+1)/#)*A349140(#)]` -/
def P14057366009115048787.Spec : Prop :=
  ∀ n, P14057366009115048787.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P6005712850489797334

`∑{#}[n, A348507(gcd(n+1, #))]`
-/

namespace A349141.P6005712850489797334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A348507 (Nat.gcd (n + 1) k)

end

end A349141.P6005712850489797334

namespace A349141

/-- `∑{#}[n, A348507(gcd(n+1, #))]` -/
def P6005712850489797334.Spec : Prop :=
  ∀ n, P6005712850489797334.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P2326115559744657206

`∑{d}[n+1, #*A348971((n+1)/#)]`
-/

namespace A349141.P2326115559744657206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A348971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349141.P2326115559744657206

namespace A349141

/-- `∑{d}[n+1, #*A348971((n+1)/#)]` -/
def P2326115559744657206.Spec : Prop :=
  ∀ n, P2326115559744657206.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P1525162314685623712

`A349171(n+1)-Δ[A209981(n)/32]`
-/

namespace A349141.P1525162314685623712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349171 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A349141.P1525162314685623712

namespace A349141

/-- `A349171(n+1)-Δ[A209981(n)/32]` -/
def P1525162314685623712.Spec : Prop :=
  ∀ n, P1525162314685623712.a n = (A349141 (n + 1) : ℚ)

end A349141

/-! ## A349141.P11575679574784147157

`A349171(n+1)-∑[Δ[A209295(n)]-1]`
-/

namespace A349141.P11575679574784147157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349141.P11575679574784147157

namespace A349141

/-- `A349171(n+1)-∑[Δ[A209295(n)]-1]` -/
def P11575679574784147157.Spec : Prop :=
  ∀ n, P11575679574784147157.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P4649286004618062873

`A349171(n+1)-(A006579(n+1)+1+n)`
-/

namespace A349141.P4649286004618062873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - (A006579 (n + 1) + 1 + (n : ℤ))

end

end A349141.P4649286004618062873

namespace A349141

/-- `A349171(n+1)-(A006579(n+1)+1+n)` -/
def P4649286004618062873.Spec : Prop :=
  ∀ n, P4649286004618062873.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P10370451917985517774

`A349171(n+1)-(A209295(n+1)-(n+1))`
-/

namespace A349141.P10370451917985517774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - (A209295 (n + 1) - (n + 1 : ℤ))

end

end A349141.P10370451917985517774

namespace A349141

/-- `A349171(n+1)-(A209295(n+1)-(n+1))` -/
def P10370451917985517774.Spec : Prop :=
  ∀ n, P10370451917985517774.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P15580725102847006739

`A349171(n+1)-(A268631(n+1)+Δ[n²])`
-/

namespace A349141.P15580725102847006739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - (A268631 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A349141.P15580725102847006739

namespace A349141

/-- `A349171(n+1)-(A268631(n+1)+Δ[n²])` -/
def P15580725102847006739.Spec : Prop :=
  ∀ n, P15580725102847006739.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P12270895405828664249

`∑{d}[n+1, A046692(#)*A349143((n+1)/#)]`
-/

namespace A349141.P12270895405828664249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349141.P12270895405828664249

namespace A349141

/-- `∑{d}[n+1, A046692(#)*A349143((n+1)/#)]` -/
def P12270895405828664249.Spec : Prop :=
  ∀ n, P12270895405828664249.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P4433000157332922832

`∑{d}[n+1, A158522(#)*A349142((n+1)/#)]`
-/

namespace A349141.P4433000157332922832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A349142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349141.P4433000157332922832

namespace A349141

/-- `∑{d}[n+1, A158522(#)*A349142((n+1)/#)]` -/
def P4433000157332922832.Spec : Prop :=
  ∀ n, P4433000157332922832.a n = A349141 (n + 1)

end A349141

/-! ## A349141.P6271403076664285014

`A349171(n+1)-(A349131(n+1)+A348981(n+1))`
-/

namespace A349141.P6271403076664285014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349171 (n + 1) - (A349131 (n + 1) + A348981 (n + 1))

end

end A349141.P6271403076664285014

namespace A349141

/-- `A349171(n+1)-(A349131(n+1)+A348981(n+1))` -/
def P6271403076664285014.Spec : Prop :=
  ∀ n, P6271403076664285014.a n = A349141 (n + 1)

end A349141

/-!
# A349142: a(n) = Sum_{d|n} psi(n/d) * A348507(d), where psi is Dedekind psi (A001615), A348507(n) = A003959(n) - n, and A003959 is fully multiplicative with a(p) = (p+1).

The programs for A349142, the canonical program `A349142.P2043599666543959663` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349142 has offset 1).

The definition of A349142 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348507, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349142.P16251998916218249934

`A349172(n+1)-A327251(n+1)`
-/

namespace A349142.P16251998916218249934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349172 (n + 1) - A327251 (n + 1)

end

end A349142.P16251998916218249934

namespace A349142

/-- `A349172(n+1)-A327251(n+1)` -/
def P16251998916218249934.Spec : Prop :=
  ∀ n, P16251998916218249934.a n = A349142 (n + 1)

theorem P16251998916218249934.correct : P16251998916218249934.Spec := by
  intro n
  simp only [A349142, Nat.add_sub_cancel, A349142.P16251998916218249934.a, A349142.P2043599666543959663.f1, A349142.P2043599666543959663.a, A001615, A001615.P12078511981713404634.a, A327251, A327251.P13631091954083186129.f1, A327251.P13631091954083186129.a, A348507, A348507.P8468116905144779811.a, A349172, A349172.P9409775987477653705.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A014963, A014963.P5975177236000282614.a, A063659, A063659.P17976112420004081821.a, A063658, A063658.P2835377320300210005.f1, A063658.P2835377320300210005.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349142

/-! ## A349142.P2043599666543959663

`∑{d}[n+1, A001615((n+1)/#)*A348507(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A349142

/-- `∑{d}[n+1, A001615((n+1)/#)*A348507(#)]` -/
def P2043599666543959663.Spec : Prop :=
  ∀ n, P2043599666543959663.a n = A349142 (n + 1)

theorem P2043599666543959663.correct : P2043599666543959663.Spec := by
  intro n
  simp only [A349142, Nat.add_sub_cancel]

end A349142

/-! ## A349142.P14181624302604733715

`∑{d}[n+1, A008966(#)*A349140((n+1)/#)]`
-/

namespace A349142.P14181624302604733715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A349140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349142.P14181624302604733715

namespace A349142

/-- `∑{d}[n+1, A008966(#)*A349140((n+1)/#)]` -/
def P14181624302604733715.Spec : Prop :=
  ∀ n, P14181624302604733715.a n = A349142 (n + 1)

end A349142

/-! ## A349142.P8918488732301959550

`∑{d}[n+1, A034444(#)*A349141((n+1)/#)]`
-/

namespace A349142.P8918488732301959550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A349141 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349142.P8918488732301959550

namespace A349142

/-- `∑{d}[n+1, A034444(#)*A349141((n+1)/#)]` -/
def P8918488732301959550.Spec : Prop :=
  ∀ n, P8918488732301959550.a n = A349142 (n + 1)

end A349142

/-! ## A349142.P6615253339180139473

`∑{d}[n+1, A060648(#)*A348971((n+1)/#)]`
-/

namespace A349142.P6615253339180139473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A348971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349142.P6615253339180139473

namespace A349142

/-- `∑{d}[n+1, A060648(#)*A348971((n+1)/#)]` -/
def P6615253339180139473.Spec : Prop :=
  ∀ n, P6615253339180139473.a n = A349142 (n + 1)

end A349142

/-! ## A349142.P18292604974573142809

`∑{d}[n+1, A328729(#)*A349143((n+1)/#)]`
-/

namespace A349142.P18292604974573142809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A349143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349142.P18292604974573142809

namespace A349142

/-- `∑{d}[n+1, A328729(#)*A349143((n+1)/#)]` -/
def P18292604974573142809.Spec : Prop :=
  ∀ n, P18292604974573142809.a n = A349142 (n + 1)

end A349142

/-! ## A349142.P4656226840840662679

`A349172(n+1)-(A349132(n+1)+A348982(n+1))`
-/

namespace A349142.P4656226840840662679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349172 (n + 1) - (A349132 (n + 1) + A348982 (n + 1))

end

end A349142.P4656226840840662679

namespace A349142

/-- `A349172(n+1)-(A349132(n+1)+A348982(n+1))` -/
def P4656226840840662679.Spec : Prop :=
  ∀ n, P4656226840840662679.a n = A349142 (n + 1)

theorem P4656226840840662679.correct : P4656226840840662679.Spec := by
  intro n
  simp only [A349142, Nat.add_sub_cancel, A349142.P4656226840840662679.a, A349142.P2043599666543959663.f1, A349142.P2043599666543959663.a, A001615, A001615.P12078511981713404634.a, A348507, A348507.P8468116905144779811.a, A348982, A348982.P3645871020152581300.f1, A348982.P3645871020152581300.a, A349132, A349132.P869711925521774844.a, A349172, A349172.P9409775987477653705.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A322582, A322582.P8560399753878851377.a, A327251, A327251.P13631091954083186129.f1, A327251.P13631091954083186129.a, A003958, A003958.P196685604458257440.a, A014963, A014963.P5975177236000282614.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A063659, A063659.P17976112420004081821.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349142

/-!
# A349143: a(n) = Sum_{d|n} A038040(d) * A348507(n/d), where A038040(n) = n*tau(n), A348507(n) = A003959(n) - n, and A003959 is fully multiplicative with a(p) = (p+1).

The programs for A349143, the canonical program `A349143.P9369779304935736499` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349143 has offset 1).

The definition of A349143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348507, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349143.P5990115332605292708

`∑{d}[n+1, #*A349140((n+1)/#)]`
-/

namespace A349143.P5990115332605292708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349143.P5990115332605292708

namespace A349143

/-- `∑{d}[n+1, #*A349140((n+1)/#)]` -/
def P5990115332605292708.Spec : Prop :=
  ∀ n, P5990115332605292708.a n = A349143 (n + 1)

end A349143

/-! ## A349143.P15157121544500569854

`∑{d}[n+1, A000203(#)*A349141((n+1)/#)]`
-/

namespace A349143.P15157121544500569854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349141 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349143.P15157121544500569854

namespace A349143

/-- `∑{d}[n+1, A000203(#)*A349141((n+1)/#)]` -/
def P15157121544500569854.Spec : Prop :=
  ∀ n, P15157121544500569854.a n = A349143 (n + 1)

end A349143

/-! ## A349143.P13416522005534404454

`∑{d}[n+1, A038040((n+1)/#)*A348507(#)]`
-/

namespace A349143.P13416522005534404454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A348507 d

end

end A349143.P13416522005534404454

namespace A349143

/-- `∑{d}[n+1, A038040((n+1)/#)*A348507(#)]` -/
def P13416522005534404454.Spec : Prop :=
  ∀ n, P13416522005534404454.a n = A349143 (n + 1)

end A349143

/-! ## A349143.P9369779304935736499

`∑{d}[n+1, A038040(#)*A348507((n+1)/#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A349143

/-- `∑{d}[n+1, A038040(#)*A348507((n+1)/#)]` -/
def P9369779304935736499.Spec : Prop :=
  ∀ n, P9369779304935736499.a n = A349143 (n + 1)

theorem P9369779304935736499.correct : P9369779304935736499.Spec := by
  intro n
  simp only [A349143, Nat.add_sub_cancel]

end A349143

/-! ## A349143.P1026992590194415322

`∑{d}[n+1, A060640(#)*A348971((n+1)/#)]`
-/

namespace A349143.P1026992590194415322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A348971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349143.P1026992590194415322

namespace A349143

/-- `∑{d}[n+1, A060640(#)*A348971((n+1)/#)]` -/
def P1026992590194415322.Spec : Prop :=
  ∀ n, P1026992590194415322.a n = A349143 (n + 1)

end A349143

/-! ## A349143.P6668113827917109766

`∑{d}[n+1, A206369(#)*A349142((n+1)/#)]`
-/

namespace A349143.P6668113827917109766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A349142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349143.P6668113827917109766

namespace A349143

/-- `∑{d}[n+1, A206369(#)*A349142((n+1)/#)]` -/
def P6668113827917109766.Spec : Prop :=
  ∀ n, P6668113827917109766.a n = A349143 (n + 1)

end A349143

/-!
# A349144: Numbers k for which A342671(k) [= gcd(sigma(k), A003961(k))] and A349161(k) [= A003961(k)/A342671(k)] are relatively prime, where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors function.

The programs for A349144, there is no canonical definition to state claims against.
-/

/-! ## A349144.P57880220872053797

`eq[1, A354997(n+1)]+1`
-/

namespace A349144.P57880220872053797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349144.P57880220872053797

/-! ## A349144.P18057334297650669737

`comp[A349168(n+1)-1]+1`
-/

namespace A349144.P18057334297650669737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349168 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A349144.P18057334297650669737

/-! ## A349144.P1622381564026278244

`lt[A288457(A354997(n+1)), A352499(n+1)²]+1`
-/

namespace A349144.P1622381564026278244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288457 (A354997 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352499 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A349144.P1622381564026278244

/-! ## A349144.P2221352828647667523

`lt[A168036(n), A112472(A014963(n+1))]`
-/

namespace A349144.P2221352828647667523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112472 (A014963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349144.P2221352828647667523

/-! ## A349144.P15297034148224106622

`lt[A369001(A000578(n+1)), A111008(n)]`
-/

namespace A349144.P15297034148224106622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (A000578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349144.P15297034148224106622

/-!
# A349145: Number of ordered n-tuples (x_1, x_2, x_3, ..., x_n) such that Sum_{k=1..n} k/x_k is an integer and x_k is an integer between 1 and n for 1 <= k <= n.

The programs for A349145, there is no canonical definition to state claims against.
-/

/-! ## A349145.P17333850766316985253

`A401450((n+1)^n-n)`
-/

namespace A349145.P17333850766316985253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401450 ((n + 1) ^ n - n)

end

end A349145.P17333850766316985253

/-! ## A349145.P8127384277580570158

`∑[A325393(2^(n+1))-n-n]`
-/

namespace A349145.P8127384277580570158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (2 ^ (n + 1)) - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349145.P8127384277580570158

/-!
# A349147: Triangle T(n,m) read by rows: the sum of runs of all sequences arranging n objects of one type and m objects of another type.

The programs for A349147, there is no canonical definition to state claims against.
-/

/-! ## A349147.P16366373632696377376

`A350512(A245300(n))`
-/

namespace A349147.P16366373632696377376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350512 (A245300 n).toNat

end

end A349147.P16366373632696377376

/-! ## A349147.P13402429074169943256

`A072088(A343599(n)+A014473(n))`
-/

namespace A349147.P13402429074169943256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A343599 n + A014473 n).toNat

end

end A349147.P13402429074169943256

/-! ## A349147.P5005062946233216835

`A090109(A343599(n)+A048720(n))`
-/

namespace A349147.P5005062946233216835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (A343599 n + A048720 n).toNat

end

end A349147.P5005062946233216835

/-! ## A349147.P1473994820380629080

`A090109(xor(A048720(n), A343599(n)))`
-/

namespace A349147.P1473994820380629080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (Int.xor (A048720 n) (A343599 n)).toNat

end

end A349147.P1473994820380629080

/-! ## A349147.P15281523691968106044

`A193842(n)+A007036(A096940(n+3))`
-/

namespace A349147.P15281523691968106044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 n + A007036 (A096940 (n + 3)).toNat

end

end A349147.P15281523691968106044

/-!
# A349148: Number of unordered n-tuples {x_1, x_2, x_3, ..., x_n} such that Sum_{k=1..n} 1/x_k is an integer and x_k is an integer between 1 and n for 1 <= k <= n.

The programs for A349148, there is no canonical definition to state claims against.
-/

/-! ## A349148.P11750947503873876953

`A102453(A001405(n))+A001949(n)`
-/

namespace A349148.P11750947503873876953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102453 (A001405 n).toNat + A001949 n

end

end A349148.P11750947503873876953

/-!
# A349149: Number of even-length integer partitions of n with at most one odd part in the conjugate partition.

The programs for A349149, there is no canonical definition to state claims against.
-/

/-! ## A349149.P7676725046453537638

`A100824(n)-A035363(xor(1, n))`
-/

namespace A349149.P7676725046453537638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 n - A035363 (Nat.xor 1 n)

end

end A349149.P7676725046453537638

/-! ## A349149.P5143685253426895473

`A100824(n)-A035363(abs(1-n))`
-/

namespace A349149.P5143685253426895473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 n - A035363 |1 - (n : ℤ)|.toNat

end

end A349149.P5143685253426895473

/-! ## A349149.P6642415102413067538

`A035363(n)+A100824(n)-A119620(n)`
-/

namespace A349149.P6642415102413067538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A100824 n - A119620 n)

end

end A349149.P6642415102413067538

/-! ## A349149.P11532247457801863017

`A027187(n)+A100824(n)-A347443(n)`
-/

namespace A349149.P11532247457801863017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A100824 n - A347443 n)

end

end A349149.P11532247457801863017

/-! ## A349149.P9370475733956842007

`A100824(n)+A347448(n)-A086543(n)`
-/

namespace A349149.P9370475733956842007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 n + (A347448 n - A086543 n)

end

end A349149.P9370475733956842007

/-!
# A349150: Heinz numbers of integer partitions with at most one odd part.

The programs for A349150, there is no canonical definition to state claims against.
-/

/-! ## A349150.P1866967395769057253

`record[n/a(A257991(n))]` with `a(0)=1`
-/

namespace A349150.P1866967395769057253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A257991 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349150.P1866967395769057253

/-! ## A349150.P15051623510277470202

`lt[A257991(n+1), 2]+1`
-/

namespace A349150.P15051623510277470202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349150.P15051623510277470202

/-! ## A349150.P6615585020947750365

`∪[lt[5*n, lcm(10, n)], A349158(n+1)]`
-/

namespace A349150.P6615585020947750365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A349150.P6615585020947750365

/-! ## A349150.P4275445217843238456

`lt[A257992(A118306(n+1)), 2]+1`
-/

namespace A349150.P4275445217843238456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A118306 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349150.P4275445217843238456

/-! ## A349150.P10729556595537030582

`lt[A000005(A247503(n+1)), 3]+1`
-/

namespace A349150.P10729556595537030582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A247503 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349150.P10729556595537030582

/-! ## A349150.P4350712153791625098

`∪[A045572(n+1), A349158(n+1)]`
-/

namespace A349150.P4350712153791625098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349150.P4350712153791625098

/-! ## A349150.P8254075162710309465

`∪[A066207(n+1), A349158(n+1)]`
-/

namespace A349150.P8254075162710309465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349150.P8254075162710309465

/-! ## A349150.P17808704623844902322

`∪[A236208(n+1), A349158(n+1)]`
-/

namespace A349150.P17808704623844902322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349150.P17808704623844902322

/-! ## A349150.P8541782230887173684

`∪[A324695(n+1), A349158(n+1)]`
-/

namespace A349150.P8541782230887173684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349150.P8541782230887173684

/-! ## A349150.P11782491193266876570

`∪[A336119(n+1), A349158(n+1)]`
-/

namespace A349150.P11782491193266876570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349150.P11782491193266876570

/-!
# A349151: Heinz numbers of integer partitions with alternating sum <= 1.

The programs for A349151, there is no canonical definition to state claims against.
-/

/-! ## A349151.P9951076500747506867

`lt[A344616(n+1), 2]+1`
-/

namespace A349151.P9951076500747506867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349151.P9951076500747506867

/-! ## A349151.P6532370643475684474

`lt[A316524(n+1)², 2]+1`
-/

namespace A349151.P6532370643475684474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349151.P6532370643475684474

/-! ## A349151.P16450839062457510075

`∪[(n+1)², A345958(n+1)]`
-/

namespace A349151.P16450839062457510075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349151.P16450839062457510075

/-! ## A349151.P13759122798550734212

`∪[A345958(n+1), Δ[A000330(n)]]`
-/

namespace A349151.P13759122798550734212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349151.P13759122798550734212

/-! ## A349151.P456133459920887491

`∪[A345958(n+1), A000290(n+1)]`
-/

namespace A349151.P456133459920887491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349151.P456133459920887491

/-! ## A349151.P15375310211156162245

`∪[A345958(n+1), A028982(n+1)]`
-/

namespace A349151.P15375310211156162245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349151.P15375310211156162245

/-! ## A349151.P4669458831943586222

`∪[A028982(n+1), A345959(n+1)]`
-/

namespace A349151.P4669458831943586222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349151.P4669458831943586222

/-! ## A349151.P3010660360512111763

`∪[A345958(n+1), A221222(n+1)]`
-/

namespace A349151.P3010660360512111763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349151.P3010660360512111763

/-! ## A349151.P8849060634731109698

`∪[A345958(n+1), A370785(n+1)]`
-/

namespace A349151.P8849060634731109698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349151.P8849060634731109698

/-! ## A349151.P7375934524820580062

`eq[A049240(n+1), A344616(n+1)]+1`
-/

namespace A349151.P7375934524820580062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349151.P7375934524820580062

/-!
# A349152: Standard composition numbers of compositions into divisors. Numbers k such that all parts of the k-th composition in standard order are divisors of the sum of parts.

The programs for A349152, there is no canonical definition to state claims against.
-/

/-! ## A349152.P8171652292811781353

`eq[1, A326840(A333219(n+1))]`
-/

namespace A349152.P8171652292811781353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349152.P8171652292811781353

/-! ## A349152.P8741072803971352740

`eq[1, A326840(A358506(n+1))]`
-/

namespace A349152.P8741072803971352740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (A358506 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349152.P8741072803971352740

/-! ## A349152.P7660685646148802718

`lt[A326302(A233312(n)), A284277(n+1)]`
-/

namespace A349152.P7660685646148802718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 (A233312 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349152.P7660685646148802718

/-! ## A349152.P10201259269905888278

`lt[A073139(n), A362228(3*(n+1))²]`
-/

namespace A349152.P10201259269905888278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362228 (3 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349152.P10201259269905888278

/-! ## A349152.P11438688864794495124

`eq[A163352(n), A163352(A352726(n))]`
-/

namespace A349152.P11438688864794495124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A352726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349152.P11438688864794495124

/-!
# A349153: Numbers k such that the k-th composition in standard order has sum equal to twice its reverse-alternating sum.

The programs for A349153, there is no canonical definition to state claims against.
-/

/-! ## A349153.P2976095654934207329

`A216589(A042469(n+1))`
-/

namespace A349153.P2976095654934207329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216589 (A042469 (n + 1)).toNat

end

end A349153.P2976095654934207329

/-!
# A349154: Numbers k such that the k-th composition in standard order has sum equal to negative twice its alternating sum.

The programs for A349154, there is no canonical definition to state claims against.
-/

/-! ## A349154.P9170962293710810455

`eq[2, ceil(log2(n+1))/2+A124754(n)+2]`
-/

namespace A349154.P9170962293710810455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℚ) / 2 + (A124754 n + 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A349154.P9170962293710810455

/-! ## A349154.P4559767585767170444

`eq[A070939(n), A071051(A006068(n))]`
-/

namespace A349154.P4559767585767170444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349154.P4559767585767170444

/-! ## A349154.P5919342327533692891

`eq[A070939(n), A267584(A038558(n))]`
-/

namespace A349154.P5919342327533692891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A038558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349154.P5919342327533692891

/-! ## A349154.P10419773025339824439

`eq[A070939(2*n+1), A250120(A209281(n+1))]`
-/

namespace A349154.P10419773025339824439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A209281 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349154.P10419773025339824439

/-!
# A349155: Numbers k such that the k-th composition in standard order has sum equal to negative twice its reverse-alternating sum.

The programs for A349155, there is no canonical definition to state claims against.
-/

/-! ## A349155.P15008699547797140673

`∩[A273039(n+1), A348614(n+1)]`
-/

namespace A349155.P15008699547797140673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349155.P15008699547797140673

/-!
# A349156: Number of integer partitions of n whose mean is not an integer.

The programs for A349156, there is no canonical definition to state claims against.
-/

/-! ## A349156.P16692547659934623952

`A000041(n)-A326028(2^n)`
-/

namespace A349156.P16692547659934623952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A326028 (2 ^ n)

end

end A349156.P16692547659934623952

/-! ## A349156.P10365753426703186184

`∑[A085811(n+3)]-A326028(A000079(n))`
-/

namespace A349156.P10365753426703186184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A326028 (A000079 n).toNat

end

end A349156.P10365753426703186184

/-!
# A349157: Heinz numbers of integer partitions where the number of even parts is equal to the number of odd conjugate parts.

The programs for A349157, there is no canonical definition to state claims against.
-/

/-! ## A349157.P14122976583554907584

`eq[A257992(n+1), A344616(n+1)]+1`
-/

namespace A349157.P14122976583554907584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349157.P14122976583554907584

/-! ## A349157.P9658738850006118058

`eq[abs(A316524(n+1)), A257992(n+1)]+1`
-/

namespace A349157.P9658738850006118058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316524 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349157.P9658738850006118058

/-! ## A349157.P62135434101772390

`eq[0, A350849(n+1)]+1`
-/

namespace A349157.P62135434101772390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349157.P62135434101772390

/-! ## A349157.P2459038229020936508

`eq[A350941(n), A350950(n+1)]+1`
-/

namespace A349157.P2459038229020936508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350941 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349157.P2459038229020936508

/-! ## A349157.P10260273635832978697

`record[gcd(A000027(n+1), A350849(n+1))]`
-/

namespace A349157.P10260273635832978697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A350849 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349157.P10260273635832978697

/-!
# A349158: Heinz numbers of integer partitions with exactly one odd part.

The programs for A349158, there is no canonical definition to state claims against.
-/

/-! ## A349158.P12845075072067093920

`eq[1, A257991(n+1)]+1`
-/

namespace A349158.P12845075072067093920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349158.P12845075072067093920

/-! ## A349158.P10830392527779751700

`record[n/a(A257991(n))]` with `a(0)=2, a(1)=1`
-/

namespace A349158.P10830392527779751700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A257991 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349158.P10830392527779751700

/-! ## A349158.P16378143280188568164

`eq[1, A257991(A008486(n))]`
-/

namespace A349158.P16378143280188568164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349158.P16378143280188568164

/-! ## A349158.P2870610588146660385

`eq[1, A257991(A028310(n))]`
-/

namespace A349158.P2870610588146660385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349158.P2870610588146660385

/-! ## A349158.P18207663141554219091

`eq[2, A257991(A004277(n))]`
-/

namespace A349158.P18207663141554219091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349158.P18207663141554219091

/-! ## A349158.P3529851025599479792

`eq[2, A257991(A008458(n))]`
-/

namespace A349158.P3529851025599479792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349158.P3529851025599479792

/-! ## A349158.P17495021833556254093

`eq[2, A257991(A008706(n))]`
-/

namespace A349158.P17495021833556254093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349158.P17495021833556254093

/-! ## A349158.P887036067294264580

`eq[2, A000005(A247503(n+1))]+1`
-/

namespace A349158.P887036067294264580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A247503 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349158.P887036067294264580

/-! ## A349158.P2183453617376534132

`eq[1, A001222(A247503(n+2))]+2`
-/

namespace A349158.P2183453617376534132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247503 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A349158.P2183453617376534132

/-! ## A349158.P14556868202974505992

`eq[A257992(n+1)+1, A001222(n+1)]+1`
-/

namespace A349158.P14556868202974505992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349158.P14556868202974505992

/-!
# A349159: Numbers whose sum of prime indices is twice their alternating sum.

The programs for A349159, there is no canonical definition to state claims against.
-/

/-! ## A349159.P11157860351728530356

`∩[A026422(n+1), A349160(n+1)]`
-/

namespace A349159.P11157860351728530356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349159.P11157860351728530356

/-! ## A349159.P5829288093038443284

`∩[A344609(n+1), A349160(n+1)]`
-/

namespace A349159.P5829288093038443284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349159.P5829288093038443284

/-!
# A349160: Numbers whose sum of prime indices is twice their reverse-alternating sum.

The programs for A349160, there is no canonical definition to state claims against.
-/

/-! ## A349160.P3332003123537519401

`∪[A348617(n+1), A349159(n+1)]`
-/

namespace A349160.P3332003123537519401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349160.P3332003123537519401

/-!
# A349161: a(n) = A003961(n) / gcd(sigma(n), A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

The programs for A349161, the canonical program `A349161.P8652954744420952419` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349161 has offset 1).

The definition of A349161 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349164, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349161.P8652954744420952419

`A003961(A349164(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349161

/-- `A003961(A349164(n+1))` -/
def P8652954744420952419.Spec : Prop :=
  ∀ n, P8652954744420952419.a n = A349161 (n + 1)

theorem P8652954744420952419.correct : P8652954744420952419.Spec := by
  intro n
  simp only [A349161, Nat.add_sub_cancel]

end A349161

/-! ## A349161.P6500018630636352976

`A003961(n+1)/A342671(n+1)`
-/

namespace A349161.P6500018630636352976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349161.P6500018630636352976

namespace A349161

/-- `A003961(n+1)/A342671(n+1)` -/
def P6500018630636352976.Spec : Prop :=
  ∀ n, P6500018630636352976.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P15736114969296871540

`A003961(n+1)/gcd(A000203(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349161.P15736114969296871540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)) : ℚ)

end

end A349161.P15736114969296871540

namespace A349161

/-- `A003961(n+1)/gcd(A000203(n+1), A003961(n+1))` -/
def P15736114969296871540.Spec : Prop :=
  ∀ n, P15736114969296871540.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P11127983467924755848

`A342672(n+1)/A000203(n+1)`
-/

namespace A349161.P11127983467924755848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342672 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A349161.P11127983467924755848

namespace A349161

/-- `A342672(n+1)/A000203(n+1)` -/
def P11127983467924755848.Spec : Prop :=
  ∀ n, P11127983467924755848.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P5094974297669037631

`A003961((n+1)/A349163(n+1))`
-/

namespace A349161.P5094974297669037631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A349163 (n + 1) : ℚ))).toNat

end

end A349161.P5094974297669037631

namespace A349161

/-- `A003961((n+1)/A349163(n+1))` -/
def P5094974297669037631.Spec : Prop :=
  ∀ n, P5094974297669037631.a n = A349161 (n + 1)

end A349161

/-! ## A349161.P829010954795533251

`(A243501(n+1)-1)/A342671(n+1)`
-/

namespace A349161.P829010954795533251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) - 1 : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349161.P829010954795533251

namespace A349161

/-- `(A243501(n+1)-1)/A342671(n+1)` -/
def P829010954795533251.Spec : Prop :=
  ∀ n, P829010954795533251.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P6378210533678851975

`(A286385(n+1)+A000203(n+1))/A342671(n+1)`
-/

namespace A349161.P6378210533678851975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286385 (n + 1) + A000203 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349161.P6378210533678851975

namespace A349161

/-- `(A286385(n+1)+A000203(n+1))/A342671(n+1)` -/
def P6378210533678851975.Spec : Prop :=
  ∀ n, P6378210533678851975.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P17074163303472673038

`A349162(n+1)+A286385(n+1)/A342671(n+1)`
-/

namespace A349161.P17074163303472673038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349162 (n + 1) : ℚ) + (A286385 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349161.P17074163303472673038

namespace A349161

/-- `A349162(n+1)+A286385(n+1)/A342671(n+1)` -/
def P17074163303472673038.Spec : Prop :=
  ∀ n, P17074163303472673038.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P9299325063054070362

`A342672(n+1)/(A003961(n+1)-A286385(n+1))`
-/

namespace A349161.P9299325063054070362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342672 (n + 1) : ℚ) / (A003961 (n + 1) - A286385 (n + 1) : ℚ)

end

end A349161.P9299325063054070362

namespace A349161

/-- `A342672(n+1)/(A003961(n+1)-A286385(n+1))` -/
def P9299325063054070362.Spec : Prop :=
  ∀ n, P9299325063054070362.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P16456551017506596111

`(A003973(n+1)-A336851(n+1))/A342671(n+1)`
-/

namespace A349161.P16456551017506596111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) - A336851 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349161.P16456551017506596111

namespace A349161

/-- `(A003973(n+1)-A336851(n+1))/A342671(n+1)` -/
def P16456551017506596111.Spec : Prop :=
  ∀ n, P16456551017506596111.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P4852680522506229760

`A003961(n+1)/A000203(n+1)*A349162(n+1)`
-/

namespace A349161.P4852680522506229760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A349162 (n + 1) : ℚ)

end

end A349161.P4852680522506229760

namespace A349161

/-- `A003961(n+1)/A000203(n+1)*A349162(n+1)` -/
def P4852680522506229760.Spec : Prop :=
  ∀ n, P4852680522506229760.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P16024424464820507054

`A003961(n+1)/A161942(n+1)*A348992(n+1)`
-/

namespace A349161.P16024424464820507054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A161942 (n + 1) : ℚ) * (A348992 (n + 1) : ℚ)

end

end A349161.P16024424464820507054

namespace A349161

/-- `A003961(n+1)/A161942(n+1)*A348992(n+1)` -/
def P16024424464820507054.Spec : Prop :=
  ∀ n, P16024424464820507054.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P13265086404782863093

`A341529(n+1)/(A000203(n+1)*A342671(n+1))`
-/

namespace A349161.P13265086404782863093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A000203 (n + 1) * A342671 (n + 1) : ℚ)

end

end A349161.P13265086404782863093

namespace A349161

/-- `A341529(n+1)/(A000203(n+1)*A342671(n+1))` -/
def P13265086404782863093.Spec : Prop :=
  ∀ n, P13265086404782863093.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P7596842358402097561

`A003961(n+1)/A341529(n+1)*A342672(n+1)`
-/

namespace A349161.P7596842358402097561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A341529 (n + 1) : ℚ) * (A342672 (n + 1) : ℚ)

end

end A349161.P7596842358402097561

namespace A349161

/-- `A003961(n+1)/A341529(n+1)*A342672(n+1)` -/
def P7596842358402097561.Spec : Prop :=
  ∀ n, P7596842358402097561.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P12972533793350779129

`A003961(n+1)*A324198(n+1)/A379488(n+1)`
-/

namespace A349161.P12972533793350779129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) * A324198 (n + 1) : ℚ) / (A379488 (n + 1) : ℚ)

end

end A349161.P12972533793350779129

namespace A349161

/-- `A003961(n+1)*A324198(n+1)/A379488(n+1)` -/
def P12972533793350779129.Spec : Prop :=
  ∀ n, P12972533793350779129.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P1891697320121272830

`A322361(n+1)/A342671(n+1)*A348994(n+1)`
-/

namespace A349161.P1891697320121272830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322361 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ) * (A348994 (n + 1) : ℚ)

end

end A349161.P1891697320121272830

namespace A349161

/-- `A322361(n+1)/A342671(n+1)*A348994(n+1)` -/
def P1891697320121272830.Spec : Prop :=
  ∀ n, P1891697320121272830.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P7102023964071914905

`A342672(n+1)/(A342671(n+1)*A349162(n+1))`
-/

namespace A349161.P7102023964071914905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342672 (n + 1) : ℚ) / (A342671 (n + 1) * A349162 (n + 1) : ℚ)

end

end A349161.P7102023964071914905

namespace A349161

/-- `A342672(n+1)/(A342671(n+1)*A349162(n+1))` -/
def P7102023964071914905.Spec : Prop :=
  ∀ n, P7102023964071914905.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P5306761249279046182

`A003961(n+1)²/A341529(n+1)*A349162(n+1)`
-/

namespace A349161.P5306761249279046182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) ^ 2 : ℚ) / (A341529 (n + 1) : ℚ) * (A349162 (n + 1) : ℚ)

end

end A349161.P5306761249279046182

namespace A349161

/-- `A003961(n+1)²/A341529(n+1)*A349162(n+1)` -/
def P5306761249279046182.Spec : Prop :=
  ∀ n, P5306761249279046182.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P4072942164241418913

`A003961(n+1)/A161942(n+1)*A003961(A348993(n+1))`
-/

namespace A349161.P4072942164241418913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A161942 (n + 1) : ℚ) * (A003961 (A348993 (n + 1)).toNat : ℚ)

end

end A349161.P4072942164241418913

namespace A349161

/-- `A003961(n+1)/A161942(n+1)*A003961(A348993(n+1))` -/
def P4072942164241418913.Spec : Prop :=
  ∀ n, P4072942164241418913.a n = (A349161 (n + 1) : ℚ)

end A349161

/-! ## A349161.P10775411472216760312

`A003961((n+1)²)/A341529(n+1)*A349162(n+1)`
-/

namespace A349161.P10775411472216760312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 ((n + 1) ^ 2) : ℚ) / (A341529 (n + 1) : ℚ) * (A349162 (n + 1) : ℚ)

end

end A349161.P10775411472216760312

namespace A349161

/-- `A003961((n+1)²)/A341529(n+1)*A349162(n+1)` -/
def P10775411472216760312.Spec : Prop :=
  ∀ n, P10775411472216760312.a n = (A349161 (n + 1) : ℚ)

end A349161

/-!
# A349162: a(n) = sigma(n) / gcd(sigma(n), A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

The programs for A349162, the canonical program `A349162.P4701200943170105662` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349162 has offset 1).

The definition of A349162 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349162.P4701200943170105662

`A000203(n+1)/A342671(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349162

/-- `A000203(n+1)/A342671(n+1)` -/
def P4701200943170105662.Spec : Prop :=
  ∀ n, P4701200943170105662.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P2032837190689980603

`A000203(n+1)/gcd(A000203(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349162.P2032837190689980603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A003961 (n + 1)) : ℚ)

end

end A349162.P2032837190689980603

namespace A349162

/-- `A000203(n+1)/gcd(A000203(n+1), A003961(n+1))` -/
def P2032837190689980603.Spec : Prop :=
  ∀ n, P2032837190689980603.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P12449290980316236411

`A082903(n+1)*A348992(n+1)`
-/

namespace A349162.P12449290980316236411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082903 (n + 1) * A348992 (n + 1)

end

end A349162.P12449290980316236411

namespace A349162

/-- `A082903(n+1)*A348992(n+1)` -/
def P12449290980316236411.Spec : Prop :=
  ∀ n, P12449290980316236411.a n = A349162 (n + 1)

end A349162

/-! ## A349162.P6608101247384624114

`A342672(n+1)/A003961(n+1)`
-/

namespace A349162.P6608101247384624114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342672 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ)

end

end A349162.P6608101247384624114

namespace A349162

/-- `A342672(n+1)/A003961(n+1)` -/
def P6608101247384624114.Spec : Prop :=
  ∀ n, P6608101247384624114.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P10359385901963598489

`A074400(n+1)/(2*A342671(n+1))`
-/

namespace A349162.P10359385901963598489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A342671 (n + 1) : ℚ)

end

end A349162.P10359385901963598489

namespace A349162

/-- `A074400(n+1)/(2*A342671(n+1))` -/
def P10359385901963598489.Spec : Prop :=
  ∀ n, P10359385901963598489.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P10942430075221982387

`floor(sqrt(A258774(n+1))/A342671(n+1))`
-/

namespace A349162.P10942430075221982387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A258774 (n + 1) : ℝ) / (A342671 (n + 1) : ℝ)⌋

end

end A349162.P10942430075221982387

namespace A349162

/-- `floor(sqrt(A258774(n+1))/A342671(n+1))` -/
def P10942430075221982387.Spec : Prop :=
  ∀ n, P10942430075221982387.a n = A349162 (n + 1)

end A349162

/-! ## A349162.P6027651332969915418

`A000203(n+1)/A003961(A349163(n+1))`
-/

namespace A349162.P6027651332969915418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A003961 (A349163 (n + 1)).toNat : ℚ)

end

end A349162.P6027651332969915418

namespace A349162

/-- `A000203(n+1)/A003961(A349163(n+1))` -/
def P6027651332969915418.Spec : Prop :=
  ∀ n, P6027651332969915418.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P12143141461020210358

`A000027(A074400(n+1)/2)/A342671(n+1)`
-/

namespace A349162.P12143141461020210358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349162.P12143141461020210358

namespace A349162

/-- `A000027(A074400(n+1)/2)/A342671(n+1)` -/
def P12143141461020210358.Spec : Prop :=
  ∀ n, P12143141461020210358.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P2737171254626111845

`round(A319528(n+1)/8)/A003961(A349163(n+1))`
-/

namespace A349162.P2737171254626111845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 8) : ℚ) / (A003961 (A349163 (n + 1)).toNat : ℚ)

end

end A349162.P2737171254626111845

namespace A349162

/-- `round(A319528(n+1)/8)/A003961(A349163(n+1))` -/
def P2737171254626111845.Spec : Prop :=
  ∀ n, P2737171254626111845.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P17868871388644982830

`(A001065(n+1)+1+n)/A003961(A349163(n+1))`
-/

namespace A349162.P17868871388644982830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) : ℚ) / (A003961 (A349163 (n + 1)).toNat : ℚ)

end

end A349162.P17868871388644982830

namespace A349162

/-- `(A001065(n+1)+1+n)/A003961(A349163(n+1))` -/
def P17868871388644982830.Spec : Prop :=
  ∀ n, P17868871388644982830.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P9316140427490271190

`(A003961(n+1)-A286385(n+1))/A342671(n+1)`
-/

namespace A349162.P9316140427490271190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A286385 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349162.P9316140427490271190

namespace A349162

/-- `(A003961(n+1)-A286385(n+1))/A342671(n+1)` -/
def P9316140427490271190.Spec : Prop :=
  ∀ n, P9316140427490271190.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P11040736319175809127

`A349161(n+1)-A286385(n+1)/A342671(n+1)`
-/

namespace A349162.P11040736319175809127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349161 (n + 1) : ℚ) - (A286385 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349162.P11040736319175809127

namespace A349162

/-- `A349161(n+1)-A286385(n+1)/A342671(n+1)` -/
def P11040736319175809127.Spec : Prop :=
  ∀ n, P11040736319175809127.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P9814176284964721180

`A000203(n+1)/A003961(n+1)*A349161(n+1)`
-/

namespace A349162.P9814176284964721180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A349161 (n + 1) : ℚ)

end

end A349162.P9814176284964721180

namespace A349162

/-- `A000203(n+1)/A003961(n+1)*A349161(n+1)` -/
def P9814176284964721180.Spec : Prop :=
  ∀ n, P9814176284964721180.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P4797510940062481835

`A000203(n+1)/A161942(n+1)*A348992(n+1)`
-/

namespace A349162.P4797510940062481835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A161942 (n + 1) : ℚ) * (A348992 (n + 1) : ℚ)

end

end A349162.P4797510940062481835

namespace A349162

/-- `A000203(n+1)/A161942(n+1)*A348992(n+1)` -/
def P4797510940062481835.Spec : Prop :=
  ∀ n, P4797510940062481835.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P9873934036012744089

`A000203(n+1)/A341529(n+1)*A342672(n+1)`
-/

namespace A349162.P9873934036012744089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A341529 (n + 1) : ℚ) * (A342672 (n + 1) : ℚ)

end

end A349162.P9873934036012744089

namespace A349162

/-- `A000203(n+1)/A341529(n+1)*A342672(n+1)` -/
def P9873934036012744089.Spec : Prop :=
  ∀ n, P9873934036012744089.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P18063562078608873869

`A341529(n+1)/(A003961(n+1)*A342671(n+1))`
-/

namespace A349162.P18063562078608873869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A003961 (n + 1) * A342671 (n + 1) : ℚ)

end

end A349162.P18063562078608873869

namespace A349162

/-- `A341529(n+1)/(A003961(n+1)*A342671(n+1))` -/
def P18063562078608873869.Spec : Prop :=
  ∀ n, P18063562078608873869.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P2240278326750847178

`A351544(n+1)/A342671(n+1)*A351546(n+1)`
-/

namespace A349162.P2240278326750847178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351544 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ) * (A351546 (n + 1) : ℚ)

end

end A349162.P2240278326750847178

namespace A349162

/-- `A351544(n+1)/A342671(n+1)*A351546(n+1)` -/
def P2240278326750847178.Spec : Prop :=
  ∀ n, P2240278326750847178.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P18260982661706661130

`A351545(n+1)/A342671(n+1)*A351547(n+1)`
-/

namespace A349162.P18260982661706661130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351545 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ) * (A351547 (n + 1) : ℚ)

end

end A349162.P18260982661706661130

namespace A349162

/-- `A351545(n+1)/A342671(n+1)*A351547(n+1)` -/
def P18260982661706661130.Spec : Prop :=
  ∀ n, P18260982661706661130.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P3141632254169135398

`A355932(n+1)/A342671(n+1)*A355934(n+1)`
-/

namespace A349162.P3141632254169135398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355932 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ) * (A355934 (n + 1) : ℚ)

end

end A349162.P3141632254169135398

namespace A349162

/-- `A355932(n+1)/A342671(n+1)*A355934(n+1)` -/
def P3141632254169135398.Spec : Prop :=
  ∀ n, P3141632254169135398.a n = (A349162 (n + 1) : ℚ)

end A349162

/-! ## A349162.P7751820471024506698

`A341529(n+1)/A003961(n+1)²*A349161(n+1)`
-/

namespace A349162.P7751820471024506698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A003961 (n + 1) ^ 2 : ℚ) * (A349161 (n + 1) : ℚ)

end

end A349162.P7751820471024506698

namespace A349162

/-- `A341529(n+1)/A003961(n+1)²*A349161(n+1)` -/
def P7751820471024506698.Spec : Prop :=
  ∀ n, P7751820471024506698.a n = (A349162 (n + 1) : ℚ)

end A349162

/-!
# A349163: a(n) = A064989(gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

The programs for A349163, the canonical program `A349163.P5024977655063574088` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349163 has offset 1).

The definition of A349163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349163.P11840546224986819350

`(n+1)/A349164(n+1)`
-/

namespace A349163.P11840546224986819350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A349164 (n + 1) : ℚ)

end

end A349163.P11840546224986819350

namespace A349163

/-- `(n+1)/A349164(n+1)` -/
def P11840546224986819350.Spec : Prop :=
  ∀ n, P11840546224986819350.a n = (A349163 (n + 1) : ℚ)

end A349163

/-! ## A349163.P13103992180201182564

`A064989(A342671(n+1))`
-/

namespace A349163.P13103992180201182564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A342671 (n + 1)).toNat

end

end A349163.P13103992180201182564

namespace A349163

/-- `A064989(A342671(n+1))` -/
def P13103992180201182564.Spec : Prop :=
  ∀ n, P13103992180201182564.a n = A349163 (n + 1)

end A349163

/-! ## A349163.P5024977655063574088

`A064989(gcd(A000203(n+1), A003961(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349163

/-- `A064989(gcd(A000203(n+1), A003961(n+1)))` -/
def P5024977655063574088.Spec : Prop :=
  ∀ n, P5024977655063574088.a n = A349163 (n + 1)

theorem P5024977655063574088.correct : P5024977655063574088.Spec := by
  intro n
  simp only [A349163, Nat.add_sub_cancel]

end A349163

/-! ## A349163.P10832042001008590963

`gcd(n+1, A350073(n+1))`
-/

namespace A349163.P10832042001008590963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A350073 (n + 1))

end

end A349163.P10832042001008590963

namespace A349163

/-- `gcd(n+1, A350073(n+1))` -/
def P10832042001008590963.Spec : Prop :=
  ∀ n, (P10832042001008590963.a n : ℤ) = A349163 (n + 1)

end A349163

/-! ## A349163.P16965403557298208748

`A283463(A342671(n+1)+1)`
-/

namespace A349163.P16965403557298208748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A342671 (n + 1) + 1).toNat

end

end A349163.P16965403557298208748

namespace A349163

/-- `A283463(A342671(n+1)+1)` -/
def P16965403557298208748.Spec : Prop :=
  ∀ n, P16965403557298208748.a n = A349163 (n + 1)

end A349163

/-! ## A349163.P4180397334569169308

`A350073(n+1)/A348993(n+1)`
-/

namespace A349163.P4180397334569169308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350073 (n + 1) : ℚ) / (A348993 (n + 1) : ℚ)

end

end A349163.P4180397334569169308

namespace A349163

/-- `A350073(n+1)/A348993(n+1)` -/
def P4180397334569169308.Spec : Prop :=
  ∀ n, P4180397334569169308.a n = (A349163 (n + 1) : ℚ)

end A349163

/-! ## A349163.P6523554276477516534

`A064989(A000203(n+1)/A349162(n+1))`
-/

namespace A349163.P6523554276477516534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A349162 (n + 1) : ℚ))).toNat

end

end A349163.P6523554276477516534

namespace A349163

/-- `A064989(A000203(n+1)/A349162(n+1))` -/
def P6523554276477516534.Spec : Prop :=
  ∀ n, P6523554276477516534.a n = A349163 (n + 1)

end A349163

/-! ## A349163.P1096916476877031736

`A064989(A161942(n+1)/A348992(n+1))`
-/

namespace A349163.P1096916476877031736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A161942 (n + 1) : ℚ) / (A348992 (n + 1) : ℚ))).toNat

end

end A349163.P1096916476877031736

namespace A349163

/-- `A064989(A161942(n+1)/A348992(n+1))` -/
def P1096916476877031736.Spec : Prop :=
  ∀ n, P1096916476877031736.a n = A349163 (n + 1)

end A349163

/-! ## A349163.P15079659240972786568

`A064989(A161942(n+1))/A348993(n+1)`
-/

namespace A349163.P15079659240972786568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A161942 (n + 1)).toNat : ℚ) / (A348993 (n + 1) : ℚ)

end

end A349163.P15079659240972786568

namespace A349163

/-- `A064989(A161942(n+1))/A348993(n+1)` -/
def P15079659240972786568.Spec : Prop :=
  ∀ n, P15079659240972786568.a n = (A349163 (n + 1) : ℚ)

end A349163

/-! ## A349163.P9262969550039014465

`A064989(A000203(n+1)/A348992(n+1))`
-/

namespace A349163.P9262969550039014465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A348992 (n + 1) : ℚ))).toNat

end

end A349163.P9262969550039014465

namespace A349163

/-- `A064989(A000203(n+1)/A348992(n+1))` -/
def P9262969550039014465.Spec : Prop :=
  ∀ n, P9262969550039014465.a n = A349163 (n + 1)

end A349163

/-! ## A349163.P12660561048245991428

`A350073(n+1)/A064989(A349162(n+1))`
-/

namespace A349163.P12660561048245991428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350073 (n + 1) : ℚ) / (A064989 (A349162 (n + 1)).toNat : ℚ)

end

end A349163.P12660561048245991428

namespace A349163

/-- `A350073(n+1)/A064989(A349162(n+1))` -/
def P12660561048245991428.Spec : Prop :=
  ∀ n, P12660561048245991428.a n = (A349163 (n + 1) : ℚ)

end A349163

/-! ## A349163.P11207353763376832470

`A064989(A000203(n+1))/A348993(n+1)`
-/

namespace A349163.P11207353763376832470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A000203 (n + 1)).toNat : ℚ) / (A348993 (n + 1) : ℚ)

end

end A349163.P11207353763376832470

namespace A349163

/-- `A064989(A000203(n+1))/A348993(n+1)` -/
def P11207353763376832470.Spec : Prop :=
  ∀ n, P11207353763376832470.a n = (A349163 (n + 1) : ℚ)

end A349163

/-! ## A349163.P13325091993040399894

`(n+1)/A064989(A349161(n+1))`
-/

namespace A349163.P13325091993040399894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064989 (A349161 (n + 1)).toNat : ℚ)

end

end A349163.P13325091993040399894

namespace A349163

/-- `(n+1)/A064989(A349161(n+1))` -/
def P13325091993040399894.Spec : Prop :=
  ∀ n, P13325091993040399894.a n = (A349163 (n + 1) : ℚ)

end A349163

/-! ## A349163.P901364240589943250

`(n+1)/A252463(A349161(n+1)%A033567(n+1))`
-/

namespace A349163.P901364240589943250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A252463 (Int.tmod (A349161 (n + 1)) (A033567 (n + 1))).toNat : ℚ)

end

end A349163.P901364240589943250

namespace A349163

/-- `(n+1)/A252463(A349161(n+1)%A033567(n+1))` -/
def P901364240589943250.Spec : Prop :=
  ∀ n, P901364240589943250.a n = (A349163 (n + 1) : ℚ)

end A349163

/-!
# A349164: a(n) = A064989(A003961(n) / gcd(sigma(n), A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, while A064989 shifts it back towards smaller primes, and sigma is the sum of divisors function.

The programs for A349164, the canonical program `A349164.P10379583617981606493` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349164 has offset 1).

The definition of A349164 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349164.P13647516460851869598

`(n+1)/A349163(n+1)`
-/

namespace A349164.P13647516460851869598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A349163 (n + 1) : ℚ)

end

end A349164.P13647516460851869598

namespace A349164

/-- `(n+1)/A349163(n+1)` -/
def P13647516460851869598.Spec : Prop :=
  ∀ n, P13647516460851869598.a n = (A349164 (n + 1) : ℚ)

end A349164

/-! ## A349164.P12883289612889478448

`A064989(A349161(n+1))`
-/

namespace A349164.P12883289612889478448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A349161 (n + 1)).toNat

end

end A349164.P12883289612889478448

namespace A349164

/-- `A064989(A349161(n+1))` -/
def P12883289612889478448.Spec : Prop :=
  ∀ n, P12883289612889478448.a n = A349164 (n + 1)

end A349164

/-! ## A349164.P10379583617981606493

`A064989(A003961(n+1)/gcd(A000203(n+1), A003961(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349164

/-- `A064989(A003961(n+1)/gcd(A000203(n+1), A003961(n+1)))` -/
def P10379583617981606493.Spec : Prop :=
  ∀ n, P10379583617981606493.a n = A349164 (n + 1)

theorem P10379583617981606493.correct : P10379583617981606493.Spec := by
  intro n
  simp only [A349164, Nat.add_sub_cancel]

end A349164

/-! ## A349164.P12908620165410638138

`(n+1)/A064989(A342671(n+1))`
-/

namespace A349164.P12908620165410638138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064989 (A342671 (n + 1)).toNat : ℚ)

end

end A349164.P12908620165410638138

namespace A349164

/-- `(n+1)/A064989(A342671(n+1))` -/
def P12908620165410638138.Spec : Prop :=
  ∀ n, P12908620165410638138.a n = (A349164 (n + 1) : ℚ)

end A349164

/-! ## A349164.P7732462650593468938

`A000027(n+1)/A252463(A342671(n+1))`
-/

namespace A349164.P7732462650593468938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A252463 (A342671 (n + 1)).toNat : ℚ)

end

end A349164.P7732462650593468938

namespace A349164

/-- `A000027(n+1)/A252463(A342671(n+1))` -/
def P7732462650593468938.Spec : Prop :=
  ∀ n, P7732462650593468938.a n = (A349164 (n + 1) : ℚ)

end A349164

/-! ## A349164.P913037859742490713

`(n+1)/gcd(n+1, A064989(A000203(n+1)))`
-/

namespace A349164.P913037859742490713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A064989 (A000203 (n + 1)).toNat) : ℚ)

end

end A349164.P913037859742490713

namespace A349164

/-- `(n+1)/gcd(n+1, A064989(A000203(n+1)))` -/
def P913037859742490713.Spec : Prop :=
  ∀ n, P913037859742490713.a n = (A349164 (n + 1) : ℚ)

end A349164

/-! ## A349164.P356871662745606305

`A349122((A003973(n+1)-A336851(n+1))/A342671(n+1))`
-/

namespace A349164.P356871662745606305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (SequenceMachineLib.roundAway ((A003973 (n + 1) - A336851 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ))).toNat

end

end A349164.P356871662745606305

namespace A349164

/-- `A349122((A003973(n+1)-A336851(n+1))/A342671(n+1))` -/
def P356871662745606305.Spec : Prop :=
  ∀ n, P356871662745606305.a n = A349164 (n + 1)

end A349164

/-! ## A349164.P4344958145430910309

`A252463(A349161(n+1)%A033567(n+1))`
-/

namespace A349164.P4344958145430910309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Int.tmod (A349161 (n + 1)) (A033567 (n + 1))).toNat

end

end A349164.P4344958145430910309

namespace A349164

/-- `A252463(A349161(n+1)%A033567(n+1))` -/
def P4344958145430910309.Spec : Prop :=
  ∀ n, P4344958145430910309.a n = A349164 (n + 1)

end A349164

/-! ## A349164.P2774633436986734018

`A252463(A349161(n+1))%A037350(n+1)`
-/

namespace A349164.P2774633436986734018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252463 (A349161 (n + 1)).toNat) (A037350 (n + 1))

end

end A349164.P2774633436986734018

namespace A349164

/-- `A252463(A349161(n+1))%A037350(n+1)` -/
def P2774633436986734018.Spec : Prop :=
  ∀ n, P2774633436986734018.a n = A349164 (n + 1)

end A349164

/-!
# A349165: Numbers k such that sigma(k) and A003961(k) are relatively prime, where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

The programs for A349165, the canonical program `A349165.P4867618242033618851` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349165 has offset 1).

The definition of A349165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349165.P4867618242033618851

`record[A349164(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349165

/-- `record[A349164(n+1)]` -/
def P4867618242033618851.Spec : Prop :=
  ∀ n, P4867618242033618851.a n = A349165 (n + 1)

theorem P4867618242033618851.correct : P4867618242033618851.Spec := by
  intro n
  simp only [A349165, Nat.add_sub_cancel]

end A349165

/-! ## A349165.P9295793088232836989

`eq[1, A349163(n+1)]+1`
-/

namespace A349165.P9295793088232836989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349165.P9295793088232836989

namespace A349165

/-- `eq[1, A349163(n+1)]+1` -/
def P9295793088232836989.Spec : Prop :=
  ∀ n, (P9295793088232836989.a n : ℤ) = A349165 (n + 1)

end A349165

/-! ## A349165.P13276381377211660832

`lt[0, A349167(n+1)]+1`
-/

namespace A349165.P13276381377211660832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349165.P13276381377211660832

namespace A349165

/-- `lt[0, A349167(n+1)]+1` -/
def P13276381377211660832.Spec : Prop :=
  ∀ n, (P13276381377211660832.a n : ℤ) = A349165 (n + 1)

end A349165

/-! ## A349165.P5944455030332111963

`eq[1, A351544(n+1)]+1`
-/

namespace A349165.P5944455030332111963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349165.P5944455030332111963

namespace A349165

/-- `eq[1, A351544(n+1)]+1` -/
def P5944455030332111963.Spec : Prop :=
  ∀ n, (P5944455030332111963.a n : ℤ) = A349165 (n + 1)

end A349165

/-! ## A349165.P1931059782315929431

`eq[1, A342671(n+1)]+1`
-/

namespace A349165.P1931059782315929431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349165.P1931059782315929431

namespace A349165

/-- `eq[1, A342671(n+1)]+1` -/
def P1931059782315929431.Spec : Prop :=
  ∀ n, (P1931059782315929431.a n : ℤ) = A349165 (n + 1)

end A349165

/-! ## A349165.P11778529711510714620

`record[A000027(n+1)/A342671(n+1)]`
-/

namespace A349165.P11778529711510714620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349165.P11778529711510714620

namespace A349165

/-- `record[A000027(n+1)/A342671(n+1)]` -/
def P11778529711510714620.Spec : Prop :=
  ∀ n, P11778529711510714620.a n = (A349165 (n + 1) : ℚ)

end A349165

/-! ## A349165.P10012345799813604993

`filter[A003159(n+1), A349167(#)]`
-/

namespace A349165.P10012345799813604993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P10012345799813604993

namespace A349165

/-- `filter[A003159(n+1), A349167(#)]` -/
def P10012345799813604993.Spec : Prop :=
  ∀ n, P10012345799813604993.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P15287664233838616061

`filter[A141259(n+1), A349167(#)]`
-/

namespace A349165.P15287664233838616061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P15287664233838616061

namespace A349165

/-- `filter[A141259(n+1), A349167(#)]` -/
def P15287664233838616061.Spec : Prop :=
  ∀ n, P15287664233838616061.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P7965562094322212113

`filter[A260401(n+1), A349167(#)]`
-/

namespace A349165.P7965562094322212113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P7965562094322212113

namespace A349165

/-- `filter[A260401(n+1), A349167(#)]` -/
def P7965562094322212113.Spec : Prop :=
  ∀ n, P7965562094322212113.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P3176755328154949358

`filter[A107750(n+1), A349167(#)]`
-/

namespace A349165.P3176755328154949358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P3176755328154949358

namespace A349165

/-- `filter[A107750(n+1), A349167(#)]` -/
def P3176755328154949358.Spec : Prop :=
  ∀ n, P3176755328154949358.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P9451751326050960205

`filter[A042965(n+2), A349167(#)]`
-/

namespace A349165.P9451751326050960205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P9451751326050960205

namespace A349165

/-- `filter[A042965(n+2), A349167(#)]` -/
def P9451751326050960205.Spec : Prop :=
  ∀ n, P9451751326050960205.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P3169171176983081058

`filter[A047252(n+2), A349167(#)]`
-/

namespace A349165.P3169171176983081058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P3169171176983081058

namespace A349165

/-- `filter[A047252(n+2), A349167(#)]` -/
def P3169171176983081058.Spec : Prop :=
  ∀ n, P3169171176983081058.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P1846155362810753261

`filter[A047565(n+2), A349167(#)]`
-/

namespace A349165.P1846155362810753261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P1846155362810753261

namespace A349165

/-- `filter[A047565(n+2), A349167(#)]` -/
def P1846155362810753261.Spec : Prop :=
  ∀ n, P1846155362810753261.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P13127858001981161680

`filter[A122906(n+1), A349167(#)]`
-/

namespace A349165.P13127858001981161680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P13127858001981161680

namespace A349165

/-- `filter[A122906(n+1), A349167(#)]` -/
def P13127858001981161680.Spec : Prop :=
  ∀ n, P13127858001981161680.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P15962581587651690563

`filter[A000401(n+2), A349167(#)]`
-/

namespace A349165.P15962581587651690563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P15962581587651690563

namespace A349165

/-- `filter[A000401(n+2), A349167(#)]` -/
def P15962581587651690563.Spec : Prop :=
  ∀ n, P15962581587651690563.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P13800366048232125410

`filter[A081606(n+1), A349167(#)]`
-/

namespace A349165.P13800366048232125410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P13800366048232125410

namespace A349165

/-- `filter[A081606(n+1), A349167(#)]` -/
def P13800366048232125410.Spec : Prop :=
  ∀ n, P13800366048232125410.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P8429225881267556377

`filter[A183300(n+1), A349167(#)]`
-/

namespace A349165.P8429225881267556377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P8429225881267556377

namespace A349165

/-- `filter[A183300(n+1), A349167(#)]` -/
def P8429225881267556377.Spec : Prop :=
  ∀ n, P8429225881267556377.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P6905807545871723078

`filter[A116966(n), A349167(#)]`
-/

namespace A349165.P6905807545871723078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P6905807545871723078

namespace A349165

/-- `filter[A116966(n), A349167(#)]` -/
def P6905807545871723078.Spec : Prop :=
  ∀ n, P6905807545871723078.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P12153086725919116893

`filter[A056699(n+1), A349167(#)]`
-/

namespace A349165.P12153086725919116893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349165.P12153086725919116893

namespace A349165

/-- `filter[A056699(n+1), A349167(#)]` -/
def P12153086725919116893.Spec : Prop :=
  ∀ n, P12153086725919116893.a n = A349165 (n + 1)

end A349165

/-! ## A349165.P5554551174263669404

`record[A351546(n+1)-A001065(n+1)]`
-/

namespace A349165.P5554551174263669404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351546 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349165.P5554551174263669404

namespace A349165

/-- `record[A351546(n+1)-A001065(n+1)]` -/
def P5554551174263669404.Spec : Prop :=
  ∀ n, P5554551174263669404.a n = A349165 (n + 1)

end A349165

/-!
# A349166: Numbers k such that sigma(k) and A003961(k) share a prime factor, where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

The programs for A349166, the canonical program `A349166.P6858630224343966779` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349166 has offset 1).

The definition of A349166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349166.P7571556552243270703

`eq[0, A349167(n+1)]+1`
-/

namespace A349166.P7571556552243270703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349166.P7571556552243270703

namespace A349166

/-- `eq[0, A349167(n+1)]+1` -/
def P7571556552243270703.Spec : Prop :=
  ∀ n, (P7571556552243270703.a n : ℤ) = A349166 (n + 1)

end A349166

/-! ## A349166.P6858630224343966779

`lt[1, A349163(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349166

/-- `lt[1, A349163(n+1)]+1` -/
def P6858630224343966779.Spec : Prop :=
  ∀ n, (P6858630224343966779.a n : ℤ) = A349166 (n + 1)

theorem P6858630224343966779.correct : P6858630224343966779.Spec := by
  intro n
  simp only [A349166, Nat.add_sub_cancel]

end A349166

/-! ## A349166.P15122479840610993448

`lt[1, A351544(n+1)]+1`
-/

namespace A349166.P15122479840610993448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349166.P15122479840610993448

namespace A349166

/-- `lt[1, A351544(n+1)]+1` -/
def P15122479840610993448.Spec : Prop :=
  ∀ n, (P15122479840610993448.a n : ℤ) = A349166 (n + 1)

end A349166

/-! ## A349166.P14795759570308487271

`lt[1, A342671(n+1)]+1`
-/

namespace A349166.P14795759570308487271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349166.P14795759570308487271

namespace A349166

/-- `lt[1, A342671(n+1)]+1` -/
def P14795759570308487271.Spec : Prop :=
  ∀ n, (P14795759570308487271.a n : ℤ) = A349166 (n + 1)

end A349166

/-! ## A349166.P15367436536237513097

`eq[1, A014963(2*A342671(n+1))]+1`
-/

namespace A349166.P15367436536237513097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A342671 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349166.P15367436536237513097

namespace A349166

/-- `eq[1, A014963(2*A342671(n+1))]+1` -/
def P15367436536237513097.Spec : Prop :=
  ∀ n, (P15367436536237513097.a n : ℤ) = A349166 (n + 1)

end A349166

/-! ## A349166.P16328163620496591408

`comp[C(A349164(n+1), n)]`
-/

namespace A349166.P16328163620496591408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349164 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A349166.P16328163620496591408

namespace A349166

/-- `comp[C(A349164(n+1), n)]` -/
def P16328163620496591408.Spec : Prop :=
  ∀ n, (P16328163620496591408.a n : ℤ) = A349166 (n + 1)

end A349166

/-!
# A349167: a(n) = 1 if sigma(n) and A003961(n) are relatively prime, otherwise 0.

The programs for A349167, the canonical program `A349167.P11335047326877026590` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349167 has offset 1).

The definition of A349167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349167.P16138229993546810342

`floor(1/A342671(n+1))`
-/

namespace A349167.P16138229993546810342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A342671 (n + 1) : ℚ)⌋

end

end A349167.P16138229993546810342

namespace A349167

/-- `floor(1/A342671(n+1))` -/
def P16138229993546810342.Spec : Prop :=
  ∀ n, P16138229993546810342.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P11335047326877026590

`floor(1/A349163(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349167

/-- `floor(1/A349163(n+1))` -/
def P11335047326877026590.Spec : Prop :=
  ∀ n, P11335047326877026590.a n = A349167 (n + 1)

theorem P11335047326877026590.correct : P11335047326877026590.Spec := by
  intro n
  simp only [A349167, Nat.add_sub_cancel]

end A349167

/-! ## A349167.P5074011682194172296

`floor(1/A351544(n+1))`
-/

namespace A349167.P5074011682194172296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A351544 (n + 1) : ℚ)⌋

end

end A349167.P5074011682194172296

namespace A349167

/-- `floor(1/A351544(n+1))` -/
def P5074011682194172296.Spec : Prop :=
  ∀ n, P5074011682194172296.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P17822670137850367662

`C(A349164(n+1), n+1)`
-/

namespace A349167.P17822670137850367662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349164 (n + 1)).toNat (n + 1)

end

end A349167.P17822670137850367662

namespace A349167

/-- `C(A349164(n+1), n+1)` -/
def P17822670137850367662.Spec : Prop :=
  ∀ n, (P17822670137850367662.a n : ℤ) = A349167 (n + 1)

end A349167

/-! ## A349167.P9117060172818934334

`A019590(A342671(n+1))`
-/

namespace A349167.P9117060172818934334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A342671 (n + 1)).toNat

end

end A349167.P9117060172818934334

namespace A349167

/-- `A019590(A342671(n+1))` -/
def P9117060172818934334.Spec : Prop :=
  ∀ n, P9117060172818934334.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P4809116888005611070

`A012245(A351544(n+1))`
-/

namespace A349167.P4809116888005611070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (A351544 (n + 1)).toNat

end

end A349167.P4809116888005611070

namespace A349167

/-- `A012245(A351544(n+1))` -/
def P4809116888005611070.Spec : Prop :=
  ∀ n, P4809116888005611070.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P3135829731011183366

`A166260(A342671(n+1)+1)`
-/

namespace A349167.P3135829731011183366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (A342671 (n + 1) + 1).toNat

end

end A349167.P3135829731011183366

namespace A349167

/-- `A166260(A342671(n+1)+1)` -/
def P3135829731011183366.Spec : Prop :=
  ∀ n, P3135829731011183366.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P6189294912542447239

`A283991(A342671(n+1)+1)`
-/

namespace A349167.P6189294912542447239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (A342671 (n + 1) + 1).toNat

end

end A349167.P6189294912542447239

namespace A349167

/-- `A283991(A342671(n+1)+1)` -/
def P6189294912542447239.Spec : Prop :=
  ∀ n, P6189294912542447239.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P1371999977080590849

`A000007(A342671(n+1)-1)`
-/

namespace A349167.P1371999977080590849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A342671 (n + 1) - 1).toNat

end

end A349167.P1371999977080590849

namespace A349167

/-- `A000007(A342671(n+1)-1)` -/
def P1371999977080590849.Spec : Prop :=
  ∀ n, P1371999977080590849.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P6323515797632361827

`A166260(2*A349163(n+1))`
-/

namespace A349167.P6323515797632361827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (2 * A349163 (n + 1)).toNat

end

end A349167.P6323515797632361827

namespace A349167

/-- `A166260(2*A349163(n+1))` -/
def P6323515797632361827.Spec : Prop :=
  ∀ n, P6323515797632361827.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P5749206235501499648

`A014963(2*A342671(n+1))-1`
-/

namespace A349167.P5749206235501499648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A342671 (n + 1)).toNat - 1

end

end A349167.P5749206235501499648

namespace A349167

/-- `A014963(2*A342671(n+1))-1` -/
def P5749206235501499648.Spec : Prop :=
  ∀ n, P5749206235501499648.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P11591086021430501709

`A340375(2*A342671(n+1)-1)`
-/

namespace A349167.P11591086021430501709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 (2 * A342671 (n + 1) - 1).toNat

end

end A349167.P11591086021430501709

namespace A349167

/-- `A340375(2*A342671(n+1)-1)` -/
def P11591086021430501709.Spec : Prop :=
  ∀ n, P11591086021430501709.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P902448634738542453

`C(A349162(n+1), A000203(n+1))`
-/

namespace A349167.P902448634738542453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349162 (n + 1)).toNat (A000203 (n + 1)).toNat

end

end A349167.P902448634738542453

namespace A349167

/-- `C(A349162(n+1), A000203(n+1))` -/
def P902448634738542453.Spec : Prop :=
  ∀ n, (P902448634738542453.a n : ℤ) = A349167 (n + 1)

end A349167

/-! ## A349167.P4863739384532152627

`C(A349161(n+1), A003961(n+1))`
-/

namespace A349167.P4863739384532152627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349161 (n + 1)).toNat (A003961 (n + 1)).toNat

end

end A349167.P4863739384532152627

namespace A349167

/-- `C(A349161(n+1), A003961(n+1))` -/
def P4863739384532152627.Spec : Prop :=
  ∀ n, (P4863739384532152627.a n : ℤ) = A349167 (n + 1)

end A349167

/-! ## A349167.P14135301559850075959

`C(A348992(n+1), A161942(n+1))`
-/

namespace A349167.P14135301559850075959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A348992 (n + 1)).toNat (A161942 (n + 1)).toNat

end

end A349167.P14135301559850075959

namespace A349167

/-- `C(A348992(n+1), A161942(n+1))` -/
def P14135301559850075959.Spec : Prop :=
  ∀ n, (P14135301559850075959.a n : ℤ) = A349167 (n + 1)

end A349167

/-! ## A349167.P5441540124039206503

`A000007(A140106(A342671(n+1)+1))`
-/

namespace A349167.P5441540124039206503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A140106 (A342671 (n + 1) + 1).toNat).toNat

end

end A349167.P5441540124039206503

namespace A349167

/-- `A000007(A140106(A342671(n+1)+1))` -/
def P5441540124039206503.Spec : Prop :=
  ∀ n, P5441540124039206503.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P5835883333262876000

`A353633(A000203(n+1)/A351546(n+1))`
-/

namespace A349167.P5835883333262876000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353633 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A351546 (n + 1) : ℚ))).toNat

end

end A349167.P5835883333262876000

namespace A349167

/-- `A353633(A000203(n+1)/A351546(n+1))` -/
def P5835883333262876000.Spec : Prop :=
  ∀ n, P5835883333262876000.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P10756445720406957733

`A000007(A342671(n+2)%A342671(n+1))`
-/

namespace A349167.P10756445720406957733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A342671 (n + 2)) (A342671 (n + 1))).toNat

end

end A349167.P10756445720406957733

namespace A349167

/-- `A000007(A342671(n+2)%A342671(n+1))` -/
def P10756445720406957733.Spec : Prop :=
  ∀ n, P10756445720406957733.a n = A349167 (n + 1)

end A349167

/-! ## A349167.P64412304756258499

`val(A349180(A349164(n+1)), A349180(n+1))`
-/

namespace A349167.P64412304756258499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A349180 (A349164 (n + 1)).toNat).toNat (A349180 (n + 1)).toNat

end

end A349167.P64412304756258499

namespace A349167

/-- `val(A349180(A349164(n+1)), A349180(n+1))` -/
def P64412304756258499.Spec : Prop :=
  ∀ n, (P64412304756258499.a n : ℤ) = A349167 (n + 1)

end A349167

/-! ## A349167.P18265939549669755070

`val(A307201(A349164(n+1)), A307201(n+1))`
-/

namespace A349167.P18265939549669755070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A307201 (A349164 (n + 1)).toNat).toNat (A307201 (n + 1)).toNat

end

end A349167.P18265939549669755070

namespace A349167

/-- `val(A307201(A349164(n+1)), A307201(n+1))` -/
def P18265939549669755070.Spec : Prop :=
  ∀ n, (P18265939549669755070.a n : ℤ) = A349167 (n + 1)

end A349167

/-!
# A349168: Numbers k such that sigma(k) and A003961(k) share a prime power divisor that is not a unitary divisor of A003961(k). Here A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

The programs for A349168, there is no canonical definition to state claims against.
-/

/-! ## A349168.P15939477220924681159

`lt[1, A354997(n+1)]+1`
-/

namespace A349168.P15939477220924681159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349168.P15939477220924681159

/-! ## A349168.P17241213901637007658

`lt[1, A354997(A028310(n))]`
-/

namespace A349168.P17241213901637007658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354997 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349168.P17241213901637007658

/-! ## A349168.P2080407979199206046

`lt[1, A354997(A123108(2*n))]`
-/

namespace A349168.P2080407979199206046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354997 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349168.P2080407979199206046

/-! ## A349168.P15562212450766716682

`lt[1, A354997(A000007(n)+n)]`
-/

namespace A349168.P15562212450766716682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354997 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349168.P15562212450766716682

/-! ## A349168.P11027217441003126193

`lt[A351546(n+1), A351547(n+1)]+1`
-/

namespace A349168.P11027217441003126193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A349168.P11027217441003126193

/-!
# A349169: Numbers k such that k * gcd(sigma(k), A003961(k)) is equal to the odd part of {sigma(k) * gcd(k, A003961(k))}, where A003961 shifts the prime factorization one step towards larger primes, and sigma is the sum of divisors function.

The programs for A349169, there is no canonical definition to state claims against.
-/

/-! ## A349169.P16516130664713038141

`A290348(4*∑{d}[n+1, #])`
-/

namespace A349169.P16516130664713038141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290348 (4 * (∑ d ∈ Nat.divisors (f1 n), d))

end

end A349169.P16516130664713038141

/-!
# A349170: a(n) = Sum_{d|n} d * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1).

The programs for A349170, the canonical program `A349170.P1350276801949496955` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349170 has offset 1).

The definition of A349170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349170.P3048369558952177319

`∑{d}[n+1, A349171(#)]`
-/

namespace A349170.P3048369558952177319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349171 d

end

end A349170.P3048369558952177319

namespace A349170

/-- `∑{d}[n+1, A349171(#)]` -/
def P3048369558952177319.Spec : Prop :=
  ∀ n, P3048369558952177319.a n = A349170 (n + 1)

end A349170

/-! ## A349170.P1350276801949496955

`∑{d}[n+1, #*A003959((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A349170

/-- `∑{d}[n+1, #*A003959((n+1)/#)]` -/
def P1350276801949496955.Spec : Prop :=
  ∀ n, P1350276801949496955.a n = A349170 (n + 1)

theorem P1350276801949496955.correct : P1350276801949496955.Spec := by
  intro n
  simp only [A349170, Nat.add_sub_cancel]

end A349170

/-! ## A349170.P6347552032259399460

`A038040(n+1)+A349140(n+1)`
-/

namespace A349170.P6347552032259399460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + A349140 (n + 1)

end

end A349170.P6347552032259399460

namespace A349170

/-- `A038040(n+1)+A349140(n+1)` -/
def P6347552032259399460.Spec : Prop :=
  ∀ n, P6347552032259399460.a n = A349170 (n + 1)

end A349170

/-! ## A349170.P4106674809401141130

`∑{d}[n+1, A000203(#)*A003968((n+1)/#)]`
-/

namespace A349170.P4106674809401141130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A003968 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349170.P4106674809401141130

namespace A349170

/-- `∑{d}[n+1, A000203(#)*A003968((n+1)/#)]` -/
def P4106674809401141130.Spec : Prop :=
  ∀ n, P4106674809401141130.a n = A349170 (n + 1)

end A349170

/-! ## A349170.P17345518074890489047

`∑{d}[n+1, A000010(#)*A003969((n+1)/#)]`
-/

namespace A349170.P17345518074890489047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003969 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349170.P17345518074890489047

namespace A349170

/-- `∑{d}[n+1, A000010(#)*A003969((n+1)/#)]` -/
def P17345518074890489047.Spec : Prop :=
  ∀ n, P17345518074890489047.a n = A349170 (n + 1)

end A349170

/-! ## A349170.P17276505943350912054

`∑{d}[n+1, A003557(#)*A349129((n+1)/#)]`
-/

namespace A349170.P17276505943350912054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A349129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349170.P17276505943350912054

namespace A349170

/-- `∑{d}[n+1, A003557(#)*A349129((n+1)/#)]` -/
def P17276505943350912054.Spec : Prop :=
  ∀ n, P17276505943350912054.a n = A349170 (n + 1)

end A349170

/-! ## A349170.P17358336199160736745

`∑{d}[n+1, A008836(#)*A349172((n+1)/#)]`
-/

namespace A349170.P17358336199160736745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A349172 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349170.P17358336199160736745

namespace A349170

/-- `∑{d}[n+1, A008836(#)*A349172((n+1)/#)]` -/
def P17358336199160736745.Spec : Prop :=
  ∀ n, P17358336199160736745.a n = A349170 (n + 1)

end A349170

/-! ## A349170.P9797136266865410717

`∑{d}[n+1, A038040(#)*A327564((n+1)/#)]`
-/

namespace A349170.P9797136266865410717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A327564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349170.P9797136266865410717

namespace A349170

/-- `∑{d}[n+1, A038040(#)*A327564((n+1)/#)]` -/
def P9797136266865410717.Spec : Prop :=
  ∀ n, P9797136266865410717.a n = A349170 (n + 1)

end A349170

/-! ## A349170.P2157140161024345014

`∑{d}[n+1, A349130(#)*A349356((n+1)/#)]`
-/

namespace A349170.P2157140161024345014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349130 d * A349356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349170.P2157140161024345014

namespace A349170

/-- `∑{d}[n+1, A349130(#)*A349356((n+1)/#)]` -/
def P2157140161024345014.Spec : Prop :=
  ∀ n, P2157140161024345014.a n = A349170 (n + 1)

end A349170

/-! ## A349170.P2836134906921935802

`A348980(n+1)+A349139(n+1)+A349129(n+1)`
-/

namespace A349170.P2836134906921935802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348980 (n + 1) + (A349139 (n + 1) + A349129 (n + 1))

end

end A349170.P2836134906921935802

namespace A349170

/-- `A348980(n+1)+A349139(n+1)+A349129(n+1)` -/
def P2836134906921935802.Spec : Prop :=
  ∀ n, P2836134906921935802.a n = A349170 (n + 1)

end A349170

/-! ## A349170.P13806800336241846918

`A348980(n+1)+A349140(n+1)+A349130(n+1)`
-/

namespace A349170.P13806800336241846918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348980 (n + 1) + (A349140 (n + 1) + A349130 (n + 1))

end

end A349170.P13806800336241846918

namespace A349170

/-- `A348980(n+1)+A349140(n+1)+A349130(n+1)` -/
def P13806800336241846918.Spec : Prop :=
  ∀ n, P13806800336241846918.a n = A349170 (n + 1)

end A349170

/-!
# A349171: a(n) = Sum_{d|n} phi(d) * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1), and phi is Euler totient function.

The programs for A349171, the canonical program `A349171.P9405223100301962043` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349171 has offset 1).

The definition of A349171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349171.P4420363583333488221

`A018804(n+1)+A349141(n+1)`
-/

namespace A349171.P4420363583333488221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + A349141 (n + 1)

end

end A349171.P4420363583333488221

namespace A349171

/-- `A018804(n+1)+A349141(n+1)` -/
def P4420363583333488221.Spec : Prop :=
  ∀ n, P4420363583333488221.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P9405223100301962043

`∑{d}[n+1, A000010(#)*A003959((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A349171

/-- `∑{d}[n+1, A000010(#)*A003959((n+1)/#)]` -/
def P9405223100301962043.Spec : Prop :=
  ∀ n, P9405223100301962043.a n = A349171 (n + 1)

theorem P9405223100301962043.correct : P9405223100301962043.Spec := by
  intro n
  simp only [A349171, Nat.add_sub_cancel]

end A349171

/-! ## A349171.P14923019984583862544

`∑{d}[n+1, A008683(#)*A349170((n+1)/#)]`
-/

namespace A349171.P14923019984583862544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349171.P14923019984583862544

namespace A349171

/-- `∑{d}[n+1, A008683(#)*A349170((n+1)/#)]` -/
def P14923019984583862544.Spec : Prop :=
  ∀ n, P14923019984583862544.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P613297631791895291

`∑{#}[n, A003959(gcd(n+1, #))]`
-/

namespace A349171.P613297631791895291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A003959 (Nat.gcd (n + 1) k)

end

end A349171.P613297631791895291

namespace A349171

/-- `∑{#}[n, A003959(gcd(n+1, #))]` -/
def P613297631791895291.Spec : Prop :=
  ∀ n, P613297631791895291.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P2424638686050080556

`∑{d}[n+1, #*A003968((n+1)/#)]`
-/

namespace A349171.P2424638686050080556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003968 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349171.P2424638686050080556

namespace A349171

/-- `∑{d}[n+1, #*A003968((n+1)/#)]` -/
def P2424638686050080556.Spec : Prop :=
  ∀ n, P2424638686050080556.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P9157089503671185965

`A349141(n+1)+Δ[A209981(n)/32]`
-/

namespace A349171.P9157089503671185965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349141 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A349171.P9157089503671185965

namespace A349171

/-- `A349141(n+1)+Δ[A209981(n)/32]` -/
def P9157089503671185965.Spec : Prop :=
  ∀ n, P9157089503671185965.a n = (A349171 (n + 1) : ℚ)

end A349171

/-! ## A349171.P12212993194974139481

`A349141(n+1)+∑[Δ[A209295(n)]-1]`
-/

namespace A349171.P12212993194974139481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349141 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349171.P12212993194974139481

namespace A349171

/-- `A349141(n+1)+∑[Δ[A209295(n)]-1]` -/
def P12212993194974139481.Spec : Prop :=
  ∀ n, P12212993194974139481.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P3621282040337928282

`A349141(n+1)+A006579(n+1)+1+n`
-/

namespace A349171.P3621282040337928282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349141 (n + 1) + (A006579 (n + 1) + 1 + (n : ℤ))

end

end A349171.P3621282040337928282

namespace A349171

/-- `A349141(n+1)+A006579(n+1)+1+n` -/
def P3621282040337928282.Spec : Prop :=
  ∀ n, P3621282040337928282.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P12891621148686767471

`∑{d}[n+1, A018804(#)*A327564((n+1)/#)]`
-/

namespace A349171.P12891621148686767471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A327564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349171.P12891621148686767471

namespace A349171

/-- `∑{d}[n+1, A018804(#)*A327564((n+1)/#)]` -/
def P12891621148686767471.Spec : Prop :=
  ∀ n, P12891621148686767471.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P6154083983719912234

`∑{d}[n+1, A158522(#)*A349172((n+1)/#)]`
-/

namespace A349171.P6154083983719912234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A349172 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349171.P6154083983719912234

namespace A349171

/-- `∑{d}[n+1, A158522(#)*A349172((n+1)/#)]` -/
def P6154083983719912234.Spec : Prop :=
  ∀ n, P6154083983719912234.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P13653045496356379688

`∑{d}[n+1, A300717(#)*A349129((n+1)/#)]`
-/

namespace A349171.P13653045496356379688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300717 d * A349129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349171.P13653045496356379688

namespace A349171

/-- `∑{d}[n+1, A300717(#)*A349129((n+1)/#)]` -/
def P13653045496356379688.Spec : Prop :=
  ∀ n, P13653045496356379688.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P8445798271880483363

`∑{d}[n+1, A349131(#)*A349356((n+1)/#)]`
-/

namespace A349171.P8445798271880483363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349131 d * A349356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349171.P8445798271880483363

namespace A349171

/-- `∑{d}[n+1, A349131(#)*A349356((n+1)/#)]` -/
def P8445798271880483363.Spec : Prop :=
  ∀ n, P8445798271880483363.a n = A349171 (n + 1)

end A349171

/-! ## A349171.P13331036747702768969

`A348981(n+1)+A349141(n+1)+A349131(n+1)`
-/

namespace A349171.P13331036747702768969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348981 (n + 1) + (A349141 (n + 1) + A349131 (n + 1))

end

end A349171.P13331036747702768969

namespace A349171

/-- `A348981(n+1)+A349141(n+1)+A349131(n+1)` -/
def P13331036747702768969.Spec : Prop :=
  ∀ n, P13331036747702768969.a n = A349171 (n + 1)

end A349171

/-!
# A349172: a(n) = Sum_{d|n} psi(d) * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1), and psi is Dedekind psi function, A001615.

The programs for A349172, the canonical program `A349172.P9409775987477653705` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349172 has offset 1).

The definition of A349172 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, A349142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349172.P9409775987477653705

`A327251(n+1)+A349142(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A349172

/-- `A327251(n+1)+A349142(n+1)` -/
def P9409775987477653705.Spec : Prop :=
  ∀ n, P9409775987477653705.a n = A349172 (n + 1)

theorem P9409775987477653705.correct : P9409775987477653705.Spec := by
  intro n
  simp only [A349172, Nat.add_sub_cancel]

end A349172

/-! ## A349172.P15393630907719197634

`∑{d}[n+1, A001615(#)*A003959((n+1)/#)]`
-/

namespace A349172.P15393630907719197634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349172.P15393630907719197634

namespace A349172

/-- `∑{d}[n+1, A001615(#)*A003959((n+1)/#)]` -/
def P15393630907719197634.Spec : Prop :=
  ∀ n, P15393630907719197634.a n = A349172 (n + 1)

end A349172

/-! ## A349172.P4910732729244983064

`∑{d}[n+1, A003968(#)*A060648((n+1)/#)]`
-/

namespace A349172.P4910732729244983064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349172.P4910732729244983064

namespace A349172

/-- `∑{d}[n+1, A003968(#)*A060648((n+1)/#)]` -/
def P4910732729244983064.Spec : Prop :=
  ∀ n, P4910732729244983064.a n = A349172 (n + 1)

end A349172

/-! ## A349172.P4516420065803009171

`∑{d}[n+1, A003969(#)*A063659((n+1)/#)]`
-/

namespace A349172.P4516420065803009171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003969 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349172.P4516420065803009171

namespace A349172

/-- `∑{d}[n+1, A003969(#)*A063659((n+1)/#)]` -/
def P4516420065803009171.Spec : Prop :=
  ∀ n, P4516420065803009171.a n = A349172 (n + 1)

end A349172

/-! ## A349172.P6017041266491661782

`∑{d}[n+1, A008966(#)*A349170((n+1)/#)]`
-/

namespace A349172.P6017041266491661782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A349170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349172.P6017041266491661782

namespace A349172

/-- `∑{d}[n+1, A008966(#)*A349170((n+1)/#)]` -/
def P6017041266491661782.Spec : Prop :=
  ∀ n, P6017041266491661782.a n = A349172 (n + 1)

end A349172

/-! ## A349172.P4521110205799920606

`∑{d}[n+1, A034444(#)*A349171((n+1)/#)]`
-/

namespace A349172.P4521110205799920606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A349171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349172.P4521110205799920606

namespace A349172

/-- `∑{d}[n+1, A034444(#)*A349171((n+1)/#)]` -/
def P4521110205799920606.Spec : Prop :=
  ∀ n, P4521110205799920606.a n = A349172 (n + 1)

end A349172

/-! ## A349172.P9313168884059216353

`∑{d}[n+1, A327251(#)*A327564((n+1)/#)]`
-/

namespace A349172.P9313168884059216353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327251 d * A327564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349172.P9313168884059216353

namespace A349172

/-- `∑{d}[n+1, A327251(#)*A327564((n+1)/#)]` -/
def P9313168884059216353.Spec : Prop :=
  ∀ n, P9313168884059216353.a n = A349172 (n + 1)

end A349172

/-! ## A349172.P8903767818262360815

`∑{d}[n+1, A349132(#)*A349356((n+1)/#)]`
-/

namespace A349172.P8903767818262360815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349132 d * A349356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349172.P8903767818262360815

namespace A349172

/-- `∑{d}[n+1, A349132(#)*A349356((n+1)/#)]` -/
def P8903767818262360815.Spec : Prop :=
  ∀ n, P8903767818262360815.a n = A349172 (n + 1)

end A349172

/-! ## A349172.P15610909413434446843

`A348982(n+1)+A349142(n+1)+A349132(n+1)`
-/

namespace A349172.P15610909413434446843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348982 (n + 1) + (A349142 (n + 1) + A349132 (n + 1))

end

end A349172.P15610909413434446843

namespace A349172

/-- `A348982(n+1)+A349142(n+1)+A349132(n+1)` -/
def P15610909413434446843.Spec : Prop :=
  ∀ n, P15610909413434446843.a n = A349172 (n + 1)

theorem P15610909413434446843.correct : P15610909413434446843.Spec := by
  intro n
  simp only [A349172, Nat.add_sub_cancel, A349172.P15610909413434446843.a, A349172.P9409775987477653705.a, A327251, A327251.P13631091954083186129.f1, A327251.P13631091954083186129.a, A348982, A348982.P3645871020152581300.f1, A348982.P3645871020152581300.a, A349132, A349132.P869711925521774844.a, A349142, A349142.P2043599666543959663.f1, A349142.P2043599666543959663.a, A001615, A001615.P12078511981713404634.a, A322577, A322577.P2466038700097355167.f1, A322577.P2466038700097355167.a, A322582, A322582.P8560399753878851377.a, A348507, A348507.P8468116905144779811.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003958, A003958.P196685604458257440.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A063659, A063659.P17976112420004081821.a, A014963, A014963.P5975177236000282614.a, A063658, A063658.P2835377320300210005.f1, A063658.P2835377320300210005.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349172

/-!
# A349173: Dirichlet convolution of A003415 with A003959, where A003415 is the arithmetic derivative and A003959 is fully multiplicative with a(p) = (p+1).

The programs for A349173, the canonical program `A349173.P6335324146396216170` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349173 has offset 1).

The definition of A349173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349173.P6335324146396216170

`∑{d}[n+1, A003415(#)*A003959((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A349173

/-- `∑{d}[n+1, A003415(#)*A003959((n+1)/#)]` -/
def P6335324146396216170.Spec : Prop :=
  ∀ n, P6335324146396216170.a n = A349173 (n + 1)

theorem P6335324146396216170.correct : P6335324146396216170.Spec := by
  intro n
  simp only [A349173, Nat.add_sub_cancel]

end A349173

/-! ## A349173.P12806481557215359643

`∑{d}[n+1, A349133(#)*A349356((n+1)/#)]`
-/

namespace A349173.P12806481557215359643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349133 d * A349356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P12806481557215359643

namespace A349173

/-- `∑{d}[n+1, A349133(#)*A349356((n+1)/#)]` -/
def P12806481557215359643.Spec : Prop :=
  ∀ n, P12806481557215359643.a n = A349173 (n + 1)

end A349173

/-! ## A349173.P16147460998109370766

`∑{d}[n+1, A003969(#)*A300251((n+1)/#)]`
-/

namespace A349173.P16147460998109370766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003969 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P16147460998109370766

namespace A349173

/-- `∑{d}[n+1, A003969(#)*A300251((n+1)/#)]` -/
def P16147460998109370766.Spec : Prop :=
  ∀ n, P16147460998109370766.a n = A349173 (n + 1)

end A349173

/-! ## A349173.P16569106588395743123

`∑{d}[n+1, A003968(#)*A319684((n+1)/#)]`
-/

namespace A349173.P16569106588395743123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P16569106588395743123

namespace A349173

/-- `∑{d}[n+1, A003968(#)*A319684((n+1)/#)]` -/
def P16569106588395743123.Spec : Prop :=
  ∀ n, P16569106588395743123.a n = A349173 (n + 1)

end A349173

/-! ## A349173.P13258903021131655071

`∑{d}[n+1, A327564(#)*A347130((n+1)/#)]`
-/

namespace A349173.P13258903021131655071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327564 d * A347130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P13258903021131655071

namespace A349173

/-- `∑{d}[n+1, A327564(#)*A347130((n+1)/#)]` -/
def P13258903021131655071.Spec : Prop :=
  ∀ n, P13258903021131655071.a n = A349173 (n + 1)

end A349173

/-! ## A349173.P3194594909507399831

`∑{d}[n+1, A349170(#)*A349394((n+1)/#)]`
-/

namespace A349173.P3194594909507399831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349170 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P3194594909507399831

namespace A349173

/-- `∑{d}[n+1, A349170(#)*A349394((n+1)/#)]` -/
def P3194594909507399831.Spec : Prop :=
  ∀ n, P3194594909507399831.a n = A349173 (n + 1)

end A349173

/-! ## A349173.P14359793640479447188

`∑{d}[n+1, A349129(#)*A349620((n+1)/#)]`
-/

namespace A349173.P14359793640479447188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349129 d * A349620 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P14359793640479447188

namespace A349173

/-- `∑{d}[n+1, A349129(#)*A349620((n+1)/#)]` -/
def P14359793640479447188.Spec : Prop :=
  ∀ n, P14359793640479447188.a n = A349173 (n + 1)

end A349173

/-!
# A349174: Odd numbers k for which gcd(k, A003961(k)) is equal to gcd(sigma(k), A003961(k)), where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors function.

The programs for A349174, there is no canonical definition to state claims against.
-/

/-! ## A349174.P7446622089191368900

`∪[A118556(n+1), A349177(n+1)]`
-/

namespace A349174.P7446622089191368900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349174.P7446622089191368900

/-! ## A349174.P2943115107019670462

`∪[A348696(n+1), A349177(n+1)]`
-/

namespace A349174.P2943115107019670462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349174.P2943115107019670462

/-! ## A349174.P17562377138956197747

`∪[A349176(n+1), A349177(n+1)]`
-/

namespace A349174.P17562377138956197747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349174.P17562377138956197747

/-! ## A349174.P15222255931677730255

`∪[A349177(n+1), A349307(n+2)]`
-/

namespace A349174.P15222255931677730255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349307 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349174.P15222255931677730255

/-! ## A349174.P11372915604016976431

`∪[A349177(n+1), A348411(n+5)]`
-/

namespace A349174.P11372915604016976431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348411 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349174.P11372915604016976431

/-! ## A349174.P17061913675594455026

`∪[A349177(n+1), A000041(n+14)]`
-/

namespace A349174.P17061913675594455026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 14)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349174.P17061913675594455026

/-! ## A349174.P8626877854223178905

`A349177(n+1)%A105709(n)`
-/

namespace A349174.P8626877854223178905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349177 (n + 1)) (A105709 n)

end

end A349174.P8626877854223178905

/-! ## A349174.P4581100538977714993

`A001222(A216509(n+1))*A349177(n+1)`
-/

namespace A349174.P4581100538977714993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A216509 (n + 1)).toNat * A349177 (n + 1)

end

end A349174.P4581100538977714993

/-!
# A349176: Odd numbers k for which gcd(k, A003961(k)) = gcd(sigma(k), A003961(k)) > 1, where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors function.

The programs for A349176, there is no canonical definition to state claims against.
-/

/-! ## A349176.P17595166067696584465

`A355002(lt[A241743(2*n+1), A006509(3*n+1)])`
-/

namespace A349176.P17595166067696584465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241743 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355002 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349176.P17595166067696584465

/-!
# A349177: Odd numbers k for which gcd(k, A003961(k)) = gcd(sigma(k), A003961(k)) = 1, where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors function.

The programs for A349177, there is no canonical definition to state claims against.
-/

/-! ## A349177.P6977507019074603992

`filter[A349165(n+1), A356172(#)]`
-/

namespace A349177.P6977507019074603992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A349177.P6977507019074603992

/-! ## A349177.P15760530391545236597

`filter[A356171(n+1), A349167(#)]`
-/

namespace A349177.P15760530391545236597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A349177.P15760530391545236597

/-! ## A349177.P1244303867734527522

`record[A319627(2*A349161(n+1))]`
-/

namespace A349177.P1244303867734527522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (2 * A349161 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349177.P1244303867734527522

/-! ## A349177.P14118622420059676761

`record[A349164(A319626(2*n+1))]`
-/

namespace A349177.P14118622420059676761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349164 (A319626 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349177.P14118622420059676761

/-! ## A349177.P1610924727000910557

`record[A349164(A348990(2*n+1))]`
-/

namespace A349177.P1610924727000910557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349164 (A348990 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349177.P1610924727000910557

/-! ## A349177.P46465733655214574

`record[A319627(A349161(n+1+n))]`
-/

namespace A349177.P46465733655214574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A349161 (n + 1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349177.P46465733655214574

/-! ## A349177.P12453007144655952927

`∩[A349165(n+1), A356171(n+1)]`
-/

namespace A349177.P12453007144655952927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349177.P12453007144655952927

/-! ## A349177.P10281727227046652753

`eq[n, A319627(A349161(xor(1, n)+1+n))]`
-/

namespace A349177.P10281727227046652753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A349161 (Nat.xor 1 n + 1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349177.P10281727227046652753

/-! ## A349177.P9528788298124936222

`record[A349164(A319626(n+1))/A266303(n)]`
-/

namespace A349177.P9528788298124936222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349164 (A319626 (n + 1)).toNat : ℚ) / (A266303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349177.P9528788298124936222

/-!
# A349179: Numbers with a record number of nonempty subsets of divisors whose harmonic mean is an integer (A339665).

The programs for A349179, there is no canonical definition to state claims against.
-/

/-! ## A349179.P16837209191934540697

`∪[A004394(n+1), A036913(A270831(n+1))]`
-/

namespace A349179.P16837209191934540697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036913 (A270831 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349179.P16837209191934540697

/-! ## A349179.P7256824657712305743

`∪[A055932(A055647(2*(n+2))), A002182(n+1)]`
-/

namespace A349179.P7256824657712305743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A055647 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349179.P7256824657712305743

/-! ## A349179.P13733519121266333080

`∑[A019555(∏[A088370(n+1)])]`
-/

namespace A349179.P13733519121266333080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088370 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349179.P13733519121266333080

/-! ## A349179.P17956231340995930227

`∑[A053166(∏[A088370(n+1)])]`
-/

namespace A349179.P17956231340995930227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088370 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349179.P17956231340995930227

/-! ## A349179.P6967313187661390213

`∩[A072121(n+1), A122079(n+1)]`
-/

namespace A349179.P6967313187661390213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349179.P6967313187661390213

/-!
# A349182: a(0) = 1; for n>0, a(n) is the smallest positive integer such that |n - a(n-1)| + a(n) is a square.

The programs for A349182, there is no canonical definition to state claims against.
-/

/-! ## A349182.P11674506482485069853

`A080883(n-a(n-1))` with `a(0)=1`
-/

namespace A349182.P11674506482485069853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080883 ((n : ℤ) - a (n - 1)).toNat

end

end A349182.P11674506482485069853

/-! ## A349182.P3848121745303489658

`A068527(n+1-a(n-1))+1` with `a(0)=1`
-/

namespace A349182.P3848121745303489658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068527 ((n + 1 : ℤ) - a (n - 1)).toNat + 1

end

end A349182.P3848121745303489658

/-! ## A349182.P15770936299745730187

`A004736(A161983(n)-a(n-1)+1)` with `a(0)=1`
-/

namespace A349182.P15770936299745730187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004736 (A161983 n - a (n - 1) + 1).toNat

end

end A349182.P15770936299745730187

/-!
# A349185: G.f. A(x) satisfies: A(x) = (1 - x) / (1 - 2 * x - x^2 - x^2 * A(x)).

The programs for A349185, there is no canonical definition to state claims against.
-/

/-! ## A349185.P14480659272544318478

`A100196(A000108(n)*A171857(n))`
-/

namespace A349185.P14480659272544318478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000108 n * A171857 n).toNat

end

end A349185.P14480659272544318478

/-! ## A349185.P3578589792000178334

`A185712(Δ[4^n])`
-/

namespace A349185.P3578589792000178334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A349185.P3578589792000178334

/-!
# A349186: G.f. A(x) satisfies: A(x) = (1 - x) / (1 - 2 * x - x^2 - x^3 * A(x)).

The programs for A349186, there is no canonical definition to state claims against.
-/

/-! ## A349186.P6441501534824483474

`A008615(A304013(n+1)+A237450(n+1))`
-/

namespace A349186.P6441501534824483474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A304013 (n + 1) + A237450 (n + 1)).toNat

end

end A349186.P6441501534824483474

/-! ## A349186.P15303992573600305743

`A261585(8*A255705(n))`
-/

namespace A349186.P15303992573600305743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (8 * A255705 n).toNat

end

end A349186.P15303992573600305743

/-! ## A349186.P1182346000451648979

`A261585(8*A318906(n))`
-/

namespace A349186.P1182346000451648979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (8 * A318906 (n + 10)).toNat

end

end A349186.P1182346000451648979

/-! ## A349186.P15744796811025341591

`A261585(8*A318904(n+8))`
-/

namespace A349186.P15744796811025341591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (8 * A318904 (n + 8)).toNat

end

end A349186.P15744796811025341591

/-!
# A349188: Largest n-phobe number.

The programs for A349188, there is no canonical definition to state claims against.
-/

/-! ## A349188.P14141577098501795546

`A115386(A029507(n+2))`
-/

namespace A349188.P14141577098501795546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115386 (A029507 (n + 2)).toNat

end

end A349188.P14141577098501795546

/-!
# A349189: Number of n-phobe numbers.

The programs for A349189, there is no canonical definition to state claims against.
-/

/-! ## A349189.P13365212608494291496

`A225086(A034791(n+2))`
-/

namespace A349189.P13365212608494291496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A034791 (n + 2)).toNat

end

end A349189.P13365212608494291496

/-!
# A349190: Numbers k such that k equals the product of the sum of its first i digits, with i going from 1 to the total number of digits of k.

The programs for A349190, there is no canonical definition to state claims against.
-/

/-! ## A349190.P7410497981281706290

`A049101(A097569(n+1))*A113010(A194846(n+1))`
-/

namespace A349190.P7410497981281706290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049101 (A097569 (n + 1)).toNat * A113010 (A194846 (n + 1)).toNat

end

end A349190.P7410497981281706290

/-!
# A349191: a(n) = A000720(A348907(n+1)).

The programs for A349191, the canonical program `A349191.P3807840381629456878` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349191 has offset 1).

The definition of A349191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348907, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349191.P3807840381629456878

`A000720(A348907(n+2))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A349191

/-- `A000720(A348907(n+2))` -/
def P3807840381629456878.Spec : Prop :=
  ∀ n, P3807840381629456878.a n = A349191 (n + 1)

theorem P3807840381629456878.correct : P3807840381629456878.Spec := by
  intro n
  simp only [A349191, Nat.add_sub_cancel]

end A349191

/-! ## A349191.P10241680233611459160

`∑{d}[A348907(n+2), A049084(#)]`
-/

namespace A349191.P10241680233611459160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348907 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A349191.P10241680233611459160

namespace A349191

/-- `∑{d}[A348907(n+2), A049084(#)]` -/
def P10241680233611459160.Spec : Prop :=
  ∀ n, P10241680233611459160.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P17436863348364307666

`∑{d}[A348907(n+2), A230980(#)]`
-/

namespace A349191.P17436863348364307666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348907 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230980 d

end

end A349191.P17436863348364307666

namespace A349191

/-- `∑{d}[A348907(n+2), A230980(#)]` -/
def P17436863348364307666.Spec : Prop :=
  ∀ n, P17436863348364307666.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P6422887690897705982

`A230980(A348907(n+2)-1)+1`
-/

namespace A349191.P6422887690897705982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A348907 (n + 2) - 1).toNat + 1

end

end A349191.P6422887690897705982

namespace A349191

/-- `A230980(A348907(n+2)-1)+1` -/
def P6422887690897705982.Spec : Prop :=
  ∀ n, P6422887690897705982.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P669739522754927712

`A049084(A348907(n+2)%A017425(n))`
-/

namespace A349191.P669739522754927712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.tmod (A348907 (n + 2)) (A017425 n)).toNat

end

end A349191.P669739522754927712

namespace A349191

/-- `A049084(A348907(n+2)%A017425(n))` -/
def P669739522754927712.Spec : Prop :=
  ∀ n, P669739522754927712.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P7278902072367660505

`A342165(n+2)-1`
-/

namespace A349191.P7278902072367660505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342165 (n + 2) - 1

end

end A349191.P7278902072367660505

namespace A349191

/-- `A342165(n+2)-1` -/
def P7278902072367660505.Spec : Prop :=
  ∀ n, P7278902072367660505.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P7540855764809971746

`∑[-Δ[-A342165(n+1)]]`
-/

namespace A349191.P7540855764809971746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A342165 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349191.P7540855764809971746

namespace A349191

/-- `∑[-Δ[-A342165(n+1)]]` -/
def P7540855764809971746.Spec : Prop :=
  ∀ n, P7540855764809971746.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P7325862143702126925

`A290103(2*A348907(n+2))`
-/

namespace A349191.P7325862143702126925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A348907 (n + 2)).toNat

end

end A349191.P7325862143702126925

namespace A349191

/-- `A290103(2*A348907(n+2))` -/
def P7325862143702126925.Spec : Prop :=
  ∀ n, P7325862143702126925.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P15398241570946773108

`A357839(A348907(A357839(A000040(n+2))))`
-/

namespace A349191.P15398241570946773108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357839 (A348907 (A357839 (A000040 (n + 2)).toNat).toNat).toNat

end

end A349191.P15398241570946773108

namespace A349191

/-- `A357839(A348907(A357839(A000040(n+2))))` -/
def P15398241570946773108.Spec : Prop :=
  ∀ n, P15398241570946773108.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P14120364596773843756

`A000720(A237739(A000265(A071574(n+2))))`
-/

namespace A349191.P14120364596773843756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A237739 (A000265 (A071574 (n + 2)).toNat).toNat).toNat

end

end A349191.P14120364596773843756

namespace A349191

/-- `A000720(A237739(A000265(A071574(n+2))))` -/
def P14120364596773843756.Spec : Prop :=
  ∀ n, P14120364596773843756.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P2889230796205111041

`A269858(A268674(A269857(n+2)))`
-/

namespace A349191.P2889230796205111041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269858 (A268674 (A269857 (n + 2)).toNat).toNat

end

end A349191.P2889230796205111041

namespace A349191

/-- `A269858(A268674(A269857(n+2)))` -/
def P2889230796205111041.Spec : Prop :=
  ∀ n, P2889230796205111041.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P546465065604627627

`A269848(A064989(A269847(n+2)))`
-/

namespace A349191.P546465065604627627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269848 (A064989 (A269847 (n + 2)).toNat).toNat

end

end A349191.P546465065604627627

namespace A349191

/-- `A269848(A064989(A269847(n+2)))` -/
def P546465065604627627.Spec : Prop :=
  ∀ n, P546465065604627627.a n = A349191 (n + 1)

end A349191

/-! ## A349191.P8788891825710263911

`A346700(A348907(n+2)²)`
-/

namespace A349191.P8788891825710263911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A348907 (n + 2) ^ 2).toNat

end

end A349191.P8788891825710263911

namespace A349191

/-- `A346700(A348907(n+2)²)` -/
def P8788891825710263911.Spec : Prop :=
  ∀ n, P8788891825710263911.a n = A349191 (n + 1)

end A349191

/-!
# A349192: Irregular triangle T(m,k) = inverse permutation of S(m,k) = A349191 read as an irregular triangle.

The programs for A349192, there is no canonical definition to state claims against.
-/

/-! ## A349192.P633810616346855156

`A328248(A061954(n+1))+A089840(n)`
-/

namespace A349192.P633810616346855156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A061954 (n + 1)).toNat + A089840 n

end

end A349192.P633810616346855156

/-! ## A349192.P10050663440793287642

`A118235(n+1)-A235145(A001333(n))`
-/

namespace A349192.P10050663440793287642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (n + 1) - A235145 (A001333 n).toNat

end

end A349192.P10050663440793287642

/-! ## A349192.P12336209894583795545

`xor(A078771(A051474(n)), A243070(n+1))`
-/

namespace A349192.P12336209894583795545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A078771 (A051474 n).toNat) (A243070 (n + 1))

end

end A349192.P12336209894583795545

/-! ## A349192.P5315148885971189521

`A099479(A118235(n+1)^A146735(n+1))`
-/

namespace A349192.P5315148885971189521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (SequenceMachineLib.roundAway ((A118235 (n + 1) : ℚ) ^ (A146735 (n + 1) : ℤ))).toNat

end

end A349192.P5315148885971189521

/-!
# A349193: 1-Sondow numbers: numbers j such that p divides j/p + 1 for every prime divisor p of j.

The programs for A349193, there is no canonical definition to state claims against.
-/

/-! ## A349193.P18265558630024368861

`A054377(n-val(a(n-1), 39))` with `a(0)=1`
-/

namespace A349193.P18265558630024368861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054377 (n - SequenceMachineLib.valuation (a (n - 1)).toNat 39)

end

end A349193.P18265558630024368861

/-! ## A349193.P15467308405225901000

`∏{e}[A000079(n), A054377(#)]`
-/

namespace A349193.P15467308405225901000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054377 (Nat.factorization (f1 n).natAbs p)

end

end A349193.P15467308405225901000

/-! ## A349193.P7118748575417130015

`∏{e}[A000244(n), A054377(#)]`
-/

namespace A349193.P7118748575417130015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054377 (Nat.factorization (f1 n).natAbs p)

end

end A349193.P7118748575417130015

/-! ## A349193.P11331964171301922126

`∏{e}[A000351(n), A054377(#)]`
-/

namespace A349193.P11331964171301922126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054377 (Nat.factorization (f1 n).natAbs p)

end

end A349193.P11331964171301922126

/-! ## A349193.P6981676438007971451

`gcd(C(2, n+2), A054377(A028310(n)))`
-/

namespace A349193.P6981676438007971451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A054377 (A028310 n).toNat)

end

end A349193.P6981676438007971451

/-!
# A349194: a(n) is the product of the sum of the first i digits of n, as i goes from 1 to the total number of digits of n.

The programs for A349194, the canonical program `A349194.P1398837921043225427` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349194 has offset 1).

The definition of A349194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349194.P1398837921043225427

`a(A059995(n+1)-1)*A007953(n+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A349194

/-- `a(A059995(n+1)-1)*A007953(n+1)` -/
def P1398837921043225427.Spec : Prop :=
  ∀ n, P1398837921043225427.a n = A349194 (n + 1)

theorem P1398837921043225427.correct : P1398837921043225427.Spec := by
  intro n
  simp only [A349194, Nat.add_sub_cancel]

end A349194

/-! ## A349194.P9982956942469708761

`A329382(A054842(n+1))`
-/

namespace A349194.P9982956942469708761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A054842 (n + 1)).toNat

end

end A349194.P9982956942469708761

namespace A349194

/-- `A329382(A054842(n+1))` -/
def P9982956942469708761.Spec : Prop :=
  ∀ n, P9982956942469708761.a n = A349194 (n + 1)

end A349194

/-!
# A349195: a(n) is the X-coordinate of the n-th point of the R5 dragon curve; A349196 gives Y-coordinates.

The programs for A349195, there is no canonical definition to state claims against.
-/

/-! ## A349195.P631566710964699154

`∑[A056594(A308177(n+1)-n)]`
-/

namespace A349195.P631566710964699154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A308177 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349195.P631566710964699154

/-! ## A349195.P18348272896852374096

`∑[(A347229(A306931(n+5)+1)+n)%2]`
-/

namespace A349195.P18348272896852374096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347229 (A306931 (n + 5) + 1).toNat + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349195.P18348272896852374096

/-! ## A349195.P4885689478812928294

`∑[A188510(A133265(A107853(n))+n)]`
-/

namespace A349195.P4885689478812928294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A133265 (A107853 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349195.P4885689478812928294

/-! ## A349195.P1308398910847578080

`∑[A166698(A166674(n+1)+A166664(n+1))]`
-/

namespace A349195.P1308398910847578080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A166674 (n + 1) + A166664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349195.P1308398910847578080

/-! ## A349195.P585326309823879768

`∑[A014017(∑[A039949(n+1)])]`
-/

namespace A349195.P585326309823879768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349195.P585326309823879768

/-!
# A349196: a(n) is the Y-coordinate of the n-th point of the R5 dragon curve; A349195 gives X-coordinates.

The programs for A349196, there is no canonical definition to state claims against.
-/

/-! ## A349196.P14906857277077384715

`∑[A056594(n)*A257834(A000961(n+1))]`
-/

namespace A349196.P14906857277077384715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A257834 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349196.P14906857277077384715

/-! ## A349196.P4187394579873501761

`∑[A163805((n+1)*A007500(n+1))]`
-/

namespace A349196.P4187394579873501761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 ((n + 1 : ℤ) * A007500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349196.P4187394579873501761

/-! ## A349196.P725755771421634795

`dr(∑[A257834(A020639(3*n+1))])`
-/

namespace A349196.P725755771421634795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257834 (A020639 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349196.P725755771421634795

/-! ## A349196.P13268719443446912536

`A216191(A008805(n)+1)`
-/

namespace A349196.P13268719443446912536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216191 (A008805 n + 1).toNat

end

end A349196.P13268719443446912536

/-! ## A349196.P12721176808571238481

`A005811(A005811(floor(n/2)^4))`
-/

namespace A349196.P12721176808571238481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A005811 (⌊(n : ℚ) / 2⌋ ^ 4).toNat).toNat

end

end A349196.P12721176808571238481

/-!
# A349197: a(n) is the X-coordinate of the n-th point of the alternate terdragon curve; sequence A349198 gives Y-coordinates.

The programs for A349197, there is no canonical definition to state claims against.
-/

/-! ## A349197.P14576888239559305173

`A349198(3*n)+A349198(n)`
-/

namespace A349197.P14576888239559305173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349198 (3 * n) + A349198 n

end

end A349197.P14576888239559305173

/-! ## A349197.P294723245779146288

`A076398(A001405(n)+A001057(n))`
-/

namespace A349197.P294723245779146288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076398 (A001405 n + A001057 n).toNat

end

end A349197.P294723245779146288

/-! ## A349197.P13893774330397411181

`A349041(n+3)-A333254(A136467(n))`
-/

namespace A349197.P13893774330397411181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349041 (n + 3) - A333254 (A136467 n).toNat

end

end A349197.P13893774330397411181

/-! ## A349197.P8446017435097996801

`A349041(n+3)+A008683(A073521(n+1))`
-/

namespace A349197.P8446017435097996801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349041 (n + 3) + A008683 (A073521 (n + 1)).toNat

end

end A349197.P8446017435097996801

/-! ## A349197.P15705725884379611277

`A349041(n+3)-A055229(A002083(n+1))`
-/

namespace A349197.P15705725884379611277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349041 (n + 3) - A055229 (A002083 (n + 1)).toNat

end

end A349197.P15705725884379611277

/-!
# A349198: a(n) is the Y-coordinate of the n-th point of the alternate terdragon curve; sequence A349197 gives X-coordinates.

The programs for A349198, there is no canonical definition to state claims against.
-/

/-! ## A349198.P17836410394819299601

`(A349197(3*n)-A349197(n))/2`
-/

namespace A349198.P17836410394819299601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349197 (3 * n) - A349197 n : ℚ) / 2

end

end A349198.P17836410394819299601

/-! ## A349198.P15391811637755418317

`A274369(lt[A261763(n+1), A274408(2*n+3)])`
-/

namespace A349198.P15391811637755418317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274408 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274369 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349198.P15391811637755418317

/-!
# A349199: a(n) is the number of distinct numbers of diagonal transversals that an orthogonal diagonal Latin square of order n can have.

The programs for A349199, there is no canonical definition to state claims against.
-/

/-! ## A349199.P3100907925342148908

`A349156(A030104(n)+A000035(n))`
-/

namespace A349199.P3100907925342148908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349156 (A030104 n + A000035 n).toNat

end

end A349199.P3100907925342148908

/-! ## A349199.P3580076392171109435

`A029236(or(A122734(n), A170893(n)))`
-/

namespace A349199.P3580076392171109435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (Int.lor (A122734 (n + 10)) (A170893 n)).toNat

end

end A349199.P3580076392171109435

/-! ## A349199.P3480150891086259041

`A349156(A030129(n+2)+A030104(n))`
-/

namespace A349199.P3480150891086259041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349156 (A030129 (n + 2) + A030104 n).toNat

end

end A349199.P3480150891086259041

