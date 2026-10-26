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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A166700: Totally multiplicative sequence with a(p) = a(p-1) + 3 for prime p.

The programs for A166700, there is no canonical definition to state claims against.
-/

/-! ## A166700.P3115027873864333777

`A028898(A166707(n+1))`
-/

namespace A166700.P3115027873864333777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A166707 (n + 1)).toNat

end

end A166700.P3115027873864333777

/-! ## A166700.P14054207242904855488

`∏{e}[A018782(n+1), A327328(#)+1]`
-/

namespace A166700.P14054207242904855488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A327328 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A166700.P14054207242904855488

/-! ## A166700.P16273359723933426126

`∏{e}[A018782(n+1), A016777(A175299(#))]`
-/

namespace A166700.P16273359723933426126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016777 (A175299 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A166700.P16273359723933426126

/-!
# A166701: Totally multiplicative sequence with a(p) = a(p-1) + 4 for prime p.

The programs for A166701, there is no canonical definition to state claims against.
-/

/-! ## A166701.P6611734564142891789

`A028899(A166707(n+1))`
-/

namespace A166701.P6611734564142891789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A166707 (n + 1)).toNat

end

end A166701.P6611734564142891789

/-! ## A166701.P16412295452677162523

`∑[A048785(A150540(n))]`
-/

namespace A166701.P16412295452677162523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A150540 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166701.P16412295452677162523

/-! ## A166701.P5892443592689941756

`A373226(A178443(n+1))`
-/

namespace A166701.P5892443592689941756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (A178443 (n + 1)).toNat

end

end A166701.P5892443592689941756

/-!
# A166702: Totally multiplicative sequence with a(p) = a(p-1) + 5 for prime p.

The programs for A166702, there is no canonical definition to state claims against.
-/

/-! ## A166702.P9056426441914203708

`A028900(A166707(n+1))`
-/

namespace A166702.P9056426441914203708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A166707 (n + 1)).toNat

end

end A166702.P9056426441914203708

/-!
# A166703: Totally multiplicative sequence with a(p) = a(p-1) + 6 for prime p.

The programs for A166703, there is no canonical definition to state claims against.
-/

/-! ## A166703.P13141451860039920292

`A028901(A166707(n+1))`
-/

namespace A166703.P13141451860039920292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A166707 (n + 1)).toNat

end

end A166703.P13141451860039920292

/-!
# A166704: Totally multiplicative sequence with a(p) = a(p-1) + 7 for prime p.

The programs for A166704, there is no canonical definition to state claims against.
-/

/-! ## A166704.P16777911852124077631

`A028902(A166707(n+1))`
-/

namespace A166704.P16777911852124077631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A166707 (n + 1)).toNat

end

end A166704.P16777911852124077631

/-! ## A166704.P11757346287491257817

`log(∏[exp(7^∑{e}[n+1, #])])`
-/

namespace A166704.P11757346287491257817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (7 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A166704.P11757346287491257817

/-! ## A166704.P7859701059664314629

`∑[A000196(49^∑{e}[n+1, #])]`
-/

namespace A166704.P7859701059664314629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (49 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166704.P7859701059664314629

/-!
# A166705: Totally multiplicative sequence with a(p) = a(p-1) + 8 for prime p.

The programs for A166705, there is no canonical definition to state claims against.
-/

/-! ## A166705.P10122356792875862571

`A028903(A166707(n+1))`
-/

namespace A166705.P10122356792875862571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A166707 (n + 1)).toNat

end

end A166705.P10122356792875862571

/-! ## A166705.P6644673258044403272

`A037471(A166703(n+1)%A288481(n+1))`
-/

namespace A166705.P6644673258044403272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Int.tmod (A166703 (n + 1)) (A288481 (n + 1))).toNat

end

end A166705.P6644673258044403272

/-! ## A166705.P161631165115241579

`A037471(A166703(n+1)^(A231630(n+1)%2))`
-/

namespace A166705.P161631165115241579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A166703 (n + 1) : ℚ) ^ (Int.tmod (A231630 (n + 1)) 2 : ℤ))).toNat

end

end A166705.P161631165115241579

/-!
# A166706: Totally multiplicative sequence with a(p) = a(p-1) + 9 for prime p.

The programs for A166706, there is no canonical definition to state claims against.
-/

/-! ## A166706.P12317730965230708292

`A028904(A166707(n+1))`
-/

namespace A166706.P12317730965230708292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A166707 (n + 1)).toNat

end

end A166706.P12317730965230708292

/-! ## A166706.P11045865459974739862

`eq[2, A113581(A109910(n)+2)]`
-/

namespace A166706.P11045865459974739862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 (A109910 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166706.P11045865459974739862

/-! ## A166706.P9744222341212417368

`∑[A355732(4^∑{e}[n+1, #])]`
-/

namespace A166706.P9744222341212417368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355732 (4 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166706.P9744222341212417368

/-!
# A166707: Totally multiplicative sequence with a(p) = a(p-1) + 10 for prime p.

The programs for A166707, there is no canonical definition to state claims against.
-/

/-! ## A166707.P8651859624305619295

`A007095(A166706(n+1))`
-/

namespace A166707.P8651859624305619295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A166706 (n + 1)).toNat

end

end A166707.P8651859624305619295

/-! ## A166707.P4449787242733772255

`A007092(A166703(n+1)%A231630(n+1))`
-/

namespace A166707.P4449787242733772255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (Int.tmod (A166703 (n + 1)) (A231630 (n + 1))).toNat

end

end A166707.P4449787242733772255

/-! ## A166707.P3236914929718304695

`∑[ratio[A165831(n!)]]`
-/

namespace A166707.P3236914929718304695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (Nat.factorial n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166707.P3236914929718304695

/-!
# A166709: Number of distinct integers expressible as sums of consecutive primes up to n-th prime.

The programs for A166709, there is no canonical definition to state claims against.
-/

/-! ## A166709.P6237292913470615573

`A152415(n+1)-1`
-/

namespace A166709.P6237292913470615573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152415 (n + 1) - 1

end

end A166709.P6237292913470615573

/-! ## A166709.P168557502392237631

`A023443(A152415(n+1))`
-/

namespace A166709.P168557502392237631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A152415 (n + 1)).toNat

end

end A166709.P168557502392237631

/-! ## A166709.P18136545977194973407

`record[A152415(A304740(n))-1]`
-/

namespace A166709.P18136545977194973407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152415 (A304740 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166709.P18136545977194973407

/-! ## A166709.P11550744607842788637

`record[A152415(A304750(n))-1]`
-/

namespace A166709.P11550744607842788637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152415 (A304750 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166709.P11550744607842788637

/-! ## A166709.P15818682016957314210

`record[A152415(A305297(n))-1]`
-/

namespace A166709.P15818682016957314210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152415 (A305297 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166709.P15818682016957314210

/-! ## A166709.P12005805410397837860

`A171950(A152415(n+1)+1)`
-/

namespace A166709.P12005805410397837860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A152415 (n + 1) + 1).toNat

end

end A166709.P12005805410397837860

/-! ## A166709.P9931678701497122407

`A289207(A152415(n+1)+1)`
-/

namespace A166709.P9931678701497122407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A152415 (n + 1) + 1).toNat

end

end A166709.P9931678701497122407

/-! ## A166709.P14074989629626724457

`A023447(A152415(n+1)+4)`
-/

namespace A166709.P14074989629626724457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A152415 (n + 1) + 4).toNat

end

end A166709.P14074989629626724457

/-! ## A166709.P8560990677179173389

`A023452(A152415(n+1)+9)`
-/

namespace A166709.P8560990677179173389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A152415 (n + 1) + 9).toNat

end

end A166709.P8560990677179173389

/-! ## A166709.P8896351222944758528

`∑{d}[A152415(n+1), A000010(#)%#]`
-/

namespace A166709.P8896351222944758528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A000010 d) (d : ℤ)

end

end A166709.P8896351222944758528

/-!
# A166710: a(n)=prime(n) written in base the largest digit of prime(n).

The programs for A166710, there is no canonical definition to state claims against.
-/

/-! ## A166710.P7493894133467073149

`A001733(C(n, 4)+3)`
-/

namespace A166710.P7493894133467073149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001733 (Nat.choose n 4 + 3)

end

end A166710.P7493894133467073149

/-! ## A166710.P10907595849954116519

`A086996(C(∑[n], 9-(-1)^n))`
-/

namespace A166710.P10907595849954116519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086996 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (9 - (-1) ^ n).toNat + 1)

end

end A166710.P10907595849954116519

/-!
# A166711: Permutation of the integers: two positives, one negative.

The programs for A166711, the canonical program `A166711.P3057229863846697680` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166711 has offset 0).

The definition of A166711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166711.P3057229863846697680

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=-1, a(4)=3, a(5)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166711

/-- `2*a(n-3)-a(n-6)` -/
def P3057229863846697680.Spec : Prop :=
  ∀ n, P3057229863846697680.a n = A166711 n

theorem P3057229863846697680.correct : P3057229863846697680.Spec := by
  intro n
  simp only [A166711]

end A166711

/-! ## A166711.P10880891667534637474

`(n+1)/3+2*A049347(n)/3-(-1)^n*A076118(n+1)`
-/

namespace A166711.P10880891667534637474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 + (2 * A049347 n : ℚ) / 3 - ((-1) ^ n * A076118 (n + 1) : ℚ)

end

end A166711.P10880891667534637474

namespace A166711

/-- `(n+1)/3+2*A049347(n)/3-(-1)^n*A076118(n+1)` -/
def P10880891667534637474.Spec : Prop :=
  ∀ n, P10880891667534637474.a n = (A166711 n : ℚ)

end A166711

/-! ## A166711.P1908437189210490750

`n*n²%3-floor(n/3)`
-/

namespace A166711.P1908437189210490750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (n ^ 2 % 3) : ℕ) : ℤ) - ⌊(n : ℚ) / 3⌋

end

end A166711.P1908437189210490750

namespace A166711

/-- `n*n²%3-floor(n/3)` -/
def P1908437189210490750.Spec : Prop :=
  ∀ n, P1908437189210490750.a n = A166711 n

end A166711

/-! ## A166711.P6630636082084862592

`Δ[n*ceil((1-2*n)/6)]+n`
-/

namespace A166711.P6630636082084862592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(1 - (2 * n : ℤ) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A166711.P6630636082084862592

namespace A166711

/-- `Δ[n*ceil((1-2*n)/6)]+n` -/
def P6630636082084862592.Spec : Prop :=
  ∀ n, P6630636082084862592.a n = A166711 n

end A166711

/-! ## A166711.P2585211909676086671

`Δ[n/2*A008611(n)]`
-/

namespace A166711.P2585211909676086671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A008611 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166711.P2585211909676086671

namespace A166711

/-- `Δ[n/2*A008611(n)]` -/
def P2585211909676086671.Spec : Prop :=
  ∀ n, P2585211909676086671.a n = (A166711 n : ℚ)

end A166711

/-! ## A166711.P7891450791596355156

`A246425(A042965(n+1))`
-/

namespace A166711.P7891450791596355156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A042965 (n + 1)).toNat

end

end A166711.P7891450791596355156

namespace A166711

/-- `A246425(A042965(n+1))` -/
def P7891450791596355156.Spec : Prop :=
  ∀ n, P7891450791596355156.a n = A166711 n

end A166711

/-! ## A166711.P7527623091701352579

`A076118(n)*A122876(n)`
-/

namespace A166711.P7527623091701352579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 n * A122876 n

end

end A166711.P7527623091701352579

namespace A166711

/-- `A076118(n)*A122876(n)` -/
def P7527623091701352579.Spec : Prop :=
  ∀ n, P7527623091701352579.a n = A166711 n

end A166711

/-! ## A166711.P15347419770817764799

`(A002264(n)-n)/A099837(n)`
-/

namespace A166711.P15347419770817764799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 n - (n : ℤ) : ℚ) / (A099837 n : ℚ)

end

end A166711.P15347419770817764799

namespace A166711

/-- `(A002264(n)-n)/A099837(n)` -/
def P15347419770817764799.Spec : Prop :=
  ∀ n, P15347419770817764799.a n = (A166711 n : ℚ)

end A166711

/-! ## A166711.P10993566191308324347

`A004523(n+1)/A131713(n+1)`
-/

namespace A166711.P10993566191308324347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004523 (n + 1) : ℚ) / (A131713 (n + 1) : ℚ)

end

end A166711.P10993566191308324347

namespace A166711

/-- `A004523(n+1)/A131713(n+1)` -/
def P10993566191308324347.Spec : Prop :=
  ∀ n, P10993566191308324347.a n = (A166711 n : ℚ)

end A166711

/-! ## A166711.P8879462649279549677

`(A000212(n)-A000212(n+1))/A099837(n)`
-/

namespace A166711.P8879462649279549677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000212 n - A000212 (n + 1) : ℚ) / (A099837 n : ℚ)

end

end A166711.P8879462649279549677

namespace A166711

/-- `(A000212(n)-A000212(n+1))/A099837(n)` -/
def P8879462649279549677.Spec : Prop :=
  ∀ n, P8879462649279549677.a n = (A166711 n : ℚ)

end A166711

/-! ## A166711.P9291454386405668928

`(A000212(n+1)-A000212(n))/A131713(n+1)`
-/

namespace A166711.P9291454386405668928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000212 (n + 1) - A000212 n : ℚ) / (A131713 (n + 1) : ℚ)

end

end A166711.P9291454386405668928

namespace A166711

/-- `(A000212(n+1)-A000212(n))/A131713(n+1)` -/
def P9291454386405668928.Spec : Prop :=
  ∀ n, P9291454386405668928.a n = (A166711 n : ℚ)

end A166711

/-! ## A166711.P1683934759896503843

`A001057(A006369(n))`
-/

namespace A166711.P1683934759896503843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A006369 n).toNat

end

end A166711.P1683934759896503843

namespace A166711

/-- `A001057(A006369(n))` -/
def P1683934759896503843.Spec : Prop :=
  ∀ n, P1683934759896503843.a n = A166711 n

end A166711

/-! ## A166711.P17477987240212779490

`A329480(A004773(n+1))`
-/

namespace A166711.P17477987240212779490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329480 (A004773 (n + 1)).toNat

end

end A166711.P17477987240212779490

namespace A166711

/-- `A329480(A004773(n+1))` -/
def P17477987240212779490.Spec : Prop :=
  ∀ n, P17477987240212779490.a n = A166711 n

end A166711

/-! ## A166711.P4185473364708296529

`A137501(A265667(n+1))/2`
-/

namespace A166711.P4185473364708296529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137501 (A265667 (n + 1)).toNat : ℚ) / 2

end

end A166711.P4185473364708296529

namespace A166711

/-- `A137501(A265667(n+1))/2` -/
def P4185473364708296529.Spec : Prop :=
  ∀ n, P4185473364708296529.a n = (A166711 n : ℚ)

end A166711

/-! ## A166711.P12705255172168280755

`A131358(A080030(n))`
-/

namespace A166711.P12705255172168280755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A080030 n).toNat

end

end A166711.P12705255172168280755

namespace A166711

/-- `A131358(A080030(n))` -/
def P12705255172168280755.Spec : Prop :=
  ∀ n, P12705255172168280755.a n = A166711 n

end A166711

/-! ## A166711.P4186607863303562612

`A242602(A367705(n))`
-/

namespace A166711.P4186607863303562612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242602 (A367705 n).toNat

end

end A166711.P4186607863303562612

namespace A166711

/-- `A242602(A367705(n))` -/
def P4186607863303562612.Spec : Prop :=
  ∀ n, P4186607863303562612.a n = A166711 n

end A166711

/-! ## A166711.P3742599096839433336

`Δ[A028242(n*A008611(n))]`
-/

namespace A166711.P3742599096839433336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((n : ℤ) * A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166711.P3742599096839433336

namespace A166711

/-- `Δ[A028242(n*A008611(n))]` -/
def P3742599096839433336.Spec : Prop :=
  ∀ n, P3742599096839433336.a n = A166711 n

end A166711

/-!
# A166712: Number of primes in (n*log(n)..(n+1)*log(n+1)] semi-open intervals, n >= 1.

The programs for A166712, the canonical program `A166712.P7902075081343021312` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166712 has offset 1).

The definition of A166712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166712.P7902075081343021312

`Δ[A230980(A050504(n+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166712

/-- `Δ[A230980(A050504(n+1))]` -/
def P7902075081343021312.Spec : Prop :=
  ∀ n, P7902075081343021312.a n = A166712 (n + 1)

theorem P7902075081343021312.correct : P7902075081343021312.Spec := by
  intro n
  simp only [A166712, Nat.add_sub_cancel]

end A166712

/-! ## A166712.P8139606777143242490

`Δ[A000720(A007918(A050502(n+1)))]`
-/

namespace A166712.P8139606777143242490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007918 (A050502 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166712.P8139606777143242490

namespace A166712

/-- `Δ[A000720(A007918(A050502(n+1)))]` -/
def P8139606777143242490.Spec : Prop :=
  ∀ n, P8139606777143242490.a n = A166712 (n + 1)

end A166712

/-! ## A166712.P8038143128824209902

`Δ[A036234(A050504(n+1)+A000007(n))]`
-/

namespace A166712.P8038143128824209902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A050504 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166712.P8038143128824209902

namespace A166712

/-- `Δ[A036234(A050504(n+1)+A000007(n))]` -/
def P8038143128824209902.Spec : Prop :=
  ∀ n, P8038143128824209902.a n = A166712 (n + 1)

end A166712

/-! ## A166712.P10625979026278097740

`A230980(A050504(n+2))-A230980(A050504(n+1))`
-/

namespace A166712.P10625979026278097740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A050504 (n + 2)).toNat - A230980 (A050504 (n + 1)).toNat

end

end A166712.P10625979026278097740

namespace A166712

/-- `A230980(A050504(n+2))-A230980(A050504(n+1))` -/
def P10625979026278097740.Spec : Prop :=
  ∀ n, P10625979026278097740.a n = A166712 (n + 1)

theorem P10625979026278097740.correct : P10625979026278097740.Spec := by
  intro n
  simp only [A166712, Nat.add_sub_cancel, A166712.P10625979026278097740.a, A166712.P7902075081343021312.f1, A166712.P7902075081343021312.a, SequenceMachineLib.memo_apply]

end A166712

/-! ## A166712.P7009314621012465291

`A000002(n+1)-A156728(A334065(2*n+5))`
-/

namespace A166712.P7009314621012465291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - A156728 (A334065 (2 * n + 5)).toNat

end

end A166712.P7009314621012465291

namespace A166712

/-- `A000002(n+1)-A156728(A334065(2*n+5))` -/
def P7009314621012465291.Spec : Prop :=
  ∀ n, P7009314621012465291.a n = A166712 (n + 1)

end A166712

/-!
# A166718: Numbers with at most 4 prime factors (counted with multiplicity).

The programs for A166718, the canonical program `A166718.P1751264215358538003` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166718 has offset 1).

The definition of A166718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166718.P15278421447942770899

`lt[A001222(n+1), 5]+1`
-/

namespace A166718.P15278421447942770899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166718.P15278421447942770899

namespace A166718

/-- `lt[A001222(n+1), 5]+1` -/
def P15278421447942770899.Spec : Prop :=
  ∀ n, (P15278421447942770899.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P1751264215358538003

`∪[A014613(n+1), A037144(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A166718

/-- `∪[A014613(n+1), A037144(n+1)]` -/
def P1751264215358538003.Spec : Prop :=
  ∀ n, (P1751264215358538003.a n : ℤ) = A166718 (n + 1)

theorem P1751264215358538003.correct : P1751264215358538003.Spec := by
  intro n
  simp only [A166718, Nat.add_sub_cancel]

end A166718

/-! ## A166718.P9158913597224140308

`record[(n+1)/A293637(A001222(n+1)+1)]`
-/

namespace A166718.P9158913597224140308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A293637 (A001222 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166718.P9158913597224140308

namespace A166718

/-- `record[(n+1)/A293637(A001222(n+1)+1)]` -/
def P9158913597224140308.Spec : Prop :=
  ∀ n, P9158913597224140308.a n = (A166718 (n + 1) : ℚ)

end A166718

/-! ## A166718.P14467158503098313031

`lt[A061142(n+1), 32]+1`
-/

namespace A166718.P14467158503098313031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166718.P14467158503098313031

namespace A166718

/-- `lt[A061142(n+1), 32]+1` -/
def P14467158503098313031.Spec : Prop :=
  ∀ n, (P14467158503098313031.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P14386342062108812890

`lt[∑{e}[n+1, #], 5]+1`
-/

namespace A166718.P14386342062108812890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A166718.P14386342062108812890

namespace A166718

/-- `lt[∑{e}[n+1, #], 5]+1` -/
def P14386342062108812890.Spec : Prop :=
  ∀ n, (P14386342062108812890.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P2924732428197939996

`lt[(∑{e}[2*n, #]-3)², 5]`
-/

namespace A166718.P2924732428197939996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) - 3) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A166718.P2924732428197939996

namespace A166718

/-- `lt[(∑{e}[2*n, #]-3)², 5]` -/
def P2924732428197939996.Spec : Prop :=
  ∀ n, (P2924732428197939996.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P10716907987717383769

`lt[A160086(n), A048785(n)]`
-/

namespace A166718.P10716907987717383769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166718.P10716907987717383769

namespace A166718

/-- `lt[A160086(n), A048785(n)]` -/
def P10716907987717383769.Spec : Prop :=
  ∀ n, (P10716907987717383769.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P17002634920607186731

`eq[1, A054576(A054576(n+1))]+1`
-/

namespace A166718.P17002634920607186731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A054576 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166718.P17002634920607186731

namespace A166718

/-- `eq[1, A054576(A054576(n+1))]+1` -/
def P17002634920607186731.Spec : Prop :=
  ∀ n, (P17002634920607186731.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P5354888953444421830

`eq[A101637(n+1), A101638(n+1)]+1`
-/

namespace A166718.P5354888953444421830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166718.P5354888953444421830

namespace A166718

/-- `eq[A101637(n+1), A101638(n+1)]+1` -/
def P5354888953444421830.Spec : Prop :=
  ∀ n, (P5354888953444421830.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P980308567862704599

`lt[A040976(val(A165825(n+1), 4)+1)-10, 1]+1`
-/

namespace A166718.P980308567862704599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 + 1) - 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166718.P980308567862704599

namespace A166718

/-- `lt[A040976(val(A165825(n+1), 4)+1)-10, 1]+1` -/
def P980308567862704599.Spec : Prop :=
  ∀ n, (P980308567862704599.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P10437644650478452107

`lt[A123667(n+1), A287001(3*n+5)]+1`
-/

namespace A166718.P10437644650478452107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166718.P10437644650478452107

namespace A166718

/-- `lt[A123667(n+1), A287001(3*n+5)]+1` -/
def P10437644650478452107.Spec : Prop :=
  ∀ n, (P10437644650478452107.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P9349638526073738192

`lt[A100405(A000001(n)), n]`
-/

namespace A166718.P9349638526073738192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 (A000001 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166718.P9349638526073738192

namespace A166718

/-- `lt[A100405(A000001(n)), n]` -/
def P9349638526073738192.Spec : Prop :=
  ∀ n, (P9349638526073738192.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P12858963707237902285

`lt[A242699(A000001(n)), A005563(n)]`
-/

namespace A166718.P12858963707237902285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242699 ((A000001 n).toNat + 64)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166718.P12858963707237902285

namespace A166718

/-- `lt[A242699(A000001(n)), A005563(n)]` -/
def P12858963707237902285.Spec : Prop :=
  ∀ n, (P12858963707237902285.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P14684534010540860883

`lt[A332281(A000001(n)), A000217(n)]`
-/

namespace A166718.P14684534010540860883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 (A000001 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166718.P14684534010540860883

namespace A166718

/-- `lt[A332281(A000001(n)), A000217(n)]` -/
def P14684534010540860883.Spec : Prop :=
  ∀ n, (P14684534010540860883.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P17551806653985796320

`lt[A242699(A000001(n)), A007434(n+1)]`
-/

namespace A166718.P17551806653985796320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242699 ((A000001 n).toNat + 64)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166718.P17551806653985796320

namespace A166718

/-- `lt[A242699(A000001(n)), A007434(n+1)]` -/
def P17551806653985796320.Spec : Prop :=
  ∀ n, (P17551806653985796320.a n : ℤ) = A166718 (n + 1)

end A166718

/-! ## A166718.P15489484417217036922

`lt[A242699(A000001(n)), (A109606(n+1)+1)*(n+1)]`
-/

namespace A166718.P15489484417217036922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242699 ((A000001 n).toNat + 64)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166718.P15489484417217036922

namespace A166718

/-- `lt[A242699(A000001(n)), (A109606(n+1)+1)*(n+1)]` -/
def P15489484417217036922.Spec : Prop :=
  ∀ n, (P15489484417217036922.a n : ℤ) = A166718 (n + 1)

end A166718

/-!
# A166719: Numbers with at most 5 prime factors (counted with multiplicity).

The programs for A166719, the canonical program `A166719.P9778395336250890325` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166719 has offset 1).

The definition of A166719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166719.P9778395336250890325

`record[(n+1)/A029123(A001222(n+1)+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A166719

/-- `record[(n+1)/A029123(A001222(n+1)+1)]` -/
def P9778395336250890325.Spec : Prop :=
  ∀ n, P9778395336250890325.a n = (A166719 (n + 1) : ℚ)

end A166719

/-! ## A166719.P13053658620301667896

`record[(n+1)^(2-A265447(A001222(n+1)+1))]`
-/

namespace A166719.P13053658620301667896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - A265447 (A001222 (n + 1) + 1).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166719.P13053658620301667896

namespace A166719

/-- `record[(n+1)^(2-A265447(A001222(n+1)+1))]` -/
def P13053658620301667896.Spec : Prop :=
  ∀ n, P13053658620301667896.a n = (A166719 (n + 1) : ℚ)

end A166719

/-! ## A166719.P5892433499010731824

`record[n+1-A326292(A001222(n+1)²)]`
-/

namespace A166719.P5892433499010731824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326292 (A001222 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166719.P5892433499010731824

namespace A166719

/-- `record[n+1-A326292(A001222(n+1)²)]` -/
def P5892433499010731824.Spec : Prop :=
  ∀ n, P5892433499010731824.a n = A166719 (n + 1)

end A166719

/-! ## A166719.P8159083243018844839

`record[n+1-A347470(A001222((n+1)²))]`
-/

namespace A166719.P8159083243018844839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A347470 (A001222 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166719.P8159083243018844839

namespace A166719

/-- `record[n+1-A347470(A001222((n+1)²))]` -/
def P8159083243018844839.Spec : Prop :=
  ∀ n, P8159083243018844839.a n = A166719 (n + 1)

end A166719

/-! ## A166719.P7311386639055658774

`record[n+1-A037904(A001222((n+1)²)+1)]`
-/

namespace A166719.P7311386639055658774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A037904 (A001222 ((n + 1) ^ 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166719.P7311386639055658774

namespace A166719

/-- `record[n+1-A037904(A001222((n+1)²)+1)]` -/
def P7311386639055658774.Spec : Prop :=
  ∀ n, P7311386639055658774.a n = A166719 (n + 1)

end A166719

/-!
# A166720: Trisection A165342(3n).

The programs for A166720, the canonical program `A166720.P1607650431389668461` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166720 has offset 0).

The definition of A166720 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165342, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166720.P1607650431389668461

`A165342(3*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A166720

/-- `A165342(3*n)` -/
def P1607650431389668461.Spec : Prop :=
  ∀ n, P1607650431389668461.a n = A166720 n

theorem P1607650431389668461.correct : P1607650431389668461.Spec := by
  intro n
  simp only [A166720]

end A166720

/-! ## A166720.P13788019892055072513

`3*gcd((lcm(4, n)/4)²+2*n*(n+2)/gcd(4, n)², 4*n)`
-/

namespace A166720.P13788019892055072513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.gcd (SequenceMachineLib.roundAway (((Nat.lcm 4 n : ℚ) / 4) ^ 2 + (2 * n : ℚ) * ((n + 2 : ℚ) / (Nat.gcd 4 n ^ 2 : ℚ)))) (4 * n : ℤ)

end

end A166720.P13788019892055072513

namespace A166720

/-- `3*gcd((lcm(4, n)/4)²+2*n*(n+2)/gcd(4, n)², 4*n)` -/
def P13788019892055072513.Spec : Prop :=
  ∀ n, (P13788019892055072513.a n : ℤ) = A166720 n

end A166720

/-! ## A166720.P11911334637642132016

`3*gcd(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64, n²)`
-/

namespace A166720.P11911334637642132016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.gcd (SequenceMachineLib.roundAway ((n : ℝ) * ((3 * n + 4 : ℝ) * ((37 - 27 * Real.cos (Real.pi * (n : ℝ)) - 6 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) / 64)))) (n ^ 2 : ℤ)

end

end A166720.P11911334637642132016

namespace A166720

/-- `3*gcd(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64, n²)` -/
def P11911334637642132016.Spec : Prop :=
  ∀ n, (P11911334637642132016.a n : ℤ) = A166720 n

end A166720

/-! ## A166720.P7090949890525034384

`gcd(3*n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64, 12*n)`
-/

namespace A166720.P7090949890525034384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (3 * ((n : ℝ) * ((3 * n + 4 : ℝ) * ((37 - 27 * Real.cos (Real.pi * (n : ℝ)) - 6 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) / 64))))) (12 * n : ℤ)

end

end A166720.P7090949890525034384

namespace A166720

/-- `gcd(3*n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64, 12*n)` -/
def P7090949890525034384.Spec : Prop :=
  ∀ n, (P7090949890525034384.a n : ℤ) = A166720 n

end A166720

/-! ## A166720.P3918375630691619959

`3*A168485(n)`
-/

namespace A166720.P3918375630691619959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A168485 n

end

end A166720.P3918375630691619959

namespace A166720

/-- `3*A168485(n)` -/
def P3918375630691619959.Spec : Prop :=
  ∀ n, P3918375630691619959.a n = A166720 n

end A166720

/-! ## A166720.P5673748230416555007

`gcd(12*n, A142590(n))`
-/

namespace A166720.P5673748230416555007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (12 * n : ℤ) (A142590 n)

end

end A166720.P5673748230416555007

namespace A166720

/-- `gcd(12*n, A142590(n))` -/
def P5673748230416555007.Spec : Prop :=
  ∀ n, (P5673748230416555007.a n : ℤ) = A166720 n

end A166720

/-! ## A166720.P8301891660164540054

`3*gcd(n², A142883(n))`
-/

namespace A166720.P8301891660164540054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.gcd (n ^ 2 : ℤ) (A142883 n)

end

end A166720.P8301891660164540054

namespace A166720

/-- `3*gcd(n², A142883(n))` -/
def P8301891660164540054.Spec : Prop :=
  ∀ n, (P8301891660164540054.a n : ℤ) = A166720 n

end A166720

/-! ## A166720.P8770463307270176310

`gcd(18*∑[∑[n]]², A061037(3*n+2))`
-/

namespace A166720.P8770463307270176310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((18 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A061037 (3 * n + 2))

end

end A166720.P8770463307270176310

namespace A166720

/-- `gcd(18*∑[∑[n]]², A061037(3*n+2))` -/
def P8770463307270176310.Spec : Prop :=
  ∀ n, (P8770463307270176310.a n : ℤ) = A166720 n

end A166720

/-! ## A166720.P16505072255744344111

`A008585(A168485(n))`
-/

namespace A166720.P16505072255744344111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A168485 n).toNat

end

end A166720.P16505072255744344111

namespace A166720

/-- `A008585(A168485(n))` -/
def P16505072255744344111.Spec : Prop :=
  ∀ n, P16505072255744344111.a n = A166720 n

end A166720

/-! ## A166720.P783502489293863867

`gcd(A142590(n), A259364(n))`
-/

namespace A166720.P783502489293863867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142590 n) (A259364 n)

end

end A166720.P783502489293863867

namespace A166720

/-- `gcd(A142590(n), A259364(n))` -/
def P783502489293863867.Spec : Prop :=
  ∀ n, (P783502489293863867.a n : ℤ) = A166720 n

end A166720

/-!
# A166721: Squares for which no smaller square has the same number of divisors.

The programs for A166721, there is no canonical definition to state claims against.
-/

/-! ## A166721.P1881031839425912848

`A354530(n+1)²`
-/

namespace A166721.P1881031839425912848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354530 (n + 1) ^ 2

end

end A166721.P1881031839425912848

/-! ## A166721.P1914690997050265051

`∩[A007416(n+1), A025487(n+1)²]`
-/

namespace A166721.P1914690997050265051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166721.P1914690997050265051

/-! ## A166721.P16172769957292029802

`∩[A007416(n+1), A051466(A329898(n+1))²]`
-/

namespace A166721.P16172769957292029802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166721.P16172769957292029802

/-! ## A166721.P8252746145803872132

`∩[A007416(n+1), A368681(n+1)]`
-/

namespace A166721.P8252746145803872132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166721.P8252746145803872132

/-! ## A166721.P1301973337455690712

`A007416(eq[1, A053212(n+1)%2]+1)`
-/

namespace A166721.P1301973337455690712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053212 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A166721.P1301973337455690712

/-! ## A166721.P13174818680074384811

`A007416(record[(n+1)*A053212(n+2)%2]+1)`
-/

namespace A166721.P13174818680074384811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A053212 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A166721.P13174818680074384811

/-! ## A166721.P16254285680345612903

`∩[A007416(n+1), A373559(n+1)]`
-/

namespace A166721.P16254285680345612903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166721.P16254285680345612903

/-! ## A166721.P14950806964893514066

`∩[A007416(n+1), A055932(n+1)²]`
-/

namespace A166721.P14950806964893514066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166721.P14950806964893514066

/-! ## A166721.P5100094790531032851

`∩[A007416(n+1), n²]`
-/

namespace A166721.P5100094790531032851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A166721.P5100094790531032851

/-! ## A166721.P1191380486597362666

`∩[A221285(n+1), A007416(n+1)]`
-/

namespace A166721.P1191380486597362666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166721.P1191380486597362666

/-!
# A166722: a(n) is the number of divisors of A166721(n).

The programs for A166722, there is no canonical definition to state claims against.
-/

/-! ## A166722.P12540624002996742415

`A000005(A166721(n+1))`
-/

namespace A166722.P12540624002996742415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A166721 (n + 1)).toNat

end

end A166722.P12540624002996742415

/-! ## A166722.P2915403610267084980

`A053212(eq[1, A053212(n+1)%2]+1)`
-/

namespace A166722.P2915403610267084980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053212 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A166722.P2915403610267084980

/-! ## A166722.P6034870469503818058

`A053212(record[(n+1)*A053212(n+2)%2]+1)`
-/

namespace A166722.P6034870469503818058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A053212 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A166722.P6034870469503818058

/-! ## A166722.P15250445877966369902

`filter[A053212(n+1), A000035(#)]`
-/

namespace A166722.P15250445877966369902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A166722.P15250445877966369902

/-! ## A166722.P3462745033234489497

`∏{e}[A354530(n+1), A005408(#)]`
-/

namespace A166722.P3462745033234489497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005408 (Nat.factorization (f1 n).natAbs p)

end

end A166722.P3462745033234489497

/-! ## A166722.P5704589655430039923

`A048691(A354530(n+1))`
-/

namespace A166722.P5704589655430039923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A354530 (n + 1)).toNat

end

end A166722.P5704589655430039923

/-! ## A166722.P1598747247228302571

`A048691(sqrt(A166721(n+1)))`
-/

namespace A166722.P1598747247228302571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (SequenceMachineLib.roundAway (Real.sqrt (A166721 (n + 1) : ℝ))).toNat

end

end A166722.P1598747247228302571

/-! ## A166722.P3961852441197803820

`A048691(root(A166721(n+1), 2))`
-/

namespace A166722.P3961852441197803820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (SequenceMachineLib.roundAway ((A166721 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A166722.P3961852441197803820

/-!
# A166724: a(n) = PrimePi(A166546(n)).

The programs for A166724, the canonical program `A166724.P18330365380709594796` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166724 has offset 1).

The definition of A166724 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166546, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166724.P18330365380709594796

`A000720(A166546(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166724

/-- `A000720(A166546(n+1))` -/
def P18330365380709594796.Spec : Prop :=
  ∀ n, P18330365380709594796.a n = A166724 (n + 1)

theorem P18330365380709594796.correct : P18330365380709594796.Spec := by
  intro n
  simp only [A166724, Nat.add_sub_cancel]

end A166724

/-! ## A166724.P16307869437964452742

`∑[val(p?[A325939(n+1)], 3)]`
-/

namespace A166724.P16307869437964452742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166724.P16307869437964452742

namespace A166724

/-- `∑[val(p?[A325939(n+1)], 3)]` -/
def P16307869437964452742.Spec : Prop :=
  ∀ n, (P16307869437964452742.a n : ℤ) = A166724 (n + 1)

end A166724

/-! ## A166724.P1032049573373814396

`∑[val(p?[A334954(n+1)], 3)]`
-/

namespace A166724.P1032049573373814396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166724.P1032049573373814396

namespace A166724

/-- `∑[val(p?[A334954(n+1)], 3)]` -/
def P1032049573373814396.Spec : Prop :=
  ∀ n, (P1032049573373814396.a n : ℤ) = A166724 (n + 1)

end A166724

/-! ## A166724.P1733111485912369438

`∑[val(p?[A000005(n+1)+1], 3)]`
-/

namespace A166724.P1733111485912369438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166724.P1733111485912369438

namespace A166724

/-- `∑[val(p?[A000005(n+1)+1], 3)]` -/
def P1733111485912369438.Spec : Prop :=
  ∀ n, (P1733111485912369438.a n : ℤ) = A166724 (n + 1)

end A166724

/-! ## A166724.P10446361020633189950

`∑[A064911(A166546(n+1)²)]`
-/

namespace A166724.P10446361020633189950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A166546 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166724.P10446361020633189950

namespace A166724

/-- `∑[A064911(A166546(n+1)²)]` -/
def P10446361020633189950.Spec : Prop :=
  ∀ n, P10446361020633189950.a n = A166724 (n + 1)

end A166724

/-! ## A166724.P3950830075706066339

`∑[A007949(p?[A000005(n+1)+1])]`
-/

namespace A166724.P3950830075706066339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166724.P3950830075706066339

namespace A166724

/-- `∑[A007949(p?[A000005(n+1)+1])]` -/
def P3950830075706066339.Spec : Prop :=
  ∀ n, P3950830075706066339.a n = A166724 (n + 1)

end A166724

/-! ## A166724.P15747031661107878792

`∑[A010054(p?[A000005(n+1)+1])]`
-/

namespace A166724.P15747031661107878792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166724.P15747031661107878792

namespace A166724

/-- `∑[A010054(p?[A000005(n+1)+1])]` -/
def P15747031661107878792.Spec : Prop :=
  ∀ n, P15747031661107878792.a n = A166724 (n + 1)

end A166724

/-! ## A166724.P9249074792075693237

`∑[A014027(p?[A000005(n+1)+1])]`
-/

namespace A166724.P9249074792075693237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014027 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166724.P9249074792075693237

namespace A166724

/-- `∑[A014027(p?[A000005(n+1)+1])]` -/
def P9249074792075693237.Spec : Prop :=
  ∀ n, P9249074792075693237.a n = A166724 (n + 1)

end A166724

/-! ## A166724.P8764571997743312432

`∑[A025456(p?[A000005(n+1)+1])]`
-/

namespace A166724.P8764571997743312432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166724.P8764571997743312432

namespace A166724

/-- `∑[A025456(p?[A000005(n+1)+1])]` -/
def P8764571997743312432.Spec : Prop :=
  ∀ n, P8764571997743312432.a n = A166724 (n + 1)

end A166724

/-! ## A166724.P12148571862551438347

`∑[A051344(p?[A000005(n+1)+1])]`
-/

namespace A166724.P12148571862551438347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166724.P12148571862551438347

namespace A166724

/-- `∑[A051344(p?[A000005(n+1)+1])]` -/
def P12148571862551438347.Spec : Prop :=
  ∀ n, P12148571862551438347.a n = A166724 (n + 1)

end A166724

/-!
# A166725: a(n) = (2*n+1)*25^n.

The programs for A166725, the canonical program `A166725.P17744401957434453472` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166725 has offset 0).

The definition of A166725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*25^n` (program `A166725.P17744401957434453472`, by `A166725.P17744401957434453472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166725.P17744401957434453472

`(2*n+1)*25^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166725

/-- `(2*n+1)*25^n` -/
def P17744401957434453472.Spec : Prop :=
  ∀ n, (P17744401957434453472.a n : ℤ) = A166725 n

theorem P17744401957434453472.correct : P17744401957434453472.Spec := by
  intro n
  simp only [A166725]

end A166725

/-! ## A166725.P6300568965142096715

`A026950(4*n)`
-/

namespace A166725.P6300568965142096715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026950 (4 * n)

end

end A166725.P6300568965142096715

namespace A166725

/-- `A026950(4*n)` -/
def P6300568965142096715.Spec : Prop :=
  ∀ n, P6300568965142096715.a n = A166725 n

end A166725

/-! ## A166725.P7271501791136201768

`A072172(n)/5`
-/

namespace A166725.P7271501791136201768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072172 n : ℚ) / 5

end

end A166725.P7271501791136201768

namespace A166725

/-- `A072172(n)/5` -/
def P7271501791136201768.Spec : Prop :=
  ∀ n, P7271501791136201768.a n = (A166725 n : ℚ)

end A166725

/-! ## A166725.P16506093397403091072

`A053464(Δ[n²])`
-/

namespace A166725.P16506093397403091072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A166725.P16506093397403091072

namespace A166725

/-- `A053464(Δ[n²])` -/
def P16506093397403091072.Spec : Prop :=
  ∀ n, P16506093397403091072.a n = A166725 n

end A166725

/-! ## A166725.P15601023351918320996

`A212699(2*n+1)/4`
-/

namespace A166725.P15601023351918320996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212699 (2 * n + 1) : ℚ) / 4

end

end A166725.P15601023351918320996

namespace A166725

/-- `A212699(2*n+1)/4` -/
def P15601023351918320996.Spec : Prop :=
  ∀ n, P15601023351918320996.a n = (A166725 n : ℚ)

end A166725

/-! ## A166725.P6132770599920502104

`A036291(2*n+1)/5`
-/

namespace A166725.P6132770599920502104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036291 (2 * n + 1) : ℚ) / 5

end

end A166725.P6132770599920502104

namespace A166725

/-- `A036291(2*n+1)/5` -/
def P6132770599920502104.Spec : Prop :=
  ∀ n, P6132770599920502104.a n = (A166725 n : ℚ)

end A166725

/-! ## A166725.P9254705334009638592

`lcm(2*n+1, A053464(2*n+1))`
-/

namespace A166725.P9254705334009638592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A053464 (2 * n + 1))

end

end A166725.P9254705334009638592

namespace A166725

/-- `lcm(2*n+1, A053464(2*n+1))` -/
def P9254705334009638592.Spec : Prop :=
  ∀ n, (P9254705334009638592.a n : ℤ) = A166725 n

end A166725

/-! ## A166725.P16268637840029745003

`A036291(2*n)+A000351(n)²`
-/

namespace A166725.P16268637840029745003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036291 (2 * n) + A000351 n ^ 2

end

end A166725.P16268637840029745003

namespace A166725

/-- `A036291(2*n)+A000351(n)²` -/
def P16268637840029745003.Spec : Prop :=
  ∀ n, P16268637840029745003.a n = A166725 n

end A166725

/-! ## A166725.P4965886287859778608

`A036291(2*n)+A000351(2*n)`
-/

namespace A166725.P4965886287859778608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036291 (2 * n) + A000351 (2 * n)

end

end A166725.P4965886287859778608

namespace A166725

/-- `A036291(2*n)+A000351(2*n)` -/
def P4965886287859778608.Spec : Prop :=
  ∀ n, P4965886287859778608.a n = A166725 n

end A166725

/-! ## A166725.P16579776281767500415

`A169585(n+2)+A053464(2*n+1)`
-/

namespace A166725.P16579776281767500415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (n + 2) + A053464 (2 * n + 1)

end

end A166725.P16579776281767500415

namespace A166725

/-- `A169585(n+2)+A053464(2*n+1)` -/
def P16579776281767500415.Spec : Prop :=
  ∀ n, P16579776281767500415.a n = A166725 n

end A166725

/-!
# A166732: Numbers k such that the largest prime factor of the k-th composite is equal to the sum of all the other prime factors of the k-th composite, with multiplicity.

The programs for A166732, there is no canonical definition to state claims against.
-/

/-! ## A166732.P12712833831209569694

`A026238(A163836(n+1))`
-/

namespace A166732.P12712833831209569694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A163836 (n + 1)).toNat

end

end A166732.P12712833831209569694

/-! ## A166732.P2271739378934986127

`A062298(A163836(n+1)-1)`
-/

namespace A166732.P2271739378934986127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A163836 (n + 1) - 1).toNat

end

end A166732.P2271739378934986127

/-! ## A166732.P18010702712446411858

`A065855(A163836(n+1)+A088157(n))`
-/

namespace A166732.P18010702712446411858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A163836 (n + 1) + A088157 n).toNat

end

end A166732.P18010702712446411858

/-! ## A166732.P978187069372061728

`A065855(A163836(n+1)%A017488(n))`
-/

namespace A166732.P978187069372061728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (Int.tmod (A163836 (n + 1)) (A017488 n)).toNat

end

end A166732.P978187069372061728

/-! ## A166732.P17856032076218607916

`A065855(A163836(n+1))%A081251(n+1)`
-/

namespace A166732.P17856032076218607916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065855 (A163836 (n + 1)).toNat) (A081251 (n + 1))

end

end A166732.P17856032076218607916

/-!
# A166733: Numbers n with the property that the concatenation of the trivial divisors of n (i.e., 1 and n) is a prime.

The programs for A166733, there is no canonical definition to state claims against.
-/

/-! ## A166733.P1827390556369178741

`A032664(n+2)`
-/

namespace A166733.P1827390556369178741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 2)

end

end A166733.P1827390556369178741

/-! ## A166733.P5213255390881052611

`record[A032664(A080513(A004442(n)))]`
-/

namespace A166733.P5213255390881052611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166733.P5213255390881052611

/-! ## A166733.P11625122664435978172

`record[A032664(A080513(A004443(n)))]`
-/

namespace A166733.P11625122664435978172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (A080513 (A004443 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166733.P11625122664435978172

/-! ## A166733.P16370444369309990159

`record[A032664(A008619(A133265(n)))]`
-/

namespace A166733.P16370444369309990159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (A008619 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166733.P16370444369309990159

/-! ## A166733.P7778344482500267393

`record[A032664(A126759(A005408(n)))]`
-/

namespace A166733.P7778344482500267393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (A126759 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166733.P7778344482500267393

/-! ## A166733.P1974680963601584440

`record[A032664(A080513(A008611(n)))]`
-/

namespace A166733.P1974680963601584440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (A080513 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166733.P1974680963601584440

/-! ## A166733.P12314535919679800657

`record[A032664(A080513(A008624(n)))]`
-/

namespace A166733.P12314535919679800657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (A080513 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166733.P12314535919679800657

/-! ## A166733.P9027577789485479883

`lt[A032662(n), atan(n)]+1`
-/

namespace A166733.P9027577789485479883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A166733.P9027577789485479883

/-! ## A166733.P7426252194802556647

`eq[1, A032662(n+1)]+2`
-/

namespace A166733.P7426252194802556647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A166733.P7426252194802556647

/-! ## A166733.P8643775174636390655

`eq[A032662(n), A057427(n)]+1`
-/

namespace A166733.P8643775174636390655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166733.P8643775174636390655

/-! ## A166733.P2676019576007112509

`lt[A032662(n+1), A317203(n+2)]+2`
-/

namespace A166733.P2676019576007112509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317203 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A166733.P2676019576007112509

/-! ## A166733.P4327371593282564561

`A285327(eq[1, A032662(n+1)])`
-/

namespace A166733.P4327371593282564561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166733.P4327371593282564561

/-!
# A166737: Number of primes in (n^2*log(n)..(n+1)^2*log(n+1)] semi-open intervals, n >= 1.

The programs for A166737, the canonical program `A166737.P1119223457734412701` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166737 has offset 1).

The definition of A166737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166737.P1119223457734412701

`Δ[A000720(A235707(n+1)+A000007(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166737

/-- `Δ[A000720(A235707(n+1)+A000007(n))]` -/
def P1119223457734412701.Spec : Prop :=
  ∀ n, P1119223457734412701.a n = A166737 (n + 1)

theorem P1119223457734412701.correct : P1119223457734412701.Spec := by
  intro n
  simp only [A166737, Nat.add_sub_cancel]

end A166737

/-! ## A166737.P13310325068691593900

`Δ[A230980(A235707(n+1))]`
-/

namespace A166737.P13310325068691593900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A235707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166737.P13310325068691593900

namespace A166737

/-- `Δ[A230980(A235707(n+1))]` -/
def P13310325068691593900.Spec : Prop :=
  ∀ n, P13310325068691593900.a n = A166737 (n + 1)

end A166737

/-! ## A166737.P6704060723291177867

`Δ[A230980(floor(A050504((n+1)²)/2))]`
-/

namespace A166737.P6704060723291177867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊(A050504 ((n + 1) ^ 2) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166737.P6704060723291177867

namespace A166737

/-- `Δ[A230980(floor(A050504((n+1)²)/2))]` -/
def P6704060723291177867.Spec : Prop :=
  ∀ n, P6704060723291177867.a n = A166737 (n + 1)

end A166737

/-! ## A166737.P247337030713501376

`Δ[A036234(A235707(n+1)+A000007(n))]`
-/

namespace A166737.P247337030713501376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A235707 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166737.P247337030713501376

namespace A166737

/-- `Δ[A036234(A235707(n+1)+A000007(n))]` -/
def P247337030713501376.Spec : Prop :=
  ∀ n, P247337030713501376.a n = A166737 (n + 1)

theorem P247337030713501376.correct : P247337030713501376.Spec := by
  intro n
  simp only [A166737, Nat.add_sub_cancel, A166737.P247337030713501376.f1, A166737.P247337030713501376.a, A166737.P1119223457734412701.f1, A166737.P1119223457734412701.a, A000007, A000007.P6599383543502402472.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A235707, A235707.P2231086236960811436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166737

/-! ## A166737.P2455800836189578397

`A285677(A034906(n+1)+1)+n`
-/

namespace A166737.P2455800836189578397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285677 (A034906 (n + 1) + 1).toNat + (n : ℤ)

end

end A166737.P2455800836189578397

namespace A166737

/-- `A285677(A034906(n+1)+1)+n` -/
def P2455800836189578397.Spec : Prop :=
  ∀ n, P2455800836189578397.a n = A166737 (n + 1)

end A166737

/-!
# A166741: E.g.f.: exp(2*arcsin(x)).

The programs for A166741, the canonical program `A166741.P15573610756356515349` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166741 has offset 0).

The definition of A166741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166741.P15573610756356515349

`(n²-4*n+8)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166741

/-- `(n²-4*n+8)*a(n-2)` -/
def P15573610756356515349.Spec : Prop :=
  ∀ n, P15573610756356515349.a n = A166741 n

theorem P15573610756356515349.correct : P15573610756356515349.Spec := by
  intro n
  simp only [A166741]

end A166741

/-! ## A166741.P3680696130668628413

`a(n-2)*A087475(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A166741.P3680696130668628413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A087475 (n - 2)

end

end A166741.P3680696130668628413

namespace A166741

/-- `a(n-2)*A087475(n-2)` -/
def P3680696130668628413.Spec : Prop :=
  ∀ n, P3680696130668628413.a n = A166741 n

end A166741

/-! ## A166741.P2680836859187349634

`A109497(3*A000254(n))`
-/

namespace A166741.P2680836859187349634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (3 * A000254 n).toNat

end

end A166741.P2680836859187349634

namespace A166741

/-- `A109497(3*A000254(n))` -/
def P2680836859187349634.Spec : Prop :=
  ∀ n, P2680836859187349634.a n = A166741 n

end A166741

/-!
# A166743: a(n) = (2^p - p^2 - 1)/6 where p = prime(n).

The programs for A166743, the canonical program `A166743.P12621067664972699570` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166743 has offset 3).

The definition of A166743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166743.P12621067664972699570

`(A034785(n+3)-A066872(n+3))/6`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166743

/-- `(A034785(n+3)-A066872(n+3))/6` -/
def P12621067664972699570.Spec : Prop :=
  ∀ n, P12621067664972699570.a n = (A166743 (n + 3) : ℚ)

end A166743

/-! ## A166743.P15543421523931873065

`floor(A098105(n+3)/6)`
-/

namespace A166743.P15543421523931873065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098105 (n + 3) : ℚ) / 6⌋

end

end A166743.P15543421523931873065

namespace A166743

/-- `floor(A098105(n+3)/6)` -/
def P15543421523931873065.Spec : Prop :=
  ∀ n, P15543421523931873065.a n = A166743 (n + 3)

end A166743

/-! ## A166743.P14523876734436034224

`record[round(A098105(∑{e}[n+1, #]+3)/6)]`
-/

namespace A166743.P14523876734436034224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A098105 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 3) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166743.P14523876734436034224

namespace A166743

/-- `record[round(A098105(∑{e}[n+1, #]+3)/6)]` -/
def P14523876734436034224.Spec : Prop :=
  ∀ n, P14523876734436034224.a n = A166743 (n + 3)

end A166743

/-!
# A166744: Unlucky primes: numbers which are members of both A000040 (primes) and A050505 (unlucky).

The programs for A166744, there is no canonical definition to state claims against.
-/

/-! ## A166744.P13221758438549714687

`p?[A145649(n+2)+2+n]`
-/

namespace A166744.P13221758438549714687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 2) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166744.P13221758438549714687

/-! ## A166744.P3144164476000851126

`record[A006530(A145649(n+1)+1+n)]`
-/

namespace A166744.P3144164476000851126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A145649 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166744.P3144164476000851126

/-! ## A166744.P17718847542485662327

`record[A020639(A145649(n+1)+n+1)]`
-/

namespace A166744.P17718847542485662327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A145649 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166744.P17718847542485662327

/-! ## A166744.P16695092240047994505

`eq[sqrt(A145649(n+1)+1), A001222(n+1)]+1`
-/

namespace A166744.P16695092240047994505
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145649 (n + 1) + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A166744.P16695092240047994505

/-! ## A166744.P3212633288868537143

`p?[A050505(n+1)]`
-/

namespace A166744.P3212633288868537143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166744.P3212633288868537143

/-! ## A166744.P6800335750402955776

`p?[comp[A000959(n+1)]]`
-/

namespace A166744.P6800335750402955776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166744.P6800335750402955776

/-! ## A166744.P5875931420546996161

`record[A006530(A050505(n+2))]`
-/

namespace A166744.P5875931420546996161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A050505 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166744.P5875931420546996161

/-! ## A166744.P8147003166501365769

`filter[A050505(n+1), A010051(#)]`
-/

namespace A166744.P8147003166501365769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A166744.P8147003166501365769

/-! ## A166744.P7967151953059987761

`∩[A000040(n+1), A050505(n+1)]`
-/

namespace A166744.P7967151953059987761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166744.P7967151953059987761

/-! ## A166744.P18004791201611064232

`∩[A008578(n+1), A050505(n+1)]`
-/

namespace A166744.P18004791201611064232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166744.P18004791201611064232

/-! ## A166744.P13901359082101702834

`∩[A045344(n+1), A050505(n+1)]`
-/

namespace A166744.P13901359082101702834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166744.P13901359082101702834

/-! ## A166744.P4791152773755392785

`∩[A050505(n+1), A138837(n+1)]`
-/

namespace A166744.P4791152773755392785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166744.P4791152773755392785

/-! ## A166744.P16586211521952191814

`∩[A050505(n+1), A158611(n+1)]`
-/

namespace A166744.P16586211521952191814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166744.P16586211521952191814

/-! ## A166744.P4274568502147906019

`∩[A050505(n+1), A182986(n+1)]`
-/

namespace A166744.P4274568502147906019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166744.P4274568502147906019

/-! ## A166744.P13599854015496345885

`∩[A050505(n+1), A372059(n+1)]`
-/

namespace A166744.P13599854015496345885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166744.P13599854015496345885

/-! ## A166744.P16977187984683753181

`p?[comp[A031157(n+1)]]`
-/

namespace A166744.P16977187984683753181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166744.P16977187984683753181

/-! ## A166744.P2339981177575641839

`p?[lt[1, A260429(n+1)]+1]`
-/

namespace A166744.P2339981177575641839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166744.P2339981177575641839

/-! ## A166744.P16531610885290820163

`p?[A109497(a(n-1))+n+1]` with `a(0)=2`
-/

namespace A166744.P16531610885290820163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A109497 (f1 (n - 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166744.P16531610885290820163

/-! ## A166744.P6643179285542588911

`filter[A050505(n+1), A080339(#)]`
-/

namespace A166744.P6643179285542588911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A166744.P6643179285542588911

/-! ## A166744.P9959420082994825503

`record[A014963(A145649(n+1)+1+n)]`
-/

namespace A166744.P9959420082994825503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A145649 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166744.P9959420082994825503

/-!
# A166745: a(n) is the concatenation, in ascending order, of the set of digits 1,2,4,8 whose sum equals the n-th prime using a minimal number of digits.

The programs for A166745, there is no canonical definition to state claims against.
-/

/-! ## A166745.P7570584601141867841

`A122204(A132105(n))+A033047(n+1)`
-/

namespace A166745.P7570584601141867841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (A132105 n).toNat + A033047 (n + 1)

end

end A166745.P7570584601141867841

/-!
# A166746: Count of propositional theorems up to 10^n in Richard C. Schroeppel's Goedelization of A101273.

The programs for A166746, there is no canonical definition to state claims against.
-/

/-! ## A166746.P2379983375802312432

`A278214(A149929(n))`
-/

namespace A166746.P2379983375802312432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278214 (A149929 n).toNat

end

end A166746.P2379983375802312432

/-! ## A166746.P1371195247504621475

`A126206(A162297(n)-(n-1))`
-/

namespace A166746.P1371195247504621475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126206 (A162297 n - ((n : ℤ) - 1)).toNat

end

end A166746.P1371195247504621475

/-!
# A166748: E.g.f.: exp(6*arcsin(x)).

The programs for A166748, there is no canonical definition to state claims against.
-/

/-! ## A166748.P10451468978082740372

`A008458(A129329(n)+A129327(n))`
-/

namespace A166748.P10451468978082740372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A129329 n + A129327 n).toNat

end

end A166748.P10451468978082740372

/-!
# A166750: a(n) = (A001147(n))^3 = 2^(3*n)*Gamma(n+1/2)^3/Pi^(3/2).

The programs for A166750, the canonical program `A166750.P4578388664558341782` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166750 has offset 0).

The definition of A166750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166750.P14415514945416555790

`(2*n-1)^3*a(n-1)` with `a(0)=1`
-/

namespace A166750.P14415514945416555790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1) ^ 3 * a (n - 1)

end

end A166750.P14415514945416555790

namespace A166750

/-- `(2*n-1)^3*a(n-1)` -/
def P14415514945416555790.Spec : Prop :=
  ∀ n, P14415514945416555790.a n = A166750 n

end A166750

/-! ## A166750.P4578388664558341782

`A001147(n)^3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166750

/-- `A001147(n)^3` -/
def P4578388664558341782.Spec : Prop :=
  ∀ n, P4578388664558341782.a n = A166750 n

theorem P4578388664558341782.correct : P4578388664558341782.Spec := by
  intro n
  simp only [A166750]

end A166750

/-! ## A166750.P1513800573404771663

`∏[abs((1-2*n)^3)]`
-/

namespace A166750.P1513800573404771663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (2 * n : ℤ)) ^ 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166750.P1513800573404771663

namespace A166750

/-- `∏[abs((1-2*n)^3)]` -/
def P1513800573404771663.Spec : Prop :=
  ∀ n, P1513800573404771663.a n = A166750 n

end A166750

/-! ## A166750.P4148750078167734227

`abs(∏[or(1, -(2*n))])^3`
-/

namespace A166750.P4148750078167734227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| ^ 3

end

end A166750.P4148750078167734227

namespace A166750

/-- `abs(∏[or(1, -(2*n))])^3` -/
def P4148750078167734227.Spec : Prop :=
  ∀ n, P4148750078167734227.a n = A166750 n

end A166750

/-! ## A166750.P6884161919680975023

`abs(∏[xor(1, -(2*n))])^3`
-/

namespace A166750.P6884161919680975023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| ^ 3

end

end A166750.P6884161919680975023

namespace A166750

/-- `abs(∏[xor(1, -(2*n))])^3` -/
def P6884161919680975023.Spec : Prop :=
  ∀ n, P6884161919680975023.a n = A166750 n

end A166750

/-!
# A166751: Even positive integers in which, when written in binary, each run of 0's is of exactly the same length as the run of 1's immediately before it.

The programs for A166751, there is no canonical definition to state claims against.
-/

/-! ## A166751.P14093945433387370438

`A014486(record[A127379(n+1)])`
-/

namespace A166751.P14093945433387370438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166751.P14093945433387370438

/-! ## A166751.P572679682959072933

`A014486(record[A127381(n+1)])`
-/

namespace A166751.P572679682959072933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166751.P572679682959072933

/-! ## A166751.P8435733948478428635

`A014486(record[A127388(n+1)])`
-/

namespace A166751.P8435733948478428635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166751.P8435733948478428635

/-! ## A166751.P1335413380877163665

`record[A166404(A014486(n+1))]`
-/

namespace A166751.P1335413380877163665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (A014486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166751.P1335413380877163665

/-! ## A166751.P3796657775915952161

`eq[n, A274922(A166404(n))]`
-/

namespace A166751.P3796657775915952161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (A166404 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166751.P3796657775915952161

/-! ## A166751.P7513837524020403359

`eq[A065190(n+1), A166404(n)]`
-/

namespace A166751.P7513837524020403359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166751.P7513837524020403359

/-! ## A166751.P17096624006926253301

`eq[A131055(n+1), A166404(n)]`
-/

namespace A166751.P17096624006926253301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166751.P17096624006926253301

/-! ## A166751.P6895299659218434068

`eq[n, A166404(A333470(n+1))]`
-/

namespace A166751.P6895299659218434068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (A333470 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166751.P6895299659218434068

/-!
# A166752: Interleave A007583 and A000012.

The programs for A166752, the canonical program `A166752.P14982561236381249166` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166752 has offset 0).

The definition of A166752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166752.P14982561236381249166

`(4*4^floor(n/2)-1)/3-2*floor(2^n/3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166752

/-- `(4*4^floor(n/2)-1)/3-2*floor(2^n/3)` -/
def P14982561236381249166.Spec : Prop :=
  ∀ n, P14982561236381249166.a n = (A166752 n : ℚ)

end A166752

/-! ## A166752.P6284402033308402140

`ogf((1+x-2x^2-4x^3)/(1-5x^2+4x^4))`
-/

namespace A166752.P6284402033308402140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -4] [1, 0, -5, 0, 4] n

end

end A166752.P6284402033308402140

namespace A166752

/-- `ogf((1+x-2x^2-4x^3)/(1-5x^2+4x^4))` -/
def P6284402033308402140.Spec : Prop :=
  ∀ n, P6284402033308402140.a n = A166752 n

end A166752

/-! ## A166752.P9080459734279161848

`or(1, A112691(n+1))`
-/

namespace A166752.P9080459734279161848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A112691 (n + 1))

end

end A166752.P9080459734279161848

namespace A166752

/-- `or(1, A112691(n+1))` -/
def P9080459734279161848.Spec : Prop :=
  ∀ n, P9080459734279161848.a n = A166752 n

end A166752

/-! ## A166752.P17933374187782105771

`A077925(n%or(1, n))`
-/

namespace A166752.P17933374187782105771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (n % Nat.lor 1 n)

end

end A166752.P17933374187782105771

namespace A166752

/-- `A077925(n%or(1, n))` -/
def P17933374187782105771.Spec : Prop :=
  ∀ n, P17933374187782105771.a n = A166752 n

end A166752

/-! ## A166752.P4335601155364858684

`A001045(C(or(1, n), n))`
-/

namespace A166752.P4335601155364858684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Nat.choose (Nat.lor 1 n) n)

end

end A166752.P4335601155364858684

namespace A166752

/-- `A001045(C(or(1, n), n))` -/
def P4335601155364858684.Spec : Prop :=
  ∀ n, P4335601155364858684.a n = A166752 n

end A166752

/-! ## A166752.P17647031629710059308

`A001045(A141310(n))`
-/

namespace A166752.P17647031629710059308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A141310 n).toNat

end

end A166752.P17647031629710059308

namespace A166752

/-- `A001045(A141310(n))` -/
def P17647031629710059308.Spec : Prop :=
  ∀ n, P17647031629710059308.a n = A166752 n

end A166752

/-! ## A166752.P5278443460792821194

`A007583(A142150(n))`
-/

namespace A166752.P5278443460792821194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A142150 n).toNat

end

end A166752.P5278443460792821194

namespace A166752

/-- `A007583(A142150(n))` -/
def P5278443460792821194.Spec : Prop :=
  ∀ n, P5278443460792821194.a n = A166752 n

end A166752

/-! ## A166752.P12263950480326657678

`A077925(A237420(n))`
-/

namespace A166752.P12263950480326657678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (A237420 n).toNat

end

end A166752.P12263950480326657678

namespace A166752

/-- `A077925(A237420(n))` -/
def P12263950480326657678.Spec : Prop :=
  ∀ n, P12263950480326657678.a n = A166752 n

end A166752

/-! ## A166752.P11345782558842326465

`A077980(A265723(n))`
-/

namespace A166752.P11345782558842326465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 (A265723 n).toNat

end

end A166752.P11345782558842326465

namespace A166752

/-- `A077980(A265723(n))` -/
def P11345782558842326465.Spec : Prop :=
  ∀ n, P11345782558842326465.a n = A166752 n

end A166752

/-! ## A166752.P11158522196968813453

`A077953(A266222(n))`
-/

namespace A166752.P11158522196968813453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (A266222 n).toNat

end

end A166752.P11158522196968813453

namespace A166752

/-- `A077953(A266222(n))` -/
def P11158522196968813453.Spec : Prop :=
  ∀ n, P11158522196968813453.a n = A166752 n

end A166752

/-! ## A166752.P3110508265364698417

`A077953(A266439(n))`
-/

namespace A166752.P3110508265364698417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (A266439 n).toNat

end

end A166752.P3110508265364698417

namespace A166752

/-- `A077953(A266439(n))` -/
def P3110508265364698417.Spec : Prop :=
  ∀ n, P3110508265364698417.a n = A166752 n

end A166752

/-! ## A166752.P9299820893112523441

`A112447(A267354(n))`
-/

namespace A166752.P9299820893112523441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (A267354 n).toNat

end

end A166752.P9299820893112523441

namespace A166752

/-- `A112447(A267354(n))` -/
def P9299820893112523441.Spec : Prop :=
  ∀ n, P9299820893112523441.a n = A166752 n

end A166752

/-! ## A166752.P18191617256744891257

`A135318(A266073(n))`
-/

namespace A166752.P18191617256744891257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A266073 n).toNat

end

end A166752.P18191617256744891257

namespace A166752

/-- `A135318(A266073(n))` -/
def P18191617256744891257.Spec : Prop :=
  ∀ n, P18191617256744891257.a n = A166752 n

end A166752

/-! ## A166752.P13639977100491232483

`A001045(A086112(n+1))`
-/

namespace A166752.P13639977100491232483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A086112 (n + 1)).toNat

end

end A166752.P13639977100491232483

namespace A166752

/-- `A001045(A086112(n+1))` -/
def P13639977100491232483.Spec : Prop :=
  ∀ n, P13639977100491232483.a n = A166752 n

end A166752

/-! ## A166752.P2762019698928614215

`A001045(A093178(n+1))`
-/

namespace A166752.P2762019698928614215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A093178 (n + 1)).toNat

end

end A166752.P2762019698928614215

namespace A166752

/-- `A001045(A093178(n+1))` -/
def P2762019698928614215.Spec : Prop :=
  ∀ n, P2762019698928614215.a n = A166752 n

end A166752

/-! ## A166752.P2222587472274943325

`A077886(A019426(n+1))`
-/

namespace A166752.P2222587472274943325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A019426 (n + 1)).toNat

end

end A166752.P2222587472274943325

namespace A166752

/-- `A077886(A019426(n+1))` -/
def P2222587472274943325.Spec : Prop :=
  ∀ n, P2222587472274943325.a n = A166752 n

end A166752

/-! ## A166752.P4962366575341882063

`A077953(A019425(n+1))`
-/

namespace A166752.P4962366575341882063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (A019425 (n + 1)).toNat

end

end A166752.P4962366575341882063

namespace A166752

/-- `A077953(A019425(n+1))` -/
def P4962366575341882063.Spec : Prop :=
  ∀ n, P4962366575341882063.a n = A166752 n

end A166752

/-! ## A166752.P18186554026398247048

`A133730(A014601(n+1))`
-/

namespace A166752.P18186554026398247048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (A014601 (n + 1)).toNat

end

end A166752.P18186554026398247048

namespace A166752

/-- `A133730(A014601(n+1))` -/
def P18186554026398247048.Spec : Prop :=
  ∀ n, P18186554026398247048.a n = A166752 n

end A166752

/-! ## A166752.P10734883105521249875

`A005578(A193356(n+1))`
-/

namespace A166752.P10734883105521249875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A193356 (n + 1)).toNat

end

end A166752.P10734883105521249875

namespace A166752

/-- `A005578(A193356(n+1))` -/
def P10734883105521249875.Spec : Prop :=
  ∀ n, P10734883105521249875.a n = A166752 n

end A166752

/-! ## A166752.P9430075115780850398

`A131588(A124625(n+1))`
-/

namespace A166752.P9430075115780850398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131588 (A124625 (n + 1)).toNat

end

end A166752.P9430075115780850398

namespace A166752

/-- `A131588(A124625(n+1))` -/
def P9430075115780850398.Spec : Prop :=
  ∀ n, P9430075115780850398.a n = A166752 n

end A166752

/-!
# A166753: Partial sums of A166752.

The programs for A166753, the canonical program `A166753.P17005753817930459031` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166753 has offset 0).

The definition of A166753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166753.P17005753817930459031

`a(n-1)+5*a(n-2)-5*a(n-3)-4*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6, a(4)=17`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166753

/-- `a(n-1)+5*a(n-2)-5*a(n-3)-4*a(n-4)+4*a(n-5)` -/
def P17005753817930459031.Spec : Prop :=
  ∀ n, P17005753817930459031.a n = A166753 n

theorem P17005753817930459031.correct : P17005753817930459031.Spec := by
  intro n
  simp only [A166753]

end A166753

/-! ## A166753.P5613667979448824988

`4/3*A061547(n+2)-1/3*A166754(n)`
-/

namespace A166753.P5613667979448824988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A061547 (n + 2) : ℚ) - (1 : ℚ) / 3 * (A166754 n : ℚ)

end

end A166753.P5613667979448824988

namespace A166753

/-- `4/3*A061547(n+2)-1/3*A166754(n)` -/
def P5613667979448824988.Spec : Prop :=
  ∀ n, P5613667979448824988.a n = (A166753 n : ℚ)

theorem P5613667979448824988.correct : P5613667979448824988.Spec := by
  intro n
  simp only [A166753, Nat.add_sub_cancel, A166753.P5613667979448824988.a, A166753.P17005753817930459031.a, A061547, A061547.P17363509105597455886.a, A166754, A166754.P9218110132002024369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166753

/-! ## A166753.P868463875587254891

`∑[4*a(n-2)-a(n-1)%4]` with `a(0)=1, a(1)=1`
-/

namespace A166753.P868463875587254891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 * f1 (n - 2) - Int.tmod (f1 (n - 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P868463875587254891

namespace A166753

/-- `∑[4*a(n-2)-a(n-1)%4]` -/
def P868463875587254891.Spec : Prop :=
  ∀ n, P868463875587254891.a n = A166753 n

end A166753

/-! ## A166753.P13662382737018084929

`∑[4*a(n-2)*a(n-3)-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A166753.P13662382737018084929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  4 * f1 (n - 2) * f1 (n - 3) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P13662382737018084929

namespace A166753

/-- `∑[4*a(n-2)*a(n-3)-a(n-1)]` -/
def P13662382737018084929.Spec : Prop :=
  ∀ n, P13662382737018084929.a n = A166753 n

end A166753

/-! ## A166753.P173476837170031910

`∑[A166752(n)]`
-/

namespace A166753.P173476837170031910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P173476837170031910

namespace A166753

/-- `∑[A166752(n)]` -/
def P173476837170031910.Spec : Prop :=
  ∀ n, P173476837170031910.a n = A166753 n

end A166753

/-! ## A166753.P1907053942514892017

`∑[or(1, A112691(n+1))]`
-/

namespace A166753.P1907053942514892017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A112691 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P1907053942514892017

namespace A166753

/-- `∑[or(1, A112691(n+1))]` -/
def P1907053942514892017.Spec : Prop :=
  ∀ n, P1907053942514892017.a n = A166753 n

end A166753

/-! ## A166753.P15481593762249754286

`∑[A001045(n*char[2*n]+1)]`
-/

namespace A166753.P15481593762249754286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n * (if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P15481593762249754286

namespace A166753

/-- `∑[A001045(n*char[2*n]+1)]` -/
def P15481593762249754286.Spec : Prop :=
  ∀ n, P15481593762249754286.a n = A166753 n

end A166753

/-! ## A166753.P8879430097886540413

`∑[A077925(A237420(n))]`
-/

namespace A166753.P8879430097886540413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P8879430097886540413

namespace A166753

/-- `∑[A077925(A237420(n))]` -/
def P8879430097886540413.Spec : Prop :=
  ∀ n, P8879430097886540413.a n = A166753 n

end A166753

/-! ## A166753.P6158005436290904395

`∑[A077980(A265723(n))]`
-/

namespace A166753.P6158005436290904395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 (A265723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P6158005436290904395

namespace A166753

/-- `∑[A077980(A265723(n))]` -/
def P6158005436290904395.Spec : Prop :=
  ∀ n, P6158005436290904395.a n = A166753 n

end A166753

/-! ## A166753.P6396802361482436740

`∑[A077953(A266222(n))]`
-/

namespace A166753.P6396802361482436740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (A266222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P6396802361482436740

namespace A166753

/-- `∑[A077953(A266222(n))]` -/
def P6396802361482436740.Spec : Prop :=
  ∀ n, P6396802361482436740.a n = A166753 n

end A166753

/-! ## A166753.P16948310392690311901

`∑[A077953(A266439(n))]`
-/

namespace A166753.P16948310392690311901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (A266439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P16948310392690311901

namespace A166753

/-- `∑[A077953(A266439(n))]` -/
def P16948310392690311901.Spec : Prop :=
  ∀ n, P16948310392690311901.a n = A166753 n

end A166753

/-! ## A166753.P8565325423790171332

`∑[A112447(A267354(n))]`
-/

namespace A166753.P8565325423790171332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (A267354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P8565325423790171332

namespace A166753

/-- `∑[A112447(A267354(n))]` -/
def P8565325423790171332.Spec : Prop :=
  ∀ n, P8565325423790171332.a n = A166753 n

end A166753

/-! ## A166753.P2234980079781006614

`∑[A135318(A266073(n))]`
-/

namespace A166753.P2234980079781006614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A266073 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P2234980079781006614

namespace A166753

/-- `∑[A135318(A266073(n))]` -/
def P2234980079781006614.Spec : Prop :=
  ∀ n, P2234980079781006614.a n = A166753 n

end A166753

/-! ## A166753.P14785207664278788604

`∑[A077886(A019426(n+1))]`
-/

namespace A166753.P14785207664278788604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A019426 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P14785207664278788604

namespace A166753

/-- `∑[A077886(A019426(n+1))]` -/
def P14785207664278788604.Spec : Prop :=
  ∀ n, P14785207664278788604.a n = A166753 n

end A166753

/-! ## A166753.P9968338729005675412

`∑[A077953(A019425(n+1))]`
-/

namespace A166753.P9968338729005675412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (A019425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P9968338729005675412

namespace A166753

/-- `∑[A077953(A019425(n+1))]` -/
def P9968338729005675412.Spec : Prop :=
  ∀ n, P9968338729005675412.a n = A166753 n

end A166753

/-! ## A166753.P8470802940129371859

`∑[A005578(A193356(n+1))]`
-/

namespace A166753.P8470802940129371859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A193356 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P8470802940129371859

namespace A166753

/-- `∑[A005578(A193356(n+1))]` -/
def P8470802940129371859.Spec : Prop :=
  ∀ n, P8470802940129371859.a n = A166753 n

end A166753

/-! ## A166753.P1789666682492378718

`∑[A077953(A265722(n+1))]`
-/

namespace A166753.P1789666682492378718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (A265722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P1789666682492378718

namespace A166753

/-- `∑[A077953(A265722(n+1))]` -/
def P1789666682492378718.Spec : Prop :=
  ∀ n, P1789666682492378718.a n = A166753 n

end A166753

/-! ## A166753.P15798398585937296589

`∑[A153643(n)-A084247(n)]`
-/

namespace A166753.P15798398585937296589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n - A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P15798398585937296589

namespace A166753

/-- `∑[A153643(n)-A084247(n)]` -/
def P15798398585937296589.Spec : Prop :=
  ∀ n, P15798398585937296589.a n = A166753 n

end A166753

/-! ## A166753.P13859892437096575353

`A103196(2*A004526(n))+n`
-/

namespace A166753.P13859892437096575353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 (2 * A004526 n).toNat + (n : ℤ)

end

end A166753.P13859892437096575353

namespace A166753

/-- `A103196(2*A004526(n))+n` -/
def P13859892437096575353.Spec : Prop :=
  ∀ n, P13859892437096575353.a n = A166753 n

end A166753

/-! ## A166753.P10505442361788358183

`∑[A001045(n)+2-A084247(n)]`
-/

namespace A166753.P10505442361788358183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (2 - A084247 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166753.P10505442361788358183

namespace A166753

/-- `∑[A001045(n)+2-A084247(n)]` -/
def P10505442361788358183.Spec : Prop :=
  ∀ n, P10505442361788358183.a n = A166753 n

end A166753

/-!
# A166754: a(n) = 4*A061547(n+2) - 3*A166753(n).

The programs for A166754, the canonical program `A166754.P9218110132002024369` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166754 has offset 0).

The definition of A166754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166754.P18430787801012433963

`(2^(n+3)+(-1)^n-(4*n+7))/2`
-/

namespace A166754.P18430787801012433963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 3) : ℤ) + (-1) ^ n - (4 * n + 7 : ℤ) : ℚ) / 2

end

end A166754.P18430787801012433963

namespace A166754

/-- `(2^(n+3)+(-1)^n-(4*n+7))/2` -/
def P18430787801012433963.Spec : Prop :=
  ∀ n, P18430787801012433963.a n = (A166754 n : ℚ)

end A166754

/-! ## A166754.P15145502458844685804

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=22`
-/

namespace A166754.P15145502458844685804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9, 22] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + 2 * a (n - 4)

end

end A166754.P15145502458844685804

namespace A166754

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P15145502458844685804.Spec : Prop :=
  ∀ n, P15145502458844685804.a n = A166754 n

end A166754

/-! ## A166754.P9218110132002024369

`4*A061547(n+2)-3*A166753(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166754

/-- `4*A061547(n+2)-3*A166753(n)` -/
def P9218110132002024369.Spec : Prop :=
  ∀ n, P9218110132002024369.a n = A166754 n

theorem P9218110132002024369.correct : P9218110132002024369.Spec := by
  intro n
  simp only [A166754]

end A166754

/-! ## A166754.P17443206922236417019

`ogf((1-x+4x^2)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A166754.P17443206922236417019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 4] [1, -3, 1, 3, -2] n

end

end A166754.P17443206922236417019

namespace A166754

/-- `ogf((1-x+4x^2)/(1-3x+x^2+3x^3-2x^4))` -/
def P17443206922236417019.Spec : Prop :=
  ∀ n, P17443206922236417019.a n = A166754 n

end A166754

/-! ## A166754.P5260965355946299202

`∑[∑[2^n]-2*and(1, n)]`
-/

namespace A166754.P5260965355946299202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166754.P5260965355946299202

namespace A166754

/-- `∑[∑[2^n]-2*and(1, n)]` -/
def P5260965355946299202.Spec : Prop :=
  ∀ n, P5260965355946299202.a n = A166754 n

end A166754

/-! ## A166754.P2000112966917623984

`2^(n+2)-record[or(2, n+1)]`
-/

namespace A166754.P2000112966917623984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A166754.P2000112966917623984

namespace A166754

/-- `2^(n+2)-record[or(2, n+1)]` -/
def P2000112966917623984.Spec : Prop :=
  ∀ n, P2000112966917623984.a n = A166754 n

end A166754

/-! ## A166754.P12602076857072498987

`2^(n+2)-record[xor(2, n+1)]`
-/

namespace A166754.P12602076857072498987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A166754.P12602076857072498987

namespace A166754

/-- `2^(n+2)-record[xor(2, n+1)]` -/
def P12602076857072498987.Spec : Prop :=
  ∀ n, P12602076857072498987.a n = A166754 n

end A166754

/-! ## A166754.P15815302726769087548

`∑[2^(n+1)]-∑[4-a(n-1)]` with `a(0)=1`
-/

namespace A166754.P15815302726769087548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  4 - f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A166754.P15815302726769087548

namespace A166754

/-- `∑[2^(n+1)]-∑[4-a(n-1)]` -/
def P15815302726769087548.Spec : Prop :=
  ∀ n, P15815302726769087548.a n = A166754 n

end A166754

/-! ## A166754.P4876046328211210966

`∑[a(n-1)+2*(a(n-2)+2)]` with `a(0)=1, a(1)=1`
-/

namespace A166754.P4876046328211210966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2 * (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166754.P4876046328211210966

namespace A166754

/-- `∑[a(n-1)+2*(a(n-2)+2)]` -/
def P4876046328211210966.Spec : Prop :=
  ∀ n, (P4876046328211210966.a n : ℤ) = A166754 n

end A166754

/-! ## A166754.P17615242232681859907

`∑[a(n-1)+a(n-2)+a(n-2)+4]` with `a(0)=1, a(1)=1`
-/

namespace A166754.P17615242232681859907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (f1 (n - 2) + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166754.P17615242232681859907

namespace A166754

/-- `∑[a(n-1)+a(n-2)+a(n-2)+4]` -/
def P17615242232681859907.Spec : Prop :=
  ∀ n, (P17615242232681859907.a n : ℤ) = A166754 n

end A166754

/-! ## A166754.P4850507046794150556

`∑[A284353(n)]`
-/

namespace A166754.P4850507046794150556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166754.P4850507046794150556

namespace A166754

/-- `∑[A284353(n)]` -/
def P4850507046794150556.Spec : Prop :=
  ∀ n, P4850507046794150556.a n = A166754 n

end A166754

/-! ## A166754.P5798825343641869073

`∑[A087288(n)-3]`
-/

namespace A166754.P5798825343641869073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087288 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166754.P5798825343641869073

namespace A166754

/-- `∑[A087288(n)-3]` -/
def P5798825343641869073.Spec : Prop :=
  ∀ n, P5798825343641869073.a n = A166754 n

end A166754

/-! ## A166754.P5345309658827970829

`∑[A062510(n+1)-2]`
-/

namespace A166754.P5345309658827970829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166754.P5345309658827970829

namespace A166754

/-- `∑[A062510(n+1)-2]` -/
def P5345309658827970829.Spec : Prop :=
  ∀ n, P5345309658827970829.a n = A166754 n

end A166754

/-! ## A166754.P3634575524478142041

`∑[A095121(n)]-and(1, n)`
-/

namespace A166754.P3634575524478142041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 n : ℤ)

end

end A166754.P3634575524478142041

namespace A166754

/-- `∑[A095121(n)]-and(1, n)` -/
def P3634575524478142041.Spec : Prop :=
  ∀ n, P3634575524478142041.a n = A166754 n

end A166754

/-! ## A166754.P7278638913431649943

`A084173(n+1)-(n+2)`
-/

namespace A166754.P7278638913431649943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 (n + 1) - (n + 2 : ℤ)

end

end A166754.P7278638913431649943

namespace A166754

/-- `A084173(n+1)-(n+2)` -/
def P7278638913431649943.Spec : Prop :=
  ∀ n, P7278638913431649943.a n = A166754 n

end A166754

/-! ## A166754.P15287473267613059100

`record[abs(A009116(n+1))-n]`
-/

namespace A166754.P15287473267613059100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009116 (n + 1)| - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166754.P15287473267613059100

namespace A166754

/-- `record[abs(A009116(n+1))-n]` -/
def P15287473267613059100.Spec : Prop :=
  ∀ n, P15287473267613059100.a n = A166754 n

end A166754

/-! ## A166754.P313218587141635871

`3*A257198(n+1)+n+1`
-/

namespace A166754.P313218587141635871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A257198 (n + 1) + (n + 1 : ℤ)

end

end A166754.P313218587141635871

namespace A166754

/-- `3*A257198(n+1)+n+1` -/
def P313218587141635871.Spec : Prop :=
  ∀ n, P313218587141635871.a n = A166754 n

end A166754

/-! ## A166754.P13622594137297376408

`A356185(A042964(n+2))`
-/

namespace A166754.P13622594137297376408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356185 (A042964 (n + 2)).toNat

end

end A166754.P13622594137297376408

namespace A166754

/-- `A356185(A042964(n+2))` -/
def P13622594137297376408.Spec : Prop :=
  ∀ n, P13622594137297376408.a n = A166754 n

end A166754

/-! ## A166754.P3132604980647777472

`A051049(n)+A050488(n)`
-/

namespace A166754.P3132604980647777472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n + A050488 n

end

end A166754.P3132604980647777472

namespace A166754

/-- `A051049(n)+A050488(n)` -/
def P3132604980647777472.Spec : Prop :=
  ∀ n, P3132604980647777472.a n = A166754 n

end A166754

/-!
# A166755: Number of n X n 1..2 arrays containing at least one of each value, and all equal values connected.

The programs for A166755, there is no canonical definition to state claims against.
-/

/-! ## A166755.P1782229990806040840

`2*A068416(n+1)`
-/

namespace A166755.P1782229990806040840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068416 (n + 1)

end

end A166755.P1782229990806040840

/-! ## A166755.P11875357497529753904

`A068416(A000027(n+1))+A068416(n+1)`
-/

namespace A166755.P11875357497529753904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068416 (A000027 (n + 1)).toNat + A068416 (n + 1)

end

end A166755.P11875357497529753904

/-! ## A166755.P4140126314396586344

`A068416(A028310(n+1))+A068416(n+1)`
-/

namespace A166755.P4140126314396586344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068416 (A028310 (n + 1)).toNat + A068416 (n + 1)

end

end A166755.P4140126314396586344

/-! ## A166755.P9330705522871545104

`A068416(n+1)+A068416(A249818(n+1))`
-/

namespace A166755.P9330705522871545104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068416 (n + 1) + A068416 (A249818 (n + 1)).toNat

end

end A166755.P9330705522871545104

/-!
# A166756: Number of nX2 1..3 arrays containing at least one of each value, and all equal values connected.

The programs for A166756, the canonical program `A166756.P2643005640503081745` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166756 has offset 1).

The definition of A166756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166756.P2643005640503081745

`∑[4*n]²+7*n²+n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166756

/-- `∑[4*n]²+7*n²+n` -/
def P2643005640503081745.Spec : Prop :=
  ∀ n, (P2643005640503081745.a n : ℤ) = A166756 (n + 1)

theorem P2643005640503081745.correct : P2643005640503081745.Spec := by
  intro n
  simp only [A166756, Nat.add_sub_cancel]

end A166756

/-! ## A166756.P10421149202946206073

`6*A345897(n+1)`
-/

namespace A166756.P10421149202946206073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A345897 (n + 1)

end

end A166756.P10421149202946206073

namespace A166756

/-- `6*A345897(n+1)` -/
def P10421149202946206073.Spec : Prop :=
  ∀ n, P10421149202946206073.a n = A166756 (n + 1)

end A166756

/-! ## A166756.P4266940542469208531

`2*((n+1)^4+n^4-A052905(n))`
-/

namespace A166756.P4266940542469208531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n + 1) ^ 4 + n ^ 4 : ℤ) - A052905 n)

end

end A166756.P4266940542469208531

namespace A166756

/-- `2*((n+1)^4+n^4-A052905(n))` -/
def P4266940542469208531.Spec : Prop :=
  ∀ n, P4266940542469208531.a n = A166756 (n + 1)

end A166756

/-! ## A166756.P6330113281572830934

`n*(6*n+A002411(2*n+1))`
-/

namespace A166756.P6330113281572830934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((6 * n : ℤ) + A002411 (2 * n + 1))

end

end A166756.P6330113281572830934

namespace A166756

/-- `n*(6*n+A002411(2*n+1))` -/
def P6330113281572830934.Spec : Prop :=
  ∀ n, P6330113281572830934.a n = A166756 (n + 1)

end A166756

/-! ## A166756.P13745989123679595752

`n*(A135503(2*n)+A059993(2*n))`
-/

namespace A166756.P13745989123679595752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A135503 (2 * n) + A059993 (2 * n))

end

end A166756.P13745989123679595752

namespace A166756

/-- `n*(A135503(2*n)+A059993(2*n))` -/
def P13745989123679595752.Spec : Prop :=
  ∀ n, P13745989123679595752.a n = A166756 (n + 1)

end A166756

/-!
# A166761: Number of n X 3 1..2 arrays containing at least one of each value, and all equal values connected.

The programs for A166761, the canonical program `A166761.P10971660415764339902` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166761 has offset 1).

The definition of A166761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166761.P10971660415764339902

`32*(2^(n+1)-1)-(n+1)*((n+1)*(2*(n+1)+9)+73)/3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166761

/-- `32*(2^(n+1)-1)-(n+1)*((n+1)*(2*(n+1)+9)+73)/3` -/
def P10971660415764339902.Spec : Prop :=
  ∀ n, P10971660415764339902.a n = (A166761 (n + 1) : ℚ)

end A166761

/-! ## A166761.P14835509503458292121

`2*A378933(n+1)`
-/

namespace A166761.P14835509503458292121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378933 (n + 1)

end

end A166761.P14835509503458292121

namespace A166761

/-- `2*A378933(n+1)` -/
def P14835509503458292121.Spec : Prop :=
  ∀ n, P14835509503458292121.a n = A166761 (n + 1)

end A166761

/-! ## A166761.P2656627422045735145

`∑[2*(a(n-1)+n²+8)]` with `a(0)=4`
-/

namespace A166761.P2656627422045735145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * (f1 (n - 1) + (n ^ 2 + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166761.P2656627422045735145

namespace A166761

/-- `∑[2*(a(n-1)+n²+8)]` -/
def P2656627422045735145.Spec : Prop :=
  ∀ n, (P2656627422045735145.a n : ℤ) = A166761 (n + 1)

end A166761

/-! ## A166761.P11037206659338127972

`A004277(A378933(n+1))`
-/

namespace A166761.P11037206659338127972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A378933 (n + 1)).toNat

end

end A166761.P11037206659338127972

namespace A166761

/-- `A004277(A378933(n+1))` -/
def P11037206659338127972.Spec : Prop :=
  ∀ n, P11037206659338127972.a n = A166761 (n + 1)

end A166761

/-!
# A166766: Number of n X 4 1..2 arrays containing at least one of each value, and all equal values connected.

The programs for A166766, there is no canonical definition to state claims against.
-/

/-! ## A166766.P14982145013682227587

`2*A378934(n+1)`
-/

namespace A166766.P14982145013682227587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378934 (n + 1)

end

end A166766.P14982145013682227587

/-! ## A166766.P12408114963769453950

`A378934(C(n+1, n))+A378934(n+1)`
-/

namespace A166766.P12408114963769453950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378934 (Nat.choose (n + 1) n) + A378934 (n + 1)

end

end A166766.P12408114963769453950

/-! ## A166766.P16876981196207577302

`A378934(A000027(n+1))+A378934(n+1)`
-/

namespace A166766.P16876981196207577302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378934 (A000027 (n + 1)).toNat + A378934 (n + 1)

end

end A166766.P16876981196207577302

/-!
# A166776: Number of nX2 1..3 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in nondecreasing order.

The programs for A166776, the canonical program `A166776.P2456364998387965539` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166776 has offset 1).

The definition of A166776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166776.P2456364998387965539

`∑[(n+11)*∑[n]]+C(n, 4)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166776

/-- `∑[(n+11)*∑[n]]+C(n, 4)` -/
def P2456364998387965539.Spec : Prop :=
  ∀ n, (P2456364998387965539.a n : ℤ) = A166776 (n + 1)

theorem P2456364998387965539.correct : P2456364998387965539.Spec := by
  intro n
  simp only [A166776, Nat.add_sub_cancel]

end A166776

/-! ## A166776.P2451071227869580427

`∑[n]+n*(∑[∑[n+3]]+n)`
-/

namespace A166776.P2451071227869580427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * (∑ j ∈ Finset.range (n + 1), f2 j + n)

end

end A166776.P2451071227869580427

namespace A166776

/-- `∑[n]+n*(∑[∑[n+3]]+n)` -/
def P2451071227869580427.Spec : Prop :=
  ∀ n, (P2451071227869580427.a n : ℤ) = A166776 (n + 1)

end A166776

/-! ## A166776.P8596018523281060389

`(n*(n+5)+3)/3*A055999(n)`
-/

namespace A166776.P8596018523281060389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) + 3 : ℚ) / 3 * (A055999 n : ℚ)

end

end A166776.P8596018523281060389

namespace A166776

/-- `(n*(n+5)+3)/3*A055999(n)` -/
def P8596018523281060389.Spec : Prop :=
  ∀ n, P8596018523281060389.a n = (A166776 (n + 1) : ℚ)

end A166776

/-! ## A166776.P10405798487111081750

`A166801(n+1)%A166819(n+1)`
-/

namespace A166776.P10405798487111081750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166801 (n + 1)) (A166819 (n + 1))

end

end A166776.P10405798487111081750

namespace A166776

/-- `A166801(n+1)%A166819(n+1)` -/
def P10405798487111081750.Spec : Prop :=
  ∀ n, P10405798487111081750.a n = A166776 (n + 1)

end A166776

/-! ## A166776.P14868550379903064965

`A166831(n+1)%A166842(n+1)`
-/

namespace A166776.P14868550379903064965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166831 (n + 1)) (A166842 (n + 1))

end

end A166776.P14868550379903064965

namespace A166776

/-- `A166831(n+1)%A166842(n+1)` -/
def P14868550379903064965.Spec : Prop :=
  ∀ n, P14868550379903064965.a n = A166776 (n + 1)

end A166776

/-! ## A166776.P9537618926036212760

`(A166814(n+1)+A166796(n+1))%A060103(n)`
-/

namespace A166776.P9537618926036212760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166814 (n + 1) + A166796 (n + 1)) (A060103 n)

end

end A166776.P9537618926036212760

namespace A166776

/-- `(A166814(n+1)+A166796(n+1))%A060103(n)` -/
def P9537618926036212760.Spec : Prop :=
  ∀ n, P9537618926036212760.a n = A166776 (n + 1)

end A166776

/-!
# A166777: Number of nX2 1..4 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in nondecreasing order.

The programs for A166777, the canonical program `A166777.P11006328985908807965` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166777 has offset 1).

The definition of A166777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166777.P3659341028090606354

`A166826(n+1)+A166815(n+1)`
-/

namespace A166777.P3659341028090606354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166826 (n + 1) + A166815 (n + 1)

end

end A166777.P3659341028090606354

namespace A166777

/-- `A166826(n+1)+A166815(n+1)` -/
def P3659341028090606354.Spec : Prop :=
  ∀ n, P3659341028090606354.a n = A166777 (n + 1)

theorem P3659341028090606354.correct : P3659341028090606354.Spec := by
  intro n
  simp only [A166777, Nat.add_sub_cancel, A166777.P3659341028090606354.a, A166777.P11006328985908807965.a, A166815, A166815.P14232837679894143534.a, A166826, A166826.P2968407093757897724.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166777

/-! ## A166777.P15207467146935321001

`A166838(n+1)+A166797(n+1)`
-/

namespace A166777.P15207467146935321001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166838 (n + 1) + A166797 (n + 1)

end

end A166777.P15207467146935321001

namespace A166777

/-- `A166838(n+1)+A166797(n+1)` -/
def P15207467146935321001.Spec : Prop :=
  ∀ n, P15207467146935321001.a n = A166777 (n + 1)

theorem P15207467146935321001.correct : P15207467146935321001.Spec := by
  intro n
  simp only [A166777, Nat.add_sub_cancel, A166777.P15207467146935321001.a, A166777.P11006328985908807965.a, A166797, A166797.P17921625085108199249.a, A166815, A166815.P14232837679894143534.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166777

/-! ## A166777.P11006328985908807965

`A166815(n+1)+A166838(n+1)+C(n, 3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166777

/-- `A166815(n+1)+A166838(n+1)+C(n, 3)` -/
def P11006328985908807965.Spec : Prop :=
  ∀ n, P11006328985908807965.a n = A166777 (n + 1)

theorem P11006328985908807965.correct : P11006328985908807965.Spec := by
  intro n
  simp only [A166777, Nat.add_sub_cancel]

end A166777

/-! ## A166777.P2025307060227199309

`A166797(n+1)+A166826(n+1)-C(n, 3)`
-/

namespace A166777.P2025307060227199309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166797 (n + 1) + (A166826 (n + 1) - (Nat.choose n 3 : ℤ))

end

end A166777.P2025307060227199309

namespace A166777

/-- `A166797(n+1)+A166826(n+1)-C(n, 3)` -/
def P2025307060227199309.Spec : Prop :=
  ∀ n, P2025307060227199309.a n = A166777 (n + 1)

theorem P2025307060227199309.correct : P2025307060227199309.Spec := by
  intro n
  simp only [A166777, Nat.add_sub_cancel, A166777.P2025307060227199309.a, A166777.P11006328985908807965.a, A166797, A166797.P17921625085108199249.a, A166815, A166815.P14232837679894143534.a, A166826, A166826.P2968407093757897724.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166777

/-! ## A166777.P2497833471885510500

`A166815(n+1)+A166838(n+1)+Δ[A000332(n)]`
-/

namespace A166777.P2497833471885510500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166815 (n + 1) + (A166838 (n + 1) + (f1 (n + 1) - f1 n))

end

end A166777.P2497833471885510500

namespace A166777

/-- `A166815(n+1)+A166838(n+1)+Δ[A000332(n)]` -/
def P2497833471885510500.Spec : Prop :=
  ∀ n, P2497833471885510500.a n = A166777 (n + 1)

theorem P2497833471885510500.correct : P2497833471885510500.Spec := by
  intro n
  simp only [A166777, Nat.add_sub_cancel, A166777.P2497833471885510500.f1, A166777.P2497833471885510500.a, A166777.P11006328985908807965.a, A000332, A000332.P5946310388023661265.a, A166815, A166815.P14232837679894143534.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166777

/-!
# A166778: Number of nX2 1..5 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in nondecreasing order.

The programs for A166778, there is no canonical definition to state claims against.
-/

/-! ## A166778.P12304150694611530648

`A166827(n+1)+A166816(n+1)`
-/

namespace A166778.P12304150694611530648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166827 (n + 1) + A166816 (n + 1)

end

end A166778.P12304150694611530648

/-! ## A166778.P17631357149393226328

`A166839(n+1)+A166798(n+1)`
-/

namespace A166778.P17631357149393226328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166839 (n + 1) + A166798 (n + 1)

end

end A166778.P17631357149393226328

/-! ## A166778.P6320637060981089637

`A166816(n+1)+A166839(n+1)+C(n, 4)`
-/

namespace A166778.P6320637060981089637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166816 (n + 1) + (A166839 (n + 1) + (Nat.choose n 4 : ℤ))

end

end A166778.P6320637060981089637

/-! ## A166778.P18334409962016669721

`A166816(n+1)+A166839(n+1)+A000332(n)`
-/

namespace A166778.P18334409962016669721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166816 (n + 1) + (A166839 (n + 1) + A000332 n)

end

end A166778.P18334409962016669721

/-! ## A166778.P17388529258727460378

`A166798(n+1)+A166827(n+1)-A000332(n)`
-/

namespace A166778.P17388529258727460378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166798 (n + 1) + (A166827 (n + 1) - A000332 n)

end

end A166778.P17388529258727460378

/-!
# A166779: Number of nX2 1..6 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in nondecreasing order.

The programs for A166779, there is no canonical definition to state claims against.
-/

/-! ## A166779.P15161706955999159660

`A166828(n+1)+A166817(n+1)`
-/

namespace A166779.P15161706955999159660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166828 (n + 1) + A166817 (n + 1)

end

end A166779.P15161706955999159660

/-! ## A166779.P10612492954620436140

`A166840(n+1)+A166799(n+1)`
-/

namespace A166779.P10612492954620436140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166840 (n + 1) + A166799 (n + 1)

end

end A166779.P10612492954620436140

/-! ## A166779.P14172087049486492862

`A166817(n+1)+A166840(n+1)+C(n, 5)`
-/

namespace A166779.P14172087049486492862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166817 (n + 1) + (A166840 (n + 1) + (Nat.choose n 5 : ℤ))

end

end A166779.P14172087049486492862

/-! ## A166779.P14407387769795898578

`A166799(n+1)+A166828(n+1)-C(n, 5)`
-/

namespace A166779.P14407387769795898578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166799 (n + 1) + (A166828 (n + 1) - (Nat.choose n 5 : ℤ))

end

end A166779.P14407387769795898578

/-! ## A166779.P1575876645450084448

`A166817(n+1)+A166840(n+1)+A000389(n)`
-/

namespace A166779.P1575876645450084448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166817 (n + 1) + (A166840 (n + 1) + A000389 n)

end

end A166779.P1575876645450084448

/-!
# A166780: Number of nX2 1..7 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in nondecreasing order.

The programs for A166780, there is no canonical definition to state claims against.
-/

/-! ## A166780.P5323221361286041366

`A166841(n+1)+A166800(n+1)`
-/

namespace A166780.P5323221361286041366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166841 (n + 1) + A166800 (n + 1)

end

end A166780.P5323221361286041366

/-! ## A166780.P8496737796676104167

`A166800(n+1)+A166829(n+1)-A000579(n)`
-/

namespace A166780.P8496737796676104167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166800 (n + 1) + (A166829 (n + 1) - A000579 n)

end

end A166780.P8496737796676104167

/-! ## A166780.P2334267154280161393

`A166829(n+1)+A166818(n+1)`
-/

namespace A166780.P2334267154280161393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166829 (n + 1) + A166818 (n + 1)

end

end A166780.P2334267154280161393

/-! ## A166780.P16244614979057276507

`A166818(n+1)+A166841(n+1)+A000579(n)`
-/

namespace A166780.P16244614979057276507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166818 (n + 1) + (A166841 (n + 1) + A000579 n)

end

end A166780.P16244614979057276507

/-!
# A166781: Number of nX3 1..2 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in nondecreasing order.

The programs for A166781, the canonical program `A166781.P7079120534427866897` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166781 has offset 1).

The definition of A166781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166781.P7079120534427866897

`n*((n+2)²+4)+4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166781

/-- `n*((n+2)²+4)+4` -/
def P7079120534427866897.Spec : Prop :=
  ∀ n, (P7079120534427866897.a n : ℤ) = A166781 (n + 1)

theorem P7079120534427866897.correct : P7079120534427866897.Spec := by
  intro n
  simp only [A166781, Nat.add_sub_cancel]

end A166781

/-! ## A166781.P11647077061293727

`∑[∑[a(n-1)+6]]` with `a(0)=4, a(1)=9, a(2)=14`
-/

namespace A166781.P11647077061293727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 14] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166781.P11647077061293727

namespace A166781

/-- `∑[∑[a(n-1)+6]]` -/
def P11647077061293727.Spec : Prop :=
  ∀ n, (P11647077061293727.a n : ℤ) = A166781 (n + 1)

end A166781

/-! ## A166781.P7582280013513220666

`∑[∑[floor(6/acot(n))+2]-1]`
-/

namespace A166781.P7582280013513220666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / SequenceMachineLib.acot (n : ℝ)⌋ + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166781.P7582280013513220666

namespace A166781

/-- `∑[∑[floor(6/acot(n))+2]-1]` -/
def P7582280013513220666.Spec : Prop :=
  ∀ n, P7582280013513220666.a n = A166781 (n + 1)

end A166781

/-! ## A166781.P6148131053389901859

`∑[∑[floor(6*n+4-atan(n))]]`
-/

namespace A166781.P6148131053389901859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * n + 4 : ℝ) - Real.arctan (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166781.P6148131053389901859

namespace A166781

/-- `∑[∑[floor(6*n+4-atan(n))]]` -/
def P6148131053389901859.Spec : Prop :=
  ∀ n, P6148131053389901859.a n = A166781 (n + 1)

end A166781

/-! ## A166781.P4992041666711361181

`abs(lcm(n+1, (n+2)²)-n²)`
-/

namespace A166781.P4992041666711361181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (n + 1) ((n + 2) ^ 2) : ℤ) - (n ^ 2 : ℤ)|

end

end A166781.P4992041666711361181

namespace A166781

/-- `abs(lcm(n+1, (n+2)²)-n²)` -/
def P4992041666711361181.Spec : Prop :=
  ∀ n, P4992041666711361181.a n = A166781 (n + 1)

end A166781

/-! ## A166781.P1966021994247039293

`Δ[A152457(n)+n²]`
-/

namespace A166781.P1966021994247039293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152457 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166781.P1966021994247039293

namespace A166781

/-- `Δ[A152457(n)+n²]` -/
def P1966021994247039293.Spec : Prop :=
  ∀ n, P1966021994247039293.a n = A166781 (n + 1)

end A166781

/-! ## A166781.P2049673702512083532

`(A374649(n+3)-A000142(n))/A000142(n)`
-/

namespace A166781.P2049673702512083532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374649 (n + 3) - A000142 n : ℚ) / (A000142 n : ℚ)

end

end A166781.P2049673702512083532

namespace A166781

/-- `(A374649(n+3)-A000142(n))/A000142(n)` -/
def P2049673702512083532.Spec : Prop :=
  ∀ n, P2049673702512083532.a n = (A166781 (n + 1) : ℚ)

end A166781

/-! ## A166781.P9816926065330352350

`∑[A055495(∑[A016789(2*n)])]`
-/

namespace A166781.P9816926065330352350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055495 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166781.P9816926065330352350

namespace A166781

/-- `∑[A055495(∑[A016789(2*n)])]` -/
def P9816926065330352350.Spec : Prop :=
  ∀ n, P9816926065330352350.a n = A166781 (n + 1)

end A166781

/-!
# A166786: Number of nX4 1..2 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in nondecreasing order.

The programs for A166786, the canonical program `A166786.P206210662376396014` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166786 has offset 1).

The definition of A166786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166786.P206210662376396014

`(2*(n+1)^5+15*(n+1)^4+60*(n+1)^3-75*(n+1)²+268*(n+1)-90)/30`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166786

/-- `(2*(n+1)^5+15*(n+1)^4+60*(n+1)^3-75*(n+1)²+268*(n+1)-90)/30` -/
def P206210662376396014.Spec : Prop :=
  ∀ n, P206210662376396014.a n = (A166786 (n + 1) : ℚ)

end A166786

/-!
# A166795: Number of n X n 1..2 arrays containing at least one of each value, all equal values connected, and rows considered as a single number in increasing order.

The programs for A166795, there is no canonical definition to state claims against.
-/

/-! ## A166795.P14642676777024405675

`A076793(n)+A008615(A010790(n))`
-/

namespace A166795.P14642676777024405675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 n + A008615 (A010790 n).toNat

end

end A166795.P14642676777024405675

/-!
# A166796: Number of nX2 1..3 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166796, the canonical program `A166796.P14638077891163958675` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166796 has offset 1).

The definition of A166796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166796.P14638077891163958675

`∑[∑[n*(n+4)]]+n²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166796

/-- `∑[∑[n*(n+4)]]+n²` -/
def P14638077891163958675.Spec : Prop :=
  ∀ n, (P14638077891163958675.a n : ℤ) = A166796 (n + 1)

theorem P14638077891163958675.correct : P14638077891163958675.Spec := by
  intro n
  simp only [A166796, Nat.add_sub_cancel]

end A166796

/-! ## A166796.P14458023188386220931

`∑[record[C(2*n, 3)/4-2*n]]`
-/

namespace A166796.P14458023188386220931
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℚ) / 4 - (2 * n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166796.P14458023188386220931

namespace A166796

/-- `∑[record[C(2*n, 3)/4-2*n]]` -/
def P14458023188386220931.Spec : Prop :=
  ∀ n, P14458023188386220931.a n = (A166796 (n + 1) : ℚ)

end A166796

/-! ## A166796.P4576913094904739334

`∑[∑[floor((n+2)*(n+2-acot(n)))]]`
-/

namespace A166796.P4576913094904739334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * ((n + 2 : ℝ) - SequenceMachineLib.acot (n : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166796.P4576913094904739334

namespace A166796

/-- `∑[∑[floor((n+2)*(n+2-acot(n)))]]` -/
def P4576913094904739334.Spec : Prop :=
  ∀ n, P4576913094904739334.a n = A166796 (n + 1)

end A166796

/-! ## A166796.P11166468830506284514

`∑[a(n-1)+(n+2)²-2]` with `a(0)=0, a(1)=6`
-/

namespace A166796.P11166468830506284514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + (((n + 2) ^ 2 : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166796.P11166468830506284514

namespace A166796

/-- `∑[a(n-1)+(n+2)²-2]` -/
def P11166468830506284514.Spec : Prop :=
  ∀ n, P11166468830506284514.a n = A166796 (n + 1)

end A166796

/-! ## A166796.P11044442428860159483

`∑[∑[(n+2)²-2-C(2, n+1)]]`
-/

namespace A166796.P11044442428860159483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 2 - (Nat.choose 2 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166796.P11044442428860159483

namespace A166796

/-- `∑[∑[(n+2)²-2-C(2, n+1)]]` -/
def P11044442428860159483.Spec : Prop :=
  ∀ n, P11044442428860159483.a n = A166796 (n + 1)

end A166796

/-! ## A166796.P13042254433300680041

`∑[A004273(n)+∑[n*(n+4)]]`
-/

namespace A166796.P13042254433300680041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166796.P13042254433300680041

namespace A166796

/-- `∑[A004273(n)+∑[n*(n+4)]]` -/
def P13042254433300680041.Spec : Prop :=
  ∀ n, P13042254433300680041.a n = A166796 (n + 1)

end A166796

/-! ## A166796.P5145715271842875777

`∑[∑[A130130(n)+A028347(n+2)]]`
-/

namespace A166796.P5145715271842875777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A028347 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166796.P5145715271842875777

namespace A166796

/-- `∑[∑[A130130(n)+A028347(n+2)]]` -/
def P5145715271842875777.Spec : Prop :=
  ∀ n, P5145715271842875777.a n = A166796 (n + 1)

end A166796

/-! ## A166796.P3802745305739059320

`abs(7-A080260(n+3))`
-/

namespace A166796.P3802745305739059320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A080260 (n + 3)|

end

end A166796.P3802745305739059320

namespace A166796

/-- `abs(7-A080260(n+3))` -/
def P3802745305739059320.Spec : Prop :=
  ∀ n, P3802745305739059320.a n = A166796 (n + 1)

end A166796

/-!
# A166797: Number of nX2 1..4 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166797, the canonical program `A166797.P17921625085108199249` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166797 has offset 1).

The definition of A166797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166797.P17921625085108199249

`A166815(n+1)+C(n, 3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166797

/-- `A166815(n+1)+C(n, 3)` -/
def P17921625085108199249.Spec : Prop :=
  ∀ n, P17921625085108199249.a n = A166797 (n + 1)

theorem P17921625085108199249.correct : P17921625085108199249.Spec := by
  intro n
  simp only [A166797, Nat.add_sub_cancel]

end A166797

/-! ## A166797.P16387101158178120263

`A166777(n+1)-A166838(n+1)`
-/

namespace A166797.P16387101158178120263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166777 (n + 1) - A166838 (n + 1)

end

end A166797.P16387101158178120263

namespace A166797

/-- `A166777(n+1)-A166838(n+1)` -/
def P16387101158178120263.Spec : Prop :=
  ∀ n, P16387101158178120263.a n = A166797 (n + 1)

theorem P16387101158178120263.correct : P16387101158178120263.Spec := by
  intro n
  simp only [A166797, Nat.add_sub_cancel, A166797.P16387101158178120263.a, A166797.P17921625085108199249.a, A166777, A166777.P11006328985908807965.a, A166815, A166815.P14232837679894143534.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166797

/-! ## A166797.P9460592696900880193

`A166815(n+1)+A000292(n)-n²`
-/

namespace A166797.P9460592696900880193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166815 (n + 1) + (A000292 n - (n ^ 2 : ℤ))

end

end A166797.P9460592696900880193

namespace A166797

/-- `A166815(n+1)+A000292(n)-n²` -/
def P9460592696900880193.Spec : Prop :=
  ∀ n, P9460592696900880193.a n = A166797 (n + 1)

theorem P9460592696900880193.correct : P9460592696900880193.Spec := by
  intro n
  simp only [A166797, Nat.add_sub_cancel, A166797.P9460592696900880193.a, A166797.P17921625085108199249.a, A000292, A000292.P18322089543142633594.a, A166815, A166815.P14232837679894143534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166797

/-! ## A166797.P10384216653385700282

`A166777(n+1)-(A166826(n+1)-C(n, 3))`
-/

namespace A166797.P10384216653385700282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166777 (n + 1) - (A166826 (n + 1) - (Nat.choose n 3 : ℤ))

end

end A166797.P10384216653385700282

namespace A166797

/-- `A166777(n+1)-(A166826(n+1)-C(n, 3))` -/
def P10384216653385700282.Spec : Prop :=
  ∀ n, P10384216653385700282.a n = A166797 (n + 1)

theorem P10384216653385700282.correct : P10384216653385700282.Spec := by
  intro n
  simp only [A166797, Nat.add_sub_cancel, A166797.P10384216653385700282.a, A166797.P17921625085108199249.a, A166777, A166777.P11006328985908807965.a, A166815, A166815.P14232837679894143534.a, A166826, A166826.P2968407093757897724.a, A166838, A166838.P6310268772221810504.a, A005582, A005582.P2745663949563023269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166797

/-! ## A166797.P13352440070161065750

`A166815(n+1)+Δ[A000332(n)]`
-/

namespace A166797.P13352440070161065750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166815 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166797.P13352440070161065750

namespace A166797

/-- `A166815(n+1)+Δ[A000332(n)]` -/
def P13352440070161065750.Spec : Prop :=
  ∀ n, P13352440070161065750.a n = A166797 (n + 1)

theorem P13352440070161065750.correct : P13352440070161065750.Spec := by
  intro n
  simp only [A166797, Nat.add_sub_cancel, A166797.P13352440070161065750.f1, A166797.P13352440070161065750.a, A166797.P17921625085108199249.a, A000332, A000332.P5946310388023661265.a, A166815, A166815.P14232837679894143534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166797

/-!
# A166798: Number of nX2 1..5 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166798, there is no canonical definition to state claims against.
-/

/-! ## A166798.P4372500658926607588

`A166816(n+1)+C(n, 4)`
-/

namespace A166798.P4372500658926607588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166816 (n + 1) + (Nat.choose n 4 : ℤ)

end

end A166798.P4372500658926607588

/-! ## A166798.P10566840462824575911

`A166816(n+1)+A000332(n)`
-/

namespace A166798.P10566840462824575911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166816 (n + 1) + A000332 n

end

end A166798.P10566840462824575911

/-! ## A166798.P4586909095575979678

`A166778(n+1)-A166839(n+1)`
-/

namespace A166798.P4586909095575979678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166778 (n + 1) - A166839 (n + 1)

end

end A166798.P4586909095575979678

/-! ## A166798.P15280681081292554380

`A166816(n+1)+A034827(n)/2`
-/

namespace A166798.P15280681081292554380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166816 (n + 1) : ℚ) + (A034827 n : ℚ) / 2

end

end A166798.P15280681081292554380

/-! ## A166798.P13281076866612709003

`A166816(n+1)+Δ[A000389(n)]`
-/

namespace A166798.P13281076866612709003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166816 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166798.P13281076866612709003

/-!
# A166799: Number of nX2 1..6 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

The programs for A166799, there is no canonical definition to state claims against.
-/

/-! ## A166799.P4543759079970082865

`A166817(n+1)+C(n, 5)`
-/

namespace A166799.P4543759079970082865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166817 (n + 1) + (Nat.choose n 5 : ℤ)

end

end A166799.P4543759079970082865

/-! ## A166799.P11565732347314250840

`A166817(n+1)+A000389(n)`
-/

namespace A166799.P11565732347314250840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166817 (n + 1) + A000389 n

end

end A166799.P11565732347314250840

/-! ## A166799.P4877478237555462017

`A166779(n+1)-A166840(n+1)`
-/

namespace A166799.P4877478237555462017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166779 (n + 1) - A166840 (n + 1)

end

end A166799.P4877478237555462017

/-! ## A166799.P1102819913929737178

`A166779(n+1)-(A166828(n+1)-C(n, 5))`
-/

namespace A166799.P1102819913929737178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166779 (n + 1) - (A166828 (n + 1) - (Nat.choose n 5 : ℤ))

end

end A166799.P1102819913929737178

/-! ## A166799.P5325458822035858567

`A166817(n+1)+Δ[A000579(n)]`
-/

namespace A166799.P5325458822035858567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166817 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166799.P5325458822035858567

