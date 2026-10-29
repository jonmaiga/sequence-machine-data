import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C043
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C014
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A400404: Number of free polymarquises with n cells.

The programs for A400404, there is no canonical definition to state claims against.
-/

/-! ## A400404.P7667138465333919987

`A106371(A367100(n))`
-/

namespace A400404.P7667138465333919987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106371 (A367100 n).toNat

end

end A400404.P7667138465333919987

/-!
# A400411: Number of deals of n cards numbered 1 to n between two players for which the card game War never ends.

The programs for A400411, there is no canonical definition to state claims against.
-/

/-! ## A400411.P15078626505088773638

`A143714(A047112(n+1))`
-/

namespace A400411.P15078626505088773638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143714 (A047112 (n + 1)).toNat

end

end A400411.P15078626505088773638

/-!
# A400413: a(n) = Sum_{k=1..n} (2^A007814(floor(n/k)) - 1).

The programs for A400413, the canonical program `A400413.P13849645286402086857` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400413 has offset 1).

The definition of A400413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400413.P13849645286402086857

`∑{#}[n, 2^A007814(floor((n+1)/(#+1)))-1]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400413

/-- `∑{#}[n, 2^A007814(floor((n+1)/(#+1)))-1]` -/
def P13849645286402086857.Spec : Prop :=
  ∀ n, P13849645286402086857.a n = (A400413 (n + 1) : ℚ)

end A400413

/-!
# A400415: a(n) = (2*n-sigma(n))/gcd(tau(n), 2*n-sigma(n)), tau = A000005, sigma = A000203.

The programs for A400415, the canonical program `A400415.P10373400726085747654` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400415 has offset 1).

The definition of A400415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400415.P10373400726085747654

`(2*(n+1)-A000203(n+1))/gcd(A000005(n+1), 2*(n+1)-A000203(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400415

/-- `(2*(n+1)-A000203(n+1))/gcd(A000005(n+1), 2*(n+1)-A000203(n+1))` -/
def P10373400726085747654.Spec : Prop :=
  ∀ n, P10373400726085747654.a n = (A400415 (n + 1) : ℚ)

end A400415

/-!
# A400418: a(n) = Sum_{k=1..n} A007947(floor(n/k)).

The programs for A400418, the canonical program `A400418.P16782049149117832626` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400418 has offset 1).

The definition of A400418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A007947(floor((n+1)/(#+1)))]` (program `A400418.P16782049149117832626`, by `A400418.P16782049149117832626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400418.P16782049149117832626

`∑{#}[n, A007947(floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400418

/-- `∑{#}[n, A007947(floor((n+1)/(#+1)))]` -/
def P16782049149117832626.Spec : Prop :=
  ∀ n, P16782049149117832626.a n = A400418 (n + 1)

theorem P16782049149117832626.correct : P16782049149117832626.Spec := by
  intro n
  simp only [A400418, Nat.add_sub_cancel]

end A400418

/-!
# A400419: Number of endofunctions on [n] whose connected components have the same size.

The programs for A400419, there is no canonical definition to state claims against.
-/

/-! ## A400419.P10850948887187686050

`A092432(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A400419.P10850948887187686050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A092432 (a (n - 1) + 1).toNat

end

end A400419.P10850948887187686050

/-!
# A400421: Triangle T(n,k) read by rows: number of permutations of [n] in which every occurring cycle length has multiplicity k, n >= 0, 0 <= k <= n.

The programs for A400421, there is no canonical definition to state claims against.
-/

/-! ## A400421.P7527426046571728038

`A106451(A277031(n))`
-/

namespace A400421.P7527426046571728038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106451 (A277031 n).toNat

end

end A400421.P7527426046571728038

/-! ## A400421.P4693035968040369960

`A058176(A327244(n+1))`
-/

namespace A400421.P4693035968040369960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058176 (A327244 (n + 1)).toNat

end

end A400421.P4693035968040369960

/-!
# A400423: a(n) is the least positive integer that can be expressed as +- 1^2 +- 2^2 +- 3^2 +- ... +- n^2 in exactly n ways, or -1 if no such integer exists.

The programs for A400423, there is no canonical definition to state claims against.
-/

/-! ## A400423.P8437751943797920976

`A368735(A045417(n+1))`
-/

namespace A400423.P8437751943797920976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368735 (A045417 (n + 1)).toNat

end

end A400423.P8437751943797920976

/-! ## A400423.P12189311593735281417

`A368735(A023221(n+2))`
-/

namespace A400423.P12189311593735281417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368735 (A023221 (n + 2)).toNat

end

end A400423.P12189311593735281417

/-!
# A400427: 3rd least distinct prime factor of numbers with 3 or more distinct prime factors.

The programs for A400427, the canonical program `A400427.P4217021055050402070` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400427 has offset 1).

The definition of A400427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4622 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400427.P4217021055050402070

`A119288(A028234(A000977(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A400427

/-- `A119288(A028234(A000977(n+1)))` -/
def P4217021055050402070.Spec : Prop :=
  ∀ n, P4217021055050402070.a n = A400427 (n + 1)

theorem P4217021055050402070.correct : P4217021055050402070.Spec := by
  intro n
  simp only [A400427, Nat.add_sub_cancel]

end A400427

/-!
# A400430: a(n) = max_{1 <= k < n} (k + omega(k)) - n, where omega(k) is the number of distinct prime divisors of k.

The programs for A400430, there is no canonical definition to state claims against.
-/

/-! ## A400430.P8461573705759685942

`A001221(n+1)-A001221(A172290(n+1))`
-/

namespace A400430.P8461573705759685942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A172290 (n + 1)).toNat

end

end A400430.P8461573705759685942

/-! ## A400430.P14007568407891170409

`A001221(n+1)-A143731(A096366(n+1))`
-/

namespace A400430.P14007568407891170409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A143731 (A096366 (n + 1)).toNat

end

end A400430.P14007568407891170409

/-! ## A400430.P4890164913939332770

`A001221(n+1)-A392858(A060735(n+1))`
-/

namespace A400430.P4890164913939332770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A392858 (A060735 (n + 1)).toNat

end

end A400430.P4890164913939332770

/-! ## A400430.P8449043280111806424

`A001221(n+1)-A364906(A319319(n+1))`
-/

namespace A400430.P8449043280111806424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A364906 (A319319 (n + 1)).toNat

end

end A400430.P8449043280111806424

/-! ## A400430.P7632078218749511260

`A016332(A016007(n+1))`
-/

namespace A400430.P7632078218749511260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016332 (A016007 (n + 1)).toNat

end

end A400430.P7632078218749511260

/-!
# A400431: G.f. A(x) satisfies A(x) = 1 + 2*x*A(2*x)^(1/2).

The programs for A400431, there is no canonical definition to state claims against.
-/

/-! ## A400431.P483493946775560641

`A064527(A110181(n))`
-/

namespace A400431.P483493946775560641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (A110181 n).toNat

end

end A400431.P483493946775560641

/-!
# A400435: Integers that can be expressed as the sum of 3 factorials.

The programs for A400435, the canonical program `A400435.P16126613227254980307` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400435 has offset 1).

The definition of A400435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400435.P16126613227254980307

`A277011(A014311(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A400435

/-- `A277011(A014311(n+1))` -/
def P16126613227254980307.Spec : Prop :=
  ∀ n, P16126613227254980307.a n = A400435 (n + 1)

theorem P16126613227254980307.correct : P16126613227254980307.Spec := by
  intro n
  simp only [A400435, Nat.add_sub_cancel]

end A400435

/-! ## A400435.P1071684189210586623

`A322001(A052217(n+1))`
-/

namespace A400435.P1071684189210586623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 (A052217 (n + 1)).toNat

end

end A400435.P1071684189210586623

namespace A400435

/-- `A322001(A052217(n+1))` -/
def P1071684189210586623.Spec : Prop :=
  ∀ n, P1071684189210586623.a n = A400435 (n + 1)

end A400435

/-!
# A400443: Numbers k such that k is an automorphic number in at least one base b in the range [2, k-2].

The programs for A400443, there is no canonical definition to state claims against.
-/

/-! ## A400443.P9083797498775489445

`filter[A373410(n+2), A225181(#)]`
-/

namespace A400443.P9083797498775489445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373410 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A400443.P9083797498775489445

/-!
# A400445: a(n) = (n-1)*(2*a(n-1) + 15*a(n-2))/(n+1) with a(0)=1, a(1)=0.

The programs for A400445, the canonical program `A400445.P7356954288380415145` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400445 has offset 0).

The definition of A400445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400445.P7356954288380415145

`(n-1)/(n+1)*(2*a(n-1)+15*a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400445

/-- `(n-1)/(n+1)*(2*a(n-1)+15*a(n-2))` -/
def P7356954288380415145.Spec : Prop :=
  ∀ n, P7356954288380415145.a n = (A400445 n : ℚ)

end A400445

/-! ## A400445.P6742447237979438279

`(n-1)*(2*a(n-1)+15*a(n-2))/(n+1)` with `a(0)=1, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400445.P6742447237979438279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1 : ℚ) * (2 * a (n - 1) + 15 * a (n - 2)) / (n + 1 : ℚ)

end

end A400445.P6742447237979438279

namespace A400445

/-- `(n-1)*(2*a(n-1)+15*a(n-2))/(n+1)` -/
def P6742447237979438279.Spec : Prop :=
  ∀ n, P6742447237979438279.a n = (A400445 n : ℚ)

end A400445

/-!
# A400450: The number of divisors d of n such that gcd(d, n/d) is prime.

The programs for A400450, the canonical program `A400450.P6566241445451218318` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400450 has offset 1).

The definition of A400450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400450.P14893734447822940817

`val(A294897(n+1), 2)`
-/

namespace A400450.P14893734447822940817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A294897 (n + 1)).toNat 2

end

end A400450.P14893734447822940817

namespace A400450

/-- `val(A294897(n+1), 2)` -/
def P14893734447822940817.Spec : Prop :=
  ∀ n, (P14893734447822940817.a n : ℤ) = A400450 (n + 1)

end A400450

/-! ## A400450.P13942902409656269090

`A400452(A058035(n+1))`
-/

namespace A400450.P13942902409656269090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400452 (A058035 (n + 1)).toNat

end

end A400450.P13942902409656269090

namespace A400450

/-- `A400452(A058035(n+1))` -/
def P13942902409656269090.Spec : Prop :=
  ∀ n, P13942902409656269090.a n = A400450 (n + 1)

end A400450

/-! ## A400450.P6566241445451218318

`∑{d}[n+1, A008966(#)*A056170((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A400450

/-- `∑{d}[n+1, A008966(#)*A056170((n+1)/#)]` -/
def P6566241445451218318.Spec : Prop :=
  ∀ n, P6566241445451218318.a n = A400450 (n + 1)

theorem P6566241445451218318.correct : P6566241445451218318.Spec := by
  intro n
  simp only [A400450, Nat.add_sub_cancel]

end A400450

/-! ## A400450.P13465854814971945446

`∑{e}[A295666(n+1), #]`
-/

namespace A400450.P13465854814971945446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A400450.P13465854814971945446

namespace A400450

/-- `∑{e}[A295666(n+1), #]` -/
def P13465854814971945446.Spec : Prop :=
  ∀ n, (P13465854814971945446.a n : ℤ) = A400450 (n + 1)

end A400450

/-! ## A400450.P13840248765954783243

`A001222(A295666(n+1))`
-/

namespace A400450.P13840248765954783243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295666 (n + 1)).toNat

end

end A400450.P13840248765954783243

namespace A400450

/-- `A001222(A295666(n+1))` -/
def P13840248765954783243.Spec : Prop :=
  ∀ n, P13840248765954783243.a n = A400450 (n + 1)

end A400450

/-! ## A400450.P9324686235655129677

`A007814(A294897(n+1))`
-/

namespace A400450.P9324686235655129677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A294897 (n + 1)).toNat

end

end A400450.P9324686235655129677

namespace A400450

/-- `A007814(A294897(n+1))` -/
def P9324686235655129677.Spec : Prop :=
  ∀ n, P9324686235655129677.a n = A400450 (n + 1)

end A400450

/-! ## A400450.P10815414854330173416

`A284257(A294895(n+1))`
-/

namespace A400450.P10815414854330173416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (A294895 (n + 1)).toNat

end

end A400450.P10815414854330173416

namespace A400450

/-- `A284257(A294895(n+1))` -/
def P10815414854330173416.Spec : Prop :=
  ∀ n, P10815414854330173416.a n = A400450 (n + 1)

end A400450

/-!
# A400451: Distinct values of A400450 in increasing order.

The programs for A400451, the canonical program `A400451.P13155712066239824629` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400451 has offset 1).

The definition of A400451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400451.P2582858255634982296

`(row(n)+col(n))*2^(row(n)-1)`
-/

namespace A400451.P2582858255634982296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - 1 : ℤ)

end

end A400451.P2582858255634982296

namespace A400451

/-- `(row(n)+col(n))*2^(row(n)-1)` -/
def P2582858255634982296.Spec : Prop :=
  ∀ n, P2582858255634982296.a n = (A400451 (n + 1) : ℚ)

end A400451

/-! ## A400451.P14644326914967403529

`(A007664(n+1)-1)/2`
-/

namespace A400451.P14644326914967403529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007664 (n + 1) - 1 : ℚ) / 2

end

end A400451.P14644326914967403529

namespace A400451

/-- `(A007664(n+1)-1)/2` -/
def P14644326914967403529.Spec : Prop :=
  ∀ n, P14644326914967403529.a n = (A400451 (n + 1) : ℚ)

end A400451

/-! ## A400451.P13155712066239824629

`A059268(n)*A062111(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A400451

/-- `A059268(n)*A062111(n)` -/
def P13155712066239824629.Spec : Prop :=
  ∀ n, P13155712066239824629.a n = A400451 (n + 1)

theorem P13155712066239824629.correct : P13155712066239824629.Spec := by
  intro n
  simp only [A400451, Nat.add_sub_cancel]

end A400451

/-! ## A400451.P6340621511152822963

`A004524(A007664(n+1))`
-/

namespace A400451.P6340621511152822963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A007664 (n + 1)).toNat

end

end A400451.P6340621511152822963

namespace A400451

/-- `A004524(A007664(n+1))` -/
def P6340621511152822963.Spec : Prop :=
  ∀ n, P6340621511152822963.a n = A400451 (n + 1)

end A400451

/-! ## A400451.P3946732572925274047

`eq[A088864(n+1), A372825(n)]`
-/

namespace A400451.P3946732572925274047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400451.P3946732572925274047

namespace A400451

/-- `eq[A088864(n+1), A372825(n)]` -/
def P3946732572925274047.Spec : Prop :=
  ∀ n, (P3946732572925274047.a n : ℤ) = A400451 (n + 1)

end A400451

/-!
# A400452: The number of divisors d of n such that gcd(d, n/d) is a prime power (A246655).

The programs for A400452, the canonical program `A400452.P2876507164572676616` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400452 has offset 1).

The definition of A400452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400452.P2876507164572676616

`A007875(n+1)*A046660(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A400452

/-- `A007875(n+1)*A046660(n+1)` -/
def P2876507164572676616.Spec : Prop :=
  ∀ n, P2876507164572676616.a n = A400452 (n + 1)

theorem P2876507164572676616.correct : P2876507164572676616.Spec := by
  intro n
  simp only [A400452, Nat.add_sub_cancel]

end A400452

/-! ## A400452.P11548963664723185775

`∑{d}[n+1, A359466(#)]`
-/

namespace A400452.P11548963664723185775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359466 d

end

end A400452.P11548963664723185775

namespace A400452

/-- `∑{d}[n+1, A359466(#)]` -/
def P11548963664723185775.Spec : Prop :=
  ∀ n, P11548963664723185775.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P9571925060681057152

`∑{d}[n+1, A008966(#)*A362412((n+1)/#)]`
-/

namespace A400452.P9571925060681057152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A362412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400452.P9571925060681057152

namespace A400452

/-- `∑{d}[n+1, A008966(#)*A362412((n+1)/#)]` -/
def P9571925060681057152.Spec : Prop :=
  ∀ n, P9571925060681057152.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P13026279774476370313

`A112778(A316978(n+1))`
-/

namespace A400452.P13026279774476370313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (A316978 (n + 1)).toNat

end

end A400452.P13026279774476370313

namespace A400452

/-- `A112778(A316978(n+1))` -/
def P13026279774476370313.Spec : Prop :=
  ∀ n, P13026279774476370313.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P16429481049222607687

`A048105(A094548(n+1))`
-/

namespace A400452.P16429481049222607687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A094548 (n + 1)).toNat

end

end A400452.P16429481049222607687

namespace A400452

/-- `A048105(A094548(n+1))` -/
def P16429481049222607687.Spec : Prop :=
  ∀ n, P16429481049222607687.a n = A400452 (n + 1)

end A400452

/-! ## A400452.P8982233176430768006

`and(A048105(n+1), A375744(n+1))`
-/

namespace A400452.P8982233176430768006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048105 (n + 1)) (A375744 (n + 1))

end

end A400452.P8982233176430768006

namespace A400452

/-- `and(A048105(n+1), A375744(n+1))` -/
def P8982233176430768006.Spec : Prop :=
  ∀ n, P8982233176430768006.a n = A400452 (n + 1)

end A400452

/-!
# A400471: Write the positive squares 1, 4, 9, 16, ... in base 2 and juxtapose.

The programs for A400471, there is no canonical definition to state claims against.
-/

/-! ## A400471.P4001986790415954387

`A119498(A278181(n))`
-/

namespace A400471.P4001986790415954387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119498 (A278181 n).toNat

end

end A400471.P4001986790415954387

/-! ## A400471.P9647046207890741712

`A059620(A067951(n))`
-/

namespace A400471.P9647046207890741712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 (A067951 n).toNat

end

end A400471.P9647046207890741712

/-! ## A400471.P10278533252983236880

`A266837(A321417(n))`
-/

namespace A400471.P10278533252983236880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266837 (A321417 n).toNat

end

end A400471.P10278533252983236880

/-! ## A400471.P1545552502158562046

`A104037(A223549(n+1))`
-/

namespace A400471.P1545552502158562046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104037 (A223549 (n + 1)).toNat

end

end A400471.P1545552502158562046

/-! ## A400471.P6813671870772012091

`A288220(A057344(n+1))`
-/

namespace A400471.P6813671870772012091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (A057344 (n + 1)).toNat

end

end A400471.P6813671870772012091

/-!
# A400478: a(1)=1, a(2)=2; thereafter a(n) = (a(n-1)-a(n-2))*sum of digits(a(n-1)+a(n-2)).

The programs for A400478, the canonical program `A400478.P8710240923367081991` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400478 has offset 1).

The definition of A400478 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400478.P8710240923367081991

`(a(n-1)-a(n-2))*A007953(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400478

/-- `(a(n-1)-a(n-2))*A007953(a(n-1)+a(n-2))` -/
def P8710240923367081991.Spec : Prop :=
  ∀ n, P8710240923367081991.a n = A400478 (n + 1)

theorem P8710240923367081991.correct : P8710240923367081991.Spec := by
  intro n
  simp only [A400478, Nat.add_sub_cancel]

end A400478

/-!
# A400485: a(1) = 1; for n > 1: if a(n-1) + n is odd, a(n) = a(n-1) + n else a(n) = (a(n-1) + n)/2.

The programs for A400485, the canonical program `A400485.P3529086219494941568` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400485 has offset 1).

The definition of A400485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400485.P3081860375925913920

`lcm(2, a(n-1)+n+1)/2` with `a(0)=1`
-/

namespace A400485.P3081860375925913920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 2 (SequenceMachineLib.roundAway (a (n - 1) + (n + 1 : ℚ))) : ℚ) / 2

end

end A400485.P3081860375925913920

namespace A400485

/-- `lcm(2, a(n-1)+n+1)/2` -/
def P3081860375925913920.Spec : Prop :=
  ∀ n, P3081860375925913920.a n = (A400485 (n + 1) : ℚ)

end A400485

/-! ## A400485.P3529086219494941568

`n+A135287(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400485

/-- `n+A135287(n)` -/
def P3529086219494941568.Spec : Prop :=
  ∀ n, P3529086219494941568.a n = A400485 (n + 1)

theorem P3529086219494941568.correct : P3529086219494941568.Spec := by
  intro n
  simp only [A400485, Nat.add_sub_cancel]

end A400485

/-! ## A400485.P10707087048082878328

`A135287(n)-A001489(n)`
-/

namespace A400485.P10707087048082878328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135287 n - A001489 n

end

end A400485.P10707087048082878328

namespace A400485

/-- `A135287(n)-A001489(n)` -/
def P10707087048082878328.Spec : Prop :=
  ∀ n, P10707087048082878328.a n = A400485 (n + 1)

theorem P10707087048082878328.correct : P10707087048082878328.Spec := by
  intro n
  simp only [A400485, Nat.add_sub_cancel, A400485.P10707087048082878328.a, A400485.P3529086219494941568.a, A001489, A001489.P15233530513763566776.a, A135287, A135287.P6099636221413021975.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A400485

/-! ## A400485.P17164365882713101813

`A138037(n+2)-(n+2)`
-/

namespace A400485.P17164365882713101813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138037 (n + 2) - (n + 2 : ℤ)

end

end A400485.P17164365882713101813

namespace A400485

/-- `A138037(n+2)-(n+2)` -/
def P17164365882713101813.Spec : Prop :=
  ∀ n, P17164365882713101813.a n = A400485 (n + 1)

end A400485

/-! ## A400485.P8797501316226481709

`A135287(n)-A001057(2*n)`
-/

namespace A400485.P8797501316226481709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135287 n - A001057 (2 * n)

end

end A400485.P8797501316226481709

namespace A400485

/-- `A135287(n)-A001057(2*n)` -/
def P8797501316226481709.Spec : Prop :=
  ∀ n, P8797501316226481709.a n = A400485 (n + 1)

end A400485

/-! ## A400485.P7699820395456993894

`A145051(a(n-1)+n)` with `a(0)=1`
-/

namespace A400485.P7699820395456993894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145051 (a (n - 1) + (n : ℤ)).toNat

end

end A400485.P7699820395456993894

namespace A400485

/-- `A145051(a(n-1)+n)` -/
def P7699820395456993894.Spec : Prop :=
  ∀ n, P7699820395456993894.a n = A400485 (n + 1)

end A400485

/-! ## A400485.P17496866497854919245

`A026741(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A400485.P17496866497854919245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A400485.P17496866497854919245

namespace A400485

/-- `A026741(a(n-1)+n+1)` -/
def P17496866497854919245.Spec : Prop :=
  ∀ n, P17496866497854919245.a n = A400485 (n + 1)

end A400485

/-! ## A400485.P13106004548528238004

`A026741(A138037(n+1))`
-/

namespace A400485.P13106004548528238004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A138037 (n + 1)).toNat

end

end A400485.P13106004548528238004

namespace A400485

/-- `A026741(A138037(n+1))` -/
def P13106004548528238004.Spec : Prop :=
  ∀ n, P13106004548528238004.a n = A400485 (n + 1)

end A400485

/-!
# A400498: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x^5))^2.

The programs for A400498, there is no canonical definition to state claims against.
-/

/-! ## A400498.P17843376541026982013

`A173532(A355311(2*n+1))+n+1`
-/

namespace A400498.P17843376541026982013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173532 (A355311 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A400498.P17843376541026982013

