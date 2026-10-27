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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A103300: Number of perfect rulers with length n.

The programs for A103300, there is no canonical definition to state claims against.
-/

/-! ## A103300.P7091283973411194594

`A103294(A103298(n)+∑[n])`
-/

namespace A103300.P7091283973411194594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103294 (A103298 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A103300.P7091283973411194594

/-! ## A103300.P14937535585746495510

`A103294(∑[n]+(A046693(n)+n)%(n+1))`
-/

namespace A103300.P14937535585746495510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103294 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A046693 n + (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A103300.P14937535585746495510

/-!
# A103301: Number of perfect rulers with n segments (n>=0).

The programs for A103301, there is no canonical definition to state claims against.
-/

/-! ## A103301.P2504784268058362892

`A002487(A064036(n)-A029837(n+1))`
-/

namespace A103301.P2504784268058362892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A064036 n - A029837 (n + 1)).toNat

end

end A103301.P2504784268058362892

/-!
# A103304: Reduced numerators of the 2n-th raw moment of the distance between two independent uniformly distributed points in the unit square.

The programs for A103304, there is no canonical definition to state claims against.
-/

/-! ## A103304.P10774981831305431712

`A343048(3*n+1)+A324351(A007225(n+8))`
-/

namespace A103304.P10774981831305431712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343048 (3 * n + 1) + A324351 (A007225 (n + 8)).toNat

end

end A103304.P10774981831305431712

/-!
# A103306: Triangle read by rows: T(n,k) = number of k-subsets of the n-th roots of 1 that add to zero (0 <= k <= n).

The programs for A103306, there is no canonical definition to state claims against.
-/

/-! ## A103306.P4136244897604517735

`A050870(n)+A216452(n+1)%2`
-/

namespace A103306.P4136244897604517735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n + Int.tmod (A216452 (n + 1)) 2

end

end A103306.P4136244897604517735

/-! ## A103306.P8858827144301708123

`A080339(A001157(n+1))+A050870(n)`
-/

namespace A103306.P8858827144301708123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A001157 (n + 1)).toNat + A050870 n

end

end A103306.P8858827144301708123

/-! ## A103306.P4407050839572856163

`A050870(n)+A019590(A085736(n+1))`
-/

namespace A103306.P4407050839572856163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n + A019590 (A085736 (n + 1)).toNat

end

end A103306.P4407050839572856163

/-! ## A103306.P10256655805600571014

`A050870(n)+A036987(A216452(n+1))`
-/

namespace A103306.P10256655805600571014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n + A036987 (A216452 (n + 1)).toNat

end

end A103306.P10256655805600571014

/-! ## A103306.P14073925455281363858

`A050870(n)+A019590(A058212(3*n))`
-/

namespace A103306.P14073925455281363858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n + A019590 (A058212 (3 * n)).toNat

end

end A103306.P14073925455281363858

/-! ## A103306.P9141684410929678761

`A050870(n)+and(A216452(n+1), A285384(n+1))`
-/

namespace A103306.P9141684410929678761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050870 n + Int.land (A216452 (n + 1)) (A285384 (n + 1))

end

end A103306.P9141684410929678761

/-! ## A103306.P13270658611008039935

`(A050870(n)^A284620(A216452(n+1)))^A106405(n+1)!`
-/

namespace A103306.P13270658611008039935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A050870 n : ℚ) ^ (A284620 (A216452 (n + 1)).toNat : ℤ)) ^ Nat.factorial (A106405 (n + 1)).toNat

end

end A103306.P13270658611008039935

/-! ## A103306.P15252074327838775591

`A216280(A001973(n))+A050870(n)`
-/

namespace A103306.P15252074327838775591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216280 (A001973 n).toNat + A050870 n

end

end A103306.P15252074327838775591

/-! ## A103306.P2434488682711921837

`or(A012245(A342766(n+1)), A050870(n))`
-/

namespace A103306.P2434488682711921837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012245 (A342766 (n + 1)).toNat) (A050870 n)

end

end A103306.P2434488682711921837

/-!
# A103309: Smallest prime primitive root of n that is less than n, or 0 if none exists.

The programs for A103309, there is no canonical definition to state claims against.
-/

/-! ## A103309.P6906266449065518773

`A046145(n)%A036372(n)²`
-/

namespace A103309.P6906266449065518773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046145 n) (A036372 n ^ 2)

end

end A103309.P6906266449065518773

/-! ## A103309.P8129891604478371050

`∑{p}[A046145(n), #%A258956(n+1)]`
-/

namespace A103309.P8129891604478371050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.tmod (p : ℤ) (A258956 (n + 1))

end

end A103309.P8129891604478371050

/-! ## A103309.P1399231691043543946

`A046145(n-A010051(A133214(n)))`
-/

namespace A103309.P1399231691043543946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 ((n : ℤ) - A010051 (A133214 n).toNat).toNat

end

end A103309.P1399231691043543946

/-! ## A103309.P3731733246459155414

`A046145(n-A028240(A292745(n)))`
-/

namespace A103309.P3731733246459155414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 ((n : ℤ) - A028240 (A292745 n).toNat).toNat

end

end A103309.P3731733246459155414

/-! ## A103309.P6697954274229505911

`A046145(n)%A374761(n)`
-/

namespace A103309.P6697954274229505911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046145 n) (A374761 n)

end

end A103309.P6697954274229505911

/-!
# A103310: Largest prime primitive root of n that is less than n, or 0 if none exists.

The programs for A103310, there is no canonical definition to state claims against.
-/

/-! ## A103310.P15803719361962853913

`A046146(n-A010051(A036882(n)))`
-/

namespace A103310.P15803719361962853913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 ((n : ℤ) - A010051 (A036882 n).toNat).toNat

end

end A103310.P15803719361962853913

/-! ## A103310.P9193830857295422202

`A046146(n)-A135461(A036882(n))`
-/

namespace A103310.P9193830857295422202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n - A135461 (A036882 n).toNat

end

end A103310.P9193830857295422202

/-!
# A103311: A transform of the Fibonacci numbers.

The programs for A103311, the canonical program `A103311.P18129888847641695497` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103311 has offset 0).

The definition of A103311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103311.P18129888847641695497

`3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103311

/-- `3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` -/
def P18129888847641695497.Spec : Prop :=
  ∀ n, P18129888847641695497.a n = A103311 n

theorem P18129888847641695497.correct : P18129888847641695497.Spec := by
  intro n
  simp only [A103311]

end A103311

/-! ## A103311.P335274982191664608

`ogf((x-2x^2+x^3)/(1-3x+4x^2-2x^3+x^4))`
-/

namespace A103311.P335274982191664608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1] [1, -3, 4, -2, 1] n

end

end A103311.P335274982191664608

namespace A103311

/-- `ogf((x-2x^2+x^3)/(1-3x+4x^2-2x^3+x^4))` -/
def P335274982191664608.Spec : Prop :=
  ∀ n, P335274982191664608.a n = A103311 n

end A103311

/-! ## A103311.P9718037870038257445

`Δ[Δ[A138112(n)]]`
-/

namespace A103311.P9718037870038257445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103311.P9718037870038257445

namespace A103311

/-- `Δ[Δ[A138112(n)]]` -/
def P9718037870038257445.Spec : Prop :=
  ∀ n, P9718037870038257445.a n = A103311 n

end A103311

/-! ## A103311.P10556362312175108810

`Δ[A100334(A004273(n)-n)]`
-/

namespace A103311.P10556362312175108810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103311.P10556362312175108810

namespace A103311

/-- `Δ[A100334(A004273(n)-n)]` -/
def P10556362312175108810.Spec : Prop :=
  ∀ n, P10556362312175108810.a n = A103311 n

end A103311

/-! ## A103311.P2246190043305052297

`2*A100334(n+1)-A138003(n+1)`
-/

namespace A103311.P2246190043305052297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100334 (n + 1) - A138003 (n + 1)

end

end A103311.P2246190043305052297

namespace A103311

/-- `2*A100334(n+1)-A138003(n+1)` -/
def P2246190043305052297.Spec : Prop :=
  ∀ n, P2246190043305052297.a n = A103311 n

end A103311

/-! ## A103311.P10287529925981253314

`A100334(n)-A100334(A004273(n)-n)`
-/

namespace A103311.P10287529925981253314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n - A100334 (A004273 n - (n : ℤ)).toNat

end

end A103311.P10287529925981253314

namespace A103311

/-- `A100334(n)-A100334(A004273(n)-n)` -/
def P10287529925981253314.Spec : Prop :=
  ∀ n, P10287529925981253314.a n = A103311 n

end A103311

/-! ## A103311.P3907423716240118561

`A100334(n)+A138112(n)-A138112(n+1)`
-/

namespace A103311.P3907423716240118561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n + (A138112 n - A138112 (n + 1))

end

end A103311.P3907423716240118561

namespace A103311

/-- `A100334(n)+A138112(n)-A138112(n+1)` -/
def P3907423716240118561.Spec : Prop :=
  ∀ n, P3907423716240118561.a n = A103311 n

end A103311

/-! ## A103311.P14164295313238749977

`A100334(n+1)-A105371(n)`
-/

namespace A103311.P14164295313238749977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 (n + 1) - A105371 n

end

end A103311.P14164295313238749977

namespace A103311

/-- `A100334(n+1)-A105371(n)` -/
def P14164295313238749977.Spec : Prop :=
  ∀ n, P14164295313238749977.a n = A103311 n

end A103311

/-! ## A103311.P15469971562773383245

`A138003(n+1)-2*A105371(n)`
-/

namespace A103311.P15469971562773383245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138003 (n + 1) - 2 * A105371 n

end

end A103311.P15469971562773383245

namespace A103311

/-- `A138003(n+1)-2*A105371(n)` -/
def P15469971562773383245.Spec : Prop :=
  ∀ n, P15469971562773383245.a n = A103311 n

end A103311

/-! ## A103311.P1968649514068440285

`Δ[A105371(n)-Δ[A100334(n)]]`
-/

namespace A103311.P1968649514068440285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103311.P1968649514068440285

namespace A103311

/-- `Δ[A105371(n)-Δ[A100334(n)]]` -/
def P1968649514068440285.Spec : Prop :=
  ∀ n, P1968649514068440285.a n = A103311 n

end A103311

/-! ## A103311.P8373996116354652352

`A133476(n)-A139714(n)`
-/

namespace A103311.P8373996116354652352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - A139714 n

end

end A103311.P8373996116354652352

namespace A103311

/-- `A133476(n)-A139714(n)` -/
def P8373996116354652352.Spec : Prop :=
  ∀ n, P8373996116354652352.a n = A103311 n

end A103311

/-! ## A103311.P10864408426500606047

`A133476(n)-Δ[A139748(n)]`
-/

namespace A103311.P10864408426500606047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - (f1 (n + 1) - f1 n)

end

end A103311.P10864408426500606047

namespace A103311

/-- `A133476(n)-Δ[A139748(n)]` -/
def P10864408426500606047.Spec : Prop :=
  ∀ n, P10864408426500606047.a n = A103311 n

end A103311

/-! ## A103311.P12240598303527886015

`A139714(n+1)-2*A139714(n)`
-/

namespace A103311.P12240598303527886015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (n + 1) - 2 * A139714 n

end

end A103311.P12240598303527886015

namespace A103311

/-- `A139714(n+1)-2*A139714(n)` -/
def P12240598303527886015.Spec : Prop :=
  ∀ n, P12240598303527886015.a n = A103311 n

end A103311

/-! ## A103311.P4937601936551725971

`A100334(n)-A100334(log2(A011782(n)))`
-/

namespace A103311.P4937601936551725971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n - A100334 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A103311.P4937601936551725971

namespace A103311

/-- `A100334(n)-A100334(log2(A011782(n)))` -/
def P4937601936551725971.Spec : Prop :=
  ∀ n, P4937601936551725971.a n = A103311 n

end A103311

/-! ## A103311.P14333491651648698486

`A100334(n)+A139748(n)-Δ[A139748(n)]`
-/

namespace A103311.P14333491651648698486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n + (A139748 n - (f1 (n + 1) - f1 n))

end

end A103311.P14333491651648698486

namespace A103311

/-- `A100334(n)+A139748(n)-Δ[A139748(n)]` -/
def P14333491651648698486.Spec : Prop :=
  ∀ n, P14333491651648698486.a n = A103311 n

end A103311

/-! ## A103311.P16162624941634079133

`A133476(n)+A139748(n)-A139748(n+1)`
-/

namespace A103311.P16162624941634079133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n + (A139748 n - A139748 (n + 1))

end

end A103311.P16162624941634079133

namespace A103311

/-- `A133476(n)+A139748(n)-A139748(n+1)` -/
def P16162624941634079133.Spec : Prop :=
  ∀ n, P16162624941634079133.a n = A103311 n

end A103311

/-! ## A103311.P18413159232755492672

`Δ[A100334(log2(A011782(n)))]`
-/

namespace A103311.P18413159232755492672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103311.P18413159232755492672

namespace A103311

/-- `Δ[A100334(log2(A011782(n)))]` -/
def P18413159232755492672.Spec : Prop :=
  ∀ n, P18413159232755492672.a n = A103311 n

end A103311

/-! ## A103311.P6662411569727209498

`A133476(n)-Δ[Δ[A139761(n)]]`
-/

namespace A103311.P6662411569727209498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - (f1 (n + 1) - f1 n)

end

end A103311.P6662411569727209498

namespace A103311

/-- `A133476(n)-Δ[Δ[A139761(n)]]` -/
def P6662411569727209498.Spec : Prop :=
  ∀ n, P6662411569727209498.a n = A103311 n

end A103311

/-! ## A103311.P12165973158462855737

`Δ[Δ[A139748(n)]]-A139714(n)`
-/

namespace A103311.P12165973158462855737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A139714 n

end

end A103311.P12165973158462855737

namespace A103311

/-- `Δ[Δ[A139748(n)]]-A139714(n)` -/
def P12165973158462855737.Spec : Prop :=
  ∀ n, P12165973158462855737.a n = A103311 n

end A103311

/-! ## A103311.P16154088180237066777

`Δ[A139714(n)-Δ[A139761(n)]]`
-/

namespace A103311.P16154088180237066777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103311.P16154088180237066777

namespace A103311

/-- `Δ[A139714(n)-Δ[A139761(n)]]` -/
def P16154088180237066777.Spec : Prop :=
  ∀ n, P16154088180237066777.a n = A103311 n

end A103311

/-!
# A103312: A transform of the Jacobsthal numbers.

The programs for A103312, the canonical program `A103312.P13940513001492807218` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103312 has offset 0).

The definition of A103312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103312.P2691837703801792314

`ogf((x-2x^2+x^3)/(1-3x+3x^2))`
-/

namespace A103312.P2691837703801792314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1] [1, -3, 3] n

end

end A103312.P2691837703801792314

namespace A103312

/-- `ogf((x-2x^2+x^3)/(1-3x+3x^2))` -/
def P2691837703801792314.Spec : Prop :=
  ∀ n, P2691837703801792314.a n = A103312 n

end A103312

/-! ## A103312.P13940513001492807218

`3*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103312

/-- `3*(a(n-1)-a(n-2))` -/
def P13940513001492807218.Spec : Prop :=
  ∀ n, P13940513001492807218.a n = A103312 n

theorem P13940513001492807218.correct : P13940513001492807218.Spec := by
  intro n
  simp only [A103312]

end A103312

/-! ## A103312.P16825714134524658244

`Δ[A057682(n-n²%(n+1))]`
-/

namespace A103312.P16825714134524658244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n - n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103312.P16825714134524658244

namespace A103312

/-- `Δ[A057682(n-n²%(n+1))]` -/
def P16825714134524658244.Spec : Prop :=
  ∀ n, P16825714134524658244.a n = A103312 n

end A103312

/-! ## A103312.P2988991598062427638

`A057681(n-A057681(floor(4/(n+1))))`
-/

namespace A103312.P2988991598062427638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 ((n : ℤ) - A057681 ⌊4 / (n + 1 : ℚ)⌋.toNat).toNat

end

end A103312.P2988991598062427638

namespace A103312

/-- `A057681(n-A057681(floor(4/(n+1))))` -/
def P2988991598062427638.Spec : Prop :=
  ∀ n, P2988991598062427638.a n = A103312 n

end A103312

/-! ## A103312.P13215631874176402364

`A057682(n)-A057682(A004273(n)-n)`
-/

namespace A103312.P13215631874176402364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 n - A057682 (A004273 n - (n : ℤ)).toNat

end

end A103312.P13215631874176402364

namespace A103312

/-- `A057682(n)-A057682(A004273(n)-n)` -/
def P13215631874176402364.Spec : Prop :=
  ∀ n, P13215631874176402364.a n = A103312 n

end A103312

/-! ## A103312.P465800684547430265

`round(A057682(n+1)/3)`
-/

namespace A103312.P465800684547430265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057682 (n + 1) : ℚ) / 3)

end

end A103312.P465800684547430265

namespace A103312

/-- `round(A057682(n+1)/3)` -/
def P465800684547430265.Spec : Prop :=
  ∀ n, P465800684547430265.a n = A103312 n

end A103312

/-! ## A103312.P5783984489271168805

`floor((∑[A057681(n)]+1)/3)`
-/

namespace A103312.P5783984489271168805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 3⌋

end

end A103312.P5783984489271168805

namespace A103312

/-- `floor((∑[A057681(n)]+1)/3)` -/
def P5783984489271168805.Spec : Prop :=
  ∀ n, P5783984489271168805.a n = A103312 n

end A103312

/-! ## A103312.P1012426568283287124

`A307039(A055999(n)-n)-A000007(n)`
-/

namespace A103312.P1012426568283287124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A055999 n - (n : ℤ)).toNat - A000007 n

end

end A103312.P1012426568283287124

namespace A103312

/-- `A307039(A055999(n)-n)-A000007(n)` -/
def P1012426568283287124.Spec : Prop :=
  ∀ n, P1012426568283287124.a n = A103312 n

end A103312

/-!
# A103314: Total number of subsets of the n-th roots of 1 that add to zero.

The programs for A103314, there is no canonical definition to state claims against.
-/

/-! ## A103314.P2418192904557399710

`A070894(A233583(n+1))+1-C(n, n²)`
-/

namespace A103314.P2418192904557399710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070894 (A233583 (n + 1)).toNat + 1 - (Nat.choose n (n ^ 2) : ℤ)

end

end A103314.P2418192904557399710

/-! ## A103314.P7125425938329240850

`A157928(n)+A070894(A233583(n+1))`
-/

namespace A103314.P7125425938329240850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A070894 (A233583 (n + 1)).toNat

end

end A103314.P7125425938329240850

/-! ## A103314.P491812075654832505

`A179184(n+1)+A070894(A233583(n+1))`
-/

namespace A103314.P491812075654832505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (n + 1) + A070894 (A233583 (n + 1)).toNat

end

end A103314.P491812075654832505

/-! ## A103314.P12965403219526651408

`A070894(A233583(n+1))%A123344(n)+1`
-/

namespace A103314.P12965403219526651408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070894 (A233583 (n + 1)).toNat) (A123344 n) + 1

end

end A103314.P12965403219526651408

/-! ## A103314.P16626713832335332773

`A070894(A233583(n+1))+char[A004442(n+2)]`
-/

namespace A103314.P16626713832335332773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070894 (A233583 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103314.P16626713832335332773

/-! ## A103314.P5306730754779082375

`A070894(A233583(n+1))+char[A026137(n+2)]`
-/

namespace A103314.P5306730754779082375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070894 (A233583 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103314.P5306730754779082375

/-! ## A103314.P5960953586828441521

`A070894(A233583(n+1))+A057979(A000010(n+1))`
-/

namespace A103314.P5960953586828441521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070894 (A233583 (n + 1)).toNat + A057979 (A000010 (n + 1)).toNat

end

end A103314.P5960953586828441521

/-! ## A103314.P3915020480844411985

`A070894(A233583(n+1))+A008683(A074845(n+2))`
-/

namespace A103314.P3915020480844411985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070894 (A233583 (n + 1)).toNat + A008683 (A074845 (n + 2)).toNat

end

end A103314.P3915020480844411985

/-! ## A103314.P9769868828824909137

`A070894(A233583(n+1))+A068914(∑[n-1]+2)`
-/

namespace A103314.P9769868828824909137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070894 (A233583 (n + 1)).toNat + A068914 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A103314.P9769868828824909137

/-! ## A103314.P16334577766564522741

`A122218((n²+n)/2)+A070894(A233583(n+1))`
-/

namespace A103314.P16334577766564522741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122218 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + A070894 (A233583 (n + 1)).toNat

end

end A103314.P16334577766564522741

/-!
# A103315: Number of minimum dominating sets for the n X n knight graph.

The programs for A103315, there is no canonical definition to state claims against.
-/

/-! ## A103315.P1989751457728420445

`A054531(xor(6, A121112(n+1)))`
-/

namespace A103315.P1989751457728420445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (Int.xor 6 (A121112 (n + 1))).toNat

end

end A103315.P1989751457728420445

/-! ## A103315.P17529613679651984477

`A326874(A285774(n)+A000070(n))`
-/

namespace A103315.P17529613679651984477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326874 (A285774 n + A000070 n).toNat

end

end A103315.P17529613679651984477

/-!
# A103316: Riordan array (1/(1+2x), x/(1+x)).

The programs for A103316, the canonical program `A103316.P981190649024648973` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103316 has offset 0).

The definition of A103316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103316.P981190649024648973

`T(n-1,k-1)-3*T(n-1,k)+2*T(n-2,k-1)-2*T(n-2,k)` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103316

/-- `T(n-1,k-1)-3*T(n-1,k)+2*T(n-2,k-1)-2*T(n-2,k)` -/
def P981190649024648973.Spec : Prop :=
  ∀ n, P981190649024648973.a n = A103316 n

theorem P981190649024648973.correct : P981190649024648973.Spec := by
  intro n
  simp only [A103316]

end A103316

/-! ## A103316.P15141751217750397105

`A055248(n)*A097807(n)`
-/

namespace A103316.P15141751217750397105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A097807 n

end

end A103316.P15141751217750397105

namespace A103316

/-- `A055248(n)*A097807(n)` -/
def P15141751217750397105.Spec : Prop :=
  ∀ n, P15141751217750397105.a n = A103316 n

end A103316

/-! ## A103316.P624605952846561980

`A127718(n+1)/A140756(n+1)`
-/

namespace A103316.P624605952846561980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127718 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A103316.P624605952846561980

namespace A103316

/-- `A127718(n+1)/A140756(n+1)` -/
def P624605952846561980.Spec : Prop :=
  ∀ n, P624605952846561980.a n = (A103316 n : ℚ)

end A103316

/-! ## A103316.P1646107910530265852

`A033999(A025581(n))*A055248(n)`
-/

namespace A103316.P1646107910530265852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A055248 n

end

end A103316.P1646107910530265852

namespace A103316

/-- `A033999(A025581(n))*A055248(n)` -/
def P1646107910530265852.Spec : Prop :=
  ∀ n, P1646107910530265852.a n = A103316 n

end A103316

/-! ## A103316.P4943450810446740092

`A009531(A099375(n))*A055248(n)`
-/

namespace A103316.P4943450810446740092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A055248 n

end

end A103316.P4943450810446740092

namespace A103316

/-- `A009531(A099375(n))*A055248(n)` -/
def P4943450810446740092.Spec : Prop :=
  ∀ n, P4943450810446740092.a n = A103316 n

end A103316

/-! ## A103316.P17492277634942253249

`A055248(n)*A062157(A004736(n+1))`
-/

namespace A103316.P17492277634942253249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A062157 (A004736 (n + 1)).toNat

end

end A103316.P17492277634942253249

namespace A103316

/-- `A055248(n)*A062157(A004736(n+1))` -/
def P17492277634942253249.Spec : Prop :=
  ∀ n, P17492277634942253249.a n = A103316 n

end A103316

/-! ## A103316.P8432008805227557892

`A033999(A108872(n+1))*A055248(n)`
-/

namespace A103316.P8432008805227557892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A108872 (n + 1)).toNat * A055248 n

end

end A103316.P8432008805227557892

namespace A103316

/-- `A033999(A108872(n+1))*A055248(n)` -/
def P8432008805227557892.Spec : Prop :=
  ∀ n, P8432008805227557892.a n = A103316 n

end A103316

/-! ## A103316.P5538030148862427133

`A007318(n)*A055248(n)/A130595(n)`
-/

namespace A103316.P5538030148862427133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n * A055248 n : ℚ) / (A130595 n : ℚ)

end

end A103316.P5538030148862427133

namespace A103316

/-- `A007318(n)*A055248(n)/A130595(n)` -/
def P5538030148862427133.Spec : Prop :=
  ∀ n, P5538030148862427133.a n = (A103316 n : ℚ)

end A103316

/-! ## A103316.P899130395515039811

`A033999(A004736(n+1)+1)*A055248(n)`
-/

namespace A103316.P899130395515039811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004736 (n + 1) + 1).toNat * A055248 n

end

end A103316.P899130395515039811

namespace A103316

/-- `A033999(A004736(n+1)+1)*A055248(n)` -/
def P899130395515039811.Spec : Prop :=
  ∀ n, P899130395515039811.a n = A103316 n

end A103316

/-! ## A103316.P3384152452001055742

`A055248(n)*A087960(A133280(n))`
-/

namespace A103316.P3384152452001055742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A087960 (A133280 n).toNat

end

end A103316.P3384152452001055742

namespace A103316

/-- `A055248(n)*A087960(A133280(n))` -/
def P3384152452001055742.Spec : Prop :=
  ∀ n, P3384152452001055742.a n = A103316 n

end A103316

/-! ## A103316.P11901705873789616045

`A055248(n)*A062157(A205128(n+1))`
-/

namespace A103316.P11901705873789616045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A062157 (A205128 (n + 1)).toNat

end

end A103316.P11901705873789616045

namespace A103316

/-- `A055248(n)*A062157(A205128(n+1))` -/
def P11901705873789616045.Spec : Prop :=
  ∀ n, P11901705873789616045.a n = A103316 n

end A103316

/-! ## A103316.P14472111666464752095

`A008836(A130321(n))*A055248(n)`
-/

namespace A103316.P14472111666464752095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A055248 n

end

end A103316.P14472111666464752095

namespace A103316

/-- `A008836(A130321(n))*A055248(n)` -/
def P14472111666464752095.Spec : Prop :=
  ∀ n, P14472111666464752095.a n = A103316 n

end A103316

/-! ## A103316.P1261171693759900707

`A055248(n)*A106400(A173787(n))`
-/

namespace A103316.P1261171693759900707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A106400 (A173787 n).toNat

end

end A103316.P1261171693759900707

namespace A103316

/-- `A055248(n)*A106400(A173787(n))` -/
def P1261171693759900707.Spec : Prop :=
  ∀ n, P1261171693759900707.a n = A103316 n

end A103316

/-! ## A103316.P10515689356689095691

`A004718(A130321(n))*A008949(A038722(n+1)-1)`
-/

namespace A103316.P10515689356689095691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A130321 n).toNat * A008949 (A038722 (n + 1) - 1).toNat

end

end A103316.P10515689356689095691

namespace A103316

/-- `A004718(A130321(n))*A008949(A038722(n+1)-1)` -/
def P10515689356689095691.Spec : Prop :=
  ∀ n, P10515689356689095691.a n = A103316 n

end A103316

/-!
# A103317: Primes p such that p! - 1 is also prime.

The programs for A103317, there is no canonical definition to state claims against.
-/

/-! ## A103317.P12646293034443886848

`p?[A002982(n+1)]`
-/

namespace A103317.P12646293034443886848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103317.P12646293034443886848

/-!
# A103318: Number of solutions i in range [0,n-1] to i == 0 mod 2^(n-i).

The programs for A103318, there is no canonical definition to state claims against.
-/

/-! ## A103318.P8681605074820722525

`dr(A104490(n+1))`
-/

namespace A103318.P8681605074820722525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A104490 (n + 1))

end

end A103318.P8681605074820722525

/-! ## A103318.P1486786576000859871

`dr(A105032(n+1))`
-/

namespace A103318.P1486786576000859871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A105032 (n + 1))

end

end A103318.P1486786576000859871

/-! ## A103318.P17986038960175924545

`A105553(n+1)+1`
-/

namespace A103318.P17986038960175924545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105553 (n + 1) + 1

end

end A103318.P17986038960175924545

/-! ## A103318.P11222364970886295719

`A000120(A104489(n+1))`
-/

namespace A103318.P11222364970886295719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A104489 (n + 1)).toNat

end

end A103318.P11222364970886295719

/-! ## A103318.P16994278898936791187

`A057334(A103528(n+1))`
-/

namespace A103318.P16994278898936791187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 (A103528 (n + 1)).toNat

end

end A103318.P16994278898936791187

/-! ## A103318.P10850723891971336738

`A063787(A103528(n+1)+1)`
-/

namespace A103318.P10850723891971336738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A103528 (n + 1) + 1).toNat

end

end A103318.P10850723891971336738

/-! ## A103318.P4941845289487080173

`A105561(A103528(n+1)+1)`
-/

namespace A103318.P4941845289487080173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105561 (A103528 (n + 1) + 1).toNat

end

end A103318.P4941845289487080173

/-! ## A103318.P17519583801400461325

`A294903(A103528(n+1)+1)`
-/

namespace A103318.P17519583801400461325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (A103528 (n + 1) + 1).toNat

end

end A103318.P17519583801400461325

/-! ## A103318.P11281008068726313179

`A277314(A103528(n+1)+4)`
-/

namespace A103318.P11281008068726313179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (A103528 (n + 1) + 4).toNat

end

end A103318.P11281008068726313179

/-! ## A103318.P15857339785738804766

`A025435(A103528(n+1)²)+1`
-/

namespace A103318.P15857339785738804766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A103528 (n + 1) ^ 2).toNat + 1

end

end A103318.P15857339785738804766

/-!
# A103319: 

The programs for A103319, there is no canonical definition to state claims against.
-/

/-! ## A103319.P13662909129849980581

`A093804(n+1)!+1`
-/

namespace A103319.P13662909129849980581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A093804 (n + 1)).toNat + 1

end

end A103319.P13662909129849980581

/-!
# A103320: Condensed Golomb sequence: digits according to Golomb's sequence, same digits concatenated.

The programs for A103320, there is no canonical definition to state claims against.
-/

/-! ## A103320.P3622416521745081390

`(n+1)*A131664(comp[comp[n²]²]+1)`
-/

namespace A103320.P3622416521745081390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A131664 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A103320.P3622416521745081390

/-! ## A103320.P17424765468088522847

`(n+1)*A002275((val(n+1, 2)+1)*(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A103320.P17424765468088522847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002275 ((SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)).toNat

end

end A103320.P17424765468088522847

/-! ## A103320.P17593993584175267523

`(n+1)*A267257(A125186(n))`
-/

namespace A103320.P17593993584175267523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267257 (A125186 n).toNat

end

end A103320.P17593993584175267523

/-! ## A103320.P15338244294135792285

`(n+1)*A000042(A001462(n+1))`
-/

namespace A103320.P15338244294135792285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000042 (A001462 (n + 1)).toNat

end

end A103320.P15338244294135792285

/-! ## A103320.P18335511493035954938

`(n+1)*A002275(A028825(n+1))`
-/

namespace A103320.P18335511493035954938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002275 (A028825 (n + 1)).toNat

end

end A103320.P18335511493035954938

/-!
# A103321: Expansion of 1 / ((1-x-x^2-x^3)*(1-x-x^3)).

The programs for A103321, the canonical program `A103321.P2359421189284921406` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103321 has offset 0).

The definition of A103321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^3+2x^4+x^5+x^6))` (program `A103321.P2359421189284921406`, by `A103321.P2359421189284921406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103321.P2359421189284921406

`ogf(1/(1-2x-x^3+2x^4+x^5+x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103321

/-- `ogf(1/(1-2x-x^3+2x^4+x^5+x^6))` -/
def P2359421189284921406.Spec : Prop :=
  ∀ n, P2359421189284921406.a n = A103321 n

theorem P2359421189284921406.correct : P2359421189284921406.Spec := by
  intro n
  simp only [A103321]

end A103321

/-! ## A103321.P12337198380349013447

`2*a(n-1)+a(n-3)-2*a(n-4)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=18, a(5)=35`
-/

namespace A103321.P12337198380349013447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 9, 18, 35] fun n a =>
  2 * a (n - 1) + a (n - 3) - 2 * a (n - 4) - a (n - 5) - a (n - 6)

end

end A103321.P12337198380349013447

namespace A103321

/-- `2*a(n-1)+a(n-3)-2*a(n-4)-a(n-5)-a(n-6)` -/
def P12337198380349013447.Spec : Prop :=
  ∀ n, P12337198380349013447.a n = A103321 n

end A103321

/-! ## A103321.P7156355037862696817

`A000073(n+4)-A000930(n+2)`
-/

namespace A103321.P7156355037862696817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4) - A000930 (n + 2)

end

end A103321.P7156355037862696817

namespace A103321

/-- `A000073(n+4)-A000930(n+2)` -/
def P7156355037862696817.Spec : Prop :=
  ∀ n, P7156355037862696817.a n = A103321 n

end A103321

/-! ## A103321.P13348627172991322827

`A000073(n+4)-record[A078012(n)]`
-/

namespace A103321.P13348627172991322827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103321.P13348627172991322827

namespace A103321

/-- `A000073(n+4)-record[A078012(n)]` -/
def P13348627172991322827.Spec : Prop :=
  ∀ n, P13348627172991322827.a n = A103321 n

end A103321

/-! ## A103321.P1793852889706769015

`A000073(n+4)-A068921(n+1)`
-/

namespace A103321.P1793852889706769015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4) - A068921 (n + 1)

end

end A103321.P1793852889706769015

namespace A103321

/-- `A000073(n+4)-A068921(n+1)` -/
def P1793852889706769015.Spec : Prop :=
  ∀ n, P1793852889706769015.a n = A103321 n

end A103321

/-! ## A103321.P15216641797432077392

`A000073(n+4)-A078012(n+5)`
-/

namespace A103321.P15216641797432077392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4) - A078012 (n + 5)

end

end A103321.P15216641797432077392

namespace A103321

/-- `A000073(n+4)-A078012(n+5)` -/
def P15216641797432077392.Spec : Prop :=
  ∀ n, P15216641797432077392.a n = A103321 n

end A103321

/-! ## A103321.P7846407182947215530

`A000073(n+4)-A135851(n+7)`
-/

namespace A103321.P7846407182947215530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4) - A135851 (n + 7)

end

end A103321.P7846407182947215530

namespace A103321

/-- `A000073(n+4)-A135851(n+7)` -/
def P7846407182947215530.Spec : Prop :=
  ∀ n, P7846407182947215530.a n = A103321 n

end A103321

/-! ## A103321.P14268919143228071358

`A000073(n+4)-abs(A199804(n+2))`
-/

namespace A103321.P14268919143228071358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4) - |A199804 (n + 2)|

end

end A103321.P14268919143228071358

namespace A103321

/-- `A000073(n+4)-abs(A199804(n+2))` -/
def P14268919143228071358.Spec : Prop :=
  ∀ n, P14268919143228071358.a n = A103321 n

end A103321

/-! ## A103321.P12630692609506565062

`A000073(n+4)-A108104(2*(n+2))`
-/

namespace A103321.P12630692609506565062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4) - A108104 (2 * (n + 2))

end

end A103321.P12630692609506565062

namespace A103321

/-- `A000073(n+4)-A108104(2*(n+2))` -/
def P12630692609506565062.Spec : Prop :=
  ∀ n, P12630692609506565062.a n = A103321 n

end A103321

/-! ## A103321.P7879104131129134137

`Δ[A008937(n+2)]-A000930(n+2)`
-/

namespace A103321.P7879104131129134137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000930 (n + 2)

end

end A103321.P7879104131129134137

namespace A103321

/-- `Δ[A008937(n+2)]-A000930(n+2)` -/
def P7879104131129134137.Spec : Prop :=
  ∀ n, P7879104131129134137.a n = A103321 n

end A103321

/-!
# A103322: Expansion of 1 / ((1-x-x^2-x^3)*(1-x^2-x^3)).

The programs for A103322, the canonical program `A103322.P5802757763585347920` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103322 has offset 0).

The definition of A103322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2-x^3+2x^4+2x^5+x^6))` (program `A103322.P5802757763585347920`, by `A103322.P5802757763585347920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103322.P5802757763585347920

`ogf(1/(1-x-2x^2-x^3+2x^4+2x^5+x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103322

/-- `ogf(1/(1-x-2x^2-x^3+2x^4+2x^5+x^6))` -/
def P5802757763585347920.Spec : Prop :=
  ∀ n, P5802757763585347920.a n = A103322 n

theorem P5802757763585347920.correct : P5802757763585347920.Spec := by
  intro n
  simp only [A103322]

end A103322

/-! ## A103322.P2551417729250779443

`A000073(n+3)-A182097(n+1)`
-/

namespace A103322.P2551417729250779443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - A182097 (n + 1)

end

end A103322.P2551417729250779443

namespace A103322

/-- `A000073(n+3)-A182097(n+1)` -/
def P2551417729250779443.Spec : Prop :=
  ∀ n, P2551417729250779443.a n = A103322 n

end A103322

/-! ## A103322.P15584910728478739387

`A000073(n+3)-A000931(n+4)`
-/

namespace A103322.P15584910728478739387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - A000931 (n + 4)

end

end A103322.P15584910728478739387

namespace A103322

/-- `A000073(n+3)-A000931(n+4)` -/
def P15584910728478739387.Spec : Prop :=
  ∀ n, P15584910728478739387.a n = A103322 n

end A103322

/-! ## A103322.P10094586509123096600

`A000073(n+3)-A078027(n+6)`
-/

namespace A103322.P10094586509123096600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - A078027 (n + 6)

end

end A103322.P10094586509123096600

namespace A103322

/-- `A000073(n+3)-A078027(n+6)` -/
def P10094586509123096600.Spec : Prop :=
  ∀ n, P10094586509123096600.a n = A103322 n

end A103322

/-! ## A103322.P5274900741675625516

`A000073(n+3)-Δ[A023434(n+1)]`
-/

namespace A103322.P5274900741675625516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - (f1 (n + 1) - f1 n)

end

end A103322.P5274900741675625516

namespace A103322

/-- `A000073(n+3)-Δ[A023434(n+1)]` -/
def P5274900741675625516.Spec : Prop :=
  ∀ n, P5274900741675625516.a n = A103322 n

end A103322

/-! ## A103322.P12599671683941734550

`A000073(n+3)-Δ[A134816(n+4)]`
-/

namespace A103322.P12599671683941734550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - (f1 (n + 1) - f1 n)

end

end A103322.P12599671683941734550

namespace A103322

/-- `A000073(n+3)-Δ[A134816(n+4)]` -/
def P12599671683941734550.Spec : Prop :=
  ∀ n, P12599671683941734550.a n = A103322 n

end A103322

/-! ## A103322.P1920589106968961790

`A020720(n+2)+A000073(n+3)-A001608(n+9)`
-/

namespace A103322.P1920589106968961790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (n + 2) + (A000073 (n + 3) - A001608 (n + 9))

end

end A103322.P1920589106968961790

namespace A103322

/-- `A020720(n+2)+A000073(n+3)-A001608(n+9)` -/
def P1920589106968961790.Spec : Prop :=
  ∀ n, P1920589106968961790.a n = A103322 n

end A103322

/-! ## A103322.P10083039142638929283

`Δ[A008937(n+1)]-A000931(n+4)`
-/

namespace A103322.P10083039142638929283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000931 (n + 4)

end

end A103322.P10083039142638929283

namespace A103322

/-- `Δ[A008937(n+1)]-A000931(n+4)` -/
def P10083039142638929283.Spec : Prop :=
  ∀ n, P10083039142638929283.a n = A103322 n

end A103322

/-! ## A103322.P17826772340882758744

`A008937(n+2)-(A008937(n+1)+A000931(n+4))`
-/

namespace A103322.P17826772340882758744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 2) - (A008937 (n + 1) + A000931 (n + 4))

end

end A103322.P17826772340882758744

namespace A103322

/-- `A008937(n+2)-(A008937(n+1)+A000931(n+4))` -/
def P17826772340882758744.Spec : Prop :=
  ∀ n, P17826772340882758744.a n = A103322 n

end A103322

/-!
# A103323: Square array T(n,k) read by antidiagonals: powers of Fibonacci numbers.

The programs for A103323, the canonical program `A103323.P12373935096715272589` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103323 has offset 1).

The definition of A103323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103323.P12373935096715272589

`A000045(col(n)+1)^(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103323

/-- `A000045(col(n)+1)^(row(n)-col(n)+1)` -/
def P12373935096715272589.Spec : Prop :=
  ∀ n, P12373935096715272589.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P15634224267136485506

`A104763(n+1)^A004736(n+1)`
-/

namespace A103323.P15634224267136485506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104763 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A103323.P15634224267136485506

namespace A103323

/-- `A104763(n+1)^A004736(n+1)` -/
def P15634224267136485506.Spec : Prop :=
  ∀ n, P15634224267136485506.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P886356117829026341

`A000045(A002260(n+1))^A193592(n)`
-/

namespace A103323.P886356117829026341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A002260 (n + 1)).toNat : ℚ) ^ (A193592 n : ℤ)

end

end A103323.P886356117829026341

namespace A103323

/-- `A000045(A002260(n+1))^A193592(n)` -/
def P886356117829026341.Spec : Prop :=
  ∀ n, P886356117829026341.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P18006998852904873486

`A000045(A002260(n+1))^A004736(n+1)`
-/

namespace A103323.P18006998852904873486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A002260 (n + 1)).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A103323.P18006998852904873486

namespace A103323

/-- `A000045(A002260(n+1))^A004736(n+1)` -/
def P18006998852904873486.Spec : Prop :=
  ∀ n, P18006998852904873486.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P10357141885798997003

`A000045(A002260(n+1))^(A025581(n)+1)`
-/

namespace A103323.P10357141885798997003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A002260 (n + 1)).toNat : ℚ) ^ (A025581 n + 1 : ℤ)

end

end A103323.P10357141885798997003

namespace A103323

/-- `A000045(A002260(n+1))^(A025581(n)+1)` -/
def P10357141885798997003.Spec : Prop :=
  ∀ n, P10357141885798997003.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P12559365290944067769

`A000045(A057555(2*n+1))^A193592(n)`
-/

namespace A103323.P12559365290944067769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A057555 (2 * n + 1)).toNat : ℚ) ^ (A193592 n : ℤ)

end

end A103323.P12559365290944067769

namespace A103323

/-- `A000045(A057555(2*n+1))^A193592(n)` -/
def P12559365290944067769.Spec : Prop :=
  ∀ n, P12559365290944067769.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P10557464173305080591

`A212804(A002260(n+1)+1)^A004736(n+1)`
-/

namespace A103323.P10557464173305080591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A002260 (n + 1) + 1).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A103323.P10557464173305080591

namespace A103323

/-- `A212804(A002260(n+1)+1)^A004736(n+1)` -/
def P10557464173305080591.Spec : Prop :=
  ∀ n, P10557464173305080591.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P15412671886848360648

`A000045(A002260(n+1))^A057555(2*(n+1))`
-/

namespace A103323.P15412671886848360648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A002260 (n + 1)).toNat : ℚ) ^ (A057555 (2 * (n + 1)) : ℤ)

end

end A103323.P15412671886848360648

namespace A103323

/-- `A000045(A002260(n+1))^A057555(2*(n+1))` -/
def P15412671886848360648.Spec : Prop :=
  ∀ n, P15412671886848360648.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P3076062695014341709

`A000045(A057555(2*n+1))^A004736(n+1)`
-/

namespace A103323.P3076062695014341709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A057555 (2 * n + 1)).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A103323.P3076062695014341709

namespace A103323

/-- `A000045(A057555(2*n+1))^A004736(n+1)` -/
def P3076062695014341709.Spec : Prop :=
  ∀ n, P3076062695014341709.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P11370118903993321460

`A000045(A057555(2*n+1))^(A025581(n)+1)`
-/

namespace A103323.P11370118903993321460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A057555 (2 * n + 1)).toNat : ℚ) ^ (A025581 n + 1 : ℤ)

end

end A103323.P11370118903993321460

namespace A103323

/-- `A000045(A057555(2*n+1))^(A025581(n)+1)` -/
def P11370118903993321460.Spec : Prop :=
  ∀ n, P11370118903993321460.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P13659378819866972520

`A000045(A057555(2*n+1))^(log2(A130321(n))+1)`
-/

namespace A103323.P13659378819866972520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000045 (A057555 (2 * n + 1)).toNat : ℝ) ^ (Real.logb 2 (A130321 n : ℝ) + 1)

end

end A103323.P13659378819866972520

namespace A103323

/-- `A000045(A057555(2*n+1))^(log2(A130321(n))+1)` -/
def P13659378819866972520.Spec : Prop :=
  ∀ n, P13659378819866972520.a n = (A103323 (n + 1) : ℝ)

end A103323

/-! ## A103323.P7199804808254037332

`A000045(A002260(n+1))^A002260(A061579(n)+1)`
-/

namespace A103323.P7199804808254037332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A002260 (n + 1)).toNat : ℚ) ^ (A002260 (A061579 n + 1).toNat : ℤ)

end

end A103323.P7199804808254037332

namespace A103323

/-- `A000045(A002260(n+1))^A002260(A061579(n)+1)` -/
def P7199804808254037332.Spec : Prop :=
  ∀ n, P7199804808254037332.a n = (A103323 (n + 1) : ℚ)

end A103323

/-! ## A103323.P1654279454930764265

`A210341(A038722(n+1))`
-/

namespace A103323.P1654279454930764265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210341 (A038722 (n + 1)).toNat

end

end A103323.P1654279454930764265

namespace A103323

/-- `A210341(A038722(n+1))` -/
def P1654279454930764265.Spec : Prop :=
  ∀ n, P1654279454930764265.a n = A103323 (n + 1)

end A103323

/-! ## A103323.P1972731883149198870

`A210341(A061579(n)+1)`
-/

namespace A103323.P1972731883149198870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210341 (A061579 n + 1).toNat

end

end A103323.P1972731883149198870

namespace A103323

/-- `A210341(A061579(n)+1)` -/
def P1972731883149198870.Spec : Prop :=
  ∀ n, P1972731883149198870.a n = A103323 (n + 1)

end A103323

/-!
# A103324: Square array T(n,k) read by antidiagonals: powers of Lucas numbers.

The programs for A103324, the canonical program `A103324.P2283685973644763422` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103324 has offset 1).

The definition of A103324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103324.P2283685973644763422

`A000032(col(n))^(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103324

/-- `A000032(col(n))^(row(n)-col(n)+1)` -/
def P2283685973644763422.Spec : Prop :=
  ∀ n, P2283685973644763422.a n = (A103324 (n + 1) : ℚ)

end A103324

/-! ## A103324.P5022821400815751796

`A000032(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A103324.P5022821400815751796
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A103324.P5022821400815751796

namespace A103324

/-- `A000032(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-n)` -/
def P5022821400815751796.Spec : Prop :=
  ∀ n, P5022821400815751796.a n = (A103324 (n + 1) : ℚ)

end A103324

/-! ## A103324.P2851025948315039583

`A000032(A002262(n))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A103324.P2851025948315039583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A002262 n).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A103324.P2851025948315039583

namespace A103324

/-- `A000032(A002262(n))^(C(comp[∑[n]]-n, 2)-n)` -/
def P2851025948315039583.Spec : Prop :=
  ∀ n, P2851025948315039583.a n = (A103324 (n + 1) : ℚ)

end A103324

/-! ## A103324.P12185722065710567886

`A000032(n-C(∑[char[∑[n]]], 2))^A004736(n+1)`
-/

namespace A103324.P12185722065710567886
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A103324.P12185722065710567886

namespace A103324

/-- `A000032(n-C(∑[char[∑[n]]], 2))^A004736(n+1)` -/
def P12185722065710567886.Spec : Prop :=
  ∀ n, P12185722065710567886.a n = (A103324 (n + 1) : ℚ)

end A103324

/-! ## A103324.P14472766318191418171

`A000032(n-C(∑[char[∑[n]]], 2))^A200370(n+2)`
-/

namespace A103324.P14472766318191418171
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) ^ (A200370 (n + 2) : ℤ)

end

end A103324.P14472766318191418171

namespace A103324

/-- `A000032(n-C(∑[char[∑[n]]], 2))^A200370(n+2)` -/
def P14472766318191418171.Spec : Prop :=
  ∀ n, P14472766318191418171.a n = (A103324 (n + 1) : ℚ)

end A103324

/-! ## A103324.P3949902128810617602

`A000032(A002262(n))^A004736(n+1)`
-/

namespace A103324.P3949902128810617602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A002262 n).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A103324.P3949902128810617602

namespace A103324

/-- `A000032(A002262(n))^A004736(n+1)` -/
def P3949902128810617602.Spec : Prop :=
  ∀ n, P3949902128810617602.a n = (A103324 (n + 1) : ℚ)

end A103324

/-! ## A103324.P16860085868310650764

`A000032(A002262(n))^(A025581(n)+1)`
-/

namespace A103324.P16860085868310650764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A002262 n).toNat : ℚ) ^ (A025581 n + 1 : ℤ)

end

end A103324.P16860085868310650764

namespace A103324

/-- `A000032(A002262(n))^(A025581(n)+1)` -/
def P16860085868310650764.Spec : Prop :=
  ∀ n, P16860085868310650764.a n = (A103324 (n + 1) : ℚ)

end A103324

/-! ## A103324.P377853596712262344

`A000032(A163351(n))^A004736(n+1)`
-/

namespace A103324.P377853596712262344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A163351 n).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A103324.P377853596712262344

namespace A103324

/-- `A000032(A163351(n))^A004736(n+1)` -/
def P377853596712262344.Spec : Prop :=
  ∀ n, P377853596712262344.a n = (A103324 (n + 1) : ℚ)

end A103324

/-! ## A103324.P10373123568431530677

`A000032(A298486(n))^A004736(n+1)`
-/

namespace A103324.P10373123568431530677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A298486 n).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A103324.P10373123568431530677

namespace A103324

/-- `A000032(A298486(n))^A004736(n+1)` -/
def P10373123568431530677.Spec : Prop :=
  ∀ n, P10373123568431530677.a n = (A103324 (n + 1) : ℚ)

end A103324

/-! ## A103324.P10005380596310283471

`A000032(A002262(n))^sqrt(A055461(n+1))`
-/

namespace A103324.P10005380596310283471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000032 (A002262 n).toNat : ℝ) ^ (Real.sqrt (A055461 (n + 1) : ℝ))

end

end A103324.P10005380596310283471

namespace A103324

/-- `A000032(A002262(n))^sqrt(A055461(n+1))` -/
def P10005380596310283471.Spec : Prop :=
  ∀ n, P10005380596310283471.a n = (A103324 (n + 1) : ℝ)

end A103324

/-!
# A103325: Fifth powers of Lucas numbers.

The programs for A103325, the canonical program `A103325.P17883416061855842686` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103325 has offset 0).

The definition of A103325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103325.P17883416061855842686

`A000032(n)^5`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103325

/-- `A000032(n)^5` -/
def P17883416061855842686.Spec : Prop :=
  ∀ n, P17883416061855842686.a n = A103325 n

theorem P17883416061855842686.correct : P17883416061855842686.Spec := by
  intro n
  simp only [A103325]

end A103325

/-! ## A103325.P12976734833867503681

`A000032(n)*A099923(n)`
-/

namespace A103325.P12976734833867503681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A099923 n

end

end A103325.P12976734833867503681

namespace A103325

/-- `A000032(n)*A099923(n)` -/
def P12976734833867503681.Spec : Prop :=
  ∀ n, P12976734833867503681.a n = A103325 n

end A103325

/-! ## A103325.P9039336949503373727

`abs((floor((-ϕ)^n)+1)^5)`
-/

namespace A103325.P9039336949503373727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 5|

end

end A103325.P9039336949503373727

namespace A103325

/-- `abs((floor((-ϕ)^n)+1)^5)` -/
def P9039336949503373727.Spec : Prop :=
  ∀ n, P9039336949503373727.a n = A103325 n

end A103325

/-! ## A103325.P10170568634225292084

`Δ[a(n-2)+a(n-1)]^5` with `a(0)=1, a(1)=3`
-/

namespace A103325.P10170568634225292084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 5

end

end A103325.P10170568634225292084

namespace A103325

/-- `Δ[a(n-2)+a(n-1)]^5` -/
def P10170568634225292084.Spec : Prop :=
  ∀ n, P10170568634225292084.a n = A103325 n

end A103325

/-! ## A103325.P17271888025293447

`sqrt(A001254(n))^5`
-/

namespace A103325.P17271888025293447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001254 n : ℝ) ^ 5

end

end A103325.P17271888025293447

namespace A103325

/-- `sqrt(A001254(n))^5` -/
def P17271888025293447.Spec : Prop :=
  ∀ n, P17271888025293447.a n = (A103325 n : ℝ)

end A103325

/-! ## A103325.P9782787060623457875

`A059779(∑[n])^5`
-/

namespace A103325.P9782787060623457875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059779 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A103325.P9782787060623457875

namespace A103325

/-- `A059779(∑[n])^5` -/
def P9782787060623457875.Spec : Prop :=
  ∀ n, P9782787060623457875.a n = A103325 n

end A103325

/-! ## A103325.P11106146431072752099

`A123265(∑[n])^5`
-/

namespace A103325.P11106146431072752099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123265 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A103325.P11106146431072752099

namespace A103325

/-- `A123265(∑[n])^5` -/
def P11106146431072752099.Spec : Prop :=
  ∀ n, P11106146431072752099.a n = A103325 n

end A103325

/-! ## A103325.P11000522400747241802

`A132148(∑[n])^5`
-/

namespace A103325.P11000522400747241802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132148 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A103325.P11000522400747241802

namespace A103325

/-- `A132148(∑[n])^5` -/
def P11000522400747241802.Spec : Prop :=
  ∀ n, P11000522400747241802.a n = A103325 n

end A103325

/-! ## A103325.P3300113285075398958

`Δ[A001610(n)]^5`
-/

namespace A103325.P3300113285075398958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 5

end

end A103325.P3300113285075398958

namespace A103325

/-- `Δ[A001610(n)]^5` -/
def P3300113285075398958.Spec : Prop :=
  ∀ n, P3300113285075398958.a n = A103325 n

end A103325

/-! ## A103325.P17463452339291560134

`A329723(n+2)^5`
-/

namespace A103325.P17463452339291560134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2) ^ 5

end

end A103325.P17463452339291560134

namespace A103325

/-- `A329723(n+2)^5` -/
def P17463452339291560134.Spec : Prop :=
  ∀ n, P17463452339291560134.a n = A103325 n

end A103325

/-!
# A103326: a(n) = Fibonacci(5n)/Fibonacci(n).

The programs for A103326, the canonical program `A103326.P15150555984287749825` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103326 has offset 1).

The definition of A103326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103326.P15150555984287749825

`5*A088545(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103326

/-- `5*A088545(n+1)` -/
def P15150555984287749825.Spec : Prop :=
  ∀ n, P15150555984287749825.a n = A103326 (n + 1)

theorem P15150555984287749825.correct : P15150555984287749825.Spec := by
  intro n
  simp only [A103326, Nat.add_sub_cancel]

end A103326

/-! ## A103326.P12595119301033796732

`25*(A000045(n+1)^4+(-1)^(n+1)*A000045(n+1)²)+5`
-/

namespace A103326.P12595119301033796732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * (A000045 (n + 1) ^ 4 + (-1) ^ (n + 1) * A000045 (n + 1) ^ 2) + 5

end

end A103326.P12595119301033796732

namespace A103326

/-- `25*(A000045(n+1)^4+(-1)^(n+1)*A000045(n+1)²)+5` -/
def P12595119301033796732.Spec : Prop :=
  ∀ n, P12595119301033796732.a n = A103326 (n + 1)

theorem P12595119301033796732.correct : P12595119301033796732.Spec := by
  intro n
  simp only [A103326, Nat.add_sub_cancel, A103326.P12595119301033796732.a, A103326.P15150555984287749825.a, A000045, A000045.P11838749114346432762.a, A088545, A088545.P14330016079546386706.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103326

/-! ## A103326.P12463833281146821926

`A000045(5*(n+1))/A000045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A103326.P12463833281146821926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (5 * (n + 1)) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A103326.P12463833281146821926

namespace A103326

/-- `A000045(5*(n+1))/A000045(n+1)` -/
def P12463833281146821926.Spec : Prop :=
  ∀ n, P12463833281146821926.a n = (A103326 (n + 1) : ℚ)

end A103326

/-! ## A103326.P13323784460935713978

`record[round(ϕ^((2*n)%(n+2)))]*A000204(3*(n+1))+1`
-/

namespace A103326.P13323784460935713978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n % (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000204 (3 * (n + 1)) + 1

end

end A103326.P13323784460935713978

namespace A103326

/-- `record[round(ϕ^((2*n)%(n+2)))]*A000204(3*(n+1))+1` -/
def P13323784460935713978.Spec : Prop :=
  ∀ n, P13323784460935713978.a n = A103326 (n + 1)

end A103326

/-! ## A103326.P999202547952691815

`A000032(n+1)*A014448(n+1)+1`
-/

namespace A103326.P999202547952691815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A014448 (n + 1) + 1

end

end A103326.P999202547952691815

namespace A103326

/-- `A000032(n+1)*A014448(n+1)+1` -/
def P999202547952691815.Spec : Prop :=
  ∀ n, P999202547952691815.a n = A103326 (n + 1)

end A103326

/-! ## A103326.P13017386659810426131

`A001254(n+1)*A110391(n+1)+1`
-/

namespace A103326.P13017386659810426131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (n + 1) * A110391 (n + 1) + 1

end

end A103326.P13017386659810426131

namespace A103326

/-- `A001254(n+1)*A110391(n+1)+1` -/
def P13017386659810426131.Spec : Prop :=
  ∀ n, P13017386659810426131.a n = A103326 (n + 1)

end A103326

/-! ## A103326.P11105272915612700886

`A005248(n+1)*A047946(n+1)-1`
-/

namespace A103326.P11105272915612700886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) * A047946 (n + 1) - 1

end

end A103326.P11105272915612700886

namespace A103326

/-- `A005248(n+1)*A047946(n+1)-1` -/
def P11105272915612700886.Spec : Prop :=
  ∀ n, P11105272915612700886.a n = A103326 (n + 1)

end A103326

/-! ## A103326.P2816100849588750604

`A000032(2*n+n+3)*A000032(n+1)+1`
-/

namespace A103326.P2816100849588750604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + (n + 3)) * A000032 (n + 1) + 1

end

end A103326.P2816100849588750604

namespace A103326

/-- `A000032(2*n+n+3)*A000032(n+1)+1` -/
def P2816100849588750604.Spec : Prop :=
  ∀ n, P2816100849588750604.a n = A103326 (n + 1)

end A103326

/-! ## A103326.P11882317201082045212

`A102312(n+1)/A000045(n+1)`
-/

namespace A103326.P11882317201082045212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102312 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A103326.P11882317201082045212

namespace A103326

/-- `A102312(n+1)/A000045(n+1)` -/
def P11882317201082045212.Spec : Prop :=
  ∀ n, P11882317201082045212.a n = (A103326 (n + 1) : ℚ)

end A103326

/-! ## A103326.P1015762664323758140

`A102312(n+1)/A105800(2*(n+1))`
-/

namespace A103326.P1015762664323758140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102312 (n + 1) : ℚ) / (A105800 (2 * (n + 1)) : ℚ)

end

end A103326.P1015762664323758140

namespace A103326

/-- `A102312(n+1)/A105800(2*(n+1))` -/
def P1015762664323758140.Spec : Prop :=
  ∀ n, P1015762664323758140.a n = (A103326 (n + 1) : ℚ)

end A103326

/-!
# A103327: Triangle read by rows: T(n,k) = binomial(2n+1, 2k+1).

The programs for A103327, the canonical program `A103327.P11046521745782828999` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103327 has offset 0).

The definition of A103327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*row(n)+1, 2*col(n)+1)` (program `A103327.P11046521745782828999`, by `A103327.P11046521745782828999.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103327.P11046521745782828999

`C(2*row(n)+1, 2*col(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103327

/-- `C(2*row(n)+1, 2*col(n)+1)` -/
def P11046521745782828999.Spec : Prop :=
  ∀ n, (P11046521745782828999.a n : ℤ) = A103327 n

theorem P11046521745782828999.correct : P11046521745782828999.Spec := by
  intro n
  simp only [A103327]

end A103327

/-! ## A103327.P3699061763120858678

`2*A091044(n+1)-A091042(n)`
-/

namespace A103327.P3699061763120858678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091044 (n + 1) - A091042 n

end

end A103327.P3699061763120858678

namespace A103327

/-- `2*A091044(n+1)-A091042(n)` -/
def P3699061763120858678.Spec : Prop :=
  ∀ n, P3699061763120858678.a n = A103327 n

end A103327

/-! ## A103327.P16052902258404910941

`A091042(n+1)+A086645(n)-A086645(n+1)`
-/

namespace A103327.P16052902258404910941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (n + 1) + (A086645 n - A086645 (n + 1))

end

end A103327.P16052902258404910941

namespace A103327

/-- `A091042(n+1)+A086645(n)-A086645(n+1)` -/
def P16052902258404910941.Spec : Prop :=
  ∀ n, P16052902258404910941.a n = A103327 n

end A103327

/-! ## A103327.P16882538119653158049

`A091042(n+1)/A007318(n+1)*A007318(n)`
-/

namespace A103327.P16882538119653158049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091042 (n + 1) : ℚ) / (A007318 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A103327.P16882538119653158049

namespace A103327

/-- `A091042(n+1)/A007318(n+1)*A007318(n)` -/
def P16882538119653158049.Spec : Prop :=
  ∀ n, P16882538119653158049.a n = (A103327 n : ℚ)

end A103327

/-! ## A103327.P17353443475340897498

`A091042(A061579(n))`
-/

namespace A103327.P17353443475340897498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (A061579 n).toNat

end

end A103327.P17353443475340897498

namespace A103327

/-- `A091042(A061579(n))` -/
def P17353443475340897498.Spec : Prop :=
  ∀ n, P17353443475340897498.a n = A103327 n

end A103327

/-! ## A103327.P3605783011761862218

`A091042(A038722(n+1)-1)`
-/

namespace A103327.P3605783011761862218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (A038722 (n + 1) - 1).toNat

end

end A103327.P3605783011761862218

namespace A103327

/-- `A091042(A038722(n+1)-1)` -/
def P3605783011761862218.Spec : Prop :=
  ∀ n, P3605783011761862218.a n = A103327 n

end A103327

/-! ## A103327.P4212408573574740671

`A091042(A038722(n+2))`
-/

namespace A103327.P4212408573574740671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (A038722 (n + 2)).toNat

end

end A103327.P4212408573574740671

namespace A103327

/-- `A091042(A038722(n+2))` -/
def P4212408573574740671.Spec : Prop :=
  ∀ n, P4212408573574740671.a n = A103327 n

end A103327

/-! ## A103327.P9069872308027019333

`A123162(comp[∑[n]])`
-/

namespace A103327.P9069872308027019333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123162 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A103327.P9069872308027019333

namespace A103327

/-- `A123162(comp[∑[n]])` -/
def P9069872308027019333.Spec : Prop :=
  ∀ n, P9069872308027019333.a n = A103327 n

end A103327

/-! ## A103327.P18383073202818595769

`C(A005408(A003056(n)), A158405(n+1))`
-/

namespace A103327.P18383073202818595769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005408 (A003056 n).toNat).toNat (A158405 (n + 1)).toNat

end

end A103327.P18383073202818595769

namespace A103327

/-- `C(A005408(A003056(n)), A158405(n+1))` -/
def P18383073202818595769.Spec : Prop :=
  ∀ n, (P18383073202818595769.a n : ℤ) = A103327 n

end A103327

/-! ## A103327.P7631950669447657113

`C(A158405(A127739(n+1)), A158405(n+1))`
-/

namespace A103327.P7631950669447657113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158405 (A127739 (n + 1)).toNat).toNat (A158405 (n + 1)).toNat

end

end A103327.P7631950669447657113

namespace A103327

/-- `C(A158405(A127739(n+1)), A158405(n+1))` -/
def P7631950669447657113.Spec : Prop :=
  ∀ n, (P7631950669447657113.a n : ℤ) = A103327 n

end A103327

/-! ## A103327.P18176211770044892510

`A034867(A061885(n))`
-/

namespace A103327.P18176211770044892510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (A061885 n).toNat

end

end A103327.P18176211770044892510

namespace A103327

/-- `A034867(A061885(n))` -/
def P18176211770044892510.Spec : Prop :=
  ∀ n, P18176211770044892510.a n = A103327 n

end A103327

/-! ## A103327.P4798976527234760112

`A109446(A064801(n+1))`
-/

namespace A103327.P4798976527234760112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109446 (A064801 (n + 1)).toNat

end

end A103327.P4798976527234760112

namespace A103327

/-- `A109446(A064801(n+1))` -/
def P4798976527234760112.Spec : Prop :=
  ∀ n, P4798976527234760112.a n = A103327 n

end A103327

/-! ## A103327.P8304702495354919143

`A034871(Δ[n²])`
-/

namespace A103327.P8304702495354919143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034871 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A103327.P8304702495354919143

namespace A103327

/-- `A034871(Δ[n²])` -/
def P8304702495354919143.Spec : Prop :=
  ∀ n, P8304702495354919143.a n = A103327 n

end A103327

/-! ## A103327.P5347599487367183780

`A074909(A185868(n+1))`
-/

namespace A103327.P5347599487367183780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A185868 (n + 1)).toNat

end

end A103327.P5347599487367183780

namespace A103327

/-- `A074909(A185868(n+1))` -/
def P5347599487367183780.Spec : Prop :=
  ∀ n, P5347599487367183780.a n = A103327 n

end A103327

/-! ## A103327.P16981782924622838147

`A007318(∑[char[∑[n]]]²+2*n+1)`
-/

namespace A103327.P16981782924622838147
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (2 * n + 1))

end

end A103327.P16981782924622838147

namespace A103327

/-- `A007318(∑[char[∑[n]]]²+2*n+1)` -/
def P16981782924622838147.Spec : Prop :=
  ∀ n, P16981782924622838147.a n = A103327 n

end A103327

/-! ## A103327.P3358607597395215542

`A202064(A292564(n))`
-/

namespace A103327.P3358607597395215542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202064 (A292564 n).toNat

end

end A103327.P3358607597395215542

namespace A103327

/-- `A202064(A292564(n))` -/
def P3358607597395215542.Spec : Prop :=
  ∀ n, P3358607597395215542.a n = A103327 n

end A103327

/-! ## A103327.P14088954674491136641

`A097805(A185871(n+1))`
-/

namespace A103327.P14088954674491136641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A185871 (n + 1)).toNat

end

end A103327.P14088954674491136641

namespace A103327

/-- `A097805(A185871(n+1))` -/
def P14088954674491136641.Spec : Prop :=
  ∀ n, P14088954674491136641.a n = A103327 n

end A103327

/-! ## A103327.P17002531037766579205

`A133084(A185870(n+1))`
-/

namespace A103327.P17002531037766579205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (A185870 (n + 1)).toNat

end

end A103327.P17002531037766579205

namespace A103327

/-- `A133084(A185870(n+1))` -/
def P17002531037766579205.Spec : Prop :=
  ∀ n, P17002531037766579205.a n = A103327 n

end A103327

/-! ## A103327.P6148756878302678779

`A133569(A007607(2*(n+1)))`
-/

namespace A103327.P6148756878302678779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133569 (A007607 (2 * (n + 1))).toNat

end

end A103327.P6148756878302678779

namespace A103327

/-- `A133569(A007607(2*(n+1)))` -/
def P6148756878302678779.Spec : Prop :=
  ∀ n, P6148756878302678779.a n = A103327 n

end A103327

/-! ## A103327.P17765269747128572442

`A091917(A185869(n+2)-2)`
-/

namespace A103327.P17765269747128572442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 (A185869 (n + 2) - 2).toNat

end

end A103327.P17765269747128572442

namespace A103327

/-- `A091917(A185869(n+2)-2)` -/
def P17765269747128572442.Spec : Prop :=
  ∀ n, P17765269747128572442.a n = A103327 n

end A103327

/-!
# A103328: Triangle T(n, k) read by rows: binomial(2n, 2k+1).

The programs for A103328, there is no canonical definition to state claims against.
-/

/-! ## A103328.P18003311637889687742

`C(2*row(n), 2*col(n)+1)`
-/

namespace A103328.P18003311637889687742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * SequenceMachineLib.triRow n) (2 * SequenceMachineLib.triCol n + 1)

end

end A103328.P18003311637889687742

/-! ## A103328.P17142389234054696722

`A071919(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A103328.P17142389234054696722
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A103328.P17142389234054696722

/-! ## A103328.P2155056500179625932

`A097805(∑[char[∑[n]]]²+2*(n+1))`
-/

namespace A103328.P2155056500179625932
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * (n + 1))

end

end A103328.P2155056500179625932

/-! ## A103328.P1177175507382311682

`∑[A037012((n-comp[∑[n]])²+2*n)]`
-/

namespace A103328.P1177175507382311682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2 + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103328.P1177175507382311682

/-! ## A103328.P14964182805063394034

`∑[A112466((n-comp[∑[n]])²+2*n)]`
-/

namespace A103328.P14964182805063394034
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112466 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2 + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103328.P14964182805063394034

/-! ## A103328.P4681706504974363876

`A159854(Δ[n²]+(n-comp[∑[n]])²+1)`
-/

namespace A103328.P4681706504974363876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2 + 1).toNat

end

end A103328.P4681706504974363876

/-! ## A103328.P4537164689413864699

`lcm(2, A097805(round(sqrt(2*(n+1)))²+2*(n+1)))`
-/

namespace A103328.P4537164689413864699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A097805 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 + (2 * (n + 1) : ℤ)).toNat)

end

end A103328.P4537164689413864699

/-! ## A103328.P5268078290499522440

`A007318((1-round(sqrt(2*(n+1))))²+2*n+1)-char[∑[n-1]]`
-/

namespace A103328.P5268078290499522440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103328.P5268078290499522440

/-! ## A103328.P4000356718435616014

`A206735(A185868(n+1))`
-/

namespace A103328.P4000356718435616014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A185868 (n + 1)).toNat

end

end A103328.P4000356718435616014

/-! ## A103328.P18282358704061505350

`A103327(n)-A086645(n)`
-/

namespace A103328.P18282358704061505350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n - A086645 n

end

end A103328.P18282358704061505350

/-!
# A103330: Number of ways to place n+1 queens and a pawn on an n X n board so that no two queens attack each other.

The programs for A103330, there is no canonical definition to state claims against.
-/

/-! ## A103330.P8279633599618244417

`and(n*(9*n-8), A025437(Δ[3^n]))`
-/

namespace A103330.P8279633599618244417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * ((9 * n : ℤ) - 8)) (A025437 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A103330.P8279633599618244417

/-! ## A103330.P12993400464123306454

`A056649(A027990(n))`
-/

namespace A103330.P12993400464123306454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (A027990 n).toNat

end

end A103330.P12993400464123306454

/-! ## A103330.P13035016668566860556

`A200512(A079227(n))`
-/

namespace A103330.P13035016668566860556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 (A079227 n).toNat

end

end A103330.P13035016668566860556

/-! ## A103330.P314314731568417147

`A200512(A173611(n))`
-/

namespace A103330.P314314731568417147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 (A173611 n).toNat

end

end A103330.P314314731568417147

/-!
# A103331: Number of ways to place n+1 queens and a pawn on an n X n board so that no two queens attack each other (symmetric solutions count only once).

The programs for A103331, there is no canonical definition to state claims against.
-/

/-! ## A103331.P16891215800232234010

`A204814(A047012(n))`
-/

namespace A103331.P16891215800232234010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204814 (A047012 n).toNat

end

end A103331.P16891215800232234010

/-! ## A103331.P16382864583723080937

`A049822(A350009(n+1))`
-/

namespace A103331.P16382864583723080937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049822 (A350009 (n + 1)).toNat

end

end A103331.P16382864583723080937

/-! ## A103331.P3443790284051608584

`A229899(A363071(n+1))`
-/

namespace A103331.P3443790284051608584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229899 (A363071 (n + 1)).toNat

end

end A103331.P3443790284051608584

/-! ## A103331.P16960573944117308165

`A004198(A052747(n)+2)`
-/

namespace A103331.P16960573944117308165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A052747 n + 2).toNat

end

end A103331.P16960573944117308165

/-! ## A103331.P7082989019182601725

`A004198(or(2, A052747(n)))`
-/

namespace A103331.P7082989019182601725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (Int.lor 2 (A052747 n)).toNat

end

end A103331.P7082989019182601725

/-!
# A103333: Number of closed walks on the graph of the (7,4) Hamming code.

The programs for A103333, the canonical program `A103333.P5216711948745180549` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103333 has offset 0).

The definition of A103333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103333.P5216711948745180549

`8*a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103333

/-- `8*a(n-1)` -/
def P5216711948745180549.Spec : Prop :=
  ∀ n, (P5216711948745180549.a n : ℤ) = A103333 n

theorem P5216711948745180549.correct : P5216711948745180549.Spec := by
  intro n
  simp only [A103333]

end A103333

/-! ## A103333.P12315014534288870507

`ogf((1-5x)/(1-8x))`
-/

namespace A103333.P12315014534288870507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -8] n

end

end A103333.P12315014534288870507

namespace A103333

/-- `ogf((1-5x)/(1-8x))` -/
def P12315014534288870507.Spec : Prop :=
  ∀ n, P12315014534288870507.a n = A103333 n

end A103333

/-! ## A103333.P3125439818838580436

`ceil(3*8^(n-1))`
-/

namespace A103333.P3125439818838580436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A103333.P3125439818838580436

namespace A103333

/-- `ceil(3*8^(n-1))` -/
def P3125439818838580436.Spec : Prop :=
  ∀ n, P3125439818838580436.a n = A103333 n

end A103333

/-! ## A103333.P10903405654781975123

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A103333.P10903405654781975123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A103333.P10903405654781975123

namespace A103333

/-- `abs(∏[-a(n-1)])` -/
def P10903405654781975123.Spec : Prop :=
  ∀ n, P10903405654781975123.a n = A103333 n

end A103333

/-! ## A103333.P8469268443310487726

`a(n-1)/(1/2)^3` with `a(0)=1, a(1)=3`
-/

namespace A103333.P8469268443310487726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3

end

end A103333.P8469268443310487726

namespace A103333

/-- `a(n-1)/(1/2)^3` -/
def P8469268443310487726.Spec : Prop :=
  ∀ n, P8469268443310487726.a n = (A103333 n : ℚ)

end A103333

/-! ## A103333.P15354582074891031286

`lcm(8^(n-1), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A103333.P15354582074891031286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A103333.P15354582074891031286

namespace A103333

/-- `lcm(8^(n-1), a(n-1))` -/
def P15354582074891031286.Spec : Prop :=
  ∀ n, (P15354582074891031286.a n : ℤ) = A103333 n

end A103333

/-! ## A103333.P17057410854858858354

`a(n-1)/(1/3)²-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A103333.P17057410854858858354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - a (n - 1)

end

end A103333.P17057410854858858354

namespace A103333

/-- `a(n-1)/(1/3)²-a(n-1)` -/
def P17057410854858858354.Spec : Prop :=
  ∀ n, P17057410854858858354.a n = (A103333 n : ℚ)

end A103333

/-! ## A103333.P13261110633014915160

`A122391(3*n)`
-/

namespace A103333.P13261110633014915160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (3 * n)

end

end A103333.P13261110633014915160

namespace A103333

/-- `A122391(3*n)` -/
def P13261110633014915160.Spec : Prop :=
  ∀ n, P13261110633014915160.a n = A103333 n

end A103333

/-! ## A103333.P17502129159855644022

`A098011(3*n+1)`
-/

namespace A103333.P17502129159855644022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (3 * n + 1)

end

end A103333.P17502129159855644022

namespace A103333

/-- `A098011(3*n+1)` -/
def P17502129159855644022.Spec : Prop :=
  ∀ n, P17502129159855644022.a n = A103333 n

end A103333

/-! ## A103333.P12624700073393863346

`A096886(A004273(n))`
-/

namespace A103333.P12624700073393863346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096886 (A004273 n).toNat

end

end A103333.P12624700073393863346

namespace A103333

/-- `A096886(A004273(n))` -/
def P12624700073393863346.Spec : Prop :=
  ∀ n, P12624700073393863346.a n = A103333 n

end A103333

/-! ## A103333.P15114127746646478126

`A206917(A004277(n))`
-/

namespace A103333.P15114127746646478126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 (A004277 n).toNat

end

end A103333.P15114127746646478126

namespace A103333

/-- `A206917(A004277(n))` -/
def P15114127746646478126.Spec : Prop :=
  ∀ n, P15114127746646478126.a n = A103333 n

end A103333

/-! ## A103333.P2561484849699171860

`A206917(A004275(n+1))`
-/

namespace A103333.P2561484849699171860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 (A004275 (n + 1)).toNat

end

end A103333.P2561484849699171860

namespace A103333

/-- `A206917(A004275(n+1))` -/
def P2561484849699171860.Spec : Prop :=
  ∀ n, P2561484849699171860.a n = A103333 n

end A103333

/-! ## A103333.P17735264760480242316

`A003945(A289207(3*n))`
-/

namespace A103333.P17735264760480242316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A289207 (3 * n)).toNat

end

end A103333.P17735264760480242316

namespace A103333

/-- `A003945(A289207(3*n))` -/
def P17735264760480242316.Spec : Prop :=
  ∀ n, P17735264760480242316.a n = A103333 n

end A103333

/-! ## A103333.P18171069935403094083

`A003945(A130824(n)-n)`
-/

namespace A103333.P18171069935403094083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A130824 n - (n : ℤ)).toNat

end

end A103333.P18171069935403094083

namespace A103333

/-- `A003945(A130824(n)-n)` -/
def P18171069935403094083.Spec : Prop :=
  ∀ n, P18171069935403094083.a n = A103333 n

end A103333

/-! ## A103333.P4212027426953080935

`A002001(n)*A011782(n)`
-/

namespace A103333.P4212027426953080935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n * A011782 n

end

end A103333.P4212027426953080935

namespace A103333

/-- `A002001(n)*A011782(n)` -/
def P4212027426953080935.Spec : Prop :=
  ∀ n, P4212027426953080935.a n = A103333 n

end A103333

/-! ## A103333.P13889988959851515573

`∩[A003945(n), A096886(n)]`
-/

namespace A103333.P13889988959851515573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096886 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103333.P13889988959851515573

namespace A103333

/-- `∩[A003945(n), A096886(n)]` -/
def P13889988959851515573.Spec : Prop :=
  ∀ n, (P13889988959851515573.a n : ℤ) = A103333 n

end A103333

/-! ## A103333.P15114860336907876305

`∩[A096886(n), A206917(n)]`
-/

namespace A103333.P15114860336907876305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103333.P15114860336907876305

namespace A103333

/-- `∩[A096886(n), A206917(n)]` -/
def P15114860336907876305.Spec : Prop :=
  ∀ n, (P15114860336907876305.a n : ℤ) = A103333 n

end A103333

/-! ## A103333.P16993994720702314526

`A011782(n)²*A003945(n)`
-/

namespace A103333.P16993994720702314526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A003945 n

end

end A103333.P16993994720702314526

namespace A103333

/-- `A011782(n)²*A003945(n)` -/
def P16993994720702314526.Spec : Prop :=
  ∀ n, P16993994720702314526.a n = A103333 n

end A103333

/-! ## A103333.P14676200183065991067

`A123344(n)²*A003945(n)`
-/

namespace A103333.P14676200183065991067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n ^ 2 * A003945 n

end

end A103333.P14676200183065991067

namespace A103333

/-- `A123344(n)²*A003945(n)` -/
def P14676200183065991067.Spec : Prop :=
  ∀ n, P14676200183065991067.a n = A103333 n

end A103333

/-! ## A103333.P6500193530092421562

`A003945(A097141(2*n)+n)`
-/

namespace A103333.P6500193530092421562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A097141 (2 * n) + (n : ℤ)).toNat

end

end A103333.P6500193530092421562

namespace A103333

/-- `A003945(A097141(2*n)+n)` -/
def P6500193530092421562.Spec : Prop :=
  ∀ n, P6500193530092421562.a n = A103333 n

end A103333

/-!
# A103334: Number of closed walks of length 2n at any of the nodes of degree 1 on the graph of the (7,4) Hamming code.

The programs for A103334, the canonical program `A103334.P4400228989548633334` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103334 has offset 0).

The definition of A103334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103334.P4400228989548633334

`8*a(n-1)-2^n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103334

/-- `8*a(n-1)-2^n` -/
def P4400228989548633334.Spec : Prop :=
  ∀ n, P4400228989548633334.a n = A103334 n

theorem P4400228989548633334.correct : P4400228989548633334.Spec := by
  intro n
  simp only [A103334]

end A103334

/-! ## A103334.P3924615178229783158

`ceil(2^(n-1))*∑[A034008(n)²]`
-/

namespace A103334.P3924615178229783158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103334.P3924615178229783158

namespace A103334

/-- `ceil(2^(n-1))*∑[A034008(n)²]` -/
def P3924615178229783158.Spec : Prop :=
  ∀ n, P3924615178229783158.a n = A103334 n

end A103334

/-! ## A103334.P86720896815073706

`A068010(A296515(n+1))`
-/

namespace A103334.P86720896815073706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 (A296515 (n + 1)).toNat

end

end A103334.P86720896815073706

namespace A103334

/-- `A068010(A296515(n+1))` -/
def P86720896815073706.Spec : Prop :=
  ∀ n, P86720896815073706.a n = A103334 n

end A103334

/-! ## A103334.P903019030888008640

`∑[A034008(n)²]*∑[A034008(n)]`
-/

namespace A103334.P903019030888008640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A103334.P903019030888008640

namespace A103334

/-- `∑[A034008(n)²]*∑[A034008(n)]` -/
def P903019030888008640.Spec : Prop :=
  ∀ n, P903019030888008640.a n = A103334 n

end A103334

/-! ## A103334.P10684769657274046557

`A068010(A004524(record[A165355(n)]))`
-/

namespace A103334.P10684769657274046557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 (A004524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A103334.P10684769657274046557

namespace A103334

/-- `A068010(A004524(record[A165355(n)]))` -/
def P10684769657274046557.Spec : Prop :=
  ∀ n, P10684769657274046557.a n = A103334 n

end A103334

/-! ## A103334.P5672137036378577087

`A068010(A004526(record[A165355(n)]))`
-/

namespace A103334.P5672137036378577087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 (A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A103334.P5672137036378577087

namespace A103334

/-- `A068010(A004526(record[A165355(n)]))` -/
def P5672137036378577087.Spec : Prop :=
  ∀ n, P5672137036378577087.a n = A103334 n

end A103334

/-! ## A103334.P6315968307259664153

`A005578(A004275(n))*A011782(n)`
-/

namespace A103334.P6315968307259664153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A004275 n).toNat * A011782 n

end

end A103334.P6315968307259664153

namespace A103334

/-- `A005578(A004275(n))*A011782(n)` -/
def P6315968307259664153.Spec : Prop :=
  ∀ n, P6315968307259664153.a n = A103334 n

end A103334

/-!
# A103335: Numbers whose smallest primitive root (A046145) is not prime.

The programs for A103335, there is no canonical definition to state claims against.
-/

/-! ## A103335.P16794934826672066245

`eq[A179184(n), A185034(A046145(n))]`
-/

namespace A103335.P16794934826672066245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185034 (A046145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103335.P16794934826672066245

/-!
# A103336: Numbers whose largest primitive root (A046146) is not prime.

The programs for A103336, there is no canonical definition to state claims against.
-/

/-! ## A103336.P447461533061082939

`lt[A103310(n), A046146(A254667(n))]`
-/

namespace A103336.P447461533061082939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (A254667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103336.P447461533061082939

/-! ## A103336.P9985016470990659878

`lt[A124302(A301764(n+1)), A235862(n+1)]`
-/

namespace A103336.P9985016470990659878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (A301764 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103336.P9985016470990659878

/-! ## A103336.P11721690647919375665

`lt[A180320(n), A143904(A002487(n))]`
-/

namespace A103336.P11721690647919375665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143904 (A002487 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103336.P11721690647919375665

/-! ## A103336.P12240353942570820432

`lt[A000108(A301764(n+1)), A270831(n+1)]`
-/

namespace A103336.P12240353942570820432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A301764 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103336.P12240353942570820432

/-! ## A103336.P14077800128364458389

`eq[A265575(A000041(n)), A325830(n)]`
-/

namespace A103336.P14077800128364458389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265575 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103336.P14077800128364458389

/-!
# A103337: Smallest primitive root of numbers in sequence A103335.

The programs for A103337, there is no canonical definition to state claims against.
-/

/-! ## A103337.P10780049125007075294

`A046145(A103335(n+1))`
-/

namespace A103337.P10780049125007075294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A103335 (n + 1)).toNat

end

end A103337.P10780049125007075294

/-! ## A103337.P9435295493593694520

`A111076(A103335(n+1))-A000007(n)`
-/

namespace A103337.P9435295493593694520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A103335 (n + 1)).toNat - A000007 n

end

end A103337.P9435295493593694520

/-! ## A103337.P6936130637599808075

`A057427(n)*A111076(A103335(n+1))`
-/

namespace A103337.P6936130637599808075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A111076 (A103335 (n + 1)).toNat

end

end A103337.P6936130637599808075

/-! ## A103337.P1971966887264463634

`A111076(A103335(n+1))%A000132(n)`
-/

namespace A103337.P1971966887264463634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111076 (A103335 (n + 1)).toNat) (A000132 n)

end

end A103337.P1971966887264463634

/-! ## A103337.P7928155063843634119

`char[A323889(n)]*A111076(A103335(n+1))`
-/

namespace A103337.P7928155063843634119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A111076 (A103335 (n + 1)).toNat

end

end A103337.P7928155063843634119

/-! ## A103337.P10832536509649726274

`xor(A000007(2*n), A111076(A103335(n+1)))`
-/

namespace A103337.P10832536509649726274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A111076 (A103335 (n + 1)).toNat)

end

end A103337.P10832536509649726274

/-! ## A103337.P4699804503867737156

`A111076(A103335(n+1))-A008683((n+1)²)`
-/

namespace A103337.P4699804503867737156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A103335 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A103337.P4699804503867737156

/-! ## A103337.P17856966632728369708

`A052409(n²+1)*A111076(A103335(n+1))`
-/

namespace A103337.P17856966632728369708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n ^ 2 + 1) * A111076 (A103335 (n + 1)).toNat

end

end A103337.P17856966632728369708

/-! ## A103337.P12572829317594933543

`A000040(n+1)%2*A111076(A103335(n+1))`
-/

namespace A103337.P12572829317594933543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A111076 (A103335 (n + 1)).toNat

end

end A103337.P12572829317594933543

/-! ## A103337.P16183077605305001220

`A111076(A103335(n+1))-A001221(ceil(2/(n+1)))`
-/

namespace A103337.P16183077605305001220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A103335 (n + 1)).toNat - A001221 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A103337.P16183077605305001220

/-! ## A103337.P11447344637792122264

`A000045(n²%(n+1))*A111076(A103335(n+1))`
-/

namespace A103337.P11447344637792122264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ 2 % (n + 1)) * A111076 (A103335 (n + 1)).toNat

end

end A103337.P11447344637792122264

/-! ## A103337.P6523127485047296129

`A019433(A005843(n))*A111076(A103335(n+1))`
-/

namespace A103337.P6523127485047296129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 (A005843 n).toNat * A111076 (A103335 (n + 1)).toNat

end

end A103337.P6523127485047296129

/-!
# A103338: Largest primitive root of numbers in sequence A103336.

The programs for A103338, there is no canonical definition to state claims against.
-/

/-! ## A103338.P16845112572003982191

`A046146(A103336(n+1))`
-/

namespace A103338.P16845112572003982191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (A103336 (n + 1)).toNat

end

end A103338.P16845112572003982191

/-! ## A103338.P17149948121419369260

`A247176(A103336(C(n+1, n)))`
-/

namespace A103338.P17149948121419369260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (A103336 (Nat.choose (n + 1) n)).toNat

end

end A103338.P17149948121419369260

/-! ## A103338.P8351214236995177484

`A247176(A103336(Δ[n²]-n))`
-/

namespace A103338.P8351214236995177484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (A103336 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A103338.P8351214236995177484

/-! ## A103338.P5302118007440005950

`A247176(A103336(n+1)%((6*n+3)^6))`
-/

namespace A103338.P5302118007440005950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (Int.tmod (A103336 (n + 1)) ((6 * n + 3) ^ 6 : ℤ)).toNat

end

end A103338.P5302118007440005950

/-! ## A103338.P9137401872047924763

`A054977(n)*A247176(A103336(n+1))`
-/

namespace A103338.P9137401872047924763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A247176 (A103336 (n + 1)).toNat

end

end A103338.P9137401872047924763

/-! ## A103338.P15264192499820014989

`A057427(n)*A247176(A103336(n+1))`
-/

namespace A103338.P15264192499820014989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A247176 (A103336 (n + 1)).toNat

end

end A103338.P15264192499820014989

/-! ## A103338.P15023167619078286096

`A247176(A103336(n+1))%A000045(n+5)`
-/

namespace A103338.P15023167619078286096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247176 (A103336 (n + 1)).toNat) (A000045 (n + 5))

end

end A103338.P15023167619078286096

/-! ## A103338.P12798268582285668498

`A000040(n+1)%2*A247176(A103336(n+1))`
-/

namespace A103338.P12798268582285668498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A247176 (A103336 (n + 1)).toNat

end

end A103338.P12798268582285668498

/-!
# A103339: Numerator of the unitary harmonic mean (i.e., the harmonic mean of the unitary divisors) of the positive integer n.

The programs for A103339, the canonical program `A103339.P4822592513541350289` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103339 has offset 1).

The definition of A103339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103339.P4822592513541350289

`lcm(A034448(n+1), A298473(n+1))/A034448(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103339

/-- `lcm(A034448(n+1), A298473(n+1))/A034448(n+1)` -/
def P4822592513541350289.Spec : Prop :=
  ∀ n, P4822592513541350289.a n = (A103339 (n + 1) : ℚ)

end A103339

/-! ## A103339.P9555729463875473726

`gcd(A042948(A055112(n)), A361316(n+1))`
-/

namespace A103339.P9555729463875473726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042948 (A055112 n).toNat) (A361316 (n + 1))

end

end A103339.P9555729463875473726

namespace A103339

/-- `gcd(A042948(A055112(n)), A361316(n+1))` -/
def P9555729463875473726.Spec : Prop :=
  ∀ n, (P9555729463875473726.a n : ℤ) = A103339 (n + 1)

end A103339

/-! ## A103339.P3295012748044928195

`gcd(A045944(A055112(n)), A361782(n+1))`
-/

namespace A103339.P3295012748044928195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045944 (A055112 n).toNat) (A361782 (n + 1))

end

end A103339.P3295012748044928195

namespace A103339

/-- `gcd(A045944(A055112(n)), A361782(n+1))` -/
def P3295012748044928195.Spec : Prop :=
  ∀ n, (P3295012748044928195.a n : ℤ) = A103339 (n + 1)

end A103339

/-! ## A103339.P13713617721365490190

`A361316(n+1)/A270419(A010352(n+1))`
-/

namespace A103339.P13713617721365490190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361316 (n + 1) : ℚ) / (A270419 (A010352 (n + 1)).toNat : ℚ)

end

end A103339.P13713617721365490190

namespace A103339

/-- `A361316(n+1)/A270419(A010352(n+1))` -/
def P13713617721365490190.Spec : Prop :=
  ∀ n, P13713617721365490190.a n = (A103339 (n + 1) : ℚ)

end A103339

/-! ## A103339.P2396049992303111356

`A361316(n+1)/A360387(A360098(3*n+4))`
-/

namespace A103339.P2396049992303111356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361316 (n + 1) : ℚ) / (A360387 (A360098 (3 * n + 4)).toNat : ℚ)

end

end A103339.P2396049992303111356

namespace A103339

/-- `A361316(n+1)/A360387(A360098(3*n+4))` -/
def P2396049992303111356.Spec : Prop :=
  ∀ n, P2396049992303111356.a n = (A103339 (n + 1) : ℚ)

end A103339

/-!
# A103340: Denominator of the unitary harmonic mean (i.e., the harmonic mean of the unitary divisors) of the positive integer n.

The programs for A103340, the canonical program `A103340.P10740590519268141763` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103340 has offset 1).

The definition of A103340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103340.P10740590519268141763

`A034448(n+1)/gcd(A034448(n+1), A298473(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103340

/-- `A034448(n+1)/gcd(A034448(n+1), A298473(n+1))` -/
def P10740590519268141763.Spec : Prop :=
  ∀ n, P10740590519268141763.a n = (A103340 (n + 1) : ℚ)

end A103340

/-! ## A103340.P7271017647457549895

`lcm(A034444(n+1), A332882(n+1))/A034444(n+1)`
-/

namespace A103340.P7271017647457549895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A034444 (n + 1)) (A332882 (n + 1)) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A103340.P7271017647457549895

namespace A103340

/-- `lcm(A034444(n+1), A332882(n+1))/A034444(n+1)` -/
def P7271017647457549895.Spec : Prop :=
  ∀ n, P7271017647457549895.a n = (A103340 (n + 1) : ℚ)

end A103340

/-! ## A103340.P13926470021728879572

`A026741(A332882(n+1)^A056201(n+1))`
-/

namespace A103340.P13926470021728879572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A332882 (n + 1) : ℚ) ^ (A056201 (n + 1) : ℤ))).toNat

end

end A103340.P13926470021728879572

namespace A103340

/-- `A026741(A332882(n+1)^A056201(n+1))` -/
def P13926470021728879572.Spec : Prop :=
  ∀ n, P13926470021728879572.a n = A103340 (n + 1)

end A103340

/-! ## A103340.P17464050408371332103

`A026741(A056201(n+1)²²*A332882(n+1))`
-/

namespace A103340.P17464050408371332103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((A056201 (n + 1) ^ 2) ^ 2 * A332882 (n + 1)).toNat

end

end A103340.P17464050408371332103

namespace A103340

/-- `A026741(A056201(n+1)²²*A332882(n+1))` -/
def P17464050408371332103.Spec : Prop :=
  ∀ n, P17464050408371332103.a n = A103340 (n + 1)

end A103340

/-! ## A103340.P10259525460705332760

`A332882(n+1)/A040001(A332863(n))`
-/

namespace A103340.P10259525460705332760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332882 (n + 1) : ℚ) / (A040001 (A332863 n).toNat : ℚ)

end

end A103340.P10259525460705332760

namespace A103340

/-- `A332882(n+1)/A040001(A332863(n))` -/
def P10259525460705332760.Spec : Prop :=
  ∀ n, P10259525460705332760.a n = (A103340 (n + 1) : ℚ)

end A103340

/-!
# A103343: Number of representations of n as a sum of distinct elements of the Fibonacci-type sequence beginning 3, 1, 4, 5, 9, 14, 23, 37, ....

The programs for A103343, there is no canonical definition to state claims against.
-/

/-! ## A103343.P12287678673380758868

`A116403(eq[A093783(n+1), A291769(n)])`
-/

namespace A103343.P12287678673380758868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116403 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A103343.P12287678673380758868

/-! ## A103343.P6779706140463239941

`A196564(∑[∑[A000322(n+1)]])`
-/

namespace A103343.P6779706140463239941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103343.P6779706140463239941

/-! ## A103343.P13383871947090698412

`A077267(A333016(n)-A286013(n+1))`
-/

namespace A103343.P13383871947090698412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A333016 n - A286013 (n + 1)).toNat

end

end A103343.P13383871947090698412

/-! ## A103343.P2064692516005943429

`A064532(A278694(3*n+5)-A079955(n))`
-/

namespace A103343.P2064692516005943429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A278694 (3 * n + 5) - A079955 n).toNat

end

end A103343.P2064692516005943429

/-! ## A103343.P7846004169910013171

`A127323(A033875(n+1)+1)`
-/

namespace A103343.P7846004169910013171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 (A033875 (n + 1) + 1).toNat

end

end A103343.P7846004169910013171

/-!
# A103344: Number of representations of n as a sum of distinct elements of the Fibonacci-type sequence beginning 1, 4, 5, 9, 14, 23, 37, 60, ....

The programs for A103344, there is no canonical definition to state claims against.
-/

/-! ## A103344.P12145505673184999692

`A103343(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A103344.P12145505673184999692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A103343 n - a (n - 3)

end

end A103344.P12145505673184999692

/-! ## A103344.P934172104967997025

`A219486(eq[A219486(n+1), A219486(n+2)])`
-/

namespace A103344.P934172104967997025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219486 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A103344.P934172104967997025

/-! ## A103344.P14208884607115081992

`A219485(eq[0, A219487(n+2)])`
-/

namespace A103344.P14208884607115081992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103344.P14208884607115081992

/-! ## A103344.P17222048597529957382

`A219485(lt[A219487(n+2), 1])`
-/

namespace A103344.P17222048597529957382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219487 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A103344.P17222048597529957382

/-! ## A103344.P7469016827651355981

`A116402(A105564(n+1)+n)`
-/

namespace A103344.P7469016827651355981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116402 (A105564 (n + 1) + (n : ℤ)).toNat

end

end A103344.P7469016827651355981

/-! ## A103344.P7146131051583429068

`A219484(A105564(n+1)+2*n)`
-/

namespace A103344.P7146131051583429068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 (A105564 (n + 1) + (2 * n : ℤ)).toNat

end

end A103344.P7146131051583429068

/-! ## A103344.P831383733381379953

`A219483(2*n-A105564(n+1))`
-/

namespace A103344.P831383733381379953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 ((2 * n : ℤ) - A105564 (n + 1)).toNat

end

end A103344.P831383733381379953

/-! ## A103344.P490412918830674003

`A219484(A105564(n+1)+n+n)`
-/

namespace A103344.P490412918830674003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 (A105564 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A103344.P490412918830674003

/-! ## A103344.P11962876208819128622

`A219483(n-A105564(n+1)+n)`
-/

namespace A103344.P11962876208819128622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 ((n : ℤ) - A105564 (n + 1) + (n : ℤ)).toNat

end

end A103344.P11962876208819128622

/-!
# A103346: Denominators of Sum_{k=1..n} 1/k^6 = Zeta(6,n).

The programs for A103346, there is no canonical definition to state claims against.
-/

/-! ## A103346.P11603904805870420

`(A347563(∑[n+1])^3)²`
-/

namespace A103346.P11603904805870420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A347563 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A103346.P11603904805870420

/-! ## A103346.P2720284802525262264

`A195506(A032559(n+1))²`
-/

namespace A103346.P2720284802525262264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195506 (A032559 (n + 1)).toNat ^ 2

end

end A103346.P2720284802525262264

/-! ## A103346.P12042025442730298201

`A003418(A001104(n+1))^6`
-/

namespace A103346.P12042025442730298201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A001104 (n + 1)).toNat ^ 6

end

end A103346.P12042025442730298201

/-! ## A103346.P759619149933953966

`A003418(A032563(n+1))^6`
-/

namespace A103346.P759619149933953966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A032563 (n + 1)).toNat ^ 6

end

end A103346.P759619149933953966

/-! ## A103346.P7771598659182823378

`lcm(A000005(n!), A051418(n+1))^3`
-/

namespace A103346.P7771598659182823378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (Nat.factorial n)) (A051418 (n + 1)) ^ 3

end

end A103346.P7771598659182823378

/-!
# A103348: Denominators of sum_{k=1..n} 1/k^7 = Zeta(7,n).

The programs for A103348, there is no canonical definition to state claims against.
-/

/-! ## A103348.P1058188532370288152

`A322266(eq[5, A219347(n)])`
-/

namespace A103348.P1058188532370288152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103348.P1058188532370288152

/-!
# A103350: Denominators of sum_{k=1..n} 1/k^8 = Zeta(8,n).

The programs for A103350, there is no canonical definition to state claims against.
-/

/-! ## A103350.P11535221987827493768

`A007480(n+1)²`
-/

namespace A103350.P11535221987827493768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007480 (n + 1) ^ 2

end

end A103350.P11535221987827493768

/-! ## A103350.P879373332272370152

`(A002805(n+1)*A069045(n+1))²`
-/

namespace A103350.P879373332272370152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) * A069045 (n + 1)) ^ 2

end

end A103350.P879373332272370152

/-! ## A103350.P15329699328496877739

`lcm(A004277(n), A007480(n+1))*A007480(n+1)`
-/

namespace A103350.P15329699328496877739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A004277 n) (A007480 (n + 1)) : ℤ) * A007480 (n + 1)

end

end A103350.P15329699328496877739

/-! ## A103350.P1964770087816822718

`A069045(n+1)²*A103931(n+1)`
-/

namespace A103350.P1964770087816822718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069045 (n + 1) ^ 2 * A103931 (n + 1)

end

end A103350.P1964770087816822718

/-! ## A103350.P6766833917666154795

`A001016(A003418(n+1))`
-/

namespace A103350.P6766833917666154795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A003418 (n + 1)).toNat

end

end A103350.P6766833917666154795

/-!
# A103352: 

The programs for A103352, there is no canonical definition to state claims against.
-/

/-! ## A103352.P17805861522431401352

`A195506(A032559(n+1))²*A000093(A103931(n+1))`
-/

namespace A103352.P17805861522431401352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195506 (A032559 (n + 1)).toNat ^ 2 * A000093 (A103931 (n + 1)).toNat

end

end A103352.P17805861522431401352

/-!
# A103353: First column of triangular matrix A103244.

The programs for A103353, there is no canonical definition to state claims against.
-/

/-! ## A103353.P17159711351992339776

`A000079(n)*A196304(n+1)`
-/

namespace A103353.P17159711351992339776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A196304 (n + 1)

end

end A103353.P17159711351992339776

/-! ## A103353.P9571271728735025030

`∑[A011782(n)]*A196304(n+1)`
-/

namespace A103353.P9571271728735025030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A196304 (n + 1)

end

end A103353.P9571271728735025030

/-! ## A103353.P3080665221148320970

`A054582(∑[n])*A196304(n+1)`
-/

namespace A103353.P3080665221148320970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (∑ j ∈ Finset.range (n + 1), f1 j) * A196304 (n + 1)

end

end A103353.P3080665221148320970

/-! ## A103353.P4690729815972926742

`record[A130321(n)]*A196304(n+1)`
-/

namespace A103353.P4690729815972926742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A196304 (n + 1)

end

end A103353.P4690729815972926742

/-! ## A103353.P9963023554070449533

`A011782(n+1)*A196304(n+1)`
-/

namespace A103353.P9963023554070449533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A196304 (n + 1)

end

end A103353.P9963023554070449533

/-!
# A103354: a(n) = floor(x), where x is the solution to x = 2^(n-x).

The programs for A103354, the canonical program `A103354.P15737720647129431241` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103354 has offset 1).

The definition of A103354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103354.P6789648147413131052

`∑[char[comp[2^n+n]]]`
-/

namespace A103354.P6789648147413131052
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103354.P6789648147413131052

namespace A103354

/-- `∑[char[comp[2^n+n]]]` -/
def P6789648147413131052.Spec : Prop :=
  ∀ n, (P6789648147413131052.a n : ℤ) = A103354 (n + 1)

end A103354

/-! ## A103354.P15737720647129431241

`n-floor(log2(a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103354

/-- `n-floor(log2(a(n-1)))` -/
def P15737720647129431241.Spec : Prop :=
  ∀ n, P15737720647129431241.a n = A103354 (n + 1)

theorem P15737720647129431241.correct : P15737720647129431241.Spec := by
  intro n
  simp only [A103354, Nat.add_sub_cancel]

end A103354

/-! ## A103354.P1185276708264072900

`ceil(n-log2(a(n-1)))` with `a(0)=1`
-/

namespace A103354.P1185276708264072900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℝ) - Real.logb 2 (a (n - 1) : ℝ)⌉

end

end A103354.P1185276708264072900

namespace A103354

/-- `ceil(n-log2(a(n-1)))` -/
def P1185276708264072900.Spec : Prop :=
  ∀ n, P1185276708264072900.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P3570678000916332956

`ceil(∪[2*n+1, 2^n]/2)`
-/

namespace A103354.P3570678000916332956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / 2⌉

end

end A103354.P3570678000916332956

namespace A103354

/-- `ceil(∪[2*n+1, 2^n]/2)` -/
def P3570678000916332956.Spec : Prop :=
  ∀ n, P3570678000916332956.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P15947047819238888373

`∪[2*n+1, 2^n]-a(n-1)` with `a(0)=1`
-/

namespace A103354.P15947047819238888373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) - a (n - 1)

end

end A103354.P15947047819238888373

namespace A103354

/-- `∪[2*n+1, 2^n]-a(n-1)` -/
def P15947047819238888373.Spec : Prop :=
  ∀ n, P15947047819238888373.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P5182162859322381512

`floor(eq[n-2, lcm(1-and(n, n-1), n-2)]/2)`
-/

namespace A103354.P5182162859322381512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - Int.land (n : ℤ) ((n : ℤ) - 1)) ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n : ℚ) / 2⌋

end

end A103354.P5182162859322381512

namespace A103354

/-- `floor(eq[n-2, lcm(1-and(n, n-1), n-2)]/2)` -/
def P5182162859322381512.Spec : Prop :=
  ∀ n, P5182162859322381512.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P7242926918876088215

`floor(A088948(n+1)/2)`
-/

namespace A103354.P7242926918876088215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088948 (n + 1) : ℚ) / 2⌋

end

end A103354.P7242926918876088215

namespace A103354

/-- `floor(A088948(n+1)/2)` -/
def P7242926918876088215.Spec : Prop :=
  ∀ n, P7242926918876088215.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P2881971612475728750

`∑[A288132(n+1)]+1`
-/

namespace A103354.P2881971612475728750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A103354.P2881971612475728750

namespace A103354

/-- `∑[A288132(n+1)]+1` -/
def P2881971612475728750.Spec : Prop :=
  ∀ n, P2881971612475728750.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P10913512502384646183

`∑[A319956(n)-1]-1`
-/

namespace A103354.P10913512502384646183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319956 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103354.P10913512502384646183

namespace A103354

/-- `∑[A319956(n)-1]-1` -/
def P10913512502384646183.Spec : Prop :=
  ∀ n, P10913512502384646183.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P1837320243393758849

`n-A000523(a(n-1))` with `a(0)=1`
-/

namespace A103354.P1837320243393758849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A000523 (a (n - 1)).toNat

end

end A103354.P1837320243393758849

namespace A103354

/-- `n-A000523(a(n-1))` -/
def P1837320243393758849.Spec : Prop :=
  ∀ n, P1837320243393758849.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P16964677418848323067

`A088948(n)-a(n-1)` with `a(0)=1`
-/

namespace A103354.P16964677418848323067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088948 n - a (n - 1)

end

end A103354.P16964677418848323067

namespace A103354

/-- `A088948(n)-a(n-1)` -/
def P16964677418848323067.Spec : Prop :=
  ∀ n, P16964677418848323067.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P7521426713331471074

`1-A070939(a(n-1))+n` with `a(0)=1`
-/

namespace A103354.P7521426713331471074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A070939 (a (n - 1)).toNat + (n : ℤ)

end

end A103354.P7521426713331471074

namespace A103354

/-- `1-A070939(a(n-1))+n` -/
def P7521426713331471074.Spec : Prop :=
  ∀ n, P7521426713331471074.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P14065036363919484523

`1-A113473(a(n-1))+n` with `a(0)=1`
-/

namespace A103354.P14065036363919484523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A113473 (a (n - 1)).toNat + (n : ℤ)

end

end A103354.P14065036363919484523

namespace A103354

/-- `1-A113473(a(n-1))+n` -/
def P14065036363919484523.Spec : Prop :=
  ∀ n, P14065036363919484523.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P9700735832377882126

`2-A070941(a(n-1))+n` with `a(0)=1`
-/

namespace A103354.P9700735832377882126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - A070941 (a (n - 1)).toNat + (n : ℤ)

end

end A103354.P9700735832377882126

namespace A103354

/-- `2-A070941(a(n-1))+n` -/
def P9700735832377882126.Spec : Prop :=
  ∀ n, P9700735832377882126.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P6779903539414838378

`A201219(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A103354.P6779903539414838378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A201219 (a (n - 1)).toNat + a (n - 2)

end

end A103354.P6779903539414838378

namespace A103354

/-- `A201219(a(n-1))+a(n-2)` -/
def P6779903539414838378.Spec : Prop :=
  ∀ n, P6779903539414838378.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P1854644588412273978

`a(A225843(a(n-1)))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A103354.P1854644588412273978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A225843 (a (n - 1))).toNat + a (n - 2)

end

end A103354.P1854644588412273978

namespace A103354

/-- `a(A225843(a(n-1)))+a(n-2)` -/
def P1854644588412273978.Spec : Prop :=
  ∀ n, (P1854644588412273978.a n : ℤ) = A103354 (n + 1)

end A103354

/-! ## A103354.P16028245378960462417

`∑[A288381(n+2)]+1`
-/

namespace A103354.P16028245378960462417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288381 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A103354.P16028245378960462417

namespace A103354

/-- `∑[A288381(n+2)]+1` -/
def P16028245378960462417.Spec : Prop :=
  ∀ n, P16028245378960462417.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P9141896894075033088

`Δ[A127419(n+1)]`
-/

namespace A103354.P9141896894075033088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103354.P9141896894075033088

namespace A103354

/-- `Δ[A127419(n+1)]` -/
def P9141896894075033088.Spec : Prop :=
  ∀ n, P9141896894075033088.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P10747520591897673480

`A127419(n+2)-A127419(n+1)`
-/

namespace A103354.P10747520591897673480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127419 (n + 2) - A127419 (n + 1)

end

end A103354.P10747520591897673480

namespace A103354

/-- `A127419(n+2)-A127419(n+1)` -/
def P10747520591897673480.Spec : Prop :=
  ∀ n, P10747520591897673480.a n = A103354 (n + 1)

end A103354

/-! ## A103354.P3030309445223239909

`n-A059939(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A103354.P3030309445223239909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A059939 (a (n - 1) + a (n - 1)).toNat

end

end A103354.P3030309445223239909

namespace A103354

/-- `n-A059939(a(n-1)+a(n-1))` -/
def P3030309445223239909.Spec : Prop :=
  ∀ n, P3030309445223239909.a n = A103354 (n + 1)

end A103354

/-!
# A103355: a(n) = n - floor( sqrt(prime(n) ) ).

The programs for A103355, the canonical program `A103355.P17909756641454416049` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103355 has offset 1).

The definition of A103355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-floor(sqrt(A000040(n+1)))` (program `A103355.P17909756641454416049`, by `A103355.P17909756641454416049.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103355.P17909756641454416049

`n+1-floor(sqrt(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103355

/-- `n+1-floor(sqrt(A000040(n+1)))` -/
def P17909756641454416049.Spec : Prop :=
  ∀ n, P17909756641454416049.a n = A103355 (n + 1)

theorem P17909756641454416049.correct : P17909756641454416049.Spec := by
  intro n
  simp only [A103355, Nat.add_sub_cancel]

end A103355

/-! ## A103355.P8726876468271303385

`A103416(n)+1`
-/

namespace A103355.P8726876468271303385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103416 n + 1

end

end A103355.P8726876468271303385

namespace A103355

/-- `A103416(n)+1` -/
def P8726876468271303385.Spec : Prop :=
  ∀ n, P8726876468271303385.a n = A103355 (n + 1)

theorem P8726876468271303385.correct : P8726876468271303385.Spec := by
  intro n
  simp only [A103355, Nat.add_sub_cancel, A103355.P8726876468271303385.a, A103355.P17909756641454416049.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A103416, A103416.P11972475855525546389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103355

/-! ## A103355.P5132010778649845869

`∑[char[A221056(n+1)]]`
-/

namespace A103355.P5132010778649845869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221056 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103355.P5132010778649845869

namespace A103355

/-- `∑[char[A221056(n+1)]]` -/
def P5132010778649845869.Spec : Prop :=
  ∀ n, (P5132010778649845869.a n : ℤ) = A103355 (n + 1)

end A103355

/-! ## A103355.P16339824659707943898

`∑[1-char[A038107(n)]]`
-/

namespace A103355.P16339824659707943898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103355.P16339824659707943898

namespace A103355

/-- `∑[1-char[A038107(n)]]` -/
def P16339824659707943898.Spec : Prop :=
  ∀ n, P16339824659707943898.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P7515808232678663361

`1-A000006(n+1)+n`
-/

namespace A103355.P7515808232678663361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000006 (n + 1) + (n : ℤ)

end

end A103355.P7515808232678663361

namespace A103355

/-- `1-A000006(n+1)+n` -/
def P7515808232678663361.Spec : Prop :=
  ∀ n, P7515808232678663361.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P13721405689749322400

`2-A104103(n+1)+n`
-/

namespace A103355.P13721405689749322400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A104103 (n + 1) + (n : ℤ)

end

end A103355.P13721405689749322400

namespace A103355

/-- `2-A104103(n+1)+n` -/
def P13721405689749322400.Spec : Prop :=
  ∀ n, P13721405689749322400.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P1248720903243649670

`n+1-sqrt(A065730(n+1))`
-/

namespace A103355.P1248720903243649670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (A065730 (n + 1) : ℝ)

end

end A103355.P1248720903243649670

namespace A103355

/-- `n+1-sqrt(A065730(n+1))` -/
def P1248720903243649670.Spec : Prop :=
  ∀ n, P1248720903243649670.a n = (A103355 (n + 1) : ℝ)

end A103355

/-! ## A103355.P4829079006889903397

`2*(n+1)-A161188(n+1)`
-/

namespace A103355.P4829079006889903397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A161188 (n + 1)

end

end A103355.P4829079006889903397

namespace A103355

/-- `2*(n+1)-A161188(n+1)` -/
def P4829079006889903397.Spec : Prop :=
  ∀ n, P4829079006889903397.a n = A103355 (n + 1)

theorem P4829079006889903397.correct : P4829079006889903397.Spec := by
  intro n
  simp only [A103355, Nat.add_sub_cancel, A103355.P4829079006889903397.a, A103355.P17909756641454416049.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A161188, A161188.P8302005611444177040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A103355

/-! ## A103355.P14212391045166571964

`n+1-A096494(n+1)/2`
-/

namespace A103355.P14212391045166571964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A096494 (n + 1) : ℚ) / 2

end

end A103355.P14212391045166571964

namespace A103355

/-- `n+1-A096494(n+1)/2` -/
def P14212391045166571964.Spec : Prop :=
  ∀ n, P14212391045166571964.a n = (A103355 (n + 1) : ℚ)

end A103355

/-! ## A103355.P574136012278084754

`A163300(n+1)%A161188(n+1)`
-/

namespace A103355.P574136012278084754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A161188 (n + 1))

end

end A103355.P574136012278084754

namespace A103355

/-- `A163300(n+1)%A161188(n+1)` -/
def P574136012278084754.Spec : Prop :=
  ∀ n, P574136012278084754.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P10385286241521611380

`A112045(n+1)+1-A014692(n+1)`
-/

namespace A103355.P10385286241521611380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1) + (1 - A014692 (n + 1))

end

end A103355.P10385286241521611380

namespace A103355

/-- `A112045(n+1)+1-A014692(n+1)` -/
def P10385286241521611380.Spec : Prop :=
  ∀ n, P10385286241521611380.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P230698097999182565

`1-floor(sqrt(p?[xor(1, n)]))+n`
-/

namespace A103355.P230698097999182565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) + (n : ℤ)

end

end A103355.P230698097999182565

namespace A103355

/-- `1-floor(sqrt(p?[xor(1, n)]))+n` -/
def P230698097999182565.Spec : Prop :=
  ∀ n, P230698097999182565.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P8596265869376625555

`ceil(1-sqrt(p?[xor(1, n)])+n)`
-/

namespace A103355.P8596265869376625555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 - Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) + (n : ℝ)⌉

end

end A103355.P8596265869376625555

namespace A103355

/-- `ceil(1-sqrt(p?[xor(1, n)])+n)` -/
def P8596265869376625555.Spec : Prop :=
  ∀ n, P8596265869376625555.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P991019370179048006

`1-(floor(sqrt(p?[xor(1, n)]))-n)`
-/

namespace A103355.P991019370179048006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - (n : ℤ))

end

end A103355.P991019370179048006

namespace A103355

/-- `1-(floor(sqrt(p?[xor(1, n)]))-n)` -/
def P991019370179048006.Spec : Prop :=
  ∀ n, P991019370179048006.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P14247470937457802411

`n-(ceil(sqrt(p?[xor(1, n)]))-2)`
-/

namespace A103355.P14247470937457802411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌉ - 2)

end

end A103355.P14247470937457802411

namespace A103355

/-- `n-(ceil(sqrt(p?[xor(1, n)]))-2)` -/
def P14247470937457802411.Spec : Prop :=
  ∀ n, P14247470937457802411.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P7510994034057939320

`n+1-floor(sqrt(p?[n%3+n]))`
-/

namespace A103355.P7510994034057939320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ)

end

end A103355.P7510994034057939320

namespace A103355

/-- `n+1-floor(sqrt(p?[n%3+n]))` -/
def P7510994034057939320.Spec : Prop :=
  ∀ n, P7510994034057939320.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P7748062444477950841

`n+1-floor(sqrt(p?[n-(-1)^n]))`
-/

namespace A103355.P7748062444477950841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A103355.P7748062444477950841

namespace A103355

/-- `n+1-floor(sqrt(p?[n-(-1)^n]))` -/
def P7748062444477950841.Spec : Prop :=
  ∀ n, P7748062444477950841.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P12608890846657907120

`n-A236627(A008578(n+2))`
-/

namespace A103355.P12608890846657907120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A236627 (A008578 (n + 2)).toNat

end

end A103355.P12608890846657907120

namespace A103355

/-- `n-A236627(A008578(n+2))` -/
def P12608890846657907120.Spec : Prop :=
  ∀ n, P12608890846657907120.a n = A103355 (n + 1)

end A103355

/-! ## A103355.P18389160403096466731

`n+1-A000196(A000040(n+1))`
-/

namespace A103355.P18389160403096466731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000196 (A000040 (n + 1)).toNat

end

end A103355.P18389160403096466731

namespace A103355

/-- `n+1-A000196(A000040(n+1))` -/
def P18389160403096466731.Spec : Prop :=
  ∀ n, P18389160403096466731.a n = A103355 (n + 1)

end A103355

/-!
# A103357: Numbers n such that n and pi(n) (A000720) are palindromic.

The programs for A103357, there is no canonical definition to state claims against.
-/

/-! ## A103357.P8018317167793983833

`∩[A002113(n+1), A124231(n+1)]`
-/

namespace A103357.P8018317167793983833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103357.P8018317167793983833

/-! ## A103357.P8445315582977368046

`record[A093030(A124231(n+1))]`
-/

namespace A103357.P8445315582977368046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (A124231 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103357.P8445315582977368046

/-! ## A103357.P11772023410572302686

`filter[A124231(n+1), A136522(#)]`
-/

namespace A103357.P11772023410572302686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A103357.P11772023410572302686

/-!
# A103358: Palindromes q derived from palindromes p such that pi(p) = q.

The programs for A103358, there is no canonical definition to state claims against.
-/

/-! ## A103358.P4517912646926812236

`A000720(A103357(1+n))`
-/

namespace A103358.P4517912646926812236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103357 (1 + n)).toNat

end

end A103358.P4517912646926812236

/-! ## A103358.P12868965773296231818

`filter[A076890(n+1), A136522(#)]`
-/

namespace A103358.P12868965773296231818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A103358.P12868965773296231818

/-! ## A103358.P3075611702743105879

`A074719(A103357(n+1)^A178334(n))`
-/

namespace A103358.P3075611702743105879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074719 (SequenceMachineLib.roundAway ((A103357 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A103358.P3075611702743105879

/-! ## A103358.P4752382754931914003

`A074719(A103357(n+1))%A100133(n)`
-/

namespace A103358.P4752382754931914003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074719 (A103357 (n + 1)).toNat) (A100133 n)

end

end A103358.P4752382754931914003

/-! ## A103358.P9510406129896818203

`A074719(C(A103357(n+1), A178334(n)))`
-/

namespace A103358.P9510406129896818203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074719 (Nat.choose (A103357 (n + 1)).toNat (A178334 n).toNat)

end

end A103358.P9510406129896818203

/-!
# A103359: T(n,k) = Max{p: prime p divides m where n-k<=m<=n+k}, triangle read by rows: 0<=k<n.

The programs for A103359, there is no canonical definition to state claims against.
-/

/-! ## A103359.P2840038134786950262

`A006530(A006530(A165257(n+1))*A007318(n))`
-/

namespace A103359.P2840038134786950262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A165257 (n + 1)).toNat * A007318 n).toNat

end

end A103359.P2840038134786950262

/-! ## A103359.P3249474740658160162

`A006530(∏{p}[A303700(n), #])`
-/

namespace A103359.P3249474740658160162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A103359.P3249474740658160162

/-! ## A103359.P13230828084989120390

`A006530(∏{p}[A303699(n)/A002024(n+1), #])`
-/

namespace A103359.P13230828084989120390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / (A002024 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A103359.P13230828084989120390

/-! ## A103359.P2050175376309994842

`A006530(∏{p}[A303699(n)/(A003056(n)+1), #])`
-/

namespace A103359.P2050175376309994842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / (A003056 n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A103359.P2050175376309994842

/-! ## A103359.P15388470636733674128

`A006530(A006530(A165257(n+1))*A001263(n+1))`
-/

namespace A103359.P15388470636733674128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A165257 (n + 1)).toNat * A001263 (n + 1)).toNat

end

end A103359.P15388470636733674128

/-! ## A103359.P6812243794702363798

`A006530(A006530(A238761(n+1))*A001263(n+1))`
-/

namespace A103359.P6812243794702363798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A238761 (n + 1)).toNat * A001263 (n + 1)).toNat

end

end A103359.P6812243794702363798

/-!
# A103363: Reduced denominators of the fraction of primes < 10^n that are full reptend primes.

The programs for A103363, there is no canonical definition to state claims against.
-/

/-! ## A103363.P1493595491962436140

`A006880(n+1)/A086018(n+1)*A103362(n+1)`
-/

namespace A103363.P1493595491962436140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006880 (n + 1) : ℚ) / (A086018 (n + 1) : ℚ) * (A103362 (n + 1) : ℚ)

end

end A103363.P1493595491962436140

/-!
# A103364: Matrix inverse of the Narayana triangle A001263.

The programs for A103364, there is no canonical definition to state claims against.
-/

/-! ## A103364.P10930823243990050215

`A001263(n+1)*A103365(A004736(n+1))`
-/

namespace A103364.P10930823243990050215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A103365 (A004736 (n + 1)).toNat

end

end A103364.P10930823243990050215

/-! ## A103364.P6610857472268960790

`sqrt(A174158(n+1))*A103365(A004736(n+1))`
-/

namespace A103364.P6610857472268960790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174158 (n + 1) : ℝ) * (A103365 (A004736 (n + 1)).toNat : ℝ)

end

end A103364.P6610857472268960790

/-! ## A103364.P2199366997787648188

`ceil(A174124(n)/2)*A103365(A004736(n+1))`
-/

namespace A103364.P2199366997787648188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174124 n : ℚ) / 2⌉ * A103365 (A004736 (n + 1)).toNat

end

end A103364.P2199366997787648188

/-! ## A103364.P658525701818049701

`ceil(A132787(n+1)/2)*A103365(A004736(n+1))`
-/

namespace A103364.P658525701818049701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132787 (n + 1) : ℚ) / 2⌉ * A103365 (A004736 (n + 1)).toNat

end

end A103364.P658525701818049701

/-! ## A103364.P7880826812861944338

`A090181(A014132(n+1))*A103365(A004736(n+1))`
-/

namespace A103364.P7880826812861944338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A014132 (n + 1)).toNat * A103365 (A004736 (n + 1)).toNat

end

end A103364.P7880826812861944338

/-! ## A103364.P7767431450299285950

`A103365(A004736(n+1))/A154325(n)*A174124(n)`
-/

namespace A103364.P7767431450299285950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103365 (A004736 (n + 1)).toNat : ℚ) / (A154325 n : ℚ) * (A174124 n : ℚ)

end

end A103364.P7767431450299285950

/-! ## A103364.P761424384714705685

`A103365(A004736(n+1))/A168256(n)*A342982(n)`
-/

namespace A103364.P761424384714705685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103365 (A004736 (n + 1)).toNat : ℚ) / (A168256 n : ℚ) * (A342982 n : ℚ)

end

end A103364.P761424384714705685

/-! ## A103364.P8020364065813071434

`(A108838(n+2)-A119308(n))*A103365(A004736(n+1))`
-/

namespace A103364.P8020364065813071434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108838 (n + 2) - A119308 n) * A103365 (A004736 (n + 1)).toNat

end

end A103364.P8020364065813071434

/-! ## A103364.P5806757372323725407

`(A132789(n+1)+1-A007318(n))*A103365(A004736(n+1))`
-/

namespace A103364.P5806757372323725407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132789 (n + 1) + (1 - A007318 n)) * A103365 (A004736 (n + 1)).toNat

end

end A103364.P5806757372323725407

/-!
# A103365: First column of triangle A103364, which equals the matrix inverse of the Narayana triangle (A001263).

The programs for A103365, there is no canonical definition to state claims against.
-/

/-! ## A103365.P12641597120958892783

`A103364(∑[n]+1)`
-/

namespace A103365.P12641597120958892783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103364 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A103365.P12641597120958892783

/-! ## A103365.P1381437163305482085

`or(A000007(n), A103364(A000124(n)))`
-/

namespace A103365.P1381437163305482085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A103364 (A000124 n).toNat)

end

end A103365.P1381437163305482085

/-! ## A103365.P15134962101724024770

`or(A014577(n), A103364(A000124(n)))`
-/

namespace A103365.P15134962101724024770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014577 n) (A103364 (A000124 n).toNat)

end

end A103365.P15134962101724024770

/-! ## A103365.P3706570825588374383

`abs(A103364(A000124(n)))*A033999(n)`
-/

namespace A103365.P3706570825588374383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103364 (A000124 n).toNat| * A033999 n

end

end A103365.P3706570825588374383

/-! ## A103365.P6861722209285558757

`A103364(A000124(n))^A011615(n²)`
-/

namespace A103365.P6861722209285558757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103364 (A000124 n).toNat : ℚ) ^ (A011615 (n ^ 2) : ℤ)

end

end A103365.P6861722209285558757

/-! ## A103365.P5728814377003704124

`A103364(A000124(n))^A001222(A015919(n+1))`
-/

namespace A103365.P5728814377003704124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103364 (A000124 n).toNat : ℚ) ^ (A001222 (A015919 (n + 1)).toNat : ℤ)

end

end A103365.P5728814377003704124

/-!
# A103366: Second column of triangle A103364, which equals the matrix inverse of the Narayana triangle (A001263).

The programs for A103366, there is no canonical definition to state claims against.
-/

/-! ## A103366.P5628071325565004541

`A103364(∑[n+1]+2)`
-/

namespace A103366.P5628071325565004541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103364 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A103366.P5628071325565004541

/-! ## A103366.P6279764567798140978

`∑[n+1]*A103365(n+1)`
-/

namespace A103366.P6279764567798140978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A103365 (n + 1)

end

end A103366.P6279764567798140978

/-! ## A103366.P1784533923043568611

`A000217(n+1)*A103364((n²+n)/2+1)`
-/

namespace A103366.P1784533923043568611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A103364 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2 + 1)).toNat

end

end A103366.P1784533923043568611

/-! ## A103366.P9324723854211125347

`∑[A008619(2*n)]*A103364(A000124(n))`
-/

namespace A103366.P9324723854211125347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A103364 (A000124 n).toNat

end

end A103366.P9324723854211125347

/-! ## A103366.P13495060782479643673

`record[A114327(n)+1+n]*A103364(A000124(n))`
-/

namespace A103366.P13495060782479643673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A103364 (A000124 n).toNat

end

end A103366.P13495060782479643673

/-!
# A103367: Absolute row sums of triangle A103364, which equals the matrix inverse of the Narayana triangle (A001263).

The programs for A103367, there is no canonical definition to state claims against.
-/

/-! ## A103367.P2165806589459048594

`A000720(A216831(n)+A007051(n))`
-/

namespace A103367.P2165806589459048594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A216831 n + A007051 n).toNat

end

end A103367.P2165806589459048594

/-! ## A103367.P15428326960051775468

`A361273(n)+A000720(A216831(n))`
-/

namespace A103367.P15428326960051775468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361273 n + A000720 (A216831 n).toNat

end

end A103367.P15428326960051775468

/-!
# A103368: Period 6: repeat [1, 1, -1, -1, 0, 0].

The programs for A103368, the canonical program `A103368.P9818634127368260020` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103368 has offset 0).

The definition of A103368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103368.P9818634127368260020

`round(acot(ϕ-n%6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103368

/-- `round(acot(ϕ-n%6))` -/
def P9818634127368260020.Spec : Prop :=
  ∀ n, P9818634127368260020.a n = A103368 n

theorem P9818634127368260020.correct : P9818634127368260020.Spec := by
  intro n
  simp only [A103368]

end A103368

/-!
# A103370: Row sums of triangle A095801 (matrix square of the Narayana triangle A001263).

The programs for A103370, there is no canonical definition to state claims against.
-/

/-! ## A103370.P6580528350289018755

`abs(A253093(n+2)/2)`
-/

namespace A103370.P6580528350289018755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A253093 (n + 2) : ℚ) / 2|

end

end A103370.P6580528350289018755

/-! ## A103370.P6686436165831985086

`record[ratio[A253093(A152271(n))]]`
-/

namespace A103370.P6686436165831985086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253093 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103370.P6686436165831985086

/-! ## A103370.P8341511814984305825

`char[A165281(n)]-A253093(n+2)/2`
-/

namespace A103370.P8341511814984305825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165281 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (A253093 (n + 2) : ℚ) / 2

end

end A103370.P8341511814984305825

/-! ## A103370.P13528238774221463472

`lcm(A253093(n+2)/2, A007318(∑[n]))`
-/

namespace A103370.P13528238774221463472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A253093 (n + 2) : ℚ) / 2)) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A103370.P13528238774221463472

/-! ## A103370.P9688777220717875137

`A064037(n)/A000108(n)`
-/

namespace A103370.P9688777220717875137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064037 n : ℚ) / (A000108 n : ℚ)

end

end A103370.P9688777220717875137

/-! ## A103370.P6352798022386743356

`A064037(n)/A120588(n+1)`
-/

namespace A103370.P6352798022386743356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064037 n : ℚ) / (A120588 (n + 1) : ℚ)

end

end A103370.P6352798022386743356

/-! ## A103370.P13389052787549997999

`A064037(n)/A028304(2*n)`
-/

namespace A103370.P13389052787549997999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064037 n : ℚ) / (A028304 (2 * n) : ℚ)

end

end A103370.P13389052787549997999

/-! ## A103370.P1618192208547348615

`A064037(n)/A126120(2*n)`
-/

namespace A103370.P1618192208547348615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064037 n : ℚ) / (A126120 (2 * n) : ℚ)

end

end A103370.P1618192208547348615

/-! ## A103370.P4847138537938627270

`A064037(n)/A097331(Δ[n²])`
-/

namespace A103370.P4847138537938627270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064037 n : ℚ) / (A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A103370.P4847138537938627270

/-! ## A103370.P336446758077347029

`A064037(n)/(A263986(n)+A000045(n))`
-/

namespace A103370.P336446758077347029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064037 n : ℚ) / (A263986 n + A000045 n : ℚ)

end

end A103370.P336446758077347029

/-!
# A103371: Number triangle T(n,k) = C(n,n-k)*C(n+1,n-k).

The programs for A103371, the canonical program `A103371.P12933832314662684566` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103371 has offset 0).

The definition of A103371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), row(n)-col(n))*C(row(n)+1, row(n)-col(n))` (program `A103371.P12933832314662684566`, by `A103371.P12933832314662684566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103371.P11928581585819875944

`C(row(n), col(n))*C(row(n)+1, col(n)+1)`
-/

namespace A103371.P11928581585819875944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1)

end

end A103371.P11928581585819875944

namespace A103371

/-- `C(row(n), col(n))*C(row(n)+1, col(n)+1)` -/
def P11928581585819875944.Spec : Prop :=
  ∀ n, (P11928581585819875944.a n : ℤ) = A103371 n

end A103371

/-! ## A103371.P12933832314662684566

`C(row(n), row(n)-col(n))*C(row(n)+1, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103371

/-- `C(row(n), row(n)-col(n))*C(row(n)+1, row(n)-col(n))` -/
def P12933832314662684566.Spec : Prop :=
  ∀ n, (P12933832314662684566.a n : ℤ) = A103371 n

theorem P12933832314662684566.correct : P12933832314662684566.Spec := by
  intro n
  simp only [A103371]

end A103371

/-! ## A103371.P16991541785802561791

`A335340(n+1)/2`
-/

namespace A103371.P16991541785802561791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335340 (n + 1) : ℚ) / 2

end

end A103371.P16991541785802561791

namespace A103371

/-- `A335340(n+1)/2` -/
def P16991541785802561791.Spec : Prop :=
  ∀ n, P16991541785802561791.a n = (A103371 n : ℚ)

theorem P16991541785802561791.correct : P16991541785802561791.Spec := by
  intro n
  simp only [A103371, Nat.add_sub_cancel, A103371.P16991541785802561791.a, A103371.P12933832314662684566.a, A335340, A335340.P11147850247702893830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A103371

/-! ## A103371.P9796281782617052183

`(C(comp[∑[n]]-n, 2)-n)*A001263(n+1)`
-/

namespace A103371.P9796281782617052183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A001263 (n + 1)

end

end A103371.P9796281782617052183

namespace A103371

/-- `(C(comp[∑[n]]-n, 2)-n)*A001263(n+1)` -/
def P9796281782617052183.Spec : Prop :=
  ∀ n, P9796281782617052183.a n = A103371 n

end A103371

/-! ## A103371.P1767565838390033863

`A191521(A004201(n+1))`
-/

namespace A103371.P1767565838390033863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191521 (A004201 (n + 1)).toNat

end

end A103371.P1767565838390033863

namespace A103371

/-- `A191521(A004201(n+1))` -/
def P1767565838390033863.Spec : Prop :=
  ∀ n, P1767565838390033863.a n = A103371 n

end A103371

/-! ## A103371.P12505102515609200163

`A007318(n)*A135278(n)`
-/

namespace A103371.P12505102515609200163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A135278 n

end

end A103371.P12505102515609200163

namespace A103371

/-- `A007318(n)*A135278(n)` -/
def P12505102515609200163.Spec : Prop :=
  ∀ n, P12505102515609200163.a n = A103371 n

end A103371

/-! ## A103371.P10543560225516979698

`A135227(n)*A184049(n)`
-/

namespace A103371.P10543560225516979698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A184049 n

end

end A103371.P10543560225516979698

namespace A103371

/-- `A135227(n)*A184049(n)` -/
def P10543560225516979698.Spec : Prop :=
  ∀ n, P10543560225516979698.a n = A103371 n

end A103371

/-! ## A103371.P18338353614849118943

`A118963(n+1)-A132813(n)`
-/

namespace A103371.P18338353614849118943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118963 (n + 1) - A132813 n

end

end A103371.P18338353614849118943

namespace A103371

/-- `A118963(n+1)-A132813(n)` -/
def P18338353614849118943.Spec : Prop :=
  ∀ n, P18338353614849118943.a n = A103371 n

end A103371

/-! ## A103371.P6553283718977951509

`A074909(n+1)*A007318(n)`
-/

namespace A103371.P6553283718977951509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A007318 n

end

end A103371.P6553283718977951509

namespace A103371

/-- `A074909(n+1)*A007318(n)` -/
def P6553283718977951509.Spec : Prop :=
  ∀ n, P6553283718977951509.a n = A103371 n

end A103371

/-! ## A103371.P18326605742963495201

`A028326(n)/2*A135278(n)`
-/

namespace A103371.P18326605742963495201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A135278 n : ℚ)

end

end A103371.P18326605742963495201

namespace A103371

/-- `A028326(n)/2*A135278(n)` -/
def P18326605742963495201.Spec : Prop :=
  ∀ n, P18326605742963495201.a n = (A103371 n : ℚ)

end A103371

/-! ## A103371.P14400988686207098923

`A007318(comp[∑[n]])*A007318(n)`
-/

namespace A103371.P14400988686207098923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A007318 n

end

end A103371.P14400988686207098923

namespace A103371

/-- `A007318(comp[∑[n]])*A007318(n)` -/
def P14400988686207098923.Spec : Prop :=
  ∀ n, P14400988686207098923.a n = A103371 n

end A103371

/-! ## A103371.P3413254274138415754

`Δ[A102363(n)]*A074909(n+1)`
-/

namespace A103371.P3413254274138415754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A074909 (n + 1)

end

end A103371.P3413254274138415754

namespace A103371

/-- `Δ[A102363(n)]*A074909(n+1)` -/
def P3413254274138415754.Spec : Prop :=
  ∀ n, P3413254274138415754.a n = A103371 n

end A103371

/-! ## A103371.P12951875213127358050

`A001263(n+1)*A004736(n+1)`
-/

namespace A103371.P12951875213127358050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A004736 (n + 1)

end

end A103371.P12951875213127358050

namespace A103371

/-- `A001263(n+1)*A004736(n+1)` -/
def P12951875213127358050.Spec : Prop :=
  ∀ n, P12951875213127358050.a n = A103371 n

end A103371

/-! ## A103371.P11034861404121559212

`(A025581(n)+1)*A001263(n+1)`
-/

namespace A103371.P11034861404121559212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A001263 (n + 1)

end

end A103371.P11034861404121559212

namespace A103371

/-- `(A025581(n)+1)*A001263(n+1)` -/
def P11034861404121559212.Spec : Prop :=
  ∀ n, P11034861404121559212.a n = A103371 n

end A103371

/-! ## A103371.P5261801587729694087

`A133084(n+1)*A133567(n+1)`
-/

namespace A103371.P5261801587729694087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1) * A133567 (n + 1)

end

end A103371.P5261801587729694087

namespace A103371

/-- `A133084(n+1)*A133567(n+1)` -/
def P5261801587729694087.Spec : Prop :=
  ∀ n, P5261801587729694087.a n = A103371 n

end A103371

/-! ## A103371.P16069217218763731219

`ceil(A099375(n)/2)*A001263(n+1)`
-/

namespace A103371.P16069217218763731219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉ * A001263 (n + 1)

end

end A103371.P16069217218763731219

namespace A103371

/-- `ceil(A099375(n)/2)*A001263(n+1)` -/
def P16069217218763731219.Spec : Prop :=
  ∀ n, P16069217218763731219.a n = A103371 n

end A103371

/-! ## A103371.P15388934674088293500

`ceil(A174124(n)/2)*A004736(n+1)`
-/

namespace A103371.P15388934674088293500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174124 n : ℚ) / 2⌉ * A004736 (n + 1)

end

end A103371.P15388934674088293500

namespace A103371

/-- `ceil(A174124(n)/2)*A004736(n+1)` -/
def P15388934674088293500.Spec : Prop :=
  ∀ n, P15388934674088293500.a n = A103371 n

end A103371

/-! ## A103371.P5487268861224903780

`ceil(A134059(n)/3)*A074909(n+1)`
-/

namespace A103371.P5487268861224903780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A074909 (n + 1)

end

end A103371.P5487268861224903780

namespace A103371

/-- `ceil(A134059(n)/3)*A074909(n+1)` -/
def P5487268861224903780.Spec : Prop :=
  ∀ n, P5487268861224903780.a n = A103371 n

end A103371

/-! ## A103371.P14269038371150122332

`A001263(n+1)/2*A212012(n+1)`
-/

namespace A103371.P14269038371150122332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / 2 * (A212012 (n + 1) : ℚ)

end

end A103371.P14269038371150122332

namespace A103371

/-- `A001263(n+1)/2*A212012(n+1)` -/
def P14269038371150122332.Spec : Prop :=
  ∀ n, P14269038371150122332.a n = (A103371 n : ℚ)

end A103371

/-! ## A103371.P6037081025688701457

`(A127739(n+1)-n)*A001263(n+1)`
-/

namespace A103371.P6037081025688701457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n : ℤ)) * A001263 (n + 1)

end

end A103371.P6037081025688701457

namespace A103371

/-- `(A127739(n+1)-n)*A001263(n+1)` -/
def P6037081025688701457.Spec : Prop :=
  ∀ n, P6037081025688701457.a n = A103371 n

end A103371

/-!
# A103372: a(1) = a(2) = a(3) = a(4) = a(5) = 1 and for n>5: a(n) = a(n-4) + a(n-5).

The programs for A103372, the canonical program `A103372.P15102452209428766929` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103372 has offset 1).

The definition of A103372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+a(n-5)` (program `A103372.P15102452209428766929`, by `A103372.P15102452209428766929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103372.P15102452209428766929

`a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103372

/-- `a(n-4)+a(n-5)` -/
def P15102452209428766929.Spec : Prop :=
  ∀ n, (P15102452209428766929.a n : ℤ) = A103372 (n + 1)

theorem P15102452209428766929.correct : P15102452209428766929.Spec := by
  intro n
  simp only [A103372, Nat.add_sub_cancel]

end A103372

/-! ## A103372.P15157344573805390196

`A124789(n+4)`
-/

namespace A103372.P15157344573805390196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 4)

end

end A103372.P15157344573805390196

namespace A103372

/-- `A124789(n+4)` -/
def P15157344573805390196.Spec : Prop :=
  ∀ n, P15157344573805390196.a n = A103372 (n + 1)

end A103372

/-! ## A103372.P3380222162293624402

`∑[A127839(n+1)]`
-/

namespace A103372.P3380222162293624402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103372.P3380222162293624402

namespace A103372

/-- `∑[A127839(n+1)]` -/
def P3380222162293624402.Spec : Prop :=
  ∀ n, P3380222162293624402.a n = A103372 (n + 1)

end A103372

/-! ## A103372.P10200003788940516607

`∑[A017827(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A103372.P10200003788940516607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A017827 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103372.P10200003788940516607

namespace A103372

/-- `∑[A017827(n-1)-a(n-1)]` -/
def P10200003788940516607.Spec : Prop :=
  ∀ n, P10200003788940516607.a n = A103372 (n + 1)

end A103372

/-! ## A103372.P1582245964159854558

`ogf((1+x+x^2+x^3)/(1-x^4-x^5))`
-/

namespace A103372.P1582245964159854558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, 0, 0, 0, -1, -1] n

end

end A103372.P1582245964159854558

namespace A103372

/-- `ogf((1+x+x^2+x^3)/(1-x^4-x^5))` -/
def P1582245964159854558.Spec : Prop :=
  ∀ n, P1582245964159854558.a n = A103372 (n + 1)

end A103372

/-! ## A103372.P10831249692085806066

`Δ[A321025(n+1)]`
-/

namespace A103372.P10831249692085806066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103372.P10831249692085806066

namespace A103372

/-- `Δ[A321025(n+1)]` -/
def P10831249692085806066.Spec : Prop :=
  ∀ n, P10831249692085806066.a n = A103372 (n + 1)

end A103372

/-! ## A103372.P17878795354664088288

`A321025(n+2)-A321025(n+1)`
-/

namespace A103372.P17878795354664088288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321025 (n + 2) - A321025 (n + 1)

end

end A103372.P17878795354664088288

namespace A103372

/-- `A321025(n+2)-A321025(n+1)` -/
def P17878795354664088288.Spec : Prop :=
  ∀ n, P17878795354664088288.a n = A103372 (n + 1)

end A103372

/-!
# A103373: a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = 1 and for n>6: a(n) = a(n-5) + a(n-6).

The programs for A103373, the canonical program `A103373.P1063556955652256572` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103373 has offset 1).

The definition of A103373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-5)+a(n-6)` (program `A103373.P1063556955652256572`, by `A103373.P1063556955652256572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103373.P1063556955652256572

`a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103373

/-- `a(n-5)+a(n-6)` -/
def P1063556955652256572.Spec : Prop :=
  ∀ n, (P1063556955652256572.a n : ℤ) = A103373 (n + 1)

theorem P1063556955652256572.correct : P1063556955652256572.Spec := by
  intro n
  simp only [A103373, Nat.add_sub_cancel]

end A103373

/-! ## A103373.P1798351455053092673

`∑[A127840(n+1)]`
-/

namespace A103373.P1798351455053092673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103373.P1798351455053092673

namespace A103373

/-- `∑[A127840(n+1)]` -/
def P1798351455053092673.Spec : Prop :=
  ∀ n, P1798351455053092673.a n = A103373 (n + 1)

end A103373

/-! ## A103373.P3377923366240991550

`A017837(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A103373.P3377923366240991550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A017837 (n - 1) + a (n - 2)

end

end A103373.P3377923366240991550

namespace A103373

/-- `A017837(n-1)+a(n-2)` -/
def P3377923366240991550.Spec : Prop :=
  ∀ n, P3377923366240991550.a n = A103373 (n + 1)

end A103373

/-! ## A103373.P1391892297496740812

`A127840(n+6)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A103373.P1391892297496740812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A127840 (n + 6) + a (n - 2)

end

end A103373.P1391892297496740812

namespace A103373

/-- `A127840(n+6)+a(n-2)` -/
def P1391892297496740812.Spec : Prop :=
  ∀ n, P1391892297496740812.a n = A103373 (n + 1)

end A103373

/-! ## A103373.P1676647007016245242

`∑[A017837(n-6%A244800(n+1))]`
-/

namespace A103373.P1676647007016245242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 ((n : ℤ) - Int.tmod 6 (A244800 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103373.P1676647007016245242

namespace A103373

/-- `∑[A017837(n-6%A244800(n+1))]` -/
def P1676647007016245242.Spec : Prop :=
  ∀ n, P1676647007016245242.a n = A103373 (n + 1)

end A103373

/-!
# A103374: a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = a(7) = 1 and for n>7: a(n) = a(n-6) + a(n-7).

The programs for A103374, the canonical program `A103374.P9598892074998833227` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103374 has offset 1).

The definition of A103374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-6)+a(n-7)` (program `A103374.P9598892074998833227`, by `A103374.P9598892074998833227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103374.P9598892074998833227

`a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103374

/-- `a(n-6)+a(n-7)` -/
def P9598892074998833227.Spec : Prop :=
  ∀ n, (P9598892074998833227.a n : ℤ) = A103374 (n + 1)

theorem P9598892074998833227.correct : P9598892074998833227.Spec := by
  intro n
  simp only [A103374, Nat.add_sub_cancel]

end A103374

/-! ## A103374.P2255610600785267882

`∑[A127841(n+1)]`
-/

namespace A103374.P2255610600785267882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103374.P2255610600785267882

namespace A103374

/-- `∑[A127841(n+1)]` -/
def P2255610600785267882.Spec : Prop :=
  ∀ n, P2255610600785267882.a n = A103374 (n + 1)

end A103374

/-! ## A103374.P14078541103688223898

`∑[A017847(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A103374.P14078541103688223898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A017847 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103374.P14078541103688223898

namespace A103374

/-- `∑[A017847(n-1)-a(n-1)]` -/
def P14078541103688223898.Spec : Prop :=
  ∀ n, P14078541103688223898.a n = A103374 (n + 1)

end A103374

/-! ## A103374.P15989197588075832596

`A127841(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A103374.P15989197588075832596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127841 (n + 1) + a (A023443 n).toNat

end

end A103374.P15989197588075832596

namespace A103374

/-- `A127841(n+1)+a(A023443(n))` -/
def P15989197588075832596.Spec : Prop :=
  ∀ n, P15989197588075832596.a n = A103374 (n + 1)

end A103374

/-! ## A103374.P1678017943153709724

`∑[A306755(n)-6*A017847(n)]`
-/

namespace A103374.P1678017943153709724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306755 n - 6 * A017847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103374.P1678017943153709724

namespace A103374

/-- `∑[A306755(n)-6*A017847(n)]` -/
def P1678017943153709724.Spec : Prop :=
  ∀ n, P1678017943153709724.a n = A103374 (n + 1)

end A103374

/-! ## A103374.P15457478012607977398

`abs(A124751(n+6))`
-/

namespace A103374.P15457478012607977398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124751 (n + 6)|

end

end A103374.P15457478012607977398

namespace A103374

/-- `abs(A124751(n+6))` -/
def P15457478012607977398.Spec : Prop :=
  ∀ n, P15457478012607977398.a n = A103374 (n + 1)

end A103374

/-! ## A103374.P12686549955882811136

`∑[A306755(n)%A008486(A017847(n))]`
-/

namespace A103374.P12686549955882811136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306755 n) (A008486 (A017847 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103374.P12686549955882811136

namespace A103374

/-- `∑[A306755(n)%A008486(A017847(n))]` -/
def P12686549955882811136.Spec : Prop :=
  ∀ n, P12686549955882811136.a n = A103374 (n + 1)

end A103374

/-! ## A103374.P4150526447895429400

`A110657(4*A127841(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A103374.P4150526447895429400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110657 (4 * A127841 (n + 1)).toNat + a (n - 1)

end

end A103374.P4150526447895429400

namespace A103374

/-- `A110657(4*A127841(n+1))+a(n-1)` -/
def P4150526447895429400.Spec : Prop :=
  ∀ n, P4150526447895429400.a n = A103374 (n + 1)

end A103374

/-!
# A103375: a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = a(7) = a(8) = 1 and for n>8: a(n) = a(n-7) + a(n-8).

The programs for A103375, the canonical program `A103375.P14340362622330604756` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103375 has offset 1).

The definition of A103375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-7)+a(n-8)` (program `A103375.P14340362622330604756`, by `A103375.P14340362622330604756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103375.P14340362622330604756

`a(n-7)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103375

/-- `a(n-7)+a(n-8)` -/
def P14340362622330604756.Spec : Prop :=
  ∀ n, (P14340362622330604756.a n : ℤ) = A103375 (n + 1)

theorem P14340362622330604756.correct : P14340362622330604756.Spec := by
  intro n
  simp only [A103375, Nat.add_sub_cancel]

end A103375

/-! ## A103375.P13063858788847519139

`∑[A127842(n+1)]`
-/

namespace A103375.P13063858788847519139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103375.P13063858788847519139

namespace A103375

/-- `∑[A127842(n+1)]` -/
def P13063858788847519139.Spec : Prop :=
  ∀ n, P13063858788847519139.a n = A103375 (n + 1)

end A103375

/-! ## A103375.P11776010139819897607

`A017857(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A103375.P11776010139819897607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A017857 (n - 1) + a (n - 2)

end

end A103375.P11776010139819897607

namespace A103375

/-- `A017857(n-1)+a(n-2)` -/
def P11776010139819897607.Spec : Prop :=
  ∀ n, P11776010139819897607.a n = A103375 (n + 1)

end A103375

/-! ## A103375.P2085863693236948749

`A028310(∑[A017857(n-1)-a(n-1)])` with `a(0)=1`
-/

namespace A103375.P2085863693236948749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A017857 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103375.P2085863693236948749

namespace A103375

/-- `A028310(∑[A017857(n-1)-a(n-1)])` -/
def P2085863693236948749.Spec : Prop :=
  ∀ n, P2085863693236948749.a n = A103375 (n + 1)

end A103375

/-! ## A103375.P1912821937787252207

`A103376(lt[A335665(3*n+5), A121047(n)])`
-/

namespace A103375.P1912821937787252207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335665 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103375.P1912821937787252207

namespace A103375

/-- `A103376(lt[A335665(3*n+5), A121047(n)])` -/
def P1912821937787252207.Spec : Prop :=
  ∀ n, P1912821937787252207.a n = A103375 (n + 1)

end A103375

/-!
# A103376: a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = a(7) = a(8) = a(9) = 1 and for n>9: a(n) = a(n-8) + a(n-9).

The programs for A103376, the canonical program `A103376.P903646968251110584` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103376 has offset 1).

The definition of A103376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-8)+a(n-9)` (program `A103376.P903646968251110584`, by `A103376.P903646968251110584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103376.P903646968251110584

`a(n-8)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103376

/-- `a(n-8)+a(n-9)` -/
def P903646968251110584.Spec : Prop :=
  ∀ n, (P903646968251110584.a n : ℤ) = A103376 (n + 1)

theorem P903646968251110584.correct : P903646968251110584.Spec := by
  intro n
  simp only [A103376, Nat.add_sub_cancel]

end A103376

/-! ## A103376.P13661234973371011859

`∑[A127843(n+1)]`
-/

namespace A103376.P13661234973371011859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103376.P13661234973371011859

namespace A103376

/-- `∑[A127843(n+1)]` -/
def P13661234973371011859.Spec : Prop :=
  ∀ n, P13661234973371011859.a n = A103376 (n + 1)

end A103376

/-! ## A103376.P4948912939121042693

`A017867(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A103376.P4948912939121042693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A017867 (n - 1) + a (n - 2)

end

end A103376.P4948912939121042693

namespace A103376

/-- `A017867(n-1)+a(n-2)` -/
def P4948912939121042693.Spec : Prop :=
  ∀ n, P4948912939121042693.a n = A103376 (n + 1)

end A103376

/-! ## A103376.P11713777735147638655

`A127843(char[1]+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A103376.P11713777735147638655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127843 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + a (n - 1)

end

end A103376.P11713777735147638655

namespace A103376

/-- `A127843(char[1]+1+n)+a(n-1)` -/
def P11713777735147638655.Spec : Prop :=
  ∀ n, P11713777735147638655.a n = A103376 (n + 1)

end A103376

/-! ## A103376.P7876574272356411125

`∑[A306757(n)-8*A017867(n)]`
-/

namespace A103376.P7876574272356411125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306757 n - 8 * A017867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103376.P7876574272356411125

namespace A103376

/-- `∑[A306757(n)-8*A017867(n)]` -/
def P7876574272356411125.Spec : Prop :=
  ∀ n, P7876574272356411125.a n = A103376 (n + 1)

end A103376

/-! ## A103376.P5542329110335865738

`A103378(A344543(n+1))`
-/

namespace A103376.P5542329110335865738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (A344543 (n + 1)).toNat

end

end A103376.P5542329110335865738

namespace A103376

/-- `A103378(A344543(n+1))` -/
def P5542329110335865738.Spec : Prop :=
  ∀ n, P5542329110335865738.a n = A103376 (n + 1)

end A103376

/-! ## A103376.P9716485824439400572

`A103377(lt[A189298(n+1), A090842(n)])`
-/

namespace A103376.P9716485824439400572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103376.P9716485824439400572

namespace A103376

/-- `A103377(lt[A189298(n+1), A090842(n)])` -/
def P9716485824439400572.Spec : Prop :=
  ∀ n, P9716485824439400572.a n = A103376 (n + 1)

end A103376

/-! ## A103376.P2811378328632826653

`A103377(lt[A103377(n+1), A321801(n)])`
-/

namespace A103376.P2811378328632826653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103376.P2811378328632826653

namespace A103376

/-- `A103377(lt[A103377(n+1), A321801(n)])` -/
def P2811378328632826653.Spec : Prop :=
  ∀ n, P2811378328632826653.a n = A103376 (n + 1)

end A103376

/-!
# A103377: a(1)=a(2)=...=a(10)=1, a(n)=a(n-9)+a(n-10).

The programs for A103377, the canonical program `A103377.P16957439694459968689` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103377 has offset 1).

The definition of A103377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-9)+a(n-10)` (program `A103377.P16957439694459968689`, by `A103377.P16957439694459968689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103377.P16957439694459968689

`a(n-9)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103377

/-- `a(n-9)+a(n-10)` -/
def P16957439694459968689.Spec : Prop :=
  ∀ n, (P16957439694459968689.a n : ℤ) = A103377 (n + 1)

theorem P16957439694459968689.correct : P16957439694459968689.Spec := by
  intro n
  simp only [A103377, Nat.add_sub_cancel]

end A103377

/-! ## A103377.P10648957436274735877

`∑[A127844(n+1)]`
-/

namespace A103377.P10648957436274735877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103377.P10648957436274735877

namespace A103377

/-- `∑[A127844(n+1)]` -/
def P10648957436274735877.Spec : Prop :=
  ∀ n, P10648957436274735877.a n = A103377 (n + 1)

end A103377

/-! ## A103377.P2377298201135291404

`A017877(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A103377.P2377298201135291404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A017877 (n - 1) + a (n - 2)

end

end A103377.P2377298201135291404

namespace A103377

/-- `A017877(n-1)+a(n-2)` -/
def P2377298201135291404.Spec : Prop :=
  ∀ n, P2377298201135291404.a n = A103377 (n + 1)

end A103377

/-! ## A103377.P6788253538977026607

`A103378(A052382(n+1)%(5*A087709(n+1)))`
-/

namespace A103377.P6788253538977026607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (Int.tmod (A052382 (n + 1)) (5 * A087709 (n + 1))).toNat

end

end A103377.P6788253538977026607

namespace A103377

/-- `A103378(A052382(n+1)%(5*A087709(n+1)))` -/
def P6788253538977026607.Spec : Prop :=
  ∀ n, P6788253538977026607.a n = A103377 (n + 1)

end A103377

/-! ## A103377.P4988200196556709452

`A103380(A080672(n+1)%A340656(n+1))`
-/

namespace A103377.P4988200196556709452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103380 (Int.tmod (A080672 (n + 1)) (A340656 (n + 1))).toNat

end

end A103377.P4988200196556709452

namespace A103377

/-- `A103380(A080672(n+1)%A340656(n+1))` -/
def P4988200196556709452.Spec : Prop :=
  ∀ n, P4988200196556709452.a n = A103377 (n + 1)

end A103377

/-! ## A103377.P10449857006229608638

`A103378(A052382(n+1))%(5*A087706(n+2))`
-/

namespace A103377.P10449857006229608638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103378 (A052382 (n + 1)).toNat) (5 * A087706 (n + 2))

end

end A103377.P10449857006229608638

namespace A103377

/-- `A103378(A052382(n+1))%(5*A087706(n+2))` -/
def P10449857006229608638.Spec : Prop :=
  ∀ n, P10449857006229608638.a n = A103377 (n + 1)

end A103377

/-! ## A103377.P1949323607584514161

`A103378(A052382(n+1))%A008587(A087706(n+2))`
-/

namespace A103377.P1949323607584514161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103378 (A052382 (n + 1)).toNat) (A008587 (A087706 (n + 2)).toNat)

end

end A103377.P1949323607584514161

namespace A103377

/-- `A103378(A052382(n+1))%A008587(A087706(n+2))` -/
def P1949323607584514161.Spec : Prop :=
  ∀ n, P1949323607584514161.a n = A103377 (n + 1)

end A103377

/-!
# A103378: a(n) = a(n-10) + a(n-11) for n > 11, and a(n) = 1 for 1 <= n <= 11.

The programs for A103378, the canonical program `A103378.P1957053694744479046` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103378 has offset 1).

The definition of A103378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103378.P1957053694744479046

`A017887(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103378

/-- `A017887(n-1)+a(n-2)` -/
def P1957053694744479046.Spec : Prop :=
  ∀ n, P1957053694744479046.a n = A103378 (n + 1)

theorem P1957053694744479046.correct : P1957053694744479046.Spec := by
  intro n
  simp only [A103378, Nat.add_sub_cancel]

end A103378

/-! ## A103378.P17854304499137434121

`A103377(A106744(n+1)+1)`
-/

namespace A103378.P17854304499137434121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (A106744 (n + 1) + 1).toNat

end

end A103378.P17854304499137434121

namespace A103378

/-- `A103377(A106744(n+1)+1)` -/
def P17854304499137434121.Spec : Prop :=
  ∀ n, P17854304499137434121.a n = A103378 (n + 1)

end A103378

/-! ## A103378.P12294543000491773459

`A103377(A106744(n+2))`
-/

namespace A103378.P12294543000491773459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (A106744 (n + 2)).toNat

end

end A103378.P12294543000491773459

namespace A103378

/-- `A103377(A106744(n+2))` -/
def P12294543000491773459.Spec : Prop :=
  ∀ n, P12294543000491773459.a n = A103378 (n + 1)

end A103378

/-! ## A103378.P16626040372935517879

`A103376(A318916(n+2))`
-/

namespace A103378.P16626040372935517879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103376 (A318916 (n + 2)).toNat

end

end A103378.P16626040372935517879

namespace A103378

/-- `A103376(A318916(n+2))` -/
def P16626040372935517879.Spec : Prop :=
  ∀ n, P16626040372935517879.a n = A103378 (n + 1)

end A103378

/-!
# A103379: a(n) = a(n-11) + a(n-12).

The programs for A103379, there is no canonical definition to state claims against.
-/

/-! ## A103379.P8172442683110394184

`A103380(lt[A050326(n+1), A296827(3*n+2)])`
-/

namespace A103379.P8172442683110394184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296827 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103379.P8172442683110394184

/-! ## A103379.P12759299063068281556

`A103380(A333768(2*n+1)+A046100(n+1))`
-/

namespace A103379.P12759299063068281556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103380 (A333768 (2 * n + 1) + A046100 (n + 1)).toNat

end

end A103379.P12759299063068281556

/-! ## A103379.P12143708153262229638

`A103380(lt[A109337(n+1), A348686(n+1)])`
-/

namespace A103379.P12143708153262229638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103379.P12143708153262229638

/-! ## A103379.P11018487116389612000

`A103380(lt[A348712(n+1), A348686(n+1)])`
-/

namespace A103379.P11018487116389612000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103379.P11018487116389612000

/-! ## A103379.P17538301130038427214

`A103380(lt[A327144(2*(n+2)), A238279(n)])`
-/

namespace A103379.P17538301130038427214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103379.P17538301130038427214

/-!
# A103380: a(n) = a(n-12) + a(n-13).

The programs for A103380, there is no canonical definition to state claims against.
-/

/-! ## A103380.P5856385422324819381

`A103379(n-A059995(n)%A097598(n)+1)`
-/

namespace A103380.P5856385422324819381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103379 ((n : ℤ) - Int.tmod (A059995 n) (A097598 n) + 1).toNat

end

end A103380.P5856385422324819381

/-! ## A103380.P14259570366890745465

`A109703(floor(n/ϕ)%A105543(n))`
-/

namespace A103380.P14259570366890745465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109703 (Int.tmod ⌊(n : ℝ) / Real.goldenRatio⌋ (A105543 n)).toNat

end

end A103380.P14259570366890745465

/-! ## A103380.P4681085672212270192

`∑[A353373(A245355(n)+A141690(n+3))]`
-/

namespace A103380.P4681085672212270192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353373 (A245355 n + A141690 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103380.P4681085672212270192

/-! ## A103380.P15111090024450470516

`∑[A145649(A252148(n+1)+A025586(n+1))]+1`
-/

namespace A103380.P15111090024450470516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A252148 (n + 1) + A025586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A103380.P15111090024450470516

/-! ## A103380.P7142174548763002432

`A103374(A075324(n+1))`
-/

namespace A103380.P7142174548763002432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103374 (A075324 (n + 1)).toNat

end

end A103380.P7142174548763002432

/-!
# A103381: Numbers which are the sum of four distinct squares, a^2+b^2+c^2+d^2, such that a^2+b^2, c^2+d^2, a^2+d^2 and b^2+c^2 are all prime.

The programs for A103381, there is no canonical definition to state claims against.
-/

/-! ## A103381.P6023959479731087670

`A272305(A272327(n+1)+A047550(2*n+5))`
-/

namespace A103381.P6023959479731087670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272305 (A272327 (n + 1) + A047550 (2 * n + 5)).toNat

end

end A103381.P6023959479731087670

/-!
# A103382: Primes in A103372.

The programs for A103382, there is no canonical definition to state claims against.
-/

/-! ## A103382.P11990639190757190230

`p?[record[A124789(n)]]`
-/

namespace A103382.P11990639190757190230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103382.P11990639190757190230

/-! ## A103382.P16895638825950498353

`p?[A103372(n+9)]`
-/

namespace A103382.P16895638825950498353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103382.P16895638825950498353

/-! ## A103382.P2546266487015168110

`p?[A124789(n+12)]`
-/

namespace A103382.P2546266487015168110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103382.P2546266487015168110

/-! ## A103382.P8888691486569592016

`p?[A174522(n+3)+1]`
-/

namespace A103382.P8888691486569592016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174522 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103382.P8888691486569592016

/-! ## A103382.P7561696145441321932

`p?[record[A103372(A052938(n))]]`
-/

namespace A103382.P7561696145441321932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103382.P7561696145441321932

/-!
# A103383: Primes in A103373.

The programs for A103383, there is no canonical definition to state claims against.
-/

/-! ## A103383.P4810358168397432548

`p?[A103373(n+11)]`
-/

namespace A103383.P4810358168397432548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103383.P4810358168397432548

/-! ## A103383.P4398029791446753084

`p?[record[A103373(A052938(n))]]`
-/

namespace A103383.P4398029791446753084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103383.P4398029791446753084

/-! ## A103383.P8874355853492229492

`p?[record[A103373(A133310(n))]]`
-/

namespace A103383.P8874355853492229492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103383.P8874355853492229492

/-! ## A103383.P13965297284849440614

`p?[record[A103373(A267806(n))]]`
-/

namespace A103383.P13965297284849440614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (A267806 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103383.P13965297284849440614

/-! ## A103383.P1654152667279403200

`record[A020639(A103373(n+7))]`
-/

namespace A103383.P1654152667279403200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103373 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103383.P1654152667279403200

/-!
# A103384: Primes in A103374.

The programs for A103384, there is no canonical definition to state claims against.
-/

/-! ## A103384.P1811164896240151051

`p?[A103374(n+13)]`
-/

namespace A103384.P1811164896240151051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103374 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103384.P1811164896240151051

/-! ## A103384.P15632892974366822208

`p?[record[A103374(A133310(n))]]`
-/

namespace A103384.P15632892974366822208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103374 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103384.P15632892974366822208

/-! ## A103384.P3624827969403442259

`p?[record[A103374(A291766(n))]]`
-/

namespace A103384.P3624827969403442259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103374 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103384.P3624827969403442259

/-! ## A103384.P6585475791842135921

`p?[record[A103374(A291769(n))]]`
-/

namespace A103384.P6585475791842135921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103374 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103384.P6585475791842135921

/-! ## A103384.P7104273135879512579

`p?[record[A103374(A324346(n))]]`
-/

namespace A103384.P7104273135879512579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103374 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103384.P7104273135879512579

/-!
# A103385: Primes in A103375.

The programs for A103385, there is no canonical definition to state claims against.
-/

/-! ## A103385.P17065957833248791278

`p?[A103375(n+15)]`
-/

namespace A103385.P17065957833248791278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103385.P17065957833248791278

/-! ## A103385.P9940278769796019245

`p?[record[A103375(A052938(n))]]`
-/

namespace A103385.P9940278769796019245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103385.P9940278769796019245

/-! ## A103385.P6490357037332524684

`p?[record[A103375(A133310(n))]]`
-/

namespace A103385.P6490357037332524684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103385.P6490357037332524684

/-! ## A103385.P13071784680972672387

`p?[record[A103375(A291766(n))]]`
-/

namespace A103385.P13071784680972672387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103385.P13071784680972672387

/-! ## A103385.P15720981714910647431

`record[A006530(A103375(n+9))]`
-/

namespace A103385.P15720981714910647431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A103375 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103385.P15720981714910647431

/-!
# A103386: Primes in A103376.

The programs for A103386, there is no canonical definition to state claims against.
-/

/-! ## A103386.P9181340024823188310

`p?[record[A103376(A052938(n))]]`
-/

namespace A103386.P9181340024823188310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103376 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103386.P9181340024823188310

/-! ## A103386.P14632291130122606049

`p?[record[A103376(A133310(n))]]`
-/

namespace A103386.P14632291130122606049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103376 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103386.P14632291130122606049

/-! ## A103386.P18150595340578737282

`p?[record[A103376(A291766(n))]]`
-/

namespace A103386.P18150595340578737282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103376 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103386.P18150595340578737282

/-! ## A103386.P11695088546135943361

`p?[record[A103376(A032742(n+1))]]`
-/

namespace A103386.P11695088546135943361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103376 (A032742 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103386.P11695088546135943361

/-! ## A103386.P11311129274459777344

`p?[A185044(n+1)+A103389(n+1)]`
-/

namespace A103386.P11311129274459777344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (n + 1) + A103389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103386.P11311129274459777344

/-!
# A103387: Primes in A103377.

The programs for A103387, there is no canonical definition to state claims against.
-/

/-! ## A103387.P11492716649739511637

`p?[A103377(n+16-a(C(2, n)))]` with `a(0)=-1, a(1)=-1`
-/

namespace A103387.P11492716649739511637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  A103377 ((n + 16 : ℤ) - f1 (Nat.choose 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103387.P11492716649739511637

/-! ## A103387.P8975451061553107725

`p?[record[A103377(A133310(n))]]`
-/

namespace A103387.P8975451061553107725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103387.P8975451061553107725

/-! ## A103387.P10578220168267183853

`p?[record[A103377(A291769(n))]]`
-/

namespace A103387.P10578220168267183853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103387.P10578220168267183853

/-! ## A103387.P9507529858948739897

`p?[record[A103377(A324347(n))]]`
-/

namespace A103387.P9507529858948739897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103387.P9507529858948739897

/-! ## A103387.P13592087229554093024

`p?[record[A103377(A331300(n))]]`
-/

namespace A103387.P13592087229554093024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103387.P13592087229554093024

/-!
# A103388: Primes in A103378.

The programs for A103388, there is no canonical definition to state claims against.
-/

/-! ## A103388.P14558978369441369304

`p?[record[A103378(A052938(n))]]`
-/

namespace A103388.P14558978369441369304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103388.P14558978369441369304

/-! ## A103388.P2978305841081544577

`p?[record[A103378(A133310(n))]]`
-/

namespace A103388.P2978305841081544577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103388.P2978305841081544577

/-! ## A103388.P894937323141164539

`p?[record[A103378(A291766(n))]]`
-/

namespace A103388.P894937323141164539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103388.P894937323141164539

/-! ## A103388.P6115130986205370023

`p?[record[A103378(A291769(n))]]`
-/

namespace A103388.P6115130986205370023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103388.P6115130986205370023

/-! ## A103388.P11568407561244251451

`p?[record[A103378(A324347(n))]]`
-/

namespace A103388.P11568407561244251451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103388.P11568407561244251451

/-!
# A103389: Primes in A103379.

The programs for A103389, there is no canonical definition to state claims against.
-/

/-! ## A103389.P12983649124827300916

`p?[record[A103379(A133310(n))]]`
-/

namespace A103389.P12983649124827300916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103379 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103389.P12983649124827300916

/-! ## A103389.P10323120140555769720

`p?[record[A103379(A291766(n))]]`
-/

namespace A103389.P10323120140555769720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103379 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103389.P10323120140555769720

/-! ## A103389.P14636773791982365586

`p?[record[A103379(A291769(n))]]`
-/

namespace A103389.P14636773791982365586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103379 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103389.P14636773791982365586

/-! ## A103389.P10953271335010880366

`p?[record[A103379(A324347(n))]]`
-/

namespace A103389.P10953271335010880366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103379 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103389.P10953271335010880366

/-! ## A103389.P339443205792688438

`p?[record[A103379(A331300(n))]]`
-/

namespace A103389.P339443205792688438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103379 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103389.P339443205792688438

/-!
# A103390: Natural numbers but with nonprimes squared.

The programs for A103390, the canonical program `A103390.P2202769410101344544` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103390 has offset 1).

The definition of A103390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103390.P1874766304184324106

`n^gcd(2, ∑{e}[n, #]!)`
-/

namespace A103390.P1874766304184324106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A103390.P1874766304184324106

namespace A103390

/-- `n^gcd(2, ∑{e}[n, #]!)` -/
def P1874766304184324106.Spec : Prop :=
  ∀ n, (P1874766304184324106.a n : ℤ) = A103390 (n + 1)

end A103390

/-! ## A103390.P9521018904796556448

`n*gcd(n, A055672(n))`
-/

namespace A103390.P9521018904796556448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (n : ℤ) (A055672 n)

end

end A103390.P9521018904796556448

namespace A103390

/-- `n*gcd(n, A055672(n))` -/
def P9521018904796556448.Spec : Prop :=
  ∀ n, (P9521018904796556448.a n : ℤ) = A103390 (n + 1)

end A103390

/-! ## A103390.P15035260690219651070

`∑[2*n]-A103164(n)`
-/

namespace A103390.P15035260690219651070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A103164 n

end

end A103390.P15035260690219651070

namespace A103390

/-- `∑[2*n]-A103164(n)` -/
def P15035260690219651070.Spec : Prop :=
  ∀ n, P15035260690219651070.a n = A103390 (n + 1)

theorem P15035260690219651070.correct : P15035260690219651070.Spec := by
  intro n
  simp only [A103390, Nat.add_sub_cancel, A103390.P15035260690219651070.f1, A103390.P15035260690219651070.a, A103390.P2202769410101344544.a, A005451, A005451.P1346207900117674736.f1, A005451.P1346207900117674736.a, A103164, A103164.P6788878018473161368.f1, A103164.P6788878018473161368.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A103390

/-! ## A103390.P5588247877843278385

`gcd(n-A282462(n), n²)`
-/

namespace A103390.P5588247877843278385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A282462 n) (n ^ 2 : ℤ)

end

end A103390.P5588247877843278385

namespace A103390

/-- `gcd(n-A282462(n), n²)` -/
def P5588247877843278385.Spec : Prop :=
  ∀ n, (P5588247877843278385.a n : ℤ) = A103390 (n + 1)

end A103390

/-! ## A103390.P2202769410101344544

`n*A005451(abs(1-n)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A103390

/-- `n*A005451(abs(1-n)+1)` -/
def P2202769410101344544.Spec : Prop :=
  ∀ n, P2202769410101344544.a n = A103390 (n + 1)

theorem P2202769410101344544.correct : P2202769410101344544.Spec := by
  intro n
  simp only [A103390, Nat.add_sub_cancel]

end A103390

/-! ## A103390.P15073079038974702888

`n^(char[A002808(n+1)]+1)`
-/

namespace A103390.P15073079038974702888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A103390.P15073079038974702888

namespace A103390

/-- `n^(char[A002808(n+1)]+1)` -/
def P15073079038974702888.Spec : Prop :=
  ∀ n, (P15073079038974702888.a n : ℤ) = A103390 (n + 1)

end A103390

/-! ## A103390.P15391719889842173242

`n^(char[A018252(n+1)]+1)`
-/

namespace A103390.P15391719889842173242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A103390.P15391719889842173242

namespace A103390

/-- `n^(char[A018252(n+1)]+1)` -/
def P15391719889842173242.Spec : Prop :=
  ∀ n, (P15391719889842173242.a n : ℤ) = A103390 (n + 1)

end A103390

/-! ## A103390.P15193237849163201594

`n^(2-char[A000040(n+1)])`
-/

namespace A103390.P15193237849163201594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A103390.P15193237849163201594

namespace A103390

/-- `n^(2-char[A000040(n+1)])` -/
def P15193237849163201594.Spec : Prop :=
  ∀ n, P15193237849163201594.a n = (A103390 (n + 1) : ℚ)

end A103390

/-! ## A103390.P8389148691334142809

`n^(2-char[A006530(n+1)])`
-/

namespace A103390.P8389148691334142809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A103390.P8389148691334142809

namespace A103390

/-- `n^(2-char[A006530(n+1)])` -/
def P8389148691334142809.Spec : Prop :=
  ∀ n, P8389148691334142809.a n = (A103390 (n + 1) : ℚ)

end A103390

/-! ## A103390.P16066861635685778017

`n^(2-char[A020639(n+1)])`
-/

namespace A103390.P16066861635685778017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A103390.P16066861635685778017

namespace A103390

/-- `n^(2-char[A020639(n+1)])` -/
def P16066861635685778017.Spec : Prop :=
  ∀ n, P16066861635685778017.a n = (A103390 (n + 1) : ℚ)

end A103390

/-! ## A103390.P7190646253017303

`n²/A089026(abs(1-n)+1)`
-/

namespace A103390.P7190646253017303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (A089026 (|1 - (n : ℤ)| + 1).toNat : ℚ)

end

end A103390.P7190646253017303

namespace A103390

/-- `n²/A089026(abs(1-n)+1)` -/
def P7190646253017303.Spec : Prop :=
  ∀ n, P7190646253017303.a n = (A103390 (n + 1) : ℚ)

end A103390

/-! ## A103390.P7075879422362101514

`n^(char[comp[A158611(n+1)]]+1)`
-/

namespace A103390.P7075879422362101514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A103390.P7075879422362101514

namespace A103390

/-- `n^(char[comp[A158611(n+1)]]+1)` -/
def P7075879422362101514.Spec : Prop :=
  ∀ n, (P7075879422362101514.a n : ℤ) = A103390 (n + 1)

end A103390

/-! ## A103390.P5764246376618563888

`xor(A103164(n), A169810(n))`
-/

namespace A103390.P5764246376618563888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103164 n) (A169810 n)

end

end A103390.P5764246376618563888

namespace A103390

/-- `xor(A103164(n), A169810(n))` -/
def P5764246376618563888.Spec : Prop :=
  ∀ n, P5764246376618563888.a n = A103390 (n + 1)

end A103390

/-! ## A103390.P6511099220389652591

`A000290(n)+n-A103164(n)`
-/

namespace A103390.P6511099220389652591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + ((n : ℤ) - A103164 n)

end

end A103390.P6511099220389652591

namespace A103390

/-- `A000290(n)+n-A103164(n)` -/
def P6511099220389652591.Spec : Prop :=
  ∀ n, P6511099220389652591.a n = A103390 (n + 1)

end A103390

/-! ## A103390.P5796717813690587715

`gcd(A282462(n)-n, A000290(n))`
-/

namespace A103390.P5796717813690587715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282462 n - (n : ℤ)) (A000290 n)

end

end A103390.P5796717813690587715

namespace A103390

/-- `gcd(A282462(n)-n, A000290(n))` -/
def P5796717813690587715.Spec : Prop :=
  ∀ n, (P5796717813690587715.a n : ℤ) = A103390 (n + 1)

end A103390

/-! ## A103390.P16471092702425178441

`lcm(n², A007918(n))/A007918(n)`
-/

namespace A103390.P16471092702425178441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n ^ 2 : ℤ) (A007918 n) : ℚ) / (A007918 n : ℚ)

end

end A103390.P16471092702425178441

namespace A103390

/-- `lcm(n², A007918(n))/A007918(n)` -/
def P16471092702425178441.Spec : Prop :=
  ∀ n, P16471092702425178441.a n = (A103390 (n + 1) : ℚ)

end A103390

/-! ## A103390.P5867452605684034731

`n^(2-char[A014963(n+1)])`
-/

namespace A103390.P5867452605684034731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A103390.P5867452605684034731

namespace A103390

/-- `n^(2-char[A014963(n+1)])` -/
def P5867452605684034731.Spec : Prop :=
  ∀ n, P5867452605684034731.a n = (A103390 (n + 1) : ℚ)

end A103390

/-! ## A103390.P8663044719385523857

`n²/A014973(A257088(n))`
-/

namespace A103390.P8663044719385523857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (A014973 (A257088 n).toNat : ℚ)

end

end A103390.P8663044719385523857

namespace A103390

/-- `n²/A014973(A257088(n))` -/
def P8663044719385523857.Spec : Prop :=
  ∀ n, P8663044719385523857.a n = (A103390 (n + 1) : ℚ)

end A103390

/-! ## A103390.P13032961158842193219

`n*A063928(A004277(n))`
-/

namespace A103390.P13032961158842193219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063928 (A004277 n).toNat

end

end A103390.P13032961158842193219

namespace A103390

/-- `n*A063928(A004277(n))` -/
def P13032961158842193219.Spec : Prop :=
  ∀ n, P13032961158842193219.a n = A103390 (n + 1)

end A103390

/-! ## A103390.P4250312525632087408

`n*A063928(A123882(2*n+1))`
-/

namespace A103390.P4250312525632087408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063928 (A123882 (2 * n + 1)).toNat

end

end A103390.P4250312525632087408

namespace A103390

/-- `n*A063928(A123882(2*n+1))` -/
def P4250312525632087408.Spec : Prop :=
  ∀ n, P4250312525632087408.a n = A103390 (n + 1)

end A103390

/-!
# A103391: "Even" fractal sequence for the natural numbers: Deleting every even-indexed term results in the same sequence.

The programs for A103391, the canonical program `A103391.P3592261676261382082` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103391 has offset 1).

The definition of A103391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103391.P3592261676261382082

`∑[a(∑[n]%n)-a(n-1)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103391

/-- `∑[a(∑[n]%n)-a(n-1)]` -/
def P3592261676261382082.Spec : Prop :=
  ∀ n, P3592261676261382082.a n = A103391 (n + 1)

theorem P3592261676261382082.correct : P3592261676261382082.Spec := by
  intro n
  simp only [A103391, Nat.add_sub_cancel]

end A103391

/-! ## A103391.P12028534651711639908

`∑{d}[n, A349136(#)]+1`
-/

namespace A103391.P12028534651711639908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349136 d + 1

end

end A103391.P12028534651711639908

namespace A103391

/-- `∑{d}[n, A349136(#)]+1` -/
def P12028534651711639908.Spec : Prop :=
  ∀ n, P12028534651711639908.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P17790177054035092546

`A108715(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A103391.P17790177054035092546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A108715 (n - 2) + a (n - 1)

end

end A103391.P17790177054035092546

namespace A103391

/-- `A108715(n-2)+a(n-1)` -/
def P17790177054035092546.Spec : Prop :=
  ∀ n, P17790177054035092546.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P10721383998837581582

`A080513(gcd(n, A129527(n)))`
-/

namespace A103391.P10721383998837581582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (Int.gcd (n : ℤ) (A129527 n))

end

end A103391.P10721383998837581582

namespace A103391

/-- `A080513(gcd(n, A129527(n)))` -/
def P10721383998837581582.Spec : Prop :=
  ∀ n, P10721383998837581582.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P9303415019067958850

`A080513(2*n-A129527(n))`
-/

namespace A103391.P9303415019067958850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 ((2 * n : ℤ) - A129527 n).toNat

end

end A103391.P9303415019067958850

namespace A103391

/-- `A080513(2*n-A129527(n))` -/
def P9303415019067958850.Spec : Prop :=
  ∀ n, P9303415019067958850.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P14143949403713085055

`A080513(n-A129527(n)+n)`
-/

namespace A103391.P14143949403713085055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 ((n : ℤ) - A129527 n + (n : ℤ)).toNat

end

end A103391.P14143949403713085055

namespace A103391

/-- `A080513(n-A129527(n)+n)` -/
def P14143949403713085055.Spec : Prop :=
  ∀ n, P14143949403713085055.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P16939759607849251039

`A080513(n-(A129527(n)-n))`
-/

namespace A103391.P16939759607849251039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 ((n : ℤ) - (A129527 n - (n : ℤ))).toNat

end

end A103391.P16939759607849251039

namespace A103391

/-- `A080513(n-(A129527(n)-n))` -/
def P16939759607849251039.Spec : Prop :=
  ∀ n, P16939759607849251039.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P5471951570806044987

`A353369(n+1)-A353368(n+1)`
-/

namespace A103391.P5471951570806044987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353369 (n + 1) - A353368 (n + 1)

end

end A103391.P5471951570806044987

namespace A103391

/-- `A353369(n+1)-A353368(n+1)` -/
def P5471951570806044987.Spec : Prop :=
  ∀ n, P5471951570806044987.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P219928631750018987

`A008619(2*n+1-A129527(n))`
-/

namespace A103391.P219928631750018987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((2 * n + 1 : ℤ) - A129527 n).toNat

end

end A103391.P219928631750018987

namespace A103391

/-- `A008619(2*n+1-A129527(n))` -/
def P219928631750018987.Spec : Prop :=
  ∀ n, P219928631750018987.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P16616014806112920913

`∏{e}[A020639(n+1), A003602(n)+#]`
-/

namespace A103391.P16616014806112920913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A003602 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A103391.P16616014806112920913

namespace A103391

/-- `∏{e}[A020639(n+1), A003602(n)+#]` -/
def P16616014806112920913.Spec : Prop :=
  ∀ n, P16616014806112920913.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P7996206914347908496

`A057427(n)+A003602(A028310(n))`
-/

namespace A103391.P7996206914347908496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A003602 (A028310 n).toNat

end

end A103391.P7996206914347908496

namespace A103391

/-- `A057427(n)+A003602(A028310(n))` -/
def P7996206914347908496.Spec : Prop :=
  ∀ n, P7996206914347908496.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P10803992899587080816

`A110963(A004280(n+1))+A057427(n)`
-/

namespace A103391.P10803992899587080816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A004280 (n + 1)).toNat + A057427 n

end

end A103391.P10803992899587080816

namespace A103391

/-- `A110963(A004280(n+1))+A057427(n)` -/
def P10803992899587080816.Spec : Prop :=
  ∀ n, P10803992899587080816.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P8217604553226336692

`A003602(A028310(n))%A001597(n+1)+1`
-/

namespace A103391.P8217604553226336692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (A028310 n).toNat) (A001597 (n + 1)) + 1

end

end A103391.P8217604553226336692

namespace A103391

/-- `A003602(A028310(n))%A001597(n+1)+1` -/
def P8217604553226336692.Spec : Prop :=
  ∀ n, P8217604553226336692.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P2291155692104216006

`A142150(n+1)+a(A142150(n))` with `a(0)=1`
-/

namespace A103391.P2291155692104216006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A142150 (n + 1) + a (A142150 n).toNat

end

end A103391.P2291155692104216006

namespace A103391

/-- `A142150(n+1)+a(A142150(n))` -/
def P2291155692104216006.Spec : Prop :=
  ∀ n, P2291155692104216006.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P2850000966088553692

`A003602(A014681(n)+1)+A014681(n)%2`
-/

namespace A103391.P2850000966088553692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A014681 n + 1).toNat + Int.tmod (A014681 n) 2

end

end A103391.P2850000966088553692

namespace A103391

/-- `A003602(A014681(n)+1)+A014681(n)%2` -/
def P2850000966088553692.Spec : Prop :=
  ∀ n, P2850000966088553692.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P16139360548615798607

`A003602(A014681(n)+1)+char[A005843(n+1)]`
-/

namespace A103391.P16139360548615798607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A014681 n + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A103391.P16139360548615798607

namespace A103391

/-- `A003602(A014681(n)+1)+char[A005843(n+1)]` -/
def P16139360548615798607.Spec : Prop :=
  ∀ n, P16139360548615798607.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P15650528941576992243

`round(A030101(A030101(n))/2)+1`
-/

namespace A103391.P15650528941576992243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030101 (A030101 n).toNat : ℚ) / 2) + 1

end

end A103391.P15650528941576992243

namespace A103391

/-- `round(A030101(A030101(n))/2)+1` -/
def P15650528941576992243.Spec : Prop :=
  ∀ n, P15650528941576992243.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P17132042973356408042

`A330393(A129343(n))`
-/

namespace A103391.P17132042973356408042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330393 (A129343 n).toNat

end

end A103391.P17132042973356408042

namespace A103391

/-- `A330393(A129343(n))` -/
def P17132042973356408042.Spec : Prop :=
  ∀ n, P17132042973356408042.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P11860964156442655743

`A036453(n+1)+A025480(A004273(n))`
-/

namespace A103391.P11860964156442655743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + A025480 (A004273 n).toNat

end

end A103391.P11860964156442655743

namespace A103391

/-- `A036453(n+1)+A025480(A004273(n))` -/
def P11860964156442655743.Spec : Prop :=
  ∀ n, P11860964156442655743.a n = A103391 (n + 1)

end A103391

/-! ## A103391.P2970618422393409191

`(A266220(2*n+1)-A129527(2*n))/2`
-/

namespace A103391.P2970618422393409191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266220 (2 * n + 1) - A129527 (2 * n) : ℚ) / 2

end

end A103391.P2970618422393409191

namespace A103391

/-- `(A266220(2*n+1)-A129527(2*n))/2` -/
def P2970618422393409191.Spec : Prop :=
  ∀ n, P2970618422393409191.a n = (A103391 (n + 1) : ℚ)

end A103391

/-!
# A103392: Semiprimes in A103372.

The programs for A103392, there is no canonical definition to state claims against.
-/

/-! ## A103392.P2592613237707643166

`∩[A001358(n+1), record[A124789(n)]]`
-/

namespace A103392.P2592613237707643166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103392.P2592613237707643166

/-! ## A103392.P10334036034523867816

`∩[A088707(n+1)-1, record[A124789(n)]]`
-/

namespace A103392.P10334036034523867816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103392.P10334036034523867816

/-! ## A103392.P4297455763255301972

`∩[A175708(n+1)+1+n, record[A124789(n)]]`
-/

namespace A103392.P4297455763255301972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103392.P4297455763255301972

/-! ## A103392.P4756242896438360663

`∩[A100493(n+1)-(n+1), record[A124789(n)]]`
-/

namespace A103392.P4756242896438360663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 1 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103392.P4756242896438360663

/-!
# A103397: Semiprimes in A103377.

The programs for A103397, there is no canonical definition to state claims against.
-/

/-! ## A103397.P10072022996152016683

`A103396(A077168(n))`
-/

namespace A103397.P10072022996152016683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103396 (A077168 n).toNat

end

end A103397.P10072022996152016683

/-! ## A103397.P11912779597739496390

`A103398(record[A077168(n)])`
-/

namespace A103397.P11912779597739496390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103398 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103397.P11912779597739496390

/-! ## A103397.P8902845238481255001

`A103399(record[A077168(n)])`
-/

namespace A103397.P8902845238481255001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103399 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103397.P8902845238481255001

/-! ## A103397.P782689280990757012

`A103400(record[A077168(n)])`
-/

namespace A103397.P782689280990757012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103397.P782689280990757012

/-! ## A103397.P14041696531686289143

`A103396(A043319(n+1))`
-/

namespace A103397.P14041696531686289143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103396 (A043319 (n + 1)).toNat

end

end A103397.P14041696531686289143

/-!
# A103398: Semiprimes in A103378.

The programs for A103398, there is no canonical definition to state claims against.
-/

/-! ## A103398.P6383409244716513974

`filter[A103399(n+1), A188470(#)]`
-/

namespace A103398.P6383409244716513974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188470 (f1 j).toNat = 1) n)

end

end A103398.P6383409244716513974

/-! ## A103398.P5605274949269569956

`record[gcd(A103399(n+1), A185044(n))]`
-/

namespace A103398.P5605274949269569956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103399 (n + 1)) (A185044 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103398.P5605274949269569956

/-! ## A103398.P11328894434810249283

`record[A103399(n+1)%∑[A347047(3*(n+2))]]`
-/

namespace A103398.P11328894434810249283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347047 (3 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103399 (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103398.P11328894434810249283

/-! ## A103398.P16959577175591421078

`A103399(A204315(n+1)*A278657(n))`
-/

namespace A103398.P16959577175591421078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103399 (A204315 (n + 1) * A278657 n).toNat

end

end A103398.P16959577175591421078

/-! ## A103398.P6213975338398190440

`A103400(A204315(n+1)*A278657(n))`
-/

namespace A103398.P6213975338398190440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103400 (A204315 (n + 1) * A278657 n).toNat

end

end A103398.P6213975338398190440

/-!
# A103399: Semiprimes in A103379.

The programs for A103399, there is no canonical definition to state claims against.
-/

/-! ## A103399.P10336190492589232440

`A103400(∑[A063435(A131174(n))])`
-/

namespace A103399.P10336190492589232440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A131174 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103400 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103399.P10336190492589232440

/-! ## A103399.P3186347397420043625

`A103400(record[A007318(A025732(n+1))])`
-/

namespace A103399.P3186347397420043625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A025732 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103399.P3186347397420043625

/-! ## A103399.P18238950085236464662

`A103400(A076084(n+1))`
-/

namespace A103399.P18238950085236464662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103400 (A076084 (n + 1)).toNat

end

end A103399.P18238950085236464662

/-! ## A103399.P18097410016560027697

`A103400(A151764(n+1))`
-/

namespace A103399.P18097410016560027697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103400 (A151764 (n + 1)).toNat

end

end A103399.P18097410016560027697

/-! ## A103399.P3796953954977884896

`A254109(A103400(n+1))`
-/

namespace A103399.P3796953954977884896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (A103400 (n + 1)).toNat

end

end A103399.P3796953954977884896

