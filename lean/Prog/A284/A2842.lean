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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A284200: The successive digits of the sequence are the same digits that have an odd rank in the sequence.

The programs for A284200, there is no canonical definition to state claims against.
-/

/-! ## A284200.P11928009655472810849

`A282094(A024780(n+1)-A282105(n))`
-/

namespace A284200.P11928009655472810849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282094 (A024780 (n + 1) - A282105 n).toNat

end

end A284200.P11928009655472810849

/-!
# A284202: Numbers m such that phi(sum of divisors of m) = lambda(sum of distinct primes dividing m).

The programs for A284202, there is no canonical definition to state claims against.
-/

/-! ## A284202.P9248688650999954286

`A000032(C(2, n+2))*A078883(A028310(n))`
-/

namespace A284202.P9248688650999954286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A078883 (A028310 n).toNat

end

end A284202.P9248688650999954286

/-! ## A284202.P9013414115888082838

`A020639(A000040(n+1)-1)*A078883(A028310(n))`
-/

namespace A284202.P9013414115888082838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A078883 (A028310 n).toNat

end

end A284202.P9013414115888082838

/-! ## A284202.P9581818052165784189

`A001221(2*A000040(n+1))*A078883(A028310(n))`
-/

namespace A284202.P9581818052165784189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1)).toNat * A078883 (A028310 n).toNat

end

end A284202.P9581818052165784189

/-!
# A284203: Number of twin prime (A001097) divisors of n.

The programs for A284203, the canonical program `A284203.P3141137211132390266` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284203 has offset 1).

The definition of A284203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284203.P3141137211132390266

`∑{d}[n+1, A164292(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284203

/-- `∑{d}[n+1, A164292(#)]` -/
def P3141137211132390266.Spec : Prop :=
  ∀ n, P3141137211132390266.a n = A284203 (n + 1)

theorem P3141137211132390266.correct : P3141137211132390266.Spec := by
  intro n
  simp only [A284203, Nat.add_sub_cancel]

end A284203

/-! ## A284203.P18233298154710946038

`A001221(A072963(n+1))`
-/

namespace A284203.P18233298154710946038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A072963 (n + 1)).toNat

end

end A284203.P18233298154710946038

namespace A284203

/-- `A001221(A072963(n+1))` -/
def P18233298154710946038.Spec : Prop :=
  ∀ n, P18233298154710946038.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P3947355810889066165

`A005087(A072963(2*(n+1)))`
-/

namespace A284203.P3947355810889066165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A072963 (2 * (n + 1))).toNat

end

end A284203.P3947355810889066165

namespace A284203

/-- `A005087(A072963(2*(n+1)))` -/
def P3947355810889066165.Spec : Prop :=
  ∀ n, P3947355810889066165.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P12563246783450355256

`A005087(or(1, A072963(n+1)))`
-/

namespace A284203.P12563246783450355256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (Int.lor 1 (A072963 (n + 1))).toNat

end

end A284203.P12563246783450355256

namespace A284203

/-- `A005087(or(1, A072963(n+1)))` -/
def P12563246783450355256.Spec : Prop :=
  ∀ n, P12563246783450355256.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P6084493305495025869

`∑{d}[A072963(n+1), A010051(#)]`
-/

namespace A284203.P6084493305495025869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A284203.P6084493305495025869

namespace A284203

/-- `∑{d}[A072963(n+1), A010051(#)]` -/
def P6084493305495025869.Spec : Prop :=
  ∀ n, P6084493305495025869.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P17027055683368843531

`∑{p}[A072963(n+1), A001222(#)]`
-/

namespace A284203.P17027055683368843531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A284203.P17027055683368843531

namespace A284203

/-- `∑{p}[A072963(n+1), A001222(#)]` -/
def P17027055683368843531.Spec : Prop :=
  ∀ n, P17027055683368843531.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P16047940658006553322

`∑{p}[A000027(n+1), A164292(#)]`
-/

namespace A284203.P16047940658006553322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A164292 p

end

end A284203.P16047940658006553322

namespace A284203

/-- `∑{p}[A000027(n+1), A164292(#)]` -/
def P16047940658006553322.Spec : Prop :=
  ∀ n, P16047940658006553322.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P4871284748550910501

`∑{p}[A000290(n+1), A164292(#)]`
-/

namespace A284203.P4871284748550910501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A164292 p

end

end A284203.P4871284748550910501

namespace A284203

/-- `∑{p}[A000290(n+1), A164292(#)]` -/
def P4871284748550910501.Spec : Prop :=
  ∀ n, P4871284748550910501.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P5666870654260374655

`∑{p}[n+1, A164292(A022998(#))]`
-/

namespace A284203.P5666870654260374655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A164292 (A022998 p).toNat

end

end A284203.P5666870654260374655

namespace A284203

/-- `∑{p}[n+1, A164292(A022998(#))]` -/
def P5666870654260374655.Spec : Prop :=
  ∀ n, P5666870654260374655.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P10780119998720822896

`A001222(A072963(∏{p}[n+1, #]))`
-/

namespace A284203.P10780119998720822896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072963 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A284203.P10780119998720822896

namespace A284203

/-- `A001222(A072963(∏{p}[n+1, #]))` -/
def P10780119998720822896.Spec : Prop :=
  ∀ n, P10780119998720822896.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P2338496039681266251

`∑{p}[A072963(n+1), abs(A008683(#))]`
-/

namespace A284203.P2338496039681266251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, |A008683 p|

end

end A284203.P2338496039681266251

namespace A284203

/-- `∑{p}[A072963(n+1), abs(A008683(#))]` -/
def P2338496039681266251.Spec : Prop :=
  ∀ n, P2338496039681266251.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P10111366249431492387

`∑{d}[A072963(n+1), A061397(#)/#]`
-/

namespace A284203.P10111366249431492387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A061397 d : ℚ) / (d : ℚ)

end

end A284203.P10111366249431492387

namespace A284203

/-- `∑{d}[A072963(n+1), A061397(#)/#]` -/
def P10111366249431492387.Spec : Prop :=
  ∀ n, P10111366249431492387.a n = (A284203 (n + 1) : ℚ)

end A284203

/-! ## A284203.P800985478277361726

`∑{p}[A072963(n+1), #/A072963(#)]`
-/

namespace A284203.P800985478277361726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A072963 p : ℚ)

end

end A284203.P800985478277361726

namespace A284203

/-- `∑{p}[A072963(n+1), #/A072963(#)]` -/
def P800985478277361726.Spec : Prop :=
  ∀ n, P800985478277361726.a n = (A284203 (n + 1) : ℚ)

end A284203

/-! ## A284203.P6512162963928704999

`∑{e}[A072963(n+1), A007318(A007318(#))]`
-/

namespace A284203.P6512162963928704999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (A007318 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A284203.P6512162963928704999

namespace A284203

/-- `∑{e}[A072963(n+1), A007318(A007318(#))]` -/
def P6512162963928704999.Spec : Prop :=
  ∀ n, P6512162963928704999.a n = A284203 (n + 1)

end A284203

/-! ## A284203.P3248666099976014622

`A072491(A284599((n+1)²))`
-/

namespace A284203.P3248666099976014622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A284599 ((n + 1) ^ 2)).toNat

end

end A284203.P3248666099976014622

namespace A284203

/-- `A072491(A284599((n+1)²))` -/
def P3248666099976014622.Spec : Prop :=
  ∀ n, P3248666099976014622.a n = A284203 (n + 1)

end A284203

/-!
# A284204: Eighth column of Euler's difference table in A068106.

The programs for A284204, there is no canonical definition to state claims against.
-/

/-! ## A284204.P9459634805195664248

`A267387(n+1)%A267387(A000045(n))`
-/

namespace A284204.P9459634805195664248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267387 (n + 1)) (A267387 (A000045 n).toNat)

end

end A284204.P9459634805195664248

/-! ## A284204.P12085171528784984165

`lcm(A001222(A267408(n+1)), A267387(n+1))`
-/

namespace A284204.P12085171528784984165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A267408 (n + 1)).toNat) (A267387 (n + 1))

end

end A284204.P12085171528784984165

/-! ## A284204.P4293991036727915031

`A267387(n+1)*A267417(A267397(n+1))`
-/

namespace A284204.P4293991036727915031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267387 (n + 1) * A267417 (A267397 (n + 1)).toNat

end

end A284204.P4293991036727915031

/-! ## A284204.P9259384077606603051

`A267387(n+1)*A267417(A267406(n+1))`
-/

namespace A284204.P9259384077606603051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267387 (n + 1) * A267417 (A267406 (n + 1)).toNat

end

end A284204.P9259384077606603051

/-!
# A284205: Ninth column of Euler's difference table in A068106.

The programs for A284205, there is no canonical definition to state claims against.
-/

/-! ## A284205.P15151675058789233765

`8*and(-floor(3*∏[(n+1)/3]/(n+1)), ∑{e}[5^n, #!])`
-/

namespace A284205.P15151675058789233765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * Int.land (-⌊3 * ((∏ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℚ))⌋) ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℤ)

end

end A284205.P15151675058789233765

/-! ## A284205.P2690146492411226774

`Δ[lcm(n!, and(4, A329685(n+1)))]`
-/

namespace A284205.P2690146492411226774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (Int.land 4 (A329685 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A284205.P2690146492411226774

/-! ## A284205.P2722895102300017966

`Δ[A024793(n+1)^484*n!]`
-/

namespace A284205.P2722895102300017966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 1) ^ 484 * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284205.P2722895102300017966

/-! ## A284205.P6421456251624304576

`Δ[Δ[A061123(a(n-2)+n)]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A284205.P6421456251624304576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  A061123 (f2 (n - 2) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284205.P6421456251624304576

/-! ## A284205.P3709276940073842900

`n!*A058343(∏[gcd(n, 11%gcd(10, n))])`
-/

namespace A284205.P3709276940073842900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (11 % Nat.gcd 10 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A058343 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A284205.P3709276940073842900

/-!
# A284206: Tenth column of Euler's difference table in A068106.

The programs for A284206, there is no canonical definition to state claims against.
-/

/-! ## A284206.P18193237924069077761

`A267389(n+1)%A007318(A267367(n))`
-/

namespace A284206.P18193237924069077761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267389 (n + 1)) (A007318 (A267367 n).toNat)

end

end A284206.P18193237924069077761

/-! ## A284206.P8315483986361057713

`n!*A127686(floor(n/2)!)`
-/

namespace A284206.P8315483986361057713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A127686 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat)

end

end A284206.P8315483986361057713

/-! ## A284206.P12191139713793084155

`Δ[n!%A056511(n+1)!]`
-/

namespace A284206.P12191139713793084155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % Nat.factorial (A056511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A284206.P12191139713793084155

/-! ## A284206.P9648136179882219295

`Δ[Δ[A029577(A062003(n))]]`
-/

namespace A284206.P9648136179882219295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029577 (A062003 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284206.P9648136179882219295

/-! ## A284206.P15466260224438945602

`∑{e}[A123320(A075851(n)), #]²*n!`
-/

namespace A284206.P15466260224438945602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123320 (A075851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2 * Nat.factorial n

end

end A284206.P15466260224438945602

/-!
# A284207: Eleventh column of Euler's difference table in A068106.

The programs for A284207, there is no canonical definition to state claims against.
-/

/-! ## A284207.P6290991156992990513

`Δ[n!*A185284(3*n+4)]`
-/

namespace A284207.P6290991156992990513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A185284 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284207.P6290991156992990513

/-! ## A284207.P17165523839290435315

`Δ[Δ[A053501(A004874(n+1))]]`
-/

namespace A284207.P17165523839290435315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 (A004874 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284207.P17165523839290435315

/-! ## A284207.P12999540024684406584

`Δ[Δ[A053501(A004896(n+1))]]`
-/

namespace A284207.P12999540024684406584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 (A004896 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284207.P12999540024684406584

/-! ## A284207.P11935441260904272516

`Δ[Δ[A053501(A004907(n+1))]]`
-/

namespace A284207.P11935441260904272516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 (A004907 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284207.P11935441260904272516

/-! ## A284207.P13184714747135728099

`A152886((n+1)^A056512(n+1))`
-/

namespace A284207.P13184714747135728099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152886 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A056512 (n + 1) : ℤ))).toNat

end

end A284207.P13184714747135728099

/-!
# A284208: Binary representation of generation n in the reversible cellular automaton RCA(3) when started with a single ON cell at generation 0.

The programs for A284208, there is no canonical definition to state claims against.
-/

/-! ## A284208.P1707028594603500200

`A007088(A284209(n))`
-/

namespace A284208.P1707028594603500200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284209 n).toNat

end

end A284208.P1707028594603500200

/-!
# A284209: Decimal representation of generation n in the reversible cellular automaton RCA(3) when started with a single ON cell at generation 0.

The programs for A284209, there is no canonical definition to state claims against.
-/

/-! ## A284209.P1720404906089933414

`A206913(A169651(2*n+1)%A256182(n+1))`
-/

namespace A284209.P1720404906089933414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (Int.tmod (A169651 (2 * n + 1)) (A256182 (n + 1))).toNat

end

end A284209.P1720404906089933414

/-!
# A284210: Number of subgroups of order n of the symmetric group Sym(n) on n symbols.

The programs for A284210, there is no canonical definition to state claims against.
-/

/-! ## A284210.P5162649003878071509

`A243748(A047081(n+1))`
-/

namespace A284210.P5162649003878071509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243748 (A047081 (n + 1)).toNat

end

end A284210.P5162649003878071509

/-! ## A284210.P6071364949238987289

`A243748(A335628(n+1))`
-/

namespace A284210.P6071364949238987289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243748 (A335628 (n + 1)).toNat

end

end A284210.P6071364949238987289

/-! ## A284210.P16199558777467385052

`A243748(A355560(n+1))`
-/

namespace A284210.P16199558777467385052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243748 (A355560 (n + 1)).toNat

end

end A284210.P16199558777467385052

/-!
# A284213: The successive digits of the sequence are the same digits that have a nonprime rank in the sequence.

The programs for A284213, there is no canonical definition to state claims against.
-/

/-! ## A284213.P8626059905686114509

`A362327(∏[∑{d}[n+1, #]])`
-/

namespace A284213.P8626059905686114509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362327 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A284213.P8626059905686114509

/-! ## A284213.P9249045786375615485

`A218613(A184052(n))`
-/

namespace A284213.P9249045786375615485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218613 (A184052 n).toNat

end

end A284213.P9249045786375615485

/-!
# A284214: Remainder when sum of first n terms of A006949 is divided by n.

The programs for A284214, the canonical program `A284214.P16839856081255687971` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284214 has offset 1).

The definition of A284214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284214.P16839856081255687971

`∑[A006949(n)]%(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284214

/-- `∑[A006949(n)]%(n+1)` -/
def P16839856081255687971.Spec : Prop :=
  ∀ n, P16839856081255687971.a n = A284214 (n + 1)

theorem P16839856081255687971.correct : P16839856081255687971.Spec := by
  intro n
  simp only [A284214, Nat.add_sub_cancel]

end A284214

/-! ## A284214.P15833587451833578210

`∑[A244479(abs(1-n))+A244479(n)]%(n+1)`
-/

namespace A284214.P15833587451833578210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 |1 - (n : ℤ)|.toNat + A244479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284214.P15833587451833578210

namespace A284214

/-- `∑[A244479(abs(1-n))+A244479(n)]%(n+1)` -/
def P15833587451833578210.Spec : Prop :=
  ∀ n, P15833587451833578210.a n = A284214 (n + 1)

end A284214

/-! ## A284214.P17253567430529610174

`∑[A046699(A103354(n+2))]%(n+1)`
-/

namespace A284214.P17253567430529610174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A103354 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284214.P17253567430529610174

namespace A284214

/-- `∑[A046699(A103354(n+2))]%(n+1)` -/
def P17253567430529610174.Spec : Prop :=
  ∀ n, P17253567430529610174.a n = A284214 (n + 1)

end A284214

/-! ## A284214.P15561010352176687825

`∑[A244479(eq[A244479(n+2), A244479(n)])]%(n+1)`
-/

namespace A284214.P15561010352176687825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284214.P15561010352176687825

namespace A284214

/-- `∑[A244479(eq[A244479(n+2), A244479(n)])]%(n+1)` -/
def P15561010352176687825.Spec : Prop :=
  ∀ n, P15561010352176687825.a n = A284214 (n + 1)

end A284214

/-! ## A284214.P2559082906609119960

`A000027(∑[A006949(n)])%A008619(2*n)`
-/

namespace A284214.P2559082906609119960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A008619 (2 * n))

end

end A284214.P2559082906609119960

namespace A284214

/-- `A000027(∑[A006949(n)])%A008619(2*n)` -/
def P2559082906609119960.Spec : Prop :=
  ∀ n, P2559082906609119960.a n = A284214 (n + 1)

end A284214

/-! ## A284214.P13228451789282492583

`∑[A046699(A247983(n+1))]%(n+1)`
-/

namespace A284214.P13228451789282492583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A247983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284214.P13228451789282492583

namespace A284214

/-- `∑[A046699(A247983(n+1))]%(n+1)` -/
def P13228451789282492583.Spec : Prop :=
  ∀ n, P13228451789282492583.a n = A284214 (n + 1)

end A284214

/-!
# A284215: Number of n X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284215, there is no canonical definition to state claims against.
-/

/-! ## A284215.P8053724559996255573

`A284222(∑[4*n]+1)`
-/

namespace A284215.P8053724559996255573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284215.P8053724559996255573

/-! ## A284215.P5156933542889153933

`record[A284222(Δ[A235355(n)])]`
-/

namespace A284215.P5156933542889153933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284215.P5156933542889153933

/-! ## A284215.P10669125217937375871

`record[A003982(n)*A284222(n+1)]`
-/

namespace A284215.P10669125217937375871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A284222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284215.P10669125217937375871

/-! ## A284215.P658258044647220248

`record[gcd(A114327(n), A284222(n+1))]`
-/

namespace A284215.P658258044647220248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A284222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284215.P658258044647220248

/-! ## A284215.P15329156583249200862

`A284222(A001844(n))+A011731(n)`
-/

namespace A284215.P15329156583249200862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A001844 n).toNat + A011731 n

end

end A284215.P15329156583249200862

/-!
# A284216: Number of n X 2 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284216, there is no canonical definition to state claims against.
-/

/-! ## A284216.P3462004184298757306

`A274160(2*n+3)`
-/

namespace A284216.P3462004184298757306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274160 (2 * n + 3)

end

end A284216.P3462004184298757306

/-! ## A284216.P13289856113530212912

`A164146(2*(n+1))/2`
-/

namespace A284216.P13289856113530212912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164146 (2 * (n + 1)) : ℚ) / 2

end

end A284216.P13289856113530212912

/-! ## A284216.P13419631143177144062

`record[A274160(A004442(n+2))]`
-/

namespace A284216.P13419631143177144062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274160 (A004442 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284216.P13419631143177144062

/-! ## A284216.P16968610448325536834

`record[A274160(A097062(n+2))]`
-/

namespace A284216.P16968610448325536834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274160 (A097062 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284216.P16968610448325536834

/-! ## A284216.P1169253502562022052

`record[A274160(A108918(n+2))]`
-/

namespace A284216.P1169253502562022052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274160 (A108918 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284216.P1169253502562022052

/-! ## A284216.P15034762693995750717

`record[A274160(A000265(n+3))]`
-/

namespace A284216.P15034762693995750717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274160 (A000265 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284216.P15034762693995750717

/-! ## A284216.P6852791505855687454

`record[A274160(A026741(n+3))]`
-/

namespace A284216.P6852791505855687454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274160 (A026741 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284216.P6852791505855687454

/-! ## A284216.P1555550132302008414

`Δ[∑[A164146(2*n)]/2]`
-/

namespace A284216.P1555550132302008414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164146 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284216.P1555550132302008414

/-!
# A284217: Number of n X 3 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284217, there is no canonical definition to state claims against.
-/

/-! ## A284217.P3735698117447976888

`A284222(∑[n+3]+1)`
-/

namespace A284217.P3735698117447976888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284217.P3735698117447976888

/-! ## A284217.P6163555608162698564

`A284222(A034856(n+2))+A010894(n+1)`
-/

namespace A284217.P6163555608162698564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A034856 (n + 2)).toNat + A010894 (n + 1 + 21)

end

end A284217.P6163555608162698564

/-! ## A284217.P7458563545112714924

`A057427(n+1)*A284222(A034856(n+2))`
-/

namespace A284217.P7458563545112714924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A284222 (A034856 (n + 2)).toNat

end

end A284217.P7458563545112714924

/-! ## A284217.P6223154145151646308

`A033999(2*n)*A284222(A034856(n+2))`
-/

namespace A284217.P6223154145151646308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A284222 (A034856 (n + 2)).toNat

end

end A284217.P6223154145151646308

/-! ## A284217.P584267007945468229

`A284222(A034856(n+2))%A284108(n+2)`
-/

namespace A284217.P584267007945468229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284222 (A034856 (n + 2)).toNat) (A284108 (n + 2))

end

end A284217.P584267007945468229

/-!
# A284218: Number of n X 4 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284218, there is no canonical definition to state claims against.
-/

/-! ## A284218.P17716712468935924412

`A284222(A141214(n+1))`
-/

namespace A284218.P17716712468935924412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A141214 (n + 1)).toNat

end

end A284218.P17716712468935924412

/-! ## A284218.P2126152288424607869

`A284222(A027379(n+2))`
-/

namespace A284218.P2126152288424607869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A027379 (n + 2)).toNat

end

end A284218.P2126152288424607869

/-! ## A284218.P17537762493256028102

`A284222(A155212(n)+5)`
-/

namespace A284218.P17537762493256028102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A155212 n + 5).toNat

end

end A284218.P17537762493256028102

/-! ## A284218.P15138879003139489384

`A284222(A052905(n+1)+2)`
-/

namespace A284218.P15138879003139489384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A052905 (n + 1) + 2).toNat

end

end A284218.P15138879003139489384

/-! ## A284218.P428004435897462111

`A284222(A034856(n+3)-1)`
-/

namespace A284218.P428004435897462111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A034856 (n + 3) - 1).toNat

end

end A284218.P428004435897462111

/-!
# A284219: Number of n X 5 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284219, there is no canonical definition to state claims against.
-/

/-! ## A284219.P14068017701295666878

`A284222(Δ[A264443(n)])`
-/

namespace A284219.P14068017701295666878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (f1 (n + 1) - f1 n).toNat

end

end A284219.P14068017701295666878

/-! ## A284219.P13430957322126971337

`A284222(eq[4, A193592(n)])`
-/

namespace A284219.P13430957322126971337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284219.P13430957322126971337

/-! ## A284219.P12380603918329640566

`A284222(Δ[A023545(n+1)])`
-/

namespace A284219.P12380603918329640566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (f1 (n + 1) - f1 n).toNat

end

end A284219.P12380603918329640566

/-! ## A284219.P8197750815873948755

`A284222(A052905(n+2)+1)`
-/

namespace A284219.P8197750815873948755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A052905 (n + 2) + 1).toNat

end

end A284219.P8197750815873948755

/-! ## A284219.P6229379078469166959

`A284222(eq[5, A194921(n+1)])`
-/

namespace A284219.P6229379078469166959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284219.P6229379078469166959

/-!
# A284220: Number of n X 6 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284220, there is no canonical definition to state claims against.
-/

/-! ## A284220.P1771107855414545799

`A284222(A052905(n+3))`
-/

namespace A284220.P1771107855414545799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A052905 (n + 3)).toNat

end

end A284220.P1771107855414545799

/-! ## A284220.P17101808915836686839

`A284222(A302537(n)+15)`
-/

namespace A284220.P17101808915836686839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A302537 n + 15).toNat

end

end A284220.P17101808915836686839

/-! ## A284220.P3904661208796793720

`A284222(eq[3, A219347(n)])`
-/

namespace A284220.P3904661208796793720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284220.P3904661208796793720

/-! ## A284220.P14721729935701529998

`A284222(eq[5, A193592(n)])`
-/

namespace A284220.P14721729935701529998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284220.P14721729935701529998

/-! ## A284220.P3055005003053638619

`A284222(eq[8, A185782(n+1)])`
-/

namespace A284220.P3055005003053638619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284220.P3055005003053638619

/-!
# A284221: Number of n X 7 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284221, there is no canonical definition to state claims against.
-/

/-! ## A284221.P509278056202009787

`A284222(A055999(n+4))`
-/

namespace A284221.P509278056202009787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A055999 (n + 4)).toNat

end

end A284221.P509278056202009787

/-! ## A284221.P1502076249068252675

`A284222(eq[4, A219347(n)])`
-/

namespace A284221.P1502076249068252675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284221.P1502076249068252675

/-! ## A284221.P7028757398279289714

`A284222(eq[6, A193592(n)])`
-/

namespace A284221.P7028757398279289714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284221.P7028757398279289714

/-! ## A284221.P10518725052984502065

`A284222(eq[7, A200370(n+1)])`
-/

namespace A284221.P10518725052984502065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284221.P10518725052984502065

/-! ## A284221.P2314224404688853981

`A284222(eq[10, A185782(n+1)])`
-/

namespace A284221.P2314224404688853981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284221.P2314224404688853981

/-!
# A284223: Number of 2 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284223, there is no canonical definition to state claims against.
-/

/-! ## A284223.P16250797421208346703

`A284222(∑[n+1]+2)`
-/

namespace A284223.P16250797421208346703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A284223.P16250797421208346703

/-! ## A284223.P1510979493151118922

`record[gcd(A002262(n), A284222(n+2))]`
-/

namespace A284223.P1510979493151118922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A284222 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284223.P1510979493151118922

/-! ## A284223.P11493844476739238254

`record[root(A284222(n+3), A004736(n+1))]`
-/

namespace A284223.P11493844476739238254
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A284222 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284223.P11493844476739238254

/-! ## A284223.P12844060681126528990

`record[(3-A135223(n+1))*A284222(n+1)]`
-/

namespace A284223.P12844060681126528990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A135223 (n + 1)) * A284222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284223.P12844060681126528990

/-! ## A284223.P12710811238272764409

`A284222(A133263(n+1))%A284108(n+1)`
-/

namespace A284223.P12710811238272764409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284222 (A133263 (n + 1)).toNat) (A284108 (n + 1))

end

end A284223.P12710811238272764409

/-!
# A284224: Number of 3 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284224, there is no canonical definition to state claims against.
-/

/-! ## A284224.P333712988297286518

`A284222(∑[n+2]+4)`
-/

namespace A284224.P333712988297286518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A284224.P333712988297286518

/-! ## A284224.P7371292967537747261

`A284222(A167614(n+1))+A185255(n)`
-/

namespace A284224.P7371292967537747261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A167614 (n + 1)).toNat + A185255 n

end

end A284224.P7371292967537747261

/-! ## A284224.P8495711798304221086

`A284222(A167614(n+1))*A288120(n)`
-/

namespace A284224.P8495711798304221086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A167614 (n + 1)).toNat * A288120 n

end

end A284224.P8495711798304221086

/-! ## A284224.P17044159008213369925

`lcm(A033630(n), A284222(A167614(n+1)))`
-/

namespace A284224.P17044159008213369925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033630 n) (A284222 (A167614 (n + 1)).toNat)

end

end A284224.P17044159008213369925

/-! ## A284224.P12044631089551855114

`A178688(n+1)*A284222(A167614(n+1))`
-/

namespace A284224.P12044631089551855114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178688 (n + 1) * A284222 (A167614 (n + 1)).toNat

end

end A284224.P12044631089551855114

/-!
# A284225: Number of 4 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284225, there is no canonical definition to state claims against.
-/

/-! ## A284225.P16149530622109462272

`A284222(A141214(n)+7)`
-/

namespace A284225.P16149530622109462272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A141214 n + 7).toNat

end

end A284225.P16149530622109462272

/-! ## A284225.P2108354900466558978

`A284222(A052905(n)+9)`
-/

namespace A284225.P2108354900466558978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A052905 n + 9).toNat

end

end A284225.P2108354900466558978

/-! ## A284225.P530125591771164631

`A284222(A167614(n+2)+1)`
-/

namespace A284225.P530125591771164631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A167614 (n + 2) + 1).toNat

end

end A284225.P530125591771164631

/-! ## A284225.P6919565196630620841

`A284222(A166136(n+2)-2)`
-/

namespace A284225.P6919565196630620841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A166136 (n + 2) - 2).toNat

end

end A284225.P6919565196630620841

/-! ## A284225.P8292350780283515505

`A284222(A034856(n+2)+6)`
-/

namespace A284225.P8292350780283515505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A034856 (n + 2) + 6).toNat

end

end A284225.P8292350780283515505

/-!
# A284226: Number of 5 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284226, there is no canonical definition to state claims against.
-/

/-! ## A284226.P8525443848656173519

`A284222(A167499(n+3))`
-/

namespace A284226.P8525443848656173519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A167499 (n + 3)).toNat

end

end A284226.P8525443848656173519

/-! ## A284226.P11477404814813820920

`A284222(A056000(n)+15)`
-/

namespace A284226.P11477404814813820920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A056000 n + 15).toNat

end

end A284226.P11477404814813820920

/-! ## A284226.P6095638117171986263

`A284222(A034856(n+3)+7)`
-/

namespace A284226.P6095638117171986263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A034856 (n + 3) + 7).toNat

end

end A284226.P6095638117171986263

/-! ## A284226.P17569205966494103510

`A284222(A052905(n+1)+10)`
-/

namespace A284226.P17569205966494103510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A052905 (n + 1) + 10).toNat

end

end A284226.P17569205966494103510

/-! ## A284226.P1523452542713401211

`A284222(eq[6, A131818(n+1)])`
-/

namespace A284226.P1523452542713401211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284226.P1523452542713401211

/-!
# A284227: Number of 6 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284227, there is no canonical definition to state claims against.
-/

/-! ## A284227.P14852029843392923900

`A284222(A056115(n)+21)`
-/

namespace A284227.P14852029843392923900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A056115 n + 21).toNat

end

end A284227.P14852029843392923900

/-! ## A284227.P18371208808284165125

`A284222(A167614(n+4)+3)`
-/

namespace A284227.P18371208808284165125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A167614 (n + 4) + 3).toNat

end

end A284227.P18371208808284165125

/-! ## A284227.P17480465892609652901

`A284222(A016028(n+8)+3)`
-/

namespace A284227.P17480465892609652901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A016028 (n + 8) + 3).toNat

end

end A284227.P17480465892609652901

/-! ## A284227.P4869100738246644380

`A284222(A052905(n+2)+11)`
-/

namespace A284227.P4869100738246644380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A052905 (n + 2) + 11).toNat

end

end A284227.P4869100738246644380

/-! ## A284227.P8968659608998252443

`A284222(A155212(n+1)+14)`
-/

namespace A284227.P8968659608998252443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A155212 (n + 1) + 14).toNat

end

end A284227.P8968659608998252443

/-!
# A284228: Number of 7 X n 0..1 arrays with the number of 1's horizontally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284228, there is no canonical definition to state claims against.
-/

/-! ## A284228.P17177501563343600831

`A284222(eq[11, A066657(n)])`
-/

namespace A284228.P17177501563343600831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284228.P17177501563343600831

/-! ## A284228.P9636460826484111059

`A284222(A166136(n+5)+1)`
-/

namespace A284228.P9636460826484111059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A166136 (n + 5) + 1).toNat

end

end A284228.P9636460826484111059

/-! ## A284228.P4298410583025902802

`A284222(A167499(n+5)+2)`
-/

namespace A284228.P4298410583025902802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A167499 (n + 5) + 2).toNat

end

end A284228.P4298410583025902802

/-! ## A284228.P3748950516176415177

`A284222(A000124(n+6)+6)`
-/

namespace A284228.P3748950516176415177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (A000124 (n + 6) + 6).toNat

end

end A284228.P3748950516176415177

/-! ## A284228.P2747109192471311001

`A284222(eq[8, A131818(n+1)])`
-/

namespace A284228.P2747109192471311001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284228.P2747109192471311001

/-!
# A284229: a(n) is the least k such that A073802(k) = n.

The programs for A284229, there is no canonical definition to state claims against.
-/

/-! ## A284229.P6988304608489728435

`A339616(A272412(n+1))-1`
-/

namespace A284229.P6988304608489728435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339616 (A272412 (n + 1)).toNat - 1

end

end A284229.P6988304608489728435

/-!
# A284230: Number of self-avoiding planar walks starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal.

The programs for A284230, the canonical program `A284230.P6997306909779989970` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284230 has offset 0).

The definition of A284230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284230.P6997306909779989970

`(n+n%2)*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284230

/-- `(n+n%2)*a(n-1)+(n-1)*a(n-2)` -/
def P6997306909779989970.Spec : Prop :=
  ∀ n, P6997306909779989970.a n = A284230 n

theorem P6997306909779989970.correct : P6997306909779989970.Spec := by
  intro n
  simp only [A284230]

end A284230

/-! ## A284230.P9671352081176728647

`A000837(n)*A002024(A158265(n))`
-/

namespace A284230.P9671352081176728647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n * A002024 (A158265 n).toNat

end

end A284230.P9671352081176728647

namespace A284230

/-- `A000837(n)*A002024(A158265(n))` -/
def P9671352081176728647.Spec : Prop :=
  ∀ n, P9671352081176728647.a n = A284230 n

end A284230

/-!
# A284231: Total number of nodes summed over all self-avoiding planar walks starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal.

The programs for A284231, there is no canonical definition to state claims against.
-/

/-! ## A284231.P13604467188679056025

`A002265((n+1)*A129286(2*n))`
-/

namespace A284231.P13604467188679056025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n + 1 : ℤ) * A129286 (2 * n)).toNat

end

end A284231.P13604467188679056025

/-!
# A284232: Binary representation of generation n in the reversible cellular automaton RCA(2) when started with a single ON cell at generation 0.

The programs for A284232, there is no canonical definition to state claims against.
-/

/-! ## A284232.P5579515568762257897

`A007088(A284234(n))`
-/

namespace A284232.P5579515568762257897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284234 n).toNat

end

end A284232.P5579515568762257897

/-! ## A284232.P17495396656070740091

`A185544(2*A284234(n))`
-/

namespace A284232.P17495396656070740091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284234 n).toNat

end

end A284232.P17495396656070740091

/-! ## A284232.P8640808362432282930

`A185544(lcm(2, A284234(n)))`
-/

namespace A284232.P8640808362432282930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284234 n))

end

end A284232.P8640808362432282930

/-! ## A284232.P13833968487587383106

`A185544(A284234(n)+A284234(n))`
-/

namespace A284232.P13833968487587383106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A284234 n + A284234 n).toNat

end

end A284232.P13833968487587383106

/-!
# A284233: Sum of odd prime power divisors of n (not including 1).

The programs for A284233, there is no canonical definition to state claims against.
-/

/-! ## A284233.P317094705408947930

`∑{d}[n+1, #*A174275(#)]`
-/

namespace A284233.P317094705408947930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A174275 d

end

end A284233.P317094705408947930

/-! ## A284233.P1440978236309874536

`∑{d}[n+1, #*A353673(#)]`
-/

namespace A284233.P1440978236309874536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A353673 d

end

end A284233.P1440978236309874536

/-! ## A284233.P2790925111037776418

`A023888(n+1)-xor(n, n+1)`
-/

namespace A284233.P2790925111037776418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) - (Nat.xor n (n + 1) : ℤ)

end

end A284233.P2790925111037776418

/-! ## A284233.P11528841936798645327

`A023889((n+1)/2^val(n+1, 2))`
-/

namespace A284233.P11528841936798645327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A284233.P11528841936798645327

/-! ## A284233.P909016265355361064

`A327669((n+1)/2^val(n+1, 2))`
-/

namespace A284233.P909016265355361064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327669 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A284233.P909016265355361064

/-! ## A284233.P15228413731509272409

`A023889(A000265(n+1))`
-/

namespace A284233.P15228413731509272409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (A000265 (n + 1)).toNat

end

end A284233.P15228413731509272409

/-! ## A284233.P15097536764358264403

`A023889(A153733(n)+1)`
-/

namespace A284233.P15097536764358264403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (A153733 n + 1).toNat

end

end A284233.P15097536764358264403

/-! ## A284233.P3760254034794993481

`A023888(n+1)-A038712(n+1)`
-/

namespace A284233.P3760254034794993481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) - A038712 (n + 1)

end

end A284233.P3760254034794993481

/-! ## A284233.P5798413074783876171

`A326988(n+1)-A035321(n+1)`
-/

namespace A284233.P5798413074783876171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326988 (n + 1) - A035321 (n + 1)

end

end A284233.P5798413074783876171

/-!
# A284234: Decimal representation of generation n in the reversible cellular automaton RCA(2) when started with a single ON cell at generation 0.

The programs for A284234, the canonical program `A284234.P2349105101756407446` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284234 has offset 0).

The definition of A284234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284234.P2349105101756407446

`xor(2*xor(2*a(n-2), a(n-1)), a(n-1))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284234

/-- `xor(2*xor(2*a(n-2), a(n-1)), a(n-1))` -/
def P2349105101756407446.Spec : Prop :=
  ∀ n, (P2349105101756407446.a n : ℤ) = A284234 n

theorem P2349105101756407446.correct : P2349105101756407446.Spec := by
  intro n
  simp only [A284234]

end A284234

/-! ## A284234.P13736215254352641972

`A264977(abs(∑[(-4)^n]))`
-/

namespace A284234.P13736215254352641972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A284234.P13736215254352641972

namespace A284234

/-- `A264977(abs(∑[(-4)^n]))` -/
def P13736215254352641972.Spec : Prop :=
  ∀ n, P13736215254352641972.a n = A284234 n

end A284234

/-! ## A284234.P13352408131609155233

`A283975((abs(∑[(-4)^n])-1)/2)`
-/

namespace A284234.P13352408131609155233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283975 (SequenceMachineLib.roundAway (((|∑ j ∈ Finset.range (n + 1), f1 j| - 1 : ℤ) : ℚ) / 2)).toNat

end

end A284234.P13352408131609155233

namespace A284234

/-- `A283975((abs(∑[(-4)^n])-1)/2)` -/
def P13352408131609155233.Spec : Prop :=
  ∀ n, P13352408131609155233.a n = A284234 n

end A284234

/-!
# A284235: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A284235, the canonical program `A284235.P13269542876579324852` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284235 has offset 0).

The definition of A284235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284235.P6226080162389834080

`round(sin(4)^n)+floor(∑[10^n/11])`
-/

namespace A284235.P6226080162389834080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (4 : ℝ) ^ n) + ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A284235.P6226080162389834080

namespace A284235

/-- `round(sin(4)^n)+floor(∑[10^n/11])` -/
def P6226080162389834080.Spec : Prop :=
  ∀ n, P6226080162389834080.a n = A284235 n

end A284235

/-! ## A284235.P16335064299207181732

`A056830(n)+round(sin(4)^n)`
-/

namespace A284235.P16335064299207181732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + SequenceMachineLib.roundAway (Real.sin (4 : ℝ) ^ n)

end

end A284235.P16335064299207181732

namespace A284235

/-- `A056830(n)+round(sin(4)^n)` -/
def P16335064299207181732.Spec : Prop :=
  ∀ n, P16335064299207181732.a n = A284235 n

end A284235

/-! ## A284235.P14695269773100220586

`A013185(C(2, n))+floor(∑[10^n/11])`
-/

namespace A284235.P14695269773100220586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013185 (Nat.choose 2 n) + ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A284235.P14695269773100220586

namespace A284235

/-- `A013185(C(2, n))+floor(∑[10^n/11])` -/
def P14695269773100220586.Spec : Prop :=
  ∀ n, P14695269773100220586.a n = A284235 n

end A284235

/-! ## A284235.P13269542876579324852

`A263013(n)+A056830(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A284235

/-- `A263013(n)+A056830(n)` -/
def P13269542876579324852.Spec : Prop :=
  ∀ n, P13269542876579324852.a n = A284235 n

theorem P13269542876579324852.correct : P13269542876579324852.Spec := by
  intro n
  simp only [A284235]

end A284235

/-! ## A284235.P13183630202051249001

`xor(A056830(n), A130716(n))`
-/

namespace A284235.P13183630202051249001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056830 n) (A130716 n)

end

end A284235.P13183630202051249001

namespace A284235

/-- `xor(A056830(n), A130716(n))` -/
def P13183630202051249001.Spec : Prop :=
  ∀ n, P13183630202051249001.a n = A284235 n

end A284235

/-! ## A284235.P1223228113492192712

`xor(A268093(n+1)%2, A056830(n))`
-/

namespace A284235.P1223228113492192712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A268093 (n + 1)) 2) (A056830 n)

end

end A284235.P1223228113492192712

namespace A284235

/-- `xor(A268093(n+1)%2, A056830(n))` -/
def P1223228113492192712.Spec : Prop :=
  ∀ n, P1223228113492192712.a n = A284235 n

end A284235

/-! ## A284235.P10724849947820917096

`xor(A000007(A004524(n)), A056830(n))`
-/

namespace A284235.P10724849947820917096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A004524 n).toNat) (A056830 n)

end

end A284235.P10724849947820917096

namespace A284235

/-- `xor(A000007(A004524(n)), A056830(n))` -/
def P10724849947820917096.Spec : Prop :=
  ∀ n, P10724849947820917096.a n = A284235 n

end A284235

/-! ## A284235.P11434606182912687632

`xor(A007814(A007918(n)), A056830(n))`
-/

namespace A284235.P11434606182912687632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A007918 n).toNat) (A056830 n)

end

end A284235.P11434606182912687632

namespace A284235

/-- `xor(A007814(A007918(n)), A056830(n))` -/
def P11434606182912687632.Spec : Prop :=
  ∀ n, P11434606182912687632.a n = A284235 n

end A284235

/-! ## A284235.P5187083336676156331

`xor(A000007(A032634(n)), A056830(n))`
-/

namespace A284235.P5187083336676156331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A032634 n).toNat) (A056830 n)

end

end A284235.P5187083336676156331

namespace A284235

/-- `xor(A000007(A032634(n)), A056830(n))` -/
def P5187083336676156331.Spec : Prop :=
  ∀ n, P5187083336676156331.a n = A284235 n

end A284235

/-! ## A284235.P3214742217689840250

`xor(A000007(A261131(n)), A056830(n))`
-/

namespace A284235.P3214742217689840250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A261131 n).toNat) (A056830 n)

end

end A284235.P3214742217689840250

namespace A284235

/-- `xor(A000007(A261131(n)), A056830(n))` -/
def P3214742217689840250.Spec : Prop :=
  ∀ n, P3214742217689840250.a n = A284235 n

end A284235

/-! ## A284235.P13696286810173288449

`xor(A000007(A063960(n+1)), A056830(n))`
-/

namespace A284235.P13696286810173288449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A063960 (n + 1)).toNat) (A056830 n)

end

end A284235.P13696286810173288449

namespace A284235

/-- `xor(A000007(A063960(n+1)), A056830(n))` -/
def P13696286810173288449.Spec : Prop :=
  ∀ n, P13696286810173288449.a n = A284235 n

end A284235

/-! ## A284235.P4406111403432406096

`xor(A056830(n), A126988(A099392(n+1)))`
-/

namespace A284235.P4406111403432406096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056830 n) (A126988 (A099392 (n + 1)).toNat)

end

end A284235.P4406111403432406096

namespace A284235

/-- `xor(A056830(n), A126988(A099392(n+1)))` -/
def P4406111403432406096.Spec : Prop :=
  ∀ n, P4406111403432406096.a n = A284235 n

end A284235

/-! ## A284235.P2071705001884795072

`A056830(n)+A284237(n)-A000975(n)`
-/

namespace A284235.P2071705001884795072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + (A284237 n - A000975 n)

end

end A284235.P2071705001884795072

namespace A284235

/-- `A056830(n)+A284237(n)-A000975(n)` -/
def P2071705001884795072.Spec : Prop :=
  ∀ n, P2071705001884795072.a n = A284235 n

end A284235

/-!
# A284236: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A284236, the canonical program `A284236.P9099022732925578286` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284236 has offset 0).

The definition of A284236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284236.P9099022732925578286

`lcm(A284235(n), A287742(A266722(n)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A284236

/-- `lcm(A284235(n), A287742(A266722(n)))` -/
def P9099022732925578286.Spec : Prop :=
  ∀ n, (P9099022732925578286.a n : ℤ) = A284236 n

theorem P9099022732925578286.correct : P9099022732925578286.Spec := by
  intro n
  simp only [A284236]

end A284236

/-! ## A284236.P2969949865013715460

`A007088(A284238(n))`
-/

namespace A284236.P2969949865013715460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284238 n).toNat

end

end A284236.P2969949865013715460

namespace A284236

/-- `A007088(A284238(n))` -/
def P2969949865013715460.Spec : Prop :=
  ∀ n, P2969949865013715460.a n = A284236 n

end A284236

/-! ## A284236.P13875476666687962235

`A007088(and(A277954(n), A284485(n)))`
-/

namespace A284236.P13875476666687962235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A277954 n) (A284485 n)).toNat

end

end A284236.P13875476666687962235

namespace A284236

/-- `A007088(and(A277954(n), A284485(n)))` -/
def P13875476666687962235.Spec : Prop :=
  ∀ n, P13875476666687962235.a n = A284236 n

end A284236

/-! ## A284236.P10193542365564969449

`A007088(and(A136336(2*n), A277954(n)))`
-/

namespace A284236.P10193542365564969449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A136336 (2 * n)) (A277954 n)).toNat

end

end A284236.P10193542365564969449

namespace A284236

/-- `A007088(and(A136336(2*n), A277954(n)))` -/
def P10193542365564969449.Spec : Prop :=
  ∀ n, P10193542365564969449.a n = A284236 n

end A284236

/-!
# A284237: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A284237, the canonical program `A284237.P1618666122141262061` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284237 has offset 0).

The definition of A284237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284237.P1618666122141262061

`ogf((1-2x+2x^2+x^3-3x^4+2x^5)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284237

/-- `ogf((1-2x+2x^2+x^3-3x^4+2x^5)/(1-2x-x^2+2x^3))` -/
def P1618666122141262061.Spec : Prop :=
  ∀ n, P1618666122141262061.a n = A284237 n

theorem P1618666122141262061.correct : P1618666122141262061.Spec := by
  intro n
  simp only [A284237]

end A284237

/-! ## A284237.P10585106852447836957

`2^n-a(n-1)-1` with `a(0)=1, a(1)=0, a(2)=3, a(3)=5`
-/

namespace A284237.P10585106852447836957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 5] fun n a =>
  (2 ^ n : ℤ) - a (n - 1) - 1

end

end A284237.P10585106852447836957

namespace A284237

/-- `2^n-a(n-1)-1` -/
def P10585106852447836957.Spec : Prop :=
  ∀ n, P10585106852447836957.a n = A284237 n

end A284237

/-! ## A284237.P85506976718472240

`n%2+2*a(n-1)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=5`
-/

namespace A284237.P85506976718472240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 5] fun n a =>
  n % 2 + 2 * a (n - 1)

end

end A284237.P85506976718472240

namespace A284237

/-- `n%2+2*a(n-1)` -/
def P85506976718472240.Spec : Prop :=
  ∀ n, (P85506976718472240.a n : ℤ) = A284237 n

end A284237

/-! ## A284237.P11389069436118123612

`or(7, 3*a(n-1))-a(n-1)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=5`
-/

namespace A284237.P11389069436118123612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 5] fun n a =>
  Int.lor 7 (3 * a (n - 1)) - a (n - 1)

end

end A284237.P11389069436118123612

namespace A284237

/-- `or(7, 3*a(n-1))-a(n-1)` -/
def P11389069436118123612.Spec : Prop :=
  ∀ n, P11389069436118123612.a n = A284237 n

end A284237

/-! ## A284237.P5387490844205503541

`round(2/3*A283592(n))`
-/

namespace A284237.P5387490844205503541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (A283592 n : ℚ))

end

end A284237.P5387490844205503541

namespace A284237

/-- `round(2/3*A283592(n))` -/
def P5387490844205503541.Spec : Prop :=
  ∀ n, P5387490844205503541.a n = A284237 n

end A284237

/-! ## A284237.P18259889166222974076

`A000225(n)+char[3]-a(n-1)` with `a(0)=1`
-/

namespace A284237.P18259889166222974076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000225 n + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A284237.P18259889166222974076

namespace A284237

/-- `A000225(n)+char[3]-a(n-1)` -/
def P18259889166222974076.Spec : Prop :=
  ∀ n, P18259889166222974076.a n = A284237 n

end A284237

/-! ## A284237.P164763103830742257

`A263013(n)+A000975(n)`
-/

namespace A284237.P164763103830742257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n + A000975 n

end

end A284237.P164763103830742257

namespace A284237

/-- `A263013(n)+A000975(n)` -/
def P164763103830742257.Spec : Prop :=
  ∀ n, P164763103830742257.a n = A284237 n

end A284237

/-! ## A284237.P5607176811520956846

`xor(A000975(n), A130716(n))`
-/

namespace A284237.P5607176811520956846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A130716 n)

end

end A284237.P5607176811520956846

namespace A284237

/-- `xor(A000975(n), A130716(n))` -/
def P5607176811520956846.Spec : Prop :=
  ∀ n, P5607176811520956846.a n = A284237 n

end A284237

/-! ## A284237.P11036081060613067822

`A001045(n+1)-A266611(n+1)`
-/

namespace A284237.P11036081060613067822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A266611 (n + 1)

end

end A284237.P11036081060613067822

namespace A284237

/-- `A001045(n+1)-A266611(n+1)` -/
def P11036081060613067822.Spec : Prop :=
  ∀ n, P11036081060613067822.a n = A284237 n

end A284237

/-! ## A284237.P5759554876917510122

`xor(char[2-A253026(n+1)], A000975(n))`
-/

namespace A284237.P5759554876917510122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A253026 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000975 n)

end

end A284237.P5759554876917510122

namespace A284237

/-- `xor(char[2-A253026(n+1)], A000975(n))` -/
def P5759554876917510122.Spec : Prop :=
  ∀ n, P5759554876917510122.a n = A284237 n

end A284237

/-! ## A284237.P10955580108692221828

`xor(A000007(A004524(n)), A000975(n))`
-/

namespace A284237.P10955580108692221828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A004524 n).toNat) (A000975 n)

end

end A284237.P10955580108692221828

namespace A284237

/-- `xor(A000007(A004524(n)), A000975(n))` -/
def P10955580108692221828.Spec : Prop :=
  ∀ n, P10955580108692221828.a n = A284237 n

end A284237

/-! ## A284237.P2104717838744812071

`xor(A000975(n), A007814(A007918(n)))`
-/

namespace A284237.P2104717838744812071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A007814 (A007918 n).toNat)

end

end A284237.P2104717838744812071

namespace A284237

/-- `xor(A000975(n), A007814(A007918(n)))` -/
def P2104717838744812071.Spec : Prop :=
  ∀ n, P2104717838744812071.a n = A284237 n

end A284237

/-! ## A284237.P17023987330753547348

`ceil(A283650(n)/3)`
-/

namespace A284237.P17023987330753547348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A283650 n : ℚ) / 3⌉

end

end A284237.P17023987330753547348

namespace A284237

/-- `ceil(A283650(n)/3)` -/
def P17023987330753547348.Spec : Prop :=
  ∀ n, P17023987330753547348.a n = A284237 n

end A284237

/-! ## A284237.P7854316590170364476

`ceil(A283709(n)/3)`
-/

namespace A284237.P7854316590170364476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A283709 n : ℚ) / 3⌉

end

end A284237.P7854316590170364476

namespace A284237

/-- `ceil(A283709(n)/3)` -/
def P7854316590170364476.Spec : Prop :=
  ∀ n, P7854316590170364476.a n = A284237 n

end A284237

/-! ## A284237.P7408176901991891387

`A000975(n+1)-(A266611(n+1)+A000975(n))`
-/

namespace A284237.P7408176901991891387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) - (A266611 (n + 1) + A000975 n)

end

end A284237.P7408176901991891387

namespace A284237

/-- `A000975(n+1)-(A266611(n+1)+A000975(n))` -/
def P7408176901991891387.Spec : Prop :=
  ∀ n, P7408176901991891387.a n = A284237 n

end A284237

/-! ## A284237.P5274144927649361472

`floor(A086953(2*n)/A011782(n))`
-/

namespace A284237.P5274144927649361472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086953 (2 * n) : ℚ) / (A011782 n : ℚ)⌋

end

end A284237.P5274144927649361472

namespace A284237

/-- `floor(A086953(2*n)/A011782(n))` -/
def P5274144927649361472.Spec : Prop :=
  ∀ n, P5274144927649361472.a n = A284237 n

end A284237

/-! ## A284237.P18148563874794722298

`A000975(n)+A284235(n)-A056830(n)`
-/

namespace A284237.P18148563874794722298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (A284235 n - A056830 n)

end

end A284237.P18148563874794722298

namespace A284237

/-- `A000975(n)+A284235(n)-A056830(n)` -/
def P18148563874794722298.Spec : Prop :=
  ∀ n, P18148563874794722298.a n = A284237 n

end A284237

/-!
# A284238: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 833", based on the 5-celled von Neumann neighborhood.

The programs for A284238, the canonical program `A284238.P6889333988993122988` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284238 has offset 0).

The definition of A284238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284238.P6889333988993122988

`4*a(n-2)+2` with `a(0)=1, a(1)=0, a(2)=6, a(3)=10, a(4)=10`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284238

/-- `4*a(n-2)+2` -/
def P6889333988993122988.Spec : Prop :=
  ∀ n, (P6889333988993122988.a n : ℤ) = A284238 n

theorem P6889333988993122988.correct : P6889333988993122988.Spec := by
  intro n
  simp only [A284238]

end A284238

/-! ## A284238.P5404212316757831328

`or(2, 4*a(n-2))` with `a(0)=1, a(1)=0, a(2)=6, a(3)=10, a(4)=10`
-/

namespace A284238.P5404212316757831328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 6, 10, 10] fun n a =>
  Nat.lor 2 (4 * a (n - 2))

end

end A284238.P5404212316757831328

namespace A284238

/-- `or(2, 4*a(n-2))` -/
def P5404212316757831328.Spec : Prop :=
  ∀ n, (P5404212316757831328.a n : ℤ) = A284238 n

end A284238

/-! ## A284238.P93624419643905340

`and(A277954(n), A284485(n))`
-/

namespace A284238.P93624419643905340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277954 n) (A284485 n)

end

end A284238.P93624419643905340

namespace A284238

/-- `and(A277954(n), A284485(n))` -/
def P93624419643905340.Spec : Prop :=
  ∀ n, P93624419643905340.a n = A284238 n

end A284238

/-! ## A284238.P240704740333745291

`and(A136336(2*n), A277954(n))`
-/

namespace A284238.P240704740333745291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136336 (2 * n)) (A277954 n)

end

end A284238.P240704740333745291

namespace A284238

/-- `and(A136336(2*n), A277954(n))` -/
def P240704740333745291.Spec : Prop :=
  ∀ n, P240704740333745291.a n = A284238 n

end A284238

/-! ## A284238.P4177421056836180374

`and(record[A087231(n+1)], A277954(n))`
-/

namespace A284238.P4177421056836180374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A277954 n)

end

end A284238.P4177421056836180374

namespace A284238

/-- `and(record[A087231(n+1)], A277954(n))` -/
def P4177421056836180374.Spec : Prop :=
  ∀ n, P4177421056836180374.a n = A284238 n

end A284238

/-! ## A284238.P13547846749581609416

`and(record[A087231(n+1)], A284485(n))`
-/

namespace A284238.P13547846749581609416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A284485 n)

end

end A284238.P13547846749581609416

namespace A284238

/-- `and(record[A087231(n+1)], A284485(n))` -/
def P13547846749581609416.Spec : Prop :=
  ∀ n, P13547846749581609416.a n = A284238 n

end A284238

/-! ## A284238.P2133050472532219849

`record[A087231(n+1)]%A000079(n+1)`
-/

namespace A284238.P2133050472532219849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000079 (n + 1))

end

end A284238.P2133050472532219849

namespace A284238

/-- `record[A087231(n+1)]%A000079(n+1)` -/
def P2133050472532219849.Spec : Prop :=
  ∀ n, P2133050472532219849.a n = A284238 n

end A284238

/-! ## A284238.P9843366696580517263

`and(A136336(n+1)-1, A136336(2*n))`
-/

namespace A284238.P9843366696580517263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136336 (n + 1) - 1) (A136336 (2 * n))

end

end A284238.P9843366696580517263

namespace A284238

/-- `and(A136336(n+1)-1, A136336(2*n))` -/
def P9843366696580517263.Spec : Prop :=
  ∀ n, P9843366696580517263.a n = A284238 n

end A284238

/-!
# A284239: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A284239, there is no canonical definition to state claims against.
-/

/-! ## A284239.P14816166013194327319

`A007088(A284241(n))`
-/

namespace A284239.P14816166013194327319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284241 n).toNat

end

end A284239.P14816166013194327319

/-! ## A284239.P17501471090700401773

`A284303(A089840(∑[n]))`
-/

namespace A284239.P17501471090700401773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284303 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284239.P17501471090700401773

/-! ## A284239.P2964847156362259291

`A284303(A122200(∑[n]))`
-/

namespace A284239.P2964847156362259291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284303 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284239.P2964847156362259291

/-! ## A284239.P17904890807661915911

`A284303(A122204(∑[n]))`
-/

namespace A284239.P17904890807661915911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284303 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284239.P17904890807661915911

/-! ## A284239.P15540942773727880309

`A284303(A122290(∑[n]))`
-/

namespace A284239.P15540942773727880309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284303 (A122290 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284239.P15540942773727880309

/-!
# A284240: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A284240, there is no canonical definition to state claims against.
-/

/-! ## A284240.P14084710604083386539

`A007088(A284242(n))`
-/

namespace A284240.P14084710604083386539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284242 n).toNat

end

end A284240.P14084710604083386539

/-! ## A284240.P17233508891330588777

`A284304(A089840(∑[n]))`
-/

namespace A284240.P17233508891330588777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284304 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284240.P17233508891330588777

/-! ## A284240.P3021128573980820230

`A284304(A122200(∑[n]))`
-/

namespace A284240.P3021128573980820230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284304 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284240.P3021128573980820230

/-! ## A284240.P7893804782420014215

`A284304(A122204(∑[n]))`
-/

namespace A284240.P7893804782420014215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284304 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284240.P7893804782420014215

/-! ## A284240.P12369138943693186018

`A284304(A122284(∑[n]))`
-/

namespace A284240.P12369138943693186018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284304 (A122284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284240.P12369138943693186018

/-!
# A284241: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A284241, there is no canonical definition to state claims against.
-/

/-! ## A284241.P15158971641675743208

`A057889(A284242(n))`
-/

namespace A284241.P15158971641675743208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284242 n).toNat

end

end A284241.P15158971641675743208

/-! ## A284241.P10251122455138463897

`A057889(A284306(n))`
-/

namespace A284241.P10251122455138463897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284306 n).toNat

end

end A284241.P10251122455138463897

/-! ## A284241.P18204840650513767207

`A065883(A284305(n))`
-/

namespace A284241.P18204840650513767207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A284305 n).toNat

end

end A284241.P18204840650513767207

/-! ## A284241.P2091777220208029111

`A284305(A089840(∑[n]))`
-/

namespace A284241.P2091777220208029111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284305 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284241.P2091777220208029111

/-! ## A284241.P2034146063741837394

`A284305(A122200(∑[n]))`
-/

namespace A284241.P2034146063741837394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284305 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284241.P2034146063741837394

/-!
# A284243: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A284243, there is no canonical definition to state claims against.
-/

/-! ## A284243.P8541713781440097311

`A007088(A284245(n))`
-/

namespace A284243.P8541713781440097311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284245 n).toNat

end

end A284243.P8541713781440097311

/-! ## A284243.P16642953790071086609

`A185544(2*A284245(n))`
-/

namespace A284243.P16642953790071086609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284245 n).toNat

end

end A284243.P16642953790071086609

/-! ## A284243.P9113210548826738531

`A007088(2^n-∑{p}[A209341(n+1), gcd(n, #)])`
-/

namespace A284243.P9113210548826738531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 ^ n - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd n p)

end

end A284243.P9113210548826738531

/-! ## A284243.P10199251259419715637

`A284020(n)-A293113(A337888(n+2))`
-/

namespace A284243.P10199251259419715637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284020 n - A293113 (A337888 (n + 2)).toNat

end

end A284243.P10199251259419715637

/-!
# A284244: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A284244, there is no canonical definition to state claims against.
-/

/-! ## A284244.P16552395968367534340

`A007088(A284246(n))`
-/

namespace A284244.P16552395968367534340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284246 n).toNat

end

end A284244.P16552395968367534340

/-! ## A284244.P17264101859371540584

`A185544(2*A284246(n))`
-/

namespace A284244.P17264101859371540584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284246 n).toNat

end

end A284244.P17264101859371540584

/-! ## A284244.P12625925867098034876

`A185544(A284246(n)+A284246(n))`
-/

namespace A284244.P12625925867098034876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A284246 n + A284246 n).toNat

end

end A284244.P12625925867098034876

/-!
# A284245: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 841", based on the 5-celled von Neumann neighborhood.

The programs for A284245, there is no canonical definition to state claims against.
-/

/-! ## A284245.P15710546160198089317

`2^n-∑{p}[A209341(n+1), gcd(n, #)]`
-/

namespace A284245.P15710546160198089317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd n p : ℕ) : ℤ)

end

end A284245.P15710546160198089317

/-! ## A284245.P9872129020383126207

`xor(2^n-1, A263860(A263869(n+1)))`
-/

namespace A284245.P9872129020383126207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) (A263860 (A263869 (n + 1)).toNat)

end

end A284245.P9872129020383126207

/-! ## A284245.P9018913279324072165

`xor(A064547(n+1), A340602(ceil(2^(n-1))))`
-/

namespace A284245.P9018913279324072165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064547 (n + 1)) (A340602 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A284245.P9018913279324072165

/-!
# A284247: Binary representation of generation n in the reversible cellular automaton RCA(1) when started with a single ON cell at generation 0.

The programs for A284247, there is no canonical definition to state claims against.
-/

/-! ## A284247.P6955020016679559610

`A101623(Δ[n²])`
-/

namespace A284247.P6955020016679559610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101623 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284247.P6955020016679559610

/-! ## A284247.P2267214539981802895

`or(1, A101623(2*n+1))`
-/

namespace A284247.P2267214539981802895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101623 (2 * n + 1))

end

end A284247.P2267214539981802895

/-! ## A284247.P13743793353011933599

`lcm(2, A101623(A005408(n)))/2`
-/

namespace A284247.P13743793353011933599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A101623 (A005408 n).toNat) : ℚ) / 2

end

end A284247.P13743793353011933599

/-! ## A284247.P14937811228354715124

`A101623(2*n+1)+A322201(n)%2`
-/

namespace A284247.P14937811228354715124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101623 (2 * n + 1) + Int.tmod (A322201 n) 2

end

end A284247.P14937811228354715124

/-! ## A284247.P9947569292759565308

`gcd(A054977(n)-1, A101623(2*n+1))`
-/

namespace A284247.P9947569292759565308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054977 n - 1) (A101623 (2 * n + 1))

end

end A284247.P9947569292759565308

/-! ## A284247.P11582907537373748139

`A101623(2*n+1)/A007318(C(2, n+2))`
-/

namespace A284247.P11582907537373748139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101623 (2 * n + 1) : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A284247.P11582907537373748139

/-! ## A284247.P12766321425738879036

`gcd(A000038(n), A101623(A005843(n)+1))`
-/

namespace A284247.P12766321425738879036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A101623 (A005843 n + 1).toNat)

end

end A284247.P12766321425738879036

/-! ## A284247.P2422161123116793086

`A101623(A005408(n))/A008836(n+1)²`
-/

namespace A284247.P2422161123116793086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101623 (A005408 n).toNat : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A284247.P2422161123116793086

/-! ## A284247.P1681834420736845431

`A008836(A005408(n)²)*A101623(A005408(n))`
-/

namespace A284247.P1681834420736845431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A005408 n ^ 2).toNat * A101623 (A005408 n).toNat

end

end A284247.P1681834420736845431

/-!
# A284248: Every binary string w of length n has a subword of length a(n) that appears at least twice in w.

The programs for A284248, the canonical program `A284248.P4513747486548070708` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284248 has offset 1).

The definition of A284248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284248.P14813756904709202169

`∑[char[∑[1+2^n]]]`
-/

namespace A284248.P14813756904709202169
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284248.P14813756904709202169

namespace A284248

/-- `∑[char[∑[1+2^n]]]` -/
def P14813756904709202169.Spec : Prop :=
  ∀ n, (P14813756904709202169.a n : ℤ) = A284248 (n + 1)

end A284248

/-! ## A284248.P4513747486548070708

`floor(log2(n-a(n-1)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284248

/-- `floor(log2(n-a(n-1)))` -/
def P4513747486548070708.Spec : Prop :=
  ∀ n, (P4513747486548070708.a n : ℤ) = A284248 (n + 1)

theorem P4513747486548070708.correct : P4513747486548070708.Spec := by
  intro n
  simp only [A284248, Nat.add_sub_cancel]

end A284248

/-! ## A284248.P18147537972962331456

`comp[2*or(n, 2^n)]-n`
-/

namespace A284248.P18147537972962331456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor n (2 ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A284248.P18147537972962331456

namespace A284248

/-- `comp[2*or(n, 2^n)]-n` -/
def P18147537972962331456.Spec : Prop :=
  ∀ n, P18147537972962331456.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P16901055234853670477

`comp[2*xor(n, 2^n)]-n`
-/

namespace A284248.P16901055234853670477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (2 ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A284248.P16901055234853670477

namespace A284248

/-- `comp[2*xor(n, 2^n)]-n` -/
def P16901055234853670477.Spec : Prop :=
  ∀ n, P16901055234853670477.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P10551982974208171309

`comp[∑[or(1, 2^n)+1]]-n`
-/

namespace A284248.P10551982974208171309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A284248.P10551982974208171309

namespace A284248

/-- `comp[∑[or(1, 2^n)+1]]-n` -/
def P10551982974208171309.Spec : Prop :=
  ∀ n, P10551982974208171309.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P12956191600061928560

`∑[char[or(n, 2^n)-1]]-1`
-/

namespace A284248.P12956191600061928560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 ^ n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A284248.P12956191600061928560

namespace A284248

/-- `∑[char[or(n, 2^n)-1]]-1` -/
def P12956191600061928560.Spec : Prop :=
  ∀ n, P12956191600061928560.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P1303724610303876172

`comp[∑[and(-2, 2^n)+2]]-n`
-/

namespace A284248.P1303724610303876172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284248.P1303724610303876172

namespace A284248

/-- `comp[∑[and(-2, 2^n)+2]]-n` -/
def P1303724610303876172.Spec : Prop :=
  ∀ n, P1303724610303876172.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P18173516352876928820

`floor(log(sqrt(3*∑[C(n, 2)+1]-2)))`
-/

namespace A284248.P18173516352876928820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.sqrt (((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 2 : ℝ))⌋

end

end A284248.P18173516352876928820

namespace A284248

/-- `floor(log(sqrt(3*∑[C(n, 2)+1]-2)))` -/
def P18173516352876928820.Spec : Prop :=
  ∀ n, P18173516352876928820.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P13542570704672139779

`comp[∑[2*a(n-1)-2]]-n` with `a(0)=2, a(1)=4`
-/

namespace A284248.P13542570704672139779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  2 * f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284248.P13542570704672139779

namespace A284248

/-- `comp[∑[2*a(n-1)-2]]-n` -/
def P13542570704672139779.Spec : Prop :=
  ∀ n, P13542570704672139779.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P9526418043502835867

`floor(log2(n+1-floor(log2(n+1))%(n+1)))`
-/

namespace A284248.P9526418043502835867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((n + 1 : ℤ) - ((Nat.log 2 (n + 1) % (n + 1) : ℕ) : ℤ)).toNat

end

end A284248.P9526418043502835867

namespace A284248

/-- `floor(log2(n+1-floor(log2(n+1))%(n+1)))` -/
def P9526418043502835867.Spec : Prop :=
  ∀ n, (P9526418043502835867.a n : ℤ) = A284248 (n + 1)

end A284248

/-! ## A284248.P9548379333405402548

`floor(log2(A103354(n+1)))`
-/

namespace A284248.P9548379333405402548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A103354 (n + 1)).toNat

end

end A284248.P9548379333405402548

namespace A284248

/-- `floor(log2(A103354(n+1)))` -/
def P9548379333405402548.Spec : Prop :=
  ∀ n, (P9548379333405402548.a n : ℤ) = A284248 (n + 1)

end A284248

/-! ## A284248.P15667240995868057375

`floor(log2(A247983(n+1)))`
-/

namespace A284248.P15667240995868057375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A247983 (n + 1)).toNat

end

end A284248.P15667240995868057375

namespace A284248

/-- `floor(log2(A247983(n+1)))` -/
def P15667240995868057375.Spec : Prop :=
  ∀ n, (P15667240995868057375.a n : ℤ) = A284248 (n + 1)

end A284248

/-! ## A284248.P14612066896640797723

`ceil(log2(A006949(n+1)))`
-/

namespace A284248.P14612066896640797723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A006949 (n + 1) : ℝ)⌉

end

end A284248.P14612066896640797723

namespace A284248

/-- `ceil(log2(A006949(n+1)))` -/
def P14612066896640797723.Spec : Prop :=
  ∀ n, P14612066896640797723.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P18126381472275853616

`ceil(log2(A055748(n+1)))`
-/

namespace A284248.P18126381472275853616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A055748 (n + 1) : ℝ)⌉

end

end A284248.P18126381472275853616

namespace A284248

/-- `ceil(log2(A055748(n+1)))` -/
def P18126381472275853616.Spec : Prop :=
  ∀ n, P18126381472275853616.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P8939177496572137833

`ceil(log2(A087816(n+1)))`
-/

namespace A284248.P8939177496572137833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A087816 (n + 1) : ℝ)⌉

end

end A284248.P8939177496572137833

namespace A284248

/-- `ceil(log2(A087816(n+1)))` -/
def P8939177496572137833.Spec : Prop :=
  ∀ n, P8939177496572137833.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P8980300677046346143

`ceil(log2(A285760(n+1)))`
-/

namespace A284248.P8980300677046346143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A285760 (n + 1) : ℝ)⌉

end

end A284248.P8980300677046346143

namespace A284248

/-- `ceil(log2(A285760(n+1)))` -/
def P8980300677046346143.Spec : Prop :=
  ∀ n, P8980300677046346143.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P17487447448934090387

`ceil(log2(A109964(n+2)))`
-/

namespace A284248.P17487447448934090387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A109964 (n + 2) : ℝ)⌉

end

end A284248.P17487447448934090387

namespace A284248

/-- `ceil(log2(A109964(n+2)))` -/
def P17487447448934090387.Spec : Prop :=
  ∀ n, P17487447448934090387.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P2610254541422164079

`1-Δ[A006697(n)]+n`
-/

namespace A284248.P2610254541422164079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A284248.P2610254541422164079

namespace A284248

/-- `1-Δ[A006697(n)]+n` -/
def P2610254541422164079.Spec : Prop :=
  ∀ n, P2610254541422164079.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P11310886304297189759

`n-∑[A288132(n+2)]`
-/

namespace A284248.P11310886304297189759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284248.P11310886304297189759

namespace A284248

/-- `n-∑[A288132(n+2)]` -/
def P11310886304297189759.Spec : Prop :=
  ∀ n, P11310886304297189759.a n = A284248 (n + 1)

end A284248

/-! ## A284248.P17743490537593919990

`floor(log2(log2(A000799(n+2))))`
-/

namespace A284248.P17743490537593919990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A000799 (n + 2) : ℝ))⌋

end

end A284248.P17743490537593919990

namespace A284248

/-- `floor(log2(log2(A000799(n+2))))` -/
def P17743490537593919990.Spec : Prop :=
  ∀ n, P17743490537593919990.a n = A284248 (n + 1)

end A284248

/-!
# A284249: Number T(n,k) of k-element subsets of [n] whose sum is a triangular number; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A284249, there is no canonical definition to state claims against.
-/

/-! ## A284249.P15626776217521286517

`A382397(A362644(n+1))`
-/

namespace A284249.P15626776217521286517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A362644 (n + 1)).toNat

end

end A284249.P15626776217521286517

/-! ## A284249.P5565692036490696247

`A234287(A102728(n+1)+1)`
-/

namespace A284249.P5565692036490696247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234287 (A102728 (n + 1) + 1).toNat

end

end A284249.P5565692036490696247

/-! ## A284249.P4639670218975379606

`A344150(A288638(n+1)+1)`
-/

namespace A284249.P4639670218975379606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344150 (A288638 (n + 1) + 1).toNat

end

end A284249.P4639670218975379606

/-! ## A284249.P6363525684003302281

`A050431(A001221(n+3)*A330942(n))`
-/

namespace A284249.P6363525684003302281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A001221 (n + 3) * A330942 n).toNat

end

end A284249.P6363525684003302281

/-! ## A284249.P18191931306296231370

`A102681(A128433(n+1))+A091499(n+1)`
-/

namespace A284249.P18191931306296231370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A128433 (n + 1)).toNat + A091499 (n + 1)

end

end A284249.P18191931306296231370

/-!
# A284250: Number of subsets of [n] whose sum is a triangular number.

The programs for A284250, there is no canonical definition to state claims against.
-/

/-! ## A284250.P11990519411175458423

`∑[A137734(Δ[A055226(n)])]`
-/

namespace A284250.P11990519411175458423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284250.P11990519411175458423

/-! ## A284250.P7356075392999262028

`∑[A137734(Δ[A055228(n)])]`
-/

namespace A284250.P7356075392999262028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284250.P7356075392999262028

/-! ## A284250.P3453880174083796906

`A051889(A054886(n)+A011782(n))`
-/

namespace A284250.P3453880174083796906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A054886 n + A011782 n).toNat

end

end A284250.P3453880174083796906

/-! ## A284250.P1330818968038645956

`A051889(A238531(n)+A164183(n))`
-/

namespace A284250.P1330818968038645956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A238531 n + A164183 n).toNat

end

end A284250.P1330818968038645956

/-! ## A284250.P13205330152128945489

`A055086(A322110(n)+A265569(n))`
-/

namespace A284250.P13205330152128945489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A322110 n + A265569 n).toNat

end

end A284250.P13205330152128945489

/-!
# A284251: Number of n-element subsets of [2n] whose sum is a triangular number.

The programs for A284251, there is no canonical definition to state claims against.
-/

/-! ## A284251.P11730802462730679532

`A284249(∑[4*n])`
-/

namespace A284251.P11730802462730679532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284251.P11730802462730679532

/-! ## A284251.P11752926137567452823

`A284249(A046092(n))-log2(1/2)-1`
-/

namespace A284251.P11752926137567452823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A284249 (A046092 n).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - 1

end

end A284251.P11752926137567452823

/-! ## A284251.P4536122213406329894

`gcd(A000038(n), A284249(A046092(n)))`
-/

namespace A284251.P4536122213406329894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284249 (A046092 n).toNat)

end

end A284251.P4536122213406329894

/-! ## A284251.P17017865612754018955

`lcm(A033999(n), A284249(A046092(n)))`
-/

namespace A284251.P17017865612754018955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A284249 (A046092 n).toNat)

end

end A284251.P17017865612754018955

/-! ## A284251.P4054174476450240543

`or(A000007(n), A284249(A046092(n)))`
-/

namespace A284251.P4054174476450240543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A284249 (A046092 n).toNat)

end

end A284251.P4054174476450240543

/-! ## A284251.P14546166204910947062

`A284249(A046092(n))+A000007(n+1)`
-/

namespace A284251.P14546166204910947062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A046092 n).toNat + A000007 (n + 1)

end

end A284251.P14546166204910947062

/-! ## A284251.P13050356486445716789

`A284249(A046092(n))+A049240((n+1)²)`
-/

namespace A284251.P13050356486445716789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A046092 n).toNat + A049240 ((n + 1) ^ 2)

end

end A284251.P13050356486445716789

/-! ## A284251.P11724306074307232402

`A284249(A046092(n))+A008683(4*(n+1))`
-/

namespace A284251.P11724306074307232402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A284251.P11724306074307232402

/-! ## A284251.P1118222758436410179

`A007318(A000217(n))*A284249(A046092(n))`
-/

namespace A284251.P1118222758436410179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A284249 (A046092 n).toNat

end

end A284251.P1118222758436410179

/-!
# A284252: a(n) = smallest prime dividing n which is larger than the square of smallest prime dividing n, or 1 if no such prime exists, a(1) = 1.

The programs for A284252, there is no canonical definition to state claims against.
-/

/-! ## A284252.P4905497109759783835

`A020639(A284254(n+1))`
-/

namespace A284252.P4905497109759783835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284254 (n + 1)).toNat

end

end A284252.P4905497109759783835

/-! ## A284252.P9321852963947296284

`(n+1)/A284253(n+1)`
-/

namespace A284252.P9321852963947296284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284253 (n + 1) : ℚ)

end

end A284252.P9321852963947296284

/-! ## A284252.P10814236523766131584

`A292269(2*A284254(n+1))`
-/

namespace A284252.P10814236523766131584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * A284254 (n + 1)).toNat

end

end A284252.P10814236523766131584

/-! ## A284252.P2568723543880592821

`A020639((n+1)/A284255(n+1))`
-/

namespace A284252.P2568723543880592821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284255 (n + 1) : ℚ))).toNat

end

end A284252.P2568723543880592821

/-! ## A284252.P7669985143229860154

`A007913((n+1)*A284253(n+1))`
-/

namespace A284252.P7669985143229860154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A284253 (n + 1)).toNat

end

end A284252.P7669985143229860154

/-! ## A284252.P18134853368409393051

`A082067(A284254(n+1)²)`
-/

namespace A284252.P18134853368409393051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A284254 (n + 1) ^ 2).toNat

end

end A284252.P18134853368409393051

/-!
# A284253: a(n) = n / A284252(n).

The programs for A284253, there is no canonical definition to state claims against.
-/

/-! ## A284253.P17937480010779958887

`(n+1)/A284252(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284253.P17937480010779958887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284252 (n + 1) : ℚ)

end

end A284253.P17937480010779958887

/-! ## A284253.P10383754217779907913

`(n+1)/A020639(A284254(n+1))`
-/

namespace A284253.P10383754217779907913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A284254 (n + 1)).toNat : ℚ)

end

end A284253.P10383754217779907913

/-! ## A284253.P13299959638965789701

`(n+1)/A020639((n+1)/A284255(n+1))`
-/

namespace A284253.P13299959638965789701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284255 (n + 1) : ℚ))).toNat : ℚ)

end

end A284253.P13299959638965789701

/-! ## A284253.P15553349205578885331

`A032742(A284254(n+1))*A284255(n+1)`
-/

namespace A284253.P15553349205578885331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A284254 (n + 1)).toNat * A284255 (n + 1)

end

end A284253.P15553349205578885331

/-! ## A284253.P4742521875954866641

`(n+1)/A082067(A284254(n+1)²)`
-/

namespace A284253.P4742521875954866641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082067 (A284254 (n + 1) ^ 2).toNat : ℚ)

end

end A284253.P4742521875954866641

/-! ## A284253.P12262826761859129103

`A234575(A284252(n+1)+A000217(n))`
-/

namespace A284253.P12262826761859129103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A284252 (n + 1) + A000217 n).toNat

end

end A284253.P12262826761859129103

/-! ## A284253.P14349261750976566859

`A010766(A284252(n+1)+A000217(n))`
-/

namespace A284253.P14349261750976566859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A284252 (n + 1) + A000217 n).toNat

end

end A284253.P14349261750976566859

/-! ## A284253.P7409554341354913123

`A054531(A284252(n+1)+A000217(n))`
-/

namespace A284253.P7409554341354913123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A284252 (n + 1) + A000217 n).toNat

end

end A284253.P7409554341354913123

/-! ## A284253.P15443585136536514639

`gcd(n+1, A127685(n+1)*A284255(n+1))`
-/

namespace A284253.P15443585136536514639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A127685 (n + 1) * A284255 (n + 1))

end

end A284253.P15443585136536514639

/-!
# A284254: Largest divisor of n such that all its prime factors are greater than the square of smallest prime factor of n, a(1) = 1.

The programs for A284254, there is no canonical definition to state claims against.
-/

/-! ## A284254.P1536911634729146237

`(n+1)/A284255(n+1)`
-/

namespace A284254.P1536911634729146237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284255 (n + 1) : ℚ)

end

end A284254.P1536911634729146237

/-! ## A284254.P15183554360846785558

`(n+1)/A284253(A284253(n+1)%A224262(n+1))`
-/

namespace A284254.P15183554360846785558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284253 (Int.tmod (A284253 (n + 1)) (A224262 (n + 1))).toNat : ℚ)

end

end A284254.P15183554360846785558

/-! ## A284254.P16985216025993828323

`A284252(n+1)*A284252(A284253(n+1)²)`
-/

namespace A284254.P16985216025993828323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (n + 1) * A284252 (A284253 (n + 1) ^ 2).toNat

end

end A284254.P16985216025993828323

/-! ## A284254.P2634310063450594370

`A343249(((n+1)/2^val(n+1, 2))^A284258(n+1))`
-/

namespace A284254.P2634310063450594370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343249 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ (A284258 (n + 1) : ℤ))).toNat

end

end A284254.P2634310063450594370

/-! ## A284254.P5235826672032937772

`A284252(A160755(n+2))`
-/

namespace A284254.P5235826672032937772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (A160755 (n + 2)).toNat

end

end A284254.P5235826672032937772

/-!
# A284255: Largest divisor of n such that all its prime factors are less than the square of the smallest prime factor of n, a(1) = 1.

The programs for A284255, there is no canonical definition to state claims against.
-/

/-! ## A284255.P1743954062237733533

`(n+1)/A284254(n+1)`
-/

namespace A284255.P1743954062237733533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284254 (n + 1) : ℚ)

end

end A284255.P1743954062237733533

/-! ## A284255.P13317534698169633900

`A219158(A284254(n+1)+A000217(n))`
-/

namespace A284255.P13317534698169633900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A284254 (n + 1) + A000217 n).toNat

end

end A284255.P13317534698169633900

/-! ## A284255.P15939170166477689538

`A284253(A284253(n+1))%p?[A000124(n)]`
-/

namespace A284255.P15939170166477689538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284253 (A284253 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A284255.P15939170166477689538

/-! ## A284255.P6239797145465161679

`A284253(A284253(n+1)%A238895(n+1))`
-/

namespace A284255.P6239797145465161679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284253 (Int.tmod (A284253 (n + 1)) (A238895 (n + 1))).toNat

end

end A284255.P6239797145465161679

/-! ## A284255.P13589437570140339088

`A284256(A284252(n+1)²)+A284253(A284253(n+1))`
-/

namespace A284255.P13589437570140339088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A284252 (n + 1) ^ 2).toNat + A284253 (A284253 (n + 1)).toNat

end

end A284255.P13589437570140339088

/-! ## A284255.P11010561382352021359

`A284258(A284252(n+1)²)+A284253(A284253(n+1))`
-/

namespace A284255.P11010561382352021359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (A284252 (n + 1) ^ 2).toNat + A284253 (A284253 (n + 1)).toNat

end

end A284255.P11010561382352021359

/-! ## A284255.P5208913234436400389

`A284252(A284252(n+1)²)*A284253(A284253(n+1))`
-/

namespace A284255.P5208913234436400389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (A284252 (n + 1) ^ 2).toNat * A284253 (A284253 (n + 1)).toNat

end

end A284255.P5208913234436400389

/-! ## A284255.P12318839056037449823

`A126988(A284254(n+1)+A000217(n))`
-/

namespace A284255.P12318839056037449823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A284254 (n + 1) + A000217 n).toNat

end

end A284255.P12318839056037449823

/-! ## A284255.P11215292226298476106

`A284253(A284253(n+1)²)/A284253(n+1)`
-/

namespace A284255.P11215292226298476106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284253 (A284253 (n + 1) ^ 2).toNat : ℚ) / (A284253 (n + 1) : ℚ)

end

end A284255.P11215292226298476106

/-! ## A284255.P1309567623691143223

`A284253(A020639(n+1)*A284253(n+1))/A020639(n+1)`
-/

namespace A284255.P1309567623691143223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284253 (A020639 (n + 1) * A284253 (n + 1)).toNat : ℚ) / (A020639 (n + 1) : ℚ)

end

end A284255.P1309567623691143223

/-!
# A284256: a(n) = number of prime factors of n that are > the square of smallest prime factor of n (counted with multiplicity), a(1) = 0.

The programs for A284256, there is no canonical definition to state claims against.
-/

/-! ## A284256.P15803001115779978580

`A001222(A284254(n+1))`
-/

namespace A284256.P15803001115779978580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284254 (n + 1)).toNat

end

end A284256.P15803001115779978580

/-! ## A284256.P896112329188080805

`A001222(n+1)-A284257(n+1)`
-/

namespace A284256.P896112329188080805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A284257 (n + 1)

end

end A284256.P896112329188080805

/-! ## A284256.P9149085348915334590

`A001222((n+1)/A284255(n+1))`
-/

namespace A284256.P9149085348915334590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284255 (n + 1) : ℚ))).toNat

end

end A284256.P9149085348915334590

/-! ## A284256.P11606477453970099690

`val(A165827(n+1), 2)-A284257(n+1)`
-/

namespace A284256.P11606477453970099690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2 : ℤ) - A284257 (n + 1)

end

end A284256.P11606477453970099690

/-! ## A284256.P14114492336096657413

`a(floor(n/A006530(n+1)))+1-A252372(n+1)` with `a(0)=0`
-/

namespace A284256.P14114492336096657413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / (A006530 (n + 1) : ℚ)⌋.toNat + 1 - A252372 (n + 1)

end

end A284256.P14114492336096657413

/-! ## A284256.P12066724532157659043

`A001222(n+1)-A001222(A284255(n+1))`
-/

namespace A284256.P12066724532157659043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A284255 (n + 1)).toNat

end

end A284256.P12066724532157659043

/-! ## A284256.P17314429426038064795

`A073093(n+1)-A073093(A284255(n+1))`
-/

namespace A284256.P17314429426038064795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A073093 (A284255 (n + 1)).toNat

end

end A284256.P17314429426038064795

/-! ## A284256.P15219298895999726498

`A356006(A165824((n+1)/A284255(n+1)))`
-/

namespace A284256.P15219298895999726498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A165824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284255 (n + 1) : ℚ))).toNat).toNat

end

end A284256.P15219298895999726498

/-! ## A284256.P6827282355652397795

`A356006(A165826((n+1)/A284255(n+1)))`
-/

namespace A284256.P6827282355652397795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A165826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284255 (n + 1) : ℚ))).toNat).toNat

end

end A284256.P6827282355652397795

/-! ## A284256.P10824023925661826260

`A356006(A165842((n+1)/A284255(n+1)))`
-/

namespace A284256.P10824023925661826260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A165842 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284255 (n + 1) : ℚ))).toNat).toNat

end

end A284256.P10824023925661826260

/-! ## A284256.P8850048564519496780

`A356006(A165843((n+1)/A284255(n+1)))`
-/

namespace A284256.P8850048564519496780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A165843 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284255 (n + 1) : ℚ))).toNat).toNat

end

end A284256.P8850048564519496780

/-! ## A284256.P12663312833770123642

`A284257(A284254((n+1)*A020639(n+1)))`
-/

namespace A284256.P12663312833770123642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (A284254 ((n + 1 : ℤ) * A020639 (n + 1)).toNat).toNat

end

end A284256.P12663312833770123642

/-! ## A284256.P12687151831612559491

`A284257(A284254((n+1)*A284255(n+1)))`
-/

namespace A284256.P12687151831612559491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (A284254 ((n + 1 : ℤ) * A284255 (n + 1)).toNat).toNat

end

end A284256.P12687151831612559491

/-! ## A284256.P5329556114459298825

`A284257(A284254((n+1)*A284260(n+1)))`
-/

namespace A284256.P5329556114459298825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (A284254 ((n + 1 : ℤ) * A284260 (n + 1)).toNat).toNat

end

end A284256.P5329556114459298825

/-!
# A284257: a(n) = number of prime factors of n that are < the square of smallest prime factor of n (counted with multiplicity), a(1) = 0.

The programs for A284257, there is no canonical definition to state claims against.
-/

/-! ## A284257.P3796886982234529716

`A001222(A284255(n+1))`
-/

namespace A284257.P3796886982234529716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284255 (n + 1)).toNat

end

end A284257.P3796886982234529716

/-! ## A284257.P1463760783412794732

`A001222(n+1)-A284256(n+1)`
-/

namespace A284257.P1463760783412794732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A284256 (n + 1)

end

end A284257.P1463760783412794732

/-! ## A284257.P4285968138745675043

`A001222((n+1)/A284254(n+1))`
-/

namespace A284257.P4285968138745675043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284254 (n + 1) : ℚ))).toNat

end

end A284257.P4285968138745675043

/-! ## A284257.P14204024518718325776

`∑{d}[A284255(n+1), A001221(A014963(#))]`
-/

namespace A284257.P14204024518718325776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A284257.P14204024518718325776

/-! ## A284257.P17080001062827083196

`A001222(n+1)-A001222(A284254(n+1))`
-/

namespace A284257.P17080001062827083196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A284254 (n + 1)).toNat

end

end A284257.P17080001062827083196

/-! ## A284257.P9870266704287896567

`A246270(A165826(n+1))-A284256(n+1)`
-/

namespace A284257.P9870266704287896567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246270 (A165826 (n + 1)).toNat - A284256 (n + 1)

end

end A284257.P9870266704287896567

/-! ## A284257.P2631089821921911567

`A246270(A165827(n+1))-A284256(n+1)`
-/

namespace A284257.P2631089821921911567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246270 (A165827 (n + 1)).toNat - A284256 (n + 1)

end

end A284257.P2631089821921911567

/-!
# A284258: a(n) = number of distinct prime factors of n that are > the square of smallest prime factor of n, a(1) = 0.

The programs for A284258, there is no canonical definition to state claims against.
-/

/-! ## A284258.P9361679979638097667

`A001221(A284254(n+1))`
-/

namespace A284258.P9361679979638097667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A284254 (n + 1)).toNat

end

end A284258.P9361679979638097667

/-! ## A284258.P15297693520356351531

`A001221(n+1)-A284259(n+1)`
-/

namespace A284258.P15297693520356351531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A284259 (n + 1)

end

end A284258.P15297693520356351531

/-! ## A284258.P13670865217046797129

`A284256(∏{p}[n+1, #])`
-/

namespace A284258.P13670865217046797129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284258.P13670865217046797129

/-! ## A284258.P6980581165861320245

`A284256(A007947(n+1))`
-/

namespace A284258.P6980581165861320245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A007947 (n + 1)).toNat

end

end A284258.P6980581165861320245

/-! ## A284258.P13692658502943495961

`A284256(A015052(n+1))`
-/

namespace A284258.P13692658502943495961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A015052 (n + 1)).toNat

end

end A284258.P13692658502943495961

/-! ## A284258.P13936486717737299371

`A284256(A015053(n+1))`
-/

namespace A284258.P13936486717737299371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A015053 (n + 1)).toNat

end

end A284258.P13936486717737299371

/-! ## A284258.P8660950592268652542

`∑{d}[A284254(n+1), A010051(#)]`
-/

namespace A284258.P8660950592268652542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A284258.P8660950592268652542

/-! ## A284258.P1861861219306331418

`A001221((n+1)/A284255(n+1))`
-/

namespace A284258.P1861861219306331418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284255 (n + 1) : ℚ))).toNat

end

end A284258.P1861861219306331418

/-! ## A284258.P7219678109219064450

`A001221(n+1)-A001221(A284255(n+1))`
-/

namespace A284258.P7219678109219064450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A284255 (n + 1)).toNat

end

end A284258.P7219678109219064450

/-! ## A284258.P5886724107631603271

`A284256(A005730(n+1))`
-/

namespace A284258.P5886724107631603271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A005730 (n + 1)).toNat

end

end A284258.P5886724107631603271

/-! ## A284258.P17081260771349198571

`A284259(A284254((n+1)²))`
-/

namespace A284258.P17081260771349198571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (A284254 ((n + 1) ^ 2)).toNat

end

end A284258.P17081260771349198571

/-!
# A284259: a(n) = number of distinct prime factors of n that are < the square of smallest prime factor of n, a(1) = 0.

The programs for A284259, there is no canonical definition to state claims against.
-/

/-! ## A284259.P16906737769601552699

`A001221(A284255(n+1))`
-/

namespace A284259.P16906737769601552699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A284255 (n + 1)).toNat

end

end A284259.P16906737769601552699

/-! ## A284259.P2862339921561059590

`A001221(n+1)-A284258(n+1)`
-/

namespace A284259.P2862339921561059590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A284258 (n + 1)

end

end A284259.P2862339921561059590

/-! ## A284259.P3260041437218761922

`A284257(∏{p}[n+1, #])`
-/

namespace A284259.P3260041437218761922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284259.P3260041437218761922

/-! ## A284259.P8500015877183230243

`A284257(A007947(n+1))`
-/

namespace A284259.P8500015877183230243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (A007947 (n + 1)).toNat

end

end A284259.P8500015877183230243

/-! ## A284259.P976619113029866525

`A001222(A284255(∏{p}[n+1, #]))`
-/

namespace A284259.P976619113029866525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284255 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A284259.P976619113029866525

/-! ## A284259.P6792986976746122125

`A001221((n+1)/A284254(n+1))`
-/

namespace A284259.P6792986976746122125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284254 (n + 1) : ℚ))).toNat

end

end A284259.P6792986976746122125

/-! ## A284259.P2263976604289321765

`A001221(n+1)-A001221(A284254(n+1))`
-/

namespace A284259.P2263976604289321765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A284254 (n + 1)).toNat

end

end A284259.P2263976604289321765

/-! ## A284259.P4799750103564024056

`A001222(A007947((n+1)/A284254(n+1)))`
-/

namespace A284259.P4799750103564024056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284254 (n + 1) : ℚ))).toNat).toNat

end

end A284259.P4799750103564024056

/-! ## A284259.P17362599892991005100

`A284257(A015053(n+1)²)/2`
-/

namespace A284259.P17362599892991005100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284257 (A015053 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A284259.P17362599892991005100

/-!
# A284260: Greatest prime dividing n which is less than A020639(n)^2, where A020639(n) is the smallest prime dividing n, a(1) = 1.

The programs for A284260, there is no canonical definition to state claims against.
-/

/-! ## A284260.P15548270447520705494

`A006530(A284255(n+1))`
-/

namespace A284260.P15548270447520705494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A284255 (n + 1)).toNat

end

end A284260.P15548270447520705494

/-! ## A284260.P16980017322125350985

`A053585(A284255(∏{p}[n+1, #]))`
-/

namespace A284260.P16980017322125350985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A284255 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A284260.P16980017322125350985

/-! ## A284260.P5290900222419157205

`A006530((n+1)/A284254(n+1))`
-/

namespace A284260.P5290900222419157205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284254 (n + 1) : ℚ))).toNat

end

end A284260.P5290900222419157205

/-! ## A284260.P2207242310175624398

`A002034(A284255(A007947(n+1)))`
-/

namespace A284260.P2207242310175624398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A284255 (A007947 (n + 1)).toNat).toNat

end

end A284260.P2207242310175624398

/-! ## A284260.P5736203706648176278

`A002034(A284255(sqrt(A078615(n+1))))`
-/

namespace A284260.P5736203706648176278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A284255 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 1) : ℝ))).toNat).toNat

end

end A284260.P5736203706648176278

/-! ## A284260.P2919881860990762287

`A076820(A008578(n+2)*A284255(n+1))`
-/

namespace A284260.P2919881860990762287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A008578 (n + 2) * A284255 (n + 1)).toNat

end

end A284260.P2919881860990762287

/-! ## A284260.P139433584607777787

`A006530(A292269((n+1)²))`
-/

namespace A284260.P139433584607777787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A292269 ((n + 1) ^ 2)).toNat

end

end A284260.P139433584607777787

/-! ## A284260.P7914051352982673887

`A020639(A292269(∑[2*n+1]))`
-/

namespace A284260.P7914051352982673887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A292269 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284260.P7914051352982673887

/-! ## A284260.P14673199870586833521

`A285336(A285109(A007947((n+1)²)))`
-/

namespace A284260.P14673199870586833521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285336 (A285109 (A007947 ((n + 1) ^ 2)).toNat).toNat

end

end A284260.P14673199870586833521

/-! ## A284260.P17132820403636159833

`A006530(A006530(A292269((n+1)*(n+1))))`
-/

namespace A284260.P17132820403636159833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A292269 ((n + 1) * (n + 1))).toNat).toNat

end

end A284260.P17132820403636159833

/-! ## A284260.P16418683209400214841

`A006530(A284253(A284253(n+1)²)/A284253(n+1))`
-/

namespace A284260.P16418683209400214841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A284253 (A284253 (n + 1) ^ 2).toNat : ℚ) / (A284253 (n + 1) : ℚ))).toNat

end

end A284260.P16418683209400214841

/-! ## A284260.P16865296702168636587

`A007947(A285336(A285109(A007947(A285109(n+1)))))`
-/

namespace A284260.P16865296702168636587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A285336 (A285109 (A007947 (A285109 (n + 1)).toNat).toNat).toNat).toNat

end

end A284260.P16865296702168636587

/-!
# A284261: a(n) = A284258(n) - A284258(A003961(n)).

The programs for A284261, there is no canonical definition to state claims against.
-/

/-! ## A284261.P8740968547699378345

`A284258(n+1)-A284258(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284261.P8740968547699378345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (n + 1) - A284258 (A003961 (n + 1)).toNat

end

end A284261.P8740968547699378345

/-! ## A284261.P13980280946697356839

`A001221(A284254(n+1))-A001221(A284254(A003961(n+1)))`
-/

namespace A284261.P13980280946697356839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A284254 (n + 1)).toNat - A001221 (A284254 (A003961 (n + 1)).toNat).toNat

end

end A284261.P13980280946697356839

/-! ## A284261.P3183130914756755191

`A284259(A003961(n+1))-A284259(n+1)`
-/

namespace A284261.P3183130914756755191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (A003961 (n + 1)).toNat - A284259 (n + 1)

end

end A284261.P3183130914756755191

/-! ## A284261.P4267152101902272707

`A284259(A249734(n+1)/3)-A284259(n+1)`
-/

namespace A284261.P4267152101902272707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (SequenceMachineLib.roundAway ((A249734 (n + 1) : ℚ) / 3)).toNat - A284259 (n + 1)

end

end A284261.P4267152101902272707

/-! ## A284261.P7990761367833324810

`A284258(n+1)-A284258(A249734(n+1)/3)`
-/

namespace A284261.P7990761367833324810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (n + 1) - A284258 (SequenceMachineLib.roundAway ((A249734 (n + 1) : ℚ) / 3)).toNat

end

end A284261.P7990761367833324810

/-! ## A284261.P4706095259151002539

`A284259(∑{d}[n+1, A003972(#)])-A284259(n+1)`
-/

namespace A284261.P4706095259151002539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (∑ d ∈ Nat.divisors (f1 n), A003972 d).toNat - A284259 (n + 1)

end

end A284261.P4706095259151002539

/-! ## A284261.P10392484358998792998

`A284259(or(1, A045965(n+1)-1))-A284259(n+1)`
-/

namespace A284261.P10392484358998792998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (Int.lor 1 (A045965 (n + 1) - 1)).toNat - A284259 (n + 1)

end

end A284261.P10392484358998792998

/-! ## A284261.P17604411027411441009

`A284259(A336853(n+1)+1+n)-A284259(n+1)`
-/

namespace A284261.P17604411027411441009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (A336853 (n + 1) + 1 + (n : ℤ)).toNat - A284259 (n + 1)

end

end A284261.P17604411027411441009

/-! ## A284261.P994440295198725586

`A284259(∑{d}[n+1, #*A349387((n+1)/#)])-A284259(n+1)`
-/

namespace A284261.P994440295198725586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat - A284259 (n + 1)

end

end A284261.P994440295198725586

/-! ## A284261.P15416561084047768178

`A284259(A045965(n+1)/A054977(n))-A284259(n+1)`
-/

namespace A284261.P15416561084047768178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (SequenceMachineLib.roundAway ((A045965 (n + 1) : ℚ) / (A054977 n : ℚ))).toNat - A284259 (n + 1)

end

end A284261.P15416561084047768178

/-!
# A284262: a(n) = where A284259 for the first time obtains value n (positions of its records).

The programs for A284262, there is no canonical definition to state claims against.
-/

/-! ## A284262.P16343741413015880338

`A000027(A374006(n))`
-/

namespace A284262.P16343741413015880338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A374006 n).toNat

end

end A284262.P16343741413015880338

/-!
# A284263: a(n) = A252459(2*A000040(n)), a(0) = 0 by convention.

The programs for A284263, the canonical program `A284263.P2360290570486179856` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284263 has offset 0).

The definition of A284263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284263.P2360290570486179856

`A251719(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A284263

/-- `A251719(n+1)-1` -/
def P2360290570486179856.Spec : Prop :=
  ∀ n, P2360290570486179856.a n = A284263 n

theorem P2360290570486179856.correct : P2360290570486179856.Spec := by
  intro n
  simp only [A284263]

end A284263

/-! ## A284263.P3345498887152116137

`∑[char[A250473(n+1)]]`
-/

namespace A284263.P3345498887152116137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284263.P3345498887152116137

namespace A284263

/-- `∑[char[A250473(n+1)]]` -/
def P3345498887152116137.Spec : Prop :=
  ∀ n, (P3345498887152116137.a n : ℤ) = A284263 n

end A284263

/-! ## A284263.P3507935715532242472

`comp[A062773(n+1)]-n`
-/

namespace A284263.P3507935715532242472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284263.P3507935715532242472

namespace A284263

/-- `comp[A062773(n+1)]-n` -/
def P3507935715532242472.Spec : Prop :=
  ∀ n, P3507935715532242472.a n = A284263 n

end A284263

/-! ## A284263.P1143385746480984724

`∑[char[1+A054272(n+1)]]`
-/

namespace A284263.P1143385746480984724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A054272 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284263.P1143385746480984724

namespace A284263

/-- `∑[char[1+A054272(n+1)]]` -/
def P1143385746480984724.Spec : Prop :=
  ∀ n, (P1143385746480984724.a n : ℤ) = A284263 n

end A284263

/-! ## A284263.P7768438904470377434

`comp[∑[A050216(n)]+1]-n`
-/

namespace A284263.P7768438904470377434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284263.P7768438904470377434

namespace A284263

/-- `comp[∑[A050216(n)]+1]-n` -/
def P7768438904470377434.Spec : Prop :=
  ∀ n, P7768438904470377434.a n = A284263 n

end A284263

/-! ## A284263.P7133833372386022866

`∑[char[A000879(n+1)+1-n]]`
-/

namespace A284263.P7133833372386022866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) + (1 - (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284263.P7133833372386022866

namespace A284263

/-- `∑[char[A000879(n+1)+1-n]]` -/
def P7133833372386022866.Spec : Prop :=
  ∀ n, (P7133833372386022866.a n : ℤ) = A284263 n

end A284263

/-! ## A284263.P15169478446061955706

`A023444(A251719(n+1)+1)`
-/

namespace A284263.P15169478446061955706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A251719 (n + 1) + 1).toNat

end

end A284263.P15169478446061955706

namespace A284263

/-- `A023444(A251719(n+1)+1)` -/
def P15169478446061955706.Spec : Prop :=
  ∀ n, P15169478446061955706.a n = A284263 n

end A284263

/-! ## A284263.P5116005532876166570

`comp[A038107(A000040(n+1))+1]-n`
-/

namespace A284263.P5116005532876166570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A000040 (n + 1)).toNat + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284263.P5116005532876166570

namespace A284263

/-- `comp[A038107(A000040(n+1))+1]-n` -/
def P5116005532876166570.Spec : Prop :=
  ∀ n, P5116005532876166570.a n = A284263 n

end A284263

/-! ## A284263.P874681810276763729

`comp[A038107(A207790(2*(n+1)))+1]-n`
-/

namespace A284263.P874681810276763729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A207790 (2 * (n + 1))).toNat + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284263.P874681810276763729

namespace A284263

/-- `comp[A038107(A207790(2*(n+1)))+1]-n` -/
def P874681810276763729.Spec : Prop :=
  ∀ n, P874681810276763729.a n = A284263 n

end A284263

/-! ## A284263.P5657111570255928294

`comp[A038107(lt[n, A000010(n+2)]+2)+1]-n`
-/

namespace A284263.P5657111570255928294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284263.P5657111570255928294

namespace A284263

/-- `comp[A038107(lt[n, A000010(n+2)]+2)+1]-n` -/
def P5657111570255928294.Spec : Prop :=
  ∀ n, P5657111570255928294.a n = A284263 n

end A284263

/-! ## A284263.P16302493835362031451

`comp[A038107(comp[A018252(n+1)-1]+1)+1]-n`
-/

namespace A284263.P16302493835362031451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284263.P16302493835362031451

namespace A284263

/-- `comp[A038107(comp[A018252(n+1)-1]+1)+1]-n` -/
def P16302493835362031451.Spec : Prop :=
  ∀ n, P16302493835362031451.a n = A284263 n

end A284263

/-! ## A284263.P8682710496481304850

`A059396(a(n-1)+n)` with `a(0)=0`
-/

namespace A284263.P8682710496481304850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059396 (a (n - 1) + (n : ℤ)).toNat

end

end A284263.P8682710496481304850

namespace A284263

/-- `A059396(a(n-1)+n)` -/
def P8682710496481304850.Spec : Prop :=
  ∀ n, P8682710496481304850.a n = A284263 n

end A284263

/-! ## A284263.P5622545865578224456

`comp[A000720(A001248(n+1))+1]-n`
-/

namespace A284263.P5622545865578224456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001248 (n + 1)).toNat + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284263.P5622545865578224456

namespace A284263

/-- `comp[A000720(A001248(n+1))+1]-n` -/
def P5622545865578224456.Spec : Prop :=
  ∀ n, P5622545865578224456.a n = A284263 n

end A284263

/-! ## A284263.P9785858749014110059

`A200748(n)%A251719(n+1)`
-/

namespace A284263.P9785858749014110059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A251719 (n + 1))

end

end A284263.P9785858749014110059

namespace A284263

/-- `A200748(n)%A251719(n+1)` -/
def P9785858749014110059.Spec : Prop :=
  ∀ n, P9785858749014110059.a n = A284263 n

end A284263

/-! ## A284263.P1761086227369415226

`A252459(A001747(n+1))`
-/

namespace A284263.P1761086227369415226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A001747 (n + 1)).toNat

end

end A284263.P1761086227369415226

namespace A284263

/-- `A252459(A001747(n+1))` -/
def P1761086227369415226.Spec : Prop :=
  ∀ n, P1761086227369415226.a n = A284263 n

end A284263

/-! ## A284263.P3210194372622248663

`A252459(A074845(n+1))`
-/

namespace A284263.P3210194372622248663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A074845 (n + 1)).toNat

end

end A284263.P3210194372622248663

namespace A284263

/-- `A252459(A074845(n+1))` -/
def P3210194372622248663.Spec : Prop :=
  ∀ n, P3210194372622248663.a n = A284263 n

end A284263

/-! ## A284263.P2340398480566832223

`A252459(A077017(n+1))`
-/

namespace A284263.P2340398480566832223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A077017 (n + 1)).toNat

end

end A284263.P2340398480566832223

namespace A284263

/-- `A252459(A077017(n+1))` -/
def P2340398480566832223.Spec : Prop :=
  ∀ n, P2340398480566832223.a n = A284263 n

end A284263

/-! ## A284263.P1274460154368935003

`A252459(A161344(n+1))`
-/

namespace A284263.P1274460154368935003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A161344 (n + 1)).toNat

end

end A284263.P1274460154368935003

namespace A284263

/-- `A252459(A161344(n+1))` -/
def P1274460154368935003.Spec : Prop :=
  ∀ n, P1274460154368935003.a n = A284263 n

end A284263

/-! ## A284263.P13800406413533590126

`A083800(n+1)%A251719(n+1)`
-/

namespace A284263.P13800406413533590126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A251719 (n + 1))

end

end A284263.P13800406413533590126

namespace A284263

/-- `A083800(n+1)%A251719(n+1)` -/
def P13800406413533590126.Spec : Prop :=
  ∀ n, P13800406413533590126.a n = A284263 n

end A284263

/-! ## A284263.P3319544886618555805

`A070198(n)%A251719(n+1)`
-/

namespace A284263.P3319544886618555805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A251719 (n + 1))

end

end A284263.P3319544886618555805

namespace A284263

/-- `A070198(n)%A251719(n+1)` -/
def P3319544886618555805.Spec : Prop :=
  ∀ n, P3319544886618555805.a n = A284263 n

end A284263

/-!
# A284264: a(n) = A001222(A283983(n)).

The programs for A284264, there is no canonical definition to state claims against.
-/

/-! ## A284264.P8506729043469928409

`1/2*(A002487(n)-A277700(n))`
-/

namespace A284264.P8506729043469928409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A002487 n - A277700 n : ℚ)

end

end A284264.P8506729043469928409

/-! ## A284264.P5178694374586548470

`A001222(A283983(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284264.P5178694374586548470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A283983 n).toNat

end

end A284264.P5178694374586548470

/-! ## A284264.P8008870304160430897

`A001222(A000188(A260443(n)))`
-/

namespace A284264.P8008870304160430897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000188 (A260443 n).toNat).toNat

end

end A284264.P8008870304160430897

/-! ## A284264.P11317325238407419508

`(A002487(n)-A277700(n))/2`
-/

namespace A284264.P11317325238407419508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n - A277700 n : ℚ) / 2

end

end A284264.P11317325238407419508

/-! ## A284264.P14331487468608175086

`A004525(A002487(n)-A277700(n))`
-/

namespace A284264.P14331487468608175086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002487 n - A277700 n).toNat

end

end A284264.P14331487468608175086

/-! ## A284264.P7615014339833374083

`A026741(A002487(n)-A277700(n))`
-/

namespace A284264.P7615014339833374083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002487 n - A277700 n).toNat

end

end A284264.P7615014339833374083

/-! ## A284264.P2472148589667174366

`A008615(3*(A002487(n)-A277700(n)))`
-/

namespace A284264.P2472148589667174366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * (A002487 n - A277700 n)).toNat

end

end A284264.P2472148589667174366

/-! ## A284264.P3439458867780491017

`val(A000079(A002487(n)-A277700(n)), 4)`
-/

namespace A284264.P3439458867780491017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (A002487 n - A277700 n).toNat).toNat 4

end

end A284264.P3439458867780491017

/-! ## A284264.P14231231588153670766

`∑{e}[sqrt(A283989(n)), #]`
-/

namespace A284264.P14231231588153670766
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A283989 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A284264.P14231231588153670766

/-! ## A284264.P5045422191604826427

`A001222(sqrt(A283989(n)))`
-/

namespace A284264.P5045422191604826427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A283989 n : ℝ))).toNat

end

end A284264.P5045422191604826427

/-!
# A284265: Odd bisection of A284264.

The programs for A284265, there is no canonical definition to state claims against.
-/

/-! ## A284265.P15442908610004346134

`A284264(2*n+1)`
-/

namespace A284265.P15442908610004346134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284264 (2 * n + 1)

end

end A284265.P15442908610004346134

/-! ## A284265.P15320895867534023892

`A001222(A283484(n))`
-/

namespace A284265.P15320895867534023892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A283484 n).toNat

end

end A284265.P15320895867534023892

/-! ## A284265.P16964815987717633799

`(A002487(2*n+1)-A277700(2*n+1))/2`
-/

namespace A284265.P16964815987717633799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (2 * n + 1) - A277700 (2 * n + 1) : ℚ) / 2

end

end A284265.P16964815987717633799

/-! ## A284265.P9261532783192178378

`A002487(A020946(A284264(n+1+n)))`
-/

namespace A284265.P9261532783192178378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A020946 (A284264 (n + 1 + n)).toNat).toNat

end

end A284265.P9261532783192178378

/-! ## A284265.P15428134870836302873

`A284264(A005408(n))/A008836(n+1)²`
-/

namespace A284265.P15428134870836302873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284264 (A005408 n).toNat : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A284265.P15428134870836302873

/-! ## A284265.P16077578903632317446

`A004525(A002487(2*n+1)-A277700(2*n+1))`
-/

namespace A284265.P16077578903632317446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002487 (2 * n + 1) - A277700 (2 * n + 1)).toNat

end

end A284265.P16077578903632317446

/-! ## A284265.P12130971484443638724

`A026741(A002487(2*n+1)-A277700(2*n+1))`
-/

namespace A284265.P12130971484443638724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002487 (2 * n + 1) - A277700 (2 * n + 1)).toNat

end

end A284265.P12130971484443638724

/-! ## A284265.P5386813519080770229

`A008836(A005408(n))²*A284264(A005408(n))`
-/

namespace A284265.P5386813519080770229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A005408 n).toNat ^ 2 * A284264 (A005408 n).toNat

end

end A284265.P5386813519080770229

/-! ## A284265.P9654766214299793151

`A284264(A005408(n))/A008836(A005408(n)²)`
-/

namespace A284265.P9654766214299793151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284264 (A005408 n).toNat : ℚ) / (A008836 (A005408 n ^ 2).toNat : ℚ)

end

end A284265.P9654766214299793151

/-!
# A284266: Odd bisection of A277700, binary weight of terms of A283975.

The programs for A284266, there is no canonical definition to state claims against.
-/

/-! ## A284266.P4870963961481641932

`A000120(A283975(n))`
-/

namespace A284266.P4870963961481641932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A283975 n).toNat

end

end A284266.P4870963961481641932

/-! ## A284266.P16206449125551702943

`A277700(2*n+1)`
-/

namespace A284266.P16206449125551702943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 (2 * n + 1)

end

end A284266.P16206449125551702943

/-! ## A284266.P292467569337195698

`A007306(n+1)-2*A284265(n)`
-/

namespace A284266.P292467569337195698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - 2 * A284265 n

end

end A284266.P292467569337195698

/-! ## A284266.P17656738639291170290

`A048881(A283975(n)-1)+1`
-/

namespace A284266.P17656738639291170290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A283975 n - 1).toNat + 1

end

end A284266.P17656738639291170290

/-! ## A284266.P7288863869541013009

`A000120(A264977(2*n+1))`
-/

namespace A284266.P7288863869541013009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A264977 (2 * n + 1)).toNat

end

end A284266.P7288863869541013009

/-! ## A284266.P14666299185083335993

`A081743(A283975(n)-A059841(n+1))`
-/

namespace A284266.P14666299185083335993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A283975 n - A059841 (n + 1)).toNat

end

end A284266.P14666299185083335993

/-! ## A284266.P7473077597253665241

`A000120(2*n+1-A265397(2*n+1))`
-/

namespace A284266.P7473077597253665241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((2 * n + 1 : ℤ) - A265397 (2 * n + 1)).toNat

end

end A284266.P7473077597253665241

/-! ## A284266.P11566023449358947219

`A007306(n+1)-2*A284264(2*n+1)`
-/

namespace A284266.P11566023449358947219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - 2 * A284264 (2 * n + 1)

end

end A284266.P11566023449358947219

/-! ## A284266.P7119311440184781657

`A002487(2*n+1)-2*A284264(2*n+1)`
-/

namespace A284266.P7119311440184781657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - 2 * A284264 (2 * n + 1)

end

end A284266.P7119311440184781657

/-! ## A284266.P13307229109741919434

`A081743(A059841(2*n)*A283975(n))`
-/

namespace A284266.P13307229109741919434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A059841 (2 * n) * A283975 n).toNat

end

end A284266.P13307229109741919434

/-! ## A284266.P7961452139674603911

`A048881(2*A283975(n))`
-/

namespace A284266.P7961452139674603911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A283975 n).toNat

end

end A284266.P7961452139674603911

/-! ## A284266.P2581618650957476507

`A048881(A283975(n)+A283975(n))`
-/

namespace A284266.P2581618650957476507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A283975 n + A283975 n).toNat

end

end A284266.P2581618650957476507

/-! ## A284266.P17010243143539618533

`∑{e}[A277330(2*n+1), #]`
-/

namespace A284266.P17010243143539618533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A284266.P17010243143539618533

/-!
# A284267: Number of terms with coefficient 1 in the Stern polynomial B(2n+1,x): a(n) = A056169(A277324(n)).

The programs for A284267, there is no canonical definition to state claims against.
-/

/-! ## A284267.P12369740844514331942

`A284271(2*n+1)`
-/

namespace A284267.P12369740844514331942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284271 (2 * n + 1)

end

end A284267.P12369740844514331942

/-! ## A284267.P6849469411214335871

`A007306(n+1)-A284268(n)`
-/

namespace A284267.P6849469411214335871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A284268 n

end

end A284267.P6849469411214335871

/-! ## A284267.P3693861741405689052

`A002487(n+1)+A002487(n)-A284268(n)`
-/

namespace A284267.P3693861741405689052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A284268 n)

end

end A284267.P3693861741405689052

/-! ## A284267.P13060882707882211335

`A002487(2*n+1)-A284268(n)`
-/

namespace A284267.P13060882707882211335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A284268 n

end

end A284267.P13060882707882211335

/-! ## A284267.P416996856039471161

`A007306(n+1)-A284272(2*n+1)`
-/

namespace A284267.P416996856039471161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A284272 (2 * n + 1)

end

end A284267.P416996856039471161

/-! ## A284267.P3895225074878383101

`A127971(2*n)-A284272(2*n+1)`
-/

namespace A284267.P3895225074878383101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * n) - A284272 (2 * n + 1)

end

end A284267.P3895225074878383101

/-! ## A284267.P15358118611486851369

`A002487(2*n+1)-A284272(2*n+1)`
-/

namespace A284267.P15358118611486851369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A284272 (2 * n + 1)

end

end A284267.P15358118611486851369

/-! ## A284267.P16084307476456945205

`A287896(2*n+1)-A284272(2*n+1)`
-/

namespace A284267.P16084307476456945205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A284272 (2 * n + 1)

end

end A284267.P16084307476456945205

/-! ## A284267.P2658060819652227637

`A284271(n+1+n)/A284271(A001316(n))`
-/

namespace A284267.P2658060819652227637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284271 (n + 1 + n) : ℚ) / (A284271 (A001316 n).toNat : ℚ)

end

end A284267.P2658060819652227637

/-! ## A284267.P12460889725533679641

`A324337(A003188(2*n+1))-A284272(2*n+1)`
-/

namespace A284267.P12460889725533679641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 (2 * n + 1)).toNat - A284272 (2 * n + 1)

end

end A284267.P12460889725533679641

/-! ## A284267.P6590730695967999982

`A324338(A233280(2*n+1))-A284272(2*n+1)`
-/

namespace A284267.P6590730695967999982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A233280 (2 * n + 1)).toNat - A284272 (2 * n + 1)

end

end A284267.P6590730695967999982

/-! ## A284267.P5035082416938834526

`A283976(2*n+1)+A283978(2*n+1)-A284272(2*n+1)`
-/

namespace A284267.P5035082416938834526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1) + (A283978 (2 * n + 1) - A284272 (2 * n + 1))

end

end A284267.P5035082416938834526

/-! ## A284267.P5843254169098130012

`A295515(2*n+1)+A295515(2*(n+1))-A284272(2*n+1)`
-/

namespace A284267.P5843254169098130012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * n + 1) + (A295515 (2 * (n + 1)) - A284272 (2 * n + 1))

end

end A284267.P5843254169098130012

/-! ## A284267.P8667185547910566469

`A295515(4*n+2)-A284272(2*n+1)`
-/

namespace A284267.P8667185547910566469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (4 * n + 2) - A284272 (2 * n + 1)

end

end A284267.P8667185547910566469

/-!
# A284268: Sum of coefficients > 1 in the Stern polynomial B(2n+1,x): a(n) = A275812(A277324(n)).

The programs for A284268, there is no canonical definition to state claims against.
-/

/-! ## A284268.P6911478678057580553

`A284272(2*n+1)`
-/

namespace A284268.P6911478678057580553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284272 (2 * n + 1)

end

end A284268.P6911478678057580553

/-! ## A284268.P17992189100660148568

`A007306(n+1)-A284267(n)`
-/

namespace A284268.P17992189100660148568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A284267 n

end

end A284268.P17992189100660148568

/-! ## A284268.P4113821859725823611

`A002487(n+1)+A002487(n)-A284267(n)`
-/

namespace A284268.P4113821859725823611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A284267 n)

end

end A284268.P4113821859725823611

/-! ## A284268.P16990011395476982734

`A002487(2*n+1)-A284267(n)`
-/

namespace A284268.P16990011395476982734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A284267 n

end

end A284268.P16990011395476982734

/-! ## A284268.P15142267890503183156

`A007306(n+1)-A284271(2*n+1)`
-/

namespace A284268.P15142267890503183156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A284271 (2 * n + 1)

end

end A284268.P15142267890503183156

/-! ## A284268.P6871426952884847744

`A127971(2*n)-A284271(2*n+1)`
-/

namespace A284268.P6871426952884847744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * n) - A284271 (2 * n + 1)

end

end A284268.P6871426952884847744

/-! ## A284268.P3708550511837580293

`A002487(2*n+1)-A284271(2*n+1)`
-/

namespace A284268.P3708550511837580293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A284271 (2 * n + 1)

end

end A284268.P3708550511837580293

/-! ## A284268.P11994216136262118994

`A287896(2*n+1)-A284271(2*n+1)`
-/

namespace A284268.P11994216136262118994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A284271 (2 * n + 1)

end

end A284268.P11994216136262118994

/-! ## A284268.P14083654100187910765

`A324337(A003188(2*n+1))-A284271(2*n+1)`
-/

namespace A284268.P14083654100187910765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 (2 * n + 1)).toNat - A284271 (2 * n + 1)

end

end A284268.P14083654100187910765

/-! ## A284268.P3796912449456439235

`A324338(A233280(2*n+1))-A284271(2*n+1)`
-/

namespace A284268.P3796912449456439235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A233280 (2 * n + 1)).toNat - A284271 (2 * n + 1)

end

end A284268.P3796912449456439235

/-! ## A284268.P16211559688982378351

`A283976(2*n+1)+A283978(2*n+1)-A284271(2*n+1)`
-/

namespace A284268.P16211559688982378351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n + 1) + (A283978 (2 * n + 1) - A284271 (2 * n + 1))

end

end A284268.P16211559688982378351

/-! ## A284268.P15924393520004027816

`A295515(2*n+1)+A295515(2*(n+1))-A284271(2*n+1)`
-/

namespace A284268.P15924393520004027816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * n + 1) + (A295515 (2 * (n + 1)) - A284271 (2 * n + 1))

end

end A284268.P15924393520004027816

/-! ## A284268.P1382743462049079954

`A002487(A020946(A284272(n+1+n)))`
-/

namespace A284268.P1382743462049079954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A020946 (A284272 (n + 1 + n)).toNat).toNat

end

end A284268.P1382743462049079954

/-!
# A284269: Transpose of square array A284270.

The programs for A284269, there is no canonical definition to state claims against.
-/

/-! ## A284269.P4377393982909988001

`A284270(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A284269.P4377393982909988001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A284269.P4377393982909988001

/-! ## A284269.P4684327520445392758

`A277199(n+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A284269.P4684327520445392758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277199 (n + 1)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A284269.P4684327520445392758

/-! ## A284269.P4599865596157661372

`A284270(A038722(n+1))`
-/

namespace A284269.P4599865596157661372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (A038722 (n + 1)).toNat

end

end A284269.P4599865596157661372

/-! ## A284269.P2477135876309358060

`A284270(A061579(n)+1)`
-/

namespace A284269.P2477135876309358060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (A061579 n + 1).toNat

end

end A284269.P2477135876309358060

/-! ## A284269.P9463923247119018532

`A284270(2-A127948(n)+n)`
-/

namespace A284269.P9463923247119018532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (2 - A127948 n + (n : ℤ)).toNat

end

end A284269.P9463923247119018532

/-! ## A284269.P2827785096088831489

`A277199(n+1)%A004736(n+1)`
-/

namespace A284269.P2827785096088831489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277199 (n + 1)) (A004736 (n + 1))

end

end A284269.P2827785096088831489

/-! ## A284269.P5171530253857368296

`A277320(A038722(n+1))%A004736(n+1)`
-/

namespace A284269.P5171530253857368296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277320 (A038722 (n + 1)).toNat) (A004736 (n + 1))

end

end A284269.P5171530253857368296

/-! ## A284269.P2677611098789753112

`A284270(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A284269.P2677611098789753112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A284269.P2677611098789753112

/-!
# A284270: Square array A(r,c) = A048720(A065621(r), c) mod r, read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A284270, there is no canonical definition to state claims against.
-/

/-! ## A284270.P7516996104566549072

`A277320(n+1)%A002260(n+1)`
-/

namespace A284270.P7516996104566549072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277320 (n + 1)) (A002260 (n + 1))

end

end A284270.P7516996104566549072

/-! ## A284270.P18310542409765219793

`A284269(A038722(n+1))`
-/

namespace A284270.P18310542409765219793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284269 (A038722 (n + 1)).toNat

end

end A284270.P18310542409765219793

/-! ## A284270.P427685588143545979

`A284269(A061579(n)+1)`
-/

namespace A284270.P427685588143545979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284269 (A061579 n + 1).toNat

end

end A284270.P427685588143545979

/-! ## A284270.P9779181351299531219

`A284269(n+2-A127948(n))`
-/

namespace A284270.P9779181351299531219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284269 ((n + 2 : ℤ) - A127948 n).toNat

end

end A284270.P9779181351299531219

/-! ## A284270.P2388754709612280980

`A284269(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A284270.P2388754709612280980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284269 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A284270.P2388754709612280980

/-! ## A284270.P11079940448347801225

`A277320(n+1)%A349520(A005408(n))`
-/

namespace A284270.P11079940448347801225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277320 (n + 1)) (A349520 (A005408 n).toNat)

end

end A284270.P11079940448347801225

/-!
# A284271: Number of terms with coefficient 1 in the Stern polynomial B(n,x): a(n) = A056169(A260443(n)).

The programs for A284271, there is no canonical definition to state claims against.
-/

/-! ## A284271.P16204971511498080544

`A056169(A260443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284271.P16204971511498080544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A260443 n).toNat

end

end A284271.P16204971511498080544

/-! ## A284271.P10549908984487963888

`A002487(n)-A284272(n)`
-/

namespace A284271.P10549908984487963888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - A284272 n

end

end A284271.P10549908984487963888

/-! ## A284271.P3926380414706607857

`n-(A284272(n)+A284013(n))`
-/

namespace A284271.P3926380414706607857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A284272 n + A284013 n)

end

end A284271.P3926380414706607857

/-! ## A284271.P3475942829775385463

`∑{d}[n, A317839(#)]-A284272(n)`
-/

namespace A284271.P3475942829775385463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317839 d - A284272 n

end

end A284271.P3475942829775385463

/-! ## A284271.P8711332058410301829

`A324337(xor(n, floor(n/2)))-A284272(n)`
-/

namespace A284271.P8711332058410301829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat - A284272 n

end

end A284271.P8711332058410301829

/-! ## A284271.P3194575082057159785

`A324337(A003188(n))-A284272(n)`
-/

namespace A284271.P3194575082057159785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 n).toNat - A284272 n

end

end A284271.P3194575082057159785

/-! ## A284271.P16834318349503197696

`A283976(n)+A283978(n)-A284272(n)`
-/

namespace A284271.P16834318349503197696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n + (A283978 n - A284272 n)

end

end A284271.P16834318349503197696

/-! ## A284271.P15415125555904057246

`A324338(A233280(n))%(n+1)-A284272(n)`
-/

namespace A284271.P15415125555904057246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324338 (A233280 n).toNat) (n + 1 : ℤ) - A284272 n

end

end A284271.P15415125555904057246

/-! ## A284271.P9818149181626022248

`A287896(n+1)-(A288003(n+1)+A284272(n))`
-/

namespace A284271.P9818149181626022248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) - (A288003 (n + 1) + A284272 n)

end

end A284271.P9818149181626022248

/-! ## A284271.P17534300837637869682

`A002487(2*n)+A001489(A284272(n))`
-/

namespace A284271.P17534300837637869682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n) + A001489 (A284272 n).toNat

end

end A284271.P17534300837637869682

/-! ## A284271.P5105113126739374079

`A283976(2*n)-A284272(n)`
-/

namespace A284271.P5105113126739374079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n) - A284272 n

end

end A284271.P5105113126739374079

/-! ## A284271.P8365566957839951254

`A283977(2*n)-A284272(n)`
-/

namespace A284271.P8365566957839951254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * n) - A284272 n

end

end A284271.P8365566957839951254

/-! ## A284271.P12037759461662617676

`A295515(2*n+1)-A284272(n)`
-/

namespace A284271.P12037759461662617676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * n + 1) - A284272 n

end

end A284271.P12037759461662617676

/-! ## A284271.P5062876437298735622

`A284556(2*n)+A284556(n)-A284272(n)`
-/

namespace A284271.P5062876437298735622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (2 * n) + A284556 n - A284272 n

end

end A284271.P5062876437298735622

/-! ## A284271.P2277219929241116122

`A007306(2*n+1)-(A284272(n)+A007306(n+1))`
-/

namespace A284271.P2277219929241116122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (2 * n + 1) - (A284272 n + A007306 (n + 1))

end

end A284271.P2277219929241116122

/-! ## A284271.P10765689358238636023

`A174980(A056539(2*n))-A284272(n)`
-/

namespace A284271.P10765689358238636023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A056539 (2 * n)).toNat - A284272 n

end

end A284271.P10765689358238636023

/-!
# A284272: Sum of coefficients > 1 in the Stern polynomial B(n,x): a(n) = A275812(A260443(n)).

The programs for A284272, there is no canonical definition to state claims against.
-/

/-! ## A284272.P18425385390607254160

`A275812(A260443(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284272.P18425385390607254160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A260443 n).toNat

end

end A284272.P18425385390607254160

/-! ## A284272.P10420344949755810056

`A002487(n)-A284271(n)`
-/

namespace A284272.P10420344949755810056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n - A284271 n

end

end A284272.P10420344949755810056

/-! ## A284272.P15693178806179722901

`n-(A284271(n)+A284013(n))`
-/

namespace A284272.P15693178806179722901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A284271 n + A284013 n)

end

end A284272.P15693178806179722901

/-! ## A284272.P13406614390607443556

`∑{d}[n, A317839(#)]-A284271(n)`
-/

namespace A284272.P13406614390607443556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317839 d - A284271 n

end

end A284272.P13406614390607443556

/-! ## A284272.P13573647955394916770

`A324337(xor(n, floor(n/2)))-A284271(n)`
-/

namespace A284272.P13573647955394916770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat - A284271 n

end

end A284272.P13573647955394916770

/-! ## A284272.P18053258277632698189

`A324337(A003188(n))-A284271(n)`
-/

namespace A284272.P18053258277632698189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 n).toNat - A284271 n

end

end A284272.P18053258277632698189

/-! ## A284272.P9585649237121196471

`A283976(n)+A283978(n)-A284271(n)`
-/

namespace A284272.P9585649237121196471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n + (A283978 n - A284271 n)

end

end A284272.P9585649237121196471

/-! ## A284272.P5799599726844910035

`A324338(A233280(n))%(n+1)-A284271(n)`
-/

namespace A284272.P5799599726844910035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324338 (A233280 n).toNat) (n + 1 : ℤ) - A284271 n

end

end A284272.P5799599726844910035

/-! ## A284272.P13364248917602795318

`A287896(n+1)-(A288003(n+1)+A284271(n))`
-/

namespace A284272.P13364248917602795318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) - (A288003 (n + 1) + A284271 n)

end

end A284272.P13364248917602795318

/-! ## A284272.P13791717355143642794

`A283976(2*n)-A284271(n)`
-/

namespace A284272.P13791717355143642794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n) - A284271 n

end

end A284272.P13791717355143642794

/-! ## A284272.P3534923595314282943

`A295515(2*n+1)-A284271(n)`
-/

namespace A284272.P3534923595314282943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * n + 1) - A284271 n

end

end A284272.P3534923595314282943

/-! ## A284272.P14127731744704250465

`A284556(2*n)+A284556(n)-A284271(n)`
-/

namespace A284272.P14127731744704250465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (2 * n) + A284556 n - A284271 n

end

end A284272.P14127731744704250465

/-! ## A284272.P9584480890473988848

`A007306(2*n+1)-(A284271(n)+A007306(n+1))`
-/

namespace A284272.P9584480890473988848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (2 * n + 1) - (A284271 n + A007306 (n + 1))

end

end A284272.P9584480890473988848

/-! ## A284272.P4606601413104550934

`A007306(4*n)-A007306(2*n)-A284271(n)`
-/

namespace A284272.P4606601413104550934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (4 * n) - A007306 (2 * n) - A284271 n

end

end A284272.P4606601413104550934

/-!
# A284273: Main diagonal of A284270.

The programs for A284273, there is no canonical definition to state claims against.
-/

/-! ## A284273.P14184023099581063494

`A277699(n+1)%(n+1)`
-/

namespace A284273.P14184023099581063494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277699 (n + 1)) (n + 1 : ℤ)

end

end A284273.P14184023099581063494

/-! ## A284273.P18040206442032443799

`A284270(∑[4*n]+1)`
-/

namespace A284273.P18040206442032443799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284273.P18040206442032443799

/-! ## A284273.P2214206978494820759

`A284270(A001844(n))%57`
-/

namespace A284273.P2214206978494820759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284270 (A001844 n).toNat) 57

end

end A284273.P2214206978494820759

/-! ## A284273.P7836615016399487029

`A277320(∑[A008574(n)])%(n+1)`
-/

namespace A284273.P7836615016399487029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277320 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (n + 1 : ℤ)

end

end A284273.P7836615016399487029

/-! ## A284273.P15617351036253442770

`A054977(n)*A284270(A001844(n))`
-/

namespace A284273.P15617351036253442770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A284270 (A001844 n).toNat

end

end A284273.P15617351036253442770

/-! ## A284273.P11874652279858497208

`lcm(A000034(n), A284270(A001844(n)))`
-/

namespace A284273.P11874652279858497208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A284270 (A001844 n).toNat)

end

end A284273.P11874652279858497208

/-! ## A284273.P11501172714427140789

`A000041(C(2, n))*A284270(A001844(n))`
-/

namespace A284273.P11501172714427140789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A284270 (A001844 n).toNat

end

end A284273.P11501172714427140789

/-! ## A284273.P2509322927804769820

`A007318(C(2, n))*A284270(A001844(n))`
-/

namespace A284273.P2509322927804769820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A284270 (A001844 n).toNat

end

end A284273.P2509322927804769820

/-! ## A284273.P7229679543591639828

`A000108(C(3, n))*A284270(A001844(n))`
-/

namespace A284273.P7229679543591639828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 3 n) * A284270 (A001844 n).toNat

end

end A284273.P7229679543591639828

/-!
# A284274: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A284274, there is no canonical definition to state claims against.
-/

/-! ## A284274.P8250628833300995399

`A007088(A284297(n))`
-/

namespace A284274.P8250628833300995399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284297 n).toNat

end

end A284274.P8250628833300995399

/-! ## A284274.P4093326090628929426

`A305989(A284298(n))`
-/

namespace A284274.P4093326090628929426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284298 n).toNat

end

end A284274.P4093326090628929426

/-! ## A284274.P16055512970856582238

`A185544(2*A284297(n))`
-/

namespace A284274.P16055512970856582238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284297 n).toNat

end

end A284274.P16055512970856582238

/-! ## A284274.P16401483015309885431

`A185544(lcm(2, A284297(n)))`
-/

namespace A284274.P16401483015309885431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284297 n))

end

end A284274.P16401483015309885431

/-!
# A284275: Number of primes between n and 2^n exclusive.

The programs for A284275, there is no canonical definition to state claims against.
-/

/-! ## A284275.P2527382135433143209

`A007053(n+1)-∑[∏{p}[n+1, C(#, n)%2]]`
-/

namespace A284275.P2527382135433143209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A284275.P2527382135433143209

/-! ## A284275.P15959456612942266300

`A284437(n+1)-A080339(n+1)`
-/

namespace A284275.P15959456612942266300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284437 (n + 1) - A080339 (n + 1)

end

end A284275.P15959456612942266300

/-! ## A284275.P7520571361314606026

`A060715(n+1)+A284437(n+1)-A035250(n+1)`
-/

namespace A284275.P7520571361314606026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1) + (A284437 (n + 1) - A035250 (n + 1))

end

end A284275.P7520571361314606026

/-! ## A284275.P14613965875997837892

`A185192(n+1)-∑[∑{p}[n+1, floor(#/(n+1))]]`
-/

namespace A284275.P14613965875997837892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284275.P14613965875997837892

/-! ## A284275.P4079219870820892401

`A185192(n+1)-A000720(n+1)`
-/

namespace A284275.P4079219870820892401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1) - A000720 (n + 1)

end

end A284275.P4079219870820892401

/-! ## A284275.P12997918684083361027

`A185192(n+1)-∑[A010051(n+1)]`
-/

namespace A284275.P12997918684083361027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284275.P12997918684083361027

/-!
# A284277: Primitive terms of A216072.

The programs for A284277, there is no canonical definition to state claims against.
-/

/-! ## A284277.P16571237676934146091

`A216072(comp[A299292(2*n)]+1)`
-/

namespace A284277.P16571237676934146091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299292 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216072 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A284277.P16571237676934146091

/-! ## A284277.P9651956305633113177

`A216072(lt[1-and(2, n), A083293(n)]+1)`
-/

namespace A284277.P9651956305633113177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216072 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A284277.P9651956305633113177

/-! ## A284277.P5323018813005447606

`A216072(comp[A047242(n+1)*A047352(n+1)])`
-/

namespace A284277.P5323018813005447606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1) * A047352 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216072 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A284277.P5323018813005447606

/-! ## A284277.P16984659983580299514

`A216072(comp[A047330(n+1)*A047352(n+1)])`
-/

namespace A284277.P16984659983580299514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047330 (n + 1) * A047352 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216072 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A284277.P16984659983580299514

/-! ## A284277.P244656953853617835

`A216072(comp[A047352(n+1)*A047357(n+1)])`
-/

namespace A284277.P244656953853617835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047352 (n + 1) * A047357 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216072 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A284277.P244656953853617835

/-!
# A284278: a(1)=2; for n >= 1, if n+2 is prime then a(2*n+1) = 3*n + 2 and a(2*n) = n + 2, otherwise all terms are 2.

The programs for A284278, there is no canonical definition to state claims against.
-/

/-! ## A284278.P659474541445358812

`A030545(∑[n]%A066560(n+1))`
-/

namespace A284278.P659474541445358812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A066560 (n + 1))).toNat

end

end A284278.P659474541445358812

/-! ## A284278.P15396254430440390314

`A000005(A000043(n+1))+A000217(n)%A066560(n+1)`
-/

namespace A284278.P15396254430440390314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000043 (n + 1)).toNat + Int.tmod (A000217 n) (A066560 (n + 1))

end

end A284278.P15396254430440390314

/-!
# A284279: Primitive terms of A131884.

The programs for A284279, there is no canonical definition to state claims against.
-/

/-! ## A284279.P3264649443826362293

`A131884(comp[(2*n)²])`
-/

namespace A284279.P3264649443826362293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131884 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A284279.P3264649443826362293

/-! ## A284279.P12696433361995977199

`filter[A131884(n+1), A179850(#)]`
-/

namespace A284279.P12696433361995977199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179850 (f1 j).toNat = 1) n)

end

end A284279.P12696433361995977199

/-! ## A284279.P183618856205856315

`filter[A131884(n+1), A285972(#)]`
-/

namespace A284279.P183618856205856315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285972 (f1 j).toNat = 1) n)

end

end A284279.P183618856205856315

/-! ## A284279.P9123357271768635114

`record[gcd(A045840(n), A131884(n+1))]`
-/

namespace A284279.P9123357271768635114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045840 n) (A131884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284279.P9123357271768635114

/-! ## A284279.P16795431827953172214

`∩[A102883(n+1), A131884(n+1)]`
-/

namespace A284279.P16795431827953172214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284279.P16795431827953172214

/-!
# A284280: a(n) = Sum_{d|n, d == 2 (mod 5)} d.

The programs for A284280, the canonical program `A284280.P10246323075996560872` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284280 has offset 1).

The definition of A284280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284280.P10246323075996560872

`∑{d}[n+1, #*and(1, A047412(#))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A284280

/-- `∑{d}[n+1, #*and(1, A047412(#))]` -/
def P10246323075996560872.Spec : Prop :=
  ∀ n, P10246323075996560872.a n = A284280 (n + 1)

theorem P10246323075996560872.correct : P10246323075996560872.Spec := by
  intro n
  simp only [A284280, Nat.add_sub_cancel]

end A284280

/-! ## A284280.P3737357505683780366

`A284152(n+1)-A284281(n+1)`
-/

namespace A284280.P3737357505683780366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284152 (n + 1) - A284281 (n + 1)

end

end A284280.P3737357505683780366

namespace A284280

/-- `A284152(n+1)-A284281(n+1)` -/
def P3737357505683780366.Spec : Prop :=
  ∀ n, P3737357505683780366.a n = A284280 (n + 1)

theorem P3737357505683780366.correct : P3737357505683780366.Spec := by
  intro n
  simp only [A284280, Nat.add_sub_cancel, A284280.P3737357505683780366.a, A284280.P10246323075996560872.f1, A284280.P10246323075996560872.a, A047412, A047412.P4762915060399373107.a, A284152, A284152.P5316867727396450920.a, A284281, A284281.P9191018554184866651.a, A116073, A116073.P184077794381179264.f1, A116073.P184077794381179264.a, A284150, A284150.P13402515358706383174.a, A284097, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A284103, A284103.P11048966256680687602.a, A079998, A079998.P5984370107414098605.a, A284361, A284361.P16555063331181266176.f1, A284361.P16555063331181266176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284280

/-! ## A284280.P2050089547900734170

`A284150(n+1)-(A284281(n+1)+A109091(n+1))`
-/

namespace A284280.P2050089547900734170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284150 (n + 1) - (A284281 (n + 1) + A109091 (n + 1))

end

end A284280.P2050089547900734170

namespace A284280

/-- `A284150(n+1)-(A284281(n+1)+A109091(n+1))` -/
def P2050089547900734170.Spec : Prop :=
  ∀ n, P2050089547900734170.a n = A284280 (n + 1)

theorem P2050089547900734170.correct : P2050089547900734170.Spec := by
  intro n
  simp only [A284280, Nat.add_sub_cancel, A284280.P2050089547900734170.a, A284280.P10246323075996560872.f1, A284280.P10246323075996560872.a, A047412, A047412.P4762915060399373107.a, A109091, A109091.P7060246415763713748.a, A284150, A284150.P13402515358706383174.a, A284281, A284281.P9191018554184866651.a, A116073, A116073.P184077794381179264.f1, A116073.P184077794381179264.a, A284097, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A284103, A284103.P11048966256680687602.a, A079998, A079998.P5984370107414098605.a, A284361, A284361.P16555063331181266176.f1, A284361.P16555063331181266176.a, A183865, A183865.P2342002431835983898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284280

/-! ## A284280.P6318668285564771994

`A116073(n+1)-(A284281(n+1)+A284150(n+1))`
-/

namespace A284280.P6318668285564771994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116073 (n + 1) - (A284281 (n + 1) + A284150 (n + 1))

end

end A284280.P6318668285564771994

namespace A284280

/-- `A116073(n+1)-(A284281(n+1)+A284150(n+1))` -/
def P6318668285564771994.Spec : Prop :=
  ∀ n, P6318668285564771994.a n = A284280 (n + 1)

theorem P6318668285564771994.correct : P6318668285564771994.Spec := by
  intro n
  simp only [A284280, Nat.add_sub_cancel, A284280.P6318668285564771994.a, A284280.P10246323075996560872.f1, A284280.P10246323075996560872.a, A047412, A047412.P4762915060399373107.a, A116073, A116073.P184077794381179264.f1, A116073.P184077794381179264.a, A284150, A284150.P13402515358706383174.a, A284281, A284281.P9191018554184866651.a, A284097, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A284103, A284103.P11048966256680687602.a, A079998, A079998.P5984370107414098605.a, A284361, A284361.P16555063331181266176.f1, A284361.P16555063331181266176.a, A183865, A183865.P2342002431835983898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284280

/-! ## A284280.P16893994608088887345

`A284152(n+1)-∑{d}[n+1, #*(A123197(#)%5)%2]`
-/

namespace A284280.P16893994608088887345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284152 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (Int.tmod (A123197 d) 5) 2

end

end A284280.P16893994608088887345

namespace A284280

/-- `A284152(n+1)-∑{d}[n+1, #*(A123197(#)%5)%2]` -/
def P16893994608088887345.Spec : Prop :=
  ∀ n, P16893994608088887345.a n = A284280 (n + 1)

end A284280

/-!
# A284281: a(n) = Sum_{d|n, d == 3 (mod 5)} d.

The programs for A284281, the canonical program `A284281.P9191018554184866651` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284281 has offset 1).

The definition of A284281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284281.P14025076033262242330

`A284152(n+1)-A284280(n+1)`
-/

namespace A284281.P14025076033262242330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284152 (n + 1) - A284280 (n + 1)

end

end A284281.P14025076033262242330

namespace A284281

/-- `A284152(n+1)-A284280(n+1)` -/
def P14025076033262242330.Spec : Prop :=
  ∀ n, P14025076033262242330.a n = A284281 (n + 1)

theorem P14025076033262242330.correct : P14025076033262242330.Spec := by
  intro n
  simp only [A284281, Nat.add_sub_cancel, A284281.P14025076033262242330.a, A284281.P9191018554184866651.a, A116073, A116073.P184077794381179264.f1, A116073.P184077794381179264.a, A284150, A284150.P13402515358706383174.a, A284152, A284152.P5316867727396450920.a, A284280, A284280.P10246323075996560872.f1, A284280.P10246323075996560872.a, A047412, A047412.P4762915060399373107.a, A284097, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A284103, A284103.P11048966256680687602.a, A079998, A079998.P5984370107414098605.a, A284361, A284361.P16555063331181266176.f1, A284361.P16555063331181266176.a, A183865, A183865.P2342002431835983898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284281

/-! ## A284281.P8898278596617941547

`A284152(n+1)-∑{d}[n+1, #*and(1, A047412(#))]`
-/

namespace A284281.P8898278596617941547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284152 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.land 1 (A047412 d)

end

end A284281.P8898278596617941547

namespace A284281

/-- `A284152(n+1)-∑{d}[n+1, #*and(1, A047412(#))]` -/
def P8898278596617941547.Spec : Prop :=
  ∀ n, P8898278596617941547.a n = A284281 (n + 1)

theorem P8898278596617941547.correct : P8898278596617941547.Spec := by
  intro n
  simp only [A284281, Nat.add_sub_cancel, A284281.P8898278596617941547.f1, A284281.P8898278596617941547.a, A284281.P9191018554184866651.a, A047412, A047412.P4762915060399373107.a, A116073, A116073.P184077794381179264.f1, A116073.P184077794381179264.a, A284150, A284150.P13402515358706383174.a, A284152, A284152.P5316867727396450920.a, A284280, A284280.P10246323075996560872.f1, A284280.P10246323075996560872.a, A284097, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A284103, A284103.P11048966256680687602.a, A079998, A079998.P5984370107414098605.a, A284361, A284361.P16555063331181266176.f1, A284361.P16555063331181266176.a, A183865, A183865.P2342002431835983898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284281

/-! ## A284281.P653216404953880691

`A284150(n+1)-(A284280(n+1)+A109091(n+1))`
-/

namespace A284281.P653216404953880691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284150 (n + 1) - (A284280 (n + 1) + A109091 (n + 1))

end

end A284281.P653216404953880691

namespace A284281

/-- `A284150(n+1)-(A284280(n+1)+A109091(n+1))` -/
def P653216404953880691.Spec : Prop :=
  ∀ n, P653216404953880691.a n = A284281 (n + 1)

theorem P653216404953880691.correct : P653216404953880691.Spec := by
  intro n
  simp only [A284281, Nat.add_sub_cancel, A284281.P653216404953880691.a, A284281.P9191018554184866651.a, A109091, A109091.P7060246415763713748.a, A116073, A116073.P184077794381179264.f1, A116073.P184077794381179264.a, A284150, A284150.P13402515358706383174.a, A284280, A284280.P10246323075996560872.f1, A284280.P10246323075996560872.a, A047412, A047412.P4762915060399373107.a, A284097, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A284103, A284103.P11048966256680687602.a, A079998, A079998.P5984370107414098605.a, A284361, A284361.P16555063331181266176.f1, A284361.P16555063331181266176.a, A183865, A183865.P2342002431835983898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284281

/-! ## A284281.P9191018554184866651

`A116073(n+1)-(A284280(n+1)+A284150(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284281

/-- `A116073(n+1)-(A284280(n+1)+A284150(n+1))` -/
def P9191018554184866651.Spec : Prop :=
  ∀ n, P9191018554184866651.a n = A284281 (n + 1)

theorem P9191018554184866651.correct : P9191018554184866651.Spec := by
  intro n
  simp only [A284281, Nat.add_sub_cancel]

end A284281

/-! ## A284281.P17684177955921594509

`∑{d}[n+1, #*(A123197(#)%5)%2]`
-/

namespace A284281.P17684177955921594509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (Int.tmod (A123197 d) 5) 2

end

end A284281.P17684177955921594509

namespace A284281

/-- `∑{d}[n+1, #*(A123197(#)%5)%2]` -/
def P17684177955921594509.Spec : Prop :=
  ∀ n, P17684177955921594509.a n = A284281 (n + 1)

end A284281

/-!
# A284282: a(n) = the number k such that A030067(2k-1) = n, or 0 if n does not occur in the semi-Fibonacci sequence A030067.

The programs for A284282, there is no canonical definition to state claims against.
-/

/-! ## A284282.P1485140062673137487

`A261101(n*A047999(A034823(n)))`
-/

namespace A284282.P1485140062673137487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261101 ((n : ℤ) * A047999 (A034823 n).toNat).toNat

end

end A284282.P1485140062673137487

/-! ## A284282.P16130584494540400207

`A080584(A024450(n+1))*A080595(n)`
-/

namespace A284282.P16130584494540400207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080584 (A024450 (n + 1)).toNat * A080595 n

end

end A284282.P16130584494540400207

/-! ## A284282.P1716399997810767346

`A164349(A205161(n+3))*A261101(n)`
-/

namespace A284282.P1716399997810767346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (A205161 (n + 3)).toNat * A261101 n

end

end A284282.P1716399997810767346

/-! ## A284282.P5589904778981920222

`A338504(lt[A338548(n+1), A339174(n+1)])`
-/

namespace A284282.P5589904778981920222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338504 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284282.P5589904778981920222

/-! ## A284282.P8787802878567138876

`A119466(n+1)*A288729(A341289(n+2))`
-/

namespace A284282.P8787802878567138876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119466 (n + 1) * A288729 (A341289 (n + 2)).toNat

end

end A284282.P8787802878567138876

/-!
# A284286: Expansion of eta(q^2)^4 / eta(q)^8 in powers of q.

The programs for A284286, there is no canonical definition to state claims against.
-/

/-! ## A284286.P16034434047436298968

`(-1)^n*A004405(n)`
-/

namespace A284286.P16034434047436298968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004405 n

end

end A284286.P16034434047436298968

/-! ## A284286.P9004831248607826364

`abs(A004405(n))`
-/

namespace A284286.P9004831248607826364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004405 n|

end

end A284286.P9004831248607826364

/-! ## A284286.P3530397781646680096

`A004405(n)*A033999(n)`
-/

namespace A284286.P3530397781646680096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004405 n * A033999 n

end

end A284286.P3530397781646680096

/-! ## A284286.P8165884595473687116

`gcd(A000038(n), A004405(n))`
-/

namespace A284286.P8165884595473687116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A004405 n)

end

end A284286.P8165884595473687116

/-! ## A284286.P932887040599073075

`lcm(A000034(n), A004405(n))`
-/

namespace A284286.P932887040599073075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A004405 n)

end

end A284286.P932887040599073075

/-! ## A284286.P18291903410047987985

`A004405(n)*A344864(Δ[A001651(n+1)])`
-/

namespace A284286.P18291903410047987985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004405 n * A344864 (f1 (n + 1) - f1 n).toNat

end

end A284286.P18291903410047987985

/-! ## A284286.P1120374864402371782

`A004404(n)*A004405(n)/A319552(n)`
-/

namespace A284286.P1120374864402371782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004404 n * A004405 n : ℚ) / (A319552 n : ℚ)

end

end A284286.P1120374864402371782

/-! ## A284286.P16622806459085672295

`A288515(∑[n+5]+5)`
-/

namespace A284286.P16622806459085672295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A284286.P16622806459085672295

/-!
# A284288: Numbers n such that the average of the strong divisors of n is an integer.

The programs for A284288, the canonical program `A284288.P13047089995370413038` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284288 has offset 1).

The definition of A284288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284288.P13047089995370413038

`eq[1, A296084(n+2)]+2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A284288

/-- `eq[1, A296084(n+2)]+2` -/
def P13047089995370413038.Spec : Prop :=
  ∀ n, (P13047089995370413038.a n : ℤ) = A284288 (n + 1)

theorem P13047089995370413038.correct : P13047089995370413038.Spec := by
  intro n
  simp only [A284288, Nat.add_sub_cancel]

end A284288

/-! ## A284288.P8820378589268243202

`eq[1, A296082(n+1)]+1`
-/

namespace A284288.P8820378589268243202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284288.P8820378589268243202

namespace A284288

/-- `eq[1, A296082(n+1)]+1` -/
def P8820378589268243202.Spec : Prop :=
  ∀ n, (P8820378589268243202.a n : ℤ) = A284288 (n + 1)

end A284288

/-! ## A284288.P15859804612990312402

`lt[A296082(n+2), 2]+2`
-/

namespace A284288.P15859804612990312402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296082 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A284288.P15859804612990312402

namespace A284288

/-- `lt[A296082(n+2), 2]+2` -/
def P15859804612990312402.Spec : Prop :=
  ∀ n, (P15859804612990312402.a n : ℤ) = A284288 (n + 1)

end A284288

/-! ## A284288.P3134999829456801062

`eq[1, a(A296082(n))-2]` with `a(0)=5`
-/

namespace A284288.P3134999829456801062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (A296082 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284288.P3134999829456801062

namespace A284288

/-- `eq[1, a(A296082(n))-2]` -/
def P3134999829456801062.Spec : Prop :=
  ∀ n, (P3134999829456801062.a n : ℤ) = A284288 (n + 1)

end A284288

/-! ## A284288.P17769943096743336497

`eq[2, A276086(a(A296082(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A284288.P17769943096743336497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A276086 (f2 (A296082 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284288.P17769943096743336497

namespace A284288

/-- `eq[2, A276086(a(A296082(n)))]` -/
def P17769943096743336497.Spec : Prop :=
  ∀ n, (P17769943096743336497.a n : ℤ) = A284288 (n + 1)

end A284288

/-!
# A284289: Number of partitions of n into prime power divisors of n (not including 1).

The programs for A284289, there is no canonical definition to state claims against.
-/

/-! ## A284289.P3422308848413700488

`A070118(A166974(n))%A051176(A000211(n))`
-/

namespace A284289.P3422308848413700488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070118 (A166974 n).toNat) (A051176 (A000211 n).toNat)

end

end A284289.P3422308848413700488

/-! ## A284289.P10024650243140966360

`A333627(A284465(n)+A008647(n))`
-/

namespace A284289.P10024650243140966360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A284465 n + A008647 n).toNat

end

end A284289.P10024650243140966360

/-! ## A284289.P18320221313676859729

`A333627(or(A008647(n), A284465(n)))`
-/

namespace A284289.P18320221313676859729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (Int.lor (A008647 n) (A284465 n)).toNat

end

end A284289.P18320221313676859729

/-! ## A284289.P13926817140282017225

`∑{e}[A143823(A284465(n)), #]`
-/

namespace A284289.P13926817140282017225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (A284465 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A284289.P13926817140282017225

/-! ## A284289.P1818527038030884165

`round(log2(A319786(((1-n)²+1)²)))`
-/

namespace A284289.P1818527038030884165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A319786 (((1 - (n : ℤ)) ^ 2 + 1) ^ 2).toNat : ℝ))

end

end A284289.P1818527038030884165

/-!
# A284290: Primes containing a digit 4.

The programs for A284290, there is no canonical definition to state claims against.
-/

/-! ## A284290.P8776372185111847465

`p?[A062669(n+1)]`
-/

namespace A284290.P8776372185111847465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284290.P8776372185111847465

/-! ## A284290.P8391998923831225115

`record[A006530(2*A062669(n+1))]`
-/

namespace A284290.P8391998923831225115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A062669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284290.P8391998923831225115

/-! ## A284290.P15091628596231167616

`record[A006530(lcm(2, A062669(n+1)))]`
-/

namespace A284290.P15091628596231167616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A062669 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284290.P15091628596231167616

/-! ## A284290.P2403336049210729224

`p?[A011534(n+1)]`
-/

namespace A284290.P2403336049210729224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284290.P2403336049210729224

/-! ## A284290.P12728094963822302667

`filter[A011534(n+1), A010051(#)]`
-/

namespace A284290.P12728094963822302667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A284290.P12728094963822302667

/-! ## A284290.P8248214719250460276

`∩[A000040(n+1), A011534(n+1)]`
-/

namespace A284290.P8248214719250460276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P8248214719250460276

/-! ## A284290.P17948069327833893441

`∩[A004139(n+1), A011534(n+1)]`
-/

namespace A284290.P17948069327833893441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P17948069327833893441

/-! ## A284290.P5631458202852086127

`∩[A006005(n+1), A011534(n+1)]`
-/

namespace A284290.P5631458202852086127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P5631458202852086127

/-! ## A284290.P8878579682819971753

`∩[A008578(n+1), A011534(n+1)]`
-/

namespace A284290.P8878579682819971753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P8878579682819971753

/-! ## A284290.P11212488158320691683

`∩[A011534(n+1), A033946(n+1)]`
-/

namespace A284290.P11212488158320691683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P11212488158320691683

/-! ## A284290.P8570419714004488344

`∩[A011534(n+1), A045319(n+1)]`
-/

namespace A284290.P8570419714004488344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P8570419714004488344

/-! ## A284290.P6717095991697905558

`∩[A011534(n+1), A045344(n+1)]`
-/

namespace A284290.P6717095991697905558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P6717095991697905558

/-! ## A284290.P7530344880751763926

`∩[A011534(n+1), A065091(n+1)]`
-/

namespace A284290.P7530344880751763926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P7530344880751763926

/-! ## A284290.P11072718728882207960

`∩[A011534(n+1), A065396(n+1)]`
-/

namespace A284290.P11072718728882207960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P11072718728882207960

/-! ## A284290.P5552266616522102532

`∩[A011534(n+1), A071621(n+1)]`
-/

namespace A284290.P5552266616522102532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P5552266616522102532

/-! ## A284290.P17912322132812155146

`∩[A011534(n+1), A078138(n+1)]`
-/

namespace A284290.P17912322132812155146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P17912322132812155146

/-! ## A284290.P8140706263678895601

`∩[A011534(n+1), A083249(n+1)]`
-/

namespace A284290.P8140706263678895601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P8140706263678895601

/-! ## A284290.P18181789186687711396

`∩[A116974(n+1), A011534(n+1)]`
-/

namespace A284290.P18181789186687711396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P18181789186687711396

/-! ## A284290.P16547283157120767360

`∩[A133765(n+1), A011534(n+1)]`
-/

namespace A284290.P16547283157120767360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P16547283157120767360

/-! ## A284290.P17537021679787034042

`∩[A138837(n+1), A011534(n+1)]`
-/

namespace A284290.P17537021679787034042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284290.P17537021679787034042

/-!
# A284291: 

The programs for A284291, there is no canonical definition to state claims against.
-/

/-! ## A284291.P9954613861503273241

`record[A008472(A062673(n+1))]`
-/

namespace A284291.P9954613861503273241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A062673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284291.P9954613861503273241

/-! ## A284291.P7174266707069734266

`p?[A011536(n+1)]`
-/

namespace A284291.P7174266707069734266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284291.P7174266707069734266

/-! ## A284291.P12357066768512233430

`filter[A011536(n+1), A010051(#)]`
-/

namespace A284291.P12357066768512233430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A284291.P12357066768512233430

/-! ## A284291.P13523297029187013858

`∩[A000040(n+1), A011536(n+1)]`
-/

namespace A284291.P13523297029187013858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P13523297029187013858

/-! ## A284291.P16304656753544738173

`∩[A004139(n+1), A011536(n+1)]`
-/

namespace A284291.P16304656753544738173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P16304656753544738173

/-! ## A284291.P11151323075820793680

`∩[A006005(n+1), A011536(n+1)]`
-/

namespace A284291.P11151323075820793680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P11151323075820793680

/-! ## A284291.P17252272734355204751

`∩[A008578(n+1), A011536(n+1)]`
-/

namespace A284291.P17252272734355204751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P17252272734355204751

/-! ## A284291.P16350150240417340010

`∩[A011536(n+1), A033946(n+1)]`
-/

namespace A284291.P16350150240417340010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P16350150240417340010

/-! ## A284291.P17379864125505519932

`∩[A011536(n+1), A045319(n+1)]`
-/

namespace A284291.P17379864125505519932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P17379864125505519932

/-! ## A284291.P4442122207360031317

`∩[A011536(n+1), A045344(n+1)]`
-/

namespace A284291.P4442122207360031317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P4442122207360031317

/-! ## A284291.P13362097959429584603

`∩[A011536(n+1), A046022(n+1)]`
-/

namespace A284291.P13362097959429584603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P13362097959429584603

/-! ## A284291.P445604973464085466

`∩[A011536(n+1), A062972(n+1)]`
-/

namespace A284291.P445604973464085466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P445604973464085466

/-! ## A284291.P15487057804570046787

`∩[A011536(n+1), A065091(n+1)]`
-/

namespace A284291.P15487057804570046787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P15487057804570046787

/-! ## A284291.P13474838693896528210

`∩[A011536(n+1), A066050(n+1)]`
-/

namespace A284291.P13474838693896528210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P13474838693896528210

/-! ## A284291.P3271746546117250520

`∩[A011536(n+1), A067126(n+1)]`
-/

namespace A284291.P3271746546117250520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P3271746546117250520

/-! ## A284291.P16304282555472362809

`∩[A011536(n+1), A140826(n+1)]`
-/

namespace A284291.P16304282555472362809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P16304282555472362809

/-! ## A284291.P7620545528023457895

`∩[A011536(n+1), A162787(n+1)]`
-/

namespace A284291.P7620545528023457895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P7620545528023457895

/-! ## A284291.P16312120132946328203

`p?[A092455(n)]`
-/

namespace A284291.P16312120132946328203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284291.P16312120132946328203

/-! ## A284291.P4226722200515019500

`∩[A000040(n+1), A092455(n)]`
-/

namespace A284291.P4226722200515019500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092455 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P4226722200515019500

/-! ## A284291.P3472587954278145950

`∩[A004139(n+1), A092455(n)]`
-/

namespace A284291.P3472587954278145950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092455 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284291.P3472587954278145950

/-!
# A284292: 

The programs for A284292, there is no canonical definition to state claims against.
-/

/-! ## A284292.P17046333564430673579

`p?[A062677(n+1)]`
-/

namespace A284292.P17046333564430673579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284292.P17046333564430673579

/-! ## A284292.P8160285472175332979

`record[A006530(A062677(n+1)%A062664(n+1))]`
-/

namespace A284292.P8160285472175332979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A062677 (n + 1)) (A062664 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284292.P8160285472175332979

/-! ## A284292.P4303159197652454679

`record[A006530((A010060(n+2)+1)*A062677(n+1))]`
-/

namespace A284292.P4303159197652454679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A010060 (n + 2) + 1) * A062677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284292.P4303159197652454679

/-! ## A284292.P15173732756815591964

`record[A006530((A008966(n+1)+1)*A062677(n+1))]`
-/

namespace A284292.P15173732756815591964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A008966 (n + 1) + 1) * A062677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284292.P15173732756815591964

/-! ## A284292.P3487000178117254631

`record[A006530(2*A062677(n+1))]`
-/

namespace A284292.P3487000178117254631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A062677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284292.P3487000178117254631

/-! ## A284292.P16201912000037152971

`record[A006530(lcm(2, A062677(n+1)))]`
-/

namespace A284292.P16201912000037152971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A062677 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284292.P16201912000037152971

/-! ## A284292.P15371870107555222769

`p?[A011538(n+1)]`
-/

namespace A284292.P15371870107555222769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284292.P15371870107555222769

/-! ## A284292.P4108230999036752845

`filter[A011538(n+1), A010051(#)]`
-/

namespace A284292.P4108230999036752845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A284292.P4108230999036752845

/-! ## A284292.P11125794328179850508

`∩[A000040(n+1), A011538(n+1)]`
-/

namespace A284292.P11125794328179850508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P11125794328179850508

/-! ## A284292.P5908877286511167451

`∩[A004139(n+1), A011538(n+1)]`
-/

namespace A284292.P5908877286511167451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P5908877286511167451

/-! ## A284292.P4770224040979455791

`∩[A006005(n+1), A011538(n+1)]`
-/

namespace A284292.P4770224040979455791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P4770224040979455791

/-! ## A284292.P12251717749245631322

`∩[A008578(n+1), A011538(n+1)]`
-/

namespace A284292.P12251717749245631322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P12251717749245631322

/-! ## A284292.P422165725318405610

`∩[A011538(n+1), A033946(n+1)]`
-/

namespace A284292.P422165725318405610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P422165725318405610

/-! ## A284292.P4848169364384441857

`∩[A011538(n+1), A045319(n+1)]`
-/

namespace A284292.P4848169364384441857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P4848169364384441857

/-! ## A284292.P14246992717935802868

`∩[A011538(n+1), A045344(n+1)]`
-/

namespace A284292.P14246992717935802868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P14246992717935802868

/-! ## A284292.P1780346506825055616

`∩[A011538(n+1), A046022(n+1)]`
-/

namespace A284292.P1780346506825055616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P1780346506825055616

/-! ## A284292.P9594483426698434810

`∩[A011538(n+1), A051948(n+1)]`
-/

namespace A284292.P9594483426698434810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P9594483426698434810

/-! ## A284292.P17946587057441366675

`∩[A011538(n+1), A062972(n+1)]`
-/

namespace A284292.P17946587057441366675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P17946587057441366675

/-! ## A284292.P108420841264235878

`∩[A011538(n+1), A065091(n+1)]`
-/

namespace A284292.P108420841264235878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P108420841264235878

/-! ## A284292.P17485494171929146634

`∩[A065396(n+1), A011538(n+1)]`
-/

namespace A284292.P17485494171929146634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284292.P17485494171929146634

/-!
# A284293: Numbers using only digits 1 and 6.

The programs for A284293, the canonical program `A284293.P8749601508240608206` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284293 has offset 1).

The definition of A284293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284293.P8749601508240608206

`record[5*(n-2*(floor(n/2)-a(floor(n/2))))+1]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A284293

/-- `record[5*(n-2*(floor(n/2)-a(floor(n/2))))+1]` -/
def P8749601508240608206.Spec : Prop :=
  ∀ n, P8749601508240608206.a n = A284293 (n + 1)

theorem P8749601508240608206.correct : P8749601508240608206.Spec := by
  intro n
  simp only [A284293, Nat.add_sub_cancel]

end A284293

/-! ## A284293.P6677653836302999994

`A284922(n+1)-A007931(n+1)`
-/

namespace A284293.P6677653836302999994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284922 (n + 1) - A007931 (n + 1)

end

end A284293.P6677653836302999994

namespace A284293

/-- `A284922(n+1)-A007931(n+1)` -/
def P6677653836302999994.Spec : Prop :=
  ∀ n, P6677653836302999994.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P5076834858663538069

`A284964(n+1)-A032810(n+1)`
-/

namespace A284293.P5076834858663538069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A032810 (n + 1)

end

end A284293.P5076834858663538069

namespace A284293

/-- `A284964(n+1)-A032810(n+1)` -/
def P5076834858663538069.Spec : Prop :=
  ∀ n, P5076834858663538069.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P6573968010215506167

`A284923(n+1)-A032917(n+1)`
-/

namespace A284293.P6573968010215506167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1) - A032917 (n + 1)

end

end A284293.P6573968010215506167

namespace A284293

/-- `A284923(n+1)-A032917(n+1)` -/
def P6573968010215506167.Spec : Prop :=
  ∀ n, P6573968010215506167.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P17540852067226481165

`A284921(n+1)-A256077(n+1)`
-/

namespace A284293.P17540852067226481165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) - A256077 (n + 1)

end

end A284293.P17540852067226481165

namespace A284293

/-- `A284921(n+1)-A256077(n+1)` -/
def P17540852067226481165.Spec : Prop :=
  ∀ n, P17540852067226481165.a n = A284293 (n + 1)

theorem P17540852067226481165.correct : P17540852067226481165.Spec := by
  intro n
  simp only [A284293, Nat.add_sub_cancel, A284293.P17540852067226481165.a, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A256077, A256077.P10462771814391243740.a, A284921, A284921.P2849752813632733205.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284293

/-! ## A284293.P16400203106069442903

`2*A032822(n+1)-A007931(n+1)`
-/

namespace A284293.P16400203106069442903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032822 (n + 1) - A007931 (n + 1)

end

end A284293.P16400203106069442903

namespace A284293

/-- `2*A032822(n+1)-A007931(n+1)` -/
def P16400203106069442903.Spec : Prop :=
  ∀ n, P16400203106069442903.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P1998799594872068952

`2*A072961(n+1)-A032834(n+1)`
-/

namespace A284293.P1998799594872068952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072961 (n + 1) - A032834 (n + 1)

end

end A284293.P1998799594872068952

namespace A284293

/-- `2*A072961(n+1)-A032834(n+1)` -/
def P1998799594872068952.Spec : Prop :=
  ∀ n, P1998799594872068952.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P3876165890384438772

`2*A276037(n+1)-A032822(n+1)`
-/

namespace A284293.P3876165890384438772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276037 (n + 1) - A032822 (n + 1)

end

end A284293.P3876165890384438772

namespace A284293

/-- `2*A276037(n+1)-A032822(n+1)` -/
def P3876165890384438772.Spec : Prop :=
  ∀ n, P3876165890384438772.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P12964521741677337965

`(A284294(n+1)+A032917(n+1))/2`
-/

namespace A284293.P12964521741677337965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284294 (n + 1) + A032917 (n + 1) : ℚ) / 2

end

end A284293.P12964521741677337965

namespace A284293

/-- `(A284294(n+1)+A032917(n+1))/2` -/
def P12964521741677337965.Spec : Prop :=
  ∀ n, P12964521741677337965.a n = (A284293 (n + 1) : ℚ)

end A284293

/-! ## A284293.P1446587982577309635

`2*A284633(n+1)-A256291(n+1)`
-/

namespace A284293.P1446587982577309635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284633 (n + 1) - A256291 (n + 1)

end

end A284293.P1446587982577309635

namespace A284293

/-- `2*A284633(n+1)-A256291(n+1)` -/
def P1446587982577309635.Spec : Prop :=
  ∀ n, P1446587982577309635.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P12537710483100619300

`A284963(n+1)-2*A256077(n+1)`
-/

namespace A284293.P12537710483100619300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - 2 * A256077 (n + 1)

end

end A284293.P12537710483100619300

namespace A284293

/-- `A284963(n+1)-2*A256077(n+1)` -/
def P12537710483100619300.Spec : Prop :=
  ∀ n, P12537710483100619300.a n = A284293 (n + 1)

theorem P12537710483100619300.correct : P12537710483100619300.Spec := by
  intro n
  simp only [A284293, Nat.add_sub_cancel, A284293.P12537710483100619300.a, A284293.P8749601508240608206.f1, A284293.P8749601508240608206.a, A256077, A256077.P10462771814391243740.a, A284963, A284963.P4374081168494453790.a, A000523, A000523.P3314682526375882520.a, A002275, A002275.P11331712682657475845.a, A284921, A284921.P2849752813632733205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284293

/-! ## A284293.P16115971844738994732

`(A276039(n+1)+A276037(n+1))/2`
-/

namespace A284293.P16115971844738994732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276039 (n + 1) + A276037 (n + 1) : ℚ) / 2

end

end A284293.P16115971844738994732

namespace A284293

/-- `(A276039(n+1)+A276037(n+1))/2` -/
def P16115971844738994732.Spec : Prop :=
  ∀ n, P16115971844738994732.a n = (A284293 (n + 1) : ℚ)

end A284293

/-! ## A284293.P14402615052367038255

`2*A284632(n+1)-A284633(n+1)`
-/

namespace A284293.P14402615052367038255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284632 (n + 1) - A284633 (n + 1)

end

end A284293.P14402615052367038255

namespace A284293

/-- `2*A284632(n+1)-A284633(n+1)` -/
def P14402615052367038255.Spec : Prop :=
  ∀ n, P14402615052367038255.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P1048869669617840823

`A284964(n+1)-A284634(n+1)/2`
-/

namespace A284293.P1048869669617840823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284964 (n + 1) : ℚ) - (A284634 (n + 1) : ℚ) / 2

end

end A284293.P1048869669617840823

namespace A284293

/-- `A284964(n+1)-A284634(n+1)/2` -/
def P1048869669617840823.Spec : Prop :=
  ∀ n, P1048869669617840823.a n = (A284293 (n + 1) : ℚ)

end A284293

/-! ## A284293.P17386715709675736661

`A284922(n+1)-A284920(n+1)/2`
-/

namespace A284293.P17386715709675736661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284922 (n + 1) : ℚ) - (A284920 (n + 1) : ℚ) / 2

end

end A284293.P17386715709675736661

namespace A284293

/-- `A284922(n+1)-A284920(n+1)/2` -/
def P17386715709675736661.Spec : Prop :=
  ∀ n, P17386715709675736661.a n = (A284293 (n + 1) : ℚ)

end A284293

/-! ## A284293.P8046168909205400188

`A032917(n+1)+A143967(n+1)-A032834(n+1)`
-/

namespace A284293.P8046168909205400188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + (A143967 (n + 1) - A032834 (n + 1))

end

end A284293.P8046168909205400188

namespace A284293

/-- `A032917(n+1)+A143967(n+1)-A032834(n+1)` -/
def P8046168909205400188.Spec : Prop :=
  ∀ n, P8046168909205400188.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P13388035119566799034

`A007931(n+1)+A276039(n+1)-A032917(n+1)`
-/

namespace A284293.P13388035119566799034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A276039 (n + 1) - A032917 (n + 1))

end

end A284293.P13388035119566799034

namespace A284293

/-- `A007931(n+1)+A276039(n+1)-A032917(n+1)` -/
def P13388035119566799034.Spec : Prop :=
  ∀ n, P13388035119566799034.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P13017923299073996055

`A007931(n+1)+A284921(n+1)-A032810(n+1)`
-/

namespace A284293.P13017923299073996055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A284921 (n + 1) - A032810 (n + 1))

end

end A284293.P13017923299073996055

namespace A284293

/-- `A007931(n+1)+A284921(n+1)-A032810(n+1)` -/
def P13017923299073996055.Spec : Prop :=
  ∀ n, P13017923299073996055.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P2663848089531872921

`A007931(n+1)+A284923(n+1)-A072961(n+1)`
-/

namespace A284293.P2663848089531872921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A284923 (n + 1) - A072961 (n + 1))

end

end A284293.P2663848089531872921

namespace A284293

/-- `A007931(n+1)+A284923(n+1)-A072961(n+1)` -/
def P2663848089531872921.Spec : Prop :=
  ∀ n, P2663848089531872921.a n = A284293 (n + 1)

end A284293

/-! ## A284293.P17027046482835508293

`A032822(n+1)+A284921(n+1)-A072961(n+1)`
-/

namespace A284293.P17027046482835508293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284921 (n + 1) - A072961 (n + 1))

end

end A284293.P17027046482835508293

namespace A284293

/-- `A032822(n+1)+A284921(n+1)-A072961(n+1)` -/
def P17027046482835508293.Spec : Prop :=
  ∀ n, P17027046482835508293.a n = A284293 (n + 1)

end A284293

/-!
# A284294: Numbers using only digits 1 and 9.

The programs for A284294, there is no canonical definition to state claims against.
-/

/-! ## A284294.P13124734935780727737

`2*A284293(n+1)-A032917(n+1)`
-/

namespace A284294.P13124734935780727737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284293 (n + 1) - A032917 (n + 1)

end

end A284294.P13124734935780727737

/-! ## A284294.P544952013285268161

`2*A276037(n+1)-A256077(n+1)`
-/

namespace A284294.P544952013285268161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276037 (n + 1) - A256077 (n + 1)

end

end A284294.P544952013285268161

/-! ## A284294.P13968550258259297742

`2*A276039(n+1)-A276037(n+1)`
-/

namespace A284294.P13968550258259297742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276039 (n + 1) - A276037 (n + 1)

end

end A284294.P13968550258259297742

/-! ## A284294.P1186679122601225199

`2*A284921(n+1)-A284379(n+1)`
-/

namespace A284294.P1186679122601225199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284921 (n + 1) - A284379 (n + 1)

end

end A284294.P1186679122601225199

/-! ## A284294.P59933272854996064

`A032917(n+1)+A213084(n+1)-A007931(n+1)`
-/

namespace A284294.P59933272854996064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + (A213084 (n + 1) - A007931 (n + 1))

end

end A284294.P59933272854996064

/-! ## A284294.P11544368163127023028

`A213084(n+1)+A276037(n+1)-A032822(n+1)`
-/

namespace A284294.P11544368163127023028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1) + (A276037 (n + 1) - A032822 (n + 1))

end

end A284294.P11544368163127023028

/-! ## A284294.P592934540087302400

`A276039(n+1)+A284293(n+1)-A032822(n+1)`
-/

namespace A284294.P592934540087302400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1) + (A284293 (n + 1) - A032822 (n + 1))

end

end A284294.P592934540087302400

/-! ## A284294.P18153915570579698535

`A072961(n+1)+A284964(n+1)-A256290(n+1)`
-/

namespace A284294.P18153915570579698535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + (A284964 (n + 1) - A256290 (n + 1))

end

end A284294.P18153915570579698535

/-! ## A284294.P9880506854644136275

`A072961(n+1)+A284923(n+1)-A284379(n+1)`
-/

namespace A284294.P9880506854644136275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + (A284923 (n + 1) - A284379 (n + 1))

end

end A284294.P9880506854644136275

/-! ## A284294.P10634952331341601047

`A213084(n+1)+A213084(n+1)-A276039(n+1)`
-/

namespace A284294.P10634952331341601047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1) + (A213084 (n + 1) - A276039 (n + 1))

end

end A284294.P10634952331341601047

/-! ## A284294.P7956723180823838288

`A213084(n+1)+A284293(n+1)-A276037(n+1)`
-/

namespace A284294.P7956723180823838288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1) + (A284293 (n + 1) - A276037 (n + 1))

end

end A284294.P7956723180823838288

/-! ## A284294.P12411435714934671626

`A284632(n+1)+A284973(n+1)-A256291(n+1)`
-/

namespace A284294.P12411435714934671626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + (A284973 (n + 1) - A256291 (n + 1))

end

end A284294.P12411435714934671626

/-! ## A284294.P1436265361154354652

`A276037(n+1)+A284964(n+1)-A284379(n+1)`
-/

namespace A284294.P1436265361154354652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + (A284964 (n + 1) - A284379 (n + 1))

end

end A284294.P1436265361154354652

/-! ## A284294.P4123787210053719052

`A036435(A137951(n+1))`
-/

namespace A284294.P4123787210053719052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (A137951 (n + 1)).toNat

end

end A284294.P4123787210053719052

/-! ## A284294.P16932862429130082054

`∩[A036435(n+1), A174813(n+1)]`
-/

namespace A284294.P16932862429130082054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284294.P16932862429130082054

/-! ## A284294.P7355806244041602282

`A046030(A032911(n+1)+1)`
-/

namespace A284294.P7355806244041602282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (A032911 (n + 1) + 1).toNat

end

end A284294.P7355806244041602282

/-! ## A284294.P9255846425746016609

`A046030(record[A332769(n+1)+1])`
-/

namespace A284294.P9255846425746016609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A284294.P9255846425746016609

/-! ## A284294.P14900929097203891398

`∩[A036435(n+1), A136333(n+1)]`
-/

namespace A284294.P14900929097203891398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284294.P14900929097203891398

/-! ## A284294.P2969095862082973037

`∩[A046030(n+1), A136333(n+1)]`
-/

namespace A284294.P2969095862082973037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284294.P2969095862082973037

/-! ## A284294.P2214400851855752248

`∩[A046030(n+1), A174813(n+1)]`
-/

namespace A284294.P2214400851855752248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284294.P2214400851855752248

/-!
# A284295: Numbers k such that product of digits of k is a power of 9.

The programs for A284295, there is no canonical definition to state claims against.
-/

/-! ## A284295.P14326454084105287908

`eq[1, A319657(A007954(n))]`
-/

namespace A284295.P14326454084105287908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284295.P14326454084105287908

/-! ## A284295.P1396207441371232977

`eq[1, A053830(A230099(n)-n)]`
-/

namespace A284295.P1396207441371232977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A230099 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284295.P1396207441371232977

/-! ## A284295.P11532458388642063606

`∩[A050626(n+1), A174813(n+1)]`
-/

namespace A284295.P11532458388642063606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284295.P11532458388642063606

/-! ## A284295.P3287324676479542082

`∩[A062371(n+1), A174813(n+1)]`
-/

namespace A284295.P3287324676479542082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284295.P3287324676479542082

/-! ## A284295.P10798757172462105350

`eq[A168046(n), A319657(A051801(n))]`
-/

namespace A284295.P10798757172462105350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284295.P10798757172462105350

/-!
# A284296: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A284296, there is no canonical definition to state claims against.
-/

/-! ## A284296.P16353661565108083414

`A007088(A284298(n))`
-/

namespace A284296.P16353661565108083414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284298 n).toNat

end

end A284296.P16353661565108083414

/-! ## A284296.P8265431798264567703

`A305989(A284297(n))`
-/

namespace A284296.P8265431798264567703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284297 n).toNat

end

end A284296.P8265431798264567703

/-! ## A284296.P14348575954727259339

`A185544(2*A284298(n))`
-/

namespace A284296.P14348575954727259339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284298 n).toNat

end

end A284296.P14348575954727259339

/-! ## A284296.P10095534830154817331

`A185544(lcm(2, A284298(n)))`
-/

namespace A284296.P10095534830154817331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284298 n))

end

end A284296.P10095534830154817331

/-!
# A284297: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A284297, there is no canonical definition to state claims against.
-/

/-! ## A284297.P1860238836387435822

`A057889(A284298(n))`
-/

namespace A284297.P1860238836387435822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284298 n).toNat

end

end A284297.P1860238836387435822

/-! ## A284297.P3187761130886486012

`A281589(2*A284298(n))`
-/

namespace A284297.P3187761130886486012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A284298 n).toNat

end

end A284297.P3187761130886486012

/-! ## A284297.P17302367154334329443

`A325401(2*A284298(n))`
-/

namespace A284297.P17302367154334329443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284298 n).toNat

end

end A284297.P17302367154334329443

/-! ## A284297.P2022953543763605933

`A281589(lcm(2, A284298(n)))`
-/

namespace A284297.P2022953543763605933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A284298 n))

end

end A284297.P2022953543763605933

/-! ## A284297.P14459154884711311340

`A030101(or(1, A284298(n)))`
-/

namespace A284297.P14459154884711311340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A284298 n)).toNat

end

end A284297.P14459154884711311340

/-!
# A284298: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 846", based on the 5-celled von Neumann neighborhood.

The programs for A284298, there is no canonical definition to state claims against.
-/

/-! ## A284298.P17163984129271654033

`A057889(A284297(n))`
-/

namespace A284298.P17163984129271654033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284297 n).toNat

end

end A284298.P17163984129271654033

/-! ## A284298.P12712205945166513838

`A325401(lcm(A284297(n), A340673(3*n+5)))`
-/

namespace A284298.P12712205945166513838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A284297 n) (A340673 (3 * n + 5)))

end

end A284298.P12712205945166513838

/-! ## A284298.P6237266229199999800

`A281589(2*A284297(n))`
-/

namespace A284298.P6237266229199999800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A284297 n).toNat

end

end A284298.P6237266229199999800

/-! ## A284298.P2831788237902227641

`A325401(2*A284297(n))`
-/

namespace A284298.P2831788237902227641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284297 n).toNat

end

end A284298.P2831788237902227641

/-! ## A284298.P15563692420912145909

`A281589(lcm(2, A284297(n)))`
-/

namespace A284298.P15563692420912145909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A284297 n))

end

end A284298.P15563692420912145909

/-!
# A284299: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A284299, there is no canonical definition to state claims against.
-/

/-! ## A284299.P9214160945468276779

`A007088(A284301(n))`
-/

namespace A284299.P9214160945468276779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284301 n).toNat

end

end A284299.P9214160945468276779

/-! ## A284299.P8026335985207577276

`A185544(2*A284301(n))`
-/

namespace A284299.P8026335985207577276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284301 n).toNat

end

end A284299.P8026335985207577276

