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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B013.C000
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
# A050600: Recursion counts for summation table A003056 with formula a(y,0) = y, a(y,x) = a((y XOR x),2*(y AND x)).

The programs for A050600, there is no canonical definition to state claims against.
-/

/-! ## A050600.P11998813275152433371

`A050602(n)+A023532(n)`
-/

namespace A050600.P11998813275152433371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + A023532 n

end

end A050600.P11998813275152433371

/-! ## A050600.P14094132549869094359

`A050602(n)+Δ[A083920(n)]`
-/

namespace A050600.P14094132549869094359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + (f1 (n + 1) - f1 n)

end

end A050600.P14094132549869094359

/-! ## A050600.P2329852853241044471

`A050602(n)+1-Δ[A003056(n)]`
-/

namespace A050600.P2329852853241044471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + (1 - (f1 (n + 1) - f1 n))

end

end A050600.P2329852853241044471

/-! ## A050600.P11236111284355132017

`A050602(n)+char[A007401(n+1)]`
-/

namespace A050600.P11236111284355132017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A050600.P11236111284355132017

/-! ## A050600.P13008737377500348309

`A057427(A025581(n))+A050602(n)`
-/

namespace A050600.P13008737377500348309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025581 n).toNat + A050602 n

end

end A050600.P13008737377500348309

/-! ## A050600.P14760992076041068339

`A057427(A051933(n))+A050602(n)`
-/

namespace A050600.P14760992076041068339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A051933 n).toNat + A050602 n

end

end A050600.P14760992076041068339

/-! ## A050600.P3090887692319385551

`A050602(n)+A000007(A127648(n))`
-/

namespace A050600.P3090887692319385551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + A000007 (A127648 n).toNat

end

end A050600.P3090887692319385551

/-! ## A050600.P1352565812291563463

`A057979(A134082(n))+A050602(n)`
-/

namespace A050600.P1352565812291563463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A134082 n).toNat + A050602 n

end

end A050600.P1352565812291563463

/-! ## A050600.P14210817053946636390

`A050602(n)+Δ[A122797(n+1)]`
-/

namespace A050600.P14210817053946636390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + (f1 (n + 1) - f1 n)

end

end A050600.P14210817053946636390

/-! ## A050600.P11131462762840620478

`A050602(n)+A001221(Δ[A001614(n+1)])`
-/

namespace A050600.P11131462762840620478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + A001221 (f1 (n + 1) - f1 n).toNat

end

end A050600.P11131462762840620478

/-! ## A050600.P13770423439234091958

`A050602(n)+A001222(Δ[A001614(n+1)])`
-/

namespace A050600.P13770423439234091958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + A001222 (f1 (n + 1) - f1 n).toNat

end

end A050600.P13770423439234091958

/-! ## A050600.P4798615522822503819

`A050602(n)+A002262(Δ[A001614(n+1)])`
-/

namespace A050600.P4798615522822503819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + A002262 (f1 (n + 1) - f1 n).toNat

end

end A050600.P4798615522822503819

/-! ## A050600.P15025931287869253554

`A050602(n)+A006463(Δ[A001614(n+1)])`
-/

namespace A050600.P15025931287869253554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + A006463 (f1 (n + 1) - f1 n).toNat

end

end A050600.P15025931287869253554

/-! ## A050600.P16696002965827302922

`A050601(A185869(n+1))`
-/

namespace A050600.P16696002965827302922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050601 (A185869 (n + 1)).toNat

end

end A050600.P16696002965827302922

/-! ## A050600.P2830013506575535758

`A050602(n)+A001221(A130321(n))`
-/

namespace A050600.P2830013506575535758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n + A001221 (A130321 n).toNat

end

end A050600.P2830013506575535758

/-!
# A050601: Recursion counts for summation table A003056 with formula a(0,x) = x, a(y,0) = y, a(y,x) = a((y XOR x),2*(y AND x)).

The programs for A050601, there is no canonical definition to state claims against.
-/

/-! ## A050601.P1603551642718529681

`∑{e}[A124770(A157152(n)), #]`
-/

namespace A050601.P1603551642718529681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A157152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A050601.P1603551642718529681

/-! ## A050601.P11112960549209863991

`A001222(A124770(A157152(n)))`
-/

namespace A050601.P11112960549209863991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A124770 (A157152 n).toNat).toNat

end

end A050601.P11112960549209863991

/-! ## A050601.P6928917064619884016

`∑{e}[∑{e}[A060187(n+1), A054541(#)]+1, #]`
-/

namespace A050601.P6928917064619884016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A054541 (Nat.factorization (f2 n).natAbs p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A050601.P6928917064619884016

/-! ## A050601.P7542931536616627595

`A001222(∑{e}[A060187(n+1), A054541(#)]+1)`
-/

namespace A050601.P7542931536616627595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054541 (Nat.factorization (f1 n).natAbs p) + 1).toNat

end

end A050601.P7542931536616627595

/-! ## A050601.P12000253420451219014

`A375571(A103450(n))`
-/

namespace A050601.P12000253420451219014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375571 (A103450 n).toNat

end

end A050601.P12000253420451219014

/-!
# A050602: Square array A(x,y), read by antidiagonals, where A(x,y) = 0 if (x AND y) = 0, otherwise A(x,y) = 1+A(x XOR y, 2*(x AND y)).

The programs for A050602, there is no canonical definition to state claims against.
-/

/-! ## A050602.P5555082462060788107

`A050600(n)-A023532(n)`
-/

namespace A050602.P5555082462060788107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - A023532 n

end

end A050602.P5555082462060788107

/-! ## A050602.P14131602958925559880

`A050600(n)-Δ[A083920(n)]`
-/

namespace A050602.P14131602958925559880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - (f1 (n + 1) - f1 n)

end

end A050602.P14131602958925559880

/-! ## A050602.P16325272312987546348

`A050600(n)-A089633(n)%2`
-/

namespace A050602.P16325272312987546348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - Int.tmod (A089633 n) 2

end

end A050602.P16325272312987546348

/-! ## A050602.P13314509865763248535

`Δ[A003056(n)]+A050600(n)-1`
-/

namespace A050602.P13314509865763248535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A050600 n - 1)

end

end A050602.P13314509865763248535

/-! ## A050602.P14388578158192413095

`A050600(n)-char[A007401(n+1)]`
-/

namespace A050602.P14388578158192413095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A050602.P14388578158192413095

/-! ## A050602.P16561879504497740614

`A050600(n)-A057979(A134082(n))`
-/

namespace A050602.P16561879504497740614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - A057979 (A134082 n).toNat

end

end A050602.P16561879504497740614

/-! ## A050602.P12163866050105901138

`A003056(n+1)+A050600(n)-A002024(n+1)`
-/

namespace A050602.P12163866050105901138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + (A050600 n - A002024 (n + 1))

end

end A050602.P12163866050105901138

/-! ## A050602.P2080216408329353197

`A050600(n)-A001221(Δ[A001614(n+1)])`
-/

namespace A050602.P2080216408329353197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - A001221 (f1 (n + 1) - f1 n).toNat

end

end A050602.P2080216408329353197

/-! ## A050602.P2813768632321068008

`A050600(n)-A001222(Δ[A001614(n+1)])`
-/

namespace A050602.P2813768632321068008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - A001222 (f1 (n + 1) - f1 n).toNat

end

end A050602.P2813768632321068008

/-! ## A050602.P17038590787731857267

`A050600(n)-A002262(Δ[A001614(n+1)])`
-/

namespace A050602.P17038590787731857267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - A002262 (f1 (n + 1) - f1 n).toNat

end

end A050602.P17038590787731857267

/-! ## A050602.P13488110607387329777

`A050600(n)-A006463(Δ[A001614(n+1)])`
-/

namespace A050602.P13488110607387329777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - A006463 (f1 (n + 1) - f1 n).toNat

end

end A050602.P13488110607387329777

/-! ## A050602.P1517632775069578632

`A050600(A286109(n))`
-/

namespace A050602.P1517632775069578632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 (A286109 n).toNat

end

end A050602.P1517632775069578632

/-! ## A050602.P2914017982543764141

`A050600(n)-A001221(A130321(n))`
-/

namespace A050602.P2914017982543764141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n - A001221 (A130321 n).toNat

end

end A050602.P2914017982543764141

/-!
# A050603: A001511 with every term repeated.

The programs for A050603, the canonical program `A050603.P12712608073834541420` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050603 has offset 0).

The definition of A050603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050603.P16149584001414088237

`val(n+2-n%2, 2)`
-/

namespace A050603.P16149584001414088237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 2 : ℤ) - ((n % 2 : ℕ) : ℤ)).toNat 2

end

end A050603.P16149584001414088237

namespace A050603

/-- `val(n+2-n%2, 2)` -/
def P16149584001414088237.Spec : Prop :=
  ∀ n, (P16149584001414088237.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P1216728040434678821

`A136480(n+1)`
-/

namespace A050603.P1216728040434678821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (n + 1)

end

end A050603.P1216728040434678821

namespace A050603

/-- `A136480(n+1)` -/
def P1216728040434678821.Spec : Prop :=
  ∀ n, P1216728040434678821.a n = A050603 n

end A050603

/-! ## A050603.P1763449985648806170

`(-1)^n*A094267(n)`
-/

namespace A050603.P1763449985648806170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A094267 n

end

end A050603.P1763449985648806170

namespace A050603

/-- `(-1)^n*A094267(n)` -/
def P1763449985648806170.Spec : Prop :=
  ∀ n, P1763449985648806170.a n = A050603 n

end A050603

/-! ## A050603.P927788847751407801

`A007814(n+2-n%2)`
-/

namespace A050603.P927788847751407801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2 - n % 2)

end

end A050603.P927788847751407801

namespace A050603

/-- `A007814(n+2-n%2)` -/
def P927788847751407801.Spec : Prop :=
  ∀ n, P927788847751407801.a n = A050603 n

end A050603

/-! ## A050603.P12712608073834541420

`A007814(n+1)+A007814(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050603

/-- `A007814(n+1)+A007814(n+2)` -/
def P12712608073834541420.Spec : Prop :=
  ∀ n, P12712608073834541420.a n = A050603 n

theorem P12712608073834541420.correct : P12712608073834541420.Spec := by
  intro n
  simp only [A050603]

end A050603

/-! ## A050603.P6016997802307010474

`val(or(1, n)+1, 2)`
-/

namespace A050603.P6016997802307010474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2

end

end A050603.P6016997802307010474

namespace A050603

/-- `val(or(1, n)+1, 2)` -/
def P6016997802307010474.Spec : Prop :=
  ∀ n, (P6016997802307010474.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P10681660595771164627

`val(gcd(2, n)+n, 2)`
-/

namespace A050603.P10681660595771164627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.gcd 2 n + n) 2

end

end A050603.P10681660595771164627

namespace A050603

/-- `val(gcd(2, n)+n, 2)` -/
def P10681660595771164627.Spec : Prop :=
  ∀ n, (P10681660595771164627.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P12865001480569361937

`abs(Δ[val(n+1, 2)])`
-/

namespace A050603.P12865001480569361937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A050603.P12865001480569361937

namespace A050603

/-- `abs(Δ[val(n+1, 2)])` -/
def P12865001480569361937.Spec : Prop :=
  ∀ n, P12865001480569361937.a n = A050603 n

end A050603

/-! ## A050603.P12243487459004988188

`floor(log2(xor(n, n+2)))`
-/

namespace A050603.P12243487459004988188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 2))

end

end A050603.P12243487459004988188

namespace A050603

/-- `floor(log2(xor(n, n+2)))` -/
def P12243487459004988188.Spec : Prop :=
  ∀ n, (P12243487459004988188.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P10215141326998109770

`val(and(n+2, -2), 2)`
-/

namespace A050603.P10215141326998109770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land (n + 2 : ℤ) (-2)).toNat 2

end

end A050603.P10215141326998109770

namespace A050603

/-- `val(and(n+2, -2), 2)` -/
def P10215141326998109770.Spec : Prop :=
  ∀ n, (P10215141326998109770.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P1717068108248540046

`val(∑[n+1], 2)+1`
-/

namespace A050603.P1717068108248540046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A050603.P1717068108248540046

namespace A050603

/-- `val(∑[n+1], 2)+1` -/
def P1717068108248540046.Spec : Prop :=
  ∀ n, (P1717068108248540046.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P10606887974810897064

`val(n-or(n, -2), 2)`
-/

namespace A050603.P10606887974810897064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n : ℤ) - Int.lor (n : ℤ) (-2)).toNat 2

end

end A050603.P10606887974810897064

namespace A050603

/-- `val(n-or(n, -2), 2)` -/
def P10606887974810897064.Spec : Prop :=
  ∀ n, (P10606887974810897064.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P18376272722773443584

`Δ[sqrt(val(n+1, 2))]²`
-/

namespace A050603.P18376272722773443584
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.valuation (n + 1) 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A050603.P18376272722773443584

namespace A050603

/-- `Δ[sqrt(val(n+1, 2))]²` -/
def P18376272722773443584.Spec : Prop :=
  ∀ n, P18376272722773443584.a n = (A050603 n : ℝ)

end A050603

/-! ## A050603.P17416216062059671956

`log2(or(n, n+2)-n)`
-/

namespace A050603.P17416216062059671956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℝ)

end

end A050603.P17416216062059671956

namespace A050603

/-- `log2(or(n, n+2)-n)` -/
def P17416216062059671956.Spec : Prop :=
  ∀ n, P17416216062059671956.a n = (A050603 n : ℝ)

end A050603

/-! ## A050603.P9010421364608757844

`log2(xor(n, or(n, n+2)))`
-/

namespace A050603.P9010421364608757844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (Nat.lor n (n + 2)) : ℝ)

end

end A050603.P9010421364608757844

namespace A050603

/-- `log2(xor(n, or(n, n+2)))` -/
def P9010421364608757844.Spec : Prop :=
  ∀ n, P9010421364608757844.a n = (A050603 n : ℝ)

end A050603

/-! ## A050603.P14042288203705473565

`val(2*C(n+2, 2), 2)`
-/

namespace A050603.P14042288203705473565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * Nat.choose (n + 2) 2) 2

end

end A050603.P14042288203705473565

namespace A050603

/-- `val(2*C(n+2, 2), 2)` -/
def P14042288203705473565.Spec : Prop :=
  ∀ n, (P14042288203705473565.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P5889622442592176819

`val((n+1)*(n+2), 2)`
-/

namespace A050603.P5889622442592176819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (n + 2)) 2

end

end A050603.P5889622442592176819

namespace A050603

/-- `val((n+1)*(n+2), 2)` -/
def P5889622442592176819.Spec : Prop :=
  ∀ n, (P5889622442592176819.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P13507487360722236644

`log2(and(n+2, -(n+1)))`
-/

namespace A050603.P13507487360722236644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ)) : ℝ)

end

end A050603.P13507487360722236644

namespace A050603

/-- `log2(and(n+2, -(n+1)))` -/
def P13507487360722236644.Spec : Prop :=
  ∀ n, P13507487360722236644.a n = (A050603 n : ℝ)

end A050603

/-! ## A050603.P6541826097714940023

`∑{e}[or(n, n+2)-n, #]`
-/

namespace A050603.P6541826097714940023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A050603.P6541826097714940023

namespace A050603

/-- `∑{e}[or(n, n+2)-n, #]` -/
def P6541826097714940023.Spec : Prop :=
  ∀ n, (P6541826097714940023.a n : ℤ) = A050603 n

end A050603

/-! ## A050603.P10179321247394029206

`∏{e}[or(n, n+2)-n, #]`
-/

namespace A050603.P10179321247394029206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A050603.P10179321247394029206

namespace A050603

/-- `∏{e}[or(n, n+2)-n, #]` -/
def P10179321247394029206.Spec : Prop :=
  ∀ n, (P10179321247394029206.a n : ℤ) = A050603 n

end A050603

/-!
# A050604: Column 3 of A050600: a(n) = add1c(n,3).

The programs for A050604, the canonical program `A050604.P4753870057173286659` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050604 has offset 0).

The definition of A050604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050604.P4753870057173286659

`val(lcm(n+3, ∑[n+1]), 2)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050604

/-- `val(lcm(n+3, ∑[n+1]), 2)+1` -/
def P4753870057173286659.Spec : Prop :=
  ∀ n, (P4753870057173286659.a n : ℤ) = A050604 n

theorem P4753870057173286659.correct : P4753870057173286659.Spec := by
  intro n
  simp only [A050604]

end A050604

/-! ## A050604.P2131491141420625397

`val(∑[n+1]+∑[n]²%(n+1), 2)+1`
-/

namespace A050604.P2131491141420625397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % (n + 1)) 2 + 1

end

end A050604.P2131491141420625397

namespace A050604

/-- `val(∑[n+1]+∑[n]²%(n+1), 2)+1` -/
def P2131491141420625397.Spec : Prop :=
  ∀ n, (P2131491141420625397.a n : ℤ) = A050604 n

end A050604

/-! ## A050604.P7829304538927031110

`A050606(n)+1`
-/

namespace A050604.P7829304538927031110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050606 n + 1

end

end A050604.P7829304538927031110

namespace A050604

/-- `A050606(n)+1` -/
def P7829304538927031110.Spec : Prop :=
  ∀ n, P7829304538927031110.a n = A050604 n

theorem P7829304538927031110.correct : P7829304538927031110.Spec := by
  intro n
  simp only [A050604, Nat.add_sub_cancel, A050604.P7829304538927031110.a, A050604.P4753870057173286659.f1, A050604.P4753870057173286659.a, A050606, A050606.P9529595328761019641.f1, A050606.P9529595328761019641.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050604

/-! ## A050604.P5125029952110079097

`val(∑[A336529(n)], 2)+1`
-/

namespace A050604.P5125029952110079097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A050604.P5125029952110079097

namespace A050604

/-- `val(∑[A336529(n)], 2)+1` -/
def P5125029952110079097.Spec : Prop :=
  ∀ n, (P5125029952110079097.a n : ℤ) = A050604 n

end A050604

/-! ## A050604.P14289469949073411284

`val(∑[A005997(n+1)], 2)+1`
-/

namespace A050604.P14289469949073411284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A050604.P14289469949073411284

namespace A050604

/-- `val(∑[A005997(n+1)], 2)+1` -/
def P14289469949073411284.Spec : Prop :=
  ∀ n, (P14289469949073411284.a n : ℤ) = A050604 n

end A050604

/-! ## A050604.P5825058994234541533

`A324468(2-A177704(n)+n)`
-/

namespace A050604.P5825058994234541533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (2 - A177704 n + (n : ℤ)).toNat

end

end A050604.P5825058994234541533

namespace A050604

/-- `A324468(2-A177704(n)+n)` -/
def P5825058994234541533.Spec : Prop :=
  ∀ n, P5825058994234541533.a n = A050604 n

end A050604

/-! ## A050604.P16784791409068932054

`A324468(2-(A177704(n)-n))`
-/

namespace A050604.P16784791409068932054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (2 - (A177704 n - (n : ℤ))).toNat

end

end A050604.P16784791409068932054

namespace A050604

/-- `A324468(2-(A177704(n)-n))` -/
def P16784791409068932054.Spec : Prop :=
  ∀ n, P16784791409068932054.a n = A050604 n

end A050604

/-! ## A050604.P1290573955414980381

`A324468(1-A011765(n+1)+n)`
-/

namespace A050604.P1290573955414980381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (1 - A011765 (n + 1) + (n : ℤ)).toNat

end

end A050604.P1290573955414980381

namespace A050604

/-- `A324468(1-A011765(n+1)+n)` -/
def P1290573955414980381.Spec : Prop :=
  ∀ n, P1290573955414980381.a n = A050604 n

end A050604

/-! ## A050604.P41933514068334516

`A275019(n+1)+1-A011765(n+1)`
-/

namespace A050604.P41933514068334516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275019 (n + 1) + (1 - A011765 (n + 1))

end

end A050604.P41933514068334516

namespace A050604

/-- `A275019(n+1)+1-A011765(n+1)` -/
def P41933514068334516.Spec : Prop :=
  ∀ n, P41933514068334516.a n = A050604 n

end A050604

/-! ## A050604.P16881530251895267330

`val(A227327(n+2), 2)+1`
-/

namespace A050604.P16881530251895267330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A227327 (n + 2)).toNat 2 + 1

end

end A050604.P16881530251895267330

namespace A050604

/-- `val(A227327(n+2), 2)+1` -/
def P16881530251895267330.Spec : Prop :=
  ∀ n, (P16881530251895267330.a n : ℤ) = A050604 n

end A050604

/-! ## A050604.P15390557892474349374

`A007814(n+2)+A007814(n+1)*A158572(n+3)`
-/

namespace A050604.P15390557892474349374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2) + A007814 (n + 1) * A158572 (n + 3)

end

end A050604.P15390557892474349374

namespace A050604

/-- `A007814(n+2)+A007814(n+1)*A158572(n+3)` -/
def P15390557892474349374.Spec : Prop :=
  ∀ n, P15390557892474349374.a n = A050604 n

end A050604

/-! ## A050604.P10470073454861156940

`A089309(or(2, A341522(n)))`
-/

namespace A050604.P10470073454861156940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Int.lor 2 (A341522 n)).toNat

end

end A050604.P10470073454861156940

namespace A050604

/-- `A089309(or(2, A341522(n)))` -/
def P10470073454861156940.Spec : Prop :=
  ∀ n, P10470073454861156940.a n = A050604 n

end A050604

/-! ## A050604.P12916432273481681972

`A134022(A033163(n+1))+1`
-/

namespace A050604.P12916432273481681972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A033163 (n + 1)).toNat + 1

end

end A050604.P12916432273481681972

namespace A050604

/-- `A134022(A033163(n+1))+1` -/
def P12916432273481681972.Spec : Prop :=
  ∀ n, P12916432273481681972.a n = A050604 n

end A050604

/-! ## A050604.P1719260713446563879

`A134022(A033164(n+1))+1`
-/

namespace A050604.P1719260713446563879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A033164 (n + 1)).toNat + 1

end

end A050604.P1719260713446563879

namespace A050604

/-- `A134022(A033164(n+1))+1` -/
def P1719260713446563879.Spec : Prop :=
  ∀ n, P1719260713446563879.a n = A050604 n

end A050604

/-! ## A050604.P7936564718286784852

`A275019(A175048(n+1))`
-/

namespace A050604.P7936564718286784852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275019 (A175048 (n + 1)).toNat

end

end A050604.P7936564718286784852

namespace A050604

/-- `A275019(A175048(n+1))` -/
def P7936564718286784852.Spec : Prop :=
  ∀ n, P7936564718286784852.a n = A050604 n

end A050604

/-! ## A050604.P6805906082892562308

`A050602(A167614(n+2))+1`
-/

namespace A050604.P6805906082892562308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (A167614 (n + 2)).toNat + 1

end

end A050604.P6805906082892562308

namespace A050604

/-- `A050602(A167614(n+2))+1` -/
def P6805906082892562308.Spec : Prop :=
  ∀ n, P6805906082892562308.a n = A050604 n

end A050604

/-! ## A050604.P9549741452347578928

`A001511(lcm(n+3, ∑[and(1, n+1)]))`
-/

namespace A050604.P9549741452347578928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.lcm (n + 3) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A050604.P9549741452347578928

namespace A050604

/-- `A001511(lcm(n+3, ∑[and(1, n+1)]))` -/
def P9549741452347578928.Spec : Prop :=
  ∀ n, P9549741452347578928.a n = A050604 n

end A050604

/-! ## A050604.P18105741719949496465

`A050600(∑[n+4]+2)`
-/

namespace A050604.P18105741719949496465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A050604.P18105741719949496465

namespace A050604

/-- `A050600(∑[n+4]+2)` -/
def P18105741719949496465.Spec : Prop :=
  ∀ n, P18105741719949496465.a n = A050604 n

end A050604

/-!
# A050605: Column/row 2 of A050602: a(n) = add3c(n,2).

The programs for A050605, the canonical program `A050605.P11206776989193119858` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050605 has offset 0).

The definition of A050605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050605.P11206776989193119858

`A007814(n+1)+A007814(n+2)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050605

/-- `A007814(n+1)+A007814(n+2)-1` -/
def P11206776989193119858.Spec : Prop :=
  ∀ n, P11206776989193119858.a n = A050605 n

theorem P11206776989193119858.correct : P11206776989193119858.Spec := by
  intro n
  simp only [A050605]

end A050605

/-! ## A050605.P3640886464251549300

`val(∑[n+1], 2)`
-/

namespace A050605.P3640886464251549300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A050605.P3640886464251549300

namespace A050605

/-- `val(∑[n+1], 2)` -/
def P3640886464251549300.Spec : Prop :=
  ∀ n, (P3640886464251549300.a n : ℤ) = A050605 n

end A050605

/-! ## A050605.P12357410184563276754

`val(or(1, n)+1, 2)-1`
-/

namespace A050605.P12357410184563276754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2 : ℤ) - 1

end

end A050605.P12357410184563276754

namespace A050605

/-- `val(or(1, n)+1, 2)-1` -/
def P12357410184563276754.Spec : Prop :=
  ∀ n, P12357410184563276754.a n = A050605 n

end A050605

/-! ## A050605.P12611762142661217447

`abs(Δ[val(n+1, 2)])-1`
-/

namespace A050605.P12611762142661217447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)| - 1

end

end A050605.P12611762142661217447

namespace A050605

/-- `abs(Δ[val(n+1, 2)])-1` -/
def P12611762142661217447.Spec : Prop :=
  ∀ n, P12611762142661217447.a n = A050605 n

end A050605

/-! ## A050605.P119242339454907798

`abs(Δ[val(lcm(2, n+1), 2)])`
-/

namespace A050605.P119242339454907798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lcm 2 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A050605.P119242339454907798

namespace A050605

/-- `abs(Δ[val(lcm(2, n+1), 2)])` -/
def P119242339454907798.Spec : Prop :=
  ∀ n, P119242339454907798.a n = A050605 n

end A050605

/-! ## A050605.P11230328300644571994

`val(and(n+2, -2), 2)-1`
-/

namespace A050605.P11230328300644571994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (Int.land (n + 2 : ℤ) (-2)).toNat 2 : ℤ) - 1

end

end A050605.P11230328300644571994

namespace A050605

/-- `val(and(n+2, -2), 2)-1` -/
def P11230328300644571994.Spec : Prop :=
  ∀ n, P11230328300644571994.a n = A050605 n

end A050605

/-! ## A050605.P2720041123092149375

`val(C(n+2, 2)², 2)/2`
-/

namespace A050605.P2720041123092149375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (Nat.choose (n + 2) 2 ^ 2) 2 : ℚ) / 2

end

end A050605.P2720041123092149375

namespace A050605

/-- `val(C(n+2, 2)², 2)/2` -/
def P2720041123092149375.Spec : Prop :=
  ∀ n, P2720041123092149375.a n = (A050605 n : ℚ)

end A050605

/-! ## A050605.P13558154950722174279

`val((n+1)*(n+2), 2)-1`
-/

namespace A050605.P13558154950722174279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation ((n + 1) * (n + 2)) 2 : ℤ) - 1

end

end A050605.P13558154950722174279

namespace A050605

/-- `val((n+1)*(n+2), 2)-1` -/
def P13558154950722174279.Spec : Prop :=
  ∀ n, P13558154950722174279.a n = A050605 n

end A050605

/-! ## A050605.P9588375480235886493

`∑{e}[and(n+2, -(n+1)), #-1]`
-/

namespace A050605.P9588375480235886493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A050605.P9588375480235886493

namespace A050605

/-- `∑{e}[and(n+2, -(n+1)), #-1]` -/
def P9588375480235886493.Spec : Prop :=
  ∀ n, P9588375480235886493.a n = A050605 n

end A050605

/-! ## A050605.P5372547015135158840

`∏{e}[and(n+2, -(n+1)), #-1]`
-/

namespace A050605.P5372547015135158840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A050605.P5372547015135158840

namespace A050605

/-- `∏{e}[and(n+2, -(n+1)), #-1]` -/
def P5372547015135158840.Spec : Prop :=
  ∀ n, P5372547015135158840.a n = A050605 n

end A050605

/-! ## A050605.P4052125135793533398

`∑{e}[and(n+2, -(n+1))/2, #]`
-/

namespace A050605.P4052125135793533398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ)) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A050605.P4052125135793533398

namespace A050605

/-- `∑{e}[and(n+2, -(n+1))/2, #]` -/
def P4052125135793533398.Spec : Prop :=
  ∀ n, (P4052125135793533398.a n : ℤ) = A050605 n

end A050605

/-! ## A050605.P8530665122064145687

`Δ[A378992(n)]`
-/

namespace A050605.P8530665122064145687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050605.P8530665122064145687

namespace A050605

/-- `Δ[A378992(n)]` -/
def P8530665122064145687.Spec : Prop :=
  ∀ n, P8530665122064145687.a n = A050605 n

end A050605

/-! ## A050605.P1718037074598371470

`A050603(n)-1`
-/

namespace A050605.P1718037074598371470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n - 1

end

end A050605.P1718037074598371470

namespace A050605

/-- `A050603(n)-1` -/
def P1718037074598371470.Spec : Prop :=
  ∀ n, P1718037074598371470.a n = A050605 n

end A050605

/-! ## A050605.P11157985091588359599

`A063574(or(1, n))`
-/

namespace A050605.P11157985091588359599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063574 (Nat.lor 1 n)

end

end A050605.P11157985091588359599

namespace A050605

/-- `A063574(or(1, n))` -/
def P11157985091588359599.Spec : Prop :=
  ∀ n, P11157985091588359599.a n = A050605 n

end A050605

/-! ## A050605.P9910269638755551422

`A074735(or(1, n))`
-/

namespace A050605.P9910269638755551422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074735 (Nat.lor 1 n)

end

end A050605.P9910269638755551422

namespace A050605

/-- `A074735(or(1, n))` -/
def P9910269638755551422.Spec : Prop :=
  ∀ n, P9910269638755551422.a n = A050605 n

end A050605

/-! ## A050605.P1969334308371862892

`A275019(or(1, n))`
-/

namespace A050605.P1969334308371862892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275019 (Nat.lor 1 n)

end

end A050605.P1969334308371862892

namespace A050605

/-- `A275019(or(1, n))` -/
def P1969334308371862892.Spec : Prop :=
  ∀ n, P1969334308371862892.a n = A050605 n

end A050605

/-! ## A050605.P16075917106983943109

`A337821(or(1, n))`
-/

namespace A050605.P16075917106983943109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337821 (Nat.lor 1 n)

end

end A050605.P16075917106983943109

namespace A050605

/-- `A337821(or(1, n))` -/
def P16075917106983943109.Spec : Prop :=
  ∀ n, P16075917106983943109.a n = A050605 n

end A050605

/-! ## A050605.P8817739525664707135

`abs(A094267(n))-1`
-/

namespace A050605.P8817739525664707135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094267 n| - 1

end

end A050605.P8817739525664707135

namespace A050605

/-- `abs(A094267(n))-1` -/
def P8817739525664707135.Spec : Prop :=
  ∀ n, P8817739525664707135.a n = A050605 n

end A050605

/-! ## A050605.P7205320286797084133

`A136480(n+1)-1`
-/

namespace A050605.P7205320286797084133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (n + 1) - 1

end

end A050605.P7205320286797084133

namespace A050605

/-- `A136480(n+1)-1` -/
def P7205320286797084133.Spec : Prop :=
  ∀ n, P7205320286797084133.a n = A050605 n

end A050605

/-! ## A050605.P3990058169161433446

`A079071(xor(n, n+2))`
-/

namespace A050605.P3990058169161433446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (Nat.xor n (n + 2))

end

end A050605.P3990058169161433446

namespace A050605

/-- `A079071(xor(n, n+2))` -/
def P3990058169161433446.Spec : Prop :=
  ∀ n, P3990058169161433446.a n = A050605 n

end A050605

/-!
# A050606: Column/row 3 of A050602: a(n) = add3c(n,3).

The programs for A050606, the canonical program `A050606.P9529595328761019641` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050606 has offset 0).

The definition of A050606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050606.P9529595328761019641

`val(lcm(n+3, ∑[n+1]), 2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050606

/-- `val(lcm(n+3, ∑[n+1]), 2)` -/
def P9529595328761019641.Spec : Prop :=
  ∀ n, (P9529595328761019641.a n : ℤ) = A050606 n

theorem P9529595328761019641.correct : P9529595328761019641.Spec := by
  intro n
  simp only [A050606]

end A050606

/-! ## A050606.P4369386491836588556

`val(∑[n+1]+∑[n]²%(n+1), 2)`
-/

namespace A050606.P4369386491836588556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % (n + 1)) 2

end

end A050606.P4369386491836588556

namespace A050606

/-- `val(∑[n+1]+∑[n]²%(n+1), 2)` -/
def P4369386491836588556.Spec : Prop :=
  ∀ n, (P4369386491836588556.a n : ℤ) = A050606 n

end A050606

/-! ## A050606.P337024528582145491

`A050604(n)-1`
-/

namespace A050606.P337024528582145491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050604 n - 1

end

end A050606.P337024528582145491

namespace A050606

/-- `A050604(n)-1` -/
def P337024528582145491.Spec : Prop :=
  ∀ n, P337024528582145491.a n = A050606 n

theorem P337024528582145491.correct : P337024528582145491.Spec := by
  intro n
  simp only [A050606, Nat.add_sub_cancel, A050606.P337024528582145491.a, A050606.P9529595328761019641.f1, A050606.P9529595328761019641.a, A050604, A050604.P4753870057173286659.f1, A050604.P4753870057173286659.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050606

/-! ## A050606.P13070118001560224226

`val(∑[A336529(n)], 2)`
-/

namespace A050606.P13070118001560224226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A050606.P13070118001560224226

namespace A050606

/-- `val(∑[A336529(n)], 2)` -/
def P13070118001560224226.Spec : Prop :=
  ∀ n, (P13070118001560224226.a n : ℤ) = A050606 n

end A050606

/-! ## A050606.P1232899523167661

`val(∑[A005997(n+1)], 2)`
-/

namespace A050606.P1232899523167661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A050606.P1232899523167661

namespace A050606

/-- `val(∑[A005997(n+1)], 2)` -/
def P1232899523167661.Spec : Prop :=
  ∀ n, (P1232899523167661.a n : ℤ) = A050606 n

end A050606

/-! ## A050606.P4090134604669051820

`val((A322015(n+1)+1)*∑[n+1], 2)`
-/

namespace A050606.P4090134604669051820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A322015 (n + 1) + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat 2

end

end A050606.P4090134604669051820

namespace A050606

/-- `val((A322015(n+1)+1)*∑[n+1], 2)` -/
def P4090134604669051820.Spec : Prop :=
  ∀ n, (P4090134604669051820.a n : ℤ) = A050606 n

end A050606

/-! ## A050606.P4038050218862633188

`A324468(n+1)-A177704(n)`
-/

namespace A050606.P4038050218862633188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (n + 1) - A177704 n

end

end A050606.P4038050218862633188

namespace A050606

/-- `A324468(n+1)-A177704(n)` -/
def P4038050218862633188.Spec : Prop :=
  ∀ n, P4038050218862633188.a n = A050606 n

end A050606

/-! ## A050606.P10281954247081825867

`A275019(1-A011765(n+1)+n)`
-/

namespace A050606.P10281954247081825867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275019 (1 - A011765 (n + 1) + (n : ℤ)).toNat

end

end A050606.P10281954247081825867

namespace A050606

/-- `A275019(1-A011765(n+1)+n)` -/
def P10281954247081825867.Spec : Prop :=
  ∀ n, P10281954247081825867.a n = A050606 n

end A050606

/-! ## A050606.P13242734285620673884

`A324468(n+1)-(A011765(n+1)+1)`
-/

namespace A050606.P13242734285620673884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (n + 1) - (A011765 (n + 1) + 1)

end

end A050606.P13242734285620673884

namespace A050606

/-- `A324468(n+1)-(A011765(n+1)+1)` -/
def P13242734285620673884.Spec : Prop :=
  ∀ n, P13242734285620673884.a n = A050606 n

end A050606

/-! ## A050606.P17673911001452863659

`val(A227327(n+2), 2)`
-/

namespace A050606.P17673911001452863659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A227327 (n + 2)).toNat 2

end

end A050606.P17673911001452863659

namespace A050606

/-- `val(A227327(n+2), 2)` -/
def P17673911001452863659.Spec : Prop :=
  ∀ n, (P17673911001452863659.a n : ℤ) = A050606 n

end A050606

/-! ## A050606.P1295444167559498463

`A089309(or(2, A341522(n)))-1`
-/

namespace A050606.P1295444167559498463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Int.lor 2 (A341522 n)).toNat - 1

end

end A050606.P1295444167559498463

namespace A050606

/-- `A089309(or(2, A341522(n)))-1` -/
def P1295444167559498463.Spec : Prop :=
  ∀ n, P1295444167559498463.a n = A050606 n

end A050606

/-! ## A050606.P9838503417560744907

`A134022(A033163(n+1))`
-/

namespace A050606.P9838503417560744907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A033163 (n + 1)).toNat

end

end A050606.P9838503417560744907

namespace A050606

/-- `A134022(A033163(n+1))` -/
def P9838503417560744907.Spec : Prop :=
  ∀ n, P9838503417560744907.a n = A050606 n

end A050606

/-! ## A050606.P12368581665224744009

`A134022(A033164(n+1))`
-/

namespace A050606.P12368581665224744009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A033164 (n + 1)).toNat

end

end A050606.P12368581665224744009

namespace A050606

/-- `A134022(A033164(n+1))` -/
def P12368581665224744009.Spec : Prop :=
  ∀ n, P12368581665224744009.a n = A050606 n

end A050606

/-! ## A050606.P5736298284882237400

`A275019(A175048(n+1))-1`
-/

namespace A050606.P5736298284882237400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275019 (A175048 (n + 1)).toNat - 1

end

end A050606.P5736298284882237400

namespace A050606

/-- `A275019(A175048(n+1))-1` -/
def P5736298284882237400.Spec : Prop :=
  ∀ n, P5736298284882237400.a n = A050606 n

end A050606

/-! ## A050606.P11707475025401406533

`A050602(∑[n+3]+n+3)`
-/

namespace A050606.P11707475025401406533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A050606.P11707475025401406533

namespace A050606

/-- `A050602(∑[n+3]+n+3)` -/
def P11707475025401406533.Spec : Prop :=
  ∀ n, P11707475025401406533.a n = A050606 n

end A050606

/-! ## A050606.P3578036612234640338

`A079782(n+1)%A050604(n)`
-/

namespace A050606.P3578036612234640338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A050604 n)

end

end A050606.P3578036612234640338

namespace A050606

/-- `A079782(n+1)%A050604(n)` -/
def P3578036612234640338.Spec : Prop :=
  ∀ n, P3578036612234640338.a n = A050606 n

end A050606

/-! ## A050606.P1305705653922051205

`A007814(∑[gcd(2*n, C(n, 2))]+n+1)`
-/

namespace A050606.P1305705653922051205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A050606.P1305705653922051205

namespace A050606

/-- `A007814(∑[gcd(2*n, C(n, 2))]+n+1)` -/
def P1305705653922051205.Spec : Prop :=
  ∀ n, P1305705653922051205.a n = A050606 n

end A050606

/-! ## A050606.P3176615427127712329

`A072828(n+1)%A050604(n)`
-/

namespace A050606.P3176615427127712329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A050604 n)

end

end A050606.P3176615427127712329

namespace A050606

/-- `A072828(n+1)%A050604(n)` -/
def P3176615427127712329.Spec : Prop :=
  ∀ n, P3176615427127712329.a n = A050606 n

end A050606

/-! ## A050606.P205522364374335546

`A198277(n)%A050604(n)`
-/

namespace A050606.P205522364374335546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A050604 n)

end

end A050606.P205522364374335546

namespace A050606

/-- `A198277(n)%A050604(n)` -/
def P205522364374335546.Spec : Prop :=
  ∀ n, P205522364374335546.a n = A050606 n

end A050606

/-!
# A050607: Numbers k such that base 5 expansion matches (0|1|2)*((0|1)(3|4))?(0|1|2)*.

The programs for A050607, the canonical program `A050607.P8984009073988029614` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050607 has offset 1).

The definition of A050607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050607.P8984009073988029614

`lt[A000999(n), 2]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050607

/-- `lt[A000999(n), 2]` -/
def P8984009073988029614.Spec : Prop :=
  ∀ n, (P8984009073988029614.a n : ℤ) = A050607 (n + 1)

theorem P8984009073988029614.correct : P8984009073988029614.Spec := by
  intro n
  simp only [A050607, Nat.add_sub_cancel]

end A050607

/-! ## A050607.P8824036585807824727

`eq[A000999(n)^A040024(n), A000999(n)]`
-/

namespace A050607.P8824036585807824727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000999 n : ℚ) ^ (A040024 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A050607.P8824036585807824727

namespace A050607

/-- `eq[A000999(n)^A040024(n), A000999(n)]` -/
def P8824036585807824727.Spec : Prop :=
  ∀ n, (P8824036585807824727.a n : ℤ) = A050607 (n + 1)

end A050607

/-! ## A050607.P2796870137464724903

`eq[A000999(n)^A056813(n+1), A000999(n)]`
-/

namespace A050607.P2796870137464724903
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000999 n : ℚ) ^ (A056813 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A050607.P2796870137464724903

namespace A050607

/-- `eq[A000999(n)^A056813(n+1), A000999(n)]` -/
def P2796870137464724903.Spec : Prop :=
  ∀ n, (P2796870137464724903.a n : ℤ) = A050607 (n + 1)

end A050607

/-! ## A050607.P2229965288514505510

`eq[A000999(n)^A020483(n), A000999(n)]`
-/

namespace A050607.P2229965288514505510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000999 n : ℚ) ^ (A020483 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A050607.P2229965288514505510

namespace A050607

/-- `eq[A000999(n)^A020483(n), A000999(n)]` -/
def P2229965288514505510.Spec : Prop :=
  ∀ n, (P2229965288514505510.a n : ℤ) = A050607 (n + 1)

end A050607

/-! ## A050607.P17163395873268745968

`eq[A000999(n)², A000999(A008706(n))]`
-/

namespace A050607.P17163395873268745968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050607.P17163395873268745968

namespace A050607

/-- `eq[A000999(n)², A000999(A008706(n))]` -/
def P17163395873268745968.Spec : Prop :=
  ∀ n, (P17163395873268745968.a n : ℤ) = A050607 (n + 1)

end A050607

/-! ## A050607.P15466543347893476808

`eq[A000999(n)², A000999(A016861(n))]`
-/

namespace A050607.P15466543347893476808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 (A016861 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050607.P15466543347893476808

namespace A050607

/-- `eq[A000999(n)², A000999(A016861(n))]` -/
def P15466543347893476808.Spec : Prop :=
  ∀ n, (P15466543347893476808.a n : ℤ) = A050607 (n + 1)

end A050607

/-! ## A050607.P62938554906352840

`eq[A000999(n)^A061142(n+1), A000999(n)]`
-/

namespace A050607.P62938554906352840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000999 n : ℚ) ^ (A061142 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A050607.P62938554906352840

namespace A050607

/-- `eq[A000999(n)^A061142(n+1), A000999(n)]` -/
def P62938554906352840.Spec : Prop :=
  ∀ n, (P62938554906352840.a n : ℤ) = A050607 (n + 1)

end A050607

/-! ## A050607.P4785253813224758291

`eq[A000999(n)^A001316(n), A000999(n)]`
-/

namespace A050607.P4785253813224758291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000999 n : ℚ) ^ (A001316 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A050607.P4785253813224758291

namespace A050607

/-- `eq[A000999(n)^A001316(n), A000999(n)]` -/
def P4785253813224758291.Spec : Prop :=
  ∀ n, (P4785253813224758291.a n : ℤ) = A050607 (n + 1)

end A050607

/-! ## A050607.P3055779389235133769

`eq[A000999(n)^A000010(n+1), A000999(n)]`
-/

namespace A050607.P3055779389235133769
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000999 n : ℚ) ^ (A000010 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A050607.P3055779389235133769

namespace A050607

/-- `eq[A000999(n)^A000010(n+1), A000999(n)]` -/
def P3055779389235133769.Spec : Prop :=
  ∀ n, (P3055779389235133769.a n : ℤ) = A050607 (n + 1)

end A050607

/-! ## A050607.P2548837836568573032

`eq[1, A010122(A292441(n))]`
-/

namespace A050607.P2548837836568573032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 (A292441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050607.P2548837836568573032

namespace A050607

/-- `eq[1, A010122(A292441(n))]` -/
def P2548837836568573032.Spec : Prop :=
  ∀ n, (P2548837836568573032.a n : ℤ) = A050607 (n + 1)

end A050607

/-!
# A050608: Numbers k such that base 7 expansion matches (0|1|2|3)*((0|1|2)(4|5|6))?(0|1|2|3)*.

The programs for A050608, the canonical program `A050608.P3304430570906467242` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050608 has offset 1).

The definition of A050608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050608.P3304430570906467242

`eq[1, gcd(7, A292441(n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A050608

/-- `eq[1, gcd(7, A292441(n))]` -/
def P3304430570906467242.Spec : Prop :=
  ∀ n, (P3304430570906467242.a n : ℤ) = A050608 (n + 1)

theorem P3304430570906467242.correct : P3304430570906467242.Spec := by
  intro n
  simp only [A050608, Nat.add_sub_cancel]

end A050608

/-! ## A050608.P9695113041727964426

`eq[1, A268354(A292441(n))]`
-/

namespace A050608.P9695113041727964426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A292441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050608.P9695113041727964426

namespace A050608

/-- `eq[1, A268354(A292441(n))]` -/
def P9695113041727964426.Spec : Prop :=
  ∀ n, (P9695113041727964426.a n : ℤ) = A050608 (n + 1)

end A050608

/-! ## A050608.P10183268493694647652

`lt[A268354(A292441(n)), A176059(n)]`
-/

namespace A050608.P10183268493694647652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A292441 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050608.P10183268493694647652

namespace A050608

/-- `lt[A268354(A292441(n)), A176059(n)]` -/
def P10183268493694647652.Spec : Prop :=
  ∀ n, (P10183268493694647652.a n : ℤ) = A050608 (n + 1)

end A050608

/-! ## A050608.P15438309356971491554

`lt[A268354(A292441(n)), A176260(2*n)]`
-/

namespace A050608.P15438309356971491554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A292441 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176260 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050608.P15438309356971491554

namespace A050608

/-- `lt[A268354(A292441(n)), A176260(2*n)]` -/
def P15438309356971491554.Spec : Prop :=
  ∀ n, (P15438309356971491554.a n : ℤ) = A050608 (n + 1)

end A050608

/-! ## A050608.P14344425625485087832

`lt[A268354(A292441(n))!, A051222(n+1)]`
-/

namespace A050608.P14344425625485087832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A268354 (A292441 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050608.P14344425625485087832

namespace A050608

/-- `lt[A268354(A292441(n))!, A051222(n+1)]` -/
def P14344425625485087832.Spec : Prop :=
  ∀ n, (P14344425625485087832.a n : ℤ) = A050608 (n + 1)

end A050608

/-! ## A050608.P670580277706620945

`lt[A268354(A292441(n))!, A258663(n+1)]`
-/

namespace A050608.P670580277706620945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A268354 (A292441 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050608.P670580277706620945

namespace A050608

/-- `lt[A268354(A292441(n))!, A258663(n+1)]` -/
def P670580277706620945.Spec : Prop :=
  ∀ n, (P670580277706620945.a n : ℤ) = A050608 (n + 1)

end A050608

/-! ## A050608.P6573931309400611511

`lt[A268354(A292441(n))!, A000027(n+2)]`
-/

namespace A050608.P6573931309400611511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A268354 (A292441 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050608.P6573931309400611511

namespace A050608

/-- `lt[A268354(A292441(n))!, A000027(n+2)]` -/
def P6573931309400611511.Spec : Prop :=
  ∀ n, (P6573931309400611511.a n : ℤ) = A050608 (n + 1)

end A050608

/-! ## A050608.P17357125267580810429

`lt[A268354(A292441(n))!, A052147(n+2)]`
-/

namespace A050608.P17357125267580810429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A268354 (A292441 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050608.P17357125267580810429

namespace A050608

/-- `lt[A268354(A292441(n))!, A052147(n+2)]` -/
def P17357125267580810429.Spec : Prop :=
  ∀ n, (P17357125267580810429.a n : ℤ) = A050608 (n + 1)

end A050608

/-! ## A050608.P15673401438445805654

`lt[A268354(A292441(n))!, A048974(n+3)]`
-/

namespace A050608.P15673401438445805654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A268354 (A292441 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050608.P15673401438445805654

namespace A050608

/-- `lt[A268354(A292441(n))!, A048974(n+3)]` -/
def P15673401438445805654.Spec : Prop :=
  ∀ n, (P15673401438445805654.a n : ℤ) = A050608 (n + 1)

end A050608

/-! ## A050608.P16775019181287024445

`lt[A268354(A292441(n)), A020639(2*(n+1))]`
-/

namespace A050608.P16775019181287024445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A292441 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050608.P16775019181287024445

namespace A050608

/-- `lt[A268354(A292441(n)), A020639(2*(n+1))]` -/
def P16775019181287024445.Spec : Prop :=
  ∀ n, (P16775019181287024445.a n : ℤ) = A050608 (n + 1)

end A050608

/-! ## A050608.P15472226694211300540

`lt[A268354(A292441(n))!, A006093(2*n+3)]`
-/

namespace A050608.P15472226694211300540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A268354 (A292441 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050608.P15472226694211300540

namespace A050608

/-- `lt[A268354(A292441(n))!, A006093(2*n+3)]` -/
def P15472226694211300540.Spec : Prop :=
  ∀ n, (P15472226694211300540.a n : ℤ) = A050608 (n + 1)

end A050608

/-!
# A050609: Table T(n,k) = Sum_{i=0..2n} (C(2n,i) mod 2)*F(i+k) = Sum_{i=0..n} (C(n,i) mod 2)*F(2i+k).

The programs for A050609, there is no canonical definition to state claims against.
-/

/-! ## A050609.P13455962549604970777

`A050613(A025581(n))*A075148(n)`
-/

namespace A050609.P13455962549604970777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050613 (A025581 n).toNat * A075148 n

end

end A050609.P13455962549604970777

/-! ## A050609.P12990691717583545900

`A050610(A061579(n))`
-/

namespace A050609.P12990691717583545900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (A061579 n).toNat

end

end A050609.P12990691717583545900

/-! ## A050609.P4800216312785476648

`A050610(A114327(n)+n)`
-/

namespace A050609.P4800216312785476648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (A114327 n + (n : ℤ)).toNat

end

end A050609.P4800216312785476648

/-! ## A050609.P14340356912823657513

`A050610(∑[A198954(n)-1])`
-/

namespace A050609.P14340356912823657513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050609.P14340356912823657513

/-! ## A050609.P16629123030733841770

`A050610(A038722(n+1)-1)`
-/

namespace A050609.P16629123030733841770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (A038722 (n + 1) - 1).toNat

end

end A050609.P16629123030733841770

/-! ## A050609.P11455420923507129811

`A050610(A002024(n+1)²-(n+1))`
-/

namespace A050609.P11455420923507129811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A050609.P11455420923507129811

/-! ## A050609.P12209180518872680005

`A050610(A002024(n+1)^2-(n+1))`
-/

namespace A050609.P12209180518872680005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A050609.P12209180518872680005

/-! ## A050609.P6865141322938716052

`A050610(A057944(n)+A025581(n))`
-/

namespace A050609.P6865141322938716052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (A057944 n + A025581 n).toNat

end

end A050609.P6865141322938716052

/-! ## A050609.P16346524082977356539

`A050610(A025581(n)+n-A002262(n))`
-/

namespace A050609.P16346524082977356539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A050609.P16346524082977356539

/-! ## A050609.P3582169532521767259

`A050610(n-(A002262(n)-A025581(n)))`
-/

namespace A050609.P3582169532521767259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A050609.P3582169532521767259

/-!
# A050610: Sum_{i=0..y} (C(y,i) mod 2)*F(2i+x) = FL(y+x)*A050613(y), where A050613(y) = Product_{i=0..floor(log_2(y+1))} L(2^i)^bit(y,i).

The programs for A050610, there is no canonical definition to state claims against.
-/

/-! ## A050610.P4849664373461572391

`A050609(A061579(n))`
-/

namespace A050610.P4849664373461572391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (A061579 n).toNat

end

end A050610.P4849664373461572391

/-! ## A050610.P8747552325154477184

`A050609(A114327(n)+n)`
-/

namespace A050610.P8747552325154477184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (A114327 n + (n : ℤ)).toNat

end

end A050610.P8747552325154477184

/-! ## A050610.P8183271071947289026

`A050609(∑[A198954(n)-1])`
-/

namespace A050610.P8183271071947289026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050610.P8183271071947289026

/-! ## A050610.P7981734116402816223

`A050609(A038722(n+1)-1)`
-/

namespace A050610.P7981734116402816223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (A038722 (n + 1) - 1).toNat

end

end A050610.P7981734116402816223

/-! ## A050610.P16570557286212984832

`A050609(A002024(n+1)²-(n+1))`
-/

namespace A050610.P16570557286212984832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A050610.P16570557286212984832

/-! ## A050610.P3188254787328295009

`A050609(∑[A023443(A198954(n))])`
-/

namespace A050610.P3188254787328295009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050610.P3188254787328295009

/-! ## A050610.P626063904897405430

`A050609(A057944(n)+A025581(n))`
-/

namespace A050610.P626063904897405430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (A057944 n + A025581 n).toNat

end

end A050610.P626063904897405430

/-! ## A050610.P2546147648908812420

`A050609(A025581(n)+n-A002262(n))`
-/

namespace A050610.P2546147648908812420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A050610.P2546147648908812420

/-! ## A050610.P8565628521795640838

`A050609(n-(A002262(n)-A025581(n)))`
-/

namespace A050610.P8565628521795640838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A050610.P8565628521795640838

/-! ## A050610.P12674683885657319398

`A050613(A002262(n))*A075148(A061579(n))`
-/

namespace A050610.P12674683885657319398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050613 (A002262 n).toNat * A075148 (A061579 n).toNat

end

end A050610.P12674683885657319398

/-!
# A050611: Sum_{i=0..n} (C(n,i) mod 2)*Fibonacci(2i+1) = FL(n+1)Product(L(2^i)^bit(n,i),i=0..).

The programs for A050611, the canonical program `A050611.P12224551982442702682` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050611 has offset 0).

The definition of A050611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050611.P12224551982442702682

`round(ϕ*a(n-1))+2*a(and(n, n-1))-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050611

/-- `round(ϕ*a(n-1))+2*a(and(n, n-1))-1` -/
def P12224551982442702682.Spec : Prop :=
  ∀ n, P12224551982442702682.a n = A050611 n

theorem P12224551982442702682.correct : P12224551982442702682.Spec := by
  intro n
  simp only [A050611]

end A050611

/-! ## A050611.P16862968825056758817

`Δ[A228208(n+1)]*A050613(n)`
-/

namespace A050611.P16862968825056758817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050613 n

end

end A050611.P16862968825056758817

namespace A050611

/-- `Δ[A228208(n+1)]*A050613(n)` -/
def P16862968825056758817.Spec : Prop :=
  ∀ n, P16862968825056758817.a n = A050611 n

end A050611

/-! ## A050611.P2314095593346334177

`Δ[A228208(n+1)]*A050614(A004526(n))`
-/

namespace A050611.P2314095593346334177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050614 (A004526 n).toNat

end

end A050611.P2314095593346334177

namespace A050611

/-- `Δ[A228208(n+1)]*A050614(A004526(n))` -/
def P2314095593346334177.Spec : Prop :=
  ∀ n, P2314095593346334177.a n = A050611 n

end A050611

/-! ## A050611.P4058724115924213785

`ceil(floor(A050612(n)/ϕ)/ϕ)`
-/

namespace A050611.P4058724115924213785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A050612 n : ℝ) / Real.goldenRatio⌋ : ℝ) / Real.goldenRatio⌉

end

end A050611.P4058724115924213785

namespace A050611

/-- `ceil(floor(A050612(n)/ϕ)/ϕ)` -/
def P4058724115924213785.Spec : Prop :=
  ∀ n, P4058724115924213785.a n = A050611 n

end A050611

/-! ## A050611.P2905837296076922863

`(A050612(n)-A051656(n))/2`
-/

namespace A050611.P2905837296076922863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050612 n - A051656 n : ℚ) / 2

end

end A050611.P2905837296076922863

namespace A050611

/-- `(A050612(n)-A051656(n))/2` -/
def P2905837296076922863.Spec : Prop :=
  ∀ n, P2905837296076922863.a n = (A050611 n : ℚ)

end A050611

/-! ## A050611.P14672557820097772408

`floor(A050612(n)/ϕ)-A005013(n)*A050613(n)`
-/

namespace A050611.P14672557820097772408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050612 n : ℝ) / Real.goldenRatio⌋ - A005013 n * A050613 n

end

end A050611.P14672557820097772408

namespace A050611

/-- `floor(A050612(n)/ϕ)-A005013(n)*A050613(n)` -/
def P14672557820097772408.Spec : Prop :=
  ∀ n, P14672557820097772408.a n = A050611 n

end A050611

/-! ## A050611.P8789216397219667649

`A050609(∑[n+1]+1)`
-/

namespace A050611.P8789216397219667649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A050611.P8789216397219667649

namespace A050611

/-- `A050609(∑[n+1]+1)` -/
def P8789216397219667649.Spec : Prop :=
  ∀ n, P8789216397219667649.a n = A050611 n

end A050611

/-! ## A050611.P12357104217279355963

`A050610(∑[n+2]-1)`
-/

namespace A050611.P12357104217279355963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A050611.P12357104217279355963

namespace A050611

/-- `A050610(∑[n+2]-1)` -/
def P12357104217279355963.Spec : Prop :=
  ∀ n, P12357104217279355963.a n = A050611 n

end A050611

/-!
# A050612: Sum_{i=0..n} (C(n,i) mod 2)*Fibonacci(2i+3) = FL(n+3)Product(L(2^i)^bit(n,i),i=0..).

The programs for A050612, the canonical program `A050612.P13319731661089577793` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050612 has offset 0).

The definition of A050612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050612.P13319731661089577793

`round(ϕ*a(n-1))+2*a(and(n, n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050612

/-- `round(ϕ*a(n-1))+2*a(and(n, n-1))` -/
def P13319731661089577793.Spec : Prop :=
  ∀ n, P13319731661089577793.a n = A050612 n

theorem P13319731661089577793.correct : P13319731661089577793.Spec := by
  intro n
  simp only [A050612]

end A050612

/-! ## A050612.P8885858260732369973

`A051656(n)+2*A050611(n)`
-/

namespace A050612.P8885858260732369973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051656 n + 2 * A050611 n

end

end A050612.P8885858260732369973

namespace A050612

/-- `A051656(n)+2*A050611(n)` -/
def P8885858260732369973.Spec : Prop :=
  ∀ n, P8885858260732369973.a n = A050612 n

end A050612

/-! ## A050612.P10267665158024918393

`Δ[A228208(n+3)]*A050613(n)`
-/

namespace A050612.P10267665158024918393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228208 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050613 n

end

end A050612.P10267665158024918393

namespace A050612

/-- `Δ[A228208(n+3)]*A050613(n)` -/
def P10267665158024918393.Spec : Prop :=
  ∀ n, P10267665158024918393.a n = A050612 n

end A050612

/-! ## A050612.P12614659592554733232

`Δ[A228208(n+3)]*A050614(A004526(n))`
-/

namespace A050612.P12614659592554733232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228208 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050614 (A004526 n).toNat

end

end A050612.P12614659592554733232

namespace A050612

/-- `Δ[A228208(n+3)]*A050614(A004526(n))` -/
def P12614659592554733232.Spec : Prop :=
  ∀ n, P12614659592554733232.a n = A050612 n

end A050612

/-! ## A050612.P14374463801208719363

`ceil(ϕ*A050609(∑[n+2]+3))`
-/

namespace A050612.P14374463801208719363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A050609 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℝ)⌉

end

end A050612.P14374463801208719363

namespace A050612

/-- `ceil(ϕ*A050609(∑[n+2]+3))` -/
def P14374463801208719363.Spec : Prop :=
  ∀ n, P14374463801208719363.a n = A050612 n

end A050612

/-! ## A050612.P4759724663732611003

`ceil(ϕ*A050610(∑[n+3]))`
-/

namespace A050612.P4759724663732611003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A050610 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉

end

end A050612.P4759724663732611003

namespace A050612

/-- `ceil(ϕ*A050610(∑[n+3]))` -/
def P4759724663732611003.Spec : Prop :=
  ∀ n, P4759724663732611003.a n = A050612 n

end A050612

/-! ## A050612.P16597395844394213899

`A050609(∑[n+2]+n+7)`
-/

namespace A050612.P16597395844394213899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A050612.P16597395844394213899

namespace A050612

/-- `A050609(∑[n+2]+n+7)` -/
def P16597395844394213899.Spec : Prop :=
  ∀ n, P16597395844394213899.a n = A050612 n

end A050612

/-! ## A050612.P12446576533793357400

`A050611(n)+A050610(∑[n+3])`
-/

namespace A050612.P12446576533793357400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050611 n + A050610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050612.P12446576533793357400

namespace A050612

/-- `A050611(n)+A050610(∑[n+3])` -/
def P12446576533793357400.Spec : Prop :=
  ∀ n, P12446576533793357400.a n = A050612 n

end A050612

/-! ## A050612.P1594654921206989048

`A050610(∑[n+3]+n+3)`
-/

namespace A050612.P1594654921206989048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A050612.P1594654921206989048

namespace A050612

/-- `A050610(∑[n+3]+n+3)` -/
def P1594654921206989048.Spec : Prop :=
  ∀ n, P1594654921206989048.a n = A050612 n

end A050612

/-!
# A050613: Products of distinct terms of 1 and rest from A001566: a(n) = Product_{i=0..floor(log_2(n+1))} L(2^i)^bit(n,i).

The programs for A050613, the canonical program `A050613.P13423793685532721928` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050613 has offset 0).

The definition of A050613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050613.P13423793685532721928

`A075149(or(1, n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050613

/-- `A075149(or(1, n))` -/
def P13423793685532721928.Spec : Prop :=
  ∀ n, P13423793685532721928.a n = A050613 n

theorem P13423793685532721928.correct : P13423793685532721928.Spec := by
  intro n
  simp only [A050613]

end A050613

/-! ## A050613.P966794512149613626

`A050614(floor(n/2))`
-/

namespace A050613.P966794512149613626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050614 ⌊(n : ℚ) / 2⌋.toNat

end

end A050613.P966794512149613626

namespace A050613

/-- `A050614(floor(n/2))` -/
def P966794512149613626.Spec : Prop :=
  ∀ n, P966794512149613626.a n = A050613 n

end A050613

/-! ## A050613.P4231277880298704755

`A075149(A109613(n))`
-/

namespace A050613.P4231277880298704755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075149 (A109613 n).toNat

end

end A050613.P4231277880298704755

namespace A050613

/-- `A075149(A109613(n))` -/
def P4231277880298704755.Spec : Prop :=
  ∀ n, P4231277880298704755.a n = A050613 n

end A050613

/-! ## A050613.P8996928337419970869

`or(1, A050614(A004526(n)))`
-/

namespace A050613.P8996928337419970869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050614 (A004526 n).toNat)

end

end A050613.P8996928337419970869

namespace A050613

/-- `or(1, A050614(A004526(n)))` -/
def P8996928337419970869.Spec : Prop :=
  ∀ n, P8996928337419970869.a n = A050613 n

end A050613

/-! ## A050613.P16974250699768989832

`A050614(A004526(n))^A005894(C(n, n²))`
-/

namespace A050613.P16974250699768989832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050614 (A004526 n).toNat : ℚ) ^ (A005894 (Nat.choose n (n ^ 2)) : ℤ)

end

end A050613.P16974250699768989832

namespace A050613

/-- `A050614(A004526(n))^A005894(C(n, n²))` -/
def P16974250699768989832.Spec : Prop :=
  ∀ n, P16974250699768989832.a n = (A050613 n : ℚ)

end A050613

/-! ## A050613.P11157522976726529815

`A050614(A004526(n))+A025439(A025439(n))`
-/

namespace A050613.P11157522976726529815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050614 (A004526 n).toNat + A025439 (A025439 n).toNat

end

end A050613.P11157522976726529815

namespace A050613

/-- `A050614(A004526(n))+A025439(A025439(n))` -/
def P11157522976726529815.Spec : Prop :=
  ∀ n, P11157522976726529815.a n = A050613 n

end A050613

/-! ## A050613.P13465707764779599210

`A050614(A004526(n))/A001222(A002144(n+1))`
-/

namespace A050613.P13465707764779599210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050614 (A004526 n).toNat : ℚ) / (A001222 (A002144 (n + 1)).toNat : ℚ)

end

end A050613.P13465707764779599210

namespace A050613

/-- `A050614(A004526(n))/A001222(A002144(n+1))` -/
def P13465707764779599210.Spec : Prop :=
  ∀ n, P13465707764779599210.a n = (A050613 n : ℚ)

end A050613

/-! ## A050613.P3741904112124477011

`gcd(A050611(n), A051656(n))`
-/

namespace A050613.P3741904112124477011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050611 n) (A051656 n)

end

end A050613.P3741904112124477011

namespace A050613

/-- `gcd(A050611(n), A051656(n))` -/
def P3741904112124477011.Spec : Prop :=
  ∀ n, (P3741904112124477011.a n : ℤ) = A050613 n

end A050613

/-! ## A050613.P9692392837175946112

`A050614(A004526(n))%A050614(n+1)`
-/

namespace A050613.P9692392837175946112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050614 (A004526 n).toNat) (A050614 (n + 1))

end

end A050613.P9692392837175946112

namespace A050613

/-- `A050614(A004526(n))%A050614(n+1)` -/
def P9692392837175946112.Spec : Prop :=
  ∀ n, P9692392837175946112.a n = A050613 n

end A050613

/-!
# A050614: Products of distinct terms of A001566: a(n) = Product_{i=0..floor(log_2(n+1))} L(2^(i+1))^bit(n,i).

The programs for A050614, the canonical program `A050614.P3798663840407021647` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050614 has offset 0).

The definition of A050614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050614.P3798663840407021647

`A050613(2*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050614

/-- `A050613(2*n)` -/
def P3798663840407021647.Spec : Prop :=
  ∀ n, P3798663840407021647.a n = A050614 n

theorem P3798663840407021647.correct : P3798663840407021647.Spec := by
  intro n
  simp only [A050614]

end A050614

/-! ## A050614.P8193429957068246696

`A075149(Δ[n²])`
-/

namespace A050614.P8193429957068246696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A050614.P8193429957068246696

namespace A050614

/-- `A075149(Δ[n²])` -/
def P8193429957068246696.Spec : Prop :=
  ∀ n, P8193429957068246696.a n = A050614 n

end A050614

/-! ## A050614.P11189446301111395947

`gcd(A050611(2*n), A051656(2*n))`
-/

namespace A050614.P11189446301111395947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050611 (2 * n)) (A051656 (2 * n))

end

end A050614.P11189446301111395947

namespace A050614

/-- `gcd(A050611(2*n), A051656(2*n))` -/
def P11189446301111395947.Spec : Prop :=
  ∀ n, (P11189446301111395947.a n : ℤ) = A050614 n

end A050614

/-! ## A050614.P4324498690894518257

`A050611(2*n)/A000045(2*n+1)`
-/

namespace A050614.P4324498690894518257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050611 (2 * n) : ℚ) / (A000045 (2 * n + 1) : ℚ)

end

end A050614.P4324498690894518257

namespace A050614

/-- `A050611(2*n)/A000045(2*n+1)` -/
def P4324498690894518257.Spec : Prop :=
  ∀ n, P4324498690894518257.a n = (A050614 n : ℚ)

end A050614

/-! ## A050614.P4041991337531492747

`A051656(2*n+1)/A000032(2*n+1)`
-/

namespace A050614.P4041991337531492747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051656 (2 * n + 1) : ℚ) / (A000032 (2 * n + 1) : ℚ)

end

end A050614.P4041991337531492747

namespace A050614

/-- `A051656(2*n+1)/A000032(2*n+1)` -/
def P4041991337531492747.Spec : Prop :=
  ∀ n, P4041991337531492747.a n = (A050614 n : ℚ)

end A050614

/-! ## A050614.P17778704248285397405

`ceil(A051656(2*n+1)/A001612(2*n+1))`
-/

namespace A050614.P17778704248285397405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051656 (2 * n + 1) : ℚ) / (A001612 (2 * n + 1) : ℚ)⌉

end

end A050614.P17778704248285397405

namespace A050614

/-- `ceil(A051656(2*n+1)/A001612(2*n+1))` -/
def P17778704248285397405.Spec : Prop :=
  ∀ n, P17778704248285397405.a n = A050614 n

end A050614

/-! ## A050614.P16667188756361886931

`gcd(A051656(2*n)², A051656(2*n+1))`
-/

namespace A050614.P16667188756361886931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051656 (2 * n) ^ 2) (A051656 (2 * n + 1))

end

end A050614.P16667188756361886931

namespace A050614

/-- `gcd(A051656(2*n)², A051656(2*n+1))` -/
def P16667188756361886931.Spec : Prop :=
  ∀ n, (P16667188756361886931.a n : ℤ) = A050614 n

end A050614

/-!
# A050615: Products of distinct terms of Fibonacci(2^(i+2)): a(n) = Product_{i=0..floor(log_2(n+1))} F(2^(i+2))^bit(n,i).

The programs for A050615, the canonical program `A050615.P3198622266931088097` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050615 has offset 0).

The definition of A050615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050615.P3198622266931088097

`a(A004526(n))*A050614(n)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050615

/-- `a(A004526(n))*A050614(n)` -/
def P3198622266931088097.Spec : Prop :=
  ∀ n, P3198622266931088097.a n = A050615 n

theorem P3198622266931088097.correct : P3198622266931088097.Spec := by
  intro n
  simp only [A050615]

end A050615

/-! ## A050615.P2488673570397765453

`a(floor(n/2))*A075149(A005408(n))` with `a(0)=1`
-/

namespace A050615.P2488673570397765453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A075149 (A005408 n).toNat

end

end A050615.P2488673570397765453

namespace A050615

/-- `a(floor(n/2))*A075149(A005408(n))` -/
def P2488673570397765453.Spec : Prop :=
  ∀ n, P2488673570397765453.a n = A050615 n

end A050615

/-! ## A050615.P13729575732347487909

`a(A002265(2*n))*A050613(2*n)` with `a(0)=1`
-/

namespace A050615.P13729575732347487909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A002265 (2 * n)).toNat * A050613 (2 * n)

end

end A050615.P13729575732347487909

namespace A050615

/-- `a(A002265(2*n))*A050613(2*n)` -/
def P13729575732347487909.Spec : Prop :=
  ∀ n, P13729575732347487909.a n = A050615 n

theorem P13729575732347487909.correct : P13729575732347487909.Spec := by
  intro n
  simp only [A050615, Nat.add_sub_cancel, A050615.P13729575732347487909.a, A050615.P3198622266931088097.a, A002265, A002265.P2157561802369677908.a, A004526, A004526.P10084182425416171735.a, A050613, A050613.P13423793685532721928.a, A050614, A050614.P3798663840407021647.a, A075149, A075149.P18175513624776809686.a, A000032, A000032.P8352177345629330861.a, A051656, A051656.P2766928477570760941.a, A050611, A050611.P12224551982442702682.a, A050612, A050612.P13319731661089577793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050615

/-! ## A050615.P13743732731896485328

`∏{p}[A019565(n), A001906(A181821(#))]`
-/

namespace A050615.P13743732731896485328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001906 (A181821 p).toNat

end

end A050615.P13743732731896485328

namespace A050615

/-- `∏{p}[A019565(n), A001906(A181821(#))]` -/
def P13743732731896485328.Spec : Prop :=
  ∀ n, P13743732731896485328.a n = A050615 n

end A050615

/-!
# A050616: Numbers k such that 149*2^k-1 is prime.

The programs for A050616, there is no canonical definition to state claims against.
-/

/-! ## A050616.P15288409405572766077

`2*A175181(∑[A249902(n+1)])`
-/

namespace A050616.P15288409405572766077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050616.P15288409405572766077

/-! ## A050616.P6860075201437649012

`A001414(A019279(n+1))*A083718(n+1)`
-/

namespace A050616.P6860075201437649012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A019279 (n + 1)).toNat * A083718 (n + 1)

end

end A050616.P6860075201437649012

/-!
# A050620: Quotients arising from sequence A035014.

The programs for A050620, the canonical program `A050620.P108835308460644639` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050620 has offset 1).

The definition of A050620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050620.P108835308460644639

`a(n-1)/2+5^n*(4-a(n-1)%2)/2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050620

/-- `a(n-1)/2+5^n*(4-a(n-1)%2)/2` -/
def P108835308460644639.Spec : Prop :=
  ∀ n, P108835308460644639.a n = (A050620 (n + 1) : ℚ)

end A050620

/-! ## A050620.P14481154582631180407

`A035014(n+1)/2^(n+1)`
-/

namespace A050620.P14481154582631180407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035014 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A050620.P14481154582631180407

namespace A050620

/-- `A035014(n+1)/2^(n+1)` -/
def P14481154582631180407.Spec : Prop :=
  ∀ n, P14481154582631180407.a n = (A050620 (n + 1) : ℚ)

end A050620

/-! ## A050620.P17673422717247044046

`A035014(n+1)/A050621(n+1)*A034478(n)`
-/

namespace A050620.P17673422717247044046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035014 (n + 1) : ℚ) / (A050621 (n + 1) : ℚ) * (A034478 n : ℚ)

end

end A050620.P17673422717247044046

namespace A050620

/-- `A035014(n+1)/A050621(n+1)*A034478(n)` -/
def P17673422717247044046.Spec : Prop :=
  ∀ n, P17673422717247044046.a n = (A050620 (n + 1) : ℚ)

end A050620

/-! ## A050620.P16027254194323356957

`A035014(n+1)/A053317(n+1)*A055880(n+1)`
-/

namespace A050620.P16027254194323356957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035014 (n + 1) : ℚ) / (A053317 (n + 1) : ℚ) * (A055880 (n + 1) : ℚ)

end

end A050620.P16027254194323356957

namespace A050620

/-- `A035014(n+1)/A053317(n+1)*A055880(n+1)` -/
def P16027254194323356957.Spec : Prop :=
  ∀ n, P16027254194323356957.a n = (A050620 (n + 1) : ℚ)

end A050620

/-! ## A050620.P12099680852694141581

`A035014(n+1)/A053312(n+1)*A126933(n+1)`
-/

namespace A050620.P12099680852694141581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035014 (n + 1) : ℚ) / (A053312 (n + 1) : ℚ) * (A126933 (n + 1) : ℚ)

end

end A050620.P12099680852694141581

namespace A050620

/-- `A035014(n+1)/A053312(n+1)*A126933(n+1)` -/
def P12099680852694141581.Spec : Prop :=
  ∀ n, P12099680852694141581.a n = (A050620 (n + 1) : ℚ)

end A050620

/-!
# A050621: Smallest n-digit number divisible by 2^n.

The programs for A050621, the canonical program `A050621.P18129169329963214370` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050621 has offset 1).

The definition of A050621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050621.P18129169329963214370

`2^n+10^n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050621

/-- `2^n+10^n` -/
def P18129169329963214370.Spec : Prop :=
  ∀ n, (P18129169329963214370.a n : ℤ) = A050621 (n + 1)

theorem P18129169329963214370.correct : P18129169329963214370.Spec := by
  intro n
  simp only [A050621, Nat.add_sub_cancel]

end A050621

/-! ## A050621.P14178740962902093795

`ogf((2-12x)/(1-12x+20x^2))`
-/

namespace A050621.P14178740962902093795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -12] [1, -12, 20] n

end

end A050621.P14178740962902093795

namespace A050621

/-- `ogf((2-12x)/(1-12x+20x^2))` -/
def P14178740962902093795.Spec : Prop :=
  ∀ n, P14178740962902093795.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P14765558022322654388

`2^n*xor(3, 5^n)`
-/

namespace A050621.P14765558022322654388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.xor 3 (5 ^ n)

end

end A050621.P14765558022322654388

namespace A050621

/-- `2^n*xor(3, 5^n)` -/
def P14765558022322654388.Spec : Prop :=
  ∀ n, (P14765558022322654388.a n : ℤ) = A050621 (n + 1)

end A050621

/-! ## A050621.P14855547181050667303

`2^n*∑[5*a(n-1)]` with `a(0)=2, a(1)=4`
-/

namespace A050621.P14855547181050667303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050621.P14855547181050667303

namespace A050621

/-- `2^n*∑[5*a(n-1)]` -/
def P14855547181050667303.Spec : Prop :=
  ∀ n, (P14855547181050667303.a n : ℤ) = A050621 (n + 1)

end A050621

/-! ## A050621.P10701119521450597895

`xor(1, A155594(n)+2)`
-/

namespace A050621.P10701119521450597895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155594 n + 2)

end

end A050621.P10701119521450597895

namespace A050621

/-- `xor(1, A155594(n)+2)` -/
def P10701119521450597895.Spec : Prop :=
  ∀ n, P10701119521450597895.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P10239976968973943018

`2^n*A034474(n)`
-/

namespace A050621.P10239976968973943018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034474 n

end

end A050621.P10239976968973943018

namespace A050621

/-- `2^n*A034474(n)` -/
def P10239976968973943018.Spec : Prop :=
  ∀ n, P10239976968973943018.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P1987250195365142475

`xor(A007283(n), A011557(n))`
-/

namespace A050621.P1987250195365142475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A011557 n)

end

end A050621.P1987250195365142475

namespace A050621

/-- `xor(A007283(n), A011557(n))` -/
def P1987250195365142475.Spec : Prop :=
  ∀ n, P1987250195365142475.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P9585625678255684782

`abs(A034474(n)-A034517(n))`
-/

namespace A050621.P9585625678255684782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A034517 n|

end

end A050621.P9585625678255684782

namespace A050621

/-- `abs(A034474(n)-A034517(n))` -/
def P9585625678255684782.Spec : Prop :=
  ∀ n, P9585625678255684782.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P1703099941847807552

`record[A055237(n)*A055248(n)]`
-/

namespace A050621.P1703099941847807552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 n * A055248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050621.P1703099941847807552

namespace A050621

/-- `record[A055237(n)*A055248(n)]` -/
def P1703099941847807552.Spec : Prop :=
  ∀ n, P1703099941847807552.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P10732310103233710872

`(A000351(n)+1)*A000079(n)`
-/

namespace A050621.P10732310103233710872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n + 1) * A000079 n

end

end A050621.P10732310103233710872

namespace A050621

/-- `(A000351(n)+1)*A000079(n)` -/
def P10732310103233710872.Spec : Prop :=
  ∀ n, P10732310103233710872.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P16926109944246511765

`A000079(n+1)*A034478(n)`
-/

namespace A050621.P16926109944246511765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A034478 n

end

end A050621.P16926109944246511765

namespace A050621

/-- `A000079(n+1)*A034478(n)` -/
def P16926109944246511765.Spec : Prop :=
  ∀ n, P16926109944246511765.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P18058635735899278860

`(A024049(n)+2)*A000079(n)`
-/

namespace A050621.P18058635735899278860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024049 n + 2) * A000079 n

end

end A050621.P18058635735899278860

namespace A050621

/-- `(A024049(n)+2)*A000079(n)` -/
def P18058635735899278860.Spec : Prop :=
  ∀ n, P18058635735899278860.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P2001098882310499661

`2*A000079(n)*A034478(n)`
-/

namespace A050621.P2001098882310499661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n * A034478 n)

end

end A050621.P2001098882310499661

namespace A050621

/-- `2*A000079(n)*A034478(n)` -/
def P2001098882310499661.Spec : Prop :=
  ∀ n, P2001098882310499661.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P8516485709187600976

`(A155596(n)+A000079(n))*A000079(n)`
-/

namespace A050621.P8516485709187600976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155596 n + A000079 n) * A000079 n

end

end A050621.P8516485709187600976

namespace A050621

/-- `(A155596(n)+A000079(n))*A000079(n)` -/
def P8516485709187600976.Spec : Prop :=
  ∀ n, P8516485709187600976.a n = A050621 (n + 1)

end A050621

/-! ## A050621.P13884988906693080156

`A034474(n)/A007689(n)*A074612(n)`
-/

namespace A050621.P13884988906693080156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034474 n : ℚ) / (A007689 n : ℚ) * (A074612 n : ℚ)

end

end A050621.P13884988906693080156

namespace A050621

/-- `A034474(n)/A007689(n)*A074612(n)` -/
def P13884988906693080156.Spec : Prop :=
  ∀ n, P13884988906693080156.a n = (A050621 (n + 1) : ℚ)

end A050621

/-! ## A050621.P14441786048741178834

`A034474(n)/A034472(n)*A074601(n)`
-/

namespace A050621.P14441786048741178834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034474 n : ℚ) / (A034472 n : ℚ) * (A074601 n : ℚ)

end

end A050621.P14441786048741178834

namespace A050621

/-- `A034474(n)/A034472(n)*A074601(n)` -/
def P14441786048741178834.Spec : Prop :=
  ∀ n, P14441786048741178834.a n = (A050621 (n + 1) : ℚ)

end A050621

/-! ## A050621.P11659233599451696257

`A034474(n)/A052539(n)*A074603(n)`
-/

namespace A050621.P11659233599451696257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034474 n : ℚ) / (A052539 n : ℚ) * (A074603 n : ℚ)

end

end A050621.P11659233599451696257

namespace A050621

/-- `A034474(n)/A052539(n)*A074603(n)` -/
def P11659233599451696257.Spec : Prop :=
  ∀ n, P11659233599451696257.a n = (A050621 (n + 1) : ℚ)

end A050621

/-! ## A050621.P6299957217719153187

`A034474(n)/A000051(n)*A161168(n)`
-/

namespace A050621.P6299957217719153187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034474 n : ℚ) / (A000051 n : ℚ) * (A161168 n : ℚ)

end

end A050621.P6299957217719153187

namespace A050621

/-- `A034474(n)/A000051(n)*A161168(n)` -/
def P6299957217719153187.Spec : Prop :=
  ∀ n, P6299957217719153187.a n = (A050621 (n + 1) : ℚ)

end A050621

/-! ## A050621.P6173194566815801997

`A034474(n)/A161168(n)*A063481(n)`
-/

namespace A050621.P6173194566815801997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034474 n : ℚ) / (A161168 n : ℚ) * (A063481 n : ℚ)

end

end A050621.P6173194566815801997

namespace A050621

/-- `A034474(n)/A161168(n)*A063481(n)` -/
def P6173194566815801997.Spec : Prop :=
  ∀ n, P6173194566815801997.a n = (A050621 (n + 1) : ℚ)

end A050621

/-!
# A050622: Numbers m that are divisible by 2^k, where k is the digit length of m.

The programs for A050622, the canonical program `A050622.P13515621561881358484` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050622 has offset 1).

The definition of A050622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050622.P6098820557710673550

`record[(2*(n+1))%A007088(A171977(n+1))]`
-/

namespace A050622.P6098820557710673550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A007088 (A171977 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050622.P6098820557710673550

namespace A050622

/-- `record[(2*(n+1))%A007088(A171977(n+1))]` -/
def P6098820557710673550.Spec : Prop :=
  ∀ n, P6098820557710673550.a n = A050622 (n + 1)

end A050622

/-! ## A050622.P13515621561881358484

`record[A005843(n+1)%A103456(A001511(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050622

/-- `record[A005843(n+1)%A103456(A001511(n+1))]` -/
def P13515621561881358484.Spec : Prop :=
  ∀ n, P13515621561881358484.a n = A050622 (n + 1)

theorem P13515621561881358484.correct : P13515621561881358484.Spec := by
  intro n
  simp only [A050622, Nat.add_sub_cancel]

end A050622

/-! ## A050622.P2140170845210671234

`lt[n+1, 10^A007814(n+1)]+1`
-/

namespace A050622.P2140170845210671234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A007814 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A050622.P2140170845210671234

namespace A050622

/-- `lt[n+1, 10^A007814(n+1)]+1` -/
def P2140170845210671234.Spec : Prop :=
  ∀ n, (P2140170845210671234.a n : ℤ) = A050622 (n + 1)

end A050622

/-! ## A050622.P5509449448333350368

`lt[A055642(n), A001511(A028310(n))]`
-/

namespace A050622.P5509449448333350368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050622.P5509449448333350368

namespace A050622

/-- `lt[A055642(n), A001511(A028310(n))]` -/
def P5509449448333350368.Spec : Prop :=
  ∀ n, (P5509449448333350368.a n : ℤ) = A050622 (n + 1)

end A050622

/-! ## A050622.P14708705974717514904

`∑[∏[A035214(A213041(n))]]`
-/

namespace A050622.P14708705974717514904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A213041 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050622.P14708705974717514904

namespace A050622

/-- `∑[∏[A035214(A213041(n))]]` -/
def P14708705974717514904.Spec : Prop :=
  ∀ n, P14708705974717514904.a n = A050622 (n + 1)

end A050622

/-! ## A050622.P15633108123888622160

`∑[2^A262432(∑[n+1]+1)]`
-/

namespace A050622.P15633108123888622160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A262432 (∑ j ∈ Finset.range (n + 1), f2 j + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050622.P15633108123888622160

namespace A050622

/-- `∑[2^A262432(∑[n+1]+1)]` -/
def P15633108123888622160.Spec : Prop :=
  ∀ n, P15633108123888622160.a n = (A050622 (n + 1) : ℚ)

end A050622

/-! ## A050622.P7978113369064683898

`∑[2^A055642(A186888(n+1))]`
-/

namespace A050622.P7978113369064683898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A055642 (A186888 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050622.P7978113369064683898

namespace A050622

/-- `∑[2^A055642(A186888(n+1))]` -/
def P7978113369064683898.Spec : Prop :=
  ∀ n, P7978113369064683898.a n = (A050622 (n + 1) : ℚ)

end A050622

/-! ## A050622.P10521145756681759984

`∑[A059261(A132197(n+1)+1)]`
-/

namespace A050622.P10521145756681759984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A132197 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050622.P10521145756681759984

namespace A050622

/-- `∑[A059261(A132197(n+1)+1)]` -/
def P10521145756681759984.Spec : Prop :=
  ∀ n, P10521145756681759984.a n = A050622 (n + 1)

end A050622

/-!
# A050623: Smallest n-digit number divisible by 3^n.

The programs for A050623, the canonical program `A050623.P5472963422955788860` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050623 has offset 1).

The definition of A050623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050623.P5472963422955788860

`3^(n+1)*ceil(10^n/3^(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050623

/-- `3^(n+1)*ceil(10^n/3^(n+1))` -/
def P5472963422955788860.Spec : Prop :=
  ∀ n, P5472963422955788860.a n = A050623 (n + 1)

theorem P5472963422955788860.correct : P5472963422955788860.Spec := by
  intro n
  simp only [A050623, Nat.add_sub_cancel]

end A050623

/-!
# A050624: Let b(n) = A050623(n) = smallest n-digit number divisible by 3^n; sequence gives b(n)/3^n.

The programs for A050624, the canonical program `A050624.P9768768139054257040` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050624 has offset 1).

The definition of A050624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050624.P9768768139054257040

`ceil(10^n/3^(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050624

/-- `ceil(10^n/3^(n+1))` -/
def P9768768139054257040.Spec : Prop :=
  ∀ n, P9768768139054257040.a n = A050624 (n + 1)

theorem P9768768139054257040.correct : P9768768139054257040.Spec := by
  intro n
  simp only [A050624, Nat.add_sub_cancel]

end A050624

/-! ## A050624.P15419828885357519538

`floor(A094977(n)/3)+1`
-/

namespace A050624.P15419828885357519538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094977 n : ℚ) / 3⌋ + 1

end

end A050624.P15419828885357519538

namespace A050624

/-- `floor(A094977(n)/3)+1` -/
def P15419828885357519538.Spec : Prop :=
  ∀ n, P15419828885357519538.a n = A050624 (n + 1)

end A050624

/-! ## A050624.P13995411029840075599

`A050623(n+1)/A133494(n+2)`
-/

namespace A050624.P13995411029840075599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050623 (n + 1) : ℚ) / (A133494 (n + 2) : ℚ)

end

end A050624.P13995411029840075599

namespace A050624

/-- `A050623(n+1)/A133494(n+2)` -/
def P13995411029840075599.Spec : Prop :=
  ∀ n, P13995411029840075599.a n = (A050624 (n + 1) : ℚ)

end A050624

/-! ## A050624.P10654639408540152822

`A050623(n+1)/A027465(∑[n+1])`
-/

namespace A050624.P10654639408540152822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050623 (n + 1) : ℚ) / (A027465 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A050624.P10654639408540152822

namespace A050624

/-- `A050623(n+1)/A027465(∑[n+1])` -/
def P10654639408540152822.Spec : Prop :=
  ∀ n, P10654639408540152822.a n = (A050624 (n + 1) : ℚ)

end A050624

/-! ## A050624.P13804228903655720799

`A050623(n+1)/A056449(A005408(n))`
-/

namespace A050624.P13804228903655720799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050623 (n + 1) : ℚ) / (A056449 (A005408 n).toNat : ℚ)

end

end A050624.P13804228903655720799

namespace A050624

/-- `A050623(n+1)/A056449(A005408(n))` -/
def P13804228903655720799.Spec : Prop :=
  ∀ n, P13804228903655720799.a n = (A050624 (n + 1) : ℚ)

end A050624

/-!
# A050625: Divisible by 3^k (where k is digit length of a(n)).

The programs for A050625, the canonical program `A050625.P8966498542950054992` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050625 has offset 1).

The definition of A050625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050625.P8966498542950054992

`lt[A055642(n), A051064(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050625

/-- `lt[A055642(n), A051064(n+1)]+1` -/
def P8966498542950054992.Spec : Prop :=
  ∀ n, (P8966498542950054992.a n : ℤ) = A050625 (n + 1)

theorem P8966498542950054992.correct : P8966498542950054992.Spec := by
  intro n
  simp only [A050625, Nat.add_sub_cancel]

end A050625

/-! ## A050625.P17765123475983855706

`lt[A055642(n), A007949(A298036(n))]`
-/

namespace A050625.P17765123475983855706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A298036 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050625.P17765123475983855706

namespace A050625

/-- `lt[A055642(n), A007949(A298036(n))]` -/
def P17765123475983855706.Spec : Prop :=
  ∀ n, (P17765123475983855706.a n : ℤ) = A050625 (n + 1)

end A050625

/-! ## A050625.P7287702099022634415

`∑[A132171(A143824(∑[n+1]))]`
-/

namespace A050625.P7287702099022634415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A143824 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050625.P7287702099022634415

namespace A050625

/-- `∑[A132171(A143824(∑[n+1]))]` -/
def P7287702099022634415.Spec : Prop :=
  ∀ n, P7287702099022634415.a n = A050625 (n + 1)

end A050625

/-! ## A050625.P4473084841285306088

`∑[A330079(ceil(A276523(2*n+3)/5))]`
-/

namespace A050625.P4473084841285306088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330079 ⌈(A276523 (2 * n + 3) : ℚ) / 5⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050625.P4473084841285306088

namespace A050625

/-- `∑[A330079(ceil(A276523(2*n+3)/5))]` -/
def P4473084841285306088.Spec : Prop :=
  ∀ n, P4473084841285306088.a n = A050625 (n + 1)

end A050625

/-!
# A050626: Product of digits of n is a nonzero square.

The programs for A050626, the canonical program `A050626.P10903576763594293203` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050626 has offset 1).

The definition of A050626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050626.P10903576763594293203

`lt[1, A000122(abs(A187844(n)))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050626

/-- `lt[1, A000122(abs(A187844(n)))]` -/
def P10903576763594293203.Spec : Prop :=
  ∀ n, (P10903576763594293203.a n : ℤ) = A050626 (n + 1)

theorem P10903576763594293203.correct : P10903576763594293203.Spec := by
  intro n
  simp only [A050626, Nat.add_sub_cancel]

end A050626

/-! ## A050626.P13657260156606540453

`∩[A052382(n+1), A062371(n+1)]`
-/

namespace A050626.P13657260156606540453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050626.P13657260156606540453

namespace A050626

/-- `∩[A052382(n+1), A062371(n+1)]` -/
def P13657260156606540453.Spec : Prop :=
  ∀ n, (P13657260156606540453.a n : ℤ) = A050626 (n + 1)

end A050626

/-! ## A050626.P10219684600196982062

`eq[2, A000122(A007954(n))]`
-/

namespace A050626.P10219684600196982062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050626.P10219684600196982062

namespace A050626

/-- `eq[2, A000122(A007954(n))]` -/
def P10219684600196982062.Spec : Prop :=
  ∀ n, (P10219684600196982062.a n : ℤ) = A050626 (n + 1)

end A050626

/-! ## A050626.P7575590603174010299

`filter[A062371(n+1), A168046(#)]`
-/

namespace A050626.P7575590603174010299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A050626.P7575590603174010299

namespace A050626

/-- `filter[A062371(n+1), A168046(#)]` -/
def P7575590603174010299.Spec : Prop :=
  ∀ n, P7575590603174010299.a n = A050626 (n + 1)

end A050626

/-! ## A050626.P1884308629517235669

`eq[1, A002828(A230099(n)-n)]`
-/

namespace A050626.P1884308629517235669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A230099 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050626.P1884308629517235669

namespace A050626

/-- `eq[1, A002828(A230099(n)-n)]` -/
def P1884308629517235669.Spec : Prop :=
  ∀ n, (P1884308629517235669.a n : ℤ) = A050626 (n + 1)

end A050626

/-! ## A050626.P3920716602981597862

`record[(n+1)%(A037213(A007954(n+1))+n+1)]`
-/

namespace A050626.P3920716602981597862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A037213 (A007954 (n + 1)).toNat + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050626.P3920716602981597862

namespace A050626

/-- `record[(n+1)%(A037213(A007954(n+1))+n+1)]` -/
def P3920716602981597862.Spec : Prop :=
  ∀ n, P3920716602981597862.a n = A050626 (n + 1)

end A050626

/-! ## A050626.P11437863626980410985

`eq[A007954(n), A048760(A051801(n))]`
-/

namespace A050626.P11437863626980410985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050626.P11437863626980410985

namespace A050626

/-- `eq[A007954(n), A048760(A051801(n))]` -/
def P11437863626980410985.Spec : Prop :=
  ∀ n, (P11437863626980410985.a n : ℤ) = A050626 (n + 1)

end A050626

/-! ## A050626.P15750195778263329287

`eq[A010052(A007954(n)), A168046(n)]`
-/

namespace A050626.P15750195778263329287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050626.P15750195778263329287

namespace A050626

/-- `eq[A010052(A007954(n)), A168046(n)]` -/
def P15750195778263329287.Spec : Prop :=
  ∀ n, (P15750195778263329287.a n : ℤ) = A050626 (n + 1)

end A050626

/-! ## A050626.P4465630019610576323

`eq[A002828(A051801(n)), A168046(n)]`
-/

namespace A050626.P4465630019610576323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050626.P4465630019610576323

namespace A050626

/-- `eq[A002828(A051801(n)), A168046(n)]` -/
def P4465630019610576323.Spec : Prop :=
  ∀ n, (P4465630019610576323.a n : ℤ) = A050626 (n + 1)

end A050626

/-! ## A050626.P10317382203939043544

`eq[A055641(n), A341862(A007954(n))]`
-/

namespace A050626.P10317382203939043544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050626.P10317382203939043544

namespace A050626

/-- `eq[A055641(n), A341862(A007954(n))]` -/
def P10317382203939043544.Spec : Prop :=
  ∀ n, (P10317382203939043544.a n : ℤ) = A050626 (n + 1)

end A050626

/-! ## A050626.P11684308255868845527

`eq[A007954(n), A048760(A007954(n)+1)]`
-/

namespace A050626.P11684308255868845527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050626.P11684308255868845527

namespace A050626

/-- `eq[A007954(n), A048760(A007954(n)+1)]` -/
def P11684308255868845527.Spec : Prop :=
  ∀ n, (P11684308255868845527.a n : ℤ) = A050626 (n + 1)

end A050626

/-! ## A050626.P10178766553101907253

`eq[A168046(n), A275437(A051801(n)-1)]`
-/

namespace A050626.P10178766553101907253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (A051801 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050626.P10178766553101907253

namespace A050626

/-- `eq[A168046(n), A275437(A051801(n)-1)]` -/
def P10178766553101907253.Spec : Prop :=
  ∀ n, (P10178766553101907253.a n : ℤ) = A050626 (n + 1)

end A050626

/-!
# A050627: Product of digits of n is a nonzero single-digit square.

The programs for A050627, there is no canonical definition to state claims against.
-/

/-! ## A050627.P17750311614574759472

`∩[A028845(n+1), A090274(n+1)]`
-/

namespace A050627.P17750311614574759472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050627.P17750311614574759472

/-! ## A050627.P12679606502213302795

`∩[A028845(n+1), A050626(n+1)]`
-/

namespace A050627.P12679606502213302795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050627.P12679606502213302795

/-! ## A050627.P9712568365918598605

`∩[A050626(n+1), A090274(n+1)]`
-/

namespace A050627.P9712568365918598605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050627.P9712568365918598605

/-! ## A050627.P3010427001760644878

`∩[A028845(n+1), A062371(n+1)]`
-/

namespace A050627.P3010427001760644878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050627.P3010427001760644878

/-! ## A050627.P5782618977393037762

`∩[A062371(n+1), A090274(n+1)]`
-/

namespace A050627.P5782618977393037762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050627.P5782618977393037762

/-! ## A050627.P4550293083338346544

`∩[A028845(n+1), A090273(n+1)]`
-/

namespace A050627.P4550293083338346544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050627.P4550293083338346544

/-! ## A050627.P4049807512528482323

`∩[A050626(n+1), A090273(n+1)]`
-/

namespace A050627.P4049807512528482323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050627.P4049807512528482323

/-!
# A050628: a(1) = 1; a(n+1) is next smallest nontrivial square containing a(n) as a substring.

The programs for A050628, there is no canonical definition to state claims against.
-/

/-! ## A050628.P14581970494095029337

`A050629(n+1)²`
-/

namespace A050628.P14581970494095029337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050629 (n + 1) ^ 2

end

end A050628.P14581970494095029337

/-! ## A050628.P6056935309278857427

`record[A050629(A137734(n))²]`
-/

namespace A050628.P6056935309278857427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050629 (A137734 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050628.P6056935309278857427

/-! ## A050628.P4360583585160783749

`A050629(n+1)^A001316(A007318(n))`
-/

namespace A050628.P4360583585160783749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050629 (n + 1) : ℚ) ^ (A001316 (A007318 n).toNat : ℤ)

end

end A050628.P4360583585160783749

/-!
# A050629: a(n+1)^2 is next smallest nontrivial square containing a(n)^2 as a substring, initial term is 1.

The programs for A050629, there is no canonical definition to state claims against.
-/

/-! ## A050629.P3239051860577929276

`sqrt(A050628(n+1))`
-/

namespace A050629.P3239051860577929276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050628 (n + 1) : ℝ)

end

end A050629.P3239051860577929276

/-! ## A050629.P6300309699188556847

`root(A050628(n+1), abs(A280560(n)))`
-/

namespace A050629.P6300309699188556847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050628 (n + 1) : ℝ) ^ (1 / (|A280560 n| : ℝ))

end

end A050629.P6300309699188556847

/-!
# A050630: a(n+1) is next smallest nontrivial square containing a(n) as a substring, initial term is 4.

The programs for A050630, there is no canonical definition to state claims against.
-/

/-! ## A050630.P3686032090300248863

`A050631(n+1)²`
-/

namespace A050630.P3686032090300248863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050631 (n + 1) ^ 2

end

end A050630.P3686032090300248863

/-! ## A050630.P5927702917756830451

`A050631(n+1)^A001316(A001316(n))`
-/

namespace A050630.P5927702917756830451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050631 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A050630.P5927702917756830451

/-! ## A050630.P6388593777845699844

`A050631(n+1)^A000005(A066436(n+1))`
-/

namespace A050630.P6388593777845699844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050631 (n + 1) : ℚ) ^ (A000005 (A066436 (n + 1)).toNat : ℤ)

end

end A050630.P6388593777845699844

/-!
# A050631: a(1)=2; for n>1, a(n)^2 is next smallest nontrivial square containing a(n-1)^2 as a substring.

The programs for A050631, there is no canonical definition to state claims against.
-/

/-! ## A050631.P2692075749639562183

`sqrt(A050630(n+1))`
-/

namespace A050631.P2692075749639562183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050630 (n + 1) : ℝ)

end

end A050631.P2692075749639562183

/-! ## A050631.P5538097300604671731

`floor(sqrt(A050630(comp[12*n])))`
-/

namespace A050631.P5538097300604671731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A050630 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A050631.P5538097300604671731

/-! ## A050631.P11667734868401921383

`A050633(n+1)-floor(acot(n))`
-/

namespace A050631.P11667734868401921383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050633 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A050631.P11667734868401921383

/-!
# A050632: a(n+1) is next smallest nontrivial square containing a(n) as a substring, initial term is 9.

The programs for A050632, there is no canonical definition to state claims against.
-/

/-! ## A050632.P8198072130524470564

`A050633(n+1)²`
-/

namespace A050632.P8198072130524470564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050633 (n + 1) ^ 2

end

end A050632.P8198072130524470564

/-! ## A050632.P4167398379472002180

`or(C(2, n), A050631(n+1))²`
-/

namespace A050632.P4167398379472002180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A050631 (n + 1)) ^ 2

end

end A050632.P4167398379472002180

/-!
# A050633: a(1)=3; for n>1, a(n)^2 is next smallest nontrivial square containing a(n-1)^2 as a substring.

The programs for A050633, there is no canonical definition to state claims against.
-/

/-! ## A050633.P5764056438172094682

`sqrt(A050632(n+1))`
-/

namespace A050633.P5764056438172094682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050632 (n + 1) : ℝ)

end

end A050633.P5764056438172094682

/-! ## A050633.P6032820625675466529

`floor(sqrt(A050630(n+1)+5))`
-/

namespace A050633.P6032820625675466529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A050630 (n + 1) + 5)

end

end A050633.P6032820625675466529

/-! ## A050633.P13738340998719085399

`or(C(2, n), A050631(n+1))`
-/

namespace A050633.P13738340998719085399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A050631 (n + 1))

end

end A050633.P13738340998719085399

/-!
# A050634: a(n+1) is next smallest square ending with a(n), initial term is 1.

The programs for A050634, there is no canonical definition to state claims against.
-/

/-! ## A050634.P14224880336358491530

`A050635(n+1)²`
-/

namespace A050634.P14224880336358491530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050635 (n + 1) ^ 2

end

end A050634.P14224880336358491530

/-! ## A050634.P2816811683979618686

`record[A050635(A137734(n))²]`
-/

namespace A050634.P2816811683979618686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050635 (A137734 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050634.P2816811683979618686

/-! ## A050634.P10283675297103030311

`A050635(n+1)^sqrt(A040002(n))`
-/

namespace A050634.P10283675297103030311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050635 (n + 1) : ℝ) ^ (Real.sqrt (A040002 n : ℝ))

end

end A050634.P10283675297103030311

/-!
# A050635: a(n+1)^2 is next smallest square ending with a(n)^2, initial term is 1.

The programs for A050635, there is no canonical definition to state claims against.
-/

/-! ## A050635.P13911787032910990596

`sqrt(A050634(n+1))`
-/

namespace A050635.P13911787032910990596
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050634 (n + 1) : ℝ)

end

end A050635.P13911787032910990596

/-! ## A050635.P16612937604379736754

`A050634(n+1)^(A208615(n)/2)`
-/

namespace A050635.P16612937604379736754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050634 (n + 1) : ℝ) ^ ((A208615 n : ℚ) / 2 : ℝ)

end

end A050635.P16612937604379736754

/-! ## A050635.P4330337430479112578

`root(A050634(n+1), p?[A061704(n+1)])`
-/

namespace A050635.P4330337430479112578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050634 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A050635.P4330337430479112578

/-! ## A050635.P11843767001251046102

`root(A050634(n+1), p?[A322862(n+1)])`
-/

namespace A050635.P11843767001251046102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322862 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050634 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A050635.P11843767001251046102

/-!
# A050636: a(n+1) is next smallest square ending with a(n), initial term is 4.

The programs for A050636, there is no canonical definition to state claims against.
-/

/-! ## A050636.P866385276338865907

`A050637(n+1)²`
-/

namespace A050636.P866385276338865907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050637 (n + 1) ^ 2

end

end A050636.P866385276338865907

/-! ## A050636.P5911680405832358032

`A050637(n+1)^A050620(gcd(n, n+1))`
-/

namespace A050636.P5911680405832358032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050637 (n + 1) : ℚ) ^ (A050620 (Nat.gcd n (n + 1)) : ℤ)

end

end A050636.P5911680405832358032

/-! ## A050636.P1364322395646213635

`A050637(n+1)^A001316(A001316(n))`
-/

namespace A050636.P1364322395646213635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050637 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A050636.P1364322395646213635

/-! ## A050636.P4725831039068388405

`A050637(n+1)^A000005(A066436(n+1))`
-/

namespace A050636.P4725831039068388405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050637 (n + 1) : ℚ) ^ (A000005 (A066436 (n + 1)).toNat : ℤ)

end

end A050636.P4725831039068388405

/-!
# A050637: a(1) = 2; a(n+1)^2 is next smallest square ending with a(n)^2.

The programs for A050637, there is no canonical definition to state claims against.
-/

/-! ## A050637.P6288234912379594305

`A065789(n%a(n-1))` with `a(0)=2`
-/

namespace A050637.P6288234912379594305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065789 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A050637.P6288234912379594305

/-! ## A050637.P8945003651960012609

`A065789(n*a(A054977(n)-1)/2)` with `a(0)=2`
-/

namespace A050637.P8945003651960012609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065789 (SequenceMachineLib.roundAway ((n : ℚ) * ((a (A054977 n - 1).toNat : ℚ) / 2))).toNat

end

end A050637.P8945003651960012609

/-! ## A050637.P2944966244408532645

`A065789(n*a(A057427(n)-1)/2)` with `a(0)=2`
-/

namespace A050637.P2944966244408532645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065789 (SequenceMachineLib.roundAway ((n : ℚ) * ((a (A057427 n - 1).toNat : ℚ) / 2))).toNat

end

end A050637.P2944966244408532645

/-! ## A050637.P3147120519482030681

`A065789(n*a(A178334(n)-1)/2)` with `a(0)=2`
-/

namespace A050637.P3147120519482030681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065789 (SequenceMachineLib.roundAway ((n : ℚ) * ((a (A178334 n - 1).toNat : ℚ) / 2))).toNat

end

end A050637.P3147120519482030681

/-!
# A050638: a(n+1) is next smallest square ending with a(n), initial term is 9.

The programs for A050638, there is no canonical definition to state claims against.
-/

/-! ## A050638.P18232296342638110716

`A050639(n+1)²`
-/

namespace A050638.P18232296342638110716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050639 (n + 1) ^ 2

end

end A050638.P18232296342638110716

/-! ## A050638.P13813004910395240504

`A050639(n+1)^A050620(gcd(n, n+1))`
-/

namespace A050638.P13813004910395240504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050639 (n + 1) : ℚ) ^ (A050620 (Nat.gcd n (n + 1)) : ℤ)

end

end A050638.P13813004910395240504

/-! ## A050638.P5076548444626260313

`A050639(A004709(n+1))*A050639(n+1)`
-/

namespace A050638.P5076548444626260313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050639 (A004709 (n + 1)).toNat * A050639 (n + 1)

end

end A050638.P5076548444626260313

/-!
# A050639: a(1) = 3; a(n+1)^2 is next smallest square ending with a(n)^2.

The programs for A050639, there is no canonical definition to state claims against.
-/

/-! ## A050639.P8531937102556184244

`sqrt(A050638(n+1))`
-/

namespace A050639.P8531937102556184244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A050638 (n + 1) : ℝ)

end

end A050639.P8531937102556184244

/-! ## A050639.P17360112072630303452

`root(A050638(n+1), A050620(gcd(n, n+1)))`
-/

namespace A050639.P17360112072630303452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050638 (n + 1) : ℝ) ^ (1 / (A050620 (Nat.gcd n (n + 1)) : ℝ))

end

end A050639.P17360112072630303452

/-! ## A050639.P13672933056599524713

`A065786(A028310(n))%A065777(n+1)`
-/

namespace A050639.P13672933056599524713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065786 (A028310 n).toNat) (A065777 (n + 1))

end

end A050639.P13672933056599524713

/-! ## A050639.P2506313922451209895

`A065786(A337978(n+1))%A065777(n+1)`
-/

namespace A050639.P2506313922451209895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065786 (A337978 (n + 1)).toNat) (A065777 (n + 1))

end

end A050639.P2506313922451209895

/-!
# A050640: 

The programs for A050640, there is no canonical definition to state claims against.
-/

/-! ## A050640.P6521059108326665

`A050641(n+1)^3`
-/

namespace A050640.P6521059108326665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050641 (n + 1) ^ 3

end

end A050640.P6521059108326665

/-!
# A050647: 

The programs for A050647, there is no canonical definition to state claims against.
-/

/-! ## A050647.P4640665366003897131

`∑[10*a(n-1)^3]` with `a(0)=1`
-/

namespace A050647.P4640665366003897131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050647.P4640665366003897131

/-!
# A050652: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 1.

The programs for A050652, there is no canonical definition to state claims against.
-/

/-! ## A050652.P11540091508441072951

`eq[1, A048853(n+1)]+1`
-/

namespace A050652.P11540091508441072951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050652.P11540091508441072951

/-! ## A050652.P8874036927004284023

`eq[1, A048853(A028310(n))]`
-/

namespace A050652.P8874036927004284023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050652.P8874036927004284023

/-! ## A050652.P1497403560815870293

`A020725(eq[1, A048853(n+1)])`
-/

namespace A050652.P1497403560815870293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050652.P1497403560815870293

/-! ## A050652.P11050087393002957601

`A065475(eq[1, A048853(n+1)])`
-/

namespace A050652.P11050087393002957601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050652.P11050087393002957601

/-! ## A050652.P15800105058883954780

`eq[1, A048853(A000007(n)+n)]`
-/

namespace A050652.P15800105058883954780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050652.P15800105058883954780

/-! ## A050652.P3714628766007769532

`eq[1, A048853(A000038(n)+n)]`
-/

namespace A050652.P3714628766007769532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050652.P3714628766007769532

/-! ## A050652.P11478030932821404129

`A000720(p?[A000040(n+1)*A048853(n+1)])`
-/

namespace A050652.P11478030932821404129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A050652.P11478030932821404129

/-! ## A050652.P6981465515001174419

`eq[1, A048853(A065033(2*n))]`
-/

namespace A050652.P6981465515001174419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050652.P6981465515001174419

/-! ## A050652.P18104785502245378377

`eq[1, A048853(A123108(2*n))]`
-/

namespace A050652.P18104785502245378377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050652.P18104785502245378377

/-! ## A050652.P195794659634001386

`A113484(eq[1, A048853(n+1)])`
-/

namespace A050652.P195794659634001386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050652.P195794659634001386

/-! ## A050652.P11826290064180282916

`eq[1, A048853(A233583(n+1))]`
-/

namespace A050652.P11826290064180282916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050652.P11826290064180282916

/-!
# A050653: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 2.

The programs for A050653, there is no canonical definition to state claims against.
-/

/-! ## A050653.P17244449652312109578

`eq[2, A048853(n+1)]+1`
-/

namespace A050653.P17244449652312109578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050653.P17244449652312109578

/-! ## A050653.P17394003006181575996

`eq[2, A048853(A028310(n))]`
-/

namespace A050653.P17394003006181575996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050653.P17394003006181575996

/-! ## A050653.P15649488944583371766

`A020725(eq[2, A048853(n+1)])`
-/

namespace A050653.P15649488944583371766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050653.P15649488944583371766

/-! ## A050653.P18221517120825495436

`A065475(eq[2, A048853(n+1)])`
-/

namespace A050653.P18221517120825495436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050653.P18221517120825495436

/-! ## A050653.P18118108756357148587

`eq[2, A048853(A000038(n)+n)]`
-/

namespace A050653.P18118108756357148587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050653.P18118108756357148587

/-! ## A050653.P3920241649245373142

`eq[2, A048853(A000007(n)+n)]`
-/

namespace A050653.P3920241649245373142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050653.P3920241649245373142

/-! ## A050653.P2849588748712321500

`eq[2, A048853(A060000(n+1))]`
-/

namespace A050653.P2849588748712321500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050653.P2849588748712321500

/-! ## A050653.P6934910801996457838

`eq[2, A048853(A065033(2*n))]`
-/

namespace A050653.P6934910801996457838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050653.P6934910801996457838

/-! ## A050653.P14728226343389557438

`eq[2, A048853(A123108(2*n))]`
-/

namespace A050653.P14728226343389557438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050653.P14728226343389557438

/-! ## A050653.P6733874290404511256

`A113484(eq[2, A048853(n+1)])`
-/

namespace A050653.P6733874290404511256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050653.P6733874290404511256

/-! ## A050653.P12404627864509055612

`eq[2, A048853(A233583(n+1))]`
-/

namespace A050653.P12404627864509055612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050653.P12404627864509055612

/-!
# A050654: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 3.

The programs for A050654, there is no canonical definition to state claims against.
-/

/-! ## A050654.P13807173416849742889

`eq[3, A048853(n+1)]+1`
-/

namespace A050654.P13807173416849742889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050654.P13807173416849742889

/-! ## A050654.P10927048274832064633

`eq[3, A048853(A028310(n))]`
-/

namespace A050654.P10927048274832064633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050654.P10927048274832064633

/-! ## A050654.P11364499667237568438

`A020725(eq[3, A048853(n+1)])`
-/

namespace A050654.P11364499667237568438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050654.P11364499667237568438

/-! ## A050654.P4384480649905972054

`eq[3, A048853(A000007(n)+n)]`
-/

namespace A050654.P4384480649905972054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050654.P4384480649905972054

/-! ## A050654.P17126889623854270984

`eq[3, A048853(A065033(2*n))]`
-/

namespace A050654.P17126889623854270984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050654.P17126889623854270984

/-! ## A050654.P2112697144570572311

`eq[3, A048853(A123108(2*n))]`
-/

namespace A050654.P2112697144570572311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050654.P2112697144570572311

/-!
# A050655: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 4.

The programs for A050655, there is no canonical definition to state claims against.
-/

/-! ## A050655.P16293612671256377915

`eq[4, A048853(n+1)]+1`
-/

namespace A050655.P16293612671256377915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050655.P16293612671256377915

/-! ## A050655.P2490285768862289937

`eq[4, A048853(A000038(n)+n)]`
-/

namespace A050655.P2490285768862289937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050655.P2490285768862289937

/-! ## A050655.P17786179630823996710

`eq[A048853(A065033(2*n))-4, A000007(n)]`
-/

namespace A050655.P17786179630823996710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050655.P17786179630823996710

/-! ## A050655.P12985313985786690953

`eq[A048853(A065033(2*n))-4, A000038(n)]`
-/

namespace A050655.P12985313985786690953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050655.P12985313985786690953

/-!
# A050656: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 5.

The programs for A050656, there is no canonical definition to state claims against.
-/

/-! ## A050656.P2083343705764900797

`eq[5, A048853(A028310(n))]`
-/

namespace A050656.P2083343705764900797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050656.P2083343705764900797

/-! ## A050656.P3466878919723597160

`eq[5, A048853(A093178(n))]`
-/

namespace A050656.P3466878919723597160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050656.P3466878919723597160

/-! ## A050656.P4818558216596682789

`A004442(eq[5, A048853(n+1)])`
-/

namespace A050656.P4818558216596682789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050656.P4818558216596682789

/-! ## A050656.P14818161036933064717

`A020725(eq[5, A048853(n+1)])`
-/

namespace A050656.P14818161036933064717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050656.P14818161036933064717

/-! ## A050656.P3492228181105065818

`A065475(eq[5, A048853(n+1)])`
-/

namespace A050656.P3492228181105065818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050656.P3492228181105065818

/-! ## A050656.P17683100186975965724

`A141310(eq[5, A048853(n+1)])`
-/

namespace A050656.P17683100186975965724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050656.P17683100186975965724

/-! ## A050656.P12645155360247457773

`A005408(eq[5, A048853(2*n+1)])`
-/

namespace A050656.P12645155360247457773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050656.P12645155360247457773

/-! ## A050656.P16060731787264346990

`eq[5, A048853(A257088(n))]`
-/

namespace A050656.P16060731787264346990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050656.P16060731787264346990

/-!
# A050657: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 6.

The programs for A050657, there is no canonical definition to state claims against.
-/

/-! ## A050657.P4056835676141656801

`eq[6, A048853(A028310(n))]`
-/

namespace A050657.P4056835676141656801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050657.P4056835676141656801

/-! ## A050657.P9494188101169141002

`eq[6, A048853(A093178(n))]`
-/

namespace A050657.P9494188101169141002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050657.P9494188101169141002

/-! ## A050657.P9166822313480872004

`A004442(eq[6, A048853(n+1)])`
-/

namespace A050657.P9166822313480872004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050657.P9166822313480872004

/-! ## A050657.P5299960538314913075

`eq[6, A048853(A000038(n)+n)]`
-/

namespace A050657.P5299960538314913075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050657.P5299960538314913075

/-! ## A050657.P18391811603062445933

`A005408(eq[6, A048853(A005408(n))])`
-/

namespace A050657.P18391811603062445933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050657.P18391811603062445933

/-! ## A050657.P18141388593576657089

`eq[6, A048853(A065033(2*n))]`
-/

namespace A050657.P18141388593576657089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050657.P18141388593576657089

/-!
# A050658: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 7.

The programs for A050658, there is no canonical definition to state claims against.
-/

/-! ## A050658.P4136808188357328843

`eq[7, A048853(A028310(n))]`
-/

namespace A050658.P4136808188357328843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050658.P4136808188357328843

/-! ## A050658.P1585510323719904160

`eq[7, A048853(A093178(n))]`
-/

namespace A050658.P1585510323719904160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050658.P1585510323719904160

/-! ## A050658.P17216256266951688693

`A004442(eq[7, A048853(n+1)])`
-/

namespace A050658.P17216256266951688693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050658.P17216256266951688693

/-! ## A050658.P6089210106230775505

`A020725(eq[7, A048853(n+1)])`
-/

namespace A050658.P6089210106230775505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050658.P6089210106230775505

/-! ## A050658.P14390484997525092556

`A065475(eq[7, A048853(n+1)])`
-/

namespace A050658.P14390484997525092556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050658.P14390484997525092556

/-! ## A050658.P12307583563560050931

`A141310(eq[7, A048853(n+1)])`
-/

namespace A050658.P12307583563560050931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050658.P12307583563560050931

/-! ## A050658.P14445025531249714201

`eq[7, A048853(A257088(n))]`
-/

namespace A050658.P14445025531249714201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050658.P14445025531249714201

/-! ## A050658.P4884936181473644672

`eq[7, A048853(A233583(n+1))]`
-/

namespace A050658.P4884936181473644672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050658.P4884936181473644672

/-!
# A050659: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 8.

The programs for A050659, there is no canonical definition to state claims against.
-/

/-! ## A050659.P16285647817951287064

`eq[8, A048853(A028310(n))]`
-/

namespace A050659.P16285647817951287064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050659.P16285647817951287064

/-! ## A050659.P14358167896032433690

`A004442(eq[8, A048853(n+1)])`
-/

namespace A050659.P14358167896032433690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050659.P14358167896032433690

/-! ## A050659.P4954406941343183341

`eq[8, A048853(A000038(n)+n)]`
-/

namespace A050659.P4954406941343183341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050659.P4954406941343183341

/-! ## A050659.P2336341263541967998

`A005408(eq[8, A048853(2*n+1)])`
-/

namespace A050659.P2336341263541967998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050659.P2336341263541967998

/-! ## A050659.P8509312551485565466

`eq[8, A048853(A065033(2*n))]`
-/

namespace A050659.P8509312551485565466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050659.P8509312551485565466

/-! ## A050659.P8981196692766229668

`eq[8, A048853(A233583(n+1))]`
-/

namespace A050659.P8981196692766229668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050659.P8981196692766229668

/-!
# A050660: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 9.

The programs for A050660, there is no canonical definition to state claims against.
-/

/-! ## A050660.P12186264035597577414

`eq[9, A048853(A028310(n))]`
-/

namespace A050660.P12186264035597577414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050660.P12186264035597577414

/-! ## A050660.P1521197546804920395

`A004442(eq[9, A048853(n+1)])`
-/

namespace A050660.P1521197546804920395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050660.P1521197546804920395

/-! ## A050660.P16796931016626556949

`eq[9, A048853(A000038(n)+n)]`
-/

namespace A050660.P16796931016626556949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050660.P16796931016626556949

/-! ## A050660.P15896009827468176199

`A005408(eq[9, A048853(A005408(n))])`
-/

namespace A050660.P15896009827468176199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050660.P15896009827468176199

/-! ## A050660.P18402376595282657944

`eq[2, A048853(A065033(2*n))-7]`
-/

namespace A050660.P18402376595282657944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050660.P18402376595282657944

/-! ## A050660.P13751169189210803538

`eq[9, A048853(A233583(n+1))]`
-/

namespace A050660.P13751169189210803538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050660.P13751169189210803538

/-!
# A050661: Numbers n such that number of primes produced according to rules stipulated in Honaker's A048853 is 10.

The programs for A050661, there is no canonical definition to state claims against.
-/

/-! ## A050661.P17649098191818250009

`eq[10, A048853(A028310(n))]`
-/

namespace A050661.P17649098191818250009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050661.P17649098191818250009

/-! ## A050661.P348399437592436118

`A004442(eq[10, A048853(n+1)])`
-/

namespace A050661.P348399437592436118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050661.P348399437592436118

/-! ## A050661.P5630263486366522219

`A097062(eq[10, A048853(n+1)])`
-/

namespace A050661.P5630263486366522219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050661.P5630263486366522219

/-! ## A050661.P3862920979899740291

`A131738(eq[10, A048853(n+1)])`
-/

namespace A050661.P3862920979899740291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050661.P3862920979899740291

/-! ## A050661.P17773846794995012299

`eq[10, A048853(A000007(n)+n)]`
-/

namespace A050661.P17773846794995012299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050661.P17773846794995012299

/-! ## A050661.P9937653015176359942

`eq[10, A048853(A065033(2*n))]`
-/

namespace A050661.P9937653015176359942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050661.P9937653015176359942

/-!
# A050665: Primes p such that number of primes produced according to rules stipulated in Honaker's A048853 is 3.

The programs for A050665, there is no canonical definition to state claims against.
-/

/-! ## A050665.P14108036264274514614

`p?[A050654(n+1)]`
-/

namespace A050665.P14108036264274514614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050665.P14108036264274514614

/-! ## A050665.P14392303762851378301

`record[p?[A050654(A133310(n))]]`
-/

namespace A050665.P14392303762851378301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050654 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050665.P14392303762851378301

/-! ## A050665.P7669067101434774345

`record[p?[A050654(A328399(n))]]`
-/

namespace A050665.P7669067101434774345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050654 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050665.P7669067101434774345

/-! ## A050665.P5966466154383059285

`∩[A042988(n), A050654(n+1)]`
-/

namespace A050665.P5966466154383059285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050665.P5966466154383059285

/-! ## A050665.P13473236008981864198

`p?[A050654(A028310(n))-A000007(n)]`
-/

namespace A050665.P13473236008981864198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050654 (A028310 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050665.P13473236008981864198

/-!
# A050666: Primes p such that number of primes produced according to rules stipulated in Honaker's A048853 is 4.

The programs for A050666, there is no canonical definition to state claims against.
-/

/-! ## A050666.P13767393788449019540

`p?[A050655(n+1)]`
-/

namespace A050666.P13767393788449019540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050666.P13767393788449019540

/-! ## A050666.P14376241413635576569

`record[p?[A050655(A328399(n))]]`
-/

namespace A050666.P14376241413635576569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050655 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050666.P14376241413635576569

/-! ## A050666.P16353982056570770104

`p?[record[A050655(A133310(n))]]`
-/

namespace A050666.P16353982056570770104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050655 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050666.P16353982056570770104

/-! ## A050666.P4495515804263688717

`p?[A033999(n)*A050655(A328399(n))]`
-/

namespace A050666.P4495515804263688717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A050655 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050666.P4495515804263688717

/-! ## A050666.P56426466448795544

`p?[A050655(A328399(n))*A059841(n)]`
-/

namespace A050666.P56426466448795544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050655 (A328399 n).toNat * A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050666.P56426466448795544

/-! ## A050666.P9193142748587895736

`∩[A000040(n+1), A050655(n+1)]`
-/

namespace A050666.P9193142748587895736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050666.P9193142748587895736

/-! ## A050666.P965346197761569606

`filter[A050655(n+1), A010051(#)]`
-/

namespace A050666.P965346197761569606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A050666.P965346197761569606

/-! ## A050666.P17197418393710894291

`p?[record[A050655(A134478(n))]]`
-/

namespace A050666.P17197418393710894291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050655 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050666.P17197418393710894291

/-!
# A050667: Primes p such that number of primes produced according to rules stipulated in Honaker's A048853 is 5.

The programs for A050667, there is no canonical definition to state claims against.
-/

/-! ## A050667.P17365372419373050626

`p?[A050656(n+1)]`
-/

namespace A050667.P17365372419373050626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050667.P17365372419373050626

/-! ## A050667.P5926899637653375121

`∩[A050656(n+1), A339879(n+1)]`
-/

namespace A050667.P5926899637653375121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P5926899637653375121

/-! ## A050667.P13767179139648600573

`∩[A050656(n+1), A261123(n+1)]`
-/

namespace A050667.P13767179139648600573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P13767179139648600573

/-! ## A050667.P7785204234203619930

`∩[A000040(n+1), A050656(n+1)]`
-/

namespace A050667.P7785204234203619930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P7785204234203619930

/-! ## A050667.P13334301115260912088

`∩[A004139(n+1), A050656(n+1)]`
-/

namespace A050667.P13334301115260912088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P13334301115260912088

/-! ## A050667.P5937953644466576276

`∩[A006005(n+1), A050656(n+1)]`
-/

namespace A050667.P5937953644466576276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P5937953644466576276

/-! ## A050667.P6998428567406133972

`∩[A008578(n+1), A050656(n+1)]`
-/

namespace A050667.P6998428567406133972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P6998428567406133972

/-! ## A050667.P5991607947196894328

`∩[A033946(n+1), A050656(n+1)]`
-/

namespace A050667.P5991607947196894328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P5991607947196894328

/-! ## A050667.P5536707248651762709

`∩[A045319(n+1), A050656(n+1)]`
-/

namespace A050667.P5536707248651762709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P5536707248651762709

/-! ## A050667.P6020183726325695757

`∩[A045344(n+1), A050656(n+1)]`
-/

namespace A050667.P6020183726325695757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P6020183726325695757

/-! ## A050667.P17991652735954037232

`∩[A046022(n+1), A050656(n+1)]`
-/

namespace A050667.P17991652735954037232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P17991652735954037232

/-! ## A050667.P5054452746881160065

`∩[A050656(n+1), A051948(n+1)]`
-/

namespace A050667.P5054452746881160065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P5054452746881160065

/-! ## A050667.P10950204198274413723

`∩[A050656(n+1), A053813(n+1)]`
-/

namespace A050667.P10950204198274413723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P10950204198274413723

/-! ## A050667.P4556381843194713898

`∩[A050656(n+1), A064728(n+1)]`
-/

namespace A050667.P4556381843194713898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P4556381843194713898

/-! ## A050667.P16149815316043332514

`∩[A050656(n+1), A065091(n+1)]`
-/

namespace A050667.P16149815316043332514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P16149815316043332514

/-! ## A050667.P12310776663287725830

`∩[A050656(n+1), A066050(n+1)]`
-/

namespace A050667.P12310776663287725830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P12310776663287725830

/-! ## A050667.P2873625578083596915

`∩[A050656(n+1), A067126(n+1)]`
-/

namespace A050667.P2873625578083596915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P2873625578083596915

/-! ## A050667.P11167225742250118247

`∩[A050656(n+1), A071621(n+1)]`
-/

namespace A050667.P11167225742250118247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P11167225742250118247

/-! ## A050667.P6071371210664883395

`∩[A050656(n+1), A078138(n+1)]`
-/

namespace A050667.P6071371210664883395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P6071371210664883395

/-! ## A050667.P6306950677119316169

`∩[A050656(n+1), A083249(n+1)]`
-/

namespace A050667.P6306950677119316169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050667.P6306950677119316169

/-!
# A050668: Primes p such that number of primes produced according to rules stipulated in Honaker's A048853 is 6.

The programs for A050668, there is no canonical definition to state claims against.
-/

/-! ## A050668.P2123063215059876700

`p?[A050657(n+1)]`
-/

namespace A050668.P2123063215059876700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050668.P2123063215059876700

/-! ## A050668.P376776821657910732

`A045344(eq[6, A125002(n+1)])`
-/

namespace A050668.P376776821657910732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050668.P376776821657910732

/-! ## A050668.P10793155575390718578

`A065091(eq[6, A125002(n+1)])`
-/

namespace A050668.P10793155575390718578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050668.P10793155575390718578

/-! ## A050668.P13350730574067137763

`A000040(eq[6, A125002(n+1)]+1)`
-/

namespace A050668.P13350730574067137763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050668.P13350730574067137763

/-! ## A050668.P5750507252098001685

`A008578(eq[6, A125002(n+1)]+2)`
-/

namespace A050668.P5750507252098001685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A050668.P5750507252098001685

/-! ## A050668.P14808760972592251353

`∩[A000040(n+1), A050657(n+1)]`
-/

namespace A050668.P14808760972592251353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P14808760972592251353

/-! ## A050668.P3649025891886576029

`∩[A004139(n+1), A050657(n+1)]`
-/

namespace A050668.P3649025891886576029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P3649025891886576029

/-! ## A050668.P2964426292451879472

`∩[A006005(n+1), A050657(n+1)]`
-/

namespace A050668.P2964426292451879472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P2964426292451879472

/-! ## A050668.P10959787611705105778

`∩[A008578(n+1), A050657(n+1)]`
-/

namespace A050668.P10959787611705105778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P10959787611705105778

/-! ## A050668.P14091762797630614107

`∩[A033946(n+1), A050657(n+1)]`
-/

namespace A050668.P14091762797630614107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P14091762797630614107

/-! ## A050668.P5032534762449489144

`∩[A045319(n+1), A050657(n+1)]`
-/

namespace A050668.P5032534762449489144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P5032534762449489144

/-! ## A050668.P6360621166834365899

`∩[A045344(n+1), A050657(n+1)]`
-/

namespace A050668.P6360621166834365899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P6360621166834365899

/-! ## A050668.P13281129810178439995

`∩[A046022(n+1), A050657(n+1)]`
-/

namespace A050668.P13281129810178439995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P13281129810178439995

/-! ## A050668.P12054370417745446309

`∩[A050657(n+1), A051948(n+1)]`
-/

namespace A050668.P12054370417745446309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P12054370417745446309

/-! ## A050668.P12138325854431623420

`∩[A050657(n+1), A053813(n+1)]`
-/

namespace A050668.P12138325854431623420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P12138325854431623420

/-! ## A050668.P13575757688366890548

`∩[A050657(n+1), A055977(n+1)]`
-/

namespace A050668.P13575757688366890548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P13575757688366890548

/-! ## A050668.P9326733905475246804

`∩[A050657(n+1), A060634(n+1)]`
-/

namespace A050668.P9326733905475246804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P9326733905475246804

/-! ## A050668.P3874481070500145469

`∩[A050657(n+1), A062972(n+1)]`
-/

namespace A050668.P3874481070500145469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P3874481070500145469

/-! ## A050668.P12804692406298241308

`∩[A050657(n+1), A064728(n+1)]`
-/

namespace A050668.P12804692406298241308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P12804692406298241308

/-! ## A050668.P15647425617206676018

`∩[A050657(n+1), A065091(n+1)]`
-/

namespace A050668.P15647425617206676018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050668.P15647425617206676018

/-!
# A050669: Primes p such that number of primes produced according to rules stipulated in Honaker's A048853 is 7.

The programs for A050669, there is no canonical definition to state claims against.
-/

/-! ## A050669.P9903019814181399412

`p?[A050658(n+1)]`
-/

namespace A050669.P9903019814181399412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050669.P9903019814181399412

/-! ## A050669.P17990198818784026827

`∩[A050658(n+1), A380468(n+1)]`
-/

namespace A050669.P17990198818784026827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P17990198818784026827

/-! ## A050669.P10426823787592578354

`∩[A004139(n+1), A050658(n+1)]`
-/

namespace A050669.P10426823787592578354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P10426823787592578354

/-! ## A050669.P16032005451173875443

`∩[A045319(n+1), A050658(n+1)]`
-/

namespace A050669.P16032005451173875443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P16032005451173875443

/-! ## A050669.P3033816973993664342

`∩[A045344(n+1), A050658(n+1)]`
-/

namespace A050669.P3033816973993664342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P3033816973993664342

/-! ## A050669.P11465929248588861934

`∩[A050658(n+1), A065091(n+1)]`
-/

namespace A050669.P11465929248588861934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P11465929248588861934

/-! ## A050669.P2621146230730144207

`∩[A050658(n+1), A138837(n+1)]`
-/

namespace A050669.P2621146230730144207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P2621146230730144207

/-! ## A050669.P11014023633020517402

`∩[A050658(n+1), A140461(n+1)]`
-/

namespace A050669.P11014023633020517402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P11014023633020517402

/-! ## A050669.P11573886070326996725

`∩[A050658(n+1), A140475(n+1)]`
-/

namespace A050669.P11573886070326996725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P11573886070326996725

/-! ## A050669.P10574540394660358615

`∩[A050658(n+1), A157996(n+1)]`
-/

namespace A050669.P10574540394660358615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P10574540394660358615

/-! ## A050669.P453613198182750768

`∩[A050658(n+1), A197636(n+1)]`
-/

namespace A050669.P453613198182750768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P453613198182750768

/-! ## A050669.P2282388450041872045

`∩[A050658(n+1), A215848(n+1)]`
-/

namespace A050669.P2282388450041872045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P2282388450041872045

/-! ## A050669.P6661710012355834918

`A045344(eq[7, A125002(n+1)])`
-/

namespace A050669.P6661710012355834918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050669.P6661710012355834918

/-! ## A050669.P15182125242970162625

`A065091(eq[7, A125002(n+1)])`
-/

namespace A050669.P15182125242970162625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050669.P15182125242970162625

/-! ## A050669.P15637585737556770791

`A000040(eq[7, A125002(n+1)]+1)`
-/

namespace A050669.P15637585737556770791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050669.P15637585737556770791

/-! ## A050669.P5515301202217277699

`A008578(eq[7, A125002(n+1)]+2)`
-/

namespace A050669.P5515301202217277699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A050669.P5515301202217277699

/-! ## A050669.P2740968693003189792

`∩[A000040(n+1), A050658(n+1)]`
-/

namespace A050669.P2740968693003189792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P2740968693003189792

/-! ## A050669.P2619553301574326149

`∩[A006005(n+1), A050658(n+1)]`
-/

namespace A050669.P2619553301574326149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P2619553301574326149

/-! ## A050669.P532422951402096520

`∩[A008578(n+1), A050658(n+1)]`
-/

namespace A050669.P532422951402096520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P532422951402096520

/-! ## A050669.P1969767969543626031

`∩[A033946(n+1), A050658(n+1)]`
-/

namespace A050669.P1969767969543626031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050669.P1969767969543626031

/-!
# A050670: Primes p such that number of primes produced according to rules stipulated in Honaker's A048853 is 8.

The programs for A050670, there is no canonical definition to state claims against.
-/

/-! ## A050670.P9219148495760961906

`p?[A050659(n+1)]`
-/

namespace A050670.P9219148495760961906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050670.P9219148495760961906

/-! ## A050670.P11216047413822278316

`∩[A050659(n+1), A380468(n+1)]`
-/

namespace A050670.P11216047413822278316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P11216047413822278316

/-! ## A050670.P12792649306660881901

`A045344(eq[8, A125002(n+1)])`
-/

namespace A050670.P12792649306660881901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050670.P12792649306660881901

/-! ## A050670.P6471176225435030986

`A065091(eq[8, A125002(n+1)])`
-/

namespace A050670.P6471176225435030986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050670.P6471176225435030986

/-! ## A050670.P15626311489417341228

`A000040(eq[8, A125002(n+1)]+1)`
-/

namespace A050670.P15626311489417341228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050670.P15626311489417341228

/-! ## A050670.P1855574518567445709

`∩[A000040(n+1), A050659(n+1)]`
-/

namespace A050670.P1855574518567445709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P1855574518567445709

/-! ## A050670.P577726712831321587

`∩[A004139(n+1), A050659(n+1)]`
-/

namespace A050670.P577726712831321587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P577726712831321587

/-! ## A050670.P3784054900643080374

`∩[A006005(n+1), A050659(n+1)]`
-/

namespace A050670.P3784054900643080374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P3784054900643080374

/-! ## A050670.P6995614848540498039

`∩[A045319(n+1), A050659(n+1)]`
-/

namespace A050670.P6995614848540498039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P6995614848540498039

/-! ## A050670.P16547108756351360259

`∩[A045344(n+1), A050659(n+1)]`
-/

namespace A050670.P16547108756351360259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P16547108756351360259

/-! ## A050670.P15315323931910202333

`∩[A050659(n+1), A065091(n+1)]`
-/

namespace A050670.P15315323931910202333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P15315323931910202333

/-! ## A050670.P6893180300111170498

`∩[A050659(n+1), A065396(n+1)]`
-/

namespace A050670.P6893180300111170498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P6893180300111170498

/-! ## A050670.P16338890109262869427

`∩[A050659(n+1), A071621(n+1)]`
-/

namespace A050670.P16338890109262869427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P16338890109262869427

/-! ## A050670.P5336623891448571689

`∩[A050659(n+1), A093515(n+1)]`
-/

namespace A050670.P5336623891448571689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P5336623891448571689

/-! ## A050670.P15731129862878195954

`A008578(eq[8, A125002(n+1)]+2)`
-/

namespace A050670.P15731129862878195954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A050670.P15731129862878195954

/-! ## A050670.P4696805109868598634

`∩[A008578(n+1), A050659(n+1)]`
-/

namespace A050670.P4696805109868598634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P4696805109868598634

/-! ## A050670.P14109929241800772744

`∩[A046022(n+1), A050659(n+1)]`
-/

namespace A050670.P14109929241800772744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P14109929241800772744

/-! ## A050670.P8066577477225744941

`∩[A050659(n+1), A193339(n+1)]`
-/

namespace A050670.P8066577477225744941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P8066577477225744941

/-! ## A050670.P5347268307371639153

`∩[A033946(n+1), A050659(n+1)]`
-/

namespace A050670.P5347268307371639153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P5347268307371639153

/-! ## A050670.P4503742090071518872

`∩[A050659(n+1), A051948(n+1)]`
-/

namespace A050670.P4503742090071518872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050670.P4503742090071518872

/-!
# A050671: Primes p such that number of primes produced according to rules stipulated in Honaker's A048853 is 9.

The programs for A050671, there is no canonical definition to state claims against.
-/

/-! ## A050671.P4667478699626193031

`p?[A050660(n+1)]`
-/

namespace A050671.P4667478699626193031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050671.P4667478699626193031

/-! ## A050671.P4572812946729848335

`p?[record[A050660(A328399(n))]]`
-/

namespace A050671.P4572812946729848335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050671.P4572812946729848335

/-! ## A050671.P3504052629942473005

`∩[A050660(n+1), A380468(n+1)]`
-/

namespace A050671.P3504052629942473005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P3504052629942473005

/-! ## A050671.P6612575290062259316

`∩[A050660(n+1), A318158(n+1)]`
-/

namespace A050671.P6612575290062259316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P6612575290062259316

/-! ## A050671.P897346637102019669

`∩[A050660(n+1), A078132(n+1)]`
-/

namespace A050671.P897346637102019669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P897346637102019669

/-! ## A050671.P17953541627622472783

`A045344(eq[9, A125002(n+1)])`
-/

namespace A050671.P17953541627622472783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050671.P17953541627622472783

/-! ## A050671.P6960797203277308258

`A065091(eq[9, A125002(n+1)])`
-/

namespace A050671.P6960797203277308258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050671.P6960797203277308258

/-! ## A050671.P16598074255599199368

`A000040(eq[9, A125002(n+1)]+1)`
-/

namespace A050671.P16598074255599199368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050671.P16598074255599199368

/-! ## A050671.P16045250074615043546

`A008578(eq[9, A125002(n+1)]+2)`
-/

namespace A050671.P16045250074615043546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A050671.P16045250074615043546

/-! ## A050671.P11532594244908197648

`∩[A000040(n+1), A050660(n+1)]`
-/

namespace A050671.P11532594244908197648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P11532594244908197648

/-! ## A050671.P12368336131178304801

`∩[A004139(n+1), A050660(n+1)]`
-/

namespace A050671.P12368336131178304801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P12368336131178304801

/-! ## A050671.P3432492534953930164

`∩[A006005(n+1), A050660(n+1)]`
-/

namespace A050671.P3432492534953930164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P3432492534953930164

/-! ## A050671.P3783466370466002826

`∩[A008578(n+1), A050660(n+1)]`
-/

namespace A050671.P3783466370466002826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P3783466370466002826

/-! ## A050671.P734547766911052026

`∩[A045319(n+1), A050660(n+1)]`
-/

namespace A050671.P734547766911052026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P734547766911052026

/-! ## A050671.P7568709639746778955

`∩[A045344(n+1), A050660(n+1)]`
-/

namespace A050671.P7568709639746778955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P7568709639746778955

/-! ## A050671.P1465018800533447242

`∩[A046022(n+1), A050660(n+1)]`
-/

namespace A050671.P1465018800533447242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P1465018800533447242

/-! ## A050671.P8193707180296404752

`∩[A050660(n+1), A051948(n+1)]`
-/

namespace A050671.P8193707180296404752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P8193707180296404752

/-! ## A050671.P14218909635791318861

`∩[A050660(n+1), A053813(n+1)]`
-/

namespace A050671.P14218909635791318861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P14218909635791318861

/-! ## A050671.P15540073056777719089

`∩[A050660(n+1), A065091(n+1)]`
-/

namespace A050671.P15540073056777719089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P15540073056777719089

/-! ## A050671.P13621356331106408388

`∩[A050660(n+1), A065396(n+1)]`
-/

namespace A050671.P13621356331106408388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050671.P13621356331106408388

/-!
# A050672: Primes p such that number of primes produced according to rules stipulated in Honaker's A048853 is 10.

The programs for A050672, there is no canonical definition to state claims against.
-/

/-! ## A050672.P12723806109180381790

`p?[A050661(n+1)]`
-/

namespace A050672.P12723806109180381790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050672.P12723806109180381790

/-! ## A050672.P11871394408328988410

`∩[A050661(n+1), A380468(n+1)]`
-/

namespace A050672.P11871394408328988410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P11871394408328988410

/-! ## A050672.P10416763519546182397

`∩[A050661(n+1), A122259(n+1)]`
-/

namespace A050672.P10416763519546182397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P10416763519546182397

/-! ## A050672.P6432662527096172596

`∩[A050661(n+1), A054723(n+1)]`
-/

namespace A050672.P6432662527096172596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P6432662527096172596

/-! ## A050672.P6558060322476576464

`∩[A050661(n+1), A178456(n+1)]`
-/

namespace A050672.P6558060322476576464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P6558060322476576464

/-! ## A050672.P15565543390454193788

`∩[A050661(n+1), A065396(n+1)]`
-/

namespace A050672.P15565543390454193788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P15565543390454193788

/-! ## A050672.P8237689528419441197

`∩[A050661(n+1), A071621(n+1)]`
-/

namespace A050672.P8237689528419441197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P8237689528419441197

/-! ## A050672.P1716256037813737430

`A045344(eq[10, A125002(n+1)])`
-/

namespace A050672.P1716256037813737430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050672.P1716256037813737430

/-! ## A050672.P456997840291001905

`A065091(eq[10, A125002(n+1)])`
-/

namespace A050672.P456997840291001905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050672.P456997840291001905

/-! ## A050672.P9900847033177471120

`A000040(eq[10, A125002(n+1)]+1)`
-/

namespace A050672.P9900847033177471120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A050672.P9900847033177471120

/-! ## A050672.P10016708379378762547

`A008578(eq[10, A125002(n+1)]+2)`
-/

namespace A050672.P10016708379378762547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A050672.P10016708379378762547

/-! ## A050672.P13668701402660111327

`∩[A000040(n+1), A050661(n+1)]`
-/

namespace A050672.P13668701402660111327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P13668701402660111327

/-! ## A050672.P18426546252673912039

`∩[A004139(n+1), A050661(n+1)]`
-/

namespace A050672.P18426546252673912039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P18426546252673912039

/-! ## A050672.P17291740593266915802

`∩[A006005(n+1), A050661(n+1)]`
-/

namespace A050672.P17291740593266915802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P17291740593266915802

/-! ## A050672.P12623302910945138952

`∩[A008578(n+1), A050661(n+1)]`
-/

namespace A050672.P12623302910945138952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P12623302910945138952

/-! ## A050672.P1841835699108896054

`∩[A033946(n+1), A050661(n+1)]`
-/

namespace A050672.P1841835699108896054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P1841835699108896054

/-! ## A050672.P12212763081244532960

`∩[A045319(n+1), A050661(n+1)]`
-/

namespace A050672.P12212763081244532960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P12212763081244532960

/-! ## A050672.P8178657449682135979

`∩[A045344(n+1), A050661(n+1)]`
-/

namespace A050672.P8178657449682135979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P8178657449682135979

/-! ## A050672.P51728207052061394

`∩[A046022(n+1), A050661(n+1)]`
-/

namespace A050672.P51728207052061394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P51728207052061394

/-! ## A050672.P595776943419730331

`∩[A050661(n+1), A051948(n+1)]`
-/

namespace A050672.P595776943419730331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050672.P595776943419730331

/-!
# A050674: Inserting a digit '0' between adjacent digits of n makes a prime.

The programs for A050674, there is no canonical definition to state claims against.
-/

/-! ## A050674.P12925071949817215176

`lt[n+1, A020639(A051022(n+1))]+1`
-/

namespace A050674.P12925071949817215176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051022 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050674.P12925071949817215176

/-! ## A050674.P593441374874394719

`lt[20, A263111(A051022(n))]`
-/

namespace A050674.P593441374874394719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (A051022 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050674.P593441374874394719

/-! ## A050674.P10871104477871370753

`lt[A175126(A051022(n)), A059995(2*n)]`
-/

namespace A050674.P10871104477871370753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A051022 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050674.P10871104477871370753

/-! ## A050674.P468764782976544718

`A004719(A134809(n+1))`
-/

namespace A050674.P468764782976544718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A134809 (n + 1)).toNat

end

end A050674.P468764782976544718

/-! ## A050674.P171657469308623054

`A118759(A164329(n+1))`
-/

namespace A050674.P171657469308623054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A164329 (n + 1)).toNat

end

end A050674.P171657469308623054

/-!
# A050675: Numbers n such that concatenation of numbers from 1 to n is nonsquarefree.

The programs for A050675, there is no canonical definition to state claims against.
-/

/-! ## A050675.P9640766773605197002

`comp[A048342(n+1)-1]+1`
-/

namespace A050675.P9640766773605197002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048342 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050675.P9640766773605197002

/-! ## A050675.P6145470325938259491

`eq[char[A048342(n+1)], A151933(n)]`
-/

namespace A050675.P6145470325938259491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048342 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050675.P6145470325938259491

/-!
# A050680: Positions of 3's in A048288.

The programs for A050680, there is no canonical definition to state claims against.
-/

/-! ## A050680.P14397977109113442011

`eq[3, A048288(n+1)]+1`
-/

namespace A050680.P14397977109113442011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050680.P14397977109113442011

/-! ## A050680.P9529430525570515309

`eq[8, A110757(n+1)]+1`
-/

namespace A050680.P9529430525570515309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050680.P9529430525570515309

/-! ## A050680.P13717432753282863868

`eq[3, A048288(A028310(n))]`
-/

namespace A050680.P13717432753282863868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050680.P13717432753282863868

/-! ## A050680.P6094768498584722747

`A020725(eq[3, A048288(n+1)])`
-/

namespace A050680.P6094768498584722747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050680.P6094768498584722747

/-! ## A050680.P18400909592442077819

`A065475(eq[3, A048288(n+1)])`
-/

namespace A050680.P18400909592442077819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050680.P18400909592442077819

/-!
# A050681: Positions of 4's in A048288.

The programs for A050681, there is no canonical definition to state claims against.
-/

/-! ## A050681.P807376507805876478

`eq[4, A048288(n+1)]+1`
-/

namespace A050681.P807376507805876478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050681.P807376507805876478

/-! ## A050681.P16200677087759459954

`eq[4, A048288(A028310(n))]`
-/

namespace A050681.P16200677087759459954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050681.P16200677087759459954

/-! ## A050681.P9543738787140631827

`A020725(eq[4, A048288(n+1)])`
-/

namespace A050681.P9543738787140631827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050681.P9543738787140631827

/-! ## A050681.P7715187463822394122

`A065475(eq[4, A048288(n+1)])`
-/

namespace A050681.P7715187463822394122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050681.P7715187463822394122

/-! ## A050681.P6306393454205096941

`A114637(eq[4, A048288(n+1)])`
-/

namespace A050681.P6306393454205096941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050681.P6306393454205096941

/-!
# A050682: Positions of 5's in A048288.

The programs for A050682, there is no canonical definition to state claims against.
-/

/-! ## A050682.P16393096090506956338

`eq[5, A048288(n+1)]+1`
-/

namespace A050682.P16393096090506956338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050682.P16393096090506956338

/-! ## A050682.P16144689385878600549

`eq[5, A048288(A028310(n))]`
-/

namespace A050682.P16144689385878600549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050682.P16144689385878600549

/-! ## A050682.P72166866324815934

`A020725(eq[5, A048288(n+1)])`
-/

namespace A050682.P72166866324815934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050682.P72166866324815934

/-! ## A050682.P10011221943223111555

`A065475(eq[5, A048288(n+1)])`
-/

namespace A050682.P10011221943223111555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050682.P10011221943223111555

/-! ## A050682.P7779392211183312878

`A114637(eq[5, A048288(n+1)])`
-/

namespace A050682.P7779392211183312878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050682.P7779392211183312878

/-!
# A050683: Number of nonzero palindromes of length n.

The programs for A050683, the canonical program `A050683.P14587286261001414143` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050683 has offset 1).

The definition of A050683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050683.P14587286261001414143

`10*a(n-2)` with `a(0)=9, a(1)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050683

/-- `10*a(n-2)` -/
def P14587286261001414143.Spec : Prop :=
  ∀ n, (P14587286261001414143.a n : ℤ) = A050683 (n + 1)

theorem P14587286261001414143.correct : P14587286261001414143.Spec := by
  intro n
  simp only [A050683, Nat.add_sub_cancel]

end A050683

/-! ## A050683.P9850955786793726418

`9*10^floor(n/2)`
-/

namespace A050683.P9850955786793726418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A050683.P9850955786793726418

namespace A050683

/-- `9*10^floor(n/2)` -/
def P9850955786793726418.Spec : Prop :=
  ∀ n, P9850955786793726418.a n = (A050683 (n + 1) : ℚ)

end A050683

/-! ## A050683.P2742364224767849097

`ogf((9+9x)/(1-10x^2))`
-/

namespace A050683.P2742364224767849097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 9] [1, 0, -10] n

end

end A050683.P2742364224767849097

namespace A050683

/-- `ogf((9+9x)/(1-10x^2))` -/
def P2742364224767849097.Spec : Prop :=
  ∀ n, P2742364224767849097.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P8550418092735890900

`lcm(9, 10^floor(n/2))`
-/

namespace A050683.P8550418092735890900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A050683.P8550418092735890900

namespace A050683

/-- `lcm(9, 10^floor(n/2))` -/
def P8550418092735890900.Spec : Prop :=
  ∀ n, (P8550418092735890900.a n : ℤ) = A050683 (n + 1)

end A050683

/-! ## A050683.P14753228041017582852

`∏[11-a(n-1)]` with `a(0)=9, a(1)=1`
-/

namespace A050683.P14753228041017582852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 1] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A050683.P14753228041017582852

namespace A050683

/-- `∏[11-a(n-1)]` -/
def P14753228041017582852.Spec : Prop :=
  ∀ n, P14753228041017582852.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P3528030628229953248

`A052268(∑[char[2*n]])`
-/

namespace A050683.P3528030628229953248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050683.P3528030628229953248

namespace A050683

/-- `A052268(∑[char[2*n]])` -/
def P3528030628229953248.Spec : Prop :=
  ∀ n, P3528030628229953248.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P6575772821317637891

`∏[A033330(a(n-1))]` with `a(0)=9`
-/

namespace A050683.P6575772821317637891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  A033330 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A050683.P6575772821317637891

namespace A050683

/-- `∏[A033330(a(n-1))]` -/
def P6575772821317637891.Spec : Prop :=
  ∀ n, P6575772821317637891.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P17778300490233107886

`∏[A040935(a(n-1))]` with `a(0)=9`
-/

namespace A050683.P17778300490233107886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  A040935 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A050683.P17778300490233107886

namespace A050683

/-- `∏[A040935(a(n-1))]` -/
def P17778300490233107886.Spec : Prop :=
  ∀ n, P17778300490233107886.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P18442962215518364308

`A004669(A168236(n+1))`
-/

namespace A050683.P18442962215518364308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 (A168236 (n + 1)).toNat

end

end A050683.P18442962215518364308

namespace A050683

/-- `A004669(A168236(n+1))` -/
def P18442962215518364308.Spec : Prop :=
  ∀ n, P18442962215518364308.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P9622142013088981689

`A070252(A254667(n+1))`
-/

namespace A050683.P9622142013088981689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (A254667 (n + 1)).toNat

end

end A050683.P9622142013088981689

namespace A050683

/-- `A070252(A254667(n+1))` -/
def P9622142013088981689.Spec : Prop :=
  ∀ n, P9622142013088981689.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P15132217359474494938

`A070252(A131055(n+2))`
-/

namespace A050683.P15132217359474494938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (A131055 (n + 2)).toNat

end

end A050683.P15132217359474494938

namespace A050683

/-- `A070252(A131055(n+2))` -/
def P15132217359474494938.Spec : Prop :=
  ∀ n, P15132217359474494938.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P7058355995543714746

`A037124(A168419(n+2))`
-/

namespace A050683.P7058355995543714746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A168419 (n + 2)).toNat

end

end A050683.P7058355995543714746

namespace A050683

/-- `A037124(A168419(n+2))` -/
def P7058355995543714746.Spec : Prop :=
  ∀ n, P7058355995543714746.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P10840984183040777169

`A070252(A233583(n+2))`
-/

namespace A050683.P10840984183040777169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (A233583 (n + 2)).toNat

end

end A050683.P10840984183040777169

namespace A050683

/-- `A070252(A233583(n+2))` -/
def P10840984183040777169.Spec : Prop :=
  ∀ n, P10840984183040777169.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P918669512741885457

`A037124(A168416(n+2)-1)`
-/

namespace A050683.P918669512741885457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A168416 (n + 2) - 1).toNat

end

end A050683.P918669512741885457

namespace A050683

/-- `A037124(A168416(n+2)-1)` -/
def P918669512741885457.Spec : Prop :=
  ∀ n, P918669512741885457.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P9599759302296877462

`A070252(A000007(n)+1+n)`
-/

namespace A050683.P9599759302296877462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (A000007 n + 1 + (n : ℤ)).toNat

end

end A050683.P9599759302296877462

namespace A050683

/-- `A070252(A000007(n)+1+n)` -/
def P9599759302296877462.Spec : Prop :=
  ∀ n, P9599759302296877462.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P10050397043787425083

`A117861(n+1)+A050686(n+1)`
-/

namespace A050683.P10050397043787425083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117861 (n + 1) + A050686 (n + 1)

end

end A050683.P10050397043787425083

namespace A050683

/-- `A117861(n+1)+A050686(n+1)` -/
def P10050397043787425083.Spec : Prop :=
  ∀ n, P10050397043787425083.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P6668465359759071724

`A070252(n+1)+A117855(n+1)-A225367(n+1)`
-/

namespace A050683.P6668465359759071724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (n + 1) + (A117855 (n + 1) - A225367 (n + 1))

end

end A050683.P6668465359759071724

namespace A050683

/-- `A070252(n+1)+A117855(n+1)-A225367(n+1)` -/
def P6668465359759071724.Spec : Prop :=
  ∀ n, P6668465359759071724.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P3960560501389083264

`A286508(n+1)-A286507(n)`
-/

namespace A050683.P3960560501389083264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 (n + 1) - A286507 n

end

end A050683.P3960560501389083264

namespace A050683

/-- `A286508(n+1)-A286507(n)` -/
def P3960560501389083264.Spec : Prop :=
  ∀ n, P3960560501389083264.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P10832614743683862899

`A286507(n+2)-A286507(n)`
-/

namespace A050683.P10832614743683862899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 (n + 2) - A286507 n

end

end A050683.P10832614743683862899

namespace A050683

/-- `A286507(n+2)-A286507(n)` -/
def P10832614743683862899.Spec : Prop :=
  ∀ n, P10832614743683862899.a n = A050683 (n + 1)

end A050683

/-! ## A050683.P17077794418964758187

`Δ[Δ[A094627(n)]]`
-/

namespace A050683.P17077794418964758187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094627 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050683.P17077794418964758187

namespace A050683

/-- `Δ[Δ[A094627(n)]]` -/
def P17077794418964758187.Spec : Prop :=
  ∀ n, P17077794418964758187.a n = A050683 (n + 1)

end A050683

/-!
# A050684: Number of nonzero palindromes < 10^n and containing at least one digit '1'.

The programs for A050684, the canonical program `A050684.P17019107077225119826` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050684 has offset 1).

The definition of A050684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050684.P9748557212744652924

`∑[A050686(n+1)]`
-/

namespace A050684.P9748557212744652924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050684.P9748557212744652924

namespace A050684

/-- `∑[A050686(n+1)]` -/
def P9748557212744652924.Spec : Prop :=
  ∀ n, P9748557212744652924.a n = A050684 (n + 1)

end A050684

/-! ## A050684.P14828297782207483898

`A050250(n+1)-8*∑[3^and(n, -2)]`
-/

namespace A050684.P14828297782207483898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050250 (n + 1) : ℚ) - 8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050684.P14828297782207483898

namespace A050684

/-- `A050250(n+1)-8*∑[3^and(n, -2)]` -/
def P14828297782207483898.Spec : Prop :=
  ∀ n, P14828297782207483898.a n = (A050684 (n + 1) : ℚ)

end A050684

/-! ## A050684.P3875037844649574231

`∑[A050683(n+1)]-8*∑[3^and(n, -2)]`
-/

namespace A050684.P3875037844649574231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - 8 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A050684.P3875037844649574231

namespace A050684

/-- `∑[A050683(n+1)]-8*∑[3^and(n, -2)]` -/
def P3875037844649574231.Spec : Prop :=
  ∀ n, P3875037844649574231.a n = (A050684 (n + 1) : ℚ)

end A050684

/-! ## A050684.P15177281970304024113

`Δ[A094622(n)]-2-8*∑[3^and(n, -2)]`
-/

namespace A050684.P15177281970304024113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094622 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 2 : ℚ) - 8 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A050684.P15177281970304024113

namespace A050684

/-- `Δ[A094622(n)]-2-8*∑[3^and(n, -2)]` -/
def P15177281970304024113.Spec : Prop :=
  ∀ n, P15177281970304024113.a n = (A050684 (n + 1) : ℚ)

end A050684

/-! ## A050684.P7225176525537415403

`A070199(n+1)-1-8*∑[3^and(n, -2)]`
-/

namespace A050684.P7225176525537415403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070199 (n + 1) - 1 : ℚ) - 8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050684.P7225176525537415403

namespace A050684

/-- `A070199(n+1)-1-8*∑[3^and(n, -2)]` -/
def P7225176525537415403.Spec : Prop :=
  ∀ n, P7225176525537415403.a n = (A050684 (n + 1) : ℚ)

end A050684

/-! ## A050684.P757680731490289232

`∑[A070252(n+1)]-1-8*∑[3^and(n, -2)]`
-/

namespace A050684.P757680731490289232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) - 8 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A050684.P757680731490289232

namespace A050684

/-- `∑[A070252(n+1)]-1-8*∑[3^and(n, -2)]` -/
def P757680731490289232.Spec : Prop :=
  ∀ n, P757680731490289232.a n = (A050684 (n + 1) : ℚ)

end A050684

/-! ## A050684.P5496711780644411233

`Δ[A094627(n+1)]-2-8*∑[3^and(n, -2)]`
-/

namespace A050684.P5496711780644411233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094627 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 2 : ℚ) - 8 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A050684.P5496711780644411233

namespace A050684

/-- `Δ[A094627(n+1)]-2-8*∑[3^and(n, -2)]` -/
def P5496711780644411233.Spec : Prop :=
  ∀ n, P5496711780644411233.a n = (A050684 (n + 1) : ℚ)

end A050684

/-! ## A050684.P17019107077225119826

`A050250(n+1)-A117868(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050684

/-- `A050250(n+1)-A117868(n+1)` -/
def P17019107077225119826.Spec : Prop :=
  ∀ n, P17019107077225119826.a n = A050684 (n + 1)

theorem P17019107077225119826.correct : P17019107077225119826.Spec := by
  intro n
  simp only [A050684, Nat.add_sub_cancel]

end A050684

/-! ## A050684.P16832066607261772607

`A050685(n+1)+∑[A108411(n)²]`
-/

namespace A050684.P16832066607261772607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050685 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050684.P16832066607261772607

namespace A050684

/-- `A050685(n+1)+∑[A108411(n)²]` -/
def P16832066607261772607.Spec : Prop :=
  ∀ n, P16832066607261772607.a n = A050684 (n + 1)

end A050684

/-! ## A050684.P14211137410439610582

`A050250(n+1)-∑[A117861(n+1)]`
-/

namespace A050684.P14211137410439610582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050250 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050684.P14211137410439610582

namespace A050684

/-- `A050250(n+1)-∑[A117861(n+1)]` -/
def P14211137410439610582.Spec : Prop :=
  ∀ n, P14211137410439610582.a n = A050684 (n + 1)

end A050684

/-! ## A050684.P11122456842937877281

`∑[A050683(n+1)-A117861(n+1)]`
-/

namespace A050684.P11122456842937877281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) - A117861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050684.P11122456842937877281

namespace A050684

/-- `∑[A050683(n+1)-A117861(n+1)]` -/
def P11122456842937877281.Spec : Prop :=
  ∀ n, P11122456842937877281.a n = A050684 (n + 1)

end A050684

/-! ## A050684.P14147845107594186131

`∑[A050683(n+1)]-A117868(n+1)`
-/

namespace A050684.P14147845107594186131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A117868 (n + 1)

end

end A050684.P14147845107594186131

namespace A050684

/-- `∑[A050683(n+1)]-A117868(n+1)` -/
def P14147845107594186131.Spec : Prop :=
  ∀ n, P14147845107594186131.a n = A050684 (n + 1)

end A050684

/-!
# A050685: Number of nonzero palindromes < 10^n and containing at least one digit '0'.

The programs for A050685, the canonical program `A050685.P18323470652634762073` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050685 has offset 1).

The definition of A050685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050685.P18323470652634762073

`a(n-1)+19*a(n-2)-19*a(n-3)-90*a(n-4)+90*a(n-5)` with `a(0)=0, a(1)=0, a(2)=9, a(3)=18, a(4)=189`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A050685

/-- `a(n-1)+19*a(n-2)-19*a(n-3)-90*a(n-4)+90*a(n-5)` -/
def P18323470652634762073.Spec : Prop :=
  ∀ n, P18323470652634762073.a n = A050685 (n + 1)

theorem P18323470652634762073.correct : P18323470652634762073.Spec := by
  intro n
  simp only [A050685, Nat.add_sub_cancel]

end A050685

/-! ## A050685.P5635184621386755060

`∑[A050720(n+1)]`
-/

namespace A050685.P5635184621386755060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050685.P5635184621386755060

namespace A050685

/-- `∑[A050720(n+1)]` -/
def P5635184621386755060.Spec : Prop :=
  ∀ n, P5635184621386755060.a n = A050685 (n + 1)

end A050685

/-! ## A050685.P1848803468504172019

`∑[9*A016189(floor(n/2))]`
-/

namespace A050685.P1848803468504172019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016189 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050685.P1848803468504172019

namespace A050685

/-- `∑[9*A016189(floor(n/2))]` -/
def P1848803468504172019.Spec : Prop :=
  ∀ n, P1848803468504172019.a n = A050685 (n + 1)

end A050685

/-! ## A050685.P13025540153798245232

`Δ[A094622(n)]-A198310(n+3)`
-/

namespace A050685.P13025540153798245232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A198310 (n + 3)

end

end A050685.P13025540153798245232

namespace A050685

/-- `Δ[A094622(n)]-A198310(n+3)` -/
def P13025540153798245232.Spec : Prop :=
  ∀ n, P13025540153798245232.a n = A050685 (n + 1)

end A050685

/-! ## A050685.P8837703622358119161

`∑[A050686(n+1)-A108411(n)²]`
-/

namespace A050685.P8837703622358119161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 (n + 1) - A108411 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050685.P8837703622358119161

namespace A050685

/-- `∑[A050686(n+1)-A108411(n)²]` -/
def P8837703622358119161.Spec : Prop :=
  ∀ n, P8837703622358119161.a n = A050685 (n + 1)

end A050685

/-! ## A050685.P16868591830876374753

`Δ[A094627(n+1)]-A198310(n+3)`
-/

namespace A050685.P16868591830876374753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A198310 (n + 3)

end

end A050685.P16868591830876374753

namespace A050685

/-- `Δ[A094627(n+1)]-A198310(n+3)` -/
def P16868591830876374753.Spec : Prop :=
  ∀ n, P16868591830876374753.a n = A050685 (n + 1)

end A050685

/-!
# A050686: Number of palindromes of length n and containing the digit 1 (or any other fixed nonzero digit).

The programs for A050686, the canonical program `A050686.P13686185828913678521` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050686 has offset 1).

The definition of A050686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050686.P16645490274439251450

`A088924(∑[char[2*n]])`
-/

namespace A050686.P16645490274439251450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088924 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050686.P16645490274439251450

namespace A050686

/-- `A088924(∑[char[2*n]])` -/
def P16645490274439251450.Spec : Prop :=
  ∀ n, P16645490274439251450.a n = A050686 (n + 1)

end A050686

/-! ## A050686.P2414657008056010597

`A050720(n+1)+(3^floor(n/2))²`
-/

namespace A050686.P2414657008056010597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050720 (n + 1) : ℚ) + ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ 2

end

end A050686.P2414657008056010597

namespace A050686

/-- `A050720(n+1)+(3^floor(n/2))²` -/
def P2414657008056010597.Spec : Prop :=
  ∀ n, P2414657008056010597.a n = (A050686 (n + 1) : ℚ)

end A050686

/-! ## A050686.P9410862335042233044

`A050683(n+1)-A117861(n+1)`
-/

namespace A050686.P9410862335042233044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) - A117861 (n + 1)

end

end A050686.P9410862335042233044

namespace A050686

/-- `A050683(n+1)-A117861(n+1)` -/
def P9410862335042233044.Spec : Prop :=
  ∀ n, P9410862335042233044.a n = A050686 (n + 1)

end A050686

/-! ## A050686.P13686185828913678521

`A050683(n+1)-2*A117855(n+1)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050686

/-- `A050683(n+1)-2*A117855(n+1)²` -/
def P13686185828913678521.Spec : Prop :=
  ∀ n, P13686185828913678521.a n = A050686 (n + 1)

theorem P13686185828913678521.correct : P13686185828913678521.Spec := by
  intro n
  simp only [A050686, Nat.add_sub_cancel]

end A050686

/-! ## A050686.P2561704957466436443

`A004669(A168236(n+1))-A117861(n+1)`
-/

namespace A050686.P2561704957466436443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 (A168236 (n + 1)).toNat - A117861 (n + 1)

end

end A050686.P2561704957466436443

namespace A050686

/-- `A004669(A168236(n+1))-A117861(n+1)` -/
def P2561704957466436443.Spec : Prop :=
  ∀ n, P2561704957466436443.a n = A050686 (n + 1)

end A050686

/-! ## A050686.P16104542026871977444

`A001511(2*n+1)*A088924(A008619(n))`
-/

namespace A050686.P16104542026871977444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A088924 (A008619 n).toNat

end

end A050686.P16104542026871977444

namespace A050686

/-- `A001511(2*n+1)*A088924(A008619(n))` -/
def P16104542026871977444.Spec : Prop :=
  ∀ n, P16104542026871977444.a n = A050686 (n + 1)

end A050686

/-! ## A050686.P11993542154903241673

`A088924(A008619(n))%A006659(n+1)`
-/

namespace A050686.P11993542154903241673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088924 (A008619 n).toNat) (A006659 (n + 1))

end

end A050686.P11993542154903241673

namespace A050686

/-- `A088924(A008619(n))%A006659(n+1)` -/
def P11993542154903241673.Spec : Prop :=
  ∀ n, P11993542154903241673.a n = A050686 (n + 1)

end A050686

/-! ## A050686.P15100604904427666785

`A088924(A008619(n))%A074561(n)`
-/

namespace A050686.P15100604904427666785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088924 (A008619 n).toNat) (A074561 n)

end

end A050686.P15100604904427666785

namespace A050686

/-- `A088924(A008619(n))%A074561(n)` -/
def P15100604904427666785.Spec : Prop :=
  ∀ n, P15100604904427666785.a n = A050686 (n + 1)

end A050686

/-! ## A050686.P9565568515510481931

`and(A001348(n+1), A088924(A008619(n)))`
-/

namespace A050686.P9565568515510481931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001348 (n + 1)) (A088924 (A008619 n).toNat)

end

end A050686.P9565568515510481931

namespace A050686

/-- `and(A001348(n+1), A088924(A008619(n)))` -/
def P9565568515510481931.Spec : Prop :=
  ∀ n, P9565568515510481931.a n = A050686 (n + 1)

end A050686

/-!
# A050687: Numbers k such that A000422(k) is squarefree.

The programs for A050687, there is no canonical definition to state claims against.
-/

/-! ## A050687.P17520523773733188238

`comp[a(n-2)+9]` with `a(0)=15, a(1)=56, a(2)=0, a(3)=8`
-/

namespace A050687.P17520523773733188238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 56, 0, 8] fun n f1 =>
  f1 (n - 2) + 9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A050687.P17520523773733188238

/-! ## A050687.P11491726244633516557

`comp[A050688(n+1)-1]+1`
-/

namespace A050687.P11491726244633516557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050688 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050687.P11491726244633516557

/-! ## A050687.P9975493637428543536

`eq[A048288(n+1), A116504(n+1)]+1`
-/

namespace A050687.P9975493637428543536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050687.P9975493637428543536

/-! ## A050687.P13318080243737835714

`eq[char[A050688(n+1)], A151933(n)]`
-/

namespace A050687.P13318080243737835714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050688 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050687.P13318080243737835714

/-! ## A050687.P13283645522395701325

`lt[A250120(n), A113018(A069099(n+1))]`
-/

namespace A050687.P13283645522395701325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113018 (A069099 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050687.P13283645522395701325

/-!
# A050688: Numbers k such that A000422(k) is nonsquarefree.

The programs for A050688, there is no canonical definition to state claims against.
-/

/-! ## A050688.P7872581153167042264

`comp[A050687(n+1)-1]+1`
-/

namespace A050688.P7872581153167042264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050687 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050688.P7872581153167042264

/-! ## A050688.P7075861832165828611

`comp[∪[A050687(n+1), A007089(n)]]`
-/

namespace A050688.P7075861832165828611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050687 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A050688.P7075861832165828611

/-! ## A050688.P9820739335490882321

`comp[A050687(A156061(n+1))%A000203(n+1)]`
-/

namespace A050688.P9820739335490882321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050687 (A156061 (n + 1)).toNat) (A000203 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050688.P9820739335490882321

/-! ## A050688.P5202881202910806050

`comp[A050687(A225395(n+1))%A000203(n+1)]`
-/

namespace A050688.P5202881202910806050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050687 (A225395 (n + 1)).toNat) (A000203 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050688.P5202881202910806050

/-! ## A050688.P6296869586233457585

`comp[A050687(A304117(n+1))%A000203(n+1)]`
-/

namespace A050688.P6296869586233457585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050687 (A304117 (n + 1)).toNat) (A000203 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050688.P6296869586233457585

/-!
# A050689: Composites whose sum of digits equals number of its prime factors, with multiplicity.

The programs for A050689, there is no canonical definition to state claims against.
-/

/-! ## A050689.P8868734852839839310

`eq[A001222(abs(1-n)+1), A007953(n)]`
-/

namespace A050689.P8868734852839839310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050689.P8868734852839839310

/-! ## A050689.P5107849333979784357

`eq[A001222(n+1), A007953(n+1)]+1`
-/

namespace A050689.P5107849333979784357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050689.P5107849333979784357

/-! ## A050689.P11719773405435545538

`eq[A007953(n)+1, A001222(A004277(n))]`
-/

namespace A050689.P11719773405435545538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050689.P11719773405435545538

/-! ## A050689.P9267003450215943673

`eq[A007953(n)+1, A001222(A008486(n))]`
-/

namespace A050689.P9267003450215943673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050689.P9267003450215943673

/-! ## A050689.P11231222866698912799

`eq[A057147(n), A066959(A233583(n+1))]`
-/

namespace A050689.P11231222866698912799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050689.P11231222866698912799

/-!
# A050691: Composite numbers whose decimal expansion starts with their largest prime divisor.

The programs for A050691, there is no canonical definition to state claims against.
-/

/-! ## A050691.P7464696744084144088

`A197816(p?[A119467(n)])`
-/

namespace A050691.P7464696744084144088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197816 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A050691.P7464696744084144088

/-! ## A050691.P148107947917035086

`A197816(p?[A209149(n+1)])`
-/

namespace A050691.P148107947917035086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197816 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A050691.P148107947917035086

/-! ## A050691.P1622710259231875111

`A197816(record[p?[A048691(n+1)]])`
-/

namespace A050691.P1622710259231875111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197816 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050691.P1622710259231875111

/-! ## A050691.P6061068755257392046

`A197816(p?[A007318(2*n+1)])`
-/

namespace A050691.P6061068755257392046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197816 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A050691.P6061068755257392046

/-!
# A050693: Composites c whose decimal expansion ends with its largest prime factor.

The programs for A050693, there is no canonical definition to state claims against.
-/

/-! ## A050693.P3348709795491779842

`∩[A050692(n+1), A196736(n+1)]`
-/

namespace A050693.P3348709795491779842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050693.P3348709795491779842

/-!
# A050694: Composite numbers k such that all prime factors of k are a substring of k.

The programs for A050694, there is no canonical definition to state claims against.
-/

/-! ## A050694.P7874948890101021014

`∩[A305704(n+1), A352584(n+1)]`
-/

namespace A050694.P7874948890101021014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050694.P7874948890101021014

/-! ## A050694.P1390804593097534682

`∩[A259241(n+1), A352584(n+1)]`
-/

namespace A050694.P1390804593097534682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050694.P1390804593097534682

/-! ## A050694.P11206367599239233952

`∩[A352584(n+1), A396314(n+1)]`
-/

namespace A050694.P11206367599239233952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050694.P11206367599239233952

/-!
# A050695: Composite numbers k such that none of the prime factors of k is a substring of k.

The programs for A050695, there is no canonical definition to state claims against.
-/

/-! ## A050695.P4630745137704605313

`lt[A131929(n+2), 1]+2`
-/

namespace A050695.P4630745137704605313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A050695.P4630745137704605313

/-! ## A050695.P3544734662202342807

`eq[A000007(n), A131929(n+1)]+1`
-/

namespace A050695.P3544734662202342807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050695.P3544734662202342807

/-! ## A050695.P4451871837533052824

`eq[A000038(n), A131929(n+1)]+1`
-/

namespace A050695.P4451871837533052824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050695.P4451871837533052824

/-! ## A050695.P18070900365552128028

`A020725(eq[A000007(n), A131929(n+1)])`
-/

namespace A050695.P18070900365552128028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050695.P18070900365552128028

/-! ## A050695.P13412959178706100284

`eq[A131929(A028310(n)), A171386(n+2)]`
-/

namespace A050695.P13412959178706100284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050695.P13412959178706100284

/-! ## A050695.P10467998540023456344

`eq[A131929(n+1), A285476(n)]+1`
-/

namespace A050695.P10467998540023456344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A050695.P10467998540023456344

/-! ## A050695.P8810597205451332064

`eq[A131929(A285476(n)+n), A285476(n)]`
-/

namespace A050695.P8810597205451332064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (A285476 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050695.P8810597205451332064

/-! ## A050695.P2421309882242450292

`A113484(eq[A000007(n), A131929(n+1)])`
-/

namespace A050695.P2421309882242450292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050695.P2421309882242450292

/-! ## A050695.P17973616182037768367

`A113484(eq[A000038(n), A131929(n+1)])`
-/

namespace A050695.P17973616182037768367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050695.P17973616182037768367

/-! ## A050695.P13324180956422584946

`eq[0, A131929(A233583(n+1))]`
-/

namespace A050695.P13324180956422584946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050695.P13324180956422584946

/-!
# A050696: At least one prime factor of composite a(n) is a substring of a(n).

The programs for A050696, there is no canonical definition to state claims against.
-/

/-! ## A050696.P7843908577648591979

`lt[A010051(n+1), A131929(n+1)]+1`
-/

namespace A050696.P7843908577648591979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050696.P7843908577648591979

/-! ## A050696.P15832704842665515376

`lt[2, A046523(n+1)*A131929(n+1)]+1`
-/

namespace A050696.P15832704842665515376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) * A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050696.P15832704842665515376

/-! ## A050696.P10260786652473665696

`lt[A020639(n+1)-1, (n-1)*A131929(n+1)]+1`
-/

namespace A050696.P10260786652473665696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050696.P10260786652473665696

/-! ## A050696.P10451032395599241232

`A020725(lt[A010051(n+1), A131929(n+1)])`
-/

namespace A050696.P10451032395599241232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050696.P10451032395599241232

/-! ## A050696.P15051032615730581883

`A113484(lt[A010051(n+1), A131929(n+1)])`
-/

namespace A050696.P15051032615730581883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050696.P15051032615730581883

/-!
# A050698: Numbers that appear in A050695 but not in A035139.

The programs for A050698, there is no canonical definition to state claims against.
-/

/-! ## A050698.P9855073646950794756

`A383100(A364348(3*n+5)-A276885(n+1))`
-/

namespace A050698.P9855073646950794756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (A364348 (3 * n + 5) - A276885 (n + 1)).toNat

end

end A050698.P9855073646950794756

/-!
# A050699: Nonprime numbers n such that n and n-reversed (<> n and no leading zeros) have the same number of prime factors (counted with multiplicity).

The programs for A050699, there is no canonical definition to state claims against.
-/

/-! ## A050699.P6134567489184932860

`∪[A050700(n+1), A050701(n+1)]`
-/

namespace A050699.P6134567489184932860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050699.P6134567489184932860

/-! ## A050699.P9117565646459451218

`∩[A109019(n+1), A392498(n+1)]`
-/

namespace A050699.P9117565646459451218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050699.P9117565646459451218

/-! ## A050699.P2827808744910186934

`∩[A109019(n+1), A392500(n+1)]`
-/

namespace A050699.P2827808744910186934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050699.P2827808744910186934

