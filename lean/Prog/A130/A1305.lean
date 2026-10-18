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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A130503: a(n) = denominator of the sum of reciprocals of those positive integers which are <= n and are not among the first (n-1) terms of A130502.

The programs for A130503, there is no canonical definition to state claims against.
-/

/-! ## A130503.P5443161655081001170

`A002805(n+1)/A072436(A163590(n+1))`
-/

namespace A130503.P5443161655081001170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A072436 (A163590 (n + 1)).toNat : ℚ)

end

end A130503.P5443161655081001170

/-! ## A130503.P6932438645362744146

`A028264(n)*A072438(A002805(n+1)/A028264(n))`
-/

namespace A130503.P6932438645362744146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028264 n * A072438 (SequenceMachineLib.roundAway ((A002805 (n + 1) : ℚ) / (A028264 n : ℚ))).toNat

end

end A130503.P6932438645362744146

/-! ## A130503.P3377366911776297207

`gcd(A000203(∏[4-2/(n+1)]/2), A002805(n+1))`
-/

namespace A130503.P3377366911776297207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 2)).toNat) (A002805 (n + 1))

end

end A130503.P3377366911776297207

/-! ## A130503.P11718872558646861722

`lcm(A028264(n), A072438(A002805(n+1)))`
-/

namespace A130503.P11718872558646861722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028264 n) (A072438 (A002805 (n + 1)).toNat)

end

end A130503.P11718872558646861722

/-! ## A130503.P10614103113933602685

`lcm(A131791(n), A284253(A002805(n+1)))`
-/

namespace A130503.P10614103113933602685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131791 n) (A284253 (A002805 (n + 1)).toNat)

end

end A130503.P10614103113933602685

/-!
# A130504: Number of k for which T(n) + T(k) is prime, with 0<=k<=n and triangular number T(n)=n(n+1)/2.

The programs for A130504, there is no canonical definition to state claims against.
-/

/-! ## A130504.P17220483994121273892

`A324115(A077168(n)+A000720(n+1))`
-/

namespace A130504.P17220483994121273892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324115 (A077168 n + A000720 (n + 1)).toNat

end

end A130504.P17220483994121273892

/-! ## A130504.P12022799064723657100

`A237593(A224073(n))%A305973(n+1)`
-/

namespace A130504.P12022799064723657100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237593 (A224073 n).toNat) (A305973 (n + 1))

end

end A130504.P12022799064723657100

/-! ## A130504.P12862605783376632984

`A001222(gcd(A273795(n), A273803(n+1)))`
-/

namespace A130504.P12862605783376632984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A273795 n) (A273803 (n + 1)))

end

end A130504.P12862605783376632984

/-! ## A130504.P7744284122871501552

`A057554(n+1)+A000035(A002843(n+3))`
-/

namespace A130504.P7744284122871501552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (n + 1) + A000035 (A002843 (n + 3)).toNat

end

end A130504.P7744284122871501552

/-! ## A130504.P6937610144758828611

`A101296(2*n+1)-A335449(A016969(n))`
-/

namespace A130504.P6937610144758828611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (2 * n + 1) - A335449 (A016969 n).toNat

end

end A130504.P6937610144758828611

/-!
# A130505: a(n) = 3*a(n-1) if n is odd, otherwise 6*a(n-1).

The programs for A130505, the canonical program `A130505.P10593945286097140961` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130505 has offset 0).

The definition of A130505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130505.P10593945286097140961

`18*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130505

/-- `18*a(n-2)` -/
def P10593945286097140961.Spec : Prop :=
  ∀ n, (P10593945286097140961.a n : ℤ) = A130505 n

theorem P10593945286097140961.correct : P10593945286097140961.Spec := by
  intro n
  simp only [A130505]

end A130505

/-! ## A130505.P6906693783731626827

`∏[gcd(6, floor(3/acot(n)))]`
-/

namespace A130505.P6906693783731626827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P6906693783731626827

namespace A130505

/-- `∏[gcd(6, floor(3/acot(n)))]` -/
def P6906693783731626827.Spec : Prop :=
  ∀ n, (P6906693783731626827.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P18078646750857492080

`∏[9-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A130505.P18078646750857492080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P18078646750857492080

namespace A130505

/-- `∏[9-a(n-1)]` -/
def P18078646750857492080.Spec : Prop :=
  ∀ n, P18078646750857492080.a n = A130505 n

end A130505

/-! ## A130505.P6017303187685476280

`2^floor(n/2)*3^n`
-/

namespace A130505.P6017303187685476280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (3 ^ n : ℚ)

end

end A130505.P6017303187685476280

namespace A130505

/-- `2^floor(n/2)*3^n` -/
def P6017303187685476280.Spec : Prop :=
  ∀ n, P6017303187685476280.a n = (A130505 n : ℚ)

end A130505

/-! ## A130505.P92291517655254278

`lcm(2^floor(n/2), 3^n)`
-/

namespace A130505.P92291517655254278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (3 ^ n : ℤ)

end

end A130505.P92291517655254278

namespace A130505

/-- `lcm(2^floor(n/2), 3^n)` -/
def P92291517655254278.Spec : Prop :=
  ∀ n, (P92291517655254278.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P10250555521812700336

`∏[(∏[n%2+2]/2)%15]`
-/

namespace A130505.P10250555521812700336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2)) 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P10250555521812700336

namespace A130505

/-- `∏[(∏[n%2+2]/2)%15]` -/
def P10250555521812700336.Spec : Prop :=
  ∀ n, P10250555521812700336.a n = A130505 n

end A130505

/-! ## A130505.P14573767180044422468

`∏[(∏[4-gcd(2, n)]/2)%15]`
-/

namespace A130505.P14573767180044422468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2)) 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P14573767180044422468

namespace A130505

/-- `∏[(∏[4-gcd(2, n)]/2)%15]` -/
def P14573767180044422468.Spec : Prop :=
  ∀ n, P14573767180044422468.a n = A130505 n

end A130505

/-! ## A130505.P15769778714942657074

`∏[(∏[3-and(1, n-1)]/2)%15]`
-/

namespace A130505.P15769778714942657074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.land 1 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2)) 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P15769778714942657074

namespace A130505

/-- `∏[(∏[3-and(1, n-1)]/2)%15]` -/
def P15769778714942657074.Spec : Prop :=
  ∀ n, P15769778714942657074.a n = A130505 n

end A130505

/-! ## A130505.P1360248965931535511

`a(n-1)/(1/2-a(n-2)/a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A130505.P1360248965931535511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2 - a (n - 2) / a (n - 1))

end

end A130505.P1360248965931535511

namespace A130505

/-- `a(n-1)/(1/2-a(n-2)/a(n-1))` -/
def P1360248965931535511.Spec : Prop :=
  ∀ n, P1360248965931535511.a n = (A130505 n : ℚ)

end A130505

/-! ## A130505.P9214161578796941265

`∏[dr(A003945(n))]`
-/

namespace A130505.P9214161578796941265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003945 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P9214161578796941265

namespace A130505

/-- `∏[dr(A003945(n))]` -/
def P9214161578796941265.Spec : Prop :=
  ∀ n, (P9214161578796941265.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P12444975063765816727

`∏[dr(A261582(n))]`
-/

namespace A130505.P12444975063765816727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A261582 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P12444975063765816727

namespace A130505

/-- `∏[dr(A261582(n))]` -/
def P12444975063765816727.Spec : Prop :=
  ∀ n, (P12444975063765816727.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P6307924258753037900

`∏[gcd(6, A008486(n))]`
-/

namespace A130505.P6307924258753037900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A008486 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P6307924258753037900

namespace A130505

/-- `∏[gcd(6, A008486(n))]` -/
def P6307924258753037900.Spec : Prop :=
  ∀ n, (P6307924258753037900.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P17060108354068022467

`∏[dr(A123007(n+1))]`
-/

namespace A130505.P17060108354068022467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A123007 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P17060108354068022467

namespace A130505

/-- `∏[dr(A123007(n+1))]` -/
def P17060108354068022467.Spec : Prop :=
  ∀ n, (P17060108354068022467.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P5902037781171166185

`∏[dr(A024741(n+2))]`
-/

namespace A130505.P5902037781171166185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A024741 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P5902037781171166185

namespace A130505

/-- `∏[dr(A024741(n+2))]` -/
def P5902037781171166185.Spec : Prop :=
  ∀ n, (P5902037781171166185.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P3221895648607967535

`∏[dr(A024961(n+2))]`
-/

namespace A130505.P3221895648607967535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A024961 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P3221895648607967535

namespace A130505

/-- `∏[dr(A024961(n+2))]` -/
def P3221895648607967535.Spec : Prop :=
  ∀ n, (P3221895648607967535.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P1026853656186024460

`∏[dr(A122391(n+2))]`
-/

namespace A130505.P1026853656186024460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A122391 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P1026853656186024460

namespace A130505

/-- `∏[dr(A122391(n+2))]` -/
def P1026853656186024460.Spec : Prop :=
  ∀ n, (P1026853656186024460.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P8778708041466497832

`∏[dr(A074323(2*n))]`
-/

namespace A130505.P8778708041466497832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A074323 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P8778708041466497832

namespace A130505

/-- `∏[dr(A074323(2*n))]` -/
def P8778708041466497832.Spec : Prop :=
  ∀ n, (P8778708041466497832.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P5702188169620221597

`∏[dr(A134813(2*n))]`
-/

namespace A130505.P5702188169620221597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A134813 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130505.P5702188169620221597

namespace A130505

/-- `∏[dr(A134813(2*n))]` -/
def P5702188169620221597.Spec : Prop :=
  ∀ n, (P5702188169620221597.a n : ℤ) = A130505 n

end A130505

/-! ## A130505.P16540106422452439465

`∏[A267352(A267352(n))]/2`
-/

namespace A130505.P16540106422452439465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267352 (A267352 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A130505.P16540106422452439465

namespace A130505

/-- `∏[A267352(A267352(n))]/2` -/
def P16540106422452439465.Spec : Prop :=
  ∀ n, P16540106422452439465.a n = (A130505 n : ℚ)

end A130505

/-!
# A130507: First differences of A130845.

The programs for A130507, the canonical program `A130507.P7260736347098327518` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130507 has offset 0).

The definition of A130507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130507.P7260736347098327518

`Δ[floor(n/gcd(4, gcd(4, n)-n))]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130507

/-- `Δ[floor(n/gcd(4, gcd(4, n)-n))]` -/
def P7260736347098327518.Spec : Prop :=
  ∀ n, P7260736347098327518.a n = A130507 n

theorem P7260736347098327518.correct : P7260736347098327518.Spec := by
  intro n
  simp only [A130507]

end A130507

/-! ## A130507.P5000217805204065193

`A130717(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A130507.P5000217805204065193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A130717 (n - 1) + a (n - 1)

end

end A130507.P5000217805204065193

namespace A130507

/-- `A130717(n-1)+a(n-1)` -/
def P5000217805204065193.Spec : Prop :=
  ∀ n, P5000217805204065193.a n = A130507 n

end A130507

/-! ## A130507.P2112855206191931776

`A131358(A057353(n))`
-/

namespace A130507.P2112855206191931776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A057353 n).toNat

end

end A130507.P2112855206191931776

namespace A130507

/-- `A131358(A057353(n))` -/
def P2112855206191931776.Spec : Prop :=
  ∀ n, P2112855206191931776.a n = A130507 n

end A130507

/-! ## A130507.P8837134572517548241

`A131358(A131742(n))`
-/

namespace A130507.P8837134572517548241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A131742 n).toNat

end

end A130507.P8837134572517548241

namespace A130507

/-- `A131358(A131742(n))` -/
def P8837134572517548241.Spec : Prop :=
  ∀ n, P8837134572517548241.a n = A130507 n

end A130507

/-! ## A130507.P128855883556930667

`A131730(n*A021913(n))`
-/

namespace A130507.P128855883556930667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 ((n : ℤ) * A021913 n).toNat

end

end A130507.P128855883556930667

namespace A130507

/-- `A131730(n*A021913(n))` -/
def P128855883556930667.Spec : Prop :=
  ∀ n, P128855883556930667.a n = A130507 n

end A130507

/-! ## A130507.P17976453409705833039

`(A004526(n)²-A011848(n))*A021913(n)`
-/

namespace A130507.P17976453409705833039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n ^ 2 - A011848 n) * A021913 n

end

end A130507.P17976453409705833039

namespace A130507

/-- `(A004526(n)²-A011848(n))*A021913(n)` -/
def P17976453409705833039.Spec : Prop :=
  ∀ n, P17976453409705833039.a n = A130507 n

end A130507

/-! ## A130507.P16296429975980310676

`(A008624(n)-A110659(n))*A059169(n+1)`
-/

namespace A130507.P16296429975980310676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008624 n - A110659 n) * A059169 (n + 1)

end

end A130507.P16296429975980310676

namespace A130507

/-- `(A008624(n)-A110659(n))*A059169(n+1)` -/
def P16296429975980310676.Spec : Prop :=
  ∀ n, P16296429975980310676.a n = A130507 n

end A130507

/-! ## A130507.P6899820121223928135

`A004526(A028242(n))²-A002620(A004526(n))`
-/

namespace A130507.P6899820121223928135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028242 n).toNat ^ 2 - A002620 (A004526 n).toNat

end

end A130507.P6899820121223928135

namespace A130507

/-- `A004526(A028242(n))²-A002620(A004526(n))` -/
def P6899820121223928135.Spec : Prop :=
  ∀ n, P6899820121223928135.a n = A130507 n

end A130507

/-! ## A130507.P5209662246706291193

`A004652(A004526(n))-A004526(A110654(n))²`
-/

namespace A130507.P5209662246706291193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A004526 n).toNat - A004526 (A110654 n).toNat ^ 2

end

end A130507.P5209662246706291193

namespace A130507

/-- `A004652(A004526(n))-A004526(A110654(n))²` -/
def P5209662246706291193.Spec : Prop :=
  ∀ n, P5209662246706291193.a n = A130507 n

end A130507

/-! ## A130507.P2836582701968241202

`(A004524(A004442(n))-A004524(n))*A059169(n+1)`
-/

namespace A130507.P2836582701968241202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004524 (A004442 n).toNat - A004524 n) * A059169 (n + 1)

end

end A130507.P2836582701968241202

namespace A130507

/-- `(A004524(A004442(n))-A004524(n))*A059169(n+1)` -/
def P2836582701968241202.Spec : Prop :=
  ∀ n, P2836582701968241202.a n = A130507 n

end A130507

/-! ## A130507.P16568283060848205884

`Δ[floor(lcm(n, ∑[n])/lcm(4, n+1))]`
-/

namespace A130507.P16568283060848205884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / (Nat.lcm 4 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130507.P16568283060848205884

namespace A130507

/-- `Δ[floor(lcm(n, ∑[n])/lcm(4, n+1))]` -/
def P16568283060848205884.Spec : Prop :=
  ∀ n, P16568283060848205884.a n = A130507 n

end A130507

/-! ## A130507.P5268252811142382217

`Δ[A130845(n)]`
-/

namespace A130507.P5268252811142382217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130507.P5268252811142382217

namespace A130507

/-- `Δ[A130845(n)]` -/
def P5268252811142382217.Spec : Prop :=
  ∀ n, P5268252811142382217.a n = A130507 n

end A130507

/-! ## A130507.P18350591212747314788

`Δ[A026741(A004524(n))]`
-/

namespace A130507.P18350591212747314788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130507.P18350591212747314788

namespace A130507

/-- `Δ[A026741(A004524(n))]` -/
def P18350591212747314788.Spec : Prop :=
  ∀ n, P18350591212747314788.a n = A130507 n

end A130507

/-! ## A130507.P14266596450758282181

`Δ[A009947(A130766(n))]`
-/

namespace A130507.P14266596450758282181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A130766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130507.P14266596450758282181

namespace A130507

/-- `Δ[A009947(A130766(n))]` -/
def P14266596450758282181.Spec : Prop :=
  ∀ n, P14266596450758282181.a n = A130507 n

end A130507

/-! ## A130507.P15882899812857449234

`Δ[gcd(A004524(n), A050534(n))]`
-/

namespace A130507.P15882899812857449234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004524 n) (A050534 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A130507.P15882899812857449234

namespace A130507

/-- `Δ[gcd(A004524(n), A050534(n))]` -/
def P15882899812857449234.Spec : Prop :=
  ∀ n, P15882899812857449234.a n = A130507 n

end A130507

/-! ## A130507.P17743523462532834096

`A130845(n+1)-A130845(n)`
-/

namespace A130507.P17743523462532834096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (n + 1) - A130845 n

end

end A130507.P17743523462532834096

namespace A130507

/-- `A130845(n+1)-A130845(n)` -/
def P17743523462532834096.Spec : Prop :=
  ∀ n, P17743523462532834096.a n = A130507 n

end A130507

/-! ## A130507.P7880126877543295236

`Δ[(A002265(n)+1)*A177704(n)]`
-/

namespace A130507.P7880126877543295236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 n + 1) * A177704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130507.P7880126877543295236

namespace A130507

/-- `Δ[(A002265(n)+1)*A177704(n)]` -/
def P7880126877543295236.Spec : Prop :=
  ∀ n, P7880126877543295236.a n = A130507 n

end A130507

/-! ## A130507.P12913128918120581835

`Δ[A129756(n)%A138996(n+1)]`
-/

namespace A130507.P12913128918120581835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129756 n) (A138996 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130507.P12913128918120581835

namespace A130507

/-- `Δ[A129756(n)%A138996(n+1)]` -/
def P12913128918120581835.Spec : Prop :=
  ∀ n, P12913128918120581835.a n = A130507 n

end A130507

/-! ## A130507.P10074693238453832689

`(A026922(n+2)-A110659(n))*A059169(n+1)`
-/

namespace A130507.P10074693238453832689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026922 (n + 2) - A110659 n) * A059169 (n + 1)

end

end A130507.P10074693238453832689

namespace A130507

/-- `(A026922(n+2)-A110659(n))*A059169(n+1)` -/
def P10074693238453832689.Spec : Prop :=
  ∀ n, P10074693238453832689.a n = A130507 n

end A130507

/-! ## A130507.P17765451351568482736

`A354856(n+2)-A354856(n+1)*A354856(n+2)`
-/

namespace A130507.P17765451351568482736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354856 (n + 2) - A354856 (n + 1) * A354856 (n + 2)

end

end A130507.P17765451351568482736

namespace A130507

/-- `A354856(n+2)-A354856(n+1)*A354856(n+2)` -/
def P17765451351568482736.Spec : Prop :=
  ∀ n, P17765451351568482736.a n = A130507 n

end A130507

/-!
# A130508: a(1)=2. a(2)=3. a(3)=1. a(n+3) = 3 + a(n), for all positive integers n.

The programs for A130508, the canonical program `A130508.P1823387939666244129` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130508 has offset 1).

The definition of A130508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130508.P17451776228875252605

`n+1-2*cos(2*(n+1)*π/3)`
-/

namespace A130508.P17451776228875252605
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - 2 * Real.cos (2 * ((n + 1 : ℝ) * (Real.pi / 3)))

end

end A130508.P17451776228875252605

namespace A130508

/-- `n+1-2*cos(2*(n+1)*π/3)` -/
def P17451776228875252605.Spec : Prop :=
  ∀ n, P17451776228875252605.a n = (A130508 (n + 1) : ℝ)

end A130508

/-! ## A130508.P1823387939666244129

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130508

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P1823387939666244129.Spec : Prop :=
  ∀ n, P1823387939666244129.a n = A130508 (n + 1)

theorem P1823387939666244129.correct : P1823387939666244129.Spec := by
  intro n
  simp only [A130508, Nat.add_sub_cancel]

end A130508

/-! ## A130508.P17092851187576043430

`Δ[n%3+n]+n`
-/

namespace A130508.P17092851187576043430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A130508.P17092851187576043430

namespace A130508

/-- `Δ[n%3+n]+n` -/
def P17092851187576043430.Spec : Prop :=
  ∀ n, P17092851187576043430.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P836349291464224395

`a(n-3)+3` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A130508.P836349291464224395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  a (n - 3) + 3

end

end A130508.P836349291464224395

namespace A130508

/-- `a(n-3)+3` -/
def P836349291464224395.Spec : Prop :=
  ∀ n, (P836349291464224395.a n : ℤ) = A130508 (n + 1)

end A130508

/-! ## A130508.P6857866624459346081

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=-2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A130508.P6857866624459346081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, -2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130508.P6857866624459346081

namespace A130508

/-- `∑[floor(a(n-3))]` -/
def P6857866624459346081.Spec : Prop :=
  ∀ n, P6857866624459346081.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P5055349235090622612

`3-floor(-a(n-3))` with `a(0)=2, a(1)=3, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130508.P5055349235090622612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  3 - (-a (n - 3))

end

end A130508.P5055349235090622612

namespace A130508

/-- `3-floor(-a(n-3))` -/
def P5055349235090622612.Spec : Prop :=
  ∀ n, P5055349235090622612.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P12469277390622533030

`3-ceil(-a(n-3))` with `a(0)=2, a(1)=3, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A130508.P12469277390622533030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  3 - (-a (n - 3))

end

end A130508.P12469277390622533030

namespace A130508

/-- `3-ceil(-a(n-3))` -/
def P12469277390622533030.Spec : Prop :=
  ∀ n, P12469277390622533030.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P17022528031377615784

`3-round(-a(n-3))` with `a(0)=2, a(1)=3, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A130508.P17022528031377615784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  3 - (-a (n - 3))

end

end A130508.P17022528031377615784

namespace A130508

/-- `3-round(-a(n-3))` -/
def P17022528031377615784.Spec : Prop :=
  ∀ n, P17022528031377615784.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P5587278603341993857

`∑[2-4/a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A130508.P5587278603341993857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130508.P5587278603341993857

namespace A130508

/-- `∑[2-4/a(n-1)]` -/
def P5587278603341993857.Spec : Prop :=
  ∀ n, P5587278603341993857.a n = (A130508 (n + 1) : ℚ)

end A130508

/-! ## A130508.P15726233652997543554

`n+2-C(gcd(3, n+1), 2)`
-/

namespace A130508.P15726233652997543554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose (Nat.gcd 3 (n + 1)) 2 : ℤ)

end

end A130508.P15726233652997543554

namespace A130508

/-- `n+2-C(gcd(3, n+1), 2)` -/
def P15726233652997543554.Spec : Prop :=
  ∀ n, P15726233652997543554.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P10672534636832728733

`3*(n+1)²%3+n-1`
-/

namespace A130508.P10672534636832728733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * ((n + 1) ^ 2 % 3) : ℕ) : ℤ) + ((n : ℤ) - 1)

end

end A130508.P10672534636832728733

namespace A130508

/-- `3*(n+1)²%3+n-1` -/
def P10672534636832728733.Spec : Prop :=
  ∀ n, P10672534636832728733.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P4469640770858054931

`n+2-val(dr((n+3)^3), 2)`
-/

namespace A130508.P4469640770858054931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot ((n + 3) ^ 3 : ℤ)) 2 : ℤ)

end

end A130508.P4469640770858054931

namespace A130508

/-- `n+2-val(dr((n+3)^3), 2)` -/
def P4469640770858054931.Spec : Prop :=
  ∀ n, P4469640770858054931.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P9605120315533226711

`n+3-gcd(4, dr((n+3)^3))`
-/

namespace A130508.P9605120315533226711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.gcd 4 (SequenceMachineLib.digitalRoot ((n + 3) ^ 3 : ℤ)) : ℤ)

end

end A130508.P9605120315533226711

namespace A130508

/-- `n+3-gcd(4, dr((n+3)^3))` -/
def P9605120315533226711.Spec : Prop :=
  ∀ n, P9605120315533226711.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P17523550120471250685

`n+3-and(5, dr(3*(n+3)))`
-/

namespace A130508.P17523550120471250685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.land 5 (SequenceMachineLib.digitalRoot (3 * (n + 3) : ℤ)) : ℤ)

end

end A130508.P17523550120471250685

namespace A130508

/-- `n+3-and(5, dr(3*(n+3)))` -/
def P17523550120471250685.Spec : Prop :=
  ∀ n, P17523550120471250685.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P11862323806071663514

`n+2-C(3, dr((n+2)^3))`
-/

namespace A130508.P11862323806071663514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose 3 (SequenceMachineLib.digitalRoot ((n + 2) ^ 3 : ℤ)) : ℤ)

end

end A130508.P11862323806071663514

namespace A130508

/-- `n+2-C(3, dr((n+2)^3))` -/
def P11862323806071663514.Spec : Prop :=
  ∀ n, P11862323806071663514.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P7668920382157219928

`dr(4^dr((n+1)²))+n-2`
-/

namespace A130508.P7668920382157219928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (4 ^ SequenceMachineLib.digitalRoot ((n + 1) ^ 2 : ℤ) : ℤ) : ℤ) + ((n : ℤ) - 2)

end

end A130508.P7668920382157219928

namespace A130508

/-- `dr(4^dr((n+1)²))+n-2` -/
def P7668920382157219928.Spec : Prop :=
  ∀ n, P7668920382157219928.a n = A130508 (n + 1)

end A130508

/-! ## A130508.P17765656458222824288

`n+3-dr(∑[n]+(1-n)²)`
-/

namespace A130508.P17765656458222824288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (n : ℤ)) ^ 2) : ℤ)

end

end A130508.P17765656458222824288

namespace A130508

/-- `n+3-dr(∑[n]+(1-n)²)` -/
def P17765656458222824288.Spec : Prop :=
  ∀ n, P17765656458222824288.a n = A130508 (n + 1)

end A130508

/-!
# A130509: a(1)=3, a(2)=1, a(3)=2, a(n+3) = 3 + a(n), for all positive integers n.

The programs for A130509, the canonical program `A130509.P5651380681434820859` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130509 has offset 1).

The definition of A130509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130509.P5651380681434820859

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130509

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5651380681434820859.Spec : Prop :=
  ∀ n, P5651380681434820859.a n = A130509 (n + 1)

theorem P5651380681434820859.correct : P5651380681434820859.Spec := by
  intro n
  simp only [A130509, Nat.add_sub_cancel]

end A130509

/-! ## A130509.P6021451321283436109

`C(gcd(3, n), 2)+n`
-/

namespace A130509.P6021451321283436109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 3 n) 2 + n

end

end A130509.P6021451321283436109

namespace A130509

/-- `C(gcd(3, n), 2)+n` -/
def P6021451321283436109.Spec : Prop :=
  ∀ n, (P6021451321283436109.a n : ℤ) = A130509 (n + 1)

end A130509

/-! ## A130509.P6998652695073709792

`3*char[3*n]+n`
-/

namespace A130509.P6998652695073709792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f1 j = n then 1 else 0) + n

end

end A130509.P6998652695073709792

namespace A130509

/-- `3*char[3*n]+n` -/
def P6998652695073709792.Spec : Prop :=
  ∀ n, (P6998652695073709792.a n : ℤ) = A130509 (n + 1)

end A130509

/-! ## A130509.P11748924635875835400

`abs(a(n-3)+3)` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A130509.P11748924635875835400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  a (n - 3) + 3

end

end A130509.P11748924635875835400

namespace A130509

/-- `abs(a(n-3)+3)` -/
def P11748924635875835400.Spec : Prop :=
  ∀ n, (P11748924635875835400.a n : ℤ) = A130509 (n + 1)

end A130509

/-! ## A130509.P10628773242120456942

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=-2, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A130509.P10628773242120456942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130509.P10628773242120456942

namespace A130509

/-- `∑[floor(a(n-3))]` -/
def P10628773242120456942.Spec : Prop :=
  ∀ n, P10628773242120456942.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P15273489474172050199

`lcm(3, n+3)%(2*n+9)`
-/

namespace A130509.P15273489474172050199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 3) % (2 * n + 9)

end

end A130509.P15273489474172050199

namespace A130509

/-- `lcm(3, n+3)%(2*n+9)` -/
def P15273489474172050199.Spec : Prop :=
  ∀ n, (P15273489474172050199.a n : ℤ) = A130509 (n + 1)

end A130509

/-! ## A130509.P18208482570523906755

`∑[4/(2-a(n-1))]` with `a(0)=3, a(1)=-2`
-/

namespace A130509.P18208482570523906755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, -2] fun n f1 =>
  4 / (2 - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130509.P18208482570523906755

namespace A130509

/-- `∑[4/(2-a(n-1))]` -/
def P18208482570523906755.Spec : Prop :=
  ∀ n, P18208482570523906755.a n = (A130509 (n + 1) : ℚ)

end A130509

/-! ## A130509.P17605045806599308665

`A113655(A064429(n)+1)`
-/

namespace A130509.P17605045806599308665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A064429 n + 1).toNat

end

end A130509.P17605045806599308665

namespace A130509

/-- `A113655(A064429(n)+1)` -/
def P17605045806599308665.Spec : Prop :=
  ∀ n, P17605045806599308665.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P10694223377833723167

`A113655(A080782(n+1))`
-/

namespace A130509.P10694223377833723167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A080782 (n + 1)).toNat

end

end A130509.P10694223377833723167

namespace A130509

/-- `A113655(A080782(n+1))` -/
def P10694223377833723167.Spec : Prop :=
  ∀ n, P10694223377833723167.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P14059189585661265579

`Δ[A080425(n)+∑[n]]`
-/

namespace A130509.P14059189585661265579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130509.P14059189585661265579

namespace A130509

/-- `Δ[A080425(n)+∑[n]]` -/
def P14059189585661265579.Spec : Prop :=
  ∀ n, P14059189585661265579.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P10444072278535479135

`Δ[A130784(n)+∑[n]]`
-/

namespace A130509.P10444072278535479135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130509.P10444072278535479135

namespace A130509

/-- `Δ[A130784(n)+∑[n]]` -/
def P10444072278535479135.Spec : Prop :=
  ∀ n, P10444072278535479135.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P11454014178848836202

`Δ[∑[n]-A049347(n)]`
-/

namespace A130509.P11454014178848836202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130509.P11454014178848836202

namespace A130509

/-- `Δ[∑[n]-A049347(n)]` -/
def P11454014178848836202.Spec : Prop :=
  ∀ n, P11454014178848836202.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P4819443256665249364

`A080782(A064429(n+1))`
-/

namespace A130509.P4819443256665249364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A064429 (n + 1)).toNat

end

end A130509.P4819443256665249364

namespace A130509

/-- `A080782(A064429(n+1))` -/
def P4819443256665249364.Spec : Prop :=
  ∀ n, P4819443256665249364.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P17472540119143481926

`A130508(A130508(n+1))`
-/

namespace A130509.P17472540119143481926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (A130508 (n + 1)).toNat

end

end A130509.P17472540119143481926

namespace A130509

/-- `A130508(A130508(n+1))` -/
def P17472540119143481926.Spec : Prop :=
  ∀ n, P17472540119143481926.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P1231118430873602633

`A064429(A330396(n)+1)`
-/

namespace A130509.P1231118430873602633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A330396 n + 1).toNat

end

end A130509.P1231118430873602633

namespace A130509

/-- `A064429(A330396(n)+1)` -/
def P1231118430873602633.Spec : Prop :=
  ∀ n, P1231118430873602633.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P12780706914765194605

`A064429(A074066(n+2)-1)`
-/

namespace A130509.P12780706914765194605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A074066 (n + 2) - 1).toNat

end

end A130509.P12780706914765194605

namespace A130509

/-- `A064429(A074066(n+2)-1)` -/
def P12780706914765194605.Spec : Prop :=
  ∀ n, P12780706914765194605.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P2795130347263183663

`A080782(A080782(n+2)-1)`
-/

namespace A130509.P2795130347263183663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A080782 (n + 2) - 1).toNat

end

end A130509.P2795130347263183663

namespace A130509

/-- `A080782(A080782(n+2)-1)` -/
def P2795130347263183663.Spec : Prop :=
  ∀ n, P2795130347263183663.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P15476799621166758961

`A113655(A236348(n+2)-1)`
-/

namespace A130509.P15476799621166758961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A236348 (n + 2) - 1).toNat

end

end A130509.P15476799621166758961

namespace A130509

/-- `A113655(A236348(n+2)-1)` -/
def P15476799621166758961.Spec : Prop :=
  ∀ n, P15476799621166758961.a n = A130509 (n + 1)

end A130509

/-! ## A130509.P3135074235552438472

`A113655(A049347(n+2)+n+1)`
-/

namespace A130509.P3135074235552438472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A049347 (n + 2) + (n + 1 : ℤ)).toNat

end

end A130509.P3135074235552438472

namespace A130509

/-- `A113655(A049347(n+2)+n+1)` -/
def P3135074235552438472.Spec : Prop :=
  ∀ n, P3135074235552438472.a n = A130509 (n + 1)

end A130509

/-!
# A130510: ABC conjecture: values of c in the list of "abc-hits".

The programs for A130510, there is no canonical definition to state claims against.
-/

/-! ## A130510.P50418408834184076

`A225426(3*(n+1))`
-/

namespace A130510.P50418408834184076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225426 (3 * (n + 1))

end

end A130510.P50418408834184076

/-! ## A130510.P14103361305094475889

`A225426(A016789(n))+A130511(n+1)`
-/

namespace A130510.P14103361305094475889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225426 (A016789 n).toNat + A130511 (n + 1)

end

end A130510.P14103361305094475889

/-! ## A130510.P16208943240459617036

`A225426(A008486(n+1))%A086059(n+1)`
-/

namespace A130510.P16208943240459617036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225426 (A008486 (n + 1)).toNat) (A086059 (n + 1))

end

end A130510.P16208943240459617036

/-! ## A130510.P17675904688452057644

`A225426(A001651(n+1+n)+2)%A086059(n+1)`
-/

namespace A130510.P17675904688452057644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225426 (A001651 (n + 1 + n) + 2).toNat) (A086059 (n + 1))

end

end A130510.P17675904688452057644

/-! ## A130510.P16731358393037794181

`A225426(A016777(n))+A225426(A016789(n))`
-/

namespace A130510.P16731358393037794181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225426 (A016777 n).toNat + A225426 (A016789 n).toNat

end

end A130510.P16731358393037794181

/-!
# A130511: ABC conjecture: values of a in the list of "abc-hits".

The programs for A130511, there is no canonical definition to state claims against.
-/

/-! ## A130511.P17065670040488804274

`A225426(3*n+1)`
-/

namespace A130511.P17065670040488804274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225426 (3 * n + 1)

end

end A130511.P17065670040488804274

/-! ## A130511.P2940667414971345184

`or(char[1], A225426(A016777(n)))`
-/

namespace A130511.P2940667414971345184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A225426 (A016777 n).toNat)

end

end A130511.P2940667414971345184

/-! ## A130511.P5717284227746884809

`A225426(A016777(n))+A000007(n+1)`
-/

namespace A130511.P5717284227746884809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225426 (A016777 n).toNat + A000007 (n + 1)

end

end A130511.P5717284227746884809

/-! ## A130511.P11989863043734315339

`A130510(n+1)-A225426(A016789(n))`
-/

namespace A130511.P11989863043734315339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130510 (n + 1) - A225426 (A016789 n).toNat

end

end A130511.P11989863043734315339

/-! ## A130511.P16723759117031808986

`A225426(A016777(n))%A162423(n+1)`
-/

namespace A130511.P16723759117031808986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225426 (A016777 n).toNat) (A162423 (n + 1))

end

end A130511.P16723759117031808986

/-! ## A130511.P17442414556081629582

`A056594(2*n)²*A225426(A016777(n))`
-/

namespace A130511.P17442414556081629582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * A225426 (A016777 n).toNat

end

end A130511.P17442414556081629582

/-! ## A130511.P16715881421442460197

`A225426(A016777(n))/A045778(A135681(n+1))`
-/

namespace A130511.P16715881421442460197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225426 (A016777 n).toNat : ℚ) / (A045778 (A135681 (n + 1)).toNat : ℚ)

end

end A130511.P16715881421442460197

/-! ## A130511.P1640655030424913417

`A048004(∑[n])*A225426(A016777(n))`
-/

namespace A130511.P1640655030424913417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (∑ j ∈ Finset.range (n + 1), f1 j) * A225426 (A016777 n).toNat

end

end A130511.P1640655030424913417

/-!
# A130513: Subtriangle of triangle in A051168: remove central column of A051168 and all columns to the right; now read by upwards diagonals.

The programs for A130513, there is no canonical definition to state claims against.
-/

/-! ## A130513.P14361178858570523444

`A298941(A140303(n)*A140513(n))`
-/

namespace A130513.P14361178858570523444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A140303 n * A140513 n).toNat

end

end A130513.P14361178858570523444

/-! ## A130513.P827994894104950709

`A298941(lcm(A140303(n), A140513(n)))`
-/

namespace A130513.P827994894104950709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (Int.lcm (A140303 n) (A140513 n))

end

end A130513.P827994894104950709

/-! ## A130513.P9728787185817062760

`A319951(A081114(A000007(n)+n))`
-/

namespace A130513.P9728787185817062760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A081114 (A000007 n + (n : ℤ)).toNat).toNat

end

end A130513.P9728787185817062760

/-! ## A130513.P4430285202464330201

`A319951(A081114(n)+A000038(n))`
-/

namespace A130513.P4430285202464330201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A081114 n + A000038 n).toNat

end

end A130513.P4430285202464330201

/-! ## A130513.P3345899562313404348

`A319951(A081114(A010894(n)+n))`
-/

namespace A130513.P3345899562313404348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A081114 (A010894 (n + 21) + (n : ℤ)).toNat).toNat

end

end A130513.P3345899562313404348

/-!
# A130514: To compute the next term, add to n the number t, where t is the number of [last digit of n]'s used so far in the sequence.

The programs for A130514, there is no canonical definition to state claims against.
-/

/-! ## A130514.P6365237267752259672

`lt[-A129356(n), A244631(n)]`
-/

namespace A130514.P6365237267752259672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130514.P6365237267752259672

/-! ## A130514.P16322670580033594599

`lt[-A323328(n+1), A129356(n)]`
-/

namespace A130514.P16322670580033594599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A323328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130514.P16322670580033594599

/-! ## A130514.P2187890204152897984

`lt[-A377047(n+2), A005995(n)]`
-/

namespace A130514.P2187890204152897984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A377047 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130514.P2187890204152897984

/-! ## A130514.P12680843897245256238

`lt[-A033585(3*n), A129356(n)]`
-/

namespace A130514.P12680843897245256238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033585 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130514.P12680843897245256238

/-! ## A130514.P5413821385129986664

`lt[A103640(n), ∑[A377047(n+2)]]`
-/

namespace A130514.P5413821385129986664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103640 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377047 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130514.P5413821385129986664

/-!
# A130517: Triangle read by rows: row n counts down from n in steps of 2, then counts up the remaining elements in the set {1,2,...,n}, again in steps of 2.

The programs for A130517, the canonical program `A130517.P17548095738158104865` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130517 has offset 1).

The definition of A130517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130517.P8080888476088830058

`A162630(n+1)/2`
-/

namespace A130517.P8080888476088830058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162630 (n + 1) : ℚ) / 2

end

end A130517.P8080888476088830058

namespace A130517

/-- `A162630(n+1)/2` -/
def P8080888476088830058.Spec : Prop :=
  ∀ n, P8080888476088830058.a n = (A130517 (n + 1) : ℚ)

end A130517

/-! ## A130517.P12381728086543609886

`floor(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))+1`
-/

namespace A130517.P12381728086543609886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ) : ℝ) + Real.eulerMascheroniConstant|⌋ + 1

end

end A130517.P12381728086543609886

namespace A130517

/-- `floor(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))+1` -/
def P12381728086543609886.Spec : Prop :=
  ∀ n, P12381728086543609886.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P17548095738158104865

`abs(A056951(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A130517

/-- `abs(A056951(n+1))` -/
def P17548095738158104865.Spec : Prop :=
  ∀ n, P17548095738158104865.a n = A130517 (n + 1)

theorem P17548095738158104865.correct : P17548095738158104865.Spec := by
  intro n
  simp only [A130517, Nat.add_sub_cancel]

end A130517

/-! ## A130517.P16753938417777419048

`A014430(A335262(n))`
-/

namespace A130517.P16753938417777419048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A335262 n).toNat

end

end A130517.P16753938417777419048

namespace A130517

/-- `A014430(A335262(n))` -/
def P16753938417777419048.Spec : Prop :=
  ∀ n, P16753938417777419048.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P17386228686980577733

`A002260(A064789(n+1))`
-/

namespace A130517.P17386228686980577733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A064789 (n + 1)).toNat

end

end A130517.P17386228686980577733

namespace A130517

/-- `A002260(A064789(n+1))` -/
def P17386228686980577733.Spec : Prop :=
  ∀ n, P17386228686980577733.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P5365276110627378763

`A001281(A162630(n+1))`
-/

namespace A130517.P5365276110627378763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A162630 (n + 1)).toNat

end

end A130517.P5365276110627378763

namespace A130517

/-- `A001281(A162630(n+1))` -/
def P5365276110627378763.Spec : Prop :=
  ∀ n, P5365276110627378763.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P11198244224397461402

`A028310(A187760(n+1)-1)`
-/

namespace A130517.P11198244224397461402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A187760 (n + 1) - 1).toNat

end

end A130517.P11198244224397461402

namespace A130517

/-- `A028310(A187760(n+1)-1)` -/
def P11198244224397461402.Spec : Prop :=
  ∀ n, P11198244224397461402.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P2945937108345819726

`A064455(A162630(n+1)-1)`
-/

namespace A130517.P2945937108345819726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A162630 (n + 1) - 1).toNat

end

end A130517.P2945937108345819726

namespace A130517

/-- `A064455(A162630(n+1)-1)` -/
def P2945937108345819726.Spec : Prop :=
  ∀ n, P2945937108345819726.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P11808825960979110045

`gcd(A000038(n), A056951(n+1))`
-/

namespace A130517.P11808825960979110045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A056951 (n + 1))

end

end A130517.P11808825960979110045

namespace A130517

/-- `gcd(A000038(n), A056951(n+1))` -/
def P11808825960979110045.Spec : Prop :=
  ∀ n, (P11808825960979110045.a n : ℤ) = A130517 (n + 1)

end A130517

/-! ## A130517.P7560998741774276532

`lcm(A020985(n), A056951(n+1))`
-/

namespace A130517.P7560998741774276532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A056951 (n + 1))

end

end A130517.P7560998741774276532

namespace A130517

/-- `lcm(A020985(n), A056951(n+1))` -/
def P7560998741774276532.Spec : Prop :=
  ∀ n, (P7560998741774276532.a n : ℤ) = A130517 (n + 1)

end A130517

/-! ## A130517.P3350061564111111096

`A004736(A064578(n+1))`
-/

namespace A130517.P3350061564111111096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A064578 (n + 1)).toNat

end

end A130517.P3350061564111111096

namespace A130517

/-- `A004736(A064578(n+1))` -/
def P3350061564111111096.Spec : Prop :=
  ∀ n, P3350061564111111096.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P13603334258176793516

`A220073(A038722(n+1))`
-/

namespace A130517.P13603334258176793516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (A038722 (n + 1)).toNat

end

end A130517.P13603334258176793516

namespace A130517

/-- `A220073(A038722(n+1))` -/
def P13603334258176793516.Spec : Prop :=
  ∀ n, P13603334258176793516.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P5091247423091883186

`A220073(comp[∑[n]])`
-/

namespace A130517.P5091247423091883186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A130517.P5091247423091883186

namespace A130517

/-- `A220073(comp[∑[n]])` -/
def P5091247423091883186.Spec : Prop :=
  ∀ n, P5091247423091883186.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P16930826549037227426

`A004739(A060734(n+1))`
-/

namespace A130517.P16930826549037227426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A060734 (n + 1)).toNat

end

end A130517.P16930826549037227426

namespace A130517

/-- `A004739(A060734(n+1))` -/
def P16930826549037227426.Spec : Prop :=
  ∀ n, P16930826549037227426.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P6786041333793715558

`A004737(Δ[n²])`
-/

namespace A130517.P6786041333793715558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A130517.P6786041333793715558

namespace A130517

/-- `A004737(Δ[n²])` -/
def P6786041333793715558.Spec : Prop :=
  ∀ n, P6786041333793715558.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P13626367344883970080

`sqrt(sqrt(A133824(2*n)))`
-/

namespace A130517.P13626367344883970080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A133824 (2 * n) : ℝ))

end

end A130517.P13626367344883970080

namespace A130517

/-- `sqrt(sqrt(A133824(2*n)))` -/
def P13626367344883970080.Spec : Prop :=
  ∀ n, P13626367344883970080.a n = (A130517 (n + 1) : ℝ)

end A130517

/-! ## A130517.P7495970368854799981

`sqrt(A124258(2*n+1))`
-/

namespace A130517.P7495970368854799981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A124258 (2 * n + 1) : ℝ)

end

end A130517.P7495970368854799981

namespace A130517

/-- `sqrt(A124258(2*n+1))` -/
def P7495970368854799981.Spec : Prop :=
  ∀ n, P7495970368854799981.a n = (A130517 (n + 1) : ℝ)

end A130517

/-! ## A130517.P466510921469442124

`or(char[2], A004737(2*n+1))`
-/

namespace A130517.P466510921469442124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004737 (2 * n + 1))

end

end A130517.P466510921469442124

namespace A130517

/-- `or(char[2], A004737(2*n+1))` -/
def P466510921469442124.Spec : Prop :=
  ∀ n, P466510921469442124.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P10635672028204652512

`A002024(A133825(2*n))`
-/

namespace A130517.P10635672028204652512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A133825 (2 * n)).toNat

end

end A130517.P10635672028204652512

namespace A130517

/-- `A002024(A133825(2*n))` -/
def P10635672028204652512.Spec : Prop :=
  ∀ n, P10635672028204652512.a n = A130517 (n + 1)

end A130517

/-! ## A130517.P14670912322690274853

`A000027(A004737(2*n+1))`
-/

namespace A130517.P14670912322690274853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A004737 (2 * n + 1)).toNat

end

end A130517.P14670912322690274853

namespace A130517

/-- `A000027(A004737(2*n+1))` -/
def P14670912322690274853.Spec : Prop :=
  ∀ n, P14670912322690274853.a n = A130517 (n + 1)

end A130517

/-!
# A130518: 

The programs for A130518, there is no canonical definition to state claims against.
-/

/-! ## A130518.P6684389670073300564

`floor(C(n, 2)/3)`
-/

namespace A130518.P6684389670073300564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 3⌋

end

end A130518.P6684389670073300564

/-! ## A130518.P9622612208580930512

`round(n*(n-1)/6)`
-/

namespace A130518.P9622612208580930512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 6))

end

end A130518.P9622612208580930512

/-! ## A130518.P5508822963262175165

`n-2+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A130518.P5508822963262175165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (n : ℤ) - 2 + a (n - 3)

end

end A130518.P5508822963262175165

/-! ## A130518.P2489367920497252413

`A062781(n+1)`
-/

namespace A130518.P2489367920497252413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062781 (n + 1)

end

end A130518.P2489367920497252413

/-! ## A130518.P8632575899810060380

`ceil((C(n, 2)-1)/3)`
-/

namespace A130518.P8632575899810060380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 2 : ℤ) - 1 : ℚ) / 3⌉

end

end A130518.P8632575899810060380

/-! ## A130518.P7884137165510005063

`floor(lcm(n, n-1)/6)`
-/

namespace A130518.P7884137165510005063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 6⌋

end

end A130518.P7884137165510005063

/-! ## A130518.P5697245677355800961

`∑[n-n%3]/3`
-/

namespace A130518.P5697245677355800961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A130518.P5697245677355800961

/-! ## A130518.P2671243633567367161

`∑[comp[or(3, n)]]-∑[n]`
-/

namespace A130518.P2671243633567367161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A130518.P2671243633567367161

/-! ## A130518.P1437810376095107052

`floor(n/(6*acot(n-1)))`
-/

namespace A130518.P1437810376095107052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (6 * SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ))⌋

end

end A130518.P1437810376095107052

/-! ## A130518.P11877579141917277893

`floor(a(n-1)+n/3)` with `a(0)=0`
-/

namespace A130518.P11877579141917277893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 3⌋

end

end A130518.P11877579141917277893

/-! ## A130518.P11240972433209735936

`n-(2-a(n-3))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A130518.P11240972433209735936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (n : ℤ) - (2 - a (n - 3))

end

end A130518.P11240972433209735936

/-! ## A130518.P4911847328512925204

`∑[∑[gcd(3, n)]-(n+3)]/2`
-/

namespace A130518.P4911847328512925204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A130518.P4911847328512925204

/-! ## A130518.P3887746848091935073

`∑[∑[1-n²%3]]-(n+1)`
-/

namespace A130518.P3887746848091935073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A130518.P3887746848091935073

/-! ## A130518.P2384934686507866341

`∑[∑[∑[n+1]%3]]-(n+1)`
-/

namespace A130518.P2384934686507866341
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A130518.P2384934686507866341

/-! ## A130518.P6824105791978547721

`∑[comp[4*n]+n]%(n+1)²`
-/

namespace A130518.P6824105791978547721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 2

end

end A130518.P6824105791978547721

/-! ## A130518.P519896085946894460

`∑[A002264(n)]`
-/

namespace A130518.P519896085946894460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130518.P519896085946894460

/-! ## A130518.P14817437127917019286

`∑[sqrt(A211547(n))]`
-/

namespace A130518.P14817437127917019286
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A211547 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130518.P14817437127917019286

/-! ## A130518.P4463454712724048662

`floor(A161680(n)/3)`
-/

namespace A130518.P4463454712724048662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161680 n : ℚ) / 3⌋

end

end A130518.P4463454712724048662

/-! ## A130518.P17025069348239282979

`floor(A103505(n)/6)`
-/

namespace A130518.P17025069348239282979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103505 n : ℚ) / 6⌋

end

end A130518.P17025069348239282979

/-! ## A130518.P15008899734491793817

`∑[A008620(n)-1]`
-/

namespace A130518.P15008899734491793817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130518.P15008899734491793817

/-!
# A130519: a(n) = Sum_{k=0..n} floor(k/4). (Partial sums of A002265.)

The programs for A130519, the canonical program `A130519.P16536430060004457997` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130519 has offset 0).

The definition of A130519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130519.P16536430060004457997

`floor((n-1)²/8)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130519

/-- `floor((n-1)²/8)` -/
def P16536430060004457997.Spec : Prop :=
  ∀ n, P16536430060004457997.a n = A130519 n

theorem P16536430060004457997.correct : P16536430060004457997.Spec := by
  intro n
  simp only [A130519]

end A130519

/-! ## A130519.P15103291529662407289

`a(n-4)+n-3` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A130519.P15103291529662407289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  a (n - 4) + ((n : ℤ) - 3)

end

end A130519.P15103291529662407289

namespace A130519

/-- `a(n-4)+n-3` -/
def P15103291529662407289.Spec : Prop :=
  ∀ n, P15103291529662407289.a n = A130519 n

end A130519

/-! ## A130519.P8121437580166146360

`∑[and(n, -4)]/4`
-/

namespace A130519.P8121437580166146360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A130519.P8121437580166146360

namespace A130519

/-- `∑[and(n, -4)]/4` -/
def P8121437580166146360.Spec : Prop :=
  ∀ n, P8121437580166146360.a n = (A130519 n : ℚ)

end A130519

/-! ## A130519.P2431415055695336041

`∑[or(3, n)-3]/4`
-/

namespace A130519.P2431415055695336041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A130519.P2431415055695336041

namespace A130519

/-- `∑[or(3, n)-3]/4` -/
def P2431415055695336041.Spec : Prop :=
  ∀ n, P2431415055695336041.a n = (A130519 n : ℚ)

end A130519

/-! ## A130519.P9885007400115416777

`∑[n-and(3, n)]/4`
-/

namespace A130519.P9885007400115416777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 3 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A130519.P9885007400115416777

namespace A130519

/-- `∑[n-and(3, n)]/4` -/
def P9885007400115416777.Spec : Prop :=
  ∀ n, P9885007400115416777.a n = (A130519 n : ℚ)

end A130519

/-! ## A130519.P7047867984183738470

`and(-6, (1-n)²)/8`
-/

namespace A130519.P7047867984183738470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-6) ((1 - (n : ℤ)) ^ 2) : ℚ) / 8

end

end A130519.P7047867984183738470

namespace A130519

/-- `and(-6, (1-n)²)/8` -/
def P7047867984183738470.Spec : Prop :=
  ∀ n, P7047867984183738470.a n = (A130519 n : ℚ)

end A130519

/-! ## A130519.P14449688235583658961

`round((n-2)/(8*acot(n)))`
-/

namespace A130519.P14449688235583658961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℝ) / (8 * SequenceMachineLib.acot (n : ℝ)))

end

end A130519.P14449688235583658961

namespace A130519

/-- `round((n-2)/(8*acot(n)))` -/
def P14449688235583658961.Spec : Prop :=
  ∀ n, P14449688235583658961.a n = A130519 n

end A130519

/-! ## A130519.P8667026121352851047

`n-(3-a(n-4))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A130519.P8667026121352851047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  (n : ℤ) - (3 - a (n - 4))

end

end A130519.P8667026121352851047

namespace A130519

/-- `n-(3-a(n-4))` -/
def P8667026121352851047.Spec : Prop :=
  ∀ n, P8667026121352851047.a n = A130519 n

end A130519

/-! ## A130519.P1568540769395480493

`∑[A002265(n)]`
-/

namespace A130519.P1568540769395480493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130519.P1568540769395480493

namespace A130519

/-- `∑[A002265(n)]` -/
def P1568540769395480493.Spec : Prop :=
  ∀ n, P1568540769395480493.a n = A130519 n

end A130519

/-! ## A130519.P4669946514228430953

`∑[sqrt(A295643(n))]`
-/

namespace A130519.P4669946514228430953
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295643 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130519.P4669946514228430953

namespace A130519

/-- `∑[sqrt(A295643(n))]` -/
def P4669946514228430953.Spec : Prop :=
  ∀ n, P4669946514228430953.a n = (A130519 n : ℝ)

end A130519

/-! ## A130519.P7811033259407884372

`∑[A008621(n)-1]`
-/

namespace A130519.P7811033259407884372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130519.P7811033259407884372

namespace A130519

/-- `∑[A008621(n)-1]` -/
def P7811033259407884372.Spec : Prop :=
  ∀ n, P7811033259407884372.a n = A130519 n

end A130519

/-! ## A130519.P13178900429503069347

`∑[A122461(n)/2]`
-/

namespace A130519.P13178900429503069347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122461 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130519.P13178900429503069347

namespace A130519

/-- `∑[A122461(n)/2]` -/
def P13178900429503069347.Spec : Prop :=
  ∀ n, P13178900429503069347.a n = (A130519 n : ℚ)

end A130519

/-! ## A130519.P13232034308296872706

`∑[A001068(n)-n]`
-/

namespace A130519.P13232034308296872706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130519.P13232034308296872706

namespace A130519

/-- `∑[A001068(n)-n]` -/
def P13232034308296872706.Spec : Prop :=
  ∀ n, P13232034308296872706.a n = A130519 n

end A130519

/-! ## A130519.P2623837644030683468

`A001972(n)-(n+1)`
-/

namespace A130519.P2623837644030683468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n - (n + 1 : ℤ)

end

end A130519.P2623837644030683468

namespace A130519

/-- `A001972(n)-(n+1)` -/
def P2623837644030683468.Spec : Prop :=
  ∀ n, P2623837644030683468.a n = A130519 n

end A130519

/-! ## A130519.P15828880089447655528

`(A302488(n)-n)/2`
-/

namespace A130519.P15828880089447655528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302488 n - (n : ℤ) : ℚ) / 2

end

end A130519.P15828880089447655528

namespace A130519

/-- `(A302488(n)-n)/2` -/
def P15828880089447655528.Spec : Prop :=
  ∀ n, P15828880089447655528.a n = (A130519 n : ℚ)

end A130519

/-! ## A130519.P15191642259614628557

`∑[A173562(n)-n²]`
-/

namespace A130519.P15191642259614628557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173562 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130519.P15191642259614628557

namespace A130519

/-- `∑[A173562(n)-n²]` -/
def P15191642259614628557.Spec : Prop :=
  ∀ n, P15191642259614628557.a n = A130519 n

end A130519

/-!
# A130520: a(n) = Sum_{k=0..n} floor(k/5). (Partial sums of A002266.)

The programs for A130520, the canonical program `A130520.P5043744750705606164` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130520 has offset 0).

The definition of A130520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130520.P5043744750705606164

`round(n*(n-3)/10)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130520

/-- `round(n*(n-3)/10)` -/
def P5043744750705606164.Spec : Prop :=
  ∀ n, P5043744750705606164.a n = A130520 n

theorem P5043744750705606164.correct : P5043744750705606164.Spec := by
  intro n
  simp only [A130520]

end A130520

/-! ## A130520.P11236855907049889312

`a(n-5)+n-4` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A130520.P11236855907049889312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0] fun n a =>
  a (n - 5) + ((n : ℤ) - 4)

end

end A130520.P11236855907049889312

namespace A130520

/-- `a(n-5)+n-4` -/
def P11236855907049889312.Spec : Prop :=
  ∀ n, P11236855907049889312.a n = A130520 n

end A130520

/-! ## A130520.P16019836070518343760

`floor((C(n, 2)+1-n)/5)`
-/

namespace A130520.P16019836070518343760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose n 2 + 1 : ℤ) - (n : ℤ) : ℚ) / 5⌋

end

end A130520.P16019836070518343760

namespace A130520

/-- `floor((C(n, 2)+1-n)/5)` -/
def P16019836070518343760.Spec : Prop :=
  ∀ n, P16019836070518343760.a n = A130520 n

end A130520

/-! ## A130520.P6977418841387642322

`floor((C(n, 2)-(n-1))/5)`
-/

namespace A130520.P6977418841387642322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose n 2 : ℤ) - ((n : ℤ) - 1) : ℚ) / 5⌋

end

end A130520.P6977418841387642322

namespace A130520

/-- `floor((C(n, 2)-(n-1))/5)` -/
def P6977418841387642322.Spec : Prop :=
  ∀ n, P6977418841387642322.a n = A130520 n

end A130520

/-! ## A130520.P13344774718129468072

`ceil((C(n, 2)-(n+2))/5)`
-/

namespace A130520.P13344774718129468072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 2 : ℤ) - (n + 2 : ℤ) : ℚ) / 5⌉

end

end A130520.P13344774718129468072

namespace A130520

/-- `ceil((C(n, 2)-(n+2))/5)` -/
def P13344774718129468072.Spec : Prop :=
  ∀ n, P13344774718129468072.a n = A130520 n

end A130520

/-! ## A130520.P11421426310746509762

`floor(lcm(n-1, n-2)/10)`
-/

namespace A130520.P11421426310746509762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 2) : ℚ) / 10⌋

end

end A130520.P11421426310746509762

namespace A130520

/-- `floor(lcm(n-1, n-2)/10)` -/
def P11421426310746509762.Spec : Prop :=
  ∀ n, P11421426310746509762.a n = A130520 n

end A130520

/-! ## A130520.P6101913236073885860

`floor(a(n-1)+n/5)` with `a(0)=0`
-/

namespace A130520.P6101913236073885860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 5⌋

end

end A130520.P6101913236073885860

namespace A130520

/-- `floor(a(n-1)+n/5)` -/
def P6101913236073885860.Spec : Prop :=
  ∀ n, P6101913236073885860.a n = A130520 n

end A130520

/-! ## A130520.P698309011355099912

`floor((n-1)/(10*acot(n-2)))`
-/

namespace A130520.P698309011355099912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / (10 * SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ))⌋

end

end A130520.P698309011355099912

namespace A130520

/-- `floor((n-1)/(10*acot(n-2)))` -/
def P698309011355099912.Spec : Prop :=
  ∀ n, P698309011355099912.a n = A130520 n

end A130520

/-! ## A130520.P7688582695529652418

`n-(4-a(n-5))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A130520.P7688582695529652418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0] fun n a =>
  (n : ℤ) - (4 - a (n - 5))

end

end A130520.P7688582695529652418

namespace A130520

/-- `n-(4-a(n-5))` -/
def P7688582695529652418.Spec : Prop :=
  ∀ n, P7688582695529652418.a n = A130520 n

end A130520

/-! ## A130520.P9583964689203355489

`∑[A002266(n)]`
-/

namespace A130520.P9583964689203355489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130520.P9583964689203355489

namespace A130520

/-- `∑[A002266(n)]` -/
def P9583964689203355489.Spec : Prop :=
  ∀ n, P9583964689203355489.a n = A130520 n

end A130520

/-! ## A130520.P17027640974174338069

`∑[A130496(n)/2]`
-/

namespace A130520.P17027640974174338069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130496 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130520.P17027640974174338069

namespace A130520

/-- `∑[A130496(n)/2]` -/
def P17027640974174338069.Spec : Prop :=
  ∀ n, P17027640974174338069.a n = (A130520 n : ℚ)

end A130520

/-! ## A130520.P14157912663893362371

`A008732(n)-(n+1)`
-/

namespace A130520.P14157912663893362371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 n - (n + 1 : ℤ)

end

end A130520.P14157912663893362371

namespace A130520

/-- `A008732(n)-(n+1)` -/
def P14157912663893362371.Spec : Prop :=
  ∀ n, P14157912663893362371.a n = A130520 n

end A130520

/-! ## A130520.P5623097447931543188

`floor((A008812(n)-n)/2)`
-/

namespace A130520.P5623097447931543188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008812 n - (n : ℤ) : ℚ) / 2⌋

end

end A130520.P5623097447931543188

namespace A130520

/-- `floor((A008812(n)-n)/2)` -/
def P5623097447931543188.Spec : Prop :=
  ∀ n, P5623097447931543188.a n = A130520 n

end A130520

/-! ## A130520.P16375862450848088141

`∑[n]-A033437(n+1)`
-/

namespace A130520.P16375862450848088141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033437 (n + 1)

end

end A130520.P16375862450848088141

namespace A130520

/-- `∑[n]-A033437(n+1)` -/
def P16375862450848088141.Spec : Prop :=
  ∀ n, P16375862450848088141.a n = A130520 n

end A130520

/-! ## A130520.P16245927814154025081

`∑[A047226(n+1)-n]`
-/

namespace A130520.P16245927814154025081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130520.P16245927814154025081

namespace A130520

/-- `∑[A047226(n+1)-n]` -/
def P16245927814154025081.Spec : Prop :=
  ∀ n, P16245927814154025081.a n = A130520 n

end A130520

/-! ## A130520.P15030060957207429693

`∑[n-A090223(n+1)]`
-/

namespace A130520.P15030060957207429693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A090223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130520.P15030060957207429693

namespace A130520

/-- `∑[n-A090223(n+1)]` -/
def P15030060957207429693.Spec : Prop :=
  ∀ n, P15030060957207429693.a n = A130520 n

end A130520

/-! ## A130520.P6461190755731353116

`A008812(n)-A008732(n)`
-/

namespace A130520.P6461190755731353116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008812 n - A008732 n

end

end A130520.P6461190755731353116

namespace A130520

/-- `A008812(n)-A008732(n)` -/
def P6461190755731353116.Spec : Prop :=
  ∀ n, P6461190755731353116.a n = A130520 n

end A130520

/-! ## A130520.P3451439417220917877

`A117450(n)-A249020(n)`
-/

namespace A130520.P3451439417220917877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117450 n - A249020 n

end

end A130520.P3451439417220917877

namespace A130520

/-- `A117450(n)-A249020(n)` -/
def P3451439417220917877.Spec : Prop :=
  ∀ n, P3451439417220917877.a n = A130520 n

end A130520

/-! ## A130520.P3667971111069441764

`A398052(n)-A281151(n)`
-/

namespace A130520.P3667971111069441764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n - A281151 n

end

end A130520.P3667971111069441764

namespace A130520

/-- `A398052(n)-A281151(n)` -/
def P3667971111069441764.Spec : Prop :=
  ∀ n, P3667971111069441764.a n = A130520 n

end A130520

/-! ## A130520.P16258477172092910237

`∑[comp[A016969(n)]]-A000217(n)`
-/

namespace A130520.P16258477172092910237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 n

end

end A130520.P16258477172092910237

namespace A130520

/-- `∑[comp[A016969(n)]]-A000217(n)` -/
def P16258477172092910237.Spec : Prop :=
  ∀ n, P16258477172092910237.a n = A130520 n

end A130520

/-!
# A130522: Diagonal immediately below the main diagonal of triangle A130521.

The programs for A130522, there is no canonical definition to state claims against.
-/

/-! ## A130522.P1385883874760146560

`A127782(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A130522.P1385883874760146560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127782 (n + 2) - a (n - 1)

end

end A130522.P1385883874760146560

/-! ## A130522.P882716196497618161

`A130521(∑[n+2]-1)`
-/

namespace A130522.P882716196497618161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130521 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A130522.P882716196497618161

/-! ## A130522.P10065504270695546616

`A130521(A034856(n+1))+char[9]`
-/

namespace A130522.P10065504270695546616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130521 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130522.P10065504270695546616

/-! ## A130522.P4854690444728276567

`A130521(A034856(n+1))/A277090(n)`
-/

namespace A130522.P4854690444728276567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130521 (A034856 (n + 1)).toNat : ℚ) / (A277090 n : ℚ)

end

end A130522.P4854690444728276567

/-! ## A130522.P469607194414126202

`A130521(A034856(n+1))^A317624(n)`
-/

namespace A130522.P469607194414126202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130521 (A034856 (n + 1)).toNat : ℚ) ^ (A317624 n : ℤ)

end

end A130522.P469607194414126202

/-!
# A130523: Square array, read by antidiagonals, where row n+1 equals the partial sums of the previous row after removing the n-th term from row n for n>=0, with row 0 equal to all 1's.

The programs for A130523, there is no canonical definition to state claims against.
-/

/-! ## A130523.P13352268542900050967

`A302243(A299905(n))+A026725(n)`
-/

namespace A130523.P13352268542900050967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A299905 n).toNat + A026725 n

end

end A130523.P13352268542900050967

/-! ## A130523.P10633194511126196140

`A184159(A099594(n))+A026725(n)`
-/

namespace A130523.P10633194511126196140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (A099594 n).toNat + A026725 n

end

end A130523.P10633194511126196140

/-! ## A130523.P14913323702164336802

`A337101(A157156(n))+A026725(n)`
-/

namespace A130523.P14913323702164336802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A157156 n).toNat + A026725 n

end

end A130523.P14913323702164336802

/-! ## A130523.P14541390800373613990

`A360414(A026725(n)%A360399(3*n+5))`
-/

namespace A130523.P14541390800373613990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360414 (Int.tmod (A026725 n) (A360399 (3 * n + 5))).toNat

end

end A130523.P14541390800373613990

/-! ## A130523.P4578933136424065772

`A106161(A147564(n))`
-/

namespace A130523.P4578933136424065772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106161 (A147564 n).toNat

end

end A130523.P4578933136424065772

/-!
# A130524: Diagonal immediately below the main diagonal of square array A130523.

The programs for A130524, there is no canonical definition to state claims against.
-/

/-! ## A130524.P4078685058084911917

`A130523(2*(n+1)²-1)`
-/

namespace A130524.P4078685058084911917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130523 (2 * (n + 1) ^ 2 - 1)

end

end A130524.P4078685058084911917

/-! ## A130524.P15590467790591576839

`record[A130523(A130109(n+1))]`
-/

namespace A130524.P15590467790591576839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130523 (A130109 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130524.P15590467790591576839

/-!
# A130525: Diagonal immediately above the main diagonal of square array A130523.

The programs for A130525, there is no canonical definition to state claims against.
-/

/-! ## A130525.P443110882477808096

`A130523(2*(n+1)²)`
-/

namespace A130525.P443110882477808096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130523 (2 * (n + 1) ^ 2)

end

end A130525.P443110882477808096

/-! ## A130525.P14425850146677790384

`record[A130523(∑[A014682(n)])]`
-/

namespace A130525.P14425850146677790384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130523 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130525.P14425850146677790384

/-! ## A130525.P14895068555650416219

`record[A130523(A001105(∑{e}[n+1, #]+1))]`
-/

namespace A130525.P14895068555650416219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130523 (A001105 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130525.P14895068555650416219

/-!
# A130526: A permutation of the integers induced by the lower and upper Wythoff sequences.

The programs for A130526, there is no canonical definition to state claims against.
-/

/-! ## A130526.P6150873641721789086

`Δ[n*floor(n/ϕ)]-n`
-/

namespace A130526.P6150873641721789086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A130526.P6150873641721789086

/-! ## A130526.P12886610838843334655

`Δ[n*ceil(n/ϕ)-C(n+1, 2)]`
-/

namespace A130526.P12886610838843334655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉ - (Nat.choose (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130526.P12886610838843334655

/-! ## A130526.P11603700294717900212

`(Δ[n*ceil(n/ϕ)]-(n+1))%(n+1)`
-/

namespace A130526.P11603700294717900212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - (n + 1 : ℤ)) (n + 1 : ℤ)

end

end A130526.P11603700294717900212

/-! ## A130526.P7968002029069744684

`Δ[n/2*A060145(n)]`
-/

namespace A130526.P7968002029069744684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A060145 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130526.P7968002029069744684

/-! ## A130526.P12083229775735210817

`-xor(A002251(n)-(n+1), -1)`
-/

namespace A130526.P12083229775735210817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A002251 n - (n + 1 : ℤ)) (-1)

end

end A130526.P12083229775735210817

/-! ## A130526.P15925260079998405907

`Δ[n*ceil(n/ϕ)-A000124(n)]`
-/

namespace A130526.P15925260079998405907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉ - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130526.P15925260079998405907

/-! ## A130526.P17072544915608979960

`Δ[n*ceil(n/ϕ)-A000217(n)]`
-/

namespace A130526.P17072544915608979960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉ - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130526.P17072544915608979960

/-! ## A130526.P4297194177592631534

`Δ[A008619(n*A060145(n))]`
-/

namespace A130526.P4297194177592631534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A060145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130526.P4297194177592631534

/-! ## A130526.P4783220262593497242

`(A002251(n)-n)/A007318(C(2, n))`
-/

namespace A130526.P4783220262593497242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002251 n - (n : ℤ) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A130526.P4783220262593497242

/-! ## A130526.P16351296981256489009

`or(A002251(n)-n, floor(1/A000032(n)))`
-/

namespace A130526.P16351296981256489009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002251 n - (n : ℤ)) ⌊1 / (A000032 n : ℚ)⌋

end

end A130526.P16351296981256489009

/-!
# A130527: A permutation of the integers induced by the Beatty sequence for sqrt(2).

The programs for A130527, there is no canonical definition to state claims against.
-/

/-! ## A130527.P13743752749577119365

`Δ[n*floor(n/sqrt(2))]-n`
-/

namespace A130527.P13743752749577119365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A130527.P13743752749577119365

/-! ## A130527.P12685669812866937800

`Δ[n*A049474(n)-A000124(n)]`
-/

namespace A130527.P12685669812866937800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049474 n - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130527.P12685669812866937800

/-! ## A130527.P13212905266669810795

`Δ[n*A049474(n)-A000217(n)]`
-/

namespace A130527.P13212905266669810795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049474 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130527.P13212905266669810795

/-! ## A130527.P13915592010361034388

`(A001489(n)+Δ[n*A049472(n)])%A169739(n)`
-/

namespace A130527.P13915592010361034388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001489 n + (f1 (n + 1) - f1 n)) (A169739 n)

end

end A130527.P13915592010361034388

/-!
# A130529: Column 0 of triangle A130528.

The programs for A130529, there is no canonical definition to state claims against.
-/

/-! ## A130529.P9263612341535773094

`A130528(∑[n])`
-/

namespace A130529.P9263612341535773094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130528 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130529.P9263612341535773094

/-! ## A130529.P10148115224674449390

`A130528(A000217(n))+char[10]`
-/

namespace A130529.P10148115224674449390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130528 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130529.P10148115224674449390

/-! ## A130529.P14725802759214238027

`A165878(n)+A130528(A000217(n))`
-/

namespace A130529.P14725802759214238027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165878 n + A130528 (A000217 n).toNat

end

end A130529.P14725802759214238027

/-! ## A130529.P12074812808622413032

`A243830(n)+A130528(A000217(n))`
-/

namespace A130529.P12074812808622413032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243830 n + A130528 (A000217 n).toNat

end

end A130529.P12074812808622413032

/-! ## A130529.P13118666932575437225

`A326457(n)+A130528(A000217(n))`
-/

namespace A130529.P13118666932575437225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326457 n + A130528 (A000217 n).toNat

end

end A130529.P13118666932575437225

/-!
# A130530: Column 1 of triangle A130528.

The programs for A130530, there is no canonical definition to state claims against.
-/

/-! ## A130530.P4117623019654825482

`record[A130528(comp[∑[n]])]`
-/

namespace A130530.P4117623019654825482
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130528 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130530.P4117623019654825482

/-! ## A130530.P12366729555993794807

`A130528(∑[n+1]+1)`
-/

namespace A130530.P12366729555993794807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130528 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A130530.P12366729555993794807

/-! ## A130530.P4763047619078137714

`record[A072233(n)*A130528(n)]`
-/

namespace A130530.P4763047619078137714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A130528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130530.P4763047619078137714

/-! ## A130530.P8488457984892997419

`record[A097805(n)*A130528(n)]`
-/

namespace A130530.P8488457984892997419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A130528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130530.P8488457984892997419

/-! ## A130530.P15118966888561114400

`record[A130528(n)*A198062(n)]`
-/

namespace A130530.P15118966888561114400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130528 n * A198062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130530.P15118966888561114400

/-!
# A130531: Column 2 of triangle A130528.

The programs for A130531, there is no canonical definition to state claims against.
-/

/-! ## A130531.P11244955437000626641

`A130528(∑[n+2]+3)`
-/

namespace A130531.P11244955437000626641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130528 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A130531.P11244955437000626641

/-! ## A130531.P5666354281735773924

`record[gcd(A008290(n), A130528(n+4))]`
-/

namespace A130531.P5666354281735773924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A130528 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130531.P5666354281735773924

/-! ## A130531.P13105590646809017279

`record[A130528(C(A130535(n)+2, 2)+2)]`
-/

namespace A130531.P13105590646809017279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130528 (Nat.choose (A130535 n + 2).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130531.P13105590646809017279

/-!
# A130533: a(n) = smallest k such that A001358(n+1) = A001358(n) + (A001358(n) mod k), or 0 if no such k exists.

The programs for A130533, there is no canonical definition to state claims against.
-/

/-! ## A130533.P3677329455593956619

`A184728(n+1)/A028310(A184729(n+1))`
-/

namespace A130533.P3677329455593956619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184728 (n + 1) : ℚ) / (A028310 (A184729 (n + 1)).toNat : ℚ)

end

end A130533.P3677329455593956619

/-!
# A130534: Triangle T(n,k), 0 <= k <= n, read by rows, giving coefficients of the polynomial (x+1)(x+2)...(x+n), expanded in increasing powers of x. T(n,k) is also the unsigned Stirling number |s(n+1, k+1)|, denoting the number of permutations on n+1 elements that contain exactly k+1 cycles.

The programs for A130534, there is no canonical definition to state claims against.
-/

/-! ## A130534.P14657027137976769451

`A132393(comp[∑[n]])`
-/

namespace A130534.P14657027137976769451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A130534.P14657027137976769451

/-! ## A130534.P1289280984833261998

`abs(A008275(n+1))`
-/

namespace A130534.P1289280984833261998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1)|

end

end A130534.P1289280984833261998

/-! ## A130534.P1866122111656590376

`abs(A048994(comp[∑[n]]))`
-/

namespace A130534.P1866122111656590376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A130534.P1866122111656590376

/-! ## A130534.P17848067543612689667

`A094638(A038722(n+1))`
-/

namespace A130534.P17848067543612689667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A038722 (n + 1)).toNat

end

end A130534.P17848067543612689667

/-! ## A130534.P15115702426925656526

`A094638(A061579(n)+1)`
-/

namespace A130534.P15115702426925656526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A061579 n + 1).toNat

end

end A130534.P15115702426925656526

/-! ## A130534.P4753610829927084662

`A008275(n+1)*A097807(n)`
-/

namespace A130534.P4753610829927084662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A097807 n

end

end A130534.P4753610829927084662

/-! ## A130534.P9558145700145043207

`gcd(A000038(n), A008275(n+1))`
-/

namespace A130534.P9558145700145043207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008275 (n + 1))

end

end A130534.P9558145700145043207

/-! ## A130534.P9876723595721624477

`lcm(A008275(n+1), A020985(n))`
-/

namespace A130534.P9876723595721624477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008275 (n + 1)) (A020985 n)

end

end A130534.P9876723595721624477

/-! ## A130534.P8823113463032130197

`A094638(A002024(n+1)²-n)`
-/

namespace A130534.P8823113463032130197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A130534.P8823113463032130197

/-! ## A130534.P10894313029642909268

`A180013(n+2)+A132393(n)-A132393(n+1)`
-/

namespace A130534.P10894313029642909268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180013 (n + 2) + (A132393 n - A132393 (n + 1))

end

end A130534.P10894313029642909268

/-! ## A130534.P16367542435133680886

`A028421(n)/A002260(n+1)`
-/

namespace A130534.P16367542435133680886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028421 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A130534.P16367542435133680886

/-! ## A130534.P17668715497114589561

`A028421(n)/(A002262(n)+1)`
-/

namespace A130534.P17668715497114589561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028421 n : ℚ) / (A002262 n + 1 : ℚ)

end

end A130534.P17668715497114589561

/-! ## A130534.P6983126741344273406

`A008275(n+1)/A143493(n+4)*A049459(n)`
-/

namespace A130534.P6983126741344273406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A143493 (n + 4) : ℚ) * (A049459 n : ℚ)

end

end A130534.P6983126741344273406

/-! ## A130534.P7586821913642216206

`A188881(n+1)/A233543(n)`
-/

namespace A130534.P7586821913642216206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188881 (n + 1) : ℚ) / (A233543 n : ℚ)

end

end A130534.P7586821913642216206

/-! ## A130534.P15824170301507184477

`A073315(n+1)/A181511(n+1)`
-/

namespace A130534.P15824170301507184477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073315 (n + 1) : ℚ) / (A181511 (n + 1) : ℚ)

end

end A130534.P15824170301507184477

/-! ## A130534.P8136020304172719464

`gcd(A051141(n+1), A395641(n))`
-/

namespace A130534.P8136020304172719464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051141 (n + 1)) (A395641 n)

end

end A130534.P8136020304172719464

/-! ## A130534.P13524115503872230146

`A056856(n+1)/A076112(n+1)`
-/

namespace A130534.P13524115503872230146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056856 (n + 1) : ℚ) / (A076112 (n + 1) : ℚ)

end

end A130534.P13524115503872230146

/-! ## A130534.P3931959158401617618

`gcd(A056856(n+1), A220883(n+1))`
-/

namespace A130534.P3931959158401617618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056856 (n + 1)) (A220883 (n + 1))

end

end A130534.P3931959158401617618

/-! ## A130534.P621002380538923253

`A008275(n+1)*A021010(n)/A144084(n)`
-/

namespace A130534.P621002380538923253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) * A021010 n : ℚ) / (A144084 n : ℚ)

end

end A130534.P621002380538923253

/-! ## A130534.P6768814785715151944

`gcd(A039683(n+1), A051150(n+1))`
-/

namespace A130534.P6768814785715151944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039683 (n + 1)) (A051150 (n + 1))

end

end A130534.P6768814785715151944

/-!
# A130535: a(0)=a(1)=1; a(n+2) = a(floor((n+1)/a(n+1))) + a(floor(n/a(n))).

The programs for A130535, the canonical program `A130535.P16434668571189842058` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130535 has offset 0).

The definition of A130535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130535.P16434668571189842058

`a(floor((n-1)/a(n-1)))+a(floor((n-2)/a(n-2)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130535

/-- `a(floor((n-1)/a(n-1)))+a(floor((n-2)/a(n-2)))` -/
def P16434668571189842058.Spec : Prop :=
  ∀ n, (P16434668571189842058.a n : ℤ) = A130535 n

theorem P16434668571189842058.correct : P16434668571189842058.Spec := by
  intro n
  simp only [A130535]

end A130535

/-!
# A130537: Smallest prime number of the form n^x+(n+1)^(x+1) where x >= 0.

The programs for A130537, there is no canonical definition to state claims against.
-/

/-! ## A130537.P17758001908995907342

`(n+1)^A130538(n+1)+(n+2)^(A130538(n+1)+1)`
-/

namespace A130537.P17758001908995907342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A130538 (n + 1) : ℤ) + (n + 2 : ℚ) ^ (A130538 (n + 1) + 1 : ℤ)

end

end A130537.P17758001908995907342

/-! ## A130537.P5559838098233717670

`A006530(or(A017185(n), A063800(n+3)))`
-/

namespace A130537.P5559838098233717670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor (A017185 n) (A063800 (n + 3))).toNat

end

end A130537.P5559838098233717670

/-!
# A130538: a(n) = exponent x of n needed to obtain A130537(n) = n^(a(n)) + (n+1)^(a(n)+1).

The programs for A130538, there is no canonical definition to state claims against.
-/

/-! ## A130538.P17419677666638446933

`n%A004718(A185846(n+1))`
-/

namespace A130538.P17419677666638446933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A004718 (A185846 (n + 1)).toNat)

end

end A130538.P17419677666638446933

/-! ## A130538.P17275009774361152937

`A238794(and(n+7, A227117(n+1)))`
-/

namespace A130538.P17275009774361152937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (Int.land (n + 7 : ℤ) (A227117 (n + 1))).toNat

end

end A130538.P17275009774361152937

/-! ## A130538.P12622238917196036933

`A027191(A336782(n+1))+val(n²+1, 2)`
-/

namespace A130538.P12622238917196036933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027191 (A336782 (n + 1)).toNat + (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)

end

end A130538.P12622238917196036933

/-! ## A130538.P5750449324710337424

`A000688(n+4)*A059448(A128457(n+1))`
-/

namespace A130538.P5750449324710337424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 4) * A059448 (A128457 (n + 1)).toNat

end

end A130538.P5750449324710337424

/-! ## A130538.P14347402556352600320

`A316978(n+4)%A049439(A060173(n+3))`
-/

namespace A130538.P14347402556352600320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316978 (n + 4)) (A049439 (A060173 (n + 3)).toNat)

end

end A130538.P14347402556352600320

/-!
# A130540: Triangle read by rows T(n,k) in which column k lists the terms of A000203 interspersed with (k-1) zeros, 1 <= k <= n.

The programs for A130540, the canonical program `A130540.P17651116764661145688` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130540 has offset 1).

The definition of A130540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130540.P17651116764661145688

`∑{d}[A126988(n+1), #]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130540

/-- `∑{d}[A126988(n+1), #]` -/
def P17651116764661145688.Spec : Prop :=
  ∀ n, (P17651116764661145688.a n : ℤ) = A130540 (n + 1)

theorem P17651116764661145688.correct : P17651116764661145688.Spec := by
  intro n
  simp only [A130540, Nat.add_sub_cancel]

end A130540

/-! ## A130540.P12501556233497836114

`∑{d}[A127013((floor(sqrt(2*n))+1)²-n), #]`
-/

namespace A130540.P12501556233497836114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 ((Nat.sqrt (2 * n) + 1) ^ 2 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130540.P12501556233497836114

namespace A130540

/-- `∑{d}[A127013((floor(sqrt(2*n))+1)²-n), #]` -/
def P12501556233497836114.Spec : Prop :=
  ∀ n, (P12501556233497836114.a n : ℤ) = A130540 (n + 1)

end A130540

/-! ## A130540.P16151065834465323453

`A245092(A143315(n+1))`
-/

namespace A130540.P16151065834465323453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A143315 (n + 1)).toNat

end

end A130540.P16151065834465323453

namespace A130540

/-- `A245092(A143315(n+1))` -/
def P16151065834465323453.Spec : Prop :=
  ∀ n, P16151065834465323453.a n = A130540 (n + 1)

end A130540

/-! ## A130540.P4781280165106030537

`A130208(A286158(n+1))`
-/

namespace A130540.P4781280165106030537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130208 (A286158 (n + 1)).toNat

end

end A130540.P4781280165106030537

namespace A130540

/-- `A130208(A286158(n+1))` -/
def P4781280165106030537.Spec : Prop :=
  ∀ n, P4781280165106030537.a n = A130540 (n + 1)

end A130540

/-! ## A130540.P8065516681592672505

`∑{d}[A037213(A085383(n+1)), #]`
-/

namespace A130540.P8065516681592672505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A085383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130540.P8065516681592672505

namespace A130540

/-- `∑{d}[A037213(A085383(n+1)), #]` -/
def P8065516681592672505.Spec : Prop :=
  ∀ n, (P8065516681592672505.a n : ℤ) = A130540 (n + 1)

end A130540

/-! ## A130540.P4825428275577697471

`∑{d}[A141671(A014132(n+1)), #]`
-/

namespace A130540.P4825428275577697471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141671 (A014132 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130540.P4825428275577697471

namespace A130540

/-- `∑{d}[A141671(A014132(n+1)), #]` -/
def P4825428275577697471.Spec : Prop :=
  ∀ n, (P4825428275577697471.a n : ℤ) = A130540 (n + 1)

end A130540

/-! ## A130540.P9326408150787217667

`A127099(n+1)/A002260(n+1)`
-/

namespace A130540.P9326408150787217667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127099 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A130540.P9326408150787217667

namespace A130540

/-- `A127099(n+1)/A002260(n+1)` -/
def P9326408150787217667.Spec : Prop :=
  ∀ n, P9326408150787217667.a n = (A130540 (n + 1) : ℚ)

end A130540

/-! ## A130540.P9204681737042326364

`A127099(n+1)/(A002262(n)+1)`
-/

namespace A130540.P9204681737042326364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127099 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A130540.P9204681737042326364

namespace A130540

/-- `A127099(n+1)/(A002262(n)+1)` -/
def P9204681737042326364.Spec : Prop :=
  ∀ n, P9204681737042326364.a n = (A130540 (n + 1) : ℚ)

end A130540

/-! ## A130540.P14153260226826506383

`A127099(n+1)/A050873(n+1)`
-/

namespace A130540.P14153260226826506383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127099 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A130540.P14153260226826506383

namespace A130540

/-- `A127099(n+1)/A050873(n+1)` -/
def P14153260226826506383.Spec : Prop :=
  ∀ n, P14153260226826506383.a n = (A130540 (n + 1) : ℚ)

end A130540

/-! ## A130540.P10845936743486246340

`A127099(n+1)/A112544(n+1)`
-/

namespace A130540.P10845936743486246340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127099 (n + 1) : ℚ) / (A112544 (n + 1) : ℚ)

end

end A130540.P10845936743486246340

namespace A130540

/-- `A127099(n+1)/A112544(n+1)` -/
def P10845936743486246340.Spec : Prop :=
  ∀ n, P10845936743486246340.a n = (A130540 (n + 1) : ℚ)

end A130540

/-! ## A130540.P4620103114591280092

`A127099(n+1)/A123275(n+1)`
-/

namespace A130540.P4620103114591280092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127099 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A130540.P4620103114591280092

namespace A130540

/-- `A127099(n+1)/A123275(n+1)` -/
def P4620103114591280092.Spec : Prop :=
  ∀ n, P4620103114591280092.a n = (A130540 (n + 1) : ℚ)

end A130540

/-! ## A130540.P7018644953674773336

`A127481(n+1)/A181538(n+1)`
-/

namespace A130540.P7018644953674773336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127481 (n + 1) : ℚ) / (A181538 (n + 1) : ℚ)

end

end A130540.P7018644953674773336

namespace A130540

/-- `A127481(n+1)/A181538(n+1)` -/
def P7018644953674773336.Spec : Prop :=
  ∀ n, P7018644953674773336.a n = (A130540 (n + 1) : ℚ)

end A130540

/-! ## A130540.P12406370427846560813

`A127099(n+1)/A307662(n+1)`
-/

namespace A130540.P12406370427846560813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127099 (n + 1) : ℚ) / (A307662 (n + 1) : ℚ)

end

end A130540.P12406370427846560813

namespace A130540

/-- `A127099(n+1)/A307662(n+1)` -/
def P12406370427846560813.Spec : Prop :=
  ∀ n, P12406370427846560813.a n = (A130540 (n + 1) : ℚ)

end A130540

/-! ## A130540.P13019163976260207851

`A127099(n+1)/A334230(n+1)`
-/

namespace A130540.P13019163976260207851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127099 (n + 1) : ℚ) / (A334230 (n + 1) : ℚ)

end

end A130540.P13019163976260207851

namespace A130540

/-- `A127099(n+1)/A334230(n+1)` -/
def P13019163976260207851.Spec : Prop :=
  ∀ n, P13019163976260207851.a n = (A130540 (n + 1) : ℚ)

end A130540

/-! ## A130540.P2431081940482655859

`A127099(n+1)/A357554(n+1)`
-/

namespace A130540.P2431081940482655859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127099 (n + 1) : ℚ) / (A357554 (n + 1) : ℚ)

end

end A130540.P2431081940482655859

namespace A130540

/-- `A127099(n+1)/A357554(n+1)` -/
def P2431081940482655859.Spec : Prop :=
  ∀ n, P2431081940482655859.a n = (A130540 (n + 1) : ℚ)

end A130540

/-! ## A130540.P3075609295662245195

`∑{d}[A127446(n+1)/A050873(n+1), #]`
-/

namespace A130540.P3075609295662245195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127446 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A130540.P3075609295662245195

namespace A130540

/-- `∑{d}[A127446(n+1)/A050873(n+1), #]` -/
def P3075609295662245195.Spec : Prop :=
  ∀ n, (P3075609295662245195.a n : ℤ) = A130540 (n + 1)

end A130540

/-! ## A130540.P14315458102676880902

`A000203(A010766(n+1))*A051731(n+1)`
-/

namespace A130540.P14315458102676880902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A130540.P14315458102676880902

namespace A130540

/-- `A000203(A010766(n+1))*A051731(n+1)` -/
def P14315458102676880902.Spec : Prop :=
  ∀ n, P14315458102676880902.a n = A130540 (n + 1)

end A130540

/-! ## A130540.P17444262687648775199

`A000203(A049834(n+1))*A051731(n+1)`
-/

namespace A130540.P17444262687648775199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A130540.P17444262687648775199

namespace A130540

/-- `A000203(A049834(n+1))*A051731(n+1)` -/
def P17444262687648775199.Spec : Prop :=
  ∀ n, P17444262687648775199.a n = A130540 (n + 1)

end A130540

/-! ## A130540.P10810081777716284919

`A000203(A051537(n+1))*A051731(n+1)`
-/

namespace A130540.P10810081777716284919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A130540.P10810081777716284919

namespace A130540

/-- `A000203(A051537(n+1))*A051731(n+1)` -/
def P10810081777716284919.Spec : Prop :=
  ∀ n, P10810081777716284919.a n = A130540 (n + 1)

end A130540

/-! ## A130540.P13541781233288796126

`A000203(A054531(n+1))*A051731(n+1)`
-/

namespace A130540.P13541781233288796126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A130540.P13541781233288796126

namespace A130540

/-- `A000203(A054531(n+1))*A051731(n+1)` -/
def P13541781233288796126.Spec : Prop :=
  ∀ n, P13541781233288796126.a n = A130540 (n + 1)

end A130540

/-!
# A130541: A002260 * A125093^(-1).

The programs for A130541, there is no canonical definition to state claims against.
-/

/-! ## A130541.P4863715532090357108

`A128489(n+1)%60`
-/

namespace A130541.P4863715532090357108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128489 (n + 1)) 60

end

end A130541.P4863715532090357108

/-! ## A130541.P8081480493970553320

`A037123(A010766(n+1))`
-/

namespace A130541.P8081480493970553320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A010766 (n + 1)).toNat

end

end A130541.P8081480493970553320

/-! ## A130541.P12585087290156161031

`A128489(A044923(n+1))`
-/

namespace A130541.P12585087290156161031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128489 (A044923 (n + 1)).toNat

end

end A130541.P12585087290156161031

/-! ## A130541.P18246294616540518111

`A057889(A128489(n+1))`
-/

namespace A130541.P18246294616540518111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A128489 (n + 1)).toNat

end

end A130541.P18246294616540518111

/-! ## A130541.P9758905433603160826

`A128489(A089247(n+1))`
-/

namespace A130541.P9758905433603160826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128489 (A089247 (n + 1)).toNat

end

end A130541.P9758905433603160826

/-!
# A130542: The maximum absolute value of the L-series coefficient for an elliptic curve.

The programs for A130542, there is no canonical definition to state claims against.
-/

/-! ## A130542.P11985489397378067073

`A356894(A356868(n+2)+A296150(n+3))`
-/

namespace A130542.P11985489397378067073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356894 (A356868 (n + 2) + A296150 (n + 3)).toNat

end

end A130542.P11985489397378067073

/-!
# A130543: Multiplicative persistence of n!.

The programs for A130543, the canonical program `A130543.P1727106374851024527` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130543 has offset 0).

The definition of A130543 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185115, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130543.P1727106374851024527

`A185115(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130543

/-- `A185115(n+1)` -/
def P1727106374851024527.Spec : Prop :=
  ∀ n, P1727106374851024527.a n = A130543 n

theorem P1727106374851024527.correct : P1727106374851024527.Spec := by
  intro n
  simp only [A130543]

end A130543

/-!
# A130544: Multiplicative persistence of n!!.

The programs for A130544, there is no canonical definition to state claims against.
-/

/-! ## A130544.P3126985671981763615

`gcd(A328114(A329141(n+1)), A329141(n+1))`
-/

namespace A130544.P3126985671981763615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328114 (A329141 (n + 1)).toNat) (A329141 (n + 1))

end

end A130544.P3126985671981763615

/-!
# A130545: Numerators of 2*Sum_{k=1..n} 1/binomial(2*k,k), n >= 1.

The programs for A130545, there is no canonical definition to state claims against.
-/

/-! ## A130545.P8630727150942035369

`A112097(n+1)+A112053(A112083(n+2))`
-/

namespace A130545.P8630727150942035369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112097 (n + 1) + A112053 (A112083 (n + 2)).toNat

end

end A130545.P8630727150942035369

/-! ## A130545.P8025329294267404045

`A112097(n+1)+A112080(A112091(n))`
-/

namespace A130545.P8025329294267404045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112097 (n + 1) + A112080 (A112091 n).toNat

end

end A130545.P8025329294267404045

/-!
# A130546: Denominators of 2*Sum_{k=1..n} 1/binomial(2*k,k), n >= 1.

The programs for A130546, there is no canonical definition to state claims against.
-/

/-! ## A130546.P7648736882512015559

`A010684(p?[A308927(n)])*A130548(n+1)`
-/

namespace A130546.P7648736882512015559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A130548 (n + 1)

end

end A130546.P7648736882512015559

/-! ## A130546.P13089064952511952163

`A010684(A182987(n))*A130548(n+1)`
-/

namespace A130546.P13089064952511952163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A182987 n).toNat * A130548 (n + 1)

end

end A130546.P13089064952511952163

/-! ## A130546.P4809284253577634574

`A006530(A176763(n+1))*A130548(n+1)`
-/

namespace A130546.P4809284253577634574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A176763 (n + 1)).toNat * A130548 (n + 1)

end

end A130546.P4809284253577634574

/-! ## A130546.P2128095432815984364

`A006530(A130505(n))*A130548(n+1)`
-/

namespace A130546.P2128095432815984364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A130505 n).toNat * A130548 (n + 1)

end

end A130546.P2128095432815984364

/-!
# A130547: Numerators of 6*((Sum_{k=1..n} 1/binomial(2*k,k)) - 1/3), n >= 1.

The programs for A130547, there is no canonical definition to state claims against.
-/

/-! ## A130547.P17382054432855157075

`abs(A130545(n+1)-A004277(A130548(n+1)))`
-/

namespace A130547.P17382054432855157075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130545 (n + 1) - A004277 (A130548 (n + 1)).toNat|

end

end A130547.P17382054432855157075

/-! ## A130547.P17509102809401842577

`A130545(n+1)-A004523(A130546(n+1))`
-/

namespace A130547.P17509102809401842577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130545 (n + 1) - A004523 (A130546 (n + 1)).toNat

end

end A130547.P17509102809401842577

/-!
# A130548: Denominators of 6*(sum(1/binomial(2*k,k),k=1..n)-1/3), n>=1.

The programs for A130548, there is no canonical definition to state claims against.
-/

/-! ## A130548.P10783892828972548730

`lcm(3, A130546(n+1))/3`
-/

namespace A130548.P10783892828972548730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A130546 (n + 1)) : ℚ) / 3

end

end A130548.P10783892828972548730

/-! ## A130548.P16425839906669312648

`A130546(n+1)/A010684(p?[A308927(n)])`
-/

namespace A130548.P16425839906669312648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308927 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130546 (n + 1) : ℚ) / (A010684 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ)

end

end A130548.P16425839906669312648

/-! ## A130548.P2565516472263913324

`A130546(n+1)/A010684(A182987(n))`
-/

namespace A130548.P2565516472263913324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130546 (n + 1) : ℚ) / (A010684 (A182987 n).toNat : ℚ)

end

end A130548.P2565516472263913324

/-! ## A130548.P12255540909119699983

`A130546(n+1)/A006530(A176763(n+1))`
-/

namespace A130548.P12255540909119699983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130546 (n + 1) : ℚ) / (A006530 (A176763 (n + 1)).toNat : ℚ)

end

end A130548.P12255540909119699983

/-!
# A130549: Numerators of partial sums for a series for 2*Zeta(2)/3 = (Pi^2)/9.

The programs for A130549, there is no canonical definition to state claims against.
-/

/-! ## A130549.P1739822532065507465

`A112093(gcd(2, a(n-1))+n)` with `a(0)=1`
-/

namespace A130549.P1739822532065507465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112093 (Int.gcd 2 (a (n - 1)) + n)

end

end A130549.P1739822532065507465

/-! ## A130549.P9361071291275797970

`or(1, A112093(A087156(n+1)))`
-/

namespace A130549.P9361071291275797970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A112093 (A087156 (n + 1)).toNat)

end

end A130549.P9361071291275797970

/-! ## A130549.P217437637045566899

`A112093(n+1)-2*A000007(n)`
-/

namespace A130549.P217437637045566899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112093 (n + 1) - 2 * A000007 n

end

end A130549.P217437637045566899

/-! ## A130549.P18096913038450410826

`A112093(n+1)-2*A209229(n²+2)`
-/

namespace A130549.P18096913038450410826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112093 (n + 1) - 2 * A209229 (n ^ 2 + 2)

end

end A130549.P18096913038450410826

/-! ## A130549.P4628319324625009592

`A112093(n+1)/gcd(n, A112093(2*n+1))`
-/

namespace A130549.P4628319324625009592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112093 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (A112093 (2 * n + 1)) : ℚ)

end

end A130549.P4628319324625009592

/-!
# A130550: Denominators of partial sums for a series for 2*Zeta(2)/3 = (Pi^2)/9.

The programs for A130550, there is no canonical definition to state claims against.
-/

/-! ## A130550.P9936845907794692440

`A134805(n+1)/2`
-/

namespace A130550.P9936845907794692440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134805 (n + 1) : ℚ) / 2

end

end A130550.P9936845907794692440

/-! ## A130550.P2328331515755582549

`Δ[∑[A134805(n)]/2]`
-/

namespace A130550.P2328331515755582549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134805 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130550.P2328331515755582549

/-! ## A130550.P17359707739444515371

`A158515(2*n+1)/2*A112094(n+1)`
-/

namespace A130550.P17359707739444515371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158515 (2 * n + 1) : ℚ) / 2 * (A112094 (n + 1) : ℚ)

end

end A130550.P17359707739444515371

/-! ## A130550.P11164724914649540660

`A083953(A027719(n+1))/2*A112094(n+1)`
-/

namespace A130550.P11164724914649540660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083953 (A027719 (n + 1)).toNat : ℚ) / 2 * (A112094 (n + 1) : ℚ)

end

end A130550.P11164724914649540660

/-!
# A130552: Denominators of partial sums for a series of (4/5)*Zeta(3).

The programs for A130552, there is no canonical definition to state claims against.
-/

/-! ## A130552.P991985828657273514

`A007947(A000407(n))*A354401(n+1)`
-/

namespace A130552.P991985828657273514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000407 n).toNat * A354401 (n + 1)

end

end A130552.P991985828657273514

/-!
# A130553: Numerators of partial sums for a series for 2*Pi*sqrt(3)/9.

The programs for A130553, there is no canonical definition to state claims against.
-/

/-! ## A130553.P17332555896274769384

`A087179(A064708(n+1))*A112099(n+1)`
-/

namespace A130553.P17332555896274769384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A064708 (n + 1)).toNat * A112099 (n + 1)

end

end A130553.P17332555896274769384

/-! ## A130553.P12500574500597945590

`A087179(A064709(n+1))*A112099(n+1)`
-/

namespace A130553.P12500574500597945590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A064709 (n + 1)).toNat * A112099 (n + 1)

end

end A130553.P12500574500597945590

/-! ## A130553.P17597651730603560094

`A112099(n+1)*A112104(A112074(n+4))`
-/

namespace A130553.P17597651730603560094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112099 (n + 1) * A112104 (A112074 (n + 4)).toNat

end

end A130553.P17597651730603560094

/-!
# A130554: Denominators of partial sums for a series for 2*Pi*sqrt(3)/9.

The programs for A130554, there is no canonical definition to state claims against.
-/

/-! ## A130554.P10391509219470969156

`lcm(2, A112100(n+1))/2`
-/

namespace A130554.P10391509219470969156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A112100 (n + 1)) : ℚ) / 2

end

end A130554.P10391509219470969156

/-! ## A130554.P3882000543921182052

`A112100(n+1)/A112104(A112131(n+1))`
-/

namespace A130554.P3882000543921182052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112100 (n + 1) : ℚ) / (A112104 (A112131 (n + 1)).toNat : ℚ)

end

end A130554.P3882000543921182052

/-!
# A130555: Numbers that are sums of sixth powers of two distinct primes.

The programs for A130555, there is no canonical definition to state claims against.
-/

/-! ## A130555.P10627256767135827760

`A329515(A000217(n))*A351194(A339116(n+2))`
-/

namespace A130555.P10627256767135827760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329515 (A000217 n).toNat * A351194 (A339116 (n + 2)).toNat

end

end A130555.P10627256767135827760

/-!
# A130556: A model of the atomic nucleus (Shell model of nucleus). A triangle.

The programs for A130556, there is no canonical definition to state claims against.
-/

/-! ## A130556.P10711767851319362451

`floor(10^A130517(n+1)/9)`
-/

namespace A130556.P10711767851319362451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ (A130517 (n + 1) : ℤ) / 9⌋

end

end A130556.P10711767851319362451

/-! ## A130556.P12392292992566528944

`round(10^A004737(2*n+1)/9)`
-/

namespace A130556.P12392292992566528944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) ^ (A004737 (2 * n + 1) : ℤ) / 9)

end

end A130556.P12392292992566528944

/-! ## A130556.P13907682831989882180

`A002275(floor(sqrt(8*n+1))%2+abs(round(sqrt(2*(n+1)))²-(2*n+1)))`
-/

namespace A130556.P13907682831989882180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ) + |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|).toNat

end

end A130556.P13907682831989882180

/-! ## A130556.P1893279914738627655

`A038713(A140642(n))`
-/

namespace A130556.P1893279914738627655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038713 (A140642 n).toNat

end

end A130556.P1893279914738627655

/-! ## A130556.P8730777303018735107

`A000042(A130517(n+1))`
-/

namespace A130556.P8730777303018735107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A130517 (n + 1)).toNat

end

end A130556.P8730777303018735107

/-!
# A130559: Coefficients of the v=n member of a family of certain orthogonal polynomials with Diophantine properties.

The programs for A130559, there is no canonical definition to state claims against.
-/

/-! ## A130559.P16184523186557688368

`A129467(comp[∑[n]])`
-/

namespace A130559.P16184523186557688368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129467 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A130559.P16184523186557688368

/-! ## A130559.P9626684573496631418

`A191936(A099375(n)+1+n)`
-/

namespace A130559.P9626684573496631418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 (A099375 n + 1 + (n : ℤ)).toNat

end

end A130559.P9626684573496631418

/-! ## A130559.P11249420865616741576

`A191936(A212012(n+1)+n)`
-/

namespace A130559.P11249420865616741576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A130559.P11249420865616741576

/-! ## A130559.P4884453614067265480

`A191936(A253515(2*n+1)+n)`
-/

namespace A130559.P4884453614067265480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 (A253515 (2 * n + 1) + (n : ℤ)).toNat

end

end A130559.P4884453614067265480

/-! ## A130559.P15374093241389934639

`A191936(A061579(n)+comp[∑[n]]-n)`
-/

namespace A130559.P15374093241389934639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 (A061579 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A130559.P15374093241389934639

/-!
# A130560: Numerators of Sheffer a-sequence for Jabotinsky type triangle S2(3):=A035342.

The programs for A130560, there is no canonical definition to state claims against.
-/

/-! ## A130560.P6527849782399622781

`-n*a(n-1)/and(n, -n)` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A130560.P6527849782399622781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  -((n : ℚ) * a (n - 1) / (Int.land (n : ℤ) (-(n : ℤ)) : ℚ))

end

end A130560.P6527849782399622781

/-! ## A130560.P10139314133740806775

`-a(n-1)*A000265(n)` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A130560.P10139314133740806775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  -(a (n - 1) * A000265 n)

end

end A130560.P10139314133740806775

/-! ## A130560.P3292349744489479716

`-a(n-1)*A163575(2*n)` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A130560.P3292349744489479716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  -(a (n - 1) * A163575 (2 * n))

end

end A130560.P3292349744489479716

/-! ## A130560.P9892871222853781206

`-a(n-1)*A306546(4*n)` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A130560.P9892871222853781206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  -(a (n - 1) * A306546 (4 * n))

end

end A130560.P9892871222853781206

/-! ## A130560.P13107632237303729516

`a(n-1)*A163575(2*n)*A008683(A002148(n))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A130560.P13107632237303729516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 1) * A163575 (2 * n) * A008683 (A002148 n).toNat

end

end A130560.P13107632237303729516

/-! ## A130560.P9742206465864807425

`a(n-1)*A306546(4*n)*A008683(A002148(n))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A130560.P9742206465864807425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 1) * A306546 (4 * n) * A008683 (A002148 n).toNat

end

end A130560.P9742206465864807425

/-!
# A130561: Numbers associated to partitions, used for combinatoric interpretation of Lah triangle numbers A105278; elementary Schur polynomials / functions.

The programs for A130561, there is no canonical definition to state claims against.
-/

/-! ## A130561.P4416170460268259144

`A035206(n)*A179972(n)`
-/

namespace A130561.P4416170460268259144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 n * A179972 n

end

end A130561.P4416170460268259144

/-! ## A130561.P17886999748466975653

`A098546(n)*A178886(n)`
-/

namespace A130561.P17886999748466975653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098546 n * A178886 n

end

end A130561.P17886999748466975653

/-! ## A130561.P5303801518822097165

`A178802(n)/A178803(n)`
-/

namespace A130561.P5303801518822097165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A178803 n : ℚ)

end

end A130561.P5303801518822097165

/-! ## A130561.P8283437122975746582

`A036042(n)!/A096162(n)`
-/

namespace A130561.P8283437122975746582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A096162 n : ℚ)

end

end A130561.P8283437122975746582

/-! ## A130561.P13819624762780714678

`A178801(n)/A096162(n)`
-/

namespace A130561.P13819624762780714678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A096162 n : ℚ)

end

end A130561.P13819624762780714678

/-!
# A130563: Fourth column (m=3) of the Laguerre-Sonin a=1/2 coefficient triangle.

The programs for A130563, there is no canonical definition to state claims against.
-/

/-! ## A130563.P8684373822152773773

`abs(A130757(A167614(n+2)))`
-/

namespace A130563.P8684373822152773773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130757 (A167614 (n + 2)).toNat|

end

end A130563.P8684373822152773773

/-! ## A130563.P12241756606587926251

`A000580(2*n+7)*A001147(n)`
-/

namespace A130563.P12241756606587926251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (2 * n + 7) * A001147 n

end

end A130563.P12241756606587926251

/-! ## A130563.P1471321583389171676

`A053136(n)/A005408(n)*∏[2*n+1]`
-/

namespace A130563.P1471321583389171676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053136 n : ℚ) / (A005408 n : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A130563.P1471321583389171676

/-! ## A130563.P2170981680059590113

`lcm(A001147(n), A130757(A167614(n+2)))`
-/

namespace A130563.P2170981680059590113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001147 n) (A130757 (A167614 (n + 2)).toNat)

end

end A130563.P2170981680059590113

/-! ## A130563.P9057620227064022986

`A051580(n)/A000165(n)*A051581(n)`
-/

namespace A130563.P9057620227064022986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051580 n : ℚ) / (A000165 n : ℚ) * (A051581 n : ℚ)

end

end A130563.P9057620227064022986

/-! ## A130563.P6503178778755779093

`∏[A005408(n)]/A005408(n)*A053136(n)`
-/

namespace A130563.P6503178778755779093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A005408 n : ℚ) * (A053136 n : ℚ)

end

end A130563.P6503178778755779093

/-! ## A130563.P16751716025963442656

`A001497(eq[7, A002262(n)])`
-/

namespace A130563.P16751716025963442656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130563.P16751716025963442656

/-! ## A130563.P1588095637872627777

`A001497(eq[8, A002260(n+1)])`
-/

namespace A130563.P1588095637872627777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130563.P1588095637872627777

/-! ## A130563.P6594699252880417746

`A001497(eq[8, A134868(n+1)])`
-/

namespace A130563.P6594699252880417746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130563.P6594699252880417746

/-!
# A130564: Member k=5 of a family of generalized Catalan numbers.

The programs for A130564, there is no canonical definition to state claims against.
-/

/-! ## A130564.P12422489719720017419

`A386379(A016897(n))`
-/

namespace A130564.P12422489719720017419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (A016897 n).toNat

end

end A130564.P12422489719720017419

/-! ## A130564.P13325072690374669109

`C(6*n+4, n)/(n+1)`
-/

namespace A130564.P13325072690374669109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n + 4) n : ℚ) / (n + 1 : ℚ)

end

end A130564.P13325072690374669109

/-! ## A130564.P9556811528063006222

`floor(C(A016957(n), n)/(n+1))`
-/

namespace A130564.P9556811528063006222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A016957 n).toNat n : ℚ) / (n + 1 : ℚ)⌋

end

end A130564.P9556811528063006222

/-! ## A130564.P14129817275610751111

`A328901(A178572(n+1))`
-/

namespace A130564.P14129817275610751111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328901 (A178572 (n + 1)).toNat

end

end A130564.P14129817275610751111

/-! ## A130564.P5926051854469631275

`A051168(8*∑[3*(3*n+1)+1]/2)`
-/

namespace A130564.P5926051854469631275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (3 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.roundAway (((8 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2)).toNat

end

end A130564.P5926051854469631275

/-!
# A130565: Member k=6 of a family of generalized Catalan numbers.

The programs for A130565, there is no canonical definition to state claims against.
-/

/-! ## A130565.P4357218730676966369

`A386380(A016969(n))`
-/

namespace A130565.P4357218730676966369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (A016969 n).toNat

end

end A130565.P4357218730676966369

/-! ## A130565.P7291190489296770545

`A386380(A101328(n+3))`
-/

namespace A130565.P7291190489296770545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (A101328 (n + 3)).toNat

end

end A130565.P7291190489296770545

/-! ## A130565.P14337441006034784180

`C(7*n+5, n)/(n+1)`
-/

namespace A130565.P14337441006034784180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n + 5) n : ℚ) / (n + 1 : ℚ)

end

end A130565.P14337441006034784180

/-! ## A130565.P3600387493050043673

`A328901(A178574(n+1))`
-/

namespace A130565.P3600387493050043673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328901 (A178574 (n + 1)).toNat

end

end A130565.P3600387493050043673

/-! ## A130565.P999466699133247399

`A328901(2*A154516(n+1))`
-/

namespace A130565.P999466699133247399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328901 (2 * A154516 (n + 1)).toNat

end

end A130565.P999466699133247399

/-!
# A130566: Pyramidal 47-gonal numbers.

The programs for A130566, the canonical program `A130566.P1838275945321449503` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130566 has offset 0).

The definition of A130566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130566.P2749953016285990875

`(15*n+1)*(n+2)*(n+1)/2`
-/

namespace A130566.P2749953016285990875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 * n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 1 : ℚ) / 2))

end

end A130566.P2749953016285990875

namespace A130566

/-- `(15*n+1)*(n+2)*(n+1)/2` -/
def P2749953016285990875.Spec : Prop :=
  ∀ n, P2749953016285990875.a n = (A130566 n : ℚ)

theorem P2749953016285990875.correct : P2749953016285990875.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A130566, Nat.add_sub_cancel, A130566.P2749953016285990875.a, A130566.P1838275945321449503.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A130566, Nat.add_sub_cancel, A130566.P2749953016285990875.a, A130566.P1838275945321449503.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A130566

/-! ## A130566.P1838275945321449503

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=48, a(2)=186, a(3)=460`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130566

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1838275945321449503.Spec : Prop :=
  ∀ n, P1838275945321449503.a n = A130566 n

theorem P1838275945321449503.correct : P1838275945321449503.Spec := by
  intro n
  simp only [A130566]

end A130566

/-! ## A130566.P4463099069184371342

`∑[∑[a(n-1)+45]]` with `a(0)=1`
-/

namespace A130566.P4463099069184371342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 45

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130566.P4463099069184371342

namespace A130566

/-- `∑[∑[a(n-1)+45]]` -/
def P4463099069184371342.Spec : Prop :=
  ∀ n, (P4463099069184371342.a n : ℤ) = A130566 n

end A130566

/-! ## A130566.P6495426072647927529

`∑[A095311(n+1)]`
-/

namespace A130566.P6495426072647927529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130566.P6495426072647927529

namespace A130566

/-- `∑[A095311(n+1)]` -/
def P6495426072647927529.Spec : Prop :=
  ∀ n, P6495426072647927529.a n = A130566 n

end A130566

/-! ## A130566.P13967721976271011614

`∑[A129428(n)-n²]`
-/

namespace A130566.P13967721976271011614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129428 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130566.P13967721976271011614

namespace A130566

/-- `∑[A129428(n)-n²]` -/
def P13967721976271011614.Spec : Prop :=
  ∀ n, P13967721976271011614.a n = A130566 n

end A130566

/-! ## A130566.P753462248156555254

`2*A256645(n+1)-A000292(n+1)`
-/

namespace A130566.P753462248156555254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256645 (n + 1) - A000292 (n + 1)

end

end A130566.P753462248156555254

namespace A130566

/-- `2*A256645(n+1)-A000292(n+1)` -/
def P753462248156555254.Spec : Prop :=
  ∀ n, P753462248156555254.a n = A130566 n

end A130566

/-! ## A130566.P15177285645160481171

`2*A256646(n+1)-A002411(n+1)`
-/

namespace A130566.P15177285645160481171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256646 (n + 1) - A002411 (n + 1)

end

end A130566.P15177285645160481171

namespace A130566

/-- `2*A256646(n+1)-A002411(n+1)` -/
def P15177285645160481171.Spec : Prop :=
  ∀ n, P15177285645160481171.a n = A130566 n

end A130566

/-! ## A130566.P6421967943217378795

`2*A256647(n+1)-A002413(n+1)`
-/

namespace A130566.P6421967943217378795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256647 (n + 1) - A002413 (n + 1)

end

end A130566.P6421967943217378795

namespace A130566

/-- `2*A256647(n+1)-A002413(n+1)` -/
def P6421967943217378795.Spec : Prop :=
  ∀ n, P6421967943217378795.a n = A130566 n

end A130566

/-! ## A130566.P5509010244949976228

`A051871(n+1)+n*A022272(n+1)`
-/

namespace A130566.P5509010244949976228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 (n + 1) + (n : ℤ) * A022272 (n + 1)

end

end A130566.P5509010244949976228

namespace A130566

/-- `A051871(n+1)+n*A022272(n+1)` -/
def P5509010244949976228.Spec : Prop :=
  ∀ n, P5509010244949976228.a n = A130566 n

end A130566

/-! ## A130566.P6461682994717312636

`A051875(n+1)+n*A152734(n+1)`
-/

namespace A130566.P6461682994717312636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 (n + 1) + (n : ℤ) * A152734 (n + 1)

end

end A130566.P6461682994717312636

namespace A130566

/-- `A051875(n+1)+n*A152734(n+1)` -/
def P6461682994717312636.Spec : Prop :=
  ∀ n, P6461682994717312636.a n = A130566 n

end A130566

/-! ## A130566.P5900111974193263475

`A256649(n+1)+n*A028896(n+1)`
-/

namespace A130566.P5900111974193263475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256649 (n + 1) + (n : ℤ) * A028896 (n + 1)

end

end A130566.P5900111974193263475

namespace A130566

/-- `A256649(n+1)+n*A028896(n+1)` -/
def P5900111974193263475.Spec : Prop :=
  ∀ n, P5900111974193263475.a n = A130566 n

end A130566

/-! ## A130566.P7557447133751772012

`A256645(n+1)+A256646(n+1)-A000330(n+1)`
-/

namespace A130566.P7557447133751772012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256645 (n + 1) + (A256646 (n + 1) - A000330 (n + 1))

end

end A130566.P7557447133751772012

namespace A130566

/-- `A256645(n+1)+A256646(n+1)-A000330(n+1)` -/
def P7557447133751772012.Spec : Prop :=
  ∀ n, P7557447133751772012.a n = A130566 n

end A130566

/-!
# A130567: Expansion of x*(2 - 7*x + 2*x^2)/((1-x)*(1-4*x)*(1-2*x)).

The programs for A130567, the canonical program `A130567.P10980412088599338560` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130567 has offset 1).

The definition of A130567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130567.P10980412088599338560

`2^(2*n-1)+2*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130567

/-- `2^(2*n-1)+2*a(n-1)+1` -/
def P10980412088599338560.Spec : Prop :=
  ∀ n, P10980412088599338560.a n = (A130567 (n + 1) : ℚ)

end A130567

/-! ## A130567.P6794753397301005680

`(2^n+1)²-2`
-/

namespace A130567.P6794753397301005680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n + 1) ^ 2 : ℤ) - 2

end

end A130567.P6794753397301005680

namespace A130567

/-- `(2^n+1)²-2` -/
def P6794753397301005680.Spec : Prop :=
  ∀ n, P6794753397301005680.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P7194434809097616902

`abs(xor(-1, 2^n)²-2)`
-/

namespace A130567.P7194434809097616902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (2 ^ n : ℤ) ^ 2 - 2|

end

end A130567.P7194434809097616902

namespace A130567

/-- `abs(xor(-1, 2^n)²-2)` -/
def P7194434809097616902.Spec : Prop :=
  ∀ n, P7194434809097616902.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P4463667093360029251

`xor(4^n, or(2, ∑[2^n]))`
-/

namespace A130567.P4463667093360029251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (4 ^ n) (Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A130567.P4463667093360029251

namespace A130567

/-- `xor(4^n, or(2, ∑[2^n]))` -/
def P4463667093360029251.Spec : Prop :=
  ∀ n, (P4463667093360029251.a n : ℤ) = A130567 (n + 1)

end A130567

/-! ## A130567.P6621361156690186161

`∑[4*a(n-1)-2^n]` with `a(0)=2, a(1)=5`
-/

namespace A130567.P6621361156690186161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130567.P6621361156690186161

namespace A130567

/-- `∑[4*a(n-1)-2^n]` -/
def P6621361156690186161.Spec : Prop :=
  ∀ n, P6621361156690186161.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P12721738267614785877

`or(2^n+4^n, ∑[floor(2^(n-1))])`
-/

namespace A130567.P12721738267614785877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n + 4 ^ n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130567.P12721738267614785877

namespace A130567

/-- `or(2^n+4^n, ∑[floor(2^(n-1))])` -/
def P12721738267614785877.Spec : Prop :=
  ∀ n, P12721738267614785877.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P14392496387456231605

`xor(2^n+4^n, ∑[floor(2^(n-1))])`
-/

namespace A130567.P14392496387456231605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n + 4 ^ n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130567.P14392496387456231605

namespace A130567

/-- `xor(2^n+4^n, ∑[floor(2^(n-1))])` -/
def P14392496387456231605.Spec : Prop :=
  ∀ n, P14392496387456231605.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P4628896204048444900

`abs(2-A028400(n))`
-/

namespace A130567.P4628896204048444900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A028400 n|

end

end A130567.P4628896204048444900

namespace A130567

/-- `abs(2-A028400(n))` -/
def P4628896204048444900.Spec : Prop :=
  ∀ n, P4628896204048444900.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P18011678125636123917

`abs(2-A000051(n)²)`
-/

namespace A130567.P18011678125636123917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000051 n ^ 2|

end

end A130567.P18011678125636123917

namespace A130567

/-- `abs(2-A000051(n)²)` -/
def P18011678125636123917.Spec : Prop :=
  ∀ n, P18011678125636123917.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P14361671305810529466

`record[A052552(n)²-2]`
-/

namespace A130567.P14361671305810529466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130567.P14361671305810529466

namespace A130567

/-- `record[A052552(n)²-2]` -/
def P14361671305810529466.Spec : Prop :=
  ∀ n, P14361671305810529466.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P17873984304003542484

`abs(2-(A000079(n)+1)²)`
-/

namespace A130567.P17873984304003542484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A000079 n + 1) ^ 2|

end

end A130567.P17873984304003542484

namespace A130567

/-- `abs(2-(A000079(n)+1)²)` -/
def P17873984304003542484.Spec : Prop :=
  ∀ n, P17873984304003542484.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P7957045968317633635

`abs(2-(A000225(n)+2)²)`
-/

namespace A130567.P7957045968317633635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A000225 n + 2) ^ 2|

end

end A130567.P7957045968317633635

namespace A130567

/-- `abs(2-(A000225(n)+2)²)` -/
def P7957045968317633635.Spec : Prop :=
  ∀ n, P7957045968317633635.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P15802294829677605423

`abs((A011782(n+1)+1)²-2)`
-/

namespace A130567.P15802294829677605423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A011782 (n + 1) + 1) ^ 2 - 2|

end

end A130567.P15802294829677605423

namespace A130567

/-- `abs((A011782(n+1)+1)²-2)` -/
def P15802294829677605423.Spec : Prop :=
  ∀ n, P15802294829677605423.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P1925561357501260052

`abs(A020515(n)+3*(2^n-1)+1)`
-/

namespace A130567.P1925561357501260052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020515 n + (3 * ((2 ^ n : ℤ) - 1) + 1)|

end

end A130567.P1925561357501260052

namespace A130567

/-- `abs(A020515(n)+3*(2^n-1)+1)` -/
def P1925561357501260052.Spec : Prop :=
  ∀ n, P1925561357501260052.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P8455627011657670649

`abs(2-∑{d}[-a(n-1), A000005(#)^n])` with `a(0)=6`
-/

namespace A130567.P8455627011657670649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d ^ n|

end

end A130567.P8455627011657670649

namespace A130567

/-- `abs(2-∑{d}[-a(n-1), A000005(#)^n])` -/
def P8455627011657670649.Spec : Prop :=
  ∀ n, P8455627011657670649.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P11620124910346192467

`A183977(Δ[n²])/2`
-/

namespace A130567.P11620124910346192467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183977 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A130567.P11620124910346192467

namespace A130567

/-- `A183977(Δ[n²])/2` -/
def P11620124910346192467.Spec : Prop :=
  ∀ n, P11620124910346192467.a n = (A130567 (n + 1) : ℚ)

end A130567

/-! ## A130567.P16926475633329200154

`A028402(n+2)%A140660(n)`
-/

namespace A130567.P16926475633329200154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028402 (n + 2)) (A140660 n)

end

end A130567.P16926475633329200154

namespace A130567

/-- `A028402(n+2)%A140660(n)` -/
def P16926475633329200154.Spec : Prop :=
  ∀ n, P16926475633329200154.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P3380961356796963236

`Δ[A002450(n)+∑[A000225(n)]]`
-/

namespace A130567.P3380961356796963236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130567.P3380961356796963236

namespace A130567

/-- `Δ[A002450(n)+∑[A000225(n)]]` -/
def P3380961356796963236.Spec : Prop :=
  ∀ n, P3380961356796963236.a n = A130567 (n + 1)

end A130567

/-! ## A130567.P1349665241340606275

`(A048578(n)²-A188161(n))/2`
-/

namespace A130567.P1349665241340606275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048578 n ^ 2 - A188161 n : ℚ) / 2

end

end A130567.P1349665241340606275

namespace A130567

/-- `(A048578(n)²-A188161(n))/2` -/
def P1349665241340606275.Spec : Prop :=
  ∀ n, P1349665241340606275.a n = (A130567 (n + 1) : ℚ)

end A130567

/-!
# A130568: Generalized Beatty sequence 1+2*floor(n*phi), which contains infinitely many primes.

The programs for A130568, the canonical program `A130568.P15557830323958427983` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130568 has offset 0).

The definition of A130568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*floor(n*ϕ)` (program `A130568.P15557830323958427983`, by `A130568.P15557830323958427983.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130568.P15557830323958427983

`1+2*floor(n*ϕ)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130568

/-- `1+2*floor(n*ϕ)` -/
def P15557830323958427983.Spec : Prop :=
  ∀ n, P15557830323958427983.a n = A130568 n

theorem P15557830323958427983.correct : P15557830323958427983.Spec := by
  intro n
  simp only [A130568]

end A130568

/-! ## A130568.P14276958160024056407

`or(1, floor(2*ϕ*n))`
-/

namespace A130568.P14276958160024056407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

end

end A130568.P14276958160024056407

namespace A130568

/-- `or(1, floor(2*ϕ*n))` -/
def P14276958160024056407.Spec : Prop :=
  ∀ n, P14276958160024056407.a n = A130568 n

end A130568

/-! ## A130568.P13286487068795402968

`xor(1, 2*floor(ϕ*n))`
-/

namespace A130568.P13286487068795402968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊Real.goldenRatio * (n : ℝ)⌋)

end

end A130568.P13286487068795402968

namespace A130568

/-- `xor(1, 2*floor(ϕ*n))` -/
def P13286487068795402968.Spec : Prop :=
  ∀ n, P13286487068795402968.a n = A130568 n

end A130568

/-! ## A130568.P12500125640270139994

`round(6*(floor(ϕ*n)-cos(2))/3)`
-/

namespace A130568.P12500125640270139994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (6 * (((⌊Real.goldenRatio * (n : ℝ)⌋ : ℝ) - Real.cos (2 : ℝ)) / 3))

end

end A130568.P12500125640270139994

namespace A130568

/-- `round(6*(floor(ϕ*n)-cos(2))/3)` -/
def P12500125640270139994.Spec : Prop :=
  ∀ n, P12500125640270139994.a n = A130568 n

end A130568

/-! ## A130568.P18359533050593780437

`∑[2*a(Δ[floor((n-1)/ϕ)])]` with `a(0)=1`
-/

namespace A130568.P18359533050593780437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130568.P18359533050593780437

namespace A130568

/-- `∑[2*a(Δ[floor((n-1)/ϕ)])]` -/
def P18359533050593780437.Spec : Prop :=
  ∀ n, (P18359533050593780437.a n : ℤ) = A130568 n

end A130568

/-! ## A130568.P8267862533624533740

`abs(or(1, ceil(ϕ*(2*n+1-ϕ))))`
-/

namespace A130568.P8267862533624533740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ⌈Real.goldenRatio * ((2 * n + 1 : ℝ) - Real.goldenRatio)⌉|

end

end A130568.P8267862533624533740

namespace A130568

/-- `abs(or(1, ceil(ϕ*(2*n+1-ϕ))))` -/
def P8267862533624533740.Spec : Prop :=
  ∀ n, P8267862533624533740.a n = A130568 n

end A130568

/-! ## A130568.P5260390462674622869

`abs(1-2*A004956(n))`
-/

namespace A130568.P5260390462674622869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A004956 n|

end

end A130568.P5260390462674622869

namespace A130568

/-- `abs(1-2*A004956(n))` -/
def P5260390462674622869.Spec : Prop :=
  ∀ n, P5260390462674622869.a n = A130568 n

end A130568

/-! ## A130568.P633905844869993464

`A188012(n+1)%A284624(n+1)`
-/

namespace A130568.P633905844869993464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188012 (n + 1)) (A284624 (n + 1))

end

end A130568.P633905844869993464

namespace A130568

/-- `A188012(n+1)%A284624(n+1)` -/
def P633905844869993464.Spec : Prop :=
  ∀ n, P633905844869993464.a n = A130568 n

end A130568

/-! ## A130568.P8534271830723362050

`∪[A075318(n+1), A288713(n+1)]`
-/

namespace A130568.P8534271830723362050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130568.P8534271830723362050

namespace A130568

/-- `∪[A075318(n+1), A288713(n+1)]` -/
def P8534271830723362050.Spec : Prop :=
  ∀ n, (P8534271830723362050.a n : ℤ) = A130568 n

end A130568

/-! ## A130568.P3945791633487524938

`A005408(floor(ϕ*n))`
-/

namespace A130568.P3945791633487524938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat

end

end A130568.P3945791633487524938

namespace A130568

/-- `A005408(floor(ϕ*n))` -/
def P3945791633487524938.Spec : Prop :=
  ∀ n, P3945791633487524938.a n = A130568 n

end A130568

/-! ## A130568.P7711874559910845467

`A004273(A026351(n))`
-/

namespace A130568.P7711874559910845467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026351 n).toNat

end

end A130568.P7711874559910845467

namespace A130568

/-- `A004273(A026351(n))` -/
def P7711874559910845467.Spec : Prop :=
  ∀ n, P7711874559910845467.a n = A130568 n

end A130568

/-! ## A130568.P9701959294622581125

`A004273(A066096(n)+1)`
-/

namespace A130568.P9701959294622581125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A066096 n + 1).toNat

end

end A130568.P9701959294622581125

namespace A130568

/-- `A004273(A066096(n)+1)` -/
def P9701959294622581125.Spec : Prop :=
  ∀ n, P9701959294622581125.a n = A130568 n

end A130568

/-! ## A130568.P13040477366370504304

`A004273(A026352(n)-n)`
-/

namespace A130568.P13040477366370504304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026352 n - (n : ℤ)).toNat

end

end A130568.P13040477366370504304

namespace A130568

/-- `A004273(A026352(n)-n)` -/
def P13040477366370504304.Spec : Prop :=
  ∀ n, P13040477366370504304.a n = A130568 n

end A130568

/-! ## A130568.P10674986547191906998

`A004274(A189662(n+1))`
-/

namespace A130568.P10674986547191906998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A189662 (n + 1)).toNat

end

end A130568.P10674986547191906998

namespace A130568

/-- `A004274(A189662(n+1))` -/
def P10674986547191906998.Spec : Prop :=
  ∀ n, P10674986547191906998.a n = A130568 n

end A130568

/-! ## A130568.P9233912594766710335

`A060747(A026352(n)-n)`
-/

namespace A130568.P9233912594766710335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A026352 n - (n : ℤ)).toNat

end

end A130568.P9233912594766710335

namespace A130568

/-- `A060747(A026352(n)-n)` -/
def P9233912594766710335.Spec : Prop :=
  ∀ n, P9233912594766710335.a n = A130568 n

end A130568

/-! ## A130568.P11440715468269551131

`∩[2*n+1, A187580(n+1)]`
-/

namespace A130568.P11440715468269551131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130568.P11440715468269551131

namespace A130568

/-- `∩[2*n+1, A187580(n+1)]` -/
def P11440715468269551131.Spec : Prop :=
  ∀ n, (P11440715468269551131.a n : ℤ) = A130568 n

end A130568

/-! ## A130568.P11171038535560659682

`∩[A187580(n+1), A004273(n)]`
-/

namespace A130568.P11171038535560659682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130568.P11171038535560659682

namespace A130568

/-- `∩[A187580(n+1), A004273(n)]` -/
def P11171038535560659682.Spec : Prop :=
  ∀ n, (P11171038535560659682.a n : ℤ) = A130568 n

end A130568

/-! ## A130568.P3745553428114012175

`∩[A187580(n+1), A004274(n)]`
-/

namespace A130568.P3745553428114012175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130568.P3745553428114012175

namespace A130568

/-- `∩[A187580(n+1), A004274(n)]` -/
def P3745553428114012175.Spec : Prop :=
  ∀ n, (P3745553428114012175.a n : ℤ) = A130568 n

end A130568

/-!
# A130569: Numbers of the form k*2^m + 1 for k odd, m >=1, that are not Proth numbers (A080075) (2^m <= k).

The programs for A130569, there is no canonical definition to state claims against.
-/

/-! ## A130569.P10707048674230502808

`2*lt[2*and(n, -n)², n]+1`
-/

namespace A130569.P10707048674230502808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A130569.P10707048674230502808

/-! ## A130569.P9418127664827090619

`2*lt[xor(n, -n)², 2*n]+1`
-/

namespace A130569.P9418127664827090619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A130569.P9418127664827090619

/-! ## A130569.P16293484206094371727

`or(1, 2*lt[xor(n, -n)², 2*n])`
-/

namespace A130569.P16293484206094371727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130569.P16293484206094371727

/-! ## A130569.P1260518457350160347

`xor(1, 2*lt[xor(n, -n)², 2*n])`
-/

namespace A130569.P1260518457350160347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130569.P1260518457350160347

/-! ## A130569.P4307667354937705668

`2*(lt[xor(n, n+1), round(sqrt(2*n))]+1)+1`
-/

namespace A130569.P4307667354937705668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 1

end

end A130569.P4307667354937705668

/-! ## A130569.P10949546057767921148

`2*lt[and(1-2*n, 2*n)², 2*n]+1`
-/

namespace A130569.P10949546057767921148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A130569.P10949546057767921148

/-! ## A130569.P6278799520039387169

`xor(1, 2*lt[and(1-2*n, 2*n)², 2*n])`
-/

namespace A130569.P6278799520039387169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130569.P6278799520039387169

/-! ## A130569.P657937754264593675

`A115036(n+1)+1`
-/

namespace A130569.P657937754264593675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1) + 1

end

end A130569.P657937754264593675

/-! ## A130569.P11151471928688782673

`2*A281005(n+1)+1`
-/

namespace A130569.P11151471928688782673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281005 (n + 1) + 1

end

end A130569.P11151471928688782673

/-! ## A130569.P3064007984613182885

`or(1, A115036(abs(xor(n, -1))))`
-/

namespace A130569.P3064007984613182885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115036 |Int.xor (n : ℤ) (-1)|.toNat)

end

end A130569.P3064007984613182885

/-!
# A130570: Primes of the form k*2^m + 1 for k odd, m >=1, that are not Proth primes (A080076) (2^m <= k).

The programs for A130570, there is no canonical definition to state claims against.
-/

/-! ## A130570.P14006225024214821072

`p?[A115036(n+1)+1]`
-/

namespace A130570.P14006225024214821072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130570.P14006225024214821072

/-! ## A130570.P2707492705767671362

`p?[2*A281005(n+1)+1]`
-/

namespace A130570.P2707492705767671362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281005 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130570.P2707492705767671362

/-! ## A130570.P5310079206486661015

`p?[A005408(A281005(n+1))]`
-/

namespace A130570.P5310079206486661015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A281005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130570.P5310079206486661015

/-! ## A130570.P18060094760125776105

`record[A001414(A115036(n+1)+1)]`
-/

namespace A130570.P18060094760125776105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A115036 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130570.P18060094760125776105

/-! ## A130570.P821763622853538405

`record[A006530(A115036(n+1)+1)]`
-/

namespace A130570.P821763622853538405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A115036 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130570.P821763622853538405

/-! ## A130570.P17130614368432855649

`record[A014963(A115036(n+1)+1)]`
-/

namespace A130570.P17130614368432855649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A115036 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130570.P17130614368432855649

/-! ## A130570.P11521090254119256585

`record[A020639(A115036(n+1)+1)]`
-/

namespace A130570.P11521090254119256585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A115036 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130570.P11521090254119256585

/-! ## A130570.P4840284769964702359

`∩[A000040(n+1), A115036(n+1)+1]`
-/

namespace A130570.P4840284769964702359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130570.P4840284769964702359

/-! ## A130570.P7844598977224843144

`∩[A038550(n+1), A115036(n+1)+1]`
-/

namespace A130570.P7844598977224843144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130570.P7844598977224843144

/-!
# A130571: Lexicographically earliest permutation of the natural numbers such that in decimal representation the final digit of each term is distinct from the initial digit of the succeeding term.

The programs for A130571, there is no canonical definition to state claims against.
-/

/-! ## A130571.P8708187345297302286

`A130573(A130572(n))`
-/

namespace A130571.P8708187345297302286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A130572 n).toNat

end

end A130571.P8708187345297302286

/-! ## A130571.P14653779090216352637

`A239217(A028310(n))%A140494(n+1)`
-/

namespace A130571.P14653779090216352637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239217 (A028310 n).toNat) (A140494 (n + 1))

end

end A130571.P14653779090216352637

/-!
# A130572: Inverse permutation to A130571.

The programs for A130572, there is no canonical definition to state claims against.
-/

/-! ## A130572.P6899368649212600057

`A130574(A130571(n))`
-/

namespace A130572.P6899368649212600057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (A130571 n).toNat

end

end A130572.P6899368649212600057

/-!
# A130573: A130571(A130571(n)).

The programs for A130573, there is no canonical definition to state claims against.
-/

/-! ## A130573.P6403311255377029274

`A130571(A130571(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A130573.P6403311255377029274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (A130571 n).toNat

end

end A130573.P6403311255377029274

/-!
# A130574: A130572(A130572(n)).

The programs for A130574, there is no canonical definition to state claims against.
-/

/-! ## A130574.P18064708169293374545

`A130572(A130572(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A130574.P18064708169293374545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130572 (A130572 n).toNat

end

end A130574.P18064708169293374545

/-!
# A130575: Fixed points of the permutations A130571, A130572, A130573 and A130574.

The programs for A130575, there is no canonical definition to state claims against.
-/

/-! ## A130575.P17109188276115642278

`eq[n, A130571(n)]`
-/

namespace A130575.P17109188276115642278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130575.P17109188276115642278

/-! ## A130575.P16240352661955232775

`eq[n, A130572(n)]`
-/

namespace A130575.P16240352661955232775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130572 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130575.P16240352661955232775

/-! ## A130575.P16851315494731257731

`record[gcd(A000290(n), A130571(n))]`
-/

namespace A130575.P16851315494731257731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 n) (A130571 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130575.P16851315494731257731

/-! ## A130575.P6395902997078216710

`A130571(lt[(n-A130571(n))², 1])`
-/

namespace A130575.P6395902997078216710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A130571 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130575.P6395902997078216710

/-! ## A130575.P17881624179866815831

`comp[A102357(n+2)]%A162304(n+1)`
-/

namespace A130575.P17881624179866815831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102357 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A162304 (n + 1))

end

end A130575.P17881624179866815831

/-!
# A130576: Record values in A130571.

The programs for A130576, there is no canonical definition to state claims against.
-/

/-! ## A130576.P348967108615028315

`record[A130571(n)]`
-/

namespace A130576.P348967108615028315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130576.P348967108615028315

/-! ## A130576.P1582978124554838131

`lt[A130572(n), n+1]`
-/

namespace A130576.P1582978124554838131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130572 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A130576.P1582978124554838131

/-! ## A130576.P5278693500680803726

`A130571(A130577(n))`
-/

namespace A130576.P5278693500680803726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (A130577 n).toNat

end

end A130576.P5278693500680803726

/-! ## A130576.P2106398273197452917

`A130571(lt[n-1, A130571(n)])`
-/

namespace A130576.P2106398273197452917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130576.P2106398273197452917

/-!
# A130577: Where record values occur in A130571.

The programs for A130577, there is no canonical definition to state claims against.
-/

/-! ## A130577.P15912424325650855330

`lt[n, A130571(n)+1]`
-/

namespace A130577.P15912424325650855330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A130577.P15912424325650855330

/-! ## A130577.P15129655515284571792

`record[A130572(n)%(n+1)]`
-/

namespace A130577.P15129655515284571792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130572 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130577.P15129655515284571792

/-! ## A130577.P4119873791390307172

`A130572(A130576(n))`
-/

namespace A130577.P4119873791390307172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130572 (A130576 n).toNat

end

end A130577.P4119873791390307172

/-! ## A130577.P2218684027734602160

`A130572(lt[A130572(n), n+1])`
-/

namespace A130577.P2218684027734602160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130572 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130572 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130577.P2218684027734602160

/-! ## A130577.P12800354021265909974

`lt[A000217(n), A000124(A130571(n))]`
-/

namespace A130577.P12800354021265909974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A130571 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130577.P12800354021265909974

/-!
# A130578: Number of different possible rows (or columns) in an n X n crossword puzzle.

The programs for A130578, the canonical program `A130578.P5111612429403274779` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130578 has offset 1).

The definition of A130578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130578.P5111612429403274779

`A005252(n+2)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130578

/-- `A005252(n+2)-1` -/
def P5111612429403274779.Spec : Prop :=
  ∀ n, P5111612429403274779.a n = A130578 (n + 1)

theorem P5111612429403274779.correct : P5111612429403274779.Spec := by
  intro n
  simp only [A130578, Nat.add_sub_cancel]

end A130578

/-! ## A130578.P9812101541965650975

`∑[abs(A106511(n+2))]`
-/

namespace A130578.P9812101541965650975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106511 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130578.P9812101541965650975

namespace A130578

/-- `∑[abs(A106511(n+2))]` -/
def P9812101541965650975.Spec : Prop :=
  ∀ n, P9812101541965650975.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P14777946105188486462

`∑[A174618(2*n+1)]`
-/

namespace A130578.P14777946105188486462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130578.P14777946105188486462

namespace A130578

/-- `∑[A174618(2*n+1)]` -/
def P14777946105188486462.Spec : Prop :=
  ∀ n, P14777946105188486462.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P327013693463011812

`∑[abs(Δ[A005252(n+1)])]`
-/

namespace A130578.P327013693463011812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130578.P327013693463011812

namespace A130578

/-- `∑[abs(Δ[A005252(n+1)])]` -/
def P327013693463011812.Spec : Prop :=
  ∀ n, P327013693463011812.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P5608947637176497601

`A174618(2*(n+3))-1`
-/

namespace A130578.P5608947637176497601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (2 * (n + 3)) - 1

end

end A130578.P5608947637176497601

namespace A130578

/-- `A174618(2*(n+3))-1` -/
def P5608947637176497601.Spec : Prop :=
  ∀ n, P5608947637176497601.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P16030690177534725232

`∑[A000045(n)-a(n-3)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A130578.P16030690177534725232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  A000045 n - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130578.P16030690177534725232

namespace A130578

/-- `∑[A000045(n)-a(n-3)]` -/
def P16030690177534725232.Spec : Prop :=
  ∀ n, P16030690177534725232.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P7888723903401360502

`A000045(n+2)-(a(n-3)+2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A130578.P7888723903401360502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A000045 (n + 2) - (a (n - 3) + 2)

end

end A130578.P7888723903401360502

namespace A130578

/-- `A000045(n+2)-(a(n-3)+2)` -/
def P7888723903401360502.Spec : Prop :=
  ∀ n, P7888723903401360502.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P4119830050794754409

`A099517(n)-A088911(n)`
-/

namespace A130578.P4119830050794754409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099517 n - A088911 n

end

end A130578.P4119830050794754409

namespace A130578

/-- `A099517(n)-A088911(n)` -/
def P4119830050794754409.Spec : Prop :=
  ∀ n, P4119830050794754409.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P12525239026442950682

`A024490(n+2)-A164965(n)`
-/

namespace A130578.P12525239026442950682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) - A164965 n

end

end A130578.P12525239026442950682

namespace A130578

/-- `A024490(n+2)-A164965(n)` -/
def P12525239026442950682.Spec : Prop :=
  ∀ n, P12525239026442950682.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P12597676950467275086

`A179006(n+3)-A179006(n)`
-/

namespace A130578.P12597676950467275086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179006 (n + 3) - A179006 n

end

end A130578.P12597676950467275086

namespace A130578

/-- `A179006(n+3)-A179006(n)` -/
def P12597676950467275086.Spec : Prop :=
  ∀ n, P12597676950467275086.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P13023466882669433306

`∑[∑[A212804(n)]-A005252(n)]`
-/

namespace A130578.P13023466882669433306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130578.P13023466882669433306

namespace A130578

/-- `∑[∑[A212804(n)]-A005252(n)]` -/
def P13023466882669433306.Spec : Prop :=
  ∀ n, P13023466882669433306.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P10906754237480353815

`A173434(n+1)+A173434(n+2)`
-/

namespace A130578.P10906754237480353815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (n + 1) + A173434 (n + 2)

end

end A130578.P10906754237480353815

namespace A130578

/-- `A173434(n+1)+A173434(n+2)` -/
def P10906754237480353815.Spec : Prop :=
  ∀ n, P10906754237480353815.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P14782277836848265514

`A024490(n+2)-(A128834(n)+1)`
-/

namespace A130578.P14782277836848265514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) - (A128834 n + 1)

end

end A130578.P14782277836848265514

namespace A130578

/-- `A024490(n+2)-(A128834(n)+1)` -/
def P14782277836848265514.Spec : Prop :=
  ∀ n, P14782277836848265514.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P1048375350788684346

`A000045(n+1)+A000071(n+2)-A024490(n+2)`
-/

namespace A130578.P1048375350788684346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000071 (n + 2) - A024490 (n + 2))

end

end A130578.P1048375350788684346

namespace A130578

/-- `A000045(n+1)+A000071(n+2)-A024490(n+2)` -/
def P1048375350788684346.Spec : Prop :=
  ∀ n, P1048375350788684346.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P18352288953305852754

`A001595(n)-A226956(n)`
-/

namespace A130578.P18352288953305852754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n - A226956 n

end

end A130578.P18352288953305852754

namespace A130578

/-- `A001595(n)-A226956(n)` -/
def P18352288953305852754.Spec : Prop :=
  ∀ n, P18352288953305852754.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P9339640604805608005

`A001610(n)-A286350(n)`
-/

namespace A130578.P9339640604805608005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - A286350 n

end

end A130578.P9339640604805608005

namespace A130578

/-- `A001610(n)-A286350(n)` -/
def P9339640604805608005.Spec : Prop :=
  ∀ n, P9339640604805608005.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P7682409727910771738

`A000204(n+1)-(A286350(n)+1)`
-/

namespace A130578.P7682409727910771738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - (A286350 n + 1)

end

end A130578.P7682409727910771738

namespace A130578

/-- `A000204(n+1)-(A286350(n)+1)` -/
def P7682409727910771738.Spec : Prop :=
  ∀ n, P7682409727910771738.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P1546730816354764186

`A020695(n)-(A024490(n+2)+1)`
-/

namespace A130578.P1546730816354764186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - (A024490 (n + 2) + 1)

end

end A130578.P1546730816354764186

namespace A130578

/-- `A020695(n)-(A024490(n+2)+1)` -/
def P1546730816354764186.Spec : Prop :=
  ∀ n, P1546730816354764186.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P1417539552501432467

`A000071(n+3)-A024490(n+2)`
-/

namespace A130578.P1417539552501432467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - A024490 (n + 2)

end

end A130578.P1417539552501432467

namespace A130578

/-- `A000071(n+3)-A024490(n+2)` -/
def P1417539552501432467.Spec : Prop :=
  ∀ n, P1417539552501432467.a n = A130578 (n + 1)

end A130578

/-! ## A130578.P7037282430771418467

`∑[A174619(2*n+1)]-A174619(2*(n+1))`
-/

namespace A130578.P7037282430771418467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A174619 (2 * (n + 1))

end

end A130578.P7037282430771418467

namespace A130578

/-- `∑[A174619(2*n+1)]-A174619(2*(n+1))` -/
def P7037282430771418467.Spec : Prop :=
  ∀ n, P7037282430771418467.a n = A130578 (n + 1)

end A130578

/-!
# A130579: Convolution of A000108 (Catalan numbers) and A001764 (ternary trees): a(n) = Sum_{k=0..n} C(2k,k) * C(3(n-k),n-k) / [(k+1)(2(n-k)+1)].

The programs for A130579, there is no canonical definition to state claims against.
-/

/-! ## A130579.P1699701693446325656

`A026514(A084869(n))`
-/

namespace A130579.P1699701693446325656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026514 (A084869 n).toNat

end

end A130579.P1699701693446325656

/-! ## A130579.P2337827192960856607

`record[A072438(A279570(n))]`
-/

namespace A130579.P2337827192960856607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A279570 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130579.P2337827192960856607

/-!
# A130580: Triangle, read by rows, where column k = column 0 (shifted) of matrix power T^(k+1) for k>=0, with T(0,0)=1.

The programs for A130580, there is no canonical definition to state claims against.
-/

/-! ## A130580.P4585396493144440052

`A260998(A121395(n))`
-/

namespace A130580.P4585396493144440052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260998 (A121395 n).toNat

end

end A130580.P4585396493144440052

/-! ## A130580.P5740402688158654794

`A104307(A261318(n+1)+1)`
-/

namespace A130580.P5740402688158654794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104307 (A261318 (n + 1) + 1).toNat

end

end A130580.P5740402688158654794

/-! ## A130580.P17894986629655878423

`A323718(n)+A212619(A146767(n))`
-/

namespace A130580.P17894986629655878423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 n + A212619 (A146767 n).toNat

end

end A130580.P17894986629655878423

/-! ## A130580.P17054541969837821401

`A323718(n)+A212619(A323718(n)²)`
-/

namespace A130580.P17054541969837821401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 n + A212619 (A323718 n ^ 2).toNat

end

end A130580.P17054541969837821401

/-! ## A130580.P16460665743053788058

`A323718(n)+A309785(A331562(n+1))`
-/

namespace A130580.P16460665743053788058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 n + A309785 (A331562 (n + 1)).toNat

end

end A130580.P16460665743053788058

/-!
# A130581: Column 1 and row sums of triangle A130580.

The programs for A130581, there is no canonical definition to state claims against.
-/

/-! ## A130581.P15309562103029949284

`A130580(∑[n+1]+1)`
-/

namespace A130581.P15309562103029949284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A130581.P15309562103029949284

/-! ## A130581.P11322892925626696467

`A130580(A134869(n+1))+A025469(n)`
-/

namespace A130581.P11322892925626696467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (A134869 (n + 1)).toNat + A025469 n

end

end A130581.P11322892925626696467

/-! ## A130581.P14457897359121509583

`A178798(n)+A130580(A134869(n+1))`
-/

namespace A130581.P14457897359121509583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A130580 (A134869 (n + 1)).toNat

end

end A130581.P14457897359121509583

/-! ## A130581.P4685909410549819954

`A326688(n)+A130580(A134869(n+1))`
-/

namespace A130581.P4685909410549819954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A130580 (A134869 (n + 1)).toNat

end

end A130581.P4685909410549819954

/-! ## A130581.P5009215990961528317

`A130580(A134869(n+1))%A000051(n)`
-/

namespace A130581.P5009215990961528317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130580 (A134869 (n + 1)).toNat) (A000051 n)

end

end A130581.P5009215990961528317

/-!
# A130582: Column 2 of triangle A130580.

The programs for A130582, there is no canonical definition to state claims against.
-/

/-! ## A130582.P15764707649112318552

`A130580(∑[n+2]+3)`
-/

namespace A130582.P15764707649112318552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A130582.P15764707649112318552

/-! ## A130582.P13316135786185027962

`floor(root(A124555(2*n+1), 9))`
-/

namespace A130582.P13316135786185027962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124555 (2 * n + 1) : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A130582.P13316135786185027962

/-! ## A130582.P18426698703991363706

`A081386(A081349(n)+A081293(n))`
-/

namespace A130582.P18426698703991363706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (A081349 n + A081293 n).toNat

end

end A130582.P18426698703991363706

/-! ## A130582.P10910726238681688652

`A157271(A054317(n+3)*A260317(n+1))`
-/

namespace A130582.P10910726238681688652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A054317 (n + 3) * A260317 (n + 1)).toNat

end

end A130582.P10910726238681688652

/-!
# A130583: Column 3 of triangle A130580.

The programs for A130583, there is no canonical definition to state claims against.
-/

/-! ## A130583.P17345797620387769640

`A130580(A167614(n+2))`
-/

namespace A130583.P17345797620387769640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (A167614 (n + 2)).toNat

end

end A130583.P17345797620387769640

/-! ## A130583.P7619214670616882138

`A130580(A141214(n)+6)`
-/

namespace A130583.P7619214670616882138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (A141214 n + 6).toNat

end

end A130583.P7619214670616882138

/-! ## A130583.P5698345703099437074

`A130580(A052905(n)+8)`
-/

namespace A130583.P5698345703099437074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (A052905 n + 8).toNat

end

end A130583.P5698345703099437074

/-! ## A130583.P14057300349205111278

`A130580(A055999(n)+9)`
-/

namespace A130583.P14057300349205111278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (A055999 n + 9).toNat

end

end A130583.P14057300349205111278

/-! ## A130583.P3496470880158532188

`A130580(eq[2, A141169(n)])`
-/

namespace A130583.P3496470880158532188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130583.P3496470880158532188

/-!
# A130584: A007318 * A054522.

The programs for A130584, there is no canonical definition to state claims against.
-/

/-! ## A130584.P17765065318637621770

`A054526(n+1)*A101508(n)`
-/

namespace A130584.P17765065318637621770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A101508 n

end

end A130584.P17765065318637621770

/-! ## A130584.P14763898951152341125

`A000010(A002260(n+1))*A101508(n)`
-/

namespace A130584.P14763898951152341125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A101508 n

end

end A130584.P14763898951152341125

/-! ## A130584.P6704762313756221888

`A000010(A134868(n+1))*A101508(n)`
-/

namespace A130584.P6704762313756221888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134868 (n + 1)).toNat * A101508 n

end

end A130584.P6704762313756221888

/-! ## A130584.P463365242678199327

`A002260(A286235(n+1))*A101508(n)`
-/

namespace A130584.P463365242678199327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286235 (n + 1)).toNat * A101508 n

end

end A130584.P463365242678199327

/-! ## A130584.P14900260910590284032

`A054526(n+1)*A306915(A061579(n))`
-/

namespace A130584.P14900260910590284032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (n + 1) * A306915 (A061579 n).toNat

end

end A130584.P14900260910590284032

/-! ## A130584.P4779877349656982111

`A101508(n)*A163109(A059268(n))`
-/

namespace A130584.P4779877349656982111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 n * A163109 (A059268 n).toNat

end

end A130584.P4779877349656982111

/-! ## A130584.P13292941660746998928

`A101508(n)*A349137(A054582(n))`
-/

namespace A130584.P13292941660746998928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 n * A349137 (A054582 n).toNat

end

end A130584.P13292941660746998928

/-!
# A130586: Row sums of triangle A130585.

The programs for A130586, the canonical program `A130586.P17925529439959671154` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130586 has offset 0).

The definition of A130586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130586.P17925529439959671154

`∑{d}[n+1, A000010(#)*A011782(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130586

/-- `∑{d}[n+1, A000010(#)*A011782(#)]` -/
def P17925529439959671154.Spec : Prop :=
  ∀ n, P17925529439959671154.a n = A130586 n

theorem P17925529439959671154.correct : P17925529439959671154.Spec := by
  intro n
  simp only [A130586]

end A130586

/-! ## A130586.P9629522890838355197

`∑{d}[n+1, A000010(#)*A131577(#)]`
-/

namespace A130586.P9629522890838355197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A131577 d

end

end A130586.P9629522890838355197

namespace A130586

/-- `∑{d}[n+1, A000010(#)*A131577(#)]` -/
def P9629522890838355197.Spec : Prop :=
  ∀ n, P9629522890838355197.a n = A130586 n

end A130586

/-! ## A130586.P9597501867565777913

`∑{d}[n+1, A000010(#)*A156552(A000040(#))]`
-/

namespace A130586.P9597501867565777913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A156552 (A000040 d).toNat

end

end A130586.P9597501867565777913

namespace A130586

/-- `∑{d}[n+1, A000010(#)*A156552(A000040(#))]` -/
def P9597501867565777913.Spec : Prop :=
  ∀ n, P9597501867565777913.a n = A130586 n

end A130586

/-!
# A130587: Binomial transform of A130008.

The programs for A130587, there is no canonical definition to state claims against.
-/

/-! ## A130587.P17002051747841293829

`A129988(n)-A124761(A113405(n))`
-/

namespace A130587.P17002051747841293829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - A124761 (A113405 n).toNat

end

end A130587.P17002051747841293829

/-! ## A130587.P12699385416980616470

`A129988(n)-A151755(A210736(n))`
-/

namespace A130587.P12699385416980616470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - A151755 (A210736 n).toNat

end

end A130587.P12699385416980616470

/-! ## A130587.P7373666121589381297

`A129988(n)-A058343(A307970(n))`
-/

namespace A130587.P7373666121589381297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - A058343 (A307970 n).toNat

end

end A130587.P7373666121589381297

/-! ## A130587.P14271629635944072003

`A129988(n)-A185284(A203019(n))`
-/

namespace A130587.P14271629635944072003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - A185284 (A203019 n).toNat

end

end A130587.P14271629635944072003

/-! ## A130587.P9485764460481572132

`A129988(n)-A185284(A045320(n+1))`
-/

namespace A130587.P9485764460481572132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - A185284 (A045320 (n + 1)).toNat

end

end A130587.P9485764460481572132

/-!
# A130588: Integers which are not the sum of a 3-almost prime and a prime.

The programs for A130588, there is no canonical definition to state claims against.
-/

/-! ## A130588.P15601423920191531393

`A064653(A076084(n+2))`
-/

namespace A130588.P15601423920191531393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064653 (A076084 (n + 2)).toNat

end

end A130588.P15601423920191531393

/-! ## A130588.P3036080826821938128

`A064653(A151764(n+2))`
-/

namespace A130588.P3036080826821938128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064653 (A151764 (n + 2)).toNat

end

end A130588.P3036080826821938128

/-! ## A130588.P16983978465018390783

`A064653(A285054(n+2))`
-/

namespace A130588.P16983978465018390783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064653 (A285054 (n + 2)).toNat

end

end A130588.P16983978465018390783

/-! ## A130588.P17156444503588246795

`A351870(A064653(n+2))`
-/

namespace A130588.P17156444503588246795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A064653 (n + 2)).toNat

end

end A130588.P17156444503588246795

/-! ## A130588.P9098645875521883021

`A064653(A132033(n+1)+1)`
-/

namespace A130588.P9098645875521883021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064653 (A132033 (n + 1) + 1).toNat

end

end A130588.P9098645875521883021

/-!
# A130589: a(n) = F(F(n)-1), where F(n) = A000045(n) (the Fibonacci numbers).

The programs for A130589, there is no canonical definition to state claims against.
-/

/-! ## A130589.P8524547938861177672

`A000045(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A130589.P8524547938861177672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A130589.P8524547938861177672

/-! ## A130589.P15568450535273696021

`A212804(A000045(n))`
-/

namespace A130589.P15568450535273696021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A000045 n).toNat

end

end A130589.P15568450535273696021

/-! ## A130589.P17031164898870574338

`A247049(A022086(n))`
-/

namespace A130589.P17031164898870574338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A022086 n).toNat

end

end A130589.P17031164898870574338

/-! ## A130589.P7735666192556853093

`A247309(A286311(n))`
-/

namespace A130589.P7735666192556853093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A286311 n).toNat

end

end A130589.P7735666192556853093

/-! ## A130589.P3387928300839554882

`A247309(A286350(n))`
-/

namespace A130589.P3387928300839554882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A286350 n).toNat

end

end A130589.P3387928300839554882

/-!
# A130592: a(n+5) = (-8 + 5*n)*a(n-1) + (72 - 20*n)*a(n) + (-146 + 21*n)*a(n+1) + (128 - 8*n)*a(n+2) + (-56 + n)*a(n+3) + 12*a(n+4).

The programs for A130592, there is no canonical definition to state claims against.
-/

/-! ## A130592.P7317452981241056838

`A107231(2*n)-A338915(A338915(3*(n+1)))`
-/

namespace A130592.P7317452981241056838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107231 (2 * n) - A338915 (A338915 (3 * (n + 1))).toNat

end

end A130592.P7317452981241056838

/-!
# A130593: Evil semiprimes.

The programs for A130593, the canonical program `A130593.P16939163601674739257` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130593 has offset 1).

The definition of A130593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130593.P12277711787859161447

`filter[A125494(n+1), A064911(#)]`
-/

namespace A130593.P12277711787859161447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A130593.P12277711787859161447

namespace A130593

/-- `filter[A125494(n+1), A064911(#)]` -/
def P12277711787859161447.Spec : Prop :=
  ∀ n, P12277711787859161447.a n = A130593 (n + 1)

end A130593

/-! ## A130593.P493880352973038060

`filter[A125494(n+1), A101040(#)]`
-/

namespace A130593.P493880352973038060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A130593.P493880352973038060

namespace A130593

/-- `filter[A125494(n+1), A101040(#)]` -/
def P493880352973038060.Spec : Prop :=
  ∀ n, P493880352973038060.a n = A130593 (n + 1)

end A130593

/-! ## A130593.P8584602670727407608

`∩[A001358(n+1), A125494(n+1)]`
-/

namespace A130593.P8584602670727407608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130593.P8584602670727407608

namespace A130593

/-- `∩[A001358(n+1), A125494(n+1)]` -/
def P8584602670727407608.Spec : Prop :=
  ∀ n, (P8584602670727407608.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P16939163601674739257

`∩[A037143(n+1), A125494(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130593

/-- `∩[A037143(n+1), A125494(n+1)]` -/
def P16939163601674739257.Spec : Prop :=
  ∀ n, (P16939163601674739257.a n : ℤ) = A130593 (n + 1)

theorem P16939163601674739257.correct : P16939163601674739257.Spec := by
  intro n
  simp only [A130593, Nat.add_sub_cancel]

end A130593

/-! ## A130593.P9581150857808501404

`∩[A125494(n+1), A176540(n+1)]`
-/

namespace A130593.P9581150857808501404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130593.P9581150857808501404

namespace A130593

/-- `∩[A125494(n+1), A176540(n+1)]` -/
def P9581150857808501404.Spec : Prop :=
  ∀ n, (P9581150857808501404.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P6138753848265820571

`filter[A001969(n+2), A064911(#)]`
-/

namespace A130593.P6138753848265820571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A130593.P6138753848265820571

namespace A130593

/-- `filter[A001969(n+2), A064911(#)]` -/
def P6138753848265820571.Spec : Prop :=
  ∀ n, P6138753848265820571.a n = A130593 (n + 1)

end A130593

/-! ## A130593.P16934264065944058017

`∩[A001358(n+1), A001969(n+1)]`
-/

namespace A130593.P16934264065944058017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130593.P16934264065944058017

namespace A130593

/-- `∩[A001358(n+1), A001969(n+1)]` -/
def P16934264065944058017.Spec : Prop :=
  ∀ n, (P16934264065944058017.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P2325390954004389872

`∩[A001969(n+1), A176540(n+1)]`
-/

namespace A130593.P2325390954004389872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130593.P2325390954004389872

namespace A130593

/-- `∩[A001969(n+1), A176540(n+1)]` -/
def P2325390954004389872.Spec : Prop :=
  ∀ n, (P2325390954004389872.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P6701353142080737168

`eq[n, A374897(A102391(n))]`
-/

namespace A130593.P6701353142080737168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 (A102391 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130593.P6701353142080737168

namespace A130593

/-- `eq[n, A374897(A102391(n))]` -/
def P6701353142080737168.Spec : Prop :=
  ∀ n, (P6701353142080737168.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P7348204456351953083

`eq[log2(A226378(n)), A106400(n)]`
-/

namespace A130593.P7348204456351953083
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A226378 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A130593.P7348204456351953083

namespace A130593

/-- `eq[log2(A226378(n)), A106400(n)]` -/
def P7348204456351953083.Spec : Prop :=
  ∀ n, (P7348204456351953083.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P4469075067922693830

`filter[A001358(n+1), A010059(#)]`
-/

namespace A130593.P4469075067922693830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A130593.P4469075067922693830

namespace A130593

/-- `filter[A001358(n+1), A010059(#)]` -/
def P4469075067922693830.Spec : Prop :=
  ∀ n, P4469075067922693830.a n = A130593 (n + 1)

end A130593

/-! ## A130593.P6330447043433537416

`filter[A001358(n+1), A092436(#)]`
-/

namespace A130593.P6330447043433537416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A130593.P6330447043433537416

namespace A130593

/-- `filter[A001358(n+1), A092436(#)]` -/
def P6330447043433537416.Spec : Prop :=
  ∀ n, P6330447043433537416.a n = A130593 (n + 1)

end A130593

/-! ## A130593.P3832877201856914062

`filter[A176540(n+1), A010059(#)]`
-/

namespace A130593.P3832877201856914062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A130593.P3832877201856914062

namespace A130593

/-- `filter[A176540(n+1), A010059(#)]` -/
def P3832877201856914062.Spec : Prop :=
  ∀ n, P3832877201856914062.a n = A130593 (n + 1)

end A130593

/-! ## A130593.P1954653685651712898

`filter[A176540(n+1), A092436(#)]`
-/

namespace A130593.P1954653685651712898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A130593.P1954653685651712898

namespace A130593

/-- `filter[A176540(n+1), A092436(#)]` -/
def P1954653685651712898.Spec : Prop :=
  ∀ n, P1954653685651712898.a n = A130593 (n + 1)

end A130593

/-! ## A130593.P10493911771915083572

`eq[A093505(n+1), A374897(n)]`
-/

namespace A130593.P10493911771915083572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130593.P10493911771915083572

namespace A130593

/-- `eq[A093505(n+1), A374897(n)]` -/
def P10493911771915083572.Spec : Prop :=
  ∀ n, (P10493911771915083572.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P5472572270814027230

`eq[A161560(n+1), A374897(n)]`
-/

namespace A130593.P5472572270814027230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130593.P5472572270814027230

namespace A130593

/-- `eq[A161560(n+1), A374897(n)]` -/
def P5472572270814027230.Spec : Prop :=
  ∀ n, (P5472572270814027230.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P6673083010976988962

`eq[A268727(n)+1, A284289(n)]`
-/

namespace A130593.P6673083010976988962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130593.P6673083010976988962

namespace A130593

/-- `eq[A268727(n)+1, A284289(n)]` -/
def P6673083010976988962.Spec : Prop :=
  ∀ n, (P6673083010976988962.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P3010819608624524888

`eq[(1-A226378(n))², A001285(n)]`
-/

namespace A130593.P3010819608624524888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A226378 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130593.P3010819608624524888

namespace A130593

/-- `eq[(1-A226378(n))², A001285(n)]` -/
def P3010819608624524888.Spec : Prop :=
  ∀ n, (P3010819608624524888.a n : ℤ) = A130593 (n + 1)

end A130593

/-! ## A130593.P11219523509335688206

`filter[A129767(2*(n+1)), A010059(#)]`
-/

namespace A130593.P11219523509335688206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A130593.P11219523509335688206

namespace A130593

/-- `filter[A129767(2*(n+1)), A010059(#)]` -/
def P11219523509335688206.Spec : Prop :=
  ∀ n, P11219523509335688206.a n = A130593 (n + 1)

end A130593

/-! ## A130593.P12940920225204422722

`filter[A129767(2*(n+1)), A092436(#)]`
-/

namespace A130593.P12940920225204422722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A130593.P12940920225204422722

namespace A130593

/-- `filter[A129767(2*(n+1)), A092436(#)]` -/
def P12940920225204422722.Spec : Prop :=
  ∀ n, P12940920225204422722.a n = A130593 (n + 1)

end A130593

/-!
# A130594: Numbers which are both lucky (A000959) and tribonacci (A000073).

The programs for A130594, there is no canonical definition to state claims against.
-/

/-! ## A130594.P2081442236108080651

`A089068(∑[xor(n, n+1)])+1`
-/

namespace A130594.P2081442236108080651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A130594.P2081442236108080651

/-!
# A130595: Triangle read by rows: lower triangular matrix which is inverse to Pascal's triangle (A007318) regarded as a lower triangular matrix.

The programs for A130595, the canonical program `A130595.P3475276304996858965` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130595 has offset 0).

The definition of A130595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130595.P10204805650877941680

`A091917(n)+A073424(n)`
-/

namespace A130595.P10204805650877941680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n + A073424 n

end

end A130595.P10204805650877941680

namespace A130595

/-- `A091917(n)+A073424(n)` -/
def P10204805650877941680.Spec : Prop :=
  ∀ n, P10204805650877941680.a n = A130595 n

end A130595

/-! ## A130595.P15518253572371555130

`A010054(n)-A140575(n)`
-/

namespace A130595.P15518253572371555130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n - A140575 n

end

end A130595.P15518253572371555130

namespace A130595

/-- `A010054(n)-A140575(n)` -/
def P15518253572371555130.Spec : Prop :=
  ∀ n, P15518253572371555130.a n = A130595 n

end A130595

/-! ## A130595.P1000489097701174457

`A028326(n)-A162315(n)`
-/

namespace A130595.P1000489097701174457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A162315 n

end

end A130595.P1000489097701174457

namespace A130595

/-- `A028326(n)-A162315(n)` -/
def P1000489097701174457.Spec : Prop :=
  ∀ n, P1000489097701174457.a n = A130595 n

end A130595

/-! ## A130595.P2206867744849937189

`A216973(n)-A144389(n)`
-/

namespace A130595.P2206867744849937189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n - A144389 n

end

end A130595.P2206867744849937189

namespace A130595

/-- `A216973(n)-A144389(n)` -/
def P2206867744849937189.Spec : Prop :=
  ∀ n, P2206867744849937189.a n = A130595 n

end A130595

/-! ## A130595.P3475276304996858965

`A007318(n)*A097807(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130595

/-- `A007318(n)*A097807(n)` -/
def P3475276304996858965.Spec : Prop :=
  ∀ n, P3475276304996858965.a n = A130595 n

theorem P3475276304996858965.correct : P3475276304996858965.Spec := by
  intro n
  simp only [A130595]

end A130595

/-! ## A130595.P16632453286119839369

`A317498(n)/A036561(n)`
-/

namespace A130595.P16632453286119839369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317498 n : ℚ) / (A036561 n : ℚ)

end

end A130595.P16632453286119839369

namespace A130595

/-- `A317498(n)/A036561(n)` -/
def P16632453286119839369.Spec : Prop :=
  ∀ n, P16632453286119839369.a n = (A130595 n : ℚ)

end A130595

/-! ## A130595.P5424338279738826057

`A303872(n)/A059268(n)`
-/

namespace A130595.P5424338279738826057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303872 n : ℚ) / (A059268 n : ℚ)

end

end A130595.P5424338279738826057

namespace A130595

/-- `A303872(n)/A059268(n)` -/
def P5424338279738826057.Spec : Prop :=
  ∀ n, P5424338279738826057.a n = (A130595 n : ℚ)

end A130595

/-! ## A130595.P18226909836996666050

`or(A010054(n), A091917(n))`
-/

namespace A130595.P18226909836996666050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A091917 n)

end

end A130595.P18226909836996666050

namespace A130595

/-- `or(A010054(n), A091917(n))` -/
def P18226909836996666050.Spec : Prop :=
  ∀ n, P18226909836996666050.a n = A130595 n

end A130595

/-! ## A130595.P5082544980478894345

`A103283(n)/A004736(n+1)`
-/

namespace A130595.P5082544980478894345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103283 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A130595.P5082544980478894345

namespace A130595

/-- `A103283(n)/A004736(n+1)` -/
def P5082544980478894345.Spec : Prop :=
  ∀ n, P5082544980478894345.a n = (A130595 n : ℚ)

end A130595

/-! ## A130595.P14738613149022670012

`A103406(n)/A140756(n+1)`
-/

namespace A130595.P14738613149022670012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103406 n : ℚ) / (A140756 (n + 1) : ℚ)

end

end A130595.P14738613149022670012

namespace A130595

/-- `A103406(n)/A140756(n+1)` -/
def P14738613149022670012.Spec : Prop :=
  ∀ n, P14738613149022670012.a n = (A130595 n : ℚ)

end A130595

/-! ## A130595.P3023757359391540646

`2*A119467(n)-A007318(n)`
-/

namespace A130595.P3023757359391540646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119467 n - A007318 n

end

end A130595.P3023757359391540646

namespace A130595

/-- `2*A119467(n)-A007318(n)` -/
def P3023757359391540646.Spec : Prop :=
  ∀ n, P3023757359391540646.a n = A130595 n

end A130595

/-! ## A130595.P13364619767544532849

`2*A007318(n)-A162315(n)`
-/

namespace A130595.P13364619767544532849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A162315 n

end

end A130595.P13364619767544532849

namespace A130595

/-- `2*A007318(n)-A162315(n)` -/
def P13364619767544532849.Spec : Prop :=
  ∀ n, P13364619767544532849.a n = A130595 n

end A130595

/-! ## A130595.P2341058350706790621

`2*A239473(n)-A112468(n)`
-/

namespace A130595.P2341058350706790621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239473 n - A112468 n

end

end A130595.P2341058350706790621

namespace A130595

/-- `2*A239473(n)-A112468(n)` -/
def P2341058350706790621.Spec : Prop :=
  ∀ n, P2341058350706790621.a n = A130595 n

end A130595

/-! ## A130595.P3223753112905422713

`A028326(n)/(2*A097807(n))`
-/

namespace A130595.P3223753112905422713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (2 * A097807 n : ℚ)

end

end A130595.P3223753112905422713

namespace A130595

/-- `A028326(n)/(2*A097807(n))` -/
def P3223753112905422713.Spec : Prop :=
  ∀ n, P3223753112905422713.a n = (A130595 n : ℚ)

end A130595

/-! ## A130595.P14878090497939835033

`2*A119467(n)-Δ[A102363(n)]`
-/

namespace A130595.P14878090497939835033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119467 n - (f1 (n + 1) - f1 n)

end

end A130595.P14878090497939835033

namespace A130595

/-- `2*A119467(n)-Δ[A102363(n)]` -/
def P14878090497939835033.Spec : Prop :=
  ∀ n, P14878090497939835033.a n = A130595 n

end A130595

/-! ## A130595.P6966200075791381061

`A091917(n)+char[A000096(n)+1]`
-/

namespace A130595.P6966200075791381061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A130595.P6966200075791381061

namespace A130595

/-- `A091917(n)+char[A000096(n)+1]` -/
def P6966200075791381061.Spec : Prop :=
  ∀ n, P6966200075791381061.a n = A130595 n

end A130595

/-! ## A130595.P11317637464246649464

`or(A000007(A002262(n)), A091917(n))`
-/

namespace A130595.P11317637464246649464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A002262 n).toNat) (A091917 n)

end

end A130595.P11317637464246649464

namespace A130595

/-- `or(A000007(A002262(n)), A091917(n))` -/
def P11317637464246649464.Spec : Prop :=
  ∀ n, P11317637464246649464.a n = A130595 n

end A130595

/-! ## A130595.P3112209978498728059

`A007318(n)*A062157(A025581(n)+1)`
-/

namespace A130595.P3112209978498728059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A062157 (A025581 n + 1).toNat

end

end A130595.P3112209978498728059

namespace A130595

/-- `A007318(n)*A062157(A025581(n)+1)` -/
def P3112209978498728059.Spec : Prop :=
  ∀ n, P3112209978498728059.a n = A130595 n

end A130595

/-! ## A130595.P18041815780045193479

`A007318(n)*A062157(A051933(n)+1)`
-/

namespace A130595.P18041815780045193479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A062157 (A051933 n + 1).toNat

end

end A130595.P18041815780045193479

namespace A130595

/-- `A007318(n)*A062157(A051933(n)+1)` -/
def P18041815780045193479.Spec : Prop :=
  ∀ n, P18041815780045193479.a n = A130595 n

end A130595

/-! ## A130595.P3105851458859952094

`A007318(n)*A057077(2*A025581(n))`
-/

namespace A130595.P3105851458859952094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057077 (2 * A025581 n).toNat

end

end A130595.P3105851458859952094

namespace A130595

/-- `A007318(n)*A057077(2*A025581(n))` -/
def P3105851458859952094.Spec : Prop :=
  ∀ n, P3105851458859952094.a n = A130595 n

end A130595

/-!
# A130596: Partial sums of skinny numbers (A061909).

The programs for A130596, there is no canonical definition to state claims against.
-/

/-! ## A130596.P8648625227562682134

`∑[A061909(n+2)]`
-/

namespace A130596.P8648625227562682134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130596.P8648625227562682134

/-! ## A130596.P4808203273692292974

`∑[sqrt(A129967(n+2))]`
-/

namespace A130596.P4808203273692292974
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A129967 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130596.P4808203273692292974

/-! ## A130596.P13413744449205214176

`a(n-1)+A061909(n+2)+A000007(n)` with `a(0)=1`
-/

namespace A130596.P13413744449205214176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A061909 (n + 2) + A000007 n)

end

end A130596.P13413744449205214176

/-! ## A130596.P12435293980780752971

`a(n-1)+A000038(n)+sqrt(A129967(n+2))` with `a(0)=1`
-/

namespace A130596.P12435293980780752971
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((A000038 n : ℝ) + Real.sqrt (A129967 (n + 2) : ℝ))

end

end A130596.P12435293980780752971

/-! ## A130596.P2189325147926661812

`a(n-1)+sqrt(A129967(n+2))%A000056(n+1)` with `a(0)=1`
-/

namespace A130596.P2189325147926661812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A129967 (n + 2) : ℝ))) (A000056 (n + 1))

end

end A130596.P2189325147926661812

/-! ## A130596.P4275100569930389538

`∑[eq[0, A067552(n+1)]+1]`
-/

namespace A130596.P4275100569930389538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130596.P4275100569930389538

/-! ## A130596.P7180977583101783532

`∑[eq[2, A022112(A069912(n+1))]+1]`
-/

namespace A130596.P7180977583101783532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 (A069912 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130596.P7180977583101783532

/-! ## A130596.P4699462022371951362

`∑[eq[A004159(n+1), A118881(n+1)]+1]`
-/

namespace A130596.P4699462022371951362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130596.P4699462022371951362

/-!
# A130598: A shell geometric model of the nucleus. The location of the magic numbers. A triangle.

The programs for A130598, there is no canonical definition to state claims against.
-/

/-! ## A130598.P5773948110587155066

`A130602(n+1)-A162518(A210984(n+1))`
-/

namespace A130598.P5773948110587155066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130602 (n + 1) - A162518 (A210984 (n + 1)).toNat

end

end A130598.P5773948110587155066

/-! ## A130598.P11345453638525672755

`A130602(n+1)-A162518(A212014(n+1))`
-/

namespace A130598.P11345453638525672755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130602 (n + 1) - A162518 (A212014 (n + 1)).toNat

end

end A130598.P11345453638525672755

/-! ## A130598.P7883780682855048037

`A130602(n+1)-A162518(A212124(n+1))`
-/

namespace A130598.P7883780682855048037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130602 (n + 1) - A162518 (A212124 (n + 1)).toNat

end

end A130598.P7883780682855048037

/-! ## A130598.P15063510279775812765

`A130602(n+1)-A162518(∑[A162630(n+1)])`
-/

namespace A130598.P15063510279775812765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130602 (n + 1) - A162518 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130598.P15063510279775812765

/-! ## A130598.P8785480524013804331

`A130602(n+1)-A162518(∑[A212012(n+1)])`
-/

namespace A130598.P8785480524013804331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130602 (n + 1) - A162518 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130598.P8785480524013804331

/-!
# A130599: Transformation of sequence 3^k by sandwiching it between 1's.

The programs for A130599, the canonical program `A130599.P18442716534009562850` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130599 has offset 0).

The definition of A130599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130599.P18442716534009562850

`4*a(n-2)-3*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130599

/-- `4*a(n-2)-3*a(n-4)` -/
def P18442716534009562850.Spec : Prop :=
  ∀ n, P18442716534009562850.a n = A130599 n

theorem P18442716534009562850.correct : P18442716534009562850.Spec := by
  intro n
  simp only [A130599]

end A130599

/-! ## A130599.P15705021657629581947

`3^Δ[C(floor(n/2), 2)]`
-/

namespace A130599.P15705021657629581947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A130599.P15705021657629581947

namespace A130599

/-- `3^Δ[C(floor(n/2), 2)]` -/
def P15705021657629581947.Spec : Prop :=
  ∀ n, P15705021657629581947.a n = (A130599 n : ℚ)

end A130599

/-! ## A130599.P3568560840158276212

`sqrt(3)^((n-1)*and(1, n))`
-/

namespace A130599.P3568560840158276212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) ^ (((n : ℤ) - 1) * (Nat.land 1 n : ℤ) : ℤ)

end

end A130599.P3568560840158276212

namespace A130599

/-- `sqrt(3)^((n-1)*and(1, n))` -/
def P3568560840158276212.Spec : Prop :=
  ∀ n, P3568560840158276212.a n = (A130599 n : ℝ)

end A130599

/-! ## A130599.P15432423186057434954

`sqrt(3^(n%2))^(n-1)`
-/

namespace A130599.P15432423186057434954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 ^ (n % 2) : ℝ) ^ ((n : ℤ) - 1 : ℤ)

end

end A130599.P15432423186057434954

namespace A130599

/-- `sqrt(3^(n%2))^(n-1)` -/
def P15432423186057434954.Spec : Prop :=
  ∀ n, P15432423186057434954.a n = (A130599 n : ℝ)

end A130599

/-! ## A130599.P12157176132696557088

`sqrt(3^and(1, n))^(n-1)`
-/

namespace A130599.P12157176132696557088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 ^ Nat.land 1 n : ℝ) ^ ((n : ℤ) - 1 : ℤ)

end

end A130599.P12157176132696557088

namespace A130599

/-- `sqrt(3^and(1, n))^(n-1)` -/
def P12157176132696557088.Spec : Prop :=
  ∀ n, P12157176132696557088.a n = (A130599 n : ℝ)

end A130599

/-! ## A130599.P9633952839522707150

`3^floor(n^and(1, n)/2)`
-/

namespace A130599.P9633952839522707150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n ^ Nat.land 1 n : ℚ) / 2⌋ : ℤ)

end

end A130599.P9633952839522707150

namespace A130599

/-- `3^floor(n^and(1, n)/2)` -/
def P9633952839522707150.Spec : Prop :=
  ∀ n, P9633952839522707150.a n = (A130599 n : ℚ)

end A130599

/-! ## A130599.P6267450538717851623

`(2-(-1)^n)^floor(n/2)`
-/

namespace A130599.P6267450538717851623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (-1) ^ n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A130599.P6267450538717851623

namespace A130599

/-- `(2-(-1)^n)^floor(n/2)` -/
def P6267450538717851623.Spec : Prop :=
  ∀ n, P6267450538717851623.a n = (A130599 n : ℚ)

end A130599

/-! ## A130599.P3800874233210365352

`(2-(-1)^n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A130599.P3800874233210365352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 - (-1) ^ n) * a (n - 2)

end

end A130599.P3800874233210365352

namespace A130599

/-- `(2-(-1)^n)*a(n-2)` -/
def P3800874233210365352.Spec : Prop :=
  ∀ n, P3800874233210365352.a n = A130599 n

end A130599

/-! ## A130599.P3258077447441444520

`floor(3/gcd(2, n)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A130599.P3258077447441444520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊3 / (Nat.gcd 2 n : ℚ) * (a (n - 2) : ℚ)⌋

end

end A130599.P3258077447441444520

namespace A130599

/-- `floor(3/gcd(2, n)*a(n-2))` -/
def P3258077447441444520.Spec : Prop :=
  ∀ n, P3258077447441444520.a n = A130599 n

end A130599

/-! ## A130599.P6751190471606635968

`(and(3, 2*n+1)^((n-1)/4))²`
-/

namespace A130599.P6751190471606635968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.land 3 (2 * n + 1) : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 4 : ℝ)) ^ 2

end

end A130599.P6751190471606635968

namespace A130599

/-- `(and(3, 2*n+1)^((n-1)/4))²` -/
def P6751190471606635968.Spec : Prop :=
  ∀ n, P6751190471606635968.a n = (A130599 n : ℝ)

end A130599

/-! ## A130599.P13330363440293179980

`ceil(and(3, 2*n+1)^((n-1)/2))`
-/

namespace A130599.P13330363440293179980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 3 (2 * n + 1) : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌉

end

end A130599.P13330363440293179980

namespace A130599

/-- `ceil(and(3, 2*n+1)^((n-1)/2))` -/
def P13330363440293179980.Spec : Prop :=
  ∀ n, P13330363440293179980.a n = A130599 n

end A130599

/-! ## A130599.P8882659831399080631

`round(and(3, 2*n+1)^((n-1)/2))`
-/

namespace A130599.P8882659831399080631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 3 (2 * n + 1) : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ))

end

end A130599.P8882659831399080631

namespace A130599

/-- `round(and(3, 2*n+1)^((n-1)/2))` -/
def P8882659831399080631.Spec : Prop :=
  ∀ n, P8882659831399080631.a n = A130599 n

end A130599

/-! ## A130599.P1229697145586907436

`gcd(1-a(n-1), 3*a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A130599.P1229697145586907436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.gcd (1 - (a (n - 1) : ℤ)) (3 * a (n - 2) : ℤ)

end

end A130599.P1229697145586907436

namespace A130599

/-- `gcd(1-a(n-1), 3*a(n-2))` -/
def P1229697145586907436.Spec : Prop :=
  ∀ n, (P1229697145586907436.a n : ℤ) = A130599 n

end A130599

/-! ## A130599.P2016848164175134413

`A074324(lcm(2, n)-n)`
-/

namespace A130599.P2016848164175134413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (Nat.lcm 2 n - n)

end

end A130599.P2016848164175134413

namespace A130599

/-- `A074324(lcm(2, n)-n)` -/
def P2016848164175134413.Spec : Prop :=
  ∀ n, P2016848164175134413.a n = A130599 n

end A130599

/-! ## A130599.P9359315180091198493

`A108411(n*and(1, n))`
-/

namespace A130599.P9359315180091198493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n * Nat.land 1 n)

end

end A130599.P9359315180091198493

namespace A130599

/-- `A108411(n*and(1, n))` -/
def P9359315180091198493.Spec : Prop :=
  ∀ n, P9359315180091198493.a n = A130599 n

end A130599

/-! ## A130599.P11960836823935085150

`A182522(n*and(1, n))`
-/

namespace A130599.P11960836823935085150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n * Nat.land 1 n)

end

end A130599.P11960836823935085150

namespace A130599

/-- `A182522(n*and(1, n))` -/
def P11960836823935085150.Spec : Prop :=
  ∀ n, P11960836823935085150.a n = A130599 n

end A130599

/-! ## A130599.P10354854250833720385

`A018051(A019425(n))`
-/

namespace A130599.P10354854250833720385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018051 (A019425 n).toNat

end

end A130599.P10354854250833720385

namespace A130599

/-- `A018051(A019425(n))` -/
def P10354854250833720385.Spec : Prop :=
  ∀ n, P10354854250833720385.a n = A130599 n

end A130599

/-! ## A130599.P11216399737814481191

`A030439(A093178(n))`
-/

namespace A130599.P11216399737814481191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030439 (A093178 n).toNat

end

end A130599.P11216399737814481191

namespace A130599

/-- `A030439(A093178(n))` -/
def P11216399737814481191.Spec : Prop :=
  ∀ n, P11216399737814481191.a n = A130599 n

end A130599

/-! ## A130599.P14789936122652244358

`A017913(A124625(n))`
-/

namespace A130599.P14789936122652244358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A124625 n).toNat

end

end A130599.P14789936122652244358

namespace A130599

/-- `A017913(A124625(n))` -/
def P14789936122652244358.Spec : Prop :=
  ∀ n, P14789936122652244358.a n = A130599 n

end A130599

