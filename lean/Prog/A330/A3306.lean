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
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
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
# A330600: Primes p such that the sum of (p mod d) for nonzero digits d of p is prime.

The programs for A330600, there is no canonical definition to state claims against.
-/

/-! ## A330600.P7944105249698435668

`A123252(A167499(n)+(n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A330600.P7944105249698435668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123252 (SequenceMachineLib.roundAway ((A167499 n : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A330600.P7944105249698435668

/-!
# A330601: Array T read by antidiagonals: T(m,n) is the number of lattice walks from (0,0) to (m,n) using one step from {(3,0), (2,1), (1,2), (0,3)} and all other steps from {(1,0), (0,1)}.

The programs for A330601, there is no canonical definition to state claims against.
-/

/-! ## A330601.P6497373049600422469

`A292435(n)%A294442(A127604(n+1))`
-/

namespace A330601.P6497373049600422469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292435 n) (A294442 (A127604 (n + 1)).toNat)

end

end A330601.P6497373049600422469

/-!
# A330602: a(n) = a(n-1) XOR (n+1), with a(0) = 0.

The programs for A330602, the canonical program `A330602.P15027958631550095194` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330602 has offset 0).

The definition of A330602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330602.P9994717713826161492

`xor(a(n-1), n+1)` with `a(0)=0`
-/

namespace A330602.P9994717713826161492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a (n - 1)) (n + 1)

end

end A330602.P9994717713826161492

namespace A330602

/-- `xor(a(n-1), n+1)` -/
def P9994717713826161492.Spec : Prop :=
  ∀ n, (P9994717713826161492.a n : ℤ) = A330602 n

end A330602

/-! ## A330602.P15461916348545844917

`ogf((2x+x^2+3x^3-x^4-x^5)/(1-x^2-x^4+x^6))`
-/

namespace A330602.P15461916348545844917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 3, -1, -1] [1, 0, -1, 0, -1, 0, 1] n

end

end A330602.P15461916348545844917

namespace A330602

/-- `ogf((2x+x^2+3x^3-x^4-x^5)/(1-x^2-x^4+x^6))` -/
def P15461916348545844917.Spec : Prop :=
  ∀ n, P15461916348545844917.a n = A330602 n

end A330602

/-! ## A330602.P15027958631550095194

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=5, a(4)=0, a(5)=6`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330602

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P15027958631550095194.Spec : Prop :=
  ∀ n, P15027958631550095194.a n = A330602 n

theorem P15027958631550095194.correct : P15027958631550095194.Spec := by
  intro n
  simp only [A330602]

end A330602

/-! ## A330602.P7475874142927019464

`(2+n-(-1)^n*(1+n)-A057077(n))/2`
-/

namespace A330602.P7475874142927019464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 + n : ℤ) - (-1) ^ n * (1 + n : ℤ) - A057077 n : ℚ) / 2

end

end A330602.P7475874142927019464

namespace A330602

/-- `(2+n-(-1)^n*(1+n)-A057077(n))/2` -/
def P7475874142927019464.Spec : Prop :=
  ∀ n, P7475874142927019464.a n = (A330602 n : ℚ)

end A330602

/-! ## A330602.P5037046329850526269

`xor(n+1, a(n-1))` with `a(0)=0`
-/

namespace A330602.P5037046329850526269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (n + 1) (a (n - 1))

end

end A330602.P5037046329850526269

namespace A330602

/-- `xor(n+1, a(n-1))` -/
def P5037046329850526269.Spec : Prop :=
  ∀ n, (P5037046329850526269.a n : ℤ) = A330602 n

end A330602

/-! ## A330602.P16199274127610585647

`Δ[or(2, a(n-2))+n]` with `a(0)=3, a(1)=3`
-/

namespace A330602.P16199274127610585647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  Nat.lor 2 (f1 (n - 2)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A330602.P16199274127610585647

namespace A330602

/-- `Δ[or(2, a(n-2))+n]` -/
def P16199274127610585647.Spec : Prop :=
  ∀ n, P16199274127610585647.a n = A330602 n

end A330602

/-! ## A330602.P12489835372883386297

`((n+1)*n%4)%(2*n+1)`
-/

namespace A330602.P12489835372883386297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n % 4) % (2 * n + 1)

end

end A330602.P12489835372883386297

namespace A330602

/-- `((n+1)*n%4)%(2*n+1)` -/
def P12489835372883386297.Spec : Prop :=
  ∀ n, (P12489835372883386297.a n : ℤ) = A330602 n

end A330602

/-! ## A330602.P13223518656252606528

`or(n+1, and(2, n))-a(n-1)` with `a(0)=0`
-/

namespace A330602.P13223518656252606528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.lor (n + 1) (Nat.land 2 n) : ℤ) - a (n - 1)

end

end A330602.P13223518656252606528

namespace A330602

/-- `or(n+1, and(2, n))-a(n-1)` -/
def P13223518656252606528.Spec : Prop :=
  ∀ n, P13223518656252606528.a n = A330602 n

end A330602

/-! ## A330602.P5757538087440506441

`1-(-1)^n*a(n-1)+n` with `a(0)=0`
-/

namespace A330602.P5757538087440506441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (-1) ^ n * a (n - 1) + (n : ℤ)

end

end A330602.P5757538087440506441

namespace A330602

/-- `1-(-1)^n*a(n-1)+n` -/
def P5757538087440506441.Spec : Prop :=
  ∀ n, P5757538087440506441.a n = A330602 n

end A330602

/-! ## A330602.P12738020675756843468

`1-a(n-1)/(-1)^n+n` with `a(0)=0`
-/

namespace A330602.P12738020675756843468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) / ((-1) ^ n : ℚ) + (n : ℚ)

end

end A330602.P12738020675756843468

namespace A330602

/-- `1-a(n-1)/(-1)^n+n` -/
def P12738020675756843468.Spec : Prop :=
  ∀ n, P12738020675756843468.a n = (A330602 n : ℚ)

end A330602

/-! ## A330602.P1881129922543732719

`1-((-1)^n*a(n-1)-n)` with `a(0)=0`
-/

namespace A330602.P1881129922543732719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((-1) ^ n * a (n - 1) - (n : ℤ))

end

end A330602.P1881129922543732719

namespace A330602

/-- `1-((-1)^n*a(n-1)-n)` -/
def P1881129922543732719.Spec : Prop :=
  ∀ n, P1881129922543732719.a n = A330602 n

end A330602

/-! ## A330602.P17300867502234515261

`1-(a(n-1)/(-1)^n-n)` with `a(0)=0`
-/

namespace A330602.P17300867502234515261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) / ((-1) ^ n : ℚ) - (n : ℚ))

end

end A330602.P17300867502234515261

namespace A330602

/-- `1-(a(n-1)/(-1)^n-n)` -/
def P17300867502234515261.Spec : Prop :=
  ∀ n, P17300867502234515261.a n = (A330602 n : ℚ)

end A330602

/-! ## A330602.P90815708892911054

`or(2, 2*n-a(n-1))-(n-1)` with `a(0)=0`
-/

namespace A330602.P90815708892911054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 2 ((2 * n : ℤ) - a (n - 1)) - ((n : ℤ) - 1)

end

end A330602.P90815708892911054

namespace A330602

/-- `or(2, 2*n-a(n-1))-(n-1)` -/
def P90815708892911054.Spec : Prop :=
  ∀ n, P90815708892911054.a n = A330602 n

end A330602

/-! ## A330602.P4901934149858010292

`C(2*n+1, and(1, n))-a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A330602.P4901934149858010292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (Nat.choose (2 * n + 1) (Nat.land 1 n) : ℤ) - a (n - 2)

end

end A330602.P4901934149858010292

namespace A330602

/-- `C(2*n+1, and(1, n))-a(n-2)` -/
def P4901934149858010292.Spec : Prop :=
  ∀ n, P4901934149858010292.a n = A330602 n

end A330602

/-! ## A330602.P2883282246512417328

`and(2, a(n-2))+n+1-a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A330602.P2883282246512417328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  Int.land 2 (a (n - 2)) + ((n + 1 : ℤ) - a (n - 1))

end

end A330602.P2883282246512417328

namespace A330602

/-- `and(2, a(n-2))+n+1-a(n-1)` -/
def P2883282246512417328.Spec : Prop :=
  ∀ n, P2883282246512417328.a n = A330602 n

end A330602

/-! ## A330602.P14490567789202157000

`abs(1-A077140(n+1))`
-/

namespace A330602.P14490567789202157000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A077140 (n + 1)|

end

end A330602.P14490567789202157000

namespace A330602

/-- `abs(1-A077140(n+1))` -/
def P14490567789202157000.Spec : Prop :=
  ∀ n, P14490567789202157000.a n = A330602 n

end A330602

/-! ## A330602.P8508053076745944273

`A000045(gcd(n+1, n-3))-a(n-1)+n` with `a(0)=0`
-/

namespace A330602.P8508053076745944273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3)) - a (n - 1) + (n : ℤ)

end

end A330602.P8508053076745944273

namespace A330602

/-- `A000045(gcd(n+1, n-3))-a(n-1)+n` -/
def P8508053076745944273.Spec : Prop :=
  ∀ n, P8508053076745944273.a n = A330602 n

end A330602

/-! ## A330602.P6748453603676034158

`A007877(n)+A003816(n)`
-/

namespace A330602.P6748453603676034158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n + A003816 n

end

end A330602.P6748453603676034158

namespace A330602

/-- `A007877(n)+A003816(n)` -/
def P6748453603676034158.Spec : Prop :=
  ∀ n, P6748453603676034158.a n = A330602 n

end A330602

/-! ## A330602.P3167113070339201393

`A083219(n)+A001057(n)`
-/

namespace A330602.P3167113070339201393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 n + A001057 n

end

end A330602.P3167113070339201393

namespace A330602

/-- `A083219(n)+A001057(n)` -/
def P3167113070339201393.Spec : Prop :=
  ∀ n, P3167113070339201393.a n = A330602 n

end A330602

/-! ## A330602.P4741783996408493365

`A014682(n)-A122461(n)`
-/

namespace A330602.P4741783996408493365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n - A122461 n

end

end A330602.P4741783996408493365

namespace A330602

/-- `A014682(n)-A122461(n)` -/
def P4741783996408493365.Spec : Prop :=
  ∀ n, P4741783996408493365.a n = A330602 n

end A330602

/-!
# A330603: a(n) = Sum_{k>=0} (k - n)^n / 2^(k + 1).

The programs for A330603, there is no canonical definition to state claims against.
-/

/-! ## A330603.P11354538313001189661

`∑{#}[n, C(n, #)*(-n)^(n-#)*A000670(#)]`
-/

namespace A330603.P11354538313001189661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-(n : ℤ) : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000670 k : ℚ)

end

end A330603.P11354538313001189661

/-!
# A330604: a(n) = Sum_{k>=0} (n*k - 1)^n / 2^(k + 1).

The programs for A330604, there is no canonical definition to state claims against.
-/

/-! ## A330604.P9722041238120539119

`∑{#}[n, (-1)^(n-#)*C(n, #)*n^#*A000670(#)]`
-/

namespace A330604.P9722041238120539119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (n ^ k : ℚ) * (A000670 k : ℚ)

end

end A330604.P9722041238120539119

/-!
# A330605: a(n) = exp(-1) * Sum_{k>=0} (n*k - 1)^n / k!.

The programs for A330605, the canonical program `A330605.P13331354455628710345` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330605 has offset 0).

The definition of A330605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330605.P13331354455628710345

`∑{#}[n, (-1)^(n-#)*C(n, #)*n^#*A000110(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330605

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*n^#*A000110(#)]` -/
def P13331354455628710345.Spec : Prop :=
  ∀ n, P13331354455628710345.a n = (A330605 n : ℚ)

end A330605

/-!
# A330606: Numbers k such that k*d(k) and sigma(k) are relatively prime, where d(k) is the number of divisors of k (A000005) and sigma(k) is their sum (A000203).

The programs for A330606, there is no canonical definition to state claims against.
-/

/-! ## A330606.P5262775180072958151

`filter[A046678(n+1), A325964(#)]`
-/

namespace A330606.P5262775180072958151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A330606.P5262775180072958151

/-! ## A330606.P12464423455498513261

`∩[A014567(n+1), A046678(n+1)]`
-/

namespace A330606.P12464423455498513261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330606.P12464423455498513261

/-! ## A330606.P8627022331673837423

`eq[1, A324121(n+1)]+1`
-/

namespace A330606.P8627022331673837423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330606.P8627022331673837423

/-! ## A330606.P424627490555390875

`record[A017666(A046678(n+1))]`
-/

namespace A330606.P424627490555390875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A046678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330606.P424627490555390875

/-! ## A330606.P16189174446629232219

`record[A099378(n+1)-A001065(n+1)]`
-/

namespace A330606.P16189174446629232219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330606.P16189174446629232219

/-! ## A330606.P8055229260093298634

`record[A017666(n+1)/A009205(n+1)]`
-/

namespace A330606.P8055229260093298634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330606.P8055229260093298634

/-! ## A330606.P1395851236804130369

`record[A099377(n+1)/A000005(n+1)]`
-/

namespace A330606.P1395851236804130369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099377 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330606.P1395851236804130369

/-! ## A330606.P14037285413884454181

`record[(n+1)/A324121(A000027(n+1))]`
-/

namespace A330606.P14037285413884454181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A324121 (A000027 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330606.P14037285413884454181

/-! ## A330606.P11270667553516129849

`record[(2-A324121(n+1))*A000027(n+1)]`
-/

namespace A330606.P11270667553516129849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A324121 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330606.P11270667553516129849

/-!
# A330608: T(n, k) = P(n-k, k) where P(n, x) = Sum_{k=0..n} A053121(n, k)*x^k. Triangle read by rows, for 0 <= k <= n.

The programs for A330608, there is no canonical definition to state claims against.
-/

/-! ## A330608.P4594754041058770595

`∑{e}[A000984(A247495(n)), #]`
-/

namespace A330608.P4594754041058770595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A247495 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A330608.P4594754041058770595

/-! ## A330608.P16411367399832300696

`A001222(A000984(A247495(n)))`
-/

namespace A330608.P16411367399832300696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000984 (A247495 n).toNat).toNat

end

end A330608.P16411367399832300696

/-! ## A330608.P14842802057810199150

`A335460(A154921(n))+A059260(n)`
-/

namespace A330608.P14842802057810199150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A154921 n).toNat + A059260 n

end

end A330608.P14842802057810199150

/-!
# A330609: T(n, k) = binomial(n-k-1, k-1)*(n-k)!/k! for n >= 0 and 0 <= k <= floor(n/2). Irregular triangle read by rows.

The programs for A330609, the canonical program `A330609.P14507470063012570889` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330609 has offset 0).

The definition of A330609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330609.P14507470063012570889

`A271703(A091018(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330609

/-- `A271703(A091018(n))` -/
def P14507470063012570889.Spec : Prop :=
  ∀ n, P14507470063012570889.a n = A330609 n

theorem P14507470063012570889.correct : P14507470063012570889.Spec := by
  intro n
  simp only [A330609]

end A330609

/-! ## A330609.P10665074670563978786

`A271703(A056536(n+1)-1)`
-/

namespace A330609.P10665074670563978786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A056536 (n + 1) - 1).toNat

end

end A330609.P10665074670563978786

namespace A330609

/-- `A271703(A056536(n+1)-1)` -/
def P10665074670563978786.Spec : Prop :=
  ∀ n, P10665074670563978786.a n = A330609 n

end A330609

/-! ## A330609.P14950016953518592764

`gcd(A000038(n), A111596(A091018(n)))`
-/

namespace A330609.P14950016953518592764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A111596 (A091018 n).toNat)

end

end A330609.P14950016953518592764

namespace A330609

/-- `gcd(A000038(n), A111596(A091018(n)))` -/
def P14950016953518592764.Spec : Prop :=
  ∀ n, (P14950016953518592764.a n : ℤ) = A330609 n

end A330609

/-! ## A330609.P12607627770017848285

`lcm(A011973(n), A111596(A091018(n)))`
-/

namespace A330609.P12607627770017848285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011973 n) (A111596 (A091018 n).toNat)

end

end A330609.P12607627770017848285

namespace A330609

/-- `lcm(A011973(n), A111596(A091018(n)))` -/
def P12607627770017848285.Spec : Prop :=
  ∀ n, (P12607627770017848285.a n : ℤ) = A330609 n

end A330609

/-! ## A330609.P8825722765204745673

`Δ[A053615(n)]*A111596(A091018(n))`
-/

namespace A330609.P8825722765204745673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A111596 (A091018 n).toNat

end

end A330609.P8825722765204745673

namespace A330609

/-- `Δ[A053615(n)]*A111596(A091018(n))` -/
def P8825722765204745673.Spec : Prop :=
  ∀ n, P8825722765204745673.a n = A330609 n

end A330609

/-!
# A330610: Number of near-magic (only short lines are magic) knight's tours on a 4 X 2n board.

The programs for A330610, there is no canonical definition to state claims against.
-/

/-! ## A330610.P2924095265812718798

`∑[A171949(A010551(n))]`
-/

namespace A330610.P2924095265812718798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171949 (A010551 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330610.P2924095265812718798

/-! ## A330610.P6133250936789237416

`2*A126205(A003500(n))`
-/

namespace A330610.P6133250936789237416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126205 (A003500 n).toNat

end

end A330610.P6133250936789237416

/-! ## A330610.P7463671562525737471

`4*A306696(A000698(n))`
-/

namespace A330610.P7463671562525737471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A306696 (A000698 n).toNat

end

end A330610.P7463671562525737471

/-!
# A330611: Number of near-magic (only long lines are magic) knight's tours on a 4 X 2n board.

The programs for A330611, there is no canonical definition to state claims against.
-/

/-! ## A330611.P6840129611555630730

`A169925(A326156(n)+1)`
-/

namespace A330611.P6840129611555630730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169925 (A326156 n + 1).toNat

end

end A330611.P6840129611555630730

/-! ## A330611.P14411490701910434767

`2*A127290(A006645(n))`
-/

namespace A330611.P14411490701910434767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127290 (A006645 n).toNat

end

end A330611.P14411490701910434767

/-!
# A330612: Plain Bob Infinity. Select terms <= n to get a permutation whose powers generate all possible pairs of bells for change ringing.

The programs for A330612, there is no canonical definition to state claims against.
-/

/-! ## A330612.P11598017440129582880

`A181440(xor(((-1)^n)%A000142(n)+n+1, A057427(n)))`
-/

namespace A330612.P11598017440129582880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (Int.xor (Int.tmod ((-1) ^ n) (A000142 n) + (n : ℤ) + 1) (A057427 n)).toNat

end

end A330612.P11598017440129582880

/-! ## A330612.P12940093020551158429

`A131209(n)-A280560(A050024(n+1))`
-/

namespace A330612.P12940093020551158429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n - A280560 (A050024 (n + 1)).toNat

end

end A330612.P12940093020551158429

/-! ## A330612.P14089732919226197255

`A280560(A050024(n+1)+1)+A131209(n)`
-/

namespace A330612.P14089732919226197255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A050024 (n + 1) + 1).toNat + A131209 n

end

end A330612.P14089732919226197255

/-! ## A330612.P9661973958071886734

`A131209(n)-A280560(A264859(n+1))`
-/

namespace A330612.P9661973958071886734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n - A280560 (A264859 (n + 1)).toNat

end

end A330612.P9661973958071886734

/-! ## A330612.P16896626050241922932

`A280560(A264859(n+1)+1)+A131209(n)`
-/

namespace A330612.P16896626050241922932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A264859 (n + 1) + 1).toNat + A131209 n

end

end A330612.P16896626050241922932

/-!
# A330613: Triangle read by rows: T(n, k) = 1 + k - 2*n - 2*k*n + 2*n^2, with 0 <= k < n.

The programs for A330613, the canonical program `A330613.P17044888638483625990` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330613 has offset 1).

The definition of A330613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+col(n)-2*(row(n)+1)-2*col(n)*(row(n)+1)+2*(row(n)+1)²` (program `A330613.P17044888638483625990`, by `A330613.P17044888638483625990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330613.P17044888638483625990

`1+col(n)-2*(row(n)+1)-2*col(n)*(row(n)+1)+2*(row(n)+1)²`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330613

/-- `1+col(n)-2*(row(n)+1)-2*col(n)*(row(n)+1)+2*(row(n)+1)²` -/
def P17044888638483625990.Spec : Prop :=
  ∀ n, P17044888638483625990.a n = A330613 (n + 1)

theorem P17044888638483625990.correct : P17044888638483625990.Spec := by
  intro n
  simp only [A330613, Nat.add_sub_cancel]

end A330613

/-! ## A330613.P9744169760540422306

`A001844(row(n))-col(n)*A005408(row(n))`
-/

namespace A330613.P9744169760540422306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (SequenceMachineLib.triRow n) - (SequenceMachineLib.triCol n : ℤ) * A005408 (SequenceMachineLib.triRow n)

end

end A330613.P9744169760540422306

namespace A330613

/-- `A001844(row(n))-col(n)*A005408(row(n))` -/
def P9744169760540422306.Spec : Prop :=
  ∀ n, P9744169760540422306.a n = A330613 (n + 1)

theorem P9744169760540422306.correct : P9744169760540422306.Spec := by
  intro n
  simp only [A330613, Nat.add_sub_cancel, A330613.P9744169760540422306.a, A330613.P17044888638483625990.a, A001844, A001844.P5037395199076350534.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330613

/-! ## A330613.P4238541672824406423

`1+(2*(row(n)-col(n))+1)*col(n)+2*(row(n)-col(n))*(row(n)-col(n)+1)`
-/

namespace A330613.P4238541672824406423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1) * (SequenceMachineLib.triCol n : ℤ) + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A330613.P4238541672824406423

namespace A330613

/-- `1+(2*(row(n)-col(n))+1)*col(n)+2*(row(n)-col(n))*(row(n)-col(n)+1)` -/
def P4238541672824406423.Spec : Prop :=
  ∀ n, P4238541672824406423.a n = A330613 (n + 1)

theorem P4238541672824406423.correct : P4238541672824406423.Spec := by
  intro n
  simp only [A330613, Nat.add_sub_cancel, A330613.P4238541672824406423.a, A330613.P17044888638483625990.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A330613

/-! ## A330613.P15871994643795830134

`A151890(A061579(n))+1`
-/

namespace A330613.P15871994643795830134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 (A061579 n).toNat + 1

end

end A330613.P15871994643795830134

namespace A330613

/-- `A151890(A061579(n))+1` -/
def P15871994643795830134.Spec : Prop :=
  ∀ n, P15871994643795830134.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P1849417787359289041

`A095833(n+1)+A091435(n)`
-/

namespace A330613.P1849417787359289041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) + A091435 n

end

end A330613.P1849417787359289041

namespace A330613

/-- `A095833(n+1)+A091435(n)` -/
def P1849417787359289041.Spec : Prop :=
  ∀ n, P1849417787359289041.a n = A330613 (n + 1)

theorem P1849417787359289041.correct : P1849417787359289041.Spec := by
  intro n
  simp only [A330613, Nat.add_sub_cancel, A330613.P1849417787359289041.a, A330613.P17044888638483625990.a, A091435, A091435.P4633070448187892032.a, A095833, A095833.P14663800684524425914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330613

/-! ## A330613.P8057475852230312059

`A128140(n+1)+A095834(n+1)`
-/

namespace A330613.P8057475852230312059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) + A095834 (n + 1)

end

end A330613.P8057475852230312059

namespace A330613

/-- `A128140(n+1)+A095834(n+1)` -/
def P8057475852230312059.Spec : Prop :=
  ∀ n, P8057475852230312059.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P13448995936748760571

`A185871(n+1)-A083487(n+1)`
-/

namespace A330613.P13448995936748760571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185871 (n + 1) - A083487 (n + 1)

end

end A330613.P13448995936748760571

namespace A330613

/-- `A185871(n+1)-A083487(n+1)` -/
def P13448995936748760571.Spec : Prop :=
  ∀ n, P13448995936748760571.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P10728931872914169245

`A128076(n+1)+2*A091435(n)`
-/

namespace A330613.P10728931872914169245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + 2 * A091435 n

end

end A330613.P10728931872914169245

namespace A330613

/-- `A128076(n+1)+2*A091435(n)` -/
def P10728931872914169245.Spec : Prop :=
  ∀ n, P10728931872914169245.a n = A330613 (n + 1)

theorem P10728931872914169245.correct : P10728931872914169245.Spec := by
  intro n
  simp only [A330613, Nat.add_sub_cancel, A330613.P10728931872914169245.a, A330613.P17044888638483625990.a, A091435, A091435.P4633070448187892032.a, A128076, A128076.P18422387938473498740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330613

/-! ## A330613.P3382824874883741209

`A002260(n+1)+2*A095834(n+1)`
-/

namespace A330613.P3382824874883741209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 2 * A095834 (n + 1)

end

end A330613.P3382824874883741209

namespace A330613

/-- `A002260(n+1)+2*A095834(n+1)` -/
def P3382824874883741209.Spec : Prop :=
  ∀ n, P3382824874883741209.a n = A330613 (n + 1)

theorem P3382824874883741209.correct : P3382824874883741209.Spec := by
  intro n
  simp only [A330613, Nat.add_sub_cancel, A330613.P3382824874883741209.a, A330613.P17044888638483625990.a, A002260, A002260.P9170571874073898642.a, A095834, A095834.P817103610530576889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330613

/-! ## A330613.P7792288113823792757

`2*A128140(n+1)-A002260(n+1)`
-/

namespace A330613.P7792288113823792757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128140 (n + 1) - A002260 (n + 1)

end

end A330613.P7792288113823792757

namespace A330613

/-- `2*A128140(n+1)-A002260(n+1)` -/
def P7792288113823792757.Spec : Prop :=
  ∀ n, P7792288113823792757.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P10201150810327870488

`A095833(n+1)+A079904(A038722(n+1)-1)`
-/

namespace A330613.P10201150810327870488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) + A079904 (A038722 (n + 1) - 1).toNat

end

end A330613.P10201150810327870488

namespace A330613

/-- `A095833(n+1)+A079904(A038722(n+1)-1)` -/
def P10201150810327870488.Spec : Prop :=
  ∀ n, P10201150810327870488.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P17763446131898246581

`A002024(n+1)*A099375(n)-A004526(A099375(n))`
-/

namespace A330613.P17763446131898246581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A099375 n - A004526 (A099375 n).toNat

end

end A330613.P17763446131898246581

namespace A330613

/-- `A002024(n+1)*A099375(n)-A004526(A099375(n))` -/
def P17763446131898246581.Spec : Prop :=
  ∀ n, P17763446131898246581.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P365334370293341774

`A244418(A038722(n+1))`
-/

namespace A330613.P365334370293341774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244418 (A038722 (n + 1)).toNat

end

end A330613.P365334370293341774

namespace A330613

/-- `A244418(A038722(n+1))` -/
def P365334370293341774.Spec : Prop :=
  ∀ n, P365334370293341774.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P6684117571974908164

`A025581(A127739(n+1))*A099375(n)-A025581(n)`
-/

namespace A330613.P6684117571974908164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A127739 (n + 1)).toNat * A099375 n - A025581 n

end

end A330613.P6684117571974908164

namespace A330613

/-- `A025581(A127739(n+1))*A099375(n)-A025581(n)` -/
def P6684117571974908164.Spec : Prop :=
  ∀ n, P6684117571974908164.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P3443940473421524926

`A091435(A007401(n+1))+A091435(n)`
-/

namespace A330613.P3443940473421524926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 (A007401 (n + 1)).toNat + A091435 n

end

end A330613.P3443940473421524926

namespace A330613

/-- `A091435(A007401(n+1))+A091435(n)` -/
def P3443940473421524926.Spec : Prop :=
  ∀ n, P3443940473421524926.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P16957082889896269051

`A091435(eq[1, A023532(n)])+A091435(n)`
-/

namespace A330613.P16957082889896269051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A091435 n

end

end A330613.P16957082889896269051

namespace A330613

/-- `A091435(eq[1, A023532(n)])+A091435(n)` -/
def P16957082889896269051.Spec : Prop :=
  ∀ n, P16957082889896269051.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P17754975325100738960

`A091435(A014132(n+1)-1)+A091435(n)`
-/

namespace A330613.P17754975325100738960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 (A014132 (n + 1) - 1).toNat + A091435 n

end

end A330613.P17754975325100738960

namespace A330613

/-- `A091435(A014132(n+1)-1)+A091435(n)` -/
def P17754975325100738960.Spec : Prop :=
  ∀ n, P17754975325100738960.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P1305465327308615533

`A091435(A002024(n+1)+n)+A091435(n)`
-/

namespace A330613.P1305465327308615533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 (A002024 (n + 1) + (n : ℤ)).toNat + A091435 n

end

end A330613.P1305465327308615533

namespace A330613

/-- `A091435(A002024(n+1)+n)+A091435(n)` -/
def P1305465327308615533.Spec : Prop :=
  ∀ n, P1305465327308615533.a n = A330613 (n + 1)

end A330613

/-! ## A330613.P15220966381672448700

`A091435(A003056(n)+1+n)+A091435(n)`
-/

namespace A330613.P15220966381672448700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 (A003056 n + 1 + (n : ℤ)).toNat + A091435 n

end

end A330613.P15220966381672448700

namespace A330613

/-- `A091435(A003056(n)+1+n)+A091435(n)` -/
def P15220966381672448700.Spec : Prop :=
  ∀ n, P15220966381672448700.a n = A330613 (n + 1)

end A330613

/-!
# A330615: a(0) = 1; a(1) = 1; a(n) = a(a(n - 1) mod n) + a(a(n - 2) mod n).

The programs for A330615, the canonical program `A330615.P4977074923812988685` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330615 has offset 0).

The definition of A330615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)%n)+a(a(n-2)%n)` (program `A330615.P4977074923812988685`, by `A330615.P4977074923812988685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330615.P4977074923812988685

`a(a(n-1)%n)+a(a(n-2)%n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330615

/-- `a(a(n-1)%n)+a(a(n-2)%n)` -/
def P4977074923812988685.Spec : Prop :=
  ∀ n, (P4977074923812988685.a n : ℤ) = A330615 n

theorem P4977074923812988685.correct : P4977074923812988685.Spec := by
  intro n
  simp only [A330615]

end A330615

/-!
# A330616: Palindromes that are the product of 2 non-palindromic numbers.

The programs for A330616, there is no canonical definition to state claims against.
-/

/-! ## A330616.P2931155208033939464

`∩[A033828(n+1), A083851(n+1)]`
-/

namespace A330616.P2931155208033939464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330616.P2931155208033939464

/-!
# A330617: Triangle read by rows: T(n,k) is the number of paths from node 0 to k in a directed graph with n+1 vertices labeled 0, 1, ..., n and edges leading from i to i+1 for all i, and from i to i+2 for even i and from i to i-2 for odd i.

The programs for A330617, there is no canonical definition to state claims against.
-/

/-! ## A330617.P12990870302154830799

`gcd(A099898(n+2), A156367(n))`
-/

namespace A330617.P12990870302154830799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099898 (n + 2)) (A156367 n)

end

end A330617.P12990870302154830799

/-! ## A330617.P14877372160549141068

`A107260(4*A130127(n+1))`
-/

namespace A330617.P14877372160549141068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107260 (4 * A130127 (n + 1)).toNat

end

end A330617.P14877372160549141068

/-! ## A330617.P10884642172955274196

`∑{p}[A059226(n)²+4, A032741(#)]`
-/

namespace A330617.P10884642172955274196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059226 n ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032741 p

end

end A330617.P10884642172955274196

/-! ## A330617.P2723997446705944849

`gcd(A059656(A000032(n)), A211955(n))`
-/

namespace A330617.P2723997446705944849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059656 (A000032 n).toNat) (A211955 n)

end

end A330617.P2723997446705944849

/-! ## A330617.P8084343547821772665

`A106487(A000720(A130127(n+1)²))`
-/

namespace A330617.P8084343547821772665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106487 (A000720 (A130127 (n + 1) ^ 2).toNat).toNat

end

end A330617.P8084343547821772665

/-!
# A330618: Triangle read by rows: T(n,k) is the number of n-bead necklaces using exactly k colors with no adjacent beads having the same color.

The programs for A330618, there is no canonical definition to state claims against.
-/

/-! ## A330618.P12219574168771251410

`A330341(n+1)*A330348(A000051(n))`
-/

namespace A330618.P12219574168771251410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330341 (n + 1) * A330348 (A000051 n).toNat

end

end A330618.P12219574168771251410

/-! ## A330618.P12072548367715239388

`C(A049600(n), A001055(A077998(n)))`
-/

namespace A330618.P12072548367715239388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049600 n).toNat (A001055 (A077998 n).toNat).toNat

end

end A330618.P12072548367715239388

/-! ## A330618.P13980368580657161798

`A083952(A242819(n))*A330341(n+1)`
-/

namespace A330618.P13980368580657161798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (A242819 n).toNat * A330341 (n + 1)

end

end A330618.P13980368580657161798

/-! ## A330618.P11448866229592088932

`A051159(n)*A367587(A115196(n+2))`
-/

namespace A330618.P11448866229592088932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n * A367587 (A115196 (n + 2)).toNat

end

end A330618.P11448866229592088932

/-! ## A330618.P14415025384815759400

`A001222(A060120(n)^A180793(n+1))`
-/

namespace A330618.P14415025384815759400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A060120 n : ℚ) ^ (A180793 (n + 1) : ℤ))).toNat

end

end A330618.P14415025384815759400

/-!
# A330619: Array read by rows: T(n,k) is the number of solutions to the equation Sum_{i=1..n} x_i^2 == k (mod 4) with x_i in 0..3, where n >= 0 and 0 <= k <= 3.

The programs for A330619, the canonical program `A330619.P5012836434847724312` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330619 has offset 0).

The definition of A330619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330619.P5012836434847724312

`ogf((1-6x^4+2x^5+12x^8-8x^9+4x^10-8x^12+8x^13-8x^14+8x^15)/(1-8x^4+24x^8-32x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330619

/-- `ogf((1-6x^4+2x^5+12x^8-8x^9+4x^10-8x^12+8x^13-8x^14+8x^15)/(1-8x^4+24x^8-32x^12))` -/
def P5012836434847724312.Spec : Prop :=
  ∀ n, P5012836434847724312.a n = A330619 n

theorem P5012836434847724312.correct : P5012836434847724312.Spec := by
  intro n
  simp only [A330619]

end A330619

/-! ## A330619.P5688604679217848271

`A015052(A011782(n))*A017827(n)`
-/

namespace A330619.P5688604679217848271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A011782 n).toNat * A017827 n

end

end A330619.P5688604679217848271

namespace A330619

/-- `A015052(A011782(n))*A017827(n)` -/
def P5688604679217848271.Spec : Prop :=
  ∀ n, P5688604679217848271.a n = A330619 n

end A330619

/-! ## A330619.P8070889988523030284

`A017827(n)*A053164(2^n)`
-/

namespace A330619.P8070889988523030284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 n * A053164 (2 ^ n)

end

end A330619.P8070889988523030284

namespace A330619

/-- `A017827(n)*A053164(2^n)` -/
def P8070889988523030284.Spec : Prop :=
  ∀ n, P8070889988523030284.a n = A330619 n

end A330619

/-! ## A330619.P7848951619083956470

`A015052(A000079(n))*A017827(n)`
-/

namespace A330619.P7848951619083956470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A000079 n).toNat * A017827 n

end

end A330619.P7848951619083956470

namespace A330619

/-- `A015052(A000079(n))*A017827(n)` -/
def P7848951619083956470.Spec : Prop :=
  ∀ n, P7848951619083956470.a n = A330619 n

end A330619

/-! ## A330619.P6431087259826689382

`A015052(A328679(n+1))*A017827(n)`
-/

namespace A330619.P6431087259826689382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A328679 (n + 1)).toNat * A017827 n

end

end A330619.P6431087259826689382

namespace A330619

/-- `A015052(A328679(n+1))*A017827(n)` -/
def P6431087259826689382.Spec : Prop :=
  ∀ n, P6431087259826689382.a n = A330619 n

end A330619

/-!
# A330620: Number of length n necklaces with entries covering an initial interval of positive integers and no adjacent entries equal.

The programs for A330620, there is no canonical definition to state claims against.
-/

/-! ## A330620.P6373304162038234928

`floor(A019536(n+1)/2)`
-/

namespace A330620.P6373304162038234928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019536 (n + 1) : ℚ) / 2⌋

end

end A330620.P6373304162038234928

/-! ## A330620.P4583421233515318683

`(A019536(n+1)-A059841(n))/2`
-/

namespace A330620.P4583421233515318683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019536 (n + 1) - A059841 n : ℚ) / 2

end

end A330620.P4583421233515318683

/-! ## A330620.P13396938392099283778

`floor(1/2*A019536(A008619(2*n)))`
-/

namespace A330620.P13396938392099283778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 2 * (A019536 (A008619 (2 * n)).toNat : ℚ)⌋

end

end A330620.P13396938392099283778

/-! ## A330620.P16743929671121898849

`floor((A326895(n+1)+A019537(n+1))/2)`
-/

namespace A330620.P16743929671121898849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326895 (n + 1) + A019537 (n + 1) : ℚ) / 2⌋

end

end A330620.P16743929671121898849

/-! ## A330620.P3883395103762864386

`floor((A326895(n+1)+A327868(n+1)+A326895(n+1))/2)`
-/

namespace A330620.P3883395103762864386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326895 (n + 1) + (A327868 (n + 1) + A326895 (n + 1)) : ℚ) / 2⌋

end

end A330620.P3883395103762864386

/-!
# A330621: Number of length n bracelets with entries covering an initial interval of positive integers and no adjacent entries equal.

The programs for A330621, there is no canonical definition to state claims against.
-/

/-! ## A330621.P7165750873789793931

`A038119(ceil(2^(n-1)))%floor((3/2+n)*2^n)`
-/

namespace A330621.P7165750873789793931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038119 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) ⌊((3 : ℚ) / 2 + (n : ℚ)) * (2 ^ n : ℚ)⌋

end

end A330621.P7165750873789793931

/-! ## A330621.P17799249171592790858

`Δ[A185712(A309670(n))]`
-/

namespace A330621.P17799249171592790858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A309670 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330621.P17799249171592790858

/-!
# A330622: Lexicographically earliest sequence of nonnegative terms such that for any n > 0 and k > 0, a(n+2*k) <> gcd(a(n), a(n+k)).

The programs for A330622, there is no canonical definition to state claims against.
-/

/-! ## A330622.P15972423445982656333

`A055640(A036378(n)*A248625(n))`
-/

namespace A330622.P15972423445982656333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A036378 n * A248625 n).toNat

end

end A330622.P15972423445982656333

/-! ## A330622.P710834821229936037

`A055640(A036378(n)*A289814(n))`
-/

namespace A330622.P710834821229936037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A036378 n * A289814 n).toNat

end

end A330622.P710834821229936037

/-! ## A330622.P12534201022416118508

`A055640(lcm(A036378(n), A289814(n)))`
-/

namespace A330622.P12534201022416118508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.lcm (A036378 n) (A289814 n))

end

end A330622.P12534201022416118508

/-! ## A330622.P2689750984249216231

`A055640(A036378(n)*A330267(n+1))`
-/

namespace A330622.P2689750984249216231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A036378 n * A330267 (n + 1)).toNat

end

end A330622.P2689750984249216231

/-! ## A330622.P16841814268012700309

`A277824(A097406(n+1))*A289814(n)`
-/

namespace A330622.P16841814268012700309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 (A097406 (n + 1)).toNat * A289814 n

end

end A330622.P16841814268012700309

/-!
# A330623: Lexicographically earliest sequence of positive terms such that for any n > 0 and k > 0, a(n+2*k) <> gcd(a(n), a(n+k)).

The programs for A330623, there is no canonical definition to state claims against.
-/

/-! ## A330623.P3375741172981071006

`A255336(∑[A221992(n+1)])/2`
-/

namespace A330623.P3375741172981071006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221992 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A330623.P3375741172981071006

/-! ## A330623.P3305124260146315749

`A004526(A255336(∑[A221992(n+1)]))`
-/

namespace A330623.P3305124260146315749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A255336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A330623.P3305124260146315749

/-! ## A330623.P9310555714560596928

`A126305(A057064(n+1)*A333486(n+1))`
-/

namespace A330623.P9310555714560596928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (A057064 (n + 1) * A333486 (n + 1)).toNat

end

end A330623.P9310555714560596928

/-! ## A330623.P3953677295486087660

`A275806(A245937(3*n+2)-A057118(n))`
-/

namespace A330623.P3953677295486087660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A245937 (3 * n + 2) - A057118 n).toNat

end

end A330623.P3953677295486087660

/-! ## A330623.P12174769310045549530

`A001222(A000005(A001602(n+1)*A014217(n)))`
-/

namespace A330623.P12174769310045549530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (A001602 (n + 1) * A014217 n).toNat).toNat

end

end A330623.P12174769310045549530

/-!
# A330624: Number of non-isomorphic series-reduced rooted trees whose leaves are sets (not necessarily disjoint) with a total of n elements.

The programs for A330624, there is no canonical definition to state claims against.
-/

/-! ## A330624.P12238396443192204081

`A132292(A295370(n+2))+1`
-/

namespace A330624.P12238396443192204081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A295370 (n + 2)).toNat + 1

end

end A330624.P12238396443192204081

/-! ## A330624.P88394556389284655

`xor(1, A273886(A001710(n+1)))`
-/

namespace A330624.P88394556389284655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A273886 (A001710 (n + 1)).toNat)

end

end A330624.P88394556389284655

/-!
# A330625: Number of series-reduced rooted trees whose leaves are sets (not necessarily disjoint) with multiset union a strongly normal multiset of size n.

The programs for A330625, there is no canonical definition to state claims against.
-/

/-! ## A330625.P2450304183589874022

`A318847(A129981(n))+A128882(n)`
-/

namespace A330625.P2450304183589874022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (A129981 n).toNat + A128882 n

end

end A330625.P2450304183589874022

/-! ## A330625.P4393404197480509966

`A361595(n)+A238509(A361595(n))`
-/

namespace A330625.P4393404197480509966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361595 n + A238509 (A361595 n).toNat

end

end A330625.P4393404197480509966

/-!
# A330626: Number of non-isomorphic series/singleton-reduced rooted trees whose leaves are sets (not necessarily disjoint) with a total of n atoms.

The programs for A330626, there is no canonical definition to state claims against.
-/

/-! ## A330626.P2451553367169281694

`A132278(A148072(n))`
-/

namespace A330626.P2451553367169281694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132278 (A148072 n).toNat

end

end A330626.P2451553367169281694

/-! ## A330626.P2375180231454309527

`A132278(A148073(n))`
-/

namespace A330626.P2375180231454309527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132278 (A148073 n).toNat

end

end A330626.P2375180231454309527

/-! ## A330626.P14184523498062902310

`A132278(A148074(n))`
-/

namespace A330626.P14184523498062902310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132278 (A148074 n).toNat

end

end A330626.P14184523498062902310

/-!
# A330628: Number of series/singleton-reduced rooted trees on strongly normal multisets of size n whose leaves are sets (not necessarily disjoint).

The programs for A330628, there is no canonical definition to state claims against.
-/

/-! ## A330628.P17251822341895279658

`A234016(∏[2*n-1/a(n-1)]+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A330628.P17251822341895279658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (2 * n : ℚ) - 1 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A330628.P17251822341895279658

/-! ## A330628.P18239178928567961973

`A331499(A243988(n))`
-/

namespace A330628.P18239178928567961973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331499 (A243988 n).toNat

end

end A330628.P18239178928567961973

/-!
# A330630: Palindromic composite numbers with palindromic composite indices (in A002808).

The programs for A330630, there is no canonical definition to state claims against.
-/

/-! ## A330630.P4773795366576246085

`∩[A002113(n+1), A002808(A035135(n+1))]`
-/

namespace A330630.P4773795366576246085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A035135 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330630.P4773795366576246085

/-! ## A330630.P5983351361069720187

`∩[A032350(n+2), A002808(A032350(n+2))]`
-/

namespace A330630.P5983351361069720187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A032350 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330630.P5983351361069720187

/-! ## A330630.P12013966206676226045

`∩[A002808(A035135(n+1)), A035135(n+3)]`
-/

namespace A330630.P12013966206676226045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A035135 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330630.P12013966206676226045

/-! ## A330630.P3925515849835121505

`∩[A056653(A032350(n+1)), A032350(n+4)]`
-/

namespace A330630.P3925515849835121505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A032350 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330630.P3925515849835121505

/-!
# A330631: a(n+1) = a(n-a(n))+1 if a(n) > a(n-1), otherwise a(n+1) = 2*a(n); a(1) = a(2) = 1.

The programs for A330631, there is no canonical definition to state claims against.
-/

/-! ## A330631.P5941966481076389753

`A061389(A008620(∑[A108411(n)]))`
-/

namespace A330631.P5941966481076389753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A330631.P5941966481076389753

/-! ## A330631.P6880751492065525487

`A061389(A074324(n*A269626(n)))`
-/

namespace A330631.P6880751492065525487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A074324 ((n : ℤ) * A269626 n).toNat).toNat

end

end A330631.P6880751492065525487

/-! ## A330631.P3522224177657137707

`A061389(A074324(n)^A269626(n))`
-/

namespace A330631.P3522224177657137707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (SequenceMachineLib.roundAway ((A074324 n : ℚ) ^ (A269626 n : ℤ))).toNat

end

end A330631.P3522224177657137707

/-! ## A330631.P8310152813902911340

`A061389(lcm(A074324(n), A269626(n)))`
-/

namespace A330631.P8310152813902911340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (Int.lcm (A074324 n) (A269626 n))

end

end A330631.P8310152813902911340

/-! ## A330631.P10093623763824998019

`A061389(C(A074324(n), A269626(n)))`
-/

namespace A330631.P10093623763824998019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (Nat.choose (A074324 n).toNat (A269626 n).toNat)

end

end A330631.P10093623763824998019

/-!
# A330632: Number of n-bead bracelets using exactly three colors with no adjacent beads having the same color.

The programs for A330632, the canonical program `A330632.P13103444434143927249` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330632 has offset 1).

The definition of A330632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330632.P13103444434143927249

`A091696(n+1)-A256217(A141310(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A330632

/-- `A091696(n+1)-A256217(A141310(n))` -/
def P13103444434143927249.Spec : Prop :=
  ∀ n, P13103444434143927249.a n = A330632 (n + 1)

theorem P13103444434143927249.correct : P13103444434143927249.Spec := by
  intro n
  simp only [A330632, Nat.add_sub_cancel]

end A330632

/-! ## A330632.P1869789823961438108

`A208539(n+1)-A010674(A028310(n))`
-/

namespace A330632.P1869789823961438108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208539 (n + 1) - A010674 (A028310 n).toNat

end

end A330632.P1869789823961438108

namespace A330632

/-- `A208539(n+1)-A010674(A028310(n))` -/
def P1869789823961438108.Spec : Prop :=
  ∀ n, P1869789823961438108.a n = A330632 (n + 1)

theorem P1869789823961438108.correct : P1869789823961438108.Spec := by
  intro n
  simp only [A330632, Nat.add_sub_cancel, A330632.P1869789823961438108.a, A330632.P13103444434143927249.a, A010674, A010674.P10505680542551797590.a, A028310, A028310.P18130301328277559831.a, A091696, A091696.P12943437932525177728.a, A141310, A141310.P2179789103957121271.a, A208539, A208539.P8659955523163642094.a, A256217, A256217.P4640912278790756071.a, A000011, A000011.P276434732339544012.a, A056342, A056342.P16520513500978853199.a, A256216, A256216.P6411215166490644162.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000029, A000029.P13945956715463538310.a, A053656, A053656.P15777476116109761211.a, A016116, A016116.P661627231399665482.a, A029744, A029744.P1115822501332250061.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A059076, A059076.P1559801332482280449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A330632

/-! ## A330632.P12945106160437083001

`A208539(n+1)-A010674(A105343(n))`
-/

namespace A330632.P12945106160437083001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208539 (n + 1) - A010674 (A105343 n).toNat

end

end A330632.P12945106160437083001

namespace A330632

/-- `A208539(n+1)-A010674(A105343(n))` -/
def P12945106160437083001.Spec : Prop :=
  ∀ n, P12945106160437083001.a n = A330632 (n + 1)

end A330632

/-! ## A330632.P9267556194423705904

`A208539(n+1)-A010674(A238531(2*n))`
-/

namespace A330632.P9267556194423705904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208539 (n + 1) - A010674 (A238531 (2 * n)).toNat

end

end A330632.P9267556194423705904

namespace A330632

/-- `A208539(n+1)-A010674(A238531(2*n))` -/
def P9267556194423705904.Spec : Prop :=
  ∀ n, P9267556194423705904.a n = A330632 (n + 1)

end A330632

/-! ## A330632.P14683869191492793977

`A330341(A133263(n)+1)`
-/

namespace A330632.P14683869191492793977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330341 (A133263 n + 1).toNat

end

end A330632.P14683869191492793977

namespace A330632

/-- `A330341(A133263(n)+1)` -/
def P14683869191492793977.Spec : Prop :=
  ∀ n, P14683869191492793977.a n = A330632 (n + 1)

end A330632

/-! ## A330632.P5006221106730726224

`A330341(∑[A233583(n+1)])`
-/

namespace A330632.P5006221106730726224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330341 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330632.P5006221106730726224

namespace A330632

/-- `A330341(∑[A233583(n+1)])` -/
def P5006221106730726224.Spec : Prop :=
  ∀ n, P5006221106730726224.a n = A330632 (n + 1)

end A330632

/-! ## A330632.P1390360092228208887

`A330341(A238531(n+1)+1)`
-/

namespace A330632.P1390360092228208887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330341 (A238531 (n + 1) + 1).toNat

end

end A330632.P1390360092228208887

namespace A330632

/-- `A330341(A238531(n+1)+1)` -/
def P1390360092228208887.Spec : Prop :=
  ∀ n, P1390360092228208887.a n = A330632 (n + 1)

end A330632

/-! ## A330632.P6465034598769152250

`A330341(∑[A131830(A000124(n))])`
-/

namespace A330632.P6465034598769152250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330341 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330632.P6465034598769152250

namespace A330632

/-- `A330341(∑[A131830(A000124(n))])` -/
def P6465034598769152250.Spec : Prop :=
  ∀ n, P6465034598769152250.a n = A330632 (n + 1)

end A330632

/-! ## A330632.P16589685519864127850

`A330341(A105343(n)+A008619(n))`
-/

namespace A330632.P16589685519864127850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330341 (A105343 n + A008619 n).toNat

end

end A330632.P16589685519864127850

namespace A330632

/-- `A330341(A105343(n)+A008619(n))` -/
def P16589685519864127850.Spec : Prop :=
  ∀ n, P16589685519864127850.a n = A330632 (n + 1)

end A330632

/-!
# A330633: The concatenation of the products of every pair of consecutive digits of n (with a(n) = 0 for 0 <= n <= 9).

The programs for A330633, there is no canonical definition to state claims against.
-/

/-! ## A330633.P16886623908560374389

`xor(A035930(n)*A055641(n), A347470(n))`
-/

namespace A330633.P16886623908560374389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035930 n * A055641 n) (A347470 n)

end

end A330633.P16886623908560374389

/-!
# A330636: Lexicographically earliest sequence of positive terms such that for any n > 0 and k > 0, a(n+k) <> floor(k/a(n)).

The programs for A330636, there is no canonical definition to state claims against.
-/

/-! ## A330636.P4147234338364664599

`A001222(A184187(n+1)+A047968(3*n+2))`
-/

namespace A330636.P4147234338364664599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A184187 (n + 1) + A047968 (3 * n + 2)).toNat

end

end A330636.P4147234338364664599

/-! ## A330636.P3397745789187343835

`A053610(A007961(n+2)*A098093(n)-1)`
-/

namespace A330636.P3397745789187343835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (A007961 (n + 2) * A098093 n - 1).toNat

end

end A330636.P3397745789187343835

/-! ## A330636.P966216849409231289

`A323014(∑[A345406(n+1)+A323018(2*(n+1))]+4)`
-/

namespace A330636.P966216849409231289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345406 (n + 1) + A323018 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A330636.P966216849409231289

/-!
# A330637: Number of n-team football tournament outcomes that can be obtained in a single way. Each team plays each other team once, where 3 points are awarded to the winning team and 1 to each team in the case of a draw.

The programs for A330637, there is no canonical definition to state claims against.
-/

/-! ## A330637.P9906742891176869400

`A034258(A001470(n)+A001045(2*(n+1)))`
-/

namespace A330637.P9906742891176869400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034258 (A001470 n + A001045 (2 * (n + 1))).toNat

end

end A330637.P9906742891176869400

/-! ## A330637.P6195179569670101838

`A095396(2*A289717(n))`
-/

namespace A330637.P6195179569670101838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095396 (2 * A289717 n).toNat

end

end A330637.P6195179569670101838

/-!
# A330638: a(n) = P(n)*a(n-1) + a(n-2), with a(0) = 0, a(1) = 1 where P(n) is the n-th Pell number.

The programs for A330638, the canonical program `A330638.P2324242124826982898` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330638 has offset 0).

The definition of A330638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330638.P2324242124826982898

`A000129(n)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330638

/-- `A000129(n)*a(n-1)+a(n-2)` -/
def P2324242124826982898.Spec : Prop :=
  ∀ n, P2324242124826982898.a n = A330638 n

theorem P2324242124826982898.correct : P2324242124826982898.Spec := by
  intro n
  simp only [A330638]

end A330638

/-! ## A330638.P517160582447543958

`A236477(n*a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A330638.P517160582447543958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A236477 ((n : ℤ) * a (n - 1)).toNat

end

end A330638.P517160582447543958

namespace A330638

/-- `A236477(n*a(n-1))` -/
def P517160582447543958.Spec : Prop :=
  ∀ n, P517160582447543958.a n = A330638 n

end A330638

/-!
# A330639: A "Fractal Jump Sequence" (FJS) that reappears twice (itself and itself*2; see the Comments section).

The programs for A330639, there is no canonical definition to state claims against.
-/

/-! ## A330639.P16637189167455849494

`gcd(32, A277906(A025626(n+1)))`
-/

namespace A330639.P16637189167455849494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 32 (A277906 (A025626 (n + 1)).toNat)

end

end A330639.P16637189167455849494

/-! ## A330639.P5917710782815098709

`A324538(A000079(n))^A061395(A233342(n+1))`
-/

namespace A330639.P5917710782815098709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324538 (A000079 n).toNat : ℚ) ^ (A061395 (A233342 (n + 1)).toNat : ℤ)

end

end A330639.P5917710782815098709

/-! ## A330639.P9940446384411195253

`A137688(n)/A322318(A025632(n+1))`
-/

namespace A330639.P9940446384411195253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) / (A322318 (A025632 (n + 1)).toNat : ℚ)

end

end A330639.P9940446384411195253

/-! ## A330639.P1779570677594149803

`A006530(2^(n+1))^A061395(A233342(n+1))`
-/

namespace A330639.P1779570677594149803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (2 ^ (n + 1)) : ℚ) ^ (A061395 (A233342 (n + 1)).toNat : ℤ)

end

end A330639.P1779570677594149803

/-! ## A330639.P12221554599182889322

`A020639(A107659(n))^A061395(A233342(n+1))`
-/

namespace A330639.P12221554599182889322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A107659 n).toNat : ℚ) ^ (A061395 (A233342 (n + 1)).toNat : ℤ)

end

end A330639.P12221554599182889322

/-!
# A330640: a(n) is the number of partitions of n with Durfee square of size <= 2.

The programs for A330640, the canonical program `A330640.P1733543479566854379` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330640 has offset 0).

The definition of A330640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330640.P1733543479566854379

`ogf((1-x-x^2+2x^3-x^5+x^6)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330640

/-- `ogf((1-x-x^2+2x^3-x^5+x^6)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P1733543479566854379.Spec : Prop :=
  ∀ n, P1733543479566854379.a n = A330640 n

theorem P1733543479566854379.correct : P1733543479566854379.Spec := by
  intro n
  simp only [A330640]

end A330640

/-! ## A330640.P4424118573335315676

`∑[∑[floor(n/(a(n-1)+2))-1]]` with `a(0)=1`
-/

namespace A330640.P4424118573335315676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌊(n : ℚ) / (f2 (n - 1) + 2 : ℚ)⌋ - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330640.P4424118573335315676

namespace A330640

/-- `∑[∑[floor(n/(a(n-1)+2))-1]]` -/
def P4424118573335315676.Spec : Prop :=
  ∀ n, P4424118573335315676.a n = A330640 n

end A330640

/-! ## A330640.P3395590838928141950

`∑[A134519(n+1)-(char[1]+n)]`
-/

namespace A330640.P3395590838928141950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1) - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330640.P3395590838928141950

namespace A330640

/-- `∑[A134519(n+1)-(char[1]+n)]` -/
def P3395590838928141950.Spec : Prop :=
  ∀ n, P3395590838928141950.a n = A330640 n

end A330640

/-! ## A330640.P2080321902400045321

`∑[A089071(A004526(n)+1)]-n`
-/

namespace A330640.P2080321902400045321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A330640.P2080321902400045321

namespace A330640

/-- `∑[A089071(A004526(n)+1)]-n` -/
def P2080321902400045321.Spec : Prop :=
  ∀ n, P2080321902400045321.a n = A330640 n

end A330640

/-! ## A330640.P14645157164963906375

`A140106(n+1)+∑[A008805(n)-n]`
-/

namespace A330640.P14645157164963906375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330640.P14645157164963906375

namespace A330640

/-- `A140106(n+1)+∑[A008805(n)-n]` -/
def P14645157164963906375.Spec : Prop :=
  ∀ n, P14645157164963906375.a n = A330640 n

end A330640

/-! ## A330640.P1392286748188489572

`∑[A016028(A008619(n)+1)]-(2*n+1)`
-/

namespace A330640.P1392286748188489572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (A008619 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A330640.P1392286748188489572

namespace A330640

/-- `∑[A016028(A008619(n)+1)]-(2*n+1)` -/
def P1392286748188489572.Spec : Prop :=
  ∀ n, P1392286748188489572.a n = A330640 n

end A330640

/-! ## A330640.P4444467392977783750

`A055804(n+4)+A004526(n)-A000332(A004526(n))`
-/

namespace A330640.P4444467392977783750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055804 (n + 4) + (A004526 n - A000332 (A004526 n).toNat)

end

end A330640.P4444467392977783750

namespace A330640

/-- `A055804(n+4)+A004526(n)-A000332(A004526(n))` -/
def P4444467392977783750.Spec : Prop :=
  ∀ n, P4444467392977783750.a n = A330640 n

end A330640

/-! ## A330640.P14814383197216765725

`A277619(n+1)+n-A008747(n)`
-/

namespace A330640.P14814383197216765725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277619 (n + 1) + ((n : ℤ) - A008747 n)

end

end A330640.P14814383197216765725

namespace A330640

/-- `A277619(n+1)+n-A008747(n)` -/
def P14814383197216765725.Spec : Prop :=
  ∀ n, P14814383197216765725.a n = A330640 n

end A330640

/-! ## A330640.P2550680138840812145

`∑[A089071(Δ[A002620(n+1)])]-n`
-/

namespace A330640.P2550680138840812145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A330640.P2550680138840812145

namespace A330640

/-- `∑[A089071(Δ[A002620(n+1)])]-n` -/
def P2550680138840812145.Spec : Prop :=
  ∀ n, P2550680138840812145.a n = A330640 n

end A330640

/-! ## A330640.P6995001909018900014

`A267528(n+1)+∑[A008805(n)-(n+1)]`
-/

namespace A330640.P6995001909018900014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330640.P6995001909018900014

namespace A330640

/-- `A267528(n+1)+∑[A008805(n)-(n+1)]` -/
def P6995001909018900014.Spec : Prop :=
  ∀ n, P6995001909018900014.a n = A330640 n

end A330640

/-! ## A330640.P927942466118546633

`A347586(2*n)-A008763(n+1)`
-/

namespace A330640.P927942466118546633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347586 (2 * n) - A008763 (n + 1)

end

end A330640.P927942466118546633

namespace A330640

/-- `A347586(2*n)-A008763(n+1)` -/
def P927942466118546633.Spec : Prop :=
  ∀ n, P927942466118546633.a n = A330640 n

end A330640

/-! ## A330640.P828783199428723956

`A115720(A327672(n)+2)+n`
-/

namespace A330640.P828783199428723956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (A327672 n + 2).toNat + (n : ℤ)

end

end A330640.P828783199428723956

namespace A330640

/-- `A115720(A327672(n)+2)+n` -/
def P828783199428723956.Spec : Prop :=
  ∀ n, P828783199428723956.a n = A330640 n

end A330640

/-!
# A330641: a(n) is the number of partitions of n with Durfee square of size <= 3.

The programs for A330641, the canonical program `A330641.P12975059765905777203` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330641 has offset 0).

The definition of A330641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330641.P12975059765905777203

`ogf((1-x-x^2+2x^4+x^5-2x^6-x^7+x^8+x^9-x^11+x^12)/(1-2x-x^2+2x^3+3x^4-6x^6+3x^8+2x^9-x^10-2x^11+x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330641

/-- `ogf((1-x-x^2+2x^4+x^5-2x^6-x^7+x^8+x^9-x^11+x^12)/(1-2x-x^2+2x^3+3x^4-6x^6+3x^8+2x^9-x^10-2x^11+x^12))` -/
def P12975059765905777203.Spec : Prop :=
  ∀ n, P12975059765905777203.a n = A330641 n

theorem P12975059765905777203.correct : P12975059765905777203.Spec := by
  intro n
  simp only [A330641]

end A330641

/-! ## A330641.P8419450177708598021

`A266773(n)-A351870(A026811(n))`
-/

namespace A330641.P8419450177708598021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266773 n - A351870 (A026811 n).toNat

end

end A330641.P8419450177708598021

namespace A330641

/-- `A266773(n)-A351870(A026811(n))` -/
def P8419450177708598021.Spec : Prop :=
  ∀ n, P8419450177708598021.a n = A330641 n

end A330641

/-! ## A330641.P8151317636395913717

`∑[A118759(A037145(n)+A026813(n))]`
-/

namespace A330641.P8151317636395913717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A037145 n + A026813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330641.P8151317636395913717

namespace A330641

/-- `∑[A118759(A037145(n)+A026813(n))]` -/
def P8151317636395913717.Spec : Prop :=
  ∀ n, P8151317636395913717.a n = A330641 n

end A330641

/-! ## A330641.P10088208946958800594

`A000041(n)-A033665(A180215(n+1))`
-/

namespace A330641.P10088208946958800594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A033665 (A180215 (n + 1)).toNat

end

end A330641.P10088208946958800594

namespace A330641

/-- `A000041(n)-A033665(A180215(n+1))` -/
def P10088208946958800594.Spec : Prop :=
  ∀ n, P10088208946958800594.a n = A330641 n

end A330641

/-! ## A330641.P475386649316822502

`A266773(n)-A351870(A288166(4*n))`
-/

namespace A330641.P475386649316822502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266773 n - A351870 (A288166 (4 * n)).toNat

end

end A330641.P475386649316822502

namespace A330641

/-- `A266773(n)-A351870(A288166(4*n))` -/
def P475386649316822502.Spec : Prop :=
  ∀ n, P475386649316822502.a n = A330641 n

end A330641

/-!
# A330642: a(n) is the number of partitions of n with Durfee square of size <= 4.

The programs for A330642, there is no canonical definition to state claims against.
-/

/-! ## A330642.P6904231617408479555

`A092885(n)-A167688(A165238(n+1))`
-/

namespace A330642.P6904231617408479555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092885 n - A167688 (A165238 (n + 1)).toNat

end

end A330642.P6904231617408479555

/-! ## A330642.P11653613377000149531

`∑[A002865(n)-A102683(A185037(n)²)]`
-/

namespace A330642.P11653613377000149531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A102683 (A185037 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330642.P11653613377000149531

/-! ## A330642.P5133870868262367332

`A133041(n)-lt[A002865(n), A239050(3*n+4)]`
-/

namespace A330642.P5133870868262367332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A330642.P5133870868262367332

/-!
# A330643: a(n) is the number of partitions of n with Durfee square of size <= 5.

The programs for A330643, there is no canonical definition to state claims against.
-/

/-! ## A330643.P4648526923154238813

`∑[A002865(n)-A185284(A109613(n))]`
-/

namespace A330643.P4648526923154238813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A185284 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330643.P4648526923154238813

/-! ## A330643.P5177556941289701620

`A000041(n)-A268318(Δ[A034512(n+1)])`
-/

namespace A330643.P5177556941289701620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A268318 (f1 (n + 1) - f1 n).toNat

end

end A330643.P5177556941289701620

/-! ## A330643.P889175102772115949

`A000041(n)-A063524(A031285(n))`
-/

namespace A330643.P889175102772115949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A063524 (A031285 n).toNat

end

end A330643.P889175102772115949

/-! ## A330643.P885325368247112124

`A000041(n)-A185284(A263141(n))`
-/

namespace A330643.P885325368247112124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A185284 (A263141 n).toNat

end

end A330643.P885325368247112124

/-! ## A330643.P7209158323073428843

`A000041(n)-A185284(A000700(n+2))`
-/

namespace A330643.P7209158323073428843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A185284 (A000700 (n + 2)).toNat

end

end A330643.P7209158323073428843

/-!
# A330644: Number of non-self-conjugate partitions of n.

The programs for A330644, there is no canonical definition to state claims against.
-/

/-! ## A330644.P2082379710778457531

`2*A000701(n)`
-/

namespace A330644.P2082379710778457531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000701 n

end

end A330644.P2082379710778457531

/-! ## A330644.P12043652864963264590

`A000041(n)-A000700(n)`
-/

namespace A330644.P12043652864963264590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000700 n

end

end A330644.P12043652864963264590

/-! ## A330644.P9500800869680776240

`A331848(n)+A047967(n)`
-/

namespace A330644.P9500800869680776240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331848 n + A047967 n

end

end A330644.P9500800869680776240

/-! ## A330644.P17359833735266393992

`A000041(n)-abs(A081362(n))`
-/

namespace A330644.P17359833735266393992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - |A081362 n|

end

end A330644.P17359833735266393992

/-! ## A330644.P16468684726181595081

`∑[A002865(n)]-A000700(n)`
-/

namespace A330644.P16468684726181595081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000700 n

end

end A330644.P16468684726181595081

/-! ## A330644.P8889890201023614389

`A000065(n)+1-A000700(n)`
-/

namespace A330644.P8889890201023614389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A000700 n)

end

end A330644.P8889890201023614389

/-! ## A330644.P7098521247127898294

`2*(A000041(n)-A046682(n))`
-/

namespace A330644.P7098521247127898294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000041 n - A046682 n)

end

end A330644.P7098521247127898294

/-! ## A330644.P5076503125919251430

`2*(A046682(n)-A000700(n))`
-/

namespace A330644.P5076503125919251430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046682 n - A000700 n)

end

end A330644.P5076503125919251430

/-! ## A330644.P5766342218252645233

`∑[A002865(n)]-abs(A081362(n))`
-/

namespace A330644.P5766342218252645233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - |A081362 n|

end

end A330644.P5766342218252645233

/-! ## A330644.P18205390976950850020

`2*(∑[A002865(n)]-A046682(n))`
-/

namespace A330644.P18205390976950850020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A046682 n)

end

end A330644.P18205390976950850020

/-! ## A330644.P10037837878732497559

`A000701(n)+A000701(A005843(n)/2)`
-/

namespace A330644.P10037837878732497559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + A000701 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat

end

end A330644.P10037837878732497559

/-! ## A330644.P11367306263510980748

`A000701(n)+A000701(A005843(n)-n)`
-/

namespace A330644.P11367306263510980748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + A000701 (A005843 n - (n : ℤ)).toNat

end

end A330644.P11367306263510980748

/-! ## A330644.P13273724601439874346

`A000837(n)+A018783(n)-A000700(n)`
-/

namespace A330644.P13273724601439874346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A000700 n)

end

end A330644.P13273724601439874346

/-! ## A330644.P18355499161263502342

`A000701(n)+A046682(n)-A000700(n)`
-/

namespace A330644.P18355499161263502342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A046682 n - A000700 n)

end

end A330644.P18355499161263502342

/-! ## A330644.P8212878460886588928

`A000009(n)+A047967(n)-A000700(n)`
-/

namespace A330644.P8212878460886588928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A000700 n)

end

end A330644.P8212878460886588928

/-! ## A330644.P8643700948085564217

`A027187(n)+A027193(n)-A000700(n)`
-/

namespace A330644.P8643700948085564217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A000700 n)

end

end A330644.P8643700948085564217

/-! ## A330644.P5379425042549110007

`A124228(n)+A124227(n)-A000700(n)`
-/

namespace A330644.P5379425042549110007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124228 n + A124227 n - A000700 n

end

end A330644.P5379425042549110007

/-! ## A330644.P16951760233446607118

`A139582(n)-2*A046682(n)`
-/

namespace A330644.P16951760233446607118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n - 2 * A046682 n

end

end A330644.P16951760233446607118

/-! ## A330644.P6370017827865469668

`A015128(n)-(A230441(n)+A000700(n))`
-/

namespace A330644.P6370017827865469668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - (A230441 n + A000700 n)

end

end A330644.P6370017827865469668

/-! ## A330644.P11985939702919907033

`A035363(2*n)-A000700(n)`
-/

namespace A330644.P11985939702919907033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A000700 n

end

end A330644.P11985939702919907033

/-!
# A330645: Number of Young tableaux with n cells whose shape is asymmetric.

The programs for A330645, there is no canonical definition to state claims against.
-/

/-! ## A330645.P2127649756089303696

`2*A067142(n)`
-/

namespace A330645.P2127649756089303696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067142 n

end

end A330645.P2127649756089303696

/-! ## A330645.P2333232089034884484

`A000085(n)-A067136(n)`
-/

namespace A330645.P2333232089034884484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A067136 n

end

end A330645.P2333232089034884484

/-! ## A330645.P9947230643458490721

`A099020(∑[n])-A067136(n)`
-/

namespace A330645.P9947230643458490721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) - A067136 n

end

end A330645.P9947230643458490721

/-! ## A330645.P12574597839641225661

`A182222(∑[n])-A067136(n)`
-/

namespace A330645.P12574597839641225661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (∑ j ∈ Finset.range (n + 1), f1 j) - A067136 n

end

end A330645.P12574597839641225661

/-! ## A330645.P8700471806187728057

`A239144(∑[n])-A067136(n)`
-/

namespace A330645.P8700471806187728057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 (∑ j ∈ Finset.range (n + 1), f1 j) - A067136 n

end

end A330645.P8700471806187728057

/-!
# A330649: Expansion of e.g.f. Product_{k>=1} 1 / (1 - x^k/(k!*(1 - x)^k)).

The programs for A330649, there is no canonical definition to state claims against.
-/

/-! ## A330649.P13860291818410717976

`A306082(n)+A004526(A306080(n))`
-/

namespace A330649.P13860291818410717976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306082 n + A004526 (A306080 n).toNat

end

end A330649.P13860291818410717976

/-! ## A330649.P14272625390409860991

`A130509(A292810(n+1)+A212411(n))`
-/

namespace A330649.P14272625390409860991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (A292810 (n + 1) + A212411 n).toNat

end

end A330649.P14272625390409860991

/-!
# A330651: a(n) = n^4 + 3*n^3 + 2*n^2 - 2*n.

The programs for A330651, the canonical program `A330651.P7626992677465752536` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330651 has offset 0).

The definition of A330651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+3*n^3+2*n²-2*n` (program `A330651.P7626992677465752536`, by `A330651.P7626992677465752536.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330651.P16908467175139303085

`(((n+3)*n+2)*n-2)*n`
-/

namespace A330651.P16908467175139303085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 3) * n + 2) * n : ℤ) - 2) * (n : ℤ)

end

end A330651.P16908467175139303085

namespace A330651

/-- `(((n+3)*n+2)*n-2)*n` -/
def P16908467175139303085.Spec : Prop :=
  ∀ n, P16908467175139303085.a n = A330651 n

theorem P16908467175139303085.correct : P16908467175139303085.Spec := by
  intro n
  simp only [A330651, Nat.add_sub_cancel, A330651.P16908467175139303085.a, A330651.P7626992677465752536.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A330651

/-! ## A330651.P12350684302884767596

`ogf((4x+24x^2-6x^3+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A330651.P12350684302884767596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 24, -6, 2] [1, -5, 10, -10, 5, -1] n

end

end A330651.P12350684302884767596

namespace A330651

/-- `ogf((4x+24x^2-6x^3+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12350684302884767596.Spec : Prop :=
  ∀ n, P12350684302884767596.a n = A330651 n

end A330651

/-! ## A330651.P7626992677465752536

`n^4+3*n^3+2*n²-2*n`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A330651

/-- `n^4+3*n^3+2*n²-2*n` -/
def P7626992677465752536.Spec : Prop :=
  ∀ n, P7626992677465752536.a n = A330651 n

theorem P7626992677465752536.correct : P7626992677465752536.Spec := by
  intro n
  simp only [A330651]

end A330651

/-! ## A330651.P3962058213072169849

`lcm((-(n+1))^3+n+3, 2*n)`
-/

namespace A330651.P3962058213072169849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-(n + 1 : ℤ)) ^ 3 + (n + 3 : ℤ)) (2 * n : ℤ)

end

end A330651.P3962058213072169849

namespace A330651

/-- `lcm((-(n+1))^3+n+3, 2*n)` -/
def P3962058213072169849.Spec : Prop :=
  ∀ n, (P3962058213072169849.a n : ℤ) = A330651 n

end A330651

/-! ## A330651.P3252236008532642047

`2*n*Δ[C(∑[n], 2)]-2*n`
-/

namespace A330651.P3252236008532642047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (2 * n : ℤ)

end

end A330651.P3252236008532642047

namespace A330651

/-- `2*n*Δ[C(∑[n], 2)]-2*n` -/
def P3252236008532642047.Spec : Prop :=
  ∀ n, P3252236008532642047.a n = A330651 n

end A330651

/-!
# A330653: The prime numbers whose digit sum, adjacent digit sum concatenation, and adjacent digit difference concatenation are also primes.

The programs for A330653, there is no canonical definition to state claims against.
-/

/-! ## A330653.P17400141334414028714

`p?[∑[A075700(A000070(n))]]`
-/

namespace A330653.P17400141334414028714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075700 (A000070 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330653.P17400141334414028714

/-! ## A330653.P347665742248026375

`∩[A088134(n+1), A087593(n)]`
-/

namespace A330653.P347665742248026375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330653.P347665742248026375

/-!
# A330654: Number of series/singleton-reduced rooted trees on normal multisets of size n.

The programs for A330654, there is no canonical definition to state claims against.
-/

/-! ## A330654.P18360748748796098085

`A316651(A086436(5^n))`
-/

namespace A330654.P18360748748796098085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316651 (A086436 (5 ^ n)).toNat

end

end A330654.P18360748748796098085

/-! ## A330654.P6423745705815301292

`A052382(A383171(n)+A318762(n+1))`
-/

namespace A330654.P6423745705815301292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A383171 n + A318762 (n + 1)).toNat

end

end A330654.P6423745705815301292

/-!
# A330655: Number of balanced reduced multisystems of weight n whose atoms cover an initial interval of positive integers.

The programs for A330655, there is no canonical definition to state claims against.
-/

/-! ## A330655.P12012402055338547354

`A168315(A283255(n))*A356111(n)`
-/

namespace A330655.P12012402055338547354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (A283255 n).toNat * A356111 n

end

end A330655.P12012402055338547354

/-! ## A330655.P6962128304438565125

`A141760(∑[n])*A235963(A001833(n))`
-/

namespace A330655.P6962128304438565125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (∑ j ∈ Finset.range (n + 1), f1 j) * A235963 (A001833 n).toNat

end

end A330655.P6962128304438565125

/-!
# A330657: Number of ways the n-th pentagonal number A000326(n) can be written as the difference of two positive pentagonal numbers.

The programs for A330657, there is no canonical definition to state claims against.
-/

/-! ## A330657.P17555196918847161011

`A333815(A000326(n+1))-1`
-/

namespace A330657.P17555196918847161011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333815 (A000326 (n + 1)).toNat - 1

end

end A330657.P17555196918847161011

/-! ## A330657.P3566349293199674969

`A140811(A299283(2*n))%A333815(A000326(n+1))`
-/

namespace A330657.P3566349293199674969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140811 (A299283 (2 * n)).toNat) (A333815 (A000326 (n + 1)).toNat)

end

end A330657.P3566349293199674969

/-! ## A330657.P14625312156443799226

`A000040(A075257(2*n+5))%A333815(A000326(n+1))`
-/

namespace A330657.P14625312156443799226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A075257 (2 * n + 5)).toNat) (A333815 (A000326 (n + 1)).toNat)

end

end A330657.P14625312156443799226

/-! ## A330657.P13083514783461975070

`A140811(A111163(n+1))%A333815(A000326(n+1))`
-/

namespace A330657.P13083514783461975070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140811 (A111163 (n + 1)).toNat) (A333815 (A000326 (n + 1)).toNat)

end

end A330657.P13083514783461975070

/-! ## A330657.P13471974659285879983

`A140811(A209485(3*(n+1)))%A333815(A000326(n+1))`
-/

namespace A330657.P13471974659285879983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140811 (A209485 (3 * (n + 1))).toNat) (A333815 (A000326 (n + 1)).toNat)

end

end A330657.P13471974659285879983

/-!
# A330658: Number of ways to place zero or more dominoes on an n X n grid with an equal number of horizontal and vertical dominoes.

The programs for A330658, there is no canonical definition to state claims against.
-/

/-! ## A330658.P13295505730882143565

`A210435((n-2)*2*(n+1)²*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A330658.P13295505730882143565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A210435 (((n : ℤ) - 2) * ((2 * (n + 1) ^ 2 : ℤ) * a (n - 1))).toNat

end

end A330658.P13295505730882143565

/-!
# A330659: The number of free polyiamonds with n cells on an order-7 triangular tiling of the hyperbolic plane.

The programs for A330659, there is no canonical definition to state claims against.
-/

/-! ## A330659.P13136724373617510654

`A197459(A250264(n))`
-/

namespace A330659.P13136724373617510654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197459 (A250264 n).toNat

end

end A330659.P13136724373617510654

/-! ## A330659.P13060983493852227729

`A197459((n-1)^A191004(n+4))`
-/

namespace A330659.P13060983493852227729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197459 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A191004 (n + 4) : ℤ))).toNat

end

end A330659.P13060983493852227729

/-! ## A330659.P8685026301198757851

`A197459(round((n+4)²/20))%A093703(3*(n+1))`
-/

namespace A330659.P8685026301198757851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197459 (SequenceMachineLib.roundAway (((n + 4) ^ 2 : ℚ) / 20)).toNat) (A093703 (3 * (n + 1)))

end

end A330659.P8685026301198757851

/-! ## A330659.P14742501051997928824

`A197459((n-1)*a(floor(A020639(n+1)/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A330659.P14742501051997928824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A197459 (((n : ℤ) - 1) * a ⌊(A020639 (n + 1) : ℚ) / 2⌋.toNat).toNat

end

end A330659.P14742501051997928824

/-! ## A330659.P9520240820859593849

`round(A319628(n+2)/3)`
-/

namespace A330659.P9520240820859593849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319628 (n + 2) : ℚ) / 3)

end

end A330659.P9520240820859593849

/-!
# A330660: Triangle read by rows: T(n,k) is the number of polygons formed by connecting the vertices of a regular {2*n+1}-gon such that they make k turns around the center point.

The programs for A330660, there is no canonical definition to state claims against.
-/

/-! ## A330660.P9299186217690689424

`and(record[A321678(n)], A129436(n+1))`
-/

namespace A330660.P9299186217690689424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A129436 (n + 1))

end

end A330660.P9299186217690689424

/-! ## A330660.P3207758754222816116

`A290054(A030186(n*A138107(n)))`
-/

namespace A330660.P3207758754222816116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A030186 ((n : ℤ) * A138107 n).toNat).toNat

end

end A330660.P3207758754222816116

/-! ## A330660.P8882456636220718605

`A290054(A030186(n*A290054(n)))`
-/

namespace A330660.P8882456636220718605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A030186 ((n : ℤ) * A290054 n).toNat).toNat

end

end A330660.P8882456636220718605

/-!
# A330661: T(n,k) is the index within the partitions of n in canonical ordering of the k-th partition whose parts differ pairwise by at most one.

The programs for A330661, there is no canonical definition to state claims against.
-/

/-! ## A330661.P12568738645250415630

`A026820(n+1)+A024360(A061600(n))`
-/

namespace A330661.P12568738645250415630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1) + A024360 (A061600 n).toNat

end

end A330661.P12568738645250415630

/-! ## A330661.P8952972460935171596

`A213008(n+1)+A024360(A061600(n))`
-/

namespace A330661.P8952972460935171596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213008 (n + 1) + A024360 (A061600 n).toNat

end

end A330661.P8952972460935171596

/-! ## A330661.P5964106242183892623

`A215520(n+1)+A024360(A061600(n))`
-/

namespace A330661.P5964106242183892623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215520 (n + 1) + A024360 (A061600 n).toNat

end

end A330661.P5964106242183892623

/-! ## A330661.P12338055840241505870

`A269166(A063008(2*(n+1)))+A058400(A038722(n+1))`
-/

namespace A330661.P12338055840241505870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A063008 (2 * (n + 1))).toNat + A058400 (A038722 (n + 1)).toNat

end

end A330661.P12338055840241505870

/-! ## A330661.P13672887555725412271

`A269166(A063008(2*(n+1)))+A058400(A061579(n)+1)`
-/

namespace A330661.P13672887555725412271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A063008 (2 * (n + 1))).toNat + A058400 (A061579 n + 1).toNat

end

end A330661.P13672887555725412271

/-!
# A330663: Number of non-isomorphic balanced reduced multisystems of weight n and maximum depth.

The programs for A330663, there is no canonical definition to state claims against.
-/

/-! ## A330663.P1017949912212245737

`A025797(3*A148210(n))`
-/

namespace A330663.P1017949912212245737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025797 (3 * A148210 n).toNat

end

end A330663.P1017949912212245737

/-! ## A330663.P2310741576749661143

`A025797(A274479(n+1)+2)`
-/

namespace A330663.P2310741576749661143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025797 (A274479 (n + 1) + 2).toNat

end

end A330663.P2310741576749661143

/-! ## A330663.P14598074611035195707

`A241760(A241769(n+1))+∏[A241761(n)]`
-/

namespace A330663.P14598074611035195707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241760 (A241769 (n + 1)).toNat + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330663.P14598074611035195707

/-!
# A330665: Number of balanced reduced multisystems of maximal depth whose atoms are the prime indices of n.

The programs for A330665, there is no canonical definition to state claims against.
-/

/-! ## A330665.P16327118024326631642

`A330728(A181819(n+1))`
-/

namespace A330665.P16327118024326631642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330728 (A181819 (n + 1)).toNat

end

end A330665.P16327118024326631642

/-! ## A330665.P14047564454613809848

`A317145(n+1)+A115981(A001222(n+1))`
-/

namespace A330665.P14047564454613809848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (n + 1) + A115981 (A001222 (n + 1)).toNat

end

end A330665.P14047564454613809848

/-! ## A330665.P220229755194688663

`A320105(A354091(n+1))+A275305(A105560(n+1))`
-/

namespace A330665.P220229755194688663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A354091 (n + 1)).toNat + A275305 (A105560 (n + 1)).toNat

end

end A330665.P220229755194688663

/-! ## A330665.P16413224707138897302

`A320105(A357852(n+1))+A275305(A105560(n+1))`
-/

namespace A330665.P16413224707138897302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A357852 (n + 1)).toNat + A275305 (A105560 (n + 1)).toNat

end

end A330665.P16413224707138897302

/-! ## A330665.P7005888420180247194

`A320105(A354091(n+1))+A252736(A317145(n+1))`
-/

namespace A330665.P7005888420180247194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A354091 (n + 1)).toNat + A252736 (A317145 (n + 1)).toNat

end

end A330665.P7005888420180247194

/-!
# A330667: Irregular triangle read by rows where T(n,k) is the number of balanced reduced multisystems of depth k whose atoms are the prime indices of n.

The programs for A330667, there is no canonical definition to state claims against.
-/

/-! ## A330667.P13608692423855065799

`lcm(A010892(A299264(n)), A119963(n))`
-/

namespace A330667.P13608692423855065799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (A299264 n).toNat) (A119963 n)

end

end A330667.P13608692423855065799

/-! ## A330667.P9940839422742540126

`A054868(and(A005851(n+6), A095375(n+1)))`
-/

namespace A330667.P9940839422742540126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (Int.land (A005851 (n + 6)) (A095375 (n + 1))).toNat

end

end A330667.P9940839422742540126

/-! ## A330667.P11138306103583919593

`A363131(3*n+5)+A334460(A122332(3*n+4))`
-/

namespace A330667.P11138306103583919593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363131 (3 * n + 5) + A334460 (A122332 (3 * n + 4)).toNat

end

end A330667.P11138306103583919593

/-! ## A330667.P9729232416480845533

`A025435(A032766(A123274(n)²))`
-/

namespace A330667.P9729232416480845533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A032766 (A123274 n ^ 2).toNat).toNat

end

end A330667.P9729232416480845533

/-!
# A330668: Number of non-isomorphic balanced reduced multisystems of weight n whose leaves (which are multisets of atoms) are all sets.

The programs for A330668, there is no canonical definition to state claims against.
-/

/-! ## A330668.P9620186301420952887

`ceil(A234302(n)/A000069(n+1))`
-/

namespace A330668.P9620186301420952887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A234302 n : ℚ) / (A000069 (n + 1) : ℚ)⌉

end

end A330668.P9620186301420952887

/-! ## A330668.P5132903372097446269

`ceil(A234302(n)/A074204(n+1))`
-/

namespace A330668.P5132903372097446269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A234302 n : ℚ) / (A074204 (n + 1) : ℚ)⌉

end

end A330668.P5132903372097446269

/-! ## A330668.P15644985767223667977

`A090642(n)+A011858(A001250(n))`
-/

namespace A330668.P15644985767223667977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090642 n + A011858 (A001250 n).toNat

end

end A330668.P15644985767223667977

/-!
# A330669: The prime indices of the prime powers (A000961).

The programs for A330669, the canonical program `A330669.P18160544792484395008` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330669 has offset 1).

The definition of A330669 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330669.P18160544792484395008

`A000720(A025473(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A330669

/-- `A000720(A025473(n+1))` -/
def P18160544792484395008.Spec : Prop :=
  ∀ n, P18160544792484395008.a n = A330669 (n + 1)

theorem P18160544792484395008.correct : P18160544792484395008.Spec := by
  intro n
  simp only [A330669, Nat.add_sub_cancel]

end A330669

/-! ## A330669.P633042181631613290

`A061395(A000961(n+1))`
-/

namespace A330669.P633042181631613290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000961 (n + 1)).toNat

end

end A330669.P633042181631613290

namespace A330669

/-- `A061395(A000961(n+1))` -/
def P633042181631613290.Spec : Prop :=
  ∀ n, P633042181631613290.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P18190626073878144229

`A061395(sqrt(A056798(n+1)))`
-/

namespace A330669.P18190626073878144229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A330669.P18190626073878144229

namespace A330669

/-- `A061395(sqrt(A056798(n+1)))` -/
def P18190626073878144229.Spec : Prop :=
  ∀ n, P18190626073878144229.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P4078146903963571770

`A061395(A181062(n+1)+1)`
-/

namespace A330669.P4078146903963571770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181062 (n + 1) + 1).toNat

end

end A330669.P4078146903963571770

namespace A330669

/-- `A061395(A181062(n+1)+1)` -/
def P4078146903963571770.Spec : Prop :=
  ∀ n, P4078146903963571770.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P8274065962562509694

`∑{p}[A000961(n+1), A000720(#)]`
-/

namespace A330669.P8274065962562509694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A330669.P8274065962562509694

namespace A330669

/-- `∑{p}[A000961(n+1), A000720(#)]` -/
def P8274065962562509694.Spec : Prop :=
  ∀ n, P8274065962562509694.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P14465079494909122331

`A000720(∏{p}[A000961(n+1), #])`
-/

namespace A330669.P14465079494909122331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A330669.P14465079494909122331

namespace A330669

/-- `A000720(∏{p}[A000961(n+1), #])` -/
def P14465079494909122331.Spec : Prop :=
  ∀ n, P14465079494909122331.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P9960810637717375092

`A061395(record[n/a(A001221(n))])` with `a(0)=1`
-/

namespace A330669.P9960810637717375092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A330669.P9960810637717375092

namespace A330669

/-- `A061395(record[n/a(A001221(n))])` -/
def P9960810637717375092.Spec : Prop :=
  ∀ n, P9960810637717375092.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P16103352149335943097

`∑{p}[record[A034699(n+1)], A000720(#)]`
-/

namespace A330669.P16103352149335943097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A330669.P16103352149335943097

namespace A330669

/-- `∑{p}[record[A034699(n+1)], A000720(#)]` -/
def P16103352149335943097.Spec : Prop :=
  ∀ n, P16103352149335943097.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P6954657100192053868

`A066328(A000961(A000720(A006093(n+2))))`
-/

namespace A330669.P6954657100192053868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A000961 (A000720 (A006093 (n + 2)).toNat).toNat).toNat

end

end A330669.P6954657100192053868

namespace A330669

/-- `A066328(A000961(A000720(A006093(n+2))))` -/
def P6954657100192053868.Spec : Prop :=
  ∀ n, P6954657100192053868.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P13783116414905634290

`A061395(lt[A001221(n+1), 2]+1)`
-/

namespace A330669.P13783116414905634290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A330669.P13783116414905634290

namespace A330669

/-- `A061395(lt[A001221(n+1), 2]+1)` -/
def P13783116414905634290.Spec : Prop :=
  ∀ n, P13783116414905634290.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P3443110407024465529

`A065770(∏{p}[A000961(n+1), #])`
-/

namespace A330669.P3443110407024465529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A330669.P3443110407024465529

namespace A330669

/-- `A065770(∏{p}[A000961(n+1), #])` -/
def P3443110407024465529.Spec : Prop :=
  ∀ n, P3443110407024465529.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P17128835413818306990

`A055396(A000961(n+1))`
-/

namespace A330669.P17128835413818306990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A000961 (n + 1)).toNat

end

end A330669.P17128835413818306990

namespace A330669

/-- `A055396(A000961(n+1))` -/
def P17128835413818306990.Spec : Prop :=
  ∀ n, P17128835413818306990.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P1879184851478331483

`A055396(record[A028233(n+1)])`
-/

namespace A330669.P1879184851478331483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330669.P1879184851478331483

namespace A330669

/-- `A055396(record[A028233(n+1)])` -/
def P1879184851478331483.Spec : Prop :=
  ∀ n, P1879184851478331483.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P9860140779366139613

`A055396(record[A053585(n+1)])`
-/

namespace A330669.P9860140779366139613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330669.P9860140779366139613

namespace A330669

/-- `A055396(record[A053585(n+1)])` -/
def P9860140779366139613.Spec : Prop :=
  ∀ n, P9860140779366139613.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P10978302183059711216

`A055396(record[A100994(n+1)])`
-/

namespace A330669.P10978302183059711216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330669.P10978302183059711216

namespace A330669

/-- `A055396(record[A100994(n+1)])` -/
def P10978302183059711216.Spec : Prop :=
  ∀ n, P10978302183059711216.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P11970655215339040770

`A055396(record[A354933(n+1)])`
-/

namespace A330669.P11970655215339040770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330669.P11970655215339040770

namespace A330669

/-- `A055396(record[A354933(n+1)])` -/
def P11970655215339040770.Spec : Prop :=
  ∀ n, P11970655215339040770.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P10206343317667478698

`∑{d}[A000961(n+1), A049084(#)]`
-/

namespace A330669.P10206343317667478698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A330669.P10206343317667478698

namespace A330669

/-- `∑{d}[A000961(n+1), A049084(#)]` -/
def P10206343317667478698.Spec : Prop :=
  ∀ n, P10206343317667478698.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P5921494271389285479

`∑{d}[A025473(n+1), A055396(#)]`
-/

namespace A330669.P5921494271389285479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A330669.P5921494271389285479

namespace A330669

/-- `∑{d}[A025473(n+1), A055396(#)]` -/
def P5921494271389285479.Spec : Prop :=
  ∀ n, P5921494271389285479.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P9807136028955069822

`∑{p}[A000961(n+1), A003963(#)]`
-/

namespace A330669.P9807136028955069822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A330669.P9807136028955069822

namespace A330669

/-- `∑{p}[A000961(n+1), A003963(#)]` -/
def P9807136028955069822.Spec : Prop :=
  ∀ n, P9807136028955069822.a n = A330669 (n + 1)

end A330669

/-! ## A330669.P12328128891163723893

`A056239(∏{p}[A000961(n+1), #])`
-/

namespace A330669.P12328128891163723893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A330669.P12328128891163723893

namespace A330669

/-- `A056239(∏{p}[A000961(n+1), #])` -/
def P12328128891163723893.Spec : Prop :=
  ∀ n, P12328128891163723893.a n = A330669 (n + 1)

end A330669

/-!
# A330670: Squares of primes congruent to 1 (mod 30).

The programs for A330670, there is no canonical definition to state claims against.
-/

/-! ## A330670.P7340944727256144638

`p?[a(n-2)+5]²` with `a(0)=1, a(1)=4`
-/

namespace A330670.P7340944727256144638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A330670.P7340944727256144638

/-! ## A330670.P1652019047347492623

`p?[∑[gcd(2, n+1)]+n]²`
-/

namespace A330670.P1652019047347492623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A330670.P1652019047347492623

/-! ## A330670.P10128157999067993259

`p?[∑[and(3, n+1)]+n]²`
-/

namespace A330670.P10128157999067993259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A330670.P10128157999067993259

/-! ## A330670.P14970262272898258299

`p?[5*n-a(n-1)]²` with `a(0)=1`
-/

namespace A330670.P14970262272898258299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (5 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A330670.P14970262272898258299

/-! ## A330670.P15918415708668903027

`A045468(n+1)²`
-/

namespace A330670.P15918415708668903027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1) ^ 2

end

end A330670.P15918415708668903027

/-!
# A330671: Largest number whose base-n expansion cannot be subdivided to form a sequence of numbers which ordered form a multiple of n+1 when using +, *, and ().

The programs for A330671, there is no canonical definition to state claims against.
-/

/-! ## A330671.P16673750022622392472

`∑[A181625(a(n-1)+1)]` with `a(0)=1, a(1)=6, a(2)=6`
-/

namespace A330671.P16673750022622392472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 6] fun n f1 =>
  A181625 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330671.P16673750022622392472

/-!
# A330672: Numbers whose base phi representation is symmetrical with respect to the radix point.

The programs for A330672, there is no canonical definition to state claims against.
-/

/-! ## A330672.P16715007258085876286

`∩[A001967(n), A362780(n+1)]`
-/

namespace A330672.P16715007258085876286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330672.P16715007258085876286

/-! ## A330672.P14528695581016967158

`∩[A330722(n+1), A362780(n+1)]`
-/

namespace A330672.P14528695581016967158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330672.P14528695581016967158

/-! ## A330672.P15956535628809341946

`eq[A105424(n), A341722(n)]`
-/

namespace A330672.P15956535628809341946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330672.P15956535628809341946

/-! ## A330672.P8928212362221094597

`eq[A007088(A105425(n)), A341722(n)]`
-/

namespace A330672.P8928212362221094597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105425 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330672.P8928212362221094597

/-! ## A330672.P1325140408372752166

`eq[A185544(2*A105425(n)), A341722(n)]`
-/

namespace A330672.P1325140408372752166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A105425 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330672.P1325140408372752166

/-!
# A330675: Number of balanced reduced multisystems of maximum depth whose atoms constitute a strongly normal multiset of size n.

The programs for A330675, there is no canonical definition to state claims against.
-/

/-! ## A330675.P17811270853006732697

`A049317(∑[A240921(n)])`
-/

namespace A330675.P17811270853006732697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330675.P17811270853006732697

/-! ## A330675.P4939507090263589738

`A276796(A355471(n)+1)`
-/

namespace A330675.P4939507090263589738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A355471 n + 1).toNat

end

end A330675.P4939507090263589738

/-!
# A330676: Number of balanced reduced multisystems of weight n and maximum depth whose atoms cover an initial interval of positive integers.

The programs for A330676, there is no canonical definition to state claims against.
-/

/-! ## A330676.P8159875062809658389

`A037915(A289020(n))`
-/

namespace A330676.P8159875062809658389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A289020 n).toNat

end

end A330676.P8159875062809658389

/-! ## A330676.P13842641723996951601

`A159481(A005816(n)+1)`
-/

namespace A330676.P13842641723996951601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A005816 n + 1).toNat

end

end A330676.P13842641723996951601

/-!
# A330677: Number of non-isomorphic balanced reduced multisystems of weight n and maximum depth whose leaves (which are multisets of atoms) are sets.

The programs for A330677, there is no canonical definition to state claims against.
-/

/-! ## A330677.P15177731769126779924

`A393565(C(n+1, 3))`
-/

namespace A330677.P15177731769126779924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393565 (Nat.choose (n + 1) 3)

end

end A330677.P15177731769126779924

/-! ## A330677.P2177256508509055944

`A393565(A353128(n))`
-/

namespace A330677.P2177256508509055944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393565 (A353128 n).toNat

end

end A330677.P2177256508509055944

/-! ## A330677.P4694334482282898790

`A393565(A362072(n))`
-/

namespace A330677.P4694334482282898790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393565 (A362072 n).toNat

end

end A330677.P4694334482282898790

/-!
# A330679: Number of balanced reduced multisystems whose atoms constitute an integer partition of n.

The programs for A330679, there is no canonical definition to state claims against.
-/

/-! ## A330679.P6166697110331852595

`A055642(3*(n+2))*A318812(A011782(n+1))`
-/

namespace A330679.P6166697110331852595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (3 * (n + 2)) * A318812 (A011782 (n + 1)).toNat

end

end A330679.P6166697110331852595

/-! ## A330679.P2420130474909806429

`A048766(2*(n+2))*A318812(A000244(n))`
-/

namespace A330679.P2420130474909806429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * (n + 2)) * A318812 (A000244 n).toNat

end

end A330679.P2420130474909806429

/-! ## A330679.P10029264900482161560

`A134170(A034872(n+1))`
-/

namespace A330679.P10029264900482161560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134170 (A034872 (n + 1)).toNat

end

end A330679.P10029264900482161560

/-!
# A330680: Numbers that begin a run of consecutive integers k such that the denominator of the k-th harmonic number is lcm(1..k).

The programs for A330680, there is no canonical definition to state claims against.
-/

/-! ## A330680.P5979656011371944498

`A380834(A177754(2*n+1))`
-/

namespace A330680.P5979656011371944498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380834 (A177754 (2 * n + 1)).toNat

end

end A330680.P5979656011371944498

/-! ## A330680.P11057758175500520234

`A324278(∑[record[A330460(2*n)]])`
-/

namespace A330680.P11057758175500520234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330460 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324278 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330680.P11057758175500520234

/-!
# A330681: a(n) = A283980(A025487(n)).

The programs for A330681, there is no canonical definition to state claims against.
-/

/-! ## A330681.P15549462135409421840

`A283980(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330681.P15549462135409421840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 (A025487 (n + 1)).toNat

end

end A330681.P15549462135409421840

/-! ## A330681.P1030950382014063678

`lcm(A025487(n+1), A233819(n+1))`
-/

namespace A330681.P1030950382014063678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025487 (n + 1)) (A233819 (n + 1))

end

end A330681.P1030950382014063678

/-! ## A330681.P14066998404691474023

`A000079(A051282(n+1))*A233819(n+1)`
-/

namespace A330681.P14066998404691474023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A051282 (n + 1)).toNat * A233819 (n + 1)

end

end A330681.P14066998404691474023

/-! ## A330681.P3685634593948833284

`A025487(A330683(n+1))`
-/

namespace A330681.P3685634593948833284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A330683 (n + 1)).toNat

end

end A330681.P3685634593948833284

/-! ## A330681.P8284593840648524715

`A181817(A330683(n+1))/A181817(n+1)`
-/

namespace A330681.P8284593840648524715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (A330683 (n + 1)).toNat : ℚ) / (A181817 (n + 1) : ℚ)

end

end A330681.P8284593840648524715

/-! ## A330681.P312418887792580920

`record[A329899(n+1)]*A181815(A330683(n+1))`
-/

namespace A330681.P312418887792580920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A181815 (A330683 (n + 1)).toNat

end

end A330681.P312418887792580920

/-! ## A330681.P16022564949605840806

`record[A051466(n+2)]*A181815(A330683(n+1))`
-/

namespace A330681.P16022564949605840806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A181815 (A330683 (n + 1)).toNat

end

end A330681.P16022564949605840806

/-! ## A330681.P3044552863204535276

`A181815(A330683(n+1))*A329899(A329898(n+1))`
-/

namespace A330681.P3044552863204535276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (A330683 (n + 1)).toNat * A329899 (A329898 (n + 1)).toNat

end

end A330681.P3044552863204535276

/-! ## A330681.P3712799042030848174

`A329899(A329898(A330683(A329904(A329898(n+1)))))`
-/

namespace A330681.P3712799042030848174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A329898 (A330683 (A329904 (A329898 (n + 1)).toNat).toNat).toNat).toNat

end

end A330681.P3712799042030848174

/-! ## A330681.P9272383470998550452

`A003961(A181815(n+1))*A025487(n+1)`
-/

namespace A330681.P9272383470998550452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A181815 (n + 1)).toNat * A025487 (n + 1)

end

end A330681.P9272383470998550452

/-!
# A330682: a(n) = 1 if the 2-adic and 3-adic valuations of A025487(n) are equal, 0 otherwise.

The programs for A330682, there is no canonical definition to state claims against.
-/

/-! ## A330682.P15156313620409223737

`A181815(n+1)%2`
-/

namespace A330682.P15156313620409223737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181815 (n + 1)) 2

end

end A330682.P15156313620409223737

/-! ## A330682.P17167734516639828253

`A000035(A181815(n+1))`
-/

namespace A330682.P17167734516639828253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A181815 (n + 1)).toNat

end

end A330682.P17167734516639828253

/-! ## A330682.P17794197187694143571

`char[A329897(n+1)-1]`
-/

namespace A330682.P17794197187694143571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329897 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A330682.P17794197187694143571

/-! ## A330682.P17999539312912394990

`char[A330683(n+1)-1]`
-/

namespace A330682.P17999539312912394990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330683 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A330682.P17999539312912394990

/-! ## A330682.P7963511287516560753

`and(1, A181815(A000027(n+1)))`
-/

namespace A330682.P7963511287516560753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A181815 (A000027 (n + 1)).toNat)

end

end A330682.P7963511287516560753

/-! ## A330682.P14847609852877796479

`and(A060576(n), A181815(n+1))`
-/

namespace A330682.P14847609852877796479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A181815 (n + 1))

end

end A330682.P14847609852877796479

/-! ## A330682.P9250967533536051497

`and(A158388(n), A181815(n+1))`
-/

namespace A330682.P9250967533536051497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A181815 (n + 1))

end

end A330682.P9250967533536051497

/-! ## A330682.P14351712490298540843

`and(A179184(n), A181815(n+1))`
-/

namespace A330682.P14351712490298540843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179184 n) (A181815 (n + 1))

end

end A330682.P14351712490298540843

/-! ## A330682.P15777995694608469217

`and(A181815(n+1), A267927(n))`
-/

namespace A330682.P15777995694608469217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181815 (n + 1)) (A267927 n)

end

end A330682.P15777995694608469217

/-! ## A330682.P305582936850417872

`A097805(val(A181815(n+1)²+1, 2)+1)`
-/

namespace A330682.P305582936850417872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (SequenceMachineLib.valuation (A181815 (n + 1) ^ 2 + 1).toNat 2 + 1)

end

end A330682.P305582936850417872

/-! ## A330682.P4425057372266668469

`A122111(A181820(n+1))%2`
-/

namespace A330682.P4425057372266668469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (A181820 (n + 1)).toNat) 2

end

end A330682.P4425057372266668469

/-! ## A330682.P6163470134992168866

`and(A048578(n), A181815(n+1))`
-/

namespace A330682.P6163470134992168866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A181815 (n + 1))

end

end A330682.P6163470134992168866

/-! ## A330682.P3981382998042994346

`and(A066827(n+1), A181815(n+1))`
-/

namespace A330682.P3981382998042994346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A181815 (n + 1))

end

end A330682.P3981382998042994346

/-! ## A330682.P11079932735271047341

`and(A020737(n), A181815(n+1))`
-/

namespace A330682.P11079932735271047341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A181815 (n + 1))

end

end A330682.P11079932735271047341

/-! ## A330682.P15039946790775488525

`and(A181815(n+1), A276918(n))`
-/

namespace A330682.P15039946790775488525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181815 (n + 1)) (A276918 n)

end

end A330682.P15039946790775488525

/-! ## A330682.P3903734301201344686

`and(A181815(n+1), A195744(n))`
-/

namespace A330682.P3903734301201344686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181815 (n + 1)) (A195744 n)

end

end A330682.P3903734301201344686

/-! ## A330682.P11921093930602401917

`and(A122041(n+1), A181815(n+1))`
-/

namespace A330682.P11921093930602401917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A181815 (n + 1))

end

end A330682.P11921093930602401917

/-! ## A330682.P2198382013735498636

`and(A181815(n+1), A196657(n))`
-/

namespace A330682.P2198382013735498636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181815 (n + 1)) (A196657 n)

end

end A330682.P2198382013735498636

/-! ## A330682.P5245056102469702939

`and(A132750(n), A181815(n+1))`
-/

namespace A330682.P5245056102469702939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132750 n) (A181815 (n + 1))

end

end A330682.P5245056102469702939

/-! ## A330682.P12865207476169656293

`and(A048479(n), A181815(n+1))`
-/

namespace A330682.P12865207476169656293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A181815 (n + 1))

end

end A330682.P12865207476169656293

/-!
# A330683: a(n) is the position of A283980(A025487(n)) in A025487.

The programs for A330683, there is no canonical definition to state claims against.
-/

/-! ## A330683.P8573576880834367368

`A085089(A330681(n+1))`
-/

namespace A330683.P8573576880834367368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A330681 (n + 1)).toNat

end

end A330683.P8573576880834367368

/-! ## A330683.P10538376450408400273

`A101296(A283980(A025487(n+1)))`
-/

namespace A330683.P10538376450408400273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A283980 (A025487 (n + 1)).toNat).toNat

end

end A330683.P10538376450408400273

/-! ## A330683.P8783462844537905105

`A330752(lcm(3, A330681(n+1)))`
-/

namespace A330683.P8783462844537905105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330752 (Int.lcm 3 (A330681 (n + 1)))

end

end A330683.P8783462844537905105

/-! ## A330683.P5536066287722872452

`A101296(and(-1, A330681(n+1)))`
-/

namespace A330683.P5536066287722872452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.land (-1) (A330681 (n + 1))).toNat

end

end A330683.P5536066287722872452

/-! ## A330683.P14739008857917275873

`A101296(A330681(2*n+1-n))`
-/

namespace A330683.P14739008857917275873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A330681 (2 * n + 1 - n)).toNat

end

end A330683.P14739008857917275873

/-!
# A330684: Square roots of the positions of records in A050377, number of ways to factor n into "Fermi-Dirac primes" (A050376).

The programs for A330684, there is no canonical definition to state claims against.
-/

/-! ## A330684.P17158824307098075502

`A000196(A330687(n+1))`
-/

namespace A330684.P17158824307098075502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A330687 (n + 1)).toNat

end

end A330684.P17158824307098075502

/-! ## A330684.P11199657146229300819

`sqrt(A330687(n+1))`
-/

namespace A330684.P11199657146229300819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A330687 (n + 1) : ℝ)

end

end A330684.P11199657146229300819

/-! ## A330684.P2886418287646409002

`root(A330687(n+1), gcd(2, A025487(n+1)))`
-/

namespace A330684.P2886418287646409002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A330687 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A025487 (n + 1)) : ℝ))

end

end A330684.P2886418287646409002

/-! ## A330684.P6530146167255557788

`root(lcm(A006519(n+1), A330687(n+1)), 2)`
-/

namespace A330684.P6530146167255557788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006519 (n + 1)) (A330687 (n + 1)) : ℝ) ^ (1 / (2 : ℝ))

end

end A330684.P6530146167255557788

/-! ## A330684.P17498099929687542216

`lcm(root(A330687(n+1), 2), A050377(n+1))`
-/

namespace A330684.P17498099929687542216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A330687 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A050377 (n + 1))

end

end A330684.P17498099929687542216

/-!
# A330685: Primorial deflation of highly factorable numbers: a(n) is the unique integer x such that A108951(x) = A033833(n).

The programs for A330685, there is no canonical definition to state claims against.
-/

/-! ## A330685.P2547620443411887973

`A329900(A033833(n+1))`
-/

namespace A330685.P2547620443411887973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A033833 (n + 1)).toNat

end

end A330685.P2547620443411887973

/-! ## A330685.P10709699752969875088

`A238745(A033833(n+1))`
-/

namespace A330685.P10709699752969875088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A033833 (n + 1)).toNat

end

end A330685.P10709699752969875088

/-! ## A330685.P6501020437751831722

`A319626(and(-1, A033833(n+1)))`
-/

namespace A330685.P6501020437751831722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (Int.land (-1) (A033833 (n + 1))).toNat

end

end A330685.P6501020437751831722

/-! ## A330685.P1253221499432193798

`A319626(A007318(∑[n])*A033833(n+1))`
-/

namespace A330685.P1253221499432193798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A033833 (n + 1)).toNat

end

end A330685.P1253221499432193798

/-!
# A330686: Primorial deflation of (nonzero) K-champion numbers: a(n) is the unique integer x such that A108951(x) = A307866(1+n).

The programs for A330686, there is no canonical definition to state claims against.
-/

/-! ## A330686.P12942846694589586217

`A122111(A353568(n+1))`
-/

namespace A330686.P12942846694589586217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A353568 (n + 1)).toNat

end

end A330686.P12942846694589586217

/-! ## A330686.P8025206265189666184

`A329900(A307866(1+n+1))`
-/

namespace A330686.P8025206265189666184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A307866 (1 + (n + 1))).toNat

end

end A330686.P8025206265189666184

/-! ## A330686.P2465567382585760062

`A238745(A307866(n+2))`
-/

namespace A330686.P2465567382585760062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A307866 (n + 2)).toNat

end

end A330686.P2465567382585760062

/-! ## A330686.P9249992380657074621

`A122111(A181819(A307866(A122111(A122111(n+2)))))`
-/

namespace A330686.P9249992380657074621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A181819 (A307866 (A122111 (A122111 (n + 2)).toNat).toNat).toNat).toNat

end

end A330686.P9249992380657074621

/-!
# A330687: Positions of records in A050377, number of ways to factor n into "Fermi-Dirac primes" (A050376).

The programs for A330687, there is no canonical definition to state claims against.
-/

/-! ## A330687.P16579120889946519422

`A330684(n+1)²`
-/

namespace A330687.P16579120889946519422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330684 (n + 1) ^ 2

end

end A330687.P16579120889946519422

/-! ## A330687.P8623002397708641527

`A330684(n+1)^(2*(A000007(n)+1))`
-/

namespace A330687.P8623002397708641527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330684 (n + 1) : ℚ) ^ (2 * (A000007 n + 1) : ℤ)

end

end A330687.P8623002397708641527

/-! ## A330687.P13300748898394841992

`A330684(n+1)^A000005(A008578(n+1))`
-/

namespace A330687.P13300748898394841992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330684 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 1)).toNat : ℤ)

end

end A330687.P13300748898394841992

/-! ## A330687.P392775596664668580

`A330684(A001281(2*(n+1)))*A330684(n+1)`
-/

namespace A330687.P392775596664668580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330684 (A001281 (2 * (n + 1))).toNat * A330684 (n + 1)

end

end A330687.P392775596664668580

/-! ## A330687.P5716491913378376106

`A330684(A004525(2*(n+1)))*A330684(n+1)`
-/

namespace A330687.P5716491913378376106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330684 (A004525 (2 * (n + 1))).toNat * A330684 (n + 1)

end

end A330687.P5716491913378376106

/-! ## A330687.P18057270292506486520

`(A330684(n+2)-Δ[A330684(n+1)])^2`
-/

namespace A330687.P18057270292506486520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A330684 (n + 2) - (f1 (n + 1) - f1 n)) ^ 2

end

end A330687.P18057270292506486520

/-!
# A330688: Record values in A050377, number of ways to factor n into "Fermi-Dirac primes" (A050376).

The programs for A330688, there is no canonical definition to state claims against.
-/

/-! ## A330688.P4974799058582404342

`A050377(A330687(n+1))`
-/

namespace A330688.P4974799058582404342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A330687 (n + 1)).toNat

end

end A330688.P4974799058582404342

/-! ## A330688.P12200828909539059376

`record[A050378(n+1)]`
-/

namespace A330688.P12200828909539059376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330688.P12200828909539059376

/-! ## A330688.P8293946110647535458

`∏{e}[A330687(n+1), A018819(#)]`
-/

namespace A330688.P8293946110647535458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018819 (Nat.factorization (f1 n).natAbs p)

end

end A330688.P8293946110647535458

/-! ## A330688.P5300764538865760798

`A330690(A330689(n+1))`
-/

namespace A330688.P5300764538865760798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330690 (A330689 (n + 1)).toNat

end

end A330688.P5300764538865760798

/-! ## A330688.P13653249612807212252

`record[A050377((n+1)²)]`
-/

namespace A330688.P13653249612807212252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330688.P13653249612807212252

/-!
# A330689: Primorial deflation of A330687 (record positions in A050377): a(n) is the unique integer x such that A108951(x) = A330687(n).

The programs for A330689, there is no canonical definition to state claims against.
-/

/-! ## A330689.P742650021087734265

`A329900(A330687(n+1))`
-/

namespace A330689.P742650021087734265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A330687 (n + 1)).toNat

end

end A330689.P742650021087734265

/-! ## A330689.P16224942194016591040

`A329900(A330684(n+1))²`
-/

namespace A330689.P16224942194016591040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A330684 (n + 1)).toNat ^ 2

end

end A330689.P16224942194016591040

/-! ## A330689.P282174247690671079

`A329900(A330684(n+1))^(2%A000051(n))`
-/

namespace A330689.P282174247690671079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329900 (A330684 (n + 1)).toNat : ℚ) ^ (Int.tmod 2 (A000051 n) : ℤ)

end

end A330689.P282174247690671079

/-! ## A330689.P15100091839049616332

`A329900(A330684(n+1))^A006530(A001316(n))`
-/

namespace A330689.P15100091839049616332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329900 (A330684 (n + 1)).toNat : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A330689.P15100091839049616332

/-! ## A330689.P7934653198652264682

`A329900(A330684(n+1)²)`
-/

namespace A330689.P7934653198652264682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A330684 (n + 1) ^ 2).toNat

end

end A330689.P7934653198652264682

/-!
# A330690: Number of ways to factor A108951(n) into "Fermi-Dirac primes" (A050376), where A108951 is fully multiplicative with a(prime(k)) = k-th primorial.

The programs for A330690, the canonical program `A330690.P4883101755403400126` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330690 has offset 1).

The definition of A330690 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050377, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330690.P10501651344036112197

`A050378(A329901(n+1))`
-/

namespace A330690.P10501651344036112197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050378 (A329901 (n + 1)).toNat

end

end A330690.P10501651344036112197

namespace A330690

/-- `A050378(A329901(n+1))` -/
def P10501651344036112197.Spec : Prop :=
  ∀ n, P10501651344036112197.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P4883101755403400126

`A050377(A108951(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A330690

/-- `A050377(A108951(n+1))` -/
def P4883101755403400126.Spec : Prop :=
  ∀ n, P4883101755403400126.a n = A330690 (n + 1)

theorem P4883101755403400126.correct : P4883101755403400126.Spec := by
  intro n
  simp only [A330690, Nat.add_sub_cancel]

end A330690

/-! ## A330690.P4890930120229927358

`∏{e}[A329602(n+1), A000123(#)]`
-/

namespace A330690.P4890930120229927358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000123 (Nat.factorization (f1 n).natAbs p)

end

end A330690.P4890930120229927358

namespace A330690

/-- `∏{e}[A329602(n+1), A000123(#)]` -/
def P4890930120229927358.Spec : Prop :=
  ∀ n, P4890930120229927358.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P16376946758515619899

`∏{e}[A329602(n+1), A001747(#)]`
-/

namespace A330690.P16376946758515619899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001747 (Nat.factorization (f1 n).natAbs p)

end

end A330690.P16376946758515619899

namespace A330690

/-- `∏{e}[A329602(n+1), A001747(#)]` -/
def P16376946758515619899.Spec : Prop :=
  ∀ n, P16376946758515619899.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P9155556265086208878

`∏{e}[A329602(n+1), A243501(#)]`
-/

namespace A330690.P9155556265086208878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A243501 (Nat.factorization (f1 n).natAbs p)

end

end A330690.P9155556265086208878

namespace A330690

/-- `∏{e}[A329602(n+1), A243501(#)]` -/
def P9155556265086208878.Spec : Prop :=
  ∀ n, P9155556265086208878.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P9158737681482948747

`∏{e}[A329602(n+1), A269360(#)]`
-/

namespace A330690.P9158737681482948747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A269360 (Nat.factorization (f1 n).natAbs p)

end

end A330690.P9158737681482948747

namespace A330690

/-- `∏{e}[A329602(n+1), A269360(#)]` -/
def P9158737681482948747.Spec : Prop :=
  ∀ n, P9158737681482948747.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P1719391375563487712

`∑{d}[A329602(n+1), A050377(#)]`
-/

namespace A330690.P1719391375563487712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050377 d

end

end A330690.P1719391375563487712

namespace A330690

/-- `∑{d}[A329602(n+1), A050377(#)]` -/
def P1719391375563487712.Spec : Prop :=
  ∀ n, P1719391375563487712.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P10056068466732302519

`A101113(A329602(n+1))`
-/

namespace A330690.P10056068466732302519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101113 (A329602 (n + 1)).toNat

end

end A330690.P10056068466732302519

namespace A330690

/-- `A101113(A329602(n+1))` -/
def P10056068466732302519.Spec : Prop :=
  ∀ n, P10056068466732302519.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P3676402215680868246

`A286324(A331188(n+1))`
-/

namespace A330690.P3676402215680868246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A331188 (n + 1)).toNat

end

end A330690.P3676402215680868246

namespace A330690

/-- `A286324(A331188(n+1))` -/
def P3676402215680868246.Spec : Prop :=
  ∀ n, P3676402215680868246.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P2167677483879823918

`∑{d}[A329602(n+1), A046951(#)]`
-/

namespace A330690.P2167677483879823918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A046951 d

end

end A330690.P2167677483879823918

namespace A330690

/-- `∑{d}[A329602(n+1), A046951(#)]` -/
def P2167677483879823918.Spec : Prop :=
  ∀ n, P2167677483879823918.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P12999897301110275618

`A050377(A329602(n+1)²)`
-/

namespace A330690.P12999897301110275618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A329602 (n + 1) ^ 2).toNat

end

end A330690.P12999897301110275618

namespace A330690

/-- `A050377(A329602(n+1)²)` -/
def P12999897301110275618.Spec : Prop :=
  ∀ n, P12999897301110275618.a n = A330690 (n + 1)

end A330690

/-! ## A330690.P5228249496981129127

`A050377(2*A329602(n+1)*A329602(n+1))`
-/

namespace A330690.P5228249496981129127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (2 * A329602 (n + 1) * A329602 (n + 1)).toNat

end

end A330690.P5228249496981129127

namespace A330690

/-- `A050377(2*A329602(n+1)*A329602(n+1))` -/
def P5228249496981129127.Spec : Prop :=
  ∀ n, P5228249496981129127.a n = A330690 (n + 1)

end A330690

/-!
# A330691: a(n) = gcd(n, A309639(n)), where A309639(n) is the index of the least harmonic number H_i whose denominator (A002805) is divisible by n.

The programs for A330691, there is no canonical definition to state claims against.
-/

/-! ## A330691.P1781337704148662009

`(n+1)/A330692(n+1)`
-/

namespace A330691.P1781337704148662009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330692 (n + 1) : ℚ)

end

end A330691.P1781337704148662009

/-! ## A330691.P13237745017686866433

`gcd(n+1, A309639(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330691.P13237745017686866433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A309639 (n + 1))

end

end A330691.P13237745017686866433

/-! ## A330691.P3369715934236657469

`gcd(-xor(n, -1), A330734(-xor(n, -1)))`
-/

namespace A330691.P3369715934236657469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-Int.xor (n : ℤ) (-1)) (A330734 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A330691.P3369715934236657469

/-! ## A330691.P17074200419334762046

`gcd(A000027(n+1), A330734(n+1))`
-/

namespace A330691.P17074200419334762046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A330734 (n + 1))

end

end A330691.P17074200419334762046

/-! ## A330691.P10980929575119938448

`gcd(n+1-A330734(n+1), A330735(n+1))`
-/

namespace A330691.P10980929575119938448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A330734 (n + 1)) (A330735 (n + 1))

end

end A330691.P10980929575119938448

/-! ## A330691.P6270622792256468162

`gcd(A003602(A017113(n)), A330734(n+1))`
-/

namespace A330691.P6270622792256468162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (A017113 n).toNat) (A330734 (n + 1))

end

end A330691.P6270622792256468162

/-!
# A330692: a(n) = n / gcd(n, A309639(n)), where A309639(n) is the index of the least harmonic number H_i whose denominator (A002805) is divisible by n.

The programs for A330692, there is no canonical definition to state claims against.
-/

/-! ## A330692.P12960283314718255443

`(n+1)/A330691(n+1)`
-/

namespace A330692.P12960283314718255443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330691 (n + 1) : ℚ)

end

end A330692.P12960283314718255443

/-! ## A330692.P4686345270479783057

`(n+1)/gcd(n+1, A309639(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330692.P4686345270479783057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A309639 (n + 1)) : ℚ)

end

end A330692.P4686345270479783057

/-! ## A330692.P5742372750370844069

`A000027(n+1)/gcd(A000027(n+1), A330734(n+1))`
-/

namespace A330692.P5742372750370844069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A330734 (n + 1)) : ℚ)

end

end A330692.P5742372750370844069

/-! ## A330692.P16739782685838409496

`lcm(A000027(n+1), A309639(n+1))/A309639(n+1)`
-/

namespace A330692.P16739782685838409496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A309639 (n + 1)) : ℚ) / (A309639 (n + 1) : ℚ)

end

end A330692.P16739782685838409496

/-! ## A330692.P1700163607822696574

`A219158(A330691(n+1)+A000217(n))`
-/

namespace A330692.P1700163607822696574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A330691 (n + 1) + A000217 n).toNat

end

end A330692.P1700163607822696574

/-! ## A330692.P77016341419637226

`A234575(A330691(n+1)+∑[n])`
-/

namespace A330692.P77016341419637226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A330691 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330692.P77016341419637226

/-! ## A330692.P17513203540500990454

`A054531(A309639(n+1)+∑[n])`
-/

namespace A330692.P17513203540500990454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A309639 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330692.P17513203540500990454

/-! ## A330692.P16154345586328803746

`A338797(A330691(n+1)+∑[n])`
-/

namespace A330692.P16154345586328803746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338797 (A330691 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A330692.P16154345586328803746

/-! ## A330692.P13862380081528100844

`A049834(A330691(n+1)+A000217(n))`
-/

namespace A330692.P13862380081528100844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A330691 (n + 1) + A000217 n).toNat

end

end A330692.P13862380081528100844

/-! ## A330692.P881999276515771403

`A054531(A330691(n+1)+A000217(n))`
-/

namespace A330692.P881999276515771403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A330691 (n + 1) + A000217 n).toNat

end

end A330692.P881999276515771403

/-! ## A330692.P6413236684542532340

`A126988(A330691(n+1)+A000217(n))`
-/

namespace A330692.P6413236684542532340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A330691 (n + 1) + A000217 n).toNat

end

end A330692.P6413236684542532340

/-!
# A330693: Regular subtriangle of A328773: T(n,k) is the number of the balanced colored digraphs on n nodes with k colors, 1 <= k <= n.

The programs for A330693, there is no canonical definition to state claims against.
-/

/-! ## A330693.P231557734632596914

`A328773(∑[A037306(n+1)]^A047996(n))`
-/

namespace A330693.P231557734632596914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A047996 n : ℤ))).toNat

end

end A330693.P231557734632596914

/-! ## A330693.P12280703352265393236

`record[A004182(A328773(n))]`
-/

namespace A330693.P12280703352265393236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A328773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330693.P12280703352265393236

/-! ## A330693.P1383629882699586354

`filter[A328773(n+1), A071374(#)]`
-/

namespace A330693.P1383629882699586354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A330693.P1383629882699586354

/-! ## A330693.P9715937669184830157

`filter[A328773(n+1), A392742(#)]`
-/

namespace A330693.P9715937669184830157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392742 (f1 j).toNat = 1) n)

end

end A330693.P9715937669184830157

/-! ## A330693.P3732845047836188526

`filter[A328773(n+1), A285467(#)]`
-/

namespace A330693.P3732845047836188526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285467 (f1 j).toNat = 1) n)

end

end A330693.P3732845047836188526

/-!
# A330696: Flimsy primes.

The programs for A330696, there is no canonical definition to state claims against.
-/

/-! ## A330696.P16308786151462686216

`p?[A005360(n+1)]`
-/

namespace A330696.P16308786151462686216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330696.P16308786151462686216

/-! ## A330696.P15414967496716146551

`filter[A005360(n+1), A010051(#)]`
-/

namespace A330696.P15414967496716146551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A330696.P15414967496716146551

/-! ## A330696.P1574391787914900008

`filter[A005360(n+1), A080339(#)]`
-/

namespace A330696.P1574391787914900008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A330696.P1574391787914900008

/-! ## A330696.P13195304914169516762

`filter[A005360(n+1), A080545(#)]`
-/

namespace A330696.P13195304914169516762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A330696.P13195304914169516762

/-! ## A330696.P2262090158205132230

`filter[A005360(n+1), A171387(#)]`
-/

namespace A330696.P2262090158205132230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A330696.P2262090158205132230

/-! ## A330696.P2385274378960343622

`filter[A005360(n+1), A257531(#)]`
-/

namespace A330696.P2385274378960343622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A330696.P2385274378960343622

/-! ## A330696.P8520092503166236519

`filter[A005360(n+1), A323152(#)]`
-/

namespace A330696.P8520092503166236519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A330696.P8520092503166236519

/-! ## A330696.P18363058006150811997

`filter[A005360(n+1), A323153(#)]`
-/

namespace A330696.P18363058006150811997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A330696.P18363058006150811997

/-! ## A330696.P12053789777725968458

`record[A006530(A005360(n+1)²)]`
-/

namespace A330696.P12053789777725968458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005360 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330696.P12053789777725968458

/-! ## A330696.P6952184729153017255

`record[A020639(A005360(n+1)²)]`
-/

namespace A330696.P6952184729153017255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005360 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330696.P6952184729153017255

/-!
# A330697: Numbers k such that every vertex-transitive graph of order k is a Cayley-graph.

The programs for A330697, there is no canonical definition to state claims against.
-/

/-! ## A330697.P16100777716790262070

`eq[A006799(n+1), A185959(n+1)]+1`
-/

namespace A330697.P16100777716790262070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A330697.P16100777716790262070

/-! ## A330697.P15066077147769067904

`eq[∑{d}[n+1, A006800(#)], A185959(n+1)]+1`
-/

namespace A330697.P15066077147769067904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A006800 d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A330697.P15066077147769067904

/-! ## A330697.P6728589358551504299

`eq[2*A006800(n+1)-A054917(n+1), A185959(n+1)]+1`
-/

namespace A330697.P6728589358551504299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006800 (n + 1) - A054917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A330697.P6728589358551504299

/-! ## A330697.P9280567796921080606

`lt[ratio[A064159(n+1)], A064122(n+4)]`
-/

namespace A330697.P9280567796921080606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064159 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064122 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A330697.P9280567796921080606

/-! ## A330697.P7182138455569046044

`eq[A006800(n+1), A327754(n+1)]+1`
-/

namespace A330697.P7182138455569046044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A330697.P7182138455569046044

/-!
# A330698: Numbers k such that there exists a non-Cayley vertex-transitive graph of order k.

The programs for A330698, there is no canonical definition to state claims against.
-/

/-! ## A330698.P8881321316409018160

`comp[A330697(n+1)-1]+1`
-/

namespace A330698.P8881321316409018160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330698.P8881321316409018160

/-! ## A330698.P9039512248000541790

`comp[∪[A330697(n+1), A330651(n²)]]`
-/

namespace A330698.P9039512248000541790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330651 (n ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A330698.P9039512248000541790

/-! ## A330698.P8674336765987996443

`comp[∪[A330697(n+1), A330700(n+1)]]`
-/

namespace A330698.P8674336765987996443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A330698.P8674336765987996443

/-! ## A330698.P4711465259169402626

`comp[∪[A330651(3*n), A330697(n+1)]]`
-/

namespace A330698.P4711465259169402626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330651 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A330698.P4711465259169402626

/-!
# A330699: Primes p such that the base-10 concatenation p||(p+1)||p is prime.

The programs for A330699, there is no canonical definition to state claims against.
-/

/-! ## A330699.P13641866053986778772

`p?[A264814(n+1)]`
-/

namespace A330699.P13641866053986778772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330699.P13641866053986778772

/-! ## A330699.P13940352534181767167

`∩[A264814(n+1), A380468(n+1)]`
-/

namespace A330699.P13940352534181767167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P13940352534181767167

/-! ## A330699.P8512482222365526653

`∩[A000040(n+1), A264814(n+1)]`
-/

namespace A330699.P8512482222365526653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P8512482222365526653

/-! ## A330699.P14518176533825069437

`∩[A004139(n+1), A264814(n+1)]`
-/

namespace A330699.P14518176533825069437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P14518176533825069437

/-! ## A330699.P12832486617925481747

`∩[A006005(n+1), A264814(n+1)]`
-/

namespace A330699.P12832486617925481747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P12832486617925481747

/-! ## A330699.P6497223791495759286

`∩[A008578(n+1), A264814(n+1)]`
-/

namespace A330699.P6497223791495759286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P6497223791495759286

/-! ## A330699.P4489802323907885451

`∩[A045319(n+1), A264814(n+1)]`
-/

namespace A330699.P4489802323907885451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P4489802323907885451

/-! ## A330699.P3593706722552619263

`∩[A045344(n+1), A264814(n+1)]`
-/

namespace A330699.P3593706722552619263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P3593706722552619263

/-! ## A330699.P2696218987116047811

`∩[A046022(n+1), A264814(n+1)]`
-/

namespace A330699.P2696218987116047811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P2696218987116047811

/-! ## A330699.P16981587713745684132

`∩[A051948(n+1), A264814(n+1)]`
-/

namespace A330699.P16981587713745684132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P16981587713745684132

/-! ## A330699.P6432401776621722398

`∩[A053813(n+1), A264814(n+1)]`
-/

namespace A330699.P6432401776621722398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P6432401776621722398

/-! ## A330699.P18422954776607395620

`∩[A062972(n+1), A264814(n+1)]`
-/

namespace A330699.P18422954776607395620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P18422954776607395620

/-! ## A330699.P11967593340587108139

`∩[A065091(n+1), A264814(n+1)]`
-/

namespace A330699.P11967593340587108139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P11967593340587108139

/-! ## A330699.P2518164031866088134

`∩[A066542(n+1), A264814(n+1)]`
-/

namespace A330699.P2518164031866088134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P2518164031866088134

/-! ## A330699.P7001853187623191320

`∩[A093515(n+1), A264814(n+1)]`
-/

namespace A330699.P7001853187623191320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P7001853187623191320

/-! ## A330699.P1329761677333513961

`∩[A116974(n+1), A264814(n+1)]`
-/

namespace A330699.P1329761677333513961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P1329761677333513961

/-! ## A330699.P68709307222194851

`∩[A140475(n+1), A264814(n+1)]`
-/

namespace A330699.P68709307222194851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P68709307222194851

/-! ## A330699.P3612895694958577624

`∩[A140826(n+1), A264814(n+1)]`
-/

namespace A330699.P3612895694958577624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P3612895694958577624

/-! ## A330699.P8119960072725478193

`∩[A158611(n+1), A264814(n+1)]`
-/

namespace A330699.P8119960072725478193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P8119960072725478193

/-! ## A330699.P6737207668521309461

`∩[A161428(n+1), A264814(n+1)]`
-/

namespace A330699.P6737207668521309461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330699.P6737207668521309461

