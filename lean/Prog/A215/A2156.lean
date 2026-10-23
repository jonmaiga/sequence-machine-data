import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
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
# A215601: Expansion of phi(-x)^2 * f(-x)^6 + 32 * x * psi(-x)^2 * f(-x^4)^6 in powers of x where phi(), psi(), f() are Ramanujan theta functions.

The programs for A215601, there is no canonical definition to state claims against.
-/

/-! ## A215601.P17790651849945927380

`A215600(2*n)`
-/

namespace A215601.P17790651849945927380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215600 (2 * n)

end

end A215601.P17790651849945927380

/-! ## A215601.P11574919654587408218

`A215600(A005843(n))/A033999(n)²`
-/

namespace A215601.P11574919654587408218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215600 (A005843 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A215601.P11574919654587408218

/-! ## A215601.P7471368218581274015

`A215600(A005843(n))%A133536(n+1)`
-/

namespace A215601.P7471368218581274015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215600 (A005843 n).toNat) (A133536 (n + 1))

end

end A215601.P7471368218581274015

/-! ## A215601.P7535302225655760312

`A215600(A005843(n))/A000265(n+1)%2`
-/

namespace A215601.P7535302225655760312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215600 (A005843 n).toNat : ℚ) / (Int.tmod (A000265 (n + 1)) 2 : ℚ)

end

end A215601.P7535302225655760312

/-! ## A215601.P13057571073656124795

`A215600(n+n)/(A001057(A005408(n))-n)`
-/

namespace A215601.P13057571073656124795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215600 (n + n) : ℚ) / (A001057 (A005408 n).toNat - (n : ℤ) : ℚ)

end

end A215601.P13057571073656124795

/-! ## A215601.P11261686653318594855

`A215600(n+n)%A137951(A137951(n+54))`
-/

namespace A215601.P11261686653318594855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215600 (n + n)) (A137951 (A137951 (n + 54)).toNat)

end

end A215601.P11261686653318594855

/-! ## A215601.P7466008146933887743

`A215600(n+n)+A196199(n²)+n`
-/

namespace A215601.P7466008146933887743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215600 (n + n) + (A196199 (n ^ 2) + (n : ℤ))

end

end A215601.P7466008146933887743

/-! ## A215601.P3291694195800830580

`A215600(n+n)%A000132(A000132(n))`
-/

namespace A215601.P3291694195800830580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215600 (n + n)) (A000132 (A000132 n).toNat)

end

end A215601.P3291694195800830580

/-!
# A215602: a(n) = L(n)*L(n+1), where L = A000032 (Lucas numbers).

The programs for A215602, the canonical program `A215602.P476152105316514316` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215602 has offset 0).

The definition of A215602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215602.P476152105316514316

`A002878(n)+(-1)^n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215602

/-- `A002878(n)+(-1)^n` -/
def P476152105316514316.Spec : Prop :=
  ∀ n, P476152105316514316.a n = A215602 n

theorem P476152105316514316.correct : P476152105316514316.Spec := by
  intro n
  simp only [A215602]

end A215602

/-! ## A215602.P5995567013017525041

`ogf((2-x+2x^2)/(1-2x-2x^2+x^3))`
-/

namespace A215602.P5995567013017525041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 2] [1, -2, -2, 1] n

end

end A215602.P5995567013017525041

namespace A215602

/-- `ogf((2-x+2x^2)/(1-2x-2x^2+x^3))` -/
def P5995567013017525041.Spec : Prop :=
  ∀ n, P5995567013017525041.a n = A215602 n

end A215602

/-! ## A215602.P15998028993044813823

`a(n-1)+(a(n-1)/gcd(a(n-1), a(n-2)))²` with `a(0)=2, a(1)=3`
-/

namespace A215602.P15998028993044813823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (a (n - 1) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)) ^ 2

end

end A215602.P15998028993044813823

namespace A215602

/-- `a(n-1)+(a(n-1)/gcd(a(n-1), a(n-2)))²` -/
def P15998028993044813823.Spec : Prop :=
  ∀ n, P15998028993044813823.a n = (A215602 n : ℚ)

end A215602

/-! ## A215602.P10279074535175630628

`(a(n-1)/(a(n-1)-a(n-2))+1)*a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A215602.P10279074535175630628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (a (n - 1) / (a (n - 1) - a (n - 2)) + 1) * a (n - 1)

end

end A215602.P10279074535175630628

namespace A215602

/-- `(a(n-1)/(a(n-1)-a(n-2))+1)*a(n-1)` -/
def P10279074535175630628.Spec : Prop :=
  ∀ n, P10279074535175630628.a n = (A215602 n : ℚ)

end A215602

/-! ## A215602.P2078373288852006744

`(1-a(n-1)/(a(n-2)-a(n-1)))*a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A215602.P2078373288852006744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (1 - a (n - 1) / (a (n - 2) - a (n - 1))) * a (n - 1)

end

end A215602.P2078373288852006744

namespace A215602

/-- `(1-a(n-1)/(a(n-2)-a(n-1)))*a(n-1)` -/
def P2078373288852006744.Spec : Prop :=
  ∀ n, P2078373288852006744.a n = (A215602 n : ℚ)

end A215602

/-! ## A215602.P16213274459794891672

`a(n-1)+a(n-1)/(1-a(n-2)/a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A215602.P16213274459794891672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + a (n - 1) / (1 - a (n - 2) / a (n - 1))

end

end A215602.P16213274459794891672

namespace A215602

/-- `a(n-1)+a(n-1)/(1-a(n-2)/a(n-1))` -/
def P16213274459794891672.Spec : Prop :=
  ∀ n, P16213274459794891672.a n = (A215602 n : ℚ)

end A215602

/-! ## A215602.P8502507073590385465

`a(n-1)-a(n-1)/(a(n-2)/a(n-1)-1)` with `a(0)=2, a(1)=3`
-/

namespace A215602.P8502507073590385465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - a (n - 1) / (a (n - 2) / a (n - 1) - 1)

end

end A215602.P8502507073590385465

namespace A215602

/-- `a(n-1)-a(n-1)/(a(n-2)/a(n-1)-1)` -/
def P8502507073590385465.Spec : Prop :=
  ∀ n, P8502507073590385465.a n = (A215602 n : ℚ)

end A215602

/-! ## A215602.P6201260037991138056

`A216243(n)-2`
-/

namespace A215602.P6201260037991138056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216243 n - 2

end

end A215602.P6201260037991138056

namespace A215602

/-- `A216243(n)-2` -/
def P6201260037991138056.Spec : Prop :=
  ∀ n, P6201260037991138056.a n = A215602 n

end A215602

/-! ## A215602.P11230663647086477612

`∑[A001254(n)]-2`
-/

namespace A215602.P11230663647086477612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A215602.P11230663647086477612

namespace A215602

/-- `∑[A001254(n)]-2` -/
def P11230663647086477612.Spec : Prop :=
  ∀ n, P11230663647086477612.a n = A215602 n

end A215602

/-! ## A215602.P10166538354098655449

`∑[A000032(n)²]-2`
-/

namespace A215602.P10166538354098655449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A215602.P10166538354098655449

namespace A215602

/-- `∑[A000032(n)²]-2` -/
def P10166538354098655449.Spec : Prop :=
  ∀ n, P10166538354098655449.a n = A215602 n

end A215602

/-! ## A215602.P11984925855803378619

`abs(1-A098149(n+1))`
-/

namespace A215602.P11984925855803378619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A098149 (n + 1)|

end

end A215602.P11984925855803378619

namespace A215602

/-- `abs(1-A098149(n+1))` -/
def P11984925855803378619.Spec : Prop :=
  ∀ n, P11984925855803378619.a n = A215602 n

end A215602

/-! ## A215602.P1270857236597995567

`∑[A001638(2*n)]-2`
-/

namespace A215602.P1270857236597995567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A215602.P1270857236597995567

namespace A215602

/-- `∑[A001638(2*n)]-2` -/
def P1270857236597995567.Spec : Prop :=
  ∀ n, P1270857236597995567.a n = A215602 n

end A215602

/-! ## A215602.P14311783915795849901

`A054888(n)-a(n-1)` with `a(0)=2`
-/

namespace A215602.P14311783915795849901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A054888 n - a (n - 1)

end

end A215602.P14311783915795849901

namespace A215602

/-- `A054888(n)-a(n-1)` -/
def P14311783915795849901.Spec : Prop :=
  ∀ n, P14311783915795849901.a n = A215602 n

end A215602

/-! ## A215602.P13320244181573191705

`∑[A061084(n+1)²]-2`
-/

namespace A215602.P13320244181573191705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A215602.P13320244181573191705

namespace A215602

/-- `∑[A061084(n+1)²]-2` -/
def P13320244181573191705.Spec : Prop :=
  ∀ n, P13320244181573191705.a n = A215602 n

end A215602

/-! ## A215602.P1922837096243335464

`A000032(Δ[n²])+(-1)^n`
-/

namespace A215602.P1922837096243335464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (-1) ^ n

end

end A215602.P1922837096243335464

namespace A215602

/-- `A000032(Δ[n²])+(-1)^n` -/
def P1922837096243335464.Spec : Prop :=
  ∀ n, P1922837096243335464.a n = A215602 n

end A215602

/-! ## A215602.P10715802583133769082

`a(n-1)+A000204(n)²` with `a(0)=2`
-/

namespace A215602.P10715802583133769082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000204 n ^ 2

end

end A215602.P10715802583133769082

namespace A215602

/-- `a(n-1)+A000204(n)²` -/
def P10715802583133769082.Spec : Prop :=
  ∀ n, P10715802583133769082.a n = A215602 n

end A215602

/-! ## A215602.P3948345733986506422

`Δ[A000032(2*n)-gcd(2, n)]`
-/

namespace A215602.P3948345733986506422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215602.P3948345733986506422

namespace A215602

/-- `Δ[A000032(2*n)-gcd(2, n)]` -/
def P3948345733986506422.Spec : Prop :=
  ∀ n, P3948345733986506422.a n = A215602 n

end A215602

/-! ## A215602.P11019894316737505345

`A201157(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A215602.P11019894316737505345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A201157 (n + 1) - a (n - 1)

end

end A215602.P11019894316737505345

namespace A215602

/-- `A201157(n+1)-a(n-1)` -/
def P11019894316737505345.Spec : Prop :=
  ∀ n, P11019894316737505345.a n = A215602 n

end A215602

/-! ## A215602.P7592358741652252986

`5*A000045(2*n)-a(n-1)` with `a(0)=2`
-/

namespace A215602.P7592358741652252986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * A000045 (2 * n) - a (n - 1)

end

end A215602.P7592358741652252986

namespace A215602

/-- `5*A000045(2*n)-a(n-1)` -/
def P7592358741652252986.Spec : Prop :=
  ∀ n, P7592358741652252986.a n = A215602 n

end A215602

/-! ## A215602.P12848396920220492971

`a(n-1)+A000032(C(n, n-1))²` with `a(0)=2`
-/

namespace A215602.P12848396920220492971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000032 (Nat.choose n ((n : ℤ) - 1).toNat) ^ 2

end

end A215602.P12848396920220492971

namespace A215602

/-- `a(n-1)+A000032(C(n, n-1))²` -/
def P12848396920220492971.Spec : Prop :=
  ∀ n, P12848396920220492971.a n = A215602 n

end A215602

/-!
# A215604: a(0)=0, a(n) = (n + a(floor(n/2))) mod 3.

The programs for A215604, the canonical program `A215604.P7063549883133779417` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215604 has offset 0).

The definition of A215604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215604.P7063549883133779417

`∑[∑{e}[xor(n, -n), #]]%3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215604

/-- `∑[∑{e}[xor(n, -n), #]]%3` -/
def P7063549883133779417.Spec : Prop :=
  ∀ n, (P7063549883133779417.a n : ℤ) = A215604 n

theorem P7063549883133779417.correct : P7063549883133779417.Spec := by
  intro n
  simp only [A215604]

end A215604

/-! ## A215604.P2720025123280302907

`(a(floor(n/2))+n)%3` with `a(0)=0`
-/

namespace A215604.P2720025123280302907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + n) % 3

end

end A215604.P2720025123280302907

namespace A215604

/-- `(a(floor(n/2))+n)%3` -/
def P2720025123280302907.Spec : Prop :=
  ∀ n, (P2720025123280302907.a n : ℤ) = A215604 n

end A215604

/-! ## A215604.P1253551478079131189

`∑[val(floor(2/acot(n)), 2)]%3`
-/

namespace A215604.P1253551478079131189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A215604.P1253551478079131189

namespace A215604

/-- `∑[val(floor(2/acot(n)), 2)]%3` -/
def P1253551478079131189.Spec : Prop :=
  ∀ n, (P1253551478079131189.a n : ℤ) = A215604 n

end A215604

/-! ## A215604.P8406625102248996194

`∑[a(∑[n]%n)+1]%3` with `a(0)=0`
-/

namespace A215604.P8406625102248996194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A215604.P8406625102248996194

namespace A215604

/-- `∑[a(∑[n]%n)+1]%3` -/
def P8406625102248996194.Spec : Prop :=
  ∀ n, (P8406625102248996194.a n : ℤ) = A215604 n

end A215604

/-! ## A215604.P10983063669747480210

`∑[val(comp[2*(n+1)]+1, 2)]%3`
-/

namespace A215604.P10983063669747480210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A215604.P10983063669747480210

namespace A215604

/-- `∑[val(comp[2*(n+1)]+1, 2)]%3` -/
def P10983063669747480210.Spec : Prop :=
  ∀ n, (P10983063669747480210.a n : ℤ) = A215604 n

end A215604

/-! ## A215604.P15332534415419098128

`A005187(n)%3`
-/

namespace A215604.P15332534415419098128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 n) 3

end

end A215604.P15332534415419098128

namespace A215604

/-- `A005187(n)%3` -/
def P15332534415419098128.Spec : Prop :=
  ∀ n, P15332534415419098128.a n = A215604 n

end A215604

/-! ## A215604.P8290760972327276963

`A063694(n)%3`
-/

namespace A215604.P8290760972327276963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063694 n) 3

end

end A215604.P8290760972327276963

namespace A215604

/-- `A063694(n)%3` -/
def P8290760972327276963.Spec : Prop :=
  ∀ n, P8290760972327276963.a n = A215604 n

end A215604

/-! ## A215604.P13099053923143791381

`A139351(n)%3`
-/

namespace A215604.P13099053923143791381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139351 n) 3

end

end A215604.P13099053923143791381

namespace A215604

/-- `A139351(n)%3` -/
def P13099053923143791381.Spec : Prop :=
  ∀ n, P13099053923143791381.a n = A215604 n

end A215604

/-! ## A215604.P7650172068510871991

`A010872(A063694(n))`
-/

namespace A215604.P7650172068510871991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A063694 n).toNat

end

end A215604.P7650172068510871991

namespace A215604

/-- `A010872(A063694(n))` -/
def P7650172068510871991.Spec : Prop :=
  ∀ n, P7650172068510871991.a n = A215604 n

end A215604

/-! ## A215604.P5907866545123534545

`A071858(A059905(n))`
-/

namespace A215604.P5907866545123534545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A059905 n).toNat

end

end A215604.P5907866545123534545

namespace A215604

/-- `A071858(A059905(n))` -/
def P5907866545123534545.Spec : Prop :=
  ∀ n, P5907866545123534545.a n = A215604 n

end A215604

/-! ## A215604.P10564161846376558527

`A080425(A092391(n))`
-/

namespace A215604.P10564161846376558527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A092391 n).toNat

end

end A215604.P10564161846376558527

namespace A215604

/-- `A080425(A092391(n))` -/
def P10564161846376558527.Spec : Prop :=
  ∀ n, P10564161846376558527.a n = A215604 n

end A215604

/-! ## A215604.P2852225975015970805

`A060571(A088442(n))`
-/

namespace A215604.P2852225975015970805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060571 (A088442 n).toNat

end

end A215604.P2852225975015970805

namespace A215604

/-- `A060571(A088442(n))` -/
def P2852225975015970805.Spec : Prop :=
  ∀ n, P2852225975015970805.a n = A215604 n

end A215604

/-! ## A215604.P17185443003935162741

`A010872(A005187(n))`
-/

namespace A215604.P17185443003935162741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A005187 n).toNat

end

end A215604.P17185443003935162741

namespace A215604

/-- `A010872(A005187(n))` -/
def P17185443003935162741.Spec : Prop :=
  ∀ n, P17185443003935162741.a n = A215604 n

end A215604

/-! ## A215604.P12666263684964490552

`A010872(2*n-A000120(n))`
-/

namespace A215604.P12666263684964490552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((2 * n : ℤ) - A000120 n).toNat

end

end A215604.P12666263684964490552

namespace A215604

/-- `A010872(2*n-A000120(n))` -/
def P12666263684964490552.Spec : Prop :=
  ∀ n, P12666263684964490552.a n = A215604 n

end A215604

/-! ## A215604.P1768913223475581509

`A011371(2*n)%3`
-/

namespace A215604.P1768913223475581509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011371 (2 * n)) 3

end

end A215604.P1768913223475581509

namespace A215604

/-- `A011371(2*n)%3` -/
def P1768913223475581509.Spec : Prop :=
  ∀ n, P1768913223475581509.a n = A215604 n

end A215604

/-! ## A215604.P1417278090730725413

`A120738(2*n)%3`
-/

namespace A215604.P1417278090730725413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120738 (2 * n)) 3

end

end A215604.P1417278090730725413

namespace A215604

/-- `A120738(2*n)%3` -/
def P1417278090730725413.Spec : Prop :=
  ∀ n, P1417278090730725413.a n = A215604 n

end A215604

/-! ## A215604.P9084267907149856215

`A139352(2*n)%3`
-/

namespace A215604.P9084267907149856215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139352 (2 * n)) 3

end

end A215604.P9084267907149856215

namespace A215604

/-- `A139352(2*n)%3` -/
def P9084267907149856215.Spec : Prop :=
  ∀ n, P9084267907149856215.a n = A215604 n

end A215604

/-! ## A215604.P9971197995119362617

`val(A136695(2*n), 2)`
-/

namespace A215604.P9971197995119362617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A136695 (2 * n)).toNat 2

end

end A215604.P9971197995119362617

namespace A215604

/-- `val(A136695(2*n), 2)` -/
def P9971197995119362617.Spec : Prop :=
  ∀ n, (P9971197995119362617.a n : ℤ) = A215604 n

end A215604

/-! ## A215604.P10424467647099503901

`A010872(2*n-A071858(n))`
-/

namespace A215604.P10424467647099503901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((2 * n : ℤ) - A071858 n).toNat

end

end A215604.P10424467647099503901

namespace A215604

/-- `A010872(2*n-A071858(n))` -/
def P10424467647099503901.Spec : Prop :=
  ∀ n, P10424467647099503901.a n = A215604 n

end A215604

/-! ## A215604.P5839182589181606420

`A010872(2*n+1-A245555(n+1))`
-/

namespace A215604.P5839182589181606420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((2 * n + 1 : ℤ) - A245555 (n + 1)).toNat

end

end A215604.P5839182589181606420

namespace A215604

/-- `A010872(2*n+1-A245555(n+1))` -/
def P5839182589181606420.Spec : Prop :=
  ∀ n, P5839182589181606420.a n = A215604 n

end A215604

/-!
# A215609: Smallest prime p congruent to 1 modulo prime(10^n).

The programs for A215609, there is no canonical definition to state claims against.
-/

/-! ## A215609.P7723069536030001269

`A035095(10^n)`
-/

namespace A215609.P7723069536030001269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035095 (10 ^ n)

end

end A215609.P7723069536030001269

/-!
# A215613: Odd integers n such that 2^n == 2^12 (mod n).

The programs for A215613, there is no canonical definition to state claims against.
-/

/-! ## A215613.P5159765012206417594

`record[A093178(A015937(n+1))]`
-/

namespace A215613.P5159765012206417594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A015937 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215613.P5159765012206417594

/-!
# A215614: Numbers k that are not multiples of 10 and such that sum of digits of k^2 is 7.

The programs for A215614, there is no canonical definition to state claims against.
-/

/-! ## A215614.P12241895714294326720

`A262711(A018065(n))`
-/

namespace A215614.P12241895714294326720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262711 (A018065 n).toNat

end

end A215614.P12241895714294326720

/-!
# A215615: From Wendt's determinant compute sqrt(abs(A048954(n))/(2^n - 1)).

The programs for A215615, there is no canonical definition to state claims against.
-/

/-! ## A215615.P12897383163563494816

`sqrt(abs(A048954(n+1))/(2^(n+1)-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215615.P12897383163563494816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((|A048954 (n + 1)| : ℚ) / ((2 ^ (n + 1) : ℤ) - 1 : ℚ) : ℝ)

end

end A215615.P12897383163563494816

/-! ## A215615.P11404878161744394147

`A113949(A261690(n+1)+A019565(n))`
-/

namespace A215615.P11404878161744394147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113949 (A261690 (n + 1) + A019565 n).toNat

end

end A215615.P11404878161744394147

/-! ## A215615.P16673178663493948201

`A059252(or(A084742(n+2), A127128(n+1)))`
-/

namespace A215615.P16673178663493948201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (Int.lor (A084742 (n + 2)) (A127128 (n + 1))).toNat

end

end A215615.P16673178663493948201

/-!
# A215618: Sum of digits of n^2 is a square.

The programs for A215618, the canonical program `A215618.P12036033928180081081` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215618 has offset 1).

The definition of A215618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215618.P12036033928180081081

`∩[A061910(n+1), A067251(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A215618

/-- `∩[A061910(n+1), A067251(n+1)]` -/
def P12036033928180081081.Spec : Prop :=
  ∀ n, (P12036033928180081081.a n : ℤ) = A215618 (n + 1)

theorem P12036033928180081081.correct : P12036033928180081081.Spec := by
  intro n
  simp only [A215618, Nat.add_sub_cancel]

end A215618

/-! ## A215618.P3466669519711946066

`∩[A061910(n+1), A342851(n+1)]`
-/

namespace A215618.P3466669519711946066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215618.P3466669519711946066

namespace A215618

/-- `∩[A061910(n+1), A342851(n+1)]` -/
def P3466669519711946066.Spec : Prop :=
  ∀ n, (P3466669519711946066.a n : ℤ) = A215618 (n + 1)

end A215618

/-! ## A215618.P13464469060573185684

`record[A004151(A061910(n+1))]`
-/

namespace A215618.P13464469060573185684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A061910 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215618.P13464469060573185684

namespace A215618

/-- `record[A004151(A061910(n+1))]` -/
def P13464469060573185684.Spec : Prop :=
  ∀ n, P13464469060573185684.a n = A215618 (n + 1)

end A215618

/-! ## A215618.P15580643185259088211

`filter[A061910(n+1), A168184(#)]`
-/

namespace A215618.P15580643185259088211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A215618.P15580643185259088211

namespace A215618

/-- `filter[A061910(n+1), A168184(#)]` -/
def P15580643185259088211.Spec : Prop :=
  ∀ n, P15580643185259088211.a n = A215618 (n + 1)

end A215618

/-! ## A215618.P15539171748403883731

`eq[char[A061910(n+1)], A040790(n)]`
-/

namespace A215618.P15539171748403883731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A215618.P15539171748403883731

namespace A215618

/-- `eq[char[A061910(n+1)], A040790(n)]` -/
def P15539171748403883731.Spec : Prop :=
  ∀ n, (P15539171748403883731.a n : ℤ) = A215618 (n + 1)

end A215618

/-! ## A215618.P4306043731130663449

`eq[A010052(n²-A224977(n)), A040790(n)]`
-/

namespace A215618.P4306043731130663449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n ^ 2 : ℤ) - A224977 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215618.P4306043731130663449

namespace A215618

/-- `eq[A010052(n²-A224977(n)), A040790(n)]` -/
def P4306043731130663449.Spec : Prop :=
  ∀ n, (P4306043731130663449.a n : ℤ) = A215618 (n + 1)

end A215618

/-! ## A215618.P10340005806762862871

`lt[A040790(n), A000122(A268227(5*n))]`
-/

namespace A215618.P10340005806762862871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A268227 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215618.P10340005806762862871

namespace A215618

/-- `lt[A040790(n), A000122(A268227(5*n))]` -/
def P10340005806762862871.Spec : Prop :=
  ∀ n, (P10340005806762862871.a n : ℤ) = A215618 (n + 1)

end A215618

/-!
# A215619: a(n) is the number of consecutive terms of A100071, beginning with index n, which are divisible by n.

The programs for A215619, there is no canonical definition to state claims against.
-/

/-! ## A215619.P3743480104306931599

`Δ[A323186(A033951(n+3))]%A248835(n+3)`
-/

namespace A215619.P3743480104306931599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323186 (A033951 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A248835 (n + 3))

end

end A215619.P3743480104306931599

/-!
# A215620: Numbers of apex graphs (graphs which become or remain planar upon the removal of a single vertex) on n vertices.

The programs for A215620, there is no canonical definition to state claims against.
-/

/-! ## A215620.P606260043933017148

`A187947(∑[A245882(n+1)])`
-/

namespace A215620.P606260043933017148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187947 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215620.P606260043933017148

/-! ## A215620.P3852603316814064302

`∑[∑[A321911(n+1)]]-A339617(n)`
-/

namespace A215620.P3852603316814064302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321911 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339617 n

end

end A215620.P3852603316814064302

/-! ## A215620.P14408353776389378602

`A028310(A076321(n+1)-A324431(n))`
-/

namespace A215620.P14408353776389378602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A076321 (n + 1) - A324431 n).toNat

end

end A215620.P14408353776389378602

/-!
# A215621: Number of nonplanar apex graphs on n vertices.

The programs for A215621, there is no canonical definition to state claims against.
-/

/-! ## A215621.P661869533741434821

`A344235(C(n+3, 7))`
-/

namespace A215621.P661869533741434821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344235 (Nat.choose (n + 3) 7)

end

end A215621.P661869533741434821

/-! ## A215621.P8597619237975946759

`Δ[A090632(C(n+1, 6))]`
-/

namespace A215621.P8597619237975946759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090632 (Nat.choose (n + 1) 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215621.P8597619237975946759

/-! ## A215621.P14124171191169114453

`A111900(∑[(∑[n²]+1)²])`
-/

namespace A215621.P14124171191169114453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215621.P14124171191169114453

/-!
# A215623: G.f. satisfies A(x) = (1 + x*A(x)) * (1 + x*A(x)^4).

The programs for A215623, there is no canonical definition to state claims against.
-/

/-! ## A215623.P7149310002286449863

`A100682(A005425(n)²)`
-/

namespace A215623.P7149310002286449863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (A005425 n ^ 2).toNat

end

end A215623.P7149310002286449863

/-!
# A215624: G.f. satisfies A(x) = (1 + x*A(x)) * (1 + x*A(x)^5).

The programs for A215624, there is no canonical definition to state claims against.
-/

/-! ## A215624.P5378155620318661136

`A097950(A048802(n+1))`
-/

namespace A215624.P5378155620318661136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097950 (A048802 (n + 1)).toNat

end

end A215624.P5378155620318661136

/-!
# A215626: Number of terms in 8th derivative of a function composed with itself n times.

The programs for A215626, there is no canonical definition to state claims against.
-/

/-! ## A215626.P14594272912241791062

`A022818(A167487(n+6)+1)`
-/

namespace A215626.P14594272912241791062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A167487 (n + 6) + 1).toNat

end

end A215626.P14594272912241791062

/-! ## A215626.P11174272028368429022

`A022818(A000124(n+7)+7)`
-/

namespace A215626.P11174272028368429022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000124 (n + 7) + 7).toNat

end

end A215626.P11174272028368429022

/-! ## A215626.P5871901713582587705

`A022818(A253145(n+6)+8)`
-/

namespace A215626.P5871901713582587705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A253145 (n + 6) + 8).toNat

end

end A215626.P5871901713582587705

/-! ## A215626.P4087676682411558163

`A022818(A000217(n+7)+8)`
-/

namespace A215626.P4087676682411558163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000217 (n + 7) + 8).toNat

end

end A215626.P4087676682411558163

/-! ## A215626.P2942202053693748249

`A022818(9-A080956(n+8))`
-/

namespace A215626.P2942202053693748249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (9 - A080956 (n + 8)).toNat

end

end A215626.P2942202053693748249

/-! ## A215626.P11511993192502261933

`A022818(A155212(n+5)-1-2*n)`
-/

namespace A215626.P11511993192502261933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A155212 (n + 5) - 1 - (2 * n : ℤ)).toNat

end

end A215626.P11511993192502261933

/-!
# A215627: Number of terms in 9th derivative of a function composed with itself n times.

The programs for A215627, there is no canonical definition to state claims against.
-/

/-! ## A215627.P13397032615368255774

`A022818(A133263(n+8)+7)`
-/

namespace A215627.P13397032615368255774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A133263 (n + 8) + 7).toNat

end

end A215627.P13397032615368255774

/-! ## A215627.P17391492141709104981

`A022818(A000124(n+8)+8)`
-/

namespace A215627.P17391492141709104981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000124 (n + 8) + 8).toNat

end

end A215627.P17391492141709104981

/-! ## A215627.P17833982083300076450

`A022818(A000217(n+8)+9)`
-/

namespace A215627.P17833982083300076450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000217 (n + 8) + 9).toNat

end

end A215627.P17833982083300076450

/-! ## A215627.P6550798506210544860

`A022818(eq[10, A131818(n+1)])`
-/

namespace A215627.P6550798506210544860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215627.P6550798506210544860

/-! ## A215627.P2076555181798419567

`A022818(eq[10, A135223(n+1)])`
-/

namespace A215627.P2076555181798419567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215627.P2076555181798419567

/-! ## A215627.P8406200041368995564

`A022818(A055999(n+7)-4-2*n)`
-/

namespace A215627.P8406200041368995564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A055999 (n + 7) - 4 - (2 * n : ℤ)).toNat

end

end A215627.P8406200041368995564

/-!
# A215628: Number of terms in 10th derivative of a function composed with itself n times.

The programs for A215628, there is no canonical definition to state claims against.
-/

/-! ## A215628.P8896908872781248810

`A022818(A133263(n+9)+8)`
-/

namespace A215628.P8896908872781248810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A133263 (n + 9) + 8).toNat

end

end A215628.P8896908872781248810

/-! ## A215628.P3353612254791086399

`A022818(A000096(n+8)+11)`
-/

namespace A215628.P3353612254791086399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000096 (n + 8) + 11).toNat

end

end A215628.P3353612254791086399

/-! ## A215628.P11820595096458892005

`A022818(A000217(n+9)+10)`
-/

namespace A215628.P11820595096458892005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000217 (n + 9) + 10).toNat

end

end A215628.P11820595096458892005

/-! ## A215628.P18175433745285360996

`A022818(eq[11, A131818(n+1)])`
-/

namespace A215628.P18175433745285360996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215628.P18175433745285360996

/-! ## A215628.P17126501312285757330

`A022818(A000124(n+10)-(n+1))`
-/

namespace A215628.P17126501312285757330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A215628.P17126501312285757330

/-!
# A215629: n-th derivative of x^(x^((x^x)^x)) at x=1.

The programs for A215629, there is no canonical definition to state claims against.
-/

/-! ## A215629.P17679553965249503163

`A215703(eq[15, A025581(n)])`
-/

namespace A215629.P17679553965249503163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215629.P17679553965249503163

/-! ## A215629.P6509290275948078728

`A215703(eq[15, A195664(n)])`
-/

namespace A215629.P6509290275948078728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215629.P6509290275948078728

/-! ## A215629.P3706605169422055146

`A215703(eq[16, A193739(n)])`
-/

namespace A215629.P3706605169422055146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215629.P3706605169422055146

/-! ## A215629.P296360239350954890

`A215703(eq[7, A243070(n+1)])`
-/

namespace A215629.P296360239350954890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215629.P296360239350954890

/-! ## A215629.P5957892481826553551

`A215703(eq[16, A004736(n+1)])`
-/

namespace A215629.P5957892481826553551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215629.P5957892481826553551

/-!
# A215630: Triangle read by rows: T(n,k) = n^2 - n*k + k^2, 1 <= k <= n.

The programs for A215630, the canonical program `A215630.P5926163598212012995` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215630 has offset 1).

The definition of A215630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215630.P18235847479404982539

`∑[Δ[n²]-round(sqrt(2*n))²]`
-/

namespace A215630.P18235847479404982539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215630.P18235847479404982539

namespace A215630

/-- `∑[Δ[n²]-round(sqrt(2*n))²]` -/
def P18235847479404982539.Spec : Prop :=
  ∀ n, P18235847479404982539.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P549310063514248243

`A073254(comp[∑[n]])`
-/

namespace A215630.P549310063514248243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A215630.P549310063514248243

namespace A215630

/-- `A073254(comp[∑[n]])` -/
def P549310063514248243.Spec : Prop :=
  ∀ n, P549310063514248243.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P5926163598212012995

`A144216(n+1)+1+n`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A215630

/-- `A144216(n+1)+1+n` -/
def P5926163598212012995.Spec : Prop :=
  ∀ n, P5926163598212012995.a n = A215630 (n + 1)

theorem P5926163598212012995.correct : P5926163598212012995.Spec := by
  intro n
  simp only [A215630, Nat.add_sub_cancel]

end A215630

/-! ## A215630.P5313294649493756538

`2*(n+1)-A128139(n)`
-/

namespace A215630.P5313294649493756538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A128139 n

end

end A215630.P5313294649493756538

namespace A215630

/-- `2*(n+1)-A128139(n)` -/
def P5313294649493756538.Spec : Prop :=
  ∀ n, P5313294649493756538.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P4856360943873401899

`(n+1)²-∑[A168038(n)]`
-/

namespace A215630.P4856360943873401899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215630.P4856360943873401899

namespace A215630

/-- `(n+1)²-∑[A168038(n)]` -/
def P4856360943873401899.Spec : Prop :=
  ∀ n, P4856360943873401899.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P14127626833177668209

`A176270(n)+A061885(n)`
-/

namespace A215630.P14127626833177668209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n + A061885 n

end

end A215630.P14127626833177668209

namespace A215630

/-- `A176270(n)+A061885(n)` -/
def P14127626833177668209.Spec : Prop :=
  ∀ n, P14127626833177668209.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P2214382656291513546

`A349039(n)+A101447(n)`
-/

namespace A215630.P2214382656291513546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349039 n + A101447 n

end

end A215630.P2214382656291513546

namespace A215630

/-- `A349039(n)+A101447(n)` -/
def P2214382656291513546.Spec : Prop :=
  ∀ n, P2214382656291513546.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P11483504441731815217

`A051162(n)+A073254(n)+1`
-/

namespace A215630.P11483504441731815217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (A073254 n + 1)

end

end A215630.P11483504441731815217

namespace A215630

/-- `A051162(n)+A073254(n)+1` -/
def P11483504441731815217.Spec : Prop :=
  ∀ n, P11483504441731815217.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P6790289329321224402

`A081493(n+1)+A055630(n)`
-/

namespace A215630.P6790289329321224402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) + A055630 n

end

end A215630.P6790289329321224402

namespace A215630

/-- `A081493(n+1)+A055630(n)` -/
def P6790289329321224402.Spec : Prop :=
  ∀ n, P6790289329321224402.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P11773815512117341918

`A094727(n+1)+A073254(n)`
-/

namespace A215630.P11773815512117341918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A073254 n

end

end A215630.P11773815512117341918

namespace A215630

/-- `A094727(n+1)+A073254(n)` -/
def P11773815512117341918.Spec : Prop :=
  ∀ n, P11773815512117341918.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P15284859589167003993

`A185910(n+1)+A091435(n)`
-/

namespace A215630.P15284859589167003993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1) + A091435 n

end

end A215630.P15284859589167003993

namespace A215630

/-- `A185910(n+1)+A091435(n)` -/
def P15284859589167003993.Spec : Prop :=
  ∀ n, P15284859589167003993.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P18136959380388721625

`A004201(n+1)-A004247(n)`
-/

namespace A215630.P18136959380388721625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - A004247 n

end

end A215630.P18136959380388721625

namespace A215630

/-- `A004201(n+1)-A004247(n)` -/
def P18136959380388721625.Spec : Prop :=
  ∀ n, P18136959380388721625.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P5502117750370429942

`A064801(n+1)-A059036(n)`
-/

namespace A215630.P5502117750370429942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - A059036 n

end

end A215630.P5502117750370429942

namespace A215630

/-- `A064801(n+1)-A059036(n)` -/
def P5502117750370429942.Spec : Prop :=
  ∀ n, P5502117750370429942.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P10845713301920176762

`A180858(n+1)-A114327(n)`
-/

namespace A215630.P10845713301920176762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180858 (n + 1) - A114327 n

end

end A215630.P10845713301920176762

namespace A215630

/-- `A180858(n+1)-A114327(n)` -/
def P10845713301920176762.Spec : Prop :=
  ∀ n, P10845713301920176762.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P1323699506238836729

`A182491(n+1)-A151890(n)`
-/

namespace A215630.P1323699506238836729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182491 (n + 1) - A151890 n

end

end A215630.P1323699506238836729

namespace A215630

/-- `A182491(n+1)-A151890(n)` -/
def P1323699506238836729.Spec : Prop :=
  ∀ n, P1323699506238836729.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P11525836100306106687

`2-(A128139(n)-A005843(n))`
-/

namespace A215630.P11525836100306106687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A128139 n - A005843 n)

end

end A215630.P11525836100306106687

namespace A215630

/-- `2-(A128139(n)-A005843(n))` -/
def P11525836100306106687.Spec : Prop :=
  ∀ n, P11525836100306106687.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P3970534080886763673

`A075362(n+1)+A025581(n)²`
-/

namespace A215630.P3970534080886763673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + A025581 n ^ 2

end

end A215630.P3970534080886763673

namespace A215630

/-- `A075362(n+1)+A025581(n)²` -/
def P3970534080886763673.Spec : Prop :=
  ∀ n, P3970534080886763673.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P1633366742368407553

`∑[A130296(n+1)]-A004247(n)`
-/

namespace A215630.P1633366742368407553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004247 n

end

end A215630.P1633366742368407553

namespace A215630

/-- `∑[A130296(n+1)]-A004247(n)` -/
def P1633366742368407553.Spec : Prop :=
  ∀ n, P1633366742368407553.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P13103472219763559059

`A095831(n+1)+A075362(n+1)`
-/

namespace A215630.P13103472219763559059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + A075362 (n + 1)

end

end A215630.P13103472219763559059

namespace A215630

/-- `A095831(n+1)+A075362(n+1)` -/
def P13103472219763559059.Spec : Prop :=
  ∀ n, P13103472219763559059.a n = A215630 (n + 1)

end A215630

/-! ## A215630.P413441375988055612

`A133819(n+1)+A095834(n+1)`
-/

namespace A215630.P413441375988055612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + A095834 (n + 1)

end

end A215630.P413441375988055612

namespace A215630

/-- `A133819(n+1)+A095834(n+1)` -/
def P413441375988055612.Spec : Prop :=
  ∀ n, P413441375988055612.a n = A215630 (n + 1)

end A215630

/-!
# A215631: Triangle read by rows: T(n,k) = n^2 + n*k + k^2, 1 <= k <= n.

The programs for A215631, the canonical program `A215631.P10238980067780868376` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215631 has offset 1).

The definition of A215631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215631.P5498716493491452934

`A144562(n+1)+A073254(n)`
-/

namespace A215631.P5498716493491452934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + A073254 n

end

end A215631.P5498716493491452934

namespace A215631

/-- `A144562(n+1)+A073254(n)` -/
def P5498716493491452934.Spec : Prop :=
  ∀ n, P5498716493491452934.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P4082723598037485001

`A075362(n+1)+A070216(n+1)`
-/

namespace A215631.P4082723598037485001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + A070216 (n + 1)

end

end A215631.P4082723598037485001

namespace A215631

/-- `A075362(n+1)+A070216(n+1)` -/
def P4082723598037485001.Spec : Prop :=
  ∀ n, P4082723598037485001.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P10238980067780868376

`A182491(n+1)+A108872(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A215631

/-- `A182491(n+1)+A108872(n+1)` -/
def P10238980067780868376.Spec : Prop :=
  ∀ n, P10238980067780868376.a n = A215631 (n + 1)

theorem P10238980067780868376.correct : P10238980067780868376.Spec := by
  intro n
  simp only [A215631, Nat.add_sub_cancel]

end A215631

/-! ## A215631.P15203997174058876640

`A219069(n+1)/A215630(n+1)`
-/

namespace A215631.P15203997174058876640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219069 (n + 1) : ℚ) / (A215630 (n + 1) : ℚ)

end

end A215631.P15203997174058876640

namespace A215631

/-- `A219069(n+1)/A215630(n+1)` -/
def P15203997174058876640.Spec : Prop :=
  ∀ n, P15203997174058876640.a n = (A215631 (n + 1) : ℚ)

end A215631

/-! ## A215631.P10337397460858619919

`A108872(n+1)²-A075362(n+1)`
-/

namespace A215631.P10337397460858619919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) ^ 2 - A075362 (n + 1)

end

end A215631.P10337397460858619919

namespace A215631

/-- `A108872(n+1)²-A075362(n+1)` -/
def P10337397460858619919.Spec : Prop :=
  ∀ n, P10337397460858619919.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P15421544984222555580

`(A051162(n)+2)²-A075362(n+1)`
-/

namespace A215631.P15421544984222555580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 2) ^ 2 - A075362 (n + 1)

end

end A215631.P15421544984222555580

namespace A215631

/-- `(A051162(n)+2)²-A075362(n+1)` -/
def P15421544984222555580.Spec : Prop :=
  ∀ n, P15421544984222555580.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P5675802078011370277

`A215630(n+1)+2*A075362(n+1)`
-/

namespace A215631.P5675802078011370277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) + 2 * A075362 (n + 1)

end

end A215631.P5675802078011370277

namespace A215631

/-- `A215630(n+1)+2*A075362(n+1)` -/
def P5675802078011370277.Spec : Prop :=
  ∀ n, P5675802078011370277.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P9927178889674552297

`2*A070216(n+1)-A215630(n+1)`
-/

namespace A215631.P9927178889674552297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070216 (n + 1) - A215630 (n + 1)

end

end A215631.P9927178889674552297

namespace A215631

/-- `2*A070216(n+1)-A215630(n+1)` -/
def P9927178889674552297.Spec : Prop :=
  ∀ n, P9927178889674552297.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P8205710097927232369

`(A094727(n+1)+1)²-A075362(n+1)`
-/

namespace A215631.P8205710097927232369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) + 1) ^ 2 - A075362 (n + 1)

end

end A215631.P8205710097927232369

namespace A215631

/-- `(A094727(n+1)+1)²-A075362(n+1)` -/
def P8205710097927232369.Spec : Prop :=
  ∀ n, P8205710097927232369.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P12533878252484031997

`A108872(n+1)²-(A223544(n+1)+1)`
-/

namespace A215631.P12533878252484031997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) ^ 2 - (A223544 (n + 1) + 1)

end

end A215631.P12533878252484031997

namespace A215631

/-- `A108872(n+1)²-(A223544(n+1)+1)` -/
def P12533878252484031997.Spec : Prop :=
  ∀ n, P12533878252484031997.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P12252778147112941554

`(A070216(n+1)+A108872(n+1)²)/2`
-/

namespace A215631.P12252778147112941554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070216 (n + 1) + A108872 (n + 1) ^ 2 : ℚ) / 2

end

end A215631.P12252778147112941554

namespace A215631

/-- `(A070216(n+1)+A108872(n+1)²)/2` -/
def P12252778147112941554.Spec : Prop :=
  ∀ n, P12252778147112941554.a n = (A215631 (n + 1) : ℚ)

end A215631

/-! ## A215631.P5715359655245656994

`A094727(A014132(n+1))²-A075362(n+1)`
-/

namespace A215631.P5715359655245656994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A014132 (n + 1)).toNat ^ 2 - A075362 (n + 1)

end

end A215631.P5715359655245656994

namespace A215631

/-- `A094727(A014132(n+1))²-A075362(n+1)` -/
def P5715359655245656994.Spec : Prop :=
  ∀ n, P5715359655245656994.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P12530789937045528749

`A075362(n+1)+A133819(n+1)+A093995(n+1)`
-/

namespace A215631.P12530789937045528749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A133819 (n + 1) + A093995 (n + 1))

end

end A215631.P12530789937045528749

namespace A215631

/-- `A075362(n+1)+A133819(n+1)+A093995(n+1)` -/
def P12530789937045528749.Spec : Prop :=
  ∀ n, P12530789937045528749.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P14915178083018516421

`A070216(n+1)+A002024(n+1)*A002260(n+1)`
-/

namespace A215631.P14915178083018516421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) + A002024 (n + 1) * A002260 (n + 1)

end

end A215631.P14915178083018516421

namespace A215631

/-- `A070216(n+1)+A002024(n+1)*A002260(n+1)` -/
def P14915178083018516421.Spec : Prop :=
  ∀ n, P14915178083018516421.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P4674928113841752217

`(A002260(n+1)+A002024(n+1))²-A075362(n+1)`
-/

namespace A215631.P4674928113841752217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + A002024 (n + 1)) ^ 2 - A075362 (n + 1)

end

end A215631.P4674928113841752217

namespace A215631

/-- `(A002260(n+1)+A002024(n+1))²-A075362(n+1)` -/
def P4674928113841752217.Spec : Prop :=
  ∀ n, P4674928113841752217.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P13043336998879558126

`A094727(n+1)+A094727(n+1)²-A144204(n+1)`
-/

namespace A215631.P13043336998879558126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + (A094727 (n + 1) ^ 2 - A144204 (n + 1))

end

end A215631.P13043336998879558126

namespace A215631

/-- `A094727(n+1)+A094727(n+1)²-A144204(n+1)` -/
def P13043336998879558126.Spec : Prop :=
  ∀ n, P13043336998879558126.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P824743580422551690

`A108872(n+1)²-(A144204(n+1)+A108872(n+1))`
-/

namespace A215631.P824743580422551690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) ^ 2 - (A144204 (n + 1) + A108872 (n + 1))

end

end A215631.P824743580422551690

namespace A215631

/-- `A108872(n+1)²-(A144204(n+1)+A108872(n+1))` -/
def P824743580422551690.Spec : Prop :=
  ∀ n, P824743580422551690.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P15399290562159152798

`A002024(n+1)²+A002260(n+1)*A108872(n+1)`
-/

namespace A215631.P15399290562159152798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + A002260 (n + 1) * A108872 (n + 1)

end

end A215631.P15399290562159152798

namespace A215631

/-- `A002024(n+1)²+A002260(n+1)*A108872(n+1)` -/
def P15399290562159152798.Spec : Prop :=
  ∀ n, P15399290562159152798.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P17866350989722880933

`(A075362(n+1)-A144204(n+1))²-A075362(n+1)`
-/

namespace A215631.P17866350989722880933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) - A144204 (n + 1)) ^ 2 - A075362 (n + 1)

end

end A215631.P17866350989722880933

namespace A215631

/-- `(A075362(n+1)-A144204(n+1))²-A075362(n+1)` -/
def P17866350989722880933.Spec : Prop :=
  ∀ n, P17866350989722880933.a n = A215631 (n + 1)

end A215631

/-! ## A215631.P11435632312953884579

`A132111(comp[∑[n]])`
-/

namespace A215631.P11435632312953884579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A215631.P11435632312953884579

namespace A215631

/-- `A132111(comp[∑[n]])` -/
def P11435632312953884579.Spec : Prop :=
  ∀ n, P11435632312953884579.a n = A215631 (n + 1)

end A215631

/-!
# A215634: a(n) = - 6*a(n-1) - 9*a(n-2) - 3*a(n-3) with a(0)=3, a(1)=-6, a(2)=18.

The programs for A215634, the canonical program `A215634.P5123955411711119068` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215634 has offset 0).

The definition of A215634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-6*a(n-1)-9*a(n-2)-3*a(n-3)` (program `A215634.P5123955411711119068`, by `A215634.P5123955411711119068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215634.P5123955411711119068

`-6*a(n-1)-9*a(n-2)-3*a(n-3)` with `a(0)=3, a(1)=-6, a(2)=18`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215634

/-- `-6*a(n-1)-9*a(n-2)-3*a(n-3)` -/
def P5123955411711119068.Spec : Prop :=
  ∀ n, P5123955411711119068.a n = A215634 n

theorem P5123955411711119068.correct : P5123955411711119068.Spec := by
  intro n
  simp only [A215634]

end A215634

/-! ## A215634.P6487503925011111520

`3*(-1)^n*A124292(n+2)`
-/

namespace A215634.P6487503925011111520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n * A124292 (n + 2)

end

end A215634.P6487503925011111520

namespace A215634

/-- `3*(-1)^n*A124292(n+2)` -/
def P6487503925011111520.Spec : Prop :=
  ∀ n, P6487503925011111520.a n = A215634 n

end A215634

/-! ## A215634.P13465445689966329899

`A124292(n+2)*A174971(n)`
-/

namespace A215634.P13465445689966329899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 2) * A174971 n

end

end A215634.P13465445689966329899

namespace A215634

/-- `A124292(n+2)*A174971(n)` -/
def P13465445689966329899.Spec : Prop :=
  ∀ n, P13465445689966329899.a n = A215634 n

end A215634

/-! ## A215634.P1866212429659529423

`3*A124292(n+2)*A033999(n)`
-/

namespace A215634.P1866212429659529423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A124292 (n + 2) * A033999 n

end

end A215634.P1866212429659529423

namespace A215634

/-- `3*A124292(n+2)*A033999(n)` -/
def P1866212429659529423.Spec : Prop :=
  ∀ n, P1866212429659529423.a n = A215634 n

end A215634

/-! ## A215634.P17385585189766494609

`3*(-1)^n*record[A124292(A324346(n))]`
-/

namespace A215634.P17385585189766494609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (A324346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215634.P17385585189766494609

namespace A215634

/-- `3*(-1)^n*record[A124292(A324346(n))]` -/
def P17385585189766494609.Spec : Prop :=
  ∀ n, P17385585189766494609.a n = A215634 n

end A215634

/-! ## A215634.P317815074005506808

`(A206949(n)+A025192(n))*A174971(n)`
-/

namespace A215634.P317815074005506808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A206949 n + A025192 n) * A174971 n

end

end A215634.P317815074005506808

namespace A215634

/-- `(A206949(n)+A025192(n))*A174971(n)` -/
def P317815074005506808.Spec : Prop :=
  ∀ n, P317815074005506808.a n = A215634 n

end A215634

/-!
# A215635: a(n) = - 12*a(n-1) - 54*a(n-2) - 112*a(n-3) - 105*a(n-4) -36*a(n-5) - 2*a(n-6), with a(0)=3, a(1)=-6, a(2)=18, a(3)=-60, a(4)=210, a(5)=-756.

The programs for A215635, there is no canonical definition to state claims against.
-/

/-! ## A215635.P4869395272491518772

`((2/n-4)*a(n-1))%A179517(n+1)` with `a(0)=3`
-/

namespace A215635.P4869395272491518772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((2 / (n : ℚ) - 4) * (a (n - 1) : ℚ))) (A179517 (n + 1))

end

end A215635.P4869395272491518772

/-! ## A215635.P2242417812237074301

`A143940(A000124(n))*A168491(n)`
-/

namespace A215635.P2242417812237074301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143940 (A000124 n).toNat * A168491 n

end

end A215635.P2242417812237074301

/-! ## A215635.P3784552168591577978

`A000984(n)*A174971(A174988(n))`
-/

namespace A215635.P3784552168591577978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A174971 (A174988 n).toNat

end

end A215635.P3784552168591577978

/-! ## A215635.P3815547752623060128

`A000984(n)*A195017(A030078(n+1))`
-/

namespace A215635.P3815547752623060128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A195017 (A030078 (n + 1)).toNat

end

end A215635.P3815547752623060128

/-! ## A215635.P5992483802502681041

`A132668(A132668(3*(n+1)))*A168491(n)`
-/

namespace A215635.P5992483802502681041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132668 (A132668 (3 * (n + 1))).toNat * A168491 n

end

end A215635.P5992483802502681041

/-!
# A215636: a(n) = - 12*a(n-1) - 54*a(n-2) - 112*a(n-3) - 105*a(n-4) - 36*a(n-5) - 2*a(n-6) with a(0)=a(1)=a(2)=0, a(3)=-3, a(4)=24, a(5)=-135.

The programs for A215636, there is no canonical definition to state claims against.
-/

/-! ## A215636.P10479859735975216118

`3*A038608(A037953(2*n))`
-/

namespace A215636.P10479859735975216118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038608 (A037953 (2 * n)).toNat

end

end A215636.P10479859735975216118

/-! ## A215636.P1968129956038201654

`A110665(n*A231182(2*n))`
-/

namespace A215636.P1968129956038201654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 ((n : ℤ) * A231182 (2 * n)).toNat

end

end A215636.P1968129956038201654

/-!
# A215637: Number of solutions of square array of integers, choosing one prime from each row and column.

The programs for A215637, there is no canonical definition to state claims against.
-/

/-! ## A215637.P6567945076333940457

`A144328(n+1)+round(sqrt(A288562(n)))-1`
-/

namespace A215637.P6567945076333940457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (A288562 n : ℝ)) - 1)

end

end A215637.P6567945076333940457

/-!
# A215638: E.g.f.: Series_Reversion( x/(cos(x) + sin(x)) ).

The programs for A215638, there is no canonical definition to state claims against.
-/

/-! ## A215638.P15812186454177388700

`(n+1)*A215639(n)`
-/

namespace A215638.P15812186454177388700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A215639 n

end

end A215638.P15812186454177388700

/-! ## A215638.P7687076791807932329

`A215639(n)*A220645(∑[n])`
-/

namespace A215638.P7687076791807932329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215639 n * A220645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215638.P7687076791807932329

/-! ## A215638.P11761308353957442242

`A215639(n)*A336326(∑[n])`
-/

namespace A215638.P11761308353957442242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215639 n * A336326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215638.P11761308353957442242

/-! ## A215638.P11251436132353819815

`A215639(n)*A290632(A000124(n))`
-/

namespace A215638.P11251436132353819815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215639 n * A290632 (A000124 n).toNat

end

end A215638.P11251436132353819815

/-!
# A215639: E.g.f. satisfies: A(x) = cos(x*A(x)) + sin(x*A(x)).

The programs for A215639, there is no canonical definition to state claims against.
-/

/-! ## A215639.P5146197307841073193

`A215638(n+1)/(n+1)`
-/

namespace A215639.P5146197307841073193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215638 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A215639.P5146197307841073193

/-! ## A215639.P11422969907885004066

`(n+1)^-1*A215638(A000027(n+1))`
-/

namespace A215639.P11422969907885004066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (-1 : ℤ) * (A215638 (A000027 (n + 1)).toNat : ℚ)

end

end A215639.P11422969907885004066

/-! ## A215639.P10721503530133842026

`(n+1)^-1*A215638(A187829(n+1))`
-/

namespace A215639.P10721503530133842026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (-1 : ℤ) * (A215638 (A187829 (n + 1)).toNat : ℚ)

end

end A215639.P10721503530133842026

/-!
# A215640: Sum of divisors of colossally abundant numbers.

The programs for A215640, there is no canonical definition to state claims against.
-/

/-! ## A215640.P12496406413842314685

`A000203(A004490(n+1))`
-/

namespace A215640.P12496406413842314685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004490 (n + 1)).toNat

end

end A215640.P12496406413842314685

/-! ## A215640.P8764766681374363585

`∑{d}[A002201(n+1), #]`
-/

namespace A215640.P8764766681374363585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A215640.P8764766681374363585

/-! ## A215640.P14665735600079634792

`∑{d}[A224078(n+1), #]`
-/

namespace A215640.P14665735600079634792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A215640.P14665735600079634792

/-! ## A215640.P15904290049465578343

`∑{d}[A263572(n+2), #]`
-/

namespace A215640.P15904290049465578343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263572 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A215640.P15904290049465578343

/-! ## A215640.P6565507857136995413

`∑{d}[A309811(n+2), #]`
-/

namespace A215640.P6565507857136995413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309811 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A215640.P6565507857136995413

/-!
# A215642: Primes p such that there is no D such that p+D, p-D, p+2*D, p-2*D are all primes.

The programs for A215642, there is no canonical definition to state claims against.
-/

/-! ## A215642.P7397279422615211133

`eq[A003415(n), A219866(A207031(n+1))]`
-/

namespace A215642.P7397279422615211133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A207031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215642.P7397279422615211133

/-! ## A215642.P4123158733593705237

`eq[A003415(n), A331039(A359901(n+1))]`
-/

namespace A215642.P4123158733593705237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (A359901 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215642.P4123158733593705237

/-! ## A215642.P16928685867415789541

`record[A051698(A341112(n+3)+2)]`
-/

namespace A215642.P16928685867415789541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A341112 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215642.P16928685867415789541

/-!
# A215643: n-th derivative of x^((x^(x^x))^x) at x=1.

The programs for A215643, there is no canonical definition to state claims against.
-/

/-! ## A215643.P3657362355140378055

`A215703(eq[14, A025581(n)])`
-/

namespace A215643.P3657362355140378055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215643.P3657362355140378055

/-! ## A215643.P6621251366496761029

`A215703(eq[15, A193739(n)])`
-/

namespace A215643.P6621251366496761029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215643.P6621251366496761029

/-! ## A215643.P4255063643015878662

`A215703(eq[15, A195663(n)])`
-/

namespace A215643.P4255063643015878662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215643.P4255063643015878662

/-! ## A215643.P15691752603699291670

`A215703(eq[15, A004736(n+1)])`
-/

namespace A215643.P15691752603699291670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215643.P15691752603699291670

/-! ## A215643.P3321859794407335829

`A215703(eq[22, A219347(n+1)])`
-/

namespace A215643.P3321859794407335829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215643.P3321859794407335829

/-!
# A215644: Full spectrum threshold for maximal determinant {+1, -1} matrices: largest order of submatrix for which the full spectrum of absolute determinant values occurs.

The programs for A215644, there is no canonical definition to state claims against.
-/

/-! ## A215644.P11259406130949437533

`A000120(A018700(n+1)*A117433(n))`
-/

namespace A215644.P11259406130949437533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A018700 (n + 1) * A117433 n).toNat

end

end A215644.P11259406130949437533

/-! ## A215644.P4836023987468193235

`A000120(A018700(n+1)*A349054(n))`
-/

namespace A215644.P4836023987468193235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A018700 (n + 1) * A349054 n).toNat

end

end A215644.P4836023987468193235

/-! ## A215644.P8275833779813177679

`A182134(A328692(n)+A074206(3*n))`
-/

namespace A215644.P8275833779813177679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A328692 n + A074206 (3 * n)).toNat

end

end A215644.P8275833779813177679

/-! ## A215644.P13759809430691570492

`A178487(A332511(n+1))+n-∑[val(n+1, 2)]`
-/

namespace A215644.P13759809430691570492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A332511 (n + 1)).toNat + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A215644.P13759809430691570492

/-! ## A215644.P9029693480916077850

`A165073(A320449(n))+A004526(n)`
-/

namespace A215644.P9029693480916077850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 (A320449 n).toNat + A004526 n

end

end A215644.P9029693480916077850

/-!
# A215646: a(n) = n * (11*n^2 + 6*n + 1) / 6.

The programs for A215646, the canonical program `A215646.P16176681040544614995` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215646 has offset 0).

The definition of A215646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215646.P16176681040544614995

`n*(11*n²+6*n+1)/6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215646

/-- `n*(11*n²+6*n+1)/6` -/
def P16176681040544614995.Spec : Prop :=
  ∀ n, P16176681040544614995.a n = (A215646 n : ℚ)

end A215646

/-! ## A215646.P6133772436118955131

`(2*n+1)*n²-∑[C(n, 2)]`
-/

namespace A215646.P6133772436118955131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A215646.P6133772436118955131

namespace A215646

/-- `(2*n+1)*n²-∑[C(n, 2)]` -/
def P6133772436118955131.Spec : Prop :=
  ∀ n, P6133772436118955131.a n = A215646 n

end A215646

/-! ## A215646.P9053808352572474404

`(2*n+1)*n²-C(n+1, 3)`
-/

namespace A215646.P9053808352572474404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * n ^ 2 : ℤ) - (Nat.choose (n + 1) 3 : ℤ)

end

end A215646.P9053808352572474404

namespace A215646

/-- `(2*n+1)*n²-C(n+1, 3)` -/
def P9053808352572474404.Spec : Prop :=
  ∀ n, P9053808352572474404.a n = A215646 n

end A215646

/-! ## A215646.P14749908019050011861

`C(2*n+1, 3)+(n+1)*∑[n]`
-/

namespace A215646.P14749908019050011861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3 + (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215646.P14749908019050011861

namespace A215646

/-- `C(2*n+1, 3)+(n+1)*∑[n]` -/
def P14749908019050011861.Spec : Prop :=
  ∀ n, (P14749908019050011861.a n : ℤ) = A215646 n

end A215646

/-! ## A215646.P10238185550237412757

`A132112(n)-n²`
-/

namespace A215646.P10238185550237412757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n - (n ^ 2 : ℤ)

end

end A215646.P10238185550237412757

namespace A215646

/-- `A132112(n)-n²` -/
def P10238185550237412757.Spec : Prop :=
  ∀ n, P10238185550237412757.a n = A215646 n

end A215646

/-! ## A215646.P11577520507681247442

`∑[A180223(n)]+n`
-/

namespace A215646.P11577520507681247442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A215646.P11577520507681247442

namespace A215646

/-- `∑[A180223(n)]+n` -/
def P11577520507681247442.Spec : Prop :=
  ∀ n, P11577520507681247442.a n = A215646 n

end A215646

/-! ## A215646.P3836332899129216112

`A011195(n)-n²²`
-/

namespace A215646.P3836332899129216112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011195 n - ((n ^ 2) ^ 2 : ℤ)

end

end A215646.P3836332899129216112

namespace A215646

/-- `A011195(n)-n²²` -/
def P3836332899129216112.Spec : Prop :=
  ∀ n, P3836332899129216112.a n = A215646 n

end A215646

/-! ## A215646.P1904336956366110143

`A004467(n)+n²+n`
-/

namespace A215646.P1904336956366110143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004467 n + (n ^ 2 + n : ℤ)

end

end A215646.P1904336956366110143

namespace A215646

/-- `A004467(n)+n²+n` -/
def P1904336956366110143.Spec : Prop :=
  ∀ n, P1904336956366110143.a n = A215646 n

end A215646

/-! ## A215646.P456270138106563195

`∑[A005897(n)-(∑[n+3]-2)]`
-/

namespace A215646.P456270138106563195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215646.P456270138106563195

namespace A215646

/-- `∑[A005897(n)-(∑[n+3]-2)]` -/
def P456270138106563195.Spec : Prop :=
  ∀ n, P456270138106563195.a n = A215646 n

end A215646

/-! ## A215646.P1745816230922929990

`abs(A100149(n+1)-Δ[n²]^3)`
-/

namespace A215646.P1745816230922929990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100149 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3|

end

end A215646.P1745816230922929990

namespace A215646

/-- `abs(A100149(n+1)-Δ[n²]^3)` -/
def P1745816230922929990.Spec : Prop :=
  ∀ n, P1745816230922929990.a n = A215646 n

end A215646

/-! ## A215646.P4512322728528492465

`abs(∑[8*n]-∑[A211013(n)]-n)`
-/

namespace A215646.P4512322728528492465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)|

end

end A215646.P4512322728528492465

namespace A215646

/-- `abs(∑[8*n]-∑[A211013(n)]-n)` -/
def P4512322728528492465.Spec : Prop :=
  ∀ n, P4512322728528492465.a n = A215646 n

end A215646

/-! ## A215646.P17498320132105199515

`abs((2*n+1)²-A100156(n+1))`
-/

namespace A215646.P17498320132105199515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n + 1) ^ 2 : ℤ) - A100156 (n + 1)|

end

end A215646.P17498320132105199515

namespace A215646

/-- `abs((2*n+1)²-A100156(n+1))` -/
def P17498320132105199515.Spec : Prop :=
  ∀ n, P17498320132105199515.a n = A215646 n

end A215646

/-! ## A215646.P6243857099208899694

`A006002(n)+A000447(n)`
-/

namespace A215646.P6243857099208899694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n + A000447 n

end

end A215646.P6243857099208899694

namespace A215646

/-- `A006002(n)+A000447(n)` -/
def P6243857099208899694.Spec : Prop :=
  ∀ n, P6243857099208899694.a n = A215646 n

end A215646

/-! ## A215646.P2012108892497490911

`A006331(n)+A004126(n)`
-/

namespace A215646.P2012108892497490911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + A004126 n

end

end A215646.P2012108892497490911

namespace A215646

/-- `A006331(n)+A004126(n)` -/
def P2012108892497490911.Spec : Prop :=
  ∀ n, P2012108892497490911.a n = A215646 n

end A215646

/-! ## A215646.P2855030292507146882

`A011379(n)+A004068(n)`
-/

namespace A215646.P2855030292507146882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + A004068 n

end

end A215646.P2855030292507146882

namespace A215646

/-- `A011379(n)+A004068(n)` -/
def P2855030292507146882.Spec : Prop :=
  ∀ n, P2855030292507146882.a n = A215646 n

end A215646

/-! ## A215646.P4587866729592890604

`A050441(n)+A000096(n)`
-/

namespace A215646.P4587866729592890604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050441 n + A000096 n

end

end A215646.P4587866729592890604

namespace A215646

/-- `A050441(n)+A000096(n)` -/
def P4587866729592890604.Spec : Prop :=
  ∀ n, P4587866729592890604.a n = A215646 n

end A215646

/-! ## A215646.P10390918029854980890

`A268684(n)+A006003(n)`
-/

namespace A215646.P10390918029854980890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A006003 n

end

end A215646.P10390918029854980890

namespace A215646

/-- `A268684(n)+A006003(n)` -/
def P10390918029854980890.Spec : Prop :=
  ∀ n, P10390918029854980890.a n = A215646 n

end A215646

/-! ## A215646.P2242322034831634425

`A162148(n)+A152015(n)`
-/

namespace A215646.P2242322034831634425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + A152015 n

end

end A215646.P2242322034831634425

namespace A215646

/-- `A162148(n)+A152015(n)` -/
def P2242322034831634425.Spec : Prop :=
  ∀ n, P2242322034831634425.a n = A215646 n

end A215646

/-! ## A215646.P3148589609620894857

`A162147(n)+A160378(n)`
-/

namespace A215646.P3148589609620894857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162147 n + A160378 n

end

end A215646.P3148589609620894857

namespace A215646

/-- `A162147(n)+A160378(n)` -/
def P3148589609620894857.Spec : Prop :=
  ∀ n, P3148589609620894857.a n = A215646 n

end A215646

/-!
# A215648: G.f. satisfies: A(x) = 1 + x*A(x)^2 + 3*x^2*A'(x)*A(x).

The programs for A215648, there is no canonical definition to state claims against.
-/

/-! ## A215648.P17079364477451018680

`A267827(n)/2^n`
-/

namespace A215648.P17079364477451018680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267827 n : ℚ) / (2 ^ n : ℚ)

end

end A215648.P17079364477451018680

/-! ## A215648.P1762650279557340002

`floor(A267827(n)/A000079(n))`
-/

namespace A215648.P1762650279557340002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267827 n : ℚ) / (A000079 n : ℚ)⌋

end

end A215648.P1762650279557340002

/-! ## A215648.P14430636621148656091

`A291843(A077043(2*n+1)+A000007(n))/2^n`
-/

namespace A215648.P14430636621148656091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291843 (A077043 (2 * n + 1) + A000007 n).toNat : ℚ) / (2 ^ n : ℚ)

end

end A215648.P14430636621148656091

/-! ## A215648.P4499526250837522136

`A291843(A077043(2*n+1)%A008528(n))/2^n`
-/

namespace A215648.P4499526250837522136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291843 (Int.tmod (A077043 (2 * n + 1)) (A008528 n)).toNat : ℚ) / (2 ^ n : ℚ)

end

end A215648.P4499526250837522136

/-! ## A215648.P8768915801167158069

`floor(A267827(n)/A062383(A000975(n)))`
-/

namespace A215648.P8768915801167158069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267827 n : ℚ) / (A062383 (A000975 n).toNat : ℚ)⌋

end

end A215648.P8768915801167158069

/-!
# A215649: Reversals of tribonacci numbers (sorted).

The programs for A215649, there is no canonical definition to state claims against.
-/

/-! ## A215649.P6385964613731530900

`A220419(or(6, A199231(n+1)))`
-/

namespace A215649.P6385964613731530900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220419 (Int.lor 6 (A199231 (n + 1))).toNat

end

end A215649.P6385964613731530900

/-! ## A215649.P16214927788814496799

`A102118(lt[A102118(n), A017911(n)])`
-/

namespace A215649.P16214927788814496799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215649.P16214927788814496799

/-! ## A215649.P11646338203756278524

`A102118(lt[A102118(n), A038348(n)])`
-/

namespace A215649.P11646338203756278524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215649.P11646338203756278524

/-! ## A215649.P1115632806335083381

`A102118(lt[A102118(n), A305630(n)])`
-/

namespace A215649.P1115632806335083381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215649.P1115632806335083381

/-! ## A215649.P12262605227329413081

`A102118(lt[A102118(n), A332283(n)])`
-/

namespace A215649.P12262605227329413081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215649.P12262605227329413081

/-!
# A215652: Exponential Riordan array [exp(x*exp(-x)),x].

The programs for A215652, there is no canonical definition to state claims against.
-/

/-! ## A215652.P12621147984594924431

`A007318(n)*A003725(A025581(n))`
-/

namespace A215652.P12621147984594924431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A003725 (A025581 n).toNat

end

end A215652.P12621147984594924431

/-! ## A215652.P14144916647965985205

`A130595(n)*A292952(A025581(n))`
-/

namespace A215652.P14144916647965985205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A292952 (A025581 n).toNat

end

end A215652.P14144916647965985205

/-! ## A215652.P1356667096170954700

`abs(A108086(n))*A003725(A025581(n))`
-/

namespace A215652.P1356667096170954700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| * A003725 (A025581 n).toNat

end

end A215652.P1356667096170954700

/-! ## A215652.P577402356318913118

`(A014473(n)+1)*A003725(A025581(n))`
-/

namespace A215652.P577402356318913118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A003725 (A025581 n).toNat

end

end A215652.P577402356318913118

/-! ## A215652.P8651990067843714922

`A003725(A025581(n))/2*A028326(n)`
-/

namespace A215652.P8651990067843714922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003725 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A215652.P8651990067843714922

/-! ## A215652.P14008445566012948816

`ceil(A124927(n)/2)*A003725(A025581(n))`
-/

namespace A215652.P14008445566012948816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 n : ℚ) / 2⌉ * A003725 (A025581 n).toNat

end

end A215652.P14008445566012948816

/-! ## A215652.P16148722331606206280

`A003725(A025581(n))*A004526(A028326(n))`
-/

namespace A215652.P16148722331606206280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003725 (A025581 n).toNat * A004526 (A028326 n).toNat

end

end A215652.P16148722331606206280

/-!
# A215653: a(n) = smallest positive m such that m^2 = 1+k*n with positive k.

The programs for A215653, there is no canonical definition to state claims against.
-/

/-! ## A215653.P5917596679781332700

`sqrt(A061369(n+1))`
-/

namespace A215653.P5917596679781332700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061369 (n + 1) : ℝ)

end

end A215653.P5917596679781332700

/-! ## A215653.P1065096936174039548

`sqrt(1+(n+1)*A076942(n+1))`
-/

namespace A215653.P1065096936174039548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 + (n + 1 : ℤ) * A076942 (n + 1) : ℝ)

end

end A215653.P1065096936174039548

/-! ## A215653.P10467105643018870450

`A070667(n+1)+C(2, n²)`
-/

namespace A215653.P10467105643018870450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (n + 1) + (Nat.choose 2 (n ^ 2) : ℤ)

end

end A215653.P10467105643018870450

/-! ## A215653.P11783771507713952366

`round(sqrt((n+1)*A076942(n+1)))`
-/

namespace A215653.P11783771507713952366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) * A076942 (n + 1) : ℝ))

end

end A215653.P11783771507713952366

/-! ## A215653.P7468362981151873465

`A070667((n+1)*C(2, n+1)+n+1)`
-/

namespace A215653.P7468362981151873465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 ((n + 1) * Nat.choose 2 (n + 1) + n + 1)

end

end A215653.P7468362981151873465

/-! ## A215653.P3407776469624561327

`A130706(n)+A070667(n+1)`
-/

namespace A215653.P3407776469624561327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + A070667 (n + 1)

end

end A215653.P3407776469624561327

/-! ## A215653.P8850066905215356705

`gcd(6, A000040(n+1))*A070667(n+1)`
-/

namespace A215653.P8850066905215356705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (A000040 (n + 1)) : ℤ) * A070667 (n + 1)

end

end A215653.P8850066905215356705

/-! ## A215653.P16588988179487605916

`A254667(A070667(n+1))+A254667(n)-n`
-/

namespace A215653.P16588988179487605916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A070667 (n + 1)).toNat + (A254667 n - (n : ℤ))

end

end A215653.P16588988179487605916

/-! ## A215653.P2794263535865980101

`A070667(n+1)+A000122(A280873(n))`
-/

namespace A215653.P2794263535865980101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (n + 1) + A000122 (A280873 n).toNat

end

end A215653.P2794263535865980101

/-! ## A215653.P18288689181584059365

`A070667(2*A010055(∑[n+1])+n+1)`
-/

namespace A215653.P18288689181584059365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (2 * A010055 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)).toNat

end

end A215653.P18288689181584059365

/-! ## A215653.P5886539993895539046

`A070667(A061369(n+1)-1)`
-/

namespace A215653.P5886539993895539046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A061369 (n + 1) - 1).toNat

end

end A215653.P5886539993895539046

/-! ## A215653.P15907804958636065278

`A070667((n+1)*A076942(n+1))`
-/

namespace A215653.P15907804958636065278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 ((n + 1 : ℤ) * A076942 (n + 1)).toNat

end

end A215653.P15907804958636065278

/-!
# A215654: G.f. satisfies: A(x) = (1 + x*A(x)^2) * (1 + x*A(x)^3).

The programs for A215654, there is no canonical definition to state claims against.
-/

/-! ## A215654.P4603174490664048676

`A245049(∑[n+3])`
-/

namespace A215654.P4603174490664048676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215654.P4603174490664048676

/-! ## A215654.P4189207750825005093

`record[gcd(A141432(n+2), A245049(n))]`
-/

namespace A215654.P4189207750825005093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141432 (n + 2)) (A245049 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215654.P4189207750825005093

/-! ## A215654.P10356881450877964801

`record[A245049(A027379(A008624(n)))]`
-/

namespace A215654.P10356881450877964801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A027379 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215654.P10356881450877964801

/-! ## A215654.P3886551045912430356

`record[A245049(A055998(A057979(n)))]`
-/

namespace A215654.P3886551045912430356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A055998 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215654.P3886551045912430356

/-! ## A215654.P153714571622533686

`record[A245049(A055998(A273943(n)))]`
-/

namespace A215654.P153714571622533686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A055998 (A273943 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215654.P153714571622533686

/-! ## A215654.P5440646678795548843

`record[A245049(A027379(A055396(n+1)))]`
-/

namespace A215654.P5440646678795548843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A027379 (A055396 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215654.P5440646678795548843

/-! ## A215654.P18199490074825632909

`record[A245049(A055998(A211316(n+2)))]`
-/

namespace A215654.P18199490074825632909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A055998 (A211316 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215654.P18199490074825632909

/-!
# A215655: Irregular triangle read by rows: reading the n-th row describes all the numbers seen in the triangle up to the end of the n-th row.

The programs for A215655, the canonical program `A215655.P274844341247519406` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215655 has offset 1).

The definition of A215655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215655.P274844341247519406

`2*A057555(xor(1, n)+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A215655

/-- `2*A057555(xor(1, n)+1)` -/
def P274844341247519406.Spec : Prop :=
  ∀ n, P274844341247519406.a n = A215655 (n + 1)

theorem P274844341247519406.correct : P274844341247519406.Spec := by
  intro n
  simp only [A215655, Nat.add_sub_cancel]

end A215655

/-! ## A215655.P12536551084825592824

`2*A088226(comp[n²]+1)`
-/

namespace A215655.P12536551084825592824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088226 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A215655.P12536551084825592824

namespace A215655

/-- `2*A088226(comp[n²]+1)` -/
def P12536551084825592824.Spec : Prop :=
  ∀ n, P12536551084825592824.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P638956195689261331

`2*(A057554(xor(1, n)+1)+1)`
-/

namespace A215655.P638956195689261331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057554 (Nat.xor 1 n + 1) + 1)

end

end A215655.P638956195689261331

namespace A215655

/-- `2*(A057554(xor(1, n)+1)+1)` -/
def P638956195689261331.Spec : Prop :=
  ∀ n, P638956195689261331.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P15606694307391035449

`2*A057555(and(2, gcd(2, n))+n)`
-/

namespace A215655.P15606694307391035449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057555 (Nat.land 2 (Nat.gcd 2 n) + n)

end

end A215655.P15606694307391035449

namespace A215655

/-- `2*A057555(and(2, gcd(2, n))+n)` -/
def P15606694307391035449.Spec : Prop :=
  ∀ n, P15606694307391035449.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P13244475105767664455

`2*A057555((-1)^n+n+1)`
-/

namespace A215655.P13244475105767664455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057555 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A215655.P13244475105767664455

namespace A215655

/-- `2*A057555((-1)^n+n+1)` -/
def P13244475105767664455.Spec : Prop :=
  ∀ n, P13244475105767664455.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P14722695734249375410

`A319929(round(sqrt(n+1))²+1+n)`
-/

namespace A215655.P14722695734249375410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + 1 + (n : ℤ)).toNat

end

end A215655.P14722695734249375410

namespace A215655

/-- `A319929(round(sqrt(n+1))²+1+n)` -/
def P14722695734249375410.Spec : Prop :=
  ∀ n, P14722695734249375410.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P16096132252242552670

`A005843(A057555(xor(1, n)+1))`
-/

namespace A215655.P16096132252242552670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A057555 (Nat.xor 1 n + 1)).toNat

end

end A215655.P16096132252242552670

namespace A215655

/-- `A005843(A057555(xor(1, n)+1))` -/
def P16096132252242552670.Spec : Prop :=
  ∀ n, P16096132252242552670.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P16256893067964845903

`filter[A319929(n+1), A144608(#)]`
-/

namespace A215655.P16256893067964845903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144608 (f1 j).toNat = 1) n)

end

end A215655.P16256893067964845903

namespace A215655

/-- `filter[A319929(n+1), A144608(#)]` -/
def P16256893067964845903.Spec : Prop :=
  ∀ n, P16256893067964845903.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P6697417268861689101

`A004275(A057555(xor(1, n)+1)+1)`
-/

namespace A215655.P6697417268861689101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A057555 (Nat.xor 1 n + 1) + 1).toNat

end

end A215655.P6697417268861689101

namespace A215655

/-- `A004275(A057555(xor(1, n)+1)+1)` -/
def P6697417268861689101.Spec : Prop :=
  ∀ n, P6697417268861689101.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P4678517452291734465

`2*A057554(lt[2, A074294(n+1)])`
-/

namespace A215655.P4678517452291734465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A215655.P4678517452291734465

namespace A215655

/-- `2*A057554(lt[2, A074294(n+1)])` -/
def P4678517452291734465.Spec : Prop :=
  ∀ n, P4678517452291734465.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P16333652503860382423

`A005843(A057555(A114112(n+1)))`
-/

namespace A215655.P16333652503860382423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A057555 (A114112 (n + 1)).toNat).toNat

end

end A215655.P16333652503860382423

namespace A215655

/-- `A005843(A057555(A114112(n+1)))` -/
def P16333652503860382423.Spec : Prop :=
  ∀ n, P16333652503860382423.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P10821541200870403447

`2*A181118(n+1)`
-/

namespace A215655.P10821541200870403447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181118 (n + 1)

end

end A215655.P10821541200870403447

namespace A215655

/-- `2*A181118(n+1)` -/
def P10821541200870403447.Spec : Prop :=
  ∀ n, P10821541200870403447.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P13035976498586683822

`A181118(A000027(n+1))+A181118(n+1)`
-/

namespace A215655.P13035976498586683822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A000027 (n + 1)).toNat + A181118 (n + 1)

end

end A215655.P13035976498586683822

namespace A215655

/-- `A181118(A000027(n+1))+A181118(n+1)` -/
def P13035976498586683822.Spec : Prop :=
  ∀ n, P13035976498586683822.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P1750856097183491388

`A005408(A181118(n+1)+n)-A005408(n)`
-/

namespace A215655.P1750856097183491388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A181118 (n + 1) + (n : ℤ)).toNat - A005408 n

end

end A215655.P1750856097183491388

namespace A215655

/-- `A005408(A181118(n+1)+n)-A005408(n)` -/
def P1750856097183491388.Spec : Prop :=
  ∀ n, P1750856097183491388.a n = A215655 (n + 1)

end A215655

/-! ## A215655.P7856809958986836835

`2*sqrt(A269845(n+1))`
-/

namespace A215655.P7856809958986836835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A269845 (n + 1) : ℝ)

end

end A215655.P7856809958986836835

namespace A215655

/-- `2*sqrt(A269845(n+1))` -/
def P7856809958986836835.Spec : Prop :=
  ∀ n, P7856809958986836835.a n = (A215655 (n + 1) : ℝ)

end A215655

/-! ## A215655.P10212312852452548283

`A000267(A269845(n+1))`
-/

namespace A215655.P10212312852452548283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A269845 (n + 1)).toNat

end

end A215655.P10212312852452548283

namespace A215655

/-- `A000267(A269845(n+1))` -/
def P10212312852452548283.Spec : Prop :=
  ∀ n, P10212312852452548283.a n = A215655 (n + 1)

end A215655

/-!
# A215659: Values of k such that k*(k - 1) is a primorial number.

The programs for A215659, there is no canonical definition to state claims against.
-/

/-! ## A215659.P4661605971931830101

`C(a(n-3)^(n-2)+4, 4)` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A215659.P4661605971931830101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  Nat.choose (SequenceMachineLib.roundAway ((a (n - 3) : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 4)).toNat 4

end

end A215659.P4661605971931830101

/-!
# A215661: G.f. satisfies A(x) = (1 + 2*x*A(x)) * (1 + x*A(x)^2).

The programs for A215661, there is no canonical definition to state claims against.
-/

/-! ## A215661.P2238704585087000625

`A283004(10^n)+n`
-/

namespace A215661.P2238704585087000625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283004 (10 ^ n) + (n : ℤ)

end

end A215661.P2238704585087000625

/-!
# A215663: Floor(R(10^n)) - pi(10^n), where pi(x) is the number of primes <= x, R(x) = Sum_{ k>=1 } ((mu(k)/k) * li(x^(1/k))) and li(x) is the Cauchy principal value of the integral from 0 to x of dt/log(t).

The programs for A215663, there is no canonical definition to state claims against.
-/

/-! ## A215663.P7357934608671641391

`A057794(n+1)-A000035(A000108(n))`
-/

namespace A215663.P7357934608671641391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057794 (n + 1) - A000035 (A000108 n).toNat

end

end A215663.P7357934608671641391

/-! ## A215663.P7270004882794354068

`A057794(n+1)-A010054(A001783(n+1))`
-/

namespace A215663.P7270004882794354068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057794 (n + 1) - A010054 (A001783 (n + 1)).toNat

end

end A215663.P7270004882794354068

/-! ## A215663.P17616990286651944718

`∑[-A228114(n+1)]-A000035(A000108(n))`
-/

namespace A215663.P17616990286651944718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A228114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 (A000108 n).toNat

end

end A215663.P17616990286651944718

/-! ## A215663.P17469156112343803323

`A057794(n+1)-A355449(A059991(n+1)²)`
-/

namespace A215663.P17469156112343803323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057794 (n + 1) - A355449 (A059991 (n + 1) ^ 2).toNat

end

end A215663.P17469156112343803323

/-! ## A215663.P5211764166097702787

`A057794(n+1)-A355449(A059991(2*(n+1)))`
-/

namespace A215663.P5211764166097702787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057794 (n + 1) - A355449 (A059991 (2 * (n + 1))).toNat

end

end A215663.P5211764166097702787

/-!
# A215664: a(n) = 3*a(n-2) - a(n-3), with a(0)=3, a(1)=0, and a(2)=6.

The programs for A215664, the canonical program `A215664.P3254738772426812652` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215664 has offset 0).

The definition of A215664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-3)` (program `A215664.P3254738772426812652`, by `A215664.P3254738772426812652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215664.P3254738772426812652

`3*a(n-2)-a(n-3)` with `a(0)=3, a(1)=0, a(2)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215664

/-- `3*a(n-2)-a(n-3)` -/
def P3254738772426812652.Spec : Prop :=
  ∀ n, P3254738772426812652.a n = A215664 n

theorem P3254738772426812652.correct : P3254738772426812652.Spec := by
  intro n
  simp only [A215664]

end A215664

/-! ## A215664.P15687109445050055774

`ogf((3-3x^2)/(1-3x^2+x^3))`
-/

namespace A215664.P15687109445050055774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -3] [1, 0, -3, 1] n

end

end A215664.P15687109445050055774

namespace A215664

/-- `ogf((3-3x^2)/(1-3x^2+x^3))` -/
def P15687109445050055774.Spec : Prop :=
  ∀ n, P15687109445050055774.a n = A215664 n

end A215664

/-! ## A215664.P17249455255107072402

`a(n-2)+a(n-2)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=0, a(2)=6`
-/

namespace A215664.P17249455255107072402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 6] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A215664.P17249455255107072402

namespace A215664

/-- `a(n-2)+a(n-2)+a(n-2)-a(n-3)` -/
def P17249455255107072402.Spec : Prop :=
  ∀ n, P17249455255107072402.a n = A215664 n

theorem P17249455255107072402.correct : P17249455255107072402.Spec := by
  intro n
  simp only [A215664, Nat.add_sub_cancel, A215664.P17249455255107072402.a, A215664.P3254738772426812652.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215664

/-! ## A215664.P3746493985813754632

`a(n-2)-(a(n-3)-a(n-2)-a(n-2))` with `a(0)=3, a(1)=0, a(2)=6`
-/

namespace A215664.P3746493985813754632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 6] fun n a =>
  a (n - 2) - (a (n - 3) - a (n - 2) - a (n - 2))

end

end A215664.P3746493985813754632

namespace A215664

/-- `a(n-2)-(a(n-3)-a(n-2)-a(n-2))` -/
def P3746493985813754632.Spec : Prop :=
  ∀ n, P3746493985813754632.a n = A215664 n

theorem P3746493985813754632.correct : P3746493985813754632.Spec := by
  intro n
  simp only [A215664, Nat.add_sub_cancel, A215664.P3746493985813754632.a, A215664.P3254738772426812652.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215664

/-! ## A215664.P11197744001384024883

`A174971(n)*A188048(n)`
-/

namespace A215664.P11197744001384024883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n * A188048 n

end

end A215664.P11197744001384024883

namespace A215664

/-- `A174971(n)*A188048(n)` -/
def P11197744001384024883.Spec : Prop :=
  ∀ n, P11197744001384024883.a n = A215664 n

end A215664

/-! ## A215664.P9684785730002093347

`3*A033999(n)*A188048(n)`
-/

namespace A215664.P9684785730002093347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033999 n * A188048 n

end

end A215664.P9684785730002093347

namespace A215664

/-- `3*A033999(n)*A188048(n)` -/
def P9684785730002093347.Spec : Prop :=
  ∀ n, P9684785730002093347.a n = A215664 n

end A215664

/-! ## A215664.P9743533561560395006

`A174971(n)*A187497(A008585(n)+1)`
-/

namespace A215664.P9743533561560395006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n * A187497 (A008585 n + 1).toNat

end

end A215664.P9743533561560395006

namespace A215664

/-- `A174971(n)*A187497(A008585(n)+1)` -/
def P9743533561560395006.Spec : Prop :=
  ∀ n, P9743533561560395006.a n = A215664 n

end A215664

/-! ## A215664.P14875019086025984883

`A214699(n+1)+A215665(n)+A214699(n)`
-/

namespace A215664.P14875019086025984883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214699 (n + 1) + (A215665 n + A214699 n)

end

end A215664.P14875019086025984883

namespace A215664

/-- `A214699(n+1)+A215665(n)+A214699(n)` -/
def P14875019086025984883.Spec : Prop :=
  ∀ n, P14875019086025984883.a n = A215664 n

end A215664

/-! ## A215664.P7163967632657862789

`Δ[-A215665(n)]`
-/

namespace A215664.P7163967632657862789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A215665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215664.P7163967632657862789

namespace A215664

/-- `Δ[-A215665(n)]` -/
def P7163967632657862789.Spec : Prop :=
  ∀ n, P7163967632657862789.a n = A215664 n

end A215664

/-! ## A215664.P3903331243032298364

`A215665(n)-A215665(n+1)`
-/

namespace A215664.P3903331243032298364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215665 n - A215665 (n + 1)

end

end A215664.P3903331243032298364

namespace A215664

/-- `A215665(n)-A215665(n+1)` -/
def P3903331243032298364.Spec : Prop :=
  ∀ n, P3903331243032298364.a n = A215664 n

end A215664

/-! ## A215664.P1886792402511228564

`∑[A215666(n)]+3`
-/

namespace A215664.P1886792402511228564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A215664.P1886792402511228564

namespace A215664

/-- `∑[A215666(n)]+3` -/
def P1886792402511228564.Spec : Prop :=
  ∀ n, P1886792402511228564.a n = A215664 n

end A215664

/-!
# A215665: a(n) = 3*a(n-2) - a(n-3), with a(0)=0, a(1)=a(2)=-3.

The programs for A215665, the canonical program `A215665.P14855416513782622071` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215665 has offset 0).

The definition of A215665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-3)` (program `A215665.P14855416513782622071`, by `A215665.P14855416513782622071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215665.P14855416513782622071

`3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=-3, a(2)=-3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215665

/-- `3*a(n-2)-a(n-3)` -/
def P14855416513782622071.Spec : Prop :=
  ∀ n, P14855416513782622071.a n = A215665 n

theorem P14855416513782622071.correct : P14855416513782622071.Spec := by
  intro n
  simp only [A215665]

end A215665

/-! ## A215665.P4700953388335515432

`ogf((3x+3x^2)/(-1+3x^2-x^3))`
-/

namespace A215665.P4700953388335515432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -3, -3] [1, 0, -3, 1] n

end

end A215665.P4700953388335515432

namespace A215665

/-- `ogf((3x+3x^2)/(-1+3x^2-x^3))` -/
def P4700953388335515432.Spec : Prop :=
  ∀ n, P4700953388335515432.a n = A215665 n

end A215665

/-! ## A215665.P14695197320878032865

`A215664(n)-∑[A215664(n)]`
-/

namespace A215665.P14695197320878032865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215665.P14695197320878032865

namespace A215665

/-- `A215664(n)-∑[A215664(n)]` -/
def P14695197320878032865.Spec : Prop :=
  ∀ n, P14695197320878032865.a n = A215665 n

end A215665

/-! ## A215665.P15762052764001356172

`Δ[A187495(A016777(n))]*A174971(n)`
-/

namespace A215665.P15762052764001356172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A174971 n

end

end A215665.P15762052764001356172

namespace A215665

/-- `Δ[A187495(A016777(n))]*A174971(n)` -/
def P15762052764001356172.Spec : Prop :=
  ∀ n, P15762052764001356172.a n = A215665 n

end A215665

/-! ## A215665.P933362059390872426

`A215664(n)-(A214699(n+1)+A214699(n))`
-/

namespace A215665.P933362059390872426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 n - (A214699 (n + 1) + A214699 n)

end

end A215665.P933362059390872426

namespace A215665

/-- `A215664(n)-(A214699(n+1)+A214699(n))` -/
def P933362059390872426.Spec : Prop :=
  ∀ n, P933362059390872426.a n = A215665 n

end A215665

/-! ## A215665.P7837958277358618126

`∑[-A215664(A259361(n²))]+3`
-/

namespace A215665.P7837958277358618126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A215664 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A215665.P7837958277358618126

namespace A215665

/-- `∑[-A215664(A259361(n²))]+3` -/
def P7837958277358618126.Spec : Prop :=
  ∀ n, P7837958277358618126.a n = A215665 n

end A215665

/-! ## A215665.P1975323873173023420

`∑[-A215664(A259361(n²))%A048654(n)]`
-/

namespace A215665.P1975323873173023420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A215664 (A259361 (n ^ 2)).toNat) (A048654 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215665.P1975323873173023420

namespace A215665

/-- `∑[-A215664(A259361(n²))%A048654(n)]` -/
def P1975323873173023420.Spec : Prop :=
  ∀ n, P1975323873173023420.a n = A215665 n

end A215665

/-!
# A215666: a(n) = 3*a(n-2) - a(n-3), with a(0)=0, a(1)=-3, and a(2)=6.

The programs for A215666, the canonical program `A215666.P14627053754709279945` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215666 has offset 0).

The definition of A215666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-3)` (program `A215666.P14627053754709279945`, by `A215666.P14627053754709279945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215666.P14627053754709279945

`3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=-3, a(2)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215666

/-- `3*a(n-2)-a(n-3)` -/
def P14627053754709279945.Spec : Prop :=
  ∀ n, P14627053754709279945.a n = A215666 n

theorem P14627053754709279945.correct : P14627053754709279945.Spec := by
  intro n
  simp only [A215666]

end A215666

/-! ## A215666.P1828890644246297315

`ogf((-3x+6x^2)/(1-3x^2+x^3))`
-/

namespace A215666.P1828890644246297315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -3, 6] [1, 0, -3, 1] n

end

end A215666.P1828890644246297315

namespace A215666

/-- `ogf((-3x+6x^2)/(1-3x^2+x^3))` -/
def P1828890644246297315.Spec : Prop :=
  ∀ n, P1828890644246297315.a n = A215666 n

end A215666

/-! ## A215666.P17960765252687737344

`Δ[A215664(A004273(n)-n)]`
-/

namespace A215666.P17960765252687737344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215666.P17960765252687737344

namespace A215666

/-- `Δ[A215664(A004273(n)-n)]` -/
def P17960765252687737344.Spec : Prop :=
  ∀ n, P17960765252687737344.a n = A215666 n

end A215666

/-! ## A215666.P6545399105571402495

`Δ[A215664(A004277(n)-(n+1))]`
-/

namespace A215666.P6545399105571402495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 (A004277 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215666.P6545399105571402495

namespace A215666

/-- `Δ[A215664(A004277(n)-(n+1))]` -/
def P6545399105571402495.Spec : Prop :=
  ∀ n, P6545399105571402495.a n = A215666 n

end A215666

/-! ## A215666.P9617841696075233856

`Δ[A215665(n+1)]-A215665(n)`
-/

namespace A215666.P9617841696075233856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215665 n

end

end A215666.P9617841696075233856

namespace A215666

/-- `Δ[A215665(n+1)]-A215665(n)` -/
def P9617841696075233856.Spec : Prop :=
  ∀ n, P9617841696075233856.a n = A215666 n

end A215666

/-! ## A215666.P12641376315492357770

`Δ[A215664(A004524(A004273(n)))]`
-/

namespace A215666.P12641376315492357770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215666.P12641376315492357770

namespace A215666

/-- `Δ[A215664(A004524(A004273(n)))]` -/
def P12641376315492357770.Spec : Prop :=
  ∀ n, P12641376315492357770.a n = A215666 n

end A215666

/-! ## A215666.P1981225962727224467

`A215664(n)-A215664(A004273(n)-n)`
-/

namespace A215666.P1981225962727224467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 n - A215664 (A004273 n - (n : ℤ)).toNat

end

end A215666.P1981225962727224467

namespace A215666

/-- `A215664(n)-A215664(A004273(n)-n)` -/
def P1981225962727224467.Spec : Prop :=
  ∀ n, P1981225962727224467.a n = A215666 n

end A215666

/-! ## A215666.P12034177579699471138

`A215664(n)-A215664(log2(A011782(n)))`
-/

namespace A215666.P12034177579699471138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 n - A215664 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A215666.P12034177579699471138

namespace A215666

/-- `A215664(n)-A215664(log2(A011782(n)))` -/
def P12034177579699471138.Spec : Prop :=
  ∀ n, P12034177579699471138.a n = A215666 n

end A215666

/-! ## A215666.P2724642770492843795

`Δ[A215664(log2(A011782(n)))]`
-/

namespace A215666.P2724642770492843795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215666.P2724642770492843795

namespace A215666

/-- `Δ[A215664(log2(A011782(n)))]` -/
def P2724642770492843795.Spec : Prop :=
  ∀ n, P2724642770492843795.a n = A215666 n

end A215666

/-! ## A215666.P9574577069465400012

`Δ[A215664(A004247(A000124(n)))]`
-/

namespace A215666.P9574577069465400012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 (A004247 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215666.P9574577069465400012

namespace A215666

/-- `Δ[A215664(A004247(A000124(n)))]` -/
def P9574577069465400012.Spec : Prop :=
  ∀ n, P9574577069465400012.a n = A215666 n

end A215666

/-! ## A215666.P10906961873984053293

`A215664(n)-A215664(A259361(n²))`
-/

namespace A215666.P10906961873984053293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 n - A215664 (A259361 (n ^ 2)).toNat

end

end A215666.P10906961873984053293

namespace A215666

/-- `A215664(n)-A215664(A259361(n²))` -/
def P10906961873984053293.Spec : Prop :=
  ∀ n, P10906961873984053293.a n = A215666 n

end A215666

/-! ## A215666.P10724534381843065483

`Δ[A215664(A259361(n²))]`
-/

namespace A215666.P10724534381843065483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215664 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215666.P10724534381843065483

namespace A215666

/-- `Δ[A215664(A259361(n²))]` -/
def P10724534381843065483.Spec : Prop :=
  ∀ n, P10724534381843065483.a n = A215666 n

end A215666

/-!
# A215667: 22n+1 is prime.

The programs for A215667, the canonical program `A215667.P1287202979309322342` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215667 has offset 1).

The definition of A215667 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141849, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A215667.P1287202979309322342

`(A141849(n+1)-1)/22`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215667

/-- `(A141849(n+1)-1)/22` -/
def P1287202979309322342.Spec : Prop :=
  ∀ n, P1287202979309322342.a n = (A215667 (n + 1) : ℚ)

end A215667

/-! ## A215667.P1350640806677622438

`A102656(n+1)/2`
-/

namespace A215667.P1350640806677622438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102656 (n + 1) : ℚ) / 2

end

end A215667.P1350640806677622438

namespace A215667

/-- `A102656(n+1)/2` -/
def P1350640806677622438.Spec : Prop :=
  ∀ n, P1350640806677622438.a n = (A215667 (n + 1) : ℚ)

end A215667

/-! ## A215667.P5517086197768446859

`A102731(n+1)/2+1`
-/

namespace A215667.P5517086197768446859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102731 (n + 1) : ℚ) / 2 + 1

end

end A215667.P5517086197768446859

namespace A215667

/-- `A102731(n+1)/2+1` -/
def P5517086197768446859.Spec : Prop :=
  ∀ n, P5517086197768446859.a n = (A215667 (n + 1) : ℚ)

end A215667

/-! ## A215667.P17792310952287971591

`round(p?[a(n-1)+11]/11)/2` with `a(0)=10, a(1)=1`
-/

namespace A215667.P17792310952287971591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 1] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11) : ℚ) / 2

end

end A215667.P17792310952287971591

namespace A215667

/-- `round(p?[a(n-1)+11]/11)/2` -/
def P17792310952287971591.Spec : Prop :=
  ∀ n, P17792310952287971591.a n = (A215667 (n + 1) : ℚ)

end A215667

/-! ## A215667.P17779321123843449260

`(ceil(p?[a(n-1)+11]/11)-1)/2` with `a(0)=6, a(1)=1`
-/

namespace A215667.P17779321123843449260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉ - 1 : ℚ) / 2

end

end A215667.P17779321123843449260

namespace A215667

/-- `(ceil(p?[a(n-1)+11]/11)-1)/2` -/
def P17779321123843449260.Spec : Prop :=
  ∀ n, P17779321123843449260.a n = (A215667 (n + 1) : ℚ)

end A215667

/-! ## A215667.P17697755624479417666

`A175126(A102656(n+1))`
-/

namespace A215667.P17697755624479417666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A102656 (n + 1)).toNat

end

end A215667.P17697755624479417666

namespace A215667

/-- `A175126(A102656(n+1))` -/
def P17697755624479417666.Spec : Prop :=
  ∀ n, P17697755624479417666.a n = A215667 (n + 1)

end A215667

/-! ## A215667.P15867454012612025413

`A008619(A102731(n+1))`
-/

namespace A215667.P15867454012612025413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A102731 (n + 1)).toNat

end

end A215667.P15867454012612025413

namespace A215667

/-- `A008619(A102731(n+1))` -/
def P15867454012612025413.Spec : Prop :=
  ∀ n, P15867454012612025413.a n = A215667 (n + 1)

end A215667

/-! ## A215667.P5045008748374733073

`A000463(A102731(n+1)+1)`
-/

namespace A215667.P5045008748374733073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A102731 (n + 1) + 1).toNat

end

end A215667.P5045008748374733073

namespace A215667

/-- `A000463(A102731(n+1)+1)` -/
def P5045008748374733073.Spec : Prop :=
  ∀ n, P5045008748374733073.a n = A215667 (n + 1)

end A215667

/-! ## A215667.P8232205359216129590

`eq[1, A001222(22*n+1)]`
-/

namespace A215667.P8232205359216129590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (22 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215667.P8232205359216129590

namespace A215667

/-- `eq[1, A001222(22*n+1)]` -/
def P8232205359216129590.Spec : Prop :=
  ∀ n, (P8232205359216129590.a n : ℤ) = A215667 (n + 1)

end A215667

/-! ## A215667.P1882773793705607466

`eq[2, A000005(22*n+1)]`
-/

namespace A215667.P1882773793705607466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (22 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215667.P1882773793705607466

namespace A215667

/-- `eq[2, A000005(22*n+1)]` -/
def P1882773793705607466.Spec : Prop :=
  ∀ n, (P1882773793705607466.a n : ℤ) = A215667 (n + 1)

end A215667

/-! ## A215667.P15181149221565536027

`eq[22*n, A000010(22*n+1)]`
-/

namespace A215667.P15181149221565536027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (22 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215667.P15181149221565536027

namespace A215667

/-- `eq[22*n, A000010(22*n+1)]` -/
def P15181149221565536027.Spec : Prop :=
  ∀ n, (P15181149221565536027.a n : ℤ) = A215667 (n + 1)

end A215667

/-! ## A215667.P14218734094550458208

`eq[1, A054024(11*n+1)]/2`
-/

namespace A215667.P14218734094550458208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (11 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A215667.P14218734094550458208

namespace A215667

/-- `eq[1, A054024(11*n+1)]/2` -/
def P14218734094550458208.Spec : Prop :=
  ∀ n, P14218734094550458208.a n = (A215667 (n + 1) : ℚ)

end A215667

/-! ## A215667.P255143377443682602

`eq[2, A278223(A017533(n)-n)]`
-/

namespace A215667.P255143377443682602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A017533 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215667.P255143377443682602

namespace A215667

/-- `eq[2, A278223(A017533(n)-n)]` -/
def P255143377443682602.Spec : Prop :=
  ∀ n, (P255143377443682602.a n : ℤ) = A215667 (n + 1)

end A215667

/-! ## A215667.P622537432336872156

`eq[1, A054024(A000027(n+1)+22*n-n)]`
-/

namespace A215667.P622537432336872156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A000027 (n + 1) + (22 * n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215667.P622537432336872156

namespace A215667

/-- `eq[1, A054024(A000027(n+1)+22*n-n)]` -/
def P622537432336872156.Spec : Prop :=
  ∀ n, (P622537432336872156.a n : ℤ) = A215667 (n + 1)

end A215667

/-! ## A215667.P13574655461548994850

`lt[A318676(20*n+2*n+1), A318677(n+1)]`
-/

namespace A215667.P13574655461548994850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (20 * n + (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215667.P13574655461548994850

namespace A215667

/-- `lt[A318676(20*n+2*n+1), A318677(n+1)]` -/
def P13574655461548994850.Spec : Prop :=
  ∀ n, (P13574655461548994850.a n : ℤ) = A215667 (n + 1)

end A215667

/-! ## A215667.P10146741873389637744

`eq[1, A129950(A017401(2*n))²]`
-/

namespace A215667.P10146741873389637744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (A017401 (2 * n)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215667.P10146741873389637744

namespace A215667

/-- `eq[1, A129950(A017401(2*n))²]` -/
def P10146741873389637744.Spec : Prop :=
  ∀ n, (P10146741873389637744.a n : ℤ) = A215667 (n + 1)

end A215667

/-! ## A215667.P10895218257945287921

`A344420((A141849(n+1)+1)/2)`
-/

namespace A215667.P10895218257945287921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (SequenceMachineLib.roundAway ((A141849 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A215667.P10895218257945287921

namespace A215667

/-- `A344420((A141849(n+1)+1)/2)` -/
def P10895218257945287921.Spec : Prop :=
  ∀ n, P10895218257945287921.a n = A215667 (n + 1)

end A215667

/-! ## A215667.P7606097914178618092

`lt[n+1, A014963(22*n+1)]`
-/

namespace A215667.P7606097914178618092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (22 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A215667.P7606097914178618092

namespace A215667

/-- `lt[n+1, A014963(22*n+1)]` -/
def P7606097914178618092.Spec : Prop :=
  ∀ n, (P7606097914178618092.a n : ℤ) = A215667 (n + 1)

end A215667

/-! ## A215667.P15763978491430336295

`A079483(A141849(n+1))`
-/

namespace A215667.P15763978491430336295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079483 (A141849 (n + 1)).toNat

end

end A215667.P15763978491430336295

namespace A215667

/-- `A079483(A141849(n+1))` -/
def P15763978491430336295.Spec : Prop :=
  ∀ n, P15763978491430336295.a n = A215667 (n + 1)

end A215667

/-! ## A215667.P17312646571657610809

`A262115(p?[A017413(n)-1])`
-/

namespace A215667.P17312646571657610809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215667.P17312646571657610809

namespace A215667

/-- `A262115(p?[A017413(n)-1])` -/
def P17312646571657610809.Spec : Prop :=
  ∀ n, P17312646571657610809.a n = A215667 (n + 1)

end A215667

/-!
# A215672: Fermat pseudoprimes to base 2 with three prime factors.

The programs for A215672, there is no canonical definition to state claims against.
-/

/-! ## A215672.P2300042147805447461

`A074380(n+1)*A267869(A272149(n))`
-/

namespace A215672.P2300042147805447461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074380 (n + 1) * A267869 (A272149 n).toNat

end

end A215672.P2300042147805447461

/-! ## A215672.P11458775529703140659

`A353483(∑[A088881(n)])+A074380(n+1)`
-/

namespace A215672.P11458775529703140659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353483 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A074380 (n + 1)

end

end A215672.P11458775529703140659

/-! ## A215672.P15547655758575544936

`A074380(n+1)+A007814(A342193(n+1))`
-/

namespace A215672.P15547655758575544936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074380 (n + 1) + A007814 (A342193 (n + 1)).toNat

end

end A215672.P15547655758575544936

/-! ## A215672.P2102781032474995728

`A353483(A379431(n+1))+A074380(n+1)`
-/

namespace A215672.P2102781032474995728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353483 (A379431 (n + 1)).toNat + A074380 (n + 1)

end

end A215672.P2102781032474995728

/-! ## A215672.P17419753586498586773

`A074380(n+1)%A074379(A074342(n+1))`
-/

namespace A215672.P17419753586498586773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074380 (n + 1)) (A074379 (A074342 (n + 1)).toNat)

end

end A215672.P17419753586498586773

/-! ## A215672.P560832771949047075

`or(A074380(n+1), A074381(A074344(n+1)))`
-/

namespace A215672.P560832771949047075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074380 (n + 1)) (A074381 (A074344 (n + 1)).toNat)

end

end A215672.P560832771949047075

/-! ## A215672.P10624467864187484702

`or(A074380(n+1), A267037(A243980(n+1)))`
-/

namespace A215672.P10624467864187484702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074380 (n + 1)) (A267037 (A243980 (n + 1)).toNat)

end

end A215672.P10624467864187484702

/-! ## A215672.P11414817577180305721

`or(A074380(n+1), A322585(A084600(2*n)))`
-/

namespace A215672.P11414817577180305721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074380 (n + 1)) (A322585 (A084600 (2 * n)).toNat)

end

end A215672.P11414817577180305721

/-! ## A215672.P4746801719918230120

`A074380(n+1)+A010052(A291275(n+1))`
-/

namespace A215672.P4746801719918230120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074380 (n + 1) + A010052 (A291275 (n + 1)).toNat

end

end A215672.P4746801719918230120

/-! ## A215672.P8139331866703047300

`or(A074380(n+1), A103589(2*n))`
-/

namespace A215672.P8139331866703047300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074380 (n + 1)) (A103589 (2 * n))

end

end A215672.P8139331866703047300

/-!
# A215673: a(1) = 1, a(2n) = a(n)+1, a(2n+1) = a(n)+a(n+1)+1.

The programs for A215673, the canonical program `A215673.P18187937060440988894` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215673 has offset 1).

The definition of A215673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215673.P18187937060440988894

`a(floor(n/2))+gcd(n%2, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215673

/-- `a(floor(n/2))+gcd(n%2, a(n-1))` -/
def P18187937060440988894.Spec : Prop :=
  ∀ n, (P18187937060440988894.a n : ℤ) = A215673 (n + 1)

theorem P18187937060440988894.correct : P18187937060440988894.Spec := by
  intro n
  simp only [A215673, Nat.add_sub_cancel]

end A215673

/-! ## A215673.P10543848332514539348

`A215675(A092754(n+1))`
-/

namespace A215673.P10543848332514539348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215675 (A092754 (n + 1)).toNat

end

end A215673.P10543848332514539348

namespace A215673

/-- `A215675(A092754(n+1))` -/
def P10543848332514539348.Spec : Prop :=
  ∀ n, P10543848332514539348.a n = A215673 (n + 1)

end A215673

/-! ## A215673.P12852505554692072779

`A215675(A004761(n+2))`
-/

namespace A215673.P12852505554692072779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215675 (A004761 (n + 2)).toNat

end

end A215673.P12852505554692072779

namespace A215673

/-- `A215675(A004761(n+2))` -/
def P12852505554692072779.Spec : Prop :=
  ∀ n, P12852505554692072779.a n = A215673 (n + 1)

end A215673

/-! ## A215673.P8243084485130539929

`A215675(eq[1, A090996(n)])`
-/

namespace A215673.P8243084485130539929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215673.P8243084485130539929

namespace A215673

/-- `A215675(eq[1, A090996(n)])` -/
def P8243084485130539929.Spec : Prop :=
  ∀ n, P8243084485130539929.a n = A215673 (n + 1)

end A215673

/-! ## A215673.P12671317160523018692

`A215674(A191110(n+1))`
-/

namespace A215673.P12671317160523018692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215674 (A191110 (n + 1)).toNat

end

end A215673.P12671317160523018692

namespace A215673

/-- `A215674(A191110(n+1))` -/
def P12671317160523018692.Spec : Prop :=
  ∀ n, P12671317160523018692.a n = A215673 (n + 1)

end A215673

/-!
# A215675: a(1) = 1, a(n) = 2 if 1

The programs for A215675, the canonical program `A215675.P2158629537896342480` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215675 has offset 1).

The definition of A215675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215675.P2158629537896342480

`a(lcm(2, n)/2-1)+a(A152271(n)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215675

/-- `a(lcm(2, n)/2-1)+a(A152271(n)-1)` -/
def P2158629537896342480.Spec : Prop :=
  ∀ n, (P2158629537896342480.a n : ℤ) = A215675 (n + 1)

theorem P2158629537896342480.correct : P2158629537896342480.Spec := by
  intro n
  simp only [A215675, Nat.add_sub_cancel]

end A215675

/-! ## A215675.P16821143428359915544

`A215673(n+2)-A002487(n+2)`
-/

namespace A215675.P16821143428359915544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 2) - A002487 (n + 2)

end

end A215675.P16821143428359915544

namespace A215675

/-- `A215673(n+2)-A002487(n+2)` -/
def P16821143428359915544.Spec : Prop :=
  ∀ n, P16821143428359915544.a n = A215675 (n + 1)

end A215675

/-! ## A215675.P10546361693883178244

`A215676(A137951(n)+1)`
-/

namespace A215675.P10546361693883178244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215676 (A137951 n + 1).toNat

end

end A215675.P10546361693883178244

namespace A215675

/-- `A215676(A137951(n)+1)` -/
def P10546361693883178244.Spec : Prop :=
  ∀ n, P10546361693883178244.a n = A215675 (n + 1)

end A215675

/-! ## A215675.P5625169642815515876

`A215676(A147991(n+1))`
-/

namespace A215675.P5625169642815515876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215676 (A147991 (n + 1)).toNat

end

end A215675.P5625169642815515876

namespace A215675

/-- `A215676(A147991(n+1))` -/
def P5625169642815515876.Spec : Prop :=
  ∀ n, P5625169642815515876.a n = A215675 (n + 1)

end A215675

/-! ## A215675.P15589559782349546717

`A215676(A137951(-xor(n, -1)))`
-/

namespace A215675.P15589559782349546717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215676 (A137951 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A215675.P15589559782349546717

namespace A215675

/-- `A215676(A137951(-xor(n, -1)))` -/
def P15589559782349546717.Spec : Prop :=
  ∀ n, P15589559782349546717.a n = A215675 (n + 1)

end A215675

/-!
# A215677: 2n-th derivative of sech(x)^cosh(x) at x=0.

The programs for A215677, there is no canonical definition to state claims against.
-/

/-! ## A215677.P11707804065944928293

`A033999(n)*A186248(n)`
-/

namespace A215677.P11707804065944928293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A186248 n

end

end A215677.P11707804065944928293

/-! ## A215677.P904986311932528589

`∑[A280560(n)]*A186248(n)`
-/

namespace A215677.P904986311932528589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A186248 n

end

end A215677.P904986311932528589

/-! ## A215677.P3041337681929933684

`A057077(2*n)*A186248(n)`
-/

namespace A215677.P3041337681929933684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A186248 n

end

end A215677.P3041337681929933684

/-! ## A215677.P10334417908684001278

`(A004442(n)-n)*A186248(n)`
-/

namespace A215677.P10334417908684001278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A186248 n

end

end A215677.P10334417908684001278

/-! ## A215677.P9772464067559881403

`A186248(n)/A033999(A007094(n))`
-/

namespace A215677.P9772464067559881403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186248 n : ℚ) / (A033999 (A007094 n).toNat : ℚ)

end

end A215677.P9772464067559881403

/-!
# A215678: n-th derivative of sec(x)^sinh(x) at x=0.

The programs for A215678, there is no canonical definition to state claims against.
-/

/-! ## A215678.P9837973271152748129

`abs(A215583(n*A077728(n+1)))`
-/

namespace A215678.P9837973271152748129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215583 ((n : ℤ) * A077728 (n + 1)).toNat|

end

end A215678.P9837973271152748129

/-! ## A215678.P13778299042340219866

`abs(A215583(n)^A077728(n+1))`
-/

namespace A215678.P13778299042340219866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A215583 n : ℚ) ^ (A077728 (n + 1) : ℤ)|

end

end A215678.P13778299042340219866

/-! ## A215678.P11934870439978290551

`abs(A215583(n)%A103029(n+1))`
-/

namespace A215678.P11934870439978290551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A215583 n) (A103029 (n + 1))|

end

end A215678.P11934870439978290551

/-! ## A215678.P12512973661132578335

`abs(A215583(n))%A215620(n+2)`
-/

namespace A215678.P12512973661132578335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A215583 n| (A215620 (n + 2))

end

end A215678.P12512973661132578335

/-! ## A215678.P11987836115746029310

`gcd(A008683(A000302(n)), A215583(n))`
-/

namespace A215678.P11987836115746029310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A000302 n).toNat) (A215583 n)

end

end A215678.P11987836115746029310

/-!
# A215679: n-th derivative of sech(x)^sinh(x) at x=0.

The programs for A215679, there is no canonical definition to state claims against.
-/

/-! ## A215679.P6728045355231092413

`A033999(n)*A215519(n)`
-/

namespace A215679.P6728045355231092413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215519 n

end

end A215679.P6728045355231092413

/-! ## A215679.P8119955805232480639

`A057077(2*n)*A215519(n)`
-/

namespace A215679.P8119955805232480639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A215519 n

end

end A215679.P8119955805232480639

/-! ## A215679.P14851660708564076219

`A215519(n)/A033999(n+4)`
-/

namespace A215679.P14851660708564076219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215519 n : ℚ) / (A033999 (n + 4) : ℚ)

end

end A215679.P14851660708564076219

/-! ## A215679.P12750569271239520651

`(A004442(n)-n)*A215519(n)`
-/

namespace A215679.P12750569271239520651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A215519 n

end

end A215679.P12750569271239520651

/-! ## A215679.P654799057828724793

`A209615(n²+1)*A215519(n)`
-/

namespace A215679.P654799057828724793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n ^ 2 + 1) * A215519 n

end

end A215679.P654799057828724793

/-! ## A215679.P10561107981505943143

`A034947(n²+5)*A215519(n)`
-/

namespace A215679.P10561107981505943143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n ^ 2 + 5) * A215519 n

end

end A215679.P10561107981505943143

/-! ## A215679.P3152367010868087668

`A215519(n)/A209615(A005408(n))`
-/

namespace A215679.P3152367010868087668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215519 n : ℚ) / (A209615 (A005408 n).toNat : ℚ)

end

end A215679.P3152367010868087668

/-! ## A215679.P6249154616692134367

`A215519(n)/A209615(A017113(n))`
-/

namespace A215679.P6249154616692134367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215519 n : ℚ) / (A209615 (A017113 n).toNat : ℚ)

end

end A215679.P6249154616692134367

/-!
# A215680: n-th derivative of sec(x)^tan(x) at x=0.

The programs for A215680, there is no canonical definition to state claims against.
-/

/-! ## A215680.P9842637083202356397

`abs(A215586(n))`
-/

namespace A215680.P9842637083202356397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215586 n|

end

end A215680.P9842637083202356397

/-! ## A215680.P9761310429578577593

`A033999(n)*A215586(n)`
-/

namespace A215680.P9761310429578577593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215586 n

end

end A215680.P9761310429578577593

/-! ## A215680.P9587694351641335382

`gcd(A000038(n), A215586(n))`
-/

namespace A215680.P9587694351641335382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A215586 n)

end

end A215680.P9587694351641335382

/-! ## A215680.P2559259932654070566

`lcm(A003842(n), A215586(n))`
-/

namespace A215680.P2559259932654070566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003842 n) (A215586 n)

end

end A215680.P2559259932654070566

/-! ## A215680.P12626543775221422768

`lcm(-A215586(n), A055642(n))`
-/

namespace A215680.P12626543775221422768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A215586 n) (A055642 n)

end

end A215680.P12626543775221422768

/-! ## A215680.P6763843880512228466

`A009001(2*n)*A215586(n)`
-/

namespace A215680.P6763843880512228466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A215586 n

end

end A215680.P6763843880512228466

/-! ## A215680.P17235245993808159783

`A215586(n)/A009001(A005843(n))`
-/

namespace A215680.P17235245993808159783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215586 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A215680.P17235245993808159783

/-! ## A215680.P15299437367212905935

`A215586(n)/A009001(A008588(n))`
-/

namespace A215680.P15299437367212905935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215586 n : ℚ) / (A009001 (A008588 n).toNat : ℚ)

end

end A215680.P15299437367212905935

/-! ## A215680.P17189451449952626437

`A215586(n)/A009001(A008600(n))`
-/

namespace A215680.P17189451449952626437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215586 n : ℚ) / (A009001 (A008600 n).toNat : ℚ)

end

end A215680.P17189451449952626437

/-!
# A215681: n-th derivative of sech(x)^tan(x) at x=0.

The programs for A215681, there is no canonical definition to state claims against.
-/

/-! ## A215681.P13616061474143438270

`A033999(n)*A215587(n)`
-/

namespace A215681.P13616061474143438270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215587 n

end

end A215681.P13616061474143438270

/-! ## A215681.P10502184041337621328

`-(A215587(n)/A033999(n+1))`
-/

namespace A215681.P10502184041337621328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A215587 n : ℚ) / (A033999 (n + 1) : ℚ))

end

end A215681.P10502184041337621328

/-! ## A215681.P8432475899427913033

`A014985(n+1)%2*A215587(n)`
-/

namespace A215681.P8432475899427913033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014985 (n + 1)) 2 * A215587 n

end

end A215681.P8432475899427913033

/-! ## A215681.P13664217917492055530

`A215587(n)/A033999(A005811(n))`
-/

namespace A215681.P13664217917492055530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215587 n : ℚ) / (A033999 (A005811 n).toNat : ℚ)

end

end A215681.P13664217917492055530

/-! ## A215681.P583607765519278806

`A215587(n)/A033999(A341522(n))`
-/

namespace A215681.P583607765519278806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215587 n : ℚ) / (A033999 (A341522 n).toNat : ℚ)

end

end A215681.P583607765519278806

/-!
# A215682: n-th derivative of sec(x)^tanh(x) at x=0.

The programs for A215682, there is no canonical definition to state claims against.
-/

/-! ## A215682.P1283184054685374442

`A033999(n)*A215585(n)`
-/

namespace A215682.P1283184054685374442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215585 n

end

end A215682.P1283184054685374442

/-! ## A215682.P17187807423792303688

`A057077(2*n)*A215585(n)`
-/

namespace A215682.P17187807423792303688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A215585 n

end

end A215682.P17187807423792303688

/-! ## A215682.P14397249421987108464

`-(A215585(n)/A033999(n+1))`
-/

namespace A215682.P14397249421987108464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A215585 n : ℚ) / (A033999 (n + 1) : ℚ))

end

end A215682.P14397249421987108464

/-! ## A215682.P3611012291666621488

`A153860(A000124(n))*A215585(n)`
-/

namespace A215682.P3611012291666621488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153860 (A000124 n).toNat * A215585 n

end

end A215682.P3611012291666621488

/-! ## A215682.P10082660345258539170

`A215585(n)/A033999(A005811(n))`
-/

namespace A215682.P10082660345258539170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215585 n : ℚ) / (A033999 (A005811 n).toNat : ℚ)

end

end A215682.P10082660345258539170

/-!
# A215683: n-th derivative of sech(x)^tanh(x) at x=0.

The programs for A215683, there is no canonical definition to state claims against.
-/

/-! ## A215683.P13854465282562645883

`A033999(n)*A215588(n)`
-/

namespace A215683.P13854465282562645883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215588 n

end

end A215683.P13854465282562645883

/-! ## A215683.P10199317770196735309

`A009001(2*n)*A215588(n)`
-/

namespace A215683.P10199317770196735309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A215588 n

end

end A215683.P10199317770196735309

/-! ## A215683.P1407793310210011449

`A057077(2*n)*A215588(n)`
-/

namespace A215683.P1407793310210011449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A215588 n

end

end A215683.P1407793310210011449

/-! ## A215683.P14599776147134432637

`A215588(n)/A009001(A005843(n))`
-/

namespace A215683.P14599776147134432637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215588 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A215683.P14599776147134432637

/-! ## A215683.P16162208490738409543

`A215588(n)/A009001(A008588(n))`
-/

namespace A215683.P16162208490738409543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215588 n : ℚ) / (A009001 (A008588 n).toNat : ℚ)

end

end A215683.P16162208490738409543

/-! ## A215683.P14898436939981881455

`A215588(n)/A009001(A008600(n))`
-/

namespace A215683.P14898436939981881455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215588 n : ℚ) / (A009001 (A008600 n).toNat : ℚ)

end

end A215683.P14898436939981881455

/-!
# A215684: Let p=prime=a(n); then a(n+1) = smallest prime q>p such that 2p+q and 2q+p are both primes.

The programs for A215684, there is no canonical definition to state claims against.
-/

/-! ## A215684.P1183500616068360402

`p?[record[A335500(n+1)+2]]`
-/

namespace A215684.P1183500616068360402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335500 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215684.P1183500616068360402

/-! ## A215684.P13465533918740340426

`record[p?[A202308(A318758(n+1))]]`
-/

namespace A215684.P13465533918740340426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202308 (A318758 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215684.P13465533918740340426

/-! ## A215684.P4858918754947096983

`record[A354764(A323651(n+1)+2)]`
-/

namespace A215684.P4858918754947096983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354764 (A323651 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215684.P4858918754947096983

/-!
# A215686: Number of solid standard Young tableaux of shape [[3*n,n],[n]].

The programs for A215686, there is no canonical definition to state claims against.
-/

/-! ## A215686.P8627504412420602673

`A176129(∑[n+3]+n+3)`
-/

namespace A215686.P8627504412420602673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A215686.P8627504412420602673

/-! ## A215686.P4737023748947410200

`record[A176129(abs(A046691(n)))]`
-/

namespace A215686.P4737023748947410200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215686.P4737023748947410200

/-!
# A215687: Number of solid standard Young tableaux of shape [[2*n,2],[2]].

The programs for A215687, the canonical program `A215687.P2701531299889794238` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215687 has offset 0).

The definition of A215687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215687.P2701531299889794238

`n*(2*n-1)*(2*n²+7*n+7)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215687

/-- `n*(2*n-1)*(2*n²+7*n+7)` -/
def P2701531299889794238.Spec : Prop :=
  ∀ n, P2701531299889794238.a n = A215687 n

theorem P2701531299889794238.correct : P2701531299889794238.Spec := by
  intro n
  simp only [A215687]

end A215687

/-! ## A215687.P14626250881271232084

`n*(2*n-1)*A000217(2*n+3)+n*(2*n-1)`
-/

namespace A215687.P14626250881271232084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * n : ℤ) - 1) * A000217 (2 * n + 3) + (n : ℤ) * ((2 * n : ℤ) - 1)

end

end A215687.P14626250881271232084

namespace A215687

/-- `n*(2*n-1)*A000217(2*n+3)+n*(2*n-1)` -/
def P14626250881271232084.Spec : Prop :=
  ∀ n, P14626250881271232084.a n = A215687 n

end A215687

/-! ## A215687.P17041439946950676147

`A014106(n)²-A130861(n+1)`
-/

namespace A215687.P17041439946950676147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n ^ 2 - A130861 (n + 1)

end

end A215687.P17041439946950676147

namespace A215687

/-- `A014106(n)²-A130861(n+1)` -/
def P17041439946950676147.Spec : Prop :=
  ∀ n, P17041439946950676147.a n = A215687 n

end A215687

/-! ## A215687.P11473043536189546073

`A000384(n)+A000384(n+2)*A000384(n)`
-/

namespace A215687.P11473043536189546073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + A000384 (n + 2) * A000384 n

end

end A215687.P11473043536189546073

namespace A215687

/-- `A000384(n)+A000384(n+2)*A000384(n)` -/
def P11473043536189546073.Spec : Prop :=
  ∀ n, P11473043536189546073.a n = A215687 n

end A215687

/-! ## A215687.P877806455475048170

`A002939(n)*A130883(n+2)/2`
-/

namespace A215687.P877806455475048170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002939 n * A130883 (n + 2) : ℚ) / 2

end

end A215687.P877806455475048170

namespace A215687

/-- `A002939(n)*A130883(n+2)/2` -/
def P877806455475048170.Spec : Prop :=
  ∀ n, P877806455475048170.a n = (A215687 n : ℚ)

end A215687

/-!
# A215688: Number of solid standard Young tableaux of shape [[3*n,3],[3]].

The programs for A215688, there is no canonical definition to state claims against.
-/

/-! ## A215688.P2398186386743561128

`A176129(A167614(n+2))`
-/

namespace A215688.P2398186386743561128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (A167614 (n + 2)).toNat

end

end A215688.P2398186386743561128

/-! ## A215688.P15948622036085951558

`A176129(A052905(n)+8)`
-/

namespace A215688.P15948622036085951558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (A052905 n + 8).toNat

end

end A215688.P15948622036085951558

/-! ## A215688.P10640958262010574248

`A176129(A055999(n)+9)`
-/

namespace A215688.P10640958262010574248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (A055999 n + 9).toNat

end

end A215688.P10640958262010574248

/-! ## A215688.P17373897542607703396

`A176129(eq[3, A002262(n)])`
-/

namespace A215688.P17373897542607703396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215688.P17373897542607703396

/-! ## A215688.P2463730529896841946

`A176129(eq[8, A059268(n)])`
-/

namespace A215688.P2463730529896841946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215688.P2463730529896841946

/-!
# A215691: n-th derivative of (x^x)^(x^(x^x)) at x=1.

The programs for A215691, there is no canonical definition to state claims against.
-/

/-! ## A215691.P15651345717259213993

`A215703(eq[12, A025581(n)])`
-/

namespace A215691.P15651345717259213993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215691.P15651345717259213993

/-! ## A215691.P2771941033751051400

`A215703(eq[12, A195664(n)])`
-/

namespace A215691.P2771941033751051400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215691.P2771941033751051400

/-! ## A215691.P2070898444957501756

`A215703(eq[13, A193739(n)])`
-/

namespace A215691.P2070898444957501756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215691.P2070898444957501756

/-! ## A215691.P11838161009711262908

`A215703(eq[13, A195663(n)])`
-/

namespace A215691.P11838161009711262908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215691.P11838161009711262908

/-! ## A215691.P16999455106114010828

`A215703(eq[13, A004736(n+1)])`
-/

namespace A215691.P16999455106114010828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215691.P16999455106114010828

/-!
# A215694: a(n) = 5*a(n-1) - 6*a(n-2) + a(n-3) with a(0)=1, a(1)=2, a(2)=7.

The programs for A215694, the canonical program `A215694.P938024941559760624` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215694 has offset 0).

The definition of A215694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-6*a(n-2)+a(n-3)` (program `A215694.P938024941559760624`, by `A215694.P938024941559760624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215694.P938024941559760624

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215694

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P938024941559760624.Spec : Prop :=
  ∀ n, P938024941559760624.a n = A215694 n

theorem P938024941559760624.correct : P938024941559760624.Spec := by
  intro n
  simp only [A215694]

end A215694

/-! ## A215694.P2473264399120298716

`ogf((1-3x+3x^2)/(1-5x+6x^2-x^3))`
-/

namespace A215694.P2473264399120298716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -5, 6, -1] n

end

end A215694.P2473264399120298716

namespace A215694

/-- `ogf((1-3x+3x^2)/(1-5x+6x^2-x^3))` -/
def P2473264399120298716.Spec : Prop :=
  ∀ n, P2473264399120298716.a n = A215694 n

end A215694

/-! ## A215694.P13431851775370464146

`abs(Δ[A215695(n)])`
-/

namespace A215694.P13431851775370464146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A215694.P13431851775370464146

namespace A215694

/-- `abs(Δ[A215695(n)])` -/
def P13431851775370464146.Spec : Prop :=
  ∀ n, P13431851775370464146.a n = A215694 n

end A215694

/-! ## A215694.P7815344218526120204

`Δ[record[A214683(n)]]`
-/

namespace A215694.P7815344218526120204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215694.P7815344218526120204

namespace A215694

/-- `Δ[record[A214683(n)]]` -/
def P7815344218526120204.Spec : Prop :=
  ∀ n, P7815344218526120204.a n = A215694 n

end A215694

/-! ## A215694.P12377586678373198935

`A060557(n)-Δ[A080937(n)]`
-/

namespace A215694.P12377586678373198935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n - (f1 (n + 1) - f1 n)

end

end A215694.P12377586678373198935

namespace A215694

/-- `A060557(n)-Δ[A080937(n)]` -/
def P12377586678373198935.Spec : Prop :=
  ∀ n, P12377586678373198935.a n = A215694 n

end A215694

/-! ## A215694.P3196467458767179534

`A215695(n)-A215695(n+1)`
-/

namespace A215694.P3196467458767179534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215695 n - A215695 (n + 1)

end

end A215694.P3196467458767179534

namespace A215694

/-- `A215695(n)-A215695(n+1)` -/
def P3196467458767179534.Spec : Prop :=
  ∀ n, P3196467458767179534.a n = A215694 n

end A215694

/-! ## A215694.P17348117940953674921

`A060557(n)-A006053(2*n)`
-/

namespace A215694.P17348117940953674921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n - A006053 (2 * n)

end

end A215694.P17348117940953674921

namespace A215694

/-- `A060557(n)-A006053(2*n)` -/
def P17348117940953674921.Spec : Prop :=
  ∀ n, P17348117940953674921.a n = A215694 n

end A215694

/-! ## A215694.P14799611304525192686

`A080937(n)+A052547(2*n+1)`
-/

namespace A215694.P14799611304525192686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n + A052547 (2 * n + 1)

end

end A215694.P14799611304525192686

namespace A215694

/-- `A080937(n)+A052547(2*n+1)` -/
def P14799611304525192686.Spec : Prop :=
  ∀ n, P14799611304525192686.a n = A215694 n

end A215694

/-! ## A215694.P2898556245308617758

`A096976(2*n+1)+A052975(n)`
-/

namespace A215694.P2898556245308617758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 1) + A052975 n

end

end A215694.P2898556245308617758

namespace A215694

/-- `A096976(2*n+1)+A052975(n)` -/
def P2898556245308617758.Spec : Prop :=
  ∀ n, P2898556245308617758.a n = A215694 n

end A215694

/-! ## A215694.P14884777391480939687

`A096976(2*n+3)+A080937(n)`
-/

namespace A215694.P14884777391480939687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 3) + A080937 n

end

end A215694.P14884777391480939687

namespace A215694

/-- `A096976(2*n+3)+A080937(n)` -/
def P14884777391480939687.Spec : Prop :=
  ∀ n, P14884777391480939687.a n = A215694 n

end A215694

/-! ## A215694.P2871486741535447586

`A214683(2*n+1)-record[A214683(n)]`
-/

namespace A215694.P2871486741535447586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214683 (2 * n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215694.P2871486741535447586

namespace A215694

/-- `A214683(2*n+1)-record[A214683(n)]` -/
def P2871486741535447586.Spec : Prop :=
  ∀ n, P2871486741535447586.a n = A215694 n

end A215694

/-! ## A215694.P1964052903980017301

`A096976(2*n+1)+A028495(2*n)`
-/

namespace A215694.P1964052903980017301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 1) + A028495 (2 * n)

end

end A215694.P1964052903980017301

namespace A215694

/-- `A096976(2*n+1)+A028495(2*n)` -/
def P1964052903980017301.Spec : Prop :=
  ∀ n, P1964052903980017301.a n = A215694 n

end A215694

/-! ## A215694.P12914818037294990718

`A096976(2*n)+A052547(2*n+1)`
-/

namespace A215694.P12914818037294990718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n) + A052547 (2 * n + 1)

end

end A215694.P12914818037294990718

namespace A215694

/-- `A096976(2*n)+A052547(2*n+1)` -/
def P12914818037294990718.Spec : Prop :=
  ∀ n, P12914818037294990718.a n = A215694 n

end A215694

/-! ## A215694.P2235642547376700373

`A028495(2*n+1)-A006053(2*n)`
-/

namespace A215694.P2235642547376700373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n + 1) - A006053 (2 * n)

end

end A215694.P2235642547376700373

namespace A215694

/-- `A028495(2*n+1)-A006053(2*n)` -/
def P2235642547376700373.Spec : Prop :=
  ∀ n, P2235642547376700373.a n = A215694 n

end A215694

/-! ## A215694.P11725784160452741048

`2*A028495(2*n)-A080937(n+1)`
-/

namespace A215694.P11725784160452741048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028495 (2 * n) - A080937 (n + 1)

end

end A215694.P11725784160452741048

namespace A215694

/-- `2*A028495(2*n)-A080937(n+1)` -/
def P11725784160452741048.Spec : Prop :=
  ∀ n, P11725784160452741048.a n = A215694 n

end A215694

/-! ## A215694.P7060028189598419139

`A096976(2*n+3)+A096976(2*n)`
-/

namespace A215694.P7060028189598419139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 3) + A096976 (2 * n)

end

end A215694.P7060028189598419139

namespace A215694

/-- `A096976(2*n+3)+A096976(2*n)` -/
def P7060028189598419139.Spec : Prop :=
  ∀ n, P7060028189598419139.a n = A215694 n

end A215694

/-! ## A215694.P10977894608618921985

`2*A028495(2*n)-A052547(2*n)`
-/

namespace A215694.P10977894608618921985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028495 (2 * n) - A052547 (2 * n)

end

end A215694.P10977894608618921985

namespace A215694

/-- `2*A028495(2*n)-A052547(2*n)` -/
def P10977894608618921985.Spec : Prop :=
  ∀ n, P10977894608618921985.a n = A215694 n

end A215694

/-! ## A215694.P6916581266558560906

`A052547(2*n)+2*A187065(4*n)`
-/

namespace A215694.P6916581266558560906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * n) + 2 * A187065 (4 * n)

end

end A215694.P6916581266558560906

namespace A215694

/-- `A052547(2*n)+2*A187065(4*n)` -/
def P6916581266558560906.Spec : Prop :=
  ∀ n, P6916581266558560906.a n = A215694 n

end A215694

/-! ## A215694.P13948401006879235949

`2*A028495(2*n)-A187066(4*n)`
-/

namespace A215694.P13948401006879235949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028495 (2 * n) - A187066 (4 * n)

end

end A215694.P13948401006879235949

namespace A215694

/-- `2*A028495(2*n)-A187066(4*n)` -/
def P13948401006879235949.Spec : Prop :=
  ∀ n, P13948401006879235949.a n = A215694 n

end A215694

/-! ## A215694.P4855153378408183229

`A187066(4*n)+2*A187065(4*n)`
-/

namespace A215694.P4855153378408183229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (4 * n) + 2 * A187065 (4 * n)

end

end A215694.P4855153378408183229

namespace A215694

/-- `A187066(4*n)+2*A187065(4*n)` -/
def P4855153378408183229.Spec : Prop :=
  ∀ n, P4855153378408183229.a n = A215694 n

end A215694

/-!
# A215695: a(n) = 5*a(n-1) - 6*a(n-2) + a(n-3) with a(0)=1, a(1)=0, a(2)=-2.

The programs for A215695, the canonical program `A215695.P9601884467694227572` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215695 has offset 0).

The definition of A215695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-6*a(n-2)+a(n-3)` (program `A215695.P9601884467694227572`, by `A215695.P9601884467694227572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215695.P9601884467694227572

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=-2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215695

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P9601884467694227572.Spec : Prop :=
  ∀ n, P9601884467694227572.a n = A215695 n

theorem P9601884467694227572.correct : P9601884467694227572.Spec := by
  intro n
  simp only [A215695]

end A215695

/-! ## A215695.P17517776836055378448

`ogf((1-5x+4x^2)/(1-5x+6x^2-x^3))`
-/

namespace A215695.P17517776836055378448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 4] [1, -5, 6, -1] n

end

end A215695.P17517776836055378448

namespace A215695

/-- `ogf((1-5x+4x^2)/(1-5x+6x^2-x^3))` -/
def P17517776836055378448.Spec : Prop :=
  ∀ n, P17517776836055378448.a n = A215695 n

end A215695

/-! ## A215695.P10490842294597469237

`-record[A214683(n)]`
-/

namespace A215695.P10490842294597469237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215695.P10490842294597469237

namespace A215695

/-- `-record[A214683(n)]` -/
def P10490842294597469237.Spec : Prop :=
  ∀ n, P10490842294597469237.a n = A215695 n

end A215695

/-! ## A215695.P6838544441066719540

`a(n-1)-A215694(n-1)` with `a(0)=1`
-/

namespace A215695.P6838544441066719540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A215694 (n - 1)

end

end A215695.P6838544441066719540

namespace A215695

/-- `a(n-1)-A215694(n-1)` -/
def P6838544441066719540.Spec : Prop :=
  ∀ n, P6838544441066719540.a n = A215695 n

end A215695

/-! ## A215695.P1069702058020125895

`2*A080937(n)-A052975(n)`
-/

namespace A215695.P1069702058020125895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080937 n - A052975 n

end

end A215695.P1069702058020125895

namespace A215695

/-- `2*A080937(n)-A052975(n)` -/
def P1069702058020125895.Spec : Prop :=
  ∀ n, P1069702058020125895.a n = A215695 n

end A215695

/-! ## A215695.P6987873418646404415

`A080937(n)-A006053(2*n+1)`
-/

namespace A215695.P6987873418646404415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n - A006053 (2 * n + 1)

end

end A215695.P6987873418646404415

namespace A215695

/-- `A080937(n)-A006053(2*n+1)` -/
def P6987873418646404415.Spec : Prop :=
  ∀ n, P6987873418646404415.a n = A215695 n

end A215695

/-! ## A215695.P1346820161360311395

`A096976(2*n)-A006053(2*n+1)`
-/

namespace A215695.P1346820161360311395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n) - A006053 (2 * n + 1)

end

end A215695.P1346820161360311395

namespace A215695

/-- `A096976(2*n)-A006053(2*n+1)` -/
def P1346820161360311395.Spec : Prop :=
  ∀ n, P1346820161360311395.a n = A215695 n

end A215695

/-! ## A215695.P2683462259774182022

`2*A096976(2*n)-A028495(2*n)`
-/

namespace A215695.P2683462259774182022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096976 (2 * n) - A028495 (2 * n)

end

end A215695.P2683462259774182022

namespace A215695

/-- `2*A096976(2*n)-A028495(2*n)` -/
def P2683462259774182022.Spec : Prop :=
  ∀ n, P2683462259774182022.a n = A215695 n

end A215695

/-! ## A215695.P12291750010366177773

`A080937(n)-A187065(A004767(n))`
-/

namespace A215695.P12291750010366177773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n - A187065 (A004767 n).toNat

end

end A215695.P12291750010366177773

namespace A215695

/-- `A080937(n)-A187065(A004767(n))` -/
def P12291750010366177773.Spec : Prop :=
  ∀ n, P12291750010366177773.a n = A215695 n

end A215695

/-! ## A215695.P7312609654414396882

`A080937(n)-A187067(A008586(n))`
-/

namespace A215695.P7312609654414396882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n - A187067 (A008586 n).toNat

end

end A215695.P7312609654414396882

namespace A215695

/-- `A080937(n)-A187067(A008586(n))` -/
def P7312609654414396882.Spec : Prop :=
  ∀ n, P7312609654414396882.a n = A215695 n

end A215695

/-! ## A215695.P12750532393735853715

`A080937(n)-A187066(A016813(n))`
-/

namespace A215695.P12750532393735853715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n - A187066 (A016813 n).toNat

end

end A215695.P12750532393735853715

namespace A215695

/-- `A080937(n)-A187066(A016813(n))` -/
def P12750532393735853715.Spec : Prop :=
  ∀ n, P12750532393735853715.a n = A215695 n

end A215695

/-! ## A215695.P4177902034568999437

`A080937(n)-A265755(A016825(n))`
-/

namespace A215695.P4177902034568999437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n - A265755 (A016825 n).toNat

end

end A215695.P4177902034568999437

namespace A215695

/-- `A080937(n)-A265755(A016825(n))` -/
def P4177902034568999437.Spec : Prop :=
  ∀ n, P4177902034568999437.a n = A215695 n

end A215695

/-! ## A215695.P6806584301938622810

`A028495(2*n)-A006053(2*n+1)-A006053(2*n+1)`
-/

namespace A215695.P6806584301938622810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n) - A006053 (2 * n + 1) - A006053 (2 * n + 1)

end

end A215695.P6806584301938622810

namespace A215695

/-- `A028495(2*n)-A006053(2*n+1)-A006053(2*n+1)` -/
def P6806584301938622810.Spec : Prop :=
  ∀ n, P6806584301938622810.a n = A215695 n

end A215695

/-! ## A215695.P12104181004276172370

`2*A052975(n)-∑[A060557(n)]`
-/

namespace A215695.P12104181004276172370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052975 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215695.P12104181004276172370

namespace A215695

/-- `2*A052975(n)-∑[A060557(n)]` -/
def P12104181004276172370.Spec : Prop :=
  ∀ n, P12104181004276172370.a n = A215695 n

end A215695

/-! ## A215695.P13253667092947430482

`2*A052975(n)-A094789(n+1)`
-/

namespace A215695.P13253667092947430482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052975 n - A094789 (n + 1)

end

end A215695.P13253667092947430482

namespace A215695

/-- `2*A052975(n)-A094789(n+1)` -/
def P13253667092947430482.Spec : Prop :=
  ∀ n, P13253667092947430482.a n = A215695 n

end A215695

/-! ## A215695.P6744129882659381357

`A215694(n)-A214683(2*n+1)`
-/

namespace A215695.P6744129882659381357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215694 n - A214683 (2 * n + 1)

end

end A215695.P6744129882659381357

namespace A215695

/-- `A215694(n)-A214683(2*n+1)` -/
def P6744129882659381357.Spec : Prop :=
  ∀ n, P6744129882659381357.a n = A215695 n

end A215695

/-! ## A215695.P6136879289678017812

`A028495(2*n)-2*A187067(4*n)`
-/

namespace A215695.P6136879289678017812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n) - 2 * A187067 (4 * n)

end

end A215695.P6136879289678017812

namespace A215695

/-- `A028495(2*n)-2*A187067(4*n)` -/
def P6136879289678017812.Spec : Prop :=
  ∀ n, P6136879289678017812.a n = A215695 n

end A215695

/-! ## A215695.P7723926556337575597

`A096976(2*n)-Δ[A096976(2*n+1)]`
-/

namespace A215695.P7723926556337575597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n) - (f1 (n + 1) - f1 n)

end

end A215695.P7723926556337575597

namespace A215695

/-- `A096976(2*n)-Δ[A096976(2*n+1)]` -/
def P7723926556337575597.Spec : Prop :=
  ∀ n, P7723926556337575597.a n = A215695 n

end A215695

/-! ## A215695.P10139748577380102569

`A028495(2*n)-2*A006053(2*n+1)`
-/

namespace A215695.P10139748577380102569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n) - 2 * A006053 (2 * n + 1)

end

end A215695.P10139748577380102569

namespace A215695

/-- `A028495(2*n)-2*A006053(2*n+1)` -/
def P10139748577380102569.Spec : Prop :=
  ∀ n, P10139748577380102569.a n = A215695 n

end A215695

/-! ## A215695.P1007766123488241842

`A052975(n)+A080937(n)-A060557(n)`
-/

namespace A215695.P1007766123488241842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 n + (A080937 n - A060557 n)

end

end A215695.P1007766123488241842

namespace A215695

/-- `A052975(n)+A080937(n)-A060557(n)` -/
def P1007766123488241842.Spec : Prop :=
  ∀ n, P1007766123488241842.a n = A215695 n

end A215695

/-!
# A215697: Primes p = 2x + 1 such that x^2 + x + 41 is prime.

The programs for A215697, there is no canonical definition to state claims against.
-/

/-! ## A215697.P10072606105543298048

`p?[2*A056561(n+1)+1]`
-/

namespace A215697.P10072606105543298048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056561 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215697.P10072606105543298048

/-! ## A215697.P13185063680323230188

`p?[2*A002837(n+1)-1]`
-/

namespace A215697.P13185063680323230188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002837 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215697.P13185063680323230188

/-! ## A215697.P17517528280136515812

`p?[A056561(n+2)+A056561(n+2)+1]`
-/

namespace A215697.P17517528280136515812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (n + 2) + (A056561 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215697.P17517528280136515812

/-! ## A215697.P16523141718632953752

`p?[A002837(n+2)+A002837(n+2)-1]`
-/

namespace A215697.P16523141718632953752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (n + 2) + (A002837 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215697.P16523141718632953752

/-! ## A215697.P17542444594237174606

`p?[A005843(A056561(n+1))+1]`
-/

namespace A215697.P17542444594237174606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A056561 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215697.P17542444594237174606

/-! ## A215697.P8135782031243842629

`p?[A001222(A202018(n))+2*n]`
-/

namespace A215697.P8135782031243842629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A202018 n).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215697.P8135782031243842629

/-!
# A215698: Number of primes of the form 1 + b^256 for 1 < b < 10^n.

The programs for A215698, there is no canonical definition to state claims against.
-/

/-! ## A215698.P7496810781173946053

`floor(ϕ*(n+1))*A333804(n)`
-/

namespace A215698.P7496810781173946053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * A333804 n

end

end A215698.P7496810781173946053

/-!
# A215699: Number of primes of the form 1 + b^512 for 1 < b < 10^n.

The programs for A215699, there is no canonical definition to state claims against.
-/

/-! ## A215699.P12213868197725376153

`A224602(n+1)%A000040(A000698(n))`
-/

namespace A215699.P12213868197725376153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224602 (n + 1)) (A000040 (A000698 n).toNat)

end

end A215699.P12213868197725376153

